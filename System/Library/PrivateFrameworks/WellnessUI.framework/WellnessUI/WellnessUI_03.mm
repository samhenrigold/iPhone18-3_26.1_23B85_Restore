uint64_t HeightQueryModel.createAppPunchout(url:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AppPunchout?(a1, v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of AppPunchout?(v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    URL.absoluteString.getter();
    AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t HeightQueryModel.getFormattedSymbolicString(value:unit:)(uint64_t a1, char a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v14 = type metadata accessor for SpeakableString();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  if ((a2 & 1) == 0)
  {
    outlined init with copy of AppPunchout?(a3, v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v19 = *(v15 + 48);
    if (v19(v13, 1, v14) == 1)
    {
      v20 = v13;
LABEL_6:
      outlined destroy of AppPunchout?(v20, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      return 0;
    }

    (*(v15 + 32))(v17, v13, v14);
    type metadata accessor for DialogPersonHeight.Builder();
    swift_allocObject();
    DialogPersonHeight.Builder.init()();
    dispatch thunk of DialogAbstractMeasurement.Builder.withValue(_:)();

    (*(v15 + 16))(v10, v17, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
    dispatch thunk of DialogAbstractMeasurement.Builder.withUnits(_:)();

    outlined destroy of AppPunchout?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    dispatch thunk of DialogAbstractMeasurement.Builder.build()();

    dispatch thunk of DialogPersonHeight.symbolic.getter();
    if (v19(v7, 1, v14) == 1)
    {
      (*(v15 + 8))(v17, v14);

      v20 = v7;
      goto LABEL_6;
    }

    v21 = SpeakableString.print.getter();

    v22 = *(v15 + 8);
    v22(v17, v14);
    v22(v7, v14);
    return v21;
  }

  return result;
}

unint64_t HeightQueryModel.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000011;
    v6 = 0x7953746867696568;
    if (a1 == 8)
    {
      v6 = 0xD000000000000011;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    if (a1 == 5)
    {
      v7 = 0xD000000000000016;
    }

    else
    {
      v7 = 0xD000000000000012;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x68636E7550707061;
    v2 = 0x686769654878616DLL;
    v3 = 0x68676965486E696DLL;
    if (a1 != 3)
    {
      v3 = 0x6562614C65746164;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x746867696568;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance HeightQueryModel.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized HeightQueryModel.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HeightQueryModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HeightQueryModel.CodingKeys and conformance HeightQueryModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HeightQueryModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HeightQueryModel.CodingKeys and conformance HeightQueryModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HeightQueryModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI16HeightQueryModelV10CodingKeys33_8DB72B3D4E3A92EFBA1D8F90CAB32716LLOGMd, "j.");
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type HeightQueryModel.CodingKeys and conformance HeightQueryModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for AppPunchout();
  _s10SnippetKit11AppPunchoutVACSEAAWlTm_7(&lazy protocol witness table cache variable for type AppPunchout and conformance AppPunchout, MEMORY[0x277D62880], MEMORY[0x277D62888]);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for HeightQueryModel(0);
    v8[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[11] = 4;
    type metadata accessor for SpeakableString();
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_7(&lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString, MEMORY[0x277D55C48], MEMORY[0x277D55C50]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v8[10] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[9] = 6;
    type metadata accessor for SnippetHeaderModel(0);
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_7(&lazy protocol witness table cache variable for type SnippetHeaderModel and conformance SnippetHeaderModel, type metadata accessor for SnippetHeaderModel, &protocol conformance descriptor for SnippetHeaderModel);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v8[8] = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[7] = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[6] = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type HeightQueryModel.CodingKeys and conformance HeightQueryModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type HeightQueryModel.CodingKeys and conformance HeightQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type HeightQueryModel.CodingKeys and conformance HeightQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeightQueryModel.CodingKeys and conformance HeightQueryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HeightQueryModel.CodingKeys and conformance HeightQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type HeightQueryModel.CodingKeys and conformance HeightQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeightQueryModel.CodingKeys and conformance HeightQueryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HeightQueryModel.CodingKeys and conformance HeightQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type HeightQueryModel.CodingKeys and conformance HeightQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeightQueryModel.CodingKeys and conformance HeightQueryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HeightQueryModel.CodingKeys and conformance HeightQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type HeightQueryModel.CodingKeys and conformance HeightQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeightQueryModel.CodingKeys and conformance HeightQueryModel.CodingKeys);
  }

  return result;
}

void HeightQueryModel.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v54 = &v53 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v53 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v55 = &v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI16HeightQueryModelV10CodingKeys33_8DB72B3D4E3A92EFBA1D8F90CAB32716LLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI16HeightQueryModelV10CodingKeys33_8DB72B3D4E3A92EFBA1D8F90CAB32716LLOGMR);
  v56 = *(v10 - 8);
  v57 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v53 - v11;
  Model = type metadata accessor for HeightQueryModel(0);
  MEMORY[0x28223BE20](Model);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AppPunchout();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = Model[8];
  v18 = type metadata accessor for SpeakableString();
  v19 = *(*(v18 - 8) + 56);
  v62 = v17;
  v19(&v15[v17], 1, 1, v18);
  v20 = Model[10];
  v21 = type metadata accessor for SnippetHeaderModel(0);
  v22 = *(*(v21 - 8) + 56);
  v61 = v20;
  v63 = v15;
  v22(&v15[v20], 1, 1, v21);
  v23 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  lazy protocol witness table accessor for type HeightQueryModel.CodingKeys and conformance HeightQueryModel.CodingKeys();
  v58 = v12;
  v24 = v59;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    v26 = v61;
    v25 = v62;
    __swift_destroy_boxed_opaque_existential_1(v60);
    v40 = v63;
    outlined destroy of AppPunchout?(v63, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    outlined destroy of AppPunchout?(v40 + v25, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    outlined destroy of AppPunchout?(v40 + v26, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  }

  else
  {
    v59 = v21;
    v73 = 0;
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_7(&lazy protocol witness table cache variable for type AppPunchout and conformance AppPunchout, MEMORY[0x277D62880], MEMORY[0x277D62890]);
    v27 = v55;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v28 = v61;
    v29 = v27;
    v30 = v63;
    outlined assign with take of AppPunchout?(v29, v63, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    v72 = 1;
    v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v32 = v30 + Model[5];
    *v32 = v31;
    *(v32 + 8) = v33 & 1;
    v71 = 2;
    v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v35 = v30 + Model[6];
    *v35 = v34;
    *(v35 + 8) = v36 & 1;
    v70 = 3;
    v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v38 = v30 + Model[7];
    *v38 = v37;
    *(v38 + 8) = v39 & 1;
    v69 = 4;
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_7(&lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString, MEMORY[0x277D55C48], MEMORY[0x277D55C60]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of AppPunchout?(v7, v30 + v62, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v68 = 5;
    *(v30 + Model[9]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v67 = 6;
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_7(&lazy protocol witness table cache variable for type SnippetHeaderModel and conformance SnippetHeaderModel, type metadata accessor for SnippetHeaderModel, &protocol conformance descriptor for SnippetHeaderModel);
    v41 = v54;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of AppPunchout?(v41, v30 + v28, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    v66 = 7;
    v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v59 = Model;
    v43 = &v63[Model[11]];
    *v43 = v42;
    v43[1] = v44;
    v65 = 8;
    v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v46 = &v63[*(v59 + 48)];
    *v46 = v45;
    v46[1] = v47;
    v64 = 9;
    v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v50 = v49;
    v51 = v63;
    v52 = &v63[Model[13]];
    (*(v56 + 8))(v58, v57);
    *v52 = v48;
    v52[1] = v50;
    outlined init with copy of HeightQueryModel(v51, v53);
    __swift_destroy_boxed_opaque_existential_1(v60);
    outlined destroy of HeightQueryModel(v51);
  }
}

uint64_t outlined init with copy of HeightQueryModel(uint64_t a1, uint64_t a2)
{
  Model = type metadata accessor for HeightQueryModel(0);
  (*(*(Model - 8) + 16))(a2, a1, Model);
  return a2;
}

uint64_t outlined destroy of HeightQueryModel(uint64_t a1)
{
  Model = type metadata accessor for HeightQueryModel(0);
  (*(*(Model - 8) + 8))(a1, Model);
  return a1;
}

uint64_t _s10SnippetKit11AppPunchoutVACSEAAWlTm_7(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata completion function for HeightQueryModel(uint64_t a1)
{
  _s10SnippetKit11AppPunchoutVSgMaTm_1(319, &lazy cache variable for type metadata for AppPunchout?, MEMORY[0x277D62880]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8]);
    if (v2 <= 0x3F)
    {
      _s10SnippetKit11AppPunchoutVSgMaTm_1(319, &lazy cache variable for type metadata for SpeakableString?, MEMORY[0x277D55C48]);
      if (v3 <= 0x3F)
      {
        _s10SnippetKit11AppPunchoutVSgMaTm_1(319, &lazy cache variable for type metadata for SnippetHeaderModel?, type metadata accessor for SnippetHeaderModel);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Double?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for HeightQueryModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HeightQueryModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized HeightQueryModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x686769654878616DLL && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x68676965486E696DLL && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6562614C65746164 && a2 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000273EB13F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB0F30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000273EB1410 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000273EB1430 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7953746867696568 && a2 == 0xEE0063696C6F626DLL)
  {

    return 9;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t SnippetHeaderView.init(headerModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SnippetHeaderView(0);
  v5 = *(v4 + 20);
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  swift_storeEnumTagMultiPayload();
  v6 = *(v4 + 24);
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
  swift_storeEnumTagMultiPayload();

  return outlined init with take of SnippetHeaderModel?(a1, a2);
}

uint64_t type metadata accessor for SnippetHeaderView(uint64_t a1)
{
  result = type metadata singleton initialization cache for SnippetHeaderView;
  if (!type metadata singleton initialization cache for SnippetHeaderView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SnippetHeaderView.colorScheme.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SnippetHeaderView(0);
  outlined init with copy of AppPunchout?(v1 + *(v10 + 20), v9, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t SnippetHeaderView.colorSchemeContrast.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SnippetHeaderView(0);
  outlined init with copy of AppPunchout?(v1 + *(v10 + 24), v9, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorSchemeContrast();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t SnippetHeaderView.isLightMode.getter(uint64_t (*a1)(void), void (*a2)(__n128), unsigned int *a3, uint64_t (*a4)(char *, char *))
{
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v17 - v13;
  a2(v12);
  (*(v8 + 104))(v10, *a3, v7);
  LOBYTE(a4) = a4(v14, v10);
  v15 = *(v8 + 8);
  v15(v10, v7);
  v15(v14, v7);
  return a4 & 1;
}

uint64_t SnippetHeaderView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v87 = a1;
  v86 = type metadata accessor for SashStandardView();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v83 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v84 = &v71 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v81 = &v71 - v7;
  v82 = type metadata accessor for Font.TextStyle();
  v80 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v79 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v9 - 8);
  v78 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Image.ResizingMode();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v71 - v16;
  v18 = type metadata accessor for SnippetHeaderModel(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v2;
  outlined init with copy of AppPunchout?(v2, v17, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    outlined destroy of AppPunchout?(v17, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    result = AnyView.init<A>(_:)();
    v23 = result;
  }

  else
  {
    outlined init with take of SnippetHeaderModel(v17, v21);
    v24 = &v21[*(v18 + 20)];
    v25 = *v24;
    v26 = v24[1];

    Image.init(fileName:)(v25, v26);
    v77 = v27;
    (*(v12 + 104))(v14, *MEMORY[0x277CE0FE8], v11);
    v72 = Image.resizable(capInsets:resizingMode:)();
    (*(v12 + 8))(v14, v11);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v28 = v105;
    LOBYTE(v26) = v106;
    v29 = v107;
    v30 = v108;
    v32 = v109;
    v31 = v110;
    v33 = *(v18 + 24);
    v76 = v21;
    v34 = &v21[v33];
    v35 = *(v34 + 1);
    v73 = *v34;
    v74 = v35;
    v36 = SnippetHeaderView.getCategoryColor(id:)(v73, v35);
    v104 = v26;
    v102 = v30;
    v92 = v72;
    v93 = v28;
    v94 = v26;
    *v95 = *v103;
    *&v95[3] = *&v103[3];
    v96 = v29;
    LOBYTE(v97) = v30;
    *(&v97 + 1) = *v101;
    HIDWORD(v97) = *&v101[3];
    v98 = v32;
    v99 = v31;
    v100 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _FrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    v75 = View.eraseToAnyView()();

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v37._countAndFlagsBits = 0;
    v37._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v37);
    v38._countAndFlagsBits = SpeakableString.print.getter();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v38);

    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v39);
    LocalizedStringKey.init(stringInterpolation:)();
    v40 = Text.init(_:tableName:bundle:comment:)();
    v42 = v41;
    v44 = v43;
    v45 = Text.bold()();
    v47 = v46;
    LOBYTE(v31) = v48;
    v78 = v49;
    outlined consume of Text.Storage(v40, v42, v44 & 1);

    v50 = v80;
    v51 = v79;
    v52 = v82;
    (*(v80 + 104))(v79, *MEMORY[0x277CE0A60], v82);
    v53 = *MEMORY[0x277CE0998];
    v54 = type metadata accessor for Font.Design();
    v55 = *(v54 - 8);
    v56 = v81;
    (*(v55 + 104))(v81, v53, v54);
    (*(v55 + 56))(v56, 0, 1, v54);
    static Font.system(_:design:weight:)();
    outlined destroy of AppPunchout?(v56, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
    (*(v50 + 8))(v51, v52);
    v57 = Text.font(_:)();
    v59 = v58;
    LOBYTE(v56) = v60;

    outlined consume of Text.Storage(v45, v47, v31 & 1);

    v92 = SnippetHeaderView.getCategoryColor(id:)(v73, v74);
    v61 = Text.foregroundStyle<A>(_:)();
    v63 = v62;
    LOBYTE(v51) = v64;
    v66 = v65;
    outlined consume of Text.Storage(v57, v59, v56 & 1);

    v92 = v61;
    v93 = v63;
    LOBYTE(v53) = v51 & 1;
    v94 = v51 & 1;
    v96 = v66;
    v67 = View.eraseToAnyView()();
    outlined consume of Text.Storage(v61, v63, v53);

    v96 = MEMORY[0x277CE11D0];
    v97 = MEMORY[0x277D63A58];
    v92 = v75;
    v91 = MEMORY[0x277D63A58];
    v90 = MEMORY[0x277CE11D0];
    v89 = v67;

    v68 = v84;
    SashStandardView.init(icon:title:showOnWatch:)();
    v69 = v85;
    v70 = v86;
    (*(v85 + 16))(v83, v68, v86);
    lazy protocol witness table accessor for type SashStandardView and conformance SashStandardView();
    v23 = AnyView.init<A>(_:)();

    (*(v69 + 8))(v68, v70);
    result = outlined destroy of SnippetHeaderModel(v76);
  }

  *v87 = v23;
  return result;
}

uint64_t SnippetHeaderView.getCategoryColor(id:)(void (*a1)(_BYTE *, uint64_t, uint64_t), uint64_t a2)
{
  v4 = type metadata accessor for Color.RGBColorSpace();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v192[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for ColorSchemeContrast();
  v9 = *(v8 - 8);
  v198 = v8;
  v199 = v9;
  MEMORY[0x28223BE20](v8);
  v196 = &v192[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v197 = &v192[-v12];
  v13 = type metadata accessor for ColorScheme();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v192[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v19 = &v192[-v18];
  v205 = v5;
  v206 = v4;
  v202 = &v192[-v18];
  v203 = v20;
  v204 = v16;
  if (a1 == 0xD000000000000021 && 0x8000000273EB1450 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD00000000000002FLL && 0x8000000273EB1480 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000028 && 0x8000000273EB14B0 == a2 || (v201 = 0xD000000000000028, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    SnippetHeaderView.colorScheme.getter(v19);
    v21 = *(v14 + 104);
    LODWORD(v201) = *MEMORY[0x277CDF3D8];
    v200 = v21;
    v21(v16);
    v22 = static ColorScheme.== infix(_:_:)();
    v23 = v16;
    v24 = v13;
    v25 = *(v14 + 8);
    v25(v23, v24);
    v25(v19, v24);
    if (v22)
    {
      v26 = v197;
      SnippetHeaderView.colorSchemeContrast.getter(v197);
      v28 = v198;
      v27 = v199;
      v29 = v196;
      (*(v199 + 104))(v196, *MEMORY[0x277CE0218], v198);
      v30 = static ColorScheme.== infix(_:_:)();
      v194 = (v14 + 8);
      v31 = *(v27 + 8);
      v31(v29, v28);
      v31(v26, v28);
      if (v30)
      {
        (*(v205 + 104))(v7, *MEMORY[0x277CE0ED8], v206);
        return Color.init(_:red:green:blue:opacity:)();
      }
    }

    v195 = v7;
    v32 = v202;
    SnippetHeaderView.colorScheme.getter(v202);
    v33 = v203;
    v34 = v204;
    v35 = v201;
    v36 = v200;
    v200(v204, v201, v203);
    v37 = static ColorScheme.== infix(_:_:)();
    v25(v34, v33);
    v25(v32, v33);
    if ((v37 & 1) == 0)
    {
      SnippetHeaderView.colorScheme.getter(v32);
      v36(v34, v35, v33);
      v38 = static ColorScheme.== infix(_:_:)();
      v25(v34, v33);
      v25(v32, v33);
      if ((v38 & 1) == 0)
      {
        v39 = v197;
        SnippetHeaderView.colorSchemeContrast.getter(v197);
        v40 = v198;
        v41 = v199;
        v42 = v196;
        (*(v199 + 104))(v196, *MEMORY[0x277CE0218], v198);
        static ColorScheme.== infix(_:_:)();
        v43 = *(v41 + 8);
        v43(v42, v40);
        v43(v39, v40);
      }
    }

LABEL_114:
    (*(v205 + 104))(v195, *MEMORY[0x277CE0ED8], v206);
    return Color.init(_:red:green:blue:opacity:)();
  }

  v195 = v7;
  if (a1 == 0xD00000000000002ELL && 0x8000000273EB14E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000021 && 0x8000000273EB10F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000027 && 0x8000000273EB1510 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD00000000000002ALL && 0x8000000273EB1150 == a2 || (v200 = 0xD00000000000002ALL, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || a1 == 0xD000000000000021 && 0x8000000273EB1540 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == v200 && 0x8000000273EB1570 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v200 = 0xD000000000000029, a1 == 0xD000000000000029) && 0x8000000273EB1120 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v194 = 0xD000000000000026, a1 == 0xD000000000000026) && 0x8000000273EB15A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == v200 && 0x8000000273EB1180 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == v194 && 0x8000000273EB15D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v200 = 0xD000000000000025, a1 == 0xD000000000000025) && 0x8000000273EB1600 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == v194 && 0x8000000273EB1630 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v44 = v19;
    SnippetHeaderView.colorScheme.getter(v19);
    v45 = *(v14 + 104);
    v46 = v204;
    LODWORD(v200) = *MEMORY[0x277CDF3D8];
    v201 = v45;
    v45(v204);
    v47 = static ColorScheme.== infix(_:_:)();
    v48 = v13;
    v49 = *(v14 + 8);
    v49(v46, v48);
    v194 = (v14 + 8);
    v49(v44, v48);
    if ((v47 & 1) == 0 || (v50 = v197, SnippetHeaderView.colorSchemeContrast.getter(v197), v51 = v198, v52 = v199, v53 = v196, (*(v199 + 104))(v196, *MEMORY[0x277CE0218], v198), v193 = static ColorScheme.== infix(_:_:)(), v54 = *(v52 + 8), v54(v53, v51), v54(v50, v51), (v193 & 1) == 0))
    {
      v55 = v202;
      SnippetHeaderView.colorScheme.getter(v202);
      v56 = v203;
      v57 = v204;
      v58 = v200;
      v201(v204, v200, v203);
      v59 = static ColorScheme.== infix(_:_:)();
      v49(v57, v56);
      v49(v55, v56);
      if ((v59 & 1) == 0)
      {
        SnippetHeaderView.colorScheme.getter(v55);
        v201(v57, v58, v56);
        v60 = static ColorScheme.== infix(_:_:)();
        v49(v57, v56);
        v49(v55, v56);
        if ((v60 & 1) == 0)
        {
          v61 = v197;
          SnippetHeaderView.colorSchemeContrast.getter(v197);
          v62 = v198;
          v63 = v199;
          v64 = v196;
          (*(v199 + 104))(v196, *MEMORY[0x277CE0218], v198);
          static ColorScheme.== infix(_:_:)();
          v65 = *(v63 + 8);
          v65(v64, v62);
          v65(v61, v62);
        }
      }
    }

    (*(v5 + 104))(v195, *MEMORY[0x277CE0ED8], v4);
    return Color.init(_:red:green:blue:opacity:)();
  }

  if (a1 == 0xD00000000000002CLL && 0x8000000273EB1660 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == v200 && 0x8000000273EB1690 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD00000000000002ELL && 0x8000000273EB16C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v66 = v202;
    SnippetHeaderView.colorScheme.getter(v202);
    v67 = *(v14 + 104);
    v68 = v203;
    v69 = v204;
    LODWORD(v201) = *MEMORY[0x277CDF3D8];
    v67(v204);
    v70 = static ColorScheme.== infix(_:_:)();
    v71 = *(v14 + 8);
    v71(v69, v68);
    v71(v66, v68);
    if ((v70 & 1) == 0 || (v72 = v197, SnippetHeaderView.colorSchemeContrast.getter(v197), v73 = v198, v74 = v199, v75 = v196, (*(v199 + 104))(v196, *MEMORY[0x277CE0218], v198), v76 = static ColorScheme.== infix(_:_:)(), v77 = *(v74 + 8), v77(v75, v73), v77(v72, v73), (v76 & 1) == 0))
    {
      v78 = v202;
      SnippetHeaderView.colorScheme.getter(v202);
      v80 = v203;
      v79 = v204;
      (v67)(v204, v201, v203);
      v81 = static ColorScheme.== infix(_:_:)();
      v71(v79, v80);
      v71(v78, v80);
      if ((v81 & 1) == 0)
      {
        v82 = v202;
        SnippetHeaderView.colorScheme.getter(v202);
        v83 = v203;
        v84 = v204;
        (v67)(v204, v201, v203);
        v85 = static ColorScheme.== infix(_:_:)();
        v71(v84, v83);
        v71(v82, v83);
        if ((v85 & 1) == 0)
        {
          v86 = v197;
          SnippetHeaderView.colorSchemeContrast.getter(v197);
          v88 = v198;
          v87 = v199;
          v89 = v196;
          (*(v199 + 104))(v196, *MEMORY[0x277CE0218], v198);
          static ColorScheme.== infix(_:_:)();
          v90 = *(v87 + 8);
          v90(v89, v88);
          v90(v86, v88);
        }
      }
    }

    goto LABEL_114;
  }

  if (a1 == 0xD00000000000001ELL && 0x8000000273EB16F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000020 && 0x8000000273EB1710 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v91 = v202;
    SnippetHeaderView.colorScheme.getter(v202);
    v92 = *(v14 + 104);
    v93 = v203;
    v94 = v204;
    LODWORD(v201) = *MEMORY[0x277CDF3D8];
    v92(v204);
    v95 = static ColorScheme.== infix(_:_:)();
    v96 = *(v14 + 8);
    v96(v94, v93);
    v96(v91, v93);
    if ((v95 & 1) == 0 || (v97 = v197, SnippetHeaderView.colorSchemeContrast.getter(v197), v98 = v198, v99 = v199, v100 = v196, (*(v199 + 104))(v196, *MEMORY[0x277CE0218], v198), v101 = static ColorScheme.== infix(_:_:)(), v102 = *(v99 + 8), v102(v100, v98), v102(v97, v98), (v101 & 1) == 0))
    {
      v103 = v202;
      SnippetHeaderView.colorScheme.getter(v202);
      v105 = v203;
      v104 = v204;
      (v92)(v204, v201, v203);
      v106 = static ColorScheme.== infix(_:_:)();
      v96(v104, v105);
      v96(v103, v105);
      if ((v106 & 1) == 0)
      {
        v107 = v202;
        SnippetHeaderView.colorScheme.getter(v202);
        v108 = v203;
        v109 = v204;
        (v92)(v204, v201, v203);
        v110 = static ColorScheme.== infix(_:_:)();
        v96(v109, v108);
        v96(v107, v108);
        if ((v110 & 1) == 0)
        {
          v111 = v197;
          SnippetHeaderView.colorSchemeContrast.getter(v197);
          v113 = v198;
          v112 = v199;
          v114 = v196;
          (*(v199 + 104))(v196, *MEMORY[0x277CE0218], v198);
          static ColorScheme.== infix(_:_:)();
          v115 = *(v112 + 8);
          v115(v114, v113);
          v115(v111, v113);
        }
      }
    }

    goto LABEL_114;
  }

  if (a1 == 0xD000000000000027 && 0x8000000273EB1740 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == v201 && 0x8000000273EB1770 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    goto LABEL_96;
  }

  if (a1 == 0xD000000000000024 && 0x8000000273EB17A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000027 && 0x8000000273EB17D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v141 = v202;
    SnippetHeaderView.colorScheme.getter(v202);
    v142 = *(v14 + 104);
    v143 = v203;
    v144 = v204;
    LODWORD(v201) = *MEMORY[0x277CDF3D8];
    v142(v204);
    v145 = static ColorScheme.== infix(_:_:)();
    v146 = *(v14 + 8);
    v146(v144, v143);
    v146(v141, v143);
    if ((v145 & 1) == 0 || (v147 = v197, SnippetHeaderView.colorSchemeContrast.getter(v197), v148 = v198, v149 = v199, v150 = v196, (*(v199 + 104))(v196, *MEMORY[0x277CE0218], v198), v151 = static ColorScheme.== infix(_:_:)(), v152 = *(v149 + 8), v152(v150, v148), v152(v147, v148), (v151 & 1) == 0))
    {
      v153 = v202;
      SnippetHeaderView.colorScheme.getter(v202);
      v155 = v203;
      v154 = v204;
      (v142)(v204, v201, v203);
      v156 = static ColorScheme.== infix(_:_:)();
      v146(v154, v155);
      v146(v153, v155);
      if ((v156 & 1) == 0)
      {
        v157 = v202;
        SnippetHeaderView.colorScheme.getter(v202);
        v158 = v203;
        v159 = v204;
        (v142)(v204, v201, v203);
        v160 = static ColorScheme.== infix(_:_:)();
        v146(v159, v158);
        v146(v157, v158);
        if ((v160 & 1) == 0)
        {
          v161 = v197;
          SnippetHeaderView.colorSchemeContrast.getter(v197);
          v163 = v198;
          v162 = v199;
          v164 = v196;
          (*(v199 + 104))(v196, *MEMORY[0x277CE0218], v198);
          static ColorScheme.== infix(_:_:)();
          v165 = *(v162 + 8);
          v165(v164, v163);
          v165(v161, v163);
        }
      }
    }

    goto LABEL_114;
  }

  if (a1 == 0xD000000000000036 && 0x8000000273EB1800 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
LABEL_96:
    v116 = v202;
    SnippetHeaderView.colorScheme.getter(v202);
    v117 = *(v14 + 104);
    v118 = v203;
    v119 = v204;
    LODWORD(v201) = *MEMORY[0x277CDF3D8];
    v117(v204);
    v120 = static ColorScheme.== infix(_:_:)();
    v121 = *(v14 + 8);
    v121(v119, v118);
    v121(v116, v118);
    if ((v120 & 1) == 0 || (v122 = v197, SnippetHeaderView.colorSchemeContrast.getter(v197), v123 = v198, v124 = v199, v125 = v196, (*(v199 + 104))(v196, *MEMORY[0x277CE0218], v198), v126 = static ColorScheme.== infix(_:_:)(), v127 = *(v124 + 8), v127(v125, v123), v127(v122, v123), (v126 & 1) == 0))
    {
      v128 = v202;
      SnippetHeaderView.colorScheme.getter(v202);
      v130 = v203;
      v129 = v204;
      (v117)(v204, v201, v203);
      v131 = static ColorScheme.== infix(_:_:)();
      v121(v129, v130);
      v121(v128, v130);
      if ((v131 & 1) == 0)
      {
        v132 = v202;
        SnippetHeaderView.colorScheme.getter(v202);
        v133 = v203;
        v134 = v204;
        (v117)(v204, v201, v203);
        v135 = static ColorScheme.== infix(_:_:)();
        v121(v134, v133);
        v121(v132, v133);
        if ((v135 & 1) == 0)
        {
          v136 = v197;
          SnippetHeaderView.colorSchemeContrast.getter(v197);
          v138 = v198;
          v137 = v199;
          v139 = v196;
          (*(v199 + 104))(v196, *MEMORY[0x277CE0218], v198);
          static ColorScheme.== infix(_:_:)();
          v140 = *(v137 + 8);
          v140(v139, v138);
          v140(v136, v138);
        }
      }
    }

    goto LABEL_114;
  }

  if (a1 == v200 && 0x8000000273EB1840 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v167 = v202;
    SnippetHeaderView.colorScheme.getter(v202);
    v168 = *(v14 + 104);
    v169 = v203;
    v170 = v204;
    LODWORD(v201) = *MEMORY[0x277CDF3D8];
    v168(v204);
    v171 = static ColorScheme.== infix(_:_:)();
    v172 = *(v14 + 8);
    v172(v170, v169);
    v172(v167, v169);
    if ((v171 & 1) == 0 || (v173 = v197, SnippetHeaderView.colorSchemeContrast.getter(v197), v174 = v198, v175 = v199, v176 = v196, (*(v199 + 104))(v196, *MEMORY[0x277CE0218], v198), v177 = static ColorScheme.== infix(_:_:)(), v178 = *(v175 + 8), v178(v176, v174), v178(v173, v174), (v177 & 1) == 0))
    {
      v179 = v202;
      SnippetHeaderView.colorScheme.getter(v202);
      v181 = v203;
      v180 = v204;
      (v168)(v204, v201, v203);
      v182 = static ColorScheme.== infix(_:_:)();
      v172(v180, v181);
      v172(v179, v181);
      if ((v182 & 1) == 0)
      {
        v183 = v202;
        SnippetHeaderView.colorScheme.getter(v202);
        v184 = v203;
        v185 = v204;
        (v168)(v204, v201, v203);
        v186 = static ColorScheme.== infix(_:_:)();
        v172(v185, v184);
        v172(v183, v184);
        if ((v186 & 1) == 0)
        {
          v187 = v197;
          SnippetHeaderView.colorSchemeContrast.getter(v197);
          v189 = v198;
          v188 = v199;
          v190 = v196;
          (*(v199 + 104))(v196, *MEMORY[0x277CE0218], v198);
          static ColorScheme.== infix(_:_:)();
          v191 = *(v188 + 8);
          v191(v190, v189);
          v191(v187, v189);
        }
      }
    }

    goto LABEL_114;
  }

  return static Color.black.getter();
}

uint64_t outlined init with take of SnippetHeaderModel?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of SnippetHeaderModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnippetHeaderModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _FrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _FrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _FrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _FrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SashStandardView and conformance SashStandardView()
{
  result = lazy protocol witness table cache variable for type SashStandardView and conformance SashStandardView;
  if (!lazy protocol witness table cache variable for type SashStandardView and conformance SashStandardView)
  {
    type metadata accessor for SashStandardView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SashStandardView and conformance SashStandardView);
  }

  return result;
}

void type metadata completion function for SnippetHeaderView(uint64_t a1)
{
  _s10WellnessUI18SnippetHeaderModelVSgMaTm_0(319, &lazy cache variable for type metadata for SnippetHeaderModel?, type metadata accessor for SnippetHeaderModel, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    _s10WellnessUI18SnippetHeaderModelVSgMaTm_0(319, &lazy cache variable for type metadata for Environment<ColorScheme>, MEMORY[0x277CDF3E8], MEMORY[0x277CDF470]);
    if (v2 <= 0x3F)
    {
      _s10WellnessUI18SnippetHeaderModelVSgMaTm_0(319, &lazy cache variable for type metadata for Environment<ColorSchemeContrast>, MEMORY[0x277CE0230], MEMORY[0x277CDF470]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void _s10WellnessUI18SnippetHeaderModelVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t outlined assign with take of AppPunchout?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t CycleTrackingLogModel.dateLabel.getter()
{
  v1 = *(v0 + *(type metadata accessor for CycleTrackingLogModel(0) + 20));

  return v1;
}

uint64_t type metadata accessor for CycleTrackingLogModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for CycleTrackingLogModel;
  if (!type metadata singleton initialization cache for CycleTrackingLogModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void CycleTrackingLogModel.dateLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CycleTrackingLogModel(0) + 20));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t CycleTrackingLogModel.loggedLabel.getter()
{
  v1 = *(v0 + *(type metadata accessor for CycleTrackingLogModel(0) + 24));

  return v1;
}

uint64_t CycleTrackingLogModel.cycleTrackingType.getter()
{
  v1 = *(v0 + *(type metadata accessor for CycleTrackingLogModel(0) + 28));

  return v1;
}

uint64_t CycleTrackingLogModel.init(date:loggedLabel:cycleTrackingType:snippetHeaderModel:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v43 = a6;
  v40 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v36 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v36 - v18;
  v20 = type metadata accessor for AppPunchout();
  v21 = *(v20 - 8);
  v41 = *(v21 + 56);
  v39 = v21 + 56;
  v41(a8, 1, 1, v20);
  v42 = a1;
  if (a1)
  {
    v37 = a3;
    v38 = a5;
    v22 = a4;
    dispatch thunk of DialogCalendar.dateDescriptive.getter();
    v23 = type metadata accessor for SpeakableString();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v19, 1, v23) == 1)
    {
      outlined destroy of AppPunchout?(v19, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      a1 = 0;
      v25 = 0;
    }

    else
    {
      v26 = SpeakableString.print.getter();
      v28 = v27;
      (*(v24 + 8))(v19, v23);
      v44 = v26;
      v45 = v28;
      lazy protocol witness table accessor for type String and conformance String();
      a1 = StringProtocol.capitalized.getter();
      v25 = v29;
    }

    a4 = v22;
    a3 = v37;
    a5 = v38;
  }

  else
  {
    v25 = 0;
  }

  v30 = type metadata accessor for CycleTrackingLogModel(0);
  v31 = (a8 + v30[5]);
  *v31 = a1;
  v31[1] = v25;
  v32 = (a8 + v30[6]);
  *v32 = v40;
  v32[1] = a3;
  v33 = (a8 + v30[7]);
  *v33 = a4;
  v33[1] = a5;
  v34 = v43;
  outlined init with copy of AppPunchout?(v43, a8 + v30[8], &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  outlined init with copy of AppPunchout?(a7, a8 + v30[9], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  CycleTrackingLogModel.createAppPunchout(url:)(a7);

  outlined destroy of AppPunchout?(a7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of AppPunchout?(v34, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v41(v16, 0, 1, v20);
  return outlined assign with take of AppPunchout?(v16, a8);
}

uint64_t CycleTrackingLogModel.createAppPunchout(url:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AppPunchout?(a1, v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of AppPunchout?(v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    URL.absoluteString.getter();
    AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
    return (*(v6 + 8))(v8, v5);
  }
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance CycleTrackingLogModel.CodingKeys()
{
  v1 = *v0;
  v2 = 0x68636E7550707061;
  v3 = 0xD000000000000011;
  v4 = 7107189;
  if (v1 == 4)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6562614C65746164;
  if (v1 != 1)
  {
    v5 = 0x614C646567676F6CLL;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CycleTrackingLogModel.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized CycleTrackingLogModel.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CycleTrackingLogModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CycleTrackingLogModel.CodingKeys and conformance CycleTrackingLogModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CycleTrackingLogModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CycleTrackingLogModel.CodingKeys and conformance CycleTrackingLogModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CycleTrackingLogModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI21CycleTrackingLogModelV10CodingKeys33_27F97DE3911531BBE475DA15FAC4C7B8LLOGMd, "L*");
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CycleTrackingLogModel.CodingKeys and conformance CycleTrackingLogModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for AppPunchout();
  _s10SnippetKit11AppPunchoutVACSEAAWlTm_8(&lazy protocol witness table cache variable for type AppPunchout and conformance AppPunchout, MEMORY[0x277D62880], MEMORY[0x277D62888]);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for CycleTrackingLogModel(0);
    v8[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[11] = 4;
    type metadata accessor for SnippetHeaderModel(0);
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_8(&lazy protocol witness table cache variable for type SnippetHeaderModel and conformance SnippetHeaderModel, type metadata accessor for SnippetHeaderModel, &protocol conformance descriptor for SnippetHeaderModel);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v8[10] = 5;
    type metadata accessor for URL();
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_8(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type CycleTrackingLogModel.CodingKeys and conformance CycleTrackingLogModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CycleTrackingLogModel.CodingKeys and conformance CycleTrackingLogModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type CycleTrackingLogModel.CodingKeys and conformance CycleTrackingLogModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CycleTrackingLogModel.CodingKeys and conformance CycleTrackingLogModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CycleTrackingLogModel.CodingKeys and conformance CycleTrackingLogModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type CycleTrackingLogModel.CodingKeys and conformance CycleTrackingLogModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CycleTrackingLogModel.CodingKeys and conformance CycleTrackingLogModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CycleTrackingLogModel.CodingKeys and conformance CycleTrackingLogModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type CycleTrackingLogModel.CodingKeys and conformance CycleTrackingLogModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CycleTrackingLogModel.CodingKeys and conformance CycleTrackingLogModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CycleTrackingLogModel.CodingKeys and conformance CycleTrackingLogModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type CycleTrackingLogModel.CodingKeys and conformance CycleTrackingLogModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CycleTrackingLogModel.CodingKeys and conformance CycleTrackingLogModel.CodingKeys);
  }

  return result;
}

void CycleTrackingLogModel.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v37 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI21CycleTrackingLogModelV10CodingKeys33_27F97DE3911531BBE475DA15FAC4C7B8LLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI21CycleTrackingLogModelV10CodingKeys33_27F97DE3911531BBE475DA15FAC4C7B8LLOGMR);
  v39 = *(v12 - 8);
  v40 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v43 = type metadata accessor for CycleTrackingLogModel(0);
  MEMORY[0x28223BE20](v43);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AppPunchout();
  v18 = *(*(v17 - 8) + 56);
  v42 = v16;
  v18(v16, 1, 1, v17);
  v19 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  lazy protocol witness table accessor for type CycleTrackingLogModel.CodingKeys and conformance CycleTrackingLogModel.CodingKeys();
  v20 = v14;
  v21 = v41;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    v24 = v42;
    __swift_destroy_boxed_opaque_existential_1(v44);
    outlined destroy of AppPunchout?(v24, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  }

  else
  {
    v22 = v8;
    v23 = v39;
    v41 = v5;
    v50 = 0;
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_8(&lazy protocol witness table cache variable for type AppPunchout and conformance AppPunchout, MEMORY[0x277D62880], MEMORY[0x277D62890]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v25 = v42;
    outlined assign with take of AppPunchout?(v11, v42);
    v49 = 1;
    v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v27 = v43;
    v28 = (v25 + *(v43 + 20));
    *v28 = v26;
    v28[1] = v29;
    v48 = 2;
    v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v31 = (v25 + v27[6]);
    *v31 = v30;
    v31[1] = v32;
    v47 = 3;
    v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v34 = (v25 + v27[7]);
    *v34 = v33;
    v34[1] = v35;
    type metadata accessor for SnippetHeaderModel(0);
    v46 = 4;
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_8(&lazy protocol witness table cache variable for type SnippetHeaderModel and conformance SnippetHeaderModel, type metadata accessor for SnippetHeaderModel, &protocol conformance descriptor for SnippetHeaderModel);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined init with take of SnippetHeaderModel?(v22, v25 + v27[8], &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    type metadata accessor for URL();
    v45 = 5;
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_8(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    v36 = v41;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v23 + 8))(v20, v40);
    outlined init with take of SnippetHeaderModel?(v36, v25 + v27[9], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined init with copy of CycleTrackingLogModel(v25, v38);
    __swift_destroy_boxed_opaque_existential_1(v44);
    outlined destroy of CycleTrackingLogModel(v25);
  }
}

uint64_t outlined init with take of SnippetHeaderModel?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with copy of CycleTrackingLogModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CycleTrackingLogModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CycleTrackingLogModel(uint64_t a1)
{
  v2 = type metadata accessor for CycleTrackingLogModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s10SnippetKit11AppPunchoutVACSEAAWlTm_8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata completion function for CycleTrackingLogModel(uint64_t a1)
{
  _s10SnippetKit11AppPunchoutVSgMaTm_3(319, &lazy cache variable for type metadata for AppPunchout?, MEMORY[0x277D62880]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?();
    if (v2 <= 0x3F)
    {
      _s10SnippetKit11AppPunchoutVSgMaTm_3(319, &lazy cache variable for type metadata for SnippetHeaderModel?, type metadata accessor for SnippetHeaderModel);
      if (v3 <= 0x3F)
      {
        _s10SnippetKit11AppPunchoutVSgMaTm_3(319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void _s10SnippetKit11AppPunchoutVSgMaTm_3(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t specialized CycleTrackingLogModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6562614C65746164 && a2 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614C646567676F6CLL && a2 == 0xEB000000006C6562 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000273EB1870 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB0F30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
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

uint64_t SpecificMedCompletedLogSnippet.text2.getter()
{
  v1 = v0 + *(type metadata accessor for SpecificMedCompletedLogSnippet(0) + 20);
  v2 = *v1;
  outlined copy of Text.Storage(*v1, *(v1 + 8), *(v1 + 16));

  return v2;
}

uint64_t type metadata accessor for SpecificMedCompletedLogSnippet(uint64_t a1)
{
  result = type metadata singleton initialization cache for SpecificMedCompletedLogSnippet;
  if (!type metadata singleton initialization cache for SpecificMedCompletedLogSnippet)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void SpecificMedCompletedLogSnippet.text2.setter(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = v4 + *(type metadata accessor for SpecificMedCompletedLogSnippet(0) + 20);
  outlined consume of Text.Storage(*v9, *(v9 + 8), *(v9 + 16));

  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3 & 1;
  *(v9 + 24) = a4;
}

uint64_t SpecificMedCompletedLogSnippet.text3.getter()
{
  v1 = v0 + *(type metadata accessor for SpecificMedCompletedLogSnippet(0) + 24);
  v2 = *v1;
  outlined copy of Text.Storage(*v1, *(v1 + 8), *(v1 + 16));

  return v2;
}

void SpecificMedCompletedLogSnippet.text3.setter(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = v4 + *(type metadata accessor for SpecificMedCompletedLogSnippet(0) + 24);
  outlined consume of Text.Storage(*v9, *(v9 + 8), *(v9 + 16));

  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3 & 1;
  *(v9 + 24) = a4;
}

void SpecificMedCompletedLogSnippet.init(model:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v4 - 8);
  MEMORY[0x28223BE20](v5);
  v6 = type metadata accessor for SpecificMedCompletedLogSnippet(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &v8[*(v9 + 28)];
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
  *v10 = EnvironmentObject.init()();
  v10[1] = v11;
  outlined init with copy of SpecificMedCompletedLogModel(a1, v8, type metadata accessor for SpecificMedCompletedLogModel);
  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = *(a1 + 24);
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v14._object = 0x8000000273EB1890;
    v14._countAndFlagsBits = 0x1000000000000010;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v14);
    v15 = *(a1 + *(type metadata accessor for SpecificMedCompletedLogModel(0) + 48));
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v15);
    v16._countAndFlagsBits = 32;
    v16._object = 0xE100000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v16);
    v17._countAndFlagsBits = v13;
    v17._object = v12;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v17);
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v18);
LABEL_5:
    LocalizedStringKey.init(stringInterpolation:)();
    v23 = Text.init(_:tableName:bundle:comment:)();
    v24 = &v8[*(v6 + 20)];
    *v24 = v23;
    *(v24 + 1) = v25;
    v24[16] = v26 & 1;
    *(v24 + 3) = v27;
    v28 = type metadata accessor for SpecificMedCompletedLogModel(0);
    if ((*(a1 + v28[9] + 8) & 1) != 0 || (v29 = (a1 + v28[11]), (v30 = v29[1]) == 0))
    {
      if (*(a1 + v28[14]) == 1)
      {
        LocalizedStringKey.init(stringLiteral:)();
LABEL_12:
        v39 = Text.init(_:tableName:bundle:comment:)();
        v40 = &v8[*(v6 + 24)];
        *v40 = v39;
        *(v40 + 1) = v41;
        v40[16] = v42 & 1;
        *(v40 + 3) = v43;
        outlined init with take of SpecificMedCompletedLogSnippet(v8, a2);
        outlined destroy of SpecificMedCompletedLogModel(a1, type metadata accessor for SpecificMedCompletedLogModel);
        return;
      }

      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v36 = 0;
      v37 = 0xE000000000000000;
    }

    else
    {
      v31 = *v29;
      v32 = v28;
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v33._countAndFlagsBits = 0;
      v33._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v33);
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(*(a1 + v32[10]));
      v34._countAndFlagsBits = 32;
      v34._object = 0xE100000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v34);

      v35._countAndFlagsBits = v31;
      v35._object = v30;
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v35);

      v36 = 544497952;
      v37 = 0xE400000000000000;
    }

    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(*&v36);
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(*(a1 + 8));
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v38);
    LocalizedStringKey.init(stringInterpolation:)();
    goto LABEL_12;
  }

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v19._object = 0x8000000273EB1890;
  v19._countAndFlagsBits = 0x1000000000000010;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v19);
  v20 = *(a1 + 48);
  if (v20)
  {
    v21 = *(a1 + 40);
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(*(&v20 - 1));
    v22._countAndFlagsBits = 0x6C75646568635320;
    v22._object = 0xE900000000000065;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v22);
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t outlined init with take of SpecificMedCompletedLogSnippet(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpecificMedCompletedLogSnippet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SpecificMedCompletedLogSnippet.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v190 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI0A4BodyVy05SwiftB09TupleViewVyAD03AnyF0V_AD0F0PAAE15componentTapped12isNavigation7performQrSb_yyctFQOyAA018FactItemHeroNumberF0V_Qo_AA015StatusIndicatorF0VtGGMd, &_s9SnippetUI0A4BodyVy05SwiftB09TupleViewVyAD03AnyF0V_AD0F0PAAE15componentTapped12isNavigation7performQrSb_yyctFQOyAA018FactItemHeroNumberF0V_Qo_AA015StatusIndicatorF0VtGGMR);
  v187 = *(v2 - 8);
  v188 = v2;
  MEMORY[0x28223BE20](v2);
  v186 = v140 - v3;
  v162 = type metadata accessor for SpecificMedCompletedLogSnippet(0);
  v189 = *(v162 - 8);
  v4 = *(v189 + 64);
  MEMORY[0x28223BE20](v162);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVyAD03AnyG0V_AD0G0PAAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo_AA015StatusIndicatorG0VtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVyAD03AnyG0V_AD0G0PAAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo_AA015StatusIndicatorG0VtGGMR);
  v169 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v168 = v140 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0VyAA03AnyC0V_AcDE10separators_0G8OverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_AD015StatusIndicatorC0VtGG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0VyAA03AnyC0V_AcDE10separators_0G8OverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_AD015StatusIndicatorC0VtGG_Qo_MR);
  v172 = *(v6 - 8);
  v173 = v6;
  MEMORY[0x28223BE20](v6);
  v170 = v140 - v7;
  v8 = type metadata accessor for SeparatorStyle();
  v166 = *(v8 - 8);
  v167 = v8;
  MEMORY[0x28223BE20](v8);
  v163 = v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for FactItemHeroNumberView();
  v161 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v159 = v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_MR);
  v179 = *(v11 - 8);
  v180 = v11;
  MEMORY[0x28223BE20](v11);
  v164 = v140 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v12;
  MEMORY[0x28223BE20](v13);
  v178 = v140 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v154 = v140 - v16;
  v17 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v17 - 8);
  v153 = v140 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for StatusIndicatorView.IndicatorType();
  v151 = *(v19 - 8);
  v152 = v19;
  MEMORY[0x28223BE20](v19);
  v150 = v140 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for StatusIndicatorView();
  v176 = *(v21 - 8);
  v177 = v21;
  MEMORY[0x28223BE20](v21);
  v157 = v22;
  v158 = v140 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v182 = v140 - v24;
  v149 = type metadata accessor for SnippetHeaderView(0);
  MEMORY[0x28223BE20](v149);
  v148 = v140 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Font.TextStyle();
  v174 = *(v26 - 8);
  v175 = v26;
  MEMORY[0x28223BE20](v26);
  v181 = v140 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = v140 - v29;
  v31 = type metadata accessor for SpeakableString();
  v146 = *(v31 - 8);
  v147 = v31;
  MEMORY[0x28223BE20](v31);
  v33 = v140 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = v140 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  MEMORY[0x28223BE20](v37 - 8);
  v39 = v140 - v38;
  v40 = type metadata accessor for AppPunchout();
  v41 = *(v40 - 8);
  v184 = v40;
  v185 = v41;
  MEMORY[0x28223BE20](v40);
  v155 = v42;
  v156 = v140 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v183 = v140 - v44;
  v45 = type metadata accessor for SpecificMedCompletedLogModel(0);
  v46 = v1;
  if (*(v1 + v45[15]) != 1)
  {
    outlined init with copy of SpecificMedCompletedLogModel(v1, v140 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SpecificMedCompletedLogSnippet);
    v56 = (*(v189 + 80) + 16) & ~*(v189 + 80);
    v57 = swift_allocObject();
    outlined init with take of SpecificMedCompletedLogSnippet(v140 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v57 + v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA03AnyD0V_AA0D0P07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAH018FactItemHeroNumberD0V_Qo_AH015StatusIndicatorD0VtGMd, &_s7SwiftUI9TupleViewVyAA03AnyD0V_AA0D0P07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAH018FactItemHeroNumberD0V_Qo_AH015StatusIndicatorD0VtGMR);
    lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(AnyView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA03AnyD0V_AA0D0P07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAH018FactItemHeroNumberD0V_Qo_AH015StatusIndicatorD0VtGMd, &_s7SwiftUI9TupleViewVyAA03AnyD0V_AA0D0P07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAH018FactItemHeroNumberD0V_Qo_AH015StatusIndicatorD0VtGMR, MEMORY[0x277CE14C8]);
    v58 = v186;
    SnippetBody.init(content:)();
    lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type SnippetBody<TupleView<(AnyView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)>> and conformance SnippetBody<A>, &_s9SnippetUI0A4BodyVy05SwiftB09TupleViewVyAD03AnyF0V_AD0F0PAAE15componentTapped12isNavigation7performQrSb_yyctFQOyAA018FactItemHeroNumberF0V_Qo_AA015StatusIndicatorF0VtGGMd, &_s9SnippetUI0A4BodyVy05SwiftB09TupleViewVyAD03AnyF0V_AD0F0PAAE15componentTapped12isNavigation7performQrSb_yyctFQOyAA018FactItemHeroNumberF0V_Qo_AA015StatusIndicatorF0VtGGMR, MEMORY[0x277D63AB8]);
    v59 = v188;
    v55 = View.eraseToAnyView()();
    result = (*(v187 + 8))(v58, v59);
    goto LABEL_8;
  }

  v47 = v45;
  v187 = v4;
  v188 = v140 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = (v1 + v45[18]);
  v49 = v48[1];
  if (!v49)
  {
    goto LABEL_6;
  }

  v50 = (v1 + v45[17]);
  if (!v50[1])
  {
    goto LABEL_6;
  }

  v186 = v50[1];
  v51 = *v48;
  v144 = *v50;
  v145 = v51;
  outlined init with copy of AppPunchout?(v1 + v45[8], v39, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v53 = v184;
  v52 = v185;
  if ((*(v185 + 48))(v39, 1, v184) == 1)
  {
    outlined destroy of AppPunchout?(v39, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
LABEL_6:
    result = AnyView.init<A>(_:)();
    v55 = result;
    goto LABEL_8;
  }

  v141 = *(v52 + 32);
  v142 = v52 + 32;
  v141(v183, v39, v53);
  if (!*(v46 + 32))
  {
    if (*(v46 + 48))
    {
      v130 = *(v46 + 40);
      outlined init with copy of AppPunchout?(v46 + v47[19], v30, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
      v131 = type metadata accessor for SnippetHeaderModel(0);
      if ((*(*(v131 - 8) + 48))(v30, 1, v131) != 1)
      {
        v132 = v146;
        v133 = *(v146 + 16);
        v140[1] = v130;
        v134 = v147;
        v133(v33, v30);

        outlined destroy of SpecificMedCompletedLogModel(v30, type metadata accessor for SnippetHeaderModel);
        (*(v132 + 32))(v36, v33, v134);
        v135 = String.firstLetterCapitalized()();
        v206._countAndFlagsBits = 32;
        v206._object = 0xE100000000000000;
        v143 = v46;
        v136 = SpeakableString.print.getter();
        MEMORY[0x2743E0A10](v136);

        countAndFlagsBits = v206._countAndFlagsBits;
        object = v206._object;
        v206 = v135;

        v139 = countAndFlagsBits;
        v60 = v186;
        MEMORY[0x2743E0A10](v139, object);
        v46 = v143;

        v63 = v206._object;
        v62 = v206._countAndFlagsBits;
        (*(v146 + 8))(v36, v147);
        goto LABEL_11;
      }

      outlined destroy of AppPunchout?(v30, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    }

    v55 = AnyView.init<A>(_:)();
    result = (*(v185 + 8))(v183, v53);
    goto LABEL_8;
  }

  v60 = v186;

  v61 = String.firstLetterCapitalized()();
  v62 = v61._countAndFlagsBits;
  v63 = v61._object;
LABEL_11:
  (*(v174 + 104))(v181, *MEMORY[0x277CE0A78], v175);
  v64 = v148;
  outlined init with copy of AppPunchout?(v46 + v47[19], v148, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v65 = v149;
  v66 = *(v149 + 20);
  *(v64 + v66) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  swift_storeEnumTagMultiPayload();
  v67 = *(v65 + 24);
  *(v64 + v67) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
  swift_storeEnumTagMultiPayload();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type SnippetHeaderView and conformance SnippetHeaderView, type metadata accessor for SnippetHeaderView, &protocol conformance descriptor for SnippetHeaderView);
  v143 = v46;
  v186 = View.eraseToAnyView()();
  outlined destroy of SpecificMedCompletedLogModel(v64, type metadata accessor for SnippetHeaderView);
  if (*v46)
  {
    v68 = v145;
  }

  else
  {
    v68 = v144;
  }

  if (*v46)
  {
    v69 = v49;
  }

  else
  {
    v69 = v60;
  }

  if (*v46)
  {
    v70 = MEMORY[0x277D63D58];
  }

  else
  {
    v70 = MEMORY[0x277D63D68];
  }

  v207 = MEMORY[0x277D837D0];
  v208 = MEMORY[0x277D63F88];
  v206._countAndFlagsBits = v68;
  v206._object = v69;
  (*(v151 + 104))(v150, *v70, v152);
  StatusIndicatorView.init(message:type:showIndicator:)();
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v71._countAndFlagsBits = 0;
  v71._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v71);
  v72._countAndFlagsBits = v62;
  v72._object = v63;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v72);

  v73._countAndFlagsBits = 0;
  v73._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v73);
  LocalizedStringKey.init(stringInterpolation:)();
  v74 = Text.init(_:tableName:bundle:comment:)();
  v76 = v75;
  v78 = v77;
  v79 = *MEMORY[0x277CE0998];
  v80 = type metadata accessor for Font.Design();
  v81 = *(v80 - 8);
  v82 = v154;
  (*(v81 + 104))(v154, v79, v80);
  (*(v81 + 56))(v82, 0, 1, v80);
  static Font.system(_:design:weight:)();
  outlined destroy of AppPunchout?(v82, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v83 = Text.font(_:)();
  v85 = v84;
  LOBYTE(v81) = v86;

  outlined consume of Text.Storage(v74, v76, v78 & 1);

  v87 = Text.bold()();
  v89 = v88;
  v91 = v90;
  v93 = v92;
  outlined consume of Text.Storage(v83, v85, v81 & 1);

  v207 = MEMORY[0x277CE0BD0];
  v208 = MEMORY[0x277D638F0];
  v94 = swift_allocObject();
  v206._countAndFlagsBits = v94;
  v95 = v87;
  v152 = v89;
  v153 = v87;
  *(v94 + 16) = v87;
  *(v94 + 24) = v89;
  LOBYTE(v87) = v91 & 1;
  *(v94 + 32) = v91 & 1;
  LODWORD(v151) = v91 & 1;
  v154 = v93;
  *(v94 + 40) = v93;
  v205 = 0;
  v203 = 0u;
  v204 = 0u;
  v202 = 0;
  v200 = 0u;
  v201 = 0u;
  v96 = v143 + *(v162 + 24);
  v97 = *v96;
  v98 = *(v96 + 8);
  LOBYTE(v80) = *(v96 + 16);
  v99 = *(v96 + 24);
  v198 = MEMORY[0x277CE0BD0];
  v199 = MEMORY[0x277D638F0];
  v100 = swift_allocObject();
  v196 = 0;
  v197 = v100;
  *(v100 + 16) = v97;
  *(v100 + 24) = v98;
  *(v100 + 32) = v80;
  *(v100 + 40) = v99;
  v194 = 0u;
  v195 = 0u;
  v193 = 0;
  v191 = 0u;
  v192 = 0u;
  outlined copy of Text.Storage(v95, v89, v87);

  outlined copy of Text.Storage(v97, v98, v80);

  v101 = v159;
  FactItemHeroNumberView.init(number:text1:text2:text3:text4:text5:)();
  v103 = v166;
  v102 = v167;
  v104 = v163;
  (*(v166 + 104))(v163, *MEMORY[0x277D62F40], v167);
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type FactItemHeroNumberView and conformance FactItemHeroNumberView, MEMORY[0x277D63E08], MEMORY[0x277D63E00]);
  v105 = v178;
  v106 = v165;
  View.separators(_:isOverride:)();
  (*(v103 + 8))(v104, v102);
  (*(v161 + 8))(v101, v106);
  v107 = v180;
  v108 = v179;
  v109 = v164;
  (*(v179 + 16))(v164, v105, v180);
  v110 = v177;
  v111 = v176;
  v112 = v158;
  (*(v176 + 16))(v158, v182, v177);
  v113 = v108;
  v114 = (*(v108 + 80) + 24) & ~*(v108 + 80);
  v115 = (v160 + *(v111 + 80) + v114) & ~*(v111 + 80);
  v116 = swift_allocObject();
  *(v116 + 16) = v186;
  (*(v113 + 32))(v116 + v114, v109, v107);
  v117 = v176;
  (*(v176 + 32))(v116 + v115, v112, v110);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA03AnyD0V_AA0D0P07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAH018FactItemHeroNumberD0V_Qo_AH015StatusIndicatorD0VtGMd, &_s7SwiftUI9TupleViewVyAA03AnyD0V_AA0D0P07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAH018FactItemHeroNumberD0V_Qo_AH015StatusIndicatorD0VtGMR);
  lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(AnyView, <<opaque return type of View.separators(_:isOverride:)>>.0, StatusIndicatorView)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA03AnyD0V_AA0D0P07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAH018FactItemHeroNumberD0V_Qo_AH015StatusIndicatorD0VtGMd, &_s7SwiftUI9TupleViewVyAA03AnyD0V_AA0D0P07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAH018FactItemHeroNumberD0V_Qo_AH015StatusIndicatorD0VtGMR, MEMORY[0x277CE14C8]);
  v118 = v168;
  ComponentStack.init(content:)();
  v119 = v188;
  outlined init with copy of SpecificMedCompletedLogModel(v143, v188, type metadata accessor for SpecificMedCompletedLogSnippet);
  v121 = v184;
  v120 = v185;
  v122 = v156;
  (*(v185 + 16))(v156, v183, v184);
  v123 = (*(v189 + 80) + 16) & ~*(v189 + 80);
  v124 = (v187 + *(v120 + 80) + v123) & ~*(v120 + 80);
  v125 = swift_allocObject();
  outlined init with take of SpecificMedCompletedLogSnippet(v119, v125 + v123);
  v141((v125 + v124), v122, v121);
  v126 = lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ComponentStack<TupleView<(AnyView, <<opaque return type of View.separators(_:isOverride:)>>.0, StatusIndicatorView)>> and conformance ComponentStack<A>, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVyAD03AnyG0V_AD0G0PAAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo_AA015StatusIndicatorG0VtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVyAD03AnyG0V_AD0G0PAAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo_AA015StatusIndicatorG0VtGGMR, MEMORY[0x277D63B98]);
  v128 = v170;
  v127 = v171;
  View.componentTapped(isNavigation:perform:)();

  (*(v169 + 8))(v118, v127);
  v206._countAndFlagsBits = v127;
  v206._object = v126;
  swift_getOpaqueTypeConformance2();
  v129 = v173;
  v55 = View.eraseToAnyView()();

  outlined consume of Text.Storage(v153, v152, v151);

  (*(v172 + 8))(v128, v129);
  (*(v179 + 8))(v178, v180);
  (*(v117 + 8))(v182, v177);
  (*(v174 + 8))(v181, v175);
  result = (*(v120 + 8))(v183, v121);
LABEL_8:
  *v190 = v55;
  return result;
}

uint64_t closure #1 in SpecificMedCompletedLogSnippet.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v26 = a1;
  v27 = a3;
  v28 = a4;
  v5 = type metadata accessor for StatusIndicatorView();
  v23 = v5;
  v25 = *(v5 - 8);
  v6 = v25;
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_MR);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  v14 = *(v10 + 16);
  v14(&v23 - v12, a2, v9, v11);
  v15 = *(v6 + 16);
  v15(v8, v27, v5);
  v16 = v28;
  *v28 = v26;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7AnyViewV_AA0D0P07SnippetB0E10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAF018FactItemHeroNumberD0V_Qo_AF015StatusIndicatorD0VtMd, "DW");
  (v14)(v16 + *(v17 + 48), v13, v9);
  v18 = v16 + *(v17 + 64);
  v20 = v23;
  v19 = v24;
  v15(v18, v24, v23);
  v21 = *(v25 + 8);
  swift_retain_n();
  v21(v19, v20);
  (*(v10 + 8))(v13, v9);
}

void closure #2 in SpecificMedCompletedLogSnippet.body.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + *(type metadata accessor for SpecificMedCompletedLogSnippet(0) + 28));
  if (v2)
  {
    v3 = v2;
    dispatch thunk of Context.perform(appPunchout:)();
  }

  else
  {
    type metadata accessor for Context();
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t closure #3 in SpecificMedCompletedLogSnippet.body.getter@<X0>(_BYTE *a1@<X0>, char *a2@<X8>)
{
  v84 = a1;
  v102 = a2;
  v3 = type metadata accessor for StatusIndicatorView.IndicatorType();
  v98 = *(v3 - 8);
  v99 = v3;
  MEMORY[0x28223BE20](v3);
  v97 = v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StatusIndicatorView();
  v100 = *(v5 - 8);
  v101 = v5;
  MEMORY[0x28223BE20](v5);
  v106 = v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v105 = v83 - v8;
  v9 = type metadata accessor for SpecificMedCompletedLogSnippet(0);
  v10 = *(v9 - 8);
  v87 = v9;
  v88 = v10;
  MEMORY[0x28223BE20](v9);
  v89 = v11;
  v90 = v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FactItemHeroNumberView();
  v92 = *(v12 - 8);
  v93 = v12;
  MEMORY[0x28223BE20](v12);
  v91 = v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD018FactItemHeroNumberC0V_Qo_Md, "XW");
  v95 = *(v14 - 8);
  v96 = v14;
  MEMORY[0x28223BE20](v14);
  v94 = v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v104 = v83 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit5ColorVSgMd, &_s10SnippetKit5ColorVSgMR);
  MEMORY[0x28223BE20](v18 - 8);
  v103 = v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v83 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = v83 - v24;
  v83[1] = v83 - v24;
  v26 = type metadata accessor for SashStandard.Title();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = (v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = type metadata accessor for SashStandard();
  MEMORY[0x28223BE20](v30 - 8);
  v31 = type metadata accessor for SashStandardView();
  v32 = *(v31 - 8);
  v85 = v31;
  v86 = v32;
  MEMORY[0x28223BE20](v31);
  v34 = v83 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = &a1[*(type metadata accessor for SpecificMedCompletedLogModel(0) + 52)];
  v36 = v35[1];
  *v29 = *v35;
  v29[1] = v36;
  (*(v27 + 104))(v29, *MEMORY[0x277D62DC0], v26);
  v37 = type metadata accessor for VisualProperty();
  (*(*(v37 - 8) + 56))(v25, 1, 1, v37);
  v38 = type metadata accessor for Color();
  v39 = *(*(v38 - 8) + 56);
  v39(v22, 1, 1, v38);
  v39(v103, 1, 1, v38);
  v122 = 0;
  v120 = 0u;
  v121 = 0u;

  SashStandard.init(title:thumbnail:titleColor:backgroundColor:action:componentName:showOnWatch:)();
  SashStandardView.init(model:)();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type SashStandardView and conformance SashStandardView, MEMORY[0x277D63CA0], MEMORY[0x277D63C90]);
  v40 = v85;
  v103 = View.eraseToAnyView()();
  (*(v86 + 8))(v34, v40);
  v41 = v84;
  LocalizedStringKey.init(stringLiteral:)();
  v42 = Text.init(_:tableName:bundle:comment:)();
  v44 = v43;
  LOBYTE(v29) = v45;
  v47 = v46;
  *(&v121 + 1) = MEMORY[0x277CE0BD0];
  v122 = MEMORY[0x277D638F0];
  v48 = MEMORY[0x277CE0BD0];
  v49 = MEMORY[0x277D638F0];
  v50 = swift_allocObject();
  *&v120 = v50;
  *(v50 + 16) = v42;
  *(v50 + 24) = v44;
  *(v50 + 32) = v29 & 1;
  *(v50 + 40) = v47;
  v119 = 0;
  v117 = 0u;
  v118 = 0u;
  v51 = v87;
  v52 = v41 + *(v87 + 20);
  v53 = *v52;
  v54 = *(v52 + 8);
  LOBYTE(v29) = *(v52 + 16);
  v55 = *(v52 + 24);
  v116[3] = v48;
  v116[4] = v49;
  v56 = swift_allocObject();
  *(v56 + 16) = v53;
  *(v56 + 24) = v54;
  *(v56 + 32) = v29;
  *(v56 + 40) = v55;
  v57 = v41 + *(v51 + 24);
  v58 = *v57;
  v59 = *(v57 + 8);
  v60 = *(v57 + 16);
  v61 = *(v57 + 24);
  v114 = MEMORY[0x277CE0BD0];
  v116[0] = v56;
  v115 = MEMORY[0x277D638F0];
  v62 = swift_allocObject();
  v113 = v62;
  *(v62 + 16) = v58;
  *(v62 + 24) = v59;
  *(v62 + 32) = v60;
  *(v62 + 40) = v61;
  v112 = 0;
  v110 = 0u;
  v111 = 0u;
  v109 = 0;
  v107 = 0u;
  v108 = 0u;
  outlined copy of Text.Storage(v53, v54, v29);

  outlined copy of Text.Storage(v58, v59, v60);

  v63 = v91;
  FactItemHeroNumberView.init(number:text1:text2:text3:text4:text5:)();
  v64 = v90;
  outlined init with copy of SpecificMedCompletedLogModel(v41, v90, type metadata accessor for SpecificMedCompletedLogSnippet);
  v65 = (*(v88 + 80) + 16) & ~*(v88 + 80);
  v66 = swift_allocObject();
  outlined init with take of SpecificMedCompletedLogSnippet(v64, v66 + v65);
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type FactItemHeroNumberView and conformance FactItemHeroNumberView, MEMORY[0x277D63E08], MEMORY[0x277D63E00]);
  v67 = v104;
  v68 = v93;
  View.componentTapped(isNavigation:perform:)();

  (*(v92 + 8))(v63, v68);
  *(&v121 + 1) = MEMORY[0x277D837D0];
  v122 = MEMORY[0x277D63F88];
  *&v120 = 0x646567676F4CLL;
  *(&v120 + 1) = 0xE600000000000000;
  (*(v98 + 104))(v97, *MEMORY[0x277D63D58], v99);
  v69 = v105;
  StatusIndicatorView.init(message:type:showIndicator:)();
  v70 = v94;
  v71 = v95;
  v99 = *(v95 + 16);
  v72 = v96;
  v99(v94, v67, v96);
  v73 = v100;
  v98 = *(v100 + 16);
  v74 = v69;
  v75 = v101;
  (v98)(v106, v74, v101);
  v76 = v102;
  *v102 = v103;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7AnyViewV_AA0D0P07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAF018FactItemHeroNumberD0V_Qo_AF015StatusIndicatorD0VtMd, &_s7SwiftUI7AnyViewV_AA0D0P07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAF018FactItemHeroNumberD0V_Qo_AF015StatusIndicatorD0VtMR);
  v99(&v76[*(v77 + 48)], v70, v72);
  v78 = &v76[*(v77 + 64)];
  v79 = v106;
  (v98)(v78, v106, v75);
  v80 = *(v73 + 8);

  v80(v105, v75);
  v81 = *(v71 + 8);
  v81(v104, v72);
  v80(v79, v75);
  v81(v70, v72);
}

uint64_t outlined init with copy of SpecificMedCompletedLogModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #3 in SpecificMedCompletedLogSnippet.body.getter@<X0>(char *a1@<X8>)
{
  v3 = *(type metadata accessor for SpecificMedCompletedLogSnippet(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return closure #3 in SpecificMedCompletedLogSnippet.body.getter(v4, a1);
}

uint64_t closure #1 in closure #3 in SpecificMedCompletedLogSnippet.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(a1 + *(type metadata accessor for SpecificMedCompletedLogSnippet(0) + 28));
  if (v5)
  {
    v6 = type metadata accessor for SpecificMedCompletedLogModel(0);
    outlined init with copy of AppPunchout?(a1 + *(v6 + 32), v4, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    v7 = type metadata accessor for AppPunchout();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v4, 1, v7) != 1)
    {
      v9 = v5;
      dispatch thunk of Context.perform(appPunchout:)();

      return (*(v8 + 8))(v4, v7);
    }

    __break(1u);
  }

  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t outlined destroy of SpecificMedCompletedLogModel(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in SpecificMedCompletedLogSnippet.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_MR) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for StatusIndicatorView() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return closure #1 in SpecificMedCompletedLogSnippet.body.getter(v7, v1 + v4, v8, a1);
}

void partial apply for closure #2 in SpecificMedCompletedLogSnippet.body.getter()
{
  v1 = *(type metadata accessor for SpecificMedCompletedLogSnippet(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for AppPunchout() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  closure #2 in SpecificMedCompletedLogSnippet.body.getter(v0 + v2, v5);
}

void type metadata completion function for SpecificMedCompletedLogSnippet(uint64_t a1)
{
  type metadata accessor for SpecificMedCompletedLogModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for EnvironmentObject<Context>(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for SpecificMedCompletedLogSnippet(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = type metadata accessor for SpecificMedCompletedLogModel(0);
  v7 = *(v6 + 32);
  v8 = type metadata accessor for AppPunchout();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = v5 + *(v6 + 76);
  v11 = type metadata accessor for SnippetHeaderModel(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    v12 = type metadata accessor for SpeakableString();
    (*(*(v12 - 8) + 8))(v10, v12);
  }

  outlined consume of Text.Storage(*(v5 + v1[5]), *(v5 + v1[5] + 8), *(v5 + v1[5] + 16));

  outlined consume of Text.Storage(*(v5 + v1[6]), *(v5 + v1[6] + 8), *(v5 + v1[6] + 16));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #1 in closure #3 in SpecificMedCompletedLogSnippet.body.getter()
{
  v1 = *(type metadata accessor for SpecificMedCompletedLogSnippet(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in closure #3 in SpecificMedCompletedLogSnippet.body.getter(v2);
}

uint64_t type metadata accessor for BodyMassQueryModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for BodyMassQueryModel;
  if (!type metadata singleton initialization cache for BodyMassQueryModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BodyMassQueryModel.averageValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for BodyMassQueryModel(0);
  v6 = v2 + *(result + 20);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t BodyMassQueryModel.maxValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for BodyMassQueryModel(0);
  v6 = v2 + *(result + 24);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t BodyMassQueryModel.minValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for BodyMassQueryModel(0);
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t BodyMassQueryModel.value.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for BodyMassQueryModel(0);
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t BodyMassQueryModel.averageValueString.getter()
{
  v1 = *(v0 + *(type metadata accessor for BodyMassQueryModel(0) + 40));

  return v1;
}

void BodyMassQueryModel.averageValueString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BodyMassQueryModel(0) + 40));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t BodyMassQueryModel.maxValueString.getter()
{
  v1 = *(v0 + *(type metadata accessor for BodyMassQueryModel(0) + 44));

  return v1;
}

void BodyMassQueryModel.maxValueString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BodyMassQueryModel(0) + 44));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t BodyMassQueryModel.minValueString.getter()
{
  v1 = *(v0 + *(type metadata accessor for BodyMassQueryModel(0) + 48));

  return v1;
}

void BodyMassQueryModel.minValueString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BodyMassQueryModel(0) + 48));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t BodyMassQueryModel.valueString.getter()
{
  v1 = *(v0 + *(type metadata accessor for BodyMassQueryModel(0) + 52));

  return v1;
}

void BodyMassQueryModel.valueString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BodyMassQueryModel(0) + 52));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t BodyMassQueryModel.init(averageValue:maxValue:minValue:value:unitString:dateLabel:url:headerModel:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  LODWORD(v73) = a8;
  v69 = a7;
  v68 = a6;
  LODWORD(v67) = a4;
  LODWORD(v65) = a2;
  v75 = a12;
  v76 = a13;
  v74 = a11;
  v77 = a10;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v61 - v18;
  v71 = type metadata accessor for AppPunchout();
  v20 = *(v71 - 8);
  v70 = *(v20 + 56);
  v72 = v20 + 56;
  v70(a9, 1, 1, v71);
  Model = type metadata accessor for BodyMassQueryModel(0);
  v22 = Model[9];
  v64 = v22;
  v23 = type metadata accessor for SpeakableString();
  v24 = *(*(v23 - 8) + 56);
  v24(a9 + v22, 1, 1, v23);
  v25 = Model[14];
  v24(a9 + v25, 1, 1, v23);
  v26 = Model[15];
  v66 = v26;
  v27 = type metadata accessor for SnippetHeaderModel(0);
  (*(*(v27 - 8) + 56))(a9 + v26, 1, 1, v27);
  if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v28 = a1;
  }

  else
  {
    v28 = 0;
  }

  v29 = v65;
  if (v65)
  {
    v30 = a1;
  }

  else
  {
    v30 = v28;
  }

  v63 = v30;
  v31 = a9 + Model[5];
  *v31 = v30;
  v62 = v29 & 1 | ((a1 & 0x7FFFFFFFFFFFFFFFLL) == 0);
  *(v31 + 8) = v62;
  if ((a3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v32 = a3;
  }

  else
  {
    v32 = 0;
  }

  v33 = v67;
  if (v67)
  {
    v34 = a3;
  }

  else
  {
    v34 = v32;
  }

  v65 = v34;
  v35 = a9 + Model[6];
  *v35 = v34;
  v61 = v33 & 1 | ((a3 & 0x7FFFFFFFFFFFFFFFLL) == 0);
  *(v35 + 8) = v61;
  if ((a5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v36 = a5;
  }

  else
  {
    v36 = 0;
  }

  v37 = v68;
  if (v68)
  {
    v38 = a5;
  }

  else
  {
    v38 = v36;
  }

  v67 = v38;
  v39 = a9 + Model[7];
  *v39 = v38;
  v40 = v37 & 1 | ((a5 & 0x7FFFFFFFFFFFFFFFLL) == 0);
  *(v39 + 8) = v40;
  v41 = (v69 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if ((v69 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v42 = v69;
  }

  else
  {
    v42 = 0;
  }

  v43 = v73;
  if (v73)
  {
    v44 = v69;
  }

  else
  {
    v44 = v42;
  }

  v69 = v44;
  v45 = a9 + Model[8];
  v46 = (a9 + Model[10]);
  v47 = (a9 + Model[11]);
  v48 = (a9 + Model[12]);
  v73 = (a9 + Model[13]);
  *v45 = v44;
  v49 = (v43 | v41) & 1;
  *(v45 + 8) = v49;
  outlined assign with copy of SpeakableString?(v77, a9 + v25, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v50 = v74;
  outlined assign with copy of SpeakableString?(v74, a9 + v64, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v51 = v75;
  BodyMassQueryModel.createAppPunchout(url:)(v75);
  v70(v19, 0, 1, v71);
  outlined assign with take of AppPunchout?(v19, a9, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v52 = v76;
  outlined assign with copy of SpeakableString?(v76, a9 + v66, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  *v46 = GenericQueryModel.roundUp(inputValue:)(v63, v62);
  v46[1] = v53;
  *v47 = GenericQueryModel.roundUp(inputValue:)(v65, v61);
  v47[1] = v54;
  *v48 = GenericQueryModel.roundUp(inputValue:)(v67, v40);
  v48[1] = v55;
  v56 = GenericQueryModel.roundUp(inputValue:)(v69, v49);
  v58 = v57;
  outlined destroy of AppPunchout?(v52, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  outlined destroy of AppPunchout?(v51, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of AppPunchout?(v50, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  result = outlined destroy of AppPunchout?(v77, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v60 = v73;
  *v73 = v56;
  v60[1] = v58;
  return result;
}

uint64_t BodyMassQueryModel.createAppPunchout(url:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AppPunchout?(a1, v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of AppPunchout?(v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    URL.absoluteString.getter();
    AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
    return (*(v6 + 8))(v8, v5);
  }
}

unint64_t BodyMassQueryModel.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x72745365756C6176;
    v7 = 0x6972745374696E75;
    if (a1 != 10)
    {
      v7 = 0xD000000000000012;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000012;
    v9 = 0x65756C615678616DLL;
    if (a1 != 7)
    {
      v9 = 0x65756C61566E696DLL;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x68636E7550707061;
    v2 = 0x65756C61566E696DLL;
    v3 = 0x65756C6176;
    if (a1 != 4)
    {
      v3 = 0x6562614C65746164;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x5665676172657661;
    if (a1 != 1)
    {
      v4 = 0x65756C615678616DLL;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance BodyMassQueryModel.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized BodyMassQueryModel.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance BodyMassQueryModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BodyMassQueryModel.CodingKeys and conformance BodyMassQueryModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance BodyMassQueryModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BodyMassQueryModel.CodingKeys and conformance BodyMassQueryModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BodyMassQueryModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI18BodyMassQueryModelV10CodingKeys33_A500F981AA5C407586C4D8349F4257A2LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI18BodyMassQueryModelV10CodingKeys33_A500F981AA5C407586C4D8349F4257A2LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type BodyMassQueryModel.CodingKeys and conformance BodyMassQueryModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[31] = 0;
  type metadata accessor for AppPunchout();
  _s10SnippetKit11AppPunchoutVACSEAAWlTm_9(&lazy protocol witness table cache variable for type AppPunchout and conformance AppPunchout, MEMORY[0x277D62880], MEMORY[0x277D62888]);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for BodyMassQueryModel(0);
    v8[30] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[29] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[28] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[27] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[26] = 5;
    type metadata accessor for SpeakableString();
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_9(&lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString, MEMORY[0x277D55C48], MEMORY[0x277D55C50]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v8[25] = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[24] = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[15] = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[14] = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[13] = 10;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v8[12] = 11;
    type metadata accessor for SnippetHeaderModel(0);
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_9(&lazy protocol witness table cache variable for type SnippetHeaderModel and conformance SnippetHeaderModel, type metadata accessor for SnippetHeaderModel, &protocol conformance descriptor for SnippetHeaderModel);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type BodyMassQueryModel.CodingKeys and conformance BodyMassQueryModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type BodyMassQueryModel.CodingKeys and conformance BodyMassQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type BodyMassQueryModel.CodingKeys and conformance BodyMassQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BodyMassQueryModel.CodingKeys and conformance BodyMassQueryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BodyMassQueryModel.CodingKeys and conformance BodyMassQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type BodyMassQueryModel.CodingKeys and conformance BodyMassQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BodyMassQueryModel.CodingKeys and conformance BodyMassQueryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BodyMassQueryModel.CodingKeys and conformance BodyMassQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type BodyMassQueryModel.CodingKeys and conformance BodyMassQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BodyMassQueryModel.CodingKeys and conformance BodyMassQueryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BodyMassQueryModel.CodingKeys and conformance BodyMassQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type BodyMassQueryModel.CodingKeys and conformance BodyMassQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BodyMassQueryModel.CodingKeys and conformance BodyMassQueryModel.CodingKeys);
  }

  return result;
}

uint64_t BodyMassQueryModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a1;
  v68 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v70 = v64 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v80 = v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v79 = v64 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v81 = v64 - v9;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI18BodyMassQueryModelV10CodingKeys33_A500F981AA5C407586C4D8349F4257A2LLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI18BodyMassQueryModelV10CodingKeys33_A500F981AA5C407586C4D8349F4257A2LLOGMR);
  v78 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v85 = v64 - v10;
  Model = type metadata accessor for BodyMassQueryModel(0);
  v12 = (Model - 8);
  MEMORY[0x28223BE20](Model);
  v14 = v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AppPunchout();
  v16 = *(*(v15 - 8) + 56);
  v77 = v15;
  v16(v14, 1, 1);
  v17 = &v14[v12[7]];
  *v17 = 0;
  v76 = v17;
  v17[8] = 1;
  v18 = &v14[v12[8]];
  *v18 = 0;
  v75 = v18;
  v18[8] = 1;
  v19 = &v14[v12[9]];
  *v19 = 0;
  v74 = v19;
  v19[8] = 1;
  v20 = &v14[v12[10]];
  *v20 = 0;
  v73 = v20;
  v20[8] = 1;
  v21 = v12[11];
  v22 = type metadata accessor for SpeakableString();
  v23 = *(*(v22 - 8) + 56);
  v72 = v21;
  v23(&v14[v21], 1, 1, v22);
  v24 = &v14[v12[12]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v71 = v24;
  v25 = &v14[v12[13]];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = &v14[v12[14]];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = &v14[v12[15]];
  *v27 = 0;
  *(v27 + 1) = 0;
  v69 = v12[16];
  v23(&v14[v69], 1, 1, v22);
  v28 = v12[17];
  v29 = type metadata accessor for SnippetHeaderModel(0);
  v30 = *(*(v29 - 8) + 56);
  v84 = v14;
  v67 = v28;
  v30(&v14[v28], 1, 1, v29);
  __swift_project_boxed_opaque_existential_1(v86, v86[3]);
  lazy protocol witness table accessor for type BodyMassQueryModel.CodingKeys and conformance BodyMassQueryModel.CodingKeys();
  v31 = v83;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v31)
  {
    v61 = v84;
  }

  else
  {
    v33 = v75;
    v32 = v76;
    v83 = v25;
    v66 = v26;
    v65 = v27;
    v34 = v79;
    v64[1] = v29;
    v35 = v80;
    v36 = v78;
    v98 = 0;
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_9(&lazy protocol witness table cache variable for type AppPunchout and conformance AppPunchout, MEMORY[0x277D62880], MEMORY[0x277D62890]);
    v37 = v81;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v39 = v37;
    v40 = v84;
    outlined assign with take of AppPunchout?(v39, v84, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    v97 = 1;
    *v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v32[8] = v41 & 1;
    v96 = 2;
    *v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v33[8] = v42 & 1;
    v95 = 3;
    v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v44 = v74;
    *v74 = v43;
    *(v44 + 8) = v45 & 1;
    v94 = 4;
    v46 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v47 = v73;
    *v73 = v46;
    *(v47 + 8) = v48 & 1;
    v93 = 5;
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_9(&lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString, MEMORY[0x277D55C48], MEMORY[0x277D55C60]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of AppPunchout?(v34, v40 + v72, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v92 = 6;
    v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v50 = v71;
    *v71 = v49;
    v50[1] = v51;
    v91 = 7;
    v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v53 = v83;
    *v83 = v52;
    v53[1] = v54;
    v90[0] = 8;
    v55 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v56 = v66;
    *v66 = v55;
    v56[1] = v57;
    v89 = 9;
    v58 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v59 = v65;
    *v65 = v58;
    v59[1] = v60;
    v88 = 10;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v61 = v84;
    outlined assign with take of AppPunchout?(v35, &v84[v69], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v87 = 11;
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_9(&lazy protocol witness table cache variable for type SnippetHeaderModel and conformance SnippetHeaderModel, type metadata accessor for SnippetHeaderModel, &protocol conformance descriptor for SnippetHeaderModel);
    v62 = v82;
    v63 = v85;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v36 + 8))(v63, v62);
    outlined assign with take of AppPunchout?(v70, v61 + v67, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    outlined init with copy of BodyMassQueryModel(v61, v68);
  }

  __swift_destroy_boxed_opaque_existential_1(v86);
  return outlined destroy of BodyMassQueryModel(v61);
}

uint64_t outlined destroy of BodyMassQueryModel(uint64_t a1)
{
  Model = type metadata accessor for BodyMassQueryModel(0);
  (*(*(Model - 8) + 8))(a1, Model);
  return a1;
}

uint64_t outlined init with copy of BodyMassQueryModel(uint64_t a1, uint64_t a2)
{
  Model = type metadata accessor for BodyMassQueryModel(0);
  (*(*(Model - 8) + 16))(a2, a1, Model);
  return a2;
}

uint64_t _s10SnippetKit11AppPunchoutVACSEAAWlTm_9(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata completion function for BodyMassQueryModel(uint64_t a1)
{
  _s10SnippetKit11AppPunchoutVSgMaTm_1(319, &lazy cache variable for type metadata for AppPunchout?, MEMORY[0x277D62880]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8]);
    if (v2 <= 0x3F)
    {
      _s10SnippetKit11AppPunchoutVSgMaTm_1(319, &lazy cache variable for type metadata for SpeakableString?, MEMORY[0x277D55C48]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Double?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0]);
        if (v4 <= 0x3F)
        {
          _s10SnippetKit11AppPunchoutVSgMaTm_1(319, &lazy cache variable for type metadata for SnippetHeaderModel?, type metadata accessor for SnippetHeaderModel);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for BodyMassQueryModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BodyMassQueryModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized BodyMassQueryModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5665676172657661 && a2 == 0xEC00000065756C61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C615678616DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65756C61566E696DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6562614C65746164 && a2 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB1070 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65756C615678616DLL && a2 == 0xEE00676E69727453 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x65756C61566E696DLL && a2 == 0xEE00676E69727453 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x72745365756C6176 && a2 == 0xEB00000000676E69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6972745374696E75 && a2 == 0xEA0000000000676ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB0F30 == a2)
  {

    return 11;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t PhoneRingsModel.exerciseGoalValue.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t PhoneRingsModel.exerciseTotalValue.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t PhoneRingsModel.moveGoalValue.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t PhoneRingsModel.moveTotalValue.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t PhoneRingsModel.standGoalValue.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t PhoneRingsModel.standTotalValue.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t PhoneRingsModel.exerciseLabel.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

void PhoneRingsModel.exerciseLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
}

uint64_t PhoneRingsModel.exerciseValueLabel.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

void PhoneRingsModel.exerciseValueLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
}

uint64_t PhoneRingsModel.exerciseUnitLabel.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

void PhoneRingsModel.exerciseUnitLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
}

uint64_t PhoneRingsModel.moveLabel.getter()
{
  v1 = *(v0 + 144);

  return v1;
}

void PhoneRingsModel.moveLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
}

uint64_t PhoneRingsModel.moveValueLabel.getter()
{
  v1 = *(v0 + 160);

  return v1;
}

void PhoneRingsModel.moveValueLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
}

uint64_t PhoneRingsModel.moveUnitLabel.getter()
{
  v1 = *(v0 + 176);

  return v1;
}

void PhoneRingsModel.moveUnitLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
}

uint64_t PhoneRingsModel.standLabel.getter()
{
  v1 = *(v0 + 192);

  return v1;
}

void PhoneRingsModel.standLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 192) = a1;
  *(v2 + 200) = a2;
}

uint64_t PhoneRingsModel.standValueLabel.getter()
{
  v1 = *(v0 + 208);

  return v1;
}

void PhoneRingsModel.standValueLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 208) = a1;
  *(v2 + 216) = a2;
}

uint64_t PhoneRingsModel.standUnitLabel.getter()
{
  v1 = *(v0 + 224);

  return v1;
}

void PhoneRingsModel.standUnitLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
}

void __swiftcall PhoneRingsModel.init(exerciseGoalValue:exerciseTotalValue:moveGoalValue:moveTotalValue:standGoalValue:standTotalValue:exerciseLabel:exerciseUnitLabel:moveLabel:moveUnitLabel:standLabel:standUnitLabel:isSmartEnabled:)(WellnessUI::PhoneRingsModel *__return_ptr retstr, Swift::Double exerciseGoalValue, Swift::Double exerciseTotalValue, Swift::Double moveGoalValue, Swift::Double moveTotalValue, Swift::Double standGoalValue, Swift::Double standTotalValue, Swift::String exerciseLabel, Swift::String exerciseUnitLabel, Swift::String moveLabel, Swift::String moveUnitLabel, Swift::String standLabel, Swift::String standUnitLabel, Swift::Bool isSmartEnabled)
{
  retstr->exerciseGoalValue.value = exerciseGoalValue;
  retstr->exerciseGoalValue.is_nil = 0;
  *(&retstr->exerciseTotalValue.value + 7) = exerciseTotalValue;
  BYTE6(retstr->moveGoalValue.value) = 0;
  *(&retstr->moveTotalValue.value + 5) = moveGoalValue;
  BYTE4(retstr->standGoalValue.value) = 0;
  *(&retstr->standTotalValue.value + 3) = moveTotalValue;
  LOBYTE(retstr->exerciseLabel.value._countAndFlagsBits) = 0;
  *&retstr->exerciseLabel.value._object = standGoalValue;
  LOBYTE(retstr->exerciseValueLabel.value._countAndFlagsBits) = 0;
  *&retstr->exerciseValueLabel.value._object = standTotalValue;
  LOBYTE(retstr->exerciseUnitLabel.value._countAndFlagsBits) = 0;
  *&retstr->exerciseUnitLabel.value._object = exerciseLabel;
  if ((*&exerciseTotalValue & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (exerciseTotalValue <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (exerciseTotalValue >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  object = moveUnitLabel._object;
  countAndFlagsBits = moveUnitLabel._countAndFlagsBits;
  v18 = moveLabel._object;
  v19 = moveLabel._countAndFlagsBits;
  v20 = exerciseUnitLabel._object;
  v21 = exerciseUnitLabel._countAndFlagsBits;
  v32 = dispatch thunk of CustomStringConvertible.description.getter();
  v35 = v26;
  MEMORY[0x2743E0A10](47, 0xE100000000000000);
  if ((*&exerciseGoalValue & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (exerciseGoalValue <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (exerciseGoalValue >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v27 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743E0A10](v27);

  retstr->moveLabel.value._object = v32;
  retstr->moveValueLabel.value._countAndFlagsBits = v35;
  retstr->moveValueLabel.value._object = v21;
  retstr->moveUnitLabel.value._countAndFlagsBits = v20;
  retstr->moveUnitLabel.value._object = v19;
  retstr->standLabel.value._countAndFlagsBits = v18;
  if ((*&moveTotalValue & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (moveTotalValue <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (moveTotalValue >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v33 = dispatch thunk of CustomStringConvertible.description.getter();
  v36 = v28;
  MEMORY[0x2743E0A10](47, 0xE100000000000000);
  if ((*&moveGoalValue & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (moveGoalValue <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (moveGoalValue >= 9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v29 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743E0A10](v29);

  retstr->standLabel.value._object = v33;
  retstr->standValueLabel.value._countAndFlagsBits = v36;
  retstr->standValueLabel.value._object = countAndFlagsBits;
  retstr->standUnitLabel.value._countAndFlagsBits = object;
  *&retstr->standUnitLabel.value._object = standLabel;
  if ((*&standTotalValue & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (standTotalValue <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (standTotalValue >= 9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v34 = dispatch thunk of CustomStringConvertible.description.getter();
  v37 = v30;
  MEMORY[0x2743E0A10](47, 0xE100000000000000);
  if ((*&standGoalValue & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (standGoalValue <= -9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (standGoalValue < 9.22337204e18)
  {
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743E0A10](v31);

    *&retstr[1].exerciseGoalValue.value = v34;
    *&retstr[1].exerciseGoalValue.is_nil = v37;
    *(&retstr[1].exerciseTotalValue.value + 7) = standUnitLabel;
    BYTE5(retstr[1].moveTotalValue.value) = isSmartEnabled;
    return;
  }

LABEL_37:
  __break(1u);
}

unint64_t PhoneRingsModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6C616F4765766F6DLL;
  switch(a1)
  {
    case 1:
    case 7:
      result = 0xD000000000000012;
      break;
    case 2:
      return result;
    case 3:
      result = 0x61746F5465766F6DLL;
      break;
    case 4:
      result = 0x616F47646E617473;
      break;
    case 5:
      result = 0x746F54646E617473;
      break;
    case 6:
      result = 0x6573696372657865;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x6562614C65766F6DLL;
      break;
    case 10:
      result = 0x756C615665766F6DLL;
      break;
    case 11:
      result = 0x74696E5565766F6DLL;
      break;
    case 12:
      result = 0x62614C646E617473;
      break;
    case 13:
      result = 0x6C6156646E617473;
      break;
    case 14:
      result = 0x696E55646E617473;
      break;
    case 15:
      result = 0x457472616D537369;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PhoneRingsModel.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized PhoneRingsModel.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneRingsModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneRingsModel.CodingKeys and conformance PhoneRingsModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneRingsModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneRingsModel.CodingKeys and conformance PhoneRingsModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PhoneRingsModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI15PhoneRingsModelV10CodingKeys021_722D42DE42A4B9F66D80N10FBAEF6D79FLLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI15PhoneRingsModelV10CodingKeys021_722D42DE42A4B9F66D80N10FBAEF6D79FLLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v20 - v5;
  v7 = *(v1 + 16);
  v49 = *(v1 + 24);
  v46 = *(v1 + 32);
  v47 = v7;
  v45 = *(v1 + 40);
  v44 = *(v1 + 48);
  v43 = *(v1 + 56);
  v42 = *(v1 + 64);
  LODWORD(v7) = *(v1 + 72);
  v8 = *(v1 + 80);
  v40 = *(v1 + 88);
  v41 = v7;
  v9 = *(v1 + 96);
  v38 = *(v1 + 104);
  v39 = v8;
  v10 = *(v1 + 112);
  v36 = *(v1 + 120);
  v37 = v9;
  v11 = *(v1 + 128);
  v34 = *(v1 + 136);
  v35 = v10;
  v12 = *(v1 + 144);
  v32 = *(v1 + 152);
  v33 = v11;
  v13 = *(v1 + 160);
  v30 = *(v1 + 168);
  v31 = v12;
  v14 = *(v1 + 184);
  v27 = *(v1 + 176);
  v28 = v14;
  v29 = v13;
  v15 = *(v1 + 200);
  v25 = *(v1 + 192);
  v26 = v15;
  v16 = *(v1 + 216);
  v23 = *(v1 + 208);
  v24 = v16;
  v17 = *(v1 + 232);
  v21 = *(v1 + 224);
  v22 = v17;
  v20[3] = *(v1 + 240);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhoneRingsModel.CodingKeys and conformance PhoneRingsModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v50 = 0;
  v18 = v48;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v18)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v48 = v4;
  v50 = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v50 = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v50 = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v50 = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v50 = 5;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v50 = 6;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v50 = 7;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v50 = 8;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v50 = 9;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v50 = 10;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v50 = 11;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v50 = 12;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v50 = 13;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v50 = 14;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v50 = 15;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v48 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type PhoneRingsModel.CodingKeys and conformance PhoneRingsModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneRingsModel.CodingKeys and conformance PhoneRingsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneRingsModel.CodingKeys and conformance PhoneRingsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneRingsModel.CodingKeys and conformance PhoneRingsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneRingsModel.CodingKeys and conformance PhoneRingsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneRingsModel.CodingKeys and conformance PhoneRingsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneRingsModel.CodingKeys and conformance PhoneRingsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneRingsModel.CodingKeys and conformance PhoneRingsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneRingsModel.CodingKeys and conformance PhoneRingsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneRingsModel.CodingKeys and conformance PhoneRingsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneRingsModel.CodingKeys and conformance PhoneRingsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneRingsModel.CodingKeys and conformance PhoneRingsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneRingsModel.CodingKeys and conformance PhoneRingsModel.CodingKeys);
  }

  return result;
}

void PhoneRingsModel.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI15PhoneRingsModelV10CodingKeys021_722D42DE42A4B9F66D80N10FBAEF6D79FLLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI15PhoneRingsModelV10CodingKeys021_722D42DE42A4B9F66D80N10FBAEF6D79FLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v51 - v7;
  v9 = a1[3];
  v71 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  lazy protocol witness table accessor for type PhoneRingsModel.CodingKeys and conformance PhoneRingsModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v134 = v2;
    v72 = 0;
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    v10 = v6;
    LOBYTE(v89) = 0;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v133 = v12 & 1;
    LOBYTE(v89) = 1;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v131 = v14 & 1;
    LOBYTE(v89) = 2;
    v70 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v129 = v15 & 1;
    LOBYTE(v89) = 3;
    v69 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v127 = v16 & 1;
    LOBYTE(v89) = 4;
    v68 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v125 = v17 & 1;
    LOBYTE(v89) = 5;
    v67 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v123 = v18 & 1;
    LOBYTE(v89) = 6;
    *&v66 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(&v66 + 1) = v19;
    LOBYTE(v89) = 7;
    *&v65 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(&v65 + 1) = v20;
    v63 = a2;
    LOBYTE(v89) = 8;
    v64 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v134 = 0;
    v21 = v70;
    v22 = v13;
    v62 = v23;
    LOBYTE(v89) = 9;
    v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v61 = v25;
    v134 = 0;
    v26 = v24;
    LOBYTE(v89) = 10;
    *&v60 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(&v60 + 1) = v27;
    v134 = 0;
    LOBYTE(v89) = 11;
    *&v59 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(&v59 + 1) = v28;
    v134 = 0;
    LOBYTE(v89) = 12;
    *&v58 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(&v58 + 1) = v29;
    v134 = 0;
    LOBYTE(v89) = 13;
    v57 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v72 = v30;
    v134 = 0;
    LOBYTE(v89) = 14;
    *&v56 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(&v56 + 1) = v31;
    v134 = 0;
    v121 = 15;
    v32 = KeyedDecodingContainer.decode(_:forKey:)();
    v134 = 0;
    v33 = v32;
    (*(v10 + 8))(v8, v5);
    *&v73 = v11;
    v34 = v133;
    BYTE8(v73) = v133;
    *&v74 = v22;
    v35 = v131;
    BYTE8(v74) = v131;
    *&v75 = v21;
    v51 = v129;
    BYTE8(v75) = v129;
    v36 = v69;
    *&v76 = v69;
    v52 = v127;
    BYTE8(v76) = v127;
    *&v77 = v68;
    v53 = v125;
    BYTE8(v77) = v125;
    *&v78 = v67;
    v54 = v123;
    BYTE8(v78) = v123;
    v79 = v66;
    v80 = v65;
    *&v81 = v64;
    *(&v81 + 1) = v62;
    v55 = v26;
    *&v82 = v26;
    *(&v82 + 1) = v61;
    v83 = v60;
    v84 = v59;
    v85 = v58;
    v37 = *(&v56 + 1);
    *&v86 = v57;
    *(&v86 + 1) = v72;
    v87 = v56;
    v33 &= 1u;
    v38 = v73;
    v39 = v74;
    v40 = v76;
    v41 = v63;
    *(v63 + 32) = v75;
    *(v41 + 48) = v40;
    *v41 = v38;
    *(v41 + 16) = v39;
    v42 = v77;
    v43 = v78;
    v44 = v80;
    *(v41 + 96) = v79;
    *(v41 + 112) = v44;
    *(v41 + 64) = v42;
    *(v41 + 80) = v43;
    v45 = v81;
    v46 = v82;
    v47 = v84;
    *(v41 + 160) = v83;
    *(v41 + 176) = v47;
    *(v41 + 128) = v45;
    *(v41 + 144) = v46;
    v48 = v85;
    v49 = v86;
    v50 = v87;
    *(v41 + 240) = v33;
    *(v41 + 208) = v49;
    *(v41 + 224) = v50;
    *(v41 + 192) = v48;
    v88 = v33;
    outlined init with copy of PhoneRingsModel(&v73, &v89);
    __swift_destroy_boxed_opaque_existential_1(v71);
    v89 = v11;
    v90 = v34;
    *v91 = *v132;
    *&v91[3] = *&v132[3];
    v92 = v22;
    v93 = v35;
    *v94 = *v130;
    *&v94[3] = *&v130[3];
    v95 = v21;
    v96 = v51;
    *v97 = *v128;
    *&v97[3] = *&v128[3];
    v98 = v36;
    v99 = v52;
    *&v100[3] = *&v126[3];
    *v100 = *v126;
    v101 = v68;
    v102 = v53;
    *&v103[3] = *&v124[3];
    *v103 = *v124;
    v104 = v67;
    v105 = v54;
    *v106 = *v122;
    *&v106[3] = *&v122[3];
    v107 = v66;
    v108 = v65;
    v109 = v64;
    v110 = v62;
    v111 = v55;
    v112 = v61;
    v113 = v60;
    v114 = v59;
    v115 = v58;
    v116 = v57;
    v117 = v72;
    v118 = v56;
    v119 = v37;
    v120 = v33;
    outlined destroy of PhoneRingsModel(&v89);
  }
}

uint64_t specialized PhoneRingsModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x8000000273EB1310 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB1330 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C616F4765766F6DLL && a2 == 0xED000065756C6156 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61746F5465766F6DLL && a2 == 0xEE0065756C61566CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x616F47646E617473 && a2 == 0xEE0065756C61566CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746F54646E617473 && a2 == 0xEF65756C61566C61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6573696372657865 && a2 == 0xED00006C6562614CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB18B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000273EB18D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6562614C65766F6DLL && a2 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x756C615665766F6DLL && a2 == 0xEE006C6562614C65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x74696E5565766F6DLL && a2 == 0xED00006C6562614CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x62614C646E617473 && a2 == 0xEA00000000006C65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6C6156646E617473 && a2 == 0xEF6C6562614C6575 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x696E55646E617473 && a2 == 0xEE006C6562614C74 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x457472616D537369 && a2 == 0xEE0064656C62616ELL)
  {

    return 15;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t protocol witness for SnippetProviding.init() in conformance WellnessUIPlugin@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t specialized WellnessUIPlugin.snippet(for:mode:idiom:)(uint64_t a1)
{
  *&v165 = a1;
  *&v164 = type metadata accessor for TemperatureQuerySnippet(0);
  MEMORY[0x28223BE20](v164);
  v163 = &v128 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  Model = type metadata accessor for TemperatureQueryModel(0);
  MEMORY[0x28223BE20](Model - 8);
  v162 = &v128 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for SpecificMedCompletedLogSnippet(0);
  MEMORY[0x28223BE20](v161);
  v160 = &v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SpecificMedCompletedLogModel(0);
  MEMORY[0x28223BE20](v5 - 8);
  v155 = &v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v157 = &v128 - v8;
  Snippet = type metadata accessor for SleepQuerySnippet(0);
  MEMORY[0x28223BE20](Snippet);
  v158 = &v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SleepQueryModel(0);
  MEMORY[0x28223BE20](v10 - 8);
  v156 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for SingleActivitySummarySnippet(0);
  MEMORY[0x28223BE20](v152);
  v151 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SingleActivitySummaryModel(0);
  MEMORY[0x28223BE20](v13 - 8);
  v150 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for PhoneRingsSnippet(0);
  MEMORY[0x28223BE20](v154);
  v153 = (&v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v149 = type metadata accessor for HeightQuerySnippet(0);
  MEMORY[0x28223BE20](v149);
  v148 = &v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for HeightQueryModel(0);
  MEMORY[0x28223BE20](v17 - 8);
  v147 = &v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for HealthDataLogSnippet(0);
  MEMORY[0x28223BE20](v146);
  v145 = &v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for HealthDataLogModel(0);
  MEMORY[0x28223BE20](v20 - 8);
  v144 = &v128 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for GenericQuerySnippet(0);
  MEMORY[0x28223BE20](v143);
  v142 = &v128 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for GenericQueryModel(0);
  MEMORY[0x28223BE20](v23 - 8);
  v141 = &v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for GenericMedCompletedLogSnippet(0);
  MEMORY[0x28223BE20](v140);
  v139 = &v128 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for GenericMedCompletedLogModel(0);
  MEMORY[0x28223BE20](v26 - 8);
  v133 = &v128 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v138 = &v128 - v29;
  v135 = type metadata accessor for GenericButtonSnippet(0);
  MEMORY[0x28223BE20](v135);
  v134 = &v128 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for GenericButtonModel(0);
  MEMORY[0x28223BE20](v31 - 8);
  v131 = &v128 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for CycleTrackingLogSnippet(0);
  MEMORY[0x28223BE20](v137);
  v136 = &v128 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for CycleTrackingLogModel(0);
  MEMORY[0x28223BE20](v34 - 8);
  v132 = &v128 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for BloodPressureQuerySnippet(0);
  MEMORY[0x28223BE20](v130);
  v129 = &v128 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for BloodPressureQueryModel(0);
  MEMORY[0x28223BE20](v37 - 8);
  v128 = &v128 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for BloodPressureLogSnippet(0);
  MEMORY[0x28223BE20](v39);
  v41 = &v128 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for BloodPressureLogModel(0);
  MEMORY[0x28223BE20](v42 - 8);
  v44 = &v128 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for OxygenSaturationQuerySnippet(0);
  MEMORY[0x28223BE20](v45);
  v47 = &v128 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for OxygenSaturationQueryModel(0);
  MEMORY[0x28223BE20](v48 - 8);
  v50 = (&v128 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = type metadata accessor for WellnessSnippets(0);
  MEMORY[0x28223BE20](v51);
  v53 = &v128 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of WellnessSnippets(v165, v53, type metadata accessor for WellnessSnippets);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v44 = v128;
      _s10WellnessUI21TemperatureQueryModelVWObTm_1(v53, v128, type metadata accessor for BloodPressureQueryModel);
      v91 = v129;
      outlined init with copy of WellnessSnippets(v44, v129, type metadata accessor for BloodPressureQueryModel);
      v92 = (v91 + *(v130 + 20));
      type metadata accessor for Context();
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
      *v92 = EnvironmentObject.init()();
      v92[1] = v93;
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type BloodPressureQuerySnippet and conformance BloodPressureQuerySnippet, type metadata accessor for BloodPressureQuerySnippet, &protocol conformance descriptor for BloodPressureQuerySnippet);
      v56 = View.eraseToAnyView()();
      outlined destroy of TemperatureQuerySnippet(v91, type metadata accessor for BloodPressureQuerySnippet);
      v61 = type metadata accessor for BloodPressureQueryModel;
      goto LABEL_20;
    case 2u:
      _s10WellnessUI21TemperatureQueryModelVWObTm_1(v53, v44, type metadata accessor for BloodPressureLogModel);
      outlined init with copy of WellnessSnippets(v44, v41, type metadata accessor for BloodPressureLogModel);
      v76 = &v41[*(v39 + 20)];
      type metadata accessor for Context();
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
      *v76 = EnvironmentObject.init()();
      v76[1] = v77;
      v78 = *(v39 + 24);
      *&v41[v78] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type BloodPressureLogSnippet and conformance BloodPressureLogSnippet, type metadata accessor for BloodPressureLogSnippet, &protocol conformance descriptor for BloodPressureLogSnippet);
      v56 = View.eraseToAnyView()();
      outlined destroy of TemperatureQuerySnippet(v41, type metadata accessor for BloodPressureLogSnippet);
      v61 = type metadata accessor for BloodPressureLogModel;
      goto LABEL_20;
    case 3u:
      v44 = v132;
      _s10WellnessUI21TemperatureQueryModelVWObTm_1(v53, v132, type metadata accessor for CycleTrackingLogModel);
      v81 = v136;
      outlined init with copy of WellnessSnippets(v44, v136, type metadata accessor for CycleTrackingLogModel);
      v82 = v137;
      v83 = (v81 + *(v137 + 20));
      type metadata accessor for Context();
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
      *v83 = EnvironmentObject.init()();
      v83[1] = v84;
      v85 = *(v82 + 24);
      *(v81 + v85) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type CycleTrackingLogSnippet and conformance CycleTrackingLogSnippet, type metadata accessor for CycleTrackingLogSnippet, &protocol conformance descriptor for CycleTrackingLogSnippet);
      v56 = View.eraseToAnyView()();
      outlined destroy of TemperatureQuerySnippet(v81, type metadata accessor for CycleTrackingLogSnippet);
      v61 = type metadata accessor for CycleTrackingLogModel;
      goto LABEL_20;
    case 4u:
      v50 = v131;
      _s10WellnessUI21TemperatureQueryModelVWObTm_1(v53, v131, type metadata accessor for GenericButtonModel);
      v67 = v134;
      outlined init with copy of WellnessSnippets(v50, &v134[*(v135 + 20)], type metadata accessor for GenericButtonModel);
      ActionHandler.init()();
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type GenericButtonSnippet and conformance GenericButtonSnippet, type metadata accessor for GenericButtonSnippet, &protocol conformance descriptor for GenericButtonSnippet);
      v56 = View.eraseToAnyView()();
      outlined destroy of TemperatureQuerySnippet(v67, type metadata accessor for GenericButtonSnippet);
      v57 = type metadata accessor for GenericButtonModel;
      goto LABEL_18;
    case 5u:
      v94 = *v53;
      v164 = *(v53 + 1);
      v165 = v94;
      v95 = *(v53 + 4);
      v96 = *(v53 + 5);
      v97 = v53[48];
      type metadata accessor for Context();
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
      v98 = EnvironmentObject.init()();
      v166 = v165;
      v167 = v164;
      *&v168 = v95;
      *(&v168 + 1) = v96;
      LOBYTE(v169) = v97;
      *(&v169 + 1) = v98;
      v170 = v99;
      lazy protocol witness table accessor for type GenericBinaryButtonSnippet and conformance GenericBinaryButtonSnippet();
      v56 = View.eraseToAnyView()();
      v173 = v168;
      v174 = v169;
      *&v175[0] = v170;
      v171 = v166;
      v172 = v167;
      outlined destroy of GenericBinaryButtonSnippet(&v171);
      return v56;
    case 6u:
      v100 = v138;
      _s10WellnessUI21TemperatureQueryModelVWObTm_1(v53, v138, type metadata accessor for GenericMedCompletedLogModel);
      v104 = v133;
      outlined init with copy of WellnessSnippets(v100, v133, type metadata accessor for GenericMedCompletedLogModel);
      v105 = v139;
      GenericMedCompletedLogSnippet.init(model:)(v104, v139);
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type GenericMedCompletedLogSnippet and conformance GenericMedCompletedLogSnippet, type metadata accessor for GenericMedCompletedLogSnippet, &protocol conformance descriptor for GenericMedCompletedLogSnippet);
      v56 = View.eraseToAnyView()();
      outlined destroy of TemperatureQuerySnippet(v105, type metadata accessor for GenericMedCompletedLogSnippet);
      v103 = type metadata accessor for GenericMedCompletedLogModel;
      goto LABEL_16;
    case 7u:
      v44 = v144;
      _s10WellnessUI21TemperatureQueryModelVWObTm_1(v53, v144, type metadata accessor for HealthDataLogModel);
      v86 = v145;
      outlined init with copy of WellnessSnippets(v44, v145, type metadata accessor for HealthDataLogModel);
      v87 = v146;
      v88 = (v86 + *(v146 + 20));
      type metadata accessor for Context();
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
      *v88 = EnvironmentObject.init()();
      v88[1] = v89;
      v90 = *(v87 + 24);
      *(v86 + v90) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type HealthDataLogSnippet and conformance HealthDataLogSnippet, type metadata accessor for HealthDataLogSnippet, &protocol conformance descriptor for HealthDataLogSnippet);
      v56 = View.eraseToAnyView()();
      outlined destroy of TemperatureQuerySnippet(v86, type metadata accessor for HealthDataLogSnippet);
      v61 = type metadata accessor for HealthDataLogModel;
      goto LABEL_20;
    case 8u:
      v44 = v141;
      _s10WellnessUI21TemperatureQueryModelVWObTm_1(v53, v141, type metadata accessor for GenericQueryModel);
      v124 = v142;
      outlined init with copy of WellnessSnippets(v44, v142, type metadata accessor for GenericQueryModel);
      v125 = (v124 + *(v143 + 20));
      type metadata accessor for Context();
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
      *v125 = EnvironmentObject.init()();
      v125[1] = v126;
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type GenericQuerySnippet and conformance GenericQuerySnippet, type metadata accessor for GenericQuerySnippet, &protocol conformance descriptor for GenericQuerySnippet);
      v56 = View.eraseToAnyView()();
      outlined destroy of TemperatureQuerySnippet(v124, type metadata accessor for GenericQuerySnippet);
      v61 = type metadata accessor for GenericQueryModel;
      goto LABEL_20;
    case 9u:
      v44 = v147;
      _s10WellnessUI21TemperatureQueryModelVWObTm_1(v53, v147, type metadata accessor for HeightQueryModel);
      v73 = v148;
      outlined init with copy of WellnessSnippets(v44, v148, type metadata accessor for HeightQueryModel);
      v74 = (v73 + *(v149 + 20));
      type metadata accessor for Context();
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
      *v74 = EnvironmentObject.init()();
      v74[1] = v75;
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type HeightQuerySnippet and conformance HeightQuerySnippet, type metadata accessor for HeightQuerySnippet, &protocol conformance descriptor for HeightQuerySnippet);
      v56 = View.eraseToAnyView()();
      outlined destroy of TemperatureQuerySnippet(v73, type metadata accessor for HeightQuerySnippet);
      v61 = type metadata accessor for HeightQueryModel;
      goto LABEL_20;
    case 0xAu:
      v108 = *(v53 + 13);
      v182 = *(v53 + 12);
      v183 = v108;
      v184 = *(v53 + 14);
      v185 = v53[240];
      v109 = *(v53 + 9);
      v178 = *(v53 + 8);
      v179 = v109;
      v110 = *(v53 + 11);
      v180 = *(v53 + 10);
      v181 = v110;
      v111 = *(v53 + 5);
      v175[0] = *(v53 + 4);
      v175[1] = v111;
      v112 = *(v53 + 7);
      v176 = *(v53 + 6);
      v177 = v112;
      v113 = *(v53 + 1);
      v171 = *v53;
      v172 = v113;
      v114 = *(v53 + 3);
      v173 = *(v53 + 2);
      v174 = v114;
      KeyPath = swift_getKeyPath();
      v50 = v153;
      *v153 = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR);
      swift_storeEnumTagMultiPayload();
      v116 = v50 + *(v154 + 20);
      v117 = v183;
      *(v116 + 12) = v182;
      *(v116 + 13) = v117;
      *(v116 + 14) = v184;
      v116[240] = v185;
      v118 = v179;
      *(v116 + 8) = v178;
      *(v116 + 9) = v118;
      v119 = v181;
      *(v116 + 10) = v180;
      *(v116 + 11) = v119;
      v120 = v175[1];
      *(v116 + 4) = v175[0];
      *(v116 + 5) = v120;
      v121 = v177;
      *(v116 + 6) = v176;
      *(v116 + 7) = v121;
      v122 = v172;
      *v116 = v171;
      *(v116 + 1) = v122;
      v123 = v174;
      *(v116 + 2) = v173;
      *(v116 + 3) = v123;
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type PhoneRingsSnippet and conformance PhoneRingsSnippet, type metadata accessor for PhoneRingsSnippet, &protocol conformance descriptor for PhoneRingsSnippet);
      v56 = View.eraseToAnyView()();
      v57 = type metadata accessor for PhoneRingsSnippet;
      goto LABEL_18;
    case 0xBu:
      v44 = v150;
      _s10WellnessUI21TemperatureQueryModelVWObTm_1(v53, v150, type metadata accessor for SingleActivitySummaryModel);
      v62 = v151;
      outlined init with copy of WellnessSnippets(v44, v151, type metadata accessor for SingleActivitySummaryModel);
      v63 = v152;
      v64 = (v62 + *(v152 + 20));
      type metadata accessor for Context();
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
      *v64 = EnvironmentObject.init()();
      v64[1] = v65;
      v66 = (v62 + *(v63 + 24));
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type SingleActivitySummarySnippet and conformance SingleActivitySummarySnippet, type metadata accessor for SingleActivitySummarySnippet, &protocol conformance descriptor for SingleActivitySummarySnippet);
      *v66 = 0;
      v66[1] = 0;
      v56 = View.eraseToAnyView()();
      outlined destroy of TemperatureQuerySnippet(v62, type metadata accessor for SingleActivitySummarySnippet);
      v61 = type metadata accessor for SingleActivitySummaryModel;
      goto LABEL_20;
    case 0xCu:
      v44 = v156;
      _s10WellnessUI21TemperatureQueryModelVWObTm_1(v53, v156, type metadata accessor for SleepQueryModel);
      v68 = v158;
      outlined init with copy of WellnessSnippets(v44, v158, type metadata accessor for SleepQueryModel);
      v69 = Snippet;
      v70 = (v68 + *(Snippet + 20));
      type metadata accessor for Context();
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
      *v70 = EnvironmentObject.init()();
      v70[1] = v71;
      v72 = (v68 + *(v69 + 24));
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type SleepQuerySnippet and conformance SleepQuerySnippet, type metadata accessor for SleepQuerySnippet, &protocol conformance descriptor for SleepQuerySnippet);
      *v72 = 0;
      v72[1] = 0;
      v56 = View.eraseToAnyView()();
      outlined destroy of TemperatureQuerySnippet(v68, type metadata accessor for SleepQuerySnippet);
      v61 = type metadata accessor for SleepQueryModel;
      goto LABEL_20;
    case 0xDu:
      v100 = v157;
      _s10WellnessUI21TemperatureQueryModelVWObTm_1(v53, v157, type metadata accessor for SpecificMedCompletedLogModel);
      v101 = v155;
      outlined init with copy of WellnessSnippets(v100, v155, type metadata accessor for SpecificMedCompletedLogModel);
      v102 = v160;
      SpecificMedCompletedLogSnippet.init(model:)(v101, v160);
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type SpecificMedCompletedLogSnippet and conformance SpecificMedCompletedLogSnippet, type metadata accessor for SpecificMedCompletedLogSnippet, &protocol conformance descriptor for SpecificMedCompletedLogSnippet);
      v56 = View.eraseToAnyView()();
      outlined destroy of TemperatureQuerySnippet(v102, type metadata accessor for SpecificMedCompletedLogSnippet);
      v103 = type metadata accessor for SpecificMedCompletedLogModel;
LABEL_16:
      v106 = v103;
      v107 = v100;
      goto LABEL_21;
    case 0xEu:
      v44 = v162;
      _s10WellnessUI21TemperatureQueryModelVWObTm_1(v53, v162, type metadata accessor for TemperatureQueryModel);
      v58 = v163;
      outlined init with copy of WellnessSnippets(v44, v163, type metadata accessor for TemperatureQueryModel);
      v59 = (v58 + *(v164 + 20));
      type metadata accessor for Context();
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
      *v59 = EnvironmentObject.init()();
      v59[1] = v60;
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type TemperatureQuerySnippet and conformance TemperatureQuerySnippet, type metadata accessor for TemperatureQuerySnippet, &protocol conformance descriptor for TemperatureQuerySnippet);
      v56 = View.eraseToAnyView()();
      outlined destroy of TemperatureQuerySnippet(v58, type metadata accessor for TemperatureQuerySnippet);
      v61 = type metadata accessor for TemperatureQueryModel;
LABEL_20:
      v106 = v61;
      v107 = v44;
      goto LABEL_21;
    case 0xFu:
      v79 = *(v53 + 3);
      v173 = *(v53 + 2);
      v174 = v79;
      v175[0] = *(v53 + 4);
      *(v175 + 9) = *(v53 + 73);
      v80 = *(v53 + 1);
      v171 = *v53;
      v172 = v80;
      lazy protocol witness table accessor for type WatchRingsSnippet and conformance WatchRingsSnippet();
      return View.eraseToAnyView()();
    default:
      _s10WellnessUI21TemperatureQueryModelVWObTm_1(v53, v50, type metadata accessor for OxygenSaturationQueryModel);
      outlined init with copy of WellnessSnippets(v50, v47, type metadata accessor for OxygenSaturationQueryModel);
      v54 = &v47[*(v45 + 20)];
      type metadata accessor for Context();
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
      *v54 = EnvironmentObject.init()();
      v54[1] = v55;
      lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(&lazy protocol witness table cache variable for type OxygenSaturationQuerySnippet and conformance OxygenSaturationQuerySnippet, type metadata accessor for OxygenSaturationQuerySnippet, &protocol conformance descriptor for OxygenSaturationQuerySnippet);
      v56 = View.eraseToAnyView()();
      outlined destroy of TemperatureQuerySnippet(v47, type metadata accessor for OxygenSaturationQuerySnippet);
      v57 = type metadata accessor for OxygenSaturationQueryModel;
LABEL_18:
      v106 = v57;
      v107 = v50;
LABEL_21:
      outlined destroy of TemperatureQuerySnippet(v107, v106);
      return v56;
  }
}

unint64_t lazy protocol witness table accessor for type WatchRingsSnippet and conformance WatchRingsSnippet()
{
  result = lazy protocol witness table cache variable for type WatchRingsSnippet and conformance WatchRingsSnippet;
  if (!lazy protocol witness table cache variable for type WatchRingsSnippet and conformance WatchRingsSnippet)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchRingsSnippet and conformance WatchRingsSnippet);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GenericBinaryButtonSnippet and conformance GenericBinaryButtonSnippet()
{
  result = lazy protocol witness table cache variable for type GenericBinaryButtonSnippet and conformance GenericBinaryButtonSnippet;
  if (!lazy protocol witness table cache variable for type GenericBinaryButtonSnippet and conformance GenericBinaryButtonSnippet)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericBinaryButtonSnippet and conformance GenericBinaryButtonSnippet);
  }

  return result;
}

uint64_t _s10WellnessUI21TemperatureQueryModelVWObTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of WellnessSnippets(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type WellnessSnippets and conformance WellnessSnippets(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of TemperatureQuerySnippet(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

objc_class *one-time initialization function for resourceBundle()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  resourceBundle.super.isa = result;
  return result;
}

uint64_t one-time initialization function for healthdataGlyphBodymeasurements()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.healthdataGlyphBodymeasurements);
  __swift_project_value_buffer(v0, static ImageResource.healthdataGlyphBodymeasurements);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  return MEMORY[0x2743E01F0](0xD000000000000021, 0x8000000273EB1A60, resourceBundle.super.isa);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t one-time initialization function for healthdataGlyphFitness()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.healthdataGlyphFitness);
  __swift_project_value_buffer(v0, static ImageResource.healthdataGlyphFitness);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  return MEMORY[0x2743E01F0](0xD000000000000018, 0x8000000273EB1A40, resourceBundle.super.isa);
}

uint64_t one-time initialization function for healthdataGlyphHeart()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.healthdataGlyphHeart);
  __swift_project_value_buffer(v0, static ImageResource.healthdataGlyphHeart);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  return MEMORY[0x2743E01F0](0xD000000000000016, 0x8000000273EB1A20, resourceBundle.super.isa);
}

uint64_t one-time initialization function for healthdataGlyphMedicationTracking()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.healthdataGlyphMedicationTracking);
  __swift_project_value_buffer(v0, static ImageResource.healthdataGlyphMedicationTracking);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  return MEMORY[0x2743E01F0](0xD000000000000023, 0x8000000273EB19F0, resourceBundle.super.isa);
}

uint64_t one-time initialization function for healthdataGlyphReproductive()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.healthdataGlyphReproductive);
  __swift_project_value_buffer(v0, static ImageResource.healthdataGlyphReproductive);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  return MEMORY[0x2743E01F0](0xD00000000000001DLL, 0x8000000273EB19D0, resourceBundle.super.isa);
}

uint64_t one-time initialization function for healthdataGlyphRespiratory()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.healthdataGlyphRespiratory);
  __swift_project_value_buffer(v0, static ImageResource.healthdataGlyphRespiratory);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  return MEMORY[0x2743E01F0](0xD00000000000001CLL, 0x8000000273EB19B0, resourceBundle.super.isa);
}

uint64_t one-time initialization function for healthdataGlyphSleep()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.healthdataGlyphSleep);
  __swift_project_value_buffer(v0, static ImageResource.healthdataGlyphSleep);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  return MEMORY[0x2743E01F0](0xD000000000000016, 0x8000000273EB1990, resourceBundle.super.isa);
}

uint64_t one-time initialization function for healthdataGlyphVitals()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.healthdataGlyphVitals);
  __swift_project_value_buffer(v0, static ImageResource.healthdataGlyphVitals);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  return MEMORY[0x2743E01F0](0xD000000000000017, 0x8000000273EB1970, resourceBundle.super.isa);
}

uint64_t ImageResource.healthdataGlyphBodymeasurements.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for ImageResource();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t static ImageResource.healthdataGlyphBodymeasurements.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for ImageResource();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

Swift::String __swiftcall String.firstLetterCapitalized()()
{
  v0 = MEMORY[0x282169278]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FD988]();
}

{
  return MEMORY[0x2821FD998]();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FD9F8]();
}

{
  return MEMORY[0x2821FDA00]();
}

{
  return MEMORY[0x2821FDA18]();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FDAC0]();
}

{
  return MEMORY[0x2821FDAD0]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB40]();
}

{
  return MEMORY[0x2821FDB58]();
}