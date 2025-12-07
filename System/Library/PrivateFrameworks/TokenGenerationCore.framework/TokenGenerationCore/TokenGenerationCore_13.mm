uint64_t getEnumTagSinglePayload for PromptTemplateInfo.RichVariableBinding.Component.Content.Text(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for PromptTemplateInfo.RichVariableBinding.Component.Content.Text(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Prompt.RenderError and conformance Prompt.RenderError(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for NSObject(uint64_t a1, unint64_t *a2, void *a3)
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

double PromptVariant.tgPrompt.getter@<D0>(void *a1@<X8>)
{
  v20 = a1;
  v21 = type metadata accessor for CompletionPrompt();
  v1 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ChatMessagesPrompt();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PromptVariant(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CatalogClient();
  swift_allocObject();
  v12 = CatalogClient.init()();
  v26[3] = v11;
  v26[4] = &protocol witness table for CatalogClient;
  v26[0] = v12;
  outlined init with copy of PromptVariant(v22, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v7, v10, v4);
    v13 = v27;
    v14 = specialized GenerativeConfigurationProtocol<>.renderToTokenGenerationPromptTurns(catalogClient:)(v26);
    if (v13)
    {
      (*(v5 + 8))(v7, v4);
LABEL_6:
      __swift_destroy_boxed_opaque_existential_0(v26);
      return result;
    }

    static Prompt.transcript(turns:)(v14, &v23);

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v15 = v21;
    (*(v1 + 32))(v3, v10, v21);
    v16 = v27;
    specialized GenerativeConfigurationProtocol<>.renderToTokenGenerationPrompt(catalogClient:)(v26, &v23);
    if (v16)
    {
      (*(v1 + 8))(v3, v15);
      goto LABEL_6;
    }

    (*(v1 + 8))(v3, v15);
  }

  __swift_destroy_boxed_opaque_existential_0(v26);
  v18 = v25;
  v19 = v20;
  *v20 = v23;
  result = *&v24;
  *(v19 + 1) = v24;
  v19[3] = v18;
  return result;
}

uint64_t type metadata accessor for PromptVariant(uint64_t a1)
{
  result = type metadata singleton initialization cache for PromptVariant;
  if (!type metadata singleton initialization cache for PromptVariant)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of PromptVariant(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptVariant(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PromptVariant.init(_:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for Prompt();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit012ChatMessagesA0VSgMd, &_s9PromptKit012ChatMessagesA0VSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - v8;
  v10 = type metadata accessor for ChatMessagesPrompt();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v14 = a1[1];
  v17 = a1[2];
  v16 = a1[3];
  v20 = v15;
  v21 = v14;
  v22 = v17;
  v23 = v16;

  ChatMessagesPrompt.init(_:)(&v20, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of [Regex2BNF.CharacterPredicate](v9, &_s9PromptKit012ChatMessagesA0VSgMd, &_s9PromptKit012ChatMessagesA0VSgMR);
    v20 = v15;
    v21 = v14;
    v22 = v17;
    v23 = v16;
    Prompt.init(_:)(&v20, v6);
    CompletionPrompt.init(_:)();
  }

  else
  {

    v18 = *(v11 + 32);
    v18(v13, v9, v10);
    v18(a2, v13, v10);
  }

  type metadata accessor for PromptVariant(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t *specialized GenerativeConfigurationProtocol<>.renderToTokenGenerationPromptTurns(catalogClient:)(uint64_t a1)
{
  v48 = a1;
  v1 = type metadata accessor for Prompt();
  v2 = *(v1 - 8);
  v49 = v1;
  v50 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v46 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ChatMessagesPrompt();
  v45 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v52 = &v39 - v9;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation14PromptTemplateV_0C06LocaleVSgtMd, &_s26GenerativeModelsFoundation14PromptTemplateV_0C06LocaleVSgtMR);
  MEMORY[0x1EEE9AC00](v51);
  v11 = &v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v39 - v13;
  v15 = type metadata accessor for PromptTemplate();
  v53 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  lazy protocol witness table accessor for type ChatMessagesPrompt and conformance ChatMessagesPrompt(&lazy protocol witness table cache variable for type ChatMessagesPrompt and conformance ChatMessagesPrompt, MEMORY[0x1E69C61F8], MEMORY[0x1E69C61F0]);
  GenerativeConfigurationProtocol.promptContent.getter();
  v18 = GenerativeConfigurationProtocol.chatMessagesPromptBindings.getter();
  v19 = GenerativeConfigurationProtocol.variableBindings.getter();
  v20 = v54;
  v21 = Array<A>.bind(chatMessagesPromptBindings:)();

  if (!v20)
  {
    v18 = v11;
    v42 = v4;
    v43 = v17;
    v22 = v51;
    v23 = v52;
    v24 = v53;
    Array<A>.asPromptTemplate()(v21, v52);
    v54 = 0;
    v41 = v19;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
    if ((*(*(v26 - 8) + 48))(v23, 1, v26) == 1)
    {
      outlined destroy of [Regex2BNF.CharacterPredicate](v23, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
    }

    else
    {

      v40 = *(v26 + 48);
      v27 = *(v22 + 48);
      v28 = *(v24 + 32);
      v28(v18, v23, v15);
      outlined init with take of Locale?(v23 + v40, v18 + v27);
      v29 = *(v22 + 48);
      v30 = v43;
      v28(v43, v18, v15);
      v31 = outlined init with take of Locale?(v18 + v29, v14);
      v18 = &v39;
      MEMORY[0x1EEE9AC00](v31);
      *(&v39 - 2) = v30;
      v32 = v46;
      v33 = v54;
      Prompt.init(_:)();
      v34 = v47;
      Prompt.parseAsChatMessagesPrompt(catalogClient:)(v48, v47);
      v54 = v33;
      if (v33)
      {

        (*(v50 + 8))(v32, v49);
        outlined destroy of [Regex2BNF.CharacterPredicate](v14, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
        (*(v53 + 8))(v30, v15);
        return v18;
      }

      (*(v50 + 8))(v32, v49);
      v35 = v44;
      ChatMessagesPrompt.locale(_:)();
      v18 = *(v45 + 8);
      v36 = v42;
      (v18)(v34, v42);
      v21 = ChatMessagesPrompt.chatMessages.getter();
      (v18)(v35, v36);
      outlined destroy of [Regex2BNF.CharacterPredicate](v14, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      (*(v53 + 8))(v30, v15);
    }

    v37 = v54;
    v38 = specialized static PromptRendering.render(chatMessages:bindingVariables:)(v21, v41);
    if (!v37)
    {
      v18 = v38;

      return v18;
    }
  }

  return v18;
}

uint64_t specialized GenerativeConfigurationProtocol<>.renderToTokenGenerationPrompt(catalogClient:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v14 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  v19 = type metadata accessor for Prompt();
  v16 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CompletionPrompt();
  lazy protocol witness table accessor for type ChatMessagesPrompt and conformance ChatMessagesPrompt(&lazy protocol witness table cache variable for type CompletionPrompt and conformance CompletionPrompt, MEMORY[0x1E69C61B8], MEMORY[0x1E69C61A8]);
  GenerativeConfigurationProtocol.promptContent.getter();
  v13 = GenerativeConfigurationProtocol.variableBindings.getter();
  if (one-time initialization token for localeKey != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for GenerativeConfigurationKey();
  __swift_project_value_buffer(v7, static GenerativeConfigurationKey.localeKey);
  type metadata accessor for Locale();
  v8 = MEMORY[0x1E6969770];
  lazy protocol witness table accessor for type ChatMessagesPrompt and conformance ChatMessagesPrompt(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770], MEMORY[0x1E6969790]);
  lazy protocol witness table accessor for type ChatMessagesPrompt and conformance ChatMessagesPrompt(&lazy protocol witness table cache variable for type Locale and conformance Locale, v8, MEMORY[0x1E6969778]);
  GenerativeConfigurationProtocol._getOverridableConfiguration<A>(for:type:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D35ComponentValueCustomDataTransformer_pGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D35ComponentValueCustomDataTransformer_pGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1A8FC9400;
  *(v9 + 56) = &type metadata for Prompt.PromptTemplateTransformer;
  *(v9 + 64) = lazy protocol witness table accessor for type Prompt.PromptTemplateTransformer and conformance Prompt.PromptTemplateTransformer();
  v10 = swift_allocObject();
  *(v9 + 32) = v10;
  outlined init with copy of GuidedGenerationTokenizer(v14, v10 + 16);
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  Prompt.renderToTokenGenerationPrompt(bindingVariables:customDataTransformers:locale:fallbackBindingVariable:isTopLevelRendering:)(v13, v9, v4, v17, 1, v15);

  outlined destroy of [Regex2BNF.CharacterPredicate](v17, &_s9PromptKit0A25ComponentValueConvertible_pSgMd, &_s9PromptKit0A25ComponentValueConvertible_pSgMR);
  outlined destroy of [Regex2BNF.CharacterPredicate](v4, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  return (*(v16 + 8))(v6, v19);
}

uint64_t type metadata completion function for PromptVariant(uint64_t a1)
{
  result = type metadata accessor for CompletionPrompt();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ChatMessagesPrompt();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t outlined init with take of Locale?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type ChatMessagesPrompt and conformance ChatMessagesPrompt(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type Prompt.PromptTemplateTransformer and conformance Prompt.PromptTemplateTransformer()
{
  result = lazy protocol witness table cache variable for type Prompt.PromptTemplateTransformer and conformance Prompt.PromptTemplateTransformer;
  if (!lazy protocol witness table cache variable for type Prompt.PromptTemplateTransformer and conformance Prompt.PromptTemplateTransformer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt.PromptTemplateTransformer and conformance Prompt.PromptTemplateTransformer);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay15TokenGeneration6PromptV14ToolCallResultVG_AH4TurnVs5NeverOTg5(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = a1;
  v22 = a2;
  v6 = type metadata accessor for Prompt.Turn(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v24 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
  v11 = v24;
  for (i = (a3 + 64); ; i += 5)
  {
    v13 = *(i - 3);
    v14 = *(i - 2);
    v15 = *(i - 1);
    v16 = *i;
    v23[0] = *(i - 4);
    v23[1] = v13;
    v23[2] = v14;
    v23[3] = v15;
    v23[4] = v16;

    v21(v23);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v24 = v11;
    v18 = *(v11 + 16);
    v17 = *(v11 + 24);
    if (v18 >= v17 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
      v11 = v24;
    }

    *(v11 + 16) = v18 + 1;
    outlined init with take of Prompt.Turn(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18);
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t GenerativeConfigurationProtocol<>.renderToTokenGenerationPromptTurns(catalogClient:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a1;
  v3 = type metadata accessor for Prompt();
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v49 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for ChatMessagesPrompt();
  v46 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v40 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v53 = &v40 - v9;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation14PromptTemplateV_0C06LocaleVSgtMd, &_s26GenerativeModelsFoundation14PromptTemplateV_0C06LocaleVSgtMR);
  MEMORY[0x1EEE9AC00](v52);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for PromptTemplate();
  v54 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  GenerativeConfigurationProtocol.promptContent.getter();
  v18 = GenerativeConfigurationProtocol.chatMessagesPromptBindings.getter();
  v19 = GenerativeConfigurationProtocol.variableBindings.getter();
  v20 = v55;
  v21 = Array<A>.bind(chatMessagesPromptBindings:)();

  if (v20)
  {
  }

  else
  {
    v43 = v11;
    v23 = v52;
    v22 = v53;
    v55 = v17;
    v24 = v54;
    Array<A>.asPromptTemplate()(v21, v53);
    v42 = v19;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
    if ((*(*(v26 - 8) + 48))(v22, 1, v26) == 1)
    {
      outlined destroy of [Regex2BNF.CharacterPredicate](v22, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
    }

    else
    {

      v27 = *(v26 + 48);
      v40 = *(v23 + 48);
      v41 = v27;
      v28 = *(v24 + 32);
      v29 = v43;
      v28(v43, v22, v15);
      outlined init with take of Locale?(v22 + v41, &v29[v40], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      v30 = *(v23 + 48);
      v31 = v55;
      v53 = v15;
      v28(v55, v29, v15);
      v32 = v14;
      v33 = outlined init with take of Locale?(&v29[v30], v14, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      MEMORY[0x1EEE9AC00](v33);
      *(&v40 - 2) = v31;
      v34 = v49;
      Prompt.init(_:)();
      v35 = v47;
      Prompt.parseAsChatMessagesPrompt(catalogClient:)(v48, v47);
      (*(v50 + 8))(v34, v51);
      v36 = v45;
      ChatMessagesPrompt.locale(_:)();
      v37 = *(v46 + 8);
      v38 = v35;
      v39 = v44;
      v37(v38, v44);
      v21 = ChatMessagesPrompt.chatMessages.getter();
      v37(v36, v39);
      outlined destroy of [Regex2BNF.CharacterPredicate](v32, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      (*(v54 + 8))(v31, v53);
    }

    v18 = specialized static PromptRendering.render(chatMessages:bindingVariables:)(v21, v42);
  }

  return v18;
}

uint64_t GenerativeConfigurationProtocol<>.renderToTokenGenerationPrompt(catalogClient:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for Prompt();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  GenerativeConfigurationProtocol.promptContent.getter();
  v14 = GenerativeConfigurationProtocol.variableBindings.getter();
  GenerativeConfigurationProtocol<>.locale.getter(a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D35ComponentValueCustomDataTransformer_pGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D35ComponentValueCustomDataTransformer_pGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1A8FC9400;
  *(v15 + 56) = &type metadata for Prompt.PromptTemplateTransformer;
  *(v15 + 64) = lazy protocol witness table accessor for type Prompt.PromptTemplateTransformer and conformance Prompt.PromptTemplateTransformer();
  v16 = swift_allocObject();
  *(v15 + 32) = v16;
  outlined init with copy of GuidedGenerationTokenizer(a1, v16 + 16);
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  Prompt.renderToTokenGenerationPrompt(bindingVariables:customDataTransformers:locale:fallbackBindingVariable:isTopLevelRendering:)(v14, v15, v9, v20, 1, v19);

  outlined destroy of [Regex2BNF.CharacterPredicate](v20, &_s9PromptKit0A25ComponentValueConvertible_pSgMd, &_s9PromptKit0A25ComponentValueConvertible_pSgMR);
  outlined destroy of [Regex2BNF.CharacterPredicate](v9, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  return (*(v11 + 8))(v13, v10);
}

uint64_t Array<A>.asPromptTemplate()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation14PromptTemplateVSgMd, &_s26GenerativeModelsFoundation14PromptTemplateVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v15 - v6;
  v8 = type metadata accessor for PromptTemplate();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) == 1)
  {
    type metadata accessor for ChatMessagePrompt();
    lazy protocol witness table accessor for type PromptTemplate and conformance PromptTemplate(&lazy protocol witness table cache variable for type PromptTemplate and conformance PromptTemplate, MEMORY[0x1E69A14E8], MEMORY[0x1E69A14C8]);
    result = ChatMessagePrompt.asCustomData<A>(type:)();
    if (v2)
    {
      return result;
    }

    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(v11, v7, v8);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
      (*(v9 + 16))(a2, v11, v8);
      ChatMessagePrompt.locale.getter();
      (*(v9 + 8))(v11, v8);
      return (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
    }

    outlined destroy of [Regex2BNF.CharacterPredicate](v7, &_s26GenerativeModelsFoundation14PromptTemplateVSgMd, &_s26GenerativeModelsFoundation14PromptTemplateVSgMR);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
}

uint64_t closure #1 in static PromptRendering.render(chatMessagesPromptContent:bindingChatMessagesPrompts:bindingVariables:catalogClient:)(uint64_t a1)
{
  v2 = type metadata accessor for Prompt();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PromptTemplate();
  v13[3] = v6;
  v13[4] = lazy protocol witness table accessor for type PromptTemplate and conformance PromptTemplate(&lazy protocol witness table cache variable for type PromptTemplate and conformance PromptTemplate, MEMORY[0x1E69A14E8], MEMORY[0x1E69A14C0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, a1, v6);
  v8 = MEMORY[0x1E69C6388];
  static CustomPromptBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_0(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMR);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A8FC9400;
  (*(v3 + 16))(v10 + v9, v5, v2);
  MEMORY[0x1AC57B890](v10, v2, v8);

  return (*(v3 + 8))(v5, v2);
}

uint64_t closure #3 in static PromptRendering.getTurnsForMessage(for:with:binding:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v32 - v5;
  v37 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v13 = *a1;
  v14 = a1[1];
  v40 = &v32 - v11;
  v41 = v13;
  v15 = a1[3];
  v39 = a1[2];
  v16 = a1[4];
  v35 = v15;
  v36 = v16;
  ChatMessagePrompt.locale.getter();
  outlined init with copy of (String, Any)(v12, v9, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v17 = type metadata accessor for Prompt.ResponseFormat(0);
  v18 = *(*(v17 - 8) + 56);
  v18(v6, 1, 1, v17);
  v19 = type metadata accessor for Prompt.Turn(0);
  v34 = v19[5];
  v18(&a2[v34], 1, 1, v17);
  v20 = v19[7];
  v33 = v20;
  v21 = type metadata accessor for Locale();
  (*(*(v21 - 8) + 56))(&a2[v20], 1, 1, v21);
  v22 = &a2[v19[11]];
  *(v22 + 4) = 0;
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *a2 = 3;
  v23 = MEMORY[0x1E69E7CC0];
  *&a2[v19[8]] = MEMORY[0x1E69E7CC0];
  *&a2[v19[6]] = v23;
  *&a2[v19[10]] = v23;
  v24 = *v22;
  v25 = *(v22 + 1);
  v26 = *(v22 + 2);
  v32 = *(v22 + 3);
  v27 = *(v22 + 4);

  v28 = v35;

  v29 = v36;

  outlined consume of Prompt.ToolCallResult?(v24, v25, v26, v32, v27);
  *v22 = v41;
  *(v22 + 1) = v14;
  v30 = v38;
  *(v22 + 2) = v39;
  *(v22 + 3) = v28;
  *(v22 + 4) = v29;
  a2[v19[9]] = 0;
  outlined assign with take of Prompt.ResponseFormat?(v30, &a2[v33], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  outlined assign with take of Prompt.ResponseFormat?(v37, &a2[v34], &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  return outlined destroy of [Regex2BNF.CharacterPredicate](v40, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
}

uint64_t ChatMessagePrompt.toolDefinitions.getter()
{
  v0 = type metadata accessor for RunnableConfigurationStorage();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ChatMessagePrompt.configurationStorage.getter();
  if (one-time initialization token for toolsInjectDefinitionsKey != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for GenerativeConfigurationKey();
  __swift_project_value_buffer(v4, static GenerativeConfigurationKey.toolsInjectDefinitionsKey);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay29GenerativeFunctionsFoundation4ToolVGMd, &_sSay29GenerativeFunctionsFoundation4ToolVGMR);
  RunnableConfigurationStorage.value<A>(for:type:)();
  (*(v1 + 8))(v3, v0);
  return v6[1];
}

uint64_t ChatMessagePrompt.schemaDefinition.getter()
{
  v1 = type metadata accessor for RunnableConfigurationStorage();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  ChatMessagePrompt.configurationStorage.getter();
  if (one-time initialization token for schemaInjectDefinitionKey != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for GenerativeConfigurationKey();
  __swift_project_value_buffer(v5, static GenerativeConfigurationKey.schemaInjectDefinitionKey);
  type metadata accessor for Prompt.ResponseFormat(0);
  RunnableConfigurationStorage.value<A>(for:type:)();
  return (*(v2 + 8))(v4, v1);
}

uint64_t specialized static PromptRendering.getTurnsForMessage(for:with:binding:)(unsigned __int8 *a1, uint64_t a2, void *a3)
{
  v509._rawValue = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v455 = &v447 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v460 = &v447 - v8;
  v458 = type metadata accessor for RunnableConfigurationStorage();
  v457 = *(v458 - 8);
  MEMORY[0x1EEE9AC00](v458);
  v456 = &v447 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v459 = &v447 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v466 = &v447 - v13;
  v527 = type metadata accessor for Prompt.ToolCall.Content();
  v560 = *(v527 - 8);
  MEMORY[0x1EEE9AC00](v527);
  v526 = &v447 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v525 = type metadata accessor for Prompt.ToolCall.Function();
  v559 = *(v525 - 8);
  MEMORY[0x1EEE9AC00](v525);
  v524 = &v447 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v537 = type metadata accessor for Prompt.ToolCall();
  v528 = *(v537 - 8);
  MEMORY[0x1EEE9AC00](v537);
  v535 = &v447 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v530 = type metadata accessor for Prompt.ToolResult();
  v510 = *(v530 - 8);
  MEMORY[0x1EEE9AC00](v530);
  v529 = &v447 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v501 = type metadata accessor for Prompt.ImageEmbeddingEncoding();
  v479 = *(v501 - 8);
  MEMORY[0x1EEE9AC00](v501);
  v497 = &v447 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v461 = &v447 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v469 = &v447 - v22;
  v519 = type metadata accessor for Prompt.ImageEmbeddingData();
  v483 = *(v519 - 8);
  MEMORY[0x1EEE9AC00](v519);
  v462 = &v447 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v551 = &v447 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v454 = &v447 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v481 = &v447 - v29;
  v503 = type metadata accessor for Prompt.PreprocessedImageData();
  v558 = *(v503 - 8);
  MEMORY[0x1EEE9AC00](v503);
  v496 = &v447 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v480 = &v447 - v32;
  v505 = type metadata accessor for Prompt.ImageSurface();
  v556 = *(v505 - 8);
  MEMORY[0x1EEE9AC00](v505);
  v562 = &v447 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v484 = &v447 - v35;
  v502 = type metadata accessor for Prompt.ImageFormat();
  *&v486 = *(v502 - 8);
  MEMORY[0x1EEE9AC00](v502);
  v499 = &v447 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v470 = &v447 - v38;
  v506 = type metadata accessor for Prompt.ImageData();
  v477 = *(v506 - 8);
  MEMORY[0x1EEE9AC00](v506);
  v498 = &v447 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v482 = &v447 - v41;
  v550 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_9PromptKit0B0V9ComponentV7elementtMd, &_sSi6offset_9PromptKit0B0V9ComponentV7elementtMR);
  v488 = *(v550 - 8);
  MEMORY[0x1EEE9AC00](v550);
  v549 = &v447 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_9PromptKit0B0V9ComponentV7elementtSgMd, &_sSi6offset_9PromptKit0B0V9ComponentV7elementtSgMR);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v548 = &v447 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v547 = (&v447 - v46);
  v517 = type metadata accessor for SpecialToken();
  v568 = *(v517 - 8);
  MEMORY[0x1EEE9AC00](v517);
  v516 = &v447 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v534 = &v447 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0V9ComponentV5ValueOSgMd, &_s9PromptKit0A0V9ComponentV5ValueOSgMR);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v533 = &v447 - v51;
  v572 = type metadata accessor for Prompt.Component.Value();
  v494 = *(v572 - 8);
  MEMORY[0x1EEE9AC00](v572);
  v571 = &v447 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v545 = &v447 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v554 = &v447 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v522 = &v447 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v531 = &v447 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v561 = &v447 - v62;
  v564 = type metadata accessor for BindableVariable();
  v489 = *(v564 - 1);
  MEMORY[0x1EEE9AC00](v564);
  v563 = &v447 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v557 = type metadata accessor for Prompt.Component();
  v567 = *(v557 - 8);
  MEMORY[0x1EEE9AC00](v557);
  v570 = &v447 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65);
  v546 = &v447 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v555 = &v447 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v518 = &v447 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v565 = &v447 - v72;
  v536 = type metadata accessor for Prompt();
  v73 = *(v536 - 8);
  MEMORY[0x1EEE9AC00](v536);
  v465 = &v447 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v75);
  v508 = &v447 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v464 = &v447 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v463 = &v447 - v80;
  MEMORY[0x1EEE9AC00](v81);
  v83 = &v447 - v82;
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v447 - v85;
  MEMORY[0x1EEE9AC00](v87);
  v89 = (&v447 - v88);
  MEMORY[0x1EEE9AC00](v90);
  v92 = &v447 - v91;
  MEMORY[0x1EEE9AC00](v93);
  v95._rawValue = &v447 - v94;
  MEMORY[0x1EEE9AC00](v96);
  v98 = &v447 - v97;
  v99 = *a1;
  v574 = MEMORY[0x1E69E7CC0];
  v485 = a2;
  ChatMessagePrompt.prompt.getter();
  v100 = v569;
  Prompt.transform(includeAttachments:)();
  if (v100)
  {
    (*(v73 + 8))(v95, v536);
    goto LABEL_3;
  }

  v514 = v92;
  v515 = v89;
  v450 = v86;
  v449 = v83;
  v451 = v99;
  v523 = 0;
  v105 = *(v73 + 8);
  v103 = v73 + 8;
  v104 = v105;
  v106 = v536;
  (v105)(v95._rawValue, v536);
  v107 = Prompt.components.getter();
  v521 = v103;
  v520 = v105;
  (v105)(v98, v106);
  v109 = v107;
  v110 = *(v107 + 16);
  if (v110)
  {
    v448 = 0;
    v111 = 0;
    v493 = *(v567 + 80);
    v539 = (v493 + 32) & ~v493;
    v544 = (v107 + v539);
    v112 = (v567 + 16);
    v113 = (v494 + 11);
    LODWORD(v543) = *MEMORY[0x1E69C62E0];
    v542 = v494 + 1;
    LODWORD(v511) = *MEMORY[0x1E69C62D8];
    v532 = v494 + 12;
    v487 = v568 + 4;
    v478 = "as an invalid content type";
    v507 = v568 + 1;
    v553 = (v567 + 8);
    v500 = v567 + 32;
    v504 = (v489 + 32);
    v512 = (v494 + 7);
    v495 = (v494 + 6);
    v492 = (v494 + 4);
    v491 = (v494 + 2);
    v513 = (v489 + 8);
    v538 = v110;
    v476 = (v110 - 1);
    v490 = xmmword_1A8FC9400;
    v114 = v557;
    v115 = v546;
    v116 = v554;
    v541 = (v567 + 16);
    v540 = (v494 + 11);
    v552 = v107;
LABEL_7:
    v117 = v111;
    do
    {
      if (v117 >= *(v109 + 16))
      {
        __break(1u);
LABEL_278:
        __break(1u);
LABEL_279:
        __break(1u);
        goto LABEL_280;
      }

      v568 = *(v567 + 72);
      v569 = v117;
      v119 = v565;
      v120 = v113;
      v566 = *(v567 + 16);
      v566(v565, &v544[v568 * v117], v114);
      v121 = v561;
      Prompt.Component.value.getter();
      v122 = v572;
      v123 = *v120;
      v124 = (*v120)(v121, v572);
      if (v124 == v543)
      {
        (*v532)(v121, v122);
        (*v504)(v563, v121, v564);
        v125 = BindableVariable.name.getter();
        rawValue = v509._rawValue;
        if (!*(v509._rawValue + 2))
        {

LABEL_215:

          v131 = v533;
          (*v512)(v533, 1, 1, v572);
LABEL_217:
          outlined destroy of [Regex2BNF.CharacterPredicate](v131, &_s9PromptKit0A0V9ComponentV5ValueOSgMd, &_s9PromptKit0A0V9ComponentV5ValueOSgMR);
          v349 = type metadata accessor for Prompt.RenderError();
          lazy protocol witness table accessor for type PromptTemplate and conformance PromptTemplate(&lazy protocol witness table cache variable for type Prompt.RenderError and conformance Prompt.RenderError, MEMORY[0x1E69C6248], MEMORY[0x1E69C6250]);
          swift_allocError();
          v351 = v350;
          v352 = v489 + 16;
          v354 = v563;
          v353 = v564;
          (*(v489 + 16))(v350, v563, v564);
          (*(*(v349 - 8) + 104))(v351, *MEMORY[0x1E69C6240], v349);
          swift_willThrow();
          (*(v352 - 8))(v354, v353);
          (*v553)(v565, v557);
          goto LABEL_3;
        }

        v128 = specialized __RawDictionaryStorage.find<A>(_:)(v125, v126);
        v130 = v129;

        if ((v130 & 1) == 0)
        {
          goto LABEL_215;
        }

        outlined init with copy of GuidedGenerationTokenizer(rawValue[7] + 40 * v128, v573);
        __swift_project_boxed_opaque_existential_1(v573, v573[3]);
        v131 = v533;
        dispatch thunk of PromptComponentValueConvertible.toValue()();
        v132 = v572;
        (*v512)(v131, 0, 1, v572);
        __swift_destroy_boxed_opaque_existential_0(v573);
        if ((*v495)(v131, 1, v132) == 1)
        {

          goto LABEL_217;
        }

        v133 = v531;
        (*v492)(v531, v131, v132);
        v134 = v518;
        v135 = v566;
        v566(v518, v119, v114);
        (*v491)(v522, v133, v132);
        Prompt.Component.value.setter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMR);
        v136 = v539;
        v137 = swift_allocObject();
        *(v137 + 16) = v490;
        v135(v137 + v136, v134, v114);
        v138 = v515;
        Prompt.init(components:)();
        v139 = v514;
        v140 = v523;
        Prompt.transform(includeAttachments:)();
        v141 = v119;
        if (v140)
        {

          (v520)(v138, v536);
          v355 = *v553;
          (*v553)(v134, v114);
          (*v542)(v133, v572);
          (*v513)(v563, v564);
          v355(v141, v114);
          goto LABEL_3;
        }

        v523 = 0;
        v142 = v139;
        v143 = v536;
        v144 = v114;
        v145 = v134;
        v146 = v520;
        (v520)(v138, v536);
        v147 = v133;
        v148 = Prompt.components.getter();
        (v146)(v142, v143);
        specialized Array.append<A>(contentsOf:)(v148);
        v149 = *v553;
        v150 = v145;
        v114 = v144;
        v112 = v541;
        (*v553)(v150, v114);
        (*v542)(v147, v572);
        (*v513)(v563, v564);
        v149(v141, v114);
        v115 = v546;
        v104 = v528;
        v116 = v554;
      }

      else
      {
        v151 = v121;
        v152 = *v542;
        (*v542)(v151, v122);
        Prompt.Component.value.getter();
        v153 = v572;
        v154 = v123(v116, v572);
        if (v154 == v511)
        {
          (*v532)(v116, v153);
          v155 = v116;
          v156 = v517;
          (*v487)(v534, v155, v517);
          v157 = SpecialToken.identifier.getter();
          v159 = v158;
          v160 = v516;
          SpecialToken.init(identifier:overestimatedTokenCount:)();
          v161 = SpecialToken.identifier.getter();
          v163 = v162;
          v164 = *v507;
          (*v507)(v160, v156);
          if (v157 == v161 && v159 == v163)
          {

            v164(v534, v156);
            v114 = v557;
            v115 = v546;
            v119 = v565;
            v116 = v554;
            v112 = v541;
LABEL_28:
            (*v553)(v119, v114);
            v111 = v569 + 1;
            v448 = 1;
            v104 = v528;
            v118 = v559;
            v107 = v560;
            v103 = v558;
            v95._rawValue = v556;
            v109 = v552;
            v113 = v540;
            if (v476 == v569)
            {

              v448 = 1;
              goto LABEL_32;
            }

            goto LABEL_7;
          }

          v165 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v164(v534, v156);
          v114 = v557;
          v115 = v546;
          v119 = v565;
          v116 = v554;
          v112 = v541;
          if (v165)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v152(v116, v153);
          v112 = v541;
        }

        v566(v555, v119, v114);
        v166 = v574;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v166 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v166 + 2) + 1, 1, v166);
        }

        v168 = *(v166 + 2);
        v167 = *(v166 + 3);
        v104 = v528;
        if (v168 >= v167 >> 1)
        {
          v166 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v167 > 1), v168 + 1, 1, v166);
        }

        (*v553)(v119, v114);
        *(v166 + 2) = v168 + 1;
        (*v500)(&v166[v539 + v168 * v568], v555, v114);
        v574 = v166;
      }

      v117 = v569 + 1;
      v118 = v559;
      v107 = v560;
      v103 = v558;
      v95._rawValue = v556;
      v109 = v552;
      v113 = v540;
    }

    while (v538 != v569 + 1);

LABEL_32:
    v112 = v567;
  }

  else
  {

    v448 = 0;
    v114 = v557;
    v103 = v558;
    v115 = v546;
    v104 = v528;
    v112 = v567;
    v118 = v559;
    v107 = v560;
    v95._rawValue = v556;
  }

  v564 = (v112 + 2);
  v543 = (v488 + 7);
  LODWORD(v566) = *MEMORY[0x1E69C6338];
  v542 = (v488 + 6);
  v540 = (v112 + 4);
  v569 = (v494 + 11);
  LODWORD(v565) = *MEMORY[0x1E69C62D0];
  LODWORD(v563) = *MEMORY[0x1E69C62E8];
  LODWORD(v561) = *MEMORY[0x1E69C62F0];
  LODWORD(v534) = *MEMORY[0x1E69C62C8];
  LODWORD(v532) = *MEMORY[0x1E69C6340];
  v559 = v494 + 1;
  v541 = (v494 + 12);
  v515 = (v107 + 88);
  LODWORD(v514) = *MEMORY[0x1E69C62B8];
  *&v490 = v107 + 8;
  v489 = v107 + 96;
  v488 = (v118 + 4);
  v487 = v118 + 1;
  LODWORD(v560) = *MEMORY[0x1E69C6320];
  v468 = (v103 + 32);
  v467 = (v103 + 8);
  LODWORD(v504) = *MEMORY[0x1E69C62A8];
  v475 = (v95._rawValue + 32);
  v474 = (v95._rawValue + 8);
  v452 = *MEMORY[0x1E69C62B0];
  v478 = (v477 + 4);
  v476 = (v486 + 88);
  ++v477;
  LODWORD(v507) = *MEMORY[0x1E69C6228];
  v453 = *MEMORY[0x1E69C6220];
  v568 = (v112 + 1);
  v513 = (v104 + 16);
  v512 = (v104 + 8);
  v495 = (v510 + 16);
  v473 = (v483 + 32);
  v471 = (v479 + 88);
  v472 = (v483 + 8);
  v103 = *(v574 + 2);
  v494 = (v510 + 8);
  v522 = v574;

  v500 = 0;
  v169 = 0;
  v447 = xmmword_1A8FD1F60;
  v486 = xmmword_1A8FD1F40;
  v104 = MEMORY[0x1E69E7CC0];
  v533 = MEMORY[0x1E69E7CC0];
  v511 = MEMORY[0x1E69E7CC0];
  v170 = v550;
  v171 = v549;
  v539 = v103;
LABEL_34:
  v544 = v104;
  if (v169 != v103)
  {
LABEL_35:
    if ((v169 & 0x8000000000000000) != 0)
    {
      goto LABEL_278;
    }

    if (v169 < *(v522 + 2))
    {
      v172 = (v169 + 1);
      v173 = &v522[((*(v112 + 80) + 32) & ~*(v112 + 80)) + v112[9] * v169];
      v174 = *(v170 + 48);
      *v171 = v169;
      (v112[2])(&v171[v174], v173, v114);
      v175 = v171;
      v176 = v548;
      outlined init with take of Locale?(v175, v548, &_sSi6offset_9PromptKit0B0V9ComponentV7elementtMd, &_sSi6offset_9PromptKit0B0V9ComponentV7elementtMR);
      v177 = 0;
      v556 = v172;
      goto LABEL_39;
    }

    goto LABEL_279;
  }

  while (1)
  {
    v177 = 1;
    v556 = v103;
    v176 = v548;
LABEL_39:
    (*v543)(v176, v177, 1, v170);
    v178 = v547;
    outlined init with take of Locale?(v176, v547, &_sSi6offset_9PromptKit0B0V9ComponentV7elementtSgMd, &_sSi6offset_9PromptKit0B0V9ComponentV7elementtSgMR);
    if ((*v542)(v178, 1, v170) == 1)
    {
      v342 = v522;

      v107 = *(v342 + 2);
      v344 = v107 - v500;
      if (v107 <= v500)
      {
        goto LABEL_234;
      }

      v114 = v465;
      v109 = ChatMessagePrompt.prompt.getter();
      v108 = v500;
      if (v500 < 0)
      {
        goto LABEL_281;
      }

      v109 = v522;
      v345 = *(v522 + 2);
      v103 = v521;
      v95._rawValue = v536;
      if (v345 < v500 || v345 < v107)
      {
LABEL_282:
        __break(1u);
      }

      else if (v345 == v344)
      {

LABEL_212:
        Prompt.components.setter();
        v346 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9PromptKit12SpecialTokenV_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v347 = Prompt.render(tokenTable:bindingVariables:)(v346, v509);
        v523 = v348;
        if (v348)
        {
          (v520)(v114, v95._rawValue);

          goto LABEL_3;
        }

        (v520)(v114, v95._rawValue);

        v356 = (v347._object >> 56) & 0xF;
        if ((v347._object & 0x2000000000000000) == 0)
        {
          v356 = v347._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        if (v356)
        {
          v357 = v511;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v357 + 2) + 1, 1, v357);
            v357 = isUniquelyReferenced_nonNull_native;
          }

          v511 = v357;
          v103 = *(v357 + 2);
          v358 = *(v357 + 3);
          if (v103 >= v358 >> 1)
          {
            isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v358 > 1), v103 + 1, 1, v511);
            v511 = isUniquelyReferenced_nonNull_native;
          }

          v359 = v511;
          *(v511 + 2) = v103 + 1;
          v360 = &v359[56 * v103];
          *(v360 + 2) = v347;
          *(v360 + 3) = 0u;
          *(v360 + 4) = 0u;
          v360[80] = 0;
          v114 = v466;
LABEL_235:
          if (*(v533 + 2))
          {
            if (*(v511 + 2))
            {
LABEL_292:
              __break(1u);
LABEL_293:
              __break(1u);
              goto LABEL_294;
            }

            v103 = v533;
            if (v451 != 1 || *(v104 + 2))
            {
              goto LABEL_293;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnVGMR);
            v378 = *(type metadata accessor for Prompt.Turn(0) - 8);
            v379 = (*(v378 + 80) + 32) & ~*(v378 + 80);
            v101 = swift_allocObject();
            *(v101 + 16) = xmmword_1A8FC9400;
            v380 = type metadata accessor for Locale();
            (*(*(v380 - 8) + 56))(v114, 1, 1, v380);
            static Prompt.Turn.toolCalls(_:locale:)(v103, v114, (v101 + v379));
            outlined destroy of [Regex2BNF.CharacterPredicate](v114, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

LABEL_240:

            return v101;
          }

          if (*(v104 + 2))
          {
            v103 = v511;
            if (v451 == 3 && !*(v511 + 2))
            {
              MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
              *(&v447 - 2) = v381;
              v101 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay15TokenGeneration6PromptV14ToolCallResultVG_AH4TurnVs5NeverOTg5(partial apply for closure #3 in static PromptRendering.getTurnsForMessage(for:with:binding:), (&v447 - 2), v104);

              return v101;
            }

LABEL_294:
            __break(1u);
LABEL_295:
            swift_once();
LABEL_228:
            v361 = type metadata accessor for Logger();
            __swift_project_value_buffer(v361, static Log.generator);
            v95._rawValue = v462;
            (*(v483 + 16))(v462, v103, v519);
            v260 = Logger.logObject.getter();
            v362 = static os_log_type_t.error.getter();
            v363 = os_log_type_enabled(v260, v362);
            v263 = v501;
            if (v363)
            {
              v364 = swift_slowAlloc();
              v571 = v364;
              v365 = swift_slowAlloc();
              v573[0] = v365;
              *v364 = 136315138;
              MEMORY[0x1AC57B9D0]();
              v366 = String.init<A>(describing:)();
              v368 = v367;
              v572 = *v472;
              (v572)(v95._rawValue, v519);
              v369 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v366, v368, v573);
              v263 = v501;

              v370 = v571;
              *(v571 + 4) = v369;
              v371 = v370;
              _os_log_impl(&dword_1A8E85000, v260, v362, "Unsupported image embedding encoding: %s", v370, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v365);
              v372 = v365;
              v114 = v557;
              MEMORY[0x1AC57DBF0](v372, -1, -1);
              MEMORY[0x1AC57DBF0](v371, -1, -1);
            }

            else
            {
LABEL_231:

              v572 = *v472;
              (v572)(v95._rawValue, v519);
            }

            v373 = type metadata accessor for Prompt.RenderError();
            lazy protocol witness table accessor for type PromptTemplate and conformance PromptTemplate(&lazy protocol witness table cache variable for type Prompt.RenderError and conformance Prompt.RenderError, MEMORY[0x1E69C6248], MEMORY[0x1E69C6250]);
            swift_allocError();
            v375 = v374;
            v376 = v570;
            (v112)(v374, v570, v114);
            (*(*(v373 - 8) + 104))(v375, *MEMORY[0x1E69C6230], v373);
            swift_willThrow();
            (v572)(v551, v519);
            (*(v479 + 8))(v497, v263);

            v377 = *v568;
            (*v568)(v376, v114);
            (*v494)(v529, v530);
            v377(v546, v114);

            goto LABEL_3;
          }

          if (v451 > 1)
          {
            if (v451 != 2)
            {
              type metadata accessor for GenerationError(0);
              lazy protocol witness table accessor for type PromptTemplate and conformance PromptTemplate(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError, &protocol conformance descriptor for GenerationError);
              swift_allocError();
              *v426 = 0xD00000000000002ALL;
              v426[1] = 0x80000001A8FDA630;
              swift_storeEnumTagMultiPayload();
              swift_willThrow();
              goto LABEL_3;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnVGMR);
            v391 = type metadata accessor for Prompt.Turn(0);
            v392 = (*(*(v391 - 1) + 80) + 32) & ~*(*(v391 - 1) + 80);
            v101 = swift_allocObject();
            *(v101 + 16) = xmmword_1A8FC9400;
            v393 = v101 + v392;
            ChatMessagePrompt.locale.getter();
            v394 = v456;
            ChatMessagePrompt.configurationStorage.getter();
            if (one-time initialization token for schemaInjectDefinitionKey != -1)
            {
              swift_once();
            }

            v395 = type metadata accessor for GenerativeConfigurationKey();
            __swift_project_value_buffer(v395, static GenerativeConfigurationKey.schemaInjectDefinitionKey);
            v396 = type metadata accessor for Prompt.ResponseFormat(0);
            v397 = v460;
            RunnableConfigurationStorage.value<A>(for:type:)();
            (*(v457 + 8))(v394, v458);
            outlined init with copy of (String, Any)(v114, v459, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
            outlined init with copy of (String, Any)(v397, v455, &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
            v572 = v391[5];
            (*(*(v396 - 8) + 56))(v393 + v572, 1, 1, v396);
            v398 = v391[7];
            v571 = v398;
            v399 = type metadata accessor for Locale();
            (*(*(v399 - 8) + 56))(&v398[v393], 1, 1, v399);
            v400 = (v393 + v391[11]);
            v400[4] = 0;
            *v400 = 0u;
            *(v400 + 1) = 0u;
            *v393 = 2;
            *(v393 + v391[8]) = v511;
            v401 = MEMORY[0x1E69E7CC0];
            *(v393 + v391[6]) = MEMORY[0x1E69E7CC0];
            *(v393 + v391[10]) = v401;
            v402 = *v400;
            v403 = v400[1];
            v404 = v400[2];
            v405 = v400[3];
            v406 = v400[4];

            outlined consume of Prompt.ToolCallResult?(v402, v403, v404, v405, v406);
            v400[4] = 0;
            *v400 = 0u;
            *(v400 + 1) = 0u;
            *(v393 + v391[9]) = 0;
            outlined assign with take of Prompt.ResponseFormat?(v459, &v571[v393], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
            outlined assign with take of Prompt.ResponseFormat?(v455, v393 + v572, &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
            outlined destroy of [Regex2BNF.CharacterPredicate](v460, &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
            outlined destroy of [Regex2BNF.CharacterPredicate](v466, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
          }

          else
          {
            if (v451)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnVGMR);
              v423 = *(type metadata accessor for Prompt.Turn(0) - 8);
              v424 = (*(v423 + 80) + 32) & ~*(v423 + 80);
              v101 = swift_allocObject();
              *(v101 + 16) = xmmword_1A8FC9400;
              v425 = v466;
              ChatMessagePrompt.locale.getter();
              static Prompt.Turn.response(segments:locale:)(v511, v425, (v101 + v424));
              outlined destroy of [Regex2BNF.CharacterPredicate](v425, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

LABEL_276:

              goto LABEL_240;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnVGMR);
            v382 = type metadata accessor for Prompt.Turn(0);
            v383 = (*(*(v382 - 1) + 80) + 32) & ~*(*(v382 - 1) + 80);
            v101 = swift_allocObject();
            *(v101 + 16) = xmmword_1A8FC9400;
            v384 = v101 + v383;
            v385 = v456;
            ChatMessagePrompt.configurationStorage.getter();
            if (v448)
            {
              v386 = v459;
              v387 = v458;
              v388 = v457;
              if (one-time initialization token for toolsInjectDefinitionsKey != -1)
              {
                swift_once();
              }

              v389 = type metadata accessor for GenerativeConfigurationKey();
              __swift_project_value_buffer(v389, static GenerativeConfigurationKey.toolsInjectDefinitionsKey);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay29GenerativeFunctionsFoundation4ToolVGMd, &_sSay29GenerativeFunctionsFoundation4ToolVGMR);
              RunnableConfigurationStorage.value<A>(for:type:)();
              (*(v388 + 8))(v385, v387);
              v390 = v573[0];
              LODWORD(v572) = 1;
            }

            else
            {
              v386 = v459;
              v432 = v458;
              v433 = v457;
              if (one-time initialization token for toolsInjectDefinitionsKey != -1)
              {
                swift_once();
              }

              v434 = type metadata accessor for GenerativeConfigurationKey();
              __swift_project_value_buffer(v434, static GenerativeConfigurationKey.toolsInjectDefinitionsKey);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay29GenerativeFunctionsFoundation4ToolVGMd, &_sSay29GenerativeFunctionsFoundation4ToolVGMR);
              RunnableConfigurationStorage.value<A>(for:type:)();
              (*(v433 + 8))(v385, v432);
              LODWORD(v572) = 0;
              v390 = v573[0];
            }

            if (v390)
            {
              v435 = v390;
            }

            else
            {
              v435 = MEMORY[0x1E69E7CC0];
            }

            v436 = v466;
            ChatMessagePrompt.locale.getter();
            outlined init with copy of (String, Any)(v436, v386, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
            v437 = type metadata accessor for Prompt.ResponseFormat(0);
            v438 = *(*(v437 - 8) + 56);
            v438(v460, 1, 1, v437);
            v571 = v382[5];
            v438(&v571[v384], 1, 1, v437);
            v439 = v382[7];
            v570 = v439;
            v440 = type metadata accessor for Locale();
            (*(*(v440 - 8) + 56))(&v439[v384], 1, 1, v440);
            v441 = (v384 + v382[11]);
            v441[4] = 0;
            *v441 = 0u;
            *(v441 + 1) = 0u;
            *v384 = 0;
            *(v384 + v382[8]) = v511;
            *(v384 + v382[6]) = v435;
            *(v384 + v382[10]) = MEMORY[0x1E69E7CC0];
            v442 = *v441;
            v443 = v441[1];
            v444 = v441[2];
            v445 = v441[3];
            v446 = v441[4];

            outlined consume of Prompt.ToolCallResult?(v442, v443, v444, v445, v446);
            v441[4] = 0;
            *v441 = 0u;
            *(v441 + 1) = 0u;
            *(v384 + v382[9]) = v572;
            outlined assign with take of Prompt.ResponseFormat?(v459, &v570[v384], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
            outlined assign with take of Prompt.ResponseFormat?(v460, &v571[v384], &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
            outlined destroy of [Regex2BNF.CharacterPredicate](v466, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
          }

          goto LABEL_276;
        }

LABEL_234:
        v114 = v466;
        goto LABEL_235;
      }

      specialized _copyCollectionToContiguousArray<A>(_:)(v109, v109 + ((*(v112 + 80) + 32) & ~*(v112 + 80)), v108, (2 * v107) | 1);
      goto LABEL_212;
    }

    v103 = *v178;
    (*v540)(v115, v178 + *(v170 + 48), v114);
    v179 = v545;
    Prompt.Component.value.getter();
    v180 = v179;
    v181 = *v569;
    v182 = v179;
    v107 = v572;
    v183 = (*v569)(v182, v572);
    if (v183 == v566)
    {
      (*v541)(v180, v107);
      v203 = (*v478)(v482, v180, v506);
      v204 = v103 - v500;
      if (v103 > v500)
      {
        v205 = v450;
        ChatMessagePrompt.prompt.getter();
        if (v500 < 0)
        {
          __break(1u);
        }

        else
        {
          v206 = *(v522 + 2);
          if (v206 >= v500 && v206 >= v103)
          {
            if (v206 == v204)
            {
            }

            else
            {
              _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC9PromptKit0H0V9ComponentV_Tt1g5(v204, 0);
              v205 = v450;
              swift_arrayInitWithCopy();
            }

            Prompt.components.setter();
            v207 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9PromptKit12SpecialTokenV_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
            v208 = Prompt.render(tokenTable:bindingVariables:)(v207, v509);
            v523 = v209;
            if (v209)
            {

              (v520)(v205, v536);
              (*v477)(v482, v506);
              goto LABEL_267;
            }

            (v520)(v205, v536);

            v210 = (v208._object >> 56) & 0xF;
            if ((v208._object & 0x2000000000000000) == 0)
            {
              v210 = v208._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
            }

            if (v210)
            {
              v203 = swift_isUniquelyReferenced_nonNull_native();
              v211 = v502;
              v212 = v470;
              if ((v203 & 1) == 0)
              {
                v203 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v511 + 2) + 1, 1, v511);
                v511 = v203;
              }

              v214 = *(v511 + 2);
              v213 = *(v511 + 3);
              if (v214 >= v213 >> 1)
              {
                v203 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v213 > 1), v214 + 1, 1, v511);
                v511 = v203;
              }

              v215 = v511;
              *(v511 + 2) = v214 + 1;
              v216 = &v215[56 * v214];
              *(v216 + 2) = v208;
              *(v216 + 3) = 0u;
              *(v216 + 4) = 0u;
              v216[80] = 0;
            }

            else
            {

              v211 = v502;
              v212 = v470;
            }

            goto LABEL_162;
          }
        }

        __break(1u);
        goto LABEL_286;
      }

      v211 = v502;
      v212 = v470;
LABEL_162:
      MEMORY[0x1AC57BC10](v203);
      v304 = (*v476)(v212, v211);
      v305 = v304;
      if (v304 == v507 || v304 == v453)
      {
        v306 = Prompt.ImageData.data.getter();
        v308 = v307;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v511 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v511 + 2) + 1, 1, v511);
        }

        v107 = *(v511 + 2);
        v309 = *(v511 + 3);
        if (v107 >= v309 >> 1)
        {
          v511 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v309 > 1), v107 + 1, 1, v511);
        }

        v310 = v305 != v507;
        v95._rawValue = (v308 | 0x1000000000000000);
        (*v477)(v482, v506);
        v311 = v557;
        v109 = (*v568)(v115, v557);
        v312 = v511;
        *(v511 + 2) = v107 + 1;
        v114 = v311;
        v313 = &v312[56 * v107];
        *(v313 + 4) = v310;
        *(v313 + 5) = v306;
        *(v313 + 6) = v95;
        *(v313 + 7) = 0;
        *(v313 + 8) = 0;
        *(v313 + 9) = 0;
        v313[80] = 0;
        v500 = v103;
        v104 = v544;
        goto LABEL_192;
      }

      goto LABEL_299;
    }

    if (v183 == v565)
    {
      (*v541)(v180, v107);
      (*v475)(v484, v180, v505);
      v217 = v103 - v500;
      if (v103 <= v500)
      {
        goto LABEL_171;
      }

      v218 = v449;
      ChatMessagePrompt.prompt.getter();
      if ((v500 & 0x8000000000000000) == 0)
      {
        v219 = *(v522 + 2);
        if (v219 >= v500 && v219 >= v103)
        {
          if (v219 == v217)
          {

LABEL_83:
            Prompt.components.setter();
            v95._rawValue = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9PromptKit12SpecialTokenV_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
            v220 = Prompt.render(tokenTable:bindingVariables:)(v95, v509);
            v523 = v221;
            if (v221)
            {

              (v520)(v218, v536);
              (*v474)(v484, v505);
              goto LABEL_267;
            }

            (v520)(v218, v536);

            v222 = (v220._object >> 56) & 0xF;
            if ((v220._object & 0x2000000000000000) == 0)
            {
              v222 = v220._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
            }

            if (v222)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v511 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v511 + 2) + 1, 1, v511);
              }

              v224 = *(v511 + 2);
              v223 = *(v511 + 3);
              v95._rawValue = (v224 + 1);
              if (v224 >= v223 >> 1)
              {
                v511 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v223 > 1), v224 + 1, 1, v511);
              }

              v225 = v511;
              *(v511 + 2) = v95;
              v226 = &v225[56 * v224];
              *(v226 + 2) = v220;
              *(v226 + 3) = 0u;
              *(v226 + 4) = 0u;
              v226[80] = 0;
            }

            else
            {
            }

            v112 = v567;
LABEL_171:
            v314 = Prompt.ImageSurface.surface.getter();
            v315 = v511;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v315 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v315 + 2) + 1, 1, v315);
            }

            v511 = v315;
            v107 = *(v315 + 2);
            v316 = *(v315 + 3);
            if (v107 >= v316 >> 1)
            {
              v511 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v316 > 1), v107 + 1, 1, v511);
            }

            (*v474)(v484);
            v109 = (*v568)(v115, v114);
            v317 = v511;
            *(v511 + 2) = v107 + 1;
            v318 = &v317[56 * v107];
            *(v318 + 4) = v314;
            *(v318 + 40) = v447;
            *(v318 + 8) = 0;
            *(v318 + 9) = 0;
            *(v318 + 7) = 0;
            v318[80] = 0;
            goto LABEL_191;
          }

          if (v217 < 1)
          {
LABEL_203:
            v114 = v557;
            if (v103 != v500)
            {
              swift_arrayInitWithCopy();
            }

            v104 = v544;
            v115 = v546;
            v218 = v449;
            goto LABEL_83;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMR);
          v338 = *(v567 + 72);
          v339 = (*(v567 + 80) + 32) & ~*(v567 + 80);
          v340 = swift_allocObject();
          v341 = _swift_stdlib_malloc_size(v340);
          if (v338)
          {
            if (v341 - v339 != 0x8000000000000000 || v338 != -1)
            {
              v340[2] = v217;
              v340[3] = 2 * ((v341 - v339) / v338);
              goto LABEL_203;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
LABEL_298:
          _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
LABEL_299:
          result = _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
          return result;
        }

LABEL_287:
        __break(1u);
        goto LABEL_288;
      }

LABEL_286:
      __break(1u);
      goto LABEL_287;
    }

    if (v183 == v563)
    {
      (*v541)(v180, v107);
      v227 = v180;
      v228 = v481;
      (*v473)(v481, v227, v519);
      v229 = v103 - v500;
      if (v103 <= v500)
      {
        v231 = v501;
        v238 = v469;
        goto LABEL_177;
      }

      v230 = v464;
      ChatMessagePrompt.prompt.getter();
      v231 = v501;
      if ((v500 & 0x8000000000000000) == 0)
      {
        v232 = *(v522 + 2);
        if (v232 >= v500 && v232 >= v103)
        {
          if (v232 == v229)
          {
          }

          else
          {
            _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC9PromptKit0H0V9ComponentV_Tt1g5(v229, 0);
            v230 = v464;
            swift_arrayInitWithCopy();
          }

          Prompt.components.setter();
          v233 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9PromptKit12SpecialTokenV_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
          v234 = Prompt.render(tokenTable:bindingVariables:)(v233, v509);
          v523 = v235;
          if (v235)
          {

            (v520)(v230, v536);
            (*v472)(v481, v519);
            (*v568)(v546, v114);
            goto LABEL_3;
          }

          (v520)(v230, v536);

          v236 = (v234._object >> 56) & 0xF;
          if ((v234._object & 0x2000000000000000) == 0)
          {
            v236 = v234._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
          }

          if (v236)
          {
            v237 = swift_isUniquelyReferenced_nonNull_native();
            v238 = v469;
            v239 = v483;
            if ((v237 & 1) == 0)
            {
              v511 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v511 + 2) + 1, 1, v511);
            }

            v241 = *(v511 + 2);
            v240 = *(v511 + 3);
            if (v241 >= v240 >> 1)
            {
              v511 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v240 > 1), v241 + 1, 1, v511);
            }

            v242 = v511;
            *(v511 + 2) = v241 + 1;
            v243 = &v242[56 * v241];
            *(v243 + 2) = v234;
            *(v243 + 3) = 0u;
            *(v243 + 4) = 0u;
            v243[80] = 0;
            v228 = v481;
            goto LABEL_178;
          }

          v238 = v469;
          v228 = v481;
LABEL_177:
          v239 = v483;
LABEL_178:
          MEMORY[0x1AC57B9D0]();
          v319 = (*v471)(v238, v231);
          v320 = v319;
          if (v319 == v504 || v319 == v452)
          {
            v558 = Prompt.ImageEmbeddingData.data.getter();
            v322 = v321;
            v555 = Prompt.ImageEmbeddingData.tokenCount.getter();
            v323 = Prompt.ImageEmbeddingData.signature.getter();
            v325 = v324;
            v326 = v511;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v326 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v326 + 2) + 1, 1, v326);
            }

            v107 = *(v326 + 2);
            v327 = *(v326 + 3);
            if (v107 >= v327 >> 1)
            {
              v511 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v327 > 1), v107 + 1, 1, v326);
            }

            else
            {
              v511 = v326;
            }

            v328 = v320 != v504;
            v95._rawValue = (v322 | 0x3000000000000000);
            (*v472)(v481, v519);
            v115 = v546;
            v114 = v557;
            v109 = (*v568)(v546, v557);
            v329 = v511;
            *(v511 + 2) = v107 + 1;
            v330 = &v329[56 * v107];
            v331 = v558;
            *(v330 + 4) = v328;
            *(v330 + 5) = v331;
            v332 = v555;
            *(v330 + 6) = v95;
            *(v330 + 7) = v332;
            *(v330 + 8) = v323;
            *(v330 + 9) = v325;
            v330[80] = 0;
            v500 = v103;
            v104 = v544;
            v170 = v550;
            v171 = v549;
            v112 = v567;
            goto LABEL_193;
          }

          if (one-time initialization token for generator != -1)
          {
            swift_once();
          }

          v407 = type metadata accessor for Logger();
          __swift_project_value_buffer(v407, static Log.generator);
          v408 = v454;
          v409 = v519;
          (*(v239 + 16))(v454, v228, v519);
          v410 = Logger.logObject.getter();
          v411 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v410, v411))
          {
            v412 = v408;
            v413 = swift_slowAlloc();
            v414 = swift_slowAlloc();
            v573[0] = v414;
            *v413 = 136315138;
            MEMORY[0x1AC57B9D0]();
            v415 = String.init<A>(describing:)();
            v417 = v416;
            v418 = v231;
            v419 = v412;
            v420 = v519;
            v572 = *v472;
            (v572)(v419, v519);
            v421 = v415;
            v409 = v420;
            v422 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v421, v417, v573);

            *(v413 + 4) = v422;
            _os_log_impl(&dword_1A8E85000, v410, v411, "Unsupported image embedding encoding: %s", v413, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v414);
            MEMORY[0x1AC57DBF0](v414, -1, -1);
            MEMORY[0x1AC57DBF0](v413, -1, -1);
          }

          else
          {

            v418 = v231;
            v572 = *v472;
            (v572)(v408, v409);
          }

          v427 = v557;
          v428 = type metadata accessor for Prompt.RenderError();
          lazy protocol witness table accessor for type PromptTemplate and conformance PromptTemplate(&lazy protocol witness table cache variable for type Prompt.RenderError and conformance Prompt.RenderError, MEMORY[0x1E69C6248], MEMORY[0x1E69C6250]);
          swift_allocError();
          v430 = v429;
          v431 = v546;
          (*v564)(v429, v546, v427);
          (*(*(v428 - 8) + 104))(v430, *MEMORY[0x1E69C6230], v428);
          swift_willThrow();
          (v572)(v481, v409);
          (*v568)(v431, v427);
          (*(v479 + 8))(v469, v418);
          goto LABEL_3;
        }

LABEL_289:
        __break(1u);
LABEL_290:
        __break(1u);
LABEL_291:
        __break(1u);
        goto LABEL_292;
      }

LABEL_288:
      __break(1u);
      goto LABEL_289;
    }

    if (v183 == v561)
    {
      break;
    }

    if (v183 == v534)
    {
      v531 = *v541;
      (v531)(v180, v107);
      v109 = *v180;
      v103 = v551;
      v493 = *(*v180 + 16);
      if (v493)
      {
        v255 = 0;
        v256 = v510;
        v492 = (v109 + ((*(v256 + 80) + 32) & ~*(v256 + 80)));
        v107 = v508;
        v491 = v109;
        while (v255 < *(v109 + 16))
        {
          v544 = v104;
          v257 = *(v256 + 72);
          v517 = v255;
          (*(v256 + 16))(v529, v492 + v257 * v255, v530);
          v516 = Prompt.ToolResult.id.getter();
          v518 = v258;
          Prompt.ToolResult.output.getter();
          v259 = Prompt.components.getter();
          (v520)(v107, v536);
          v260 = *(v259 + 16);
          if (v260)
          {
            v261 = 0;
            v538 = &v260[-1].isa + 7;
            v558 = MEMORY[0x1E69E7CC0];
            v262 = v570;
            while (2)
            {
              v263 = v261;
              while (1)
              {
                if (v263 >= *(v259 + 16))
                {
                  __break(1u);
                  goto LABEL_231;
                }

                v264 = v259 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + v112[9] * v263;
                v112 = v112[2];
                (v112)(v262, v264, v114);
                v95._rawValue = v571;
                Prompt.Component.value.getter();
                v265 = v572;
                v266 = v181(v95._rawValue, v572);
                if (v266 == v560)
                {
                  v268 = v571;
                  (v531)(v571, v265);
                  v95._rawValue = 0;
                  v553 = 0;
                  v552 = 0;
                  v269 = 0;
                  v270 = 0;
                  v271 = v268[1];
                  v555 = *v268;
                  v554 = v271;
                  goto LABEL_145;
                }

                v267 = v562;
                if (v266 == v566)
                {
                  v272 = v571;
                  (v531)(v571, v572);
                  v273 = v498;
                  v274 = v506;
                  v275 = (*v478)(v498, v272, v506);
                  v276 = v499;
                  MEMORY[0x1AC57BC10](v275);
                  v277 = (*v476)(v276, v502);
                  if (v277 != v507 && v277 != v453)
                  {
                    goto LABEL_298;
                  }

                  v555 = v277 != v507;
                  v554 = Prompt.ImageData.data.getter();
                  v279 = v278;
                  (*v477)(v273, v274);
                  v553 = 0;
                  v552 = 0;
                  v269 = 0;
                  v270 = 0;
                  v95._rawValue = (v279 | 0x1000000000000000);
                  goto LABEL_145;
                }

                if (v266 == v565)
                {
                  v280 = v571;
                  (v531)(v571, v572);
                  v281 = v280;
                  v282 = v505;
                  (*v475)(v267, v281, v505);
                  v555 = Prompt.ImageSurface.surface.getter();
                  (*v474)(v562, v282);
                  v554 = 0;
                  v553 = 0;
                  v552 = 0;
                  v269 = 0;
                  v270 = 0;
                  v95._rawValue = 0x2000000000000000;
                  goto LABEL_145;
                }

                if (v266 == v563)
                {
                  break;
                }

                if (v266 == v561)
                {
                  v290 = v571;
                  (v531)();
                  v291 = v290;
                  v292 = v496;
                  v293 = v503;
                  (*v468)(v496, v291, v503);
                  v555 = Prompt.PreprocessedImageData.data.getter();
                  v554 = Prompt.PreprocessedImageData.shape.getter();
                  (*v467)(v292, v293);
                  v95._rawValue = 0;
                  v553 = 0;
                  v552 = 0;
                  v269 = 0;
                  v270 = 1;
                  goto LABEL_145;
                }

                ++v263;
                (*v559)(v571, v572);
                v262 = v570;
                (*v568)(v570, v114);
                v112 = v567;
                if (v260 == v263)
                {
                  goto LABEL_152;
                }
              }

              v283 = v571;
              (v531)(v571, v572);
              v284 = (*v473)(v103, v283, v519);
              v285 = v497;
              MEMORY[0x1AC57B9D0](v284);
              v286 = (*v471)(v285, v501);
              if (v286 != v504 && v286 != v452)
              {
                if (one-time initialization token for generator != -1)
                {
                  goto LABEL_295;
                }

                goto LABEL_228;
              }

              v555 = v286 != v504;
              v554 = Prompt.ImageEmbeddingData.data.getter();
              v288 = v287;
              v553 = Prompt.ImageEmbeddingData.tokenCount.getter();
              v552 = Prompt.ImageEmbeddingData.signature.getter();
              v269 = v289;
              (*v472)(v551, v519);
              v270 = 0;
              v95._rawValue = (v288 | 0x3000000000000000);
LABEL_145:
              (*v568)(v570, v557);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v558 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v558 + 16) + 1, 1, v558);
              }

              v295 = *(v558 + 16);
              v294 = *(v558 + 24);
              if (v295 >= v294 >> 1)
              {
                v558 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v294 > 1), v295 + 1, 1, v558);
              }

              v261 = v263 + 1;
              v296 = v558;
              *(v558 + 16) = v295 + 1;
              v297 = v296 + 56 * v295;
              v298 = v554;
              *(v297 + 32) = v555;
              *(v297 + 40) = v298;
              v299 = v553;
              *(v297 + 48) = v95;
              *(v297 + 56) = v299;
              *(v297 + 64) = v552;
              *(v297 + 72) = v269;
              *(v297 + 80) = v270;
              v114 = v557;
              v103 = v551;
              v262 = v570;
              v112 = v567;
              if (v538 != v263)
              {
                continue;
              }

              break;
            }
          }

          else
          {
            v558 = MEMORY[0x1E69E7CC0];
          }

LABEL_152:

          v104 = v544;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v104 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v104 + 2) + 1, 1, v104);
          }

          v115 = v546;
          v301 = *(v104 + 2);
          v300 = *(v104 + 3);
          if (v301 >= v300 >> 1)
          {
            v104 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v300 > 1), v301 + 1, 1, v104);
          }

          v95._rawValue = (v517 + 1);
          (*v494)();
          v255 = v95._rawValue;
          *(v104 + 2) = v301 + 1;
          v302 = &v104[40 * v301];
          v303 = v518;
          *(v302 + 4) = v516;
          *(v302 + 5) = v303;
          *(v302 + 6) = 0;
          *(v302 + 7) = 0xE000000000000000;
          *(v302 + 8) = v558;
          v256 = v510;
          v107 = v508;
          v109 = v491;
          if (v95._rawValue == v493)
          {
            goto LABEL_157;
          }
        }

LABEL_280:
        __break(1u);
LABEL_281:
        __break(1u);
        goto LABEL_282;
      }

LABEL_157:

      v109 = (*v568)(v115, v114);
LABEL_192:
      v170 = v550;
      v171 = v549;
LABEL_193:
      v103 = v539;
      v169 = v556;
      goto LABEL_34;
    }

    if (v183 == v532)
    {
      (*v541)(v180, v107);
      v184 = *v180;
      v107 = *(*v180 + 16);
      if (v107)
      {
        v185 = (*(v528 + 80) + 32) & ~*(v528 + 80);
        v553 = *v180;
        v95._rawValue = (v184 + v185);
        v558 = *(v528 + 72);
        v555 = *(v528 + 16);
        v186 = v537;
        do
        {
          v187 = v535;
          (v555)(v535, v95._rawValue, v186);
          v188 = v526;
          Prompt.ToolCall.content.getter();
          v189 = v527;
          v190 = (*v515)(v188, v527);
          if (v190 == v514)
          {
            (*v489)(v188, v189);
            (*v488)(v524, v188, v525);
            v554 = Prompt.ToolResult.id.getter();
            v192 = v191;
            v193 = Prompt.ToolCall.Function.name.getter();
            v195 = v194;
            v196 = Prompt.ToolCall.Function.arguments.getter();
            v198 = v197;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v533 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v533 + 2) + 1, 1, v533);
            }

            v200 = *(v533 + 2);
            v199 = *(v533 + 3);
            if (v200 >= v199 >> 1)
            {
              v533 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v199 > 1), v200 + 1, 1, v533);
            }

            (*v487)(v524, v525);
            (*v512)(v535, v537);
            v201 = v533;
            *(v533 + 2) = v200 + 1;
            v202 = &v201[64 * v200];
            *(v202 + 4) = v554;
            *(v202 + 5) = v192;
            *(v202 + 6) = v193;
            *(v202 + 7) = v195;
            *(v202 + 8) = v196;
            *(v202 + 9) = v198;
            *(v202 + 5) = v486;
            v114 = v557;
            v104 = v544;
            v115 = v546;
          }

          else
          {
            (*v512)(v187, v186);
            (*v490)(v188, v189);
          }

          v95._rawValue = v95._rawValue + v558;
          --v107;
          v186 = v537;
        }

        while (v107);

        v112 = v567;
      }

      else
      {
      }

      v109 = (*v568)(v115, v114);
    }

    else
    {
      (*v568)(v115, v114);
      v109 = (*v559)(v180, v107);
    }

    v170 = v550;
    v171 = v549;
    v103 = v539;
    v169 = v556;
    if (v556 != v539)
    {
      goto LABEL_35;
    }
  }

  (*v541)(v180, v107);
  (*v468)(v480, v180, v503);
  v244 = v103 - v500;
  if (v103 <= v500)
  {
    goto LABEL_186;
  }

  v245 = v463;
  ChatMessagePrompt.prompt.getter();
  if (v500 < 0)
  {
    goto LABEL_290;
  }

  v246 = *(v522 + 2);
  if (v246 < v500 || v246 < v103)
  {
    goto LABEL_291;
  }

  if (v246 == v244)
  {
  }

  else
  {
    _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC9PromptKit0H0V9ComponentV_Tt1g5(v244, 0);
    v245 = v463;
    swift_arrayInitWithCopy();
  }

  Prompt.components.setter();
  v247 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9PromptKit12SpecialTokenV_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v248 = Prompt.render(tokenTable:bindingVariables:)(v247, v509);
  v523 = v249;
  if (!v249)
  {
    (v520)(v245, v536);

    v250 = (v248._object >> 56) & 0xF;
    if ((v248._object & 0x2000000000000000) == 0)
    {
      v250 = v248._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v250)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v511 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v511 + 2) + 1, 1, v511);
      }

      v252 = *(v511 + 2);
      v251 = *(v511 + 3);
      if (v252 >= v251 >> 1)
      {
        v511 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v251 > 1), v252 + 1, 1, v511);
      }

      v253 = v511;
      *(v511 + 2) = v252 + 1;
      v254 = &v253[56 * v252];
      *(v254 + 2) = v248;
      *(v254 + 3) = 0u;
      *(v254 + 4) = 0u;
      v254[80] = 0;
    }

    else
    {
    }

LABEL_186:
    v333 = Prompt.PreprocessedImageData.data.getter();
    v334 = Prompt.PreprocessedImageData.shape.getter();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v511 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v511 + 2) + 1, 1, v511);
    }

    v107 = *(v511 + 2);
    v335 = *(v511 + 3);
    v95._rawValue = (v107 + 1);
    if (v107 >= v335 >> 1)
    {
      v511 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v335 > 1), v107 + 1, 1, v511);
    }

    (*v467)(v480);
    v109 = (*v568)(v115, v114);
    v336 = v511;
    *(v511 + 2) = v95;
    v337 = &v336[56 * v107];
    *(v337 + 4) = v333;
    *(v337 + 5) = v334;
    *(v337 + 3) = 0u;
    *(v337 + 4) = 0u;
    v337[80] = 1;
LABEL_191:
    v500 = v103;
    goto LABEL_192;
  }

  (v520)(v245, v536);
  (*v467)(v480, v503);
LABEL_267:
  (*v568)(v115, v114);
LABEL_3:
  v101 = v574;

  return v101;
}

void *specialized static PromptRendering.render(chatMessages:bindingVariables:)(uint64_t a1, void *a2)
{
  v74 = a2;
  v76 = type metadata accessor for ChatMessageRole();
  v4 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ChatMessagePrompt();
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (!v11)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v13 = *(v7 + 16);
  v12 = v7 + 16;
  v14 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
  v72 = (v4 + 88);
  v73 = v13;
  v71 = *MEMORY[0x1E69C63F8];
  v66 = *MEMORY[0x1E69C63E0];
  v65 = *MEMORY[0x1E69C6400];
  v64 = *MEMORY[0x1E69C63D8];
  v70 = (v12 - 8);
  v63 = (v4 + 8);
  v68 = *(v12 + 56);
  v15 = MEMORY[0x1E69E7CC0];
  v67 = v6;
  v69 = v12;
  while (1)
  {
    v73(v10, v14, v6, v8);
    v16 = v75;
    ChatMessagePrompt.role.getter();
    v17 = (*v72)(v16, v76);
    if (v17 == v71)
    {
      break;
    }

    if (v17 == v66)
    {
      v78 = 2;
      result = specialized static PromptRendering.getTurnsForMessage(for:with:binding:)(&v78, v10, v74);
      if (v2)
      {
        goto LABEL_88;
      }

      v28 = result;
      v29 = result[2];
      v30 = v15[2];
      v31 = v30 + v29;
      if (__OFADD__(v30, v29))
      {
        goto LABEL_94;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v31 <= v15[3] >> 1)
      {
        if (!*(v28 + 16))
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v30 <= v31)
        {
          v50 = v30 + v29;
        }

        else
        {
          v50 = v30;
        }

        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v50, 1, v15);
        if (!*(v28 + 16))
        {
LABEL_56:

          if (v29)
          {
            goto LABEL_95;
          }

          goto LABEL_78;
        }
      }

      v33 = (v15[3] >> 1) - v15[2];
      result = type metadata accessor for Prompt.Turn(0);
      if (v33 < v29)
      {
        goto LABEL_97;
      }

      swift_arrayInitWithCopy();

      if (v29)
      {
        v34 = v15[2];
        v26 = __OFADD__(v34, v29);
        v27 = v34 + v29;
        if (v26)
        {
          goto LABEL_100;
        }

        goto LABEL_51;
      }
    }

    else
    {
      if (v17 == v65)
      {
        v79 = 1;
        result = specialized static PromptRendering.getTurnsForMessage(for:with:binding:)(&v79, v10, v74);
        if (v2)
        {
          goto LABEL_88;
        }

        v35 = result;
        v36 = result[2];
        v37 = v15[2];
        v38 = v37 + v36;
        if (__OFADD__(v37, v36))
        {
          goto LABEL_98;
        }

        v39 = swift_isUniquelyReferenced_nonNull_native();
        if ((v39 & 1) != 0 && v38 <= v15[3] >> 1)
        {
          if (!*(v35 + 16))
          {
            goto LABEL_71;
          }
        }

        else
        {
          if (v37 <= v38)
          {
            v59 = v37 + v36;
          }

          else
          {
            v59 = v37;
          }

          v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v39, v59, 1, v15);
          if (!*(v35 + 16))
          {
LABEL_71:

            if (v36)
            {
              goto LABEL_99;
            }

            goto LABEL_78;
          }
        }

        v40 = (v15[3] >> 1) - v15[2];
        result = type metadata accessor for Prompt.Turn(0);
        if (v40 < v36)
        {
          goto LABEL_101;
        }

        swift_arrayInitWithCopy();

        if (v36)
        {
          v41 = v15[2];
          v26 = __OFADD__(v41, v36);
          v27 = v41 + v36;
          if (v26)
          {
            goto LABEL_106;
          }

          goto LABEL_51;
        }

        goto LABEL_78;
      }

      if (v17 != v64)
      {
        v81 = 2;
        result = specialized static PromptRendering.getTurnsForMessage(for:with:binding:)(&v81, v10, v74);
        if (v2)
        {
          (*v70)(v10, v6);

          (*v63)(v75, v76);
          return v15;
        }

        v51 = result;
        v52 = result[2];
        v53 = v15[2];
        v54 = v53 + v52;
        if (__OFADD__(v53, v52))
        {
          goto LABEL_102;
        }

        v55 = swift_isUniquelyReferenced_nonNull_native();
        if ((v55 & 1) != 0 && v54 <= v15[3] >> 1)
        {
          if (*(v51 + 16))
          {
            goto LABEL_63;
          }

LABEL_85:

          if (v52)
          {
            goto LABEL_105;
          }
        }

        else
        {
          if (v53 <= v54)
          {
            v61 = v53 + v52;
          }

          else
          {
            v61 = v53;
          }

          v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v55, v61, 1, v15);
          if (!*(v51 + 16))
          {
            goto LABEL_85;
          }

LABEL_63:
          v56 = (v15[3] >> 1) - v15[2];
          result = type metadata accessor for Prompt.Turn(0);
          if (v56 < v52)
          {
            goto LABEL_107;
          }

          swift_arrayInitWithCopy();

          if (v52)
          {
            v57 = v15[2];
            v26 = __OFADD__(v57, v52);
            v58 = v57 + v52;
            if (v26)
            {
              goto LABEL_110;
            }

            v15[2] = v58;
          }
        }

        v6 = v67;
        (*v70)(v10, v67);
        (*v63)(v75, v76);
        goto LABEL_79;
      }

      v80 = 3;
      result = specialized static PromptRendering.getTurnsForMessage(for:with:binding:)(&v80, v10, v74);
      if (v2)
      {
LABEL_88:
        (*v70)(v10, v6);

        return v15;
      }

      v43 = result;
      v44 = result[2];
      v45 = v15[2];
      v46 = v45 + v44;
      if (__OFADD__(v45, v44))
      {
        goto LABEL_103;
      }

      v47 = swift_isUniquelyReferenced_nonNull_native();
      if ((v47 & 1) != 0 && v46 <= v15[3] >> 1)
      {
        if (!*(v43 + 16))
        {
          goto LABEL_77;
        }
      }

      else
      {
        if (v45 <= v46)
        {
          v60 = v45 + v44;
        }

        else
        {
          v60 = v45;
        }

        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v47, v60, 1, v15);
        if (!*(v43 + 16))
        {
LABEL_77:

          if (v44)
          {
            goto LABEL_104;
          }

          goto LABEL_78;
        }
      }

      v48 = (v15[3] >> 1) - v15[2];
      result = type metadata accessor for Prompt.Turn(0);
      if (v48 < v44)
      {
        goto LABEL_108;
      }

      swift_arrayInitWithCopy();

      if (v44)
      {
        v49 = v15[2];
        v26 = __OFADD__(v49, v44);
        v27 = v49 + v44;
        if (v26)
        {
          goto LABEL_109;
        }

        goto LABEL_51;
      }
    }

LABEL_78:
    v6 = v67;
    (*v70)(v10, v67);
LABEL_79:
    v14 += v68;
    if (!--v11)
    {
      return v15;
    }
  }

  v77 = 0;
  result = specialized static PromptRendering.getTurnsForMessage(for:with:binding:)(&v77, v10, v74);
  if (v2)
  {
    goto LABEL_88;
  }

  v19 = result;
  v20 = result[2];
  v21 = v15[2];
  v22 = v21 + v20;
  if (!__OFADD__(v21, v20))
  {
    v23 = swift_isUniquelyReferenced_nonNull_native();
    if ((v23 & 1) != 0 && v22 <= v15[3] >> 1)
    {
      if (!*(v19 + 16))
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (v21 <= v22)
      {
        v42 = v21 + v20;
      }

      else
      {
        v42 = v21;
      }

      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v23, v42, 1, v15);
      if (!*(v19 + 16))
      {
LABEL_40:

        if (v20)
        {
          goto LABEL_92;
        }

        goto LABEL_78;
      }
    }

    v24 = (v15[3] >> 1) - v15[2];
    result = type metadata accessor for Prompt.Turn(0);
    if (v24 < v20)
    {
      goto LABEL_93;
    }

    swift_arrayInitWithCopy();

    if (v20)
    {
      v25 = v15[2];
      v26 = __OFADD__(v25, v20);
      v27 = v25 + v20;
      if (v26)
      {
        goto LABEL_96;
      }

LABEL_51:
      v15[2] = v27;
      goto LABEL_78;
    }

    goto LABEL_78;
  }

  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
  return result;
}

uint64_t outlined init with take of Locale?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t lazy protocol witness table accessor for type PromptTemplate and conformance PromptTemplate(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with take of Prompt.Turn(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prompt.Turn(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized Sequence<>.starts<A>(with:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a3 ^ a4;

  if (v7 >= 0x4000)
  {
    while (1)
    {
      v11 = Substring.subscript.getter();
      v13 = v12;
      v14 = Substring.index(after:)();
      v15 = String.Iterator.next()();
      if (!v15.value._object)
      {
        break;
      }

      if (v11 == v15.value._countAndFlagsBits && v15.value._object == v13)
      {
      }

      else
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v10 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      if ((v14 ^ a4) < 0x4000)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    object = String.Iterator.next()().value._object;

    if (object)
    {
LABEL_3:

      return 0;
    }
  }

  return 1;
}

uint64_t specialized Sequence<>.starts<A>(with:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{

  v4 = String.Iterator.next()();
  if (v4.value._object)
  {
    countAndFlagsBits = v4.value._countAndFlagsBits;
    object = v4.value._object;
    do
    {
      v9 = String.Iterator.next()();
      if (!v9.value._object)
      {

        return 1;
      }

      if (countAndFlagsBits == v9.value._countAndFlagsBits && object == v9.value._object)
      {
      }

      else
      {
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v7 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v8 = String.Iterator.next()();
      countAndFlagsBits = v8.value._countAndFlagsBits;
      object = v8.value._object;
    }

    while (v8.value._object);
  }

  v10 = String.Iterator.next()().value._object;

  if (!v10)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

BOOL specialized Sequence<>.starts<A>(with:)(_BOOL8 result, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  while (v3 != v2)
  {
    v4 = *(result + 16);
    v5 = v2 >= v4;
    v6 = v2 == v4;
    v7 = v2 == v4;
    if (v6)
    {
      return v7;
    }

    if (v5)
    {
      __break(1u);
      goto LABEL_12;
    }

    v8 = *(a2 + 32 + 8 * v2);
    v9 = *(result + 32 + 8 * v2++);
    if (v8 != v9)
    {
      return v7;
    }
  }

  v10 = *(result + 16);
  if (v3 == v10)
  {
    return 1;
  }

  if (v3 < v10)
  {
    return 0;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySayypGSay29GenerativeFunctionsFoundation10JSONSchemaOGG_ypsAE_pTg506_syp29fg12Foundation10i5Oyps5C33_pIgnnrzo_yp_ACtypsAD_pIegnrzr_TRypAKypsAE_pIgnnrzo_Tf1cn_n(unint64_t a1, uint64_t a2, void (*a3)(_OWORD *__return_ptr, char *, char *), uint64_t a4)
{
  v47 = a4;
  v46 = a3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_29GenerativeFunctionsFoundation10JSONSchemaOtMd, &_syp_29GenerativeFunctionsFoundation10JSONSchemaOtMR);
  MEMORY[0x1EEE9AC00](v44);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v39 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v39 - v11;
  v12 = *(a1 + 16);
  v45 = a2;
  v13 = *(a2 + 16);
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = *(a2 + 16);
  }

  v51 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
  v16 = v51;
  v42 = v13;
  v43 = v12;
  v41 = a1;
  if (v14)
  {
    v17 = 0;
    v18 = a1 + 32;
    while (v12 != v17)
    {
      result = outlined init with copy of Any(v18, v49);
      if (v13 == v17)
      {
        goto LABEL_29;
      }

      v19 = v14;
      v20 = type metadata accessor for JSONSchema();
      v21 = *(v20 - 8);
      v22 = v45 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v17;
      v23 = *(v44 + 48);
      outlined init with take of Any(v49, v7);
      (*(v21 + 16))(&v7[v23], v22, v20);
      v24 = v48;
      v46(v50, v7, &v7[v23]);
      if (v24)
      {

        outlined destroy of [Regex2BNF.CharacterPredicate](v7, &_syp_29GenerativeFunctionsFoundation10JSONSchemaOtMd, &_syp_29GenerativeFunctionsFoundation10JSONSchemaOtMR);
        return v16;
      }

      v48 = 0;
      outlined destroy of [Regex2BNF.CharacterPredicate](v7, &_syp_29GenerativeFunctionsFoundation10JSONSchemaOtMd, &_syp_29GenerativeFunctionsFoundation10JSONSchemaOtMR);
      v51 = v16;
      v26 = *(v16 + 16);
      v25 = *(v16 + 24);
      if (v26 >= v25 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
        v16 = v51;
      }

      ++v17;
      *(v16 + 16) = v26 + 1;
      result = outlined init with take of Any(v50, (v16 + 32 * v26 + 32));
      v18 += 32;
      v14 = v19;
      v13 = v42;
      v12 = v43;
      if (v19 == v17)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_12:
    if (v12 <= v13)
    {
      return v16;
    }

    v27 = v41 + 32 * v14 + 32;
    while (v14 < v12)
    {
      result = outlined init with copy of Any(v27, v50);
      if (__OFADD__(v14, 1))
      {
        goto LABEL_31;
      }

      if (v13 == v14)
      {
        __swift_destroy_boxed_opaque_existential_0(v50);
        return v16;
      }

      if (v14 >= v13)
      {
        goto LABEL_32;
      }

      v41 = v14 + 1;
      v28 = type metadata accessor for JSONSchema();
      v29 = *(v28 - 8);
      v30 = v14;
      v31 = v45 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v14;
      v32 = v44;
      v33 = *(v44 + 48);
      v34 = v40;
      outlined init with take of Any(v50, v40);
      (*(v29 + 16))(&v34[v33], v31, v28);
      v35 = v39;
      outlined init with take of (Any, JSONSchema)(v34, v39);
      v36 = v48;
      v46(v50, v35, (v35 + *(v32 + 48)));
      if (v36)
      {
        outlined destroy of [Regex2BNF.CharacterPredicate](v35, &_syp_29GenerativeFunctionsFoundation10JSONSchemaOtMd, &_syp_29GenerativeFunctionsFoundation10JSONSchemaOtMR);

        return v16;
      }

      v48 = 0;
      outlined destroy of [Regex2BNF.CharacterPredicate](v35, &_syp_29GenerativeFunctionsFoundation10JSONSchemaOtMd, &_syp_29GenerativeFunctionsFoundation10JSONSchemaOtMR);
      v51 = v16;
      v38 = *(v16 + 16);
      v37 = *(v16 + 24);
      if (v38 >= v37 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1);
        v16 = v51;
      }

      *(v16 + 16) = v38 + 1;
      result = outlined init with take of Any(v50, (v16 + 32 * v38 + 32));
      v14 = v30 + 1;
      v27 += 32;
      v13 = v42;
      v12 = v43;
      if (v41 == v43)
      {
        return v16;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t PythonesqueJSONDumpsEncoder.encodeSchema(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v35[4] = *MEMORY[0x1E69E9840];
  v7 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v32[1] = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONSchema();
  lazy protocol witness table accessor for type JSONSchema and conformance JSONSchema(&lazy protocol witness table cache variable for type JSONSchema and conformance JSONSchema, MEMORY[0x1E69A0AF8], MEMORY[0x1E69A0B00]);
  v9 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v3)
  {
LABEL_7:
    v16 = swift_unexpectedError();
    __break(1u);
    goto LABEL_8;
  }

  v11 = v9;
  v12 = v10;
  v13 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v34[0] = 0;
  v15 = [v13 JSONObjectWithData:isa options:4 error:v34];

  v16 = v34[0];
  if (!v15)
  {
LABEL_8:
    v30 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v19 = swift_unexpectedError();
    __break(1u);
    goto LABEL_9;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  PythonesqueJSONDumpsEncoder.addSentinelsAndDropNonPromptFields(json:schema:)(v35, a1, a2, a3, v34);
  __swift_project_boxed_opaque_existential_1(v34, v34[3]);
  v17 = _bridgeAnythingToObjectiveC<A>(_:)();
  v33 = 0;
  v18 = [v13 dataWithJSONObject:v17 options:10 error:&v33];
  swift_unknownObjectRelease();
  v19 = v33;
  if (v18)
  {
    v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    static String.Encoding.utf8.getter();
    v23 = String.init(data:encoding:)();
    if (v24)
    {
      v25 = specialized PythonesqueJSONDumpsEncoder.removeSentinels(from:)(v23, v24);
      v27 = v26;

      v28 = specialized PythonesqueJSONDumpsEncoder.insertCanonicalSpaces(into:)(v25, v27);
      outlined consume of Data._Representation(v11, v12);
      outlined consume of Data._Representation(v20, v22);

      __swift_destroy_boxed_opaque_existential_0(v35);
      __swift_destroy_boxed_opaque_existential_0(v34);
      return v28;
    }

    __break(1u);
    goto LABEL_7;
  }

LABEL_9:
  v31 = v19;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t PythonesqueJSONDumpsEncoder.addSentinelsAndDropNonPromptFields(json:schema:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, objc_class **a5@<X8>)
{
  v306 = a4;
  v296 = a3;
  v314 = a2;
  v271 = a5;
  v288 = type metadata accessor for JSONSchema.Array();
  v6 = *(v288 - 8);
  MEMORY[0x1EEE9AC00](v288);
  v287 = &v269 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = type metadata accessor for JSONSchema.Dictionary();
  v315 = *(v291 - 8);
  MEMORY[0x1EEE9AC00](v291);
  v290 = &v269 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v294 = type metadata accessor for JSONSchema.Object();
  v9 = *(v294 - 8);
  MEMORY[0x1EEE9AC00](v294);
  v281 = &v269 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v285 = &v269 - v12;
  v295 = type metadata accessor for JSONSchema.AnyOf();
  v13 = *(v295 - 8);
  MEMORY[0x1EEE9AC00](v295);
  v15 = &v269 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v293 = &v269 - v17;
  v18 = type metadata accessor for JSONSchema();
  v300 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v272 = &v269 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v280 = &v269 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v277 = &v269 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v286 = &v269 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v289 = &v269 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v284 = &v269 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v292 = &v269 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = (&v269 - v33);
  MEMORY[0x1EEE9AC00](v35);
  v304 = &v269 - v36;
  outlined init with copy of Any(a1, &v325);
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  if (swift_dynamicCast())
  {
    v37 = v322;
  }

  else
  {
    v37 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  v328 = v37;
  v38 = *(v37 + 16);
  v301 = v37;
  v270 = v15;
  if (v38 && (v39 = specialized __RawDictionaryStorage.find<A>(_:)(0x7366656424, 0xE500000000000000), (v40 & 1) != 0) && (outlined init with copy of Any(*(v37 + 56) + 32 * v39, &v325), (swift_dynamicCast() & 1) != 0))
  {
    if (v327)
    {
      v41 = v327;
      goto LABEL_11;
    }
  }

  else
  {
    v327 = 0;
  }

  v41 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
LABEL_11:
  v307 = v41;
  v44 = *(v41 + 64);
  v43 = v41 + 64;
  v42 = v44;
  v45 = 1 << *(v43 - 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & v42;
  v48 = (v45 + 63) >> 6;
  v316 = (v300 + 16);
  v313 = (v300 + 88);
  LODWORD(v312) = *MEMORY[0x1E69A0A98];
  LODWORD(v310) = *MEMORY[0x1E69A0A88];
  LODWORD(v309) = *MEMORY[0x1E69A0AA0];
  v311 = (v300 + 8);
  LODWORD(v308) = *MEMORY[0x1E69A0AB0];
  v299 = (v300 + 96);
  v279 = (v9 + 16);
  v278 = (v9 + 8);
  v298 = (v300 + 32);
  v274 = (v6 + 16);
  v273 = (v6 + 8);
  v276 = (v315 + 16);
  v275 = (v315 + 8);
  v283 = (v13 + 16);
  v282 = (v13 + 8);

  v49 = 0;
  v315 = v18;
  if (!v47)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v53 = v49;
LABEL_28:
    v54 = __clz(__rbit64(v47));
    v47 &= v47 - 1;
    v55 = v54 | (v53 << 6);
    v56 = (v307[6] + 16 * v55);
    v58 = *v56;
    v57 = v56[1];
    outlined init with copy of Any(v307[7] + 32 * v55, &v320);
    *&v322 = v58;
    *(&v322 + 1) = v57;
    outlined init with take of Any(&v320, &v323);

    v18 = v315;
LABEL_29:
    v325 = v322;
    v326[0] = v323;
    v326[1] = v324;
    v59 = *(&v322 + 1);
    if (!*(&v322 + 1))
    {
      break;
    }

    v60 = v325;
    outlined init with take of Any(v326, &v322);
    v61 = *v316;
    (*v316)(v34, v314, v18);
    v62 = (*v313)(v34, v18);
    if (v62 == v312)
    {
      v302 = v53;
      (*v299)(v34, v18);
      v63 = *v34;
      v64 = swift_projectBox();
      (*v283)(v293, v64, v295);
      v65 = JSONSchema.AnyOf.definitions.getter();
      if (!v65)
      {
        goto LABEL_203;
      }

      v66 = v65;
      v303 = v63;
      if (!*(v65 + 16))
      {
        goto LABEL_198;
      }

      v67 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v59);
      if ((v68 & 1) == 0)
      {
        goto LABEL_198;
      }

      v69 = v315;
      v61(v292, *(v66 + 56) + *(v300 + 72) * v67, v315);
      (*v282)(v293, v295);
      v70 = &v320 + 8;
      goto LABEL_52;
    }

    if (v62 == v310)
    {
      v302 = v53;
      (*v299)(v34, v18);
      v71 = *v34;
      v72 = swift_projectBox();
      v73 = (*v276)(v290, v72, v291);
      v74 = MEMORY[0x1AC57B260](v73);
      if (!v74)
      {
        goto LABEL_204;
      }

      v75 = v74;
      v303 = v71;
      if (!*(v74 + 16))
      {
        goto LABEL_199;
      }

      v76 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v59);
      if ((v77 & 1) == 0)
      {
        goto LABEL_199;
      }

      v69 = v315;
      v61(v289, *(v75 + 56) + *(v300 + 72) * v76, v315);
      (*v275)(v290, v291);
      v70 = &v318;
      goto LABEL_52;
    }

    if (v62 == v309)
    {
      v302 = v53;
      (*v299)(v34, v18);
      v78 = *v34;
      v79 = swift_projectBox();
      v80 = (*v274)(v287, v79, v288);
      v81 = MEMORY[0x1AC57B2F0](v80);
      if (!v81)
      {
        goto LABEL_205;
      }

      v82 = v81;
      v303 = v78;
      if (!*(v81 + 16))
      {
        goto LABEL_200;
      }

      v83 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v59);
      if ((v84 & 1) == 0)
      {
        goto LABEL_200;
      }

      v69 = v315;
      v61(v286, *(v82 + 56) + *(v300 + 72) * v83, v315);
      (*v273)(v287, v288);
      v70 = v317 + 8;
      goto LABEL_52;
    }

    if (v62 == v308)
    {
      v302 = v53;
      (*v299)(v34, v18);
      v85 = *v34;
      v86 = swift_projectBox();
      (*v279)(v285, v86, v294);
      v87 = JSONSchema.Object.definitions.getter();
      if (!v87)
      {
        goto LABEL_206;
      }

      v88 = v87;
      v303 = v85;
      if (!*(v87 + 16))
      {
        goto LABEL_201;
      }

      v89 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v59);
      if ((v90 & 1) == 0)
      {
        goto LABEL_201;
      }

      v69 = v315;
      v61(v284, *(v88 + 56) + *(v300 + 72) * v89, v315);
      (*v278)(v285, v294);
      v70 = &v316;
LABEL_52:
      v91 = *(v70 - 32);

      v53 = v304;
      (*v298)(v304, v91, v69);

      if (v327)
      {
        v92 = v305;
        PythonesqueJSONDumpsEncoder.addSentinelsAndDropNonPromptFields(json:schema:)(&v322, v53, v296, v306, &v320);
        v305 = v92;
        if (v92)
        {
          goto LABEL_175;
        }

        outlined init with take of Any(&v320, v317);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v94 = v327;
        v319 = v327;
        v327 = 0x8000000000000000;
        v95 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v59);
        v97 = *(v94 + 16);
        v98 = (v96 & 1) == 0;
        v99 = __OFADD__(v97, v98);
        v100 = v97 + v98;
        if (v99)
        {
          goto LABEL_184;
        }

        v101 = v96;
        if (*(v94 + 24) >= v100)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_60;
          }

          v106 = v95;
          specialized _NativeDictionary.copy()();
          v95 = v106;
          if ((v101 & 1) == 0)
          {
            goto LABEL_63;
          }

LABEL_61:
          v103 = v95;

          v104 = v319;
          v105 = (v319[7] + 32 * v103);
          __swift_destroy_boxed_opaque_existential_0(v105);
          outlined init with take of Any(v317, v105);
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v100, isUniquelyReferenced_nonNull_native);
          v95 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v59);
          if ((v101 & 1) != (v102 & 1))
          {
            goto LABEL_208;
          }

LABEL_60:
          if (v101)
          {
            goto LABEL_61;
          }

LABEL_63:
          v104 = v319;
          v319[(v95 >> 6) + 8] |= 1 << v95;
          v107 = (v104[6] + 16 * v95);
          *v107 = v60;
          v107[1] = v59;
          outlined init with take of Any(v317, (v104[7] + 32 * v95));
          v108 = v104[2];
          v99 = __OFADD__(v108, 1);
          v109 = v108 + 1;
          if (v99)
          {
            goto LABEL_187;
          }

          v104[2] = v109;
        }

        v327 = v104;
      }

      if (v327)
      {
        *(&v321 + 1) = v297;
        *&v320 = v327;
        outlined init with take of Any(&v320, v317);

        v110 = v328;
        v111 = swift_isUniquelyReferenced_nonNull_native();
        v319 = v110;
        v112 = specialized __RawDictionaryStorage.find<A>(_:)(0x7366656424, 0xE500000000000000);
        v114 = v110[2];
        v115 = (v113 & 1) == 0;
        v99 = __OFADD__(v114, v115);
        v116 = v114 + v115;
        if (v99)
        {
          goto LABEL_183;
        }

        v117 = v113;
        if (v110[3] >= v116)
        {
          if ((v111 & 1) == 0)
          {
            v128 = v112;
            specialized _NativeDictionary.copy()();
            v112 = v128;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v116, v111);
          v112 = specialized __RawDictionaryStorage.find<A>(_:)(0x7366656424, 0xE500000000000000);
          if ((v117 & 1) != (v118 & 1))
          {
            goto LABEL_208;
          }
        }

        v18 = v315;
        v124 = v319;
        v301 = v319;
        if (v117)
        {
          v50 = (v319[7] + 32 * v112);
          __swift_destroy_boxed_opaque_existential_0(v50);
          outlined init with take of Any(v317, v50);
          (*v311)(v304, v18);
          __swift_destroy_boxed_opaque_existential_0(&v322);
        }

        else
        {
          v319[(v112 >> 6) + 8] |= 1 << v112;
          v125 = (v124[6] + 16 * v112);
          *v125 = 0x7366656424;
          v125[1] = 0xE500000000000000;
          outlined init with take of Any(v317, (v124[7] + 32 * v112));
          (*v311)(v304, v18);
          __swift_destroy_boxed_opaque_existential_0(&v322);
          v126 = v124[2];
          v99 = __OFADD__(v126, 1);
          v127 = v126 + 1;
          if (v99)
          {
            goto LABEL_186;
          }

          v124[2] = v127;
        }

        v328 = v124;
      }

      else
      {
        v119 = specialized __RawDictionaryStorage.find<A>(_:)(0x7366656424, 0xE500000000000000);
        if (v120)
        {
          v121 = v119;
          v122 = v328;
          v123 = swift_isUniquelyReferenced_nonNull_native();
          v319 = v122;
          v18 = v315;
          if (!v123)
          {
            specialized _NativeDictionary.copy()();
            v122 = v319;
          }

          outlined init with take of Any((*(v122 + 56) + 32 * v121), v317);
          specialized _NativeDictionary._delete(at:)(v121, v122);
          (*v311)(v304, v18);
          __swift_destroy_boxed_opaque_existential_0(&v322);
          v301 = v122;
          v328 = v122;
        }

        else
        {
          v18 = v315;
          (*v311)(v304, v315);
          __swift_destroy_boxed_opaque_existential_0(&v322);
          memset(v317, 0, sizeof(v317));
        }

        outlined destroy of [Regex2BNF.CharacterPredicate](v317, &_sypSgMd, &_sypSgMR);
      }

      v49 = v302;
      if (!v47)
      {
        goto LABEL_18;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(&v322);

      (*v311)(v34, v18);
      v49 = v53;
      if (!v47)
      {
LABEL_18:
        if (v48 <= v49 + 1)
        {
          v51 = v49 + 1;
        }

        else
        {
          v51 = v48;
        }

        v52 = v51 - 1;
        while (1)
        {
          v53 = v49 + 1;
          if (__OFADD__(v49, 1))
          {
            break;
          }

          if (v53 >= v48)
          {
            v47 = 0;
            v323 = 0u;
            v324 = 0u;
            v322 = 0u;
            v53 = v52;
            goto LABEL_29;
          }

          v47 = *(v43 + 8 * v53);
          ++v49;
          if (v47)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_175:

        (*v311)(v53, v315);
        __swift_destroy_boxed_opaque_existential_0(&v322);
        goto LABEL_87;
      }
    }
  }

  v129 = *v316;
  v130 = v277;
  (*v316)(v277, v314, v18);
  v131 = (*v313)(v130, v18);
  if (v131 == v312)
  {
    (*v299)(v130, v18);
    v132 = swift_projectBox();
    v133 = v270;
    (*v283)(v270, v132, v295);
    v134 = v301;
    v135 = v305;
    v136 = v306;
    if (!*(v301 + 16))
    {
      goto LABEL_192;
    }

    v137 = specialized __RawDictionaryStorage.find<A>(_:)(0x664F796E61, 0xE500000000000000);
    if ((v138 & 1) == 0)
    {
      goto LABEL_193;
    }

    outlined init with copy of Any(*(v134 + 56) + 32 * v137, &v322);
    outlined init with take of Any(&v322, &v325);
    v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
    v140 = swift_dynamicCast();
    v141 = v320;
    v142 = MEMORY[0x1AC57B2B0](v140);
    MEMORY[0x1EEE9AC00](v142);
    *(&v269 - 2) = v296;
    *(&v269 - 1) = v136;
    v143 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySayypGSay29GenerativeFunctionsFoundation10JSONSchemaOGG_ypsAE_pTg506_syp29fg12Foundation10i5Oyps5C33_pIgnnrzo_yp_ACtypsAD_pIegnrzr_TRypAKypsAE_pIgnnrzo_Tf1cn_n(v141, v142, partial apply for closure #1 in PythonesqueJSONDumpsEncoder.addSentinelsAndDropNonPromptFields(json:schema:), (&v269 - 4));
    if (v135)
    {
      (*v282)(v133, v295);

      goto LABEL_87;
    }

    v210 = v143;
    v305 = 0;

    *(&v326[0] + 1) = v139;
    *&v325 = v210;
    outlined init with take of Any(&v325, &v322);
    v211 = v328;
    v212 = swift_isUniquelyReferenced_nonNull_native();
    *&v320 = v211;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v322, 0x664F796E61, 0xE500000000000000, v212);
    (*v282)(v133, v295);

    v328 = v320;
LABEL_128:
    specialized Dictionary._Variant.removeValue(forKey:)(0x656C746974, 0xE500000000000000, &v325);
    outlined destroy of [Regex2BNF.CharacterPredicate](&v325, &_sypSgMd, &_sypSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(0x726564726F2D78, 0xE700000000000000, &v325);
    outlined destroy of [Regex2BNF.CharacterPredicate](&v325, &_sypSgMd, &_sypSgMR);
    v215 = v328;
    swift_bridgeObjectRetain_n();
    v216 = 0;
    v217 = MEMORY[0x1E69E7CC0];
LABEL_129:
    v218 = v217;
    v219 = 9;
    if (v216 > 9)
    {
      v219 = v216;
    }

    v220 = -v219;
    v221 = &outlined read-only object #0 of PythonesqueJSONDumpsEncoder.addSentinelsAndDropNonPromptFields(json:schema:) + 16 * v216++;
    v222 = (v221 + 40);
    while (1)
    {
      if (v220 + v216 == 1)
      {
        __break(1u);
        goto LABEL_180;
      }

      if (*(v215 + 2))
      {
        v224 = *(v222 - 1);
        v223 = *v222;

        specialized __RawDictionaryStorage.find<A>(_:)(v224, v223);
        if (v225)
        {
          v226 = swift_isUniquelyReferenced_nonNull_native();
          *&v325 = v218;
          if ((v226 & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v218[2] + 1, 1);
            v218 = v325;
          }

          v228 = v218[2];
          v227 = v218[3];
          if (v228 >= v227 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v227 > 1), v228 + 1, 1);
            v218 = v325;
          }

          v218[2] = (v228 + 1);
          v229 = &v218[2 * v228];
          v229[4] = v224;
          v229[5] = v223;
          v217 = v218;
          if (v216 == 9)
          {
LABEL_144:

            swift_arrayDestroy();

            v315 = v217[2];
            if (!v315)
            {
LABEL_173:

              v264 = v271;
              v271[3] = v297;
              *v264 = v215;
            }

            v230 = 0;
            v314 = 0x80000001A8FDA710;
            v231 = (v217 + 5);
            v313 = v217;
            while (v230 < v217[2])
            {
              v233 = *(v231 - 1);
              v232 = *v231;
              v316 = v231;
              ++v230;

              isa = Int._bridgeToObjectiveC()().super.super.isa;
              v235 = [v306 stringForObjectValue_];

              if (!v235)
              {
                goto LABEL_197;
              }

              v236 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v238 = v237;

              *&v325 = 0;
              *(&v325 + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(30);

              *&v325 = 0xD000000000000019;
              *(&v325 + 1) = v314;
              MEMORY[0x1AC57C120](v236, v238);

              MEMORY[0x1AC57C120](95, 0xE100000000000000);
              MEMORY[0x1AC57C120](v233, v232);
              v239 = v325;
              if (*(v215 + 2) && (v240 = specialized __RawDictionaryStorage.find<A>(_:)(v233, v232), (v241 & 1) != 0))
              {
                outlined init with copy of Any(*(v215 + 7) + 32 * v240, &v325);
                outlined init with take of Any(&v325, &v322);
                v242 = v328;
                v243 = swift_isUniquelyReferenced_nonNull_native();
                *&v320 = v242;
                v245 = specialized __RawDictionaryStorage.find<A>(_:)(v239, *(&v239 + 1));
                v246 = v242[2];
                v247 = (v244 & 1) == 0;
                v248 = v246 + v247;
                if (__OFADD__(v246, v247))
                {
                  goto LABEL_182;
                }

                v249 = v244;
                if (v242[3] >= v248)
                {
                  if ((v243 & 1) == 0)
                  {
                    specialized _NativeDictionary.copy()();
                  }
                }

                else
                {
                  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v248, v243);
                  v250 = specialized __RawDictionaryStorage.find<A>(_:)(v239, *(&v239 + 1));
                  if ((v249 & 1) != (v251 & 1))
                  {
                    goto LABEL_208;
                  }

                  v245 = v250;
                }

                v217 = v313;
                if (v249)
                {

                  v215 = v320;
                  v257 = (*(v320 + 56) + 32 * v245);
                  __swift_destroy_boxed_opaque_existential_0(v257);
                  outlined init with take of Any(&v322, v257);
                }

                else
                {
                  v215 = v320;
                  *(v320 + 8 * (v245 >> 6) + 64) |= 1 << v245;
                  *(*(v215 + 6) + 16 * v245) = v239;
                  outlined init with take of Any(&v322, (*(v215 + 7) + 32 * v245));
                  v258 = *(v215 + 2);
                  v99 = __OFADD__(v258, 1);
                  v259 = v258 + 1;
                  if (v99)
                  {
                    goto LABEL_185;
                  }

                  *(v215 + 2) = v259;
                }

                v328 = v215;
                v256 = v316;
              }

              else
              {
                v252 = specialized __RawDictionaryStorage.find<A>(_:)(v239, *(&v239 + 1));
                v254 = v253;

                if (v254)
                {
                  v215 = v328;
                  v255 = swift_isUniquelyReferenced_nonNull_native();
                  *&v322 = v215;
                  v217 = v313;
                  v256 = v316;
                  if (!v255)
                  {
                    specialized _NativeDictionary.copy()();
                    v215 = v322;
                  }

                  outlined init with take of Any((*(v215 + 7) + 32 * v252), &v325);
                  specialized _NativeDictionary._delete(at:)(v252, v215);
                  v328 = v215;
                }

                else
                {
                  v325 = 0u;
                  v326[0] = 0u;
                  v217 = v313;
                  v256 = v316;
                }

                outlined destroy of [Regex2BNF.CharacterPredicate](&v325, &_sypSgMd, &_sypSgMR);
              }

              v260 = specialized __RawDictionaryStorage.find<A>(_:)(v233, v232);
              v262 = v261;

              if (v262)
              {
                v215 = v328;
                v263 = swift_isUniquelyReferenced_nonNull_native();
                *&v322 = v215;
                if (!v263)
                {
                  specialized _NativeDictionary.copy()();
                  v215 = v322;
                }

                outlined init with take of Any((*(v215 + 7) + 32 * v260), &v325);
                specialized _NativeDictionary._delete(at:)(v260, v215);
                v328 = v215;
              }

              else
              {
                v325 = 0u;
                v326[0] = 0u;
              }

              outlined destroy of [Regex2BNF.CharacterPredicate](&v325, &_sypSgMd, &_sypSgMR);
              v231 = (v256 + 2);
              if (v315 == v230)
              {
                goto LABEL_173;
              }
            }

LABEL_180:
            __break(1u);
LABEL_181:
            __break(1u);
LABEL_182:
            __break(1u);
LABEL_183:
            __break(1u);
LABEL_184:
            __break(1u);
LABEL_185:
            __break(1u);
LABEL_186:
            __break(1u);
LABEL_187:
            __break(1u);
LABEL_188:
            __break(1u);
LABEL_189:
            __break(1u);
            goto LABEL_190;
          }

          goto LABEL_129;
        }
      }

      ++v216;
      v222 += 2;
      if (v216 == 10)
      {
        v217 = v218;
        goto LABEL_144;
      }
    }
  }

  v145 = v301;
  if (v131 != v308)
  {
    (*v311)(v130, v18);
    goto LABEL_128;
  }

  (*v299)(v130, v18);
  v146 = *v130;
  v147 = swift_projectBox();
  (*v279)(v281, v147, v294);
  v148 = v305;
  if (!*(v145 + 16))
  {
    goto LABEL_195;
  }

  v308 = v129;
  v303 = v146;
  v149 = specialized __RawDictionaryStorage.find<A>(_:)(0x69747265706F7270, 0xEA00000000007365);
  if ((v150 & 1) == 0)
  {
LABEL_196:
    __break(1u);
LABEL_197:
    __break(1u);
LABEL_198:

    __break(1u);
LABEL_199:

    __break(1u);
LABEL_200:

    __break(1u);
LABEL_201:

    __break(1u);
LABEL_202:

    __break(1u);
LABEL_203:
    __break(1u);
LABEL_204:
    __break(1u);
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  outlined init with copy of Any(*(v145 + 56) + 32 * v149, &v322);
  outlined init with take of Any(&v322, &v325);
  swift_dynamicCast();
  v151 = specialized PythonesqueJSONDumpsEncoder.keyOrder(for:)(v281);
  v152 = *&v317[0] + 64;
  v153 = 1 << *(*&v317[0] + 32);
  v154 = -1;
  if (v153 < 64)
  {
    v154 = ~(-1 << v153);
  }

  v155 = v154 & *(*&v317[0] + 64);
  v156 = (v153 + 63) >> 6;
  v309 = 0x80000001A8FDA710;
  v310 = *&v317[0];

  v157 = 0;
  v307 = v151;
  v304 = v156;
  while (2)
  {
    if (!v155)
    {
      while (1)
      {
        v158 = v157 + 1;
        if (__OFADD__(v157, 1))
        {
          goto LABEL_181;
        }

        if (v158 >= v156)
        {
          break;
        }

        v155 = *(v152 + 8 * v158);
        ++v157;
        if (v155)
        {
          v157 = v158;
          goto LABEL_102;
        }
      }

      v305 = v148;

      *(&v326[0] + 1) = v297;
      *&v325 = *&v317[0];
      outlined init with take of Any(&v325, &v322);

      v213 = v328;
      v214 = swift_isUniquelyReferenced_nonNull_native();
      *&v320 = v213;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v322, 0x69747265706F7270, 0xEA00000000007365, v214);
      (*v278)(v281, v294);
      v328 = v320;

      goto LABEL_128;
    }

LABEL_102:
    v159 = (*(v310 + 48) + ((v157 << 10) | (16 * __clz(__rbit64(v155)))));
    v161 = *v159;
    v160 = v159[1];
    v162 = v151[2];

    if (!v162 || (v163 = specialized __RawDictionaryStorage.find<A>(_:)(v161, v160), (v164 & 1) == 0))
    {

      type metadata accessor for GenerationError(0);
      lazy protocol witness table accessor for type JSONSchema and conformance JSONSchema(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError, &protocol conformance descriptor for GenerationError);
      v265 = v160;
      swift_allocError();
      v267 = v266;
      *&v325 = 0;
      *(&v325 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(92);
      MEMORY[0x1AC57C120](0xD000000000000026, 0x80000001A8FDA730);
      MEMORY[0x1AC57C120](v161, v265);

      MEMORY[0x1AC57C120](0xD000000000000034, 0x80000001A8FDA760);
      v268 = *(&v325 + 1);
      *v267 = v325;
      v267[1] = v268;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      goto LABEL_178;
    }

    if (__OFADD__(*(v151[7] + 8 * v163), 1))
    {
      goto LABEL_188;
    }

    v314 = v161;
    v313 = v160;
    v165 = Int._bridgeToObjectiveC()().super.super.isa;
    v166 = [v306 stringForObjectValue_];

    if (!v166)
    {
      goto LABEL_207;
    }

    v167 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v169 = v168;

    *&v325 = 0;
    *(&v325 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    *&v325 = 0xD000000000000019;
    *(&v325 + 1) = v309;
    MEMORY[0x1AC57C120](v167, v169);

    MEMORY[0x1AC57C120](95, 0xE100000000000000);
    v170 = v314;
    v171 = v313;
    MEMORY[0x1AC57C120](v314, v313);
    v172 = *&v317[0];
    if (!*(*&v317[0] + 16))
    {
      goto LABEL_189;
    }

    v173 = v148;
    v312 = *(&v325 + 1);
    v174 = v325;
    v175 = specialized __RawDictionaryStorage.find<A>(_:)(v170, v171);
    if ((v176 & 1) == 0)
    {
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
      goto LABEL_196;
    }

    v177 = v152;
    v178 = outlined init with copy of Any(*(v172 + 56) + 32 * v175, &v325);
    v179 = MEMORY[0x1AC57B370](v178);
    if (!*(v179 + 16))
    {
      goto LABEL_202;
    }

    v180 = specialized __RawDictionaryStorage.find<A>(_:)(v314, v171);
    if ((v181 & 1) == 0)
    {
      goto LABEL_202;
    }

    v182 = v300;
    v183 = v272;
    v184 = v315;
    v308(v272, *(v179 + 56) + *(v300 + 72) * v180, v315);

    v185 = v280;
    (*(v182 + 32))(v280, v183, v184);
    PythonesqueJSONDumpsEncoder.addSentinelsAndDropNonPromptFields(json:schema:)(&v325, v185, v296, v306, &v322);
    if (!v173)
    {
      v305 = 0;
      outlined init with copy of Any(&v322, &v320);
      v186 = swift_isUniquelyReferenced_nonNull_native();
      v187 = *&v317[0];
      v319 = *&v317[0];
      *&v317[0] = 0x8000000000000000;
      v188 = v174;
      v189 = v174;
      v190 = v312;
      v192 = specialized __RawDictionaryStorage.find<A>(_:)(v189, v312);
      v193 = *(v187 + 16);
      v194 = (v191 & 1) == 0;
      v195 = v193 + v194;
      if (__OFADD__(v193, v194))
      {
        goto LABEL_191;
      }

      v196 = v191;
      if (*(v187 + 24) >= v195)
      {
        if (v186)
        {
          v152 = v177;
          if ((v191 & 1) == 0)
          {
            goto LABEL_120;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          v152 = v177;
          if ((v196 & 1) == 0)
          {
            goto LABEL_120;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v195, v186);
        v197 = specialized __RawDictionaryStorage.find<A>(_:)(v188, v190);
        if ((v196 & 1) != (v198 & 1))
        {
          goto LABEL_208;
        }

        v192 = v197;
        v152 = v177;
        if ((v196 & 1) == 0)
        {
LABEL_120:
          v199 = v319;
          v319[(v192 >> 6) + 8] |= 1 << v192;
          v201 = (v199[6] + 16 * v192);
          *v201 = v188;
          v201[1] = v190;
          outlined init with take of Any(&v320, (v199[7] + 32 * v192));
          v202 = v199[2];
          v99 = __OFADD__(v202, 1);
          v203 = v202 + 1;
          if (v99)
          {
            goto LABEL_194;
          }

          v199[2] = v203;
          goto LABEL_122;
        }
      }

      v199 = v319;
      v200 = (v319[7] + 32 * v192);
      __swift_destroy_boxed_opaque_existential_0(v200);
      outlined init with take of Any(&v320, v200);
LABEL_122:
      *&v317[0] = v199;

      v204 = specialized __RawDictionaryStorage.find<A>(_:)(v314, v313);
      v205 = v315;
      if (v206)
      {
        v207 = v204;
        v208 = swift_isUniquelyReferenced_nonNull_native();
        v209 = *&v317[0];
        v319 = *&v317[0];
        v148 = v305;
        v151 = v307;
        if ((v208 & 1) == 0)
        {
          specialized _NativeDictionary.copy()();
          v209 = v319;
        }

        outlined init with take of Any((*(v209 + 56) + 32 * v207), &v320);
        specialized _NativeDictionary._delete(at:)(v207, v209);
        *&v317[0] = v209;
      }

      else
      {
        v320 = 0u;
        v321 = 0u;
        v148 = v305;
        v151 = v307;
      }

      v155 &= v155 - 1;

      outlined destroy of [Regex2BNF.CharacterPredicate](&v320, &_sypSgMd, &_sypSgMR);
      __swift_destroy_boxed_opaque_existential_0(&v322);
      (*v311)(v280, v205);
      __swift_destroy_boxed_opaque_existential_0(&v325);
      v156 = v304;
      continue;
    }

    break;
  }

  (*v311)(v280, v184);
  __swift_destroy_boxed_opaque_existential_0(&v325);
LABEL_178:
  (*v278)(v281, v294);

LABEL_87:
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v12;
    }

    outlined init with take of Any((*(v10 + 56) + 32 * v8), a3);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = MEMORY[0x1AC57CB60](*(a2 + 40), *v10);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + v3);
          v17 = (v15 + v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t specialized PythonesqueJSONDumpsEncoder.init()()
{
  v0 = type metadata accessor for JSONEncoder.OutputFormatting();
  MEMORY[0x1EEE9AC00](v0);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v1 = JSONEncoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation11JSONEncoderC16OutputFormattingVGMd, &_ss23_ContiguousArrayStorageCy10Foundation11JSONEncoderC16OutputFormattingVGMR);
  *(swift_allocObject() + 16) = xmmword_1A8FC9400;
  static JSONEncoder.OutputFormatting.withoutEscapingSlashes.getter();
  lazy protocol witness table accessor for type JSONSchema and conformance JSONSchema(&lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting, MEMORY[0x1E6967F78], MEMORY[0x1E6967F88]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation11JSONEncoderC16OutputFormattingVGMd, &_sSay10Foundation11JSONEncoderC16OutputFormattingVGMR);
  lazy protocol witness table accessor for type [JSONEncoder.OutputFormatting] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  [objc_msgSend(objc_allocWithZone(MEMORY[0x1E696ADA0]) init)];
  return v1;
}

void *specialized PythonesqueJSONDumpsEncoder.keyOrder(for:)(uint64_t a1)
{
  v1 = JSONSchema.Object.order.getter();
  v2 = v1;
  v3 = *(v1 + 16);
  if (!v3)
  {
    v6 = MEMORY[0x1E69E7CC8];
LABEL_17:

    return v6;
  }

  v4 = 0;
  v5 = (v1 + 40);
  v6 = MEMORY[0x1E69E7CC8];
  while (v4 < *(v2 + 16))
  {
    v9 = *(v5 - 1);
    v8 = *v5;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v8);
    v13 = v6[2];
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      goto LABEL_19;
    }

    v17 = v12;
    if (v6[3] < v16)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, isUniquelyReferenced_nonNull_native);
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v8);
      if ((v17 & 1) != (v18 & 1))
      {
        goto LABEL_21;
      }

LABEL_11:
      if (v17)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v22 = v11;
    specialized _NativeDictionary.copy()();
    v11 = v22;
    if (v17)
    {
LABEL_3:
      v7 = v11;

      *(v6[7] + 8 * v7) = v4;
      goto LABEL_4;
    }

LABEL_12:
    v6[(v11 >> 6) + 8] |= 1 << v11;
    v19 = (v6[6] + 16 * v11);
    *v19 = v9;
    v19[1] = v8;
    *(v6[7] + 8 * v11) = v4;
    v20 = v6[2];
    v15 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (v15)
    {
      goto LABEL_20;
    }

    v6[2] = v21;
LABEL_4:
    ++v4;
    v5 += 2;
    if (v3 == v4)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized PythonesqueJSONDumpsEncoder.removeSentinels(from:)(uint64_t a1, unint64_t a2)
{
  String.count.getter();
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  if (v4)
  {
    v6 = 4 * v4;
    v7 = v5 | (v4 << 16);
    while (1)
    {
      v8 = String.subscript.getter();
      v12 = specialized Sequence<>.starts<A>(with:)(0xD000000000000019, 0x80000001A8FDA710, v8, v9, v10, v11);

      if ((v12 & 1) == 0)
      {
        break;
      }

      v13 = String.index(_:offsetBy:limitedBy:)();
      v15 = (v14 & 1) != 0 ? v7 : v13;
      if (v6 <= v15 >> 14)
      {
        break;
      }

      String.subscript.getter();
      v16 = Character.isNumber.getter();

      if ((v16 & 1) == 0)
      {
        break;
      }

      v17 = String.index(after:)();
      v18 = v17 >> 14 < v6;
      if (v17 >> 14 >= v6)
      {
        goto LABEL_20;
      }

      String.subscript.getter();
      v19 = Character.isNumber.getter();

      if ((v19 & 1) == 0)
      {
        break;
      }

      v20 = String.index(after:)();
      v18 = v20 >> 14 < v6;
      if (v20 >> 14 >= v6)
      {
        goto LABEL_20;
      }

      String.subscript.getter();
      v21 = Character.isNumber.getter();

      if ((v21 & 1) == 0)
      {
        break;
      }

      v22 = String.index(after:)();
      v18 = v22 >> 14 < v6;
      if (v22 >> 14 >= v6)
      {
LABEL_20:
        v24 = 0;
      }

      else
      {
        String.subscript.getter();
        v23 = Character.isNumber.getter();

        if ((v23 & 1) == 0)
        {
          break;
        }

        v18 = v6 > String.index(after:)() >> 14;
        v24 = 1;
      }

      if (!v24 || !v18)
      {
        break;
      }

      if (String.subscript.getter() == 95 && v25 == 0xE100000000000000)
      {
      }

      else
      {
        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v26 & 1) == 0)
        {
          break;
        }
      }

LABEL_28:
      if (v6 <= String.index(after:)() >> 14)
      {
        return 0;
      }
    }

    v27 = String.subscript.getter();
    MEMORY[0x1AC57C110](v27);

    goto LABEL_28;
  }

  return 0;
}

uint64_t specialized PythonesqueJSONDumpsEncoder.insertCanonicalSpaces(into:)(uint64_t a1, unint64_t a2)
{
  v27 = a1;
  v28 = a2;
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v23 = a1;
  v24 = a2;
  v25 = 0;
  v26 = v2;
  swift_bridgeObjectRetain_n();
  v3 = 0;
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
LABEL_9:
  while (2)
  {
    while (2)
    {
      v21 = v4;
      v7 = v4 & 0xC0;
      v8 = v3;
      while (1)
      {
        v9 = String.Iterator.next()();
        if (!v9.value._object)
        {

          v15 = *(v5 + 2);
          if (!v15)
          {
LABEL_34:

            return v27;
          }

          while (v15 <= *(v5 + 2))
          {
            v16 = v15 - 1;
            String.index(_:offsetBy:)();
            String.insert(_:at:)();
            v15 = v16;
            if (!v16)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v3 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_36;
        }

        v22 = v9;
        MEMORY[0x1EEE9AC00](v9.value._countAndFlagsBits);
        v19 = &v22;
        v10 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), &v18, &outlined read-only object #0 of PythonesqueJSONDumpsEncoder.insertCanonicalSpaces(into:));
        swift_arrayDestroy();
        if ((v10 & 1) != 0 && v21 <= 0x3Fu)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
          }

          v12 = *(v5 + 2);
          v11 = *(v5 + 3);
          if (v12 >= v11 >> 1)
          {
            v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v5);
          }

          *(v5 + 2) = v12 + 1;
          *&v5[8 * v12 + 32] = v3;
        }

        if (v9.value._countAndFlagsBits == 34 && v9.value._object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v6 = v21 & 1;
          if (v21 >> 6 != 1)
          {
            v6 = v21 & 1 | 0x40;
          }

          if (v21 >> 6)
          {
            v4 = v6;
          }

          else
          {
            v4 = ((v21 & 1) == 0) | 0x40;
          }

          goto LABEL_9;
        }

        if (v9.value._countAndFlagsBits == 92 && v9.value._object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        ++v8;
        if (v7 == 128)
        {
          v4 = v21 & 1 | 0x40;
          goto LABEL_9;
        }
      }

      v13 = v21;
      v14 = v21 >> 6;
      if (v14 == 1)
      {

        v4 = v13 & 1 | 0xFFFFFF80;
        continue;
      }

      break;
    }

    if (v14 == 2)
    {

      v4 = v13 & 1 | 0x40;
      continue;
    }

    break;
  }

LABEL_37:
  v20 = 0;
  v19 = 332;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t outlined init with take of (Any, JSONSchema)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_29GenerativeFunctionsFoundation10JSONSchemaOtMd, &_syp_29GenerativeFunctionsFoundation10JSONSchemaOtMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type JSONSchema and conformance JSONSchema(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type [JSONEncoder.OutputFormatting] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [JSONEncoder.OutputFormatting] and conformance [A];
  if (!lazy protocol witness table cache variable for type [JSONEncoder.OutputFormatting] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation11JSONEncoderC16OutputFormattingVGMd, &_sSay10Foundation11JSONEncoderC16OutputFormattingVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [JSONEncoder.OutputFormatting] and conformance [A]);
  }

  return result;
}

_BYTE *ResponseFormatConvention.init(version:)@<X0>(_BYTE *result@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  if (*result)
  {
    *a2 = partial apply for closure #1 in ResponseFormatConvention.init(version:);
    a2[1] = 0;
  }

  else
  {
    type metadata accessor for GenerationError(0);
    lazy protocol witness table accessor for type GenerationError and conformance GenerationError();
    swift_allocError();
    *v2 = 0xD00000000000004ELL;
    v2[1] = 0x80000001A8FDA580;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

uint64_t specialized ResponseFormatV6.render(format:)(uint64_t a1)
{
  v2 = type metadata accessor for GenerationSchema();
  v52 = *(v2 - 8);
  v53 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v48 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for RecursiveSchema();
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for JSONSchema();
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for Prompt.ResponseFormat.SchemaDetails(0);
  MEMORY[0x1EEE9AC00](v46);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v45 - v10);
  v12 = type metadata accessor for Prompt.ResponseFormat.Kind(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v45 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v45 - v22;
  v58 = 0;
  v59 = 0xE000000000000000;
  outlined init with copy of Prompt.ResponseFormat.Kind(a1, &v45 - v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  outlined destroy of Prompt.ResponseFormat.Kind(v23, type metadata accessor for Prompt.ResponseFormat.Kind);
  if (EnumCaseMultiPayload == 1)
  {
    v25 = 0x72616D6D617267;
  }

  else
  {
    v25 = 0x6E6F736A206E69;
  }

  v57[0] = 0;
  v57[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v57[0] = 0xD000000000000012;
  v57[1] = 0x80000001A8FDA7A0;
  MEMORY[0x1AC57C120](v25, 0xE700000000000000);

  MEMORY[0x1AC57C120](46, 0xE100000000000000);
  MEMORY[0x1AC57C120](v57[0], v57[1]);

  strcpy(v57, "\nname: ");
  v57[1] = 0xE700000000000000;
  outlined init with copy of Prompt.ResponseFormat.Kind(a1, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *v20;
    v26 = v20[1];
  }

  else
  {
    outlined init with take of Prompt.ResponseFormat.SchemaDetails(v20, v11);
    v27 = *v11;
    v26 = v11[1];

    outlined destroy of Prompt.ResponseFormat.Kind(v11, type metadata accessor for Prompt.ResponseFormat.SchemaDetails);
  }

  MEMORY[0x1AC57C120](v27, v26);

  MEMORY[0x1AC57C120](v57[0], v57[1]);

  outlined init with copy of Prompt.ResponseFormat.Kind(a1, v17);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with take of Prompt.ResponseFormat.SchemaDetails(v17, v11);
    v28 = v11[2];
    v29 = v11[3];

    outlined destroy of Prompt.ResponseFormat.Kind(v11, type metadata accessor for Prompt.ResponseFormat.SchemaDetails);
    v30 = v60;
    if (!v29)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v28 = *(v17 + 2);
  v29 = *(v17 + 3);

  v30 = v60;
  if (v29)
  {
LABEL_11:
    v57[0] = 0;
    v57[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    strcpy(v57, "\ndescription: ");
    HIBYTE(v57[1]) = -18;
    MEMORY[0x1AC57C120](v28, v29);

    MEMORY[0x1AC57C120](v57[0], v57[1]);
  }

LABEL_12:
  outlined init with copy of Prompt.ResponseFormat.Kind(a1, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = *(v14 + 4);
    v32 = *(v14 + 5);
    strcpy(v57, "\ngrammar:\n");
    BYTE3(v57[1]) = 0;
    HIDWORD(v57[1]) = -369098752;

    MEMORY[0x1AC57C120](v31, v32);
    swift_bridgeObjectRelease_n();

    MEMORY[0x1AC57C120](v57[0], v57[1]);
  }

  else
  {
    v33 = v56;
    outlined init with take of Prompt.ResponseFormat.SchemaDetails(v14, v56);
    v34 = v48;
    Schema.type.getter();
    v35 = v47;
    GenerationSchema.recursiveSchema()();
    (*(v52 + 8))(v34, v53);
    v36 = v51;
    RecursiveSchema.jsonSchema()();
    (*(v49 + 8))(v35, v50);
    v37 = specialized PythonesqueJSONDumpsEncoder.init()();
    v39 = v38;
    v40 = PythonesqueJSONDumpsEncoder.encodeSchema(_:)(v36, v37, v38);
    if (v30)
    {

      (*(v54 + 8))(v36, v55);
      outlined destroy of Prompt.ResponseFormat.Kind(v33, type metadata accessor for Prompt.ResponseFormat.SchemaDetails);
    }

    v43 = v41;
    v44 = v40;
    (*(v54 + 8))(v36, v55);

    strcpy(v57, "\nschema: ");
    WORD1(v57[1]) = 0;
    HIDWORD(v57[1]) = -385875968;
    MEMORY[0x1AC57C120](v44, v43);

    MEMORY[0x1AC57C120](v57[0], v57[1]);

    outlined destroy of Prompt.ResponseFormat.Kind(v33, type metadata accessor for Prompt.ResponseFormat.SchemaDetails);
  }

  return v58;
}

uint64_t outlined init with copy of Prompt.ResponseFormat.Kind(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prompt.ResponseFormat.Kind(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Prompt.ResponseFormat.SchemaDetails(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prompt.ResponseFormat.SchemaDetails(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Prompt.ResponseFormat.Kind(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Int StopSequenceMonitor.init(stopSequences:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1;
  v28[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  if ((v4 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v7 = v28 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v7, v6);
    v8 = 0;
    v9 = 0;
    v10 = 1 << *(v2 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v2 + 56);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_12:
      v18 = (*(v2 + 48) + 16 * v15);
      v20 = *v18;
      v19 = v18[1];
      v21 = v20 & 0xFFFFFFFFFFFFLL;
      if ((v19 & 0x2000000000000000) != 0)
      {
        v22 = HIBYTE(v19) & 0xF;
      }

      else
      {
        v22 = v21;
      }

      if (v22)
      {
        *&v7[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
        if (__OFADD__(v8++, 1))
        {
          __break(1u);
LABEL_19:
          result = specialized _NativeSet.extractSubset(using:count:)(v7, v5, v8, v2);
          goto LABEL_20;
        }
      }
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v13)
      {
        goto LABEL_19;
      }

      v17 = *(v2 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v26 = swift_slowAlloc();
  v27 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySSG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_aB13VKXEfU_SS_TG5AHxSbs5Error_pRi_zRi0_zlySSIsgndzo_Tf1nc_n(v26, v5, v2, closure #1 in StopSequenceMonitor.init(stopSequences:));

  MEMORY[0x1AC57DBF0](v26, -1, -1);
  result = v27;
LABEL_20:
  v25 = MEMORY[0x1E69E7CC0];
  *a2 = result;
  a2[1] = v25;
  return result;
}

BOOL closure #1 in StopSequenceMonitor.init(stopSequences:)(void *a1)
{
  v1 = a1[1];
  v2 = *a1 & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  return v2 != 0;
}

Swift::tuple_tokens_OpaquePointer_didStopSequenceMatch_Bool __swiftcall StopSequenceMonitor.handleOutputToken(_:)(TokenGeneration::Token a1)
{
  v2 = *a1.text._countAndFlagsBits;
  v1 = *(a1.text._countAndFlagsBits + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration0D0VGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration0D0VGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A8FC9400;
  *(inited + 32) = v2;
  *(inited + 40) = v1;

  v9 = StopSequenceMonitor.handleOutputTokens(_:)(inited);
  rawValue = v9.tokens._rawValue;
  object = v9.stopSequence.value._object;
  swift_setDeallocating();
  swift_arrayDestroy();

  v6 = rawValue;
  v7 = object != 0;
  result.tokens._rawValue = v6;
  result.didStopSequenceMatch = v7;
  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySSG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_aB13VKXEfU_SS_TG5AHxSbs5Error_pRi_zRi0_zlySSIsgndzo_Tf1nc_n(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = specialized closure #1 in _NativeSet.filter(_:)(result, a2, a3, a4);

    return v8;
  }

  return result;
}

Swift::Int specialized closure #1 in _NativeSet.filter(_:)(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v25 = a3;
  v22 = 0;
  v21 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;

    v17 = a4(v24);

    if (v4)
    {
      return result;
    }

    if (v17)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        return specialized _NativeSet.extractSubset(using:count:)(v21, a2, v22, v19);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t outlined destroy of Locale?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t specialized static StopSequenceMonitor.endsWithPrefix(_:stopSequence:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = String.count.getter();
  v7 = String.count.getter();

  if (v7 >= v6)
  {
    v42 = 0;
    v16 = a1;
    v18 = a2;
  }

  else
  {
    v8 = String.count.getter();
    v9 = specialized BidirectionalCollection.suffix(_:)(v8, a1, a2);
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = MEMORY[0x1AC57C040](v9, v11, v13, v15);
    v18 = v17;

    v19 = String.count.getter();
    result = String.count.getter();
    if (__OFSUB__(v19, result))
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return result;
    }

    v42 = v19 - result;
  }

  v21 = String.subscript.getter();
  v44 = v22;
  if ((v18 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v18) & 0xF;
  }

  else
  {
    v23 = v16 & 0xFFFFFFFFFFFFLL;
  }

  v25 = String.Iterator.next()();
  object = v25.value._object;
  result = v25.value._countAndFlagsBits;
  if (!v25.value._object)
  {
LABEL_23:

    v41 = 0;
    goto LABEL_26;
  }

  v26 = 0;
  v43 = 4 * v23;
  while (1)
  {
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (result == v21 && object == v44)
    {
    }

    else
    {
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v29 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    result = String.index(_:offsetBy:)();
    if (v43 < result >> 14)
    {
      goto LABEL_28;
    }

    v30 = String.subscript.getter();
    v32 = v31;
    v34 = v33;
    v36 = v35;

    Substring.distance(from:to:)();
    String.index(_:offsetBy:)();
    v37 = String.subscript.getter();
    if (v34 == v40 && v36 == v39 && v30 >> 16 == v37 >> 16 && v32 >> 16 == v38 >> 16)
    {
      break;
    }

    v27 = _stringCompareInternal(_:_:_:_:expecting:)();

    if (v27)
    {
      goto LABEL_24;
    }

LABEL_11:
    v28 = String.Iterator.next()();
    object = v28.value._object;
    result = v28.value._countAndFlagsBits;
    ++v26;
    if (!v28.value._object)
    {
      goto LABEL_23;
    }
  }

LABEL_24:

  if (__OFADD__(v26, v42))
  {
    goto LABEL_30;
  }

  v41 = String.index(_:offsetBy:)();
LABEL_26:

  return v41;
}

uint64_t outlined consume of StopSequenceMonitor.StopSequenceMatch(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
  }

  return result;
}

uint64_t Token.text.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Token.text.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static Token.== infix(_:_:)(uint64_t *a1, void *a2)
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

Swift::Int Token.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type Token and conformance Token()
{
  result = lazy protocol witness table cache variable for type Token and conformance Token;
  if (!lazy protocol witness table cache variable for type Token and conformance Token)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Token and conformance Token);
  }

  return result;
}

uint64_t static System.defaultInstructionsPrompt(appending:)(uint64_t a1)
{
  v1 = type metadata accessor for Prompt();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Prompt.init(_:)();
  v5 = Prompt.components.getter();
  (*(v2 + 8))(v4, v1);
  v8 = v5;

  specialized Array.append<A>(contentsOf:)(v6);
  return Prompt.init(components:)();
}

uint64_t Prompt.parseAsChatMessagesPrompt(catalogClient:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v136 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0V9ComponentVSgMd, &_s9PromptKit0A0V9ComponentVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v137 = &v129 - v4;
  v166 = type metadata accessor for Prompt.ParseAsChatMessagesPromptParseError(0);
  MEMORY[0x1EEE9AC00](v166);
  v168 = &v129 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v135 = &v129 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v147 = &v129 - v9;
  v142 = type metadata accessor for System();
  v138 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v141 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for ChatMessagePrompt();
  v148 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v171 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v149 = &v129 - v13;
  v167 = type metadata accessor for Prompt.Component.Value();
  v139 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v153 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v152 = &v129 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v151 = &v129 - v18;
  v157 = type metadata accessor for SpecialToken();
  v154 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v145 = &v129 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v150 = &v129 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v144 = &v129 - v23;
  v174 = type metadata accessor for State #1 in Prompt.parseAsChatMessagesPrompt(catalogClient:)(0);
  MEMORY[0x1EEE9AC00](v174);
  v25 = &v129 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v129 - v27;
  v29 = type metadata accessor for Prompt.Component();
  v143 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v129 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for Prompt();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v129 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v129 - v37;
  v39 = v176;
  result = Prompt.transformToPrepareForTokenGenerationPromptConsideringPromptTemplate(catalogClient:)(a1);
  v175 = v39;
  if (!v39)
  {
    v172 = v28;
    v161 = v25;
    v162 = v31;
    v132 = v29;
    v133 = v35;
    v131 = v33;
    v134 = v32;
    v160 = swift_allocBox();
    v42 = v41;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit15ChatMessageRoleO4role_tMd, &_s9PromptKit15ChatMessageRoleO4role_tMR);
    v44 = *(v43 - 8);
    v45 = *(v44 + 56);
    v173 = v43;
    v159 = v44 + 56;
    v158 = v45;
    (v45)(v42, 1, 3);
    v130 = v38;
    v46 = Prompt.components.getter();
    v47 = swift_allocObject();
    v163 = v47;
    v47[2] = MEMORY[0x1E69E7CC0];
    v140 = v47 + 2;
    v48 = *(v46 + 2);
    v174 = v42;
    if (v48)
    {
      swift_beginAccess();
      v49 = v143;
      v176 = v143 + 8;
      v169 = (v44 + 48);
      v170 = v143 + 16;
      v165 = (v139 + 11);
      v164 = *MEMORY[0x1E69C62D8];
      v156 = v139 + 12;
      v155 = (v154 + 4);
      ++v154;
      ++v139;
      ++v138;
      v129 = v148 + 32;
      v50 = *(v46 + 2);
      v51 = v168;
      v52 = v132;
      v53 = v162;
      v54 = v157;
      while (1)
      {
        while (1)
        {
          if (!v50)
          {
            __break(1u);
LABEL_77:
            __break(1u);
LABEL_78:
            __break(1u);
            goto LABEL_79;
          }

          v58 = (*(v49 + 80) + 32) & ~*(v49 + 80);
          v42 = *(v49 + 16);
          (v42)(v53, v46 + v58, v52);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || (v50 - 1) > *(v46 + 3) >> 1)
          {
            v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v50, 1, v46);
          }

          v60 = v46 + v58;
          v61 = *(v49 + 8);
          v61(v60, v52);
          v62 = *(v49 + 72);
          if (v62 > 0 || v60 >= v60 + v62 + (*(v46 + 2) - 1) * v62)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v62)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          --*(v46 + 2);
          v63 = v172;
          outlined init with copy of PromptTemplate.ResolvedModelBundleID(v174, v172, type metadata accessor for State #1 in Prompt.parseAsChatMessagesPrompt(catalogClient:));
          v64 = (*v169)(v63, 3, v173);
          if (v64 > 1)
          {
            break;
          }

          if (!v64)
          {
            v65 = v153;
            if (one-time initialization token for turnEnd != -1)
            {
              swift_once();
            }

            v66 = type metadata accessor for Prompt.SpecialToken(0);
            v67 = __swift_project_value_buffer(v66, static Prompt.SpecialToken.Chat.turnEnd);
            Prompt.Component.value.getter();
            v68 = v65;
            v69 = v65;
            v42 = v167;
            v70 = (*v165)(v68, v167);
            if (v70 == v164)
            {
              (*v156)(v69, v42);
              v71 = v145;
              (*v155)(v145, v69, v54);
              if (SpecialToken.identifier.getter() == *v67 && v72 == v67[1])
              {

                (*v154)(v71, v54);
                v42 = v161;
                v73 = v172;
                goto LABEL_48;
              }

              v92 = _stringCompareWithSmolCheck(_:_:expecting:)();

              (*v154)(v71, v54);
              v42 = v161;
              v73 = v172;
              if (v92)
              {
LABEL_48:
                v61(v53, v52);
                v158(v42, 3, 3, v173);
                outlined assign with take of State #1 in Prompt.parseAsChatMessagesPrompt(catalogClient:)(v42, v174);
LABEL_49:
                v93 = type metadata accessor for ChatMessageRole();
                (*(*(v93 - 8) + 8))(v73, v93);
                goto LABEL_7;
              }
            }

            else
            {
              (*v139)(v69, v42);
              v73 = v172;
            }

            v90 = v175;
            appendToLastChatMessage #1 (_:) in Prompt.parseAsChatMessagesPrompt(catalogClient:)(v53, v163, v53);
            v175 = v90;
            if (v90)
            {
              v61(v53, v52);
              (*(v131 + 8))(v130, v134);

              v128 = type metadata accessor for ChatMessageRole();
              (*(*(v128 - 8) + 8))(v73, v128);
              goto LABEL_73;
            }

            v61(v53, v52);
            goto LABEL_49;
          }

          if (one-time initialization token for defaultInstructions != -1)
          {
            swift_once();
          }

          v81 = type metadata accessor for Prompt.SpecialToken(0);
          v82 = __swift_project_value_buffer(v81, static Prompt.SpecialToken.Chat.defaultInstructions);
          v83 = v151;
          Prompt.Component.value.getter();
          v84 = v167;
          v85 = (*v165)(v83, v167);
          if (v85 == v164)
          {
            (*v156)(v83, v84);
            v86 = v144;
            v87 = v83;
            v54 = v157;
            (*v155)(v144, v87, v157);
            if (SpecialToken.identifier.getter() == *v82 && v88 == v82[1])
            {

              (*v154)(v86, v54);
LABEL_51:
              v95 = v133;
              v96 = v175;
              Prompt.init(_:)();
              v97 = v141;
              MEMORY[0x1AC57BDF0](v95);
              System.toChatMessagePrompt()();
              (*v138)(v97, v142);
              v98 = v140;
              swift_beginAccess();
              v99 = *v98;
              v100 = swift_isUniquelyReferenced_nonNull_native();
              v175 = v96;
              if ((v100 & 1) == 0)
              {
                v99 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v99[2] + 1, 1, v99);
              }

              v102 = v99[2];
              v101 = v99[3];
              if (v102 >= v101 >> 1)
              {
                v99 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v101 > 1), v102 + 1, 1, v99);
              }

              v99[2] = v102 + 1;
              (*(v148 + 32))(v99 + ((*(v148 + 80) + 32) & ~*(v148 + 80)) + *(v148 + 72) * v102, v149, v146);
              *v140 = v99;
              swift_endAccess();
              v61(v53, v52);
              v42 = v161;
              v158(v161, 2, 3, v173);
              v57 = v42;
LABEL_6:
              outlined assign with take of State #1 in Prompt.parseAsChatMessagesPrompt(catalogClient:)(v57, v174);
              goto LABEL_7;
            }

            v94 = _stringCompareWithSmolCheck(_:_:expecting:)();

            (*v154)(v86, v54);
            if (v94)
            {
              goto LABEL_51;
            }
          }

          else
          {
            (*v139)(v83, v84);
            v54 = v157;
          }

          v91 = v175;
          v42 = v147;
          _s9PromptKit0A0V19TokenGenerationCoreE019parseAsChatMessagesA013catalogClientAA0hiA0VAD012ModelCatalogK0_p_tKF016onTurnEndSpecialC0L_7isStartySb_tAcDE05ParseghiaT5ErrorVYKF(1, v53, v163, v160, v147);
          if (v91)
          {

            _s26GenerativeModelsFoundation14PromptTemplateVAC0D3Kit0D35ComponentValueCustomDataConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type Prompt.ParseAsChatMessagesPromptParseError and conformance Prompt.ParseAsChatMessagesPromptParseError, type metadata accessor for Prompt.ParseAsChatMessagesPromptParseError, &protocol conformance descriptor for Prompt.ParseAsChatMessagesPromptParseError);
            v175 = swift_allocError();
            v127 = v42;
            goto LABEL_72;
          }

          v175 = 0;
          v61(v53, v52);
LABEL_7:
          v28 = v171;
          v51 = v168;
          v50 = *(v46 + 2);
          if (!v50)
          {
            goto LABEL_57;
          }
        }

        if (v64 == 2)
        {
          if (one-time initialization token for turnEnd != -1)
          {
            swift_once();
          }

          v74 = type metadata accessor for Prompt.SpecialToken(0);
          v75 = __swift_project_value_buffer(v74, static Prompt.SpecialToken.Chat.turnEnd);
          v76 = v152;
          Prompt.Component.value.getter();
          v77 = v167;
          v78 = (*v165)(v76, v167);
          if (v78 != v164)
          {
            (*v139)(v76, v77);
            v53 = v162;
LABEL_68:
            v125 = *(v166 + 20);
            v51 = v135;
            (v42)(&v135[v125], v53, v52);
            (*(v49 + 56))(&v51[v125], 0, 1, v52);
            *v51 = 1;
            _s26GenerativeModelsFoundation14PromptTemplateVAC0D3Kit0D35ComponentValueCustomDataConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type Prompt.ParseAsChatMessagesPromptParseError and conformance Prompt.ParseAsChatMessagesPromptParseError, type metadata accessor for Prompt.ParseAsChatMessagesPromptParseError, &protocol conformance descriptor for Prompt.ParseAsChatMessagesPromptParseError);
            swift_willThrowTypedImpl();

LABEL_69:
            v175 = swift_allocError();
            v127 = v51;
LABEL_72:
            outlined init with take of ModelBundle(v127, v126, type metadata accessor for Prompt.ParseAsChatMessagesPromptParseError);
            v61(v53, v52);
            (*(v131 + 8))(v130, v134);
            goto LABEL_73;
          }

          (*v156)(v76, v77);
          v79 = v150;
          (*v155)(v150);
          if (SpecialToken.identifier.getter() == *v75 && v80 == v75[1])
          {

            (*v154)(v79, v54);
            v56 = v161;
            v53 = v162;
          }

          else
          {
            v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

            (*v154)(v79, v54);
            v56 = v161;
            v53 = v162;
            if ((v55 & 1) == 0)
            {
              goto LABEL_68;
            }
          }

          v61(v53, v52);
          v158(v56, 3, 3, v173);
          v57 = v56;
          goto LABEL_6;
        }

        v89 = v175;
        _s9PromptKit0A0V19TokenGenerationCoreE019parseAsChatMessagesA013catalogClientAA0hiA0VAD012ModelCatalogK0_p_tKF016onTurnEndSpecialC0L_7isStartySb_tAcDE05ParseghiaT5ErrorVYKF(0, v53, v163, v160, v51);
        v175 = v89;
        if (v89)
        {

          _s26GenerativeModelsFoundation14PromptTemplateVAC0D3Kit0D35ComponentValueCustomDataConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type Prompt.ParseAsChatMessagesPromptParseError and conformance Prompt.ParseAsChatMessagesPromptParseError, type metadata accessor for Prompt.ParseAsChatMessagesPromptParseError, &protocol conformance descriptor for Prompt.ParseAsChatMessagesPromptParseError);
          goto LABEL_69;
        }

        v61(v53, v52);
        v28 = v171;
        v50 = *(v46 + 2);
        if (!v50)
        {
          goto LABEL_57;
        }
      }
    }

    v28 = v171;
    v52 = v132;
    v49 = v143;
LABEL_57:
    v103 = v174;
    swift_beginAccess();
    v50 = *MEMORY[0x1E69C6400];
    v104 = type metadata accessor for ChatMessageRole();
    v105 = v161;
    (*(*(v104 - 8) + 104))(v161, v50, v104);
    v158(v105, 0, 3, v173);
    LOBYTE(v103) = specialized static == infix(_:_:) in State #1 in Prompt.parseAsChatMessagesPrompt(catalogClient:)(v103, v105);
    swift_endAccess();
    outlined destroy of ModelBundle(v105, type metadata accessor for State #1 in Prompt.parseAsChatMessagesPrompt(catalogClient:));
    if (v103)
    {
      v42 = v140;
      swift_beginAccess();
      v106 = *v42;
      v107 = *(*v42 + 16);
      v54 = v131;
      if (!v107)
      {
        goto LABEL_77;
      }

      v108 = v148;
      v174 = ((*(v108 + 80) + 32) & ~*(v108 + 80));
      v173 = *(v148 + 72);
      v109 = *(v148 + 16);
      v176 = v106;
      v110 = v28;
      v111 = v28;
      v112 = v146;
      v109(v110, &v174[v106 + v173 * (v107 - 1)], v146);
      v113 = v133;
      ChatMessagePrompt.prompt.getter();
      v172 = *(v108 + 8);
      v172(v111, v112);
      v114 = Prompt.components.getter();
      v115 = (v54 + 1);
      v116 = v113;
      v117 = v54[1];
      v117(v116, v134);
      swift_endAccess();
      v28 = *(v114 + 16);

      if (!v28)
      {
        v54 = v172;
        v50 = v173;
        v46 = v117;
        v42 = v174;
        swift_beginAccess();
        if (!*(v176 + 16))
        {
          goto LABEL_78;
        }

        v49 = v176;
        result = swift_isUniquelyReferenced_nonNull_native();
        v28 = v134;
        v171 = v115;
        if ((result & 1) == 0)
        {
LABEL_79:
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v49);
          v49 = result;
        }

        v118 = v50;
        v119 = *(v49 + 16);
        if (!v119)
        {
          __break(1u);
          return result;
        }

        v120 = v119 - 1;
        (v54)(&v42[v49 + (v119 - 1) * v118], v146);
        *(v49 + 16) = v120;
        v163[2] = v49;
        swift_endAccess();

        ChatMessagesPrompt.init(_:)();
        v46(v130, v28);
      }
    }

    else
    {

      v54 = v131;
    }

    v121 = v137;
    (*(v49 + 56))(v137, 1, 1, v52);
    _s26GenerativeModelsFoundation14PromptTemplateVAC0D3Kit0D35ComponentValueCustomDataConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type Prompt.ParseAsChatMessagesPromptParseError and conformance Prompt.ParseAsChatMessagesPromptParseError, type metadata accessor for Prompt.ParseAsChatMessagesPromptParseError, &protocol conformance descriptor for Prompt.ParseAsChatMessagesPromptParseError);
    v122 = v166;
    v123 = swift_allocError();
    *v124 = 3;
    outlined init with take of Prompt.Component?(v121, &v124[*(v122 + 20)]);
    v175 = v123;
    swift_willThrow();
    (v54[1])(v130, v134);
LABEL_73:
  }

  return result;
}

Swift::Int PromptTemplate.PromptTemplateRenderError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](0);
  return Hasher._finalize()();
}

void *CatalogClient.resolveModelBundleID(resourceURI:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v4 = type metadata accessor for GenerativeError.RuntimeError.ErrorType.ConfigurationErrorInfo.ErrorType();
  v5 = *(v4 - 8);
  v50 = v4;
  v51 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GenerativeError.RuntimeError.ErrorType();
  v53 = *(v7 - 8);
  v54 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog20AssetBackedLLMBundleVSgMd, &_s12ModelCatalog20AssetBackedLLMBundleVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v43 - v10;
  v12 = type metadata accessor for AssetBackedLLMBundle();
  v49 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog9LLMBundleVSgMd, &_s12ModelCatalog9LLMBundleVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v43 - v16;
  v18 = type metadata accessor for LLMBundle();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56[0] = v2;
  type metadata accessor for CatalogClient();
  v22 = v59;
  result = CatalogClientProtocol.queryResourceBundle(with:)();
  if (!v22)
  {
    v44 = v14;
    v45 = 0;
    v46 = v12;
    v47 = v11;
    v59 = a1;
    v24 = v54;
    v25 = v55;
    outlined init with copy of (String, Any)(v58, v56, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
    if (v57)
    {
      v26 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog14ResourceBundle_pMd, &_s12ModelCatalog14ResourceBundle_pMR);
      v27 = swift_dynamicCast();
      (*(v19 + 56))(v17, v27 ^ 1u, 1, v18);
      v28 = (*(v19 + 48))(v17, 1, v18);
      v29 = v25;
      if (v28 != 1)
      {
        (*(v26 + 32))(v21, v17, v18);
        LLMBundle.id.getter();
        (*(v26 + 8))(v21, v18);
LABEL_9:
        outlined destroy of [Regex2BNF.CharacterPredicate](v58, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
        type metadata accessor for PromptTemplate.ResolvedModelBundleID(0);
        return swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      outlined destroy of [Regex2BNF.CharacterPredicate](v56, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
      (*(v19 + 56))(v17, 1, 1, v18);
      v29 = v25;
    }

    outlined destroy of [Regex2BNF.CharacterPredicate](v17, &_s12ModelCatalog9LLMBundleVSgMd, &_s12ModelCatalog9LLMBundleVSgMR);
    outlined init with copy of (String, Any)(v58, v56, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
    v30 = v49;
    v31 = (v49 + 56);
    if (v57)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog14ResourceBundle_pMd, &_s12ModelCatalog14ResourceBundle_pMR);
      v33 = v46;
      v32 = v47;
      v34 = swift_dynamicCast();
      (*(v30 + 56))(v32, v34 ^ 1u, 1, v33);
      v35 = (*(v30 + 48))(v32, 1, v33);
      v36 = v24;
      v38 = v52;
      v37 = v53;
      v39 = v50;
      v40 = v51;
      if (v35 != 1)
      {
        v41 = v44;
        (*(v30 + 32))(v44, v32, v33);
        AssetBackedLLMBundle.id.getter();
        (*(v30 + 8))(v41, v33);
        goto LABEL_9;
      }
    }

    else
    {
      outlined destroy of [Regex2BNF.CharacterPredicate](v56, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
      v32 = v47;
      (*v31)(v47, 1, 1, v46);
      v36 = v24;
      v38 = v52;
      v37 = v53;
      v39 = v50;
      v40 = v51;
    }

    v42 = v36;
    outlined destroy of [Regex2BNF.CharacterPredicate](v32, &_s12ModelCatalog20AssetBackedLLMBundleVSgMd, &_s12ModelCatalog20AssetBackedLLMBundleVSgMR);
    URL.absoluteString.getter();
    GenerativeError.RuntimeError.ErrorType.ConfigurationErrorInfo.ErrorType.UnknownModelBundleIdentifierErrorInfo.init(modelBundleIdentifier:)();
    (*(v40 + 104))(v29, *MEMORY[0x1E69A0A18], v39);
    static GenerativeError.RuntimeError.ErrorType.configurationError(type:)();
    (*(v40 + 8))(v29, v39);
    type metadata accessor for GenerativeError();
    _s26GenerativeModelsFoundation14PromptTemplateVAC0D3Kit0D35ComponentValueCustomDataConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type GenerativeError and conformance GenerativeError, MEMORY[0x1E69A0A68], MEMORY[0x1E69A0A80]);
    swift_allocError();
    static GenerativeError.runtimeError(type:)();
    (*(v37 + 8))(v38, v42);
    swift_willThrow();
    return outlined destroy of [Regex2BNF.CharacterPredicate](v58, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  }

  return result;
}

char *CatalogClient.loadRawPromptTemplateFromModelCatalog(resourceURI:templateID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a2;
  v42 = a3;
  v46 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMR);
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMR);
  v43 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  v16 = type metadata accessor for PromptTemplate.ResolvedModelBundleID(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v39 - v20;
  v22 = v47;
  CatalogClient.resolveModelBundleID(resourceURI:)(v46, &v39 - v20);
  if (!v22)
  {
    v46 = v3;
    v40 = v6;
    v24 = v44;
    v23 = v45;
    v47 = 0;
    outlined init with copy of PromptTemplate.ResolvedModelBundleID(v21, v18, type metadata accessor for PromptTemplate.ResolvedModelBundleID);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v25 = v24;
      (*(v24 + 32))(v9, v18, v23);
      v26 = v40;
      (*(v24 + 16))(v40, v9, v23);
      type metadata accessor for _LoadedModelConfiguration();
      v27 = v47;
      v28 = static _LoadedModelConfiguration.create(modelBundleIdentifier:catalogClient:)(v26, v46);
      v12 = v27;
      v29 = *(v25 + 8);
      v29(v26, v23);
      v29(v9, v23);
      if (!v27)
      {
        v30 = v41;
        v31 = v42;
        if (!v28)
        {
          goto LABEL_16;
        }

LABEL_11:
        v36 = v28[2];
        if (!v36 || !*(v36 + 16))
        {
          goto LABEL_16;
        }

        v37 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v31);
        if (v38)
        {
          v12 = *(*(v36 + 56) + 16 * v37);

          outlined destroy of ModelBundle(v21, type metadata accessor for PromptTemplate.ResolvedModelBundleID);

          return v12;
        }

LABEL_16:
        outlined destroy of ModelBundle(v21, type metadata accessor for PromptTemplate.ResolvedModelBundleID);

        return 0;
      }
    }

    else
    {
      v45 = v21;
      v32 = v43;
      (*(v43 + 32))(v15, v18, v10);
      (*(v32 + 16))(v12, v15, v10);
      type metadata accessor for _LoadedModelConfiguration();
      v33 = v47;
      v28 = static _LoadedModelConfiguration.create(modelBundleIdentifier:catalogClient:)(v12, v46);
      v34 = *(v32 + 8);
      v34(v12, v10);
      v34(v15, v10);
      if (!v33)
      {
        v21 = v45;
        v30 = v41;
        v31 = v42;
        if (!v28)
        {
          goto LABEL_16;
        }

        goto LABEL_11;
      }

      v12 = v33;
      v21 = v45;
    }

    outlined destroy of ModelBundle(v21, type metadata accessor for PromptTemplate.ResolvedModelBundleID);
  }

  return v12;
}

char *CatalogClient.loadPromptTemplate(resourceURI:templateID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = CatalogClient.loadRawPromptTemplateFromModelCatalog(resourceURI:templateID:)(a1, a2, a3);
  if (v3)
  {
    if (one-time initialization token for prompt != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Log.prompt);
    v6 = v3;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = v3;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_1A8E85000, v7, v8, "loadRawPromptTemplateFromModelCatalog failed with %@", v9, 0xCu);
      outlined destroy of [Regex2BNF.CharacterPredicate](v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC57DBF0](v10, -1, -1);
      MEMORY[0x1AC57DBF0](v9, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t PromptTemplate.loadPromptTemplate(catalogClient:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a1;
  v63 = a2;
  v3 = type metadata accessor for ResourceBundleQuery();
  v61 = *(v3 - 8);
  v62 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v60 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMR);
  v64 = *(v5 - 8);
  v65 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v56 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ModelBundleVSgMd, &_s15TokenGeneration11ModelBundleVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v56 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMR);
  v57 = *(v13 - 8);
  v58 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v56 - v14;
  v16 = type metadata accessor for PromptTemplate.ModelBundleID();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ModelBundle(0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v66 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v67 = &v56 - v24;
  v70 = v2;
  PromptTemplate.modelBundleID.getter();
  v25 = (*(v17 + 88))(v19, v16);
  if (v25 == *MEMORY[0x1E69A14D0])
  {
    (*(v17 + 96))(v19, v16);
    v26 = v64;
    v27 = v19;
    v28 = v65;
    (*(v64 + 32))(v7, v27, v65);
    v29 = MEMORY[0x1AC57AE60](v28);
    v31 = v30;
    v32 = static InternalVariantArguments.arguments()();

    ModelBundle.init(identifier:internalArguments:)(v29, v31, v32, v10);
    if (!(*(v21 + 48))(v10, 1, v20))
    {

      (*(v26 + 8))(v7, v28);
      v33 = v10;
LABEL_7:
      v42 = v66;
      outlined init with take of ModelBundle(v33, v66, type metadata accessor for ModelBundle);
      goto LABEL_10;
    }

    v55 = v10;
LABEL_19:
    outlined destroy of [Regex2BNF.CharacterPredicate](v55, &_s15TokenGeneration11ModelBundleVSgMd, &_s15TokenGeneration11ModelBundleVSgMR);
    goto LABEL_20;
  }

  if (v25 == *MEMORY[0x1E69A14E0])
  {
    (*(v17 + 96))(v19, v16);
    v34 = v57;
    v35 = v19;
    v36 = v58;
    (*(v57 + 32))(v15, v35, v58);
    v37 = MEMORY[0x1AC57AE60](v36);
    v39 = v38;
    v40 = static InternalVariantArguments.arguments()();

    v41 = v59;
    ModelBundle.init(identifier:internalArguments:)(v37, v39, v40, v59);
    if (!(*(v21 + 48))(v41, 1, v20))
    {

      (*(v34 + 8))(v15, v36);
      v33 = v41;
      goto LABEL_7;
    }

    v55 = v41;
    goto LABEL_19;
  }

  if (v25 != *MEMORY[0x1E69A14D8])
  {
LABEL_20:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  (*(v17 + 96))(v19, v16);
  v44 = v60;
  v43 = v61;
  v45 = v62;
  (*(v61 + 32))(v60, v19, v62);
  v42 = v66;
  getModelBundle #2 (fromResourceBundleQuery:) in PromptTemplate.loadPromptTemplate(catalogClient:)(v44, v66);
  (*(v43 + 8))(v44, v45);
LABEL_10:
  v46 = v67;
  outlined init with take of ModelBundle(v42, v67, type metadata accessor for ModelBundle);
  v47 = v68[3];
  v48 = v68[4];
  __swift_project_boxed_opaque_existential_1(v68, v47);
  v49 = PromptTemplate.templateID.getter();
  v50 = v69;
  (*(v48 + 8))(v46, v49, v51, v47, v48);
  if (v50)
  {
    outlined destroy of ModelBundle(v46, type metadata accessor for ModelBundle);
  }

  else
  {
    v54 = v52;

    if (v54 || PromptTemplate.loadRawPromptTemplateFromFallbackPromptTemplateCatalog()().value._object)
    {
      Prompt.init(template:)();
    }

    else
    {
      lazy protocol witness table accessor for type PromptTemplate.PromptTemplateRenderError and conformance PromptTemplate.PromptTemplateRenderError();
      swift_allocError();
      swift_willThrow();
    }

    return outlined destroy of ModelBundle(v46, type metadata accessor for ModelBundle);
  }
}

uint64_t getModelBundle #2 (fromResourceBundleQuery:) in PromptTemplate.loadPromptTemplate(catalogClient:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ResourceBundleQuery();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ModelBundleVSgMd, &_s15TokenGeneration11ModelBundleVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - v16;
  v18 = *(v5 + 16);
  v18(v10, a1, v4, v15);
  v19 = static InternalVariantArguments.arguments()();
  (v18)(v7, v10, v4);
  ModelBundle.init(resourceBundleQuery:internalArguments:)(v7, v19, v13);
  (*(v5 + 8))(v10, v4);
  v20 = type metadata accessor for ModelBundle(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  v23 = (v21 + 56);
  if (v22(v13, 1, v20))
  {
    outlined destroy of [Regex2BNF.CharacterPredicate](v13, &_s15TokenGeneration11ModelBundleVSgMd, &_s15TokenGeneration11ModelBundleVSgMR);
    v24 = 1;
  }

  else
  {
    outlined init with take of ModelBundle(v13, v17, type metadata accessor for ModelBundle);
    v24 = 0;
  }

  (*v23)(v17, v24, 1, v20);
  if (v22(v17, 1, v20) != 1)
  {
    return outlined init with take of ModelBundle(v17, a2, type metadata accessor for ModelBundle);
  }

  outlined destroy of [Regex2BNF.CharacterPredicate](v17, &_s15TokenGeneration11ModelBundleVSgMd, &_s15TokenGeneration11ModelBundleVSgMR);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in static System.defaultInstructionPrompt.getter()
{
  v0 = type metadata accessor for Prompt();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[3] = type metadata accessor for SpecialToken();
  v9[4] = MEMORY[0x1E69C63B8];
  __swift_allocate_boxed_opaque_existential_1(v9);
  SpecialToken.init(identifier:overestimatedTokenCount:)();
  v4 = MEMORY[0x1E69C6388];
  static CustomPromptBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_0(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMR);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A8FC9400;
  (*(v1 + 16))(v6 + v5, v3, v0);
  MEMORY[0x1AC57B890](v6, v0, v4);

  return (*(v1 + 8))(v3, v0);
}

uint64_t Prompt.transformToPrepareForTokenGenerationPromptConsideringPromptTemplate(catalogClient:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D35ComponentValueCustomDataTransformer_pGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D35ComponentValueCustomDataTransformer_pGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A8FC9400;
  *(v2 + 56) = &type metadata for Prompt.PromptTemplateTransformer;
  *(v2 + 64) = lazy protocol witness table accessor for type Prompt.PromptTemplateTransformer and conformance Prompt.PromptTemplateTransformer();
  v3 = swift_allocObject();
  *(v2 + 32) = v3;
  outlined init with copy of GuidedGenerationTokenizer(a1, v3 + 16);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A8FC9400;
  *(inited + 56) = &type metadata for Prompt.SelfAttentionTransformer;
  *(inited + 64) = lazy protocol witness table accessor for type Prompt.SelfAttentionTransformer and conformance Prompt.SelfAttentionTransformer();
  specialized Array.append<A>(contentsOf:)(inited);
  Prompt.transform(includeAttachments:customDataTransformers:)();
}

Swift::Int Prompt.ParseAsChatMessagesPromptParseError.Problem.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](v1);
  return Hasher._finalize()();
}

uint64_t Prompt.parseAsChatMessagesPrompt()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CatalogClient();
  swift_allocObject();
  v4[3] = v2;
  v4[4] = &protocol witness table for CatalogClient;
  v4[0] = CatalogClient.init()();
  Prompt.parseAsChatMessagesPrompt(catalogClient:)(v4, a1);
  return __swift_destroy_boxed_opaque_existential_0(v4);
}

uint64_t appendToLastChatMessage #1 (_:) in Prompt.parseAsChatMessagesPrompt(catalogClient:)(uint64_t a1, void *a2, uint64_t a3)
{
  v23 = a3;
  v5 = type metadata accessor for Prompt.ParseAsChatMessagesPromptParseError(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Prompt.Component();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = a2[2];
  v13 = v12[2];
  if (!v13)
  {
    v20 = *(v5 + 20);
    (*(v9 + 16))(&v7[v20], v23, v8);
    (*(v9 + 56))(&v7[v20], 0, 1, v8);
    *v7 = 4;
    _s26GenerativeModelsFoundation14PromptTemplateVAC0D3Kit0D35ComponentValueCustomDataConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type Prompt.ParseAsChatMessagesPromptParseError and conformance Prompt.ParseAsChatMessagesPromptParseError, type metadata accessor for Prompt.ParseAsChatMessagesPromptParseError, &protocol conformance descriptor for Prompt.ParseAsChatMessagesPromptParseError);
    swift_willThrowTypedImpl();
    swift_allocError();
    return outlined init with take of ModelBundle(v7, v21, type metadata accessor for Prompt.ParseAsChatMessagesPromptParseError);
  }

  (*(v9 + 16))(v11, a1, v8);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  a2[2] = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
    a2[2] = v12;
  }

  if (v13 > v12[2])
  {
    __break(1u);
    goto LABEL_11;
  }

  type metadata accessor for ChatMessagePrompt();
  v7 = ChatMessagePrompt.prompt.modify();
  v5 = Prompt.components.modify();
  v13 = v15;
  a2 = *v15;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  *v13 = a2;
  if ((v16 & 1) == 0)
  {
LABEL_11:
    a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a2[2] + 1, 1, a2);
    *v13 = a2;
  }

  v18 = a2[2];
  v17 = a2[3];
  if (v18 >= v17 >> 1)
  {
    a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, a2);
    *v13 = a2;
  }

  a2[2] = v18 + 1;
  (*(v9 + 32))(a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v18, v11, v8);
  (v5)(v24, 0);
  (v7)(v25, 0);
  return swift_endAccess();
}

uint64_t _s9PromptKit0A0V19TokenGenerationCoreE019parseAsChatMessagesA013catalogClientAA0hiA0VAD012ModelCatalogK0_p_tKF016onTurnEndSpecialC0L_7isStartySb_tAcDE05ParseghiaT5ErrorVYKF(int a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v92 = a5;
  v110 = a3;
  v91 = a1;
  v6 = type metadata accessor for State #1 in Prompt.parseAsChatMessagesPrompt(catalogClient:)(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v107 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Prompt();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v103 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ChatMessageRole();
  v108 = *(v10 - 8);
  v109 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v102 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ChatMessagePrompt();
  v104 = *(v12 - 8);
  v105 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v93 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v94 = &v90 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v98 = &v90 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v101 = &v90 - v19;
  v20 = type metadata accessor for Prompt.Component.Value();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v97 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v96 = &v90 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v90 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v90 - v29;
  v31 = type metadata accessor for SpecialToken();
  v115 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v90 = &v90 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v95 = &v90 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v99 = &v90 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v90 - v38;
  v106 = swift_projectBox();
  if (one-time initialization token for instructions != -1)
  {
    swift_once();
  }

  v113 = type metadata accessor for Prompt.SpecialToken(0);
  v40 = __swift_project_value_buffer(v113, static Prompt.SpecialToken.Chat.instructions);
  v114 = a2;
  Prompt.Component.value.getter();
  v112 = *(v21 + 88);
  v41 = v112(v30, v20);
  v111 = *MEMORY[0x1E69C62D8];
  v100 = v21;
  if (v41 == v111)
  {
    (*(v21 + 96))(v30, v20);
    v42 = v30;
    v43 = v31;
    (*(v115 + 32))(v39, v42, v31);
    if (SpecialToken.identifier.getter() == *v40 && v44 == v40[1])
    {

      (*(v115 + 8))(v39, v31);
LABEL_23:
      v56 = *MEMORY[0x1E69C63F8];
      v57 = v109;
      v58 = *(v108 + 104);
      v58(v102, v56, v109);
      Prompt.init(components:)();
      ChatMessagePrompt.init(role:prompt:)();
      v59 = v110;
      swift_beginAccess();
      v60 = *(v59 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v59 + 16) = v60;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v60[2] + 1, 1, v60);
        *(v59 + 16) = v60;
      }

      v63 = v60[2];
      v62 = v60[3];
      if (v63 >= v62 >> 1)
      {
        v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1, v60);
      }

      v60[2] = v63 + 1;
      (*(v104 + 32))(v60 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v63, v101, v105);
LABEL_57:
      *(v59 + 16) = v60;
      swift_endAccess();
      v87 = v107;
      v58(v107, v56, v57);
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit15ChatMessageRoleO4role_tMd, &_s9PromptKit15ChatMessageRoleO4role_tMR);
      (*(*(v88 - 8) + 56))(v87, 0, 3, v88);
      v89 = v106;
      swift_beginAccess();
      return outlined assign with take of State #1 in Prompt.parseAsChatMessagesPrompt(catalogClient:)(v87, v89);
    }

    v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v45 = v115;
    (*(v115 + 8))(v39, v43);
    if (v55)
    {
      goto LABEL_23;
    }
  }

  else
  {
    (*(v21 + 8))(v30, v20);
    v43 = v31;
    v45 = v115;
  }

  if (one-time initialization token for user != -1)
  {
    swift_once();
  }

  v46 = __swift_project_value_buffer(v113, static Prompt.SpecialToken.Chat.user);
  Prompt.Component.value.getter();
  v47 = v112(v27, v20);
  v48 = v100;
  if (v47 != v111)
  {
    (*(v100 + 8))(v27, v20);
    goto LABEL_15;
  }

  (*(v100 + 96))(v27, v20);
  (*(v45 + 32))(v99, v27, v43);
  if (SpecialToken.identifier.getter() == *v46 && v49 == v46[1])
  {

    (*(v45 + 8))(v99, v43);
LABEL_35:
    v56 = *MEMORY[0x1E69C63E0];
    v57 = v109;
    v58 = *(v108 + 104);
    v58(v102, v56, v109);
    Prompt.init(components:)();
    ChatMessagePrompt.init(role:prompt:)();
    v59 = v110;
    swift_beginAccess();
    v60 = *(v59 + 16);
    v70 = swift_isUniquelyReferenced_nonNull_native();
    *(v59 + 16) = v60;
    if ((v70 & 1) == 0)
    {
      v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v60[2] + 1, 1, v60);
      *(v59 + 16) = v60;
    }

    v72 = v60[2];
    v71 = v60[3];
    if (v72 >= v71 >> 1)
    {
      v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1, v60);
    }

    v60[2] = v72 + 1;
    (*(v104 + 32))(v60 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v72, v98, v105);
    goto LABEL_57;
  }

  v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

  (*(v45 + 8))(v99, v43);
  if (v69)
  {
    goto LABEL_35;
  }

LABEL_15:
  if (one-time initialization token for response != -1)
  {
    swift_once();
  }

  v50 = __swift_project_value_buffer(v113, static Prompt.SpecialToken.Chat.response);
  v51 = v96;
  Prompt.Component.value.getter();
  v52 = v112(v51, v20);
  v53 = v97;
  if (v52 != v111)
  {
    (*(v48 + 8))(v51, v20);
    goto LABEL_28;
  }

  (*(v48 + 96))(v51, v20);
  (*(v45 + 32))(v95, v51, v43);
  if (SpecialToken.identifier.getter() == *v50 && v54 == v50[1])
  {

    (*(v45 + 8))(v95, v43);
LABEL_46:
    v56 = *MEMORY[0x1E69C6400];
    v57 = v109;
    v58 = *(v108 + 104);
    v58(v102, v56, v109);
    Prompt.init(components:)();
    ChatMessagePrompt.init(role:prompt:)();
    v59 = v110;
    swift_beginAccess();
    v60 = *(v59 + 16);
    v80 = swift_isUniquelyReferenced_nonNull_native();
    *(v59 + 16) = v60;
    if ((v80 & 1) == 0)
    {
      v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v60[2] + 1, 1, v60);
      *(v59 + 16) = v60;
    }

    v82 = v60[2];
    v81 = v60[3];
    if (v82 >= v81 >> 1)
    {
      v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v81 > 1), v82 + 1, 1, v60);
    }

    v60[2] = v82 + 1;
    (*(v104 + 32))(v60 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v82, v94, v105);
    goto LABEL_57;
  }

  v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

  (*(v45 + 8))(v95, v43);
  if (v79)
  {
    goto LABEL_46;
  }

LABEL_28:
  if (one-time initialization token for tool != -1)
  {
    swift_once();
  }

  v64 = __swift_project_value_buffer(v113, static Prompt.SpecialToken.Chat.tool);
  Prompt.Component.value.getter();
  v65 = v112(v53, v20);
  if (v65 == v111)
  {
    (*(v48 + 96))(v53, v20);
    v66 = v90;
    (*(v45 + 32))(v90, v53, v43);
    if (SpecialToken.identifier.getter() == *v64 && v67 == v64[1])
    {

      (*(v45 + 8))(v66, v43);
      v59 = v110;
      v68 = v108;
      v57 = v109;
LABEL_52:
      v56 = *MEMORY[0x1E69C63D8];
      v58 = *(v68 + 104);
      v58(v102, v56, v57);
      Prompt.init(components:)();
      ChatMessagePrompt.init(role:prompt:)();
      swift_beginAccess();
      v60 = *(v59 + 16);
      v84 = swift_isUniquelyReferenced_nonNull_native();
      *(v59 + 16) = v60;
      if ((v84 & 1) == 0)
      {
        v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v60[2] + 1, 1, v60);
        *(v59 + 16) = v60;
      }

      v86 = v60[2];
      v85 = v60[3];
      if (v86 >= v85 >> 1)
      {
        v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v86 + 1, 1, v60);
      }

      v60[2] = v86 + 1;
      (*(v104 + 32))(v60 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v86, v93, v105);
      goto LABEL_57;
    }

    v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*(v45 + 8))(v66, v43);
    v59 = v110;
    v68 = v108;
    v57 = v109;
    if (v83)
    {
      goto LABEL_52;
    }
  }

  else
  {
    (*(v48 + 8))(v53, v20);
  }

  if (v91)
  {
    v73 = 0;
  }

  else
  {
    v73 = 2;
  }

  v74 = *(type metadata accessor for Prompt.ParseAsChatMessagesPromptParseError(0) + 20);
  v75 = type metadata accessor for Prompt.Component();
  v76 = *(v75 - 8);
  v77 = v92;
  (*(v76 + 16))(&v92[v74], v114, v75);
  (*(v76 + 56))(&v77[v74], 0, 1, v75);
  *v77 = v73;
  _s26GenerativeModelsFoundation14PromptTemplateVAC0D3Kit0D35ComponentValueCustomDataConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type Prompt.ParseAsChatMessagesPromptParseError and conformance Prompt.ParseAsChatMessagesPromptParseError, type metadata accessor for Prompt.ParseAsChatMessagesPromptParseError, &protocol conformance descriptor for Prompt.ParseAsChatMessagesPromptParseError);
  return swift_willThrowTypedImpl();
}

unint64_t lazy protocol witness table accessor for type PromptTemplate.PromptTemplateRenderError and conformance PromptTemplate.PromptTemplateRenderError()
{
  result = lazy protocol witness table cache variable for type PromptTemplate.PromptTemplateRenderError and conformance PromptTemplate.PromptTemplateRenderError;
  if (!lazy protocol witness table cache variable for type PromptTemplate.PromptTemplateRenderError and conformance PromptTemplate.PromptTemplateRenderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptTemplate.PromptTemplateRenderError and conformance PromptTemplate.PromptTemplateRenderError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptTemplate.PromptTemplateRenderError and conformance PromptTemplate.PromptTemplateRenderError;
  if (!lazy protocol witness table cache variable for type PromptTemplate.PromptTemplateRenderError and conformance PromptTemplate.PromptTemplateRenderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptTemplate.PromptTemplateRenderError and conformance PromptTemplate.PromptTemplateRenderError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Prompt.ParseAsChatMessagesPromptParseError.Problem and conformance Prompt.ParseAsChatMessagesPromptParseError.Problem()
{
  result = lazy protocol witness table cache variable for type Prompt.ParseAsChatMessagesPromptParseError.Problem and conformance Prompt.ParseAsChatMessagesPromptParseError.Problem;
  if (!lazy protocol witness table cache variable for type Prompt.ParseAsChatMessagesPromptParseError.Problem and conformance Prompt.ParseAsChatMessagesPromptParseError.Problem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt.ParseAsChatMessagesPromptParseError.Problem and conformance Prompt.ParseAsChatMessagesPromptParseError.Problem);
  }

  return result;
}

void type metadata completion function for Prompt.ParseAsChatMessagesPromptParseError(uint64_t a1)
{
  type metadata accessor for Prompt.Component?(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for Prompt.Component?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Prompt.Component?)
  {
    type metadata accessor for Prompt.Component();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Prompt.Component?);
    }
  }
}

uint64_t getEnumTagSinglePayload for Prompt.PromptTemplateTransformer(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Prompt.PromptTemplateTransformer(uint64_t result, int a2, int a3)
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

uint64_t outlined destroy of ModelBundle(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s26GenerativeModelsFoundation14PromptTemplateVAC0D3Kit0D35ComponentValueCustomDataConvertibleAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of PromptTemplate.ResolvedModelBundleID(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of ModelBundle(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t specialized static PromptTemplate.ResolvedModelBundleID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMR);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v26 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  v9 = type metadata accessor for PromptTemplate.ResolvedModelBundleID(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation14PromptTemplateV15TokenGenerationE21ResolvedModelBundleIDO_AFtMd, &_s26GenerativeModelsFoundation14PromptTemplateV15TokenGenerationE21ResolvedModelBundleIDO_AFtMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - v16;
  v19 = *(v18 + 56);
  outlined init with copy of PromptTemplate.ResolvedModelBundleID(a1, &v26 - v16, type metadata accessor for PromptTemplate.ResolvedModelBundleID);
  outlined init with copy of PromptTemplate.ResolvedModelBundleID(v29, &v17[v19], type metadata accessor for PromptTemplate.ResolvedModelBundleID);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of PromptTemplate.ResolvedModelBundleID(v17, v11, type metadata accessor for PromptTemplate.ResolvedModelBundleID);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21 = v26;
      v20 = v27;
      v5 = v28;
      (*(v27 + 32))(v26, &v17[v19], v28);
      type metadata accessor for AssetBackedLLMBundle();
      _s26GenerativeModelsFoundation14PromptTemplateVAC0D3Kit0D35ComponentValueCustomDataConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type AssetBackedLLMBundle and conformance AssetBackedLLMBundle, MEMORY[0x1E69B2460], MEMORY[0x1E69B2458]);
      v22 = static ResourceBundleIdentifier.== infix(_:_:)();
      v23 = *(v20 + 8);
      v23(v21, v5);
      v24 = v11;
LABEL_9:
      v23(v24, v5);
      outlined destroy of ModelBundle(v17, type metadata accessor for PromptTemplate.ResolvedModelBundleID);
      return v22 & 1;
    }

    (*(v27 + 8))(v11, v28);
  }

  else
  {
    outlined init with copy of PromptTemplate.ResolvedModelBundleID(v17, v14, type metadata accessor for PromptTemplate.ResolvedModelBundleID);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v6 + 32))(v8, &v17[v19], v5);
      type metadata accessor for LLMBundle();
      _s26GenerativeModelsFoundation14PromptTemplateVAC0D3Kit0D35ComponentValueCustomDataConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type LLMBundle and conformance LLMBundle, MEMORY[0x1E69B2540], MEMORY[0x1E69B2538]);
      v22 = static ResourceBundleIdentifier.== infix(_:_:)();
      v23 = *(v6 + 8);
      v23(v8, v5);
      v24 = v14;
      goto LABEL_9;
    }

    (*(v6 + 8))(v14, v5);
  }

  outlined destroy of [Regex2BNF.CharacterPredicate](v17, &_s26GenerativeModelsFoundation14PromptTemplateV15TokenGenerationE21ResolvedModelBundleIDO_AFtMd, &_s26GenerativeModelsFoundation14PromptTemplateV15TokenGenerationE21ResolvedModelBundleIDO_AFtMR);
  v22 = 0;
  return v22 & 1;
}

uint64_t specialized static == infix(_:_:) in State #1 in Prompt.parseAsChatMessagesPrompt(catalogClient:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChatMessageRole();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for State #1 in Prompt.parseAsChatMessagesPrompt(catalogClient:)(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0V19TokenGenerationCoreE019parseAsChatMessagesA013catalogClientAA0hiA0VAD012ModelCatalogK0_p_tKF5StateL_O_AKtMd, &_s9PromptKit0A0V19TokenGenerationCoreE019parseAsChatMessagesA013catalogClientAA0hiA0VAD012ModelCatalogK0_p_tKF5StateL_O_AKtMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v22 - v12;
  v15 = *(v14 + 56);
  outlined init with copy of PromptTemplate.ResolvedModelBundleID(a1, &v22 - v12, type metadata accessor for State #1 in Prompt.parseAsChatMessagesPrompt(catalogClient:));
  outlined init with copy of PromptTemplate.ResolvedModelBundleID(a2, &v13[v15], type metadata accessor for State #1 in Prompt.parseAsChatMessagesPrompt(catalogClient:));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit15ChatMessageRoleO4role_tMd, &_s9PromptKit15ChatMessageRoleO4role_tMR);
  v17 = *(*(v16 - 8) + 48);
  v18 = v17(v13, 3, v16);
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      if (v17(&v13[v15], 3, v16) == 2)
      {
        goto LABEL_9;
      }
    }

    else if (v17(&v13[v15], 3, v16) == 3)
    {
      goto LABEL_9;
    }

LABEL_11:
    outlined destroy of [Regex2BNF.CharacterPredicate](v13, &_s9PromptKit0A0V19TokenGenerationCoreE019parseAsChatMessagesA013catalogClientAA0hiA0VAD012ModelCatalogK0_p_tKF5StateL_O_AKtMd, &_s9PromptKit0A0V19TokenGenerationCoreE019parseAsChatMessagesA013catalogClientAA0hiA0VAD012ModelCatalogK0_p_tKF5StateL_O_AKtMR);
    v19 = 0;
    return v19 & 1;
  }

  if (!v18)
  {
    outlined init with copy of PromptTemplate.ResolvedModelBundleID(v13, v10, type metadata accessor for State #1 in Prompt.parseAsChatMessagesPrompt(catalogClient:));
    if (!v17(&v13[v15], 3, v16))
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      v19 = static ChatMessageRole.== infix(_:_:)();
      v21 = *(v5 + 8);
      v21(v7, v4);
      v21(v10, v4);
      outlined destroy of ModelBundle(v13, type metadata accessor for State #1 in Prompt.parseAsChatMessagesPrompt(catalogClient:));
      return v19 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_11;
  }

  if (v17(&v13[v15], 3, v16) != 1)
  {
    goto LABEL_11;
  }

LABEL_9:
  outlined destroy of ModelBundle(v13, type metadata accessor for State #1 in Prompt.parseAsChatMessagesPrompt(catalogClient:));
  v19 = 1;
  return v19 & 1;
}

uint64_t outlined init with take of Prompt.Component?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0V9ComponentVSgMd, &_s9PromptKit0A0V9ComponentVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of State #1 in Prompt.parseAsChatMessagesPrompt(catalogClient:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for State #1 in Prompt.parseAsChatMessagesPrompt(catalogClient:)(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata completion function for State #1 in Prompt.parseAsChatMessagesPrompt(catalogClient:)(uint64_t a1)
{
  type metadata accessor for (role: ChatMessageRole)();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void type metadata accessor for (role: ChatMessageRole)()
{
  if (!lazy cache variable for type metadata for (role: ChatMessageRole))
  {
    v0 = type metadata accessor for ChatMessageRole();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (role: ChatMessageRole));
    }
  }
}

void type metadata completion function for PromptTemplate.ResolvedModelBundleID(uint64_t a1)
{
  type metadata accessor for ResourceBundleIdentifier<LLMBundle>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ResourceBundleIdentifier<AssetBackedLLMBundle>(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for ResourceBundleIdentifier<LLMBundle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ResourceBundleIdentifier<LLMBundle>)
  {
    type metadata accessor for LLMBundle();
    _s26GenerativeModelsFoundation14PromptTemplateVAC0D3Kit0D35ComponentValueCustomDataConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type LLMBundle and conformance LLMBundle, MEMORY[0x1E69B2540], MEMORY[0x1E69B2538]);
    v1 = type metadata accessor for ResourceBundleIdentifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ResourceBundleIdentifier<LLMBundle>);
    }
  }
}

void type metadata accessor for ResourceBundleIdentifier<AssetBackedLLMBundle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ResourceBundleIdentifier<AssetBackedLLMBundle>)
  {
    type metadata accessor for AssetBackedLLMBundle();
    _s26GenerativeModelsFoundation14PromptTemplateVAC0D3Kit0D35ComponentValueCustomDataConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type AssetBackedLLMBundle and conformance AssetBackedLLMBundle, MEMORY[0x1E69B2460], MEMORY[0x1E69B2458]);
    v1 = type metadata accessor for ResourceBundleIdentifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ResourceBundleIdentifier<AssetBackedLLMBundle>);
    }
  }
}

char *functionDefinition(_:)(uint64_t a1)
{
  v2 = type metadata accessor for GenerationSchema();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RecursiveSchema();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for JSONSchema();
  v10 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = a1;
  Tool.Function.parameters.getter();
  GenerationSchema.recursiveSchema()();
  (*(v3 + 8))(v5, v2);
  v13 = v9;
  RecursiveSchema.jsonSchema()();
  (*(v7 + 8))(v9, v6);
  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  v14 = v22[1];
  v15 = PythonesqueJSONDumpsEncoder.encodeSchema(_:)(v12, encoder, *algn_1EB372CD8);
  if (!v14)
  {
    v17 = v16;
    v23 = 0;
    v24 = 0xE000000000000000;
    v18 = v15;
    _StringGuts.grow(_:)(87);
    MEMORY[0x1AC57C120](0xD000000000000017, 0x80000001A8FDA920);
    v19 = Tool.Function.name.getter();
    MEMORY[0x1AC57C120](v19);

    MEMORY[0x1AC57C120](0xD000000000000013, 0x80000001A8FDA940);
    v20 = Tool.Function.description.getter();
    MEMORY[0x1AC57C120](v20);

    MEMORY[0x1AC57C120](0xD000000000000011, 0x80000001A8FDA960);
    MEMORY[0x1AC57C120](v18, v17);

    MEMORY[0x1AC57C120](0xD000000000000016, 0x80000001A8FDA980);
    v13 = v23;
  }

  (*(v10 + 8))(v12, v25);
  return v13;
}

uint64_t one-time initialization function for encoder()
{
  result = specialized PythonesqueJSONDumpsEncoder.init()();
  encoder = result;
  *algn_1EB372CD8 = v1;
  return result;
}

void specialized ToolCallingFormatV5.render(tools:)(uint64_t a1)
{
  v73 = a1;
  v65 = type metadata accessor for Tool.Function();
  v87 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65 - 8);
  v2 = &v53 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Tool.Type();
  v86 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v58 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v53 - v6;
  v8 = type metadata accessor for Tool();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v53 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_29GenerativeFunctionsFoundation4ToolV7elementtMd, &_sSi6offset_29GenerativeFunctionsFoundation4ToolV7elementtMR);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v70 = (&v53 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_29GenerativeFunctionsFoundation4ToolV7elementtSgMd, &_sSi6offset_29GenerativeFunctionsFoundation4ToolV7elementtSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v53 - v20;
  v22 = 0;
  v74 = (v9 + 16);
  v83 = (v15 + 48);
  v84 = (v15 + 56);
  v24 = v23;
  v79 = (v86 + 88);
  v80 = (v9 + 32);
  v88 = 0x206D65747379730ALL;
  v89 = 0xEF203A736C6F6F74;
  v71 = v9;
  v85 = (v9 + 8);
  v25 = v13;
  v26 = *(v73 + 16);
  v78 = *MEMORY[0x1E69A0DD0];
  v69 = *MEMORY[0x1E69A0DB8];
  v62 = *MEMORY[0x1E69A0DC8];
  v61 = *MEMORY[0x1E69A0DC0];
  v64 = (v86 + 8);
  v63 = "ing a raw prompt template";
  v60 = "{type: image_generator}";
  v67 = (v86 + 96);
  v66 = (v87 + 32);
  v68 = (v87 + 8);
  v75 = v26 - 1;
  v19.n128_u64[0] = 136315138;
  v57 = v19;
  v76 = v26;
  v77 = v2;
  v72 = v14;
  v82 = v23;
  while (1)
  {
    if (v22 == v26)
    {
      v27 = 1;
      v87 = v26;
      goto LABEL_8;
    }

    if (v22 >= v26)
    {
      break;
    }

    v28 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_30;
    }

    v30 = v70;
    v29 = v71;
    v31 = v73 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v22;
    v32 = *(v14 + 48);
    *v70 = v22;
    (*(v29 + 16))(&v30[v32], v31, v8);
    v33 = v30;
    v24 = v82;
    outlined init with take of Locale?(v33, v82, &_sSi6offset_29GenerativeFunctionsFoundation4ToolV7elementtMd, &_sSi6offset_29GenerativeFunctionsFoundation4ToolV7elementtMR);
    v27 = 0;
    v87 = v28;
LABEL_8:
    (*v84)(v24, v27, 1, v14);
    outlined init with take of Locale?(v24, v21, &_sSi6offset_29GenerativeFunctionsFoundation4ToolV7elementtSgMd, &_sSi6offset_29GenerativeFunctionsFoundation4ToolV7elementtSgMR);
    if ((*v83)(v21, 1, v14) == 1)
    {
      return;
    }

    v86 = *v21;
    (*v80)(v25, &v21[*(v14 + 48)], v8);
    Tool.type.getter();
    v34 = (*v79)(v7, v3);
    if (v34 == v78)
    {
      (*v67)(v7, v3);
      v35 = v65;
      (*v66)(v2, v7, v65);
      v36 = v81;
      v37 = functionDefinition(_:)(v2);
      if (v36)
      {
        (*v68)(v2, v35);
        (*v85)(v25, v8);

        return;
      }

      v81 = 0;
      MEMORY[0x1AC57C120](v37);

      (*v68)(v2, v35);
      v14 = v72;
      v24 = v82;
      v38 = v86;
    }

    else
    {
      if (v34 == v69)
      {
        MEMORY[0x1AC57C120](0xD00000000000001BLL, v63 | 0x8000000000000000);
        (*v64)(v7, v3);
        v38 = v86;
        goto LABEL_25;
      }

      if (v34 == v62)
      {
        v39 = 0xD000000000000013;
        v40 = v60 | 0x8000000000000000;
LABEL_18:
        MEMORY[0x1AC57C120](v39, v40);
        v38 = v86;
        goto LABEL_25;
      }

      if (v34 == v61)
      {
        v40 = v63 | 0x8000000000000000;
        v39 = 0xD00000000000001BLL;
        goto LABEL_18;
      }

      if (one-time initialization token for prompt != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      __swift_project_value_buffer(v41, static Log.prompt);
      v42 = v59;
      (*v74)(v59, v25, v8);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v53 = v45;
        v56 = swift_slowAlloc();
        v90 = v56;
        *v45 = v57.n128_u32[0];
        v55 = v44;
        v54 = v43;
        Tool.type.getter();
        v46 = String.init<A>(describing:)();
        v48 = v47;
        (*v85)(v42, v8);
        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v90);
        v24 = v82;

        v50 = v53;
        *(v53 + 1) = v49;
        v51 = v54;
        _os_log_impl(&dword_1A8E85000, v54, v55, "Unknown tool type: %s\nThis tool was not rendered into the prompt!", v50, 0xCu);
        v52 = v56;
        __swift_destroy_boxed_opaque_existential_0(v56);
        MEMORY[0x1AC57DBF0](v52, -1, -1);
        MEMORY[0x1AC57DBF0](v50, -1, -1);
      }

      else
      {

        (*v85)(v42, v8);
      }

      v38 = v86;
      (*v64)(v7, v3);
      v14 = v72;
    }

LABEL_25:
    if (v38 < v75)
    {
      MEMORY[0x1AC57C120](10, 0xE100000000000000);
    }

    (*v85)(v25, v8);
    v26 = v76;
    v2 = v77;
    v22 = v87;
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

unint64_t specialized ToolCallingFormatV4.render(functionCalls:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v15 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = (a1 + 56);
    do
    {
      v5 = *(v3 - 3);
      v4 = *(v3 - 2);
      v7 = *(v3 - 1);
      v6 = *v3;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      _StringGuts.grow(_:)(31);

      MEMORY[0x1AC57C120](v5, v4);

      MEMORY[0x1AC57C120](0xD000000000000010, 0x80000001A8FD90A0);
      MEMORY[0x1AC57C120](v7, v6);

      MEMORY[0x1AC57C120](125, 0xE100000000000000);

      v9 = *(v15 + 16);
      v8 = *(v15 + 24);
      if (v9 >= v8 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
      }

      *(v15 + 16) = v9 + 1;
      v10 = v15 + 16 * v9;
      *(v10 + 32) = 0x3A22656D616E227BLL;
      *(v10 + 40) = 0xEA00000000002220;
      v3 += 4;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v11 = BidirectionalCollection<>.joined(separator:)();
  v13 = v12;

  MEMORY[0x1AC57C120](v11, v13);

  MEMORY[0x1AC57C120](93, 0xE100000000000000);

  MEMORY[0x1AC57C120](0xD000000000000013, 0x80000001A8FD9080);

  return 0xD000000000000020;
}

uint64_t specialized ToolCallingConvention.render(toolCalls:)(uint64_t a1, uint64_t (*a2)(char *))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 72);
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      v6 = *(v3 - 3);
      v5 = *(v3 - 2);
      v8 = *(v3 - 1);
      v7 = *v3;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
      }

      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v4);
      }

      *(v4 + 2) = v10 + 1;
      v11 = &v4[32 * v10];
      *(v11 + 4) = v6;
      *(v11 + 5) = v5;
      *(v11 + 6) = v8;
      *(v11 + 7) = v7;
      v3 += 8;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v12 = a2(v4);

  return v12;
}

unint64_t specialized ToolCallingFormatV4.render(tools:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Tool.Function();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v73 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for Tool.Type();
  v7 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v59 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v50 - v10;
  v81 = type metadata accessor for Tool();
  MEMORY[0x1EEE9AC00](v81);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v74 = &v50 - v16;
  v65 = 0xD000000000000011;
  v82 = 0xD000000000000011;
  v83 = 0x80000001A8FDA9D0;
  v17 = *(a1 + 16);
  if (v17)
  {
    v60 = v13;
    v19 = *(v14 + 16);
    v18 = v14 + 16;
    v78 = v19;
    v20 = a1 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v77 = (v7 + 88);
    v21 = (v18 - 8);
    v68 = (v7 + 8);
    v76 = *MEMORY[0x1E69A0DD0];
    v72 = *MEMORY[0x1E69A0DB8];
    v66 = *MEMORY[0x1E69A0DB0];
    v64 = *MEMORY[0x1E69A0DC8];
    v62 = *MEMORY[0x1E69A0DC0];
    v67 = "ing a raw prompt template";
    v61 = "{type: image_generator}";
    v63 = "\nAvailable tools:";
    v69 = (v5 + 32);
    v70 = (v7 + 96);
    v71 = (v5 + 8);
    v79 = v18;
    v75 = *(v18 + 56);
    v15.n128_u64[0] = 136315138;
    v58 = v15;
    v22 = v74;
    v19(v74, v20, v81);
    while (1)
    {
      MEMORY[0x1AC57C120](10, 0xE100000000000000);
      Tool.type.getter();
      v25 = (*v77)(v11, v80);
      if (v25 != v76)
      {
        break;
      }

      (*v70)(v11, v80);
      v26 = v73;
      (*v69)(v73, v11, v4);
      v27 = functionDefinition(_:)(v26);
      if (v2)
      {
        (*v71)(v26, v4);
        (*v21)(v22, v81);

        return v65;
      }

      MEMORY[0x1AC57C120](v27);

      v28 = v26;
      v29 = v81;
      v22 = v74;
      (*v71)(v28, v4);
      (*v21)(v22, v29);
      v2 = 0;
LABEL_5:
      v20 += v75;
      if (!--v17)
      {
        return v82;
      }

      v78(v22, v20, v81);
    }

    if (v25 == v72)
    {
      v30 = 0xD00000000000001BLL;
      v31 = v67;
    }

    else
    {
      if (v25 != v66)
      {
        if (v25 == v64)
        {
          v23 = 0xD000000000000013;
          v24 = v61;
LABEL_4:
          MEMORY[0x1AC57C120](v23, v24 | 0x8000000000000000);
          (*v21)(v22, v81);
          goto LABEL_5;
        }

        if (v25 == v62)
        {
          v23 = 0xD00000000000001BLL;
          v24 = v67;
          goto LABEL_4;
        }

        if (one-time initialization token for prompt != -1)
        {
          swift_once();
        }

        v32 = type metadata accessor for Logger();
        __swift_project_value_buffer(v32, static Log.prompt);
        v33 = v60;
        v78(v60, v22, v81);
        v34 = Logger.logObject.getter();
        v57 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v34, v57))
        {
          v35 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v84 = v53;
          *v35 = v58.n128_u32[0];
          v56 = v20;
          v55 = v17;
          v52 = v34;
          v36 = v60;
          Tool.type.getter();
          v37 = String.init<A>(describing:)();
          v38 = v4;
          v39 = v2;
          v41 = v40;
          v54 = *v21;
          v54(v36, v81);
          v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v41, &v84);
          v2 = v39;
          v4 = v38;
          v17 = v55;
          v20 = v56;

          v43 = v35;
          v51 = v35;
          *(v35 + 4) = v42;
          v44 = v52;
          _os_log_impl(&dword_1A8E85000, v52, v57, "Unknown tool type: %s\nThis tool was not rendered into the prompt!", v43, 0xCu);
          v45 = v53;
          __swift_destroy_boxed_opaque_existential_0(v53);
          MEMORY[0x1AC57DBF0](v45, -1, -1);
          MEMORY[0x1AC57DBF0](v51, -1, -1);

          v54(v22, v81);
        }

        else
        {

          v46 = *v21;
          v47 = v33;
          v48 = v81;
          (*v21)(v47, v81);
          v46(v22, v48);
        }

        goto LABEL_15;
      }

      v30 = 0xD00000000000001ALL;
      v31 = v63;
    }

    MEMORY[0x1AC57C120](v30, v31 | 0x8000000000000000);
    (*v21)(v22, v81);
LABEL_15:
    (*v68)(v11, v80);
    goto LABEL_5;
  }

  return v65;
}

uint64_t ToolCallParser.FunctionDelta.toolCallID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ToolCallParser.FunctionDelta.toolCallID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ToolCallParser.FunctionDelta.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ToolCallParser.FunctionDelta.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ToolCallParser.FunctionDelta.arguments.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ToolCallParser.FunctionDelta.arguments.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t static ToolCallParser.FunctionDelta.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v2 != v6 || v4 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ToolCallParser.FunctionDelta(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v2 != v6 || v4 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void __swiftcall ToolCallParser.init(version:)(TokenGenerationCore::ToolCallParser *__return_ptr retstr, TokenGenerationCore::PromptPreprocessingTemplateVersion version)
{
  if (*version)
  {
    retstr->parser.isToolCallInProgress = 0;
    retstr->parser.currentToolCallID.value._countAndFlagsBits = 0;
    retstr->parser.currentToolCallID.value._object = 0;
    retstr->parser.bufferedText._countAndFlagsBits = 0;
    retstr->parser.bufferedText._object = 0xE000000000000000;
    retstr->parser.parser.objectParser.depth = 0;
    retstr->parser.parser.objectParser.isFinished = 0;
    retstr->parser.parser.objectParser.object.value._countAndFlagsBits = 0;
    retstr->parser.parser.objectParser.object.value._object = 0;
    *&retstr->parser.parser.objectParser.isParsingString = 0;
    retstr->parser.parser.nameParser.prefixParser.constant._countAndFlagsBits = 0x203A22656D616E22;
    retstr->parser.parser.nameParser.prefixParser.constant._object = 0xE800000000000000;
    retstr->parser.parser.nameParser.prefixParser.isFinished = 0;
    retstr->parser.parser.nameParser.prefixParser.matched._countAndFlagsBits = 0;
    retstr->parser.parser.nameParser.prefixParser.matched._object = 0xE000000000000000;
    retstr->parser.parser.nameParser.valueParser.string._countAndFlagsBits = 0;
    retstr->parser.parser.nameParser.valueParser.string._object = 0xE000000000000000;
    *&retstr->parser.parser.nameParser.valueParser.isFinished = 0;
    retstr->parser.parser.nameParser.valueParser.isEscaped = 0;
    strcpy(&retstr->parser.parser.argumentsParser, "arguments: ");
    HIWORD(retstr->parser.parser.argumentsParser.prefixParser.constant._object) = -4864;
    retstr->parser.parser.argumentsParser.prefixParser.isFinished = 0;
    retstr->parser.parser.argumentsParser.prefixParser.matched._countAndFlagsBits = 0;
    retstr->parser.parser.argumentsParser.prefixParser.matched._object = 0xE000000000000000;
    retstr->parser.parser.argumentsParser.valueParser.depth = 0;
    retstr->parser.parser.argumentsParser.valueParser.isFinished = 0;
    retstr->parser.parser.argumentsParser.valueParser.object.value._countAndFlagsBits = 0;
    retstr->parser.parser.argumentsParser.valueParser.object.value._object = 0;
    *&retstr->parser.parser.argumentsParser.valueParser.isParsingString = 0;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

char *ToolCallParserV4.consume(string:)(uint64_t countAndFlagsBits, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (*v3 & 1) == 0 && (specialized Sequence<>.starts<A>(with:)(0xD000000000000012, 0x80000001A8FDAA90, countAndFlagsBits, a2) & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v11 = specialized Sequence<>.starts<A>(with:)(0xD000000000000012, 0x80000001A8FDAA90, countAndFlagsBits, a2);
  v117 = v9;
  v118 = v6;
  if (v11)
  {

    *(v3 + 24) = 0xD000000000000012;
    *(v3 + 32) = 0x80000001A8FDAA90;
    *v3 = 1;
    UUID.init()();
    v12 = UUID.uuidString.getter();
    v13 = v7;
    v15 = v14;
    v123 = v13;
    (*(v13 + 8))(v9, v6);

    *(v3 + 8) = v12;
    *(v3 + 16) = v15;

    v16 = String.count.getter();
    v17 = specialized Collection.dropFirst(_:)(v16, countAndFlagsBits, a2);
    v19 = v18;
    v21 = v20;
    v23 = v22;

    countAndFlagsBits = MEMORY[0x1AC57C040](v17, v19, v21, v23);
    a2 = v24;

    if (one-time initialization token for tools != -1)
    {
      goto LABEL_161;
    }

    goto LABEL_8;
  }

  while (2)
  {
    v30._countAndFlagsBits = 0xD000000000000010;
    v30._object = 0x80000001A8FDAAB0;
    v119 = String.hasSuffix(_:)(v30);
    v142 = 0;
    v143 = 0xE000000000000000;
    v31 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v31 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    v141[0] = countAndFlagsBits;
    v141[1] = a2;
    v141[2] = 0;
    v141[3] = v31;
    v33 = String.Iterator.next()();
    if (v33.value._object)
    {
      countAndFlagsBits = v33.value._countAndFlagsBits;
      object = v33.value._object;
      v116 = (v7 + 8);
      v120 = MEMORY[0x1E69E7CC0];
      v32.value._countAndFlagsBits = 136315138;
      v115 = v32;
      v121 = xmmword_1A8FD1F70;
      while (1)
      {
        v35 = *(v3 + 192);
        if (*(v3 + 48))
        {
          v36 = 1;
          if (!*(v3 + 64))
          {
            goto LABEL_117;
          }

          goto LABEL_54;
        }

        if (*(v3 + 64))
        {
          goto LABEL_25;
        }

        if (countAndFlagsBits == 123 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

LABEL_53:
        v36 = 0;
        if (!*(v3 + 64))
        {
          goto LABEL_117;
        }

LABEL_54:
        if (*(v3 + 136) != 1)
        {
          if (*(v3 + 96))
          {
            if (*(v3 + 137) == 1)
            {
              if (*(v3 + 138))
              {
                MEMORY[0x1AC57C110](countAndFlagsBits, object);
                *(v3 + 138) = 0;
              }

              else if (countAndFlagsBits == 34 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                *(v3 + 136) = 1;
              }

              else
              {
                MEMORY[0x1AC57C110](countAndFlagsBits, object);
                if (countAndFlagsBits == 92 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  *(v3 + 138) = 1;
                }
              }
            }

            else if (countAndFlagsBits == 34 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              *(v3 + 137) = 1;
            }
          }

          else
          {
            LODWORD(v122) = v36;
            LODWORD(v123) = v35;
            v42 = *(v3 + 112);
            v129._countAndFlagsBits = *(v3 + 104);
            v129._object = v42;

            MEMORY[0x1AC57C120](countAndFlagsBits, object);
            v44 = v129._object;
            v43 = v129._countAndFlagsBits;
            v45 = *(v3 + 80);
            v46 = *(v3 + 88);
            v47 = String.hasPrefix(_:)(v129);

            if (!v47)
            {

              v43 = 0;
              v44 = 0xE000000000000000;
            }

            *(v3 + 104) = v43;
            *(v3 + 112) = v44;
            if (v43 == v45 && v44 == v46)
            {
              v48 = 1;
            }

            else
            {
              v48 = _stringCompareWithSmolCheck(_:_:expecting:)();
            }

            LOBYTE(v35) = v123;
            v36 = v122;
            *(v3 + 96) = v48 & 1;
          }

          goto LABEL_117;
        }

        if ((v35 & 1) == 0)
        {
          if ((*(v3 + 160) & 1) == 0)
          {
            LODWORD(v122) = v36;
            LODWORD(v123) = v35;
            v49 = *(v3 + 176);
            v129._countAndFlagsBits = *(v3 + 168);
            v129._object = v49;

            MEMORY[0x1AC57C120](countAndFlagsBits, object);
            v51 = v129._object;
            v50 = v129._countAndFlagsBits;
            v52 = *(v3 + 144);
            v53 = *(v3 + 152);
            v54 = String.hasPrefix(_:)(v129);

            if (!v54)
            {

              v50 = 0;
              v51 = 0xE000000000000000;
            }

            *(v3 + 168) = v50;
            *(v3 + 176) = v51;
            if (v50 == v52 && v51 == v53)
            {
              v55 = 1;
            }

            else
            {
              v55 = _stringCompareWithSmolCheck(_:_:expecting:)();
            }

            LOBYTE(v35) = v123;
            v36 = v122;
            *(v3 + 160) = v55 & 1;
            goto LABEL_117;
          }

          if (!*(v3 + 208))
          {
            if ((countAndFlagsBits != 123 || object != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              goto LABEL_117;
            }

            *(v3 + 200) = v121;
          }

          MEMORY[0x1AC57C110](countAndFlagsBits, object);
          if (*(v3 + 216) == 1)
          {
            if (*(v3 + 217))
            {
              *(v3 + 217) = 0;
            }

            else
            {
              if (countAndFlagsBits == 92 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                *(v3 + 217) = 1;
              }

              if (countAndFlagsBits == 34 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                *(v3 + 216) = 0;
              }
            }
          }

          else
          {
            if (countAndFlagsBits == 34 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              *(v3 + 216) = 1;
            }

            if (countAndFlagsBits == 123 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              v56 = *(v3 + 184);
              v38 = __OFADD__(v56, 1);
              v57 = v56 + 1;
              if (v38)
              {
                goto LABEL_159;
              }

              *(v3 + 184) = v57;
            }

            if (countAndFlagsBits == 125 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              v58 = *(v3 + 184);
              v38 = __OFSUB__(v58, 1);
              v59 = v58 - 1;
              if (v38)
              {
                goto LABEL_160;
              }

              *(v3 + 184) = v59;
              *(v3 + 192) = v59 == 0;
            }
          }
        }

LABEL_117:
        MEMORY[0x1AC57C110](countAndFlagsBits, object);
        a2 = *(v3 + 16);
        if (!a2 || (*(v3 + 96) & 1) == 0 || *(v3 + 160) != 1 || !*(v3 + 208))
        {
          goto LABEL_121;
        }

        v123 = *(v3 + 8);
        v61 = v35;
        v63 = *(v3 + 120);
        v62 = *(v3 + 128);

        if ((v61 & 1) == 0)
        {
          MEMORY[0x1AC57C110](countAndFlagsBits, object);
        }

        if (v36)
        {
          v64 = v143;
          v122 = v142;
          swift_bridgeObjectRetain_n();

          v65 = v120;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v65 + 2) + 1, 1, v65);
          }

          v66 = v63;
          v68 = *(v65 + 2);
          v67 = *(v65 + 3);
          v69 = v123;
          if (v68 >= v67 >> 1)
          {
            v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1, v65);
          }

          *(v65 + 2) = v68 + 1;
          v120 = v65;
          v70 = &v65[48 * v68];
          *(v70 + 4) = v69;
          *(v70 + 5) = a2;
          *(v70 + 6) = v66;
          *(v70 + 7) = v62;
          *(v70 + 8) = v122;
          *(v70 + 9) = v64;
          if (one-time initialization token for tools != -1)
          {
            swift_once();
          }

          v71 = type metadata accessor for Logger();
          __swift_project_value_buffer(v71, static Log.tools);

          v72 = Logger.logObject.getter();
          v73 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            v114 = v72;
            v75 = v74;
            v76 = swift_slowAlloc();
            v124 = v76;
            *v75 = v115.value._countAndFlagsBits;
            v129._countAndFlagsBits = v69;
            v129._object = a2;
            *&v130 = v66;
            *(&v130 + 1) = v62;
            *&v131 = v122;
            *(&v131 + 1) = v64;
            v77 = String.init<A>(describing:)();
            v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, &v124);

            *(v75 + 4) = v79;
            v80 = v114;
            _os_log_impl(&dword_1A8E85000, v114, v73, "Parsed function delta: %s", v75, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v76);
            MEMORY[0x1AC57DBF0](v76, -1, -1);
            MEMORY[0x1AC57DBF0](v75, -1, -1);
          }

          else
          {
          }

          v81 = v117;
          v142 = 0;
          v143 = 0xE000000000000000;
          UUID.init()();
          v82 = UUID.uuidString.getter();
          v84 = v83;
          (*v116)(v81, v118);

          *(v3 + 8) = v82;
          *(v3 + 16) = v84;
          v85 = *(v3 + 168);
          v86 = *(v3 + 200);
          v138 = *(v3 + 184);
          v139 = v86;
          v140 = *(v3 + 216);
          v87 = *(v3 + 120);
          v133 = *(v3 + 104);
          v134 = v87;
          v135 = *(v3 + 136);
          v136 = *(v3 + 152);
          v137 = v85;
          v88 = *(v3 + 56);
          v129 = *(v3 + 40);
          v130 = v88;
          v89 = *(v3 + 88);
          v131 = *(v3 + 72);
          v132 = v89;
          outlined destroy of ToolCallParserV4.CallParser(&v129);
          *(v3 + 40) = 0;
          *(v3 + 48) = 0;
          *(v3 + 49) = v124;
          *(v3 + 52) = *(&v124 + 3);
          *(v3 + 56) = 0;
          *(v3 + 64) = 0;
          *(v3 + 72) = 0;
          *(v3 + 74) = v127;
          *(v3 + 78) = v128;
          *(v3 + 80) = 0x203A22656D616E22;
          *(v3 + 88) = 0xE800000000000000;
          *(v3 + 96) = 0;
          *(v3 + 104) = 0;
          *(v3 + 112) = 0xE000000000000000;
          *(v3 + 120) = 0;
          *(v3 + 128) = 0xE000000000000000;
          *(v3 + 136) = 0;
          *(v3 + 138) = 0;
          *(v3 + 139) = v125;
          *(v3 + 143) = v126;
          strcpy((v3 + 144), "arguments: ");
          *(v3 + 158) = -4864;
          *(v3 + 160) = 0;
          *(v3 + 168) = 0;
          *(v3 + 176) = 0xE000000000000000;
          *(v3 + 184) = 0;
          *(v3 + 192) = 0;
          *(v3 + 200) = 0;
          *(v3 + 208) = 0;
          *(v3 + 216) = 0;
        }

        else
        {
LABEL_121:
        }

        v60 = String.Iterator.next()();
        countAndFlagsBits = v60.value._countAndFlagsBits;
        object = v60.value._object;
        if (!v60.value._object)
        {
          goto LABEL_139;
        }
      }

      *(v3 + 56) = v121;
LABEL_25:
      MEMORY[0x1AC57C110](countAndFlagsBits, object);
      if (*(v3 + 72) == 1)
      {
        if (*(v3 + 73))
        {
          v36 = 0;
          *(v3 + 73) = 0;
          if (!*(v3 + 64))
          {
            goto LABEL_117;
          }

          goto LABEL_54;
        }

        if (countAndFlagsBits == 92 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          *(v3 + 73) = 1;
        }

        if (countAndFlagsBits == 34 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v36 = 0;
          *(v3 + 72) = 0;
          if (!*(v3 + 64))
          {
            goto LABEL_117;
          }

          goto LABEL_54;
        }
      }

      else
      {
        if (countAndFlagsBits == 34 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          *(v3 + 72) = 1;
        }

        if (countAndFlagsBits == 123 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v37 = *(v3 + 40);
          v38 = __OFADD__(v37, 1);
          v39 = v37 + 1;
          if (v38)
          {
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            swift_once();
LABEL_8:
            v25 = type metadata accessor for Logger();
            __swift_project_value_buffer(v25, static Log.tools);
            v26 = Logger.logObject.getter();
            v27 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v26, v27))
            {
              v28 = swift_slowAlloc();
              *v28 = 0;
              _os_log_impl(&dword_1A8E85000, v26, v27, "Started tool calling", v28, 2u);
              MEMORY[0x1AC57DBF0](v28, -1, -1);
            }

            v7 = v123;
            continue;
          }

          *(v3 + 40) = v39;
        }

        if (countAndFlagsBits == 125 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v40 = *(v3 + 40);
          v38 = __OFSUB__(v40, 1);
          v41 = v40 - 1;
          if (v38)
          {
            goto LABEL_158;
          }

          *(v3 + 40) = v41;
          v36 = v41 == 0;
          *(v3 + 48) = v36;
          if (!*(v3 + 64))
          {
            goto LABEL_117;
          }

          goto LABEL_54;
        }
      }

      goto LABEL_53;
    }

    break;
  }

  v120 = MEMORY[0x1E69E7CC0];
LABEL_139:

  v90 = *(v3 + 16);
  if (v90)
  {
    v29 = v120;
    if ((*(v3 + 96) & 1) == 0)
    {
      goto LABEL_154;
    }

    v92 = v142;
    v91 = v143;
    v93 = HIBYTE(v143) & 0xF;
    if ((v143 & 0x2000000000000000) == 0)
    {
      v93 = v142 & 0xFFFFFFFFFFFFLL;
    }

    if (v93)
    {
      v123 = *(v3 + 8);
      v94 = *(v3 + 120);
      v95 = *(v3 + 128);
      v96 = one-time initialization token for tools;

      if (v96 != -1)
      {
        swift_once();
      }

      v97 = type metadata accessor for Logger();
      __swift_project_value_buffer(v97, static Log.tools);

      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.debug.getter();

      LODWORD(v118) = v99;
      v100 = os_log_type_enabled(v98, v99);
      v122 = v94;
      if (v100)
      {
        v101 = swift_slowAlloc();
        *&v121 = v92;
        v102 = v101;
        v103 = swift_slowAlloc();
        v141[0] = v103;
        *v102 = 136315138;
        v129._countAndFlagsBits = v123;
        v129._object = v90;
        *&v130 = v94;
        *(&v130 + 1) = v95;
        *&v131 = v121;
        *(&v131 + 1) = v91;

        v104 = String.init<A>(describing:)();
        v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v105, v141);

        *(v102 + 4) = v106;
        _os_log_impl(&dword_1A8E85000, v98, v118, "Parsed function delta: %s", v102, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v103);
        v29 = v120;
        MEMORY[0x1AC57DBF0](v103, -1, -1);
        v107 = v102;
        v92 = v121;
        MEMORY[0x1AC57DBF0](v107, -1, -1);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
      }

      v109 = *(v29 + 2);
      v108 = *(v29 + 3);
      if (v109 >= v108 >> 1)
      {
        v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v108 > 1), v109 + 1, 1, v29);
      }

      *(v29 + 2) = v109 + 1;
      v110 = &v29[48 * v109];
      v111 = v122;
      *(v110 + 4) = v123;
      *(v110 + 5) = v90;
      *(v110 + 6) = v111;
      *(v110 + 7) = v95;
      *(v110 + 8) = v92;
      *(v110 + 9) = v91;
    }

    else
    {
LABEL_154:
    }
  }

  else
  {

    v29 = v120;
  }

  $defer #1 () in ToolCallParserV4.consume(string:)(v119, v3);
  return v29;
}

__n128 __swift_memcpy218_8(uint64_t a1, uint64_t a2)
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
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 202) = *(a2 + 202);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ToolCallParser(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 218))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolCallParser(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 216) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 218) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 218) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void $defer #1 () in ToolCallParserV4.consume(string:)(char a1, uint64_t a2)
{
  if (a1)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;

    if (one-time initialization token for tools != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Log.tools);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1A8E85000, oslog, v3, "Finished tool calling", v4, 2u);
      MEMORY[0x1AC57DBF0](v4, -1, -1);
    }
  }
}

__n128 __swift_memcpy178_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 88);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ToolCallParserV4.CallParser(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 178))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolCallParserV4.CallParser(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 178) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 178) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy74_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ToolCallParserV4.ArgumentsParser(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 74))
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

uint64_t storeEnumTagSinglePayload for ToolCallParserV4.ArgumentsParser(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 74) = 1;
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

    *(result + 74) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy59_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 43) = *(a2 + 43);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ToolCallParserV4.NameParser(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 59))
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