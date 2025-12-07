uint64_t TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 632) = a1;
  *(v3 + 640) = v1;

  if (v1)
  {

    v4 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
  }

  else
  {
    v4 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 656) = v1;

  if (v1)
  {
    v5 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
  }

  else
  {
    *(v4 + 680) = a1;
    v5 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 672) = v1;

  if (v1)
  {
    v5 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
  }

  else
  {
    *(v4 + 688) = a1;
    v5 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{
  v3 = *v2;
  *(v3 + 736) = a1;
  *(v3 + 744) = v1;

  if (v1)
  {

    v4 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
  }

  else
  {
    v4 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 760) = v1;

  if (v1)
  {
    v5 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
  }

  else
  {
    *(v4 + 784) = a1;
    v5 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 776) = v1;

  if (v1)
  {
    v5 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
  }

  else
  {
    *(v4 + 792) = a1;
    v5 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = a7;
  v8[19] = a8;
  v8[16] = a4;
  v8[17] = a5;
  v8[14] = a2;
  v8[15] = a3;
  v8[13] = a1;
  v9 = type metadata accessor for CompletionPrompt();
  v8[20] = v9;
  v8[21] = *(v9 - 8);
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v10 = type metadata accessor for PromptVariant();
  v8[24] = v10;
  v8[25] = *(v10 - 8);
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v11 = type metadata accessor for Prompt();
  v8[28] = v11;
  v8[29] = *(v11 - 8);
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  v8[32] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
  v8[33] = swift_task_alloc();
  v12 = type metadata accessor for ChatMessagesPrompt();
  v8[34] = v12;
  v8[35] = *(v12 - 8);
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();
  v8[39] = swift_task_alloc();
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();
  v8[42] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
  v8[43] = swift_task_alloc();
  v8[44] = swift_task_alloc();
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();
  v8[47] = swift_task_alloc();
  v8[48] = type metadata accessor for ScrubbedPromptVariant(0);
  v8[49] = swift_task_alloc();
  v8[50] = swift_task_alloc();
  v8[51] = swift_task_alloc();
  v8[52] = swift_task_alloc();
  v8[53] = swift_task_alloc();
  v8[54] = swift_task_alloc();
  v8[55] = swift_task_alloc();
  v8[56] = swift_task_alloc();
  v8[57] = swift_task_alloc();
  v8[58] = swift_task_alloc();
  v8[59] = swift_task_alloc();
  v8[60] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  v8[61] = v13;
  v8[62] = *(v13 - 8);
  v8[63] = swift_task_alloc();
  v8[64] = swift_task_alloc();
  v8[65] = swift_task_alloc();
  v8[66] = swift_task_alloc();
  v8[67] = type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel(0);
  v8[68] = swift_task_alloc();
  v8[69] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v8[70] = swift_task_alloc();
  v8[71] = swift_task_alloc();
  v8[72] = swift_task_alloc();
  v8[73] = swift_task_alloc();
  v8[74] = swift_task_alloc();
  v8[75] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation14PromptTemplateV_0C06LocaleVSgtMd, &_s26GenerativeModelsFoundation14PromptTemplateV_0C06LocaleVSgtMR);
  v8[76] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v8[77] = swift_task_alloc();
  v14 = type metadata accessor for PromptTemplate();
  v8[78] = v14;
  v8[79] = *(v14 - 8);
  v8[80] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v8[81] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:), 0, 0);
}

uint64_t TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:)()
{
  v1 = v0[81];
  v2 = v0[14];
  v0[82] = GenerativeConfigurationProtocol.variableBindings.getter();
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, v1, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  GenerativeConfigurationProtocol.promptContent.getter();
  Array<A>.asPromptTemplate()();
  v3 = v0[74];
  v4 = v0[61];
  v5 = v0[62];

  v6 = *(v5 + 48);
  if (v6(v3, 1, v4) == 1)
  {
    v7 = v0[73];
    v8 = v0[72];
    v9 = v0[61];
    v10 = v0[62];
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[74], &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
    (*(v10 + 56))(v7, 1, 1, v9);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, v8, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
    v11 = v6(v8, 1, v9);
    v12 = v0[72];
    if (v11 == 1)
    {
      v13 = v0[15];

      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v12, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
      v41 = (v13 + *v13);
      v14 = swift_task_alloc();
      v0[92] = v14;
      *v14 = v0;
      v14[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
      v15 = v0[40];
    }

    else
    {
      v28 = v0[15];
      outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v0[72], v0[66], &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
      v41 = (v28 + *v28);
      v29 = swift_task_alloc();
      v0[83] = v29;
      *v29 = v0;
      v29[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
      v15 = v0[41];
    }
  }

  else
  {
    v16 = v0[79];
    v17 = v0[78];
    v18 = v0[76];
    v19 = v0[75];
    v42 = v6;
    v20 = v0[74];
    v37 = v0[77];
    v38 = v0[71];
    v39 = v0[62];
    v40 = v0[70];
    v35 = v0[80];
    v36 = v0[61];
    v33 = *(v19 + 48);
    v34 = *(v36 + 48);
    v21 = *(v16 + 32);
    v21(v18, v20, v17);
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v20 + v34, v18 + v33, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    v22 = *(v19 + 48);
    v21(v35, v18, v17);
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v18 + v22, v37, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    v23 = *(v36 + 48);
    (*(v16 + 16))(v38, v35, v17);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v37, v38 + v23, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    (*(v39 + 56))(v38, 0, 1, v36);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v38, v40, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
    v24 = v42(v40, 1, v36);
    v25 = v0[70];
    if (v24 == 1)
    {
      v26 = v0[15];

      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
      v41 = (v26 + *v26);
      v27 = swift_task_alloc();
      v0[111] = v27;
      *v27 = v0;
      v27[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
      v15 = v0[37];
    }

    else
    {
      v30 = v0[15];
      outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v0[70], v0[63], &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
      v41 = (v30 + *v30);
      v31 = swift_task_alloc();
      v0[102] = v31;
      *v31 = v0;
      v31[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
      v15 = v0[38];
    }
  }

  return v41(v15);
}

{
  v2 = *v1;
  v2[84] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:), 0, 0);
  }

  else
  {
    type metadata accessor for TokenGenerator();
    v3 = swift_task_alloc();
    v2[85] = v3;
    *v3 = v2;
    v3[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
    v4 = v2[81];
    v5 = v2[47];
    v6 = v2[41];

    return static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:)(v5, v6, v4);
  }
}

{
  v2 = *v1;
  v2[86] = v0;

  v3 = v2[41];
  v4 = v2[35];
  v5 = v2[34];
  v8 = *(v4 + 8);
  v6 = v4 + 8;
  v7 = v8;
  if (v0)
  {
    v7(v3, v5);
    v9 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  }

  else
  {
    v2[87] = v7;
    v2[88] = v6 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v3, v5);
    v9 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

{
  v1 = v0[73];
  v2 = v0[66];

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v3 = v0[14];
  (*(*(v0[18] - 8) + 8))(v0[17]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v4 = v0[1];

  return v4();
}

{
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v0[47], v0[60], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  v0[89] = v1;
  *v1 = v0;
  v1[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  v2 = v0[82];

  return Dictionary<>.richVariableBindings()(v2);
}

{
  v1 = v0[73];
  v2 = v0[66];

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v3 = v0[14];
  (*(*(v0[18] - 8) + 8))(v0[17]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v4 = v0[1];

  return v4();
}

{
  v2 = *v1;
  v2[93] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:), 0, 0);
  }

  else
  {
    type metadata accessor for TokenGenerator();
    v3 = swift_task_alloc();
    v2[94] = v3;
    *v3 = v2;
    v3[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
    v4 = v2[81];
    v5 = v2[46];
    v6 = v2[40];

    return static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:)(v5, v6, v4);
  }
}

{
  v2 = *v1;
  *(*v1 + 760) = v0;

  (*(v2[35] + 8))(v2[40], v2[34]);
  if (v0)
  {
    v3 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  }

  else
  {
    v3 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[73], &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v1 = v0[14];
  (*(*(v0[18] - 8) + 8))(v0[17]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v2 = v0[1];

  return v2();
}

{
  v1 = v0[73];
  v3 = v0[58];
  v2 = v0[59];
  v4 = v0[25];
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v0[46], v2, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
  swift_storeEnumTagMultiPayload();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  outlined init with copy of PromptCompletion(v2, v3, type metadata accessor for ScrubbedPromptVariant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = v0[58];
  if (EnumCaseMultiPayload == 1)
  {
    v7 = v0 + 45;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v6, v0[45], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    v8 = MEMORY[0x1E69DA6E8];
    v9 = 34;
    v10 = 35;
  }

  else
  {
    v7 = v0 + 33;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v6, v0[33], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    v8 = MEMORY[0x1E69DA6E0];
    v9 = 20;
    v10 = 21;
  }

  v11 = v0[59];
  v12 = v0[69];
  v13 = v0[24];
  v15 = v0[17];
  v14 = v0[18];
  v16 = v0[13];
  v19 = v0[14];
  (*(v0[v10] + 32))(v12, *v7, v0[v9]);
  (*(v4 + 104))(v12, *v8, v13);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v11, type metadata accessor for ScrubbedPromptVariant);
  swift_storeEnumTagMultiPayload();
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v12, v16, type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  (*(*(v14 - 8) + 8))(v15, v14);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v19, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v17 = v0[1];

  return v17();
}

{
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[73], &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v1 = v0[14];
  (*(*(v0[18] - 8) + 8))(v0[17]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v2 = v0[1];

  return v2();
}

{
  outlined init with copy of PromptCompletion(v0[60], v0[57], type metadata accessor for ScrubbedPromptVariant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[57];
  if (EnumCaseMultiPayload == 1)
  {
    v3 = v0[45];
    v4 = v0[42];
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v2, v3, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    LOBYTE(v4) = *(v3 + *(v4 + 36));
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    if ((v4 & 1) == 0)
    {
LABEL_3:

      v5 = v0[79];
      v6 = v0[78];
      v72 = v0[73];
      v7 = v0[66];
      v8 = v0[65];
      v9 = v0[64];
      v10 = v0[61];
      v73 = v0[55];
      v74 = v0[60];
      v78 = v0[25];
      v79 = v0[69];
      v77 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMd, &_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMR) + 48);
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, v8, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
      v71 = *(v10 + 48);
      PromptTemplate.templateID.getter();
      v11 = *(v5 + 8);
      v11(v8, v6);
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, v9, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
      PromptTemplateInfo.init(templateID:richVariableBindings:locale:)();
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v72, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
      v11(v9, v6);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8 + v71, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      outlined init with copy of PromptCompletion(v74, v73, type metadata accessor for ScrubbedPromptVariant);
      v12 = swift_getEnumCaseMultiPayload();
      v13 = v0[55];
      if (v12 == 1)
      {
        v14 = v0 + 45;
        outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v13, v0[45], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
        v15 = MEMORY[0x1E69DA6E8];
        v16 = 34;
        v17 = 35;
      }

      else
      {
        v14 = v0 + 33;
        outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v13, v0[33], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
        v15 = MEMORY[0x1E69DA6E0];
        v16 = 20;
        v17 = 21;
      }

      v29 = v0[60];
      v30 = *v14;
      v31 = v0[69];
      v32 = v0[24];
      v33 = v0[18];
      v34 = v0[13];
      v75 = v0[17];
      v76 = v0[14];
      (*(v0[v17] + 32))(v79 + v77, v30, v0[v16]);
      (*(v78 + 104))(v79 + v77, *v15, v32);
      outlined destroy of TokenGeneratorCompletionResponseStringStream(v29, type metadata accessor for ScrubbedPromptVariant);
      swift_storeEnumTagMultiPayload();
      outlined init with take of TokenGeneratorResponsePromptCompletionStream(v31, v34, type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
      (*(*(v33 - 8) + 8))(v75, v33);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v76, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

      v28 = v0[1];
      goto LABEL_10;
    }
  }

  else
  {
    v19 = v0[32];
    v18 = v0[33];
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v2, v18, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    LODWORD(v19) = *(v18 + *(v19 + 36));
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    if (v19 != 1)
    {
      goto LABEL_3;
    }
  }

  v20 = v0[91];
  v21 = type metadata accessor for CatalogClient();
  swift_allocObject();
  v22 = CatalogClient.init()();
  v23 = MEMORY[0x1E69DA6B8];
  v0[5] = v21;
  v0[6] = v23;
  v0[2] = v22;
  PromptTemplate.loadPromptTemplate(catalogClient:)();
  if (v20)
  {
    v24 = v0[73];
    v25 = v0[66];
    v26 = v0[60];

    outlined destroy of TokenGeneratorCompletionResponseStringStream(v26, type metadata accessor for ScrubbedPromptVariant);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v24, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v27 = v0[14];
    (*(*(v0[18] - 8) + 8))(v0[17]);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

    v28 = v0[1];
LABEL_10:

    return v28();
  }

  v36 = v0[60];
  v37 = v0[56];
  v38 = v0[25];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  outlined init with copy of PromptCompletion(v36, v37, type metadata accessor for ScrubbedPromptVariant);
  v39 = swift_getEnumCaseMultiPayload();
  v40 = (v38 + 104);
  v41 = v0[56];
  if (v39 == 1)
  {
    v42 = v0[45];
    v43 = v0[34];
    v44 = v0[35];
    v45 = v0[27];
    v46 = v0[24];
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v41, v42, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    (*(v44 + 32))(v45, v42, v43);
    (*v40)(v45, *MEMORY[0x1E69DA6E8], v46);
    v47 = *MEMORY[0x1E69DA6E0];
  }

  else
  {
    v48 = v0[33];
    v49 = v0[27];
    v50 = v0[24];
    v51 = v0[20];
    v52 = v0[21];
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v41, v48, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    (*(v52 + 32))(v49, v48, v51);
    v47 = *MEMORY[0x1E69DA6E0];
    (*v40)(v49, *MEMORY[0x1E69DA6E0], v50);
  }

  v53 = (*(v0[25] + 88))(v0[27], v0[24]);
  if (v53 == v47)
  {
    v54 = v0[27];
    v55 = v0[24];
    v56 = v0[25];
    v57 = v0[23];
    v58 = v0[20];
    v59 = v0[21];

    (*(v56 + 96))(v54, v55);
    (*(v59 + 32))(v57, v54, v58);
    v80 = _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN010CompletionK0V_Tt2g5;
    v60 = swift_task_alloc();
    v0[96] = v60;
    *v60 = v0;
    v60[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
    v61 = v0[90];
    v62 = v0[31];
    v63 = v0[23];
LABEL_20:

    return v80(v62, v61, v63);
  }

  if (v53 == *MEMORY[0x1E69DA6E8])
  {
    v64 = v0[39];
    v65 = v0[34];
    v66 = v0[35];
    v67 = v0[27];
    v68 = v0[24];
    v69 = v0[25];

    (*(v69 + 96))(v67, v68);
    (*(v66 + 32))(v64, v67, v65);
    v80 = _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN012ChatMessagesK0V_Tt2g5;
    v70 = swift_task_alloc();
    v0[98] = v70;
    *v70 = v0;
    v70[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
    v61 = v0[90];
    v63 = v0[39];
    v62 = v0[31];
    goto LABEL_20;
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  return _diagnoseUnexpectedEnumCase<A>(type:)();
}

{
  v1 = v0[73];
  v2 = v0[66];
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v0[60], type metadata accessor for ScrubbedPromptVariant);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v3 = v0[14];
  (*(*(v0[18] - 8) + 8))(v0[17]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v4 = v0[1];

  return v4();
}

{
  v1 = v0;
  v3 = v0[21];
  v2 = v0 + 21;
  v4 = v2[10];
  v5 = v2[7];
  v6 = v2[8];
  (*(v3 + 8))(v2[2], *(v2 - 1));
  (*(v6 + 8))(v4, v5);
  v8 = v2[57];
  v7 = v2[58];
  v28 = v2[52];
  v9 = v2[44];
  v10 = v2[45];
  v26 = v2[43];
  v11 = v2[40];
  v29 = v2[34];
  v30 = v2[39];
  v34 = v2[4];
  v35 = v2[48];
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMd, &_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMR) + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, v9, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  v27 = *(v11 + 48);
  PromptTemplate.templateID.getter();
  v12 = *(v7 + 8);
  v12(v9, v8);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, v26, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  PromptTemplateInfo.init(templateID:richVariableBindings:locale:)();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v12(v26, v8);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9 + v27, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  outlined init with copy of PromptCompletion(v30, v29, type metadata accessor for ScrubbedPromptVariant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = v2[34];
  if (EnumCaseMultiPayload == 1)
  {
    v15 = v1 + 45;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v14, v1[45], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    v2 = v1 + 35;
    v16 = v1 + 34;
    v17 = MEMORY[0x1E69DA6E8];
  }

  else
  {
    v15 = v1 + 33;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v14, v1[33], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    v17 = MEMORY[0x1E69DA6E0];
    v16 = v2 - 1;
  }

  v18 = v1[60];
  v19 = *v15;
  v20 = v1[69];
  v21 = v1[24];
  v22 = v1[18];
  v23 = v1[13];
  v31 = v1[17];
  v32 = v1[14];
  (*(*v2 + 32))(v35 + v33, v19, *v16);
  (*(v34 + 104))(v35 + v33, *v17, v21);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v18, type metadata accessor for ScrubbedPromptVariant);
  swift_storeEnumTagMultiPayload();
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v20, v23, type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  (*(*(v22 - 8) + 8))(v31, v22);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v32, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v24 = v1[1];

  return v24();
}

{
  v1 = v0[73];
  v2 = v0[66];
  v3 = v0[60];
  v4 = v0[31];
  v5 = v0[28];
  v6 = v0[29];
  (*(v0[21] + 8))(v0[23], v0[20]);
  (*(v6 + 8))(v4, v5);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v3, type metadata accessor for ScrubbedPromptVariant);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v7 = v0[14];
  (*(*(v0[18] - 8) + 8))(v0[17]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v8 = v0[1];

  return v8();
}

{
  v1 = *(v0 + 248);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  (*(v0 + 696))(*(v0 + 312), *(v0 + 272));
  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 632);
  v5 = *(v0 + 624);
  v26 = *(v0 + 584);
  v6 = *(v0 + 528);
  v7 = *(v0 + 520);
  v8 = *(v0 + 512);
  v9 = *(v0 + 488);
  v27 = *(v0 + 440);
  v28 = *(v0 + 480);
  v32 = *(v0 + 200);
  v33 = *(v0 + 552);
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMd, &_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMR) + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v6, v7, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  v25 = *(v9 + 48);
  PromptTemplate.templateID.getter();
  v10 = *(v4 + 8);
  v10(v7, v5);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v6, v8, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  PromptTemplateInfo.init(templateID:richVariableBindings:locale:)();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v6, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v26, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v10(v8, v5);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7 + v25, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  outlined init with copy of PromptCompletion(v28, v27, type metadata accessor for ScrubbedPromptVariant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = *(v0 + 440);
  if (EnumCaseMultiPayload == 1)
  {
    v13 = (v0 + 272);
    v14 = (v0 + 360);
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v12, *(v0 + 360), &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    v15 = v0 + 280;
    v16 = MEMORY[0x1E69DA6E8];
  }

  else
  {
    v14 = (v0 + 264);
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v12, *(v0 + 264), &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    v15 = v0 + 168;
    v13 = (v0 + 160);
    v16 = MEMORY[0x1E69DA6E0];
  }

  v17 = *(v0 + 480);
  v18 = *v14;
  v19 = *(v0 + 552);
  v20 = *(v0 + 192);
  v21 = *(v0 + 144);
  v22 = *(v0 + 104);
  v29 = *(v0 + 136);
  v30 = *(v0 + 112);
  (*(*v15 + 32))(v33 + v31, v18, *v13);
  (*(v32 + 104))(v33 + v31, *v16, v20);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v17, type metadata accessor for ScrubbedPromptVariant);
  swift_storeEnumTagMultiPayload();
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v19, v22, type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  (*(*(v21 - 8) + 8))(v29, v21);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v30, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 648), &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v23 = *(v0 + 8);

  return v23();
}

{
  v1 = *(v0 + 584);
  v2 = *(v0 + 528);
  v3 = *(v0 + 480);
  v4 = *(v0 + 248);
  v5 = *(v0 + 224);
  v6 = *(v0 + 232);
  (*(v0 + 696))(*(v0 + 312), *(v0 + 272));
  (*(v6 + 8))(v4, v5);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v3, type metadata accessor for ScrubbedPromptVariant);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v7 = *(v0 + 112);
  (*(*(*(v0 + 144) - 8) + 8))(*(v0 + 136));
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 648), &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v8 = *(v0 + 8);

  return v8();
}

{
  v2 = *v1;
  v2[103] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:), 0, 0);
  }

  else
  {
    type metadata accessor for TokenGenerator();
    v3 = swift_task_alloc();
    v2[104] = v3;
    *v3 = v2;
    v3[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
    v4 = v2[81];
    v5 = v2[44];
    v6 = v2[38];

    return static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:)(v5, v6, v4);
  }
}

{
  v2 = *v1;
  v2[105] = v0;

  v3 = v2[38];
  v4 = v2[35];
  v5 = v2[34];
  v8 = *(v4 + 8);
  v6 = v4 + 8;
  v7 = v8;
  if (v0)
  {
    v7(v3, v5);
    v9 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  }

  else
  {
    v2[106] = v7;
    v2[107] = v6 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v3, v5);
    v9 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

{
  v1 = v0[71];
  v2 = v0[63];

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v3 = v0[80];
  v4 = v0[79];
  v5 = v0[78];
  v6 = v0[77];
  v7 = v0[14];
  (*(*(v0[18] - 8) + 8))(v0[17]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v6, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(v4 + 8))(v3, v5);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v8 = v0[1];

  return v8();
}

{
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v0[44], v0[54], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  v0[108] = v1;
  *v1 = v0;
  v1[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  v2 = v0[82];

  return Dictionary<>.richVariableBindings()(v2);
}

{
  v1 = v0[71];
  v2 = v0[63];

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v3 = v0[80];
  v4 = v0[79];
  v5 = v0[78];
  v6 = v0[77];
  v7 = v0[14];
  (*(*(v0[18] - 8) + 8))(v0[17]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v6, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(v4 + 8))(v3, v5);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v8 = v0[1];

  return v8();
}

{
  v2 = *v1;
  v2[112] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:), 0, 0);
  }

  else
  {
    type metadata accessor for TokenGenerator();
    v3 = swift_task_alloc();
    v2[113] = v3;
    *v3 = v2;
    v3[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
    v4 = v2[81];
    v5 = v2[43];
    v6 = v2[37];

    return static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:)(v5, v6, v4);
  }
}

{
  v2 = *v1;
  *(*v1 + 912) = v0;

  (*(v2[35] + 8))(v2[37], v2[34]);
  if (v0)
  {
    v3 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  }

  else
  {
    v3 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[71], &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v1 = v0[80];
  v2 = v0[79];
  v3 = v0[78];
  v4 = v0[77];
  v5 = v0[14];
  (*(*(v0[18] - 8) + 8))(v0[17]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v5, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(v2 + 8))(v1, v3);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v6 = v0[1];

  return v6();
}

{
  v1 = v0[71];
  v3 = v0[52];
  v2 = v0[53];
  v24 = v0[25];
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v0[43], v2, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
  swift_storeEnumTagMultiPayload();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  outlined init with copy of PromptCompletion(v2, v3, type metadata accessor for ScrubbedPromptVariant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = v0[52];
  if (EnumCaseMultiPayload == 1)
  {
    v6 = v0 + 45;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v5, v0[45], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    v7 = MEMORY[0x1E69DA6E8];
    v8 = 34;
    v9 = 35;
  }

  else
  {
    v6 = v0 + 33;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v5, v0[33], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    v7 = MEMORY[0x1E69DA6E0];
    v8 = 20;
    v9 = 21;
  }

  v10 = v0[53];
  v11 = v0[68];
  v12 = *v6;
  v13 = v0[79];
  v22 = v0[78];
  v23 = v0[80];
  v14 = v0[24];
  v16 = v0[17];
  v15 = v0[18];
  v17 = v0[13];
  v20 = v0[14];
  v21 = v0[77];
  (*(v0[v9] + 32))(v11, v12, v0[v8]);
  (*(v24 + 104))(v11, *v7, v14);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v10, type metadata accessor for ScrubbedPromptVariant);
  swift_storeEnumTagMultiPayload();
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v11, v17, type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  (*(*(v15 - 8) + 8))(v16, v15);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v20, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v21, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(v13 + 8))(v23, v22);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v18 = v0[1];

  return v18();
}

{
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[71], &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v1 = v0[80];
  v2 = v0[79];
  v3 = v0[78];
  v4 = v0[77];
  v5 = v0[14];
  (*(*(v0[18] - 8) + 8))(v0[17]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v5, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(v2 + 8))(v1, v3);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v6 = v0[1];

  return v6();
}

{
  outlined init with copy of PromptCompletion(v0[54], v0[51], type metadata accessor for ScrubbedPromptVariant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[51];
  if (EnumCaseMultiPayload == 1)
  {
    v3 = v0[45];
    v4 = v0[42];
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v2, v3, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    LOBYTE(v4) = *(v3 + *(v4 + 36));
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    if ((v4 & 1) == 0)
    {
LABEL_3:

      v5 = v0[79];
      v6 = v0[78];
      v78 = v0[71];
      v7 = v0[65];
      v8 = v0[63];
      v9 = v0[64];
      v10 = v0[61];
      v80 = v0[49];
      v82 = v0[54];
      v86 = v0[25];
      v87 = v0[68];
      v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMd, &_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMR) + 48);
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, v7, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
      v75 = *(v10 + 48);
      PromptTemplate.templateID.getter();
      v11 = *(v5 + 8);
      v11(v7, v6);
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, v9, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
      PromptTemplateInfo.init(templateID:richVariableBindings:locale:)();
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v78, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
      v11(v9, v6);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7 + v75, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      outlined init with copy of PromptCompletion(v82, v80, type metadata accessor for ScrubbedPromptVariant);
      v12 = swift_getEnumCaseMultiPayload();
      v13 = v0[49];
      if (v12 == 1)
      {
        v14 = v0 + 45;
        outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v13, v0[45], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
        v76 = MEMORY[0x1E69DA6E8];
        v15 = 34;
        v16 = 35;
      }

      else
      {
        v14 = v0 + 33;
        outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v13, v0[33], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
        v76 = MEMORY[0x1E69DA6E0];
        v15 = 20;
        v16 = 21;
      }

      v32 = v0[54];
      v33 = *v14;
      v34 = v0[79];
      v83 = v0[78];
      v84 = v0[80];
      v35 = v0[68];
      v36 = v0[24];
      v37 = v0[18];
      v77 = v0[17];
      v38 = v0[13];
      v79 = v0[14];
      v81 = v0[77];
      (*(v0[v16] + 32))(v87 + v85, v33, v0[v15]);
      (*(v86 + 104))(v87 + v85, *v76, v36);
      outlined destroy of TokenGeneratorCompletionResponseStringStream(v32, type metadata accessor for ScrubbedPromptVariant);
      swift_storeEnumTagMultiPayload();
      outlined init with take of TokenGeneratorResponsePromptCompletionStream(v35, v38, type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
      (*(*(v37 - 8) + 8))(v77, v37);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v79, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v81, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      (*(v34 + 8))(v84, v83);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

      v31 = v0[1];
      goto LABEL_10;
    }
  }

  else
  {
    v18 = v0[32];
    v17 = v0[33];
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v2, v17, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    LODWORD(v18) = *(v17 + *(v18 + 36));
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    if (v18 != 1)
    {
      goto LABEL_3;
    }
  }

  v19 = v0[110];
  v20 = type metadata accessor for CatalogClient();
  swift_allocObject();
  v21 = CatalogClient.init()();
  v22 = MEMORY[0x1E69DA6B8];
  v0[10] = v20;
  v0[11] = v22;
  v0[7] = v21;
  PromptTemplate.loadPromptTemplate(catalogClient:)();
  if (v19)
  {
    v23 = v0[71];
    v24 = v0[63];
    v25 = v0[54];

    outlined destroy of TokenGeneratorCompletionResponseStringStream(v25, type metadata accessor for ScrubbedPromptVariant);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v24, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v23, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
    v26 = v0[80];
    v27 = v0[79];
    v28 = v0[78];
    v29 = v0[77];
    v30 = v0[14];
    (*(*(v0[18] - 8) + 8))(v0[17]);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v30, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v29, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    (*(v27 + 8))(v26, v28);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

    v31 = v0[1];
LABEL_10:

    return v31();
  }

  v40 = v0[54];
  v41 = v0[50];
  v42 = v0[25];
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  outlined init with copy of PromptCompletion(v40, v41, type metadata accessor for ScrubbedPromptVariant);
  v43 = swift_getEnumCaseMultiPayload();
  v44 = (v42 + 104);
  v45 = v0[50];
  if (v43 == 1)
  {
    v46 = v0[45];
    v47 = v0[34];
    v48 = v0[35];
    v49 = v0[26];
    v50 = v0[24];
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v45, v46, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    (*(v48 + 32))(v49, v46, v47);
    (*v44)(v49, *MEMORY[0x1E69DA6E8], v50);
    v51 = *MEMORY[0x1E69DA6E0];
  }

  else
  {
    v52 = v0[33];
    v53 = v0[26];
    v54 = v0[24];
    v55 = v0[20];
    v56 = v0[21];
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v45, v52, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    (*(v56 + 32))(v53, v52, v55);
    v51 = *MEMORY[0x1E69DA6E0];
    (*v44)(v53, *MEMORY[0x1E69DA6E0], v54);
  }

  v57 = (*(v0[25] + 88))(v0[26], v0[24]);
  if (v57 == v51)
  {
    v59 = v0[25];
    v58 = v0[26];
    v60 = v0[24];
    v62 = v0[21];
    v61 = v0[22];
    v63 = v0[20];

    (*(v59 + 96))(v58, v60);
    (*(v62 + 32))(v61, v58, v63);
    v88 = _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN010CompletionK0V_Tt2g5;
    v64 = swift_task_alloc();
    v0[115] = v64;
    *v64 = v0;
    v64[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
    v65 = v0[109];
    v66 = v0[30];
    v67 = v0[22];
LABEL_20:

    return v88(v66, v65, v67);
  }

  if (v57 == *MEMORY[0x1E69DA6E8])
  {
    v69 = v0[35];
    v68 = v0[36];
    v70 = v0[34];
    v72 = v0[25];
    v71 = v0[26];
    v73 = v0[24];

    (*(v72 + 96))(v71, v73);
    (*(v69 + 32))(v68, v71, v70);
    v88 = _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN012ChatMessagesK0V_Tt2g5;
    v74 = swift_task_alloc();
    v0[117] = v74;
    *v74 = v0;
    v74[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
    v65 = v0[109];
    v67 = v0[36];
    v66 = v0[30];
    goto LABEL_20;
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  return _diagnoseUnexpectedEnumCase<A>(type:)();
}

{
  v1 = v0[71];
  v2 = v0[63];
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v0[54], type metadata accessor for ScrubbedPromptVariant);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v3 = v0[80];
  v4 = v0[79];
  v5 = v0[78];
  v6 = v0[77];
  v7 = v0[14];
  (*(*(v0[18] - 8) + 8))(v0[17]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v6, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(v4 + 8))(v3, v5);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v8 = v0[1];

  return v8();
}

{
  v1 = v0 + 21;
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[28];
  (*(v0[21] + 8))(v0[22], v0[20]);
  (*(v3 + 8))(v2, v4);
  v6 = v0[78];
  v5 = v0[79];
  v29 = v0[71];
  v7 = v0[65];
  v25 = v0[64];
  v8 = v0[63];
  v9 = v0[61];
  v31 = v0[49];
  v33 = v0[54];
  v37 = v0[25];
  v38 = v0[68];
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMd, &_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMR) + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, v7, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  v26 = *(v9 + 48);
  PromptTemplate.templateID.getter();
  v10 = *(v5 + 8);
  v10(v7, v6);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, v25, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  PromptTemplateInfo.init(templateID:richVariableBindings:locale:)();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v29, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v10(v25, v6);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7 + v26, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  outlined init with copy of PromptCompletion(v33, v31, type metadata accessor for ScrubbedPromptVariant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = v0[49];
  if (EnumCaseMultiPayload == 1)
  {
    v13 = v0 + 45;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v12, v0[45], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    v1 = v0 + 35;
    v14 = v0 + 34;
    v27 = MEMORY[0x1E69DA6E8];
  }

  else
  {
    v13 = v0 + 33;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v12, v0[33], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    v27 = MEMORY[0x1E69DA6E0];
    v14 = v0 + 20;
  }

  v15 = v0[54];
  v16 = *v14;
  v17 = *v1;
  v18 = v0[79];
  v34 = v0[78];
  v35 = v0[80];
  v19 = v0[68];
  v20 = v0[24];
  v21 = v0[18];
  v28 = v0[17];
  v22 = v0[13];
  v30 = v0[14];
  v32 = v0[77];
  (*(v17 + 32))(v38 + v36, *v13, v16);
  (*(v37 + 104))(v38 + v36, *v27, v20);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v15, type metadata accessor for ScrubbedPromptVariant);
  swift_storeEnumTagMultiPayload();
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v19, v22, type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  (*(*(v21 - 8) + 8))(v28, v21);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v30, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v32, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(v18 + 8))(v35, v34);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v23 = v0[1];

  return v23();
}

{
  v1 = v0[71];
  v2 = v0[63];
  v3 = v0[54];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[28];
  (*(v0[21] + 8))(v0[22], v0[20]);
  (*(v5 + 8))(v4, v6);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v3, type metadata accessor for ScrubbedPromptVariant);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v7 = v0[80];
  v8 = v0[79];
  v9 = v0[78];
  v10 = v0[77];
  v11 = v0[14];
  (*(*(v0[18] - 8) + 8))(v0[17]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(v8 + 8))(v7, v9);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v12 = v0[1];

  return v12();
}

{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 224);
  (*(v0 + 848))(*(v0 + 288), *(v0 + 272));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 632);
  v5 = *(v0 + 624);
  v29 = *(v0 + 568);
  v6 = *(v0 + 520);
  v7 = *(v0 + 504);
  v8 = *(v0 + 512);
  v9 = *(v0 + 488);
  v31 = *(v0 + 392);
  v33 = *(v0 + 432);
  v37 = *(v0 + 200);
  v38 = *(v0 + 544);
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMd, &_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMR) + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, v6, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  v26 = *(v9 + 48);
  PromptTemplate.templateID.getter();
  v10 = *(v4 + 8);
  v10(v6, v5);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, v8, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  PromptTemplateInfo.init(templateID:richVariableBindings:locale:)();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v29, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v10(v8, v5);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v6 + v26, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  outlined init with copy of PromptCompletion(v33, v31, type metadata accessor for ScrubbedPromptVariant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = *(v0 + 392);
  if (EnumCaseMultiPayload == 1)
  {
    v13 = (v0 + 272);
    v14 = (v0 + 360);
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v12, *(v0 + 360), &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    v15 = v0 + 280;
    v16 = MEMORY[0x1E69DA6E8];
  }

  else
  {
    v14 = (v0 + 264);
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v12, *(v0 + 264), &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    v15 = v0 + 168;
    v13 = (v0 + 160);
    v16 = MEMORY[0x1E69DA6E0];
  }

  v27 = v16;
  v17 = *(v0 + 432);
  v18 = *v13;
  v19 = *(v0 + 632);
  v34 = *(v0 + 624);
  v35 = *(v0 + 640);
  v20 = *(v0 + 544);
  v21 = *(v0 + 192);
  v22 = *(v0 + 144);
  v28 = *(v0 + 136);
  v23 = *(v0 + 104);
  v30 = *(v0 + 112);
  v32 = *(v0 + 616);
  (*(*v15 + 32))(v38 + v36, *v14, v18);
  (*(v37 + 104))(v38 + v36, *v27, v21);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v17, type metadata accessor for ScrubbedPromptVariant);
  swift_storeEnumTagMultiPayload();
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v20, v23, type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  (*(*(v22 - 8) + 8))(v28, v22);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v30, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v32, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(v19 + 8))(v35, v34);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 648), &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v24 = *(v0 + 8);

  return v24();
}

{
  v1 = *(v0 + 568);
  v2 = *(v0 + 504);
  v3 = *(v0 + 432);
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v6 = *(v0 + 224);
  (*(v0 + 848))(*(v0 + 288), *(v0 + 272));
  (*(v5 + 8))(v4, v6);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v3, type metadata accessor for ScrubbedPromptVariant);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v7 = *(v0 + 640);
  v8 = *(v0 + 632);
  v9 = *(v0 + 624);
  v10 = *(v0 + 616);
  v11 = *(v0 + 112);
  (*(*(*(v0 + 144) - 8) + 8))(*(v0 + 136));
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(v8 + 8))(v7, v9);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 648), &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 720) = a1;
  *(v3 + 728) = v1;

  if (v1)
  {

    v4 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  }

  else
  {
    v4 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 776) = v1;

  if (v1)
  {
    v5 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  }

  else
  {
    *(v4 + 800) = a1;
    v5 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 792) = v1;

  if (v1)
  {
    v5 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  }

  else
  {
    *(v4 + 808) = a1;
    v5 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{
  v3 = *v2;
  *(v3 + 872) = a1;
  *(v3 + 880) = v1;

  if (v1)
  {

    v4 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  }

  else
  {
    v4 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 928) = v1;

  if (v1)
  {
    v5 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  }

  else
  {
    *(v4 + 952) = a1;
    v5 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 944) = v1;

  if (v1)
  {
    v5 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  }

  else
  {
    *(v4 + 960) = a1;
    v5 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t static TokenGenerator.map(tokenGenerationError:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v195 = a2;
  v176 = type metadata accessor for GenerativeError.MalformedOutputError.ErrorContext();
  v174 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v173 = &v147 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for GenerativeError.PromptError.ErrorType.SafetyRejectedErrorInfo.Origin();
  v182 = *(v4 - 8);
  v183 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v180 = &v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GenerativeError.PromptError.ErrorType.SafetyRejectedErrorInfo.Sources();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v178 = &v147 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v177 = &v147 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation0A5ErrorV06PromptD0V0D4TypeO014SafetyRejectedD4InfoV17ViolationCategoryOSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorV06PromptD0V0D4TypeO014SafetyRejectedD4InfoV17ViolationCategoryOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v175 = &v147 - v11;
  v181 = type metadata accessor for GenerativeError.PromptError.ErrorType.SafetyRejectedErrorInfo.ViolationCategory();
  v179 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v190 = &v147 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = type metadata accessor for GenerativeError.ToolError.ErrorContext();
  v171 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v168 = &v147 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v165 = &v147 - v15;
  v170 = type metadata accessor for GenerativeError.DocumentError.ErrorContext();
  v169 = *(v170 - 8);
  MEMORY[0x1EEE9AC00](v170);
  v167 = &v147 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = type metadata accessor for DocumentResource();
  v164 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v163 = &v147 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for GenerativeError.SchemaError.ErrorContext();
  v161 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v160 = &v147 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for GenerativeError.SchemaError.ErrorType();
  v158 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v157 = &v147 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for GenerativeError.AvailabilityError.ErrorType.ResourceUnavailableErrorInfo.AssetType();
  v156 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v147 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for GenerativeError.PromptError.ErrorType();
  v188 = *(v23 - 8);
  v189 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v187 = &v147 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for GenerativeError.AvailabilityError.ErrorType();
  v192 = *(v25 - 8);
  v193 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v191 = &v147 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for Locale();
  v149 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v148 = &v147 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for InferenceError.Context();
  v153 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v152 = &v147 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20ModelManagerServices14InferenceErrorOSgMd, &_s20ModelManagerServices14InferenceErrorOSgMR);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v147 - v30;
  v32 = type metadata accessor for InferenceError();
  v185 = *(v32 - 8);
  v186 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v147 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v155 = &v147 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v151 = &v147 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v184 = &v147 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v194 = &v147 - v42;
  v43 = type metadata accessor for GenerativeError.RuntimeError.ErrorType();
  v44 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v147 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for TokenGenerationError(0);
  MEMORY[0x1EEE9AC00](v47);
  v49 = (&v147 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of PromptCompletion(a1, v49, type metadata accessor for TokenGenerationError);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v99 = v49[1];
      v100 = v49[2];
      v189 = v49[3];
      v190 = v99;
      if (v100)
      {
        v196 = v100;
        MEMORY[0x1AC5A6AE0](v100);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v101 = v186;
        v102 = swift_dynamicCast();
        v103 = v185;
        (*(v185 + 56))(v31, v102 ^ 1u, 1, v101);
        v104 = (*(v103 + 48))(v31, 1, v101);
        v105 = v184;
        if (v104 != 1)
        {
          v106 = v155;
          (*(v103 + 32))(v155, v31, v101);
          (*(v103 + 16))(v34, v106, v101);
          if ((*(v103 + 88))(v34, v101) == *MEMORY[0x1E69B25D8])
          {
            (*(v103 + 96))(v34, v101);
            v107 = v152;
            (*(v153 + 32))(v152, v34, v154);
            v108 = InferenceError.Context.userInfo.getter();
            if (*(v108 + 16))
            {
              v109 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ELL, 0x80000001ABA40C70);
              v110 = v194;
              v98 = v195;
              v111 = v193;
              if (v112)
              {
                v113 = (*(v108 + 56) + 16 * v109);
                v114 = *v113;
                v115 = v113[1];

                v196 = 0;
                LOBYTE(v114) = specialized String.withCString<A>(_:)(v114, v115, &v196);

                if (v114)
                {
                  v105 = v184;
                  Date.init(timeIntervalSinceReferenceDate:)();
                  (*(v153 + 8))(v152, v154);
                  (*(v185 + 8))(v155, v186);
                  v116 = type metadata accessor for Date();
                  (*(*(v116 - 8) + 56))(v105, 0, 1, v116);
LABEL_36:
                  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v105, v110, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                  v127 = v191;
                  GenerativeError.AvailabilityError.ErrorType.RateLimitedErrorInfo.init(retryAfterDate:)();
                  v128 = v105;
                  v129 = v192;
                  (*(v192 + 104))(v127, *MEMORY[0x1E69A0940], v111);
                  static GenerativeError.availabilityError(type:userFacingLocalizedMessage:userInfo:)();

                  (*(v129 + 8))(v127, v111);
                  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v128, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                  goto LABEL_37;
                }

                v105 = v184;
                v107 = v152;
              }

              else
              {
              }
            }

            else
            {

              v110 = v194;
              v98 = v195;
              v111 = v193;
            }

            v131 = InferenceError.Context.userInfo.getter();
            if (*(v131 + 16) && (v132 = specialized __RawDictionaryStorage.find<A>(_:)(0x7466417972746572, 0xEE00657461447265), (v133 & 1) != 0))
            {
              v134 = *(v131 + 56) + 16 * v132;
              v135 = *(v134 + 8);
              v195 = *v134;

              v136 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
              v137 = v148;
              Locale.init(identifier:)();
              isa = Locale._bridgeToObjectiveC()().super.isa;
              (*(v149 + 8))(v137, v150);
              [v136 setLocale_];

              v139 = MEMORY[0x1AC5A5AE0](0xD000000000000015, 0x80000001ABA40C90);
              [v136 setDateFormat_];

              v140 = MEMORY[0x1AC5A5AE0](v195, v135);

              v195 = v136;
              v141 = [v136 dateFromString_];

              if (v141)
              {
                v142 = v151;
                static Date._unconditionallyBridgeFromObjectiveC(_:)();

                v143 = 0;
                v105 = v184;
                v144 = v152;
              }

              else
              {
                v143 = 1;
                v105 = v184;
                v144 = v152;
                v142 = v151;
              }

              (*(v153 + 8))(v144, v154);
              (*(v185 + 8))(v155, v186);
              v146 = type metadata accessor for Date();
              (*(*(v146 - 8) + 56))(v142, v143, 1, v146);
              outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v142, v105, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            }

            else
            {

              (*(v153 + 8))(v107, v154);
              (*(v185 + 8))(v155, v186);
              v145 = type metadata accessor for Date();
              (*(*(v145 - 8) + 56))(v105, 1, 1, v145);
            }

            goto LABEL_36;
          }

          v130 = *(v103 + 8);
          v130(v106, v101);
          v130(v34, v101);
LABEL_35:
          v126 = type metadata accessor for Date();
          (*(*(v126 - 8) + 56))(v105, 1, 1, v126);
          v110 = v194;
          v98 = v195;
          v111 = v193;
          goto LABEL_36;
        }
      }

      else
      {
        (*(v185 + 56))(v31, 1, 1, v186);
        v105 = v184;
      }

      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v31, &_s20ModelManagerServices14InferenceErrorOSgMd, &_s20ModelManagerServices14InferenceErrorOSgMR);
      goto LABEL_35;
    case 2u:
      v69 = v49[2];
      v70 = type metadata accessor for Date();
      v71 = v194;
      (*(*(v70 - 8) + 56))(v194, 1, 1, v70);
      v72 = v195;
      static GenerativeError.networkingError(retryAfterDate:userFacingLocalizedMessage:userInfo:)();

      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v71, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      goto LABEL_26;
    case 3u:
      v92 = v49[4];
      v93 = v187;
      GenerativeError.PromptError.ErrorType.TooManyTokensErrorInfo.init(tokenCount:tokenCountMaximum:)();
      v95 = v188;
      v94 = v189;
      (*(v188 + 104))(v93, *MEMORY[0x1E69A09D8], v189);
      v72 = v195;
      static GenerativeError.promptError(type:userFacingLocalizedMessage:userInfo:)();
      goto LABEL_25;
    case 4u:
      v52 = v49[2];
      v53 = v195;
      static GenerativeError.canceledError(userFacingLocalizedMessage:userInfo:)();
      goto LABEL_29;
    case 5u:
      v92 = v49[2];
      (*(v156 + 104))(v22, *MEMORY[0x1E69A0938], v20);
      v93 = v191;
      GenerativeError.AvailabilityError.ErrorType.ResourceUnavailableErrorInfo.init(assetType:)();
      v95 = v192;
      v94 = v193;
      (*(v192 + 104))(v93, *MEMORY[0x1E69A0950], v193);
      v72 = v195;
      static GenerativeError.availabilityError(type:userFacingLocalizedMessage:userInfo:)();
LABEL_25:

      (*(v95 + 8))(v93, v94);
LABEL_26:
      v89 = type metadata accessor for GenerativeError();
      v90 = *(*(v89 - 8) + 56);
      v91 = v72;
      return v90(v91, 0, 1, v89);
    case 6u:
      v119 = *(v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0V_AA0aB5ErrorO7ContextVtMd, &_s15TokenGeneration6PromptV07SpecialA0V_AA0aB5ErrorO7ContextVtMR) + 48) + 16);

      v120 = type metadata accessor for GenerativeError();
      (*(*(v120 - 8) + 56))(v195, 1, 1, v120);
      v121 = type metadata accessor for Prompt.SpecialToken();
      return (*(*(v121 - 8) + 8))(v49, v121);
    case 7u:
    case 9u:
      outlined destroy of TokenGeneratorCompletionResponseStringStream(v49, type metadata accessor for TokenGenerationError);
      goto LABEL_3;
    case 8u:
      v64 = v49[2];
      v65 = v157;
      GenerativeError.SchemaError.ErrorType.UnsupportedGuideErrorInfo.init()();
      v66 = v158;
      v67 = v159;
      (*(v158 + 104))(v65, *MEMORY[0x1E69A0A00], v159);
      v68 = v160;
      GenerativeError.SchemaError.ErrorContext.init(schemaName:description:)();
      v53 = v195;
      static GenerativeError.schemaError(type:context:userFacingLocalizedMessage:userInfo:)();

      (*(v161 + 8))(v68, v162);
      (*(v66 + 8))(v65, v67);
      goto LABEL_30;
    case 0xAu:
      v122 = v49[2];
      if (v49[4])
      {
        lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError, &protocol conformance descriptor for TokenGenerationError);
        v123 = swift_allocError();
        outlined init with copy of PromptCompletion(a1, v124, type metadata accessor for TokenGenerationError);

        v125 = v195;
        static GenerativeError.unknownUnderlyingError(error:userFacingLocalizedMessage:userInfo:)();

        swift_bridgeObjectRelease_n();

        v89 = type metadata accessor for GenerativeError();
        v90 = *(*(v89 - 8) + 56);
        v91 = v125;
        return v90(v91, 0, 1, v89);
      }

      else
      {

LABEL_3:
        v50 = type metadata accessor for GenerativeError();
        return (*(*(v50 - 8) + 56))(v195, 1, 1, v50);
      }

    case 0xBu:
      v54 = v49[4];

      v55 = v168;
      GenerativeError.ToolError.ErrorContext.init(name:description:)();
      v56 = v195;
      static GenerativeError.toolError(context:userFacingLocalizedMessage:userInfo:)();

      (*(v171 + 8))(v55, v172);
      goto LABEL_23;
    case 0xCu:
      v194 = *(v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation16DocumentResourceV8document_15TokenGeneration0gH5ErrorO7ContextVtMd, &_s26GenerativeModelsFoundation16DocumentResourceV8document_15TokenGeneration0gH5ErrorO7ContextVtMR) + 48) + 16);
      v57 = v164;
      v58 = v163;
      v59 = v166;
      (*(v164 + 32))(v163, v49, v166);
      v60 = v165;
      DocumentResource.url.getter();
      v61 = type metadata accessor for URL();
      (*(*(v61 - 8) + 56))(v60, 0, 1, v61);

      v62 = v167;
      GenerativeError.DocumentError.ErrorContext.init(url:description:)();
      v63 = v195;
      static GenerativeError.documentError(context:userFacingLocalizedMessage:userInfo:)();

      (*(v169 + 8))(v62, v170);
      (*(v57 + 8))(v58, v59);
      goto LABEL_12;
    case 0xDu:
      v52 = v49[2];
      v53 = v195;
      static GenerativeError.invalidatedError(userFacingLocalizedMessage:userInfo:)();
      goto LABEL_29;
    case 0xEu:
      v52 = v49[2];
      v53 = v195;
      static GenerativeError.authenticationError(userFacingLocalizedMessage:userInfo:)();
      goto LABEL_29;
    case 0xFu:
      v73 = (v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation0A5ErrorV06PromptD0V0D4TypeO014SafetyRejectedD4InfoV17ViolationCategoryO8category_15TokenGeneration0mnD0O7ContextVtMd, &_s29GenerativeFunctionsFoundation0A5ErrorV06PromptD0V0D4TypeO014SafetyRejectedD4InfoV17ViolationCategoryO8category_15TokenGeneration0mnD0O7ContextVtMR) + 48));
      v75 = v73[2];
      v74 = v73[3];
      v77 = v73[4];
      v76 = v73[5];
      v193 = v77;
      v194 = v74;
      v192 = v76;
      v78 = v179;
      v79 = v190;
      v80 = v181;
      (*(v179 + 32))(v190, v49, v181);
      v81 = v175;
      (*(v78 + 16))(v175, v79, v80);
      (*(v78 + 56))(v81, 0, 1, v80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation0D5ErrorV06PromptG0V0G4TypeO014SafetyRejectedG4InfoV7SourcesV6SourceOGMd, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation0D5ErrorV06PromptG0V0G4TypeO014SafetyRejectedG4InfoV7SourcesV6SourceOGMR);
      v82 = type metadata accessor for GenerativeError.PromptError.ErrorType.SafetyRejectedErrorInfo.Sources.Source();
      v83 = *(v82 - 8);
      v84 = (*(v83 + 80) + 32) & ~*(v83 + 80);
      v85 = swift_allocObject();
      *(v85 + 16) = xmmword_1ABA1D930;
      (*(v83 + 104))(v85 + v84, *MEMORY[0x1E69A0998], v82);
      swift_bridgeObjectRetain_n();
      MEMORY[0x1AC5A6AE0](v75);
      GenerativeError.PromptError.ErrorType.SafetyRejectedErrorInfo.Sources.init(sources:)();
      GenerativeError.PromptError.ErrorType.SafetyRejectedErrorInfo.Sources.init(sources:)();
      (*(v182 + 104))(v180, *MEMORY[0x1E69A0978], v183);
      v86 = v187;
      GenerativeError.PromptError.ErrorType.SafetyRejectedErrorInfo.init(debugDescription:underlyingError:content:violationCategory:isUnsafe:isRegionalSensitive:unsafeSources:regionalSensitiveSources:origin:)();
      v88 = v188;
      v87 = v189;
      (*(v188 + 104))(v86, *MEMORY[0x1E69A09E0], v189);
      v63 = v195;
      static GenerativeError.promptError(type:userFacingLocalizedMessage:userInfo:)();

      (*(v88 + 8))(v86, v87);
      (*(v78 + 8))(v190, v80);
LABEL_12:
      v89 = type metadata accessor for GenerativeError();
      v90 = *(*(v89 - 8) + 56);
      v91 = v63;
      return v90(v91, 0, 1, v89);
    case 0x10u:
      v52 = v49[2];
      v53 = v195;
      static GenerativeError.accountError(userFacingLocalizedMessage:userInfo:)();
LABEL_29:

LABEL_30:
      v89 = type metadata accessor for GenerativeError();
      v90 = *(*(v89 - 8) + 56);
      v91 = v53;
      return v90(v91, 0, 1, v89);
    case 0x11u:
      v117 = v49[2];

      v118 = v173;
      GenerativeError.MalformedOutputError.ErrorContext.init(description:)();
      v56 = v195;
      static GenerativeError.malformedOutput(context:)();

      (*(v174 + 8))(v118, v176);
LABEL_23:
      v89 = type metadata accessor for GenerativeError();
      v90 = *(*(v89 - 8) + 56);
      v91 = v56;
      return v90(v91, 0, 1, v89);
    default:
      v96 = v49[2];
      v97 = type metadata accessor for Date();
      (*(*(v97 - 8) + 56))(v194, 1, 1, v97);
      GenerativeError.RuntimeError.ErrorType.TimeoutErrorInfo.init(retryAfterDate:)();
      (*(v44 + 104))(v46, *MEMORY[0x1E69A0A38], v43);
      v98 = v195;
      static GenerativeError.runtimeError(type:userFacingLocalizedMessage:userInfo:)();

      (*(v44 + 8))(v46, v43);
LABEL_37:
      v89 = type metadata accessor for GenerativeError();
      v90 = *(*(v89 - 8) + 56);
      v91 = v98;
      return v90(v91, 0, 1, v89);
  }
}

void static TokenGenerator.handleError(_:generativeFunctionInstrumenter:)(void *a1, uint64_t a2)
{
  v202 = a2;
  v160 = type metadata accessor for GenerativeError.RuntimeError.ErrorType.ConfigurationErrorInfo.ErrorType();
  v157 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v154 = &v149 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for GenerativeError.RuntimeError.ErrorType();
  v155 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v153 = &v149 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for BindableVariable();
  v152 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v151 = &v149 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v158 = &v149 - v7;
  v8 = type metadata accessor for Prompt.RenderError();
  v188 = *(v8 - 8);
  v189 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v178 = &v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v190 = &v149 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v183 = &v149 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration0aB5ErrorOSgMd, &_s15TokenGeneration0aB5ErrorOSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v173 = &v149 - v15;
  v176 = type metadata accessor for InferenceError();
  v175 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v170 = &v149 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v171 = &v149 - v18;
  v165 = type metadata accessor for GenerativeError.AvailabilityError.ErrorType();
  v164 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v163 = &v149 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = type metadata accessor for ModelManagerError();
  v197 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199);
  v182 = &v149 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v198 = &v149 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v194 = &v149 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v179 = &v149 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v174 = &v149 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v180 = &v149 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v186 = &v149 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v169 = &v149 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v184 = &v149 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v187 = &v149 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v193 = &v149 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v196 = &v149 - v42;
  v201 = type metadata accessor for TokenGenerationError(0);
  v168 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201);
  v162 = &v149 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v195 = &v149 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v200 = &v149 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v167 = &v149 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v177 = &v149 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v185 = &v149 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v192 = &v149 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v149 - v57;
  v59 = type metadata accessor for GenerativeFunctionInstrumenter();
  v60 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v161 = &v149 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v166 = &v149 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v172 = &v149 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v181 = &v149 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v191 = &v149 - v69;
  v70 = type metadata accessor for GenerativeError();
  v71 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v73 = &v149 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v149 - v75;
  swift_willThrow();
  v203 = a1;
  MEMORY[0x1AC5A6AE0](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    (*(v71 + 32))(v73, v76, v70);
    lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type GenerativeError and conformance GenerativeError, MEMORY[0x1E69A0A68], MEMORY[0x1E69A0A80]);
    swift_allocError();
    (*(v71 + 16))(v77, v73, v70);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v202, v58, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);
    if ((*(v60 + 48))(v58, 1, v59) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v58, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);
    }

    else
    {
      v86 = v191;
      (*(v60 + 32))(v191, v58, v59);
      GenerativeFunctionInstrumenter.executionEnd(error:)();
      (*(v60 + 8))(v86, v59);
    }

    swift_willThrow();
    (*(v71 + 8))(v73, v70);
LABEL_47:

    return;
  }

  v78 = v70;
  v150 = v60;
  v191 = v59;

  v79 = a1;
  v203 = a1;
  MEMORY[0x1AC5A6AE0](a1);
  v81 = v200;
  v80 = v201;
  if (swift_dynamicCast())
  {
    v82 = v195;
    outlined init with take of TokenGeneratorResponsePromptCompletionStream(v81, v195, type metadata accessor for TokenGenerationError);
    v83 = v196;
    static TokenGenerator.map(tokenGenerationError:)(v82, v196);
    v84 = v193;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v83, v193, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
    if ((*(v71 + 48))(v84, 1, v70) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v84, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
      lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError, &protocol conformance descriptor for TokenGenerationError);
      swift_allocError();
      outlined init with copy of PromptCompletion(v82, v85, type metadata accessor for TokenGenerationError);
    }

    else
    {
      lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type GenerativeError and conformance GenerativeError, MEMORY[0x1E69A0A68], MEMORY[0x1E69A0A80]);
      swift_allocError();
      (*(v71 + 32))(v100, v84, v70);
    }

    v101 = v191;
    v102 = v192;
    v103 = v150;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v202, v192, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);
    if ((*(v103 + 48))(v102, 1, v101) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v102, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);
    }

    else
    {
      v120 = v181;
      (*(v103 + 32))(v181, v102, v101);
      GenerativeFunctionInstrumenter.executionEnd(error:)();
      (*(v103 + 8))(v120, v101);
    }

    swift_willThrow();
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v83, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
    outlined destroy of TokenGeneratorCompletionResponseStringStream(v82, type metadata accessor for TokenGenerationError);
    goto LABEL_47;
  }

  v203 = a1;
  MEMORY[0x1AC5A6AE0](a1);
  v87 = v194;
  v88 = v199;
  if (swift_dynamicCast())
  {
    v89 = v197;
    v90 = v198;
    (*(v197 + 32))(v198, v87, v88);
    v91 = *(v89 + 16);
    v92 = v182;
    v200 = (v89 + 16);
    v196 = v91;
    (v91)(v182, v90, v88);
    v93 = (*(v89 + 88))(v92, v88);
    if (v93 == *MEMORY[0x1E69B2578])
    {
      (*(v89 + 96))(v92, v88);
      v94 = v175;
      v95 = v171;
      v96 = v176;
      (*(v175 + 32))(v171, v92, v176);
      v97 = v170;
      (*(v94 + 16))(v170, v95, v96);
      v98 = v173;
      TokenGenerationError.init(_:)(v97, v173);
      if ((*(v168 + 48))(v98, 1, v80) == 1)
      {
        (*(v94 + 8))(v95, v96);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v98, &_s15TokenGeneration0aB5ErrorOSgMd, &_s15TokenGeneration0aB5ErrorOSgMR);
        v99 = v169;
        (*(v71 + 56))(v169, 1, 1, v78);
      }

      else
      {
        v134 = v162;
        outlined init with take of TokenGeneratorResponsePromptCompletionStream(v98, v162, type metadata accessor for TokenGenerationError);
        v99 = v169;
        static TokenGenerator.map(tokenGenerationError:)(v134, v169);
        outlined destroy of TokenGeneratorCompletionResponseStringStream(v134, type metadata accessor for TokenGenerationError);
        (*(v94 + 8))(v95, v96);
      }

      v124 = v184;
      outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v99, v184, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
      v125 = v71;
    }

    else if (v93 == *MEMORY[0x1E69B2588])
    {
      (*(v89 + 96))(v92, v88);
      v121 = v163;
      GenerativeError.AvailabilityError.ErrorType.UseCaseDisabledErrorInfo.init(useCaseIdentifier:)();
      v122 = v164;
      v123 = v165;
      (*(v164 + 104))(v121, *MEMORY[0x1E69A0948], v165);
      v124 = v184;
      static GenerativeError.availabilityError(type:)();
      (*(v122 + 8))(v121, v123);
      v125 = v71;
      (*(v71 + 56))(v124, 0, 1, v78);
    }

    else
    {
      v125 = v71;
      v124 = v184;
      (*(v71 + 56))(v184, 1, 1, v78);
      (*(v89 + 8))(v92, v88);
    }

    v135 = v187;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v124, v187, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
    v136 = v186;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v135, v186, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
    if ((*(v125 + 48))(v136, 1, v78) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v136, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
      lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type ModelManagerError and conformance ModelManagerError, MEMORY[0x1E69B25A8], MEMORY[0x1E69B25B0]);
      swift_allocError();
      (v196)(v137, v198, v199);
      v88 = v199;
    }

    else
    {
      lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type GenerativeError and conformance GenerativeError, MEMORY[0x1E69A0A68], MEMORY[0x1E69A0A80]);
      swift_allocError();
      (*(v125 + 32))(v138, v136, v78);
    }

    v139 = v185;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v202, v185, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);
    v140 = v150;
    v141 = v191;
    if ((*(v150 + 48))(v139, 1, v191) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v139, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);
    }

    else
    {
      v142 = v172;
      (*(v140 + 32))(v172, v139, v141);
      GenerativeFunctionInstrumenter.executionEnd(error:)();
      (*(v140 + 8))(v142, v141);
    }

    swift_willThrow();
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v135, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
    (*(v197 + 8))(v198, v88);
    goto LABEL_47;
  }

  v203 = a1;
  MEMORY[0x1AC5A6AE0](a1);
  v104 = v183;
  v105 = v189;
  if (swift_dynamicCast())
  {
    v106 = v188;
    (*(v188 + 32))(v190, v104, v105);
    v107 = *(v106 + 16);
    v108 = v178;
    v107();
    v109 = (*(v106 + 88))(v108, v105);
    if (v109 == *MEMORY[0x1E69C6238] || v109 == *MEMORY[0x1E69C6230] || v109 != *MEMORY[0x1E69C6240])
    {
      v118 = v71;
      v129 = *(v71 + 56);
      v119 = v174;
      v129(v174, 1, 1, v78);
      (*(v106 + 8))(v108, v105);
    }

    else
    {
      (*(v106 + 96))(v108, v105);
      v110 = v152;
      v111 = v158;
      v112 = v108;
      v113 = v159;
      (*(v152 + 32))(v158, v112, v159);
      (*(v110 + 16))(v151, v111, v113);
      v114 = v154;
      GenerativeError.RuntimeError.ErrorType.ConfigurationErrorInfo.ErrorType.UnboundBindableVariableErrorInfo.init(bindableVariable:)();
      v115 = v157;
      (*(v157 + 104))(v114, *MEMORY[0x1E69A0A10], v160);
      v116 = v153;
      static GenerativeError.RuntimeError.ErrorType.configurationError(type:)();
      (*(v115 + 8))(v114, v160);
      v117 = v174;
      static GenerativeError.runtimeError(type:)();
      (*(v155 + 8))(v116, v156);
      (*(v110 + 8))(v158, v159);
      v118 = v71;
      v119 = v117;
      (*(v118 + 56))(v117, 0, 1, v78);
    }

    v130 = v119;
    v131 = v180;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v130, v180, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
    v132 = v179;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v131, v179, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
    if ((*(v118 + 48))(v132, 1, v78) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v132, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
      lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type Prompt.RenderError and conformance Prompt.RenderError, MEMORY[0x1E69C6248], MEMORY[0x1E69C6250]);
      swift_allocError();
      (v107)(v133, v190, v105);
    }

    else
    {
      lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type GenerativeError and conformance GenerativeError, MEMORY[0x1E69A0A68], MEMORY[0x1E69A0A80]);
      swift_allocError();
      (*(v118 + 32))(v144, v132, v78);
    }

    v145 = v177;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v202, v177, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);
    v146 = v150;
    v147 = v191;
    if ((*(v150 + 48))(v145, 1, v191) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v145, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);
    }

    else
    {
      v148 = v166;
      (*(v146 + 32))(v166, v145, v147);
      GenerativeFunctionInstrumenter.executionEnd(error:)();
      (*(v146 + 8))(v148, v147);
    }

    swift_willThrow();
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v131, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
    (*(v188 + 8))(v190, v105);
    goto LABEL_47;
  }

  v126 = v167;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v202, v167, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);
  v127 = v150;
  v128 = v191;
  if ((*(v150 + 48))(v126, 1, v191) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v126, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);
  }

  else
  {
    v143 = v161;
    (*(v127 + 32))(v161, v126, v128);
    GenerativeFunctionInstrumenter.executionEnd(error:)();
    (*(v127 + 8))(v143, v128);
  }

  swift_willThrow();
  MEMORY[0x1AC5A6AE0](v79);
}

uint64_t static TokenGenerator.mapErrorToGenerativeFunctionsModelError<A>(generativeFunctionInstrumenter:_:)(uint64_t a1, uint64_t a2, int *a3)
{
  v4[2] = a2;
  v4[3] = v3;
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = static TokenGenerator.mapErrorToGenerativeFunctionsModelError<A>(generativeFunctionInstrumenter:_:);

  return v8(a1);
}

uint64_t static TokenGenerator.mapErrorToGenerativeFunctionsModelError<A>(generativeFunctionInstrumenter:_:)()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](static TokenGenerator.mapErrorToGenerativeFunctionsModelError<A>(generativeFunctionInstrumenter:_:), 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

void static TokenGenerator.mapErrorToGenerativeFunctionsModelError<A>(generativeFunctionInstrumenter:_:)()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  MEMORY[0x1AC5A6AE0](v1);
  static TokenGenerator.handleError(_:generativeFunctionInstrumenter:)(v1, v2);
}

uint64_t static System.defaultInstruction.getter()
{
  v0 = type metadata accessor for Prompt();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  static System.defaultInstructionPrompt.getter();
  return MEMORY[0x1AC5A59C0](v2);
}

uint64_t static System.defaultInstructions(appending:)()
{
  v0 = type metadata accessor for Prompt();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  Prompt.components.getter();
  static System.defaultInstructionsPrompt(appending:)();

  return MEMORY[0x1AC5A59C0](v2);
}

uint64_t Prompt.promptTemplateIfWholePromptIsASinglePromptTemplate()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Prompt.Component.Value.CustomData();
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v54 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for Prompt.Component.Value();
  v62 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v57 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v44 - v7;
  v9 = type metadata accessor for Prompt.Component();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for Prompt();
  v59 = *(v16 - 8);
  v60 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v58 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(Prompt.components.getter() + 16);

  if (v18 != 1)
  {
    goto LABEL_14;
  }

  v53 = a1;
  result = Prompt.components.getter();
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_21;
  }

  v20 = *(v10 + 16);
  v51 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v52 = v1;
  v20(v15, result + v51, v9);

  Prompt.Component.value.getter();
  v50 = *(v10 + 8);
  v50(v15, v9);
  v21 = v62;
  v22 = v61;
  v49 = *(v62 + 88);
  if (v49(v8, v61) != *MEMORY[0x1E69C6318])
  {
    (*(v21 + 8))(v8, v22);
LABEL_13:
    a1 = v53;
LABEL_14:
    v40 = type metadata accessor for PromptTemplate();
    return (*(*(v40 - 8) + 56))(a1, 1, 1, v40);
  }

  v47 = v12;
  v48 = v20;
  v45 = *(v21 + 96);
  v46 = v21 + 96;
  v45(v8, v22);
  v23 = v58;
  v24 = v59;
  v25 = v60;
  (*(v59 + 32))(v58, v8, v60);
  v26 = *(Prompt.components.getter() + 16);

  if (v26 != 1)
  {
    (*(v24 + 8))(v23, v25);
    goto LABEL_13;
  }

  result = Prompt.components.getter();
  if (!*(result + 16))
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v27 = v47;
  v48(v47, result + v51, v9);

  v28 = v57;
  Prompt.Component.value.getter();
  v50(v27, v9);
  if (v49(v28, v22) != *MEMORY[0x1E69C6308])
  {
    (*(v59 + 8))(v23, v60);
    (*(v62 + 8))(v28, v22);
    goto LABEL_13;
  }

  v45(v28, v22);
  v30 = v54;
  v29 = v55;
  v31 = v28;
  v32 = v56;
  (*(v55 + 32))(v54, v31, v56);
  v33 = Prompt.Component.Value.CustomData.name.getter();
  v35 = v34;
  v36 = static PromptTemplate.name.getter();
  v38 = v52;
  v39 = v59;
  if (v33 == v36 && v35 == v37)
  {

    goto LABEL_16;
  }

  v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v41 & 1) == 0)
  {
    (*(v29 + 8))(v30, v32);
    (*(v39 + 8))(v58, v60);
    goto LABEL_13;
  }

LABEL_16:
  v42 = type metadata accessor for PromptTemplate();
  lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type PromptTemplate and conformance PromptTemplate, MEMORY[0x1E69A14E8], MEMORY[0x1E69A14C8]);
  v43 = v53;
  Prompt.Component.Value.CustomData.value<A>(type:)();
  (*(v29 + 8))(v30, v32);
  if (v38)
  {
    return (*(v39 + 8))(v58, v60);
  }

  (*(v39 + 8))(v58, v60);
  return (*(*(v42 - 8) + 56))(v43, 0, 1, v42);
}

uint64_t Dictionary<>.richVariableBindings()(uint64_t a1)
{
  v1[26] = a1;
  v2 = type metadata accessor for Prompt.ImageSurface();
  v1[27] = v2;
  v1[28] = *(v2 - 8);
  v1[29] = swift_task_alloc();
  v3 = type metadata accessor for Prompt.PreprocessedImageData();
  v1[30] = v3;
  v1[31] = *(v3 - 8);
  v1[32] = swift_task_alloc();
  v4 = type metadata accessor for Prompt.ImageEmbeddingData();
  v1[33] = v4;
  v1[34] = *(v4 - 8);
  v1[35] = swift_task_alloc();
  v5 = type metadata accessor for Prompt.ImageData();
  v1[36] = v5;
  v1[37] = *(v5 - 8);
  v1[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation13SelfAttentionVSgMd, &_s26GenerativeModelsFoundation13SelfAttentionVSgMR);
  v1[39] = swift_task_alloc();
  v6 = type metadata accessor for SelfAttention();
  v1[40] = v6;
  v1[41] = *(v6 - 8);
  v1[42] = swift_task_alloc();
  v7 = type metadata accessor for Prompt.Component.Value.CustomData();
  v1[43] = v7;
  v1[44] = *(v7 - 8);
  v1[45] = swift_task_alloc();
  v8 = type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content();
  v1[46] = v8;
  v1[47] = *(v8 - 8);
  v1[48] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV9ComponentVSgMd, &_s19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV9ComponentVSgMR);
  v1[49] = swift_task_alloc();
  v9 = type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component();
  v1[50] = v9;
  v1[51] = *(v9 - 8);
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v10 = type metadata accessor for Prompt.Component();
  v1[54] = v10;
  v1[55] = *(v10 - 8);
  v1[56] = swift_task_alloc();
  v11 = type metadata accessor for PromptTemplateInfo.RichVariableBinding();
  v1[57] = v11;
  v1[58] = *(v11 - 8);
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0V9ComponentV7PrivacyOSgMd, &_s9PromptKit0A0V9ComponentV7PrivacyOSgMR);
  v1[61] = swift_task_alloc();
  v12 = type metadata accessor for Prompt.Component.Value();
  v1[62] = v12;
  v1[63] = *(v12 - 8);
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v13 = type metadata accessor for Prompt();
  v1[66] = v13;
  v1[67] = *(v13 - 8);
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Dictionary<>.richVariableBindings(), 0, 0);
}

void Dictionary<>.richVariableBindings()(__n128 a1)
{
  v2 = *(v1 + 504);
  v3 = *(v1 + 440);
  v4 = *(v1 + 408);
  v142 = *(v1 + 536);
  v144 = *(v1 + 376);
  v5 = *(v1 + 352);
  v6 = *(v1 + 328);
  v7 = *(v1 + 296);
  v8 = *(v1 + 272);
  v9 = *(v1 + 248);
  v146 = *(v1 + 224);
  v148 = *(v1 + 464);
  v10 = *(v1 + 208);
  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v109 = v10 + 64;
  v12 = -1;
  v13 = -1 << *(v10 + 32);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v118 = v11;
  v119 = v12 & *(v10 + 64);
  v140 = *MEMORY[0x1E69C6320];
  v99 = (63 - v13) >> 6;
  v129 = *MEMORY[0x1E69C6338];
  v107 = (v142 + 8);
  v139 = (v2 + 88);
  v128 = *MEMORY[0x1E69C62D0];
  v123 = *MEMORY[0x1E69C62E8];
  v114 = *MEMORY[0x1E69C62F0];
  v104 = *MEMORY[0x1E69C6308];
  v98 = (v2 + 8);
  v134 = (v2 + 96);
  v96 = (v6 + 56);
  v97 = (v5 + 32);
  v95 = (v5 + 8);
  v92 = (v6 + 32);
  v131 = *MEMORY[0x1E69DA8A8];
  v133 = (v144 + 104);
  v91 = (v6 + 8);
  v102 = (v9 + 16);
  v103 = (v9 + 32);
  v101 = *MEMORY[0x1E69DA8A0];
  v100 = (v9 + 8);
  v112 = (v8 + 16);
  v113 = (v8 + 32);
  v111 = (v8 + 8);
  v110 = *MEMORY[0x1E69DA898];
  v121 = (v146 + 8);
  v122 = (v146 + 32);
  v120 = *MEMORY[0x1E69DA890];
  v126 = (v7 + 16);
  v127 = (v7 + 32);
  v125 = (v7 + 8);
  v124 = *MEMORY[0x1E69DA8B0];
  v138 = (v3 + 16);
  v141 = (v4 + 56);
  v108 = v3;
  v136 = (v4 + 48);
  v137 = (v3 + 8);
  v130 = v4;
  v135 = (v4 + 32);
  v105 = v10;
  v106 = (v148 + 32);

  for (i = 0; ; i = v116)
  {
    v19 = v119;
    if (v119)
    {
      v20 = i;
LABEL_15:
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
      v25 = v23 | (v20 << 6);
      v26 = (*(v105 + 48) + 16 * v25);
      v27 = *v26;
      v28 = v26[1];
      outlined init with copy of PromptCompletionEvent(*(v105 + 56) + 40 * v25, v1 + 128);
      *(v1 + 72) = v27;
      *(v1 + 80) = v28;
      outlined init with take of any AsyncIteratorProtocol<Self.Element == A, Self.Failure == Error>((v1 + 128), v1 + 88);
    }

    else
    {
      v21 = v99 <= i + 1 ? i + 1 : v99;
      v22 = v21 - 1;
      while (1)
      {
        v20 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_48;
        }

        if (v20 >= v99)
        {
          break;
        }

        v19 = *(v109 + 8 * v20);
        ++i;
        if (v19)
        {
          i = v20;
          goto LABEL_15;
        }
      }

      v24 = 0;
      *(v1 + 120) = 0;
      *(v1 + 104) = 0u;
      *(v1 + 88) = 0u;
      i = v22;
      *(v1 + 72) = 0u;
    }

    v29 = *(v1 + 88);
    *(v1 + 16) = *(v1 + 72);
    *(v1 + 32) = v29;
    *(v1 + 48) = *(v1 + 104);
    *(v1 + 64) = *(v1 + 120);
    if (!*(v1 + 24))
    {

      v90 = *(v1 + 8);

      v90(v118);
      return;
    }

    v116 = i;
    v117 = *(v1 + 24);
    v119 = v24;
    v30 = *(v1 + 488);
    v115 = *(v1 + 16);
    outlined init with take of any AsyncIteratorProtocol<Self.Element == A, Self.Failure == Error>((v1 + 32), v1 + 168);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMR);
    v31 = (*(v108 + 80) + 32) & ~*(v108 + 80);
    v132 = *(v108 + 72);
    *(swift_allocObject() + 16) = xmmword_1ABA1D930;
    __swift_project_boxed_opaque_existential_1((v1 + 168), *(v1 + 192));
    dispatch thunk of PromptComponentValueConvertible.toValue()();
    v32 = type metadata accessor for Prompt.Component.Privacy();
    (*(*(v32 - 8) + 56))(v30, 1, 1, v32);
    Prompt.Component.init(value:priority:privacy:)();
    Prompt.init(components:)();
    Prompt.transformAndBind(bindingVariables:includeAttachments:customDataTransformers:)();
    v33 = *(v1 + 552);
    v34 = *(v1 + 528);
    v35 = *v107;
    (*v107)(*(v1 + 544), v34);
    v36 = Prompt.components.getter();
    v35(v33, v34);
    v145 = *(v36 + 16);
    if (v145)
    {
      break;
    }

LABEL_4:
    v15 = *(v1 + 472);
    v16 = *(v1 + 480);
    v17 = *(v1 + 456);

    PromptTemplateInfo.RichVariableBinding.init(components:)();
    (*v106)(v15, v16, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, v115, v117, isUniquelyReferenced_nonNull_native);

    __swift_destroy_boxed_opaque_existential_0((v1 + 168));
  }

  v37 = 0;
  v38 = v36 + v31;
  v147 = MEMORY[0x1E69E7CC0];
  v39 = v132;
  v143 = v36;
  while (v37 < *(v36 + 16))
  {
    v40 = *(v1 + 512);
    v41 = *(v1 + 496);
    v149 = v38;
    (*v138)(*(v1 + 448));
    Prompt.Component.value.getter();
    v42 = (*v139)(v40, v41);
    if (v42 == v140)
    {
      v44 = *(v1 + 392);
      v43 = *(v1 + 400);
      v45 = *(v1 + 384);
      v46 = *(v1 + 368);
      (*v134)(*(v1 + 512), *(v1 + 496));
      PromptTemplateInfo.RichVariableBinding.Component.Content.Text.init(string:)();
      (*v133)(v45, v131, v46);
      PromptTemplateInfo.RichVariableBinding.Component.init(content:)();
LABEL_26:
      (*v141)(v44, 0, 1, v43);
      goto LABEL_34;
    }

    if (v42 == v129)
    {
      v47 = *(v1 + 512);
      v44 = *(v1 + 392);
      v43 = *(v1 + 400);
      v48 = *(v1 + 384);
      v49 = *(v1 + 368);
      v50 = *(v1 + 304);
      v51 = *(v1 + 288);
      (*v134)(v47, *(v1 + 496));
      (*v127)(v50, v47, v51);
      (*v126)(v48, v50, v51);
      (*v133)(v48, v124, v49);
      PromptTemplateInfo.RichVariableBinding.Component.init(content:)();
      v52 = v51;
      v39 = v132;
      (*v125)(v50, v52);
      goto LABEL_26;
    }

    if (v42 == v128)
    {
      v53 = *(v1 + 512);
      v55 = *(v1 + 392);
      v54 = *(v1 + 400);
      v56 = *(v1 + 384);
      v57 = *(v1 + 368);
      v58 = *(v1 + 232);
      v59 = *(v1 + 216);
      (*v134)(v53, *(v1 + 496));
      (*v122)(v58, v53, v59);
      Prompt.ImageSurface.surface.getter();
      PromptTemplateInfo.RichVariableBinding.Component.Content.ImageSurface.init(surface:)();
      (*v133)(v56, v120, v57);
      PromptTemplateInfo.RichVariableBinding.Component.init(content:)();
      v60 = v121;
    }

    else if (v42 == v123)
    {
      v61 = *(v1 + 512);
      v55 = *(v1 + 392);
      v54 = *(v1 + 400);
      v62 = *(v1 + 384);
      v63 = *(v1 + 368);
      v58 = *(v1 + 280);
      v59 = *(v1 + 264);
      (*v134)(v61, *(v1 + 496));
      (*v113)(v58, v61, v59);
      (*v112)(v62, v58, v59);
      (*v133)(v62, v110, v63);
      PromptTemplateInfo.RichVariableBinding.Component.init(content:)();
      v60 = v111;
    }

    else
    {
      if (v42 != v114)
      {
        v78 = *(v1 + 512);
        v79 = *(v1 + 496);
        if (v42 == v104)
        {
          v80 = *(v1 + 360);
          v81 = *(v1 + 344);
          (*v134)(*(v1 + 512), *(v1 + 496));
          (*v97)(v80, v78, v81);
          lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type SelfAttention and conformance SelfAttention, MEMORY[0x1E69A14A0], MEMORY[0x1E69A1498]);
          Prompt.Component.Value.CustomData.value<A>(type:)();
          v82 = *(v1 + 392);
          v83 = *(v1 + 384);
          v84 = *(v1 + 368);
          v93 = *(v1 + 360);
          v94 = *(v1 + 400);
          v85 = *(v1 + 336);
          v86 = *(v1 + 344);
          v87 = *(v1 + 312);
          v88 = *(v1 + 320);
          (*v96)(v87, 0, 1, v88);
          (*v92)(v85, v87, v88);
          SelfAttention.text.getter();
          static PromptTemplateInfo.RichVariableBinding.Component.Content.Text.selfAttention(string:)();

          (*v133)(v83, v131, v84);
          PromptTemplateInfo.RichVariableBinding.Component.init(content:)();
          v89 = v88;
          v39 = v132;
          (*v91)(v85, v89);
          (*v95)(v93, v86);
          (*v141)(v82, 0, 1, v94);
        }

        else
        {
          (*v141)(*(v1 + 392), 1, 1, *(v1 + 400));
          (*v98)(v78, v79);
        }

        goto LABEL_34;
      }

      v64 = *(v1 + 512);
      v55 = *(v1 + 392);
      v54 = *(v1 + 400);
      v65 = *(v1 + 384);
      v66 = *(v1 + 368);
      v58 = *(v1 + 256);
      v59 = *(v1 + 240);
      (*v134)(v64, *(v1 + 496));
      (*v103)(v58, v64, v59);
      (*v102)(v65, v58, v59);
      (*v133)(v65, v101, v66);
      PromptTemplateInfo.RichVariableBinding.Component.init(content:)();
      v60 = v100;
    }

    v67 = v59;
    v39 = v132;
    (*v60)(v58, v67);
    (*v141)(v55, 0, 1, v54);
LABEL_34:
    v68 = *(v1 + 392);
    v69 = *(v1 + 400);
    (*v137)(*(v1 + 448), *(v1 + 432));
    if ((*v136)(v68, 1, v69) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v1 + 392), &_s19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV9ComponentVSgMd, &_s19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV9ComponentVSgMR);
      v36 = v143;
    }

    else
    {
      v70 = *(v1 + 416);
      v71 = *(v1 + 424);
      v72 = *(v1 + 400);
      v73 = *v135;
      (*v135)(v71, *(v1 + 392), v72);
      v73(v70, v71, v72);
      v36 = v143;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v147 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v147[2] + 1, 1, v147);
      }

      v75 = v147[2];
      v74 = v147[3];
      if (v75 >= v74 >> 1)
      {
        v147 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v75 + 1, 1, v147);
      }

      v76 = *(v1 + 416);
      v77 = *(v1 + 400);
      v147[2] = v75 + 1;
      v73(v147 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * v75, v76, v77);
    }

    ++v37;
    v38 = v149 + v39;
    if (v145 == v37)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
}

uint64_t closure #1 in TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v4[4] = swift_task_alloc();
  v6 = type metadata accessor for StringRenderedPromptSanitizerWithConfiguration();
  v4[5] = v6;
  v4[6] = *(v6 - 8);
  v4[7] = swift_task_alloc();
  v7 = type metadata accessor for CompletionPrompt();
  v4[8] = v7;
  v4[9] = *(v7 - 8);
  v8 = swift_task_alloc();
  v4[10] = v8;
  v4[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
  v4[12] = swift_task_alloc();
  v11 = (a2 + *a2);
  v9 = swift_task_alloc();
  v4[13] = v9;
  *v9 = v4;
  v9[1] = closure #1 in TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);

  return v11(v8);
}

uint64_t closure #1 in TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:)()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = closure #1 in TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
  }

  else
  {
    v2 = closure #1 in TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[3], v3, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[11];
    v4 = v0[12];
    v7 = v0[9];
    v6 = v0[10];
    v8 = v0[8];
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[4], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
    (*(v7 + 32))(v4, v6, v8);
    *(v4 + *(v5 + 36)) = 0;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v0[12], v0[2], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    type metadata accessor for ScrubbedPromptVariant(0);
    swift_storeEnumTagMultiPayload();

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[7];
    (*(v0[6] + 32))(v11, v0[4], v0[5]);
    v12 = swift_task_alloc();
    v0[15] = v12;
    *(v12 + 16) = v11;
    v13 = swift_task_alloc();
    v0[16] = v13;
    *v13 = v0;
    v13[1] = closure #1 in TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
    v14 = v0[12];
    v15 = v0[10];

    return static PromptScrubbing.scrubPrompt(_:scrub:)(v14, v15, &async function pointer to partial apply for closure #1 in static TokenGenerator.scrubIfNeeded(inputPrompt:stringRenderedPromptSanitizerWithConfiguration:), v12);
  }
}

{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = closure #1 in TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
  }

  else
  {
    v2 = closure #1 in TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v3 + 8))(v1, v2);
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v0[12], v0[2], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
  type metadata accessor for ScrubbedPromptVariant(0);
  swift_storeEnumTagMultiPayload();

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for UseCaseIdentifier();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for StringRenderedPromptSanitizerWithConfiguration();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:), 0, 0);
}

uint64_t static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:)()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[4], v3, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[2];
    v5 = v0[3];
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[8], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
    v6 = type metadata accessor for ChatMessagesPrompt();
    (*(*(v6 - 8) + 16))(v4, v5, v6);
    *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR) + 36)) = 0;

    v7 = v0[1];

    return v7();
  }

  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
  v12 = StringRenderedPromptSanitizerWithConfiguration.useCaseIdentifier.getter();
  v14 = v13;
  static UseCaseIdentifier.foundationModels.getter();
  v15 = UseCaseIdentifier.id.getter();
  v17 = v16;
  (*(v10 + 8))(v9, v11);
  if (v12 == v15 && v14 == v17)
  {

LABEL_9:
    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Log.inference);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1AB828000, v20, v21, "Scrubbing entire prompt as use case is Foundation Models", v22, 2u);
      MEMORY[0x1AC5A6CD0](v22, -1, -1);
    }

    v23 = v0[11];

    v24 = swift_task_alloc();
    v0[12] = v24;
    *(v24 + 16) = v23;
    v25 = swift_task_alloc();
    v0[13] = v25;
    *v25 = v0;
    v25[1] = static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:);
    v26 = v0[2];
    v27 = v0[3];

    return static PromptScrubbing.scrubPromptIncludingSystemTurns(_:scrub:)(v26, v27, &async function pointer to partial apply for closure #1 in static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:), v24);
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v18)
  {
    goto LABEL_9;
  }

  v28 = v0[11];
  v29 = swift_task_alloc();
  v0[15] = v29;
  *(v29 + 16) = v28;
  v30 = swift_task_alloc();
  v0[16] = v30;
  *v30 = v0;
  v30[1] = static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:);
  v31 = v0[2];
  v32 = v0[3];

  return static PromptScrubbing.scrubPrompt(_:scrub:)(v31, v32, &async function pointer to partial apply for closure #2 in static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:), v29);
}

{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:);
  }

  else
  {

    v2 = static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:);
  }

  else
  {

    v2 = static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[10];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t TokenGenerator.complete(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:schema:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 2008) = v8;
  *(v9 + 2000) = a7;
  *(v9 + 1992) = a6;
  *(v9 + 1984) = a5;
  *(v9 + 1976) = a4;
  *(v9 + 1968) = a2;
  *(v9 + 1960) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  *(v9 + 2016) = swift_task_alloc();
  v12 = type metadata accessor for PromptTemplateInfo();
  *(v9 + 2024) = v12;
  *(v9 + 2032) = *(v12 - 8);
  *(v9 + 2040) = swift_task_alloc();
  *(v9 + 2048) = type metadata accessor for FunctionDescription(0);
  *(v9 + 2056) = swift_task_alloc();
  *(v9 + 2064) = swift_task_alloc();
  *(v9 + 2072) = type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope(0);
  *(v9 + 2080) = swift_task_alloc();
  *(v9 + 2088) = type metadata accessor for ToolType(0);
  *(v9 + 2096) = swift_task_alloc();
  *(v9 + 2104) = swift_task_alloc();
  *(v9 + 2112) = *(type metadata accessor for ToolDescription(0) - 8);
  *(v9 + 2120) = swift_task_alloc();
  *(v9 + 2128) = swift_task_alloc();
  *(v9 + 2136) = swift_task_alloc();
  *(v9 + 2144) = *(type metadata accessor for ToolDescriptionEnvelope(0) - 8);
  *(v9 + 2152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration10AnyToolingVSgMd, &_s15TokenGeneration10AnyToolingVSgMR);
  *(v9 + 2160) = swift_task_alloc();
  v13 = type metadata accessor for AnyTooling(0);
  *(v9 + 2168) = v13;
  *(v9 + 2176) = *(v13 - 8);
  *(v9 + 2184) = swift_task_alloc();
  v14 = type metadata accessor for ToolType();
  *(v9 + 2192) = v14;
  *(v9 + 2200) = *(v14 - 8);
  *(v9 + 2208) = swift_task_alloc();
  *(v9 + 2216) = swift_task_alloc();
  *(v9 + 2224) = swift_task_alloc();
  v15 = type metadata accessor for ToolChoice();
  *(v9 + 2232) = v15;
  *(v9 + 2240) = *(v15 - 8);
  *(v9 + 2248) = swift_task_alloc();
  *(v9 + 2256) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  *(v9 + 2264) = swift_task_alloc();
  *(v9 + 2272) = swift_task_alloc();
  *(v9 + 2280) = type metadata accessor for CompletePromptRequest(0);
  *(v9 + 2288) = swift_task_alloc();
  *(v9 + 2296) = swift_task_alloc();
  v16 = type metadata accessor for Prompt();
  *(v9 + 2304) = v16;
  *(v9 + 2312) = *(v16 - 8);
  *(v9 + 2320) = swift_task_alloc();
  *(v9 + 2328) = swift_task_alloc();
  *(v9 + 2336) = swift_task_alloc();
  v17 = type metadata accessor for PromptVariant();
  *(v9 + 2344) = v17;
  *(v9 + 2352) = *(v17 - 8);
  *(v9 + 2360) = swift_task_alloc();
  *(v9 + 2368) = swift_task_alloc();
  *(v9 + 2376) = swift_task_alloc();
  *(v9 + 2384) = swift_task_alloc();
  *(v9 + 2392) = type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel(0);
  *(v9 + 2400) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
  *(v9 + 2408) = swift_task_alloc();
  v18 = type metadata accessor for Schema();
  *(v9 + 2416) = v18;
  *(v9 + 2424) = *(v18 - 8);
  *(v9 + 2432) = swift_task_alloc();
  *(v9 + 2440) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  *(v9 + 2448) = swift_task_alloc();
  *(v9 + 2456) = swift_task_alloc();
  v19 = *(a3 + 176);
  *(v9 + 176) = *(a3 + 160);
  *(v9 + 192) = v19;
  *(v9 + 208) = *(a3 + 192);
  *(v9 + 224) = *(a3 + 208);
  v20 = *(a3 + 112);
  *(v9 + 112) = *(a3 + 96);
  *(v9 + 128) = v20;
  v21 = *(a3 + 144);
  *(v9 + 144) = *(a3 + 128);
  *(v9 + 160) = v21;
  v22 = *(a3 + 48);
  *(v9 + 48) = *(a3 + 32);
  *(v9 + 64) = v22;
  v23 = *(a3 + 80);
  *(v9 + 80) = *(a3 + 64);
  *(v9 + 96) = v23;
  v24 = *(a3 + 16);
  *(v9 + 16) = *a3;
  *(v9 + 32) = v24;
  *(v9 + 2464) = *a8;
  *(v9 + 2472) = *(a8 + 8);
  *(v9 + 2488) = *(a8 + 24);
  *(v9 + 2496) = *(a8 + 32);
  *(v9 + 2512) = *(a8 + 48);

  return MEMORY[0x1EEE6DFA0](TokenGenerator.complete(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:schema:metadata:), 0, 0);
}

uint64_t TokenGenerator.complete(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:schema:metadata:)()
{
  v296 = v0;
  v1 = *(v0 + 2424);
  v2 = *(v0 + 2416);
  v3 = *(v0 + 2408);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 2000), v3, &_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
  v4 = (*(v1 + 48))(v3, 1, v2);
  v5 = *(v0 + 2456);
  if (v4 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 2408), &_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
    v6 = type metadata accessor for Constraints(0);
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  }

  else
  {
    v7 = *(v0 + 2440);
    v8 = *(v0 + 2424);
    v9 = *(v0 + 2416);
    (*(v8 + 32))(v7, *(v0 + 2408), v9);
    Schema.type.getter();
    (*(v8 + 8))(v7, v9);
    v10 = type metadata accessor for Constraints(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
  }

  outlined init with copy of PromptCompletion(*(v0 + 1968), *(v0 + 2400), type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = *(v0 + 2400);
  v13 = *(v0 + 2352);
  v14 = *(v0 + 2344);
  if (EnumCaseMultiPayload == 1)
  {
    v15 = *(v0 + 2360);
    v16 = *(v0 + 2040);
    v17 = *(v0 + 2032);
    v18 = *(v0 + 2024);
    v248 = *(v0 + 2016);
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMd, &_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMR) + 48);
    (*(v17 + 32))(v16, v12, v18);
    (*(v13 + 32))(v15, v12 + v19, v14);
    (*(v13 + 16))(v248, v15, v14);
    v20 = 1;
    (*(v13 + 56))(v248, 0, 1, v14);
    v21 = *(v0 + 192);
    *(v0 + 392) = *(v0 + 176);
    *(v0 + 408) = v21;
    *(v0 + 424) = *(v0 + 208);
    *(v0 + 440) = *(v0 + 224);
    v22 = *(v0 + 128);
    *(v0 + 328) = *(v0 + 112);
    *(v0 + 344) = v22;
    v23 = *(v0 + 160);
    *(v0 + 360) = *(v0 + 144);
    *(v0 + 376) = v23;
    v24 = *(v0 + 64);
    *(v0 + 264) = *(v0 + 48);
    *(v0 + 280) = v24;
    v25 = *(v0 + 96);
    *(v0 + 296) = *(v0 + 80);
    *(v0 + 312) = v25;
    v26 = *(v0 + 32);
    *(v0 + 232) = *(v0 + 16);
    *(v0 + 248) = v26;
    if (_s15TokenGeneration26SamplingParametersEnvelopeVSgWOg(v0 + 232) == 1)
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      LOBYTE(v272) = 1;
      v37 = 0uLL;
      LOBYTE(v286) = 1;
      v38 = 2;
      v39 = -1;
      v40 = 768;
      v41 = 0x2000200020001;
      v42 = 1;
      v43 = MEMORY[0x1E69E7CD0];
      v44 = 1;
      v45 = 1;
      v46 = 1;
      v47 = 1;
      v48 = 0uLL;
      v49 = 0uLL;
      v50 = 0uLL;
    }

    else
    {
      v28 = *(v0 + 16);
      v39 = *(v0 + 24);
      *v254 = *(v0 + 25);
      *&v254[3] = *(v0 + 28);
      v29 = *(v0 + 32);
      v20 = *(v0 + 40);
      *v255 = *(v0 + 41);
      *&v255[3] = *(v0 + 44);
      v30 = *(v0 + 48);
      v42 = *(v0 + 56);
      *&v256[3] = *(v0 + 60);
      *v256 = *(v0 + 57);
      v31 = *(v0 + 64);
      v44 = *(v0 + 72);
      *v257 = *(v0 + 73);
      *&v257[3] = *(v0 + 76);
      v32 = *(v0 + 80);
      v45 = *(v0 + 88);
      *v258 = *(v0 + 89);
      *&v258[3] = *(v0 + 92);
      v43 = *(v0 + 96);
      v33 = *(v0 + 104);
      v46 = *(v0 + 112);
      *v259 = *(v0 + 113);
      *&v259[3] = *(v0 + 116);
      v34 = *(v0 + 120);
      v47 = *(v0 + 128);
      *&v260[3] = *(v0 + 132);
      *v260 = *(v0 + 129);
      v35 = *(v0 + 136);
      v27.i32[0] = *(v0 + 144);
      v41 = vmovl_u8(v27).u64[0];
      v38 = *(v0 + 148);
      v261 = *(v0 + 149);
      v262 = *(v0 + 151);
      v37 = *(v0 + 152);
      v48 = *(v0 + 168);
      v49 = *(v0 + 184);
      v50 = *(v0 + 200);
      v40 = *(v0 + 216);
      v36 = *(v0 + 224);
    }

    *&v286 = v28;
    BYTE8(v286) = v39;
    *(&v286 + 9) = *v254;
    HIDWORD(v286) = *&v254[3];
    *&v287 = v29;
    BYTE8(v287) = v20;
    *(&v287 + 9) = *v255;
    HIDWORD(v287) = *&v255[3];
    *&v288 = v30;
    BYTE8(v288) = v42;
    HIDWORD(v288) = *&v256[3];
    *(&v288 + 9) = *v256;
    *&v289 = v31;
    BYTE8(v289) = v44;
    HIDWORD(v289) = *&v257[3];
    *(&v289 + 9) = *v257;
    v82 = *(v0 + 2512);
    *&v290 = v32;
    v83 = *(v0 + 2504);
    BYTE8(v290) = v45;
    HIDWORD(v290) = *&v258[3];
    *(&v290 + 9) = *v258;
    v84 = *(v0 + 2496);
    *&v291 = v43;
    *(&v291 + 1) = v33;
    v85 = *(v0 + 2488);
    v86 = *(v0 + 2480);
    LOBYTE(v292) = v46;
    DWORD1(v292) = *&v259[3];
    *(&v292 + 1) = *v259;
    v87 = *(v0 + 2472);
    *(&v292 + 1) = v34;
    v88 = *(v0 + 2464);
    LOBYTE(v293) = v47;
    DWORD1(v293) = *&v260[3];
    *(&v293 + 1) = *v260;
    v249 = *(v0 + 2456);
    *(&v293 + 1) = v35;
    v242 = *(v0 + 2040);
    v294[4] = v38;
    v294[7] = v262;
    *&v294[5] = v261;
    v236 = *(v0 + 2016);
    *&v294[72] = v40;
    v295 = v36;
    v227 = *(v0 + 1992);
    *(&v272 + 1) = v87;
    *&v273 = v86;
    v89 = *(v0 + 1984);
    *(&v273 + 1) = v85;
    *&v274 = v84;
    v90 = *(v0 + 1976);
    *&v272 = v88;
    v91 = *(v0 + 1960);
    *v294 = vuzp1_s8(v41, v41).u32[0];
    *&v294[8] = v37;
    *&v294[24] = v48;
    *&v294[40] = v49;
    *&v294[56] = v50;
    *(&v274 + 1) = v83;
    *&v275 = v82;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 16, v0 + 448, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);

    TokenGenerator.complete(prompt:promptTemplateInfo:parameters:tools:toolChoice:documents:constraint:metadata:)(v236, v242, &v286, v90, v89, v227, v249, &v272, v91);
    v92 = *(v0 + 2360);
    v93 = *(v0 + 2344);
    v237 = *(v0 + 2040);
    v243 = *(v0 + 2456);
    v94 = *(v0 + 2024);
    v95 = *(v0 + 2016);
    v96 = (*(v0 + 2352) + 8);
    v97 = (*(v0 + 2032) + 8);
    outlined consume of RequestMetadata?(v272, *(&v272 + 1), v273, *(&v273 + 1), v274, *(&v274 + 1), v275);
    v98 = *&v294[48];
    *(v0 + 1040) = *&v294[32];
    *(v0 + 1056) = v98;
    *(v0 + 1072) = *&v294[64];
    *(v0 + 1088) = v295;
    v99 = v293;
    *(v0 + 976) = v292;
    *(v0 + 992) = v99;
    v100 = *&v294[16];
    *(v0 + 1008) = *v294;
    *(v0 + 1024) = v100;
    v101 = v289;
    *(v0 + 912) = v288;
    *(v0 + 928) = v101;
    v102 = v291;
    *(v0 + 944) = v290;
    *(v0 + 960) = v102;
    v103 = v287;
    *(v0 + 880) = v286;
    *(v0 + 896) = v103;
    outlined destroy of SamplingParameters(v0 + 880);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v95, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
    (*v96)(v92, v93);
    (*v97)(v237, v94);
    goto LABEL_48;
  }

  (*(v13 + 32))(*(v0 + 2384), *(v0 + 2400), *(v0 + 2344));
  v51 = *(v0 + 192);
  *(v0 + 1256) = *(v0 + 176);
  *(v0 + 1272) = v51;
  *(v0 + 1288) = *(v0 + 208);
  *(v0 + 1304) = *(v0 + 224);
  v52 = *(v0 + 128);
  *(v0 + 1192) = *(v0 + 112);
  *(v0 + 1208) = v52;
  v53 = *(v0 + 160);
  *(v0 + 1224) = *(v0 + 144);
  *(v0 + 1240) = v53;
  v54 = *(v0 + 64);
  *(v0 + 1128) = *(v0 + 48);
  *(v0 + 1144) = v54;
  v55 = *(v0 + 96);
  *(v0 + 1160) = *(v0 + 80);
  *(v0 + 1176) = v55;
  v56 = *(v0 + 32);
  *(v0 + 1096) = *(v0 + 16);
  *(v0 + 1112) = v56;
  if (_s15TokenGeneration26SamplingParametersEnvelopeVSgWOg(v0 + 1096) == 1)
  {
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 1;
    LOBYTE(v272) = 1;
    LOBYTE(v286) = 1;
    v68 = 0uLL;
    v69 = 0x2000200020001;
    v70 = 2;
    v71 = -1;
    v72 = 768;
    v73 = MEMORY[0x1E69E7CD0];
    v74 = 1;
    v75 = 1;
    v76 = 1;
    v77 = 1;
    v78 = 1;
    v79 = 0uLL;
    v80 = 0uLL;
    v81 = 0uLL;
  }

  else
  {
    v58 = *(v0 + 16);
    v71 = *(v0 + 24);
    *v263 = *(v0 + 25);
    *&v263[3] = *(v0 + 28);
    v59 = *(v0 + 32);
    v67 = *(v0 + 40);
    *v264 = *(v0 + 41);
    *&v264[3] = *(v0 + 44);
    v60 = *(v0 + 48);
    v74 = *(v0 + 56);
    *&v265[3] = *(v0 + 60);
    *v265 = *(v0 + 57);
    v61 = *(v0 + 64);
    v75 = *(v0 + 72);
    *v266 = *(v0 + 73);
    *&v266[3] = *(v0 + 76);
    v62 = *(v0 + 80);
    v76 = *(v0 + 88);
    *v267 = *(v0 + 89);
    *&v267[3] = *(v0 + 92);
    v73 = *(v0 + 96);
    v63 = *(v0 + 104);
    v77 = *(v0 + 112);
    *v268 = *(v0 + 113);
    *&v268[3] = *(v0 + 116);
    v64 = *(v0 + 120);
    v78 = *(v0 + 128);
    *&v269[3] = *(v0 + 132);
    *v269 = *(v0 + 129);
    v65 = *(v0 + 136);
    v57.i32[0] = *(v0 + 144);
    v69 = vmovl_u8(v57).u64[0];
    v70 = *(v0 + 148);
    v270 = *(v0 + 149);
    v271 = *(v0 + 151);
    v68 = *(v0 + 152);
    v79 = *(v0 + 168);
    v80 = *(v0 + 184);
    v81 = *(v0 + 200);
    v72 = *(v0 + 216);
    v66 = *(v0 + 224);
  }

  *(v0 + 1312) = v58;
  *(v0 + 1320) = v71;
  *(v0 + 1324) = *&v263[3];
  *(v0 + 1321) = *v263;
  *(v0 + 1328) = v59;
  *(v0 + 1336) = v67;
  *(v0 + 1340) = *&v264[3];
  *(v0 + 1337) = *v264;
  *(v0 + 1344) = v60;
  *(v0 + 1352) = v74;
  *(v0 + 1356) = *&v265[3];
  *(v0 + 1353) = *v265;
  *(v0 + 1360) = v61;
  *(v0 + 1368) = v75;
  *(v0 + 1372) = *&v266[3];
  *(v0 + 1369) = *v266;
  *(v0 + 1376) = v62;
  *(v0 + 1384) = v76;
  *(v0 + 1388) = *&v267[3];
  *(v0 + 1385) = *v267;
  *(v0 + 1392) = v73;
  *(v0 + 1400) = v63;
  *(v0 + 1408) = v77;
  *(v0 + 1412) = *&v268[3];
  *(v0 + 1409) = *v268;
  *(v0 + 1416) = v64;
  *(v0 + 1424) = v78;
  *(v0 + 1428) = *&v269[3];
  *(v0 + 1425) = *v269;
  *(v0 + 1432) = v65;
  *(v0 + 1440) = vuzp1_s8(v69, v69).u32[0];
  *(v0 + 1444) = v70;
  *(v0 + 1447) = v271;
  *(v0 + 1445) = v270;
  *(v0 + 1448) = v68;
  *(v0 + 1464) = v79;
  *(v0 + 1480) = v80;
  *(v0 + 1496) = v81;
  *(v0 + 1512) = v72;
  *(v0 + 1520) = v66;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 16, v0 + 1528, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);

  PromptVariant.tgPrompt.getter();
  v213 = *(v0 + 2448);
  v215 = *(v0 + 2456);
  v104 = *(v0 + 2384);
  v105 = *(v0 + 2376);
  v106 = *(v0 + 2352);
  v107 = *(v0 + 2344);
  v224 = *(v0 + 2328);
  v228 = *(v0 + 2320);
  v108 = *(v0 + 2288);
  v238 = *(v0 + 2280);
  v244 = *(v0 + 2368);
  v212 = *(v0 + 2272);
  v109 = *(v0 + 1984);
  v250 = *(v0 + 1976);
  v217 = *(*(v0 + 2312) + 16);
  v219 = *(v0 + 2304);
  v217();
  v110 = *(v106 + 16);
  v110(v105, v104, v107);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v215, v213, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v109, v212, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);

  outlined init with copy of SamplingParameters(v0 + 1312, v0 + 1744);
  XPCDictionary.init()();
  (v217)(v228, v224, v219);
  v111 = specialized PromptEnvelope.init(sealing:xpcData:)(v228, v108);
  v112 = (v108 + v238[5]);
  *v112 = v111;
  v112[1] = v113;
  v112[2] = v114;
  v112[3] = v115;
  v110(v244, v105, v107);
  PromptVariantEnvelope.init(sealing:xpcData:)(v244, v108, v108 + v238[6]);
  v116 = *(v0 + 1488);
  *&v294[32] = *(v0 + 1472);
  *&v294[48] = v116;
  *&v294[64] = *(v0 + 1504);
  v295 = *(v0 + 1520);
  v117 = *(v0 + 1424);
  v292 = *(v0 + 1408);
  v293 = v117;
  v118 = *(v0 + 1456);
  *v294 = *(v0 + 1440);
  *&v294[16] = v118;
  v119 = *(v0 + 1360);
  v288 = *(v0 + 1344);
  v289 = v119;
  v120 = *(v0 + 1392);
  v290 = *(v0 + 1376);
  v291 = v120;
  v121 = *(v0 + 1328);
  v286 = *(v0 + 1312);
  v287 = v121;
  SamplingParametersEnvelope.init(sealing:)(&v286, &v272);
  v122 = v108 + v238[7];
  v123 = v277;
  *(v122 + 64) = v276;
  *(v122 + 80) = v123;
  v124 = v275;
  *(v122 + 32) = v274;
  *(v122 + 48) = v124;
  v125 = v281;
  *(v122 + 128) = v280;
  *(v122 + 144) = v125;
  v126 = v279;
  *(v122 + 96) = v278;
  *(v122 + 112) = v126;
  *(v122 + 208) = v285;
  v127 = v284;
  *(v122 + 176) = v283;
  *(v122 + 192) = v127;
  *(v122 + 160) = v282;
  v128 = v273;
  *v122 = v272;
  *(v122 + 16) = v128;
  v129 = *(v250 + 16);
  v130 = MEMORY[0x1E69E7CC0];
  v214 = v129;
  if (v129)
  {
    v131 = *(v0 + 2200);
    v245 = *(v0 + 2112);
    v132 = *(v0 + 1976);
    *&v286 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v129, 0);
    v133 = v286;
    v134 = *(v131 + 16);
    v131 += 16;
    v135 = v132 + ((*(v131 + 64) + 32) & ~*(v131 + 64));
    v232 = *(v131 + 56);
    v239 = v134;
    v229 = (v131 - 8);
    do
    {
      v136 = *(v0 + 2216);
      v137 = *(v0 + 2208);
      v138 = *(v0 + 2192);
      v139 = *(v0 + 2120);
      v239(v136, v135, v138);
      v239(v137, v136, v138);
      ToolDescription.init(toolType:)(v137, v139);
      (*v229)(v136, v138);
      *&v286 = v133;
      v141 = *(v133 + 16);
      v140 = *(v133 + 24);
      if (v141 >= v140 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v140 > 1), v141 + 1, 1);
        v133 = v286;
      }

      v142 = *(v0 + 2120);
      *(v133 + 16) = v141 + 1;
      outlined init with take of TokenGeneratorResponsePromptCompletionStream(v142, v133 + ((*(v245 + 80) + 32) & ~*(v245 + 80)) + *(v245 + 72) * v141, type metadata accessor for ToolDescription);
      v135 += v232;
      --v129;
    }

    while (v129);
    v130 = MEMORY[0x1E69E7CC0];
    v143 = *(v133 + 16);
    if (v143)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v133 = MEMORY[0x1E69E7CC0];
    v143 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v143)
    {
LABEL_18:
      v144 = *(v0 + 2424);
      v251 = *(v0 + 2144);
      v145 = *(v0 + 2112);
      v222 = *(v0 + 2056);
      v225 = *(v0 + 2080);
      v220 = *(v0 + 2048);
      *&v286 = v130;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v143, 0);
      v146 = v286;
      v147 = v133 + ((*(v145 + 80) + 32) & ~*(v145 + 80));
      v246 = *(v145 + 72);
      v216 = (v144 + 8);
      v218 = (v144 + 16);
      do
      {
        v148 = *(v0 + 2136);
        v149 = *(v0 + 2128);
        v150 = *(v0 + 2104);
        v151 = *(v0 + 2096);
        outlined init with copy of PromptCompletion(v147, v148, type metadata accessor for ToolDescription);
        outlined init with copy of PromptCompletion(v148, v149, type metadata accessor for ToolDescription);
        outlined init with copy of PromptCompletion(v149, v150, type metadata accessor for ToolType);
        outlined init with copy of PromptCompletion(v150, v151, type metadata accessor for ToolType);
        v152 = swift_getEnumCaseMultiPayload();
        if (v152 <= 1)
        {
          v153 = *(v0 + 2096);
          v154 = *(v0 + 2080);
          if (v152)
          {
            outlined destroy of TokenGeneratorCompletionResponseStringStream(*(v0 + 2104), type metadata accessor for ToolType);
            v155 = type metadata accessor for FileGenerationParameters();
          }

          else
          {
            outlined destroy of TokenGeneratorCompletionResponseStringStream(*(v0 + 2104), type metadata accessor for ToolType);
            v155 = type metadata accessor for ImageGenerationParameters();
          }

          (*(*(v155 - 8) + 32))(v154, v153, v155);
        }

        else if (v152 == 2)
        {
          v156 = *(v0 + 2432);
          v157 = *(v0 + 2416);
          v158 = *(v0 + 2080);
          v233 = *(v0 + 2104);
          v159 = *(v0 + 2064);
          v230 = v159;
          v160 = *(v0 + 2056);
          outlined init with take of TokenGeneratorResponsePromptCompletionStream(*(v0 + 2096), v159, type metadata accessor for FunctionDescription);
          outlined init with copy of PromptCompletion(v159, v160, type metadata accessor for FunctionDescription);
          v161 = v222[1];
          *v158 = *v160;
          v225[1] = v161;
          v162 = v222[3];
          v225[2] = v222[2];
          v225[3] = v162;
          (*v218)(v156, &v160[*(v220 + 24)], v157);
          type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope(0);

          Schema.type.getter();
          outlined destroy of TokenGeneratorCompletionResponseStringStream(v233, type metadata accessor for ToolType);
          (*v216)(v156, v157);
          outlined destroy of TokenGeneratorCompletionResponseStringStream(v160, type metadata accessor for FunctionDescription);
          outlined destroy of TokenGeneratorCompletionResponseStringStream(v230, type metadata accessor for FunctionDescription);
        }

        else
        {
          outlined destroy of TokenGeneratorCompletionResponseStringStream(*(v0 + 2104), type metadata accessor for ToolType);
        }

        swift_storeEnumTagMultiPayload();
        v163 = *(v0 + 2136);
        v164 = *(v0 + 2128);
        outlined init with take of TokenGeneratorResponsePromptCompletionStream(*(v0 + 2080), *(v0 + 2152), type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope);
        outlined destroy of TokenGeneratorCompletionResponseStringStream(v164, type metadata accessor for ToolDescription);
        outlined destroy of TokenGeneratorCompletionResponseStringStream(v163, type metadata accessor for ToolDescription);
        *&v286 = v146;
        v166 = *(v146 + 16);
        v165 = *(v146 + 24);
        if (v166 >= v165 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v165 > 1), v166 + 1, 1);
          v146 = v286;
        }

        v167 = *(v0 + 2152);
        *(v146 + 16) = v166 + 1;
        outlined init with take of TokenGeneratorResponsePromptCompletionStream(v167, v146 + ((*(v251 + 80) + 32) & ~*(v251 + 80)) + *(v251 + 72) * v166, type metadata accessor for ToolDescriptionEnvelope);
        v147 += v246;
        --v143;
      }

      while (v143);

      goto LABEL_33;
    }
  }

  v146 = MEMORY[0x1E69E7CC0];
LABEL_33:
  v168 = *(v0 + 2272);
  v169 = *(v0 + 2264);
  v170 = *(v0 + 2240);
  v171 = *(v0 + 2232);
  *(*(v0 + 2288) + *(*(v0 + 2280) + 36)) = v146;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v168, v169, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  v172 = (*(v170 + 48))(v169, 1, v171);
  v173 = *(v0 + 2376);
  v174 = *(v0 + 2352);
  v175 = *(v0 + 2344);
  v176 = *(v0 + 2328);
  v177 = *(v0 + 2312);
  v178 = *(v0 + 2304);
  v179 = *(v0 + 2272);
  if (v172 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 2272), &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v223 = *(v174 + 8);
    v223(v173, v175);
    v221 = *(v177 + 8);
    v221(v176, v178);
    v180 = xmmword_1ABA26F10;
  }

  else
  {
    v247 = *(v0 + 2328);
    v252 = *(v0 + 2304);
    v181 = *(v0 + 2256);
    v182 = *(v0 + 2248);
    v183 = *(v0 + 2240);
    v184 = *(v0 + 2232);
    (*(v183 + 32))(v181, *(v0 + 2264), v184);
    (*(v183 + 16))(v182, v181, v184);
    ToolChoiceEnvelope.init(sealing:)(v182, &v286);
    (*(v183 + 8))(v181, v184);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v179, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v223 = *(v174 + 8);
    v223(v173, v175);
    v221 = *(v177 + 8);
    v221(v247, v252);
    v180 = v286;
  }

  v185 = *(v0 + 2512);
  v186 = *(v0 + 2488);
  v187 = *(v0 + 2480);
  v188 = *(v0 + 2464);
  v189 = *(v0 + 2448);
  v190 = *(v0 + 2296);
  v191 = *(v0 + 2288);
  v192 = *(v0 + 2280);
  v193 = *(v0 + 1992);
  v194 = *(v0 + 2496);
  *(v191 + v192[10]) = v180;
  v195 = v191 + v192[12];
  *v195 = v188;
  *(v195 + 16) = v187;
  *(v195 + 24) = v186;
  *(v195 + 32) = v194;
  *(v195 + 48) = v185;
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v189, v191 + v192[8], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  *(v191 + v192[11]) = v193;
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v191, v190, type metadata accessor for CompletePromptRequest);
  v196 = v214;
  if (v214)
  {
    v197 = *(v0 + 2200);
    v240 = *(v197 + 16);
    v198 = *(v0 + 1976) + ((*(v197 + 80) + 32) & ~*(v197 + 80));
    v231 = (v197 + 8);
    v234 = *(v197 + 72);
    v226 = *(v0 + 2176);

    v253 = MEMORY[0x1E69E7CC0];
    do
    {
      v199 = *(v0 + 2224);
      v200 = *(v0 + 2216);
      v201 = *(v0 + 2192);
      v202 = *(v0 + 2168);
      v203 = *(v0 + 2160);
      v240(v199, v198, v201);
      v240(v200, v199, v201);
      AnyTooling.init(_:)(v200, v203);
      (*v231)(v199, v201);
      if ((*(v226 + 48))(v203, 1, v202) == 1)
      {
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 2160), &_s15TokenGeneration10AnyToolingVSgMd, &_s15TokenGeneration10AnyToolingVSgMR);
      }

      else
      {
        outlined init with take of TokenGeneratorResponsePromptCompletionStream(*(v0 + 2160), *(v0 + 2184), type metadata accessor for AnyTooling);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v253 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v253[2] + 1, 1, v253);
        }

        v205 = v253[2];
        v204 = v253[3];
        if (v205 >= v204 >> 1)
        {
          v253 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v204 > 1), v205 + 1, 1, v253);
        }

        v206 = *(v0 + 2184);
        v253[2] = v205 + 1;
        outlined init with take of TokenGeneratorResponsePromptCompletionStream(v206, v253 + ((*(v226 + 80) + 32) & ~*(v226 + 80)) + *(v226 + 72) * v205, type metadata accessor for AnyTooling);
      }

      v198 += v234;
      --v196;
    }

    while (v196);
  }

  else
  {

    v253 = MEMORY[0x1E69E7CC0];
  }

  v241 = *(v0 + 2384);
  v243 = *(v0 + 2456);
  v235 = *(v0 + 2344);
  v207 = *(v0 + 2336);
  v208 = *(v0 + 2304);
  v209 = *(v0 + 2296);
  TokenGenerator.handleCompletePromptRequest(request:tools:)(v209, v253, *(v0 + 1960));

  outlined destroy of SamplingParameters(v0 + 1312);

  outlined destroy of TokenGeneratorCompletionResponseStringStream(v209, type metadata accessor for CompletePromptRequest);
  v221(v207, v208);
  v223(v241, v235);
LABEL_48:
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v243, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);

  v210 = *(v0 + 8);

  return v210();
}

uint64_t TokenGenerator.complete(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:grammar:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 2016) = v8;
  *(v9 + 2008) = a8;
  *(v9 + 2000) = a7;
  *(v9 + 1992) = a6;
  *(v9 + 1984) = a5;
  *(v9 + 1976) = a4;
  *(v9 + 1968) = a2;
  *(v9 + 1960) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  *(v9 + 2024) = swift_task_alloc();
  v11 = type metadata accessor for PromptTemplateInfo();
  *(v9 + 2032) = v11;
  *(v9 + 2040) = *(v11 - 8);
  *(v9 + 2048) = swift_task_alloc();
  v12 = type metadata accessor for Schema();
  *(v9 + 2056) = v12;
  *(v9 + 2064) = *(v12 - 8);
  *(v9 + 2072) = swift_task_alloc();
  *(v9 + 2080) = type metadata accessor for FunctionDescription(0);
  *(v9 + 2088) = swift_task_alloc();
  *(v9 + 2096) = swift_task_alloc();
  *(v9 + 2104) = type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope(0);
  *(v9 + 2112) = swift_task_alloc();
  *(v9 + 2120) = type metadata accessor for ToolType(0);
  *(v9 + 2128) = swift_task_alloc();
  *(v9 + 2136) = swift_task_alloc();
  *(v9 + 2144) = *(type metadata accessor for ToolDescription(0) - 8);
  *(v9 + 2152) = swift_task_alloc();
  *(v9 + 2160) = swift_task_alloc();
  *(v9 + 2168) = swift_task_alloc();
  *(v9 + 2176) = *(type metadata accessor for ToolDescriptionEnvelope(0) - 8);
  *(v9 + 2184) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration10AnyToolingVSgMd, &_s15TokenGeneration10AnyToolingVSgMR);
  *(v9 + 2192) = swift_task_alloc();
  v13 = type metadata accessor for AnyTooling(0);
  *(v9 + 2200) = v13;
  *(v9 + 2208) = *(v13 - 8);
  *(v9 + 2216) = swift_task_alloc();
  v14 = type metadata accessor for ToolType();
  *(v9 + 2224) = v14;
  *(v9 + 2232) = *(v14 - 8);
  *(v9 + 2240) = swift_task_alloc();
  *(v9 + 2248) = swift_task_alloc();
  *(v9 + 2256) = swift_task_alloc();
  v15 = type metadata accessor for ToolChoice();
  *(v9 + 2264) = v15;
  *(v9 + 2272) = *(v15 - 8);
  *(v9 + 2280) = swift_task_alloc();
  *(v9 + 2288) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  *(v9 + 2296) = swift_task_alloc();
  *(v9 + 2304) = swift_task_alloc();
  *(v9 + 2312) = type metadata accessor for CompletePromptRequest(0);
  *(v9 + 2320) = swift_task_alloc();
  *(v9 + 2328) = swift_task_alloc();
  v16 = type metadata accessor for Prompt();
  *(v9 + 2336) = v16;
  *(v9 + 2344) = *(v16 - 8);
  *(v9 + 2352) = swift_task_alloc();
  *(v9 + 2360) = swift_task_alloc();
  *(v9 + 2368) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  *(v9 + 2376) = swift_task_alloc();
  *(v9 + 2384) = swift_task_alloc();
  *(v9 + 2392) = swift_task_alloc();
  v17 = type metadata accessor for PromptVariant();
  *(v9 + 2400) = v17;
  *(v9 + 2408) = *(v17 - 8);
  *(v9 + 2416) = swift_task_alloc();
  *(v9 + 2424) = swift_task_alloc();
  *(v9 + 2432) = swift_task_alloc();
  *(v9 + 2440) = swift_task_alloc();
  *(v9 + 2448) = type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel(0);
  *(v9 + 2456) = swift_task_alloc();
  v18 = *(a3 + 176);
  *(v9 + 176) = *(a3 + 160);
  *(v9 + 192) = v18;
  *(v9 + 208) = *(a3 + 192);
  *(v9 + 224) = *(a3 + 208);
  v19 = *(a3 + 112);
  *(v9 + 112) = *(a3 + 96);
  *(v9 + 128) = v19;
  v20 = *(a3 + 144);
  *(v9 + 144) = *(a3 + 128);
  *(v9 + 160) = v20;
  v21 = *(a3 + 48);
  *(v9 + 48) = *(a3 + 32);
  *(v9 + 64) = v21;
  v22 = *(a3 + 80);
  *(v9 + 80) = *(a3 + 64);
  *(v9 + 96) = v22;
  v23 = *(a3 + 16);
  *(v9 + 16) = *a3;
  *(v9 + 32) = v23;
  *(v9 + 2464) = *v26;
  *(v9 + 2472) = *(v26 + 8);
  *(v9 + 2488) = *(v26 + 24);
  *(v9 + 2496) = *(v26 + 32);
  *(v9 + 2512) = *(v26 + 48);

  return MEMORY[0x1EEE6DFA0](TokenGenerator.complete(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:grammar:metadata:), 0, 0);
}

uint64_t TokenGenerator.complete(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:grammar:metadata:)()
{
  v295 = v0;
  outlined init with copy of PromptCompletion(*(v0 + 1968), *(v0 + 2456), type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = *(v0 + 2456);
  v3 = *(v0 + 2408);
  v4 = *(v0 + 2400);
  if (EnumCaseMultiPayload == 1)
  {
    v5 = *(v0 + 2416);
    v6 = *(v0 + 2048);
    v7 = *(v0 + 2040);
    v8 = *(v0 + 2032);
    v248 = *(v0 + 2024);
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMd, &_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMR) + 48);
    (*(v7 + 32))(v6, v2, v8);
    (*(v3 + 32))(v5, v2 + v9, v4);
    (*(v3 + 16))(v248, v5, v4);
    v10 = 1;
    (*(v3 + 56))(v248, 0, 1, v4);
    v11 = *(v0 + 192);
    *(v0 + 392) = *(v0 + 176);
    *(v0 + 408) = v11;
    *(v0 + 424) = *(v0 + 208);
    *(v0 + 440) = *(v0 + 224);
    v12 = *(v0 + 128);
    *(v0 + 328) = *(v0 + 112);
    *(v0 + 344) = v12;
    v13 = *(v0 + 160);
    *(v0 + 360) = *(v0 + 144);
    *(v0 + 376) = v13;
    v14 = *(v0 + 64);
    *(v0 + 264) = *(v0 + 48);
    *(v0 + 280) = v14;
    v15 = *(v0 + 96);
    *(v0 + 296) = *(v0 + 80);
    *(v0 + 312) = v15;
    v16 = *(v0 + 32);
    *(v0 + 232) = *(v0 + 16);
    *(v0 + 248) = v16;
    if (_s15TokenGeneration26SamplingParametersEnvelopeVSgWOg(v0 + 232) == 1)
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      LOBYTE(v271) = 1;
      v27 = 0uLL;
      LOBYTE(v285) = 1;
      v28 = 2;
      v29 = -1;
      v30 = 768;
      v31 = 0x2000200020001;
      v32 = 1;
      v33 = MEMORY[0x1E69E7CD0];
      v34 = 1;
      v35 = 1;
      v36 = 1;
      v37 = 1;
      v38 = 0uLL;
      v39 = 0uLL;
      v40 = 0uLL;
    }

    else
    {
      v18 = *(v0 + 16);
      v29 = *(v0 + 24);
      *v253 = *(v0 + 25);
      *&v253[3] = *(v0 + 28);
      v19 = *(v0 + 32);
      v10 = *(v0 + 40);
      *v254 = *(v0 + 41);
      *&v254[3] = *(v0 + 44);
      v20 = *(v0 + 48);
      v32 = *(v0 + 56);
      *&v255[3] = *(v0 + 60);
      *v255 = *(v0 + 57);
      v21 = *(v0 + 64);
      v34 = *(v0 + 72);
      *v256 = *(v0 + 73);
      *&v256[3] = *(v0 + 76);
      v22 = *(v0 + 80);
      v35 = *(v0 + 88);
      *v257 = *(v0 + 89);
      *&v257[3] = *(v0 + 92);
      v33 = *(v0 + 96);
      v23 = *(v0 + 104);
      v36 = *(v0 + 112);
      *v258 = *(v0 + 113);
      *&v258[3] = *(v0 + 116);
      v24 = *(v0 + 120);
      v37 = *(v0 + 128);
      *&v259[3] = *(v0 + 132);
      *v259 = *(v0 + 129);
      v25 = *(v0 + 136);
      v17.i32[0] = *(v0 + 144);
      v31 = vmovl_u8(v17).u64[0];
      v28 = *(v0 + 148);
      v260 = *(v0 + 149);
      v261 = *(v0 + 151);
      v27 = *(v0 + 152);
      v38 = *(v0 + 168);
      v39 = *(v0 + 184);
      v40 = *(v0 + 200);
      v30 = *(v0 + 216);
      v26 = *(v0 + 224);
    }

    *&v285 = v18;
    BYTE8(v285) = v29;
    *(&v285 + 9) = *v253;
    HIDWORD(v285) = *&v253[3];
    *&v286 = v19;
    v72 = *(v0 + 2512);
    BYTE8(v286) = v10;
    *(&v286 + 9) = *v254;
    HIDWORD(v286) = *&v254[3];
    v73 = *(v0 + 2504);
    *&v287 = v20;
    v227 = *(v0 + 2496);
    BYTE8(v287) = v32;
    *(&v287 + 9) = *v255;
    HIDWORD(v287) = *&v255[3];
    v74 = *(v0 + 2488);
    *&v288 = v21;
    v221 = *(v0 + 2480);
    BYTE8(v288) = v34;
    HIDWORD(v288) = *&v256[3];
    *(&v288 + 9) = *v256;
    v75 = *(v0 + 2472);
    *&v289 = v22;
    v76 = *(v0 + 2464);
    BYTE8(v289) = v35;
    HIDWORD(v289) = *&v257[3];
    *(&v289 + 9) = *v257;
    v77 = *(v0 + 2376);
    *&v290 = v33;
    *(&v290 + 1) = v23;
    v242 = *(v0 + 2024);
    v249 = *(v0 + 2048);
    LOBYTE(v291) = v36;
    *(&v291 + 1) = *v258;
    DWORD1(v291) = *&v258[3];
    *(&v291 + 1) = v24;
    v78 = *(v0 + 2008);
    LOBYTE(v292) = v37;
    DWORD1(v292) = *&v259[3];
    *(&v292 + 1) = *v259;
    v79 = *(v0 + 2000);
    *(&v292 + 1) = v25;
    v232 = *(v0 + 1992);
    v293[4] = v28;
    v293[7] = v261;
    *&v293[5] = v260;
    v224 = *(v0 + 1984);
    *&v293[72] = v30;
    v80 = *(v0 + 1976);
    v294 = v26;
    v217 = *(v0 + 1960);
    v220 = v80;
    *v293 = vuzp1_s8(v31, v31).u32[0];
    *&v293[8] = v27;
    *&v293[24] = v38;
    *&v293[40] = v39;
    *&v293[56] = v40;
    *v77 = v79;
    *(v77 + 8) = v78;
    v81 = type metadata accessor for Constraints(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v81 - 8) + 56))(v77, 0, 1, v81);
    *&v271 = v76;
    *(&v271 + 1) = v75;
    *&v272 = v221;
    *(&v272 + 1) = v74;
    *&v273 = v227;
    *(&v273 + 1) = v73;
    *&v274 = v72;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 16, v0 + 448, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);

    TokenGenerator.complete(prompt:promptTemplateInfo:parameters:tools:toolChoice:documents:constraint:metadata:)(v242, v249, &v285, v220, v224, v232, v77, &v271, v217);
    v82 = *(v0 + 2416);
    v83 = *(v0 + 2400);
    v84 = *(v0 + 2376);
    v236 = *(v0 + 2032);
    v243 = *(v0 + 2048);
    v85 = *(v0 + 2024);
    v86 = (*(v0 + 2408) + 8);
    v87 = (*(v0 + 2040) + 8);
    outlined consume of RequestMetadata?(v271, *(&v271 + 1), v272, *(&v272 + 1), v273, *(&v273 + 1), v274);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v84, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    v92 = *&v293[48];
    *(v0 + 1040) = *&v293[32];
    *(v0 + 1056) = v92;
    *(v0 + 1072) = *&v293[64];
    *(v0 + 1088) = v294;
    v93 = v292;
    *(v0 + 976) = v291;
    *(v0 + 992) = v93;
    v94 = *&v293[16];
    *(v0 + 1008) = *v293;
    *(v0 + 1024) = v94;
    v95 = v288;
    *(v0 + 912) = v287;
    *(v0 + 928) = v95;
    v96 = v290;
    *(v0 + 944) = v289;
    *(v0 + 960) = v96;
    v97 = v286;
    *(v0 + 880) = v285;
    *(v0 + 896) = v97;
    outlined destroy of SamplingParameters(v0 + 880);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v85, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
    (*v86)(v82, v83);
    (*v87)(v243, v236);
    goto LABEL_45;
  }

  (*(v3 + 32))(*(v0 + 2440), *(v0 + 2456), *(v0 + 2400));
  v41 = *(v0 + 192);
  *(v0 + 1256) = *(v0 + 176);
  *(v0 + 1272) = v41;
  *(v0 + 1288) = *(v0 + 208);
  *(v0 + 1304) = *(v0 + 224);
  v42 = *(v0 + 128);
  *(v0 + 1192) = *(v0 + 112);
  *(v0 + 1208) = v42;
  v43 = *(v0 + 160);
  *(v0 + 1224) = *(v0 + 144);
  *(v0 + 1240) = v43;
  v44 = *(v0 + 64);
  *(v0 + 1128) = *(v0 + 48);
  *(v0 + 1144) = v44;
  v45 = *(v0 + 96);
  *(v0 + 1160) = *(v0 + 80);
  *(v0 + 1176) = v45;
  v46 = *(v0 + 32);
  *(v0 + 1096) = *(v0 + 16);
  *(v0 + 1112) = v46;
  if (_s15TokenGeneration26SamplingParametersEnvelopeVSgWOg(v0 + 1096) == 1)
  {
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 1;
    LOBYTE(v271) = 1;
    LOBYTE(v285) = 1;
    v58 = 0uLL;
    v59 = 0x2000200020001;
    v60 = 2;
    v61 = -1;
    v62 = 768;
    v63 = MEMORY[0x1E69E7CD0];
    v64 = 1;
    v65 = 1;
    v66 = 1;
    v67 = 1;
    v68 = 1;
    v69 = 0uLL;
    v70 = 0uLL;
    v71 = 0uLL;
  }

  else
  {
    v48 = *(v0 + 16);
    v61 = *(v0 + 24);
    *v262 = *(v0 + 25);
    *&v262[3] = *(v0 + 28);
    v49 = *(v0 + 32);
    v57 = *(v0 + 40);
    *v263 = *(v0 + 41);
    *&v263[3] = *(v0 + 44);
    v50 = *(v0 + 48);
    v64 = *(v0 + 56);
    *&v264[3] = *(v0 + 60);
    *v264 = *(v0 + 57);
    v51 = *(v0 + 64);
    v65 = *(v0 + 72);
    *v265 = *(v0 + 73);
    *&v265[3] = *(v0 + 76);
    v52 = *(v0 + 80);
    v66 = *(v0 + 88);
    *v266 = *(v0 + 89);
    *&v266[3] = *(v0 + 92);
    v63 = *(v0 + 96);
    v53 = *(v0 + 104);
    v67 = *(v0 + 112);
    *v267 = *(v0 + 113);
    *&v267[3] = *(v0 + 116);
    v54 = *(v0 + 120);
    v68 = *(v0 + 128);
    *&v268[3] = *(v0 + 132);
    *v268 = *(v0 + 129);
    v55 = *(v0 + 136);
    v47.i32[0] = *(v0 + 144);
    v59 = vmovl_u8(v47).u64[0];
    v60 = *(v0 + 148);
    v269 = *(v0 + 149);
    v270 = *(v0 + 151);
    v58 = *(v0 + 152);
    v69 = *(v0 + 168);
    v70 = *(v0 + 184);
    v71 = *(v0 + 200);
    v62 = *(v0 + 216);
    v56 = *(v0 + 224);
  }

  v88 = *(v0 + 2392);
  v89 = *(v0 + 2008);
  v90 = *(v0 + 2000);
  *(v0 + 1312) = v48;
  *(v0 + 1320) = v61;
  *(v0 + 1324) = *&v262[3];
  *(v0 + 1321) = *v262;
  *(v0 + 1328) = v49;
  *(v0 + 1336) = v57;
  *(v0 + 1340) = *&v263[3];
  *(v0 + 1337) = *v263;
  *(v0 + 1344) = v50;
  *(v0 + 1352) = v64;
  *(v0 + 1356) = *&v264[3];
  *(v0 + 1353) = *v264;
  *(v0 + 1360) = v51;
  *(v0 + 1368) = v65;
  *(v0 + 1372) = *&v265[3];
  *(v0 + 1369) = *v265;
  *(v0 + 1376) = v52;
  *(v0 + 1384) = v66;
  *(v0 + 1388) = *&v266[3];
  *(v0 + 1385) = *v266;
  *(v0 + 1392) = v63;
  *(v0 + 1400) = v53;
  *(v0 + 1408) = v67;
  *(v0 + 1412) = *&v267[3];
  *(v0 + 1409) = *v267;
  *(v0 + 1416) = v54;
  *(v0 + 1424) = v68;
  *(v0 + 1428) = *&v268[3];
  *(v0 + 1425) = *v268;
  *(v0 + 1432) = v55;
  *(v0 + 1440) = vuzp1_s8(v59, v59).u32[0];
  *(v0 + 1444) = v60;
  *(v0 + 1447) = v270;
  *(v0 + 1445) = v269;
  *(v0 + 1448) = v58;
  *(v0 + 1464) = v69;
  *(v0 + 1480) = v70;
  *(v0 + 1496) = v71;
  *(v0 + 1512) = v62;
  *(v0 + 1520) = v56;
  *v88 = v90;
  v88[1] = v89;
  v91 = type metadata accessor for Constraints(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v91 - 8) + 56))(v88, 0, 1, v91);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 16, v0 + 1528, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);

  PromptVariant.tgPrompt.getter();
  v98 = *(v0 + 2440);
  v99 = *(v0 + 2432);
  v100 = *(v0 + 2408);
  v101 = *(v0 + 2400);
  v102 = *(v0 + 2392);
  v208 = *(v0 + 2384);
  v222 = *(v0 + 2360);
  v228 = *(v0 + 2352);
  v103 = *(v0 + 2320);
  v237 = *(v0 + 2312);
  v244 = *(v0 + 2424);
  v209 = *(v0 + 2304);
  v104 = *(v0 + 1984);
  v250 = *(v0 + 1976);
  v212 = *(*(v0 + 2344) + 16);
  v214 = *(v0 + 2336);
  v212();
  v105 = *(v100 + 16);
  v105(v99, v98, v101);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v102, v208, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v104, v209, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);

  outlined init with copy of SamplingParameters(v0 + 1312, v0 + 1744);
  XPCDictionary.init()();
  (v212)(v228, v222, v214);
  v106 = specialized PromptEnvelope.init(sealing:xpcData:)(v228, v103);
  v107 = (v103 + v237[5]);
  *v107 = v106;
  v107[1] = v108;
  v107[2] = v109;
  v107[3] = v110;
  v105(v244, v99, v101);
  PromptVariantEnvelope.init(sealing:xpcData:)(v244, v103, v103 + v237[6]);
  v111 = *(v0 + 1488);
  *&v293[32] = *(v0 + 1472);
  *&v293[48] = v111;
  *&v293[64] = *(v0 + 1504);
  v294 = *(v0 + 1520);
  v112 = *(v0 + 1424);
  v291 = *(v0 + 1408);
  v292 = v112;
  v113 = *(v0 + 1456);
  *v293 = *(v0 + 1440);
  *&v293[16] = v113;
  v114 = *(v0 + 1360);
  v287 = *(v0 + 1344);
  v288 = v114;
  v115 = *(v0 + 1392);
  v289 = *(v0 + 1376);
  v290 = v115;
  v116 = *(v0 + 1328);
  v285 = *(v0 + 1312);
  v286 = v116;
  SamplingParametersEnvelope.init(sealing:)(&v285, &v271);
  v117 = v103 + v237[7];
  v118 = v276;
  *(v117 + 64) = v275;
  *(v117 + 80) = v118;
  v119 = v274;
  *(v117 + 32) = v273;
  *(v117 + 48) = v119;
  v120 = v280;
  *(v117 + 128) = v279;
  *(v117 + 144) = v120;
  v121 = v278;
  *(v117 + 96) = v277;
  *(v117 + 112) = v121;
  *(v117 + 208) = v284;
  v122 = v283;
  *(v117 + 176) = v282;
  *(v117 + 192) = v122;
  *(v117 + 160) = v281;
  v123 = v272;
  *v117 = v271;
  *(v117 + 16) = v123;
  v124 = *(v250 + 16);
  v125 = MEMORY[0x1E69E7CC0];
  v251 = v124;
  if (v124)
  {
    v126 = *(v0 + 2232);
    v238 = *(v0 + 2144);
    v127 = *(v0 + 1976);
    *&v285 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v124, 0);
    v128 = v285;
    v129 = *(v126 + 16);
    v126 += 16;
    v130 = v127 + ((*(v126 + 64) + 32) & ~*(v126 + 64));
    v229 = *(v126 + 56);
    v233 = v129;
    v225 = (v126 - 8);
    do
    {
      v131 = *(v0 + 2248);
      v132 = *(v0 + 2240);
      v133 = *(v0 + 2224);
      v134 = *(v0 + 2152);
      v233(v131, v130, v133);
      v233(v132, v131, v133);
      ToolDescription.init(toolType:)(v132, v134);
      (*v225)(v131, v133);
      *&v285 = v128;
      v136 = *(v128 + 16);
      v135 = *(v128 + 24);
      if (v136 >= v135 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v135 > 1), v136 + 1, 1);
        v128 = v285;
      }

      v137 = *(v0 + 2152);
      *(v128 + 16) = v136 + 1;
      outlined init with take of TokenGeneratorResponsePromptCompletionStream(v137, v128 + ((*(v238 + 80) + 32) & ~*(v238 + 80)) + *(v238 + 72) * v136, type metadata accessor for ToolDescription);
      v130 += v229;
      --v124;
    }

    while (v124);
    v125 = MEMORY[0x1E69E7CC0];
    v138 = *(v128 + 16);
    if (v138)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v128 = MEMORY[0x1E69E7CC0];
    v138 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v138)
    {
LABEL_15:
      v245 = *(v0 + 2176);
      v139 = *(v0 + 2144);
      v215 = *(v0 + 2088);
      v218 = *(v0 + 2112);
      v213 = *(v0 + 2080);
      v140 = *(v0 + 2064);
      *&v285 = v125;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v138, 0);
      v141 = v285;
      v142 = v128 + ((*(v139 + 80) + 32) & ~*(v139 + 80));
      v239 = *(v139 + 72);
      v210 = (v140 + 8);
      v211 = (v140 + 16);
      do
      {
        v143 = *(v0 + 2168);
        v144 = *(v0 + 2160);
        v145 = *(v0 + 2136);
        v146 = *(v0 + 2128);
        outlined init with copy of PromptCompletion(v142, v143, type metadata accessor for ToolDescription);
        outlined init with copy of PromptCompletion(v143, v144, type metadata accessor for ToolDescription);
        outlined init with copy of PromptCompletion(v144, v145, type metadata accessor for ToolType);
        outlined init with copy of PromptCompletion(v145, v146, type metadata accessor for ToolType);
        v147 = swift_getEnumCaseMultiPayload();
        v148 = *(v0 + 2136);
        if (v147 <= 1)
        {
          v149 = *(v0 + 2128);
          v150 = *(v0 + 2112);
          if (v147)
          {
            outlined destroy of TokenGeneratorCompletionResponseStringStream(v148, type metadata accessor for ToolType);
            v151 = type metadata accessor for FileGenerationParameters();
          }

          else
          {
            outlined destroy of TokenGeneratorCompletionResponseStringStream(v148, type metadata accessor for ToolType);
            v151 = type metadata accessor for ImageGenerationParameters();
          }

          (*(*(v151 - 8) + 32))(v150, v149, v151);
        }

        else if (v147 == 2)
        {
          v152 = *(v0 + 2112);
          v226 = *(v0 + 2136);
          v153 = *(v0 + 2096);
          v230 = v153;
          v154 = *(v0 + 2088);
          v155 = *(v0 + 2072);
          v156 = *(v0 + 2056);
          outlined init with take of TokenGeneratorResponsePromptCompletionStream(*(v0 + 2128), v153, type metadata accessor for FunctionDescription);
          outlined init with copy of PromptCompletion(v153, v154, type metadata accessor for FunctionDescription);
          v157 = v215[1];
          *v152 = *v154;
          v218[1] = v157;
          v158 = v215[3];
          v218[2] = v215[2];
          v218[3] = v158;
          (*v211)(v155, &v154[*(v213 + 24)], v156);
          type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope(0);

          Schema.type.getter();
          outlined destroy of TokenGeneratorCompletionResponseStringStream(v226, type metadata accessor for ToolType);
          (*v210)(v155, v156);
          outlined destroy of TokenGeneratorCompletionResponseStringStream(v154, type metadata accessor for FunctionDescription);
          outlined destroy of TokenGeneratorCompletionResponseStringStream(v230, type metadata accessor for FunctionDescription);
        }

        else
        {
          outlined destroy of TokenGeneratorCompletionResponseStringStream(v148, type metadata accessor for ToolType);
        }

        swift_storeEnumTagMultiPayload();
        v159 = *(v0 + 2168);
        v160 = *(v0 + 2160);
        outlined init with take of TokenGeneratorResponsePromptCompletionStream(*(v0 + 2112), *(v0 + 2184), type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope);
        outlined destroy of TokenGeneratorCompletionResponseStringStream(v160, type metadata accessor for ToolDescription);
        outlined destroy of TokenGeneratorCompletionResponseStringStream(v159, type metadata accessor for ToolDescription);
        *&v285 = v141;
        v162 = *(v141 + 16);
        v161 = *(v141 + 24);
        if (v162 >= v161 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v161 > 1), v162 + 1, 1);
          v141 = v285;
        }

        v163 = *(v0 + 2184);
        *(v141 + 16) = v162 + 1;
        outlined init with take of TokenGeneratorResponsePromptCompletionStream(v163, v141 + ((*(v245 + 80) + 32) & ~*(v245 + 80)) + *(v245 + 72) * v162, type metadata accessor for ToolDescriptionEnvelope);
        v142 += v239;
        --v138;
      }

      while (v138);

      goto LABEL_30;
    }
  }

  v141 = MEMORY[0x1E69E7CC0];
LABEL_30:
  v164 = *(v0 + 2304);
  v165 = *(v0 + 2296);
  v166 = *(v0 + 2272);
  v167 = *(v0 + 2264);
  *(*(v0 + 2320) + *(*(v0 + 2312) + 36)) = v141;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v164, v165, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  v168 = (*(v166 + 48))(v165, 1, v167);
  v169 = *(v0 + 2432);
  v170 = *(v0 + 2408);
  v171 = *(v0 + 2400);
  v172 = *(v0 + 2360);
  v173 = *(v0 + 2344);
  v174 = *(v0 + 2336);
  v175 = *(v0 + 2304);
  if (v168 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 2304), &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v219 = *(v170 + 8);
    v219(v169, v171);
    v216 = *(v173 + 8);
    v216(v172, v174);
    v176 = xmmword_1ABA26F10;
  }

  else
  {
    v240 = *(v0 + 2360);
    v246 = *(v0 + 2336);
    v177 = *(v0 + 2288);
    v178 = *(v0 + 2280);
    v179 = *(v0 + 2272);
    v180 = *(v0 + 2264);
    (*(v179 + 32))(v177, *(v0 + 2296), v180);
    (*(v179 + 16))(v178, v177, v180);
    ToolChoiceEnvelope.init(sealing:)(v178, &v285);
    (*(v179 + 8))(v177, v180);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v175, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v219 = *(v170 + 8);
    v219(v169, v171);
    v216 = *(v173 + 8);
    v216(v240, v246);
    v176 = v285;
  }

  v181 = *(v0 + 2512);
  v182 = *(v0 + 2488);
  v183 = *(v0 + 2480);
  v184 = *(v0 + 2464);
  v185 = *(v0 + 2384);
  v186 = *(v0 + 2328);
  v187 = *(v0 + 2320);
  v188 = *(v0 + 2312);
  v189 = *(v0 + 1992);
  v190 = *(v0 + 2496);
  *(v187 + v188[10]) = v176;
  v191 = v187 + v188[12];
  *v191 = v184;
  *(v191 + 16) = v183;
  *(v191 + 24) = v182;
  *(v191 + 32) = v190;
  *(v191 + 48) = v181;
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v185, v187 + v188[8], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  *(v187 + v188[11]) = v189;
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v187, v186, type metadata accessor for CompletePromptRequest);
  if (v251)
  {
    v192 = *(v0 + 2232);
    v241 = *(v192 + 16);
    v193 = *(v0 + 1976) + ((*(v192 + 80) + 32) & ~*(v192 + 80));
    v231 = (v192 + 8);
    v234 = *(v192 + 72);
    v223 = *(v0 + 2208);

    v194 = MEMORY[0x1E69E7CC0];
    do
    {
      v195 = *(v0 + 2256);
      v196 = *(v0 + 2248);
      v197 = *(v0 + 2224);
      v198 = *(v0 + 2200);
      v199 = *(v0 + 2192);
      v241(v195, v193, v197);
      v241(v196, v195, v197);
      AnyTooling.init(_:)(v196, v199);
      (*v231)(v195, v197);
      if ((*(v223 + 48))(v199, 1, v198) == 1)
      {
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 2192), &_s15TokenGeneration10AnyToolingVSgMd, &_s15TokenGeneration10AnyToolingVSgMR);
      }

      else
      {
        outlined init with take of TokenGeneratorResponsePromptCompletionStream(*(v0 + 2192), *(v0 + 2216), type metadata accessor for AnyTooling);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v194 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v194[2] + 1, 1, v194);
        }

        v201 = v194[2];
        v200 = v194[3];
        if (v201 >= v200 >> 1)
        {
          v194 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v200 > 1), v201 + 1, 1, v194);
        }

        v202 = *(v0 + 2216);
        v194[2] = v201 + 1;
        outlined init with take of TokenGeneratorResponsePromptCompletionStream(v202, v194 + ((*(v223 + 80) + 32) & ~*(v223 + 80)) + *(v223 + 72) * v201, type metadata accessor for AnyTooling);
      }

      v193 += v234;
      --v251;
    }

    while (v251);
  }

  else
  {

    v194 = MEMORY[0x1E69E7CC0];
  }

  v247 = *(v0 + 2400);
  v252 = *(v0 + 2440);
  v235 = *(v0 + 2392);
  v203 = *(v0 + 2368);
  v204 = *(v0 + 2336);
  v205 = *(v0 + 2328);
  TokenGenerator.handleCompletePromptRequest(request:tools:)(v205, v194, *(v0 + 1960));

  outlined destroy of SamplingParameters(v0 + 1312);

  outlined destroy of TokenGeneratorCompletionResponseStringStream(v205, type metadata accessor for CompletePromptRequest);
  v216(v203, v204);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v235, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v219(v252, v247);
LABEL_45:

  v206 = *(v0 + 8);

  return v206();
}

uint64_t TokenGenerator.complete(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:grammarIdentifier:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 2016) = v8;
  *(v9 + 2008) = a8;
  *(v9 + 2000) = a7;
  *(v9 + 1992) = a6;
  *(v9 + 1984) = a5;
  *(v9 + 1976) = a4;
  *(v9 + 1968) = a2;
  *(v9 + 1960) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  *(v9 + 2024) = swift_task_alloc();
  v11 = type metadata accessor for PromptTemplateInfo();
  *(v9 + 2032) = v11;
  *(v9 + 2040) = *(v11 - 8);
  *(v9 + 2048) = swift_task_alloc();
  v12 = type metadata accessor for Schema();
  *(v9 + 2056) = v12;
  *(v9 + 2064) = *(v12 - 8);
  *(v9 + 2072) = swift_task_alloc();
  *(v9 + 2080) = type metadata accessor for FunctionDescription(0);
  *(v9 + 2088) = swift_task_alloc();
  *(v9 + 2096) = swift_task_alloc();
  *(v9 + 2104) = type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope(0);
  *(v9 + 2112) = swift_task_alloc();
  *(v9 + 2120) = type metadata accessor for ToolType(0);
  *(v9 + 2128) = swift_task_alloc();
  *(v9 + 2136) = swift_task_alloc();
  *(v9 + 2144) = *(type metadata accessor for ToolDescription(0) - 8);
  *(v9 + 2152) = swift_task_alloc();
  *(v9 + 2160) = swift_task_alloc();
  *(v9 + 2168) = swift_task_alloc();
  *(v9 + 2176) = *(type metadata accessor for ToolDescriptionEnvelope(0) - 8);
  *(v9 + 2184) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration10AnyToolingVSgMd, &_s15TokenGeneration10AnyToolingVSgMR);
  *(v9 + 2192) = swift_task_alloc();
  v13 = type metadata accessor for AnyTooling(0);
  *(v9 + 2200) = v13;
  *(v9 + 2208) = *(v13 - 8);
  *(v9 + 2216) = swift_task_alloc();
  v14 = type metadata accessor for ToolType();
  *(v9 + 2224) = v14;
  *(v9 + 2232) = *(v14 - 8);
  *(v9 + 2240) = swift_task_alloc();
  *(v9 + 2248) = swift_task_alloc();
  *(v9 + 2256) = swift_task_alloc();
  v15 = type metadata accessor for ToolChoice();
  *(v9 + 2264) = v15;
  *(v9 + 2272) = *(v15 - 8);
  *(v9 + 2280) = swift_task_alloc();
  *(v9 + 2288) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  *(v9 + 2296) = swift_task_alloc();
  *(v9 + 2304) = swift_task_alloc();
  *(v9 + 2312) = type metadata accessor for CompletePromptRequest(0);
  *(v9 + 2320) = swift_task_alloc();
  *(v9 + 2328) = swift_task_alloc();
  v16 = type metadata accessor for Prompt();
  *(v9 + 2336) = v16;
  *(v9 + 2344) = *(v16 - 8);
  *(v9 + 2352) = swift_task_alloc();
  *(v9 + 2360) = swift_task_alloc();
  *(v9 + 2368) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  *(v9 + 2376) = swift_task_alloc();
  *(v9 + 2384) = swift_task_alloc();
  *(v9 + 2392) = swift_task_alloc();
  v17 = type metadata accessor for PromptVariant();
  *(v9 + 2400) = v17;
  *(v9 + 2408) = *(v17 - 8);
  *(v9 + 2416) = swift_task_alloc();
  *(v9 + 2424) = swift_task_alloc();
  *(v9 + 2432) = swift_task_alloc();
  *(v9 + 2440) = swift_task_alloc();
  *(v9 + 2448) = type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel(0);
  *(v9 + 2456) = swift_task_alloc();
  v18 = *(a3 + 176);
  *(v9 + 176) = *(a3 + 160);
  *(v9 + 192) = v18;
  *(v9 + 208) = *(a3 + 192);
  *(v9 + 224) = *(a3 + 208);
  v19 = *(a3 + 112);
  *(v9 + 112) = *(a3 + 96);
  *(v9 + 128) = v19;
  v20 = *(a3 + 144);
  *(v9 + 144) = *(a3 + 128);
  *(v9 + 160) = v20;
  v21 = *(a3 + 48);
  *(v9 + 48) = *(a3 + 32);
  *(v9 + 64) = v21;
  v22 = *(a3 + 80);
  *(v9 + 80) = *(a3 + 64);
  *(v9 + 96) = v22;
  v23 = *(a3 + 16);
  *(v9 + 16) = *a3;
  *(v9 + 32) = v23;
  *(v9 + 2464) = *v26;
  *(v9 + 2472) = *(v26 + 8);
  *(v9 + 2488) = *(v26 + 24);
  *(v9 + 2496) = *(v26 + 32);
  *(v9 + 2512) = *(v26 + 48);

  return MEMORY[0x1EEE6DFA0](TokenGenerator.complete(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:grammarIdentifier:metadata:), 0, 0);
}

uint64_t TokenGenerator.complete(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:grammarIdentifier:metadata:)()
{
  v295 = v0;
  outlined init with copy of PromptCompletion(*(v0 + 1968), *(v0 + 2456), type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = *(v0 + 2456);
  v3 = *(v0 + 2408);
  v4 = *(v0 + 2400);
  if (EnumCaseMultiPayload == 1)
  {
    v5 = *(v0 + 2416);
    v6 = *(v0 + 2048);
    v7 = *(v0 + 2040);
    v8 = *(v0 + 2032);
    v248 = *(v0 + 2024);
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMd, &_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMR) + 48);
    (*(v7 + 32))(v6, v2, v8);
    (*(v3 + 32))(v5, v2 + v9, v4);
    (*(v3 + 16))(v248, v5, v4);
    v10 = 1;
    (*(v3 + 56))(v248, 0, 1, v4);
    v11 = *(v0 + 192);
    *(v0 + 392) = *(v0 + 176);
    *(v0 + 408) = v11;
    *(v0 + 424) = *(v0 + 208);
    *(v0 + 440) = *(v0 + 224);
    v12 = *(v0 + 128);
    *(v0 + 328) = *(v0 + 112);
    *(v0 + 344) = v12;
    v13 = *(v0 + 160);
    *(v0 + 360) = *(v0 + 144);
    *(v0 + 376) = v13;
    v14 = *(v0 + 64);
    *(v0 + 264) = *(v0 + 48);
    *(v0 + 280) = v14;
    v15 = *(v0 + 96);
    *(v0 + 296) = *(v0 + 80);
    *(v0 + 312) = v15;
    v16 = *(v0 + 32);
    *(v0 + 232) = *(v0 + 16);
    *(v0 + 248) = v16;
    if (_s15TokenGeneration26SamplingParametersEnvelopeVSgWOg(v0 + 232) == 1)
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      LOBYTE(v271) = 1;
      v27 = 0uLL;
      LOBYTE(v285) = 1;
      v28 = 2;
      v29 = -1;
      v30 = 768;
      v31 = 0x2000200020001;
      v32 = 1;
      v33 = MEMORY[0x1E69E7CD0];
      v34 = 1;
      v35 = 1;
      v36 = 1;
      v37 = 1;
      v38 = 0uLL;
      v39 = 0uLL;
      v40 = 0uLL;
    }

    else
    {
      v18 = *(v0 + 16);
      v29 = *(v0 + 24);
      *v253 = *(v0 + 25);
      *&v253[3] = *(v0 + 28);
      v19 = *(v0 + 32);
      v10 = *(v0 + 40);
      *v254 = *(v0 + 41);
      *&v254[3] = *(v0 + 44);
      v20 = *(v0 + 48);
      v32 = *(v0 + 56);
      *&v255[3] = *(v0 + 60);
      *v255 = *(v0 + 57);
      v21 = *(v0 + 64);
      v34 = *(v0 + 72);
      *v256 = *(v0 + 73);
      *&v256[3] = *(v0 + 76);
      v22 = *(v0 + 80);
      v35 = *(v0 + 88);
      *v257 = *(v0 + 89);
      *&v257[3] = *(v0 + 92);
      v33 = *(v0 + 96);
      v23 = *(v0 + 104);
      v36 = *(v0 + 112);
      *v258 = *(v0 + 113);
      *&v258[3] = *(v0 + 116);
      v24 = *(v0 + 120);
      v37 = *(v0 + 128);
      *&v259[3] = *(v0 + 132);
      *v259 = *(v0 + 129);
      v25 = *(v0 + 136);
      v17.i32[0] = *(v0 + 144);
      v31 = vmovl_u8(v17).u64[0];
      v28 = *(v0 + 148);
      v260 = *(v0 + 149);
      v261 = *(v0 + 151);
      v27 = *(v0 + 152);
      v38 = *(v0 + 168);
      v39 = *(v0 + 184);
      v40 = *(v0 + 200);
      v30 = *(v0 + 216);
      v26 = *(v0 + 224);
    }

    *&v285 = v18;
    BYTE8(v285) = v29;
    *(&v285 + 9) = *v253;
    HIDWORD(v285) = *&v253[3];
    *&v286 = v19;
    v72 = *(v0 + 2512);
    BYTE8(v286) = v10;
    *(&v286 + 9) = *v254;
    HIDWORD(v286) = *&v254[3];
    v73 = *(v0 + 2504);
    *&v287 = v20;
    v227 = *(v0 + 2496);
    BYTE8(v287) = v32;
    *(&v287 + 9) = *v255;
    HIDWORD(v287) = *&v255[3];
    v74 = *(v0 + 2488);
    *&v288 = v21;
    v221 = *(v0 + 2480);
    BYTE8(v288) = v34;
    HIDWORD(v288) = *&v256[3];
    *(&v288 + 9) = *v256;
    v75 = *(v0 + 2472);
    *&v289 = v22;
    v76 = *(v0 + 2464);
    BYTE8(v289) = v35;
    HIDWORD(v289) = *&v257[3];
    *(&v289 + 9) = *v257;
    v77 = *(v0 + 2376);
    *&v290 = v33;
    *(&v290 + 1) = v23;
    v242 = *(v0 + 2024);
    v249 = *(v0 + 2048);
    LOBYTE(v291) = v36;
    *(&v291 + 1) = *v258;
    DWORD1(v291) = *&v258[3];
    *(&v291 + 1) = v24;
    v78 = *(v0 + 2008);
    LOBYTE(v292) = v37;
    DWORD1(v292) = *&v259[3];
    *(&v292 + 1) = *v259;
    v79 = *(v0 + 2000);
    *(&v292 + 1) = v25;
    v232 = *(v0 + 1992);
    v293[4] = v28;
    v293[7] = v261;
    *&v293[5] = v260;
    v224 = *(v0 + 1984);
    *&v293[72] = v30;
    v80 = *(v0 + 1976);
    v294 = v26;
    v217 = *(v0 + 1960);
    v220 = v80;
    *v293 = vuzp1_s8(v31, v31).u32[0];
    *&v293[8] = v27;
    *&v293[24] = v38;
    *&v293[40] = v39;
    *&v293[56] = v40;
    *v77 = v79;
    *(v77 + 8) = v78;
    v81 = type metadata accessor for Constraints(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v81 - 8) + 56))(v77, 0, 1, v81);
    *&v271 = v76;
    *(&v271 + 1) = v75;
    *&v272 = v221;
    *(&v272 + 1) = v74;
    *&v273 = v227;
    *(&v273 + 1) = v73;
    *&v274 = v72;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 16, v0 + 448, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);

    TokenGenerator.complete(prompt:promptTemplateInfo:parameters:tools:toolChoice:documents:constraint:metadata:)(v242, v249, &v285, v220, v224, v232, v77, &v271, v217);
    v82 = *(v0 + 2416);
    v83 = *(v0 + 2400);
    v84 = *(v0 + 2376);
    v236 = *(v0 + 2032);
    v243 = *(v0 + 2048);
    v85 = *(v0 + 2024);
    v86 = (*(v0 + 2408) + 8);
    v87 = (*(v0 + 2040) + 8);
    outlined consume of RequestMetadata?(v271, *(&v271 + 1), v272, *(&v272 + 1), v273, *(&v273 + 1), v274);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v84, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    v92 = *&v293[48];
    *(v0 + 1040) = *&v293[32];
    *(v0 + 1056) = v92;
    *(v0 + 1072) = *&v293[64];
    *(v0 + 1088) = v294;
    v93 = v292;
    *(v0 + 976) = v291;
    *(v0 + 992) = v93;
    v94 = *&v293[16];
    *(v0 + 1008) = *v293;
    *(v0 + 1024) = v94;
    v95 = v288;
    *(v0 + 912) = v287;
    *(v0 + 928) = v95;
    v96 = v290;
    *(v0 + 944) = v289;
    *(v0 + 960) = v96;
    v97 = v286;
    *(v0 + 880) = v285;
    *(v0 + 896) = v97;
    outlined destroy of SamplingParameters(v0 + 880);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v85, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
    (*v86)(v82, v83);
    (*v87)(v243, v236);
    goto LABEL_45;
  }

  (*(v3 + 32))(*(v0 + 2440), *(v0 + 2456), *(v0 + 2400));
  v41 = *(v0 + 192);
  *(v0 + 1256) = *(v0 + 176);
  *(v0 + 1272) = v41;
  *(v0 + 1288) = *(v0 + 208);
  *(v0 + 1304) = *(v0 + 224);
  v42 = *(v0 + 128);
  *(v0 + 1192) = *(v0 + 112);
  *(v0 + 1208) = v42;
  v43 = *(v0 + 160);
  *(v0 + 1224) = *(v0 + 144);
  *(v0 + 1240) = v43;
  v44 = *(v0 + 64);
  *(v0 + 1128) = *(v0 + 48);
  *(v0 + 1144) = v44;
  v45 = *(v0 + 96);
  *(v0 + 1160) = *(v0 + 80);
  *(v0 + 1176) = v45;
  v46 = *(v0 + 32);
  *(v0 + 1096) = *(v0 + 16);
  *(v0 + 1112) = v46;
  if (_s15TokenGeneration26SamplingParametersEnvelopeVSgWOg(v0 + 1096) == 1)
  {
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 1;
    LOBYTE(v271) = 1;
    LOBYTE(v285) = 1;
    v58 = 0uLL;
    v59 = 0x2000200020001;
    v60 = 2;
    v61 = -1;
    v62 = 768;
    v63 = MEMORY[0x1E69E7CD0];
    v64 = 1;
    v65 = 1;
    v66 = 1;
    v67 = 1;
    v68 = 1;
    v69 = 0uLL;
    v70 = 0uLL;
    v71 = 0uLL;
  }

  else
  {
    v48 = *(v0 + 16);
    v61 = *(v0 + 24);
    *v262 = *(v0 + 25);
    *&v262[3] = *(v0 + 28);
    v49 = *(v0 + 32);
    v57 = *(v0 + 40);
    *v263 = *(v0 + 41);
    *&v263[3] = *(v0 + 44);
    v50 = *(v0 + 48);
    v64 = *(v0 + 56);
    *&v264[3] = *(v0 + 60);
    *v264 = *(v0 + 57);
    v51 = *(v0 + 64);
    v65 = *(v0 + 72);
    *v265 = *(v0 + 73);
    *&v265[3] = *(v0 + 76);
    v52 = *(v0 + 80);
    v66 = *(v0 + 88);
    *v266 = *(v0 + 89);
    *&v266[3] = *(v0 + 92);
    v63 = *(v0 + 96);
    v53 = *(v0 + 104);
    v67 = *(v0 + 112);
    *v267 = *(v0 + 113);
    *&v267[3] = *(v0 + 116);
    v54 = *(v0 + 120);
    v68 = *(v0 + 128);
    *&v268[3] = *(v0 + 132);
    *v268 = *(v0 + 129);
    v55 = *(v0 + 136);
    v47.i32[0] = *(v0 + 144);
    v59 = vmovl_u8(v47).u64[0];
    v60 = *(v0 + 148);
    v269 = *(v0 + 149);
    v270 = *(v0 + 151);
    v58 = *(v0 + 152);
    v69 = *(v0 + 168);
    v70 = *(v0 + 184);
    v71 = *(v0 + 200);
    v62 = *(v0 + 216);
    v56 = *(v0 + 224);
  }

  v88 = *(v0 + 2392);
  v89 = *(v0 + 2008);
  v90 = *(v0 + 2000);
  *(v0 + 1312) = v48;
  *(v0 + 1320) = v61;
  *(v0 + 1324) = *&v262[3];
  *(v0 + 1321) = *v262;
  *(v0 + 1328) = v49;
  *(v0 + 1336) = v57;
  *(v0 + 1340) = *&v263[3];
  *(v0 + 1337) = *v263;
  *(v0 + 1344) = v50;
  *(v0 + 1352) = v64;
  *(v0 + 1356) = *&v264[3];
  *(v0 + 1353) = *v264;
  *(v0 + 1360) = v51;
  *(v0 + 1368) = v65;
  *(v0 + 1372) = *&v265[3];
  *(v0 + 1369) = *v265;
  *(v0 + 1376) = v52;
  *(v0 + 1384) = v66;
  *(v0 + 1388) = *&v266[3];
  *(v0 + 1385) = *v266;
  *(v0 + 1392) = v63;
  *(v0 + 1400) = v53;
  *(v0 + 1408) = v67;
  *(v0 + 1412) = *&v267[3];
  *(v0 + 1409) = *v267;
  *(v0 + 1416) = v54;
  *(v0 + 1424) = v68;
  *(v0 + 1428) = *&v268[3];
  *(v0 + 1425) = *v268;
  *(v0 + 1432) = v55;
  *(v0 + 1440) = vuzp1_s8(v59, v59).u32[0];
  *(v0 + 1444) = v60;
  *(v0 + 1447) = v270;
  *(v0 + 1445) = v269;
  *(v0 + 1448) = v58;
  *(v0 + 1464) = v69;
  *(v0 + 1480) = v70;
  *(v0 + 1496) = v71;
  *(v0 + 1512) = v62;
  *(v0 + 1520) = v56;
  *v88 = v90;
  v88[1] = v89;
  v91 = type metadata accessor for Constraints(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v91 - 8) + 56))(v88, 0, 1, v91);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 16, v0 + 1528, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);

  PromptVariant.tgPrompt.getter();
  v98 = *(v0 + 2440);
  v99 = *(v0 + 2432);
  v100 = *(v0 + 2408);
  v101 = *(v0 + 2400);
  v102 = *(v0 + 2392);
  v208 = *(v0 + 2384);
  v222 = *(v0 + 2360);
  v228 = *(v0 + 2352);
  v103 = *(v0 + 2320);
  v237 = *(v0 + 2312);
  v244 = *(v0 + 2424);
  v209 = *(v0 + 2304);
  v104 = *(v0 + 1984);
  v250 = *(v0 + 1976);
  v212 = *(*(v0 + 2344) + 16);
  v214 = *(v0 + 2336);
  v212();
  v105 = *(v100 + 16);
  v105(v99, v98, v101);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v102, v208, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v104, v209, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);

  outlined init with copy of SamplingParameters(v0 + 1312, v0 + 1744);
  XPCDictionary.init()();
  (v212)(v228, v222, v214);
  v106 = specialized PromptEnvelope.init(sealing:xpcData:)(v228, v103);
  v107 = (v103 + v237[5]);
  *v107 = v106;
  v107[1] = v108;
  v107[2] = v109;
  v107[3] = v110;
  v105(v244, v99, v101);
  PromptVariantEnvelope.init(sealing:xpcData:)(v244, v103, v103 + v237[6]);
  v111 = *(v0 + 1488);
  *&v293[32] = *(v0 + 1472);
  *&v293[48] = v111;
  *&v293[64] = *(v0 + 1504);
  v294 = *(v0 + 1520);
  v112 = *(v0 + 1424);
  v291 = *(v0 + 1408);
  v292 = v112;
  v113 = *(v0 + 1456);
  *v293 = *(v0 + 1440);
  *&v293[16] = v113;
  v114 = *(v0 + 1360);
  v287 = *(v0 + 1344);
  v288 = v114;
  v115 = *(v0 + 1392);
  v289 = *(v0 + 1376);
  v290 = v115;
  v116 = *(v0 + 1328);
  v285 = *(v0 + 1312);
  v286 = v116;
  SamplingParametersEnvelope.init(sealing:)(&v285, &v271);
  v117 = v103 + v237[7];
  v118 = v276;
  *(v117 + 64) = v275;
  *(v117 + 80) = v118;
  v119 = v274;
  *(v117 + 32) = v273;
  *(v117 + 48) = v119;
  v120 = v280;
  *(v117 + 128) = v279;
  *(v117 + 144) = v120;
  v121 = v278;
  *(v117 + 96) = v277;
  *(v117 + 112) = v121;
  *(v117 + 208) = v284;
  v122 = v283;
  *(v117 + 176) = v282;
  *(v117 + 192) = v122;
  *(v117 + 160) = v281;
  v123 = v272;
  *v117 = v271;
  *(v117 + 16) = v123;
  v124 = *(v250 + 16);
  v125 = MEMORY[0x1E69E7CC0];
  v251 = v124;
  if (v124)
  {
    v126 = *(v0 + 2232);
    v238 = *(v0 + 2144);
    v127 = *(v0 + 1976);
    *&v285 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v124, 0);
    v128 = v285;
    v129 = *(v126 + 16);
    v126 += 16;
    v130 = v127 + ((*(v126 + 64) + 32) & ~*(v126 + 64));
    v229 = *(v126 + 56);
    v233 = v129;
    v225 = (v126 - 8);
    do
    {
      v131 = *(v0 + 2248);
      v132 = *(v0 + 2240);
      v133 = *(v0 + 2224);
      v134 = *(v0 + 2152);
      v233(v131, v130, v133);
      v233(v132, v131, v133);
      ToolDescription.init(toolType:)(v132, v134);
      (*v225)(v131, v133);
      *&v285 = v128;
      v136 = *(v128 + 16);
      v135 = *(v128 + 24);
      if (v136 >= v135 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v135 > 1), v136 + 1, 1);
        v128 = v285;
      }

      v137 = *(v0 + 2152);
      *(v128 + 16) = v136 + 1;
      outlined init with take of TokenGeneratorResponsePromptCompletionStream(v137, v128 + ((*(v238 + 80) + 32) & ~*(v238 + 80)) + *(v238 + 72) * v136, type metadata accessor for ToolDescription);
      v130 += v229;
      --v124;
    }

    while (v124);
    v125 = MEMORY[0x1E69E7CC0];
    v138 = *(v128 + 16);
    if (v138)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v128 = MEMORY[0x1E69E7CC0];
    v138 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v138)
    {
LABEL_15:
      v245 = *(v0 + 2176);
      v139 = *(v0 + 2144);
      v215 = *(v0 + 2088);
      v218 = *(v0 + 2112);
      v213 = *(v0 + 2080);
      v140 = *(v0 + 2064);
      *&v285 = v125;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v138, 0);
      v141 = v285;
      v142 = v128 + ((*(v139 + 80) + 32) & ~*(v139 + 80));
      v239 = *(v139 + 72);
      v210 = (v140 + 8);
      v211 = (v140 + 16);
      do
      {
        v143 = *(v0 + 2168);
        v144 = *(v0 + 2160);
        v145 = *(v0 + 2136);
        v146 = *(v0 + 2128);
        outlined init with copy of PromptCompletion(v142, v143, type metadata accessor for ToolDescription);
        outlined init with copy of PromptCompletion(v143, v144, type metadata accessor for ToolDescription);
        outlined init with copy of PromptCompletion(v144, v145, type metadata accessor for ToolType);
        outlined init with copy of PromptCompletion(v145, v146, type metadata accessor for ToolType);
        v147 = swift_getEnumCaseMultiPayload();
        v148 = *(v0 + 2136);
        if (v147 <= 1)
        {
          v149 = *(v0 + 2128);
          v150 = *(v0 + 2112);
          if (v147)
          {
            outlined destroy of TokenGeneratorCompletionResponseStringStream(v148, type metadata accessor for ToolType);
            v151 = type metadata accessor for FileGenerationParameters();
          }

          else
          {
            outlined destroy of TokenGeneratorCompletionResponseStringStream(v148, type metadata accessor for ToolType);
            v151 = type metadata accessor for ImageGenerationParameters();
          }

          (*(*(v151 - 8) + 32))(v150, v149, v151);
        }

        else if (v147 == 2)
        {
          v152 = *(v0 + 2112);
          v226 = *(v0 + 2136);
          v153 = *(v0 + 2096);
          v230 = v153;
          v154 = *(v0 + 2088);
          v155 = *(v0 + 2072);
          v156 = *(v0 + 2056);
          outlined init with take of TokenGeneratorResponsePromptCompletionStream(*(v0 + 2128), v153, type metadata accessor for FunctionDescription);
          outlined init with copy of PromptCompletion(v153, v154, type metadata accessor for FunctionDescription);
          v157 = v215[1];
          *v152 = *v154;
          v218[1] = v157;
          v158 = v215[3];
          v218[2] = v215[2];
          v218[3] = v158;
          (*v211)(v155, &v154[*(v213 + 24)], v156);
          type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope(0);

          Schema.type.getter();
          outlined destroy of TokenGeneratorCompletionResponseStringStream(v226, type metadata accessor for ToolType);
          (*v210)(v155, v156);
          outlined destroy of TokenGeneratorCompletionResponseStringStream(v154, type metadata accessor for FunctionDescription);
          outlined destroy of TokenGeneratorCompletionResponseStringStream(v230, type metadata accessor for FunctionDescription);
        }

        else
        {
          outlined destroy of TokenGeneratorCompletionResponseStringStream(v148, type metadata accessor for ToolType);
        }

        swift_storeEnumTagMultiPayload();
        v159 = *(v0 + 2168);
        v160 = *(v0 + 2160);
        outlined init with take of TokenGeneratorResponsePromptCompletionStream(*(v0 + 2112), *(v0 + 2184), type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope);
        outlined destroy of TokenGeneratorCompletionResponseStringStream(v160, type metadata accessor for ToolDescription);
        outlined destroy of TokenGeneratorCompletionResponseStringStream(v159, type metadata accessor for ToolDescription);
        *&v285 = v141;
        v162 = *(v141 + 16);
        v161 = *(v141 + 24);
        if (v162 >= v161 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v161 > 1), v162 + 1, 1);
          v141 = v285;
        }

        v163 = *(v0 + 2184);
        *(v141 + 16) = v162 + 1;
        outlined init with take of TokenGeneratorResponsePromptCompletionStream(v163, v141 + ((*(v245 + 80) + 32) & ~*(v245 + 80)) + *(v245 + 72) * v162, type metadata accessor for ToolDescriptionEnvelope);
        v142 += v239;
        --v138;
      }

      while (v138);

      goto LABEL_30;
    }
  }

  v141 = MEMORY[0x1E69E7CC0];
LABEL_30:
  v164 = *(v0 + 2304);
  v165 = *(v0 + 2296);
  v166 = *(v0 + 2272);
  v167 = *(v0 + 2264);
  *(*(v0 + 2320) + *(*(v0 + 2312) + 36)) = v141;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v164, v165, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  v168 = (*(v166 + 48))(v165, 1, v167);
  v169 = *(v0 + 2432);
  v170 = *(v0 + 2408);
  v171 = *(v0 + 2400);
  v172 = *(v0 + 2360);
  v173 = *(v0 + 2344);
  v174 = *(v0 + 2336);
  v175 = *(v0 + 2304);
  if (v168 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 2304), &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v219 = *(v170 + 8);
    v219(v169, v171);
    v216 = *(v173 + 8);
    v216(v172, v174);
    v176 = xmmword_1ABA26F10;
  }

  else
  {
    v240 = *(v0 + 2360);
    v246 = *(v0 + 2336);
    v177 = *(v0 + 2288);
    v178 = *(v0 + 2280);
    v179 = *(v0 + 2272);
    v180 = *(v0 + 2264);
    (*(v179 + 32))(v177, *(v0 + 2296), v180);
    (*(v179 + 16))(v178, v177, v180);
    ToolChoiceEnvelope.init(sealing:)(v178, &v285);
    (*(v179 + 8))(v177, v180);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v175, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v219 = *(v170 + 8);
    v219(v169, v171);
    v216 = *(v173 + 8);
    v216(v240, v246);
    v176 = v285;
  }

  v181 = *(v0 + 2512);
  v182 = *(v0 + 2488);
  v183 = *(v0 + 2480);
  v184 = *(v0 + 2464);
  v185 = *(v0 + 2384);
  v186 = *(v0 + 2328);
  v187 = *(v0 + 2320);
  v188 = *(v0 + 2312);
  v189 = *(v0 + 1992);
  v190 = *(v0 + 2496);
  *(v187 + v188[10]) = v176;
  v191 = v187 + v188[12];
  *v191 = v184;
  *(v191 + 16) = v183;
  *(v191 + 24) = v182;
  *(v191 + 32) = v190;
  *(v191 + 48) = v181;
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v185, v187 + v188[8], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  *(v187 + v188[11]) = v189;
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v187, v186, type metadata accessor for CompletePromptRequest);
  if (v251)
  {
    v192 = *(v0 + 2232);
    v241 = *(v192 + 16);
    v193 = *(v0 + 1976) + ((*(v192 + 80) + 32) & ~*(v192 + 80));
    v231 = (v192 + 8);
    v234 = *(v192 + 72);
    v223 = *(v0 + 2208);

    v194 = MEMORY[0x1E69E7CC0];
    do
    {
      v195 = *(v0 + 2256);
      v196 = *(v0 + 2248);
      v197 = *(v0 + 2224);
      v198 = *(v0 + 2200);
      v199 = *(v0 + 2192);
      v241(v195, v193, v197);
      v241(v196, v195, v197);
      AnyTooling.init(_:)(v196, v199);
      (*v231)(v195, v197);
      if ((*(v223 + 48))(v199, 1, v198) == 1)
      {
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 2192), &_s15TokenGeneration10AnyToolingVSgMd, &_s15TokenGeneration10AnyToolingVSgMR);
      }

      else
      {
        outlined init with take of TokenGeneratorResponsePromptCompletionStream(*(v0 + 2192), *(v0 + 2216), type metadata accessor for AnyTooling);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v194 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v194[2] + 1, 1, v194);
        }

        v201 = v194[2];
        v200 = v194[3];
        if (v201 >= v200 >> 1)
        {
          v194 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v200 > 1), v201 + 1, 1, v194);
        }

        v202 = *(v0 + 2216);
        v194[2] = v201 + 1;
        outlined init with take of TokenGeneratorResponsePromptCompletionStream(v202, v194 + ((*(v223 + 80) + 32) & ~*(v223 + 80)) + *(v223 + 72) * v201, type metadata accessor for AnyTooling);
      }

      v193 += v234;
      --v251;
    }

    while (v251);
  }

  else
  {

    v194 = MEMORY[0x1E69E7CC0];
  }

  v247 = *(v0 + 2400);
  v252 = *(v0 + 2440);
  v235 = *(v0 + 2392);
  v203 = *(v0 + 2368);
  v204 = *(v0 + 2336);
  v205 = *(v0 + 2328);
  TokenGenerator.handleCompletePromptRequest(request:tools:)(v205, v194, *(v0 + 1960));

  outlined destroy of SamplingParameters(v0 + 1312);

  outlined destroy of TokenGeneratorCompletionResponseStringStream(v205, type metadata accessor for CompletePromptRequest);
  v216(v203, v204);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v235, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v219(v252, v247);
LABEL_45:

  v206 = *(v0 + 8);

  return v206();
}

uint64_t TokenGenerator.complete(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:schemaIdentifier:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 2016) = v8;
  *(v9 + 2008) = a8;
  *(v9 + 2000) = a7;
  *(v9 + 1992) = a6;
  *(v9 + 1984) = a5;
  *(v9 + 1976) = a4;
  *(v9 + 1968) = a2;
  *(v9 + 1960) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  *(v9 + 2024) = swift_task_alloc();
  v11 = type metadata accessor for PromptTemplateInfo();
  *(v9 + 2032) = v11;
  *(v9 + 2040) = *(v11 - 8);
  *(v9 + 2048) = swift_task_alloc();
  v12 = type metadata accessor for Schema();
  *(v9 + 2056) = v12;
  *(v9 + 2064) = *(v12 - 8);
  *(v9 + 2072) = swift_task_alloc();
  *(v9 + 2080) = type metadata accessor for FunctionDescription(0);
  *(v9 + 2088) = swift_task_alloc();
  *(v9 + 2096) = swift_task_alloc();
  *(v9 + 2104) = type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope(0);
  *(v9 + 2112) = swift_task_alloc();
  *(v9 + 2120) = type metadata accessor for ToolType(0);
  *(v9 + 2128) = swift_task_alloc();
  *(v9 + 2136) = swift_task_alloc();
  *(v9 + 2144) = *(type metadata accessor for ToolDescription(0) - 8);
  *(v9 + 2152) = swift_task_alloc();
  *(v9 + 2160) = swift_task_alloc();
  *(v9 + 2168) = swift_task_alloc();
  *(v9 + 2176) = *(type metadata accessor for ToolDescriptionEnvelope(0) - 8);
  *(v9 + 2184) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration10AnyToolingVSgMd, &_s15TokenGeneration10AnyToolingVSgMR);
  *(v9 + 2192) = swift_task_alloc();
  v13 = type metadata accessor for AnyTooling(0);
  *(v9 + 2200) = v13;
  *(v9 + 2208) = *(v13 - 8);
  *(v9 + 2216) = swift_task_alloc();
  v14 = type metadata accessor for ToolType();
  *(v9 + 2224) = v14;
  *(v9 + 2232) = *(v14 - 8);
  *(v9 + 2240) = swift_task_alloc();
  *(v9 + 2248) = swift_task_alloc();
  *(v9 + 2256) = swift_task_alloc();
  v15 = type metadata accessor for ToolChoice();
  *(v9 + 2264) = v15;
  *(v9 + 2272) = *(v15 - 8);
  *(v9 + 2280) = swift_task_alloc();
  *(v9 + 2288) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  *(v9 + 2296) = swift_task_alloc();
  *(v9 + 2304) = swift_task_alloc();
  *(v9 + 2312) = type metadata accessor for CompletePromptRequest(0);
  *(v9 + 2320) = swift_task_alloc();
  *(v9 + 2328) = swift_task_alloc();
  v16 = type metadata accessor for Prompt();
  *(v9 + 2336) = v16;
  *(v9 + 2344) = *(v16 - 8);
  *(v9 + 2352) = swift_task_alloc();
  *(v9 + 2360) = swift_task_alloc();
  *(v9 + 2368) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  *(v9 + 2376) = swift_task_alloc();
  *(v9 + 2384) = swift_task_alloc();
  *(v9 + 2392) = swift_task_alloc();
  v17 = type metadata accessor for PromptVariant();
  *(v9 + 2400) = v17;
  *(v9 + 2408) = *(v17 - 8);
  *(v9 + 2416) = swift_task_alloc();
  *(v9 + 2424) = swift_task_alloc();
  *(v9 + 2432) = swift_task_alloc();
  *(v9 + 2440) = swift_task_alloc();
  *(v9 + 2448) = type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel(0);
  *(v9 + 2456) = swift_task_alloc();
  v18 = *(a3 + 176);
  *(v9 + 176) = *(a3 + 160);
  *(v9 + 192) = v18;
  *(v9 + 208) = *(a3 + 192);
  *(v9 + 224) = *(a3 + 208);
  v19 = *(a3 + 112);
  *(v9 + 112) = *(a3 + 96);
  *(v9 + 128) = v19;
  v20 = *(a3 + 144);
  *(v9 + 144) = *(a3 + 128);
  *(v9 + 160) = v20;
  v21 = *(a3 + 48);
  *(v9 + 48) = *(a3 + 32);
  *(v9 + 64) = v21;
  v22 = *(a3 + 80);
  *(v9 + 80) = *(a3 + 64);
  *(v9 + 96) = v22;
  v23 = *(a3 + 16);
  *(v9 + 16) = *a3;
  *(v9 + 32) = v23;
  *(v9 + 2464) = *v26;
  *(v9 + 2472) = *(v26 + 8);
  *(v9 + 2488) = *(v26 + 24);
  *(v9 + 2496) = *(v26 + 32);
  *(v9 + 2512) = *(v26 + 48);

  return MEMORY[0x1EEE6DFA0](TokenGenerator.complete(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:schemaIdentifier:metadata:), 0, 0);
}

uint64_t TokenGenerator.complete(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:schemaIdentifier:metadata:)()
{
  v295 = v0;
  outlined init with copy of PromptCompletion(*(v0 + 1968), *(v0 + 2456), type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = *(v0 + 2456);
  v3 = *(v0 + 2408);
  v4 = *(v0 + 2400);
  if (EnumCaseMultiPayload == 1)
  {
    v5 = *(v0 + 2416);
    v6 = *(v0 + 2048);
    v7 = *(v0 + 2040);
    v8 = *(v0 + 2032);
    v248 = *(v0 + 2024);
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMd, &_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMR) + 48);
    (*(v7 + 32))(v6, v2, v8);
    (*(v3 + 32))(v5, v2 + v9, v4);
    (*(v3 + 16))(v248, v5, v4);
    v10 = 1;
    (*(v3 + 56))(v248, 0, 1, v4);
    v11 = *(v0 + 192);
    *(v0 + 392) = *(v0 + 176);
    *(v0 + 408) = v11;
    *(v0 + 424) = *(v0 + 208);
    *(v0 + 440) = *(v0 + 224);
    v12 = *(v0 + 128);
    *(v0 + 328) = *(v0 + 112);
    *(v0 + 344) = v12;
    v13 = *(v0 + 160);
    *(v0 + 360) = *(v0 + 144);
    *(v0 + 376) = v13;
    v14 = *(v0 + 64);
    *(v0 + 264) = *(v0 + 48);
    *(v0 + 280) = v14;
    v15 = *(v0 + 96);
    *(v0 + 296) = *(v0 + 80);
    *(v0 + 312) = v15;
    v16 = *(v0 + 32);
    *(v0 + 232) = *(v0 + 16);
    *(v0 + 248) = v16;
    if (_s15TokenGeneration26SamplingParametersEnvelopeVSgWOg(v0 + 232) == 1)
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      LOBYTE(v271) = 1;
      v27 = 0uLL;
      LOBYTE(v285) = 1;
      v28 = 2;
      v29 = -1;
      v30 = 768;
      v31 = 0x2000200020001;
      v32 = 1;
      v33 = MEMORY[0x1E69E7CD0];
      v34 = 1;
      v35 = 1;
      v36 = 1;
      v37 = 1;
      v38 = 0uLL;
      v39 = 0uLL;
      v40 = 0uLL;
    }

    else
    {
      v18 = *(v0 + 16);
      v29 = *(v0 + 24);
      *v253 = *(v0 + 25);
      *&v253[3] = *(v0 + 28);
      v19 = *(v0 + 32);
      v10 = *(v0 + 40);
      *v254 = *(v0 + 41);
      *&v254[3] = *(v0 + 44);
      v20 = *(v0 + 48);
      v32 = *(v0 + 56);
      *&v255[3] = *(v0 + 60);
      *v255 = *(v0 + 57);
      v21 = *(v0 + 64);
      v34 = *(v0 + 72);
      *v256 = *(v0 + 73);
      *&v256[3] = *(v0 + 76);
      v22 = *(v0 + 80);
      v35 = *(v0 + 88);
      *v257 = *(v0 + 89);
      *&v257[3] = *(v0 + 92);
      v33 = *(v0 + 96);
      v23 = *(v0 + 104);
      v36 = *(v0 + 112);
      *v258 = *(v0 + 113);
      *&v258[3] = *(v0 + 116);
      v24 = *(v0 + 120);
      v37 = *(v0 + 128);
      *&v259[3] = *(v0 + 132);
      *v259 = *(v0 + 129);
      v25 = *(v0 + 136);
      v17.i32[0] = *(v0 + 144);
      v31 = vmovl_u8(v17).u64[0];
      v28 = *(v0 + 148);
      v260 = *(v0 + 149);
      v261 = *(v0 + 151);
      v27 = *(v0 + 152);
      v38 = *(v0 + 168);
      v39 = *(v0 + 184);
      v40 = *(v0 + 200);
      v30 = *(v0 + 216);
      v26 = *(v0 + 224);
    }

    *&v285 = v18;
    BYTE8(v285) = v29;
    *(&v285 + 9) = *v253;
    HIDWORD(v285) = *&v253[3];
    *&v286 = v19;
    v72 = *(v0 + 2512);
    BYTE8(v286) = v10;
    *(&v286 + 9) = *v254;
    HIDWORD(v286) = *&v254[3];
    v73 = *(v0 + 2504);
    *&v287 = v20;
    v227 = *(v0 + 2496);
    BYTE8(v287) = v32;
    *(&v287 + 9) = *v255;
    HIDWORD(v287) = *&v255[3];
    v74 = *(v0 + 2488);
    *&v288 = v21;
    v221 = *(v0 + 2480);
    BYTE8(v288) = v34;
    HIDWORD(v288) = *&v256[3];
    *(&v288 + 9) = *v256;
    v75 = *(v0 + 2472);
    *&v289 = v22;
    v76 = *(v0 + 2464);
    BYTE8(v289) = v35;
    HIDWORD(v289) = *&v257[3];
    *(&v289 + 9) = *v257;
    v77 = *(v0 + 2376);
    *&v290 = v33;
    *(&v290 + 1) = v23;
    v242 = *(v0 + 2024);
    v249 = *(v0 + 2048);
    LOBYTE(v291) = v36;
    *(&v291 + 1) = *v258;
    DWORD1(v291) = *&v258[3];
    *(&v291 + 1) = v24;
    v78 = *(v0 + 2008);
    LOBYTE(v292) = v37;
    DWORD1(v292) = *&v259[3];
    *(&v292 + 1) = *v259;
    v79 = *(v0 + 2000);
    *(&v292 + 1) = v25;
    v232 = *(v0 + 1992);
    v293[4] = v28;
    v293[7] = v261;
    *&v293[5] = v260;
    v224 = *(v0 + 1984);
    *&v293[72] = v30;
    v80 = *(v0 + 1976);
    v294 = v26;
    v217 = *(v0 + 1960);
    v220 = v80;
    *v293 = vuzp1_s8(v31, v31).u32[0];
    *&v293[8] = v27;
    *&v293[24] = v38;
    *&v293[40] = v39;
    *&v293[56] = v40;
    *v77 = v79;
    *(v77 + 8) = v78;
    v81 = type metadata accessor for Constraints(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v81 - 8) + 56))(v77, 0, 1, v81);
    *&v271 = v76;
    *(&v271 + 1) = v75;
    *&v272 = v221;
    *(&v272 + 1) = v74;
    *&v273 = v227;
    *(&v273 + 1) = v73;
    *&v274 = v72;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 16, v0 + 448, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);

    TokenGenerator.complete(prompt:promptTemplateInfo:parameters:tools:toolChoice:documents:constraint:metadata:)(v242, v249, &v285, v220, v224, v232, v77, &v271, v217);
    v82 = *(v0 + 2416);
    v83 = *(v0 + 2400);
    v84 = *(v0 + 2376);
    v236 = *(v0 + 2032);
    v243 = *(v0 + 2048);
    v85 = *(v0 + 2024);
    v86 = (*(v0 + 2408) + 8);
    v87 = (*(v0 + 2040) + 8);
    outlined consume of RequestMetadata?(v271, *(&v271 + 1), v272, *(&v272 + 1), v273, *(&v273 + 1), v274);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v84, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    v92 = *&v293[48];
    *(v0 + 1040) = *&v293[32];
    *(v0 + 1056) = v92;
    *(v0 + 1072) = *&v293[64];
    *(v0 + 1088) = v294;
    v93 = v292;
    *(v0 + 976) = v291;
    *(v0 + 992) = v93;
    v94 = *&v293[16];
    *(v0 + 1008) = *v293;
    *(v0 + 1024) = v94;
    v95 = v288;
    *(v0 + 912) = v287;
    *(v0 + 928) = v95;
    v96 = v290;
    *(v0 + 944) = v289;
    *(v0 + 960) = v96;
    v97 = v286;
    *(v0 + 880) = v285;
    *(v0 + 896) = v97;
    outlined destroy of SamplingParameters(v0 + 880);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v85, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
    (*v86)(v82, v83);
    (*v87)(v243, v236);
    goto LABEL_45;
  }

  (*(v3 + 32))(*(v0 + 2440), *(v0 + 2456), *(v0 + 2400));
  v41 = *(v0 + 192);
  *(v0 + 1256) = *(v0 + 176);
  *(v0 + 1272) = v41;
  *(v0 + 1288) = *(v0 + 208);
  *(v0 + 1304) = *(v0 + 224);
  v42 = *(v0 + 128);
  *(v0 + 1192) = *(v0 + 112);
  *(v0 + 1208) = v42;
  v43 = *(v0 + 160);
  *(v0 + 1224) = *(v0 + 144);
  *(v0 + 1240) = v43;
  v44 = *(v0 + 64);
  *(v0 + 1128) = *(v0 + 48);
  *(v0 + 1144) = v44;
  v45 = *(v0 + 96);
  *(v0 + 1160) = *(v0 + 80);
  *(v0 + 1176) = v45;
  v46 = *(v0 + 32);
  *(v0 + 1096) = *(v0 + 16);
  *(v0 + 1112) = v46;
  if (_s15TokenGeneration26SamplingParametersEnvelopeVSgWOg(v0 + 1096) == 1)
  {
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 1;
    LOBYTE(v271) = 1;
    LOBYTE(v285) = 1;
    v58 = 0uLL;
    v59 = 0x2000200020001;
    v60 = 2;
    v61 = -1;
    v62 = 768;
    v63 = MEMORY[0x1E69E7CD0];
    v64 = 1;
    v65 = 1;
    v66 = 1;
    v67 = 1;
    v68 = 1;
    v69 = 0uLL;
    v70 = 0uLL;
    v71 = 0uLL;
  }

  else
  {
    v48 = *(v0 + 16);
    v61 = *(v0 + 24);
    *v262 = *(v0 + 25);
    *&v262[3] = *(v0 + 28);
    v49 = *(v0 + 32);
    v57 = *(v0 + 40);
    *v263 = *(v0 + 41);
    *&v263[3] = *(v0 + 44);
    v50 = *(v0 + 48);
    v64 = *(v0 + 56);
    *&v264[3] = *(v0 + 60);
    *v264 = *(v0 + 57);
    v51 = *(v0 + 64);
    v65 = *(v0 + 72);
    *v265 = *(v0 + 73);
    *&v265[3] = *(v0 + 76);
    v52 = *(v0 + 80);
    v66 = *(v0 + 88);
    *v266 = *(v0 + 89);
    *&v266[3] = *(v0 + 92);
    v63 = *(v0 + 96);
    v53 = *(v0 + 104);
    v67 = *(v0 + 112);
    *v267 = *(v0 + 113);
    *&v267[3] = *(v0 + 116);
    v54 = *(v0 + 120);
    v68 = *(v0 + 128);
    *&v268[3] = *(v0 + 132);
    *v268 = *(v0 + 129);
    v55 = *(v0 + 136);
    v47.i32[0] = *(v0 + 144);
    v59 = vmovl_u8(v47).u64[0];
    v60 = *(v0 + 148);
    v269 = *(v0 + 149);
    v270 = *(v0 + 151);
    v58 = *(v0 + 152);
    v69 = *(v0 + 168);
    v70 = *(v0 + 184);
    v71 = *(v0 + 200);
    v62 = *(v0 + 216);
    v56 = *(v0 + 224);
  }

  v88 = *(v0 + 2392);
  v89 = *(v0 + 2008);
  v90 = *(v0 + 2000);
  *(v0 + 1312) = v48;
  *(v0 + 1320) = v61;
  *(v0 + 1324) = *&v262[3];
  *(v0 + 1321) = *v262;
  *(v0 + 1328) = v49;
  *(v0 + 1336) = v57;
  *(v0 + 1340) = *&v263[3];
  *(v0 + 1337) = *v263;
  *(v0 + 1344) = v50;
  *(v0 + 1352) = v64;
  *(v0 + 1356) = *&v264[3];
  *(v0 + 1353) = *v264;
  *(v0 + 1360) = v51;
  *(v0 + 1368) = v65;
  *(v0 + 1372) = *&v265[3];
  *(v0 + 1369) = *v265;
  *(v0 + 1376) = v52;
  *(v0 + 1384) = v66;
  *(v0 + 1388) = *&v266[3];
  *(v0 + 1385) = *v266;
  *(v0 + 1392) = v63;
  *(v0 + 1400) = v53;
  *(v0 + 1408) = v67;
  *(v0 + 1412) = *&v267[3];
  *(v0 + 1409) = *v267;
  *(v0 + 1416) = v54;
  *(v0 + 1424) = v68;
  *(v0 + 1428) = *&v268[3];
  *(v0 + 1425) = *v268;
  *(v0 + 1432) = v55;
  *(v0 + 1440) = vuzp1_s8(v59, v59).u32[0];
  *(v0 + 1444) = v60;
  *(v0 + 1447) = v270;
  *(v0 + 1445) = v269;
  *(v0 + 1448) = v58;
  *(v0 + 1464) = v69;
  *(v0 + 1480) = v70;
  *(v0 + 1496) = v71;
  *(v0 + 1512) = v62;
  *(v0 + 1520) = v56;
  *v88 = v90;
  v88[1] = v89;
  v91 = type metadata accessor for Constraints(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v91 - 8) + 56))(v88, 0, 1, v91);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 16, v0 + 1528, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);

  PromptVariant.tgPrompt.getter();
  v98 = *(v0 + 2440);
  v99 = *(v0 + 2432);
  v100 = *(v0 + 2408);
  v101 = *(v0 + 2400);
  v102 = *(v0 + 2392);
  v208 = *(v0 + 2384);
  v222 = *(v0 + 2360);
  v228 = *(v0 + 2352);
  v103 = *(v0 + 2320);
  v237 = *(v0 + 2312);
  v244 = *(v0 + 2424);
  v209 = *(v0 + 2304);
  v104 = *(v0 + 1984);
  v250 = *(v0 + 1976);
  v212 = *(*(v0 + 2344) + 16);
  v214 = *(v0 + 2336);
  v212();
  v105 = *(v100 + 16);
  v105(v99, v98, v101);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v102, v208, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v104, v209, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);

  outlined init with copy of SamplingParameters(v0 + 1312, v0 + 1744);
  XPCDictionary.init()();
  (v212)(v228, v222, v214);
  v106 = specialized PromptEnvelope.init(sealing:xpcData:)(v228, v103);
  v107 = (v103 + v237[5]);
  *v107 = v106;
  v107[1] = v108;
  v107[2] = v109;
  v107[3] = v110;
  v105(v244, v99, v101);
  PromptVariantEnvelope.init(sealing:xpcData:)(v244, v103, v103 + v237[6]);
  v111 = *(v0 + 1488);
  *&v293[32] = *(v0 + 1472);
  *&v293[48] = v111;
  *&v293[64] = *(v0 + 1504);
  v294 = *(v0 + 1520);
  v112 = *(v0 + 1424);
  v291 = *(v0 + 1408);
  v292 = v112;
  v113 = *(v0 + 1456);
  *v293 = *(v0 + 1440);
  *&v293[16] = v113;
  v114 = *(v0 + 1360);
  v287 = *(v0 + 1344);
  v288 = v114;
  v115 = *(v0 + 1392);
  v289 = *(v0 + 1376);
  v290 = v115;
  v116 = *(v0 + 1328);
  v285 = *(v0 + 1312);
  v286 = v116;
  SamplingParametersEnvelope.init(sealing:)(&v285, &v271);
  v117 = v103 + v237[7];
  v118 = v276;
  *(v117 + 64) = v275;
  *(v117 + 80) = v118;
  v119 = v274;
  *(v117 + 32) = v273;
  *(v117 + 48) = v119;
  v120 = v280;
  *(v117 + 128) = v279;
  *(v117 + 144) = v120;
  v121 = v278;
  *(v117 + 96) = v277;
  *(v117 + 112) = v121;
  *(v117 + 208) = v284;
  v122 = v283;
  *(v117 + 176) = v282;
  *(v117 + 192) = v122;
  *(v117 + 160) = v281;
  v123 = v272;
  *v117 = v271;
  *(v117 + 16) = v123;
  v124 = *(v250 + 16);
  v125 = MEMORY[0x1E69E7CC0];
  v251 = v124;
  if (v124)
  {
    v126 = *(v0 + 2232);
    v238 = *(v0 + 2144);
    v127 = *(v0 + 1976);
    *&v285 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v124, 0);
    v128 = v285;
    v129 = *(v126 + 16);
    v126 += 16;
    v130 = v127 + ((*(v126 + 64) + 32) & ~*(v126 + 64));
    v229 = *(v126 + 56);
    v233 = v129;
    v225 = (v126 - 8);
    do
    {
      v131 = *(v0 + 2248);
      v132 = *(v0 + 2240);
      v133 = *(v0 + 2224);
      v134 = *(v0 + 2152);
      v233(v131, v130, v133);
      v233(v132, v131, v133);
      ToolDescription.init(toolType:)(v132, v134);
      (*v225)(v131, v133);
      *&v285 = v128;
      v136 = *(v128 + 16);
      v135 = *(v128 + 24);
      if (v136 >= v135 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v135 > 1), v136 + 1, 1);
        v128 = v285;
      }

      v137 = *(v0 + 2152);
      *(v128 + 16) = v136 + 1;
      outlined init with take of TokenGeneratorResponsePromptCompletionStream(v137, v128 + ((*(v238 + 80) + 32) & ~*(v238 + 80)) + *(v238 + 72) * v136, type metadata accessor for ToolDescription);
      v130 += v229;
      --v124;
    }

    while (v124);
    v125 = MEMORY[0x1E69E7CC0];
    v138 = *(v128 + 16);
    if (v138)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v128 = MEMORY[0x1E69E7CC0];
    v138 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v138)
    {
LABEL_15:
      v245 = *(v0 + 2176);
      v139 = *(v0 + 2144);
      v215 = *(v0 + 2088);
      v218 = *(v0 + 2112);
      v213 = *(v0 + 2080);
      v140 = *(v0 + 2064);
      *&v285 = v125;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v138, 0);
      v141 = v285;
      v142 = v128 + ((*(v139 + 80) + 32) & ~*(v139 + 80));
      v239 = *(v139 + 72);
      v210 = (v140 + 8);
      v211 = (v140 + 16);
      do
      {
        v143 = *(v0 + 2168);
        v144 = *(v0 + 2160);
        v145 = *(v0 + 2136);
        v146 = *(v0 + 2128);
        outlined init with copy of PromptCompletion(v142, v143, type metadata accessor for ToolDescription);
        outlined init with copy of PromptCompletion(v143, v144, type metadata accessor for ToolDescription);
        outlined init with copy of PromptCompletion(v144, v145, type metadata accessor for ToolType);
        outlined init with copy of PromptCompletion(v145, v146, type metadata accessor for ToolType);
        v147 = swift_getEnumCaseMultiPayload();
        v148 = *(v0 + 2136);
        if (v147 <= 1)
        {
          v149 = *(v0 + 2128);
          v150 = *(v0 + 2112);
          if (v147)
          {
            outlined destroy of TokenGeneratorCompletionResponseStringStream(v148, type metadata accessor for ToolType);
            v151 = type metadata accessor for FileGenerationParameters();
          }

          else
          {
            outlined destroy of TokenGeneratorCompletionResponseStringStream(v148, type metadata accessor for ToolType);
            v151 = type metadata accessor for ImageGenerationParameters();
          }

          (*(*(v151 - 8) + 32))(v150, v149, v151);
        }

        else if (v147 == 2)
        {
          v152 = *(v0 + 2112);
          v226 = *(v0 + 2136);
          v153 = *(v0 + 2096);
          v230 = v153;
          v154 = *(v0 + 2088);
          v155 = *(v0 + 2072);
          v156 = *(v0 + 2056);
          outlined init with take of TokenGeneratorResponsePromptCompletionStream(*(v0 + 2128), v153, type metadata accessor for FunctionDescription);
          outlined init with copy of PromptCompletion(v153, v154, type metadata accessor for FunctionDescription);
          v157 = v215[1];
          *v152 = *v154;
          v218[1] = v157;
          v158 = v215[3];
          v218[2] = v215[2];
          v218[3] = v158;
          (*v211)(v155, &v154[*(v213 + 24)], v156);
          type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope(0);

          Schema.type.getter();
          outlined destroy of TokenGeneratorCompletionResponseStringStream(v226, type metadata accessor for ToolType);
          (*v210)(v155, v156);
          outlined destroy of TokenGeneratorCompletionResponseStringStream(v154, type metadata accessor for FunctionDescription);
          outlined destroy of TokenGeneratorCompletionResponseStringStream(v230, type metadata accessor for FunctionDescription);
        }

        else
        {
          outlined destroy of TokenGeneratorCompletionResponseStringStream(v148, type metadata accessor for ToolType);
        }

        swift_storeEnumTagMultiPayload();
        v159 = *(v0 + 2168);
        v160 = *(v0 + 2160);
        outlined init with take of TokenGeneratorResponsePromptCompletionStream(*(v0 + 2112), *(v0 + 2184), type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope);
        outlined destroy of TokenGeneratorCompletionResponseStringStream(v160, type metadata accessor for ToolDescription);
        outlined destroy of TokenGeneratorCompletionResponseStringStream(v159, type metadata accessor for ToolDescription);
        *&v285 = v141;
        v162 = *(v141 + 16);
        v161 = *(v141 + 24);
        if (v162 >= v161 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v161 > 1), v162 + 1, 1);
          v141 = v285;
        }

        v163 = *(v0 + 2184);
        *(v141 + 16) = v162 + 1;
        outlined init with take of TokenGeneratorResponsePromptCompletionStream(v163, v141 + ((*(v245 + 80) + 32) & ~*(v245 + 80)) + *(v245 + 72) * v162, type metadata accessor for ToolDescriptionEnvelope);
        v142 += v239;
        --v138;
      }

      while (v138);

      goto LABEL_30;
    }
  }

  v141 = MEMORY[0x1E69E7CC0];
LABEL_30:
  v164 = *(v0 + 2304);
  v165 = *(v0 + 2296);
  v166 = *(v0 + 2272);
  v167 = *(v0 + 2264);
  *(*(v0 + 2320) + *(*(v0 + 2312) + 36)) = v141;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v164, v165, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  v168 = (*(v166 + 48))(v165, 1, v167);
  v169 = *(v0 + 2432);
  v170 = *(v0 + 2408);
  v171 = *(v0 + 2400);
  v172 = *(v0 + 2360);
  v173 = *(v0 + 2344);
  v174 = *(v0 + 2336);
  v175 = *(v0 + 2304);
  if (v168 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 2304), &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v219 = *(v170 + 8);
    v219(v169, v171);
    v216 = *(v173 + 8);
    v216(v172, v174);
    v176 = xmmword_1ABA26F10;
  }

  else
  {
    v240 = *(v0 + 2360);
    v246 = *(v0 + 2336);
    v177 = *(v0 + 2288);
    v178 = *(v0 + 2280);
    v179 = *(v0 + 2272);
    v180 = *(v0 + 2264);
    (*(v179 + 32))(v177, *(v0 + 2296), v180);
    (*(v179 + 16))(v178, v177, v180);
    ToolChoiceEnvelope.init(sealing:)(v178, &v285);
    (*(v179 + 8))(v177, v180);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v175, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v219 = *(v170 + 8);
    v219(v169, v171);
    v216 = *(v173 + 8);
    v216(v240, v246);
    v176 = v285;
  }

  v181 = *(v0 + 2512);
  v182 = *(v0 + 2488);
  v183 = *(v0 + 2480);
  v184 = *(v0 + 2464);
  v185 = *(v0 + 2384);
  v186 = *(v0 + 2328);
  v187 = *(v0 + 2320);
  v188 = *(v0 + 2312);
  v189 = *(v0 + 1992);
  v190 = *(v0 + 2496);
  *(v187 + v188[10]) = v176;
  v191 = v187 + v188[12];
  *v191 = v184;
  *(v191 + 16) = v183;
  *(v191 + 24) = v182;
  *(v191 + 32) = v190;
  *(v191 + 48) = v181;
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v185, v187 + v188[8], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  *(v187 + v188[11]) = v189;
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v187, v186, type metadata accessor for CompletePromptRequest);
  if (v251)
  {
    v192 = *(v0 + 2232);
    v241 = *(v192 + 16);
    v193 = *(v0 + 1976) + ((*(v192 + 80) + 32) & ~*(v192 + 80));
    v231 = (v192 + 8);
    v234 = *(v192 + 72);
    v223 = *(v0 + 2208);

    v194 = MEMORY[0x1E69E7CC0];
    do
    {
      v195 = *(v0 + 2256);
      v196 = *(v0 + 2248);
      v197 = *(v0 + 2224);
      v198 = *(v0 + 2200);
      v199 = *(v0 + 2192);
      v241(v195, v193, v197);
      v241(v196, v195, v197);
      AnyTooling.init(_:)(v196, v199);
      (*v231)(v195, v197);
      if ((*(v223 + 48))(v199, 1, v198) == 1)
      {
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 2192), &_s15TokenGeneration10AnyToolingVSgMd, &_s15TokenGeneration10AnyToolingVSgMR);
      }

      else
      {
        outlined init with take of TokenGeneratorResponsePromptCompletionStream(*(v0 + 2192), *(v0 + 2216), type metadata accessor for AnyTooling);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v194 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v194[2] + 1, 1, v194);
        }

        v201 = v194[2];
        v200 = v194[3];
        if (v201 >= v200 >> 1)
        {
          v194 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v200 > 1), v201 + 1, 1, v194);
        }

        v202 = *(v0 + 2216);
        v194[2] = v201 + 1;
        outlined init with take of TokenGeneratorResponsePromptCompletionStream(v202, v194 + ((*(v223 + 80) + 32) & ~*(v223 + 80)) + *(v223 + 72) * v201, type metadata accessor for AnyTooling);
      }

      v193 += v234;
      --v251;
    }

    while (v251);
  }

  else
  {

    v194 = MEMORY[0x1E69E7CC0];
  }

  v247 = *(v0 + 2400);
  v252 = *(v0 + 2440);
  v235 = *(v0 + 2392);
  v203 = *(v0 + 2368);
  v204 = *(v0 + 2336);
  v205 = *(v0 + 2328);
  TokenGenerator.handleCompletePromptRequest(request:tools:)(v205, v194, *(v0 + 1960));

  outlined destroy of SamplingParameters(v0 + 1312);

  outlined destroy of TokenGeneratorCompletionResponseStringStream(v205, type metadata accessor for CompletePromptRequest);
  v216(v203, v204);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v235, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v219(v252, v247);
LABEL_45:

  v206 = *(v0 + 8);

  return v206();
}

uint64_t TokenGenerator.complete(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:partialGrammar:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 2016) = v8;
  *(v9 + 2008) = a8;
  *(v9 + 2000) = a7;
  *(v9 + 1992) = a6;
  *(v9 + 1984) = a5;
  *(v9 + 1976) = a4;
  *(v9 + 1968) = a2;
  *(v9 + 1960) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  *(v9 + 2024) = swift_task_alloc();
  v11 = type metadata accessor for PromptTemplateInfo();
  *(v9 + 2032) = v11;
  *(v9 + 2040) = *(v11 - 8);
  *(v9 + 2048) = swift_task_alloc();
  v12 = type metadata accessor for Schema();
  *(v9 + 2056) = v12;
  *(v9 + 2064) = *(v12 - 8);
  *(v9 + 2072) = swift_task_alloc();
  *(v9 + 2080) = type metadata accessor for FunctionDescription(0);
  *(v9 + 2088) = swift_task_alloc();
  *(v9 + 2096) = swift_task_alloc();
  *(v9 + 2104) = type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope(0);
  *(v9 + 2112) = swift_task_alloc();
  *(v9 + 2120) = type metadata accessor for ToolType(0);
  *(v9 + 2128) = swift_task_alloc();
  *(v9 + 2136) = swift_task_alloc();
  *(v9 + 2144) = *(type metadata accessor for ToolDescription(0) - 8);
  *(v9 + 2152) = swift_task_alloc();
  *(v9 + 2160) = swift_task_alloc();
  *(v9 + 2168) = swift_task_alloc();
  *(v9 + 2176) = *(type metadata accessor for ToolDescriptionEnvelope(0) - 8);
  *(v9 + 2184) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration10AnyToolingVSgMd, &_s15TokenGeneration10AnyToolingVSgMR);
  *(v9 + 2192) = swift_task_alloc();
  v13 = type metadata accessor for AnyTooling(0);
  *(v9 + 2200) = v13;
  *(v9 + 2208) = *(v13 - 8);
  *(v9 + 2216) = swift_task_alloc();
  v14 = type metadata accessor for ToolType();
  *(v9 + 2224) = v14;
  *(v9 + 2232) = *(v14 - 8);
  *(v9 + 2240) = swift_task_alloc();
  *(v9 + 2248) = swift_task_alloc();
  *(v9 + 2256) = swift_task_alloc();
  v15 = type metadata accessor for ToolChoice();
  *(v9 + 2264) = v15;
  *(v9 + 2272) = *(v15 - 8);
  *(v9 + 2280) = swift_task_alloc();
  *(v9 + 2288) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  *(v9 + 2296) = swift_task_alloc();
  *(v9 + 2304) = swift_task_alloc();
  *(v9 + 2312) = type metadata accessor for CompletePromptRequest(0);
  *(v9 + 2320) = swift_task_alloc();
  *(v9 + 2328) = swift_task_alloc();
  v16 = type metadata accessor for Prompt();
  *(v9 + 2336) = v16;
  *(v9 + 2344) = *(v16 - 8);
  *(v9 + 2352) = swift_task_alloc();
  *(v9 + 2360) = swift_task_alloc();
  *(v9 + 2368) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  *(v9 + 2376) = swift_task_alloc();
  *(v9 + 2384) = swift_task_alloc();
  *(v9 + 2392) = swift_task_alloc();
  v17 = type metadata accessor for PromptVariant();
  *(v9 + 2400) = v17;
  *(v9 + 2408) = *(v17 - 8);
  *(v9 + 2416) = swift_task_alloc();
  *(v9 + 2424) = swift_task_alloc();
  *(v9 + 2432) = swift_task_alloc();
  *(v9 + 2440) = swift_task_alloc();
  *(v9 + 2448) = type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel(0);
  *(v9 + 2456) = swift_task_alloc();
  v18 = *(a3 + 176);
  *(v9 + 176) = *(a3 + 160);
  *(v9 + 192) = v18;
  *(v9 + 208) = *(a3 + 192);
  *(v9 + 224) = *(a3 + 208);
  v19 = *(a3 + 112);
  *(v9 + 112) = *(a3 + 96);
  *(v9 + 128) = v19;
  v20 = *(a3 + 144);
  *(v9 + 144) = *(a3 + 128);
  *(v9 + 160) = v20;
  v21 = *(a3 + 48);
  *(v9 + 48) = *(a3 + 32);
  *(v9 + 64) = v21;
  v22 = *(a3 + 80);
  *(v9 + 80) = *(a3 + 64);
  *(v9 + 96) = v22;
  v23 = *(a3 + 16);
  *(v9 + 16) = *a3;
  *(v9 + 32) = v23;
  *(v9 + 2464) = *v26;
  *(v9 + 2472) = *(v26 + 8);
  *(v9 + 2488) = *(v26 + 24);
  *(v9 + 2496) = *(v26 + 32);
  *(v9 + 2512) = *(v26 + 48);

  return MEMORY[0x1EEE6DFA0](TokenGenerator.complete(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:partialGrammar:metadata:), 0, 0);
}

uint64_t TokenGenerator.complete(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:partialGrammar:metadata:)()
{
  v295 = v0;
  outlined init with copy of PromptCompletion(*(v0 + 1968), *(v0 + 2456), type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = *(v0 + 2456);
  v3 = *(v0 + 2408);
  v4 = *(v0 + 2400);
  if (EnumCaseMultiPayload == 1)
  {
    v5 = *(v0 + 2416);
    v6 = *(v0 + 2048);
    v7 = *(v0 + 2040);
    v8 = *(v0 + 2032);
    v248 = *(v0 + 2024);
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMd, &_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMR) + 48);
    (*(v7 + 32))(v6, v2, v8);
    (*(v3 + 32))(v5, v2 + v9, v4);
    (*(v3 + 16))(v248, v5, v4);
    v10 = 1;
    (*(v3 + 56))(v248, 0, 1, v4);
    v11 = *(v0 + 192);
    *(v0 + 392) = *(v0 + 176);
    *(v0 + 408) = v11;
    *(v0 + 424) = *(v0 + 208);
    *(v0 + 440) = *(v0 + 224);
    v12 = *(v0 + 128);
    *(v0 + 328) = *(v0 + 112);
    *(v0 + 344) = v12;
    v13 = *(v0 + 160);
    *(v0 + 360) = *(v0 + 144);
    *(v0 + 376) = v13;
    v14 = *(v0 + 64);
    *(v0 + 264) = *(v0 + 48);
    *(v0 + 280) = v14;
    v15 = *(v0 + 96);
    *(v0 + 296) = *(v0 + 80);
    *(v0 + 312) = v15;
    v16 = *(v0 + 32);
    *(v0 + 232) = *(v0 + 16);
    *(v0 + 248) = v16;
    if (_s15TokenGeneration26SamplingParametersEnvelopeVSgWOg(v0 + 232) == 1)
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      LOBYTE(v271) = 1;
      v27 = 0uLL;
      LOBYTE(v285) = 1;
      v28 = 2;
      v29 = -1;
      v30 = 768;
      v31 = 0x2000200020001;
      v32 = 1;
      v33 = MEMORY[0x1E69E7CD0];
      v34 = 1;
      v35 = 1;
      v36 = 1;
      v37 = 1;
      v38 = 0uLL;
      v39 = 0uLL;
      v40 = 0uLL;
    }

    else
    {
      v18 = *(v0 + 16);
      v29 = *(v0 + 24);
      *v253 = *(v0 + 25);
      *&v253[3] = *(v0 + 28);
      v19 = *(v0 + 32);
      v10 = *(v0 + 40);
      *v254 = *(v0 + 41);
      *&v254[3] = *(v0 + 44);
      v20 = *(v0 + 48);
      v32 = *(v0 + 56);
      *&v255[3] = *(v0 + 60);
      *v255 = *(v0 + 57);
      v21 = *(v0 + 64);
      v34 = *(v0 + 72);
      *v256 = *(v0 + 73);
      *&v256[3] = *(v0 + 76);
      v22 = *(v0 + 80);
      v35 = *(v0 + 88);
      *v257 = *(v0 + 89);
      *&v257[3] = *(v0 + 92);
      v33 = *(v0 + 96);
      v23 = *(v0 + 104);
      v36 = *(v0 + 112);
      *v258 = *(v0 + 113);
      *&v258[3] = *(v0 + 116);
      v24 = *(v0 + 120);
      v37 = *(v0 + 128);
      *&v259[3] = *(v0 + 132);
      *v259 = *(v0 + 129);
      v25 = *(v0 + 136);
      v17.i32[0] = *(v0 + 144);
      v31 = vmovl_u8(v17).u64[0];
      v28 = *(v0 + 148);
      v260 = *(v0 + 149);
      v261 = *(v0 + 151);
      v27 = *(v0 + 152);
      v38 = *(v0 + 168);
      v39 = *(v0 + 184);
      v40 = *(v0 + 200);
      v30 = *(v0 + 216);
      v26 = *(v0 + 224);
    }

    *&v285 = v18;
    BYTE8(v285) = v29;
    *(&v285 + 9) = *v253;
    HIDWORD(v285) = *&v253[3];
    *&v286 = v19;
    v72 = *(v0 + 2512);
    BYTE8(v286) = v10;
    *(&v286 + 9) = *v254;
    HIDWORD(v286) = *&v254[3];
    v73 = *(v0 + 2504);
    *&v287 = v20;
    v227 = *(v0 + 2496);
    BYTE8(v287) = v32;
    *(&v287 + 9) = *v255;
    HIDWORD(v287) = *&v255[3];
    v74 = *(v0 + 2488);
    *&v288 = v21;
    v221 = *(v0 + 2480);
    BYTE8(v288) = v34;
    HIDWORD(v288) = *&v256[3];
    *(&v288 + 9) = *v256;
    v75 = *(v0 + 2472);
    *&v289 = v22;
    v76 = *(v0 + 2464);
    BYTE8(v289) = v35;
    HIDWORD(v289) = *&v257[3];
    *(&v289 + 9) = *v257;
    v77 = *(v0 + 2376);
    *&v290 = v33;
    *(&v290 + 1) = v23;
    v242 = *(v0 + 2024);
    v249 = *(v0 + 2048);
    LOBYTE(v291) = v36;
    *(&v291 + 1) = *v258;
    DWORD1(v291) = *&v258[3];
    *(&v291 + 1) = v24;
    v78 = *(v0 + 2008);
    LOBYTE(v292) = v37;
    DWORD1(v292) = *&v259[3];
    *(&v292 + 1) = *v259;
    v79 = *(v0 + 2000);
    *(&v292 + 1) = v25;
    v232 = *(v0 + 1992);
    v293[4] = v28;
    v293[7] = v261;
    *&v293[5] = v260;
    v224 = *(v0 + 1984);
    *&v293[72] = v30;
    v80 = *(v0 + 1976);
    v294 = v26;
    v217 = *(v0 + 1960);
    v220 = v80;
    *v293 = vuzp1_s8(v31, v31).u32[0];
    *&v293[8] = v27;
    *&v293[24] = v38;
    *&v293[40] = v39;
    *&v293[56] = v40;
    *v77 = v79;
    *(v77 + 8) = v78;
    v81 = type metadata accessor for Constraints(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v81 - 8) + 56))(v77, 0, 1, v81);
    *&v271 = v76;
    *(&v271 + 1) = v75;
    *&v272 = v221;
    *(&v272 + 1) = v74;
    *&v273 = v227;
    *(&v273 + 1) = v73;
    *&v274 = v72;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 16, v0 + 448, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);

    TokenGenerator.complete(prompt:promptTemplateInfo:parameters:tools:toolChoice:documents:constraint:metadata:)(v242, v249, &v285, v220, v224, v232, v77, &v271, v217);
    v82 = *(v0 + 2416);
    v83 = *(v0 + 2400);
    v84 = *(v0 + 2376);
    v236 = *(v0 + 2032);
    v243 = *(v0 + 2048);
    v85 = *(v0 + 2024);
    v86 = (*(v0 + 2408) + 8);
    v87 = (*(v0 + 2040) + 8);
    outlined consume of RequestMetadata?(v271, *(&v271 + 1), v272, *(&v272 + 1), v273, *(&v273 + 1), v274);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v84, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    v92 = *&v293[48];
    *(v0 + 1040) = *&v293[32];
    *(v0 + 1056) = v92;
    *(v0 + 1072) = *&v293[64];
    *(v0 + 1088) = v294;
    v93 = v292;
    *(v0 + 976) = v291;
    *(v0 + 992) = v93;
    v94 = *&v293[16];
    *(v0 + 1008) = *v293;
    *(v0 + 1024) = v94;
    v95 = v288;
    *(v0 + 912) = v287;
    *(v0 + 928) = v95;
    v96 = v290;
    *(v0 + 944) = v289;
    *(v0 + 960) = v96;
    v97 = v286;
    *(v0 + 880) = v285;
    *(v0 + 896) = v97;
    outlined destroy of SamplingParameters(v0 + 880);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v85, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
    (*v86)(v82, v83);
    (*v87)(v243, v236);
    goto LABEL_45;
  }

  (*(v3 + 32))(*(v0 + 2440), *(v0 + 2456), *(v0 + 2400));
  v41 = *(v0 + 192);
  *(v0 + 1256) = *(v0 + 176);
  *(v0 + 1272) = v41;
  *(v0 + 1288) = *(v0 + 208);
  *(v0 + 1304) = *(v0 + 224);
  v42 = *(v0 + 128);
  *(v0 + 1192) = *(v0 + 112);
  *(v0 + 1208) = v42;
  v43 = *(v0 + 160);
  *(v0 + 1224) = *(v0 + 144);
  *(v0 + 1240) = v43;
  v44 = *(v0 + 64);
  *(v0 + 1128) = *(v0 + 48);
  *(v0 + 1144) = v44;
  v45 = *(v0 + 96);
  *(v0 + 1160) = *(v0 + 80);
  *(v0 + 1176) = v45;
  v46 = *(v0 + 32);
  *(v0 + 1096) = *(v0 + 16);
  *(v0 + 1112) = v46;
  if (_s15TokenGeneration26SamplingParametersEnvelopeVSgWOg(v0 + 1096) == 1)
  {
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 1;
    LOBYTE(v271) = 1;
    LOBYTE(v285) = 1;
    v58 = 0uLL;
    v59 = 0x2000200020001;
    v60 = 2;
    v61 = -1;
    v62 = 768;
    v63 = MEMORY[0x1E69E7CD0];
    v64 = 1;
    v65 = 1;
    v66 = 1;
    v67 = 1;
    v68 = 1;
    v69 = 0uLL;
    v70 = 0uLL;
    v71 = 0uLL;
  }

  else
  {
    v48 = *(v0 + 16);
    v61 = *(v0 + 24);
    *v262 = *(v0 + 25);
    *&v262[3] = *(v0 + 28);
    v49 = *(v0 + 32);
    v57 = *(v0 + 40);
    *v263 = *(v0 + 41);
    *&v263[3] = *(v0 + 44);
    v50 = *(v0 + 48);
    v64 = *(v0 + 56);
    *&v264[3] = *(v0 + 60);
    *v264 = *(v0 + 57);
    v51 = *(v0 + 64);
    v65 = *(v0 + 72);
    *v265 = *(v0 + 73);
    *&v265[3] = *(v0 + 76);
    v52 = *(v0 + 80);
    v66 = *(v0 + 88);
    *v266 = *(v0 + 89);
    *&v266[3] = *(v0 + 92);
    v63 = *(v0 + 96);
    v53 = *(v0 + 104);
    v67 = *(v0 + 112);
    *v267 = *(v0 + 113);
    *&v267[3] = *(v0 + 116);
    v54 = *(v0 + 120);
    v68 = *(v0 + 128);
    *&v268[3] = *(v0 + 132);
    *v268 = *(v0 + 129);
    v55 = *(v0 + 136);
    v47.i32[0] = *(v0 + 144);
    v59 = vmovl_u8(v47).u64[0];
    v60 = *(v0 + 148);
    v269 = *(v0 + 149);
    v270 = *(v0 + 151);
    v58 = *(v0 + 152);
    v69 = *(v0 + 168);
    v70 = *(v0 + 184);
    v71 = *(v0 + 200);
    v62 = *(v0 + 216);
    v56 = *(v0 + 224);
  }

  v88 = *(v0 + 2392);
  v89 = *(v0 + 2008);
  v90 = *(v0 + 2000);
  *(v0 + 1312) = v48;
  *(v0 + 1320) = v61;
  *(v0 + 1324) = *&v262[3];
  *(v0 + 1321) = *v262;
  *(v0 + 1328) = v49;
  *(v0 + 1336) = v57;
  *(v0 + 1340) = *&v263[3];
  *(v0 + 1337) = *v263;
  *(v0 + 1344) = v50;
  *(v0 + 1352) = v64;
  *(v0 + 1356) = *&v264[3];
  *(v0 + 1353) = *v264;
  *(v0 + 1360) = v51;
  *(v0 + 1368) = v65;
  *(v0 + 1372) = *&v265[3];
  *(v0 + 1369) = *v265;
  *(v0 + 1376) = v52;
  *(v0 + 1384) = v66;
  *(v0 + 1388) = *&v266[3];
  *(v0 + 1385) = *v266;
  *(v0 + 1392) = v63;
  *(v0 + 1400) = v53;
  *(v0 + 1408) = v67;
  *(v0 + 1412) = *&v267[3];
  *(v0 + 1409) = *v267;
  *(v0 + 1416) = v54;
  *(v0 + 1424) = v68;
  *(v0 + 1428) = *&v268[3];
  *(v0 + 1425) = *v268;
  *(v0 + 1432) = v55;
  *(v0 + 1440) = vuzp1_s8(v59, v59).u32[0];
  *(v0 + 1444) = v60;
  *(v0 + 1447) = v270;
  *(v0 + 1445) = v269;
  *(v0 + 1448) = v58;
  *(v0 + 1464) = v69;
  *(v0 + 1480) = v70;
  *(v0 + 1496) = v71;
  *(v0 + 1512) = v62;
  *(v0 + 1520) = v56;
  *v88 = v90;
  v88[1] = v89;
  v91 = type metadata accessor for Constraints(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v91 - 8) + 56))(v88, 0, 1, v91);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 16, v0 + 1528, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);

  PromptVariant.tgPrompt.getter();
  v98 = *(v0 + 2440);
  v99 = *(v0 + 2432);
  v100 = *(v0 + 2408);
  v101 = *(v0 + 2400);
  v102 = *(v0 + 2392);
  v208 = *(v0 + 2384);
  v222 = *(v0 + 2360);
  v228 = *(v0 + 2352);
  v103 = *(v0 + 2320);
  v237 = *(v0 + 2312);
  v244 = *(v0 + 2424);
  v209 = *(v0 + 2304);
  v104 = *(v0 + 1984);
  v250 = *(v0 + 1976);
  v212 = *(*(v0 + 2344) + 16);
  v214 = *(v0 + 2336);
  v212();
  v105 = *(v100 + 16);
  v105(v99, v98, v101);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v102, v208, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v104, v209, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);

  outlined init with copy of SamplingParameters(v0 + 1312, v0 + 1744);
  XPCDictionary.init()();
  (v212)(v228, v222, v214);
  v106 = specialized PromptEnvelope.init(sealing:xpcData:)(v228, v103);
  v107 = (v103 + v237[5]);
  *v107 = v106;
  v107[1] = v108;
  v107[2] = v109;
  v107[3] = v110;
  v105(v244, v99, v101);
  PromptVariantEnvelope.init(sealing:xpcData:)(v244, v103, v103 + v237[6]);
  v111 = *(v0 + 1488);
  *&v293[32] = *(v0 + 1472);
  *&v293[48] = v111;
  *&v293[64] = *(v0 + 1504);
  v294 = *(v0 + 1520);
  v112 = *(v0 + 1424);
  v291 = *(v0 + 1408);
  v292 = v112;
  v113 = *(v0 + 1456);
  *v293 = *(v0 + 1440);
  *&v293[16] = v113;
  v114 = *(v0 + 1360);
  v287 = *(v0 + 1344);
  v288 = v114;
  v115 = *(v0 + 1392);
  v289 = *(v0 + 1376);
  v290 = v115;
  v116 = *(v0 + 1328);
  v285 = *(v0 + 1312);
  v286 = v116;
  SamplingParametersEnvelope.init(sealing:)(&v285, &v271);
  v117 = v103 + v237[7];
  v118 = v276;
  *(v117 + 64) = v275;
  *(v117 + 80) = v118;
  v119 = v274;
  *(v117 + 32) = v273;
  *(v117 + 48) = v119;
  v120 = v280;
  *(v117 + 128) = v279;
  *(v117 + 144) = v120;
  v121 = v278;
  *(v117 + 96) = v277;
  *(v117 + 112) = v121;
  *(v117 + 208) = v284;
  v122 = v283;
  *(v117 + 176) = v282;
  *(v117 + 192) = v122;
  *(v117 + 160) = v281;
  v123 = v272;
  *v117 = v271;
  *(v117 + 16) = v123;
  v124 = *(v250 + 16);
  v125 = MEMORY[0x1E69E7CC0];
  v251 = v124;
  if (v124)
  {
    v126 = *(v0 + 2232);
    v238 = *(v0 + 2144);
    v127 = *(v0 + 1976);
    *&v285 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v124, 0);
    v128 = v285;
    v129 = *(v126 + 16);
    v126 += 16;
    v130 = v127 + ((*(v126 + 64) + 32) & ~*(v126 + 64));
    v229 = *(v126 + 56);
    v233 = v129;
    v225 = (v126 - 8);
    do
    {
      v131 = *(v0 + 2248);
      v132 = *(v0 + 2240);
      v133 = *(v0 + 2224);
      v134 = *(v0 + 2152);
      v233(v131, v130, v133);
      v233(v132, v131, v133);
      ToolDescription.init(toolType:)(v132, v134);
      (*v225)(v131, v133);
      *&v285 = v128;
      v136 = *(v128 + 16);
      v135 = *(v128 + 24);
      if (v136 >= v135 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v135 > 1), v136 + 1, 1);
        v128 = v285;
      }

      v137 = *(v0 + 2152);
      *(v128 + 16) = v136 + 1;
      outlined init with take of TokenGeneratorResponsePromptCompletionStream(v137, v128 + ((*(v238 + 80) + 32) & ~*(v238 + 80)) + *(v238 + 72) * v136, type metadata accessor for ToolDescription);
      v130 += v229;
      --v124;
    }

    while (v124);
    v125 = MEMORY[0x1E69E7CC0];
    v138 = *(v128 + 16);
    if (v138)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v128 = MEMORY[0x1E69E7CC0];
    v138 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v138)
    {
LABEL_15:
      v245 = *(v0 + 2176);
      v139 = *(v0 + 2144);
      v215 = *(v0 + 2088);
      v218 = *(v0 + 2112);
      v213 = *(v0 + 2080);
      v140 = *(v0 + 2064);
      *&v285 = v125;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v138, 0);
      v141 = v285;
      v142 = v128 + ((*(v139 + 80) + 32) & ~*(v139 + 80));
      v239 = *(v139 + 72);
      v210 = (v140 + 8);
      v211 = (v140 + 16);
      do
      {
        v143 = *(v0 + 2168);
        v144 = *(v0 + 2160);
        v145 = *(v0 + 2136);
        v146 = *(v0 + 2128);
        outlined init with copy of PromptCompletion(v142, v143, type metadata accessor for ToolDescription);
        outlined init with copy of PromptCompletion(v143, v144, type metadata accessor for ToolDescription);
        outlined init with copy of PromptCompletion(v144, v145, type metadata accessor for ToolType);
        outlined init with copy of PromptCompletion(v145, v146, type metadata accessor for ToolType);
        v147 = swift_getEnumCaseMultiPayload();
        v148 = *(v0 + 2136);
        if (v147 <= 1)
        {
          v149 = *(v0 + 2128);
          v150 = *(v0 + 2112);
          if (v147)
          {
            outlined destroy of TokenGeneratorCompletionResponseStringStream(v148, type metadata accessor for ToolType);
            v151 = type metadata accessor for FileGenerationParameters();
          }

          else
          {
            outlined destroy of TokenGeneratorCompletionResponseStringStream(v148, type metadata accessor for ToolType);
            v151 = type metadata accessor for ImageGenerationParameters();
          }

          (*(*(v151 - 8) + 32))(v150, v149, v151);
        }

        else if (v147 == 2)
        {
          v152 = *(v0 + 2112);
          v226 = *(v0 + 2136);
          v153 = *(v0 + 2096);
          v230 = v153;
          v154 = *(v0 + 2088);
          v155 = *(v0 + 2072);
          v156 = *(v0 + 2056);
          outlined init with take of TokenGeneratorResponsePromptCompletionStream(*(v0 + 2128), v153, type metadata accessor for FunctionDescription);
          outlined init with copy of PromptCompletion(v153, v154, type metadata accessor for FunctionDescription);
          v157 = v215[1];
          *v152 = *v154;
          v218[1] = v157;
          v158 = v215[3];
          v218[2] = v215[2];
          v218[3] = v158;
          (*v211)(v155, &v154[*(v213 + 24)], v156);
          type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope(0);

          Schema.type.getter();
          outlined destroy of TokenGeneratorCompletionResponseStringStream(v226, type metadata accessor for ToolType);
          (*v210)(v155, v156);
          outlined destroy of TokenGeneratorCompletionResponseStringStream(v154, type metadata accessor for FunctionDescription);
          outlined destroy of TokenGeneratorCompletionResponseStringStream(v230, type metadata accessor for FunctionDescription);
        }

        else
        {
          outlined destroy of TokenGeneratorCompletionResponseStringStream(v148, type metadata accessor for ToolType);
        }

        swift_storeEnumTagMultiPayload();
        v159 = *(v0 + 2168);
        v160 = *(v0 + 2160);
        outlined init with take of TokenGeneratorResponsePromptCompletionStream(*(v0 + 2112), *(v0 + 2184), type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope);
        outlined destroy of TokenGeneratorCompletionResponseStringStream(v160, type metadata accessor for ToolDescription);
        outlined destroy of TokenGeneratorCompletionResponseStringStream(v159, type metadata accessor for ToolDescription);
        *&v285 = v141;
        v162 = *(v141 + 16);
        v161 = *(v141 + 24);
        if (v162 >= v161 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v161 > 1), v162 + 1, 1);
          v141 = v285;
        }

        v163 = *(v0 + 2184);
        *(v141 + 16) = v162 + 1;
        outlined init with take of TokenGeneratorResponsePromptCompletionStream(v163, v141 + ((*(v245 + 80) + 32) & ~*(v245 + 80)) + *(v245 + 72) * v162, type metadata accessor for ToolDescriptionEnvelope);
        v142 += v239;
        --v138;
      }

      while (v138);

      goto LABEL_30;
    }
  }

  v141 = MEMORY[0x1E69E7CC0];
LABEL_30:
  v164 = *(v0 + 2304);
  v165 = *(v0 + 2296);
  v166 = *(v0 + 2272);
  v167 = *(v0 + 2264);
  *(*(v0 + 2320) + *(*(v0 + 2312) + 36)) = v141;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v164, v165, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  v168 = (*(v166 + 48))(v165, 1, v167);
  v169 = *(v0 + 2432);
  v170 = *(v0 + 2408);
  v171 = *(v0 + 2400);
  v172 = *(v0 + 2360);
  v173 = *(v0 + 2344);
  v174 = *(v0 + 2336);
  v175 = *(v0 + 2304);
  if (v168 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 2304), &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v219 = *(v170 + 8);
    v219(v169, v171);
    v216 = *(v173 + 8);
    v216(v172, v174);
    v176 = xmmword_1ABA26F10;
  }

  else
  {
    v240 = *(v0 + 2360);
    v246 = *(v0 + 2336);
    v177 = *(v0 + 2288);
    v178 = *(v0 + 2280);
    v179 = *(v0 + 2272);
    v180 = *(v0 + 2264);
    (*(v179 + 32))(v177, *(v0 + 2296), v180);
    (*(v179 + 16))(v178, v177, v180);
    ToolChoiceEnvelope.init(sealing:)(v178, &v285);
    (*(v179 + 8))(v177, v180);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v175, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v219 = *(v170 + 8);
    v219(v169, v171);
    v216 = *(v173 + 8);
    v216(v240, v246);
    v176 = v285;
  }

  v181 = *(v0 + 2512);
  v182 = *(v0 + 2488);
  v183 = *(v0 + 2480);
  v184 = *(v0 + 2464);
  v185 = *(v0 + 2384);
  v186 = *(v0 + 2328);
  v187 = *(v0 + 2320);
  v188 = *(v0 + 2312);
  v189 = *(v0 + 1992);
  v190 = *(v0 + 2496);
  *(v187 + v188[10]) = v176;
  v191 = v187 + v188[12];
  *v191 = v184;
  *(v191 + 16) = v183;
  *(v191 + 24) = v182;
  *(v191 + 32) = v190;
  *(v191 + 48) = v181;
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v185, v187 + v188[8], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  *(v187 + v188[11]) = v189;
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v187, v186, type metadata accessor for CompletePromptRequest);
  if (v251)
  {
    v192 = *(v0 + 2232);
    v241 = *(v192 + 16);
    v193 = *(v0 + 1976) + ((*(v192 + 80) + 32) & ~*(v192 + 80));
    v231 = (v192 + 8);
    v234 = *(v192 + 72);
    v223 = *(v0 + 2208);

    v194 = MEMORY[0x1E69E7CC0];
    do
    {
      v195 = *(v0 + 2256);
      v196 = *(v0 + 2248);
      v197 = *(v0 + 2224);
      v198 = *(v0 + 2200);
      v199 = *(v0 + 2192);
      v241(v195, v193, v197);
      v241(v196, v195, v197);
      AnyTooling.init(_:)(v196, v199);
      (*v231)(v195, v197);
      if ((*(v223 + 48))(v199, 1, v198) == 1)
      {
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 2192), &_s15TokenGeneration10AnyToolingVSgMd, &_s15TokenGeneration10AnyToolingVSgMR);
      }

      else
      {
        outlined init with take of TokenGeneratorResponsePromptCompletionStream(*(v0 + 2192), *(v0 + 2216), type metadata accessor for AnyTooling);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v194 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v194[2] + 1, 1, v194);
        }

        v201 = v194[2];
        v200 = v194[3];
        if (v201 >= v200 >> 1)
        {
          v194 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v200 > 1), v201 + 1, 1, v194);
        }

        v202 = *(v0 + 2216);
        v194[2] = v201 + 1;
        outlined init with take of TokenGeneratorResponsePromptCompletionStream(v202, v194 + ((*(v223 + 80) + 32) & ~*(v223 + 80)) + *(v223 + 72) * v201, type metadata accessor for AnyTooling);
      }

      v193 += v234;
      --v251;
    }

    while (v251);
  }

  else
  {

    v194 = MEMORY[0x1E69E7CC0];
  }

  v247 = *(v0 + 2400);
  v252 = *(v0 + 2440);
  v235 = *(v0 + 2392);
  v203 = *(v0 + 2368);
  v204 = *(v0 + 2336);
  v205 = *(v0 + 2328);
  TokenGenerator.handleCompletePromptRequest(request:tools:)(v205, v194, *(v0 + 1960));

  outlined destroy of SamplingParameters(v0 + 1312);

  outlined destroy of TokenGeneratorCompletionResponseStringStream(v205, type metadata accessor for CompletePromptRequest);
  v216(v203, v204);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v235, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v219(v252, v247);
LABEL_45:

  v206 = *(v0 + 8);

  return v206();
}

uint64_t TokenGenerator.complete<A>(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:generating:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 2024) = v8;
  *(v9 + 2016) = v23;
  *(v9 + 2008) = v22;
  *(v9 + 2000) = a7;
  *(v9 + 1992) = a6;
  *(v9 + 1984) = a5;
  *(v9 + 1976) = a4;
  *(v9 + 1968) = a2;
  *(v9 + 1960) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  *(v9 + 2032) = swift_task_alloc();
  v12 = type metadata accessor for PromptTemplateInfo();
  *(v9 + 2040) = v12;
  *(v9 + 2048) = *(v12 - 8);
  *(v9 + 2056) = swift_task_alloc();
  v13 = type metadata accessor for PromptVariant();
  *(v9 + 2064) = v13;
  *(v9 + 2072) = *(v13 - 8);
  *(v9 + 2080) = swift_task_alloc();
  *(v9 + 2088) = swift_task_alloc();
  *(v9 + 2096) = type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel(0);
  *(v9 + 2104) = swift_task_alloc();
  v14 = *(a3 + 176);
  *(v9 + 176) = *(a3 + 160);
  *(v9 + 192) = v14;
  *(v9 + 208) = *(a3 + 192);
  *(v9 + 224) = *(a3 + 208);
  v15 = *(a3 + 112);
  *(v9 + 112) = *(a3 + 96);
  *(v9 + 128) = v15;
  v16 = *(a3 + 144);
  *(v9 + 144) = *(a3 + 128);
  *(v9 + 160) = v16;
  v17 = *(a3 + 48);
  *(v9 + 48) = *(a3 + 32);
  *(v9 + 64) = v17;
  v18 = *(a3 + 80);
  *(v9 + 80) = *(a3 + 64);
  *(v9 + 96) = v18;
  v19 = *(a3 + 16);
  *(v9 + 16) = *a3;
  *(v9 + 32) = v19;
  *(v9 + 2112) = *a8;
  *(v9 + 2120) = *(a8 + 8);
  *(v9 + 2136) = *(a8 + 24);
  *(v9 + 2144) = *(a8 + 32);
  *(v9 + 2160) = *(a8 + 48);

  return MEMORY[0x1EEE6DFA0](TokenGenerator.complete<A>(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:generating:metadata:), 0, 0);
}

uint64_t TokenGenerator.complete<A>(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:generating:metadata:)()
{
  v153 = v0;
  outlined init with copy of PromptCompletion(*(v0 + 1968), *(v0 + 2104), type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = *(v0 + 2104);
  v3 = *(v0 + 2072);
  v4 = *(v0 + 2064);
  if (EnumCaseMultiPayload == 1)
  {
    v5 = *(v0 + 2080);
    v6 = *(v0 + 2056);
    v7 = *(v0 + 2048);
    v8 = *(v0 + 2040);
    v117 = *(v0 + 2032);
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMd, &_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMR) + 48);
    (*(v7 + 32))(v6, v2, v8);
    (*(v3 + 32))(v5, v2 + v9, v4);
    (*(v3 + 16))(v117, v5, v4);
    v10 = 1;
    (*(v3 + 56))(v117, 0, 1, v4);
    v11 = *(v0 + 192);
    *(v0 + 392) = *(v0 + 176);
    *(v0 + 408) = v11;
    *(v0 + 424) = *(v0 + 208);
    *(v0 + 440) = *(v0 + 224);
    v12 = *(v0 + 128);
    *(v0 + 328) = *(v0 + 112);
    *(v0 + 344) = v12;
    v13 = *(v0 + 160);
    *(v0 + 360) = *(v0 + 144);
    *(v0 + 376) = v13;
    v14 = *(v0 + 64);
    *(v0 + 264) = *(v0 + 48);
    *(v0 + 280) = v14;
    v15 = *(v0 + 96);
    *(v0 + 296) = *(v0 + 80);
    *(v0 + 312) = v15;
    v16 = *(v0 + 32);
    *(v0 + 232) = *(v0 + 16);
    *(v0 + 248) = v16;
    if (_s15TokenGeneration26SamplingParametersEnvelopeVSgWOg(v0 + 232) == 1)
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      LOBYTE(v148) = 1;
      v27 = 0uLL;
      LOBYTE(v138) = 1;
      v28 = 2;
      v29 = -1;
      v30 = 768;
      v31 = 0x2000200020001;
      v32 = 1;
      v33 = MEMORY[0x1E69E7CD0];
      v34 = 1;
      v35 = 1;
      v36 = 1;
      v37 = 1;
      v38 = 0uLL;
      v39 = 0uLL;
      v40 = 0uLL;
    }

    else
    {
      v18 = *(v0 + 16);
      v29 = *(v0 + 24);
      *v120 = *(v0 + 25);
      *&v120[3] = *(v0 + 28);
      v19 = *(v0 + 32);
      v10 = *(v0 + 40);
      *v121 = *(v0 + 41);
      *&v121[3] = *(v0 + 44);
      v20 = *(v0 + 48);
      v32 = *(v0 + 56);
      *&v122[3] = *(v0 + 60);
      *v122 = *(v0 + 57);
      v21 = *(v0 + 64);
      v34 = *(v0 + 72);
      *v123 = *(v0 + 73);
      *&v123[3] = *(v0 + 76);
      v22 = *(v0 + 80);
      v35 = *(v0 + 88);
      *v124 = *(v0 + 89);
      *&v124[3] = *(v0 + 92);
      v33 = *(v0 + 96);
      v23 = *(v0 + 104);
      v36 = *(v0 + 112);
      *v125 = *(v0 + 113);
      *&v125[3] = *(v0 + 116);
      v24 = *(v0 + 120);
      v37 = *(v0 + 128);
      *&v126[3] = *(v0 + 132);
      *v126 = *(v0 + 129);
      v25 = *(v0 + 136);
      v17.i32[0] = *(v0 + 144);
      v31 = vmovl_u8(v17).u64[0];
      v28 = *(v0 + 148);
      v127 = *(v0 + 149);
      v128 = *(v0 + 151);
      v27 = *(v0 + 152);
      v38 = *(v0 + 168);
      v39 = *(v0 + 184);
      v40 = *(v0 + 200);
      v30 = *(v0 + 216);
      v26 = *(v0 + 224);
    }

    *&v138 = v18;
    BYTE8(v138) = v29;
    *(&v138 + 9) = *v120;
    HIDWORD(v138) = *&v120[3];
    *&v139 = v19;
    BYTE8(v139) = v10;
    *(&v139 + 9) = *v121;
    HIDWORD(v139) = *&v121[3];
    *&v140 = v20;
    BYTE8(v140) = v32;
    HIDWORD(v140) = *&v122[3];
    *(&v140 + 9) = *v122;
    *&v141 = v21;
    BYTE8(v141) = v34;
    HIDWORD(v141) = *&v123[3];
    *(&v141 + 9) = *v123;
    *&v142 = v22;
    BYTE8(v142) = v35;
    HIDWORD(v142) = *&v124[3];
    *(&v142 + 9) = *v124;
    v72 = *(v0 + 2160);
    *&v143 = v33;
    *(&v143 + 1) = v23;
    v73 = *(v0 + 2136);
    v74 = *(v0 + 2128);
    v75 = *(v0 + 2112);
    LOBYTE(v144) = v36;
    DWORD1(v144) = *&v125[3];
    *(&v144 + 1) = *v125;
    v118 = *(v0 + 2056);
    *(&v144 + 1) = v24;
    v116 = *(v0 + 2032);
    LOBYTE(v145) = v37;
    DWORD1(v145) = *&v126[3];
    *(&v145 + 1) = *v126;
    *(&v145 + 1) = v25;
    v76 = *(v0 + 2016);
    v146[4] = v28;
    v146[7] = v128;
    *&v146[5] = v127;
    v77 = *(v0 + 2008);
    *&v146[72] = v30;
    v147 = v26;
    v78 = *(v0 + 1992);
    v149 = v74;
    v150 = v73;
    v79 = *(v0 + 1984);
    v80 = *(v0 + 1976);
    v152 = v72;
    v81 = *(v0 + 1960);
    *v146 = vuzp1_s8(v31, v31).u32[0];
    *&v146[8] = v27;
    *&v146[24] = v38;
    *&v146[40] = v39;
    *&v146[56] = v40;
    v148 = v75;
    v151 = *(v0 + 2144);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 16, v0 + 448, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    TokenGenerator.complete<A>(prompt:promptTemplateInfo:parameters:tools:toolChoice:documents:generating:metadata:)(v116, v118, &v138, v80, v79, v78, &v148, v81, v77, v76);
    v82 = *(v0 + 2080);
    v83 = *(v0 + 2064);
    v84 = *(v0 + 2056);
    v85 = *(v0 + 2040);
    v86 = *(v0 + 2032);
    v87 = (*(v0 + 2072) + 8);
    v88 = (*(v0 + 2048) + 8);
    v102 = *&v146[48];
    *(v0 + 1040) = *&v146[32];
    *(v0 + 1056) = v102;
    *(v0 + 1072) = *&v146[64];
    *(v0 + 1088) = v147;
    v103 = v145;
    *(v0 + 976) = v144;
    *(v0 + 992) = v103;
    v104 = *&v146[16];
    *(v0 + 1008) = *v146;
    *(v0 + 1024) = v104;
    v105 = v141;
    *(v0 + 912) = v140;
    *(v0 + 928) = v105;
    v106 = v143;
    *(v0 + 944) = v142;
    *(v0 + 960) = v106;
    v107 = v139;
    *(v0 + 880) = v138;
    *(v0 + 896) = v107;
    outlined destroy of SamplingParameters(v0 + 880);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v86, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
    (*v87)(v82, v83);
    (*v88)(v84, v85);
  }

  else
  {
    (*(v3 + 32))(*(v0 + 2088), *(v0 + 2104), *(v0 + 2064));
    v41 = *(v0 + 192);
    *(v0 + 1256) = *(v0 + 176);
    *(v0 + 1272) = v41;
    *(v0 + 1288) = *(v0 + 208);
    *(v0 + 1304) = *(v0 + 224);
    v42 = *(v0 + 128);
    *(v0 + 1192) = *(v0 + 112);
    *(v0 + 1208) = v42;
    v43 = *(v0 + 160);
    *(v0 + 1224) = *(v0 + 144);
    *(v0 + 1240) = v43;
    v44 = *(v0 + 64);
    *(v0 + 1128) = *(v0 + 48);
    *(v0 + 1144) = v44;
    v45 = *(v0 + 96);
    *(v0 + 1160) = *(v0 + 80);
    *(v0 + 1176) = v45;
    v46 = *(v0 + 32);
    *(v0 + 1096) = *(v0 + 16);
    *(v0 + 1112) = v46;
    if (_s15TokenGeneration26SamplingParametersEnvelopeVSgWOg(v0 + 1096) == 1)
    {
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 1;
      LOBYTE(v148) = 1;
      LOBYTE(v138) = 1;
      v58 = 0uLL;
      v59 = 0x2000200020001;
      v60 = 2;
      v61 = -1;
      v62 = 768;
      v63 = MEMORY[0x1E69E7CD0];
      v64 = 1;
      v65 = 1;
      v66 = 1;
      v67 = 1;
      v68 = 1;
      v69 = 0uLL;
      v70 = 0uLL;
      v71 = 0uLL;
    }

    else
    {
      v48 = *(v0 + 16);
      v61 = *(v0 + 24);
      *v129 = *(v0 + 25);
      *&v129[3] = *(v0 + 28);
      v49 = *(v0 + 32);
      v57 = *(v0 + 40);
      *v130 = *(v0 + 41);
      *&v130[3] = *(v0 + 44);
      v50 = *(v0 + 48);
      v64 = *(v0 + 56);
      *&v131[3] = *(v0 + 60);
      *v131 = *(v0 + 57);
      v51 = *(v0 + 64);
      v65 = *(v0 + 72);
      *v132 = *(v0 + 73);
      *&v132[3] = *(v0 + 76);
      v52 = *(v0 + 80);
      v66 = *(v0 + 88);
      *v133 = *(v0 + 89);
      *&v133[3] = *(v0 + 92);
      v63 = *(v0 + 96);
      v53 = *(v0 + 104);
      v67 = *(v0 + 112);
      *v134 = *(v0 + 113);
      *&v134[3] = *(v0 + 116);
      v54 = *(v0 + 120);
      v68 = *(v0 + 128);
      *&v135[3] = *(v0 + 132);
      *v135 = *(v0 + 129);
      v55 = *(v0 + 136);
      v47.i32[0] = *(v0 + 144);
      v59 = vmovl_u8(v47).u64[0];
      v60 = *(v0 + 148);
      v136 = *(v0 + 149);
      v137 = *(v0 + 151);
      v58 = *(v0 + 152);
      v69 = *(v0 + 168);
      v70 = *(v0 + 184);
      v71 = *(v0 + 200);
      v62 = *(v0 + 216);
      v56 = *(v0 + 224);
    }

    *&v138 = v48;
    BYTE8(v138) = v61;
    *(&v138 + 9) = *v129;
    HIDWORD(v138) = *&v129[3];
    *&v139 = v49;
    BYTE8(v139) = v57;
    *(&v139 + 9) = *v130;
    HIDWORD(v139) = *&v130[3];
    *&v140 = v50;
    BYTE8(v140) = v64;
    HIDWORD(v140) = *&v131[3];
    *(&v140 + 9) = *v131;
    *&v141 = v51;
    BYTE8(v141) = v65;
    HIDWORD(v141) = *&v132[3];
    *(&v141 + 9) = *v132;
    *&v142 = v52;
    BYTE8(v142) = v66;
    HIDWORD(v142) = *&v133[3];
    *(&v142 + 9) = *v133;
    *&v143 = v63;
    *(&v143 + 1) = v53;
    v89 = *(v0 + 2160);
    v90 = *(v0 + 2136);
    LOBYTE(v144) = v67;
    DWORD1(v144) = *&v134[3];
    *(&v144 + 1) = *v134;
    v91 = *(v0 + 2128);
    v92 = *(v0 + 2112);
    *(&v144 + 1) = v54;
    v119 = *(v0 + 2088);
    LOBYTE(v145) = v68;
    DWORD1(v145) = *&v135[3];
    *(&v145 + 1) = *v135;
    *(&v145 + 1) = v55;
    v93 = *(v0 + 2016);
    v146[4] = v60;
    v146[7] = v137;
    *&v146[5] = v136;
    v94 = *(v0 + 2008);
    *&v146[72] = v62;
    v147 = v56;
    v95 = *(v0 + 1992);
    v149 = v91;
    v150 = v90;
    v96 = *(v0 + 1984);
    v97 = *(v0 + 1976);
    v152 = v89;
    v98 = *(v0 + 1960);
    *v146 = vuzp1_s8(v59, v59).u32[0];
    *&v146[8] = v58;
    *&v146[24] = v69;
    *&v146[40] = v70;
    *&v146[56] = v71;
    v148 = v92;
    v151 = *(v0 + 2144);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 16, v0 + 1312, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    TokenGenerator.complete<A>(prompt:parameters:tools:toolChoice:documents:generating:metadata:)(v119, &v138, v97, v96, v95, &v148, v94, v98, v93);
    v99 = *(v0 + 2088);
    v100 = *(v0 + 2064);
    v101 = (*(v0 + 2072) + 8);
    v108 = *&v146[48];
    *(v0 + 1904) = *&v146[32];
    *(v0 + 1920) = v108;
    *(v0 + 1936) = *&v146[64];
    *(v0 + 1952) = v147;
    v109 = v145;
    *(v0 + 1840) = v144;
    *(v0 + 1856) = v109;
    v110 = *&v146[16];
    *(v0 + 1872) = *v146;
    *(v0 + 1888) = v110;
    v111 = v141;
    *(v0 + 1776) = v140;
    *(v0 + 1792) = v111;
    v112 = v143;
    *(v0 + 1808) = v142;
    *(v0 + 1824) = v112;
    v113 = v139;
    *(v0 + 1744) = v138;
    *(v0 + 1760) = v113;
    outlined destroy of SamplingParameters(v0 + 1744);
    (*v101)(v99, v100);
  }

  v114 = *(v0 + 8);

  return v114();
}

uint64_t TokenGenerator._complete<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v5[4] = a1;
  v5[5] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);
  v5[6] = swift_task_alloc();
  v5[7] = type metadata accessor for TokenGeneratorCompletionResponseStringStream(0);
  v10 = swift_task_alloc();
  v5[8] = v10;
  v11 = swift_task_alloc();
  v5[9] = v11;
  *v11 = v5;
  v11[1] = TokenGenerator._complete<A>(configuration:);

  return TokenGenerator._streamCompletion<A>(configuration:)(v10, a2, a3, a4);
}

uint64_t TokenGenerator._complete<A>(configuration:)()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = TokenGenerator._complete<A>(configuration:);
  }

  else
  {
    v2 = TokenGenerator._complete<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[8];
  v2 = v0[6];
  v3 = *(v0[7] + 24);
  v4 = type metadata accessor for GenerativeFunctionInstrumenter();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v2, v1 + v3, v4);
  (*(v5 + 56))(v2, 0, 1, v4);
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = TokenGenerator._complete<A>(configuration:);
  v7 = v0[8];

  return specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()(v7);
}

{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[8];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[6], &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v3, type metadata accessor for TokenGeneratorCompletionResponseStringStream);

  v0[2] = v1;
  v0[3] = v2;
  CompletionResponse.init(content:)();

  v4 = v0[1];

  return v4();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t TokenGenerator._complete<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(*v4 + 96) = v3;

  if (v3)
  {
    v9 = TokenGenerator._complete<A>(configuration:);
  }

  else
  {
    v8[13] = a3;
    v8[14] = a2;
    v8[15] = a1;
    v9 = TokenGenerator._complete<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t TokenGenerator._streamCompletion<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[142] = v4;
  v5[141] = a4;
  v5[140] = a3;
  v5[139] = a2;
  v5[138] = a1;
  v5[143] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMR);
  v5[144] = swift_task_alloc();
  v7 = *(a3 - 8);
  v5[145] = v7;
  v5[146] = *(v7 + 64);
  v5[147] = swift_task_alloc();
  v5[148] = swift_task_alloc();
  v5[149] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMR);
  v5[150] = swift_task_alloc();
  v5[151] = swift_task_alloc();
  v5[152] = swift_task_alloc();
  v5[153] = swift_task_alloc();
  v5[154] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGenerator._streamCompletion<A>(configuration:), 0, 0);
}

uint64_t TokenGenerator._streamCompletion<A>(configuration:)()
{
  GenerativeConfigurationProtocol.samplingParameters.getter(*(v0 + 1120), *(v0 + 1128), v0 + 16);
  v2 = *(v0 + 176);
  v1 = *(v0 + 192);
  v3 = *(v0 + 160);
  *(v0 + 616) = v2;
  *(v0 + 632) = v1;
  v4 = *(v0 + 192);
  *(v0 + 648) = *(v0 + 208);
  v6 = *(v0 + 112);
  v5 = *(v0 + 128);
  v7 = *(v0 + 96);
  *(v0 + 552) = v6;
  *(v0 + 568) = v5;
  v8 = *(v0 + 128);
  v10 = *(v0 + 144);
  v9 = *(v0 + 160);
  *(v0 + 584) = v10;
  *(v0 + 600) = v9;
  v12 = *(v0 + 48);
  v11 = *(v0 + 64);
  v13 = *(v0 + 32);
  *(v0 + 488) = v12;
  *(v0 + 504) = v11;
  v14 = *(v0 + 64);
  v16 = *(v0 + 80);
  v15 = *(v0 + 96);
  *(v0 + 520) = v16;
  *(v0 + 536) = v15;
  v17 = *(v0 + 32);
  v18 = *(v0 + 16);
  *(v0 + 456) = v18;
  *(v0 + 472) = v17;
  *(v0 + 400) = v2;
  *(v0 + 416) = v4;
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 336) = v6;
  *(v0 + 352) = v8;
  *(v0 + 368) = v10;
  *(v0 + 384) = v3;
  *(v0 + 272) = v12;
  *(v0 + 288) = v14;
  *(v0 + 304) = v16;
  *(v0 + 320) = v7;
  *(v0 + 664) = *(v0 + 224);
  *(v0 + 448) = *(v0 + 224);
  *(v0 + 240) = v18;
  *(v0 + 256) = v13;
  if (_s15TokenGeneration26SamplingParametersEnvelopeVSgWOg(v0 + 240) == 1)
  {
    v19 = 1;
    v20 = 0;
  }

  else
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 456, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v20 = *(v0 + 344);
    v19 = *(v0 + 352);
  }

  v21 = *(v0 + 1184);
  v22 = *(v0 + 1176);
  v23 = *(v0 + 1168);
  v24 = *(v0 + 1160);
  v25 = *(v0 + 1136);
  v26 = *(v24 + 16);
  v42 = *(v0 + 1120);
  v27 = *(v0 + 1120);
  v26(v21, *(v0 + 1112), v27);
  v26(v22, v21, v27);
  v28 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v29 = swift_allocObject();
  *(v0 + 1240) = v29;
  *(v29 + 16) = v42;
  (*(v24 + 32))(v29 + v28, v21, v27);
  *(v29 + ((v23 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;

  if (v19)
  {
    *(v0 + 1272) = mach_absolute_time();
    v30 = swift_task_alloc();
    *(v0 + 1280) = v30;
    *v30 = v0;
    v30[1] = TokenGenerator._streamCompletion<A>(configuration:);
    v31 = *(v0 + 1176);
    v32 = *(v0 + 1152);
    v33 = *(v0 + 1136);
    v34 = *(v0 + 1128);
    v35 = *(v0 + 1120);

    return closure #1 in TokenGenerator._streamCompletion<A>(configuration:)(v32, v31, v33, v35, v34);
  }

  else
  {
    (*(*(v0 + 1160) + 8))(*(v0 + 1176), *(v0 + 1120));
    v37 = swift_task_alloc();
    *(v0 + 1248) = v37;
    v37[2] = &async function pointer to partial apply for closure #1 in TokenGenerator._streamCompletion<A>(configuration:);
    v37[3] = v29;
    v37[4] = v20;
    v38 = swift_task_alloc();
    *(v0 + 1256) = v38;
    *v38 = v0;
    v38[1] = TokenGenerator._streamCompletion<A>(configuration:);
    v39 = *(v0 + 1224);
    v40 = *(v0 + 1192);
    v41 = *(v0 + 1144);

    return MEMORY[0x1EEE6DD58](v39, v41, v40, 0, 0, &async function pointer to partial apply for specialized closure #1 in withTimeout<A>(timeout:_:), v37, v41);
  }
}

{
  *(*v1 + 1264) = v0;

  if (v0)
  {
    v2 = TokenGenerator._streamCompletion<A>(configuration:);
  }

  else
  {

    v2 = TokenGenerator._streamCompletion<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v2 = *v1;
  *(*v1 + 1288) = v0;

  (*(v2[145] + 8))(v2[147], v2[140]);
  if (v0)
  {
    v3 = TokenGenerator._streamCompletion<A>(configuration:);
  }

  else
  {
    v3 = TokenGenerator._streamCompletion<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v65 = v0;
  v64 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 1232);
  v2 = *(v0 + 1224);
  v3 = *(v0 + 1192);

  v4 = *(v2 + *(v3 + 48));
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v2, v1, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMR);
  v5 = *(v0 + 1264);
  v6 = *(v0 + 1128);
  v7 = *(v0 + 1120);
  *(*(v0 + 1232) + *(*(v0 + 1192) + 48)) = v4;
  GenerativeConfigurationProtocol.samplingParameters.getter(v7, v6, &v50);
  if (v5)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 1232), &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMR);

    v8 = *(v0 + 8);
  }

  else
  {
    v10 = v60;
    v9 = v61;
    v11 = v59;
    *(v0 + 1048) = v60;
    *(v0 + 1064) = v9;
    v12 = v61;
    *(v0 + 1080) = v62;
    v13 = v57;
    v14 = v56;
    v15 = v57;
    *(v0 + 984) = v56;
    *(v0 + 1000) = v13;
    v16 = v59;
    v17 = v58;
    *(v0 + 1016) = v58;
    *(v0 + 1032) = v16;
    v18 = v53;
    v19 = v52;
    v20 = v53;
    *(v0 + 920) = v52;
    *(v0 + 936) = v18;
    v21 = v55;
    v22 = v54;
    v23 = v55;
    *(v0 + 952) = v54;
    *(v0 + 968) = v21;
    v24 = v51;
    v25 = v50;
    v26 = v51;
    *(v0 + 888) = v50;
    *(v0 + 904) = v24;
    *(v0 + 832) = v10;
    *(v0 + 848) = v12;
    *(v0 + 864) = v62;
    *(v0 + 768) = v14;
    *(v0 + 784) = v15;
    *(v0 + 800) = v17;
    *(v0 + 816) = v11;
    *(v0 + 704) = v19;
    *(v0 + 720) = v20;
    *(v0 + 736) = v22;
    *(v0 + 752) = v23;
    *(v0 + 1096) = v63;
    *(v0 + 880) = v63;
    *(v0 + 672) = v25;
    *(v0 + 688) = v26;
    v27 = 0.0;
    if (_s15TokenGeneration26SamplingParametersEnvelopeVSgWOg(v0 + 672) == 1 || (outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 888, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR), (*(v0 + 784) & 1) != 0))
    {
      v49 = 1;
    }

    else
    {
      v49 = 0;
      v27 = *(v0 + 776) - v4;
    }

    v28 = *(v0 + 1232);
    v29 = *(v0 + 1216);
    v30 = *(v0 + 1208);
    v31 = *(v0 + 1200);
    v32 = *(v0 + 1144);
    v33 = *(v0 + 1104);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, v29, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMR);
    v47 = *(v32 + 64);
    v48 = *(v32 + 48);
    v43 = v29[1];
    v44 = *v29;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, v30, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMR);

    v34 = *(v32 + 48);
    v46 = *(v32 + 64);
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v28, v31, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMR);

    v45 = *(v32 + 48);
    v42 = *(v32 + 64);
    *v33 = v44;
    *(v33 + 1) = v43;
    v35 = type metadata accessor for TokenGeneratorCompletionResponseStringStream(0);
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v30 + v34, &v33[v35[5]], &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
    v36 = v35[6];
    v37 = type metadata accessor for GenerativeFunctionInstrumenter();
    v38 = *(v37 - 8);
    (*(v38 + 32))(&v33[v36], v31 + v42, v37);
    v39 = &v33[v35[7]];
    *v39 = v27;
    *(v39 + 8) = v49;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v31 + v45, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
    v40 = *(v38 + 8);
    v40(v30 + v46, v37);
    v40(v29 + v47, v37);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v29 + v48, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);

    v8 = *(v0 + 8);
  }

  return v8();
}

{
  v68 = v0;
  v67 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 1272);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 1152), *(v0 + 1232), &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMR);
  v2 = mach_absolute_time();
  v3 = v2 - v1;
  if (v2 < v1)
  {
    __break(1u);
  }

  *(v0 + 228) = 0;
  v4 = *(v0 + 1152);
  *(v0 + 232) = 0;
  mach_timebase_info((v0 + 228));

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMR);
  LODWORD(v5) = *(v0 + 228);
  LODWORD(v6) = *(v0 + 232);
  v7 = v3 * v5 / (v6 * 1000000000.0);
  v8 = *(v0 + 1288);
  v9 = *(v0 + 1128);
  v10 = *(v0 + 1120);
  *(*(v0 + 1232) + *(*(v0 + 1192) + 48)) = v7;
  GenerativeConfigurationProtocol.samplingParameters.getter(v10, v9, &v53);
  if (v8)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 1232), &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMR);

    v11 = *(v0 + 8);
  }

  else
  {
    v13 = v63;
    v12 = v64;
    v14 = v62;
    *(v0 + 1048) = v63;
    *(v0 + 1064) = v12;
    v15 = v64;
    *(v0 + 1080) = v65;
    v16 = v60;
    v17 = v59;
    v18 = v60;
    *(v0 + 984) = v59;
    *(v0 + 1000) = v16;
    v19 = v62;
    v20 = v61;
    *(v0 + 1016) = v61;
    *(v0 + 1032) = v19;
    v21 = v56;
    v22 = v55;
    v23 = v56;
    *(v0 + 920) = v55;
    *(v0 + 936) = v21;
    v24 = v58;
    v25 = v57;
    v26 = v58;
    *(v0 + 952) = v57;
    *(v0 + 968) = v24;
    v27 = v54;
    v28 = v53;
    v29 = v54;
    *(v0 + 888) = v53;
    *(v0 + 904) = v27;
    *(v0 + 832) = v13;
    *(v0 + 848) = v15;
    *(v0 + 864) = v65;
    *(v0 + 768) = v17;
    *(v0 + 784) = v18;
    *(v0 + 800) = v20;
    *(v0 + 816) = v14;
    *(v0 + 704) = v22;
    *(v0 + 720) = v23;
    *(v0 + 736) = v25;
    *(v0 + 752) = v26;
    *(v0 + 1096) = v66;
    *(v0 + 880) = v66;
    *(v0 + 672) = v28;
    *(v0 + 688) = v29;
    v30 = 0.0;
    if (_s15TokenGeneration26SamplingParametersEnvelopeVSgWOg(v0 + 672) == 1 || (outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 888, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR), (*(v0 + 784) & 1) != 0))
    {
      v52 = 1;
    }

    else
    {
      v52 = 0;
      v30 = *(v0 + 776) - v7;
    }

    v31 = *(v0 + 1232);
    v32 = *(v0 + 1216);
    v33 = *(v0 + 1208);
    v34 = *(v0 + 1200);
    v35 = *(v0 + 1144);
    v36 = *(v0 + 1104);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v31, v32, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMR);
    v50 = *(v35 + 64);
    v51 = *(v35 + 48);
    v46 = v32[1];
    v47 = *v32;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v31, v33, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMR);

    v37 = *(v35 + 48);
    v49 = *(v35 + 64);
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v31, v34, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMR);

    v48 = *(v35 + 48);
    v45 = *(v35 + 64);
    *v36 = v47;
    *(v36 + 1) = v46;
    v38 = type metadata accessor for TokenGeneratorCompletionResponseStringStream(0);
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v33 + v37, &v36[v38[5]], &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
    v39 = v38[6];
    v40 = type metadata accessor for GenerativeFunctionInstrumenter();
    v41 = *(v40 - 8);
    (*(v41 + 32))(&v36[v39], v34 + v45, v40);
    v42 = &v36[v38[7]];
    *v42 = v30;
    *(v42 + 8) = v52;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v34 + v48, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
    v43 = *(v41 + 8);
    v43(v33 + v49, v40);
    v43(v32 + v50, v40);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v32 + v51, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);

    v11 = *(v0 + 8);
  }

  return v11();
}

{

  return TokenGenerator._streamResponse<A>(configuration:)();
}

{

  return TokenGenerator._streamResponse<A>(configuration:)();
}

uint64_t TokenGeneratorResponseStringStreamAsyncSequence.collect()(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGeneratorResponseStringStreamAsyncSequence.collect(), 0, 0);
}

{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = TokenGeneratorResponseStringStreamAsyncSequence.collect();

  return TokenGeneratorResponseStringStreamAsyncSequence.collect()(a1, a2);
}

uint64_t TokenGeneratorResponseStringStreamAsyncSequence.collect()()
{
  v1 = v0[10];
  (*(v0[8] + 40))(v0[7]);
  v2 = type metadata accessor for GenerativeFunctionInstrumenter();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v0[5] = type metadata accessor for TokenGenerator();
  v0[6] = v3;
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = TokenGeneratorResponseStringStreamAsyncSequence.collect();
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];

  return closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()((v0 + 2), v5, v7, v6);
}

{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    *(v2 + 104) = *(v2 + 40);
    v3 = TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  else
  {
    v3 = TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[10], &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  v4 = v0[1];

  return v4(v1, v2, v3);
}

uint64_t protocol witness for CompletionLanguageModelProviding._complete<A>(configuration:) in conformance TokenGenerator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return TokenGenerator._complete<A>(configuration:)(a1, a2, a3, a4);
}

uint64_t TokenGenerator._oneShotCompletion<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = type metadata accessor for TokenGeneratorResponsePromptCompletionStream(0);
  v4[4] = swift_task_alloc();
  v4[5] = type metadata accessor for TokenGeneratorCompletionResponseStringStream(0);
  v8 = swift_task_alloc();
  v4[6] = v8;
  type metadata accessor for PromptCompletion(0);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v9 = swift_task_alloc();
  v4[9] = v9;
  *v9 = v4;
  v9[1] = TokenGenerator._oneShotCompletion<A>(configuration:);

  return TokenGenerator._streamCompletion<A>(configuration:)(v8, a2, a3, a4);
}

uint64_t TokenGenerator._oneShotCompletion<A>(configuration:)()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = TokenGenerator._oneShotCompletion<A>(configuration:);
  }

  else
  {
    v2 = TokenGenerator._oneShotCompletion<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = *v1;
  v6 = *(v1 + 24);
  v16 = *(v1 + 8);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1 + v2[5], v3 + v4[5], &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  v7 = v4[6];
  v8 = v2[6];
  v9 = type metadata accessor for GenerativeFunctionInstrumenter();
  (*(*(v9 - 8) + 16))(v3 + v7, v1 + v8, v9);
  v10 = v1 + v2[7];
  v11 = *v10;
  LOBYTE(v7) = *(v10 + 8);

  outlined destroy of TokenGeneratorCompletionResponseStringStream(v1, type metadata accessor for TokenGeneratorCompletionResponseStringStream);
  *v3 = v5;
  *(v3 + 8) = v16;
  *(v3 + 24) = v6;
  v12 = v3 + v4[7];
  *v12 = v11;
  *(v12 + 8) = v7;
  v13 = swift_task_alloc();
  v0[11] = v13;
  *v13 = v0;
  v13[1] = TokenGenerator._oneShotCompletion<A>(configuration:);
  v14 = v0[8];

  return TokenGeneratorResponsePromptCompletionStream.collect()(v14);
}

{
  v2 = *(*v1 + 32);
  *(*v1 + 96) = v0;

  outlined destroy of TokenGeneratorCompletionResponseStringStream(v2, type metadata accessor for TokenGeneratorResponsePromptCompletionStream);
  if (v0)
  {
    v3 = TokenGenerator._oneShotCompletion<A>(configuration:);
  }

  else
  {
    v3 = TokenGenerator._oneShotCompletion<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[2];
  outlined init with copy of PromptCompletion(v2, v3, type metadata accessor for PromptCompletion);
  outlined init with copy of PromptCompletion(v2, v1, type metadata accessor for PromptCompletion);
  v4 = type metadata accessor for TokenGeneratorCompletionResponse(0);
  InferenceResponse.init(_:)(v1, v3 + *(v4 + 20));
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v2, type metadata accessor for PromptCompletion);

  v5 = v0[1];

  return v5();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

double TokenGeneratorResponseStringStreamAsyncSequence.promptCompletionStream.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  (*(a2 + 16))(v13);
  v6 = *(a2 + 32);
  v7 = type metadata accessor for TokenGeneratorResponsePromptCompletionStream(0);
  v6(a1, a2);
  (*(a2 + 40))(a1, a2);
  v8 = (*(a2 + 48))(a1, a2);
  result = *v13;
  v10 = v13[1];
  *a3 = v13[0];
  a3[1] = v10;
  v11 = a3 + *(v7 + 28);
  *v11 = v8;
  v11[8] = v12 & 1;
  return result;
}

uint64_t TokenGeneratorResponsePromptCompletionStream.collect()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration16PromptCompletionV6result_Sd8durationtMd, &_s15TokenGeneration16PromptCompletionV6result_Sd8durationtMR);
  v2[5] = swift_task_alloc();
  v3 = type metadata accessor for TokenGeneratorResponsePromptCompletionStream(0);
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v2[8] = *(v4 + 64);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = type metadata accessor for PromptCompletion(0);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGeneratorResponsePromptCompletionStream.collect(), 0, 0);
}

uint64_t TokenGeneratorResponsePromptCompletionStream.collect()()
{
  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[6];
  v6 = v0[3];
  v7 = *(v5 + 24);
  v8 = type metadata accessor for GenerativeFunctionInstrumenter();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v1, v6 + v7, v8);
  (*(v9 + 56))(v1, 0, 1, v8);
  v0[15] = type metadata accessor for TokenGenerator();
  v10 = v6 + *(v5 + 28);
  v11 = *v10;
  LOBYTE(v8) = *(v10 + 8);
  outlined init with copy of PromptCompletion(v6, v3, type metadata accessor for TokenGeneratorResponsePromptCompletionStream);
  outlined init with copy of PromptCompletion(v3, v2, type metadata accessor for TokenGeneratorResponsePromptCompletionStream);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  v0[16] = v13;
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v3, v13 + v12, type metadata accessor for TokenGeneratorResponsePromptCompletionStream);
  if (v8)
  {
    mach_absolute_time();
    v14 = swift_task_alloc();
    v0[20] = v14;
    *v14 = v0;
    v14[1] = TokenGeneratorResponsePromptCompletionStream.collect();
    v15 = v0[12];
    v16 = v0[9];

    return closure #1 in closure #1 in TokenGeneratorResponsePromptCompletionStream.collect()(v15, v16);
  }

  else
  {
    v18 = swift_task_alloc();
    v0[17] = v18;
    v18[2] = &async function pointer to partial apply for closure #1 in closure #1 in TokenGeneratorResponsePromptCompletionStream.collect();
    v18[3] = v13;
    v18[4] = v11;
    v19 = swift_task_alloc();
    v0[18] = v19;
    *v19 = v0;
    v19[1] = TokenGeneratorResponsePromptCompletionStream.collect();
    v20 = v0[11];
    v22 = v0[4];
    v21 = v0[5];

    return MEMORY[0x1EEE6DD58](v21, v20, v22, 0, 0, &async function pointer to partial apply for specialized closure #1 in withTimeout<A>(timeout:_:), v18, v20);
  }
}

{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = TokenGeneratorResponsePromptCompletionStream.collect();
  }

  else
  {

    v2 = TokenGeneratorResponsePromptCompletionStream.collect();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = TokenGeneratorResponsePromptCompletionStream.collect();
  }

  else
  {
    v2 = TokenGeneratorResponsePromptCompletionStream.collect();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[13];
  v2 = v0[5];

  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v2, v1, type metadata accessor for PromptCompletion);
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[2];
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v0[9], type metadata accessor for TokenGeneratorResponsePromptCompletionStream);
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v3, v5, type metadata accessor for PromptCompletion);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);

  v6 = v0[1];

  return v6();
}

{
  v1 = *(v0 + 96);
  outlined init with copy of PromptCompletion(v1, *(v0 + 104), type metadata accessor for PromptCompletion);
  mach_absolute_time();
  *(v0 + 180) = 0;
  *(v0 + 176) = 0;
  mach_timebase_info((v0 + 176));

  outlined destroy of TokenGeneratorCompletionResponseStringStream(v1, type metadata accessor for PromptCompletion);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 16);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(*(v0 + 72), type metadata accessor for TokenGeneratorResponsePromptCompletionStream);
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v2, v4, type metadata accessor for PromptCompletion);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);

  v5 = *(v0 + 8);

  return v5();
}

void TokenGeneratorResponsePromptCompletionStream.collect()()
{

  v1 = v0[19];
  v2 = v0[14];
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v0[9], type metadata accessor for TokenGeneratorResponsePromptCompletionStream);
  MEMORY[0x1AC5A6AE0](v1);
  static TokenGenerator.handleError(_:generativeFunctionInstrumenter:)(v1, v2);
}

{

  v1 = v0[21];
  v2 = v0[14];
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v0[9], type metadata accessor for TokenGeneratorResponsePromptCompletionStream);
  MEMORY[0x1AC5A6AE0](v1);
  static TokenGenerator.handleError(_:generativeFunctionInstrumenter:)(v1, v2);
}

uint64_t protocol witness for CompletionLanguageModelProvidingOneShot._oneShotCompletion<A>(configuration:) in conformance TokenGenerator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return TokenGenerator._oneShotCompletion<A>(configuration:)(a1, a2, a3, a4);
}

void ModelBundle.modelBundleIdentifier(instrumenter:catalogClient:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a1;
  v43 = a3;
  v41 = type metadata accessor for AssetBackedLLMBundle();
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for LLMBundle();
  v42 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LLMModelBundle();
  v46 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  ModelBundle.resourceURI.getter();
  type metadata accessor for TokenGenerator();
  v17 = v45;
  closure #1 in static ModelBundle.modelBundle(resourceURI:instrumenter:catalogClient:)(v16, a2, v12);
  if (v17)
  {
    MEMORY[0x1AC5A6AE0](v17);
    v18 = v44;
    static TokenGenerator.handleError(_:generativeFunctionInstrumenter:)(v17, v44);

    MEMORY[0x1AC5A6AE0](0);
    static TokenGenerator.handleError(_:generativeFunctionInstrumenter:)(0, v18);
    v14[1](v16, v13);

    return;
  }

  v44 = v13;
  v45 = v14;
  v19 = v42;
  v20 = v43;
  v21 = v46;
  (*(v46 + 16))(v9, v12, v7);
  v22 = (*(v21 + 88))(v9, v7);
  if (v22 == *MEMORY[0x1E69A14A8])
  {
    (*(v46 + 96))(v9, v7);
    v23 = v19;
    v24 = *(v19 + 32);
    v25 = v6;
    v26 = v6;
    v27 = v38;
    v24(v26, v9, v38);
    v28 = v20;
    LLMBundle.id.getter();
    (*(v23 + 8))(v25, v27);
    v29 = MEMORY[0x1E69A1530];
  }

  else
  {
    if (v22 != *MEMORY[0x1E69A14B0])
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return;
    }

    (*(v46 + 96))(v9, v7);
    v30 = v39;
    v31 = v40;
    v32 = v9;
    v33 = v41;
    (*(v39 + 32))(v40, v32, v41);
    AssetBackedLLMBundle.id.getter();
    v34 = v33;
    v28 = v20;
    (*(v30 + 8))(v31, v34);
    v29 = MEMORY[0x1E69A1538];
  }

  v35 = v44;
  (*(v46 + 8))(v12, v7);
  v45[1](v16, v35);
  v36 = *v29;
  v37 = type metadata accessor for ModelBundleIdentifier();
  (*(*(v37 - 8) + 104))(v28, v36, v37);
}

void static ModelBundle.modelBundleIdentifier(resourceURI:instrumenter:catalogClient:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a2;
  v36 = a3;
  v34 = a4;
  v31 = type metadata accessor for AssetBackedLLMBundle();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v6 = (&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for LLMBundle();
  v32 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LLMModelBundle();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  type metadata accessor for TokenGenerator();
  v17 = v37;
  closure #1 in static ModelBundle.modelBundle(resourceURI:instrumenter:catalogClient:)(a1, v36, v16);
  if (v17)
  {
    MEMORY[0x1AC5A6AE0](v17);
    v18 = v35;
    static TokenGenerator.handleError(_:generativeFunctionInstrumenter:)(v17, v35);

    MEMORY[0x1AC5A6AE0](0);
    static TokenGenerator.handleError(_:generativeFunctionInstrumenter:)(0, v18);

    return;
  }

  v37 = v6;
  v19 = v32;
  v20 = v33;
  v11[2](v13, v16, v10);
  v21 = (v11[11])(v13, v10);
  if (v21 == *MEMORY[0x1E69A14A8])
  {
    (v11[12])(v13, v10);
    v37 = v11;
    (*(v19 + 32))(v9, v13, v7);
    v22 = v34;
    LLMBundle.id.getter();
    (*(v19 + 8))(v9, v7);
    v23 = MEMORY[0x1E69A1530];
    v24 = v37;
  }

  else
  {
    if (v21 != *MEMORY[0x1E69A14B0])
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return;
    }

    v24 = v11;
    (v11[12])(v13, v10);
    v25 = v20;
    v26 = *(v20 + 32);
    v27 = v37;
    v28 = v31;
    v26(v37, v13, v31);
    v22 = v34;
    AssetBackedLLMBundle.id.getter();
    (*(v25 + 8))(v27, v28);
    v23 = MEMORY[0x1E69A1538];
  }

  v24[1](v16, v10);
  v29 = *v23;
  v30 = type metadata accessor for ModelBundleIdentifier();
  (*(*(v30 - 8) + 104))(v22, v29, v30);
}

void static ModelBundle.modelBundle(resourceURI:instrumenter:catalogClient:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  type metadata accessor for TokenGenerator();
  closure #1 in static ModelBundle.modelBundle(resourceURI:instrumenter:catalogClient:)(a1, a3, a4);
  if (v4)
  {
    MEMORY[0x1AC5A6AE0](v4);
    static TokenGenerator.handleError(_:generativeFunctionInstrumenter:)(v4, a2);
  }
}

void *closure #1 in static ModelBundle.modelBundle(resourceURI:instrumenter:catalogClient:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v75 = a2;
  v68 = type metadata accessor for GenerativeError.RuntimeError.ErrorType.ConfigurationErrorInfo.ErrorType();
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v66 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GenerativeError.RuntimeError.ErrorType();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v69 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog20AssetBackedLLMBundleVSgMd, &_s12ModelCatalog20AssetBackedLLMBundleVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v72 = &v60 - v10;
  v11 = type metadata accessor for AssetBackedLLMBundle();
  v70 = *(v11 - 8);
  v71 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog9LLMBundleVSgMd, &_s12ModelCatalog9LLMBundleVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v77 = &v60 - v14;
  v15 = type metadata accessor for LLMBundle();
  v16 = *(v15 - 8);
  v73 = v15;
  v74 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v65 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Log.inference);
  v23 = *(v19 + 16);
  v78 = a1;
  v23(v21, a1, v18);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v61 = v7;
    v27 = v26;
    v28 = swift_slowAlloc();
    v62 = a3;
    v29 = v28;
    *&v79 = v28;
    *v27 = 136315138;
    v30 = URL.absoluteString.getter();
    v63 = v6;
    v32 = v31;
    (*(v19 + 8))(v21, v18);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v79);
    v6 = v63;

    *(v27 + 4) = v33;
    _os_log_impl(&dword_1AB828000, v24, v25, "Using resource URI: %s to determine resource bundle", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    v34 = v29;
    a3 = v62;
    MEMORY[0x1AC5A6CD0](v34, -1, -1);
    v35 = v27;
    v7 = v61;
    MEMORY[0x1AC5A6CD0](v35, -1, -1);
  }

  else
  {

    (*(v19 + 8))(v21, v18);
  }

  v84 = v75;
  type metadata accessor for CatalogClient();
  v36 = v76;
  result = CatalogClientProtocol.queryResourceBundle(with:)();
  v38 = v77;
  v39 = v74;
  if (!v36)
  {
    v82[0] = v79;
    v82[1] = v80;
    v83 = v81;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v82, &v79, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
    if (*(&v80 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog14ResourceBundle_pMd, &_s12ModelCatalog14ResourceBundle_pMR);
      v40 = v73;
      v41 = swift_dynamicCast();
      (*(v39 + 56))(v38, v41 ^ 1u, 1, v40);
      if ((*(v39 + 48))(v38, 1, v40) != 1)
      {
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v82, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
        v42 = *(v39 + 32);
        v43 = v65;
        v42(v65, v38, v40);
        v42(a3, v43, v40);
        v44 = MEMORY[0x1E69A14A8];
LABEL_14:
        v53 = *v44;
        v54 = type metadata accessor for LLMModelBundle();
        return (*(*(v54 - 8) + 104))(a3, v53, v54);
      }
    }

    else
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v79, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
      (*(v39 + 56))(v38, 1, 1, v73);
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v38, &_s12ModelCatalog9LLMBundleVSgMd, &_s12ModelCatalog9LLMBundleVSgMR);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v82, &v79, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
    v45 = v70;
    v46 = (v70 + 56);
    if (*(&v80 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog14ResourceBundle_pMd, &_s12ModelCatalog14ResourceBundle_pMR);
      v48 = v71;
      v47 = v72;
      v49 = swift_dynamicCast();
      (*(v45 + 56))(v47, v49 ^ 1u, 1, v48);
      v50 = v47;
      if ((*(v45 + 48))(v47, 1, v48) != 1)
      {
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v82, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
        v51 = *(v45 + 32);
        v52 = v64;
        v51(v64, v47, v48);
        v51(a3, v52, v48);
        v44 = MEMORY[0x1E69A14B0];
        goto LABEL_14;
      }
    }

    else
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v79, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
      v55 = v72;
      (*v46)(v72, 1, 1, v71);
      v50 = v55;
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v50, &_s12ModelCatalog20AssetBackedLLMBundleVSgMd, &_s12ModelCatalog20AssetBackedLLMBundleVSgMR);
    URL.absoluteString.getter();
    v56 = v66;
    GenerativeError.RuntimeError.ErrorType.ConfigurationErrorInfo.ErrorType.UnknownModelBundleIdentifierErrorInfo.init(modelBundleIdentifier:)();
    v57 = v67;
    v58 = v68;
    (*(v67 + 104))(v56, *MEMORY[0x1E69A0A18], v68);
    v59 = v69;
    static GenerativeError.RuntimeError.ErrorType.configurationError(type:)();
    (*(v57 + 8))(v56, v58);
    type metadata accessor for GenerativeError();
    lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type GenerativeError and conformance GenerativeError, MEMORY[0x1E69A0A68], MEMORY[0x1E69A0A80]);
    swift_allocError();
    static GenerativeError.runtimeError(type:)();
    (*(v7 + 8))(v59, v6);
    swift_willThrow();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v82, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  }

  return result;
}

uint64_t ModelBundleInfoForSanitizer.init(tokenGenerator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = type metadata accessor for GenerativeError.RuntimeError.ErrorType.ConfigurationErrorInfo.ErrorType();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for GenerativeError.RuntimeError.ErrorType();
  v7 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = type metadata accessor for ModelBundle();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  if (*(a1 + 24) && (v17 = *(v22 + 32), *(v17 + 16) == 1))
  {
    v18 = v13;
    (*(v12 + 16))(v16, v17 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v13, v14);
    ModelBundle.resourceURI.getter();
    ModelBundleInfoForSanitizer.init(resourceURI:)();

    return (*(v12 + 8))(v16, v18);
  }

  else
  {
    GenerativeError.RuntimeError.ErrorType.ConfigurationErrorInfo.ErrorType.UnspecifiedModelBundleIdentifierErrorInfo.init()();
    (*(v4 + 104))(v6, *MEMORY[0x1E69A0A20], v3);
    static GenerativeError.RuntimeError.ErrorType.configurationError(type:)();
    (*(v4 + 8))(v6, v3);
    type metadata accessor for GenerativeError();
    lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type GenerativeError and conformance GenerativeError, MEMORY[0x1E69A0A68], MEMORY[0x1E69A0A80]);
    swift_allocError();
    static GenerativeError.runtimeError(type:)();
    (*(v7 + 8))(v9, v21);
    swift_willThrow();
  }
}

void TokenGenerator.responseSanitizerConfiguration(userRequestIdentifier:)(uint64_t a1, void (*a2)(char *, unint64_t, unint64_t, uint64_t, char *))
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ModelBundleInfoForSanitizer();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  ModelBundleInfoForSanitizer.init(tokenGenerator:)(v13, v12);
  if (!v3)
  {
    v19 = a2;
    if (v2[3])
    {
      v15 = v2[6];
      v14 = v2[7];
      v16 = v2[10];

      if (v16 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v16 <= 0x7FFFFFFF)
      {
        v17 = a1;
LABEL_7:
        (*(v7 + 16))(v9, v17, v6);
        v19(v12, v15, v14, v16, v9);
        return;
      }

      __break(1u);
      return;
    }

    v17 = a1;
    v14 = 0x80000001ABA40C00;
    v16 = 0xFFFFFFFFLL;
    v15 = 0xD000000000000013;
    goto LABEL_7;
  }
}

uint64_t protocol witness for TokenGeneratorResponseStringStreamAsyncSequence.collect() in conformance TokenGeneratorCompletionResponseStringStream(uint64_t a1)
{
  v2[4] = v1;
  v2[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](protocol witness for TokenGeneratorResponseStringStreamAsyncSequence.collect() in conformance TokenGeneratorCompletionResponseStringStream, 0, 0);
}

uint64_t protocol witness for TokenGeneratorResponseStringStreamAsyncSequence.collect() in conformance TokenGeneratorCompletionResponseStringStream()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = *(v0[5] + 24);
  v4 = type metadata accessor for GenerativeFunctionInstrumenter();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v2 + v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v0[2] = type metadata accessor for TokenGenerator();
  v0[3] = v6;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = protocol witness for TokenGeneratorResponseStringStreamAsyncSequence.collect() in conformance TokenGeneratorCompletionResponseStringStream;
  v8 = v0[4];

  return specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()(v8);
}

uint64_t protocol witness for TokenGeneratorResponseStringStreamAsyncSequence.collect() in conformance TokenGeneratorCompletionResponseStringStream(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(*v4 + 64) = v3;

  if (v3)
  {
    v8[12] = v8[2];
    v9 = protocol witness for TokenGeneratorResponseStringStreamAsyncSequence.collect() in conformance TokenGeneratorCompletionResponseStringStream;
  }

  else
  {
    v8[9] = a3;
    v8[10] = a2;
    v8[11] = a1;
    v9 = protocol witness for TokenGeneratorResponseStringStreamAsyncSequence.collect() in conformance TokenGeneratorCompletionResponseStringStream;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t specialized TokenGeneratorResponseStringStreamAsyncSequence.makeAsyncIterator()@<X0>(uint64_t (*a1)(void, __n128)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a3;
  v60 = a2;
  v69 = a4;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsySSs5Error_pGMd, &_sScsySSs5Error_pGMR);
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v52 - v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceVy15TokenGeneration0D6StreamVySSGSSGMd, &_ss16AsyncMapSequenceVy15TokenGeneration0D6StreamVySSGSSGMR);
  v61 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v52 - v9;
  v71 = type metadata accessor for GenerativeFunctionInstrumenter();
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v52 - v13;
  v15 = type metadata accessor for StringResponseSanitizerWithConfiguration();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v52 - v21;
  v23 = a1(0, v20);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4 + v23[5], v14, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
    v24 = *v4;
    v25 = v4[1];
    v26 = v4[2];
    v27 = v4[3];
    (*(v70 + 16))(v11, v4 + v23[6], v71);
    v28 = v4 + v23[7];
    v29 = *v28;
    v30 = v28[8];

    return _s16GenerativeModels47TokenGeneratorResponseStringStreamAsyncIteratorV05tokenG030generativeFunctionInstrumenter7timeoutACx_0A24FunctionsInstrumentation0alM0VSdSgtcSciRz0C10Generation0C0V7ElementRtzlu33_EE31B55F68B8D8F9B96F66F00FC05E4ELlfCAK0cG0VySSG_Tt3B5(v24, v25, v26, v27, v11, v29, v30, v69);
  }

  else
  {
    v32 = *(v16 + 32);
    v59 = v22;
    v32(v22, v14, v15);
    v33 = *v4;
    v34 = v4[3];
    v35 = *(v16 + 16);
    v52 = *(v4 + 1);
    v57 = v18;
    v35(v18, v22, v15);
    v36 = v23[6];
    v37 = *(v70 + 16);
    v53 = v70 + 16;
    v58 = v37;
    v54 = v11;
    v37(v11, v4 + v36, v71);
    v38 = v4 + v23[7];
    v56 = *v38;
    v55 = v38[8];
    v75 = v33;
    v76 = v52;
    v77 = v34;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration0A6StreamVySSGMd, &_s15TokenGeneration0A6StreamVySSGMR);
    lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type TokenStream<String> and conformance TokenStream<A>, &_s15TokenGeneration0A6StreamVySSGMd, &_s15TokenGeneration0A6StreamVySSGMR, &protocol conformance descriptor for TokenStream<A>);
    AsyncMapSequence.init(_:transform:)();
    lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type AsyncMapSequence<TokenStream<String>, String> and conformance AsyncMapSequence<A, B>, &_ss16AsyncMapSequenceVy15TokenGeneration0D6StreamVySSGSSGMd, &_ss16AsyncMapSequenceVy15TokenGeneration0D6StreamVySSGSSGMR, MEMORY[0x1E69E8878]);
    v39 = v63;
    StringResponseSanitizerWithConfiguration.scrub<A>(_:elementToContent:)();
    v40 = v66;
    v77 = v66;
    v78 = lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type AsyncThrowingStream<String, Error> and conformance AsyncThrowingStream<A, B>, &_sScsySSs5Error_pGMd, &_sScsySSs5Error_pGMR, MEMORY[0x1E69E87D0]);
    v41 = __swift_allocate_boxed_opaque_existential_1(&v75);
    v42 = v65;
    (*(v65 + 16))(v41, v39, v40);
    v79 = v56;
    v80 = v55;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v75, v74, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVySSGMd, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVySSGMR);
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v74, v72, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVySSGMd, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVySSGMR);
    v44 = swift_allocObject();
    *(v44 + 16) = v43;
    v45 = v72[1];
    *(v44 + 24) = v72[0];
    *(v44 + 40) = v45;
    *(v44 + 56) = v72[2];
    *(v44 + 72) = v73;
    *(v44 + 80) = closure #1 in default argument 1 of AsyncThrowingStream<>.init<A>(_:mapError:);
    *(v44 + 88) = 0;

    v46 = v64;
    AsyncThrowingStream.init<>(unfolding:)();
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v74, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVySSGMd, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVySSGMR);

    v47 = type metadata accessor for TokenGeneratorResponseStringStreamAsyncIterator(0);
    v48 = v54;
    v49 = v71;
    v58(v69 + *(v47 + 20), v54, v71);
    MEMORY[0x1AC5A5E40](v40);
    v50 = *(v42 + 8);
    v50(v46, v40);
    v50(v39, v40);
    (*(v61 + 8))(v67, v68);
    (*(v70 + 8))(v48, v49);
    v51 = *(v16 + 8);
    v51(v57, v15);
    v51(v59, v15);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v75, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVySSGMd, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVySSGMR);
  }
}

uint64_t TokenGeneratorResponseStringStreamAsyncSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a3;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsySSs5Error_pGMd, &_sScsySSs5Error_pGMR);
  v57 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v56 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v46 - v7;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceVy15TokenGeneration0D6StreamVySSGSSGMd, &_ss16AsyncMapSequenceVy15TokenGeneration0D6StreamVySSGSSGMR);
  v54 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v9 = &v46 - v8;
  v52 = type metadata accessor for GenerativeFunctionInstrumenter();
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v46 - v13;
  v15 = type metadata accessor for StringResponseSanitizerWithConfiguration();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v46 - v21;
  (*(a2 + 32))(a1, a2, v20);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
    (*(a2 + 16))(&v63, a1, a2);
    v23 = v63;
    v24 = v64;
    (*(a2 + 40))(a1, a2);
    v25 = (*(a2 + 48))(a1, a2);
    return _s16GenerativeModels47TokenGeneratorResponseStringStreamAsyncIteratorV05tokenG030generativeFunctionInstrumenter7timeoutACx_0A24FunctionsInstrumentation0alM0VSdSgtcSciRz0C10Generation0C0V7ElementRtzlu33_EE31B55F68B8D8F9B96F66F00FC05E4ELlfCAK0cG0VySSG_Tt3B5(v23, *(&v23 + 1), v24, *(&v24 + 1), v11, v25, v26 & 1, v59);
  }

  else
  {
    v28 = *(v16 + 32);
    v50 = v22;
    v28(v22, v14, v15);
    (*(a2 + 16))(v68, a1, a2);
    v29 = *(v16 + 16);
    v47 = v68[0];
    v46 = v68[1];
    v49 = v18;
    v29(v18, v22, v15);
    (*(a2 + 40))(a1, a2);
    v30 = (*(a2 + 48))(a1, a2);
    v32 = v31;
    v63 = v47;
    v64 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration0A6StreamVySSGMd, &_s15TokenGeneration0A6StreamVySSGMR);
    lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type TokenStream<String> and conformance TokenStream<A>, &_s15TokenGeneration0A6StreamVySSGMd, &_s15TokenGeneration0A6StreamVySSGMR, &protocol conformance descriptor for TokenStream<A>);
    v48 = v9;
    AsyncMapSequence.init(_:transform:)();
    lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type AsyncMapSequence<TokenStream<String>, String> and conformance AsyncMapSequence<A, B>, &_ss16AsyncMapSequenceVy15TokenGeneration0D6StreamVySSGSSGMd, &_ss16AsyncMapSequenceVy15TokenGeneration0D6StreamVySSGSSGMR, MEMORY[0x1E69E8878]);
    v33 = v53;
    StringResponseSanitizerWithConfiguration.scrub<A>(_:elementToContent:)();
    v34 = v55;
    *(&v64 + 1) = v55;
    v65 = lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type AsyncThrowingStream<String, Error> and conformance AsyncThrowingStream<A, B>, &_sScsySSs5Error_pGMd, &_sScsySSs5Error_pGMR, MEMORY[0x1E69E87D0]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v63);
    v36 = v57;
    (*(v57 + 16))(boxed_opaque_existential_1, v33, v34);
    v66 = v30;
    v67 = v32 & 1;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v63, v62, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVySSGMd, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVySSGMR);
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v62, v60, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVySSGMd, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVySSGMR);
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    v39 = v60[1];
    *(v38 + 24) = v60[0];
    *(v38 + 40) = v39;
    *(v38 + 56) = v60[2];
    *(v38 + 72) = v61;
    *(v38 + 80) = closure #1 in default argument 1 of AsyncThrowingStream<>.init<A>(_:mapError:);
    *(v38 + 88) = 0;

    v40 = v56;
    AsyncThrowingStream.init<>(unfolding:)();
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v62, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVySSGMd, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVySSGMR);

    v41 = type metadata accessor for TokenGeneratorResponseStringStreamAsyncIterator(0);
    v42 = v51;
    v43 = v52;
    (*(v51 + 16))(v59 + *(v41 + 20), v11, v52);
    MEMORY[0x1AC5A5E40](v34);
    v44 = *(v36 + 8);
    v44(v40, v34);
    v44(v33, v34);
    (*(v54 + 8))(v48, v58);
    (*(v42 + 8))(v11, v43);
    v45 = *(v16 + 8);
    v45(v49, v15);
    v45(v50, v15);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v63, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVySSGMd, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVySSGMR);
  }
}