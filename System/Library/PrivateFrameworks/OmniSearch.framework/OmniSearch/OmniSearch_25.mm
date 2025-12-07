_BYTE *storeEnumTagSinglePayload for GlobalEntityError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t GlobalItem.getParsecEntity()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_36();
  if (*(v1 + *(type metadata accessor for GlobalItem(0) + 32) + 8) >> 60 == 15)
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logging.search);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_25D85C000, v5, v6, "SageExperience data is nil", v7, 2u);
      OUTLINED_FUNCTION_42_0();
    }

    v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntity();

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v8);
  }

  else
  {
    v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntity();
    v11 = OUTLINED_FUNCTION_30_5();
    outlined copy of Data?(v11, v12);
    v13 = OUTLINED_FUNCTION_30_5();
    outlined copy of Data._Representation(v13, v14);
    BinaryDecodingOptions.init()();
    OUTLINED_FUNCTION_2_44();
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AppEntity and conformance Apple_Parsec_Siri_V2alpha_AppEntity(v15, v16, MEMORY[0x277D390D8]);
    OUTLINED_FUNCTION_30_5();
    Message.init(serializedData:extensions:partial:options:)();
    v17 = OUTLINED_FUNCTION_30_5();
    outlined consume of Data?(v17, v18);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v10);
  }
}

uint64_t type metadata accessor for GlobalItem(uint64_t a1)
{
  result = type metadata singleton initialization cache for GlobalItem;
  if (!type metadata singleton initialization cache for GlobalItem)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GlobalItem.id.setter()
{
  OUTLINED_FUNCTION_93();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GlobalItem.text.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t GlobalItem.domain.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t GlobalItem.dialog.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_13_25() + 28);

  return outlined assign with take of GlobalDialog?(v0, v2);
}

uint64_t GlobalItem.parsecEntityData.getter()
{
  type metadata accessor for GlobalItem(0);
  v0 = OUTLINED_FUNCTION_94();
  outlined copy of Data?(v0, v1);
  return OUTLINED_FUNCTION_94();
}

uint64_t GlobalItem.parsecEntityData.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = v1 + *(type metadata accessor for GlobalItem(0) + 32);
  result = outlined consume of Data?(*v3, *(v3 + 8));
  *v3 = v2;
  *(v3 + 8) = v0;
  return result;
}

uint64_t GlobalItem.lowConfidenceKnowledge.setter(char a1)
{
  result = type metadata accessor for GlobalItem(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t GlobalItem.description.getter()
{
  _StringGuts.grow(_:)(45);
  v1 = v0[4];

  MEMORY[0x25F89F6C0](0xD000000000000029, 0x800000025DBF6A40);
  if (v0[3])
  {
    v2 = v0[2];
    v3 = v0[3];
  }

  else
  {
    v3 = 0xE300000000000000;
    v2 = 7104878;
  }

  MEMORY[0x25F89F6C0](v2, v3);

  return v1;
}

uint64_t GlobalItem.init(id:domain:dialog:text:parsecEntity:lowConfidenceKnowledge:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, unsigned __int8 a10)
{
  v47 = a8;
  v48 = a4;
  v49 = a7;
  v51 = a5;
  v50 = a10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AppEntityVSgMd, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AppEntityVSgMR);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - v16;
  v18 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntity();
  OUTLINED_FUNCTION_14();
  v46 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_36();
  v23 = v22 - v21;
  v24 = type metadata accessor for GlobalItem(0);
  v25 = v24[7];
  v26 = type metadata accessor for GlobalDialog();
  __swift_storeEnumTagSinglePayload(a9 + v25, 1, 1, v26);
  v52 = a9 + v24[8];
  *v52 = xmmword_25DBC9410;
  v27 = v24[9];
  *a9 = a1;
  a9[1] = a2;
  v28 = v49;
  a9[2] = a6;
  a9[3] = v28;
  v30 = v47;
  v29 = v48;
  a9[4] = a3;
  a9[5] = v29;
  v31 = a9 + v25;
  v32 = v51;
  outlined assign with copy of GlobalDialog?(v51, v31);
  *(a9 + v27) = v50;
  v33 = v18;
  outlined init with copy of ResourceBundle?(v30, v17, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AppEntityVSgMd, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AppEntityVSgMR);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    outlined destroy of IntentApplication?(v17, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AppEntityVSgMd, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AppEntityVSgMR);
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logging.search);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_25D85C000, v35, v36, "No Parsec AppEntity attached with this item", v37, 2u);
      OUTLINED_FUNCTION_42_0();
    }

    outlined destroy of IntentApplication?(v30, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AppEntityVSgMd, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AppEntityVSgMR);
    outlined destroy of IntentApplication?(v32, &_s15OmniSearchTypes12GlobalDialogVSgMd, &_s15OmniSearchTypes12GlobalDialogVSgMR);
    v41 = 0;
    v42 = 0xF000000000000000;
  }

  else
  {
    v38 = v46;
    (*(v46 + 32))(v23, v17, v33);
    OUTLINED_FUNCTION_2_44();
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AppEntity and conformance Apple_Parsec_Siri_V2alpha_AppEntity(v39, v40, MEMORY[0x277D390D8]);
    v41 = Message.serializedData(partial:)();
    v42 = v45;
    outlined destroy of IntentApplication?(v30, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AppEntityVSgMd, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AppEntityVSgMR);
    outlined destroy of IntentApplication?(v32, &_s15OmniSearchTypes12GlobalDialogVSgMd, &_s15OmniSearchTypes12GlobalDialogVSgMR);
    (*(v38 + 8))(v23, v33);
  }

  v43 = v52;
  result = outlined consume of Data?(*v52, *(v52 + 1));
  *v43 = v41;
  v43[1] = v42;
  return result;
}

uint64_t GlobalItem.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1954047348 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x676F6C616964 && a2 == 0xE600000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x800000025DBF6A70 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000016 && 0x800000025DBF1930 == a2)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t GlobalItem.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1954047348;
      break;
    case 2:
      result = 0x6E69616D6F64;
      break;
    case 3:
      result = 0x676F6C616964;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GlobalItem.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = GlobalItem.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GlobalItem.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GlobalItem.CodingKeys and conformance GlobalItem.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GlobalItem.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GlobalItem.CodingKeys and conformance GlobalItem.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GlobalItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch10GlobalItemV10CodingKeys33_13FE250AD9A073D202DF27CC72F4890ELLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch10GlobalItemV10CodingKeys33_13FE250AD9A073D202DF27CC72F4890ELLOGMR);
  OUTLINED_FUNCTION_14();
  v7 = v6;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v17[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GlobalItem.CodingKeys and conformance GlobalItem.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18) = 0;
  OUTLINED_FUNCTION_1_37();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v18) = 1;
    OUTLINED_FUNCTION_1_37();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v18) = 2;
    OUTLINED_FUNCTION_1_37();
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = type metadata accessor for GlobalItem(0);
    LOBYTE(v18) = 3;
    type metadata accessor for GlobalDialog();
    OUTLINED_FUNCTION_1_60();
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AppEntity and conformance Apple_Parsec_Siri_V2alpha_AppEntity(v12, v13, MEMORY[0x277D37140]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = (v3 + *(v11 + 32));
    v15 = v14[1];
    v18 = *v14;
    v19 = v15;
    v17[15] = 4;
    outlined copy of Data?(v18, v15);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v18, v19);
    LOBYTE(v18) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t GlobalItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes12GlobalDialogVSgMd, &_s15OmniSearchTypes12GlobalDialogVSgMR);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  v5 = v36 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch10GlobalItemV10CodingKeys33_13FE250AD9A073D202DF27CC72F4890ELLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch10GlobalItemV10CodingKeys33_13FE250AD9A073D202DF27CC72F4890ELLOGMR);
  OUTLINED_FUNCTION_14();
  v38 = v7;
  v39 = v6;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  v10 = v36 - v9;
  v11 = type metadata accessor for GlobalItem(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_36();
  v15 = (v14 - v13);
  v17 = *(v16 + 28);
  v18 = type metadata accessor for GlobalDialog();
  __swift_storeEnumTagSinglePayload(v15 + v17, 1, 1, v18);
  v19 = *(v11 + 32);
  v44 = v15;
  v42 = (v15 + v19);
  v43 = a1;
  *v42 = xmmword_25DBC9410;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GlobalItem.CodingKeys and conformance GlobalItem.CodingKeys();
  v40 = v10;
  v20 = v41;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    v23 = v42;
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    outlined destroy of IntentApplication?(v44 + v17, &_s15OmniSearchTypes12GlobalDialogVSgMd, &_s15OmniSearchTypes12GlobalDialogVSgMR);
    return outlined consume of Data?(*v23, *(v23 + 1));
  }

  else
  {
    v41 = v18;
    v21 = v38;
    LOBYTE(v45) = 0;
    v22 = OUTLINED_FUNCTION_12_32();
    v24 = v44;
    *v44 = v22;
    v24[1] = v25;
    LOBYTE(v45) = 1;
    v24[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v24[3] = v26;
    v36[1] = v26;
    LOBYTE(v45) = 2;
    v27 = OUTLINED_FUNCTION_12_32();
    v28 = v42;
    v24[4] = v27;
    v24[5] = v29;
    LOBYTE(v45) = 3;
    OUTLINED_FUNCTION_1_60();
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AppEntity and conformance Apple_Parsec_Siri_V2alpha_AppEntity(v30, v31, MEMORY[0x277D37150]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of GlobalDialog?(v5, v24 + v17);
    v47 = 4;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v32 = v45;
    v33 = v46;
    outlined consume of Data?(*v28, *(v28 + 1));
    *v28 = v32;
    *(v28 + 1) = v33;
    LOBYTE(v45) = 5;
    LOBYTE(v32) = KeyedDecodingContainer.decode(_:forKey:)();
    v34 = *(v11 + 36);
    (*(v21 + 8))(v40, v39);
    *(v24 + v34) = v32 & 1;
    outlined init with copy of GlobalItem(v24, v37);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    return outlined destroy of GlobalItem(v24);
  }
}

unint64_t lazy protocol witness table accessor for type GlobalItem.CodingKeys and conformance GlobalItem.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GlobalItem.CodingKeys and conformance GlobalItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type GlobalItem.CodingKeys and conformance GlobalItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlobalItem.CodingKeys and conformance GlobalItem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GlobalItem.CodingKeys and conformance GlobalItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type GlobalItem.CodingKeys and conformance GlobalItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlobalItem.CodingKeys and conformance GlobalItem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GlobalItem.CodingKeys and conformance GlobalItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type GlobalItem.CodingKeys and conformance GlobalItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlobalItem.CodingKeys and conformance GlobalItem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GlobalItem.CodingKeys and conformance GlobalItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type GlobalItem.CodingKeys and conformance GlobalItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlobalItem.CodingKeys and conformance GlobalItem.CodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of GlobalItem(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GlobalItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

{
  v3 = OUTLINED_FUNCTION_47_1();
  v4(v3);
  OUTLINED_FUNCTION_17();
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return a2;
}

uint64_t outlined destroy of GlobalItem(uint64_t a1)
{
  v2 = type metadata accessor for GlobalItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for GlobalItem(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AppEntity and conformance Apple_Parsec_Siri_V2alpha_AppEntity(&lazy protocol witness table cache variable for type GlobalItem and conformance GlobalItem, type metadata accessor for GlobalItem, &protocol conformance descriptor for GlobalItem);
  a1[2] = lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AppEntity and conformance Apple_Parsec_Siri_V2alpha_AppEntity(&lazy protocol witness table cache variable for type GlobalItem and conformance GlobalItem, type metadata accessor for GlobalItem, &protocol conformance descriptor for GlobalItem);
  result = lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AppEntity and conformance Apple_Parsec_Siri_V2alpha_AppEntity(&lazy protocol witness table cache variable for type GlobalItem and conformance GlobalItem, type metadata accessor for GlobalItem, &protocol conformance descriptor for GlobalItem);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AppEntity and conformance Apple_Parsec_Siri_V2alpha_AppEntity(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata completion function for GlobalItem(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for GlobalDialog?(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for GlobalItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_32()
{

  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_13_25()
{

  return type metadata accessor for GlobalItem(0);
}

uint64_t GlobalSearchClient.__allocating_init(client:session:featureFlagService:xpcClient:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v10 = a1[3];
  v11 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v10);
  OUTLINED_FUNCTION_19_14();
  MEMORY[0x28223BE20](v12);
  v14 = OUTLINED_FUNCTION_40_19(v13, v18);
  v15(v14);
  v16 = specialized GlobalSearchClient.init(client:session:featureFlagService:xpcClient:)(v4, a2, a3, a4, v9, v10, v11);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v16;
}

uint64_t protocol witness for SageSearchClient.search(query:clientEntities:location:) in conformance SageSearch(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*MEMORY[0x277D565C8] + MEMORY[0x277D565C8]);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for AnswerResolvable.extractInfo(query:results:assistantLocale:) in conformance AnswerResolver;

  return v11(a1, a2, a3, a4);
}

uint64_t protocol witness for SearchToolGlobalSearchXPC.searchToolGlobalSearch(request:) in conformance PommesSearchClient(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = implicit closure #2 in implicit closure #1 in ResultHydrator.hydrationFunctions.getter;

  return MEMORY[0x2821B9270](a1);
}

uint64_t *GlobalSearchClient.webDomains.unsafeMutableAddressor()
{
  if (one-time initialization token for webDomains != -1)
  {
    OUTLINED_FUNCTION_2_45(&one-time initialization token for webDomains);
  }

  return &static GlobalSearchClient.webDomains;
}

uint64_t static GlobalSearchClient.webDomains.getter()
{
  if (one-time initialization token for webDomains != -1)
  {
    OUTLINED_FUNCTION_2_45(&one-time initialization token for webDomains);
  }
}

uint64_t one-time initialization function for kGlobalSearchTimeout(uint64_t a1)
{
  result = AFIsInternalInstall();
  v2 = 5.0;
  if (result)
  {
    v2 = 30.0;
  }

  static GlobalSearchClient.kGlobalSearchTimeout = *&v2;
  return result;
}

uint64_t key path setter for GlobalSearchClient.xpcClient : GlobalSearchClient(uint64_t a1, uint64_t *a2)
{
  outlined init with copy of Date?(a1, v5, &_s10OmniSearch0b10ToolGlobalB3XPC_pSgMd, &_s10OmniSearch0b10ToolGlobalB3XPC_pSgMR);
  v3 = *a2;
  swift_beginAccess();
  outlined assign with take of SearchToolGlobalSearchXPC?(v5, v3 + 88);
  return swift_endAccess();
}

uint64_t GlobalSearchClient.init(client:session:featureFlagService:xpcClient:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a1[3];
  v11 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v10);
  OUTLINED_FUNCTION_19_14();
  MEMORY[0x28223BE20](v12);
  v14 = OUTLINED_FUNCTION_40_19(v13, v18);
  v15(v14);
  v16 = specialized GlobalSearchClient.init(client:session:featureFlagService:xpcClient:)(v5, a2, a3, a4, v4, v10, v11);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v16;
}

uint64_t GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:)()
{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  v5 = v4;
  *(v1 + 40) = v6;
  *(v1 + 48) = v0;
  *(v1 + 32) = v7;
  v8 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolFailureError();
  *(v1 + 56) = v8;
  OUTLINED_FUNCTION_21(v8);
  *(v1 + 64) = v9;
  *(v1 + 72) = OUTLINED_FUNCTION_199();
  v10 = type metadata accessor for OSSignpostID();
  *(v1 + 80) = v10;
  OUTLINED_FUNCTION_21(v10);
  *(v1 + 88) = v11;
  *(v1 + 96) = swift_task_alloc();
  v12 = swift_task_alloc();
  v13 = *v5;
  *(v1 + 104) = v12;
  *(v1 + 112) = v13;
  v14 = *v3;
  *(v1 + 224) = *(v3 + 8);
  v15 = v3[2];
  *(v1 + 120) = v14;
  *(v1 + 128) = v15;
  *(v1 + 225) = *(v3 + 24);
  v16 = v3[9];
  *(v1 + 136) = v3[8];
  *(v1 + 144) = v16;
  *(v1 + 226) = *(v3 + 96);
  v17 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v17);
}

{
  if (one-time initialization token for searchComponentSignposter != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v2, static Logging.searchComponentSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_157_0(v5);
    v6 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v3, v4, v6, "SearchTool.PegasusSearch", "", v1, 2u);
    OUTLINED_FUNCTION_37_0();
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 104);
  v9 = *(v0 + 80);
  v10 = *(v0 + 88);

  (*(v10 + 16))(v7, v8, v9);
  v11 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v11);
  *(v0 + 152) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v10 + 8))(v8, v9);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 225);
  v13 = *(v0 + 224);
  *(v0 + 160) = static MetricsLogger.shared;
  OUTLINED_FUNCTION_133();
  (*(v14 + 216))();
  v15 = swift_allocObject();
  *(v0 + 168) = v15;
  *(v15 + 16) = 0;
  if ((v13 & 1) == 0 && (v12 & 1) == 0)
  {
    v17 = *(v0 + 120);
    v16 = *(v0 + 128);
    if (v17 != 0.0 || v16 != 0.0)
    {
      *(v15 + 16) = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v17 longitude:v16];
    }
  }

  v18 = *(v0 + 226);
  OUTLINED_FUNCTION_133();
  if (((*(v19 + 80))(0) & 1) != 0 && v18 && ((v20 = *(v0 + 40), *v20 == v20[2]) ? (v21 = v20[1] == v20[3]) : (v21 = 0), !v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v42 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v42, static Logging.search);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_77_5(v44))
    {
      v45 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_157_0(v45);
      OUTLINED_FUNCTION_56_4();
      _os_log_impl(v46, v47, v48, v49, v50, 2u);
      OUTLINED_FUNCTION_37_0();
    }

    v51 = *(v0 + 112);
    v55 = *(v0 + 40);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch06GlobalB6ClientC9QueryTypeO_s6ResultOySayAA0bG0VGs5Error_pGtMd, &_s10OmniSearch06GlobalB6ClientC9QueryTypeO_s6ResultOySayAA0bG0VGs5Error_pGtMR);
    v52 = swift_task_alloc();
    *(v0 + 176) = v52;
    v52[1] = vextq_s8(v55, v55, 8uLL);
    v52[2].i64[0] = v51;
    v52[2].i64[1] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy10OmniSearch06GlobalB6ClientC9QueryTypeOs6ResultOySayAA0bG0VGs5Error_pGGMd, &_sSDy10OmniSearch06GlobalB6ClientC9QueryTypeOs6ResultOySayAA0bG0VGs5Error_pGGMR);
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    *(v0 + 184) = v53;
    *v53 = v54;
    v53[1] = GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:);

    return MEMORY[0x282200600](v0 + 24);
  }

  else
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v22 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v22, static Logging.search);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_77_5(v24))
    {
      v25 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_157_0(v25);
      OUTLINED_FUNCTION_56_4();
      _os_log_impl(v26, v27, v28, v29, v30, 2u);
      OUTLINED_FUNCTION_37_0();
    }

    v31 = *(v0 + 112);
    v32 = *(v0 + 40);
    v33 = *(v0 + 48);

    v35 = *(v32 + 16);
    v34 = *(v32 + 24);
    *(v0 + 16) = v31;
    v36 = *(v15 + 16);
    *(v0 + 192) = v36;
    v37 = *(*v33 + 176);
    v38 = v36;
    v57 = (v37 + *v37);
    v39 = swift_task_alloc();
    *(v0 + 200) = v39;
    *v39 = v0;
    v39[1] = GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:);
    v40 = MEMORY[0x277D84F90];

    return v57(v35, v34, v40, v0 + 16, v36);
  }
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v3);
}

{
  v1 = v0[3];
  specialized Dictionary.subscript.getter(0, v1);
  OUTLINED_FUNCTION_56_14();
  if (!v4)
  {
    v5 = v2;
    if (v3)
    {
      specialized Dictionary.subscript.getter(1, v1);
      OUTLINED_FUNCTION_56_14();
      if (!v4)
      {
        v8 = v6;
        if (v7)
        {
          v9 = v0[20];
          v38 = v0[17];
          v39 = v0[18];
          v10 = v0[9];
          v40 = v0[8];
          v41 = v0[7];

          lazy protocol witness table accessor for type GlobalSearchClient.GlobalSearchError and conformance GlobalSearchClient.GlobalSearchError();
          v11 = swift_allocError();
          *v12 = v5;
          v12[1] = v8;
          v13 = *(*v9 + 320);
          v14 = OUTLINED_FUNCTION_53_3();
          outlined copy of Result<[SearchResult], Error>?(v14, v15);
          v16 = OUTLINED_FUNCTION_45_0();
          outlined copy of Result<[SearchResult], Error>?(v16, v17);
          v18 = OUTLINED_FUNCTION_53_3();
          outlined copy of Result<[SearchResult], Error>?(v18, v19);
          v20 = OUTLINED_FUNCTION_45_0();
          outlined copy of Result<[SearchResult], Error>?(v20, v21);
          v13(v11);

          OUTLINED_FUNCTION_133();
          (*(v22 + 232))(v38, v39, v10);
          (*(v40 + 8))(v10, v41);
          swift_allocError();
          *v23 = v5;
          v23[1] = v8;
          swift_willThrow();
          v24 = OUTLINED_FUNCTION_45_0();
          outlined consume of Result<[SearchResult], Error>?(v24, v25);
          v26 = OUTLINED_FUNCTION_53_3();
          outlined consume of Result<[SearchResult], Error>?(v26, v27);

          OUTLINED_FUNCTION_70_11();

          OUTLINED_FUNCTION_127();
          goto LABEL_9;
        }

        v29 = OUTLINED_FUNCTION_45_0();
        outlined consume of Result<[SearchResult], Error>?(v29, v30);
      }
    }

    v31 = OUTLINED_FUNCTION_53_3();
    outlined consume of Result<[SearchResult], Error>?(v31, v32);
  }

  v33 = GlobalSearchClient.rankGlobalResponses(_:)(v1);

  v34 = v0[19];
  v35 = v0[4];
  OUTLINED_FUNCTION_133();
  (*(v36 + 224))();

  *v35 = v33;
  v35[1] = 0;
  $defer #1 () in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:)(v34);

  OUTLINED_FUNCTION_127();
LABEL_9:

  return v28();
}

{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  OUTLINED_FUNCTION_52();
  v5 = v4;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_11();
  *v8 = v7;
  *(v5 + 208) = v0;

  if (!v0)
  {
    *(v5 + 216) = v3;
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9);
}

{
  OUTLINED_FUNCTION_75();
  v1 = v0[27];
  v2 = v0[19];
  v3 = v0[4];
  OUTLINED_FUNCTION_133();
  (*(v4 + 224))();

  *v3 = v1;
  v3[1] = 0;
  $defer #1 () in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:)(v2);

  OUTLINED_FUNCTION_127();

  return v5();
}

{
  OUTLINED_FUNCTION_71_15();
  OUTLINED_FUNCTION_72();

  OUTLINED_FUNCTION_70_11();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_201();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t $defer #1 () in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:)(uint64_t a1)
{
  v1 = type metadata accessor for OSSignpostError();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for searchComponentSignposter != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v9, static Logging.searchComponentSignposter);
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
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v10, v11, v14, "SearchTool.PegasusSearch", v12, v13, 2u);
    MEMORY[0x25F8A1050](v13, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVy10OmniSearch06GlobalC6ClientC9QueryTypeO_s6ResultOySayAC0cH0VGs5Error_pGt_GMd, &_sScG8IteratorVy10OmniSearch06GlobalC6ClientC9QueryTypeO_s6ResultOySayAC0cH0VGs5Error_pGt_GMR);
  v6[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceVyScGy10OmniSearch06GlobalF6ClientC9QueryTypeO_s6ResultOySayAC0fK0VGs5Error_pGtGAG_ANtGMd, &_ss23AsyncCompactMapSequenceVyScGy10OmniSearch06GlobalF6ClientC9QueryTypeO_s6ResultOySayAC0fK0VGs5Error_pGtGAG_ANtGMR);
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceV8IteratorVyScGy10OmniSearch06GlobalG6ClientC9QueryTypeO_s6ResultOySayAE0gL0VGs5Error_pGtGAI_APt_GMd, &_ss23AsyncCompactMapSequenceV8IteratorVyScGy10OmniSearch06GlobalG6ClientC9QueryTypeO_s6ResultOySayAE0gL0VGs5Error_pGtGAI_APt_GMR);
  v6[14] = v8;
  v6[15] = *(v8 - 8);
  v6[16] = swift_task_alloc();
  v9 = *(type metadata accessor for UserQuery(0) - 8);
  v6[17] = v9;
  v6[18] = *(v9 + 64);
  v6[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:));
}

uint64_t closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:)()
{
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v20 = v0[13];
  v22 = v0[12];
  v21 = v0[11];
  v5 = v0[8];
  v15 = v0[9];
  v6 = v0[7];
  v18 = v6;
  v14 = v0[6];
  v17 = v0[5];
  v19 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v19);
  _s10OmniSearch0B6ResultVWOcTm_9(v6, v1, type metadata accessor for UserQuery);
  v16 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v7 = (v3 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v14;
  _s10OmniSearch0B6ResultVWObTm_5(v1, v9 + v16, type metadata accessor for UserQuery);
  *(v9 + v7) = v5;
  *(v9 + v8) = v15;

  _sScG7addTask8priority9operationyScPSg_xyYaYAcntF10OmniSearch06GlobalF6ClientC9QueryTypeO_s6ResultOySayAE0fK0VGs5Error_pGt_Tg5(v2, &async function pointer to partial apply for closure #1 in closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:), v9);
  outlined destroy of IntentApplication?(v2, &_sScPSgMd, &_sScPSgMR);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v19);
  _s10OmniSearch0B6ResultVWOcTm_9(v18, v1, type metadata accessor for UserQuery);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v14;
  _s10OmniSearch0B6ResultVWObTm_5(v1, v10 + v16, type metadata accessor for UserQuery);
  *(v10 + v7) = v5;
  *(v10 + v8) = v15;

  _sScG7addTask8priority9operationyScPSg_xyYaYAcntF10OmniSearch06GlobalF6ClientC9QueryTypeO_s6ResultOySayAE0fK0VGs5Error_pGt_Tg5(v2, &async function pointer to partial apply for closure #2 in closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:), v10);
  outlined destroy of IntentApplication?(v2, &_sScPSgMd, &_sScPSgMR);
  v0[2] = *v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScGy10OmniSearch06GlobalB6ClientC9QueryTypeO_s6ResultOySayAA0bG0VGs5Error_pGtGMd, &_sScGy10OmniSearch06GlobalB6ClientC9QueryTypeO_s6ResultOySayAA0bG0VGs5Error_pGtGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch06GlobalB6ClientC9QueryTypeO_s6ResultOySayAA0bG0VGs5Error_pGtMd, &_s10OmniSearch06GlobalB6ClientC9QueryTypeO_s6ResultOySayAA0bG0VGs5Error_pGtMR);
  lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(&lazy protocol witness table cache variable for type TaskGroup<(GlobalSearchClient.QueryType, Result<[SearchResult], Error>)> and conformance TaskGroup<A>, &_sScGy10OmniSearch06GlobalB6ClientC9QueryTypeO_s6ResultOySayAA0bG0VGs5Error_pGtGMd, &_sScGy10OmniSearch06GlobalB6ClientC9QueryTypeO_s6ResultOySayAA0bG0VGs5Error_pGtGMR, MEMORY[0x277D856C8]);
  AsyncCompactMapSequence.init(_:transform:)();
  MEMORY[0x25F8A0490](v21);
  TaskGroup.makeAsyncIterator()();
  MEMORY[0x25F8A04D0](v21);
  (*(v22 + 8))(v20, v21);
  AsyncCompactMapSequence.Iterator.init(_:transform:)();
  v0[21] = MEMORY[0x277D84F98];
  v11 = swift_task_alloc();
  v0[22] = v11;
  *v11 = v0;
  v12 = OUTLINED_FUNCTION_14_27(v11);

  return (_ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGy10OmniSearch06GlobalJ6ClientC9QueryTypeO_s6ResultOySayAK0jO0VGs5Error_pGtG_AO_AVtTg5)(v12);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 184) = v4;
  *(v2 + 192) = v5;
  *(v2 + 200) = v6;

  if (!v0)
  {
    OUTLINED_FUNCTION_69();

    return MEMORY[0x2822009F8](v8);
  }

  return result;
}

{
  v1 = *(v0 + 184);
  if (v1 == 2)
  {
    v2 = *(v0 + 168);
    v3 = *(v0 + 32);
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
    *v3 = v2;

    OUTLINED_FUNCTION_127();

    return v4();
  }

  else
  {
    v6 = *(v0 + 192);
    v7 = *(v0 + 168);
    v8 = *(v0 + 200);
    outlined copy of Result<[SearchResult], Error>(v6, v8 & 1);
    swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v6, v8 & 1, v1 & 1);
    v9 = OUTLINED_FUNCTION_32_0();
    outlined consume of (GlobalSearchClient.QueryType, Result<[SearchResult], Error>)?(v9, v10, v8);
    *(v0 + 168) = v7;
    v11 = swift_task_alloc();
    *(v0 + 176) = v11;
    *v11 = v0;
    v12 = OUTLINED_FUNCTION_14_27(v11);

    return _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGy10OmniSearch06GlobalJ6ClientC9QueryTypeO_s6ResultOySayAK0jO0VGs5Error_pGtG_AO_AVtTg5(v12, v13);
  }
}

uint64_t closure #1 in closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[6] = a1;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:));
}

uint64_t closure #1 in closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:)()
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_55_15(*(v0 + 72));
  OUTLINED_FUNCTION_68_16();
  v3 = *(v2 + 176);
  v16 = v2 + 176;
  v4 = v1;
  v15 = v3 + *v3;
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = closure #1 in closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:);
  OUTLINED_FUNCTION_46_19();
  OUTLINED_FUNCTION_61_18();

  return v11(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16);
}

{
  v1 = *(v0 + 112);
  **(v0 + 48) = 0;
  return OUTLINED_FUNCTION_15_29(v1);
}

{
  OUTLINED_FUNCTION_71_15();
  OUTLINED_FUNCTION_72();
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
  }

  v1 = *(v0 + 104);
  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v2, static Logging.search);
  v3 = v1;
  v4 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_77_13();
  if (OUTLINED_FUNCTION_143_8())
  {
    OUTLINED_FUNCTION_51_0();
    v5 = OUTLINED_FUNCTION_152_0();
    OUTLINED_FUNCTION_75_14(5.7779e-34);
    v6 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_57_16(v6);
    OUTLINED_FUNCTION_205_3(&dword_25D85C000, v7, v8, "GlobalSearch: Encountered an error when federating with the raw query: %@");
    outlined destroy of IntentApplication?(v5, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_72_9();
    OUTLINED_FUNCTION_37_0();
  }

  OUTLINED_FUNCTION_65_20();
  *v9 = 0;
  *(v9 + 8) = v10;
  *(v9 + 16) = v11;
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_201();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t closure #1 in closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:)(uint64_t a1)
{
  OUTLINED_FUNCTION_71_15();
  OUTLINED_FUNCTION_72();
  v4 = v3;
  OUTLINED_FUNCTION_52();
  v6 = v5;
  OUTLINED_FUNCTION_19_0();
  *v7 = v6;
  v9 = *(v8 + 88);
  v10 = *v2;
  OUTLINED_FUNCTION_11();
  *v11 = v10;
  *(v6 + 104) = v1;

  if (!v1)
  {
    *(v6 + 112) = v4;
  }

  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_201();

  return MEMORY[0x2822009F8](v12);
}

uint64_t _sScG7addTask8priority9operationyScPSg_xyYaYAcntF10OmniSearch06GlobalF6ClientC9QueryTypeO_s6ResultOySayAE0fK0VGs5Error_pGt_Tg5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v19 - v9;
  outlined init with copy of Date?(a1, v19 - v9, &_sScPSgMd, &_sScPSgMR);
  v11 = type metadata accessor for TaskPriority();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    outlined destroy of IntentApplication?(v10, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v12 = dispatch thunk of Actor.unownedExecutor.getter();
    v14 = v13;
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = *v4;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch06GlobalB6ClientC9QueryTypeO_s6ResultOySayAA0bG0VGs5Error_pGtMd, &_s10OmniSearch06GlobalB6ClientC9QueryTypeO_s6ResultOySayAA0bG0VGs5Error_pGtMR);
  v17 = (v14 | v12);
  if (v14 | v12)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v12;
    v20[3] = v14;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v15;
  swift_task_create();
}

uint64_t closure #2 in closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[6] = a1;
  return MEMORY[0x2822009F8](closure #2 in closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:));
}

uint64_t closure #2 in closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:)()
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_55_15(*(v0 + 72));
  OUTLINED_FUNCTION_68_16();
  v3 = *(v2 + 176);
  v16 = v2 + 176;
  v4 = v1;
  v15 = v3 + *v3;
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = closure #2 in closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:);
  OUTLINED_FUNCTION_46_19();
  OUTLINED_FUNCTION_61_18();

  return v11(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16);
}

{
  v1 = *(v0 + 112);
  **(v0 + 48) = 1;
  return OUTLINED_FUNCTION_15_29(v1);
}

{
  OUTLINED_FUNCTION_71_15();
  OUTLINED_FUNCTION_72();
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
  }

  v1 = *(v0 + 104);
  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v2, static Logging.search);
  v3 = v1;
  v4 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_77_13();
  if (OUTLINED_FUNCTION_143_8())
  {
    OUTLINED_FUNCTION_51_0();
    v5 = OUTLINED_FUNCTION_152_0();
    OUTLINED_FUNCTION_75_14(5.7779e-34);
    v6 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_57_16(v6);
    OUTLINED_FUNCTION_205_3(&dword_25D85C000, v7, v8, "GlobalSearch: Encountered an error when federating with the rewritten query: %@");
    outlined destroy of IntentApplication?(v5, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_72_9();
    OUTLINED_FUNCTION_37_0();
  }

  OUTLINED_FUNCTION_65_20();
  *v9 = 1;
  *(v9 + 8) = v10;
  *(v9 + 16) = v11;
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_201();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t closure #2 in closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:)(uint64_t a1)
{
  OUTLINED_FUNCTION_71_15();
  OUTLINED_FUNCTION_72();
  v4 = v3;
  OUTLINED_FUNCTION_52();
  v6 = v5;
  OUTLINED_FUNCTION_19_0();
  *v7 = v6;
  v9 = *(v8 + 88);
  v10 = *v2;
  OUTLINED_FUNCTION_11();
  *v11 = v10;
  *(v6 + 104) = v1;

  if (!v1)
  {
    *(v6 + 112) = v4;
  }

  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_201();

  return MEMORY[0x2822009F8](v12);
}

uint64_t closure #3 in closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = *a2;
  v3 = *(a2 + 8);
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 33) = *(a2 + 16);
  return MEMORY[0x2822009F8](closure #3 in closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:));
}

uint64_t closure #3 in closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:)()
{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 33);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  *v3 = *(v0 + 32);
  *(v3 + 8) = v2;
  *(v3 + 16) = v1;
  outlined copy of Result<[SearchResult], Error>(v2, v1);
  OUTLINED_FUNCTION_127();

  return v4();
}

uint64_t _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGy10OmniSearch06GlobalJ6ClientC9QueryTypeO_s6ResultOySayAK0jO0VGs5Error_pGtG_AO_AVtTg5(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[18] = v4;
  v3[19] = v6;

  return MEMORY[0x2822009F8](_ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGy10OmniSearch06GlobalJ6ClientC9QueryTypeO_s6ResultOySayAK0jO0VGs5Error_pGtG_AO_AVtTg5TY0_);
}

uint64_t _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGy10OmniSearch06GlobalJ6ClientC9QueryTypeO_s6ResultOySayAK0jO0VGs5Error_pGtG_AO_AVtTg5TY0_()
{
  OUTLINED_FUNCTION_78();
  v0[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceV8IteratorVyScGy10OmniSearch06GlobalG6ClientC9QueryTypeO_s6ResultOySayAE0gL0VGs5Error_pGtGAI_APt_GMd, &_ss23AsyncCompactMapSequenceV8IteratorVyScGy10OmniSearch06GlobalG6ClientC9QueryTypeO_s6ResultOySayAE0gL0VGs5Error_pGtGAI_APt_GMR);
  v0[21] = AsyncCompactMapSequence.Iterator.baseIterator.modify();
  v1 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_24_23(&lazy protocol witness table cache variable for type TaskGroup<(GlobalSearchClient.QueryType, Result<[SearchResult], Error>)>.Iterator and conformance TaskGroup<A>.Iterator);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  v0[22] = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_10_31(v3);

  return MEMORY[0x282200310](v5);
}

uint64_t _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGy10OmniSearch06GlobalJ6ClientC9QueryTypeO_s6ResultOySayAK0jO0VGs5Error_pGtG_AO_AVtTg5TQ1_()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_11();
  *v6 = v5;

  if (v0)
  {
    v7 = _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGy10OmniSearch06GlobalJ6ClientC9QueryTypeO_s6ResultOySayAK0jO0VGs5Error_pGtG_AO_AVtTg5TY3_;
  }

  else
  {
    (*(v3 + 168))();
    v7 = _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGy10OmniSearch06GlobalJ6ClientC9QueryTypeO_s6ResultOySayAK0jO0VGs5Error_pGtG_AO_AVtTg5TY2_;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGy10OmniSearch06GlobalJ6ClientC9QueryTypeO_s6ResultOySayAK0jO0VGs5Error_pGtG_AO_AVtTg5TY2_()
{
  OUTLINED_FUNCTION_78();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  *(v0 + 184) = v1;
  *(v0 + 192) = v2;
  v3 = *(v0 + 88);
  *(v0 + 65) = v3;
  if (v1 == 2)
  {
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 160);
    *(v0 + 48) = v1 & 1;
    *(v0 + 56) = v2;
    *(v0 + 64) = v3 & 1;
    v7 = MEMORY[0x25F8A04B0](v6);
    *(v0 + 200) = v8;
    v11 = (v7 + *v7);
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    *(v0 + 208) = v9;
    *v9 = v10;
    v9[1] = _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGy10OmniSearch06GlobalJ6ClientC9QueryTypeO_s6ResultOySayAK0jO0VGs5Error_pGtG_AO_AVtTg5TQ4_;

    return v11(v0 + 96, v0 + 48);
  }
}

uint64_t _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGy10OmniSearch06GlobalJ6ClientC9QueryTypeO_s6ResultOySayAK0jO0VGs5Error_pGtG_AO_AVtTg5TY3_()
{
  OUTLINED_FUNCTION_48();
  (*(v0 + 168))();
  OUTLINED_FUNCTION_127();

  return v1();
}

uint64_t _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGy10OmniSearch06GlobalJ6ClientC9QueryTypeO_s6ResultOySayAK0jO0VGs5Error_pGtG_AO_AVtTg5TQ4_()
{
  OUTLINED_FUNCTION_72();
  v1 = *v0;
  OUTLINED_FUNCTION_19_0();
  *v3 = v2;
  v4 = *(v1 + 192);
  v5 = *(v1 + 184);
  v6 = *v0;
  v7 = *(v2 + 65);
  OUTLINED_FUNCTION_11();
  *v8 = v6;

  outlined consume of (GlobalSearchClient.QueryType, Result<[SearchResult], Error>)?(v5, v4, v7);

  return MEMORY[0x2822009F8](_ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGy10OmniSearch06GlobalJ6ClientC9QueryTypeO_s6ResultOySayAK0jO0VGs5Error_pGtG_AO_AVtTg5TY5_);
}

uint64_t _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGy10OmniSearch06GlobalJ6ClientC9QueryTypeO_s6ResultOySayAK0jO0VGs5Error_pGtG_AO_AVtTg5TY5_()
{
  OUTLINED_FUNCTION_78();
  if (v0[12] == 2)
  {
    v0[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceV8IteratorVyScGy10OmniSearch06GlobalG6ClientC9QueryTypeO_s6ResultOySayAE0gL0VGs5Error_pGtGAI_APt_GMd, &_ss23AsyncCompactMapSequenceV8IteratorVyScGy10OmniSearch06GlobalG6ClientC9QueryTypeO_s6ResultOySayAE0gL0VGs5Error_pGtGAI_APt_GMR);
    v0[21] = AsyncCompactMapSequence.Iterator.baseIterator.modify();
    v1 = OUTLINED_FUNCTION_32_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
    OUTLINED_FUNCTION_24_23(&lazy protocol witness table cache variable for type TaskGroup<(GlobalSearchClient.QueryType, Result<[SearchResult], Error>)>.Iterator and conformance TaskGroup<A>.Iterator);
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    v0[22] = v3;
    *v3 = v4;
    v5 = OUTLINED_FUNCTION_10_31(v3);

    return MEMORY[0x282200310](v5);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t GlobalSearchClient.search(content:entities:sources:location:)(uint64_t a1)
{
  OUTLINED_FUNCTION_71_15();
  OUTLINED_FUNCTION_72();
  v2[2] = v3;
  v2[3] = v4;
  v6 = *v5;
  v2[4] = v1;
  v2[5] = v6;
  v7 = swift_task_alloc();
  v2[6] = v7;
  *v7 = v2;
  OUTLINED_FUNCTION_84(v7);
  OUTLINED_FUNCTION_201();

  return GlobalSearchClient.searchInternal(content:clientEntities:location:useXPC:)();
}

uint64_t GlobalSearchClient.search(content:entities:sources:location:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 56) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_127();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_69();

    return MEMORY[0x2822009F8](v7);
  }
}

{
  OUTLINED_FUNCTION_78();
  v8 = v0;
  v1 = v0[7];
  if (v1)
  {
    v2 = v0[2];
    v3 = v0[3];
    v7 = v0[5];
    v4 = GlobalSearchClient.handleSageResponse(_:associatedQuery:sources:allowClientExperience:)(v1, v2, v3, &v7, 0);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_62();

  return v5(v4);
}

uint64_t GlobalSearchClient.rawResponseSearch(content:location:entities:useXPC:)()
{
  OUTLINED_FUNCTION_72();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = swift_task_alloc();
  v1[5] = v4;
  *v4 = v1;
  OUTLINED_FUNCTION_32_27(v4);

  return GlobalSearchClient.searchInternal(content:clientEntities:location:useXPC:)();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 48) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_127();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_69();

    return MEMORY[0x2822009F8](v7);
  }
}

{
  OUTLINED_FUNCTION_72();
  v22 = v0;
  v1 = v0[6];
  if (v1)
  {
    v2 = dispatch thunk of PommesResponse.experiences.getter();
    if (specialized Array.count.getter())
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
      if ((v2 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x25F89FFD0](0, v2);
      }

      else
      {
        v3 = *(v2 + 32);
      }

      v4 = v3;

      dispatch thunk of Experience.queryConfidence.getter();
      if (v5 == 1.0)
      {
        v6 = v0[2];
        v7 = v0[3];
        v21 = 2;
        v8 = GlobalSearchClient.handleSageResponse(_:associatedQuery:sources:allowClientExperience:)(v1, v6, v7, &v21, 1);

        v9 = v0[6];
        goto LABEL_15;
      }
    }

    else
    {
    }

    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v10 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v10, static Logging.search);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_77_5(v12))
    {
      v13 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_157_0(v13);
      OUTLINED_FUNCTION_56_4();
      _os_log_impl(v14, v15, v16, v17, v18, 2u);
      OUTLINED_FUNCTION_37_0();
    }
  }

  v9 = 0;
  v8 = 0;
LABEL_15:
  v19 = v0[1];

  return v19(v9, v8);
}

uint64_t GlobalSearchClient.searchInternal(content:clientEntities:location:useXPC:)()
{
  OUTLINED_FUNCTION_48();
  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  *(v1 + 216) = v3;
  *(v1 + 96) = v4;
  *(v1 + 104) = v5;
  *(v1 + 88) = v6;
  v7 = type metadata accessor for TimeoutError();
  *(v1 + 128) = v7;
  OUTLINED_FUNCTION_21(v7);
  *(v1 + 136) = v8;
  *(v1 + 144) = OUTLINED_FUNCTION_199();
  v9 = type metadata accessor for CancellationError();
  *(v1 + 152) = v9;
  OUTLINED_FUNCTION_21(v9);
  *(v1 + 160) = v10;
  *(v1 + 168) = OUTLINED_FUNCTION_199();
  v11 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v11);
}

{
  OUTLINED_FUNCTION_75();
  if (one-time initialization token for kGlobalSearchTimeout != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 216);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 88);
  v7 = static GlobalSearchClient.kGlobalSearchTimeout;
  v8 = swift_allocObject();
  *(v0 + 176) = v8;
  *(v8 + 16) = v3;
  *(v8 + 24) = v1;
  *(v8 + 32) = v6;
  *(v8 + 40) = v5;
  *(v8 + 48) = v4;
  *(v8 + 56) = v2;

  v9 = v2;
  v10 = swift_task_alloc();
  *(v0 + 184) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch14PommesResponseCSgMd, &_s21SiriInformationSearch14PommesResponseCSgMR);
  *v10 = v0;
  v10[1] = GlobalSearchClient.searchInternal(content:clientEntities:location:useXPC:);
  v12.n128_u64[0] = v7;

  return MEMORY[0x2821C8618](v0 + 64, &async function pointer to partial apply for closure #1 in GlobalSearchClient.searchInternal(content:clientEntities:location:useXPC:), v8, v11, v12);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  *(v3 + 192) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7);
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_62();

  return v2(v1);
}

{
  OUTLINED_FUNCTION_71_15();
  OUTLINED_FUNCTION_72();
  v1 = v0[24];
  v2 = v0[19];

  v0[9] = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    (*(v0[20] + 8))(v0[21], v0[19]);
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v4 = v0[24];
    v5 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v5, static Logging.search);
    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[24];
    if (v9)
    {
      OUTLINED_FUNCTION_51_0();
      v11 = OUTLINED_FUNCTION_152_0();
      *v2 = 138412290;
      v12 = v10;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_57_16(v13);
      OUTLINED_FUNCTION_56_4();
      _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
      outlined destroy of IntentApplication?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_72_9();
      OUTLINED_FUNCTION_37_0();
    }

    else
    {
    }

    OUTLINED_FUNCTION_3_13();
    OUTLINED_FUNCTION_201();

    return v31(v29, v30, v31, v32, v33, v34, v35, v36);
  }

  else
  {
    v19 = v0[24];
    v0[10] = v19;
    v20 = v19;
    if (swift_dynamicCast())
    {
      (*(v0[17] + 8))(v0[18], v0[16]);
      if (one-time initialization token for search != -1)
      {
        OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
      }

      v21 = v0[24];
      v22 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v22, static Logging.search);
      v23 = v21;
      v24 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      OUTLINED_FUNCTION_77_13();
      if (OUTLINED_FUNCTION_143_8())
      {
        OUTLINED_FUNCTION_51_0();
        v25 = OUTLINED_FUNCTION_152_0();
        OUTLINED_FUNCTION_75_14(5.7779e-34);
        v26 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_57_16(v26);
        OUTLINED_FUNCTION_205_3(&dword_25D85C000, v27, v28, "GlobalSearch timed out: %@");
        outlined destroy of IntentApplication?(v25, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        OUTLINED_FUNCTION_72_9();
        OUTLINED_FUNCTION_37_0();
      }

      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_5_0(&one-time initialization token for shared);
      }

      v0[25] = static ContextManager.shared;
    }

    else
    {
      if (one-time initialization token for search != -1)
      {
        OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
      }

      v38 = v0[24];
      v39 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v39, static Logging.search);
      v40 = v38;
      v41 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      OUTLINED_FUNCTION_77_13();
      if (OUTLINED_FUNCTION_143_8())
      {
        OUTLINED_FUNCTION_51_0();
        v42 = OUTLINED_FUNCTION_152_0();
        OUTLINED_FUNCTION_75_14(5.7779e-34);
        v43 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_57_16(v43);
        OUTLINED_FUNCTION_205_3(&dword_25D85C000, v44, v45, "GlobalSearch encountered an unknown error: %@");
        outlined destroy of IntentApplication?(v42, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        OUTLINED_FUNCTION_72_9();
        OUTLINED_FUNCTION_37_0();
      }

      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_5_0(&one-time initialization token for shared);
      }

      v0[26] = static ContextManager.shared;
    }

    OUTLINED_FUNCTION_201();

    return MEMORY[0x2822009F8](v46);
  }
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 192);
  swift_beginAccess();
  MessageAccumulationContext.record(_:from:)(v1, 1);
  swift_endAccess();
  v2 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v2);
}

{
  OUTLINED_FUNCTION_48();

  v1 = OUTLINED_FUNCTION_3_13();

  return v2(v1);
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 192);
  swift_beginAccess();
  MessageAccumulationContext.record(_:from:)(v1, 1);
  swift_endAccess();
  v2 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v2);
}

{
  OUTLINED_FUNCTION_78();
  swift_willThrow();

  OUTLINED_FUNCTION_127();

  return v0();
}

uint64_t closure #1 in GlobalSearchClient.searchInternal(content:clientEntities:location:useXPC:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 96) = a2;
  *(v7 + 16) = a1;
  *(v7 + 24) = a3;
  return MEMORY[0x2822009F8](closure #1 in GlobalSearchClient.searchInternal(content:clientEntities:location:useXPC:));
}

uint64_t closure #1 in GlobalSearchClient.searchInternal(content:clientEntities:location:useXPC:)()
{
  OUTLINED_FUNCTION_72();
  if (*(v0 + 96) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 64) = v1;
    *v1 = v0;
    v1[1] = closure #1 in GlobalSearchClient.searchInternal(content:clientEntities:location:useXPC:);

    return GlobalSearchClient.searchInternalXPC(content:clientEntities:location:)();
  }

  else
  {
    v3 = *(v0 + 24);
    v4 = v3[7];
    v5 = v3[8];
    __swift_project_boxed_opaque_existential_1(v3 + 4, v4);
    OUTLINED_FUNCTION_28_0();
    v12 = (v6 + *v6);
    v7 = swift_task_alloc();
    *(v0 + 80) = v7;
    *v7 = v0;
    v7[1] = closure #1 in GlobalSearchClient.searchInternal(content:clientEntities:location:useXPC:);
    v8 = *(v0 + 48);
    v9 = *(v0 + 56);
    v11 = *(v0 + 32);
    v10 = *(v0 + 40);

    return v12(v11, v10, v8, v9, v4, v5);
  }
}

{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  OUTLINED_FUNCTION_52();
  v5 = v4;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_11();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_51_16();

    return v9();
  }

  else
  {
    *(v5 + 72) = v3;
    OUTLINED_FUNCTION_69();

    return MEMORY[0x2822009F8](v11);
  }
}

{
  return OUTLINED_FUNCTION_11_35(*(v0 + 72));
}

{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  OUTLINED_FUNCTION_52();
  v5 = v4;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_11();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_51_16();

    return v9();
  }

  else
  {
    *(v5 + 88) = v3;
    OUTLINED_FUNCTION_69();

    return MEMORY[0x2822009F8](v11);
  }
}

{
  return OUTLINED_FUNCTION_11_35(*(v0 + 88));
}

uint64_t GlobalSearchClient.searchInternalXPC(content:clientEntities:location:)()
{
  OUTLINED_FUNCTION_48();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v1[17] = v5;
  v6 = type metadata accessor for ParseStateXPC();
  v1[22] = v6;
  OUTLINED_FUNCTION_21(v6);
  v1[23] = v7;
  v1[24] = OUTLINED_FUNCTION_199();
  v8 = type metadata accessor for UUID();
  v1[25] = v8;
  OUTLINED_FUNCTION_21(v8);
  v1[26] = v9;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v10);
}

{
  OUTLINED_FUNCTION_133();
  (*(v2 + 128))();
  if (*(v1 + 120))
  {
    outlined init with take of ResponseOverrideMatcherProtocol((v1 + 96), v1 + 56);
    if (*(v1 + 80))
    {
LABEL_3:
      v4 = *(v1 + 224);
      v3 = *(v1 + 232);
      v5 = *(v1 + 208);
      v6 = *(v1 + 216);
      v7 = *(v1 + 192);
      v8 = *(v1 + 200);
      v9 = *(v1 + 184);
      v31 = *(v1 + 176);
      outlined init with take of ResponseOverrideMatcherProtocol((v1 + 56), v1 + 16);
      UUID.init()();
      UUID.uuidString.getter();
      v10 = *(v5 + 8);
      v10(v3, v8);
      UUID.init()();
      UUID.uuidString.getter();
      v10(v4, v8);
      UUID.init()();
      v11 = UUID.uuidString.getter();
      v13 = v12;
      v10(v6, v8);
      *v7 = v11;
      *(v7 + 8) = v13;
      *(v7 + 16) = MEMORY[0x277D84F90];
      *(v7 + 24) = 0;
      (*(v9 + 104))(v7, *MEMORY[0x277D565F8], v31);
      v14 = type metadata accessor for PommesSearchRequestXPCBuilder();
      OUTLINED_FUNCTION_170(v14);

      PommesSearchRequestXPCBuilder.init(domain:assistantId:requestId:parseState:utterance:)();
      v15 = dispatch thunk of PommesSearchRequestXPCBuilder.build()();
      *(v1 + 240) = v15;

      v16 = type metadata accessor for SearchToolGlobalRequestXPCBuilder();
      OUTLINED_FUNCTION_170(v16);
      v17 = v15;
      SearchToolGlobalRequestXPCBuilder.init(pommesSearchRequest:)();
      dispatch thunk of SearchToolGlobalRequestXPCBuilder.withLocation(_:)();

      dispatch thunk of SearchToolGlobalRequestXPCBuilder.withClientEntities(_:)();

      *(v1 + 248) = dispatch thunk of SearchToolGlobalRequestXPCBuilder.build()();

      __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
      OUTLINED_FUNCTION_28_0();
      v32 = (v18 + *v18);
      v19 = swift_task_alloc();
      *(v1 + 256) = v19;
      *v19 = v1;
      OUTLINED_FUNCTION_84(v19);
      v20 = OUTLINED_FUNCTION_32_0();

      return v32(v20);
    }
  }

  else
  {
    v22 = type metadata accessor for PommesSearchClient();
    OUTLINED_FUNCTION_170(v22);
    v23 = PommesSearchClient.init()();
    if (v23)
    {
      v24 = &protocol witness table for PommesSearchClient;
    }

    else
    {
      v22 = 0;
      v24 = 0;
      *(v1 + 64) = 0;
      *(v1 + 72) = 0;
    }

    *(v1 + 56) = v23;
    *(v1 + 80) = v22;
    *(v1 + 88) = v24;
    if (v22)
    {
      goto LABEL_3;
    }
  }

  outlined destroy of IntentApplication?(v1 + 56, &_s10OmniSearch0b10ToolGlobalB3XPC_pSgMd, &_s10OmniSearch0b10ToolGlobalB3XPC_pSgMR);
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
  }

  v25 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v25, static Logging.search);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_81_4(v28);
    _os_log_impl(&dword_25D85C000, v26, v27, "GlobalSearch XPC client failed to initialize", v0, 2u);
    OUTLINED_FUNCTION_2_8();
  }

  v29 = OUTLINED_FUNCTION_3_13();

  return v30(v29);
}

{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  OUTLINED_FUNCTION_52();
  v5 = v4;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_11();
  *v8 = v7;
  *(v5 + 264) = v0;

  if (!v0)
  {
    *(v5 + 272) = v3;
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9);
}

{
  OUTLINED_FUNCTION_78();
  v1 = *(v0 + 272);
  v2 = *(v0 + 240);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_62();

  return v3(v1);
}

{
  OUTLINED_FUNCTION_71_15();
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 240);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_201();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

void *GlobalSearchClient.handleSageResponse(_:associatedQuery:sources:allowClientExperience:)(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v55 = a2;
  v9 = type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_19_14();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a4;
  v16 = PommesResponse.metadataDomainName.getter();
  v18 = v17;
  if ((v15 & 8) == 0)
  {
    if (one-time initialization token for webDomains != -1)
    {
      OUTLINED_FUNCTION_2_45(&one-time initialization token for webDomains);
    }

    if (specialized Set.contains(_:)(v16, v18, static GlobalSearchClient.webDomains))
    {
      if (one-time initialization token for search != -1)
      {
        OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
      }

      v19 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v19, static Logging.search);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = OUTLINED_FUNCTION_51_0();
        v23 = swift_slowAlloc();
        v56 = v23;
        *v22 = 136315138;
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v22 + 4) = v24;
        OUTLINED_FUNCTION_110_4();
        _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v23);
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_2_8();
      }

      else
      {
      }

      return MEMORY[0x277D84F90];
    }
  }

  v30 = dispatch thunk of PommesResponse.experiences.getter();
  if (!specialized Array.count.getter())
  {

    v32 = 0;
    goto LABEL_27;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
  if ((v30 & 0xC000000000000001) != 0)
  {
    v31 = MEMORY[0x25F89FFD0](0, v30);
  }

  else
  {
    v31 = *(v30 + 32);
  }

  v32 = v31;

  type metadata accessor for GenericExperience();
  if (swift_dynamicCastClass())
  {
    PommesResponse.isLowConfidenceKnowledgeResult.getter();
    static GlobalSearchResponseProcessor.makeGenericItem(experience:domain:lowConfidenceKnowledge:)();
    goto LABEL_18;
  }

  type metadata accessor for AudioExperience();
  if (!swift_dynamicCastClass() || (a5 & 1) == 0)
  {
LABEL_27:

    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logging.search);
    v44 = v32;
    v45 = a1;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v46, v47))
    {
      swift_slowAlloc();
      v48 = OUTLINED_FUNCTION_152_0();
      v49 = swift_slowAlloc();
      v56 = v49;
      *v9 = 138412546;
      *(v9 + 4) = v44;
      *v48 = v32;
      *(v9 + 12) = 2080;
      v50 = v44;
      PommesResponse.metadataDomainName.getter();
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v9 + 14) = v51;
      _os_log_impl(&dword_25D85C000, v46, v47, "GlobalSearch: unhandled experience %@ for domain %s", v9, 0x16u);
      outlined destroy of IntentApplication?(v48, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_42_0();
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_37_0();
    }

    return MEMORY[0x277D84F90];
  }

  static GlobalSearchResponseProcessor.makeAudioItem(experience:domain:)();
LABEL_18:
  v34 = v33;

  v35 = *(v34 + 16);
  if (!v35)
  {

    return MEMORY[0x277D84F90];
  }

  v54 = v32;
  v56 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 0);
  v36 = v56;
  v37 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v53 = v34;
  v38 = v34 + v37;
  v39 = *(v11 + 72);
  do
  {
    _s10OmniSearch0B6ResultVWOcTm_9(v38, v14, type metadata accessor for SearchResult);
    v40 = &v14[*(v9 + 40)];

    *v40 = v55;
    v40[1] = a3;
    v56 = v36;
    v42 = v36[2];
    v41 = v36[3];
    if (v42 >= v41 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v41 > 1, v42 + 1, 1);
      v36 = v56;
    }

    v36[2] = v42 + 1;
    _s10OmniSearch0B6ResultVWObTm_5(v14, v36 + v37 + v42 * v39, type metadata accessor for SearchResult);
    v38 += v39;
    --v35;
  }

  while (v35);

  return v36;
}

void *GlobalSearchClient.rankGlobalResponses(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_109();
  v5 = v3 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v80 - v7;
  type metadata accessor for SearchResultItem(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_109();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v80 - v14;
  v16 = type metadata accessor for GlobalItem(0);
  MEMORY[0x28223BE20](v16 - 8);
  OUTLINED_FUNCTION_109();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v80 - v21;
  specialized Dictionary.subscript.getter(0, a1);
  OUTLINED_FUNCTION_56_14();
  if (v25)
  {
    goto LABEL_11;
  }

  v26 = v23;
  v27 = v24;
  if ((v24 & 1) == 0)
  {
    v81 = v22;
    specialized Collection.first.getter(v23, v8);
    v28 = type metadata accessor for SearchResult(0);
    if (__swift_getEnumTagSinglePayload(v8, 1, v28) == 1)
    {
      OUTLINED_FUNCTION_72_13();
      outlined destroy of IntentApplication?(v8, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_23_23();
    _s10OmniSearch0B6ResultVWOcTm_9(v8, v15, v29);
    OUTLINED_FUNCTION_22_22();
    _s10OmniSearch0B6ResultVWOhTm_7(v8, v30);
    if (swift_getEnumCaseMultiPayload() != 25)
    {
      OUTLINED_FUNCTION_72_13();
      OUTLINED_FUNCTION_20_20();
      _s10OmniSearch0B6ResultVWOhTm_7(v15, v36);
      goto LABEL_11;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMd, &_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMR);

    OUTLINED_FUNCTION_21_26();
    _s10OmniSearch0B6ResultVWObTm_5(v15, v81, v31);
    specialized Dictionary.subscript.getter(1, a1);
    OUTLINED_FUNCTION_56_14();
    if (!v25)
    {
      v34 = v32;
      v35 = v33;
      if ((v33 & 1) == 0)
      {
        specialized Collection.first.getter(v32, v5);
        if (__swift_getEnumTagSinglePayload(v5, 1, v28) == 1)
        {
          outlined consume of Result<[SearchResult], Error>?(v34, v35);
          outlined destroy of IntentApplication?(v5, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
          goto LABEL_33;
        }

        OUTLINED_FUNCTION_23_23();
        _s10OmniSearch0B6ResultVWOcTm_9(v5, v12, v59);
        OUTLINED_FUNCTION_22_22();
        _s10OmniSearch0B6ResultVWOhTm_7(v5, v60);
        if (swift_getEnumCaseMultiPayload() != 25)
        {
          outlined consume of Result<[SearchResult], Error>?(v34, v35);
          OUTLINED_FUNCTION_20_20();
          _s10OmniSearch0B6ResultVWOhTm_7(v12, v64);
          goto LABEL_33;
        }

        OUTLINED_FUNCTION_21_26();
        _s10OmniSearch0B6ResultVWObTm_5(v12, v19, v61);
        if (one-time initialization token for webDomains != -1)
        {
          OUTLINED_FUNCTION_2_45(&one-time initialization token for webDomains);
        }

        v62 = static GlobalSearchClient.webDomains;
        if (specialized Set.contains(_:)(*(v81 + 4), *(v81 + 5), static GlobalSearchClient.webDomains) && !specialized Set.contains(_:)(*(v19 + 32), *(v19 + 40), v62))
        {
          OUTLINED_FUNCTION_72_13();
          if (one-time initialization token for search != -1)
          {
            OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
          }

          v71 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_200(v71, static Logging.search);
          v72 = Logger.logObject.getter();
          v73 = static os_log_type_t.info.getter();
          if (OUTLINED_FUNCTION_105_6(v73))
          {
            v74 = OUTLINED_FUNCTION_172();
            OUTLINED_FUNCTION_81_4(v74);
            OUTLINED_FUNCTION_110_4();
            _os_log_impl(v75, v76, v77, v78, v79, 2u);
            OUTLINED_FUNCTION_2_8();
          }

          _s10OmniSearch0B6ResultVWOhTm_7(v19, type metadata accessor for GlobalItem);
          _s10OmniSearch0B6ResultVWOhTm_7(v81, type metadata accessor for GlobalItem);
          return v34;
        }

        OUTLINED_FUNCTION_19_29();
        _s10OmniSearch0B6ResultVWOhTm_7(v19, v63);
      }

      outlined consume of Result<[SearchResult], Error>?(v34, v35);
    }

LABEL_33:
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v65 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v65, static Logging.search);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_105_6(v67))
    {
      v68 = OUTLINED_FUNCTION_172();
      *v68 = 0;
      _os_log_impl(&dword_25D85C000, v66, v27, "GlobalSearch: returning raw query's response", v68, 2u);
      OUTLINED_FUNCTION_42_0();
    }

    OUTLINED_FUNCTION_19_29();
    _s10OmniSearch0B6ResultVWOhTm_7(v81, v69);
    return v26;
  }

  OUTLINED_FUNCTION_72_13();
LABEL_11:
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
  }

  v37 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v37, static Logging.search);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_157_0(v40);
    _os_log_impl(&dword_25D85C000, v38, v39, "GlobalSearch: no global search result found using the raw query", v19, 2u);
    OUTLINED_FUNCTION_37_0();
  }

  specialized Dictionary.subscript.getter(1, a1);
  OUTLINED_FUNCTION_56_14();
  if (v25)
  {
    goto LABEL_18;
  }

  v34 = v41;
  if (v42)
  {
    outlined consume of Result<[SearchResult], Error>?(v41, v42);
LABEL_18:
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_105_6(v44))
    {
      v45 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_81_4(v45);
      OUTLINED_FUNCTION_110_4();
      _os_log_impl(v46, v47, v48, v49, v50, 2u);
      OUTLINED_FUNCTION_2_8();
    }

    return MEMORY[0x277D84F90];
  }

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_105_6(v52))
  {
    v53 = OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_81_4(v53);
    OUTLINED_FUNCTION_110_4();
    _os_log_impl(v54, v55, v56, v57, v58, 2u);
    OUTLINED_FUNCTION_2_8();
  }

  return v34;
}

uint64_t GlobalSearchClient.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  outlined destroy of IntentApplication?(v0 + 88, &_s10OmniSearch0b10ToolGlobalB3XPC_pSgMd, &_s10OmniSearch0b10ToolGlobalB3XPC_pSgMR);
  return v0;
}

uint64_t GlobalSearchClient.__deallocating_deinit()
{
  GlobalSearchClient.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for SearchService.search(query:sources:allowedTypes:searchOptions:) in conformance GlobalSearchClient(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(**v5 + 168) + **(**v5 + 168));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return v14(a1, a2, a3, a4, a5);
}

Swift::Int GlobalSearchClient.QueryType.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8A0680](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GlobalSearchClient.QueryType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  GlobalSearchClient.QueryType.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t specialized GlobalSearchClient.init(client:session:featureFlagService:xpcClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = a6;
  v17 = a7;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v15);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a6);
  *(a5 + 16) = 10;
  *(a5 + 24) = 2;
  *(a5 + 104) = 0u;
  *(a5 + 120) = 0;
  *(a5 + 88) = 0u;
  outlined init with take of ResponseOverrideMatcherProtocol(&v15, a5 + 32);
  *(a5 + 72) = a2;
  *(a5 + 80) = a3;
  swift_beginAccess();
  outlined assign with take of SearchToolGlobalSearchXPC?(a4, a5 + 88);
  swift_endAccess();
  return a5;
}

uint64_t partial apply for closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:)()
{
  OUTLINED_FUNCTION_72();
  v2 = v1;
  v4 = v3;
  v5 = v0[2];
  v6 = v0[3];
  v8 = v0[4];
  v7 = v0[5];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_23(v9);
  *v10 = v11;
  v10[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:)(v4, v2, v5, v6, v8, v7);
}

void outlined consume of Result<[SearchResult], Error>?(void *a1, char a2)
{
  if (a2 != -1)
  {
    outlined consume of Result<[SearchResult], Error>(a1, a2 & 1);
  }
}

unint64_t lazy protocol witness table accessor for type GlobalSearchClient.GlobalSearchError and conformance GlobalSearchClient.GlobalSearchError()
{
  result = lazy protocol witness table cache variable for type GlobalSearchClient.GlobalSearchError and conformance GlobalSearchClient.GlobalSearchError;
  if (!lazy protocol witness table cache variable for type GlobalSearchClient.GlobalSearchError and conformance GlobalSearchClient.GlobalSearchError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlobalSearchClient.GlobalSearchError and conformance GlobalSearchClient.GlobalSearchError);
  }

  return result;
}

id outlined copy of Result<[SearchResult], Error>?(id result, char a2)
{
  if (a2 != -1)
  {
    return outlined copy of Result<[SearchResult], Error>(result, a2 & 1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GlobalSearchClient.QueryType and conformance GlobalSearchClient.QueryType()
{
  result = lazy protocol witness table cache variable for type GlobalSearchClient.QueryType and conformance GlobalSearchClient.QueryType;
  if (!lazy protocol witness table cache variable for type GlobalSearchClient.QueryType and conformance GlobalSearchClient.QueryType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlobalSearchClient.QueryType and conformance GlobalSearchClient.QueryType);
  }

  return result;
}

uint64_t dispatch thunk of SageSearchClient.search(query:clientEntities:location:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_28_0();
  v17 = (v12 + *v12);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_63(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_84(v14);

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of SearchToolGlobalSearchXPC.searchToolGlobalSearch(request:)()
{
  OUTLINED_FUNCTION_72();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_28_0();
  v11 = (v6 + *v6);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_63(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_84(v8);

  return v11(v5, v3, v1);
}

uint64_t dispatch thunk of GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:)()
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_7_36();
  v13 = v0 + 168;
  v14 = *(v0 + 168) + **(v0 + 168);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_23(v1);
  *v2 = v3;
  v2[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);
  OUTLINED_FUNCTION_63_17();
  OUTLINED_FUNCTION_61_18();

  return v9(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
}

uint64_t dispatch thunk of GlobalSearchClient.search(content:entities:sources:location:)()
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_7_36();
  v13 = v0 + 176;
  v14 = *(v0 + 176) + **(v0 + 176);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_63(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_32_27(v2);
  OUTLINED_FUNCTION_63_17();
  OUTLINED_FUNCTION_61_18();

  return v9(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
}

uint64_t dispatch thunk of GlobalSearchClient.rawResponseSearch(content:location:entities:useXPC:)()
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_7_36();
  v13 = v0 + 184;
  v14 = *(v0 + 184) + **(v0 + 184);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_63(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_32_27(v2);
  OUTLINED_FUNCTION_61_18();

  return v9(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
}

{
  OUTLINED_FUNCTION_78();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_52();
  v5 = *v0;
  OUTLINED_FUNCTION_11();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v4, v2);
}

_BYTE *storeEnumTagSinglePayload for GlobalSearchClient.QueryType(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in GlobalSearchClient.searchInternal(content:clientEntities:location:useXPC:)()
{
  OUTLINED_FUNCTION_75();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_23(v9);
  *v10 = v11;
  v10[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return closure #1 in GlobalSearchClient.searchInternal(content:clientEntities:location:useXPC:)(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t _s10OmniSearch0B6ResultVWOhTm_7(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_17();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t _s10OmniSearch0B6ResultVWOcTm_9(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_17();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t _s10OmniSearch0B6ResultVWObTm_5(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_17();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:)()
{
  OUTLINED_FUNCTION_75();
  v1 = type metadata accessor for UserQuery(0);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_36_20();
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_33_24(v2);

  return closure #1 in closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:)(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t objectdestroy_40Tm()
{
  v1 = type metadata accessor for UserQuery(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3 + *(v1 + 28);
  Entity = type metadata accessor for StructuredQueryEntity(0);
  if (!__swift_getEnumTagSinglePayload(v5, 1, Entity))
  {
    type metadata accessor for DisplayRepresentation();
    OUTLINED_FUNCTION_17();
    (*(v7 + 8))(v5);
  }

  v8 = *(v1 + 36);
  type metadata accessor for UtteranceNormalizer();
  OUTLINED_FUNCTION_17();
  (*(v9 + 8))(v0 + v3 + v8);

  return MEMORY[0x2821FE8E8](v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t partial apply for closure #2 in closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:)()
{
  OUTLINED_FUNCTION_75();
  v1 = type metadata accessor for UserQuery(0);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_36_20();
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_33_24(v2);

  return closure #2 in closure #1 in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:)(v3, v4, v5, v6, v7, v8, v9);
}

void outlined consume of (GlobalSearchClient.QueryType, Result<[SearchResult], Error>)?(char a1, void *a2, char a3)
{
  if (a1 != 2)
  {
    outlined consume of Result<[SearchResult], Error>(a2, a3 & 1);
  }
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR10OmniSearch06GlobalD6ClientC9QueryTypeO_s6ResultOySayAC0dI0VGsAA_pGt_TG5(uint64_t a1, int *a2)
{
  *(v2 + 40) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR10OmniSearch06GlobalD6ClientC9QueryTypeO_s6ResultOySayAC0dI0VGsAA_pGt_TG5TQ0_;

  return v5(v2 + 16);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR10OmniSearch06GlobalD6ClientC9QueryTypeO_s6ResultOySayAC0dI0VGsAA_pGt_TG5TQ0_()
{
  OUTLINED_FUNCTION_78();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v4 = *(v1 + 40);
  *v3 = *v0;

  v5 = *(v1 + 24);
  v6 = *(v2 + 32);
  *v4 = *(v2 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  OUTLINED_FUNCTION_51_16();

  return v7();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR10OmniSearch06GlobalD6ClientC9QueryTypeO_s6ResultOySayAC0dI0VGsAA_pGt_TG5TA()
{
  OUTLINED_FUNCTION_78();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_23(v4);
  *v5 = v6;
  v5[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR10OmniSearch06GlobalD6ClientC9QueryTypeO_s6ResultOySayAC0dI0VGsAA_pGt_TG5(v2, v3);
}

uint64_t OUTLINED_FUNCTION_2_45(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_29@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 8) = a1;
  *(v2 + 16) = v1;
  return (*(v3 + 8))();
}

uint64_t OUTLINED_FUNCTION_24_23(unint64_t *a1)
{
  v4 = MEMORY[0x277D856C0];

  return lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(a1, v1, v2, v4);
}

double OUTLINED_FUNCTION_55_15@<D0>(uint64_t a1@<X8>)
{
  *(v1 + 40) = a1;

  swift_beginAccess();
  return result;
}

uint64_t OUTLINED_FUNCTION_57_16(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_70_11()
{
  v2 = *(v0 + 152);

  return $defer #1 () in GlobalSearchClient.search(query:sources:allowedTypes:searchOptions:)(v2);
}

void OUTLINED_FUNCTION_72_13()
{

  outlined consume of Result<[SearchResult], Error>?(v1, v0);
}

id OUTLINED_FUNCTION_75_14(float a1)
{
  *v2 = a1;

  return v1;
}

void OUTLINED_FUNCTION_77_13()
{
}

void static GlobalSearchResponseProcessor.makeGeoLocations(experience:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v53 = type metadata accessor for Mapspb_LocalSearchBusiness();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_109();
  v56 = v5 - v6;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v7);
  v9 = v48 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_GeoObjectComponentVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_GeoObjectComponentVSgMR);
  OUTLINED_FUNCTION_114(v10);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v11);
  v13 = v48 - v12;
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoObjectComponent();
  OUTLINED_FUNCTION_14();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_36();
  v20 = v19 - v18;
  v21 = static GlobalSearchResponseProcessor.parseExperience(experience:)(v1);
  v23 = MEMORY[0x277D84F90];
  if (v21)
  {
    v24 = v22;

    if (!*(v24 + 16))
    {
LABEL_19:

      goto LABEL_20;
    }

    v52 = v20;
    v60.isa = v23;
    specialized Sequence.forEach(_:)(v24, &v60);

    isa = v60.isa;
    specialized Collection.first.getter(v60.isa, v13);
    OUTLINED_FUNCTION_166(v13, 1, v14);
    if (!v26)
    {
      v32 = v52;
      (*(v16 + 32))(v52, v13, v14);
      v33 = Apple_Parsec_Siri_V2alpha_GeoObjectComponent.geoObject.getter();
      v34 = *(v33 + 16);
      if (v34)
      {
        v49 = v16;
        v50 = v14;
        v51 = isa;
        v59 = v23;
        v35 = v33;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34, 0);
        v36 = v59;
        v39 = *(v3 + 16);
        v37 = v3 + 16;
        v38 = v39;
        OUTLINED_FUNCTION_79();
        v48[1] = v35;
        v41 = v35 + v40;
        v54 = *(v37 + 56);
        v55 = v37;
        v42 = (v37 - 8);
        v43 = v34 - 1;
        v44 = v53;
        while (1)
        {
          v38(v9, v41, v44);
          v45 = v56;
          v38(v56, v9, v44);
          GeoLocation.init(geoObject:)(v45, v57);
          (*v42)(v9, v44);
          memcpy(v58, v57, sizeof(v58));
          v59 = v36;
          v47 = v36[2];
          v46 = v36[3];
          if (v47 >= v46 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1);
            v44 = v53;
            v36 = v59;
          }

          v36[2] = v47 + 1;
          memcpy(&v36[20 * v47 + 4], v58, 0x9DuLL);
          if (!v43)
          {
            break;
          }

          --v43;
          v41 += v54;
        }

        (*(v49 + 8))(v52, v50);
      }

      else
      {

        (*(v16 + 8))(v32, v14);
      }

      goto LABEL_19;
    }

    outlined destroy of IntentApplication?(v13, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_GeoObjectComponentVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_GeoObjectComponentVSgMR);
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v27 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v27, static Logging.search);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_77_5(v29))
    {
      *OUTLINED_FUNCTION_172() = 0;
      OUTLINED_FUNCTION_100_3(&dword_25D85C000, v30, v31, "Geo response DomainObjectComponent missing GeoObject");
      OUTLINED_FUNCTION_42_0();
    }
  }

LABEL_20:
  OUTLINED_FUNCTION_148();
}

void specialized Sequence.forEach(_:)(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v9 = 0;
  v10 = *(result + 16);
  do
  {
    if (v10 == v9)
    {
      break;
    }

    v11 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent() - 8);
    closure #1 in static GlobalSearchResponseProcessor.collatePegasusComponents(components:)(v12, result + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9++, a2, a3, a4);
  }

  while (!v4);
}

void specialized Sequence.forEach(_:)(uint64_t result, NSObject *a2)
{
  v5 = 0;
  v6 = *(result + 16);
  do
  {
    if (v6 == v5)
    {
      break;
    }

    v7 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent() - 8);
    closure #1 in static GlobalSearchResponseProcessor.makeGeoLocations(experience:)(v8, result + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5++, a2);
  }

  while (!v2);
}

void static GlobalSearchResponseProcessor.makeCard(layoutSnippet:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v56 = v2;
  v63 = type metadata accessor for Searchfoundation_Card();
  OUTLINED_FUNCTION_14();
  v59 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_109();
  v58 = v5 - v6;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_2();
  v57 = v8;
  OUTLINED_FUNCTION_78_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet();
  OUTLINED_FUNCTION_14();
  v53 = v10;
  v54 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_36();
  v52 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI21Searchfoundation_CardVSgMd, &_s10PegasusAPI21Searchfoundation_CardVSgMR);
  v14 = OUTLINED_FUNCTION_114(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_109();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_14_2();
  v51 = v19;
  OUTLINED_FUNCTION_78_0();
  v20 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails();
  OUTLINED_FUNCTION_14();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_36();
  v26 = v25 - v24;
  v55 = v1;
  v27 = MEMORY[0x25F89A140]();
  v28 = 0;
  v29 = *(v27 + 16);
  v62 = (v59 + 32);
  v61 = MEMORY[0x277D84F90];
  while (v29 != v28)
  {
    if (v28 >= *(v27 + 16))
    {
      __break(1u);

      v47 = OUTLINED_FUNCTION_34_25();
      v48(v47);

      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_79();
    (*(v22 + 16))(v26, v27 + v30 + *(v22 + 72) * v28, v20);
    closure #1 in static GlobalSearchResponseProcessor.makeCard(layoutSnippet:)(v26, v17);
    v31 = OUTLINED_FUNCTION_34_25();
    v32(v31);
    OUTLINED_FUNCTION_166(v17, 1, v63);
    if (v33)
    {
      outlined destroy of IntentApplication?(v17, &_s10PegasusAPI21Searchfoundation_CardVSgMd, &_s10PegasusAPI21Searchfoundation_CardVSgMR);
      ++v28;
    }

    else
    {
      v60 = *v62;
      v60(v57, v17, v63);
      v60(v58, v57, v63);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v61 + 16) + 1, 1, v61);
        v61 = v42;
      }

      v36 = *(v61 + 16);
      v35 = *(v61 + 24);
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        v49 = *(v61 + 16);
        v50 = v36 + 1;
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v35 > 1, v36 + 1, 1, v61);
        v37 = v50;
        v61 = v43;
      }

      ++v28;
      *(v61 + 16) = v37;
      OUTLINED_FUNCTION_42_5();
      (v60)(v39 + v38 + *(v40 + 72) * v41);
    }
  }

  Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.compactSnippet.getter();
  static GlobalSearchResponseProcessor.makeCard(casinoSnippet:)(v52, v51);
  (*(v53 + 8))(v52, v54);
  OUTLINED_FUNCTION_166(v51, 1, v63);
  if (v33)
  {
    v44 = outlined destroy of IntentApplication?(v51, &_s10PegasusAPI21Searchfoundation_CardVSgMd, &_s10PegasusAPI21Searchfoundation_CardVSgMR);
    MEMORY[0x28223BE20](v44);
    *(&v49 - 2) = v61;
    OUTLINED_FUNCTION_12_33();
    lazy protocol witness table accessor for type Searchfoundation_Card and conformance Searchfoundation_Card(v45, v46, MEMORY[0x277D38E38]);
    static Message.with(_:)();
  }

  else
  {

    (*v62)(v56, v51, v63);
  }

  OUTLINED_FUNCTION_148();
}

id static GlobalSearchResponseProcessor.makeSFCard(card:)()
{
  OUTLINED_FUNCTION_47_1();
  type metadata accessor for Searchfoundation_Card();
  OUTLINED_FUNCTION_12_33();
  lazy protocol witness table accessor for type Searchfoundation_Card and conformance Searchfoundation_Card(v0, v1, MEMORY[0x277D38E38]);
  Message.serializedData(partial:)();
  v2 = objc_allocWithZone(MEMORY[0x277D4C728]);
  v3 = OUTLINED_FUNCTION_1_28();
  outlined copy of Data._Representation(v3, v4);
  v5 = OUTLINED_FUNCTION_1_28();
  v7 = @nonobjc _SFPBCard.init(data:)(v5, v6);
  if (v7)
  {
    v8 = v7;
    v9 = [objc_allocWithZone(MEMORY[0x277D4C230]) initWithProtobuf_];

    v10 = OUTLINED_FUNCTION_1_28();
    outlined consume of Data._Representation(v10, v11);
  }

  else
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v12 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v12, static Logging.search);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_77_5(v14))
    {
      v15 = OUTLINED_FUNCTION_172();
      *v15 = 0;
      _os_log_impl(&dword_25D85C000, v13, OS_LOG_TYPE_DEFAULT, "Failed to initialize _SFPBCard from serialized data", v15, 2u);
      OUTLINED_FUNCTION_42_0();
    }

    v16 = OUTLINED_FUNCTION_1_28();
    outlined consume of Data._Representation(v16, v17);

    return 0;
  }

  return v9;
}

CSSearchableItemAttributeSet __swiftcall CSSearchableItemAttributeSet.__allocating_init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void static GlobalSearchResponseProcessor.makeGenericItem(experience:domain:lowConfidenceKnowledge:)()
{
  OUTLINED_FUNCTION_155();
  LODWORD(v128) = v1;
  v129 = v2;
  v130 = v3;
  OUTLINED_FUNCTION_47_1();
  v126 = type metadata accessor for SpotlightRankingItem();
  OUTLINED_FUNCTION_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36();
  v111 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v10 = OUTLINED_FUNCTION_114(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_109();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14_2();
  v123 = v15;
  v16 = OUTLINED_FUNCTION_78_0();
  v122 = type metadata accessor for SearchResultItem(v16);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_36();
  v20 = v19 - v18;
  v21 = type metadata accessor for GlobalItem(0);
  v127 = *(v21 - 8);
  MEMORY[0x28223BE20](v21 - 8);
  OUTLINED_FUNCTION_36();
  v24 = v23 - v22;
  v25 = type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_14();
  v121 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_109();
  v120 = v28 - v29;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_14_2();
  v119 = v31;
  OUTLINED_FUNCTION_78_0();
  v32 = type metadata accessor for Searchfoundation_Card();
  OUTLINED_FUNCTION_14();
  v107 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_36();
  v109 = v36 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVSgMR);
  OUTLINED_FUNCTION_114(v37);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v38);
  v40 = v104 - v39;
  v41 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent();
  OUTLINED_FUNCTION_14();
  v124 = v42;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_36();
  v108 = v45 - v44;
  v125 = v0;
  v46 = static GlobalSearchResponseProcessor.parseExperience(experience:)(v0);
  if (v46)
  {
    v47 = v46;

    specialized Collection.first.getter(v47, v40);

    v48 = OUTLINED_FUNCTION_103_6();
    OUTLINED_FUNCTION_166(v48, v49, v41);
    if (!v50)
    {
      v114 = v5;
      v56 = v124;
      v57 = v108;
      (*(v124 + 32))();
      v58 = v109;
      static GlobalSearchResponseProcessor.makeCard(layoutSnippet:)();
      v59 = static GlobalSearchResponseProcessor.makeSFCard(card:)();
      v60 = static GlobalSearchResponseProcessor.makeGlobalItems(experience:domain:lowConfidenceKnowledge:)(v125, v129, v130, v128 & 1);
      v61 = *(v60 + 16);
      if (v61)
      {
        v105 = v41;
        v106 = v32;
        v116 = v25;
        v117 = v24;
        v132 = MEMORY[0x277D84F90];
        v62 = v60;
        v130 = v61;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v61, 0);
        OUTLINED_FUNCTION_42_5();
        v104[1] = v62;
        v64 = v62 + v63;
        v110 = (v114 + 32);
        v65 = v132;
        v114 = *(v66 + 72);
        v113 = xmmword_25DBC8190;
        v67 = v59;
        v118 = v13;
        v115 = v59;
        do
        {
          v128 = v64;
          v129 = v65;
          v68 = v117;
          outlined init with copy of GlobalItem(v64, v117);
          v69 = *v68;
          v70 = v68[1];
          v71 = v68[4];
          v72 = v68[5];
          v73 = v20;
          v74 = objc_allocWithZone(MEMORY[0x277CC34B8]);

          v75 = [v74 init];
          v76 = objc_allocWithZone(MEMORY[0x277CC34B0]);
          v77 = v70;
          v78 = v126;
          v127 = @nonobjc CSSearchableItem.init(uniqueIdentifier:domainIdentifier:attributeSet:)(v69, v77, v71, v72, v75);
          v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMd, &_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMR) + 48);
          outlined init with copy of GlobalItem(v68, v73);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v80 = swift_allocObject();
          *(v80 + 16) = v113;
          type metadata accessor for DialogExperience(0);
          swift_allocObject();
          v112 = v67;
          *(v80 + 32) = DialogExperience.init(_:card:)(v125, v67);
          *(v73 + v79) = v80;
          swift_storeEnumTagMultiPayload();
          v81 = v123;
          OUTLINED_FUNCTION_92();
          __swift_storeEnumTagSinglePayload(v82, v83, v84, v78);
          v85 = v116;
          v86 = v120;
          *(v120 + v116[7]) = MEMORY[0x277D84F90];
          OUTLINED_FUNCTION_10_32(v85[10]);
          outlined init with copy of GlobalItem(v73, v86);
          type metadata accessor for CSSearchableItem();
          OUTLINED_FUNCTION_11_36();
          lazy protocol witness table accessor for type Searchfoundation_Card and conformance Searchfoundation_Card(&lazy protocol witness table cache variable for type CSSearchableItem and conformance NSObject, v87, MEMORY[0x277D85380]);
          v88 = v127;
          v89 = v118;
          CodableNSSecureCoding.init(wrappedValue:)();
          v90 = OUTLINED_FUNCTION_34_25();
          outlined init with copy of SpotlightRankingItem?(v90, v91, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
          OUTLINED_FUNCTION_166(v89, 1, v78);
          if (v50)
          {
            outlined destroy of IntentApplication?(v89, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
            OUTLINED_FUNCTION_25_24();
            OUTLINED_FUNCTION_25_24();
            OUTLINED_FUNCTION_25_24();
            OUTLINED_FUNCTION_25_24();
            OUTLINED_FUNCTION_25_24();
            v131 = 1;
            OUTLINED_FUNCTION_19_18();

            outlined destroy of IntentApplication?(v81, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
            OUTLINED_FUNCTION_2_46();
            _s10OmniSearch0B10ResultItemOWOhTm_7(v73, v92);
            OUTLINED_FUNCTION_15_30();
          }

          else
          {

            outlined destroy of IntentApplication?(v81, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
            OUTLINED_FUNCTION_2_46();
            _s10OmniSearch0B10ResultItemOWOhTm_7(v73, v93);
            OUTLINED_FUNCTION_15_30();
            v94 = *v110;
            v95 = v111;
            v96 = OUTLINED_FUNCTION_34_25();
            v97 = v126;
            v94(v96);
            (v94)(v86 + v85[5], v95, v97);
          }

          v20 = v73;
          *(v86 + v85[8]) = 2;
          *(v86 + v85[9]) = 1;
          OUTLINED_FUNCTION_5_38();
          v98 = v119;
          _s10OmniSearch0B6ResultVWObTm_6(v86, v119);
          v65 = v129;
          v132 = v129;
          v100 = *(v129 + 16);
          v99 = *(v129 + 24);
          v101 = v124;
          v67 = v115;
          if (v100 >= v99 >> 1)
          {
            v103 = OUTLINED_FUNCTION_16_30(v99);
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v103, v100 + 1, 1);
            v65 = v132;
          }

          *(v65 + 16) = v100 + 1;
          OUTLINED_FUNCTION_42_5();
          OUTLINED_FUNCTION_5_38();
          _s10OmniSearch0B6ResultVWObTm_6(v98, v102);
          v64 = v128 + v114;
          --v130;
        }

        while (v130);

        (*(v107 + 8))(v109, v106);
        (*(v101 + 8))(v108, v105);
      }

      else
      {

        (*(v107 + 8))(v58, v32);
        (*(v56 + 8))(v57, v41);
      }

      goto LABEL_10;
    }

    outlined destroy of IntentApplication?(v40, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVSgMR);
  }

  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
  }

  v51 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v51, static Logging.search);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_105_6(v53))
  {
    *OUTLINED_FUNCTION_172() = 0;
    OUTLINED_FUNCTION_84_5(&dword_25D85C000, v54, v55, "No layout snippet in GenericExperience");
    OUTLINED_FUNCTION_42_0();
  }

LABEL_10:
  OUTLINED_FUNCTION_148();
}

void static GlobalSearchResponseProcessor.makeAudioItem(experience:domain:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v78 = v2;
  v85 = v3;
  v86 = type metadata accessor for SpotlightRankingItem();
  OUTLINED_FUNCTION_14();
  v75 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36();
  v74 = v7 - v6;
  v8 = OUTLINED_FUNCTION_78_0();
  v9 = type metadata accessor for SearchResult(v8);
  v82 = *(v9 - 8);
  v83 = v9;
  v84 = v82;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_36();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v14 = OUTLINED_FUNCTION_114(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_109();
  v80 = v15 - v16;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_14_2();
  v81 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AppEntityVSgMd, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AppEntityVSgMR);
  OUTLINED_FUNCTION_114(v19);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v20);
  v76 = &v73 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes12GlobalDialogVSgMd, &_s15OmniSearchTypes12GlobalDialogVSgMR);
  OUTLINED_FUNCTION_114(v22);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v23);
  v25 = &v73 - v24;
  v79 = type metadata accessor for SearchResultItem(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_36();
  v29 = (v28 - v27);
  v30 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_14();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_36();
  v36 = v35 - v34;
  UUID.init()();
  v37 = UUID.uuidString.getter();
  v39 = v38;
  (*(v32 + 8))(v36, v30);
  v40 = objc_allocWithZone(MEMORY[0x277CC34B8]);

  v41 = [v40 init];
  v42 = objc_allocWithZone(MEMORY[0x277CC34B0]);

  v43 = v78;
  v77 = @nonobjc CSSearchableItem.init(uniqueIdentifier:domainIdentifier:attributeSet:)(v37, v39, v78, v1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch0E6ResultVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E6ResultVGMR);
  v82 = (*(v84 + 80) + 32) & ~*(v84 + 80);
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_25DBC8180;
  v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMd, &_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMR) + 48);
  type metadata accessor for GlobalDialog();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntity();
  v49 = v76;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);

  GlobalItem.init(id:domain:dialog:text:parsecEntity:lowConfidenceKnowledge:)(v37, v39, v43, v1, v25, 0, 0, v49, v29, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_25DBC8190;
  type metadata accessor for DialogExperience(0);
  swift_allocObject();
  *(v54 + 32) = DialogExperience.init(_:card:)(v85, 0);
  *(v29 + v44) = v54;
  v55 = v83;
  swift_storeEnumTagMultiPayload();
  v56 = v81;
  OUTLINED_FUNCTION_92();
  v57 = v86;
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v86);
  *(v12 + v55[7]) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_10_32(v55[10]);
  outlined init with copy of GlobalItem(v29, v12);
  type metadata accessor for CSSearchableItem();
  OUTLINED_FUNCTION_11_36();
  lazy protocol witness table accessor for type Searchfoundation_Card and conformance Searchfoundation_Card(v61, v62, MEMORY[0x277D85380]);
  v63 = v77;
  v64 = v57;
  CodableNSSecureCoding.init(wrappedValue:)();
  v65 = v80;
  outlined init with copy of SpotlightRankingItem?(v56, v80, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v66 = OUTLINED_FUNCTION_103_6();
  OUTLINED_FUNCTION_166(v66, v67, v57);
  if (v68)
  {
    outlined destroy of IntentApplication?(v65, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    v94 = 1;
    v93 = 1;
    v92 = 1;
    v91 = 1;
    v90 = 1;
    v89 = 1;
    v88 = 1;
    v87 = 1;
    OUTLINED_FUNCTION_19_18();
    outlined destroy of IntentApplication?(v56, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    OUTLINED_FUNCTION_2_46();
    _s10OmniSearch0B10ResultItemOWOhTm_7(v29, v69);
  }

  else
  {
    outlined destroy of IntentApplication?(v56, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    OUTLINED_FUNCTION_2_46();
    _s10OmniSearch0B10ResultItemOWOhTm_7(v29, v70);
    v71 = v74;
    v72 = *(v75 + 32);
    v72(v74, v65, v64);
    v72(v12 + v55[5], v71, v64);
  }

  *(v12 + v55[8]) = 2;
  *(v12 + v55[9]) = 1;
  OUTLINED_FUNCTION_5_38();
  _s10OmniSearch0B6ResultVWObTm_6(v12, v84 + v82);

  OUTLINED_FUNCTION_148();
}

uint64_t static GlobalSearchResponseProcessor.processRenderedDialog(experience:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentVSgMd, &_s10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentVSgMR);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - v4;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent();
  OUTLINED_FUNCTION_14();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_109();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  if (static GlobalSearchResponseProcessor.parseExperience(experience:)(a1))
  {
    v17 = v16;

    specialized Collection.first.getter(v17, v5);

    OUTLINED_FUNCTION_166(v5, 1, v6);
    if (!v18)
    {
      (*(v8 + 32))(v15, v5, v6);
      (*(v8 + 16))(v12, v15, v6);
      GlobalDialog.init(renderedDialog:)();
      return (*(v8 + 8))(v15, v6);
    }
  }

  else
  {
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v6);
  }

  outlined destroy of IntentApplication?(v5, &_s10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentVSgMd, &_s10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentVSgMR);
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
  }

  v23 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v23, static Logging.search);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_77_5(v25))
  {
    *OUTLINED_FUNCTION_172() = 0;
    OUTLINED_FUNCTION_100_3(&dword_25D85C000, v26, v27, "No rendered dialog in Pegasus response, returning empty dialog");
    OUTLINED_FUNCTION_42_0();
  }

  return GlobalDialog.init(print:speak:)();
}

uint64_t static GlobalSearchResponseProcessor.parseExperience(experience:)(uint64_t a1)
{
  dispatch thunk of Experience.queryConfidence.getter();
  if (v1 == 1.0)
  {
    v2 = GenericExperience.components.getter();
    v3 = static GlobalSearchResponseProcessor.collatePegasusComponents(components:)(v2);
  }

  else
  {
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logging.search);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_25D85C000, v5, v6, "Received low confidence Pegasus response", v7, 2u);
      MEMORY[0x25F8A1050](v7, -1, -1);
    }

    return 0;
  }

  return v3;
}

uint64_t static GlobalSearchResponseProcessor.makeGlobalItems(experience:domain:lowConfidenceKnowledge:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v50 = a4;
  v51 = a2;
  v52 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AppEntityVSgMd, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AppEntityVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v49 = &v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes12GlobalDialogVSgMd, &_s15OmniSearchTypes12GlobalDialogVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v44 - v8;
  v10 = type metadata accessor for UUID();
  v47 = *(v10 - 8);
  v48 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI40Apple_Parsec_Siri_V2alpha_SageExperienceVSgMd, &_s10PegasusAPI40Apple_Parsec_Siri_V2alpha_SageExperienceVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v44 - v14;
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for GlobalDialog();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  static GlobalSearchResponseProcessor.processRenderedDialog(experience:)(a1);
  dispatch thunk of GenericExperience.sageExperience.getter();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    outlined destroy of IntentApplication?(v15, &_s10PegasusAPI40Apple_Parsec_Siri_V2alpha_SageExperienceVSgMd, &_s10PegasusAPI40Apple_Parsec_Siri_V2alpha_SageExperienceVSgMR);
    v24 = GlobalDialog.print.getter();
    v26 = v25;

    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      v28 = GlobalDialog.print.getter();
    }

    else
    {
      v28 = GlobalDialog.speak.getter();
    }

    v45 = v29;
    v46 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch10GlobalItemVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch10GlobalItemVGMR);
    v34 = *(type metadata accessor for GlobalItem(0) - 8);
    v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_25DBC8180;
    UUID.init()();
    v36 = UUID.uuidString.getter();
    v38 = v37;
    (*(v47 + 8))(v12, v48);
    (*(v21 + 16))(v9, v23, v20);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v20);
    v39 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntity();
    v40 = v49;
    __swift_storeEnumTagSinglePayload(v49, 1, 1, v39);
    v41 = v52;

    GlobalItem.init(id:domain:dialog:text:parsecEntity:lowConfidenceKnowledge:)(v36, v38, v51, v41, v9, v46, v45, v40, (v33 + v35), v50 & 1);
  }

  else
  {
    v30 = (*(v17 + 32))(v19, v15, v16);
    v31 = MEMORY[0x25F899F00](v30);
    MEMORY[0x28223BE20](v31);
    v32 = v52;
    *(&v44 - 4) = v51;
    *(&v44 - 3) = v32;
    v43 = v23;
    v33 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in static GlobalSearchResponseProcessor.makeGlobalItems(experience:domain:lowConfidenceKnowledge:), (&v44 - 6), v31);

    (*(v17 + 8))(v19, v16);
  }

  (*(v21 + 8))(v23, v20);
  return v33;
}

void static GlobalSearchResponseProcessor.makeWebImages(experience:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v170 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_14();
  v161 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  v169 = v5 - v4;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_10Foundation3URLVSg3urltMd, ",");
  OUTLINED_FUNCTION_14();
  v162 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_109();
  v173 = v8 - v9;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v10);
  v172 = &v157[-v11];
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14_2();
  v171 = v13;
  v14 = OUTLINED_FUNCTION_78_0();
  type metadata accessor for WebImage(v14);
  OUTLINED_FUNCTION_14();
  v175 = v16;
  v176 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_109();
  v19 = (v17 - v18);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_14_2();
  v163 = v21;
  OUTLINED_FUNCTION_78_0();
  v22 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent();
  OUTLINED_FUNCTION_14();
  v168 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_109();
  v27 = (v25 - v26);
  MEMORY[0x28223BE20](v28);
  v30 = &v157[-v29];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI21Searchfoundation_CardVSgMd, &_s10PegasusAPI21Searchfoundation_CardVSgMR);
  OUTLINED_FUNCTION_114(v31);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v32);
  v164 = &v157[-v33];
  OUTLINED_FUNCTION_78_0();
  type metadata accessor for Searchfoundation_Card();
  OUTLINED_FUNCTION_14();
  v177 = v34;
  v178 = v35;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_109();
  v38 = v36 - v37;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_14_2();
  v165 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVSgMR);
  OUTLINED_FUNCTION_114(v41);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v42);
  v44 = &v157[-v43];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsVSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsVSgMR);
  OUTLINED_FUNCTION_114(v45);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v46);
  v48 = &v157[-v47];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
  v50 = OUTLINED_FUNCTION_114(v49);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_109();
  v167 = v51 - v52;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v53);
  v55 = &v157[-v54];
  v56 = static GlobalSearchResponseProcessor.parseExperience(experience:)(v1);
  if (!v56)
  {
    goto LABEL_17;
  }

  v166 = v55;

  v57 = *(v56 + 16);
  if (!v57)
  {

    goto LABEL_17;
  }

  specialized Collection.first.getter(v56, v44);
  v58 = OUTLINED_FUNCTION_166(v44, 1, v22);
  if (v66)
  {

    v59 = &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVSgMd;
    v60 = &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVSgMR;
    v61 = v44;
LABEL_10:
    outlined destroy of IntentApplication?(v61, v59, v60);
    type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet();
    v77 = v166;
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v67, v68, v69, v70);
LABEL_11:
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v71 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v71, static Logging.search);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_105_6(v73))
    {
      *OUTLINED_FUNCTION_172() = 0;
      OUTLINED_FUNCTION_84_5(&dword_25D85C000, v74, v75, "Unsupported web_image snippet type");
      OUTLINED_FUNCTION_42_0();
    }

    v76 = v77;
    goto LABEL_16;
  }

  v62 = MEMORY[0x25F89A140](v58);
  v63 = v44;
  v64 = v168 + 8;
  v159 = *(v168 + 8);
  v159(v63, v22);
  specialized Collection.first.getter(v62, v48);

  v65 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails();
  OUTLINED_FUNCTION_166(v48, 1, v65);
  if (v66)
  {

    v59 = &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsVSgMd;
    v60 = &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsVSgMR;
    v61 = v48;
    goto LABEL_10;
  }

  v158 = v19;
  v160 = v64;
  v77 = v166;
  Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.snippet.getter();
  (*(*(v65 - 8) + 8))(v48, v65);
  v78 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet();
  v79 = OUTLINED_FUNCTION_103_6();
  OUTLINED_FUNCTION_166(v79, v80, v78);
  if (v81)
  {

    goto LABEL_11;
  }

  v82 = v167;
  outlined init with copy of SpotlightRankingItem?(v77, v167, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
  v83 = *(v78 - 8);
  v84 = (*(v83 + 88))(v82, v78);
  if (v84 == *MEMORY[0x277D39A98])
  {
    OUTLINED_FUNCTION_37_16();
    v85 = *(v56 + 16);
    if (v85)
    {
      v179 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v85, 0);
      OUTLINED_FUNCTION_79();
      v88 = v56 + v87;
      v169 = *(v86 + 56);
      v170 = v89;
      v90 = v179;
      v168 = v178 + 32;
      do
      {
        v91 = v86;
        v170(v30, v88, v22);
        static GlobalSearchResponseProcessor.makeCard(layoutSnippet:)();
        v159(v30, v22);
        v179 = v90;
        v93 = *(v90 + 16);
        v92 = *(v90 + 24);
        if (v93 >= v92 >> 1)
        {
          v96 = OUTLINED_FUNCTION_16_30(v92);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v96, v93 + 1, 1);
          v90 = v179;
        }

        *(v90 + 16) = v93 + 1;
        OUTLINED_FUNCTION_42_5();
        (*(v95 + 32))(v90 + v94 + *(v95 + 72) * v93, v38);
        v88 += v169;
        --v85;
        v86 = v91;
      }

      while (v85);
    }

    else
    {

      v90 = MEMORY[0x277D84F90];
    }

    v118 = v164;
    specialized Collection.first.getter(v90, v164);

    v119 = OUTLINED_FUNCTION_103_6();
    v120 = v177;
    OUTLINED_FUNCTION_166(v119, v121, v177);
    v122 = v165;
    v123 = v166;
    if (!v66)
    {
      v131 = v178;
      (*(v178 + 32))(v165, v118, v120);
      v132 = static GlobalSearchResponseProcessor.parseCardForURL(card:)();
      v133 = v132;
      v134 = *(v132 + 16);
      if (v134)
      {
        v179 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v134, 0);
        v135 = v179;
        OUTLINED_FUNCTION_42_5();
        v164 = v133;
        v137 = &v133[v136];
        v168 = *(v138 + 72);
        v139 = v163;
        v140 = v172;
        v141 = v174;
        do
        {
          v170 = v134;
          v142 = v171;
          outlined init with copy of SpotlightRankingItem?(v137, v171, &_sSS2id_10Foundation3URLVSg3urltMd, ",");
          outlined init with copy of SpotlightRankingItem?(v142, v140, &_sSS2id_10Foundation3URLVSg3urltMd, ",");
          v143 = *v140;
          v144 = v140[1];
          v169 = *(v141 + 48);
          v145 = v142;
          v146 = v173;
          outlined init with take of SearchResultItem?(v145, v173, &_sSS2id_10Foundation3URLVSg3urltMd, ",");

          v147 = *(v141 + 48);
          *v139 = v143;
          v139[1] = v144;
          v148 = v176;
          outlined init with take of SearchResultItem?(v146 + v147, v139 + v176[5], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          OUTLINED_FUNCTION_39_20(v148[6]);
          OUTLINED_FUNCTION_39_20(v148[7]);
          OUTLINED_FUNCTION_39_20(v148[8]);
          OUTLINED_FUNCTION_39_20(v148[9]);
          outlined destroy of IntentApplication?(v140 + v169, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          v179 = v135;
          v150 = *(v135 + 16);
          v149 = *(v135 + 24);
          if (v150 >= v149 >> 1)
          {
            v152 = OUTLINED_FUNCTION_16_30(v149);
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v152, v150 + 1, 1);
            v135 = v179;
          }

          *(v135 + 16) = v150 + 1;
          OUTLINED_FUNCTION_42_5();
          OUTLINED_FUNCTION_13_26();
          _s10OmniSearch0B6ResultVWObTm_6(v139, v151);
          v137 += v168;
          v134 = v170 - 1;
        }

        while (v170 != 1);
        (*(v178 + 8))(v165, v177);

        v123 = v166;
      }

      else
      {

        (*(v131 + 8))(v122, v120);
      }

      v155 = OUTLINED_FUNCTION_8_35();
      v156(v155);
      outlined destroy of IntentApplication?(v123, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
      goto LABEL_17;
    }

    outlined destroy of IntentApplication?(v118, &_s10PegasusAPI21Searchfoundation_CardVSgMd, &_s10PegasusAPI21Searchfoundation_CardVSgMR);
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v124 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v124, static Logging.search);
    v125 = Logger.logObject.getter();
    v126 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_105_6(v126))
    {
      *OUTLINED_FUNCTION_172() = 0;
      OUTLINED_FUNCTION_84_5(&dword_25D85C000, v127, v128, "No SFCard found in the web_image layout snippet component");
      OUTLINED_FUNCTION_42_0();
    }

    v129 = OUTLINED_FUNCTION_8_35();
    v130(v129);
    v76 = v123;
LABEL_16:
    outlined destroy of IntentApplication?(v76, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
    goto LABEL_17;
  }

  if (v84 != *MEMORY[0x277D39AA0])
  {

    (*(v83 + 8))(v167, v78);
    v77 = v166;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_16();
  v97 = v168 + 16;
  v178 = *(v168 + 16);
  v179 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_79();
  v99 = v56 + v98;
  v100 = *(v97 + 56);
  v101 = v159;
  do
  {
    (v178)(v27, v99, v22);
    v102 = static GlobalSearchResponseProcessor.makeLegacySnippet(layoutSnippet:)(v27);
    v101(v27, v22);
    specialized Array.append<A>(contentsOf:)(v102);
    v99 += v100;
    --v57;
  }

  while (v57);

  v103 = v179;
  v104 = *(v179 + 16);
  v105 = v158;
  if (v104)
  {
    v179 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v104, 0);
    v106 = v179;
    v107 = (v161 + 8);
    v178 = v103;
    v108 = v103 + 40;
    do
    {

      v109 = v169;
      UUID.init()();
      v110 = UUID.uuidString.getter();
      v112 = v111;
      (*v107)(v109, v170);
      v113 = v176;
      URL.init(string:)();

      *v105 = v110;
      v105[1] = v112;
      OUTLINED_FUNCTION_38_23(v113[6]);
      OUTLINED_FUNCTION_38_23(v113[7]);
      OUTLINED_FUNCTION_38_23(v113[8]);
      OUTLINED_FUNCTION_38_23(v113[9]);
      v179 = v106;
      v115 = *(v106 + 16);
      v114 = *(v106 + 24);
      if (v115 >= v114 >> 1)
      {
        v117 = OUTLINED_FUNCTION_16_30(v114);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v117, v115 + 1, 1);
        v106 = v179;
      }

      *(v106 + 16) = v115 + 1;
      OUTLINED_FUNCTION_42_5();
      OUTLINED_FUNCTION_13_26();
      _s10OmniSearch0B6ResultVWObTm_6(v105, v116);
      v108 += 16;
      --v104;
    }

    while (v104);
  }

  v153 = OUTLINED_FUNCTION_8_35();
  v154(v153);
  outlined destroy of IntentApplication?(v166, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
LABEL_17:
  OUTLINED_FUNCTION_148();
}

uint64_t static GlobalSearchResponseProcessor.parseCardForURL(card:)()
{
  v0 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_10Foundation3URLVSg3urltSgMd, &_sSS2id_10Foundation3URLVSg3urltSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (v48 - v2);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_10Foundation3URLVSg3urltMd, ",");
  v50 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v51 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v49 = v48 - v6;
  v55 = type metadata accessor for Searchfoundation_GridCardSection();
  v7 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for Searchfoundation_CardSectionValue();
  v9 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v11 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Searchfoundation_CardSection();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v67 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v48 - v16;
  v18 = Searchfoundation_Card.cardSections.getter();
  v19 = *(v18 + 16);
  if (v19)
  {
    v57 = v11;
    v63 = *(v13 + 16);
    v20 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v48[1] = v18;
    v59 = v20;
    v21 = v7;
    v22 = v18 + v20;
    v68 = *(v13 + 72);
    v56 = (v9 + 8);
    v64 = v13 + 16;
    v62 = (v13 + 8);
    v53 = (v21 + 8);
    v23 = MEMORY[0x277D84F90];
    v60 = v13;
    v61 = v3;
    v65 = 0;
    v52 = v17;
    while (1)
    {
      v63(v17, v22, v12);
      if (Searchfoundation_CardSection.hasValue.getter() & 1) != 0 && (v0 = v57, Searchfoundation_CardSection.value.getter(), v24 = Searchfoundation_CardSectionValue.hasGridCardSection.getter(), v25 = *v56, v26 = v58, (*v56)(v0, v58), (v24))
      {
        Searchfoundation_CardSection.value.getter();
        v27 = v54;
        Searchfoundation_CardSectionValue.gridCardSection.getter();
        v25(v0, v26);
        v28 = Searchfoundation_GridCardSection.cardSections.getter();
        (*v53)(v27, v55);
        v17 = v52;
      }

      else
      {
        v28 = MEMORY[0x277D84F90];
      }

      (*v62)(v17, v12);
      v29 = *(v28 + 16);
      v30 = *(v23 + 16);
      v31 = v30 + v29;
      if (__OFADD__(v30, v29))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v31 > *(v23 + 24) >> 1)
      {
        if (v30 <= v31)
        {
          v33 = v30 + v29;
        }

        else
        {
          v33 = v30;
        }

        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v33, 1, v23);
        v23 = v34;
      }

      v13 = v60;
      v3 = v61;
      v0 = v65;
      if (*(v28 + 16))
      {
        if ((*(v23 + 24) >> 1) - *(v23 + 16) < v29)
        {
          goto LABEL_38;
        }

        swift_arrayInitWithCopy();

        if (v29)
        {
          v35 = *(v23 + 16);
          v36 = __OFADD__(v35, v29);
          v37 = v35 + v29;
          if (v36)
          {
            goto LABEL_39;
          }

          *(v23 + 16) = v37;
        }
      }

      else
      {

        if (v29)
        {
          goto LABEL_37;
        }
      }

      v22 += v68;
      if (!--v19)
      {

        goto LABEL_23;
      }
    }
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
LABEL_23:
    v38 = 0;
    v28 = v13 + 8;
    v68 = MEMORY[0x277D84F90];
    v39 = *(v23 + 16);
    while (1)
    {
      v17 = v67;
      if (v39 == v38)
      {

        return v68;
      }

      if (v38 >= *(v23 + 16))
      {
        break;
      }

      (*(v13 + 16))(v67, v23 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v38, v12);
      closure #2 in static GlobalSearchResponseProcessor.parseCardForURL(card:)(v3);
      if (v0)
      {
        goto LABEL_40;
      }

      (*v28)(v17, v12);
      if (__swift_getEnumTagSinglePayload(v3, 1, v66) == 1)
      {
        outlined destroy of IntentApplication?(v3, &_sSS2id_10Foundation3URLVSg3urltSgMd, &_sSS2id_10Foundation3URLVSg3urltSgMR);
        ++v38;
      }

      else
      {
        v64 = v12;
        v65 = 0;
        v40 = v13;
        v41 = v49;
        outlined init with take of SearchResultItem?(v3, v49, &_sSS2id_10Foundation3URLVSg3urltMd, ",");
        outlined init with take of SearchResultItem?(v41, v51, &_sSS2id_10Foundation3URLVSg3urltMd, ",");
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0);
          v68 = v45;
        }

        v43 = *(v68 + 16);
        v42 = *(v68 + 24);
        v13 = v40;
        if (v43 >= v42 >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v42 > 1);
          v68 = v46;
        }

        v12 = v64;
        ++v38;
        v44 = v68;
        *(v68 + 16) = v43 + 1;
        outlined init with take of SearchResultItem?(v51, v44 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v43, &_sSS2id_10Foundation3URLVSg3urltMd, ",");
        v0 = v65;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:

  (*v28)(v17, v12);

  __break(1u);
  return result;
}

uint64_t static GlobalSearchResponseProcessor.makeLegacySnippet(layoutSnippet:)(char *a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v74 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v64 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_Legacy_PodView();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v75 = (&v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI025Apple_Parsec_Siri_Legacy_F7SnippetV06OneOf_G0OSgMd, &_s10PegasusAPI025Apple_Parsec_Siri_Legacy_F7SnippetV06OneOf_G0OSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v69 = &v64 - v12;
  v13 = type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet();
  v67 = *(v13 - 8);
  v68 = v13;
  MEMORY[0x28223BE20](v13);
  v66 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsVSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v64 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v64 - v19;
  v21 = type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet();
  v71 = *(v21 - 8);
  v72 = v21;
  MEMORY[0x28223BE20](v21);
  v65 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v70 = &v64 - v24;
  v26 = MEMORY[0x28223BE20](v25);
  v73 = &v64 - v27;
  v28 = a1;
  v29 = MEMORY[0x25F89A140](v26);
  specialized Collection.first.getter(v29, v17);

  v30 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails();
  if (__swift_getEnumTagSinglePayload(v17, 1, v30) == 1)
  {
    outlined destroy of IntentApplication?(v17, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsVSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsVSgMR);
    v31 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet();
    __swift_storeEnumTagSinglePayload(v20, 1, 1, v31);
LABEL_4:
    outlined destroy of IntentApplication?(v20, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
LABEL_5:
    if (one-time initialization token for search != -1)
    {
LABEL_40:
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logging.search);
    v34 = v3[2];
    v34(v7, v28, v2);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v76 = v38;
      *v37 = 136315138;
      v34(v74, v7, v2);
      String.init<A>(describing:)();
      (v3[1])(v7, v2);
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v37 + 4) = v39;
      _os_log_impl(&dword_25D85C000, v35, v36, "InfoViewFactory invalid legacy snippet %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x25F8A1050](v38, -1, -1);
      MEMORY[0x25F8A1050](v37, -1, -1);
    }

    else
    {

      (v3[1])(v7, v2);
    }

    return MEMORY[0x277D84F90];
  }

  Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.snippet.getter();
  (*(*(v30 - 8) + 8))(v17, v30);
  v32 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet();
  if (__swift_getEnumTagSinglePayload(v20, 1, v32) == 1)
  {
    goto LABEL_4;
  }

  v42 = *(v32 - 8);
  if ((*(v42 + 88))(v20, v32) != *MEMORY[0x277D39AA0])
  {
    (*(v42 + 8))(v20, v32);
    goto LABEL_5;
  }

  (*(v42 + 96))(v20, v32);
  v2 = v71;
  v3 = v72;
  v7 = v73;
  (*(v71 + 32))(v73, v20, v72);
  v43 = v69;
  Apple_Parsec_Siri_Legacy_LegacySnippet.snippet.getter();
  v44 = type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet.OneOf_Snippet();
  if (__swift_getEnumTagSinglePayload(v43, 1, v44) == 1)
  {
    outlined destroy of IntentApplication?(v43, &_s10PegasusAPI025Apple_Parsec_Siri_Legacy_F7SnippetV06OneOf_G0OSgMd, &_s10PegasusAPI025Apple_Parsec_Siri_Legacy_F7SnippetV06OneOf_G0OSgMR);
    v28 = v70;
    goto LABEL_31;
  }

  v45 = *(v44 - 8);
  v46 = (*(v45 + 88))(v43, v44);
  v28 = v70;
  if (v46 != *MEMORY[0x277D38C78])
  {
    (*(v45 + 8))(v43, v44);
LABEL_31:
    if (one-time initialization token for search != -1)
    {
      goto LABEL_43;
    }

    goto LABEL_32;
  }

  (*(v45 + 96))(v43, v44);
  (*(v67 + 32))(v66, v43, v68);
  v47 = Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet.pods.getter();
  v7 = 0;
  v2 = 0;
  v74 = *(v47 + 16);
  v69 = (v9 + 16);
  v70 = (v9 + 8);
  v40 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v74 == v7)
    {

      (*(v67 + 8))(v66, v68);
      (*(v71 + 8))(v73, v72);
      return v40;
    }

    if (v7 >= *(v47 + 16))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v48 = v75;
    (*(v9 + 16))(v75, v47 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7, v8);
    closure #1 in static GlobalSearchResponseProcessor.makeLegacySnippet(layoutSnippet:)(v48, &v76);
    (*v70)(v48, v8);
    v3 = v76;
    v49 = v76[2];
    v28 = *(v40 + 16);
    if (__OFADD__(v28, v49))
    {
      goto LABEL_38;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || &v28[v49] > *(v40 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native);
      v40 = v51;
    }

    if (v3[2])
    {
      break;
    }

    if (v49)
    {
      goto LABEL_39;
    }

LABEL_29:
    ++v7;
  }

  if ((*(v40 + 24) >> 1) - *(v40 + 16) >= v49)
  {
    swift_arrayInitWithCopy();

    if (v49)
    {
      v52 = *(v40 + 16);
      v53 = __OFADD__(v52, v49);
      v54 = v52 + v49;
      if (v53)
      {
        goto LABEL_42;
      }

      *(v40 + 16) = v54;
    }

    goto LABEL_29;
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  swift_once();
LABEL_32:
  v55 = type metadata accessor for Logger();
  __swift_project_value_buffer(v55, static Logging.search);
  v56 = *(v2 + 16);
  v56(v28, v7, v3);
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v76 = v75;
    *v59 = 136315138;
    v56(v65, v28, v3);
    String.init<A>(describing:)();
    v60 = *(v2 + 8);
    v60(v28, v3);
    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v59 + 4) = v61;
    _os_log_impl(&dword_25D85C000, v57, v58, "InfoViewFactory invalid general knowledge snippet %s", v59, 0xCu);
    v62 = v75;
    __swift_destroy_boxed_opaque_existential_1Tm(v75);
    MEMORY[0x25F8A1050](v62, -1, -1);
    v63 = v59;
    v7 = v73;
    MEMORY[0x25F8A1050](v63, -1, -1);
  }

  else
  {

    v60 = *(v2 + 8);
    v60(v28, v3);
  }

  v60(v7, v3);
  return MEMORY[0x277D84F90];
}

void closure #1 in static GlobalSearchResponseProcessor.makeGeoLocations(experience:)(__n128 a1, uint64_t a2, NSObject *a3)
{
  v50 = a3;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoObjectComponent();
  v49 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v48 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v44 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainObjectComponentV06OneOf_I0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainObjectComponentV06OneOf_I0OSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v44 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent.OneOf_Component();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v47 = (&v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v44 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v44 - v21;
  Apple_Parsec_Siri_V2alpha_DomainObjectComponent.component.getter();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    outlined destroy of IntentApplication?(v10, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainObjectComponentV06OneOf_I0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainObjectComponentV06OneOf_I0OSgMR);
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logging.search);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_25D85C000, v24, v25, "PegasusResult component missing type", v26, 2u);
      MEMORY[0x25F8A1050](v26, -1, -1);
    }
  }

  else
  {
    (*(v12 + 32))(v22, v10, v11);
    v46 = *(v12 + 16);
    v46(v19, v22, v11);
    if ((*(v12 + 88))(v19, v11) == *MEMORY[0x277D39A68])
    {
      (*(v12 + 96))(v19, v11);
      v27 = v49;
      v47 = v49[4];
      v47(v7, v19, v3);
      v28 = v48;
      (v27[2])(v48, v7, v3);
      v45 = v22;
      v29 = v50;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v30 = *(v29->isa + 2);
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v30);
      (v27[1])(v7, v3);
      (*(v12 + 8))(v45, v11);
      isa = v29->isa;
      *(isa + 2) = v30 + 1;
      v47(isa + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + v27[9] * v30, v28, v3);
    }

    else
    {
      if (one-time initialization token for search != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static Logging.search);
      v33 = v46;
      v46(v16, v22, v11);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.info.getter();
      v50 = v34;
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v51 = v49;
        *v36 = 136315138;
        v45 = v22;
        v33(v47, v16, v11);
        String.init<A>(describing:)();
        v37 = *(v12 + 8);
        LODWORD(v48) = v35;
        v37(v16, v11);
        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        v39 = v36;
        *(v36 + 4) = v38;
        v40 = v50;
        v41 = v39;
        _os_log_impl(&dword_25D85C000, v50, v48, "PegasusResult skipping component %s", v39, 0xCu);
        v42 = v49;
        __swift_destroy_boxed_opaque_existential_1Tm(v49);
        MEMORY[0x25F8A1050](v42, -1, -1);
        MEMORY[0x25F8A1050](v41, -1, -1);

        v43 = v45;
      }

      else
      {

        v37 = *(v12 + 8);
        v37(v16, v11);
        v43 = v22;
      }

      v37(v43, v11);
      v37(v19, v11);
    }
  }
}

uint64_t GeoLocation.init(geoObject:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI12Mapspb_HoursVSgMd, &_s10PegasusAPI12Mapspb_HoursVSgMR);
  v5 = OUTLINED_FUNCTION_114(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_109();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v59 - v10;
  v12 = type metadata accessor for Locationpb_Location();
  OUTLINED_FUNCTION_14();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_109();
  v18 = (v16 - v17);
  MEMORY[0x28223BE20](v19);
  v21 = &v59 - v20;
  v73 = Mapspb_LocalSearchBusiness.uid.getter();
  v22 = Mapspb_LocalSearchBusiness.name.getter();
  v71 = v23;
  v72 = v22;
  v24 = Mapspb_LocalSearchBusiness.address.getter();
  v69 = v25;
  v70 = v24;
  v26 = Mapspb_LocalSearchBusiness.thoroughfare.getter();
  v67 = v27;
  v68 = v26;
  v28 = Mapspb_LocalSearchBusiness.placeCardURL.getter();
  v65 = v29;
  v66 = v28;
  Mapspb_LocalSearchBusiness.location.getter();
  Locationpb_Location.lat.getter();
  v31 = v30;
  v32 = *(v14 + 8);
  v32(v21, v12);
  Mapspb_LocalSearchBusiness.location.getter();
  Locationpb_Location.lon.getter();
  v34 = v33;
  v32(v18, v12);
  v64 = Mapspb_LocalSearchBusiness.telephone.getter();
  v35 = Mapspb_LocalSearchBusiness.url.getter();
  v62 = v36;
  v63 = v35;
  v61 = Mapspb_LocalSearchBusiness.photos.getter();
  v37 = Mapspb_LocalSearchBusiness.category.getter();
  v59 = v38;
  v60 = v37;
  v39 = Mapspb_LocalSearchBusiness.subcategory.getter();
  v41 = v40;
  v42 = Mapspb_LocalSearchBusiness.openingHours.getter();
  specialized Collection.first.getter(v42, v11);

  v43 = type metadata accessor for Mapspb_Hours();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v43);
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of IntentApplication?(v11, &_s10PegasusAPI12Mapspb_HoursVSgMd, &_s10PegasusAPI12Mapspb_HoursVSgMR);
    v45 = 0;
  }

  else
  {
    v45 = MEMORY[0x25F899970]();
    (*(*(v43 - 8) + 8))(v11, v43);
  }

  v46 = Mapspb_LocalSearchBusiness.openingHours.getter();
  specialized Collection.first.getter(v46, v8);

  v47 = __swift_getEnumTagSinglePayload(v8, 1, v43);
  if (v47 == 1)
  {
    type metadata accessor for Mapspb_LocalSearchBusiness();
    OUTLINED_FUNCTION_17();
    (*(v48 + 8))(a1);
    result = outlined destroy of IntentApplication?(v8, &_s10PegasusAPI12Mapspb_HoursVSgMd, &_s10PegasusAPI12Mapspb_HoursVSgMR);
    v50 = 0;
  }

  else
  {
    v50 = Mapspb_Hours.closeTime.getter();
    type metadata accessor for Mapspb_LocalSearchBusiness();
    OUTLINED_FUNCTION_17();
    (*(v51 + 8))(a1);
    result = (*(*(v43 - 8) + 8))(v8, v43);
  }

  v52 = v72;
  *a2 = v73;
  *(a2 + 8) = v52;
  v53 = v70;
  *(a2 + 16) = v71;
  *(a2 + 24) = v53;
  v54 = v68;
  *(a2 + 32) = v69;
  *(a2 + 40) = v54;
  v55 = v66;
  *(a2 + 48) = v67;
  *(a2 + 56) = v55;
  v56 = v64;
  *(a2 + 64) = v65;
  *(a2 + 72) = v31;
  *(a2 + 76) = v34;
  *(a2 + 80) = v56;
  v57 = v62;
  *(a2 + 88) = v63;
  *(a2 + 96) = v57;
  v58 = v60;
  *(a2 + 104) = v61;
  *(a2 + 112) = v58;
  *(a2 + 120) = v59;
  *(a2 + 128) = v39;
  *(a2 + 136) = v41;
  *(a2 + 144) = v45;
  *(a2 + 148) = EnumTagSinglePayload == 1;
  *(a2 + 152) = v50;
  *(a2 + 156) = v47 == 1;
  return result;
}

uint64_t closure #1 in static GlobalSearchResponseProcessor.makeGlobalItems(experience:domain:lowConfidenceKnowledge:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v34 = a1;
  v35 = a2;
  v36 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AppEntityVSgMd, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AppEntityVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes12GlobalDialogVSgMd, &_s15OmniSearchTypes12GlobalDialogVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v17 = UUID.uuidString.getter();
  v19 = v18;
  (*(v14 + 8))(v16, v13);
  v20 = type metadata accessor for GlobalDialog();
  (*(*(v20 - 8) + 16))(v12, a4, v20);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v20);
  v21 = GlobalDialog.print.getter();
  v23 = v22;

  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    v25 = GlobalDialog.print.getter();
  }

  else
  {
    v25 = GlobalDialog.speak.getter();
  }

  v27 = v25;
  v28 = v26;
  v29 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntity();
  (*(*(v29 - 8) + 16))(v9, v34, v29);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v29);

  v30 = v36;
  GlobalItem.init(id:domain:dialog:text:parsecEntity:lowConfidenceKnowledge:)(v17, v19, v35, a3, v12, v27, v28, v9, v36, 0);
  v31 = type metadata accessor for GlobalItem(0);
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v31);
}

uint64_t closure #2 in static GlobalSearchResponseProcessor.parseCardForURL(card:)@<X0>(uint64_t *a1@<X8>)
{
  v50 = a1;
  v1 = type metadata accessor for Searchfoundation_URL();
  v43 = *(v1 - 8);
  v44 = v1;
  MEMORY[0x28223BE20](v1);
  v42 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Searchfoundation_URLImage();
  v4 = *(v3 - 8);
  v46 = v3;
  v47 = v4;
  MEMORY[0x28223BE20](v3);
  v45 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Searchfoundation_Image();
  v7 = *(v6 - 8);
  v48 = v6;
  v49 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Searchfoundation_VerticalLayoutCardSection();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Searchfoundation_CardSectionValue();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (Searchfoundation_CardSection.hasValue.getter() & 1) != 0 && (Searchfoundation_CardSection.value.getter(), v18 = Searchfoundation_CardSectionValue.hasVerticalLayoutCardSection.getter(), v41 = *(v15 + 8), v41(v17, v14), (v18) && (Searchfoundation_CardSection.value.getter(), Searchfoundation_CardSectionValue.verticalLayoutCardSection.getter(), v41(v17, v14), LODWORD(v40) = Searchfoundation_VerticalLayoutCardSection.hasThumbnail.getter(), v38 = *(v11 + 8), v39 = v11 + 8, v38(v13, v10), (v40) && (Searchfoundation_CardSection.value.getter(), Searchfoundation_CardSectionValue.verticalLayoutCardSection.getter(), v41(v17, v14), Searchfoundation_VerticalLayoutCardSection.thumbnail.getter(), v38(v13, v10), v19 = Searchfoundation_Image.hasURLImage.getter(), v20 = *(v49 + 8), v49 += 8, v40 = v20, v20(v9, v48), (v19) && (Searchfoundation_CardSection.value.getter(), Searchfoundation_CardSectionValue.verticalLayoutCardSection.getter(), v41(v17, v14), Searchfoundation_VerticalLayoutCardSection.thumbnail.getter(), v38(v13, v10), v21 = v45, Searchfoundation_Image.urlImage.getter(), v40(v9, v48), v22 = Searchfoundation_URLImage.hasURLValue.getter(), v23 = *(v47 + 8), v47 += 8, v37 = v23, v23(v21, v46), (v22))
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_10Foundation3URLVSg3urltMd, ",");
    v35 = *(v24 + 48);
    v36 = v24;
    v25 = Searchfoundation_CardSection.resultIdentifier.getter();
    v26 = v50;
    *v50 = v25;
    v26[1] = v27;
    Searchfoundation_CardSection.value.getter();
    Searchfoundation_CardSectionValue.verticalLayoutCardSection.getter();
    v41(v17, v14);
    Searchfoundation_VerticalLayoutCardSection.thumbnail.getter();
    v38(v13, v10);
    v28 = v45;
    Searchfoundation_Image.urlImage.getter();
    v40(v9, v48);
    v29 = v42;
    Searchfoundation_URLImage.urlValue.getter();
    v37(v28, v46);
    Searchfoundation_URL.address.getter();
    (*(v43 + 8))(v29, v44);
    v30 = v50;
    URL.init(string:)();

    v31 = v30;
    v32 = 0;
    v33 = v36;
  }

  else
  {
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_10Foundation3URLVSg3urltMd, ",");
    v31 = v50;
    v32 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v31, v32, 1, v33);
}

uint64_t closure #1 in static GlobalSearchResponseProcessor.makeCard(layoutSnippet:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v31 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v32 = &v29 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.snippet.getter();
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet();
  if (__swift_getEnumTagSinglePayload(v10, 1, v15) == 1)
  {
    outlined destroy of IntentApplication?(v10, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
  }

  else
  {
    v16 = v4;
    v17 = *(v15 - 8);
    if ((*(v17 + 88))(v10, v15) == *MEMORY[0x277D39A98])
    {
      (*(v17 + 96))(v10, v15);
      (*(v12 + 32))(v14, v10, v11);
      static GlobalSearchResponseProcessor.makeCard(casinoSnippet:)(v14, v33);
      return (*(v12 + 8))(v14, v11);
    }

    (*(v17 + 8))(v10, v15);
    v4 = v16;
  }

  v19 = v3;
  if (one-time initialization token for search != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logging.search);
  v21 = *(v4 + 16);
  v22 = v32;
  v21(v32, a1, v19);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v34 = v30;
    *v25 = 136315138;
    v21(v31, v22, v19);
    String.init<A>(describing:)();
    (*(v4 + 8))(v22, v19);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v25 + 4) = v26;
    _os_log_impl(&dword_25D85C000, v23, v24, "InfoViewFactory non casino snippet %s", v25, 0xCu);
    v27 = v30;
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x25F8A1050](v27, -1, -1);
    MEMORY[0x25F8A1050](v25, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v22, v19);
  }

  v28 = type metadata accessor for Searchfoundation_Card();
  return __swift_storeEnumTagSinglePayload(v33, 1, 1, v28);
}

uint64_t static GlobalSearchResponseProcessor.makeCard(casinoSnippet:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for Google_Protobuf_Any();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for Searchfoundation_Card();
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  if (Apple_Parsec_Siri_V2alpha_CasinoSnippet.hasCardData.getter())
  {
    Apple_Parsec_Siri_V2alpha_CasinoSnippet.cardData.getter();
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type Searchfoundation_Card and conformance Searchfoundation_Card(&lazy protocol witness table cache variable for type Searchfoundation_Card and conformance Searchfoundation_Card, MEMORY[0x277D38E40], MEMORY[0x277D38E38]);
    Message.init(unpackingAny:extensions:options:)();
    (*(v26 + 32))(a2, v8, v6);
    v23 = 0;
  }

  else
  {
    v25 = v6;
    v26 = a2;
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logging.search);
    v17 = *(v10 + 16);
    v17(v15, a1, v9);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v27 = v21;
      *v20 = 136315138;
      v17(v12, v15, v9);
      String.init<A>(describing:)();
      (*(v10 + 8))(v15, v9);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v20 + 4) = v22;
      _os_log_impl(&dword_25D85C000, v18, v19, "InfoViewFactory casinoSnippet has no card data %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x25F8A1050](v21, -1, -1);
      MEMORY[0x25F8A1050](v20, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v15, v9);
    }

    v23 = 1;
    v6 = v25;
    a2 = v26;
  }

  return __swift_storeEnumTagSinglePayload(a2, v23, 1, v6);
}

uint64_t closure #2 in static GlobalSearchResponseProcessor.makeCard(layoutSnippet:)(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v3 = type metadata accessor for Searchfoundation_CardSource();
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x28223BE20](v3);
  v23 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Searchfoundation_Card();
  v6 = MEMORY[0x28223BE20](v29);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  if (v9)
  {
    v11 = *(v5 + 16);
    v10 = v5 + 16;
    v12 = a2 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v27 = *(v10 + 56);
    v28 = v11;
    v13 = (v10 - 8);
    v14 = MEMORY[0x277D84F90];
    do
    {
      v15 = v29;
      v16 = v10;
      v28(v8, v12, v29, v6);
      v17 = Searchfoundation_Card.cardSections.getter();
      (*v13)(v8, v15);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v14 = v19;
      }

      v18 = *(v14 + 16);
      if (v18 >= *(v14 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v14 = v20;
      }

      *(v14 + 16) = v18 + 1;
      *(v14 + 8 * v18 + 32) = v17;
      v12 += v27;
      --v9;
      v10 = v16;
    }

    while (v9);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  specialized _copySequenceToContiguousArray<A>(_:)(v14);

  Searchfoundation_Card.cardSections.setter();
  (*(v24 + 104))(v23, *MEMORY[0x277D38EA8], v25);
  return Searchfoundation_Card.source.setter();
}

uint64_t closure #1 in static GlobalSearchResponseProcessor.makeLegacySnippet(layoutSnippet:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v91 = a2;
  v98 = type metadata accessor for Apple_Parsec_Siri_Legacy_PodView();
  v93 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v5 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer();
  v7 = *(v6 - 8);
  v96 = v6;
  v97 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImagePod();
  v88 = *(v10 - 8);
  v89 = v10;
  MEMORY[0x28223BE20](v10);
  v87 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource();
  v92 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v94 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod();
  v13 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v84 = &v82 - v16;
  MEMORY[0x28223BE20](v17);
  v86 = &v82 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI32Apple_Parsec_Siri_Legacy_PodViewV06OneOf_G0OSgMd, &_s10PegasusAPI32Apple_Parsec_Siri_Legacy_PodViewV06OneOf_G0OSgMR);
  MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v20);
  v22 = &v82 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v82 - v24;
  v26 = a1;
  Apple_Parsec_Siri_Legacy_PodView.pod.getter();
  v27 = type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, 1, v27);
  v90 = v25;
  if (EnumTagSinglePayload == 1)
  {
    goto LABEL_2;
  }

  outlined init with copy of SpotlightRankingItem?(v25, v22, &_s10PegasusAPI32Apple_Parsec_Siri_Legacy_PodViewV06OneOf_G0OSgMd, &_s10PegasusAPI32Apple_Parsec_Siri_Legacy_PodViewV06OneOf_G0OSgMR);
  v41 = *(v27 - 8);
  v42 = (*(v41 + 88))(v22, v27);
  if (v42 == *MEMORY[0x277D38FA8])
  {
    (*(v41 + 96))(v22, v27);
    (*(v88 + 32))(v87, v22, v89);
    v43 = Apple_Parsec_Siri_Legacy_ImagePod.images.getter();
    v44 = *(v43 + 16);
    if (v44)
    {
      v45 = v96;
      v46 = *(v97 + 16);
      v47 = *(v97 + 80);
      v86 = v43;
      v48 = v43 + ((v47 + 32) & ~v47);
      v98 = *(v97 + 72);
      v49 = (v97 + 8);
      ++v92;
      v40 = MEMORY[0x277D84F90];
      v97 += 16;
      v93 = v46;
      do
      {
        v46(v9, v48, v45);
        if (Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.hasImageResource.getter())
        {
          v50 = v94;
          Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.imageResource.getter();
          v51 = Apple_Parsec_Siri_Legacy_ImageResource.resourceURL.getter();
          v53 = v52;
          (*v92)(v50, v95);
          (*v49)(v9, v45);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0);
            v40 = v57;
          }

          v55 = v40[2];
          v54 = v40[3];
          if (v55 >= v54 >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v54 > 1);
            v40 = v58;
          }

          v40[2] = v55 + 1;
          v56 = &v40[2 * v55];
          v56[4] = v51;
          v56[5] = v53;
          v45 = v96;
          v46 = v93;
        }

        else
        {
          (*v49)(v9, v45);
        }

        v48 += v98;
        --v44;
      }

      while (v44);
    }

    else
    {

      v40 = MEMORY[0x277D84F90];
    }

    (*(v88 + 8))(v87, v89);
    goto LABEL_26;
  }

  if (v42 != *MEMORY[0x277D38FB0])
  {
    (*(v41 + 8))(v22, v27);
LABEL_2:
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logging.search);
    v30 = v93;
    v31 = v26;
    v32 = v98;
    (*(v93 + 2))(v5, v31, v98);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = v5;
      v37 = v32;
      v38 = swift_slowAlloc();
      v99 = v38;
      *v35 = 136315138;
      Apple_Parsec_Siri_Legacy_PodView.pod.getter();
      String.init<A>(describing:)();
      v30[1](v36, v37);
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v35 + 4) = v39;
      _os_log_impl(&dword_25D85C000, v33, v34, "Received unexpected gkSnippet pod %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x25F8A1050](v38, -1, -1);
      MEMORY[0x25F8A1050](v35, -1, -1);

      v40 = MEMORY[0x277D84F90];
LABEL_26:
      v60 = v90;
      v59 = v91;
      goto LABEL_27;
    }

    v30[1](v5, v32);
    v40 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  (*(v41 + 96))(v22, v27);
  v61 = v86;
  v62 = v22;
  v63 = v85;
  (*(v13 + 32))(v86, v62, v85);
  if (Apple_Parsec_Siri_Legacy_SummaryPod.hasImageResource.getter())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v40 = swift_allocObject();
    *(v40 + 1) = xmmword_25DBC8180;
    v64 = v94;
    Apple_Parsec_Siri_Legacy_SummaryPod.imageResource.getter();
    v65 = Apple_Parsec_Siri_Legacy_ImageResource.resourceURL.getter();
    v66 = v61;
    v68 = v67;
    v92[1](v64, v95);
    v40[4] = v65;
    v40[5] = v68;
    (*(v13 + 8))(v66, v63);
LABEL_19:
    v60 = v90;
    v59 = v91;
    goto LABEL_27;
  }

  if (one-time initialization token for search != -1)
  {
    swift_once();
  }

  v70 = type metadata accessor for Logger();
  __swift_project_value_buffer(v70, static Logging.search);
  v71 = v13;
  v72 = *(v13 + 16);
  v73 = v84;
  v72(v84, v61, v63);
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v99 = v98;
    *v76 = 136315138;
    v72(v83, v73, v63);
    String.init<A>(describing:)();
    v77 = v73;
    v78 = *(v71 + 8);
    v78(v77, v63);
    v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v76 + 4) = v79;
    _os_log_impl(&dword_25D85C000, v74, v75, "SummaryPod has no image resource: %s", v76, 0xCu);
    v80 = v98;
    __swift_destroy_boxed_opaque_existential_1Tm(v98);
    MEMORY[0x25F8A1050](v80, -1, -1);
    MEMORY[0x25F8A1050](v76, -1, -1);
  }

  else
  {

    v81 = v73;
    v78 = *(v71 + 8);
    v78(v81, v63);
  }

  v60 = v90;
  v59 = v91;
  v78(v86, v63);
  v40 = MEMORY[0x277D84F90];
LABEL_27:
  *v59 = v40;
  return outlined destroy of IntentApplication?(v60, &_s10PegasusAPI32Apple_Parsec_Siri_Legacy_PodViewV06OneOf_G0OSgMd, &_s10PegasusAPI32Apple_Parsec_Siri_Legacy_PodViewV06OneOf_G0OSgMR);
}

uint64_t static GlobalSearchResponseProcessor.collatePegasusComponents(components:)(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v3 = MEMORY[0x277D84F90];
  v4 = MEMORY[0x277D84F90];
  v2 = MEMORY[0x277D84F90];
  specialized Sequence.forEach(_:)(a1, &v4, &v3, &v2);
  return v4;
}

void closure #1 in static GlobalSearchResponseProcessor.collatePegasusComponents(components:)(__n128 a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v82 = a5;
  v76 = a4;
  v80 = a3;
  v83 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent();
  v81 = *(v83 - 1);
  MEMORY[0x28223BE20](v83);
  v84 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v68 - v7;
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent();
  v74 = *(v9 - 8);
  v75 = v9;
  MEMORY[0x28223BE20](v9);
  v79 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v73 = &v68 - v12;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent();
  v78 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v77 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v68 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v68 - v19;
  v21 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v71 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v72 = &v68 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v68 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v68 - v30;
  Apple_Parsec_Siri_V2alpha_ExperienceComponent.component.getter();
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    outlined destroy of IntentApplication?(v20, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logging.search);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_25D85C000, v33, v34, "PegasusResult component missing type", v35, 2u);
      MEMORY[0x25F8A1050](v35, -1, -1);
    }
  }

  else
  {
    v22[4](v31, v20, v21);
    v70 = v22[2];
    v70(v28, v31, v21);
    v36 = (v22[11])(v28, v21);
    v37 = v22;
    if (v36 == *MEMORY[0x277D39908])
    {
      (v22[12])(v28, v21);
      v38 = v81;
      v80 = *(v81 + 32);
      v39 = v83;
      (v80)(v8, v28, v83);
      (*(v38 + 16))(v84, v8, v39);
      v40 = v37;
      v41 = v82;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v42 = *(*v41 + 16);
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v42);
      (*(v38 + 8))(v8, v39);
      (v40[1])(v31, v21);
      v43 = *v41;
      *(v43 + 16) = v42 + 1;
      (v80)(v43 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v42, v84, v39);
    }

    else
    {
      v69 = v31;
      if (v36 == *MEMORY[0x277D39900])
      {
        (v22[12])(v28, v21);
        v44 = v78;
        v84 = *(v78 + 32);
        (v84)(v17, v28, v13);
        v45 = v77;
        (*(v44 + 16))(v77, v17, v13);
        v46 = v37;
        v47 = v80;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v48 = *(*v47 + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v48);
        (*(v44 + 8))(v17, v13);
        (v46[1])(v69, v21);
        v49 = *v47;
        *(v49 + 16) = v48 + 1;
        (v84)(v49 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v48, v45, v13);
      }

      else if (v36 == *MEMORY[0x277D398F0])
      {
        (v22[12])(v28, v21);
        v50 = v73;
        v51 = v74;
        v52 = *(v74 + 32);
        v53 = v75;
        v52(v73, v28, v75);
        (*(v51 + 16))(v79, v50, v53);
        v54 = v37;
        v55 = v76;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v56 = *(*v55 + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v56);
        (*(v51 + 8))(v50, v53);
        (v54[1])(v69, v21);
        v57 = *v55;
        *(v57 + 16) = v56 + 1;
        v52((v57 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v56), v79, v53);
      }

      else
      {
        v84 = v22;
        v58 = v69;
        if (one-time initialization token for search != -1)
        {
          swift_once();
        }

        v59 = type metadata accessor for Logger();
        __swift_project_value_buffer(v59, static Logging.search);
        v60 = v72;
        v61 = v70;
        v70(v72, v58, v21);
        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          v85 = v83;
          *v64 = 136315138;
          LODWORD(v82) = v63;
          v61(v71, v60, v21);
          String.init<A>(describing:)();
          v65 = *(v84 + 1);
          v65(v60, v21);
          v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

          *(v64 + 4) = v66;
          _os_log_impl(&dword_25D85C000, v62, v82, "PegasusResult skipping component %s", v64, 0xCu);
          v67 = v83;
          __swift_destroy_boxed_opaque_existential_1Tm(v83);
          MEMORY[0x25F8A1050](v67, -1, -1);
          MEMORY[0x25F8A1050](v64, -1, -1);

          v65(v69, v21);
        }

        else
        {

          v65 = *(v84 + 1);
          v65(v60, v21);
          v65(v58, v21);
        }

        v65(v28, v21);
      }
    }
  }
}

uint64_t lazy protocol witness table accessor for type Searchfoundation_Card and conformance Searchfoundation_Card(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s10OmniSearch0B10ResultItemOWOhTm_7(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_17();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t _s10OmniSearch0B6ResultVWObTm_6(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_47_1();
  v4(v3);
  OUTLINED_FUNCTION_17();
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return a2;
}

void OUTLINED_FUNCTION_10_32(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_15_30()
{

  return _s10OmniSearch0B10ResultItemOWOhTm_7(v0, type metadata accessor for GlobalItem);
}

void OUTLINED_FUNCTION_38_23(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

void OUTLINED_FUNCTION_39_20(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

Swift::String __swiftcall GeoLocation.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 56);
  v154 = *(v1 + 40);
  v155 = v7;
  v8 = *(v1 + 72);
  v9 = *(v1 + 76);
  v114 = *(v1 + 96);
  v122 = *(v1 + 80);
  v104 = *(v1 + 120);
  v82 = *(v1 + 128);
  v86 = v2;
  v74 = *(v1 + 112);
  v78 = *(v1 + 136);
  HIDWORD(v70) = *(v1 + 144);
  HIDWORD(v109) = *(v1 + 148);
  v152 = *(v1 + 149);
  v153 = *(v1 + 151);
  v10 = *(v1 + 152);
  HIDWORD(v99) = *(v1 + 156);
  MEMORY[0x25F89F5D0](293, locale.value._object);
  v151[5] = 0;
  v151[6] = 0xE000000000000000;
  MEMORY[0x25F89F6C0](0xD000000000000016, 0x800000025DBF6B10);

  v11 = LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  OUTLINED_FUNCTION_3_47(v11, v12, v13, v14, v15, v16, v17, v18, v70, v74, v78, v82, v86, v91, v3, v99, v104, v109, v114, *(&v114 + 1), v122, *(&v122 + 1));
  MEMORY[0x25F89F6C0](0x6461202020200A2CLL, 0xEF203A7373657264);
  HIDWORD(v130) = HIDWORD(v5);
  v131 = v6;

  v19 = LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  OUTLINED_FUNCTION_3_47(v19, v20, v21, v22, v23, v24, v25, v26, v71, v75, v79, v83, v87, v5, v95, v100, v105, v110, v115, v119, v123, v127);
  OUTLINED_FUNCTION_1_61();
  v27 = MEMORY[0x277D83A90];
  v28 = MEMORY[0x277D83AF8];
  v29 = LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  OUTLINED_FUNCTION_3_47(v29, v30, v31, v32, v33, v34, v35, v36, v72, v76, v80, v84, v88, v92, v96, v101, v106, v111, v116, v120, v124, v128);
  MEMORY[0x25F89F6C0](0xD000000000000011, 0x800000025DBF6B50);
  v133 = v27;
  v134 = v28;
  LODWORD(v130) = v9;
  LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  outlined destroy of (offset: Int, element: SearchResult)(&v130, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  MEMORY[0x25F89F6C0](0xD000000000000011, 0x800000025DBF6B70);
  v156.value._rawValue = v125;
  LLMFormatter.StringInterpolation.appendInterpolation(names:)(v156);
  MEMORY[0x25F89F6C0](0x6577202020200A2CLL, 0xEF203A6574697362);
  v37 = v117;
  if (v117)
  {
    v38 = v129;
    v39 = MEMORY[0x277D83838];
    v40 = MEMORY[0x277D837D0];
  }

  else
  {
    OUTLINED_FUNCTION_0_62();
    v132 = 0;
  }

  v130 = v38;
  v131 = v37;
  v133 = v40;
  v134 = v39;

  LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  outlined destroy of (offset: Int, element: SearchResult)(&v130, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_1_61();
  v41 = v77;
  v42 = HIDWORD(v73);
  v43 = v107;
  if (v107)
  {
    v44 = MEMORY[0x277D83838];
    v45 = MEMORY[0x277D837D0];
    v46 = v77;
  }

  else
  {
    OUTLINED_FUNCTION_7_37();
    v132 = 0;
  }

  v48 = v81;
  v47 = v85;
  v130 = v46;
  v131 = v43;
  v133 = v45;
  v134 = v44;

  LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  outlined destroy of (offset: Int, element: SearchResult)(&v130, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  MEMORY[0x25F89F6C0](0xD000000000000013, 0x800000025DBF6BB0);
  if (v81)
  {
    v49 = MEMORY[0x277D83838];
    v50 = MEMORY[0x277D837D0];
    v51 = v81;
    v52 = v85;
  }

  else
  {
    OUTLINED_FUNCTION_7_37();
    v132 = 0;
  }

  v130 = v52;
  v131 = v51;
  v133 = v50;
  v134 = v49;

  LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  outlined destroy of (offset: Int, element: SearchResult)(&v130, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_1_61();
  if ((v112 & 0x100000000) != 0)
  {
    OUTLINED_FUNCTION_7_37();
    v130 = 0;
    v131 = 0;
    v132 = 0;
  }

  else
  {
    LODWORD(v130) = HIDWORD(v73);
    v53 = MEMORY[0x277D84D18];
    v54 = MEMORY[0x277D84CC0];
  }

  v133 = v54;
  v134 = v53;
  LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  outlined destroy of (offset: Int, element: SearchResult)(&v130, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  MEMORY[0x25F89F6C0](0xD000000000000011, 0x800000025DBF6BF0);
  if ((v102 & 0x100000000) != 0)
  {
    OUTLINED_FUNCTION_7_37();
    v130 = 0;
    v131 = 0;
    v132 = 0;
  }

  else
  {
    LODWORD(v130) = v10;
    v55 = MEMORY[0x277D84D18];
    v56 = MEMORY[0x277D84CC0];
  }

  v133 = v56;
  v134 = v55;
  v57 = LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  OUTLINED_FUNCTION_3_47(v57, v58, v59, v60, v61, v62, v63, v64, v73, v77, v81, v85, v89, v93, v97, v102, v107, v112, v117, v121, v125, v129);
  MEMORY[0x25F89F6C0](0x617473202020200ALL, 0xED0000203A737574);
  v135 = v154;
  v130 = v90;
  v131 = v98;
  v132 = v4;
  v133 = v94;
  v134 = v6;
  v136 = v155;
  v137 = v8;
  v138 = v9;
  v139 = v126;
  v140 = v118;
  v141 = v41;
  v142 = v108;
  v143 = v47;
  v144 = v48;
  v145 = v42;
  v146 = v113;
  v147 = v152;
  v148 = v153;
  v149 = v10;
  v150 = v103;
  GeoLocation.openNow.getter();
  v151[3] = MEMORY[0x277D837D0];
  v151[4] = MEMORY[0x277D83838];
  v151[0] = v65;
  v151[1] = v66;
  LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  outlined destroy of (offset: Int, element: SearchResult)(v151, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  LLMFormatter.sanitized.getter();
  OUTLINED_FUNCTION_89_10();
  v67 = OUTLINED_FUNCTION_88();
  result._object = v68;
  result._countAndFlagsBits = v67;
  return result;
}

Swift::String __swiftcall WebImage.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27 - v4;
  *&v27 = 0;
  *(&v27 + 1) = 0xE000000000000000;
  MEMORY[0x25F89F5D0](67, v3);
  v30 = v27;
  MEMORY[0x25F89F6C0](0x67616D6920626557, 0xEB00000000203A65);
  v6 = type metadata accessor for WebImage(0);
  v7 = OUTLINED_FUNCTION_8_36(v6[6]);
  if (v7)
  {
    v9 = *v8;
  }

  else
  {
    OUTLINED_FUNCTION_0_62();
    *&v28 = 0;
  }

  OUTLINED_FUNCTION_10_33(v7, v9);
  LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  outlined destroy of (offset: Int, element: SearchResult)(&v27, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  MEMORY[0x25F89F6C0](32, 0xE100000000000000);
  v10 = OUTLINED_FUNCTION_8_36(v6[7]);
  if (v10)
  {
    v12 = *v11;
  }

  else
  {
    OUTLINED_FUNCTION_0_62();
    *&v28 = 0;
  }

  OUTLINED_FUNCTION_10_33(v10, v12);
  LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  outlined destroy of (offset: Int, element: SearchResult)(&v27, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_4_42();
  v13 = OUTLINED_FUNCTION_8_36(v6[8]);
  if (v13)
  {
    v15 = *v14;
  }

  else
  {
    OUTLINED_FUNCTION_0_62();
    *&v28 = 0;
  }

  OUTLINED_FUNCTION_10_33(v13, v15);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(0x3A74786554746C61, 0xE800000000000000, &v27, 0);
  outlined destroy of (offset: Int, element: SearchResult)(&v27, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  MEMORY[0x25F89F6C0](32, 0xE100000000000000);
  v16 = OUTLINED_FUNCTION_8_36(v6[9]);
  if (v16)
  {
    v18 = *v17;
  }

  else
  {
    OUTLINED_FUNCTION_0_62();
    *&v28 = 0;
  }

  OUTLINED_FUNCTION_10_33(v16, v18);
  LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  outlined destroy of (offset: Int, element: SearchResult)(&v27, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_4_42();
  outlined init with copy of URL?(v1 + v6[5], v5);
  v19 = type metadata accessor for URL();
  if (__swift_getEnumTagSinglePayload(v5, 1, v19) == 1)
  {
    outlined destroy of (offset: Int, element: SearchResult)(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v27 = 0u;
    v28 = 0u;
    v29 = 0;
  }

  else
  {
    v20 = MEMORY[0x277D837D0];
    v21 = MEMORY[0x277D83838];
    v22 = URL.path.getter();
    *(&v28 + 1) = v20;
    v29 = v21;
    *&v27 = v22;
    *(&v27 + 1) = v23;
    (*(*(v19 - 8) + 8))(v5, v19);
  }

  LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  outlined destroy of (offset: Int, element: SearchResult)(&v27, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  LLMFormatter.sanitized.getter();
  OUTLINED_FUNCTION_89_10();
  v24 = OUTLINED_FUNCTION_88();
  result._object = v25;
  result._countAndFlagsBits = v24;
  return result;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::String __swiftcall KGDocument.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v23 - v4;
  *&v23 = 0;
  *(&v23 + 1) = 0xE000000000000000;
  MEMORY[0x25F89F5D0](70, v3);
  v26 = v23;
  MEMORY[0x25F89F6C0](0x656D75636F44474BLL, 0xEC000000203A746ELL);
  v6 = type metadata accessor for KGDocument(0);
  v7 = (v1 + v6[7]);
  v9 = *v7;
  v8 = v7[1];
  v10 = MEMORY[0x277D837D0];
  v11 = MEMORY[0x277D83838];
  *(&v24 + 1) = MEMORY[0x277D837D0];
  v25 = MEMORY[0x277D83838];
  *&v23 = v9;
  *(&v23 + 1) = v8;

  LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  OUTLINED_FUNCTION_5_39();
  OUTLINED_FUNCTION_4_42();
  OUTLINED_FUNCTION_9_37(v6[8]);
  LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  OUTLINED_FUNCTION_5_39();
  OUTLINED_FUNCTION_4_42();
  OUTLINED_FUNCTION_9_37(v6[6]);
  LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  OUTLINED_FUNCTION_5_39();
  OUTLINED_FUNCTION_4_42();
  outlined init with copy of URL?(v1 + v6[9], v5);
  v12 = type metadata accessor for URL();
  if (__swift_getEnumTagSinglePayload(v5, 1, v12) == 1)
  {
    outlined destroy of (offset: Int, element: SearchResult)(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
  }

  else
  {
    v13 = URL.path.getter();
    *(&v24 + 1) = v10;
    v25 = v11;
    *&v23 = v13;
    *(&v23 + 1) = v14;
    (*(*(v12 - 8) + 8))(v5, v12);
  }

  LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  outlined destroy of (offset: Int, element: SearchResult)(&v23, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_4_42();
  v15 = (v1 + v6[10]);
  v16 = v15[1];
  if (v16)
  {
    v17 = *v15;
    v18 = MEMORY[0x277D83838];
    v19 = MEMORY[0x277D837D0];
  }

  else
  {
    OUTLINED_FUNCTION_0_62();
    *&v24 = 0;
  }

  *&v23 = v17;
  *(&v23 + 1) = v16;
  *(&v24 + 1) = v19;
  v25 = v18;

  LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  outlined destroy of (offset: Int, element: SearchResult)(&v23, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  LLMFormatter.sanitized.getter();
  OUTLINED_FUNCTION_89_10();
  v20 = OUTLINED_FUNCTION_88();
  result._object = v21;
  result._countAndFlagsBits = v20;
  return result;
}

Swift::String __swiftcall WebAnswer.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  v11 = 0;
  v12 = 0xE000000000000000;
  MEMORY[0x25F89F5D0](34, locale.value._object);
  v16 = 0;
  v17 = 0xE000000000000000;
  MEMORY[0x25F89F6C0](0x77736E6120626557, 0xEC000000203A7265);
  v3 = v1[2];
  v2 = v1[3];
  v14 = MEMORY[0x277D837D0];
  v15 = MEMORY[0x277D83838];
  v11 = v3;
  v12 = v2;

  LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  outlined destroy of (offset: Int, element: SearchResult)(&v11, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_4_42();
  v4 = v1[5];
  if (v4)
  {
    v5 = v1[4];
    v6 = MEMORY[0x277D83838];
    v7 = MEMORY[0x277D837D0];
  }

  else
  {
    OUTLINED_FUNCTION_0_62();
    v13 = 0;
  }

  v11 = v5;
  v12 = v4;
  v14 = v7;
  v15 = v6;

  LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  outlined destroy of (offset: Int, element: SearchResult)(&v11, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  LLMFormatter.sanitized.getter();
  OUTLINED_FUNCTION_89_10();
  v8 = OUTLINED_FUNCTION_88();
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

void OUTLINED_FUNCTION_1_61()
{

  JUMPOUT(0x25F89F6C0);
}

uint64_t OUTLINED_FUNCTION_3_47(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  return outlined destroy of (offset: Int, element: SearchResult)(va, v22, v23);
}

void OUTLINED_FUNCTION_4_42()
{

  JUMPOUT(0x25F89F6C0);
}

uint64_t OUTLINED_FUNCTION_5_39()
{

  return outlined destroy of (offset: Int, element: SearchResult)(v2 - 128, v0, v1);
}

uint64_t OUTLINED_FUNCTION_9_37@<X0>(uint64_t a1@<X8>)
{
  v6 = (v1 + a1);
  v8 = *v6;
  v7 = v6[1];
  *(v4 - 104) = v2;
  *(v4 - 96) = v3;
  *(v4 - 128) = v8;
  *(v4 - 120) = v7;
}

uint64_t OUTLINED_FUNCTION_10_33@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v4 - 112) = a2;
  *(v4 - 104) = a1;
  *(v4 - 88) = v3;
  *(v4 - 80) = v2;
}

uint64_t KGDocument.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t KGDocument.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for KGDocument(0) + 20);

  return outlined init with copy of URL?(v3, a1);
}

uint64_t type metadata accessor for KGDocument(uint64_t a1)
{
  result = type metadata singleton initialization cache for KGDocument;
  if (!type metadata singleton initialization cache for KGDocument)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t KGDocument.url.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_5_40() + 20);

  return outlined assign with take of URL?(v0, v2);
}

uint64_t outlined assign with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t KGDocument.description.getter()
{
  type metadata accessor for KGDocument(0);
  OUTLINED_FUNCTION_60_5();
  return OUTLINED_FUNCTION_94();
}

uint64_t KGDocument.description.setter()
{
  OUTLINED_FUNCTION_4_43();
  result = OUTLINED_FUNCTION_12_34();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t KGDocument.title.getter()
{
  type metadata accessor for KGDocument(0);
  OUTLINED_FUNCTION_60_5();
  return OUTLINED_FUNCTION_94();
}

uint64_t KGDocument.title.setter()
{
  OUTLINED_FUNCTION_4_43();
  result = OUTLINED_FUNCTION_12_34();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t KGDocument.subtitle.getter()
{
  type metadata accessor for KGDocument(0);
  OUTLINED_FUNCTION_60_5();
  return OUTLINED_FUNCTION_94();
}

uint64_t KGDocument.subtitle.setter()
{
  OUTLINED_FUNCTION_4_43();
  result = OUTLINED_FUNCTION_12_34();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t KGDocument.thumbnail.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for KGDocument(0) + 36);

  return outlined init with copy of URL?(v3, a1);
}

uint64_t KGDocument.thumbnail.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_5_40() + 36);

  return outlined assign with take of URL?(v0, v2);
}

uint64_t KGDocument.attributionTitle.getter()
{
  type metadata accessor for KGDocument(0);
  OUTLINED_FUNCTION_60_5();
  return OUTLINED_FUNCTION_94();
}

uint64_t KGDocument.attributionTitle.setter()
{
  OUTLINED_FUNCTION_4_43();
  result = OUTLINED_FUNCTION_12_34();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t KGDocument.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7107189 && a2 == 0xE300000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x69616E626D756874 && a2 == 0xE90000000000006CLL;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000010 && 0x800000025DBF6C10 == a2)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t KGDocument.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 7107189;
      break;
    case 2:
      result = 0x7470697263736564;
      break;
    case 3:
      result = 0x656C746974;
      break;
    case 4:
      result = 0x656C746974627573;
      break;
    case 5:
      result = 0x69616E626D756874;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance KGDocument.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = KGDocument.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KGDocument.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KGDocument.CodingKeys and conformance KGDocument.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KGDocument.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KGDocument.CodingKeys and conformance KGDocument.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KGDocument.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch10KGDocumentV10CodingKeys33_5D8BF095CA54FF65E32E890E185824DBLLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch10KGDocumentV10CodingKeys33_5D8BF095CA54FF65E32E890E185824DBLLOGMR);
  OUTLINED_FUNCTION_14();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KGDocument.CodingKeys and conformance KGDocument.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v24 = 0;
  OUTLINED_FUNCTION_24_12();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for KGDocument(0);
    v12 = v11[5];
    v23 = 1;
    type metadata accessor for URL();
    OUTLINED_FUNCTION_1_62();
    lazy protocol witness table accessor for type URL and conformance URL(v13, v14, MEMORY[0x277CC9268]);
    OUTLINED_FUNCTION_7_38(v3 + v12);
    OUTLINED_FUNCTION_9_38(v11[6]);
    v22 = 2;
    OUTLINED_FUNCTION_24_12();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_9_38(v11[7]);
    v21 = 3;
    OUTLINED_FUNCTION_24_12();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_9_38(v11[8]);
    v20 = 4;
    OUTLINED_FUNCTION_24_12();
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v11[9];
    v19 = 5;
    OUTLINED_FUNCTION_7_38(v3 + v15);
    OUTLINED_FUNCTION_9_38(v11[10]);
    v18 = 6;
    OUTLINED_FUNCTION_24_12();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t lazy protocol witness table accessor for type KGDocument.CodingKeys and conformance KGDocument.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KGDocument.CodingKeys and conformance KGDocument.CodingKeys;
  if (!lazy protocol witness table cache variable for type KGDocument.CodingKeys and conformance KGDocument.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KGDocument.CodingKeys and conformance KGDocument.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KGDocument.CodingKeys and conformance KGDocument.CodingKeys;
  if (!lazy protocol witness table cache variable for type KGDocument.CodingKeys and conformance KGDocument.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KGDocument.CodingKeys and conformance KGDocument.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KGDocument.CodingKeys and conformance KGDocument.CodingKeys;
  if (!lazy protocol witness table cache variable for type KGDocument.CodingKeys and conformance KGDocument.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KGDocument.CodingKeys and conformance KGDocument.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KGDocument.CodingKeys and conformance KGDocument.CodingKeys;
  if (!lazy protocol witness table cache variable for type KGDocument.CodingKeys and conformance KGDocument.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KGDocument.CodingKeys and conformance KGDocument.CodingKeys);
  }

  return result;
}

uint64_t KGDocument.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v42 - v7;
  v42[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch10KGDocumentV10CodingKeys33_5D8BF095CA54FF65E32E890E185824DBLLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch10KGDocumentV10CodingKeys33_5D8BF095CA54FF65E32E890E185824DBLLOGMR);
  OUTLINED_FUNCTION_14();
  v42[1] = v9;
  MEMORY[0x28223BE20](v10);
  v12 = v42 - v11;
  v13 = type metadata accessor for KGDocument(0);
  MEMORY[0x28223BE20](v13);
  v15 = (v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v16 + 20);
  v18 = type metadata accessor for URL();
  v46 = v17;
  __swift_storeEnumTagSinglePayload(v15 + v17, 1, 1, v18);
  v19 = v13;
  v45 = *(v13 + 36);
  __swift_storeEnumTagSinglePayload(v15 + v45, 1, 1, v18);
  v20 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  lazy protocol witness table accessor for type KGDocument.CodingKeys and conformance KGDocument.CodingKeys();
  v42[2] = v12;
  v21 = v43;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    outlined destroy of URL?(v15 + v46);
    return outlined destroy of URL?(v15 + v45);
  }

  else
  {
    v43 = v5;
    v53 = 0;
    *v15 = KeyedDecodingContainer.decode(_:forKey:)();
    v15[1] = v22;
    v52 = 1;
    OUTLINED_FUNCTION_1_62();
    lazy protocol witness table accessor for type URL and conformance URL(v23, v24, MEMORY[0x277CC9280]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of URL?(v8, v15 + v46);
    v51 = 2;
    OUTLINED_FUNCTION_10_34();
    v25 = KeyedDecodingContainer.decode(_:forKey:)();
    v26 = (v15 + v19[6]);
    *v26 = v25;
    v26[1] = v27;
    v50 = 3;
    OUTLINED_FUNCTION_10_34();
    v28 = KeyedDecodingContainer.decode(_:forKey:)();
    v29 = (v15 + v19[7]);
    *v29 = v28;
    v29[1] = v30;
    v49 = 4;
    OUTLINED_FUNCTION_10_34();
    v31 = KeyedDecodingContainer.decode(_:forKey:)();
    v32 = (v15 + v19[8]);
    *v32 = v31;
    v32[1] = v33;
    v48 = 5;
    v34 = v43;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of URL?(v34, v15 + v45);
    v47 = 6;
    OUTLINED_FUNCTION_10_34();
    v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v37 = v36;
    v38 = (v15 + v19[10]);
    v39 = OUTLINED_FUNCTION_11_37();
    v40(v39);
    *v38 = v35;
    v38[1] = v37;
    outlined init with copy of KGDocument(v15, v42[0]);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    return outlined destroy of KGDocument(v15);
  }
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of KGDocument(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KGDocument(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of KGDocument(uint64_t a1)
{
  v2 = type metadata accessor for KGDocument(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t KGDocument.init(id:url:description:title:subtitle:thumbnail:attributionTitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *a9 = a1;
  a9[1] = a2;
  v20 = type metadata accessor for KGDocument(0);
  outlined init with take of URL?(a3, a9 + v20[5]);
  v21 = (a9 + v20[6]);
  *v21 = a4;
  v21[1] = a5;
  v22 = (a9 + v20[7]);
  *v22 = a6;
  v22[1] = a7;
  v23 = (a9 + v20[8]);
  *v23 = a8;
  v23[1] = a10;
  result = outlined init with take of URL?(a11, a9 + v20[9]);
  v25 = (a9 + v20[10]);
  *v25 = a12;
  v25[1] = a13;
  return result;
}

uint64_t instantiation function for generic protocol witness table for KGDocument(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type KGDocument and conformance KGDocument, type metadata accessor for KGDocument, &protocol conformance descriptor for KGDocument);
  a1[2] = lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type KGDocument and conformance KGDocument, type metadata accessor for KGDocument, &protocol conformance descriptor for KGDocument);
  result = lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type KGDocument and conformance KGDocument, type metadata accessor for KGDocument, &protocol conformance descriptor for KGDocument);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata completion function for KGDocument(uint64_t a1)
{
  type metadata accessor for URL?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for URL?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for URL?)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for URL?);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for KGDocument.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_43()
{

  return type metadata accessor for KGDocument(0);
}

uint64_t OUTLINED_FUNCTION_5_40()
{

  return type metadata accessor for KGDocument(0);
}

uint64_t OUTLINED_FUNCTION_7_38(uint64_t a1)
{

  return KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_12_34()
{
}

uint64_t WebAnswer.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WebAnswer.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t WebAnswer.answer.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t WebAnswer.answer.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t WebAnswer.attributionTitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t WebAnswer.attributionTitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t WebAnswer.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WebAnswer(0) + 28);

  return outlined init with copy of URL?(v3, a1);
}

uint64_t type metadata accessor for WebAnswer(uint64_t a1)
{
  result = type metadata singleton initialization cache for WebAnswer;
  if (!type metadata singleton initialization cache for WebAnswer)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WebAnswer.url.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for WebAnswer(0) + 28);

  return outlined assign with take of URL?(a1, v3);
}

uint64_t WebAnswer.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726577736E61 && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x800000025DBF6C10 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 7107189 && a2 == 0xE300000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t WebAnswer.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x726577736E61;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WebAnswer.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WebAnswer.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WebAnswer.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WebAnswer.CodingKeys and conformance WebAnswer.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WebAnswer.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WebAnswer.CodingKeys and conformance WebAnswer.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WebAnswer.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch9WebAnswerV10CodingKeys33_5770C31ABE43736A7338B017808BB504LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch9WebAnswerV10CodingKeys33_5770C31ABE43736A7338B017808BB504LLOGMR);
  OUTLINED_FUNCTION_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WebAnswer.CodingKeys and conformance WebAnswer.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[15] = 0;
  OUTLINED_FUNCTION_2_47();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v12[14] = 1;
    OUTLINED_FUNCTION_2_47();
    KeyedEncodingContainer.encode(_:forKey:)();
    v12[13] = 2;
    OUTLINED_FUNCTION_2_47();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    type metadata accessor for WebAnswer(0);
    v12[12] = 3;
    type metadata accessor for URL();
    OUTLINED_FUNCTION_1_63();
    _s10Foundation3URLVACSEAAWlTm_0(v9, v10, MEMORY[0x277CC9268]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t lazy protocol witness table accessor for type WebAnswer.CodingKeys and conformance WebAnswer.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WebAnswer.CodingKeys and conformance WebAnswer.CodingKeys;
  if (!lazy protocol witness table cache variable for type WebAnswer.CodingKeys and conformance WebAnswer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WebAnswer.CodingKeys and conformance WebAnswer.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WebAnswer.CodingKeys and conformance WebAnswer.CodingKeys;
  if (!lazy protocol witness table cache variable for type WebAnswer.CodingKeys and conformance WebAnswer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WebAnswer.CodingKeys and conformance WebAnswer.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WebAnswer.CodingKeys and conformance WebAnswer.CodingKeys;
  if (!lazy protocol witness table cache variable for type WebAnswer.CodingKeys and conformance WebAnswer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WebAnswer.CodingKeys and conformance WebAnswer.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WebAnswer.CodingKeys and conformance WebAnswer.CodingKeys;
  if (!lazy protocol witness table cache variable for type WebAnswer.CodingKeys and conformance WebAnswer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WebAnswer.CodingKeys and conformance WebAnswer.CodingKeys);
  }

  return result;
}

uint64_t WebAnswer.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v23 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch9WebAnswerV10CodingKeys33_5770C31ABE43736A7338B017808BB504LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch9WebAnswerV10CodingKeys33_5770C31ABE43736A7338B017808BB504LLOGMR);
  OUTLINED_FUNCTION_14();
  v26 = v8;
  v27 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = type metadata accessor for WebAnswer(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v12 + 36);
  v14 = type metadata accessor for URL();
  v28 = v13;
  __swift_storeEnumTagSinglePayload(v11 + v13, 1, 1, v14);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WebAnswer.CodingKeys and conformance WebAnswer.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return outlined destroy of URL?(v11 + v28);
  }

  else
  {
    v23[2] = v14;
    v24 = v6;
    v32 = 0;
    *v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v11[1] = v15;
    v31 = 1;
    v11[2] = KeyedDecodingContainer.decode(_:forKey:)();
    v11[3] = v16;
    v30 = 2;
    v11[4] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v11[5] = v17;
    v23[1] = v17;
    v29 = 3;
    OUTLINED_FUNCTION_1_63();
    _s10Foundation3URLVACSEAAWlTm_0(v18, v19, MEMORY[0x277CC9280]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v20 = OUTLINED_FUNCTION_0_63();
    v21(v20);
    outlined assign with take of URL?(v24, v11 + v28);
    outlined init with copy of WebAnswer(v11, v25);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return outlined destroy of WebAnswer(v11);
  }
}

uint64_t outlined init with copy of WebAnswer(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebAnswer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of WebAnswer(uint64_t a1)
{
  v2 = type metadata accessor for WebAnswer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WebAnswer.init(id:answer:attributionTitle:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  v9 = a8 + *(type metadata accessor for WebAnswer(0) + 28);

  return outlined init with take of URL?(a7, v9);
}

uint64_t instantiation function for generic protocol witness table for WebAnswer(void *a1)
{
  a1[1] = _s10Foundation3URLVACSEAAWlTm_0(&lazy protocol witness table cache variable for type WebAnswer and conformance WebAnswer, type metadata accessor for WebAnswer, &protocol conformance descriptor for WebAnswer);
  a1[2] = _s10Foundation3URLVACSEAAWlTm_0(&lazy protocol witness table cache variable for type WebAnswer and conformance WebAnswer, type metadata accessor for WebAnswer, &protocol conformance descriptor for WebAnswer);
  result = _s10Foundation3URLVACSEAAWlTm_0(&lazy protocol witness table cache variable for type WebAnswer and conformance WebAnswer, type metadata accessor for WebAnswer, &protocol conformance descriptor for WebAnswer);
  a1[3] = result;
  return result;
}

uint64_t _s10Foundation3URLVACSEAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata completion function for WebAnswer(uint64_t a1)
{
  type metadata accessor for String?();
  if (v1 <= 0x3F)
  {
    type metadata accessor for URL?(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for WebAnswer.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t WebImage.init(id:url:title:description:altText:surroundingText:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *a9 = a1;
  a9[1] = a2;
  v18 = type metadata accessor for WebImage(0);
  result = outlined init with take of URL?(a3, a9 + v18[5]);
  v20 = (a9 + v18[6]);
  *v20 = a4;
  v20[1] = a5;
  v21 = (a9 + v18[7]);
  *v21 = a6;
  v21[1] = a7;
  v22 = (a9 + v18[8]);
  *v22 = a8;
  v22[1] = a10;
  v23 = (a9 + v18[9]);
  *v23 = a11;
  v23[1] = a12;
  return result;
}

uint64_t type metadata accessor for WebImage(uint64_t a1)
{
  result = type metadata singleton initialization cache for WebImage;
  if (!type metadata singleton initialization cache for WebImage)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WebImage.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WebImage(0) + 20);

  return outlined init with copy of URL?(v3, a1);
}

uint64_t WebImage.title.getter()
{
  type metadata accessor for WebImage(0);
  OUTLINED_FUNCTION_60_5();
  return OUTLINED_FUNCTION_94();
}

uint64_t WebImage.description.getter()
{
  type metadata accessor for WebImage(0);
  OUTLINED_FUNCTION_60_5();
  return OUTLINED_FUNCTION_94();
}

uint64_t WebImage.altText.getter()
{
  type metadata accessor for WebImage(0);
  OUTLINED_FUNCTION_60_5();
  return OUTLINED_FUNCTION_94();
}

uint64_t WebImage.surroundingText.getter()
{
  type metadata accessor for WebImage(0);
  OUTLINED_FUNCTION_60_5();
  return OUTLINED_FUNCTION_94();
}

uint64_t WebImage.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7107189 && a2 == 0xE300000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x74786554746C61 && a2 == 0xE700000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x646E756F72727573 && a2 == 0xEF74786554676E69)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t WebImage.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 7107189;
      break;
    case 2:
      result = 0x656C746974;
      break;
    case 3:
      result = 0x7470697263736564;
      break;
    case 4:
      result = 0x74786554746C61;
      break;
    case 5:
      result = 0x646E756F72727573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WebImage.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WebImage.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WebImage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WebImage.CodingKeys and conformance WebImage.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WebImage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WebImage.CodingKeys and conformance WebImage.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WebImage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch8WebImageV10CodingKeys33_A95FE5439FB9E4958D5BDC2E3560F45CLLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch8WebImageV10CodingKeys33_A95FE5439FB9E4958D5BDC2E3560F45CLLOGMR);
  OUTLINED_FUNCTION_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WebImage.CodingKeys and conformance WebImage.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13[15] = 0;
  OUTLINED_FUNCTION_24_12();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v9 = type metadata accessor for WebImage(0);
    v13[14] = 1;
    type metadata accessor for URL();
    OUTLINED_FUNCTION_2_48();
    _s10Foundation3URLVACSEAAWlTm_1(v10, v11, MEMORY[0x277CC9268]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_9_38(v9[6]);
    v13[13] = 2;
    OUTLINED_FUNCTION_24_12();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_9_38(v9[7]);
    v13[12] = 3;
    OUTLINED_FUNCTION_24_12();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_9_38(v9[8]);
    v13[11] = 4;
    OUTLINED_FUNCTION_24_12();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_9_38(v9[9]);
    v13[10] = 5;
    OUTLINED_FUNCTION_24_12();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t lazy protocol witness table accessor for type WebImage.CodingKeys and conformance WebImage.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WebImage.CodingKeys and conformance WebImage.CodingKeys;
  if (!lazy protocol witness table cache variable for type WebImage.CodingKeys and conformance WebImage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WebImage.CodingKeys and conformance WebImage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WebImage.CodingKeys and conformance WebImage.CodingKeys;
  if (!lazy protocol witness table cache variable for type WebImage.CodingKeys and conformance WebImage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WebImage.CodingKeys and conformance WebImage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WebImage.CodingKeys and conformance WebImage.CodingKeys;
  if (!lazy protocol witness table cache variable for type WebImage.CodingKeys and conformance WebImage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WebImage.CodingKeys and conformance WebImage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WebImage.CodingKeys and conformance WebImage.CodingKeys;
  if (!lazy protocol witness table cache variable for type WebImage.CodingKeys and conformance WebImage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WebImage.CodingKeys and conformance WebImage.CodingKeys);
  }

  return result;
}

uint64_t WebImage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v36 - v6;
  v36[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch8WebImageV10CodingKeys33_A95FE5439FB9E4958D5BDC2E3560F45CLLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch8WebImageV10CodingKeys33_A95FE5439FB9E4958D5BDC2E3560F45CLLOGMR);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v8);
  v37 = type metadata accessor for WebImage(0);
  MEMORY[0x28223BE20](v37);
  v38 = (v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WebImage.CodingKeys and conformance WebImage.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v36[0] = a2;
  v44 = 0;
  OUTLINED_FUNCTION_3_48();
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v38;
  *v38 = v10;
  v11[1] = v12;
  type metadata accessor for URL();
  v43 = 1;
  OUTLINED_FUNCTION_2_48();
  _s10Foundation3URLVACSEAAWlTm_1(v13, v14, MEMORY[0x277CC9280]);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v15 = v11;
  v16 = v37;
  outlined init with take of URL?(v7, v15 + *(v37 + 20));
  v42 = 2;
  OUTLINED_FUNCTION_3_48();
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v18 = v38;
  v19 = (v38 + v16[6]);
  *v19 = v17;
  v19[1] = v20;
  v41 = 3;
  OUTLINED_FUNCTION_3_48();
  v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v22 = (v18 + v16[7]);
  *v22 = v21;
  v22[1] = v23;
  v40 = 4;
  v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v25 = (v18 + v16[8]);
  *v25 = v24;
  v25[1] = v26;
  v39 = 5;
  OUTLINED_FUNCTION_3_48();
  v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v29 = v28;
  v30 = OUTLINED_FUNCTION_49_13();
  v31(v30);
  v32 = v16[9];
  v33 = v38;
  v34 = (v38 + v32);
  *v34 = v27;
  v34[1] = v29;
  outlined init with copy of WebImage(v33, v36[0]);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return outlined destroy of WebImage(v33);
}

uint64_t outlined init with copy of WebImage(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebImage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of WebImage(uint64_t a1)
{
  v2 = type metadata accessor for WebImage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for WebImage(void *a1)
{
  a1[1] = _s10Foundation3URLVACSEAAWlTm_1(&lazy protocol witness table cache variable for type WebImage and conformance WebImage, type metadata accessor for WebImage, &protocol conformance descriptor for WebImage);
  a1[2] = _s10Foundation3URLVACSEAAWlTm_1(&lazy protocol witness table cache variable for type WebImage and conformance WebImage, type metadata accessor for WebImage, &protocol conformance descriptor for WebImage);
  result = _s10Foundation3URLVACSEAAWlTm_1(&lazy protocol witness table cache variable for type WebImage and conformance WebImage, type metadata accessor for WebImage, &protocol conformance descriptor for WebImage);
  a1[3] = result;
  return result;
}

uint64_t _s10Foundation3URLVACSEAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata completion function for WebImage(uint64_t a1)
{
  type metadata accessor for URL?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for WebImage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t *BundleIdEventSourceIdMapping.dict.unsafeMutableAddressor()
{
  if (one-time initialization token for dict != -1)
  {
    OUTLINED_FUNCTION_4_44(&one-time initialization token for dict);
  }

  return &static BundleIdEventSourceIdMapping.dict;
}

unint64_t String.oms_bundleIdIs3P.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    lazy protocol witness table accessor for type String and conformance String();
    lazy protocol witness table accessor for type String and conformance String();
    LOBYTE(v2) = BidirectionalCollection<>.starts<A>(with:)() ^ 1;
  }

  return v2 & 1;
}

uint64_t one-time initialization function for dict()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBC8180;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x800000025DBF1CF0;
  *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 56) = v1;
  result = Dictionary.init(dictionaryLiteral:)();
  static BundleIdEventSourceIdMapping.dict = result;
  return result;
}

uint64_t static BundleIdEventSourceIdMapping.dict.getter()
{
  if (one-time initialization token for dict != -1)
  {
    OUTLINED_FUNCTION_4_44(&one-time initialization token for dict);
  }
}

_BYTE *storeEnumTagSinglePayload for BundleId(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_44(uint64_t a1)
{

  return swift_once();
}

void __swiftcall EventSourceInfo.init(from:)(OmniSearch::EventSourceInfo_optional *__return_ptr retstr, CSSearchableItem from)
{
  v5 = type metadata accessor for UTType();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &off_2799EF000;
  v11 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.eventMessageIdentifier.getter([(objc_class *)from.super.isa attributeSet], &selRef_eventSourceBundleIdentifier);
  v13 = v12;
  if (!v12)
  {

    v14 = 0;
    goto LABEL_10;
  }

  v14 = v11;
  v15 = outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(from.super.isa);
  v17 = v16;
  if (!v16)
  {

    OUTLINED_FUNCTION_2_50();
    goto LABEL_12;
  }

  v33 = v6;
  v2 = 0xD000000000000013;
  if (v15 == 0xD00000000000001ALL && v16 == 0x800000025DBEE6C0)
  {

LABEL_16:
    v23 = v14 == 0xD000000000000014 && 0x800000025DBF1CF0 == v13;
    if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v24 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.eventMessageIdentifier.getter([(objc_class *)from.super.isa attributeSet], &selRef_mailMessageID);
      v20 = v25;
      if (v25)
      {
        v17 = v24;
        static UTType.emailMessage.getter();
        v26 = MEMORY[0x277CC32E8];
LABEL_23:
        v32[1] = v26;
        v10 = UTType.identifier.getter();
        v2 = v27;
        (*(v33 + 8))(v9, v5);
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v28;

        v35[0] = v14;
        v35[1] = v13;
        v35[2] = v10;
        v35[3] = v2;
        v35[4] = v17;
        v35[5] = v20;
        v35[6] = v21;
        v35[7] = v22;
        v36[0] = v14;
        v36[1] = v13;
        v36[2] = v10;
        v36[3] = v2;
        v36[4] = v17;
        v36[5] = v20;
        v36[6] = v21;
        v36[7] = v22;
        outlined init with copy of EventSourceInfo(v35, v34);
        outlined destroy of EventSourceInfo(v36);
        goto LABEL_14;
      }
    }

    else
    {
      v29 = v14 == 0xD000000000000013 && 0x800000025DBF1D10 == v13;
      if (!v29 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_8;
      }

      v30 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.eventMessageIdentifier.getter([(objc_class *)from.super.isa attributeSet], &selRef_eventMessageIdentifier);
      v20 = v31;
      if (v31)
      {
        v17 = v30;
        static UTType.message.getter();
        v26 = MEMORY[0x277CC2418];
        goto LABEL_23;
      }
    }

    OUTLINED_FUNCTION_2_50();
    v17 = 0;
    goto LABEL_13;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
    goto LABEL_16;
  }

LABEL_8:

  v14 = 0;
  v13 = 0;
LABEL_10:
  v10 = 0;
  v2 = 0;
  v17 = 0;
LABEL_12:
  v20 = 0;
LABEL_13:
  v21 = 0;
  v22 = 0;
LABEL_14:
  retstr->value.bundleId._countAndFlagsBits = v14;
  retstr->value.bundleId._object = v13;
  retstr->value.contentType._countAndFlagsBits = v10;
  retstr->value.contentType._object = v2;
  retstr->value.eventIdentifier._countAndFlagsBits = v17;
  retstr->value.eventIdentifier._object = v20;
  retstr->value.identifierKey._countAndFlagsBits = v21;
  retstr->value.identifierKey._object = v22;
}

Swift::Bool __swiftcall EventSourceInfo.isExtractedFromSource(_:)(CSSearchableItem a1)
{
  v3 = [(objc_class *)a1.super.isa attributeSet];
  v4 = MEMORY[0x25F89F4C0](v1[6], v1[7]);
  v5 = [v3 attributeForKey_];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21[0] = v19;
  v21[1] = v20;
  if (!*(&v20 + 1))
  {
    outlined destroy of Any?(v21);
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v10 = 0;
    return v10 & 1;
  }

  v6 = outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(a1.super.isa);
  if (!v7)
  {
LABEL_12:

    goto LABEL_14;
  }

  if (v6 == *v1 && v7 == v1[1])
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  if (v17 == v1[4] && v18 == v1[5])
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v14 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.contentType.getter([(objc_class *)a1.super.isa attributeSet]);
  if (!v15)
  {
    goto LABEL_14;
  }

  if (v14 == v1[2] && v15 == v1[3])
  {

    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t EventSourceInfo.queryString.getter()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_65();
  MEMORY[0x25F89F6C0](*v0, *(v0 + 8));
  v1 = v19;
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0);
  v3 = v2;
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  if (v5 >= v4 >> 1)
  {
    OUTLINED_FUNCTION_0_65(v4);
    v3 = v14;
  }

  *(v3 + 16) = v5 + 1;
  *(v3 + 16 * v5 + 32) = v1;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_65();
  MEMORY[0x25F89F6C0](*(v0 + 16), *(v0 + 24));
  v6 = v19;
  v8 = *(v3 + 16);
  v7 = *(v3 + 24);
  if (v8 >= v7 >> 1)
  {
    OUTLINED_FUNCTION_0_65(v7);
    v3 = v15;
  }

  *(v3 + 16) = v8 + 1;
  *(v3 + 16 * v8 + 32) = v6;
  v18 = *(v0 + 48);
  v19 = v18;
  outlined init with copy of String(&v19, &v17);
  MEMORY[0x25F89F6C0](572538144, 0xE400000000000000);
  MEMORY[0x25F89F6C0](*(v0 + 32), *(v0 + 40));
  MEMORY[0x25F89F6C0](34, 0xE100000000000000);
  v9 = v18;
  v11 = *(v3 + 16);
  v10 = *(v3 + 24);
  if (v11 >= v10 >> 1)
  {
    OUTLINED_FUNCTION_0_65(v10);
    v3 = v16;
  }

  *(v3 + 16) = v11 + 1;
  *(v3 + 16 * v11 + 32) = v9;
  *&v18 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v12 = BidirectionalCollection<>.joined(separator:)();

  return v12;
}

uint64_t outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.eventMessageIdentifier.getter(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

void OUTLINED_FUNCTION_0_65(unint64_t a1@<X8>)
{

  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1 > 1);
}

void OUTLINED_FUNCTION_1_65()
{

  JUMPOUT(0x25F89F6C0);
}

uint64_t static LocalIndexClient.displayName(for:)(uint64_t a1, uint64_t a2)
{
  v3 = Dictionary.init(dictionaryLiteral:)();
  if (a2)
  {
    v4 = OUTLINED_FUNCTION_72_2();
    specialized Dictionary.subscript.getter(v4, v5, v3);
    v7 = v6;

    if (!v7)
    {
    }

    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for LSBundleRecord, 0x277CC1E90);

    v8 = OUTLINED_FUNCTION_30_5();
    v10 = @nonobjc LSBundleRecord.__allocating_init(bundleIdentifier:allowPlaceholder:)(v8, v9, 0);

    v11 = [v10 localizedName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
  }

  return OUTLINED_FUNCTION_72_2();
}

uint64_t *LocalIndexClient.keyAttributeAppEntityTitle.unsafeMutableAddressor()
{
  if (one-time initialization token for keyAttributeAppEntityTitle != -1)
  {
    OUTLINED_FUNCTION_27_22(&one-time initialization token for keyAttributeAppEntityTitle);
  }

  return &static LocalIndexClient.keyAttributeAppEntityTitle;
}

uint64_t static LocalIndexClient.iWorkBundleIdForFile(item:)(void *a1)
{
  outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter([a1 attributeSet], &selRef_bundleID);
  if (!v2)
  {
LABEL_7:
    outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter([a1 attributeSet], &selRef_bundleID);
    if (!v8)
    {
      return OUTLINED_FUNCTION_45_0();
    }

    OUTLINED_FUNCTION_148_8();
    if (v11 != 0xD000000000000023 || v9 != v10)
    {
      v13 = OUTLINED_FUNCTION_171_5();

      if ((v13 & 1) == 0)
      {
        return OUTLINED_FUNCTION_45_0();
      }

      goto LABEL_15;
    }

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_148_8();
  v6 = v5 == 0xD00000000000002BLL && v3 == v4;
  if (!v6)
  {
    v7 = OUTLINED_FUNCTION_171_5();

    if (v7)
    {
      goto LABEL_15;
    }

    goto LABEL_7;
  }

LABEL_14:

LABEL_15:
  CSSearchableItem.associatedAppEntityTypeId.getter();
  if (v14)
  {
    v15 = v14;
    v16 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter([a1 attributeSet], &selRef_contentType);
    if (v17)
    {
      v18 = v16;
      v19 = v17;
      OUTLINED_FUNCTION_120_8();
      v21 = v6 && v20 == v15;
      if (v21 || (OUTLINED_FUNCTION_82_14()) && ((OUTLINED_FUNCTION_198_4(), v6) ? (v23 = v22 == v19) : (v23 = 0), v23 || (OUTLINED_FUNCTION_163_6()) || ((OUTLINED_FUNCTION_120_8(), v6) ? (v25 = v24 == v15) : (v25 = 0), (v25 || (OUTLINED_FUNCTION_82_14()) && (v18 == 0xD000000000000022 ? (v26 = 0x800000025DBF6DF0 == v19) : (v26 = 0), v26 || (OUTLINED_FUNCTION_163_6())) || ((OUTLINED_FUNCTION_120_8(), v6) ? (v28 = v27 == v15) : (v28 = 0), (v28 || (OUTLINED_FUNCTION_82_14()) && ((OUTLINED_FUNCTION_198_4(), v6) ? (v30 = v29 == v19) : (v30 = 0), v30 || (OUTLINED_FUNCTION_163_6())))
      {
        v31 = one-time initialization token for search;

        if (v31 != -1)
        {
          OUTLINED_FUNCTION_1_31();
          swift_once();
        }

        v32 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_200(v32, static Logging.search);

        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = OUTLINED_FUNCTION_49_0();
          OUTLINED_FUNCTION_88_2();
          *v35 = 136315650;
          OUTLINED_FUNCTION_45_0();
          v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

          *(v35 + 4) = v36;
          *(v35 + 12) = 2080;
          v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

          *(v35 + 14) = v37;
          *(v35 + 22) = 2080;
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
          OUTLINED_FUNCTION_227_2();
          *(v35 + 24) = v15;
          _os_log_impl(&dword_25D85C000, v33, v34, "Replaced bundle ID to %s for AppEntity of type %s and content type %s.", v35, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_42_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {
        }
      }

      else
      {
        if (one-time initialization token for search != -1)
        {
          OUTLINED_FUNCTION_1_31();
          swift_once();
        }

        v39 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_200(v39, static Logging.search);

        v33 = Logger.logObject.getter();
        v40 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v33, v40))
        {
          v41 = swift_slowAlloc();
          swift_slowAlloc();
          *v41 = 136315394;
          v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

          *(v41 + 4) = v42;
          *(v41 + 12) = 2080;
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
          OUTLINED_FUNCTION_227_2();
          *(v41 + 14) = v15;
          _os_log_impl(&dword_25D85C000, v33, v40, "Unexpected AppEntity type %s and content type %s found in Files index.", v41, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_42_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {
        }
      }
    }

    else
    {
    }
  }

  return OUTLINED_FUNCTION_45_0();
}

void EmailDocument.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v184 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMd, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMR);
  OUTLINED_FUNCTION_114(v26);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_49_3();
  v183 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  OUTLINED_FUNCTION_114(v29);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_49_3();
  v182 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  OUTLINED_FUNCTION_114(v32);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_49_3();
  v181 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  OUTLINED_FUNCTION_114(v35);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_49_3();
  v180 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  v39 = OUTLINED_FUNCTION_114(v38);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_39_0();
  v179 = v40;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v41);
  v43 = &v160 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  v45 = OUTLINED_FUNCTION_114(v44);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_39_0();
  v178 = v46;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_14_2();
  v186 = v48;
  OUTLINED_FUNCTION_78_0();
  v49 = type metadata accessor for Date();
  OUTLINED_FUNCTION_14();
  v51 = v50;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_36();
  v55 = v54 - v53;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v57 = OUTLINED_FUNCTION_114(v56);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_39_0();
  v177 = v58;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_78_16();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_14_2();
  v185 = v61;
  v62 = [v24 uniqueIdentifier];
  v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_137_4(v63);
  v176 = v64;

  v65 = [v24 attributeSet];
  v66 = [v65 attributeForKey_];

  if (v66)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_44_21();
  }

  OUTLINED_FUNCTION_16_31();
  if (v67)
  {
    OUTLINED_FUNCTION_49_18();
    v68 = swift_dynamicCast();
    if (v68)
    {
      v69 = v188;
      v175 = v187;
      goto LABEL_9;
    }
  }

  else
  {
    v68 = outlined destroy of IntentApplication?(&v189, &_sypSgMd, &_sypSgMR);
  }

  v175 = 0;
  v69 = 0xE000000000000000;
LABEL_9:
  v174 = v69;
  v173 = CSSearchableItem.oms_emailSubject.getter(v68);
  v172 = v70;
  v160 = CSSearchableItem.oms_emailBody.getter(v173);
  v170 = v71;
  v72 = OUTLINED_FUNCTION_93_13();
  v73 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.authorNames.getter(v72);
  v74 = OUTLINED_FUNCTION_77_14(v73, &a12);
  v75 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.authorEmailAddresses.getter(v74);
  v76 = OUTLINED_FUNCTION_77_14(v75, &a9);
  v77 = [v76 attributeForKey_];

  if (v77)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_44_21();
  }

  OUTLINED_FUNCTION_16_31();
  if (v78)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_49_18();
    if (swift_dynamicCast())
    {
      v79 = v187;
      goto LABEL_17;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(&v189, &_sypSgMd, &_sypSgMR);
  }

  v79 = MEMORY[0x277D84F90];
LABEL_17:
  v169 = v79;
  v80 = OUTLINED_FUNCTION_93_13();
  v81 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.authorAddresses.getter(v80, &selRef_recipientEmailAddresses);
  v82 = OUTLINED_FUNCTION_77_14(v81, &v193);
  v83 = [v82 mailDateReceived];

  if (v83)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v84 = *(v51 + 32);
    v84(v20, v55, v49);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v85, v86, v87, v49);
    v84(v185, v20, v49);
  }

  else
  {
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v88, v89, v90, v49);
    static Date.now.getter();
    OUTLINED_FUNCTION_166(v20, 1, v49);
    if (!v112)
    {
      outlined destroy of IntentApplication?(v20, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  v91 = 1;
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v92, v93, v94, v49);
  v95 = OUTLINED_FUNCTION_93_13();
  v96 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.attachmentNames.getter(v95);
  v97 = OUTLINED_FUNCTION_77_14(v96, &v192);
  v98 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.attachmentTypes.getter(v97);
  v99 = OUTLINED_FUNCTION_77_14(v98, &v191);
  v100 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.attachmentPaths.getter(v99);
  v101 = OUTLINED_FUNCTION_77_14(v100, &v190);
  v102 = [v101 mailRead];

  if (v102)
  {
    v103 = [v102 BOOLValue];

    v91 = v103 ^ 1;
  }

  v104 = outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(v24);
  if (v105)
  {
    v106 = v104 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v106 = 0;
  }

  if (v105)
  {
    v107 = v105;
  }

  else
  {
    v107 = 0xE000000000000000;
  }

  v108 = HIBYTE(v107) & 0xF;
  if ((v107 & 0x2000000000000000) == 0)
  {
    v108 = v106;
  }

  if (v108)
  {
    outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(v24);
    if (!v109)
    {
      v114 = 1;
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_117_11();
    v112 = v112 && v110 == v111;
    if (!v112)
    {
      v113 = OUTLINED_FUNCTION_169_7();

      v114 = v113 ^ 1;
LABEL_39:
      v161 = v114;
      goto LABEL_42;
    }
  }

  v161 = 0;
LABEL_42:
  v115 = type metadata accessor for DataDetectorResults();
  OUTLINED_FUNCTION_10_24(v186, v116, v117, v115);
  v118 = type metadata accessor for PartialExtractedAttributes();
  OUTLINED_FUNCTION_10_24(v43, v119, v120, v118);
  type metadata accessor for FeatureFlagService();
  v162 = swift_allocObject();
  v121 = one-time initialization token for search;
  v122 = v24;
  if (v121 != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v123 = type metadata accessor for Logger();
  __swift_project_value_buffer(v123, static Logging.search);
  v124 = v122;
  v125 = Logger.logObject.getter();
  v126 = static os_log_type_t.info.getter();

  v127 = os_log_type_enabled(v125, v126);
  v166 = v91;
  v128 = v43;
  if (v127)
  {
    v129 = OUTLINED_FUNCTION_51_0();
    v130 = OUTLINED_FUNCTION_49_0();
    v189 = v130;
    *v129 = 136315138;
    v131 = [v124 attributeSet];
    CSSearchableItemAttributeSet.keyStrings.getter();
    v133 = v132;

    MEMORY[0x25F89F8A0](v133, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_67_8();

    OUTLINED_FUNCTION_88_10();
    v134 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v129 + 4) = v134;
    _os_log_impl(&dword_25D85C000, v125, v126, "EmailDocument: parsing attribute keys: %s", v129, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v130);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  v135 = v124;
  v136 = Logger.logObject.getter();
  v137 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v136, v137))
  {
    v138 = OUTLINED_FUNCTION_51_0();
    v139 = OUTLINED_FUNCTION_49_0();
    v189 = v139;
    *v138 = 136642819;
    v140 = [v135 attributeSet];
    CSSearchableItemAttributeSet.kvStrings.getter();
    v142 = v141;

    v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
    MEMORY[0x25F89F8A0](v142, v143);

    OUTLINED_FUNCTION_88_10();
    v144 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v138 + 4) = v144;
    _os_log_impl(&dword_25D85C000, v136, v137, "EmailDocument: parsing attributes: %{sensitive}s", v138, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v139);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  else
  {
  }

  v145 = v170;
  if (v170)
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSJ_Tt0g5();
    String.oms_trimCharacters(_:)(v146, v160, v145);
    v170 = v147;
    v160 = v148;
  }

  else
  {
    v170 = 0;
    v160 = 0;
  }

  v161 &= 1u;
  OUTLINED_FUNCTION_54_20();
  v163 = v149;
  OUTLINED_FUNCTION_54_20();
  v164 = v150;
  OUTLINED_FUNCTION_54_20();
  v165 = v151;
  OUTLINED_FUNCTION_54_20();
  v167 = v152;
  OUTLINED_FUNCTION_54_20();
  v168 = v154;
  if (v171)
  {
    v153 = v171;
  }

  v171 = v153;
  outlined init with copy of EagerResolutionService?();
  outlined init with copy of EagerResolutionService?();
  outlined init with copy of EagerResolutionService?();
  v155 = v135;
  v156 = v162;

  PreExtractedCard.init(item:featureFlagService:)(v155, v156, v180);
  v157 = v155;

  PreExtractedContact.init(item:featureFlagService:)(v157, v156, v181);
  v158 = v157;
  PreExtractedSharedLink.init(item:)(v158, v182);
  v159 = v158;

  PreExtractedBreadcrumb.init(item:featureFlagService:)(v159, v156);
  OUTLINED_FUNCTION_180_5();
  EmailDocument.init(id:mailMessageId:subject:body:authorNames:from:to:cc:date:attachmentNames:attachmentTypes:attachmentPaths:unread:hydratable:instantAnswerDescription:dataDetectorResults:extractedEventsLLMConsumableDescription:partialExtractedAttributes:preExtractedCard:preExtractedContact:preExtractedSharedLink:preExtractedBreadcrumb:)();

  outlined destroy of IntentApplication?(v128, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  outlined destroy of IntentApplication?(v186, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  outlined destroy of IntentApplication?(v185, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_148();
}

uint64_t specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)()
{
  OUTLINED_FUNCTION_134();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v2 = swift_allocError();
  *v3 = v0;

  return MEMORY[0x282200958](v1, v2);
}

uint64_t specialized _resumeUnsafeThrowingContinuation<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return MEMORY[0x282200950]();
}

void static LocalIndexClient.searchResultFromItem(_:spotlightRankingItem:eventSourceItemsMap:allowedTypes:locale:)()
{
  OUTLINED_FUNCTION_155();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v183 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  v12 = OUTLINED_FUNCTION_114(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_109();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v166 - v17;
  type metadata accessor for SpotlightRankingItem();
  OUTLINED_FUNCTION_14();
  v177 = v20;
  v178 = v19;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_39_0();
  v168 = v21;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_14_2();
  v167 = v23;
  v24 = OUTLINED_FUNCTION_78_0();
  v182 = type metadata accessor for SearchResult(v24);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_39_0();
  v175 = v26;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_14_2();
  v172 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v30 = OUTLINED_FUNCTION_114(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_39_0();
  v173 = v31;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_7_4();
  v174 = v33;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_7_4();
  v169 = v35;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_14_2();
  v171 = v37;
  v38 = OUTLINED_FUNCTION_78_0();
  v176 = type metadata accessor for SearchResultItem(v38);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_67_12();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_14_2();
  v170 = v41;
  OUTLINED_FUNCTION_78_0();
  type metadata accessor for FileDocument();
  OUTLINED_FUNCTION_14();
  v180 = v42;
  v181 = v43;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_51_12();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_14_2();
  v179 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_114(v46);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v47);
  v54 = &v166 - v53;
  if (*(v3 + 16))
  {
    v166 = v7;
    v55 = OUTLINED_FUNCTION_175_6();
    v56 = [v55 contentURL];

    if (!v56)
    {
      type metadata accessor for URL();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v75, v76, v77, v78);
      outlined destroy of IntentApplication?(v54, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      goto LABEL_23;
    }

    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for URL();
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
    outlined destroy of IntentApplication?(v54, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v61 = OUTLINED_FUNCTION_175_6();
    v62 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter(v61, &selRef_bundleID);
    v64 = v181;
    if (v63)
    {
      v65 = v62 == 0xD00000000000002BLL && v63 == 0x800000025DBF1DB0;
      if (v65)
      {
LABEL_20:

        goto LABEL_21;
      }

      _stringCompareWithSmolCheck(_:_:expecting:)();
      OUTLINED_FUNCTION_175_3();
      if (v55)
      {
LABEL_21:
        CSSearchableItem.associatedAppEntityId.getter();
        if (!v79)
        {
          v121 = [v9 uniqueIdentifier];
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          OUTLINED_FUNCTION_114_7();

          v122 = v9;
          v123 = v179;
          OUTLINED_FUNCTION_34_11();
          v174 = v124;
          FileDocument.init(id:item:)();
          if (one-time initialization token for search != -1)
          {
            OUTLINED_FUNCTION_1_31();
            swift_once();
          }

          v125 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_200(v125, static Logging.search);
          v126 = *(v64 + 16);
          v127 = v180;
          v126(v0, v123, v180);
          v128 = Logger.logObject.getter();
          v129 = static os_log_type_t.debug.getter();
          v130 = os_log_type_enabled(v128, v129);
          v131 = v170;
          if (v130)
          {
            OUTLINED_FUNCTION_51_0();
            v132 = OUTLINED_FUNCTION_94_10();
            v173 = v126;
            v133 = v132;
            v184 = v132;
            *v127 = 136642819;
            specialized Encodable.oms_jsonPrettyPrinted()();
            v175 = *(v64 + 8);
            (v175)(v0, v180);
            v134 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

            *(v127 + 4) = v134;
            OUTLINED_FUNCTION_217_4(&dword_25D85C000, v135, v136, "File SearchResult found: %{sensitive}s");
            __swift_destroy_boxed_opaque_existential_1Tm(v133);
            v126 = v173;
            OUTLINED_FUNCTION_42_0();
            v127 = v180;
            OUTLINED_FUNCTION_42_0();
          }

          else
          {

            v175 = *(v64 + 8);
            (v175)(v0, v127);
          }

          v93 = v178;
          v126(v131, v179, v127);
          swift_storeEnumTagMultiPayload();
          v141 = v177;
          v142 = v131;
          v143 = v171;
          v144 = OUTLINED_FUNCTION_94();
          v145(v144);
          OUTLINED_FUNCTION_26_21();
          __swift_storeEnumTagSinglePayload(v146, v147, v148, v149);
          v100 = v182;
          v101 = v172;
          *&v172[*(v182 + 28)] = MEMORY[0x277D84F90];
          OUTLINED_FUNCTION_2_51(&v101[*(v100 + 40)]);
          _s10OmniSearch0B10ResultItemOWOcTm_3();
          type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
          lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
          v150 = v174;
          OUTLINED_FUNCTION_47_11();
          CodableNSSecureCoding.init(wrappedValue:)();
          v151 = v169;
          outlined init with copy of EagerResolutionService?();
          OUTLINED_FUNCTION_28_16(v151);
          if (!v65)
          {
            outlined destroy of IntentApplication?(v143, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
            OUTLINED_FUNCTION_3_35();
            _s10OmniSearch0B10ResultItemOWOhTm_8(v142, v161);
            v162 = OUTLINED_FUNCTION_197_6();
            v163(v162);
            v138 = *(v141 + 32);
            v139 = v167;
            v140 = OUTLINED_FUNCTION_26_2();
            goto LABEL_51;
          }

          OUTLINED_FUNCTION_33_13();
          outlined destroy of IntentApplication?(v152, v153, v154);
          OUTLINED_FUNCTION_97_7();
          OUTLINED_FUNCTION_97_7();
          OUTLINED_FUNCTION_97_7();
          OUTLINED_FUNCTION_97_7();
          OUTLINED_FUNCTION_97_7();
          LOBYTE(v184) = 1;
          OUTLINED_FUNCTION_17_32();
          OUTLINED_FUNCTION_19_18();
          OUTLINED_FUNCTION_33_13();
          outlined destroy of IntentApplication?(v155, v156, v157);
          OUTLINED_FUNCTION_3_35();
          _s10OmniSearch0B10ResultItemOWOhTm_8(v142, v158);
          v159 = OUTLINED_FUNCTION_197_6();
          v160(v159);
LABEL_52:
          v164 = v183;
          v165 = OUTLINED_FUNCTION_109_14();
          outlined init with take of SearchResult(v165, v164);
          OUTLINED_FUNCTION_44_0();
          v120 = v100;
LABEL_53:
          __swift_storeEnumTagSinglePayload(v117, v118, v119, v120);
          goto LABEL_54;
        }

LABEL_23:
        v80 = CSSearchableItem.associatedAppEntityId.getter();
        if (v81)
        {
          v82 = v80;
          v83 = v81;
          CSSearchableItem.associatedAppEntityTypeId.getter();
          if (v84)
          {
            OUTLINED_FUNCTION_212_3();
            v85 = outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(v9);
            if (v86)
            {
              v87 = v85;
            }

            else
            {
              v87 = 0;
            }

            if (v86)
            {
              v88 = v86;
            }

            else
            {
              v88 = 0xE000000000000000;
            }

            v89 = static LocalIndexClient.iWorkBundleIdForFile(item:)(v9);
            if (v90)
            {
              v91 = v89;
              v92 = v90;

              v87 = v91;
              v88 = v92;
            }

            *v1 = v82;
            v1[1] = v83;
            v1[2] = v87;
            v1[3] = v88;
            v1[4] = v9;
            v1[5] = v54;
            v1[6] = 0;
            v1[7] = 0;
            swift_storeEnumTagMultiPayload();
            v94 = v177;
            v93 = v178;
            v95 = v174;
            (*(v177 + 16))(v174, v166, v178);
            OUTLINED_FUNCTION_26_21();
            __swift_storeEnumTagSinglePayload(v96, v97, v98, v99);
            v100 = v182;
            v101 = v175;
            *&v175[*(v182 + 28)] = MEMORY[0x277D84F90];
            OUTLINED_FUNCTION_2_51(&v101[*(v100 + 40)]);
            _s10OmniSearch0B10ResultItemOWOcTm_3();
            type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
            lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
            v102 = v9;
            OUTLINED_FUNCTION_47_11();
            v103 = v95;
            CodableNSSecureCoding.init(wrappedValue:)();
            v104 = v173;
            outlined init with copy of EagerResolutionService?();
            OUTLINED_FUNCTION_28_16(v104);
            if (!v65)
            {
              outlined destroy of IntentApplication?(v103, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
              OUTLINED_FUNCTION_3_35();
              _s10OmniSearch0B10ResultItemOWOhTm_8(v1, v137);
              v138 = *(v94 + 32);
              v139 = v168;
              v140 = OUTLINED_FUNCTION_100_4();
LABEL_51:
              v138(v140);
              (v138)(&v101[*(v100 + 20)], v139, v93);
              goto LABEL_52;
            }

            OUTLINED_FUNCTION_33_13();
            outlined destroy of IntentApplication?(v105, v106, v107);
            OUTLINED_FUNCTION_27_16();
            OUTLINED_FUNCTION_27_16();
            OUTLINED_FUNCTION_27_16();
            OUTLINED_FUNCTION_27_16();
            OUTLINED_FUNCTION_27_16();
            LOBYTE(v184) = v108;
            OUTLINED_FUNCTION_10_35();
            OUTLINED_FUNCTION_19_18();
            OUTLINED_FUNCTION_33_13();
            outlined destroy of IntentApplication?(v109, v110, v111);
            OUTLINED_FUNCTION_3_35();
            _s10OmniSearch0B10ResultItemOWOhTm_8(v1, v112);
            goto LABEL_52;
          }
        }

        if (one-time initialization token for search != -1)
        {
          OUTLINED_FUNCTION_1_31();
          swift_once();
        }

        v113 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_200(v113, static Logging.search);
        v114 = Logger.logObject.getter();
        v115 = static os_log_type_t.error.getter();
        if (OUTLINED_FUNCTION_91_0(v115))
        {
          v116 = OUTLINED_FUNCTION_172();
          *v116 = 0;
          _os_log_impl(&dword_25D85C000, v114, v115, "Item found, but missing required fields for associated AppEntity or FileDocument", v116, 2u);
          OUTLINED_FUNCTION_2_8();
        }

        OUTLINED_FUNCTION_92();
        goto LABEL_53;
      }
    }

    v66 = OUTLINED_FUNCTION_175_6();
    outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter(v66, &selRef_bundleID);
    if (!v67)
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_117_11();
    if (!v65 || v68 != v69)
    {
      OUTLINED_FUNCTION_169_7();
      OUTLINED_FUNCTION_175_3();
      if ((v55 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }

    goto LABEL_20;
  }

  static LocalIndexClient.handleSelectItemsByContentType(_:spotlightRankingItem:eventSourceItemsMap:)(v18, v9, v7, v48, v49, v50, v51, v52, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177);
  if (v71 & 1) != 0 || (v72 = static LocalIndexClient.handleSelectFirstPartyItems(_:spotlightRankingItem:eventSourceItemsMap:)(v15, v9, v7, v5), v73 = OUTLINED_FUNCTION_52_1(), outlined destroy of IntentApplication?(v73, v74, &_s10OmniSearch0B6ResultVSgMR), outlined init with take of (Int, SearchCATEntity)(), (v72))
  {
    outlined init with take of (Int, SearchCATEntity)();
  }

  else
  {
    static LocalIndexClient.genericSearchResult(_:spotlightRankingItem:eventSourceItemsMap:)();
    outlined destroy of IntentApplication?(v18, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  }

LABEL_54:
  OUTLINED_FUNCTION_148();
}

uint64_t *LocalIndexClient.keyAttributeAppEntityInstanceIdentifier.unsafeMutableAddressor()
{
  if (one-time initialization token for keyAttributeAppEntityInstanceIdentifier != -1)
  {
    OUTLINED_FUNCTION_80_12(&one-time initialization token for keyAttributeAppEntityInstanceIdentifier);
  }

  return &static LocalIndexClient.keyAttributeAppEntityInstanceIdentifier;
}

uint64_t *LocalIndexClient.keyAttributeAppEntityTypeDisplayRepresentationName.unsafeMutableAddressor()
{
  if (one-time initialization token for keyAttributeAppEntityTypeDisplayRepresentationName != -1)
  {
    OUTLINED_FUNCTION_79_13(&one-time initialization token for keyAttributeAppEntityTypeDisplayRepresentationName);
  }

  return &static LocalIndexClient.keyAttributeAppEntityTypeDisplayRepresentationName;
}

uint64_t one-time initialization function for keyAttributeAppEntityInstanceIdentifier(uint64_t a1, unsigned int *a2, void *a3, void *a4)
{
  v8 = type metadata accessor for SpotlightKeys();
  OUTLINED_FUNCTION_14();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_36();
  v14 = v13 - v12;
  (*(v10 + 104))(v13 - v12, *a2, v8);
  SpotlightKeys.description.getter();
  OUTLINED_FUNCTION_212_3();
  result = (*(v10 + 8))(v14, v8);
  *a3 = v14;
  *a4 = v4;
  return result;
}

uint64_t *LocalIndexClient.keyAttributeAppEntityTypeIdentifier.unsafeMutableAddressor()
{
  if (one-time initialization token for keyAttributeAppEntityTypeIdentifier != -1)
  {
    OUTLINED_FUNCTION_21_27();
    swift_once();
  }

  return &static LocalIndexClient.keyAttributeAppEntityTypeIdentifier;
}

uint64_t static LocalIndexClient.keyAttributeAppEntityInstanceIdentifier.getter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return OUTLINED_FUNCTION_107();
}

uint64_t one-time initialization function for fetchAttributes()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25DBE27B0;
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v1;
  *(v0 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 56) = v2;
  *(v0 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 72) = v3;
  *(v0 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 88) = v4;
  *(v0 + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 104) = v5;
  *(v0 + 112) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 120) = v6;
  *(v0 + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 136) = v7;
  *(v0 + 144) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 152) = v8;
  *(v0 + 160) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 168) = v9;
  *(v0 + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 184) = v10;
  *(v0 + 192) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 200) = v11;
  *(v0 + 208) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 216) = v12;
  *(v0 + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 232) = v13;
  *(v0 + 240) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 248) = v14;
  *(v0 + 256) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 264) = v15;
  *(v0 + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 280) = v16;
  *(v0 + 288) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 296) = v17;
  *(v0 + 304) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 312) = v18;
  *(v0 + 320) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 328) = v19;
  *(v0 + 336) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 344) = v20;
  *(v0 + 352) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 360) = v21;
  *(v0 + 368) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 376) = v22;
  *(v0 + 384) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 392) = v23;
  *(v0 + 400) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 408) = v24;
  *(v0 + 416) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 424) = v25;
  *(v0 + 432) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 440) = v26;
  *(v0 + 448) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 456) = v27;
  *(v0 + 464) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 472) = v28;
  *(v0 + 480) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 488) = v29;
  *(v0 + 496) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 504) = v30;
  *(v0 + 512) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 520) = v31;
  *(v0 + 528) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 536) = v32;
  *(v0 + 544) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 552) = v33;
  *(v0 + 560) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 568) = v34;
  *(v0 + 576) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 584) = v35;
  *(v0 + 592) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 600) = v36;
  *(v0 + 608) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 616) = v37;
  *(v0 + 624) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 632) = v38;
  *(v0 + 640) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 648) = v39;
  *(v0 + 656) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 664) = v40;
  *(v0 + 672) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 680) = v41;
  *(v0 + 688) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 696) = v42;
  *(v0 + 704) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 712) = v43;
  *(v0 + 720) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 728) = v44;
  *(v0 + 736) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 744) = v45;
  *(v0 + 752) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 760) = v46;
  *(v0 + 768) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 776) = v47;
  *(v0 + 784) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 792) = v48;
  *(v0 + 800) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 808) = v49;
  *(v0 + 816) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 824) = v50;
  *(v0 + 832) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 840) = v51;
  *(v0 + 848) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 856) = v52;
  *(v0 + 864) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 872) = v53;
  *(v0 + 880) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 888) = v54;
  *(v0 + 896) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 904) = v55;
  *(v0 + 912) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 920) = v56;
  *(v0 + 928) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 936) = v57;
  *(v0 + 944) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 952) = v58;
  *(v0 + 960) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 968) = v59;
  *(v0 + 976) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 984) = v60;
  *(v0 + 992) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1000) = v61;
  *(v0 + 1008) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1016) = v62;
  *(v0 + 1024) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1032) = v63;
  *(v0 + 1040) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1048) = v64;
  *(v0 + 1056) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1064) = v65;
  *(v0 + 1072) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1080) = v66;
  *(v0 + 1088) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1096) = v67;
  *(v0 + 1104) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1112) = v68;
  *(v0 + 1120) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1128) = v69;
  *(v0 + 1136) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1144) = v70;
  *(v0 + 1152) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1160) = v71;
  *(v0 + 1168) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1176) = v72;
  *(v0 + 1184) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1192) = v73;
  *(v0 + 1200) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1208) = v74;
  *(v0 + 1216) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1224) = v75;
  *(v0 + 1232) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1240) = v76;
  *(v0 + 1248) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1256) = v77;
  *(v0 + 1264) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1272) = v78;
  *(v0 + 1280) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1288) = v79;
  *(v0 + 1296) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1304) = v80;
  *(v0 + 1312) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1320) = v81;
  *(v0 + 1328) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1336) = v82;
  *(v0 + 1344) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1352) = v83;
  *(v0 + 1360) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1368) = v84;
  *(v0 + 1376) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1384) = v85;
  *(v0 + 1392) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1400) = v86;
  *(v0 + 1408) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1416) = v87;
  *(v0 + 1424) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1432) = v88;
  *(v0 + 1440) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1448) = v89;
  *(v0 + 1456) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1464) = v90;
  *(v0 + 1472) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1480) = v91;
  *(v0 + 1488) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1496) = v92;
  *(v0 + 1504) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1512) = v93;
  *(v0 + 1520) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1528) = v94;
  *(v0 + 1536) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1544) = v95;
  *(v0 + 1552) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1560) = v96;
  *(v0 + 1568) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1576) = v97;
  *(v0 + 1584) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1592) = v98;
  *(v0 + 1600) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1608) = v99;
  *(v0 + 1616) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1624) = v100;
  *(v0 + 1632) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1640) = v101;
  *(v0 + 1648) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1656) = v102;
  *(v0 + 1664) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1672) = v103;
  *(v0 + 1680) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1688) = v104;
  *(v0 + 1696) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1704) = v105;
  *(v0 + 1712) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1720) = v106;
  *(v0 + 1728) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1736) = v107;
  *(v0 + 1744) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1752) = v108;
  *(v0 + 1760) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1768) = v109;
  *(v0 + 1776) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1784) = v110;
  *(v0 + 1792) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1800) = v111;
  *(v0 + 1808) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1816) = v112;
  *(v0 + 1824) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1832) = v113;
  *(v0 + 1840) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1848) = v114;
  *(v0 + 1856) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1864) = v115;
  *(v0 + 1872) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1880) = v116;
  *(v0 + 1888) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1896) = v117;
  *(v0 + 1904) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1912) = v118;
  *(v0 + 1920) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1928) = v119;
  *(v0 + 1936) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1944) = v120;
  *(v0 + 1952) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1960) = v121;
  *(v0 + 1968) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1976) = v122;
  *(v0 + 1984) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1992) = v123;
  *(v0 + 2000) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2008) = v124;
  *(v0 + 2016) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2024) = v125;
  *(v0 + 2032) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2040) = v126;
  *(v0 + 2048) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2056) = v127;
  *(v0 + 2064) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2072) = v128;
  *(v0 + 2080) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2088) = v129;
  *(v0 + 2096) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2104) = v130;
  *(v0 + 2112) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2120) = v131;
  *(v0 + 2128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2136) = v132;
  *(v0 + 2144) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2152) = v133;
  *(v0 + 2160) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2168) = v134;
  *(v0 + 2176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2184) = v135;
  *(v0 + 2192) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2200) = v136;
  *(v0 + 2208) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2216) = v137;
  *(v0 + 2224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2232) = v138;
  *(v0 + 2240) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2248) = v139;
  *(v0 + 2256) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2264) = v140;
  *(v0 + 2272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2280) = v141;
  *(v0 + 2288) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2296) = v142;
  *(v0 + 2304) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2312) = v143;
  *(v0 + 2320) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2328) = v144;
  *(v0 + 2336) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2344) = v145;
  *(v0 + 2352) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2360) = v146;
  *(v0 + 2368) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2376) = v147;
  *(v0 + 2384) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2392) = v148;
  *(v0 + 2400) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2408) = v149;
  *(v0 + 2416) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2424) = v150;
  *(v0 + 2432) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2440) = v151;
  *(v0 + 2448) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2456) = v152;
  *(v0 + 2464) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2472) = v153;
  *(v0 + 2480) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2488) = v154;
  *(v0 + 2496) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2504) = v155;
  *(v0 + 2512) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2520) = v156;
  *(v0 + 2528) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2536) = v157;
  *(v0 + 2544) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2552) = v158;
  *(v0 + 2560) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2568) = v159;
  *(v0 + 2576) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2584) = v160;
  *(v0 + 2592) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2600) = v161;
  *(v0 + 2608) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2616) = v162;
  *(v0 + 2624) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2632) = v163;
  *(v0 + 2640) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2648) = v164;
  *(v0 + 2656) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2664) = v165;
  *(v0 + 2672) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2680) = v166;
  *(v0 + 2688) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2696) = v167;
  *(v0 + 2704) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2712) = v168;
  *(v0 + 2720) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2728) = v169;
  *(v0 + 2736) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2744) = v170;
  *(v0 + 2752) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2760) = v171;
  *(v0 + 2768) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2776) = v172;
  *(v0 + 2784) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2792) = v173;
  *(v0 + 2800) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2808) = v174;
  *(v0 + 2816) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2824) = v175;
  *(v0 + 2832) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2840) = v176;
  *(v0 + 2848) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2856) = v177;
  *(v0 + 2864) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2872) = v178;
  *(v0 + 2880) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2888) = v179;
  *(v0 + 2896) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2904) = v180;
  *(v0 + 2912) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2920) = v181;
  *(v0 + 2928) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2936) = v182;
  *(v0 + 2944) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2952) = v183;
  *(v0 + 2960) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2968) = v184;
  *(v0 + 2976) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2984) = v185;
  *(v0 + 2992) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3000) = v186;
  *(v0 + 3008) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3016) = v187;
  *(v0 + 3024) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3032) = v188;
  *(v0 + 3040) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3048) = v189;
  *(v0 + 3056) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3064) = v190;
  *(v0 + 3072) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3080) = v191;
  *(v0 + 3088) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3096) = v192;
  *(v0 + 3104) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3112) = v193;
  *(v0 + 3120) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3128) = v194;
  *(v0 + 3136) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3144) = v195;
  *(v0 + 3152) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3160) = v196;
  *(v0 + 3168) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3176) = v197;
  *(v0 + 3184) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3192) = v198;
  *(v0 + 3200) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3208) = v199;
  *(v0 + 3216) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3224) = v200;
  *(v0 + 3232) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3240) = v201;
  *(v0 + 3248) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3256) = v202;
  *(v0 + 3264) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3272) = v203;
  *(v0 + 3280) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3288) = v204;
  *(v0 + 3296) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3304) = v205;
  *(v0 + 3312) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3320) = v206;
  *(v0 + 3328) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3336) = v207;
  if (one-time initialization token for keyAttributeAppEntityInstanceIdentifier != -1)
  {
    OUTLINED_FUNCTION_80_12(&one-time initialization token for keyAttributeAppEntityInstanceIdentifier);
  }

  v208 = *algn_27FCAFD08;
  *(v0 + 3344) = static LocalIndexClient.keyAttributeAppEntityInstanceIdentifier;
  *(v0 + 3352) = v208;
  v209 = one-time initialization token for keyAttributeAppEntityTitle;

  if (v209 != -1)
  {
    OUTLINED_FUNCTION_27_22(&one-time initialization token for keyAttributeAppEntityTitle);
  }

  v210 = *algn_27FCAFD18;
  *(v0 + 3360) = static LocalIndexClient.keyAttributeAppEntityTitle;
  *(v0 + 3368) = v210;
  v211 = one-time initialization token for keyAttributeAppEntityTypeDisplayRepresentationName;

  if (v211 != -1)
  {
    OUTLINED_FUNCTION_79_13(&one-time initialization token for keyAttributeAppEntityTypeDisplayRepresentationName);
  }

  v212 = *algn_27FCAFD28;
  *(v0 + 3376) = static LocalIndexClient.keyAttributeAppEntityTypeDisplayRepresentationName;
  *(v0 + 3384) = v212;
  v213 = one-time initialization token for keyAttributeAppEntityTypeIdentifier;

  if (v213 != -1)
  {
    OUTLINED_FUNCTION_21_27();
    swift_once();
  }

  v214 = *algn_27FCAFD38;
  *(v0 + 3392) = static LocalIndexClient.keyAttributeAppEntityTypeIdentifier;
  *(v0 + 3400) = v214;
  OUTLINED_FUNCTION_44_6();
  *(v0 + 3408) = 0xD000000000000020;
  *(v0 + 3416) = v215;
  OUTLINED_FUNCTION_44_6();
  *(v0 + 3424) = v216 | 5;
  *(v0 + 3432) = v217;
  *(v0 + 3440) = v216 | 9;
  *(v0 + 3448) = 0x800000025DBF6D30;
  OUTLINED_FUNCTION_44_6();
  *(v0 + 3456) = v218 - 2;
  *(v0 + 3464) = v219;
  OUTLINED_FUNCTION_44_6();
  *(v0 + 3472) = v220;
  *(v0 + 3480) = v221;
  *(v0 + 3488) = v220 - 5;
  OUTLINED_FUNCTION_44_6();
  *(v0 + 3496) = v222;
  *(v0 + 3504) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3512) = v223;
  *(v0 + 3520) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3528) = v224;
  *(v0 + 3536) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3544) = v225;
  *(v0 + 3552) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3560) = v226;
  *(v0 + 3568) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3576) = v227;
  *(v0 + 3584) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3592) = v228;
  *(v0 + 3600) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3608) = v229;
  *(v0 + 3616) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3624) = v230;
  *(v0 + 3632) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3640) = v231;
  *(v0 + 3648) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3656) = v232;
  *(v0 + 3664) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3672) = v233;
  *(v0 + 3680) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3688) = v234;
  *(v0 + 3696) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3704) = v235;
  *(v0 + 3712) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3720) = v236;
  *(v0 + 3728) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3736) = v237;
  *(v0 + 3744) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3752) = v238;
  *(v0 + 3760) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3768) = v239;
  *(v0 + 3776) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3784) = v240;
  *(v0 + 3792) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3800) = v241;
  static LocalIndexClient.fetchAttributes = v0;
}