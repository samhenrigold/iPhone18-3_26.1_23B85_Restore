uint64_t sub_1DC5C4C1C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[7];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[8]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[10];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1DC5C4D64(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[7];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8]) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[10];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21SiriInformationSearch13PommesContextV6SourceO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  v2 = ((4 * v1) & 0xC) == 0;
  v3 = ((4 * v1) & 0xC | (v1 >> 2)) ^ 0xF;
  if (v2)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t type metadata accessor for PommesContext(uint64_t a1)
{
  result = type metadata singleton initialization cache for PommesContext;
  if (!type metadata singleton initialization cache for PommesContext)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PommesContext.description.getter()
{
  _StringGuts.grow(_:)(125);
  MEMORY[0x1E1299490](0x203A656372756F73, 0xE800000000000000);
  v1 = *v0;
  v2 = *(v0 + 8);
  outlined copy of PommesContext.Source(*v0, v2);
  v3 = String.init<A>(describing:)();
  MEMORY[0x1E1299490](v3);

  MEMORY[0x1E1299490](0x6E69616D6F640A2CLL, 0xEA0000000000203ALL);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v4 = String.init<A>(describing:)();
  MEMORY[0x1E1299490](v4);

  MEMORY[0x1E1299490](0xD00000000000001ELL, 0x80000001DC652560);
  if ((v2 >> 60) > 0xB || ((1 << (v2 >> 60)) & 0x888) == 0)
  {
    outlined copy of Data?(v1, v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  v5 = String.init<A>(describing:)();
  MEMORY[0x1E1299490](v5);

  MEMORY[0x1E1299490](0xD000000000000017, 0x80000001DC652580);
  if (*(v0 + 32))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + 32))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1E1299490](v6, v7);

  MEMORY[0x1E1299490](0xD000000000000011, 0x80000001DC6525A0);
  v8 = type metadata accessor for PommesContext(0);
  v9 = MEMORY[0x1E69E6158];
  v10 = MEMORY[0x1E1299530](*(v0 + *(v8 + 32)), MEMORY[0x1E69E6158]);
  MEMORY[0x1E1299490](v10);

  MEMORY[0x1E1299490](0xD000000000000019, 0x80000001DC6525C0);
  v11 = MEMORY[0x1E1299530](*(v0 + *(v8 + 36)), v9);
  MEMORY[0x1E1299490](v11);

  return 0;
}

uint64_t outlined copy of PommesContext.Source(uint64_t result, unint64_t a2)
{
  if ((a2 >> 60) > 0xB || ((1 << (a2 >> 60)) & 0x888) == 0)
  {
    return outlined copy of Data?(result, a2);
  }

  return result;
}

void outlined consume of Data._Representation?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    outlined consume of Data._Representation(a1, a2);
  }
}

void outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

void outlined consume of PommesCandidateId?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    outlined consume of PommesCandidateId(a1, a2, a3, a4, a5);
  }
}

void outlined consume of PommesCandidateId(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a5 || a5 == 2)
  {
  }

  else
  {
    if (a5 != 1)
    {
      return;
    }
  }
}

uint64_t outlined destroy of ClientExperienceSignals?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t PommesContext.pegasusConversationContext.getter()
{
  v1 = v0[1];
  if ((v1 >> 60) <= 0xB && ((1 << (v1 >> 60)) & 0x888) != 0)
  {
    return 0;
  }

  v4 = *v0;
  outlined copy of Data?(v4, v1);
  return v4;
}

uint64_t PommesContext.update(with:)(uint64_t a1)
{
  v3 = *(type metadata accessor for PommesContext(0) + 40);
  outlined destroy of ClientExperienceSignals?(v1 + v3, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  v7 = *(v4 - 8);
  (*(v7 + 16))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t PommesContext.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SiriInformationSearch13PommesContextV10CodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMd, &_ss22KeyedEncodingContainerVy21SiriInformationSearch13PommesContextV10CodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PommesContext.CodingKeys and conformance PommesContext.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = v3[1];
  v26 = *v3;
  v27 = v12;
  v28 = 0;
  outlined copy of PommesContext.Source(v26, v12);
  lazy protocol witness table accessor for type PommesContext.Source and conformance PommesContext.Source();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    outlined consume of PommesContext.Source(v26, v27);
  }

  else
  {
    outlined consume of PommesContext.Source(v26, v27);
    LOBYTE(v26) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v26) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = type metadata accessor for PommesContext(0);
    v14 = *(v3 + *(v13 + 32));
    v25 = v13;
    v26 = v14;
    v28 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v26 = *(v3 + *(v25 + 36));
    v28 = 4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(v3 + *(v25 + 40), v7, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
    v15 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v7, 1, v15) == 1)
    {
      outlined destroy of ClientExperienceSignals?(v7, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
      v17 = 0;
      v18 = 0xF000000000000000;
    }

    else
    {
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent(&lazy protocol witness table cache variable for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext, MEMORY[0x1E69D1500], MEMORY[0x1E69D14F8]);
      v20 = (v16 + 8);
      v19 = Message.serializedData(partial:)();
      v18 = v21;
      v22 = *v20;
      v24 = v19;
      v22(v7, v15);
      v17 = v24;
    }

    v26 = v17;
    v27 = v18;
    v28 = 5;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data._Representation?(v26, v27);
    MEMORY[0x1E1298CB0]();
    LOBYTE(v26) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v9 + 8))(v11, v8);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PommesContext.CodingKeys and conformance PommesContext.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PommesContext.CodingKeys and conformance PommesContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesContext.CodingKeys and conformance PommesContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.CodingKeys and conformance PommesContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesContext.CodingKeys and conformance PommesContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesContext.CodingKeys and conformance PommesContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.CodingKeys and conformance PommesContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesContext.CodingKeys and conformance PommesContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesContext.CodingKeys and conformance PommesContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.CodingKeys and conformance PommesContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesContext.CodingKeys and conformance PommesContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesContext.CodingKeys and conformance PommesContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.CodingKeys and conformance PommesContext.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PommesContext.Source and conformance PommesContext.Source()
{
  result = lazy protocol witness table cache variable for type PommesContext.Source and conformance PommesContext.Source;
  if (!lazy protocol witness table cache variable for type PommesContext.Source and conformance PommesContext.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.Source and conformance PommesContext.Source);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesContext.Source and conformance PommesContext.Source;
  if (!lazy protocol witness table cache variable for type PommesContext.Source and conformance PommesContext.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.Source and conformance PommesContext.Source);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for PommesContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1DC5C5CDC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1D0))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC5C5D44@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1E8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DC5C5E0C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x200))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DC5C5E74(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_networkAvailableAtRequest;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1DC5C5EC8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x220))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC5C5F2C(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x228);

  return v2(v3);
}

uint64_t sub_1DC5C5F98(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMR);
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[5];
LABEL_13:
    v15 = *(v11 + 48);

    return v15(&a1[v12], a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_PlaybackSignalsVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_PlaybackSignalsVSgMR);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[6];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentVSgMd, &_s10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentVSgMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v10 = v14;
    v11 = *(v14 - 8);
    v12 = a3[14];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
  v17 = *(*(v16 - 8) + 48);
  v18 = &a1[a3[19]];

  return v17(v18, a2, v16);
}

char *sub_1DC5C6188(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMR);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_PlaybackSignalsVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_PlaybackSignalsVSgMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentVSgMd, &_s10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentVSgMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[14];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[19]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1DC5C636C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DC5C6428(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DC5C64EC@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static PommesResponse.supportsSecureCoding;
  return result;
}

uint64_t sub_1DC5C6538(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static PommesResponse.supportsSecureCoding = v1;
  return result;
}

uint64_t sub_1DC5C6580@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x170))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC5C65E8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x188))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC5C664C(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x190);

  return v2(v3);
}

uint64_t sub_1DC5C66B8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1A0))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC5C671C(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1A8);

  return v2(v3);
}

uint64_t sub_1DC5C6788@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1B8))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC5C67EC(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1C0);

  return v2(v3);
}

uint64_t sub_1DC5C6858@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1D0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC5C68BC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1D8);
  outlined copy of Data?(*a1, v3);
  return v4(v2, v3);
}

uint64_t sub_1DC5C6940@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1E8))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC5C69A4(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1F0);

  return v2(v3);
}

uint64_t sub_1DC5C6A10@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x200))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC5C6A74(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x208);
  outlined copy of Data?(*a1, v3);
  return v4(v2, v3);
}

uint64_t sub_1DC5C6AF8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x218))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC5C6B5C(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x220);

  return v2(v3);
}

uint64_t sub_1DC5C6BC8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x230))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DC5C6C90@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x258))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC5C6CF4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x260);

  return v4(v2, v3);
}

void *sub_1DC5C6D74@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x270))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1DC5C6DE8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_searchReason;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1DC5C6E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 200);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 136);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DC5C6EF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 200) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 136);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DC5C6FB0()
{
  outlined consume of FeatureFlag(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1DC5C6FF0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x88))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC5C70AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1DC5C7100@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC5C7160@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xF8))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC5C71BC(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x100);

  return v2(v3);
}

uint64_t sub_1DC5C7228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1DC5C72F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DC5C747C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC5C74D8(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xC8);

  return v4(v2, v3);
}

uint64_t sub_1DC5C7550@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xD8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC5C75AC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xE0);

  return v4(v2, v3);
}

uint64_t _s21SiriInformationSearch13PommesContextV6SourceO28ModalityTranslatedCodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOs0I3KeyAAsAIP11stringValuexSgSS_tcfCTW_0@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1DC5C765C()
{
  outlined consume of FeatureFlag(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

id sub_1DC5C7724@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 exampleUtterance];
  *a2 = result;
  return result;
}

uint64_t sub_1DC5C77B4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x58))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC5C7810(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___INInformationUseCaseIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_1DC5C7864@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 value];
  *a2 = result;
  return result;
}

SiriInformationTypes::UserPromptExperience::PromptType_optional __swiftcall UserPromptExperience.PromptType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UserPromptExperience.PromptType.init(rawValue:), v3);

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

  *v4 = v7;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UserPromptExperience.PromptType(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = "userIdentificationAskOnly";
  }

  else
  {
    v2 = "olutionResult";
  }

  v3 = v2 | 0x8000000000000000;
  if (*a2)
  {
    v4 = "userIdentificationAskOnly";
  }

  else
  {
    v4 = "olutionResult";
  }

  if (v3 == (v4 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UserPromptExperience.PromptType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance UserPromptExperience.PromptType(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UserPromptExperience.PromptType(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance UserPromptExperience.PromptType@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UserPromptExperience.PromptType.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance UserPromptExperience.PromptType(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = "userIdentificationAskOnly";
  }

  else
  {
    v2 = "olutionResult";
  }

  *a1 = 0xD000000000000019;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t UserPromptExperience.domain.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC20SiriInformationTypes20UserPromptExperience_domain);

  return v3;
}

id UserPromptExperience.init(domain:prompType:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *a3;
  v11 = &v3[OBJC_IVAR____TtC20SiriInformationTypes20UserPromptExperience_domain];
  *v11 = a1;
  v11[1] = a2;
  v3[OBJC_IVAR____TtC20SiriInformationTypes20UserPromptExperience_promptType] = v9;
  *&v3[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v12 = &v3[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  *v12 = 0x73757361676570;
  v12[1] = 0xE700000000000000;
  *&v3[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = 0x3FF0000000000000;
  Siri_Nlu_External_UserDialogAct.init()();
  (*(v8 + 32))(&v3[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v10, v7);
  *&v3[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  v13 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent;
  v14 = *MEMORY[0x1E69BCBD8];
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  (*(*(v15 - 8) + 104))(&v3[v13], v14, v15);
  v16 = type metadata accessor for Experience(0);
  v18.receiver = v3;
  v18.super_class = v16;
  return objc_msgSendSuper2(&v18, sel_init);
}

Swift::Void __swiftcall UserPromptExperience.encode(with:)(NSCoder with)
{
  Experience.encode(with:)(with);
  v3 = MEMORY[0x1E1299430](*(v1 + OBJC_IVAR____TtC20SiriInformationTypes20UserPromptExperience_domain), *(v1 + OBJC_IVAR____TtC20SiriInformationTypes20UserPromptExperience_domain + 8));
  v4 = MEMORY[0x1E1299430](0x6E69616D6F64, 0xE600000000000000);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  if (*(v1 + OBJC_IVAR____TtC20SiriInformationTypes20UserPromptExperience_promptType))
  {
    v5 = "userIdentificationAskOnly";
  }

  else
  {
    v5 = "olutionResult";
  }

  v6 = MEMORY[0x1E1299430](0xD000000000000019, v5 | 0x8000000000000000);

  v7 = MEMORY[0x1E1299430](0x795474706D6F7270, 0xEA00000000006570);
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];
}

NSObject *UserPromptExperience.init(coder:)(NSObject *a1)
{
  v2 = v1;
  type metadata accessor for NSString();
  v4 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = v4;
  v6 = MEMORY[0x1E1299430](0x795474706D6F7270, 0xEA00000000006570);
  v7 = [a1 decodeObjectForKey:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22[0] = v20;
  v22[1] = v21;
  if (!*(&v21 + 1))
  {

    outlined destroy of Any?(v22);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0 || (v8 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UserPromptExperience.init(coder:), v19), , v8 > 1))
  {

LABEL_12:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.pommes);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1DC5C3000, v16, v17, "UserPromptExperience cannot be decoded", v18, 2u);
      MEMORY[0x1E1299E70](v18, -1, -1);
    }

    type metadata accessor for UserPromptExperience(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = (v2 + OBJC_IVAR____TtC20SiriInformationTypes20UserPromptExperience_domain);
  *v10 = v9;
  v10[1] = v11;
  *(v2 + OBJC_IVAR____TtC20SiriInformationTypes20UserPromptExperience_promptType) = v8;
  v12 = Experience.init(coder:)(a1);
  v13 = v12;

  if (v12)
  {

    return v12;
  }

  return 0;
}

id UserPromptExperience.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserPromptExperience(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t type metadata accessor for NSString()
{
  result = lazy cache variable for type metadata for NSString;
  if (!lazy cache variable for type metadata for NSString)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSString);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t type metadata accessor for UserPromptExperience(uint64_t a1)
{
  result = type metadata singleton initialization cache for UserPromptExperience;
  if (!type metadata singleton initialization cache for UserPromptExperience)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

unint64_t lazy protocol witness table accessor for type UserPromptExperience.PromptType and conformance UserPromptExperience.PromptType()
{
  result = lazy protocol witness table cache variable for type UserPromptExperience.PromptType and conformance UserPromptExperience.PromptType;
  if (!lazy protocol witness table cache variable for type UserPromptExperience.PromptType and conformance UserPromptExperience.PromptType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserPromptExperience.PromptType and conformance UserPromptExperience.PromptType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserPromptExperience.PromptType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UserPromptExperience.PromptType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t key path setter for AudioExperience.serverAudioResults : AudioExperience(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_serverAudioResults;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t AudioExperience.isGlideEligible.getter()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_isGlideEligible;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AudioExperience.isGlideEligible.setter(char a1)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_isGlideEligible;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AudioExperience.networkAvailableAtRequest.getter()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_networkAvailableAtRequest;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AudioExperience.internalSignals.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_originalSignals);
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x220);

  v6 = v4(v5);
  specialized Array.append<A>(contentsOf:)(v6);
  return v3;
}

uint64_t AudioExperience.internalSignalsFromSiriAudio.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_internalSignalsFromSiriAudio;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t AudioExperience.pegasusAudioType.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_pegasusAudioType);

  return v3;
}

uint64_t AudioExperience.launchID.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_launchID);

  return v3;
}

uint64_t AudioExperience.systemExtensionBundleID.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_systemExtensionBundleID);

  return v3;
}

uint64_t AudioExperience.boltProxiedBundleID.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_boltProxiedBundleID);

  return v3;
}

uint64_t AudioExperience.audioUnderstanding.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t AudioExperience.__allocating_init(pluginId:audioClientComponent:queryConfidenceScore:usoGraphData:isGlideEligible:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6, double a7)
{
  v75 = a2;
  v77 = a6;
  v69 = a4;
  v70 = a5;
  v80 = a3;
  v76 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v73 = &v52 - v11;
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v79 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v78 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  v71 = *(v16 - 8);
  v17 = v71;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v67 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v52 - v20;
  v22 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v55 = v22;
  v68 = *(v22 - 8);
  v23 = v68;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v65 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v52 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v52 - v29;
  v72 = &v52 - v29;
  closure #1 in AudioExperience.init(pluginId:audioClientComponent:queryConfidenceScore:usoGraphData:isGlideEligible:)(a4, a5, &v52 - v29);
  v31 = *(v17 + 16);
  v58 = v16;
  v31(v21, v80, v16);
  v32 = *(v23 + 16);
  v33 = v28;
  v59 = v28;
  v32(v28, v30, v22);
  v66 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.audioSearchResults.getter();
  Apple_Parsec_Siri_V2alpha_AudioClientComponent.understanding.getter();
  Apple_Parsec_Siri_V2alpha_AudioClientComponent.playbackSignals.getter();
  v64 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.internalSignals.getter();
  v34 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.pegasusAudioType.getter();
  v62 = v35;
  v63 = v34;
  v61 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.launchID.getter();
  v60 = v36;
  v57 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.systemExtensionBundleID.getter();
  v56 = v37;
  v54 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.boltProxiedBundleID.getter();
  v53 = v38;
  LOBYTE(v22) = Apple_Parsec_Siri_V2alpha_AudioClientComponent.shouldPerformAppSelection.getter();
  v39 = v67;
  v31(v67, v21, v16);
  v40 = v65;
  v41 = v33;
  v42 = v55;
  v32(v65, v41, v55);
  v43 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext();
  v44 = v73;
  (*(*(v43 - 8) + 56))(v73, 1, 1, v43);
  HIBYTE(v51) = 1;
  LOBYTE(v51) = v77;
  v50 = v22 & 1;
  v45 = (*(v74 + 568))(v66, v78, v79, v64, v63, v62, v61, v60, a7, v57, v56, v54, v53, v50, v39, v76, v75, v40, v51, MEMORY[0x1E69E7CC0], v44);
  outlined consume of Data._Representation(v69, v70);
  v46 = *(v71 + 8);
  v47 = v58;
  v46(v80, v58);
  v48 = *(v68 + 8);
  v48(v59, v42);
  v46(v21, v47);
  v48(v72, v42);
  return v45;
}

uint64_t closure #1 in AudioExperience.init(pluginId:audioClientComponent:queryConfidenceScore:usoGraphData:isGlideEligible:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20[0] = a3;
  v5 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v20 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem(&lazy protocol witness table cache variable for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph, MEMORY[0x1E69D09B8], MEMORY[0x1E69D09B0]);
  Message.init(serializedData:extensions:partial:options:)();
  (*(v14 + 56))(v12, 0, 1, v13);
  v17 = (*(v14 + 32))(v16, v12, v13);
  MEMORY[0x1EEE9AC00](v17);
  v20[-2] = v16;
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserStatedTask and conformance Siri_Nlu_External_UserStatedTask, MEMORY[0x1E69D0AE0], MEMORY[0x1E69D0AD0]);
  static Message.with(_:)();
  v18 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  MEMORY[0x1EEE9AC00](v18);
  v20[-2] = v8;
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct, MEMORY[0x1E69D0A68], MEMORY[0x1E69D0A58]);
  static Message.with(_:)();
  (*(v6 + 8))(v8, v5);
  return (*(v14 + 8))(v16, v13);
}

uint64_t closure #1 in closure #1 in AudioExperience.init(pluginId:audioClientComponent:queryConfidenceScore:usoGraphData:isGlideEligible:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(char *))
{
  v6 = a3(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v11 - v7;
  (*(v9 + 16))(v11 - v7, a2);
  return a4(v8);
}

uint64_t AudioExperience.__allocating_init(pluginId:audioClientComponent:queryConfidenceScore:userDialogAct:isGlideEligible:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, double a6)
{
  v53 = a2;
  v55 = a5;
  v57 = a4;
  v54 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v51 = &v37 - v9;
  v50 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v56 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  v13 = *(v12 - 8);
  v42 = v12;
  v43 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.audioSearchResults.getter();
  Apple_Parsec_Siri_V2alpha_AudioClientComponent.understanding.getter();
  Apple_Parsec_Siri_V2alpha_AudioClientComponent.playbackSignals.getter();
  v48 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.internalSignals.getter();
  v22 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.pegasusAudioType.getter();
  v46 = v23;
  v47 = v22;
  v24 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.launchID.getter();
  v44 = v25;
  v45 = v24;
  v26 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.systemExtensionBundleID.getter();
  v40 = v27;
  v41 = v26;
  v39 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.boltProxiedBundleID.getter();
  v38 = v28;
  v29 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.shouldPerformAppSelection.getter();
  (*(v13 + 16))(v15, a3, v12);
  v30 = v50;
  (*(v56 + 16))(v11, v57, v50);
  v31 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext();
  v32 = v51;
  (*(*(v31 - 8) + 56))(v51, 1, 1, v31);
  HIBYTE(v36) = 1;
  LOBYTE(v36) = v55;
  v35 = v29 & 1;
  v33 = (*(v52 + 568))(v49, v21, v18, v48, v47, v46, v45, v44, a6, v41, v40, v39, v38, v35, v15, v54, v53, v11, v36, MEMORY[0x1E69E7CC0], v32);
  (*(v56 + 8))(v57, v30);
  (*(v43 + 8))(a3, v42);
  return v33;
}

uint64_t AudioExperience.__allocating_init(pluginId:audioClientComponent:queryConfidenceScore:userDialogAct:clientExperienceSignals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v35 = a3;
  v38 = a2;
  v39 = a5;
  v33 = a4;
  v37 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v30 - v10;
  v12 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v32 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - v16;
  v34 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  v18 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v20, a3);
  v21 = *(v13 + 16);
  v21(v17, a4, v12);
  v22 = v11;
  v31 = v11;
  outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(v39, v11, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  v23 = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  v24 = v32;
  v21(v32, v17, v12);
  v41 = v20;
  v42 = v22;
  v43 = v23;
  v44 = v36;
  v25 = (*(v36 + 576))(v37, v38, v24, partial apply for closure #1 in AudioExperience.init(pluginId:audioClientComponent:queryConfidenceScore:userDialogAct:clientExperienceSignals:renderOptions:), v40, a6);

  outlined destroy of ClientExperienceSignals?(v39, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  v26 = *(v13 + 8);
  v26(v33, v12);
  v27 = *(v18 + 8);
  v28 = v34;
  v27(v35, v34);
  v26(v17, v12);
  outlined destroy of ClientExperienceSignals?(v31, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  v27(v20, v28);
  return v25;
}

uint64_t AudioExperience.__allocating_init(pluginId:audioClientComponent:queryConfidenceScore:userDialogAct:clientExperienceSignals:renderOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, double a7)
{
  v15 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v22[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v16 + 16))(v18, a4, v15);
  v23 = a3;
  v24 = a5;
  v25 = a6;
  v26 = v7;
  v19 = (*(v7 + 576))(a1, a2, v18, closure #1 in AudioExperience.init(pluginId:audioClientComponent:queryConfidenceScore:userDialogAct:clientExperienceSignals:renderOptions:)partial apply, v22, a7);

  (*(v16 + 8))(a4, v15);
  outlined destroy of ClientExperienceSignals?(a5, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  v20 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  (*(*(v20 - 8) + 8))(a3, v20);
  return v19;
}

uint64_t closure #1 in AudioExperience.init(pluginId:audioClientComponent:queryConfidenceScore:userDialogAct:clientExperienceSignals:renderOptions:)(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v69 = a4;
  v67 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v70 = &v67 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v68 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v67 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v67 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v67 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_PlaybackSignalsVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_PlaybackSignalsVSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v67 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMR);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v67 - v23;
  v25 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.audioSearchResults.getter();

  *a1 = v25;
  Apple_Parsec_Siri_V2alpha_AudioClientComponent.understanding.getter();
  v26 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
  (*(*(v26 - 8) + 56))(v24, 0, 1, v26);
  v27 = type metadata accessor for AudioExperience.Builder(0);
  outlined assign with take of Apple_Parsec_Siri_V2alpha_AudioUnderstanding?(v24, a1 + v27[5], &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMR);
  Apple_Parsec_Siri_V2alpha_AudioClientComponent.playbackSignals.getter();
  v28 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals();
  (*(*(v28 - 8) + 56))(v21, 0, 1, v28);
  outlined assign with take of Apple_Parsec_Siri_V2alpha_AudioUnderstanding?(v21, a1 + v27[6], &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_PlaybackSignalsVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_PlaybackSignalsVSgMR);
  v29 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.internalSignals.getter();
  v30 = v27[7];

  *(a1 + v30) = v29;
  v31 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.pegasusAudioType.getter();
  v33 = v32;
  v34 = (a1 + v27[9]);

  *v34 = v31;
  v34[1] = v33;
  v35 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.launchID.getter();
  v37 = v36;
  v38 = (a1 + v27[10]);

  *v38 = v35;
  v38[1] = v37;
  v39 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.systemExtensionBundleID.getter();
  v41 = v40;
  v42 = (a1 + v27[11]);

  *v42 = v39;
  v42[1] = v41;
  v43 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.boltProxiedBundleID.getter();
  v45 = v44;
  v46 = (a1 + v27[12]);

  *v46 = v43;
  v46[1] = v45;
  *(a1 + v27[13]) = Apple_Parsec_Siri_V2alpha_AudioClientComponent.shouldPerformAppSelection.getter() & 1;
  v47 = v27[14];
  outlined destroy of ClientExperienceSignals?(a1 + v47, &_s10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentVSgMd, &_s10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentVSgMR);
  v48 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  v49 = *(v48 - 8);
  (*(v49 + 16))(a1 + v47, a2, v48);
  (*(v49 + 56))(a1 + v47, 0, 1, v48);
  v50 = v67;
  outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(v67, v18, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  v51 = type metadata accessor for ClientExperienceSignals(0);
  v52 = *(*(v51 - 8) + 48);
  if (v52(v18, 1, v51) == 1)
  {
    outlined destroy of ClientExperienceSignals?(v18, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
    v53 = 2;
  }

  else
  {
    v53 = *v18;
    outlined destroy of AudioExperience.Builder(v18, type metadata accessor for ClientExperienceSignals);
  }

  *(a1 + v27[15]) = v53;
  v54 = v50;
  outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(v50, v16, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  if (v52(v16, 1, v51) == 1)
  {
    outlined destroy of ClientExperienceSignals?(v16, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
    v55 = 2;
  }

  else
  {
    v55 = v16[16];
    outlined destroy of AudioExperience.Builder(v16, type metadata accessor for ClientExperienceSignals);
  }

  *(a1 + v27[16]) = v55;
  outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(v50, v13, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  if (v52(v13, 1, v51) == 1)
  {
    outlined destroy of ClientExperienceSignals?(v13, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
    v56 = 0;
  }

  else
  {
    v56 = *(v13 + 3);

    outlined destroy of AudioExperience.Builder(v13, type metadata accessor for ClientExperienceSignals);
  }

  v57 = v27[17];

  *(a1 + v57) = v56;
  v58 = v27[18];
  v59 = *(a1 + v58);
  v60 = v69;
  v61 = v69;

  *(a1 + v58) = v60;
  v62 = v68;
  outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(v54, v68, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  if (v52(v62, 1, v51) == 1)
  {
    outlined destroy of ClientExperienceSignals?(v62, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
    v63 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext();
    v64 = v70;
    (*(*(v63 - 8) + 56))(v70, 1, 1, v63);
  }

  else
  {
    v65 = v62 + *(v51 + 36);
    v64 = v70;
    outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(v65, v70, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
    outlined destroy of AudioExperience.Builder(v62, type metadata accessor for ClientExperienceSignals);
  }

  return outlined assign with take of Apple_Parsec_Siri_V2alpha_AudioUnderstanding?(v64, a1 + v27[19], &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
}

id AudioExperience.__allocating_init(serverAudioResults:audioUnderstanding:playbackSignals:internalSignals:pegasusAudioType:launchID:systemExtensionBundleID:boltProxiedBundleID:shouldPerformAppSelection:audioClientComponent:pluginId:queryConfidence:userDialogAct:isGlideEligible:networkAvailableAtRequest:matchingSpans:multiUserContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, uint64_t a17, char *a18, unsigned __int8 a19, unsigned __int8 a20, uint64_t a21, uint64_t a22)
{
  v23 = v22;
  v71 = a8;
  v70 = a7;
  v69 = a6;
  v68 = a5;
  v66 = a4;
  v79 = a3;
  v83 = a2;
  v81 = a17;
  v77 = a22;
  v75 = a21;
  v74 = a20;
  v73 = a19;
  v80 = a16;
  v85 = a15;
  v67 = a14;
  v65 = a13;
  v64 = a12;
  v63 = a11;
  v62 = a10;
  v76 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v61 = *(v76 - 8);
  v28 = v61;
  MEMORY[0x1EEE9AC00](v76);
  v72 = &v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = objc_allocWithZone(v23);
  v31 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_isGlideEligible;
  v30[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_isGlideEligible] = 0;
  v32 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_networkAvailableAtRequest;
  v30[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_networkAvailableAtRequest] = 1;
  *&v30[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_internalSignalsFromSiriAudio] = MEMORY[0x1E69E7CC0];
  v33 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_lock;
  *&v30[v33] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *&v30[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_serverAudioResults] = a1;
  v34 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_audioUnderstanding;
  v82 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
  v84 = *(v82 - 8);
  (*(v84 + 16))(&v30[v34], a2, v82);
  v35 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_playbackSignals;
  v78 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals();
  v36 = *(v78 - 8);
  (*(v36 + 16))(&v30[v35], a3, v78);
  *&v30[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_originalSignals] = v66;
  v37 = &v30[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_pegasusAudioType];
  v38 = v69;
  *v37 = v68;
  v37[1] = v38;
  v39 = &v30[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_launchID];
  v40 = v71;
  *v39 = v70;
  v39[1] = v40;
  v41 = &v30[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_systemExtensionBundleID];
  v42 = v63;
  *v41 = v62;
  v41[1] = v42;
  v43 = &v30[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_boltProxiedBundleID];
  v44 = v65;
  *v43 = v64;
  v43[1] = v44;
  v30[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_shouldPerformAppSelection] = v67;
  v45 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_audioClientComponent;
  v71 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  v46 = *(v71 - 8);
  (*(v46 + 16))(&v30[v45], v85, v71);
  type metadata accessor for Graph();
  swift_allocObject();
  *&v30[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_parse] = Graph.init()();
  swift_beginAccess();
  v30[v31] = v73;
  swift_beginAccess();
  v30[v32] = v74;
  *&v30[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_matchingSpans] = v75;
  v47 = v77;
  outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(v77, &v30[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_multiUserContext], &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
  v48 = *(v28 + 16);
  v49 = v72;
  v50 = v76;
  v48(v72, a18, v76);
  *&v30[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v51 = &v30[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  v52 = v81;
  *v51 = v80;
  v51[1] = v52;
  *&v30[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a9;
  v48(&v30[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v49, v50);
  *&v30[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  v53 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent;
  v54 = *MEMORY[0x1E69BCBD8];
  v55 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  (*(*(v55 - 8) + 104))(&v30[v53], v54, v55);
  v56 = type metadata accessor for Experience(0);
  v86.receiver = v30;
  v86.super_class = v56;
  v57 = objc_msgSendSuper2(&v86, sel_init);
  v58 = *(v61 + 8);
  v58(v49, v50);
  outlined destroy of ClientExperienceSignals?(v47, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
  v58(a18, v50);
  (*(v46 + 8))(v85, v71);
  (*(v36 + 8))(v79, v78);
  (*(v84 + 8))(v83, v82);
  return v57;
}

id AudioExperience.init(serverAudioResults:audioUnderstanding:playbackSignals:internalSignals:pegasusAudioType:launchID:systemExtensionBundleID:boltProxiedBundleID:shouldPerformAppSelection:audioClientComponent:pluginId:queryConfidence:userDialogAct:isGlideEligible:networkAvailableAtRequest:matchingSpans:multiUserContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, uint64_t a17, char *a18, unsigned __int8 a19, unsigned __int8 a20, uint64_t a21, uint64_t a22)
{
  v23 = v22;
  v70 = a8;
  v69 = a7;
  v68 = a6;
  v67 = a5;
  v65 = a4;
  v83 = a2;
  v81 = a17;
  v78 = a3;
  v79 = a18;
  v76 = a22;
  v74 = a21;
  v73 = a20;
  v72 = a19;
  v80 = a16;
  v85 = a15;
  v66 = a14;
  v64 = a13;
  v63 = a12;
  v62 = a11;
  v75 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v61 = *(v75 - 8);
  v28 = v61;
  MEMORY[0x1EEE9AC00](v75);
  v71 = &v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_isGlideEligible;
  v22[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_isGlideEligible] = 0;
  v31 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_networkAvailableAtRequest;
  v22[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_networkAvailableAtRequest] = 1;
  *&v22[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_internalSignalsFromSiriAudio] = MEMORY[0x1E69E7CC0];
  v32 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_lock;
  *&v22[v32] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *&v22[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_serverAudioResults] = a1;
  v33 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_audioUnderstanding;
  v82 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
  v84 = *(v82 - 8);
  (*(v84 + 16))(&v22[v33], a2, v82);
  v34 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_playbackSignals;
  v77 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals();
  v35 = *(v77 - 8);
  (*(v35 + 16))(&v22[v34], a3, v77);
  *&v22[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_originalSignals] = v65;
  v36 = &v22[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_pegasusAudioType];
  v37 = v68;
  *v36 = v67;
  v36[1] = v37;
  v38 = &v22[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_launchID];
  v39 = v70;
  *v38 = v69;
  v38[1] = v39;
  v40 = &v22[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_systemExtensionBundleID];
  v41 = v62;
  *v40 = a10;
  v40[1] = v41;
  v42 = &v22[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_boltProxiedBundleID];
  v43 = v64;
  *v42 = v63;
  v42[1] = v43;
  v22[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_shouldPerformAppSelection] = v66;
  v44 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_audioClientComponent;
  v70 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  v45 = *(v70 - 8);
  (*(v45 + 16))(&v23[v44], v85, v70);
  type metadata accessor for Graph();
  swift_allocObject();
  *&v23[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_parse] = Graph.init()();
  swift_beginAccess();
  v23[v30] = v72;
  swift_beginAccess();
  v23[v31] = v73;
  *&v23[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_matchingSpans] = v74;
  v46 = v76;
  outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(v76, &v23[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_multiUserContext], &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
  v47 = *(v28 + 16);
  v48 = v71;
  v49 = v79;
  v50 = v75;
  v47(v71, v79, v75);
  *&v23[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v51 = &v23[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  v52 = v81;
  *v51 = v80;
  v51[1] = v52;
  *&v23[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a9;
  v47(&v23[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v48, v50);
  *&v23[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  v53 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent;
  v54 = *MEMORY[0x1E69BCBD8];
  v55 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  (*(*(v55 - 8) + 104))(&v23[v53], v54, v55);
  v56 = type metadata accessor for Experience(0);
  v86.receiver = v23;
  v86.super_class = v56;
  v57 = objc_msgSendSuper2(&v86, sel_init);
  v58 = *(v61 + 8);
  v58(v48, v50);
  outlined destroy of ClientExperienceSignals?(v46, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
  v58(v49, v50);
  (*(v45 + 8))(v85, v70);
  (*(v35 + 8))(v78, v77);
  (*(v84 + 8))(v83, v82);
  return v57;
}

uint64_t AudioExperience.Builder.serverAudioResults.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t AudioExperience.Builder.internalSignals.getter()
{
  type metadata accessor for AudioExperience.Builder(0);
}

uint64_t AudioExperience.Builder.internalSignals.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioExperience.Builder(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t AudioExperience.Builder.internalSignalsFromSiriAudio.getter()
{
  type metadata accessor for AudioExperience.Builder(0);
}

uint64_t AudioExperience.Builder.internalSignalsFromSiriAudio.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioExperience.Builder(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t AudioExperience.Builder.pegasusAudioType.getter()
{
  v1 = *(v0 + *(type metadata accessor for AudioExperience.Builder(0) + 36));

  return v1;
}

uint64_t AudioExperience.Builder.pegasusAudioType.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AudioExperience.Builder(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AudioExperience.Builder.launchID.getter()
{
  v1 = *(v0 + *(type metadata accessor for AudioExperience.Builder(0) + 40));

  return v1;
}

uint64_t AudioExperience.Builder.launchID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AudioExperience.Builder(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AudioExperience.Builder.systemExtensionBundleID.getter()
{
  v1 = *(v0 + *(type metadata accessor for AudioExperience.Builder(0) + 44));

  return v1;
}

uint64_t AudioExperience.Builder.systemExtensionBundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AudioExperience.Builder(0) + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AudioExperience.Builder.boltProxiedBundleID.getter()
{
  v1 = *(v0 + *(type metadata accessor for AudioExperience.Builder(0) + 48));

  return v1;
}

uint64_t AudioExperience.Builder.boltProxiedBundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AudioExperience.Builder(0) + 48));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AudioExperience.Builder.shouldPerformAppSelection.setter(char a1)
{
  result = type metadata accessor for AudioExperience.Builder(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t AudioExperience.Builder.isGlideEligible.setter(char a1)
{
  result = type metadata accessor for AudioExperience.Builder(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t AudioExperience.Builder.networkAvailableAtRequest.setter(char a1)
{
  result = type metadata accessor for AudioExperience.Builder(0);
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t AudioExperience.Builder.matchingSpans.getter()
{
  type metadata accessor for AudioExperience.Builder(0);
}

uint64_t AudioExperience.Builder.matchingSpans.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioExperience.Builder(0) + 68);

  *(v1 + v3) = a1;
  return result;
}

void *AudioExperience.Builder.renderOptions.getter()
{
  v1 = *(v0 + *(type metadata accessor for AudioExperience.Builder(0) + 72));
  v2 = v1;
  return v1;
}

void AudioExperience.Builder.renderOptions.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioExperience.Builder(0) + 72);

  *(v1 + v3) = a1;
}

uint64_t specialized AudioExperience.Builder.require<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  swift_getAtKeyPath();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    return (*(v8 + 32))(a2, v6, v7);
  }

  outlined destroy of ClientExperienceSignals?(v6, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMR);
  v10[2] = 0;
  v10[3] = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  MEMORY[0x1E1299490](0xD000000000000036, 0x80000001DC651600);
  v10[1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy21SiriInformationSearch15AudioExperienceC7BuilderV10PegasusAPI013Apple_Parsec_c9_V2alpha_F13UnderstandingVSgGMd, &_ss7KeyPathCy21SiriInformationSearch15AudioExperienceC7BuilderV10PegasusAPI013Apple_Parsec_c9_V2alpha_F13UnderstandingVSgGMR);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_PlaybackSignalsVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_PlaybackSignalsVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  swift_getAtKeyPath();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    return (*(v8 + 32))(a2, v6, v7);
  }

  outlined destroy of ClientExperienceSignals?(v6, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_PlaybackSignalsVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_PlaybackSignalsVSgMR);
  v10[2] = 0;
  v10[3] = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  MEMORY[0x1E1299490](0xD000000000000036, 0x80000001DC651600);
  v10[1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy21SiriInformationSearch15AudioExperienceC7BuilderV10PegasusAPI013Apple_Parsec_C24_V2alpha_PlaybackSignalsVSgGMd, &_ss7KeyPathCy21SiriInformationSearch15AudioExperienceC7BuilderV10PegasusAPI013Apple_Parsec_C24_V2alpha_PlaybackSignalsVSgGMR);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentVSgMd, &_s10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  swift_getAtKeyPath();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    return (*(v8 + 32))(a2, v6, v7);
  }

  outlined destroy of ClientExperienceSignals?(v6, &_s10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentVSgMd, &_s10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentVSgMR);
  v10[2] = 0;
  v10[3] = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  MEMORY[0x1E1299490](0xD000000000000036, 0x80000001DC651600);
  v10[1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy21SiriInformationSearch15AudioExperienceC7BuilderV10PegasusAPI013Apple_Parsec_c9_V2alpha_F15ClientComponentVSgGMd, &_ss7KeyPathCy21SiriInformationSearch15AudioExperienceC7BuilderV10PegasusAPI013Apple_Parsec_c9_V2alpha_F15ClientComponentVSgGMR);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized AudioExperience.Builder.require<A>(_:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  swift_getAtKeyPath();
  result = v6;
  if (!v6)
  {
    _StringGuts.grow(_:)(56);
    MEMORY[0x1E1299490](0xD000000000000036, 0x80000001DC651600);
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized AudioExperience.Builder.require<A>(_:)(uint64_t a1)
{
  swift_getAtKeyPath();
  if (v3)
  {
    return v2;
  }

  _StringGuts.grow(_:)(56);
  MEMORY[0x1E1299490](0xD000000000000036, 0x80000001DC651600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy21SiriInformationSearch15AudioExperienceC7BuilderVSSSgGMd, &_ss7KeyPathCy21SiriInformationSearch15AudioExperienceC7BuilderVSSSgGMR);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  swift_getAtKeyPath();
  if (v2 != 2)
  {
    return v2 & 1;
  }

  _StringGuts.grow(_:)(56);
  MEMORY[0x1E1299490](0xD000000000000036, 0x80000001DC651600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy21SiriInformationSearch15AudioExperienceC7BuilderVSbSgGMd, &_ss7KeyPathCy21SiriInformationSearch15AudioExperienceC7BuilderVSbSgGMR);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t AudioExperience.Builder.require<A>(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + *MEMORY[0x1E69E77B0] + 8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v11 - v6;
  swift_getAtKeyPath();
  v8 = *(v4 + 16);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    return (*(v9 + 32))(a2, v7, v8);
  }

  (*(v5 + 8))(v7, v4);
  v11[2] = 0;
  v11[3] = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  MEMORY[0x1E1299490](0xD000000000000036, 0x80000001DC651600);
  v11[1] = a1;
  type metadata accessor for KeyPath();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t AudioExperience.Builder.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for AudioExperience.Builder(0);
  v3 = v2[5];
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[6];
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals();
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  *&a1[v2[7]] = 0;
  *&a1[v2[8]] = 0;
  v7 = &a1[v2[9]];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &a1[v2[10]];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &a1[v2[11]];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &a1[v2[12]];
  *v10 = 0;
  *(v10 + 1) = 0;
  a1[v2[13]] = 2;
  v11 = v2[14];
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  a1[v2[15]] = 2;
  a1[v2[16]] = 2;
  *&a1[v2[17]] = 0;
  *&a1[v2[18]] = 0;
  v13 = v2[19];
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext();
  v15 = *(*(v14 - 8) + 56);

  return v15(&a1[v13], 1, 1, v14);
}

uint64_t AudioExperience.Builder.init(serverAudioResults:audioUnderstanding:playbackSignals:internalSignals:internalSignalsFromSiriAudio:pegasusAudioType:launchID:systemExtensionBundleID:boltProxiedBundleID:shouldPerformAppSelection:audioClientComponent:isGlideEligible:networkAvailableAtRequest:matchingSpans:renderOptions:multiUserContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  *a9 = a1;
  v26 = type metadata accessor for AudioExperience.Builder(0);
  outlined init with take of Apple_Parsec_Siri_V2alpha_AudioUnderstanding?(a2, a9 + v26[5], &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMR);
  outlined init with take of Apple_Parsec_Siri_V2alpha_AudioUnderstanding?(a3, a9 + v26[6], &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_PlaybackSignalsVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_PlaybackSignalsVSgMR);
  *(a9 + v26[7]) = a4;
  *(a9 + v26[8]) = a5;
  v27 = (a9 + v26[9]);
  *v27 = a6;
  v27[1] = a7;
  v28 = (a9 + v26[10]);
  *v28 = a8;
  v28[1] = a10;
  v29 = (a9 + v26[11]);
  *v29 = a11;
  v29[1] = a12;
  v30 = (a9 + v26[12]);
  *v30 = a13;
  v30[1] = a14;
  *(a9 + v26[13]) = a15;
  outlined init with take of Apple_Parsec_Siri_V2alpha_AudioUnderstanding?(a16, a9 + v26[14], &_s10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentVSgMd, &_s10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentVSgMR);
  *(a9 + v26[15]) = a17;
  *(a9 + v26[16]) = a18;
  *(a9 + v26[17]) = a19;
  *(a9 + v26[18]) = a20;
  return outlined init with take of Apple_Parsec_Siri_V2alpha_AudioUnderstanding?(a21, a9 + v26[19], &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
}

id AudioExperience.init(pluginId:queryConfidence:userDialogAct:builder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, double a6)
{
  v7 = v6;
  v86 = a5;
  v87 = a4;
  v106 = a3;
  v100 = a2;
  v99 = a1;
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v102 = *(v9 - 8);
  v103 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v101 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v105 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v107 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  v85 = *(v104 - 8);
  v12 = v85;
  MEMORY[0x1EEE9AC00](v104);
  v97 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals();
  v83 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v84 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for AudioExperience.Builder(0);
  v22 = (v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_isGlideEligible;
  v7[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_isGlideEligible] = 0;
  v95 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_networkAvailableAtRequest;
  v7[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_networkAvailableAtRequest] = 1;
  v96 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_internalSignalsFromSiriAudio;
  *&v7[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_internalSignalsFromSiriAudio] = MEMORY[0x1E69E7CC0];
  v25 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_lock;
  *&v7[v25] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *v24 = 0;
  (*(v18 + 56))(&v24[v22[7]], 1, 1, v17);
  (*(v15 + 56))(&v24[v22[8]], 1, 1, v14);
  *&v24[v22[9]] = 0;
  v92 = v22[10];
  *&v24[v92] = 0;
  v26 = &v24[v22[11]];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = &v24[v22[12]];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = &v24[v22[13]];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v24[v22[14]];
  *v29 = 0;
  *(v29 + 1) = 0;
  v24[v22[15]] = 2;
  (*(v12 + 56))(&v24[v22[16]], 1, 1, v104);
  v88 = v22[17];
  v24[v88] = 2;
  v89 = v22[18];
  v24[v89] = 2;
  v90 = v22[19];
  *&v24[v90] = 0;
  v93 = v22[20];
  *&v24[v93] = 0;
  v30 = v22[21];
  v91 = v30;
  v31 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext();
  (*(*(v31 - 8) + 56))(&v24[v30], 1, 1, v31);
  v87(v24);
  KeyPath = swift_getKeyPath();
  v33 = specialized AudioExperience.Builder.require<A>(_:)(KeyPath, &_ss7KeyPathCy21SiriInformationSearch15AudioExperienceC7BuilderVSay10PegasusAPI013Apple_Parsec_c9_V2alpha_F4ItemVGSgGMd, &_ss7KeyPathCy21SiriInformationSearch15AudioExperienceC7BuilderVSay10PegasusAPI013Apple_Parsec_c9_V2alpha_F4ItemVGSgGMR);

  *&v7[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_serverAudioResults] = v33;
  v34 = swift_getKeyPath();
  specialized AudioExperience.Builder.require<A>(_:)(v34, v20);

  (*(v18 + 32))(&v7[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_audioUnderstanding], v20, v17);
  v35 = swift_getKeyPath();
  v36 = v84;
  specialized AudioExperience.Builder.require<A>(_:)(v35, v84);

  (*(v15 + 32))(&v7[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_playbackSignals], v36, v83);
  v37 = swift_getKeyPath();
  v38 = specialized AudioExperience.Builder.require<A>(_:)(v37, &_ss7KeyPathCy21SiriInformationSearch15AudioExperienceC7BuilderVSaySSGSgGMd, &_ss7KeyPathCy21SiriInformationSearch15AudioExperienceC7BuilderVSaySSGSgGMR);

  *&v7[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_originalSignals] = v38;
  v39 = swift_getKeyPath();
  v40 = specialized AudioExperience.Builder.require<A>(_:)(v39);
  v42 = v41;

  v43 = &v7[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_pegasusAudioType];
  *v43 = v40;
  v43[1] = v42;
  v44 = swift_getKeyPath();
  v45 = specialized AudioExperience.Builder.require<A>(_:)(v44);
  v47 = v46;

  v48 = &v7[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_launchID];
  *v48 = v45;
  v48[1] = v47;
  v49 = swift_getKeyPath();
  v50 = specialized AudioExperience.Builder.require<A>(_:)(v49);
  v52 = v51;

  v53 = &v7[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_systemExtensionBundleID];
  *v53 = v50;
  v53[1] = v52;
  v54 = swift_getKeyPath();
  v55 = specialized AudioExperience.Builder.require<A>(_:)(v54);
  v57 = v56;

  v58 = &v7[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_boltProxiedBundleID];
  *v58 = v55;
  v58[1] = v57;
  v59 = swift_getKeyPath();
  LOBYTE(v55) = specialized AudioExperience.Builder.require<A>(_:)(v59);

  v7[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_shouldPerformAppSelection] = v55 & 1;
  v60 = swift_getKeyPath();
  v61 = v97;
  specialized AudioExperience.Builder.require<A>(_:)(v60, v97);

  (*(v85 + 32))(&v7[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_audioClientComponent], v61, v104);
  type metadata accessor for Graph();
  swift_allocObject();
  *&v7[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_parse] = Graph.init()();
  LOBYTE(v36) = v24[v88];
  v62 = v94;
  swift_beginAccess();
  v7[v62] = v36 & 1;
  LOBYTE(v36) = (v24[v89] == 2) | v24[v89];
  v63 = v95;
  swift_beginAccess();
  v7[v63] = v36 & 1;
  v64 = MEMORY[0x1E69E7CC0];
  if (*&v24[v90])
  {
    v65 = *&v24[v90];
  }

  else
  {
    v65 = MEMORY[0x1E69E7CC0];
  }

  *&v7[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_matchingSpans] = v65;
  if (*&v24[v92])
  {
    v66 = *&v24[v92];
  }

  else
  {
    v66 = v64;
  }

  v67 = v96;
  swift_beginAccess();
  *&v7[v67] = v66;

  outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(&v24[v91], &v7[OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_multiUserContext], &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
  v68 = *(v105 + 16);
  v69 = v98;
  v68(v107, v106);
  v70 = *&v24[v93];
  if (v70)
  {
    v71 = *&v24[v93];
  }

  else
  {
    v71 = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  }

  v73 = v101;
  v72 = v102;
  v74 = v103;
  (*(v102 + 104))(v101, *MEMORY[0x1E69BCBD8], v103);
  *&v7[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v75 = &v7[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  v76 = v100;
  *v75 = v99;
  v75[1] = v76;
  *&v7[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a6;
  (v68)(&v7[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v107, v69);
  *&v7[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = v71;
  (*(v72 + 16))(&v7[OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent], v73, v74);
  v77 = type metadata accessor for Experience(0);
  v108.receiver = v7;
  v108.super_class = v77;
  v78 = v70;
  v79 = objc_msgSendSuper2(&v108, sel_init);
  v80 = *(v105 + 8);
  v80(v106, v69);
  (*(v72 + 8))(v73, v74);
  v80(v107, v69);
  outlined destroy of AudioExperience.Builder(v24, type metadata accessor for AudioExperience.Builder);
  return v79;
}

NSObject *AudioExperience.init(coder:)(NSObject *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v151 = &v130 - v5;
  v159 = type metadata accessor for Siri_Nlu_External_Span();
  v157 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v158 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  v162 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v155 = &v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals();
  v163 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v161 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
  v169 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BinaryDecodingOptions();
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v150 = &v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v156 = &v130 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v154 = &v130 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v160 = &v130 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v21);
  v165 = &v130 - v22;
  v168 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
  v166 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v24 = &v130 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_isGlideEligible;
  *(v1 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_isGlideEligible) = 0;
  v153 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_networkAvailableAtRequest;
  *(v1 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_networkAvailableAtRequest) = 1;
  v175 = (v1 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_internalSignalsFromSiriAudio);
  *(v1 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_internalSignalsFromSiriAudio) = MEMORY[0x1E69E7CC0];
  v25 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_lock;
  v26 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v174 = v25;
  *(v2 + v25) = v26;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  v27 = swift_allocObject();
  v172 = xmmword_1DC64ED70;
  *(v27 + 16) = xmmword_1DC64ED70;
  v171 = type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
  *(v27 + 32) = v171;
  v173 = type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
  *(v27 + 40) = v173;
  NSCoder.decodeObject(of:forKey:)();

  if (!*(&v180 + 1))
  {
    outlined destroy of ClientExperienceSignals?(&v179, &_sypSgMd, &_sypSgMR);
    goto LABEL_39;
  }

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo6NSDataCGMd, &_sSaySo6NSDataCGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_39:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    __swift_project_value_buffer(v54, static Logger.pommes);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_1DC5C3000, v55, v56, "AudioExperience cannot be decoded", v57, 2u);
      MEMORY[0x1E1299E70](v57, -1, -1);
    }

    v58 = v174;
    goto LABEL_44;
  }

  v147 = v24;
  v29 = v178;
  v30 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v30)
  {
LABEL_29:

    goto LABEL_39;
  }

  v148 = v30;
  v149 = v29;
  v31 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v31)
  {

    v53 = &v177;
LABEL_31:

    goto LABEL_39;
  }

  v145 = v31;
  v144 = v28;
  v32 = a1;
  v33 = swift_allocObject();
  *(v33 + 16) = v172;
  *(v33 + 32) = v171;
  v34 = type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  *(v33 + 40) = v34;
  v146 = v32;
  NSCoder.decodeObject(of:forKey:)();

  if (!*(&v180 + 1))
  {

LABEL_35:

    outlined destroy of ClientExperienceSignals?(&v179, &_sypSgMd, &_sypSgMR);
LABEL_38:
    a1 = v146;
    goto LABEL_39;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_37:

    goto LABEL_38;
  }

  v143 = v178;
  v35 = swift_allocObject();
  *(v35 + 16) = v172;
  *(v35 + 32) = v171;
  *(v35 + 40) = v34;
  NSCoder.decodeObject(of:forKey:)();

  if (!*(&v180 + 1))
  {

    goto LABEL_35;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_37;
  }

  v36 = v178;
  a1 = v146;
  v37 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v37)
  {

    goto LABEL_29;
  }

  v140 = v37;
  v38 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v38)
  {

    v53 = &v172;
    goto LABEL_31;
  }

  v135 = v36;
  v136 = v38;
  v39 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v39)
  {

    v53 = &v168;
    goto LABEL_31;
  }

  v134 = v39;
  v40 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v40)
  {

    v53 = &v166;
    goto LABEL_31;
  }

  v132 = v40;
  v41 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v41)
  {

    v53 = &v164;
    goto LABEL_31;
  }

  v131 = v41;
  v42 = v149;
  if (v149 >> 62)
  {
    goto LABEL_55;
  }

  v43 = *((v149 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v43)
  {
    while (1)
    {
      v44 = v42;
      v178 = MEMORY[0x1E69E7CC0];
      v139 = v43;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43 & ~(v43 >> 63), 0);
      if (v139 < 0)
      {
        break;
      }

      v42 = 0;
      v142 = 0;
      v45 = v178;
      v46 = v44;
      v138 = v44 & 0xC000000000000001;
      v133 = v44 & 0xFFFFFFFFFFFFFF8;
      v137 = v169 + 32;
      while (!__OFADD__(v42, 1))
      {
        a1 = &v179;
        v141 = v42 + 1;
        if (v138)
        {
          v47 = v42;
          v48 = MEMORY[0x1E12996A0]();
        }

        else
        {
          if (v42 >= *(v133 + 16))
          {
            goto LABEL_54;
          }

          v47 = v42;
          v48 = *(v46 + 8 * v42 + 32);
        }

        v49 = v48;
        static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v181 = 0;
        v180 = 0u;
        v179 = 0u;
        BinaryDecodingOptions.init()();
        lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem, MEMORY[0x1E69BD108], MEMORY[0x1E69BD100]);
        v50 = v142;
        Message.init(serializedData:extensions:partial:options:)();
        v142 = v50;
        if (v50)
        {

          v60 = 0;
          v61 = 0;
          v62 = 0;
          v63 = v142;
          goto LABEL_62;
        }

        v178 = v45;
        v52 = *(v45 + 16);
        v51 = *(v45 + 24);
        if (v52 >= v51 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1);
          v45 = v178;
        }

        *(v45 + 16) = v52 + 1;
        (*(v169 + 4))(v45 + ((v169[80] + 32) & ~v169[80]) + *(v169 + 9) * v52, v11, v9);
        v42 = v47 + 1;
        a1 = v146;
        v46 = v149;
        if (v141 == v139)
        {

          v64 = v142;
          goto LABEL_59;
        }
      }

      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      v65 = v42;
      if (v42 >= 0)
      {
        v42 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      v66 = MEMORY[0x1E1299770](v42);
      v42 = v65;
      v43 = v66;
      if (!v66)
      {
        goto LABEL_58;
      }
    }

    __break(1u);
    goto LABEL_109;
  }

LABEL_58:

  v64 = 0;
  v45 = MEMORY[0x1E69E7CC0];
LABEL_59:
  *(v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_serverAudioResults) = v45;
  v67 = v148;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  v181 = 0;
  v180 = 0u;
  v179 = 0u;
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioUnderstanding and conformance Apple_Parsec_Siri_V2alpha_AudioUnderstanding, MEMORY[0x1E69BD508], MEMORY[0x1E69BD500]);
  v68 = v147;
  Message.init(serializedData:extensions:partial:options:)();
  v63 = v64;
  if (v64)
  {

    v61 = 0;
    v62 = 0;
    v60 = 1;
LABEL_62:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    __swift_project_value_buffer(v77, static Logger.pommes);
    v78 = v63;
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      LODWORD(v173) = 0;
      v82 = v63;
      LODWORD(v172) = v60;
      v83 = v81;
      v84 = swift_slowAlloc();
      *&v179 = v84;
      *v83 = 136315138;
      swift_getErrorValue();
      v85 = Error.localizedDescription.getter();
      v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v86, &v179);

      *(v83 + 4) = v87;
      _os_log_impl(&dword_1DC5C3000, v79, v80, "Failed to decode AudioExperience %s", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v84);
      MEMORY[0x1E1299E70](v84, -1, -1);
      MEMORY[0x1E1299E70](v83, -1, -1);
      v88 = v82;
      v62 = 0;
      v61 = v173;

      v58 = v174;
      if ((v172 & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    else
    {

      v58 = v174;
      if ((v60 & 1) == 0)
      {
LABEL_66:
        if (!v61)
        {
          goto LABEL_44;
        }

        goto LABEL_67;
      }
    }

    if ((v61 & 1) == 0)
    {
      goto LABEL_44;
    }

LABEL_67:
    v89 = 0;
    goto LABEL_68;
  }

  (*(v166 + 32))(v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_audioUnderstanding, v68, v168);
  v69 = v145;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  v181 = 0;
  v180 = 0u;
  v179 = 0u;
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_PlaybackSignals and conformance Apple_Parsec_Siri_V2alpha_PlaybackSignals, MEMORY[0x1E69BD398], MEMORY[0x1E69BD390]);
  v70 = v161;
  Message.init(serializedData:extensions:partial:options:)();
  (*(v163 + 32))(v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_playbackSignals, v70, v167);
  *(v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_originalSignals) = v143;
  v71 = v175;
  swift_beginAccess();
  *v71 = v135;

  v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = (v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_pegasusAudioType);
  *v73 = v72;
  v73[1] = v74;
  v75 = v131;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  v181 = 0;
  v180 = 0u;
  v179 = 0u;
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioClientComponent and conformance Apple_Parsec_Siri_V2alpha_AudioClientComponent, MEMORY[0x1E69BD598], MEMORY[0x1E69BD590]);
  v76 = v155;
  Message.init(serializedData:extensions:partial:options:)();
  v161 = v75;
  v165 = v69;
  v169 = v67;
  (*(v162 + 32))(v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_audioClientComponent, v76, v164);
  type metadata accessor for Graph();
  swift_allocObject();
  *(v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_parse) = Graph.init()();
  v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v92 = (v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_launchID);
  *v92 = v91;
  v92[1] = v93;
  v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v95 = (v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_systemExtensionBundleID);
  *v95 = v94;
  v95[1] = v96;
  v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v98 = (v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_boltProxiedBundleID);
  *v98 = v97;
  v98[1] = v99;
  v100 = MEMORY[0x1E1299430](0xD000000000000019, 0x80000001DC651720);
  v101 = [a1 decodeBoolForKey:v100];

  *(v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_shouldPerformAppSelection) = v101;
  v102 = MEMORY[0x1E1299430](0x456564696C477369, 0xEF656C626967696CLL);
  LOBYTE(v101) = [a1 decodeBoolForKey:v102];

  v103 = v152;
  swift_beginAccess();
  *(v2 + v103) = v101;
  v104 = MEMORY[0x1E1299430](0xD000000000000019, 0x80000001DC651740);
  LOBYTE(v101) = [a1 decodeBoolForKey:v104];

  v105 = v153;
  swift_beginAccess();
  *(v2 + v105) = v101;
  v106 = swift_allocObject();
  *(v106 + 16) = v172;
  v107 = v173;
  *(v106 + 32) = v171;
  *(v106 + 40) = v107;
  NSCoder.decodeObject(of:forKey:)();

  if (!*(&v180 + 1))
  {
    outlined destroy of ClientExperienceSignals?(&v179, &_sypSgMd, &_sypSgMR);
LABEL_99:
    if (one-time initialization token for pommes == -1)
    {
LABEL_100:
      v117 = type metadata accessor for Logger();
      __swift_project_value_buffer(v117, static Logger.pommes);
      v118 = Logger.logObject.getter();
      v119 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        *v120 = 0;
        _os_log_impl(&dword_1DC5C3000, v118, v119, "Unable to decode matchingSpans", v120, 2u);
        MEMORY[0x1E1299E70](v120, -1, -1);
      }

      v62 = 1;
      v89 = 1;
      v58 = v174;
LABEL_68:
      (*(v166 + 8))(v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_audioUnderstanding, v168);
      if (v89)
      {

        if ((v62 & 1) == 0)
        {

LABEL_79:

          (*(v162 + 8))(v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_audioClientComponent, v164);
          goto LABEL_45;
        }

        v90 = 1;
      }

      else
      {
        if ((v62 & 1) == 0)
        {
LABEL_44:

LABEL_45:

          type metadata accessor for AudioExperience(0);
          swift_deallocPartialClassInstance();
          return 0;
        }

        v90 = 0;
      }

      (*(v163 + 8))(v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_playbackSignals, v167);

      if (!v90)
      {
        goto LABEL_45;
      }

      goto LABEL_79;
    }

LABEL_111:
    swift_once();
    goto LABEL_100;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_99;
  }

  v108 = v176;
  if (v176 >> 62)
  {
    if (v176 < 0)
    {
      v129 = v176;
    }

    else
    {
      v129 = v176 & 0xFFFFFFFFFFFFFF8;
    }

    *&v172 = MEMORY[0x1E1299770](v129);
  }

  else
  {
    *&v172 = *((v176 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v172)
  {
    v176 = MEMORY[0x1E69E7CC0];
    v109 = v172;
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v109 & ~(v109 >> 63), 0);
    if ((v109 & 0x8000000000000000) == 0)
    {
      v110 = 0;
      v111 = v176;
      v171 = v108 & 0xC000000000000001;
      v160 = (v108 & 0xFFFFFFFFFFFFFF8);
      v170 = v157 + 32;
      while (1)
      {
        v112 = v110 + 1;
        if (__OFADD__(v110, 1))
        {
          break;
        }

        if (v171)
        {
          v113 = MEMORY[0x1E12996A0](v110, v108);
        }

        else
        {
          if (v110 >= *(v160 + 2))
          {
            goto LABEL_110;
          }

          v113 = *(v108 + 8 * v110 + 32);
        }

        v114 = v113;
        static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v181 = 0;
        v180 = 0u;
        v179 = 0u;
        BinaryDecodingOptions.init()();
        lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem(&lazy protocol witness table cache variable for type Siri_Nlu_External_Span and conformance Siri_Nlu_External_Span, MEMORY[0x1E69D0938], MEMORY[0x1E69D0930]);
        Message.init(serializedData:extensions:partial:options:)();

        v176 = v111;
        v116 = *(v111 + 16);
        v115 = *(v111 + 24);
        if (v116 >= v115 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v115 > 1), v116 + 1, 1);
          v111 = v176;
        }

        *(v111 + 16) = v116 + 1;
        (*(v157 + 32))(v111 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v116, v158, v159);
        ++v110;
        if (v112 == v172)
        {

          goto LABEL_103;
        }
      }

LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

    __break(1u);
  }

  else
  {

    v111 = MEMORY[0x1E69E7CC0];
LABEL_103:
    *(v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_matchingSpans) = v111;
    v121 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v121)
    {
      v122 = v121;
      v123 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext();
      static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v181 = 0;
      v180 = 0u;
      v179 = 0u;
      BinaryDecodingOptions.init()();
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_MultiUserContext and conformance Apple_Parsec_Siri_V2alpha_MultiUserContext, MEMORY[0x1E69BD400], MEMORY[0x1E69BD3F8]);
      Message.init(serializedData:extensions:partial:options:)();

      v126 = v151;
      (*(*(v123 - 8) + 56))(v151, 0, 1, v123);
      outlined init with take of Apple_Parsec_Siri_V2alpha_AudioUnderstanding?(v126, v2 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_multiUserContext, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
    }

    else
    {
      v124 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_multiUserContext;
      v125 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext();
      (*(*(v125 - 8) + 56))(v2 + v124, 1, 1, v125);
    }

    v127 = Experience.init(coder:)(v146);
    v128 = v127;

    if (!v127)
    {
      return 0;
    }

    return v127;
  }

  return result;
}

Swift::Void __swiftcall AudioExperience.encode(with:)(NSCoder with)
{
  isa = with.super.isa;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v88 = &v85 - v3;
  v87 = type metadata accessor for Siri_Nlu_External_Span();
  v89 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v92 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
  v6 = *(v5 - 1);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1D0);
  v91 = v1;
  v11 = v10(v7);
  v12 = *(v11 + 16);
  if (v12)
  {
    v96[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v13 = 0;
    v94 = v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v93 = v6 + 16;
    v95 = (v6 + 8);
    while (v13 < *(v11 + 16))
    {
      (*(v6 + 16))(v9, v94 + *(v6 + 72) * v13, v5);
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem, MEMORY[0x1E69BD108], MEMORY[0x1E69BD100]);
      ++v13;
      v14 = Message.serializedData(partial:)();
      v16 = v15;
      Data._bridgeToObjectiveC()();
      outlined consume of Data._Representation(v14, v16);
      (*v95)(v9, v5);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v12 == v13)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    swift_once();
    v66 = type metadata accessor for Logger();
    __swift_project_value_buffer(v66, static Logger.pommes);
    v67 = 0;
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v96[0] = v71;
      *v70 = 136315138;
      swift_getErrorValue();
      v72 = Error.localizedDescription.getter();
      v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, v96);

      *(v70 + 4) = v74;
      _os_log_impl(&dword_1DC5C3000, v68, v69, "AudioExperience encode failed to serialize %s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v71);
      MEMORY[0x1E1299E70](v71, -1, -1);
      MEMORY[0x1E1299E70](v70, -1, -1);
    }

    else
    {
    }

    goto LABEL_15;
  }

LABEL_5:

  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
  v17 = Array._bridgeToObjectiveC()().super.isa;

  v18 = MEMORY[0x1E1299430](0xD000000000000012, 0x80000001DC651640);
  v5 = isa;
  [(objc_class *)isa encodeObject:v17 forKey:v18];

  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioUnderstanding and conformance Apple_Parsec_Siri_V2alpha_AudioUnderstanding, MEMORY[0x1E69BD508], MEMORY[0x1E69BD500]);
  v19 = v91;
  v20 = Message.serializedData(partial:)();
  v21 = v92;
  v22 = MEMORY[0x1E69E7D40];
  v23 = v20;
  v25 = v24;
  v26 = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v23, v25);
  v27 = MEMORY[0x1E1299430](0xD000000000000012, 0x80000001DC651660);
  [v5 encodeObject:v26 forKey:v27];

  type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_PlaybackSignals and conformance Apple_Parsec_Siri_V2alpha_PlaybackSignals, MEMORY[0x1E69BD398], MEMORY[0x1E69BD390]);
  v28 = Message.serializedData(partial:)();
  v30 = v29;
  v31 = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v28, v30);
  v32 = MEMORY[0x1E1299430](0x6B63616279616C70, 0xEF736C616E676953);
  [v5 encodeObject:v31 forKey:v32];

  v33 = Array._bridgeToObjectiveC()().super.isa;
  v34 = MEMORY[0x1E1299430](0x6C616E696769726FLL, 0xEF736C616E676953);
  [v5 encodeObject:v33 forKey:v34];

  (*((*v22 & *v19) + 0x220))();
  v35 = Array._bridgeToObjectiveC()().super.isa;

  v36 = MEMORY[0x1E1299430](0xD00000000000001CLL, 0x80000001DC651680);
  [v5 encodeObject:v35 forKey:v36];

  v37 = MEMORY[0x1E1299430](*(v19 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_pegasusAudioType), *(v19 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_pegasusAudioType + 8));
  v38 = MEMORY[0x1E1299430](0xD000000000000010, 0x80000001DC6516A0);
  [v5 encodeObject:v37 forKey:v38];

  v39 = MEMORY[0x1E1299430](*(v19 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_launchID), *(v19 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_launchID + 8));
  v40 = MEMORY[0x1E1299430](0x444968636E75616CLL, 0xE800000000000000);
  [v5 encodeObject:v39 forKey:v40];

  v41 = MEMORY[0x1E1299430](*(v19 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_systemExtensionBundleID), *(v19 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_systemExtensionBundleID + 8));
  v42 = MEMORY[0x1E1299430](0xD000000000000017, 0x80000001DC6516C0);
  [v5 encodeObject:v41 forKey:v42];

  v43 = MEMORY[0x1E1299430](*(v19 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_boltProxiedBundleID), *(v19 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_boltProxiedBundleID + 8));
  v44 = MEMORY[0x1E1299430](0xD000000000000013, 0x80000001DC6516E0);
  [v5 encodeObject:v43 forKey:v44];

  v45 = *(v19 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_shouldPerformAppSelection);
  v46 = MEMORY[0x1E1299430](0xD000000000000019, 0x80000001DC651720);
  [v5 encodeBool:v45 forKey:v46];

  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioClientComponent and conformance Apple_Parsec_Siri_V2alpha_AudioClientComponent, MEMORY[0x1E69BD598], MEMORY[0x1E69BD590]);
  v47 = Message.serializedData(partial:)();
  v49 = v48;
  v50 = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v47, v49);
  v51 = MEMORY[0x1E1299430](0xD000000000000014, 0x80000001DC651700);
  [v5 0x1E8636F02];

  v52 = MEMORY[0x1E69E7D40];
  LOBYTE(v51) = (*((*MEMORY[0x1E69E7D40] & *v19) + 0x1E8))();
  v53 = MEMORY[0x1E1299430](0x456564696C477369, 0xEF656C626967696CLL);
  [v5 encodeBool:v51 & 1 forKey:v53];

  LOBYTE(v51) = (*((*v52 & *v19) + 0x200))();
  v54 = MEMORY[0x1E1299430](0xD000000000000019, 0x80000001DC651740);
  [v5 encodeBool:v51 & 1 forKey:v54];

  v55 = *(v19 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_matchingSpans);
  v56 = *(v55 + 16);
  if (!v56)
  {
LABEL_16:
    v75 = Array._bridgeToObjectiveC()().super.isa;

    v76 = MEMORY[0x1E1299430](0x676E69686374616DLL, 0xED0000736E617053);
    [v5 encodeObject:v75 forKey:v76];

    v77 = v88;
    outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(v19 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_multiUserContext, v88, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
    v78 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext();
    v79 = *(v78 - 8);
    if ((*(v79 + 48))(v77, 1, v78) == 1)
    {
      outlined destroy of ClientExperienceSignals?(v77, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
      v80 = 0;
    }

    else
    {
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_MultiUserContext and conformance Apple_Parsec_Siri_V2alpha_MultiUserContext, MEMORY[0x1E69BD400], MEMORY[0x1E69BD3F8]);
      v81 = Message.serializedData(partial:)();
      v83 = v82;
      (*(v79 + 8))(v77, v78);
      v96[0] = v81;
      v96[1] = v83;
      v80 = _bridgeAnythingToObjectiveC<A>(_:)();
      outlined destroy of Data(v96);
    }

    v84 = MEMORY[0x1E1299430](0xD000000000000010, 0x80000001DC651760);
    [v5 encodeObject:v80 forKey:v84];
    swift_unknownObjectRelease();

LABEL_15:
    Experience.encode(with:)(v5);
    return;
  }

  v96[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56, 0);
  v57 = 0;
  v58 = v96[0];
  v94 = v55 + ((*(v89 + 80) + 32) & ~*(v89 + 80));
  v93 = v89 + 16;
  v95 = (v89 + 8);
  v59 = v87;
  v86 = v55;
  while (v57 < *(v55 + 16))
  {
    (*(v89 + 16))(v21, v94 + *(v89 + 72) * v57, v59);
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem(&lazy protocol witness table cache variable for type Siri_Nlu_External_Span and conformance Siri_Nlu_External_Span, MEMORY[0x1E69D0938], MEMORY[0x1E69D0930]);
    v60 = Message.serializedData(partial:)();
    v62 = v61;
    (*v95)(v21, v59);
    v96[0] = v58;
    v64 = *(v58 + 16);
    v63 = *(v58 + 24);
    if (v64 >= v63 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1);
      v59 = v87;
      v58 = v96[0];
    }

    ++v57;
    *(v58 + 16) = v64 + 1;
    v65 = v58 + 16 * v64;
    *(v65 + 32) = v60;
    *(v65 + 40) = v62;
    v21 = v92;
    v55 = v86;
    if (v56 == v57)
    {
      v5 = isa;
      v19 = v91;
      goto LABEL_16;
    }
  }

  __break(1u);
}

id AudioExperience.appendResult(_:)(uint64_t a1)
{
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_lock);
  [v7 lock];
  (*(v4 + 16))(v6, a1, v3);
  v8 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_serverAudioResults;
  swift_beginAccess();
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v8) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
    *(v1 + v8) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  (*(v4 + 32))(v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v12, v6, v3);
  *(v1 + v8) = v9;
  swift_endAccess();
  return [v7 unlock];
}

void AudioExperience.__ivar_destroyer()
{

  v1 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_audioUnderstanding;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_playbackSignals;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_audioClientComponent;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  outlined destroy of ClientExperienceSignals?(v0 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_multiUserContext, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
  v7 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch15AudioExperience_lock);
}

id AudioExperience.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioExperience(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined assign with take of Apple_Parsec_Siri_V2alpha_AudioUnderstanding?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of Apple_Parsec_Siri_V2alpha_AudioUnderstanding?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t type metadata accessor for AudioExperience.Builder(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  v4 = a1;
  if (a1 >> 62)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v5 = MEMORY[0x1E1299770](a1);
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  else
  {
    v16 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  v17 = MEMORY[0x1E1299770](v16);
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), v4);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for NSArray(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
LABEL_8:
    if (v4 < 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    MEMORY[0x1E1299770](v6);
  }

LABEL_12:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D18_Nlu_External_SpanVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D18_Nlu_External_SpanVGMR, MEMORY[0x1E69D0938]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVGMR, MEMORY[0x1E69BD108]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentVGMR, MEMORY[0x1E69BD588]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI47Apple_Parsec_Responseframework_PatternComponentVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI47Apple_Parsec_Responseframework_PatternComponentVGMR, MEMORY[0x1E69BD5B0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy21InternalSwiftProtobuf07Google_F12_StringValueVGMd, &_ss23_ContiguousArrayStorageCy21InternalSwiftProtobuf07Google_F12_StringValueVGMR, MEMORY[0x1E69AA9A0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI48Apple_Parsec_Siri_V2alpha_DomainUseCaseParameterVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI48Apple_Parsec_Siri_V2alpha_DomainUseCaseParameterVGMR, MEMORY[0x1E69BD6E8]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadataVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadataVGMR, MEMORY[0x1E69BD5C0]);
  *v3 = result;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void type metadata completion function for AudioExperience(uint64_t a1)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
      if (v3 <= 0x3F)
      {
        type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext?(319, &lazy cache variable for type metadata for Apple_Parsec_Siri_V2alpha_MultiUserContext?, MEMORY[0x1E69BD400]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void type metadata completion function for AudioExperience.Builder(uint64_t a1)
{
  type metadata accessor for [Apple_Parsec_Siri_V2alpha_AudioItem]?(319, &lazy cache variable for type metadata for [Apple_Parsec_Siri_V2alpha_AudioItem]?, &_sSay10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVGMd, "vJ");
  if (v1 <= 0x3F)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext?(319, &lazy cache variable for type metadata for Apple_Parsec_Siri_V2alpha_AudioUnderstanding?, MEMORY[0x1E69BD508]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext?(319, &lazy cache variable for type metadata for Apple_Parsec_Siri_V2alpha_PlaybackSignals?, MEMORY[0x1E69BD398]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for [Apple_Parsec_Siri_V2alpha_AudioItem]?(319, &lazy cache variable for type metadata for [String]?, &_sSaySSGMd, &_sSaySSGMR);
        if (v4 <= 0x3F)
        {
          type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370]);
            if (v6 <= 0x3F)
            {
              type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext?(319, &lazy cache variable for type metadata for Apple_Parsec_Siri_V2alpha_AudioClientComponent?, MEMORY[0x1E69BD598]);
              if (v7 <= 0x3F)
              {
                type metadata accessor for [Apple_Parsec_Siri_V2alpha_AudioItem]?(319, &lazy cache variable for type metadata for [Siri_Nlu_External_Span]?, &_sSay12SiriNLUTypes0A18_Nlu_External_SpanVGMd, &_sSay12SiriNLUTypes0A18_Nlu_External_SpanVGMR);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext?(319, &lazy cache variable for type metadata for PommesRenderOptions?, type metadata accessor for PommesRenderOptions);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext?(319, &lazy cache variable for type metadata for Apple_Parsec_Siri_V2alpha_MultiUserContext?, MEMORY[0x1E69BD400]);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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

void type metadata accessor for String?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for [Apple_Parsec_Siri_V2alpha_AudioItem]?(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd, &_ss23_ContiguousArrayStorageCys6UInt16VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

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

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVSgGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVSgGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    if (a3 < 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    v14 = a2;
    result = MEMORY[0x1E1299770](v13);
    a2 = v14;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      if (a3 < 0)
      {
        v7 = a3;
      }

      else
      {
        v7 = a3 & 0xFFFFFFFFFFFFFF8;
      }

      v8 = a2;
      result = MEMORY[0x1E1299770](v7);
      if (result <= v8)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [INInformationUseCaseIntent] and conformance [A](&lazy protocol witness table cache variable for type [INInformationUseCaseParameter] and conformance [A], &_sSay20SiriInformationTypes29INInformationUseCaseParameterCGMd, &_sSay20SiriInformationTypes29INInformationUseCaseParameterCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay20SiriInformationTypes29INInformationUseCaseParameterCGMd, &_sSay20SiriInformationTypes29INInformationUseCaseParameterCGMR);
            v10 = specialized protocol witness for Collection.subscript.read in conformance [A](v15, i, a3);
            v12 = *v11;
            (v10)(v15, 0);
            *(v4 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for INInformationUseCaseParameter();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    if (a3 < 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    v14 = a2;
    result = MEMORY[0x1E1299770](v13);
    a2 = v14;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      if (a3 < 0)
      {
        v7 = a3;
      }

      else
      {
        v7 = a3 & 0xFFFFFFFFFFFFFF8;
      }

      v8 = a2;
      result = MEMORY[0x1E1299770](v7);
      if (result <= v8)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [INInformationUseCaseIntent] and conformance [A](&lazy protocol witness table cache variable for type [INInformationUseCaseIntent] and conformance [A], &_sSay20SiriInformationTypes26INInformationUseCaseIntentCGMd, &_sSay20SiriInformationTypes26INInformationUseCaseIntentCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay20SiriInformationTypes26INInformationUseCaseIntentCGMd, &_sSay20SiriInformationTypes26INInformationUseCaseIntentCGMR);
            v10 = specialized protocol witness for Collection.subscript.read in conformance [A](v15, i, a3);
            v12 = *v11;
            (v10)(v15, 0);
            *(v4 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for INInformationUseCaseIntent();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E12996A0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E12996A0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type [INInformationUseCaseIntent] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of AudioExperience.Builder(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined copy of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ClientExperienceSignals.init(isGlideEligible:networkAvailableAtRequest:isPhoneCallActive:)@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = MEMORY[0x1E69E7CC0];
  *(a4 + 8) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(a4 + 24) = v8;
  v9 = *(type metadata accessor for ClientExperienceSignals(0) + 36);
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext();
  result = (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  *a4 = a1;
  *(a4 + 16) = a2;
  *(a4 + 17) = a3;
  return result;
}

uint64_t ClientExperienceSignals.init(isGlideEligible:networkAvailableAtRequest:isPhoneCallActive:matchingSpans:multiUserContext:)@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 8) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v12 = *(type metadata accessor for ClientExperienceSignals(0) + 36);
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext();
  (*(*(v13 - 8) + 56))(a6 + v12, 1, 1, v13);
  *a6 = a1;
  *(a6 + 16) = a2;
  *(a6 + 17) = a3;
  *(a6 + 24) = a4;

  return outlined assign with take of Apple_Parsec_Siri_V2alpha_MultiUserContext?(a5, a6 + v12);
}

uint64_t ClientExperienceSignals.glideEligibilityPerSharedId.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t ClientExperienceSignals.matchingSpans.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t ClientExperienceSignals.multiUserContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ClientExperienceSignals(0) + 36);

  return outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(v3, a1);
}

uint64_t ClientExperienceSignals.multiUserContext.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ClientExperienceSignals(0) + 36);

  return outlined assign with take of Apple_Parsec_Siri_V2alpha_MultiUserContext?(a1, v3);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSbGMd, &_ss18_DictionaryStorageCySSSbGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t type metadata accessor for ClientExperienceSignals(uint64_t a1)
{
  result = type metadata singleton initialization cache for ClientExperienceSignals;
  if (!type metadata singleton initialization cache for ClientExperienceSignals)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined assign with take of Apple_Parsec_Siri_V2alpha_MultiUserContext?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata completion function for ClientExperienceSignals(uint64_t a1)
{
  type metadata accessor for [String : Bool]();
  if (v1 <= 0x3F)
  {
    type metadata accessor for [Siri_Nlu_External_Span](319, &lazy cache variable for type metadata for [Siri_Nlu_External_Span], MEMORY[0x1E69D0938], MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [Siri_Nlu_External_Span](319, &lazy cache variable for type metadata for Apple_Parsec_Siri_V2alpha_MultiUserContext?, MEMORY[0x1E69BD400], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for [Siri_Nlu_External_Span](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

SiriInformationTypes::PommesSearchReason_optional __swiftcall PommesSearchReason.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PommesSearchReason.init(rawValue:), v3);

  v7 = 5;
  if (v5 < 5)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t PommesSearchReason.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x4665737261506F6ELL;
  v4 = 0xD000000000000016;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x616D6F446F666E69;
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

unint64_t lazy protocol witness table accessor for type PommesSearchReason and conformance PommesSearchReason()
{
  result = lazy protocol witness table cache variable for type PommesSearchReason and conformance PommesSearchReason;
  if (!lazy protocol witness table cache variable for type PommesSearchReason and conformance PommesSearchReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesSearchReason and conformance PommesSearchReason);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PommesSearchReason()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PommesSearchReason(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PommesSearchReason(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance PommesSearchReason(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEF6B6361626C6C61;
  v6 = 0x4665737261506F6ELL;
  v7 = 0x80000001DC6511D0;
  v8 = 0xD000000000000016;
  if (v2 != 3)
  {
    v8 = 0xD000000000000010;
    v7 = 0x80000001DC6511F0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x616D6F446F666E69;
    v3 = 0xEF65737261506E69;
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

uint64_t getEnumTagSinglePayload for PommesSearchReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PommesSearchReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

id ClientAudioResult.init(domain:vocabularyResult:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v45 - v8;
  if (a3)
  {
    *&v3[OBJC_IVAR____TtC21SiriInformationSearch17ClientAudioResult_vocabularyResult] = a3;
    if (*(a3 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_itemType) == 18540)
    {
      v10 = v3;
      v11 = *((*MEMORY[0x1E69E7D40] & *a3) + 0xF0);
      v12 = a3;
      v13 = v11();
      UInt16.audioType.getter(v13, v9);
      v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
      (*(*(v14 - 8) + 56))(v9, 0, 1, v14);
      static ClientAudioResult.Scheme.from(_:)(v9, &v48);
      outlined destroy of ClientExperienceSignals?(v9, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSgMR);
      v15 = v48;
      v16 = v12 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_itemId;
      v17 = *(v12 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_itemId);
      v18 = *(v16 + 1);
      swift_bridgeObjectRetain_n();
      v19 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(v17, v18);
      v21 = v20;
      v22 = Data.base64EncodedString(options:)(0);
      outlined consume of Data._Representation(v19, v21);
      v46 = 0;
      v47 = 0xE000000000000000;
      _StringGuts.grow(_:)(16);
      if (v15 > 4)
      {
        v35 = 0x80000001DC6512C0;
        v36 = 0xD000000000000017;
        v37 = 0x80000001DC6512E0;
        v38 = 0xD00000000000001ALL;
        if (v15 == 8)
        {
          v38 = 0xD000000000000016;
        }

        else
        {
          v37 = 0x80000001DC651300;
        }

        if (v15 != 7)
        {
          v36 = v38;
          v35 = v37;
        }

        v39 = 0x80000001DC651280;
        v40 = 0xD000000000000018;
        if (v15 == 5)
        {
          v40 = 0xD00000000000001FLL;
        }

        else
        {
          v39 = 0x80000001DC6512A0;
        }

        if (v15 <= 6)
        {
          v29 = v40;
        }

        else
        {
          v29 = v36;
        }

        if (v15 <= 6)
        {
          v30 = v39;
        }

        else
        {
          v30 = v35;
        }
      }

      else
      {
        v23 = 0xEE007473696C7961;
        v24 = 0x6C70706D61732D78;
        v25 = 0xED00006D65746964;
        v26 = 0x656D706D61732D78;
        v27 = 0x80000001DC651240;
        v28 = 0xD000000000000017;
        if (v15 == 3)
        {
          v28 = 0xD000000000000014;
        }

        else
        {
          v27 = 0x80000001DC651260;
        }

        if (v15 != 2)
        {
          v26 = v28;
          v25 = v27;
        }

        if (v15)
        {
          v24 = 0xD000000000000016;
          v23 = 0x80000001DC651210;
        }

        if (v15 <= 1)
        {
          v29 = v24;
        }

        else
        {
          v29 = v26;
        }

        if (v15 <= 1)
        {
          v30 = v23;
        }

        else
        {
          v30 = v25;
        }
      }

      MEMORY[0x1E1299490](v29, v30);

      MEMORY[0x1E1299490](0x73697269732F2F3ALL, 0xEC0000002F636E79);
      MEMORY[0x1E1299490](v22._countAndFlagsBits, v22._object);

      v33 = v46;
      v32 = v47;
      v3 = v10;
    }

    else
    {
      v33 = *(a3 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_itemId);
      v32 = *(a3 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_itemId + 8);
      v34 = a3;
    }

    v41 = &v3[OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_resultId];
    *v41 = v33;
    *(v41 + 1) = v32;
    v42 = &v3[OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_domain];
    *v42 = a1;
    *(v42 + 1) = a2;
    *&v3[OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_metadata] = xmmword_1DC64F240;
    v43 = type metadata accessor for PommesResult();
    v49.receiver = v3;
    v49.super_class = v43;
    v31 = objc_msgSendSuper2(&v49, sel_init);
  }

  else
  {

    type metadata accessor for ClientAudioResult();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v31;
}

uint64_t static ClientAudioResult.Scheme.from(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSgMR);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(a1, &v15 - v8, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSgMR);
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(v9, v7, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSgMR);
    v12 = (*(v11 + 88))(v7, v10);
    if (v12 != *MEMORY[0x1E69BD230])
    {
      if (v12 == *MEMORY[0x1E69BD238])
      {
        v13 = 1;
        goto LABEL_4;
      }

      if (v12 == *MEMORY[0x1E69BD250])
      {
        v13 = 7;
        goto LABEL_4;
      }

      if (v12 == *MEMORY[0x1E69BD240])
      {
        v13 = 8;
        goto LABEL_4;
      }

      if (v12 == *MEMORY[0x1E69BD268])
      {
        *a2 = 0;
        return outlined destroy of ClientExperienceSignals?(v9, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSgMR);
      }

      if (v12 == *MEMORY[0x1E69BD208])
      {
        v13 = 6;
        goto LABEL_4;
      }

      if (v12 == *MEMORY[0x1E69BD218])
      {
        v13 = 3;
        goto LABEL_4;
      }

      if (v12 == *MEMORY[0x1E69BD270])
      {
        v13 = 9;
        goto LABEL_4;
      }

      if (v12 == *MEMORY[0x1E69BD248] || v12 == *MEMORY[0x1E69BD258] || v12 == *MEMORY[0x1E69BD210])
      {
        result = outlined destroy of ClientExperienceSignals?(v9, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSgMR);
        *a2 = 2;
        return result;
      }

      if (v12 != *MEMORY[0x1E69BD200])
      {
        if (v12 == *MEMORY[0x1E69BD220])
        {
          v13 = 5;
          goto LABEL_4;
        }

        (*(v11 + 8))(v7, v10);
      }
    }
  }

  v13 = 2;
LABEL_4:
  *a2 = v13;
  return outlined destroy of ClientExperienceSignals?(v9, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSgMR);
}

{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(a1, &v15 - v8, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v10 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(v9, v7, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    v13 = (*(v11 + 88))(v7, v10);
    if (v13 == *MEMORY[0x1E69D2008])
    {
      v12 = 7;
      goto LABEL_7;
    }

    if (v13 == *MEMORY[0x1E69D2028])
    {
      v12 = 0;
      goto LABEL_7;
    }

    if (v13 != *MEMORY[0x1E69D1FE8])
    {
      if (v13 == *MEMORY[0x1E69D1FF0])
      {
        v12 = 1;
        goto LABEL_7;
      }

      (*(v11 + 8))(v7, v10);
    }
  }

  v12 = 2;
LABEL_7:
  *a2 = v12;
  return outlined destroy of ClientExperienceSignals?(v9, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
}

Swift::String __swiftcall ClientAudioResult.Scheme.buildSiriSyncURI(withId:)(Swift::String withId)
{
  object = withId._object;
  countAndFlagsBits = withId._countAndFlagsBits;
  v4 = *v1;

  v5 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(countAndFlagsBits, object);
  v7 = v6;
  v8 = Data.base64EncodedString(options:)(0);
  outlined consume of Data._Representation(v5, v7);
  _StringGuts.grow(_:)(16);
  if (v4 > 4)
  {
    v17 = 0x80000001DC6512C0;
    v18 = 0xD000000000000017;
    v19 = 0x80000001DC6512E0;
    v20 = 0xD00000000000001ALL;
    if (v4 == 8)
    {
      v20 = 0xD000000000000016;
    }

    else
    {
      v19 = 0x80000001DC651300;
    }

    if (v4 != 7)
    {
      v18 = v20;
      v17 = v19;
    }

    v21 = 0x80000001DC651280;
    v22 = 0xD000000000000018;
    if (v4 == 5)
    {
      v22 = 0xD00000000000001FLL;
    }

    else
    {
      v21 = 0x80000001DC6512A0;
    }

    if (v4 <= 6)
    {
      v15 = v22;
    }

    else
    {
      v15 = v18;
    }

    if (v4 <= 6)
    {
      v16 = v21;
    }

    else
    {
      v16 = v17;
    }
  }

  else
  {
    v9 = 0xEE007473696C7961;
    v10 = 0x6C70706D61732D78;
    v11 = 0xED00006D65746964;
    v12 = 0x656D706D61732D78;
    v13 = 0x80000001DC651240;
    v14 = 0xD000000000000017;
    if (v4 == 3)
    {
      v14 = 0xD000000000000014;
    }

    else
    {
      v13 = 0x80000001DC651260;
    }

    if (v4 != 2)
    {
      v12 = v14;
      v11 = v13;
    }

    if (v4)
    {
      v10 = 0xD000000000000016;
      v9 = 0x80000001DC651210;
    }

    if (v4 <= 1)
    {
      v15 = v10;
    }

    else
    {
      v15 = v12;
    }

    if (v4 <= 1)
    {
      v16 = v9;
    }

    else
    {
      v16 = v11;
    }
  }

  MEMORY[0x1E1299490](v15, v16);

  MEMORY[0x1E1299490](0x73697269732F2F3ALL, 0xEC0000002F636E79);
  MEMORY[0x1E1299490](v8._countAndFlagsBits, v8._object);

  v23 = 0;
  v24 = 0xE000000000000000;
  result._object = v24;
  result._countAndFlagsBits = v23;
  return result;
}

id ClientAudioResult.init(coder:)(void *a1)
{
  v2 = v1;
  type metadata accessor for VocabularyResult();
  v4 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v4)
  {
    *(v2 + OBJC_IVAR____TtC21SiriInformationSearch17ClientAudioResult_vocabularyResult) = v4;
    v5 = v4;
    v6 = PommesResult.init(coder:)(a1);
    v7 = v6;

    if (v6)
    {
    }
  }

  else
  {

    type metadata accessor for ClientAudioResult();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v6;
}

Swift::Void __swiftcall ClientAudioResult.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch17ClientAudioResult_vocabularyResult);
  v4 = MEMORY[0x1E1299430](0xD000000000000010, 0x80000001DC651840);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  PommesResult.encode(with:)(with);
}

uint64_t ClientAudioResult.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(71);
  MEMORY[0x1E1299490](0xD000000000000025, 0x80000001DC651860);
  v2 = [*(v0 + OBJC_IVAR____TtC21SiriInformationSearch17ClientAudioResult_vocabularyResult) description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x1E1299490](v3, v5);

  MEMORY[0x1E1299490](0x6E69616D6F64202CLL, 0xEB0000000022203ALL);
  MEMORY[0x1E1299490](*(v1 + OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_domain), *(v1 + OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_domain + 8));
  MEMORY[0x1E1299490](0x6C75736572202C22, 0xEE0022203A644974);
  MEMORY[0x1E1299490](*(v1 + OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_resultId), *(v1 + OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_resultId + 8));
  MEMORY[0x1E1299490](8200226, 0xE300000000000000);
  return 0;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd, &_s10Foundation15ContiguousBytes_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ContiguousBytes(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_0(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  outlined destroy of ClientExperienceSignals?(__src, &_s10Foundation15ContiguousBytes_pSgMd, _s10Foundation15ContiguousBytes_pSgMR);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  closure #2 in Data.init<A>(_:)(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = specialized Data._Representation.init(count:)(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0]);
  v34[2] = v39;
  v10 = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for specialized closure #3 in Data.init<A>(_:), v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = String.UTF8View._foreignSubscript(position:)();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = _StringObject.sharedUTF8.getter();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    Data._Representation.append(contentsOf:)();
    outlined consume of Data._Representation?(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  outlined consume of Data._Representation?(v36, v6);
LABEL_63:
  v32 = __src[0];
  outlined copy of Data._Representation(*&__src[0], *(&__src[0] + 1));

  outlined consume of Data._Representation(v32, *(&v32 + 1));
  return v32;
}

uint64_t ClientAudioResult.Scheme.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0xD000000000000017;
    v7 = 0xD00000000000001ALL;
    if (v1 == 8)
    {
      v7 = 0xD000000000000016;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000018;
    if (v1 == 5)
    {
      v8 = 0xD00000000000001FLL;
    }

    if (*v0 <= 6u)
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
    v2 = 0x6C70706D61732D78;
    v3 = 0x656D706D61732D78;
    v4 = 0xD000000000000017;
    if (v1 == 3)
    {
      v4 = 0xD000000000000014;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0xD000000000000016;
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

Swift::String __swiftcall ClientAudioResult.Scheme.buildDeviceID(withId:)(Swift::String withId)
{
  object = withId._object;
  countAndFlagsBits = withId._countAndFlagsBits;
  v4 = *v1;
  if (v4 > 4)
  {
    v13 = 0x80000001DC6512C0;
    v14 = 0xD000000000000017;
    v15 = 0x80000001DC6512E0;
    v16 = 0xD00000000000001ALL;
    if (v4 == 8)
    {
      v16 = 0xD000000000000016;
    }

    else
    {
      v15 = 0x80000001DC651300;
    }

    if (v4 != 7)
    {
      v14 = v16;
      v13 = v15;
    }

    v17 = 0x80000001DC651280;
    v18 = 0xD000000000000018;
    if (v4 == 5)
    {
      v18 = 0xD00000000000001FLL;
    }

    else
    {
      v17 = 0x80000001DC6512A0;
    }

    if (*v1 <= 6u)
    {
      v11 = v18;
    }

    else
    {
      v11 = v14;
    }

    if (*v1 <= 6u)
    {
      v12 = v17;
    }

    else
    {
      v12 = v13;
    }
  }

  else
  {
    v5 = 0xEE007473696C7961;
    v6 = 0x6C70706D61732D78;
    v7 = 0xED00006D65746964;
    v8 = 0x656D706D61732D78;
    v9 = 0x80000001DC651240;
    v10 = 0xD000000000000017;
    if (v4 == 3)
    {
      v10 = 0xD000000000000014;
    }

    else
    {
      v9 = 0x80000001DC651260;
    }

    if (v4 != 2)
    {
      v8 = v10;
      v7 = v9;
    }

    if (*v1)
    {
      v6 = 0xD000000000000016;
      v5 = 0x80000001DC651210;
    }

    if (*v1 <= 1u)
    {
      v11 = v6;
    }

    else
    {
      v11 = v8;
    }

    if (*v1 <= 1u)
    {
      v12 = v5;
    }

    else
    {
      v12 = v7;
    }
  }

  MEMORY[0x1E1299490](v11, v12);

  MEMORY[0x1E1299490](0x63697665642F2F3ALL, 0xEA00000000002F65);
  MEMORY[0x1E1299490](countAndFlagsBits, object);
  v19 = 0;
  v20 = 0xE000000000000000;
  result._object = v20;
  result._countAndFlagsBits = v19;
  return result;
}

SiriInformationSearch::ClientAudioResult::Scheme_optional __swiftcall ClientAudioResult.Scheme.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ClientAudioResult.Scheme.init(rawValue:), v3);

  v7 = 10;
  if (v5 < 0xA)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ClientAudioResult.Scheme()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ClientAudioResult.Scheme(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ClientAudioResult.Scheme@<X0>(uint64_t *a1@<X8>)
{
  result = ClientAudioResult.Scheme.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ClientAudioResult.sharedUserIDFromPlayableMusicAccount.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch17ClientAudioResult_vocabularyResult);
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xC0))();
  if (!v3)
  {
    result = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_userId + 8);
    if (result)
    {
      v4 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_userId);

      return v4;
    }
  }

  return result;
}

id ClientAudioResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClientAudioResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type ClientAudioResult.Scheme and conformance ClientAudioResult.Scheme()
{
  result = lazy protocol witness table cache variable for type ClientAudioResult.Scheme and conformance ClientAudioResult.Scheme;
  if (!lazy protocol witness table cache variable for type ClientAudioResult.Scheme and conformance ClientAudioResult.Scheme)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClientAudioResult.Scheme and conformance ClientAudioResult.Scheme);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [ClientAudioResult.Scheme] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [ClientAudioResult.Scheme] and conformance [A];
  if (!lazy protocol witness table cache variable for type [ClientAudioResult.Scheme] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay21SiriInformationSearch17ClientAudioResultC6SchemeOGMd, &_sSay21SiriInformationSearch17ClientAudioResultC6SchemeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ClientAudioResult.Scheme] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClientAudioResult.Scheme(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ClientAudioResult.Scheme(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t *closure #2 in Data.init<A>(_:)@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = specialized Data.InlineData.init(_:)(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v8 = __DataStorage.init(bytes:length:)();
      if (a3 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      outlined consume of Data._Representation(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    outlined consume of Data._Representation(v7, v6);
    *v4 = xmmword_1DC64F250;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v7, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v14 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    outlined consume of Data._Representation(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_1DC64F250;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *closure #1 in Data.init<A>(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = specialized Data.InlineData.init(_:)(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = specialized Data.LargeSlice.init(_:)(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = specialized Data.InlineSlice.init(_:)(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *_sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = MEMORY[0x1E1298B00]();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

unint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1E12994C0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t specialized closure #1 in closure #3 in Data.init<A>(_:)@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
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

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t specialized Data._Representation.init(count:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *partial apply for specialized closure #3 in Data.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(partial apply for specialized closure #1 in closure #3 in Data.init<A>(_:), v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t outlined init with take of ContiguousBytes(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t specialized Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t specialized Data.InlineSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t VideoExperience.videoClientComponent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch15VideoExperience_videoClientComponent;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoExperience.__allocating_init(pluginId:videoClientComponent:queryConfidenceScore:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a3, v12);
  Siri_Nlu_External_UserDialogAct.init()();
  v16 = (*(v4 + 336))(a1, a2, v15, v11, a4);
  (*(v13 + 8))(a3, v12);
  return v16;
}

id VideoExperience.__allocating_init(pluginId:videoClientComponent:queryConfidenceScore:userDialogAct:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v30 = a4;
  v34 = a3;
  v36 = a1;
  v37 = a2;
  v35 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v10 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v31 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v32 = *(v12 - 8);
  v13 = v32;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_allocWithZone(v6);
  v17 = OBJC_IVAR____TtC21SiriInformationSearch15VideoExperience_videoClientComponent;
  v33 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent();
  v18 = *(v33 - 8);
  (*(v18 + 16))(&v16[v17], a3, v33);
  v19 = *(v13 + 16);
  v20 = v12;
  v19(v15, a4, v12);
  v21 = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  v22 = v31;
  v23 = v35;
  (*(v10 + 104))(v31, *MEMORY[0x1E69BCBD8], v35);
  *&v16[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v24 = &v16[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  v25 = v37;
  *v24 = v36;
  v24[1] = v25;
  *&v16[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a5;
  v19(&v16[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v15, v20);
  *&v16[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = v21;
  (*(v10 + 16))(&v16[OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent], v22, v23);
  v26 = type metadata accessor for Experience(0);
  v38.receiver = v16;
  v38.super_class = v26;
  v27 = objc_msgSendSuper2(&v38, sel_init);
  v28 = *(v32 + 8);
  v28(v30, v20);
  (*(v18 + 8))(v34, v33);
  (*(v10 + 8))(v22, v23);
  v28(v15, v20);
  return v27;
}

id VideoExperience.init(pluginId:videoClientComponent:queryConfidenceScore:userDialogAct:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v31 = a4;
  v34 = a3;
  v35 = a1;
  v36 = a2;
  v32 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v29 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC21SiriInformationSearch15VideoExperience_videoClientComponent;
  v33 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent();
  v15 = *(v33 - 8);
  (*(v15 + 16))(&v5[v14], a3, v33);
  v16 = *(v11 + 16);
  v17 = v10;
  v16(v13, a4, v10);
  v28 = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  v19 = v29;
  v18 = v30;
  v20 = v32;
  (*(v30 + 104))(v29, *MEMORY[0x1E69BCBD8], v32);
  *&v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v21 = &v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  v22 = v36;
  *v21 = v35;
  v21[1] = v22;
  *&v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a5;
  v16(&v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v13, v17);
  *&v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = v28;
  (*(v18 + 16))(&v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent], v19, v20);
  v23 = type metadata accessor for Experience(0);
  v37.receiver = v5;
  v37.super_class = v23;
  v24 = objc_msgSendSuper2(&v37, sel_init);
  v25 = *(v11 + 8);
  v25(v31, v17);
  (*(v15 + 8))(v34, v33);
  (*(v18 + 8))(v19, v20);
  v25(v13, v17);
  return v24;
}

id VideoExperience.__allocating_init(pluginId:videoClientComponent:queryConfidenceScore:userDialogAct:renderOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = v6;
  v32 = a5;
  v33 = a4;
  v29 = a3;
  v30 = a1;
  v31 = a2;
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = objc_allocWithZone(v7);
  v19 = OBJC_IVAR____TtC21SiriInformationSearch15VideoExperience_videoClientComponent;
  v28 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent();
  v20 = *(v28 - 8);
  (*(v20 + 16))(&v18[v19], a3, v28);
  v21 = *(v15 + 16);
  v21(v17, v33, v14);
  (*(v11 + 104))(v13, *MEMORY[0x1E69BCBD8], v10);
  *&v18[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v22 = &v18[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  v23 = v31;
  *v22 = v30;
  v22[1] = v23;
  *&v18[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a6;
  v21(&v18[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v17, v14);
  *&v18[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = v32;
  (*(v11 + 16))(&v18[OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent], v13, v10);
  v24 = type metadata accessor for Experience(0);
  v34.receiver = v18;
  v34.super_class = v24;
  v25 = objc_msgSendSuper2(&v34, sel_init);
  v26 = *(v15 + 8);
  v26(v33, v14);
  (*(v20 + 8))(v29, v28);
  (*(v11 + 8))(v13, v10);
  v26(v17, v14);
  return v25;
}

id VideoExperience.init(pluginId:videoClientComponent:queryConfidenceScore:userDialogAct:renderOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v32 = a5;
  v33 = a4;
  v29 = a3;
  v30 = a1;
  v31 = a2;
  v27 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v9 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC21SiriInformationSearch15VideoExperience_videoClientComponent;
  v28 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent();
  v17 = *(v28 - 8);
  (*(v17 + 16))(&v6[v16], a3, v28);
  v18 = *(v13 + 16);
  v18(v15, v33, v12);
  v19 = v27;
  (*(v9 + 104))(v11, *MEMORY[0x1E69BCBD8], v27);
  *&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v20 = &v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  v21 = v31;
  *v20 = v30;
  v20[1] = v21;
  *&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a6;
  v18(&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v15, v12);
  *&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = v32;
  (*(v9 + 16))(&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent], v11, v19);
  v22 = type metadata accessor for Experience(0);
  v34.receiver = v6;
  v34.super_class = v22;
  v23 = objc_msgSendSuper2(&v34, sel_init);
  v24 = *(v13 + 8);
  v24(v33, v12);
  (*(v17 + 8))(v29, v28);
  (*(v9 + 8))(v11, v19);
  v24(v15, v12);
  return v23;
}

NSObject *VideoExperience.init(coder:)(NSObject *a1)
{
  v3 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NSData();
  v8 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v8)
  {
    v9 = v8;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = 0;
    memset(&v17[48], 0, 32);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_VideoClientComponent and conformance Apple_Parsec_Siri_V2alpha_VideoClientComponent();
    Message.init(serializedData:extensions:partial:options:)();
    (*(v5 + 32))(v1 + OBJC_IVAR____TtC21SiriInformationSearch15VideoExperience_videoClientComponent, v7, v4);
    v14 = Experience.init(coder:)(a1);
    v15 = v14;

    if (v14)
    {

      return v14;
    }
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.pommes);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DC5C3000, v11, v12, "VideoExperience cannot be decoded", v13, 2u);
      MEMORY[0x1E1299E70](v13, -1, -1);
    }

    type metadata accessor for VideoExperience(0);
    swift_deallocPartialClassInstance();
  }

  return 0;
}

unint64_t type metadata accessor for NSData()
{
  result = lazy cache variable for type metadata for NSData;
  if (!lazy cache variable for type metadata for NSData)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSData);
  }

  return result;
}

Swift::Void __swiftcall VideoExperience.encode(with:)(NSCoder with)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_VideoClientComponent and conformance Apple_Parsec_Siri_V2alpha_VideoClientComponent();
  v2 = Message.serializedData(partial:)();
  v4 = v3;
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v2, v4);
  v6 = MEMORY[0x1E1299430](0xD000000000000014, 0x80000001DC651930);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v6];

  Experience.encode(with:)(with);
}

uint64_t VideoExperience.__ivar_destroyer()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch15VideoExperience_videoClientComponent;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id VideoExperience.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoExperience(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for VideoExperience(uint64_t a1)
{
  result = type metadata singleton initialization cache for VideoExperience;
  if (!type metadata singleton initialization cache for VideoExperience)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_VideoClientComponent and conformance Apple_Parsec_Siri_V2alpha_VideoClientComponent()
{
  result = lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_VideoClientComponent and conformance Apple_Parsec_Siri_V2alpha_VideoClientComponent;
  if (!lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_VideoClientComponent and conformance Apple_Parsec_Siri_V2alpha_VideoClientComponent)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_VideoClientComponent and conformance Apple_Parsec_Siri_V2alpha_VideoClientComponent);
  }

  return result;
}

uint64_t type metadata completion function for VideoExperience(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE007473696C7961;
  v3 = a1;
  if (a1 > 4u)
  {
    v11 = 0x80000001DC6512C0;
    v12 = 0x80000001DC6512E0;
    v13 = 0xD00000000000001ALL;
    if (a1 == 8)
    {
      v13 = 0xD000000000000016;
    }

    else
    {
      v12 = 0x80000001DC651300;
    }

    if (a1 == 7)
    {
      v14 = 0xD000000000000017;
    }

    else
    {
      v14 = v13;
    }

    if (a1 != 7)
    {
      v11 = v12;
    }

    v15 = 0x80000001DC651280;
    v16 = 0xD00000000000001FLL;
    if (a1 != 5)
    {
      v16 = 0xD000000000000018;
      v15 = 0x80000001DC6512A0;
    }

    if (a1 <= 6u)
    {
      v9 = v16;
    }

    else
    {
      v9 = v14;
    }

    if (v3 <= 6)
    {
      v10 = v15;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v4 = 0x656D706D61732D78;
    v5 = 0x80000001DC651240;
    v6 = 0xD000000000000014;
    if (a1 != 3)
    {
      v6 = 0xD000000000000017;
      v5 = 0x80000001DC651260;
    }

    if (a1 == 2)
    {
      v5 = 0xED00006D65746964;
    }

    else
    {
      v4 = v6;
    }

    v7 = 0x80000001DC651210;
    if (a1)
    {
      v8 = 0xD000000000000016;
    }

    else
    {
      v8 = 0x6C70706D61732D78;
    }

    if (!a1)
    {
      v7 = 0xEE007473696C7961;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v3 <= 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xED00006D65746964;
        if (v9 != 0x656D706D61732D78)
        {
          goto LABEL_64;
        }

        goto LABEL_62;
      }

      if (a2 == 3)
      {
        v2 = 0x80000001DC651240;
        if (v9 != 0xD000000000000014)
        {
          goto LABEL_64;
        }

        goto LABEL_62;
      }

      v18 = "x-samppodcastcollection";
LABEL_54:
      v2 = (v18 - 32) | 0x8000000000000000;
      if (v9 != 0xD000000000000017)
      {
        goto LABEL_64;
      }

      goto LABEL_62;
    }

    if (!a2)
    {
      if (v9 != 0x6C70706D61732D78)
      {
        goto LABEL_64;
      }

      goto LABEL_62;
    }

    v17 = "x-sampcollection-album";
    goto LABEL_59;
  }

  if (a2 > 6u)
  {
    if (a2 == 7)
    {
      v18 = "x-sampcollection-artist";
      goto LABEL_54;
    }

    if (a2 != 8)
    {
      v2 = 0x80000001DC651300;
      if (v9 != 0xD00000000000001ALL)
      {
        goto LABEL_64;
      }

      goto LABEL_62;
    }

    v17 = "x-sampcollection-genre";
LABEL_59:
    v2 = (v17 - 32) | 0x8000000000000000;
    if (v9 != 0xD000000000000016)
    {
      goto LABEL_64;
    }

    goto LABEL_62;
  }

  if (a2 == 5)
  {
    v2 = 0x80000001DC651280;
    if (v9 != 0xD00000000000001FLL)
    {
      goto LABEL_64;
    }
  }

  else
  {
    v2 = 0x80000001DC6512A0;
    if (v9 != 0xD000000000000018)
    {
LABEL_64:
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_65;
    }
  }

LABEL_62:
  if (v10 != v2)
  {
    goto LABEL_64;
  }

  v19 = 1;
LABEL_65:

  return v19 & 1;
}

{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x616D6F446F666E69;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v4 = 0xEF65737261506E69;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x4665737261506F6ELL;
    v4 = 0xEF6B6361626C6C61;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000016;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (v2 == 3)
    {
      v4 = 0x80000001DC6511D0;
    }

    else
    {
      v4 = 0x80000001DC6511F0;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0x616D6F446F666E69;
    }

    else
    {
      v7 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v6 = 0xEF65737261506E69;
    }

    else
    {
      v6 = 0xE700000000000000;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0xEF6B6361626C6C61;
    if (v3 != 0x4665737261506F6ELL)
    {
LABEL_37:
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_38;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0xD000000000000016;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (a2 == 3)
    {
      v6 = 0x80000001DC6511D0;
    }

    else
    {
      v6 = 0x80000001DC6511F0;
    }

    if (v3 != v5)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_37;
  }

  v8 = 1;
LABEL_38:

  return v8 & 1;
}

id PommesResult.init(resultId:domain:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = &v6[OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_resultId];
  *v7 = a1;
  *(v7 + 1) = a2;
  v8 = &v6[OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_domain];
  *v8 = a3;
  *(v8 + 1) = a4;
  v9 = &v6[OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_metadata];
  *v9 = a5;
  *(v9 + 1) = a6;
  v11.receiver = v6;
  v11.super_class = type metadata accessor for PommesResult();
  return objc_msgSendSuper2(&v11, sel_init);
}

id PommesResult.init(coder:)(void *a1)
{
  v2 = v1;
  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v4 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  v6 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v6)
  {

LABEL_6:
    type metadata accessor for PommesResult();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = &v2[OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_resultId];
  *v9 = v8;
  v9[1] = v10;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = &v2[OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_domain];
  *v12 = v11;
  v12[1] = v13;
  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
  v14 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v14)
  {
    v15 = v14;
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v5 = v7;
    v7 = v15;
  }

  else
  {
    v16 = 0;
    v18 = 0xF000000000000000;
  }

  v20 = &v2[OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_metadata];
  *v20 = v16;
  v20[1] = v18;
  v22.receiver = v2;
  v22.super_class = type metadata accessor for PommesResult();
  v21 = objc_msgSendSuper2(&v22, sel_init);

  return v21;
}

Swift::Void __swiftcall PommesResult.encode(with:)(NSCoder with)
{
  v3 = MEMORY[0x1E1299430](*(v1 + OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_resultId), *(v1 + OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_resultId + 8));
  v4 = MEMORY[0x1E1299430](0x6449746C75736572, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = MEMORY[0x1E1299430](*(v1 + OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_domain), *(v1 + OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_domain + 8));
  v6 = MEMORY[0x1E1299430](0x6E69616D6F64, 0xE600000000000000);
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = (v1 + OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_metadata);
  v8 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_metadata + 8);
  if (v8 >> 60 != 15)
  {
    v9 = *v7;
    outlined copy of Data._Representation(*v7, v8);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v11 = MEMORY[0x1E1299430](0x617461646174656DLL, 0xE800000000000000);
    [(objc_class *)with.super.isa encodeObject:isa forKey:v11];

    outlined consume of Data._Representation?(v9, v8);
  }
}

uint64_t PommesResult.resultId.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_resultId);

  return v3;
}

uint64_t PommesResult.domain.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_domain);

  return v3;
}

uint64_t PommesResult.metadata.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_metadata);
  outlined copy of Data?(v1, *(v0 + OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_metadata + 8));
  return v1;
}

uint64_t outlined copy of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(result, a2);
  }

  return result;
}

id PommesResult.__allocating_init(resultId:domain:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_resultId];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v13[OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_domain];
  *v15 = a3;
  *(v15 + 1) = a4;
  v16 = &v13[OBJC_IVAR____TtC21SiriInformationSearch12PommesResult_metadata];
  *v16 = a5;
  *(v16 + 1) = a6;
  v18.receiver = v13;
  v18.super_class = v6;
  return objc_msgSendSuper2(&v18, sel_init);
}

id PommesResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PommesCandidateId.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1E1299920](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PommesCandidateId.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x1E1299920](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PommesCandidateId.CodingKeys()
{
  v1 = 0x636F64656DLL;
  if (*v0 != 1)
  {
    v1 = 0x656D6D6F506E7572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25458;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PommesCandidateId.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized PommesCandidateId.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PommesCandidateId.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesCandidateId.CodingKeys and conformance PommesCandidateId.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PommesCandidateId.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesCandidateId.CodingKeys and conformance PommesCandidateId.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PommesCandidateId.MedocCodingKeys()
{
  if (*v0)
  {
    return 0x6449756374;
  }

  else
  {
    return 0x6449707274;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PommesCandidateId.MedocCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6449707274 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6449756374 && a2 == 0xE500000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PommesCandidateId.MedocCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesCandidateId.MedocCodingKeys and conformance PommesCandidateId.MedocCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PommesCandidateId.MedocCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesCandidateId.MedocCodingKeys and conformance PommesCandidateId.MedocCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PommesCandidateId.RcCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PommesCandidateId.RcCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesCandidateId.RcCodingKeys and conformance PommesCandidateId.RcCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PommesCandidateId.RcCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesCandidateId.RcCodingKeys and conformance PommesCandidateId.RcCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PommesCandidateId.RcCodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E1299920](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PommesCandidateId.RcCodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1E1299920](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PommesCandidateId.RunPommesCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6449666572 && a2 == 0xE500000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PommesCandidateId.RunPommesCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesCandidateId.RunPommesCodingKeys and conformance PommesCandidateId.RunPommesCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PommesCandidateId.RunPommesCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesCandidateId.RunPommesCodingKeys and conformance PommesCandidateId.RunPommesCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PommesCandidateId.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy20SiriInformationTypes17PommesCandidateIdO03RunG10CodingKeys33_2512DB220CBC340491304B4B60B61C76LLOGMd, &_ss22KeyedEncodingContainerVy20SiriInformationTypes17PommesCandidateIdO03RunG10CodingKeys33_2512DB220CBC340491304B4B60B61C76LLOGMR);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v26 = v24 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy20SiriInformationTypes17PommesCandidateIdO15MedocCodingKeys33_2512DB220CBC340491304B4B60B61C76LLOGMd, &_ss22KeyedEncodingContainerVy20SiriInformationTypes17PommesCandidateIdO15MedocCodingKeys33_2512DB220CBC340491304B4B60B61C76LLOGMR);
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy20SiriInformationTypes17PommesCandidateIdO12RcCodingKeys33_2512DB220CBC340491304B4B60B61C76LLOGMd, &_ss22KeyedEncodingContainerVy20SiriInformationTypes17PommesCandidateIdO12RcCodingKeys33_2512DB220CBC340491304B4B60B61C76LLOGMR);
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy20SiriInformationTypes17PommesCandidateIdO10CodingKeys33_2512DB220CBC340491304B4B60B61C76LLOGMd, &_ss22KeyedEncodingContainerVy20SiriInformationTypes17PommesCandidateIdO10CodingKeys33_2512DB220CBC340491304B4B60B61C76LLOGMR);
  v33 = *(v11 - 8);
  v34 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v24 - v12;
  v14 = v1[1];
  v31 = *v1;
  v32 = v14;
  v15 = v1[2];
  v24[1] = v1[3];
  v24[2] = v15;
  v16 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PommesCandidateId.CodingKeys and conformance PommesCandidateId.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (!v16)
  {
    v36 = 0;
    lazy protocol witness table accessor for type PommesCandidateId.RcCodingKeys and conformance PommesCandidateId.RcCodingKeys();
    v17 = v34;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v25 + 8))(v10, v8);
    return (*(v33 + 8))(v13, v17);
  }

  if (v16 != 1)
  {
    v40 = 2;
    lazy protocol witness table accessor for type PommesCandidateId.RunPommesCodingKeys and conformance PommesCandidateId.RunPommesCodingKeys();
    v20 = v26;
    v17 = v34;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v18 = v28;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = *(v27 + 8);
    v22 = v20;
LABEL_8:
    v21(v22, v18);
    return (*(v33 + 8))(v13, v17);
  }

  v39 = 1;
  lazy protocol witness table accessor for type PommesCandidateId.MedocCodingKeys and conformance PommesCandidateId.MedocCodingKeys();
  v17 = v34;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v38 = 0;
  v18 = v30;
  v19 = v35;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v19)
  {
    v37 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = *(v29 + 8);
    v22 = v7;
    goto LABEL_8;
  }

  (*(v29 + 8))(v7, v18);
  return (*(v33 + 8))(v13, v17);
}

uint64_t PommesCandidateId.hash(into:)(uint64_t a1)
{
  if (*(v1 + 32))
  {
    if (*(v1 + 32) == 1)
    {
      MEMORY[0x1E1299920](1);
      String.hash(into:)();
      goto LABEL_7;
    }

    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1E1299920](v2);
LABEL_7:

  return String.hash(into:)();
}

Swift::Int PommesCandidateId.hashValue.getter()
{
  v1 = *(v0 + 32);
  Hasher.init(_seed:)();
  if (!v1)
  {
    v2 = 0;
LABEL_6:
    MEMORY[0x1E1299920](v2);
    goto LABEL_7;
  }

  if (v1 != 1)
  {
    v2 = 2;
    goto LABEL_6;
  }

  MEMORY[0x1E1299920](1);
  String.hash(into:)();
LABEL_7:
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t PommesCandidateId.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy20SiriInformationTypes17PommesCandidateIdO03RunG10CodingKeys33_2512DB220CBC340491304B4B60B61C76LLOGMd, &_ss22KeyedDecodingContainerVy20SiriInformationTypes17PommesCandidateIdO03RunG10CodingKeys33_2512DB220CBC340491304B4B60B61C76LLOGMR);
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v51 - v3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy20SiriInformationTypes17PommesCandidateIdO15MedocCodingKeys33_2512DB220CBC340491304B4B60B61C76LLOGMd, &_ss22KeyedDecodingContainerVy20SiriInformationTypes17PommesCandidateIdO15MedocCodingKeys33_2512DB220CBC340491304B4B60B61C76LLOGMR);
  v55 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v5 = &v51 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy20SiriInformationTypes17PommesCandidateIdO12RcCodingKeys33_2512DB220CBC340491304B4B60B61C76LLOGMd, &_ss22KeyedDecodingContainerVy20SiriInformationTypes17PommesCandidateIdO12RcCodingKeys33_2512DB220CBC340491304B4B60B61C76LLOGMR);
  v53 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v51 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy20SiriInformationTypes17PommesCandidateIdO10CodingKeys33_2512DB220CBC340491304B4B60B61C76LLOGMd, &_ss22KeyedDecodingContainerVy20SiriInformationTypes17PommesCandidateIdO10CodingKeys33_2512DB220CBC340491304B4B60B61C76LLOGMR);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v51 - v11;
  v13 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  lazy protocol witness table accessor for type PommesCandidateId.CodingKeys and conformance PommesCandidateId.CodingKeys();
  v14 = v59;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v14)
  {
    v15 = v58;
    v59 = v10;
    v16 = KeyedDecodingContainer.allKeys.getter();
    v17 = *(v16 + 16);
    v51 = v9;
    if (!v17 || ((v18 = *(v16 + 32), v17 == 1) ? (v19 = v18 == 3) : (v19 = 1), v19))
    {
      v20 = type metadata accessor for DecodingError();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v22 = &type metadata for PommesCandidateId;
      v23 = v51;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v59 + 8))(v12, v23);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v16 + 32))
      {
        v53 = v16;
        if (v18 == 1)
        {
          v64 = 1;
          lazy protocol witness table accessor for type PommesCandidateId.MedocCodingKeys and conformance PommesCandidateId.MedocCodingKeys();
          v25 = v5;
          v26 = v51;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v63 = 0;
          v27 = v52;
          v28 = KeyedDecodingContainer.decode(_:forKey:)();
          v29 = v59;
          v54 = v28;
          v56 = v40;
          v58 = v12;
          v62 = 1;
          v41 = KeyedDecodingContainer.decode(_:forKey:)();
          v42 = v27;
          v46 = v41;
          v48 = v47;
          (*(v55 + 8))(v25, v42);
          (*(v29 + 8))(v58, v26);
          swift_unknownObjectRelease();
          v50 = v56;
          v49 = v57;
        }

        else
        {
          v65 = 2;
          lazy protocol witness table accessor for type PommesCandidateId.RunPommesCodingKeys and conformance PommesCandidateId.RunPommesCodingKeys();
          v32 = v15;
          v33 = v51;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v49 = v57;
          v36 = v56;
          v37 = KeyedDecodingContainer.decode(_:forKey:)();
          v38 = (v54 + 8);
          v39 = (v59 + 8);
          v54 = v37;
          v44 = v32;
          v50 = v45;
          (*v38)(v44, v36);
          (*v39)(v12, v33);
          swift_unknownObjectRelease();
          v46 = 0;
          v48 = 0;
        }
      }

      else
      {
        v61 = 0;
        lazy protocol witness table accessor for type PommesCandidateId.RcCodingKeys and conformance PommesCandidateId.RcCodingKeys();
        v30 = v8;
        v31 = v51;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v34 = v6;
        v35 = KeyedDecodingContainer.decode(_:forKey:)();
        v50 = v43;
        v54 = v35;
        (*(v53 + 8))(v30, v34);
        (*(v59 + 8))(v12, v31);
        swift_unknownObjectRelease();
        v46 = 0;
        v48 = 0;
        v49 = v57;
      }

      *v49 = v54;
      *(v49 + 8) = v50;
      *(v49 + 16) = v46;
      *(v49 + 24) = v48;
      *(v49 + 32) = v18;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v60);
}

uint64_t specialized Collection<>.popFirst()()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PommesCandidateId()
{
  v1 = *(v0 + 32);
  Hasher.init(_seed:)();
  if (!v1)
  {
    v2 = 0;
LABEL_6:
    MEMORY[0x1E1299920](v2);
    goto LABEL_7;
  }

  if (v1 != 1)
  {
    v2 = 2;
    goto LABEL_6;
  }

  MEMORY[0x1E1299920](1);
  String.hash(into:)();
LABEL_7:
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PommesCandidateId(uint64_t a1)
{
  if (*(v1 + 32))
  {
    if (*(v1 + 32) == 1)
    {
      MEMORY[0x1E1299920](1);
      String.hash(into:)();
      goto LABEL_7;
    }

    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1E1299920](v2);
LABEL_7:

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PommesCandidateId(uint64_t a1)
{
  v2 = *(v1 + 32);
  Hasher.init(_seed:)();
  if (!v2)
  {
    v3 = 0;
LABEL_6:
    MEMORY[0x1E1299920](v3);
    goto LABEL_7;
  }

  if (v2 != 1)
  {
    v3 = 2;
    goto LABEL_6;
  }

  MEMORY[0x1E1299920](1);
  String.hash(into:)();
LABEL_7:
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t static PommesResponse.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  static PommesResponse.supportsSecureCoding = a1;
  return result;
}

uint64_t PommesResponse.__allocating_init(pegasusResponse:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  memset(v9, 0, sizeof(v9));
  v10 = -1;
  PommesResponse.__allocating_init(pegasusResponse:experiences:requestId:pommesCandidateId:clientResults:isPersonalDomainFallback:)(v5, MEMORY[0x1E69E7CC0], 0, 0, v9, MEMORY[0x1E69E7CC0], 0);
  v7 = v6;
  (*(v3 + 8))(a1, v2);
  return v7;
}

void PommesResponse.__allocating_init(pegasusResponse:experiences:requestId:pommesCandidateId:clientResults:isPersonalDomainFallback:)(uint64_t a1, unint64_t a2, _OWORD *a3, uint64_t a4, __int128 *a5, char *a6, int a7)
{
  v8 = v7;
  v116 = a7;
  v117 = a4;
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog();
  v15 = *(v14 - 8);
  v131 = v14;
  v132 = v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v130 = &v101[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x1EEE9AC00](v16);
  v129 = &v101[-v19];
  MEMORY[0x1EEE9AC00](v18);
  v128 = &v101[-v20];
  v125 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata();
  v21 = *(v125 - 8);
  v22 = MEMORY[0x1EEE9AC00](v125);
  v119 = &v101[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x1EEE9AC00](v22);
  v120 = &v101[-v25];
  v26 = MEMORY[0x1EEE9AC00](v24);
  v126 = &v101[-v27];
  v28 = MEMORY[0x1EEE9AC00](v26);
  v121 = &v101[-v29];
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v101[-v30];
  v32 = a5[1];
  v115 = *a5;
  v114 = v32;
  v113 = *(a5 + 32);
  if (a2 >> 62)
  {
    goto LABEL_74;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x1E1299770](v100))
  {
    v118 = a3;
    if (i)
    {
      v34 = v31;
      v31 = a2 & 0xC000000000000001;
      if ((a2 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x1E12996A0](0, a2);
      }

      else
      {
        if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_80;
        }

        v35 = *(a2 + 32);
      }

      v36 = v35;
      v123 = (*((*MEMORY[0x1E69E7D40] & *v35) + 0x88))();
      v38 = v37;

      if (v31)
      {
        v39 = MEMORY[0x1E12996A0](0, a2);
      }

      else
      {
        if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_82;
        }

        v39 = *(a2 + 32);
      }

      v41 = v39;
      v31 = v34;
      v40 = (*((*MEMORY[0x1E69E7D40] & *v39) + 0xA0))();
    }

    else
    {
      v38 = 0xE700000000000000;
      v123 = 0x6E776F6E6B6E55;
      v40 = 0.0;
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Logger.pommes);

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();

    v45 = os_log_type_enabled(v43, v44);
    v127 = i;
    v112 = v8;
    v111 = a6;
    if (v45)
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v134[0] = v47;
      *v46 = 136315394;
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v123, v38, v134);

      *(v46 + 4) = v48;
      *(v46 + 12) = 2048;
      *(v46 + 14) = v40;
      _os_log_impl(&dword_1DC5C3000, v43, v44, "PommesResponse primaryPluginIdentifier %s     PommesResponse primaryQueryConfidence %f", v46, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v47);
      v49 = v47;
      i = v127;
      MEMORY[0x1E1299E70](v49, -1, -1);
      MEMORY[0x1E1299E70](v46, -1, -1);
    }

    else
    {
    }

    v110 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.conversationContextBytes.getter();
    v109 = v50;
    v124 = a1;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
    a3 = v31;
    v108 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainName.getter();
    v107 = v51;
    v52 = *(v21 + 8);
    v21 += 8;
    v122 = v52;
    v123 = v21;
    v52(v31, v125);
    a6 = MEMORY[0x1E69E7CC0];
    if (i)
    {
      v53 = 0;
      v8 = a2 & 0xC000000000000001;
      a1 = a2 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v8)
        {
          v21 = a2;
          v55 = MEMORY[0x1E12996A0](v53, a2);
        }

        else
        {
          if (v53 >= *(a1 + 16))
          {
            goto LABEL_69;
          }

          v21 = a2;
          v55 = *(a2 + 8 * v53 + 32);
        }

        a3 = v55;
        a2 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          goto LABEL_68;
        }

        v56 = (*((*MEMORY[0x1E69E7D40] & *v55) + 0xE0))();

        a3 = *(v56 + 16);
        v31 = *(a6 + 2);
        v57 = a3 + v31;
        if (__OFADD__(v31, a3))
        {
          goto LABEL_70;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v57 > *(a6 + 3) >> 1)
        {
          if (v31 <= v57)
          {
            v59 = a3 + v31;
          }

          else
          {
            v59 = v31;
          }

          a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v59, 1, a6);
        }

        v60 = v127;
        if (*(v56 + 16))
        {
          if ((*(a6 + 3) >> 1) - *(a6 + 2) < a3)
          {
            goto LABEL_72;
          }

          swift_arrayInitWithCopy();

          if (a3)
          {
            v61 = *(a6 + 2);
            v62 = __OFADD__(v61, a3);
            v63 = a3 + v61;
            if (v62)
            {
              goto LABEL_73;
            }

            *(a6 + 2) = v63;
          }
        }

        else
        {

          if (a3)
          {
            goto LABEL_71;
          }
        }

        ++v53;
        v54 = a2 == v60;
        a2 = v21;
      }

      while (!v54);
    }

    v64 = v121;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
    v65 = v128;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLog.getter();
    v66 = v122;
    v8 = v123;
    v122(v64, v125);
    v121 = Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainFlowStepLog.getter();
    v106 = v67;
    v68 = (v132 + 8);
    v31 = *(v132 + 8);
    v69 = v65;
    v70 = v131;
    (v31)(v69, v131);
    v71 = v126;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
    v72 = v129;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLog.getter();
    v66(v71, v125);
    v73 = Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainUserSensitiveTier1Log.getter();
    v75 = v74;
    v128 = v31;
    v129 = v68;
    (v31)(v72, v70);
    v105 = v73;
    v104 = v75;
    if (v127)
    {
      if ((a2 & 0xC000000000000001) == 0)
      {
        if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_82:
          __break(1u);
          return;
        }

        v76 = *(a2 + 32);
        goto LABEL_43;
      }

LABEL_80:
      v76 = MEMORY[0x1E12996A0](0, a2);
LABEL_43:
      v77 = v76;
      v102 = (*((*MEMORY[0x1E69E7D40] & *v76) + 0xF0))();

      goto LABEL_45;
    }

    v102 = 0;
LABEL_45:
    v103 = a2;
    v21 = v120;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
    v78 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLogs.getter();
    v122(v21, v125);
    v79 = *(v78 + 16);
    if (v79)
    {
      *&v134[0] = MEMORY[0x1E69E7CC0];
      a3 = v134;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v79, 0);
      a2 = 0;
      a1 = *&v134[0];
      v127 = v78 + ((*(v132 + 80) + 32) & ~*(v132 + 80));
      v126 = (v132 + 16);
      while (a2 < *(v78 + 16))
      {
        v31 = a6;
        v80 = v78;
        v81 = v131;
        a3 = v130;
        (*(v132 + 16))(v130, v127 + *(v132 + 72) * a2, v131);
        v82 = Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainFlowStepLog.getter();
        v21 = v83;
        (v128)(a3, v81);
        *&v134[0] = a1;
        v85 = *(a1 + 16);
        v84 = *(a1 + 24);
        v8 = v85 + 1;
        if (v85 >= v84 >> 1)
        {
          a3 = v134;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v85 + 1, 1);
          a1 = *&v134[0];
        }

        ++a2;
        *(a1 + 16) = v8;
        v86 = a1 + 16 * v85;
        *(v86 + 32) = v82;
        *(v86 + 40) = v21;
        v78 = v80;
        a6 = v31;
        if (v79 == a2)
        {

          goto LABEL_53;
        }
      }

      __break(1u);
      goto LABEL_67;
    }

    a1 = MEMORY[0x1E69E7CC0];
LABEL_53:
    v87 = v119;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
    v21 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLogs.getter();
    v122(v87, v125);
    v8 = *(v21 + 16);
    if (!v8)
    {
      break;
    }

    *&v134[0] = MEMORY[0x1E69E7CC0];
    a3 = v134;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v31 = 0;
    a2 = *&v134[0];
    v126 = (v21 + ((*(v132 + 80) + 32) & ~*(v132 + 80)));
    v127 = a1;
    v125 = v132 + 16;
    while (v31 < *(v21 + 16))
    {
      v88 = a6;
      v89 = v8;
      v90 = v21;
      v91 = v131;
      a3 = v130;
      (*(v132 + 16))(v130, &v126[*(v132 + 72) * v31], v131);
      v92 = Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainUserSensitiveTier1Log.getter();
      v94 = v93;
      (v128)(a3, v91);
      *&v134[0] = a2;
      v96 = *(a2 + 16);
      v95 = *(a2 + 24);
      if (v96 >= v95 >> 1)
      {
        a3 = v134;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v95 > 1), v96 + 1, 1);
        a2 = *&v134[0];
      }

      ++v31;
      *(a2 + 16) = v96 + 1;
      v97 = a2 + 16 * v96;
      *(v97 + 32) = v92;
      *(v97 + 40) = v94;
      v8 = v89;
      v54 = v89 == v31;
      v21 = v90;
      a6 = v88;
      a1 = v127;
      if (v54)
      {

        goto LABEL_62;
      }
    }

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
    if ((a2 & 0x8000000000000000) != 0)
    {
      v100 = a2;
    }

    else
    {
      v100 = a2 & 0xFFFFFFFFFFFFFF8;
    }
  }

  a2 = MEMORY[0x1E69E7CC0];
LABEL_62:
  v134[0] = v115;
  v134[1] = v114;
  v135 = v113;
  if (v116)
  {
    v98 = 3;
  }

  else
  {
    v98 = 0;
  }

  v133 = v98;
  (*(v112 + 352))(v103, v111, v110, v109, v108, v107, a6, v121, v106, v105, v104, v102 & 1, v118, v117, v134, 0, 0, 0, a1, a2, MEMORY[0x1E69E7CC0], &v133, MEMORY[0x1E69E7CC0]);
  v99 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  (*(*(v99 - 8) + 8))(v124, v99);
}

uint64_t PommesResponse.__allocating_init(pegasusResponse:clientResults:)(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  memset(v11, 0, sizeof(v11));
  v12 = -1;
  PommesResponse.__allocating_init(pegasusResponse:experiences:requestId:pommesCandidateId:clientResults:isPersonalDomainFallback:)(v7, MEMORY[0x1E69E7CC0], 0, 0, v11, a2, 0);
  v9 = v8;
  (*(v5 + 8))(a1, v4);
  return v9;
}

uint64_t PommesResponse.__allocating_init(pegasusResponse:experiences:clientResults:)(uint64_t a1, unint64_t a2, char *a3)
{
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6);
  memset(v13, 0, sizeof(v13));
  v14 = -1;
  PommesResponse.__allocating_init(pegasusResponse:experiences:requestId:pommesCandidateId:clientResults:isPersonalDomainFallback:)(v9, a2, 0, 0, v13, a3, 0);
  v11 = v10;
  (*(v7 + 8))(a1, v6);
  return v11;
}

uint64_t PommesResponse.__allocating_init(pegasusResponse:requestId:resultCandidateId:clientResults:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    v16 = 0;
  }

  else
  {
    a4 = 0;
    v16 = -1;
  }

  (*(v13 + 16))(v15, a1, v12);
  *&v21 = a4;
  *(&v21 + 1) = a5;
  v22 = 0;
  v23 = 0;
  v24 = v16;
  PommesResponse.__allocating_init(pegasusResponse:experiences:requestId:pommesCandidateId:clientResults:isPersonalDomainFallback:)(v15, MEMORY[0x1E69E7CC0], a2, a3, &v21, a6, 0);
  v18 = v17;
  (*(v13 + 8))(a1, v12);
  return v18;
}

uint64_t PommesResponse.__allocating_init(pegasusResponse:experiences:requestId:resultCandidateId:clientResults:)(uint64_t a1, unint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v22 = a7;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a6)
  {
    v17 = 0;
  }

  else
  {
    a5 = 0;
    v17 = -1;
  }

  (*(v14 + 16))(v16, a1, v13);
  *&v23 = a5;
  *(&v23 + 1) = a6;
  v24 = 0;
  v25 = 0;
  v26 = v17;
  PommesResponse.__allocating_init(pegasusResponse:experiences:requestId:pommesCandidateId:clientResults:isPersonalDomainFallback:)(v16, a2, a3, a4, &v23, v22, 0);
  v19 = v18;
  (*(v14 + 8))(a1, v13);
  return v19;
}

uint64_t PommesResponse.__allocating_init(experiences:clientResults:conversationContext:metadataDomainName:renderedTexts:pegasusDomainFlowStepLog:pegasusDomainUserSensitiveTier1Log:listenAfterSpeaking:requestId:resultCandidateId:isHandledByPreflight:preflightClientHandlerIdentifier:taskStepLogs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  if (a1 >> 62)
  {
    goto LABEL_37;
  }

  v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v22 = MEMORY[0x1E69E7CC0];
  if (v21)
  {
    v23 = 0;
    v48 = a1 & 0xC000000000000001;
    v24 = a1 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v48)
      {
        v25 = a1;
        v26 = MEMORY[0x1E12996A0](v23, a1);
      }

      else
      {
        if (v23 >= *(v24 + 16))
        {
          goto LABEL_32;
        }

        v25 = a1;
        v26 = *(a1 + 8 * v23 + 32);
      }

      v27 = v26;
      v28 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        if (a1 < 0)
        {
          v40 = a1;
        }

        else
        {
          v40 = a1 & 0xFFFFFFFFFFFFFF8;
        }

        v21 = MEMORY[0x1E1299770](v40);
        goto LABEL_3;
      }

      v29 = (*((*MEMORY[0x1E69E7D40] & *v26) + 0xE0))();

      v30 = *(v29 + 16);
      a1 = *(v22 + 2);
      v31 = a1 + v30;
      if (__OFADD__(a1, v30))
      {
        goto LABEL_33;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v31 <= *(v22 + 3) >> 1)
      {
        if (*(v29 + 16))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (a1 <= v31)
        {
          v33 = a1 + v30;
        }

        else
        {
          v33 = a1;
        }

        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v33, 1, v22);
        if (*(v29 + 16))
        {
LABEL_20:
          if ((*(v22 + 3) >> 1) - *(v22 + 2) < v30)
          {
            goto LABEL_35;
          }

          swift_arrayInitWithCopy();

          if (v30)
          {
            v34 = *(v22 + 2);
            v35 = __OFADD__(v34, v30);
            v36 = v34 + v30;
            if (v35)
            {
              goto LABEL_36;
            }

            *(v22 + 2) = v36;
          }

          goto LABEL_6;
        }
      }

      if (v30)
      {
        goto LABEL_34;
      }

LABEL_6:
      ++v23;
      a1 = v25;
    }

    while (v28 != v21);
  }

  if (a16)
  {
    v38 = 0;
  }

  else
  {
    v38 = -1;
  }

  if (!a16)
  {
    a15 = 0;
  }

  v50[0] = a15;
  v50[1] = a16;
  v50[2] = 0;
  v50[3] = 0;
  v51 = v38;
  v49 = 0;
  return (*(v47 + 352))(a1, a2, a3, a4, a5, a6, v22, a8, a9, a10, a11, a12 & 1, a13, a14, v50, 0, 0, 0, a20, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], &v49, MEMORY[0x1E69E7CC0]);
}

uint64_t PommesResponse.__allocating_init(pegasusResponse:experiences:requestId:resultCandidateId:clientResults:isPersonalDomainFallback:)(uint64_t a1, unint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, int a8)
{
  v23 = a8;
  v22 = a7;
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a6)
  {
    v18 = 0;
  }

  else
  {
    a5 = 0;
    v18 = -1;
  }

  (*(v15 + 16))(v17, a1, v14);
  *&v24 = a5;
  *(&v24 + 1) = a6;
  v25 = 0;
  v26 = 0;
  v27 = v18;
  PommesResponse.__allocating_init(pegasusResponse:experiences:requestId:pommesCandidateId:clientResults:isPersonalDomainFallback:)(v17, a2, a3, a4, &v24, v22, v23);
  v20 = v19;
  (*(v15 + 8))(a1, v14);
  return v20;
}

uint64_t PommesResponse.__allocating_init(experiences:clientResults:conversationContext:metadataDomainName:renderedTexts:pegasusDomainFlowStepLog:pegasusDomainUserSensitiveTier1Log:listenAfterSpeaking:requestId:resultCandidateId:isHandledByPreflight:preflightClientHandlerIdentifier:isPersonalDomainFallback:taskStepLogs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21)
{
  if (a16)
  {
    v23 = 0;
  }

  else
  {
    a15 = 0;
    v23 = -1;
  }

  v27[0] = a15;
  v27[1] = a16;
  v27[2] = 0;
  v27[3] = 0;
  v28 = v23;
  if (a20)
  {
    v24 = 3;
  }

  else
  {
    v24 = 0;
  }

  v26 = v24;
  return (*(v21 + 352))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, v27, a17, a18, a19, a21, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], &v26, MEMORY[0x1E69E7CC0]);
}

uint64_t PommesResponse.__allocating_init(experiences:clientResults:conversationContext:metadataDomainName:renderedTexts:pegasusDomainFlowStepLog:pegasusDomainUserSensitiveTier1Log:listenAfterSpeaking:requestId:pommesCandidateId:isHandledByPreflight:preflightClientHandlerIdentifier:isPersonalDomainFallback:taskStepLogs:userSensitiveTier1Logs:componentsWarmedUp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v23 = *(a15 + 32);
  v24 = *(a15 + 16);
  v30[0] = *a15;
  v30[1] = v24;
  v31 = v23;
  if (a19)
  {
    v25 = 3;
  }

  else
  {
    v25 = 0;
  }

  v29 = v25;
  return (*(v22 + 352))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, v30, a16, a17, a18, a20, a21, a22, &v29, MEMORY[0x1E69E7CC0]);
}

void PommesResponse.__allocating_init(pegasusResponse:experiences:requestId:pommesCandidateId:clientResults:isPersonalDomainFallback:componentsWarmedUp:)(unint64_t a1, unint64_t a2, int64_t a3, unint64_t *a4, unint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v9 = v8;
  v118 = a8;
  v117 = a7;
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog();
  v16 = *(v15 - 8);
  v137 = v15;
  v138 = v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v136 = &v105[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x1EEE9AC00](v17);
  v132 = &v105[-v20];
  MEMORY[0x1EEE9AC00](v19);
  v127 = &v105[-v21];
  v22 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata();
  v23 = *(v22 - 8);
  v130 = v22;
  v131 = v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v120 = &v105[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = MEMORY[0x1EEE9AC00](v24);
  v124 = &v105[-v27];
  v28 = MEMORY[0x1EEE9AC00](v26);
  v126 = &v105[-v29];
  v30 = MEMORY[0x1EEE9AC00](v28);
  v125 = &v105[-v31];
  v32 = MEMORY[0x1EEE9AC00](v30);
  v135 = &v105[-v33];
  MEMORY[0x1EEE9AC00](v32);
  v134 = &v105[-v34];
  v35 = *(a5 + 16);
  v123 = *a5;
  v122 = v35;
  LODWORD(a5) = *(a5 + 32);
  if (a2 >> 62)
  {
    goto LABEL_75;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x1E1299770](v104))
  {
    v119 = a4;
    v121 = a5;
    if (i)
    {
      v38 = a6;
      v39 = v9;
      v9 = a2 & 0xC000000000000001;
      if ((a2 & 0xC000000000000001) != 0)
      {
        v40 = MEMORY[0x1E12996A0](0, a2);
      }

      else
      {
        if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_81;
        }

        v40 = *(a2 + 32);
      }

      v41 = v40;
      v42 = (*((*MEMORY[0x1E69E7D40] & *v40) + 0x88))();
      v44 = v43;

      if (v9)
      {
        v45 = MEMORY[0x1E12996A0](0, a2);
      }

      else
      {
        if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_83;
        }

        v45 = *(a2 + 32);
      }

      v47 = v45;
      v9 = v39;
      v46 = (*((*MEMORY[0x1E69E7D40] & *v45) + 0xA0))();

      a6 = v38;
    }

    else
    {
      v44 = 0xE700000000000000;
      v42 = 0x6E776F6E6B6E55;
      v46 = 0.0;
    }

    v133 = i;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    __swift_project_value_buffer(v48, static Logger.pommes);

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();

    v51 = os_log_type_enabled(v49, v50);
    v116 = v9;
    v115 = a6;
    v114 = a3;
    if (v51)
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *&v140[0] = v53;
      *v52 = 136315394;
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, v140);

      *(v52 + 4) = v54;
      *(v52 + 12) = 2048;
      *(v52 + 14) = v46;
      _os_log_impl(&dword_1DC5C3000, v49, v50, "PommesResponse primaryPluginIdentifier %s     PommesResponse primaryQueryConfidence %f", v52, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x1E1299E70](v53, -1, -1);
      MEMORY[0x1E1299E70](v52, -1, -1);
    }

    else
    {
    }

    v55 = v134;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
    v111 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainUseCaseMetadata.getter();
    v9 = v131 + 8;
    v56 = *(v131 + 8);
    v57 = v55;
    v58 = v130;
    v56(v57, v130);
    v113 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.conversationContextBytes.getter();
    v112 = v59;
    v60 = v135;
    v129 = a1;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
    a4 = v60;
    v110 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainName.getter();
    v109 = v61;
    v131 = v9;
    v128 = v56;
    v56(v60, v58);
    v38 = MEMORY[0x1E69E7CC0];
    if (v133)
    {
      a5 = 0;
      a1 = a2 & 0xC000000000000001;
      a6 = a2 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (a1)
        {
          v9 = a2;
          v64 = MEMORY[0x1E12996A0](a5, a2);
        }

        else
        {
          if (a5 >= *(a6 + 16))
          {
            goto LABEL_70;
          }

          v9 = a2;
          v64 = *(a2 + 8 * a5 + 32);
        }

        a4 = v64;
        a2 = a5 + 1;
        if (__OFADD__(a5, 1))
        {
          goto LABEL_69;
        }

        v65 = (*((*MEMORY[0x1E69E7D40] & *v64) + 0xE0))();

        a4 = *(v65 + 16);
        a3 = *(v38 + 2);
        v66 = a4 + a3;
        if (__OFADD__(a3, a4))
        {
          goto LABEL_71;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v66 <= *(v38 + 3) >> 1)
        {
          if (!*(v65 + 16))
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (a3 <= v66)
          {
            v68 = a4 + a3;
          }

          else
          {
            v68 = a3;
          }

          v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v68, 1, v38);
          if (!*(v65 + 16))
          {
LABEL_20:

            v62 = v133;
            if (a4)
            {
              goto LABEL_72;
            }

            goto LABEL_21;
          }
        }

        if ((*(v38 + 3) >> 1) - *(v38 + 2) < a4)
        {
          goto LABEL_73;
        }

        swift_arrayInitWithCopy();

        v62 = v133;
        if (a4)
        {
          v69 = *(v38 + 2);
          v70 = __OFADD__(v69, a4);
          v71 = a4 + v69;
          if (v70)
          {
            goto LABEL_74;
          }

          *(v38 + 2) = v71;
        }

LABEL_21:
        ++a5;
        v63 = a2 == v62;
        a2 = v9;
      }

      while (!v63);
    }

    v72 = v125;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
    v73 = v127;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLog.getter();
    v74 = v128;
    v128(v72, v130);
    v125 = Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainFlowStepLog.getter();
    v108 = v75;
    v9 = v138 + 8;
    v76 = *(v138 + 8);
    v77 = v73;
    v78 = v137;
    (v76)(v77, v137);
    v79 = v126;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
    a3 = v132;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLog.getter();
    v74(v79, v130);
    v80 = Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainUserSensitiveTier1Log.getter();
    v82 = v81;
    v134 = v76;
    v135 = v9;
    (v76)(a3, v78);
    v126 = v82;
    v127 = v80;
    if (v133)
    {
      break;
    }

    v106 = 0;
LABEL_46:
    LODWORD(a5) = v129;
    v107 = a2;
    v140[0] = v123;
    v140[1] = v122;
    v141 = v121;
    v85 = v124;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
    a6 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLogs.getter();
    v128(v85, v130);
    v86 = *(a6 + 16);
    if (v86)
    {
      v139 = MEMORY[0x1E69E7CC0];
      a4 = &v139;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v86, 0);
      a1 = 0;
      a2 = v139;
      v133 = a6 + ((*(v138 + 80) + 32) & ~*(v138 + 80));
      v132 = (v138 + 16);
      while (a1 < *(a6 + 16))
      {
        a3 = v38;
        v87 = v137;
        a4 = v136;
        (*(v138 + 16))(v136, v133 + *(v138 + 72) * a1, v137);
        v88 = Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainFlowStepLog.getter();
        v9 = v89;
        (v134)(a4, v87);
        v139 = a2;
        a5 = *(a2 + 16);
        v90 = *(a2 + 24);
        if (a5 >= v90 >> 1)
        {
          a4 = &v139;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v90 > 1), a5 + 1, 1);
          a2 = v139;
        }

        ++a1;
        *(a2 + 16) = a5 + 1;
        v91 = a2 + 16 * a5;
        *(v91 + 32) = v88;
        *(v91 + 40) = v9;
        if (v86 == a1)
        {

          goto LABEL_54;
        }
      }

      __break(1u);
    }

    else
    {

      a2 = MEMORY[0x1E69E7CC0];
LABEL_54:
      v92 = v120;
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
      a5 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLogs.getter();
      v128(v92, v130);
      v93 = *(a5 + 16);
      if (!v93)
      {

        a1 = MEMORY[0x1E69E7CC0];
LABEL_63:
        if (v117)
        {
          v102 = 3;
        }

        else
        {
          v102 = 0;
        }

        LOBYTE(v139) = v102;
        (*(v116 + 352))(v107, v115, v113, v112, v110, v109, v38, v125, v108, v127, v126, v106 & 1, v114, v119, v140, 0, 0, 0, a2, a1, v118, &v139, v111);
        v103 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
        (*(*(v103 - 8) + 8))(v129, v103);
        return;
      }

      v139 = MEMORY[0x1E69E7CC0];
      a4 = &v139;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v93, 0);
      a3 = 0;
      a1 = v139;
      v132 = (a5 + ((*(v138 + 80) + 32) & ~*(v138 + 80)));
      v133 = a2;
      v131 = v138 + 16;
      while (a3 < *(a5 + 16))
      {
        v94 = v38;
        v95 = v93;
        v96 = v137;
        a4 = v136;
        (*(v138 + 16))(v136, &v132[*(v138 + 72) * a3], v137);
        v97 = Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainUserSensitiveTier1Log.getter();
        v9 = v98;
        (v134)(a4, v96);
        v139 = a1;
        v100 = *(a1 + 16);
        v99 = *(a1 + 24);
        a6 = v100 + 1;
        if (v100 >= v99 >> 1)
        {
          a4 = &v139;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v99 > 1), v100 + 1, 1);
          a1 = v139;
        }

        ++a3;
        *(a1 + 16) = a6;
        v101 = a1 + 16 * v100;
        *(v101 + 32) = v97;
        *(v101 + 40) = v9;
        v93 = v95;
        v63 = v95 == a3;
        v38 = v94;
        a2 = v133;
        if (v63)
        {

          goto LABEL_63;
        }
      }
    }

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
LABEL_75:
    if ((a2 & 0x8000000000000000) != 0)
    {
      v104 = a2;
    }

    else
    {
      v104 = a2 & 0xFFFFFFFFFFFFFF8;
    }
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
LABEL_81:
    v83 = MEMORY[0x1E12996A0](0, a2);
    goto LABEL_44;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v83 = *(a2 + 32);
LABEL_44:
    v84 = v83;
    v106 = (*((*MEMORY[0x1E69E7D40] & *v83) + 0xF0))();

    goto LABEL_46;
  }

  __break(1u);
LABEL_83:
  __break(1u);
}