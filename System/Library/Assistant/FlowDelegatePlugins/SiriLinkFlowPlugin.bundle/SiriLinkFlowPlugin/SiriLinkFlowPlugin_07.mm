uint64_t outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_UserDialogAct.DateTimeHydrator(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_20()
{
}

uint64_t OUTLINED_FUNCTION_1_28()
{
}

uint64_t OUTLINED_FUNCTION_21_10(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

void *specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  return specialized _arrayForceCast<A, B>(_:)(a1, &type metadata for WFChooseFromListDisambiguationItem, &protocol witness table for WFChooseFromListDisambiguationItem, &unk_29B5B0);
}

{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v12 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      outlined init with copy of CustomIntentDisambiguationItem(v4, v11);
      v12 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v2 = v12;
      }

      v9 = &type metadata for CustomIntentDisambiguationItem;
      v10 = &protocol witness table for CustomIntentDisambiguationItem;
      *&v8 = swift_allocObject();
      outlined init with copy of CustomIntentDisambiguationItem(v11, v8 + 16);
      v2[2] = v6 + 1;
      outlined init with take of AceServiceInvokerAsync(&v8, &v2[5 * v6 + 4]);
      outlined destroy of CustomIntentDisambiguationItem(v11);
      v4 += 88;
      --v1;
    }

    while (v1);
  }

  return v2;
}

{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = a1 + 32;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
      swift_dynamicCast();
      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (v5 >= v4 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      _swiftEmptyArrayStorage[v5 + 4] = v7;
      v3 += 8;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

{
  return specialized _arrayForceCast<A, B>(_:)(a1, &type metadata for ShortcutsLinkDisambiguationItem, &protocol witness table for ShortcutsLinkDisambiguationItem, &unk_29B5D8);
}

void *specialized _arrayForceCast<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = _swiftEmptyArrayStorage;
  if (v4)
  {
    v27 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = _swiftEmptyArrayStorage;
    v7 = (a1 + 80);
    do
    {
      v8 = *(v7 - 5);
      v9 = *(v7 - 3);
      v21 = *(v7 - 4);
      v22 = *(v7 - 6);
      v10 = *(v7 - 2);
      v11 = *(v7 - 1);
      v12 = *v7;
      v27 = v5;
      v13 = v5[2];
      v14 = v5[3];
      v23 = v13 + 1;

      v15 = v10;

      v16 = v12;
      if (v13 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v23, 1);
        v5 = v27;
      }

      v7 += 7;
      v25 = a2;
      v26 = a3;
      v17 = swift_allocObject();
      *&v24 = v17;
      v17[2] = v22;
      v17[3] = v8;
      v17[4] = v21;
      v17[5] = v9;
      v17[6] = v10;
      v17[7] = v11;
      v17[8] = v16;
      v5[2] = v23;
      outlined init with take of AceServiceInvokerAsync(&v24, &v5[5 * v13 + 4]);
      --v4;
    }

    while (v4);
  }

  return v5;
}

uint64_t CustomIntentNLContextProvider.__allocating_init(deviceState:)(__int128 *a1)
{
  v2 = swift_allocObject();
  outlined init with take of AceServiceInvokerAsync(a1, v2 + 16);
  return v2;
}

uint64_t CustomIntentNLContextProvider.makeNeedsValueContextFor(intent:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[29] = a4;
  v5[30] = v4;
  v5[27] = a2;
  v5[28] = a3;
  v5[26] = a1;
  v6 = type metadata accessor for NLContextUpdate();
  v5[31] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v5[32] = v7;
  v5[33] = swift_task_alloc();

  return _swift_task_switch(CustomIntentNLContextProvider.makeNeedsValueContextFor(intent:parameter:));
}

id CustomIntentNLContextProvider.makeNeedsValueContextFor(intent:parameter:)()
{
  if (INIntent.isBooleanParameter(parameterName:)(*(v0 + 224)))
  {
    VoiceCommandNLContextProvider.makeContextForBoolNeedsValuePrompt(intent:parameter:)();
  }

  else
  {
    v16 = *(v0 + 224);
    v17 = *(v0 + 232);
    v18 = [*(v0 + 216) _codableDescription];
    v19 = outlined bridged method (mbgnn) of @objc INCodableDescription.attribute(byName:)(v16, v17, v18);

    if (!v19)
    {
      type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
      v20 = static UsoTaskBuilder_execute_common_VoiceCommand.stringTaskBuilder(value:)(0, 0);
      VoiceCommandNLContextProvider.makeContextForNeedsValue(taskBuilder:)(v20);

      goto LABEL_8;
    }

    CustomIntentNLContextProvider.intentCodableAttributeToUsoTaskBuilder(attribute:)(v19);

    VoiceCommandNLContextProvider.makeContextForNeedsValue(taskBuilder:)(v22);

    if (INCodableAttribute.requiresDictationPrompt()())
    {
      OUTLINED_FUNCTION_4_22();
      NLContextUpdate.dictationPromptTargetDomain.setter();
      INCodableAttribute.promptTargets()();
      NLContextUpdate.dictationPromptTargetNodes.setter();
    }

    else
    {
      OUTLINED_FUNCTION_4_22();
      NLContextUpdate.weightedPromptTargetDomain.setter();
      INCodableAttribute.promptTargets()();
      NLContextUpdate.weightedPromptResponseTargets.setter();
    }
  }

  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 216);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = OUTLINED_FUNCTION_64(v4);
  *(v5 + 16) = xmmword_216010;
  v6 = INIntent.bundleId.getter();
  *(v0 + 112) = v3;
  *(v0 + 120) = 0;
  *(v0 + 128) = v6;
  *(v0 + 136) = v7;
  *(v0 + 144) = v2;
  *(v0 + 152) = v1;
  *(v0 + 168) = 0;
  *(v0 + 176) = 0;
  *(v0 + 160) = 0;
  OUTLINED_FUNCTION_1_29();

  v8 = v3;
  CustomIntentStateAttachment.asDictionary()();
  objc_allocWithZone(SABaseAceObject);

  result = @nonobjc SABaseAceObject.init(dictionary:)(v9);
  if (!result)
  {
    __break(1u);
    return result;
  }

  v11 = result;
  v13 = *(v0 + 256);
  v12 = *(v0 + 264);
  v14 = *(v0 + 248);
  v15 = *(v0 + 208);
  outlined destroy of CustomIntentStateAttachment(v0 + 112);

  *(v5 + 32) = v11;
  NLContextUpdate.conversationStateAttachments.setter();
  (*(v13 + 32))(v15, v12, v14);
LABEL_8:

  v21 = *(v0 + 8);

  return v21();
}

id static CustomIntentNLContextProvider.attributeForParameter(intent:parameter:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 _codableDescription];
  v6 = outlined bridged method (mbgnn) of @objc INCodableDescription.attribute(byName:)(a2, a3, v5);

  return v6;
}

uint64_t CustomIntentNLContextProvider.intentCodableAttributeToUsoTaskBuilder(attribute:)(void *a1)
{
  objc_opt_self();
  OUTLINED_FUNCTION_71();
  if (swift_dynamicCastObjCClass())
  {
LABEL_2:
    type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
    return static UsoTaskBuilder_execute_common_VoiceCommand.stringTaskBuilder(value:)(0, 0);
  }

  objc_opt_self();
  OUTLINED_FUNCTION_71();
  if (swift_dynamicCastObjCClass())
  {
    lazy protocol witness table accessor for type CustomIntentNLContextProviderError and conformance CustomIntentNLContextProviderError();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    objc_opt_self();
    OUTLINED_FUNCTION_71();
    if (!swift_dynamicCastObjCClass())
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, static Logger.voiceCommands);
      v5 = a1;
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v16 = v9;
        *v8 = 136315138;
        v10 = v5;
        v11 = [v10 description];
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v16);

        *(v8 + 4) = v15;
        _os_log_impl(&dword_0, v6, v7, "Unsupported INCodableAttribute when building SystemDialogAct %s", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v9);
      }

      goto LABEL_2;
    }

    objc_opt_self();
    OUTLINED_FUNCTION_71();
    v3 = [swift_dynamicCastObjCClassUnconditional() valueType];
    return INIntentSlotValueType.toUsoTaskBuilder()(v3);
  }
}

uint64_t CustomIntentNLContextProvider.makeNeedsDisambiguationContextFor(intent:parameter:resolutionResult:disambiguationItems:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[36] = a6;
  v7[37] = v6;
  v7[34] = a4;
  v7[35] = a5;
  v7[32] = a2;
  v7[33] = a3;
  v7[31] = a1;
  v8 = type metadata accessor for Locale();
  v7[38] = v8;
  OUTLINED_FUNCTION_5_0(v8);
  v7[39] = v9;
  v7[40] = swift_task_alloc();
  v10 = type metadata accessor for NLContextUpdate();
  v7[41] = v10;
  OUTLINED_FUNCTION_5_0(v10);
  v7[42] = v11;
  v7[43] = swift_task_alloc();

  return _swift_task_switch(CustomIntentNLContextProvider.makeNeedsDisambiguationContextFor(intent:parameter:resolutionResult:disambiguationItems:));
}

id CustomIntentNLContextProvider.makeNeedsDisambiguationContextFor(intent:parameter:resolutionResult:disambiguationItems:)()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = specialized _arrayForceCast<A, B>(_:)(*(v0 + 288));
  VoiceCommandNLContextProvider.makeContextForDisambiguation(items:)(v4);

  v5 = [v3 _codableDescription];
  v6 = outlined bridged method (mbgnn) of @objc INCodableDescription.attribute(byName:)(v2, v1, v5);

  if (v6)
  {
    v8 = *(v0 + 312);
    v7 = *(v0 + 320);
    v9 = *(v0 + 296);
    v30 = *(v0 + 304);
    v10 = *(v0 + 272);
    v29 = v6;
    v12 = *(v0 + 256);
    v11 = *(v0 + 264);
    INCodableAttribute.disambiguationPromptTargets()();
    NLContextUpdate.weightedPromptResponseTargets.setter();
    __swift_project_boxed_opaque_existential_1((v9 + 16), *(v9 + 40));
    dispatch thunk of DeviceState.siriLocale.getter();
    INIntentResolutionResult.getDisplayHints(intent:parameter:locale:shouldIncludeOrdinalReference:)(v12, v11, v10, v7, 1);
    (*(v8 + 8))(v7, v30);
    NLContextUpdate.displayHints.setter();
    v13 = INIntentResolutionResult.safeJSONDictionaryRepresentation(for:parameterName:)(v12);
    specialized Dictionary.subscript.getter(v13, (v0 + 208), 0x6F697463656C6573, 0xEE00736D6574496ELL);

    if (*(v0 + 232))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDys11AnyHashableVypGGMd, &_sSaySDys11AnyHashableVypGGMR);
      if (swift_dynamicCast())
      {
        v14 = *(v0 + 240);
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      outlined destroy of String?(v0 + 208, &_sypSgMd, &_sypSgMR);
      v14 = 0;
    }

    v16 = *(v0 + 264);
    v15 = *(v0 + 272);
    v17 = *(v0 + 256);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v19 = OUTLINED_FUNCTION_64(v18);
    *(v19 + 16) = xmmword_216010;
    v20 = INIntent.bundleId.getter();
    *(v0 + 112) = v17;
    *(v0 + 120) = 0;
    *(v0 + 128) = v20;
    *(v0 + 136) = v21;
    *(v0 + 144) = v16;
    *(v0 + 152) = v15;
    *(v0 + 168) = 0;
    *(v0 + 176) = 0;
    *(v0 + 160) = v14;
    OUTLINED_FUNCTION_1_29();

    v22 = v17;
    CustomIntentStateAttachment.asDictionary()();
    objc_allocWithZone(SABaseAceObject);

    result = @nonobjc SABaseAceObject.init(dictionary:)(v23);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v25 = result;
    outlined destroy of CustomIntentStateAttachment(v0 + 112);

    *(v19 + 32) = v25;
    NLContextUpdate.conversationStateAttachments.setter();
  }

  v26 = *(v0 + 328);
  v27 = *(v0 + 248);
  (*(*(v0 + 336) + 32))(v27, *(v0 + 344), v26);
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);

  v28 = *(v0 + 8);

  return v28();
}

id CustomIntentNLContextProvider.makeNeedsConfirmationContextFor(intent:parameter:resolutionResult:)(void *a1, uint64_t a2, uint64_t a3)
{
  VoiceCommandNLContextProvider.makeContextForConfirmation(acceptLabel:denyLabel:acceptAlternatives:denyAlternatives:)();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = OUTLINED_FUNCTION_64(v6);
  *(v7 + 16) = xmmword_216010;
  __src[0] = a1;
  LOBYTE(__src[1]) = 1;
  __src[2] = INIntent.bundleId.getter();
  __src[3] = v8;
  __src[4] = a2;
  __src[5] = a3;
  memset(&__src[6], 0, 24);
  LOBYTE(__src[9]) = 1;
  __src[10] = 0;
  LOBYTE(__src[11]) = 1;
  memcpy(v14, __src, sizeof(v14));

  v9 = a1;
  CustomIntentStateAttachment.asDictionary()();
  v10 = objc_allocWithZone(SABaseAceObject);

  result = @nonobjc SABaseAceObject.init(dictionary:)(v11);
  if (result)
  {
    v13 = result;
    outlined destroy of CustomIntentStateAttachment(__src);

    *(v7 + 32) = v13;
    return NLContextUpdate.conversationStateAttachments.setter();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CustomIntentNLContextProvider.makeContextForConfirmIntent(intent:confirmIntentResponse:acceptLabel:denyLabel:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
  __chkstk_darwin(v10 - 8);
  v43 = &v41 - v11;
  v49 = type metadata accessor for DisplayHint();
  OUTLINED_FUNCTION_7_1();
  v13 = v12;
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_3();
  v47 = v16 - v15;
  v48 = type metadata accessor for SemanticValue();
  OUTLINED_FUNCTION_7_1();
  v46 = v17;
  v19 = __chkstk_darwin(v18);
  v42 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v41 - v21;
  v44 = a3;
  v45 = a4;
  VoiceCommandNLContextProvider.makeContextForConfirmation(acceptLabel:denyLabel:acceptAlternatives:denyAlternatives:)();
  type metadata accessor for MachineUtteranceBuilder();
  swift_allocObject();
  MachineUtteranceBuilder.init()();
  INIntent.category()();
  dispatch thunk of MachineUtteranceBuilder.addMapping(node:value:)();

  dispatch thunk of MachineUtteranceBuilder.build()();

  NLContextUpdate.nlInput.setter();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v24 = OUTLINED_FUNCTION_64(v23);
  *(v24 + 16) = xmmword_216010;
  v25 = INIntent.bundleId.getter();
  __src[0] = a1;
  LOBYTE(__src[1]) = 1;
  __src[2] = v25;
  __src[3] = v26;
  memset(&__src[4], 0, 24);
  __src[7] = a2;
  __src[8] = 0;
  LOBYTE(__src[9]) = 1;
  __src[10] = 0;
  LOBYTE(__src[11]) = 1;
  memcpy(__dst, __src, sizeof(__dst));
  v27 = a2;
  a1;
  CustomIntentStateAttachment.asDictionary()();
  v28 = objc_allocWithZone(SABaseAceObject);

  result = @nonobjc SABaseAceObject.init(dictionary:)(v29);
  if (result)
  {
    v31 = result;
    outlined destroy of CustomIntentStateAttachment(__src);

    *(v24 + 32) = v31;
    NLContextUpdate.conversationStateAttachments.setter();
    v32 = INIntent.verb()();

    v33 = (v32._object >> 56) & 0xF;
    if ((v32._object & 0x2000000000000000) == 0)
    {
      v33 = v32._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v33)
    {

      SemanticValue.init(string:label:)();
      v34 = v48;
      __swift_storeEnumTagSinglePayload(v43, 1, 1, v48);
      v35 = v46;
      (*(v46 + 16))(v42, v22, v34);
      v36 = v47;
      DisplayHint.init(idValue:displayValue:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow11DisplayHintVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow11DisplayHintVGMR);
      v37 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_216850;
      v39 = v38 + v37;
      v40 = v49;
      (*(v13 + 16))(v39, v36, v49);
      NLContextUpdate.displayHints.setter();
      (*(v13 + 8))(v36, v40);
      return (*(v35 + 8))(v22, v34);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id CustomIntentNLContextProvider.makeContextForPagination(intent:parameterName:displayHints:selectionItems:paginatedItems:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v13 = type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_7_1();
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_3();
  v17 = (v16 - v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVy0a4LinkC6Plugin026CustomIntentDisambiguationE0VGMd, &_s11SiriKitFlow22PaginatedItemContainerVy0a4LinkC6Plugin026CustomIntentDisambiguationE0VGMR);
  v73 = a6;
  v18 = PaginatedItemContainer.items.getter();
  v19 = specialized _arrayForceCast<A, B>(_:)(v18);

  v76 = v7;
  VoiceCommandNLContextProvider.makeContextForDisambiguation(items:)(v19);

  NLContextUpdate.weightedPromptResponseOptions.setter();
  NLContextUpdate.dictationPromptTargetNodes.setter();
  NLContextUpdate.dictationPromptAbortValues.setter();
  v72 = a1;
  v20 = [a1 _codableDescription];
  v70 = a2;
  v71 = a3;
  v21 = outlined bridged method (mbgnn) of @objc INCodableDescription.attribute(byName:)(a2, a3, v20);

  if (!v21)
  {
    goto LABEL_10;
  }

  if (!a4 || (v22 = a5) == 0)
  {

LABEL_10:
    v28 = OUTLINED_FUNCTION_5_15();
    return v29(v28);
  }

  v67 = v17;
  v68 = a4;
  v66 = v21;
  v69 = v13;
  v23 = v73;
  v24 = PaginatedItemContainer.getCurrentPageIndex()();
  v25 = PaginatedItemContainer.pageSize.getter();
  v26 = v24 * v25;
  if ((v24 * v25) >> 64 != (v24 * v25) >> 63)
  {
    goto LABEL_56;
  }

  v17 = *(PaginatedItemContainer.page.getter() + 16);

  v75 = v17;
  v27 = v17 + v26;
  v23 = v69;
  if (__OFADD__(v26, v17))
  {
    goto LABEL_57;
  }

  v17 = v67;
  if (*(a4 + 16) < v27 || *(a5 + 16) < v27)
  {

    v28 = OUTLINED_FUNCTION_5_15();
    return v29(v28);
  }

  if (v27 < v26)
  {
    goto LABEL_58;
  }

  specialized Array.subscript.getter(v26, v27, a5);
  v17 = v31;
  v23 = v32;
  v26 = v33;
  v22 = v34;
  if (v34)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v37 = swift_dynamicCastClass();
    if (!v37)
    {
      swift_unknownObjectRelease();
      v37 = _swiftEmptyArrayStorage;
    }

    v38 = v37[2];

    if (__OFSUB__(v22 >> 1, v26))
    {
      goto LABEL_59;
    }

    if (v38 != (v22 >> 1) - v26)
    {
      goto LABEL_60;
    }

    v36 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v36)
    {
      goto LABEL_22;
    }

    v36 = _swiftEmptyArrayStorage;
    goto LABEL_21;
  }

  while (1)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v17, v23, v26, v22);
    v36 = v35;
LABEL_21:
    swift_unknownObjectRelease();
LABEL_22:
    v26 = v36[2];
    v17 = _swiftEmptyArrayStorage;
    if (!v26)
    {
      break;
    }

    __dst[0] = _swiftEmptyArrayStorage;

    v23 = __dst;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 0);
    v39 = 0;
    v17 = __dst[0];
    v40 = v36[2];
    while (v40 != v39)
    {
      if (v39 >= v36[2])
      {
        goto LABEL_53;
      }

      v41 = v36;
      v42 = v36[v39 + 4];

      v23 = v76;
      v43 = CustomIntentNLContextProvider.getOrdinalReference(index:count:selectionItem:)(v39, v75, v42);

      __dst[0] = v17;
      v22 = v17[2];
      v44 = v17[3];
      if (v22 >= v44 >> 1)
      {
        v23 = __dst;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v22 + 1, 1);
        v17 = __dst[0];
      }

      v17[2] = v22 + 1;
      v17[v22 + 4] = v43;
      ++v39;
      v36 = v41;
      if (v26 == v39)
      {

        goto LABEL_30;
      }
    }

LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    swift_unknownObjectRelease();
  }

LABEL_30:
  v45 = 0;
  v46 = v17[2];
  v47 = _swiftEmptyArrayStorage;
  while (v46 != v45)
  {
    if (v45 >= v17[2])
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v26 = v17[v45 + 4];
    v23 = *(v26 + 16);
    v22 = v47[2];
    v48 = v23 + v22;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_50;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v48 > v47[3] >> 1)
    {
      if (v22 <= v48)
      {
        v50 = v23 + v22;
      }

      else
      {
        v50 = v22;
      }

      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v50, 1, v47);
      v47 = v51;
    }

    if (*(v26 + 16))
    {
      v22 = v47[2];
      v52 = (v47[3] >> 1) - v22;
      type metadata accessor for DisplayHint();
      if (v52 < v23)
      {
        goto LABEL_54;
      }

      swift_arrayInitWithCopy();

      if (v23)
      {
        v53 = v47[2];
        v54 = __OFADD__(v53, v23);
        v55 = v23 + v53;
        if (v54)
        {
          goto LABEL_55;
        }

        v47[2] = v55;
      }
    }

    else
    {

      if (v23)
      {
        goto LABEL_51;
      }
    }

    ++v45;
  }

  __dst[0] = v68;

  specialized Array.append<A>(contentsOf:)(v47);
  NLContextUpdate.displayHints.setter();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v57 = OUTLINED_FUNCTION_64(v56);
  *(v57 + 16) = xmmword_216010;
  v58 = INIntent.bundleId.getter();
  v60 = v59;
  v61 = specialized _arrayForceCast<A, B>(_:)(v36);

  __src[0] = v72;
  LOBYTE(__src[1]) = 0;
  __src[2] = v58;
  __src[3] = v60;
  __src[4] = v70;
  __src[5] = v71;
  __src[6] = v61;
  __src[7] = 0;
  __src[8] = PaginatedItemContainer.pageSize.getter();
  LOBYTE(__src[9]) = 0;
  __src[10] = PaginatedItemContainer.getCurrentPageIndex()();
  LOBYTE(__src[11]) = 0;
  memcpy(__dst, __src, 0x59uLL);

  v62 = v72;
  CustomIntentStateAttachment.asDictionary()();
  v63 = objc_allocWithZone(SABaseAceObject);

  result = @nonobjc SABaseAceObject.init(dictionary:)(v64);
  if (result)
  {
    v65 = result;
    outlined destroy of CustomIntentStateAttachment(__src);

    *(v57 + 32) = v65;
    NLContextUpdate.conversationStateAttachments.setter();
    INCodableAttribute.disambiguationPromptTargets()();
    NLContextUpdate.weightedPromptResponseTargets.setter();
    NLContextUpdate.weightedPromptStrict.setter();

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void specialized Array.subscript.getter(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < a1 || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {

    return;
  }

LABEL_10:
  __break(1u);
}

void *CustomIntentNLContextProvider.getOrdinalReference(index:count:selectionItem:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SemanticValue();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!*(a3 + 16))
  {
    return _swiftEmptyArrayStorage;
  }

  v10 = specialized __RawDictionaryStorage.find<A>(_:)(0x65756C6176, 0xE500000000000000);
  if ((v11 & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v10, v16);
  outlined init with take of Any(v16, v17);
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for INIntentResolutionResult, INIntentResolutionResult_ptr);
  static INIntentResolutionResult.makeAsIdString(input:)(v17);
  SemanticValue.init(string:label:)();
  v12 = static INIntentResolutionResult.inferOrdinalDisplayValues(index:count:)(a1, a2);
  __chkstk_darwin(v12);
  *&v15[-16] = v9;
  v13 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_11SiriKitFlow11DisplayHintVs5NeverOTg5(partial apply for closure #1 in static INIntentResolutionResult.makeOrdinalDisplayHints(idValue:index:count:), &v15[-32], v12);

  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  (*(v7 + 8))(v9, v6);
  return v13;
}

uint64_t CustomIntentNLContextProvider.makeContextForSmartPrompt()()
{
  v0 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  OUTLINED_FUNCTION_3();
  v4 = v3 - v2;
  NLContextUpdate.init()();
  OUTLINED_FUNCTION_4_22();
  NLContextUpdate.weightedPromptTargetDomain.setter();
  NLContextUpdate.currentDomainName.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  CustomIntentNLContextProvider.buildSDAForSmartPrompt()(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_216850;
  (*(v1 + 16))(v6 + v5, v4, v0);
  NLContextUpdate.nluSystemDialogActs.setter();
  return (*(v1 + 8))(v4, v0);
}

uint64_t CustomIntentNLContextProvider.buildSDAForSmartPrompt()@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v35 = type metadata accessor for Siri_Nlu_External_SystemOffered();
  v33 = *(v35 - 8);
  v1 = __chkstk_darwin(v35);
  v32 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v31 = &v26 - v3;
  v30 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v26 = *(v30 - 8);
  v4 = __chkstk_darwin(v30);
  v29 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v26 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v10 = *(v9 - 8);
  v27 = v9;
  v28 = v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology41UsoEntity_common_VoiceCommandConfirmationC13DefinedValuesOSgMd, _s12SiriOntology41UsoEntity_common_VoiceCommandConfirmationC13DefinedValuesOSgMR);
  __chkstk_darwin(v16 - 8);
  v18 = &v26 - v17;
  type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
  v19 = type metadata accessor for UsoEntity_common_VoiceCommandConfirmation.DefinedValues();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v19);
  static UsoTaskBuilder_execute_common_VoiceCommand.smartPromptTaskBuilder(value:)(v18);
  outlined destroy of String?(v18, &_s12SiriOntology41UsoEntity_common_VoiceCommandConfirmationC13DefinedValuesOSgMd, _s12SiriOntology41UsoEntity_common_VoiceCommandConfirmationC13DefinedValuesOSgMR);
  Siri_Nlu_External_UserStatedTask.init()();
  UsoTaskBuilder.asUsoGraph()();
  Siri_Nlu_External_UserStatedTask.task.setter();
  Siri_Nlu_External_UserDialogAct.init()();
  (*(v10 + 16))(v13, v15, v9);
  Siri_Nlu_External_UserDialogAct.userStatedTask.setter();
  v20 = v31;
  Siri_Nlu_External_SystemOffered.init()();
  v21 = v26;
  v22 = v30;
  (*(v26 + 16))(v29, v7, v30);
  Siri_Nlu_External_SystemOffered.offeredAct.setter();
  Siri_Nlu_External_SystemDialogAct.init()();
  v23 = v33;
  v24 = v35;
  (*(v33 + 16))(v32, v20, v35);
  Siri_Nlu_External_SystemDialogAct.offered.setter();

  (*(v23 + 8))(v20, v24);
  (*(v21 + 8))(v7, v22);
  return (*(v28 + 8))(v15, v27);
}

uint64_t WorkflowHomePodSnippetProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

id @nonobjc SABaseAceObject.init(dictionary:)(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [v1 initWithDictionary:v2.super.isa];

  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS3key_Sd5valuet_Tt1g5, specialized Sequence._copySequenceContents(initializing:));
}

{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi3key_SS5valuet_Tt1g5, specialized Sequence._copySequenceContents(initializing:));
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDySSypGGMd, &_ss23_ContiguousArrayStorageCySDySSypGGMR);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 8);
    }

    if (v4 != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = (2 * ((v8 - 32) / 8)) | 1;
    }

    if (v4 != a3)
    {
      type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNStaticDeferredLocalizedString, LNStaticDeferredLocalizedString_ptr);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 16);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = a2(*(a1 + 16), 0);
  v7 = a3(&v10, v6 + 32, v3, a1);
  v8 = v10;

  outlined consume of Set<String>.Iterator._Variant(v8);
  if (v7 != v3)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v6;
}

id outlined bridged method (mbgnn) of @objc INCodableDescription.attribute(byName:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a3 attributeByName:v4];

  return v5;
}

unint64_t lazy protocol witness table accessor for type CustomIntentNLContextProviderError and conformance CustomIntentNLContextProviderError()
{
  result = lazy protocol witness table cache variable for type CustomIntentNLContextProviderError and conformance CustomIntentNLContextProviderError;
  if (!lazy protocol witness table cache variable for type CustomIntentNLContextProviderError and conformance CustomIntentNLContextProviderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomIntentNLContextProviderError and conformance CustomIntentNLContextProviderError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomIntentNLContextProviderError and conformance CustomIntentNLContextProviderError;
  if (!lazy protocol witness table cache variable for type CustomIntentNLContextProviderError and conformance CustomIntentNLContextProviderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomIntentNLContextProviderError and conformance CustomIntentNLContextProviderError);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CustomIntentNLContextProviderError(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0xAFD50);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t objectdestroyTm()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_AFE04()
{

  if (*(v0 + 96))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  }

  else
  {
  }

  return _swift_deallocObject(v0);
}

void *OUTLINED_FUNCTION_1_29()
{
  *(v0 + 184) = 1;
  *(v0 + 192) = 0;
  *(v0 + 200) = 1;

  return memcpy((v0 + 16), (v0 + 112), 0x59uLL);
}

uint64_t static CustomIntentResponseGenerator.processPunchoutWithDialogAndButton(app:intent:intentResponse:dialogResult:deviceState:dialogTemplating:outputManifest:responseFactory:)()
{
  OUTLINED_FUNCTION_8_0();
  v0[14] = v1;
  v0[15] = v12;
  v0[12] = v2;
  v0[13] = v3;
  v0[10] = v4;
  v0[11] = v5;
  v0[8] = v6;
  v0[9] = v7;
  v0[7] = v8;
  v0[16] = type metadata accessor for WorkflowDataModels.CustomIntentErrorModel(0);
  v0[17] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9);
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  if (v0)
  {

    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 152) = v3;

    return _swift_task_switch(static CustomIntentResponseGenerator.processPunchoutWithDialogAndButton(app:intent:intentResponse:dialogResult:deviceState:dialogTemplating:outputManifest:responseFactory:));
  }
}

{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[11];
  type metadata accessor for SAIntentGroupLaunchAppWithIntent();
  v4 = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();
  v0[20] = v4;
  v5 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v7 = v6;
  v8 = v4;
  CodableAceObject.init(wrappedValue:)();
  *v1 = v5;
  v1[1] = v7;
  v9 = v2[3];
  v10 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v9);
  v0[5] = type metadata accessor for WorkflowDataModels(0);
  v0[6] = lazy protocol witness table accessor for type WorkflowDataModels and conformance WorkflowDataModels();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  outlined init with copy of WorkflowDataModels.CustomIntentErrorModel(v1, boxed_opaque_existential_1);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v12 = swift_allocObject();
  v0[21] = v12;
  *(v12 + 16) = xmmword_216010;
  *(v12 + 32) = v3;
  v13 = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[22] = v14;
  *v14 = v15;
  v14[1] = static CustomIntentResponseGenerator.processPunchoutWithDialogAndButton(app:intent:intentResponse:dialogResult:deviceState:dialogTemplating:outputManifest:responseFactory:);
  v16 = v0[14];
  v17 = v0[7];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v17, v0 + 2, v12, v16, v9, v10);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);

  outlined destroy of WorkflowDataModels.CustomIntentErrorModel(v2);

  OUTLINED_FUNCTION_6_0();

  return v3();
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t static CustomIntentResponseGenerator.processPunchoutWithDialogAndButton(app:intent:intentResponse:dialogResult:deviceState:dialogTemplating:outputManifest:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  __swift_project_boxed_opaque_existential_1(*(v12 + 96), *(*(v12 + 96) + 24));
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    v13 = *(v12 + 120);
    v14 = *(v12 + 88);
    v15 = v13[3];
    v16 = v13[4];
    __swift_project_boxed_opaque_existential_1(v13, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v17 = swift_allocObject();
    *(v12 + 184) = v17;
    *(v17 + 16) = xmmword_216010;
    *(v17 + 32) = v14;
    v18 = v14;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v12 + 192) = v22;
    *v22 = v23;
    v22[1] = static CustomIntentResponseGenerator.processPunchoutWithDialogAndButton(app:intent:intentResponse:dialogResult:deviceState:dialogTemplating:outputManifest:responseFactory:);
    v24 = *(v12 + 112);
    v25 = *(v12 + 56);

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v25, v17, v24, v15, v16, v19, v20, v21, a9, a10, a11, a12);
  }

  else
  {
    v29 = (*(**(v12 + 104) + 232) + **(**(v12 + 104) + 232));
    v26 = swift_task_alloc();
    *(v12 + 144) = v26;
    *v26 = v12;
    v26[1] = static CustomIntentResponseGenerator.processPunchoutWithDialogAndButton(app:intent:intentResponse:dialogResult:deviceState:dialogTemplating:outputManifest:responseFactory:);
    v27 = *(v12 + 64);

    return v29(v27);
  }
}

unint64_t type metadata accessor for SAIntentGroupLaunchAppWithIntent()
{
  result = lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent;
  if (!lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent);
  }

  return result;
}

void *CustomIntentResponseGenerator.init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:continueInAppCATWrapperSimple:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  OUTLINED_FUNCTION_21_5(a1, a2, a3, a4, a5, a6, a7, a8);
  v11 = a10[3];
  v12 = a10[4];
  __swift_mutable_project_boxed_opaque_existential_1(a10, v11);
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  v18 = (*(v17 + 16))(v15 - v14);
  v26 = OUTLINED_FUNCTION_8_19(v18, v19, v20, v21, v22, v23, v24, v25, a9, v16, v10, v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(a10);
  return v26;
}

void *CustomIntentResponseGenerator.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 104));
  return v0;
}

uint64_t CustomIntentResponseGenerator.makeErrorResponse(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v1[9] = v5;
  v1[14] = *v0;
  v6 = type metadata accessor for DialogPhase();
  v1[15] = v6;
  v1[16] = *(v6 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v7 = type metadata accessor for OutputGenerationManifest();
  v1[19] = v7;
  v1[20] = *(v7 - 8);
  v1[21] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0[13] + 56);
  v0[22] = v1;
  v4 = (*(*v1 + 168) + **(*v1 + 168));
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = CustomIntentResponseGenerator.makeErrorResponse(app:intent:intentResponse:);

  return v4();
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 192) = v5;

  if (v0)
  {

    OUTLINED_FUNCTION_6_0();

    return v6();
  }

  else
  {

    return _swift_task_switch(CustomIntentResponseGenerator.makeErrorResponse(app:intent:intentResponse:));
  }
}

{
  v1 = v0[24];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v25 = v0[11];
  static DialogPhase.completion.getter();
  v7 = [v1 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v4 + 16))(v3, v2, v5);
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  (*(v4 + 8))(v2, v5);
  OutputGenerationManifest.listenAfterSpeaking.setter();
  (*(*v6 + 160))(v25);
  OutputGenerationManifest.canUseServerTTS.setter();
  type metadata accessor for AppNameResolver();
  swift_initStackObject();
  v8 = static SAAppInfoFactory.createAppInfo(app:)();
  v9 = AppNameResolver.resolveAppNameWithAppInfo(appInfo:)(v8);
  v11 = v10;

  if ((v11 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  OUTLINED_FUNCTION_19_9();
  if ((dispatch thunk of DeviceState.isPhone.getter() & 1) != 0 || (OUTLINED_FUNCTION_19_9(), (dispatch thunk of DeviceState.isPad.getter())) && v12)
  {
    v13 = type metadata accessor for ResponseFactory();
    swift_allocObject();
    v14 = ResponseFactory.init()();
    v0[5] = v13;
    v0[6] = &protocol witness table for ResponseFactory;
    v0[2] = v14;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[25] = v15;
    *v15 = v16;
    v15[1] = CustomIntentResponseGenerator.makeErrorResponse(app:intent:intentResponse:);

    return static CustomIntentResponseGenerator.processPunchoutWithDialogAndButton(app:intent:intentResponse:dialogResult:deviceState:dialogTemplating:outputManifest:responseFactory:)();
  }

  else
  {
    v18 = v0[24];
    type metadata accessor for ResponseFactory();
    swift_allocObject();
    v0[27] = ResponseFactory.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v19 = swift_allocObject();
    v0[28] = v19;
    *(v19 + 16) = xmmword_216010;
    *(v19 + 32) = v18;
    v27 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
    v20 = v18;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[29] = v21;
    *v21 = v22;
    v21[1] = CustomIntentResponseGenerator.makeErrorResponse(app:intent:intentResponse:);
    v23 = v0[21];
    v24 = v0[9];

    return v27(v24, v19, v23);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 208) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  if (v0)
  {
    v7 = CustomIntentResponseGenerator.makeErrorResponse(app:intent:intentResponse:);
  }

  else
  {
    v7 = CustomIntentResponseGenerator.makeErrorResponse(app:intent:intentResponse:);
  }

  return _swift_task_switch(v7);
}

{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_6_0();

  return v4();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_6_0();

  return v4();
}

uint64_t CustomIntentResponseGenerator.makeDomainFlowActivity(activityType:intent:)()
{
  OUTLINED_FUNCTION_10_19();
  type metadata accessor for ActivityType();
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  (*(v7 + 16))(v5 - v4, v2);
  v8 = CustomIntentResponseGenerator.shortcutsActionsFromIntent(intent:)(v0);
  v9 = *(v1 + 72);
  type metadata accessor for ShortcutsFlowActivity(0);
  swift_allocObject();

  return ShortcutsFlowActivity.init(activityType:underlyingActions:siriEnvironment:)(v6, v8, v9);
}

void *CustomIntentResponseGenerator.shortcutsActionsFromIntent(intent:)(void *a1)
{
  v2 = [a1 _metadata];
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = outlined bridged method (ob) of @objc _INPBIntentMetadata.launchId.getter(v2);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = v3;
  v6 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriLinkFlowPlugin15ShortcutsActionVGMd, &_ss23_ContiguousArrayStorageCy18SiriLinkFlowPlugin15ShortcutsActionVGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_216850;
  [a1 _intentCategory];
  v8 = INIntentCategory.asINPBString()();
  v9 = [a1 typeName];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  *(v7 + 48) = v8;
  *(v7 + 64) = v10;
  *(v7 + 72) = v12;
  return v7;
}

void *CustomIntentResponseGenerator.__allocating_init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:continueInAppCATWrapperSimple:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  OUTLINED_FUNCTION_21_5(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = swift_allocObject();
  v11 = a10[3];
  v12 = a10[4];
  __swift_mutable_project_boxed_opaque_existential_1(a10, v11);
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  v18 = (*(v17 + 16))(v15 - v14);
  v26 = OUTLINED_FUNCTION_8_19(v18, v19, v20, v21, v22, v23, v24, v25, a9, v16, v10, v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(a10);
  return v26;
}

uint64_t ShortcutsFlowActivity.__allocating_init(activityType:underlyingActions:siriEnvironment:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_15_14();
  swift_allocObject();
  v5 = OUTLINED_FUNCTION_14_13();
  return ShortcutsFlowActivity.init(activityType:underlyingActions:siriEnvironment:)(v5, a2, a3);
}

uint64_t outlined init with copy of WorkflowDataModels.CustomIntentErrorModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkflowDataModels.CustomIntentErrorModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of WorkflowDataModels.CustomIntentErrorModel(uint64_t a1)
{
  v2 = type metadata accessor for WorkflowDataModels.CustomIntentErrorModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int WorkflowDialogTemplatingError.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CustomIntentResponseGenerator.CustomIntentResponseGeneratorErrors(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  WorkflowDialogTemplatingError.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t CustomIntentResponseGenerator.__deallocating_deinit()
{
  CustomIntentResponseGenerator.deinit();

  return swift_deallocClassInstance();
}

uint64_t ShortcutsAction.appId.setter()
{
  OUTLINED_FUNCTION_10_19();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ShortcutsAction.intentCategory.setter()
{
  OUTLINED_FUNCTION_10_19();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ShortcutsAction.intentName.setter()
{
  OUTLINED_FUNCTION_10_19();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t ShortcutsAction.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449707061 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6143746E65746E69 && a2 == 0xEE0079726F676574;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x614E746E65746E69 && a2 == 0xEA0000000000656DLL)
    {

      return 2;
    }

    else
    {
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

uint64_t ShortcutsAction.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6449707061;
  }

  if (a1 == 1)
  {
    return 0x6143746E65746E69;
  }

  return 0x614E746E65746E69;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ShortcutsAction.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = ShortcutsAction.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ShortcutsAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ShortcutsAction.CodingKeys and conformance ShortcutsAction.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ShortcutsAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ShortcutsAction.CodingKeys and conformance ShortcutsAction.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ShortcutsAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin15ShortcutsActionV10CodingKeys33_949AFA5D1C3E271C634B275408B2B1FELLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin15ShortcutsActionV10CodingKeys33_949AFA5D1C3E271C634B275408B2B1FELLOGMR);
  OUTLINED_FUNCTION_13_1();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v15[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ShortcutsAction.CodingKeys and conformance ShortcutsAction.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v15[15] = 0;
  OUTLINED_FUNCTION_12_16(v11);
  if (!v2)
  {
    v12 = v3[2];
    v15[14] = 1;
    OUTLINED_FUNCTION_12_16(v12);
    v13 = v3[4];
    v15[13] = 2;
    OUTLINED_FUNCTION_12_16(v13);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t ShortcutsAction.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin15ShortcutsActionV10CodingKeys33_949AFA5D1C3E271C634B275408B2B1FELLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin15ShortcutsActionV10CodingKeys33_949AFA5D1C3E271C634B275408B2B1FELLOGMR);
  OUTLINED_FUNCTION_13_1();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ShortcutsAction.CodingKeys and conformance ShortcutsAction.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v27 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = v12;
  v26 = 1;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = v13;
  v25 = 2;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v10;
  v17 = v16;
  (*(v7 + 8))(v15, v5);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v19 = v24;
  *a2 = v11;
  a2[1] = v19;
  v20 = v23;
  a2[2] = v22;
  a2[3] = v20;
  a2[4] = v14;
  a2[5] = v17;
  return result;
}

double protocol witness for Decodable.init(from:) in conformance ShortcutsAction@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  ShortcutsAction.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t key path setter for ShortcutsFlowActivity.underlyingActions : ShortcutsFlowActivity(void *a1, void **a2)
{
  v2 = *(**a2 + class metadata base offset for ShortcutsFlowActivity + 16);

  return v2(v3);
}

double ShortcutsFlowActivity.underlyingActions.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t ShortcutsFlowActivity.underlyingActions.setter(uint64_t a1)
{
  v3 = direct field offset for ShortcutsFlowActivity.underlyingActions;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t ShortcutsFlowActivity.init(activityType:underlyingActions:siriEnvironment:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_10_19();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  *(v4 + direct field offset for ShortcutsFlowActivity.underlyingActions) = _swiftEmptyArrayStorage;
  ActivityType.rawValue.getter();
  if (a3)
  {

    SiriEnvironment.flowTask.getter();
    OUTLINED_FUNCTION_14_13();

    dispatch thunk of FlowTaskProvider.creationTime.getter();

    v10 = type metadata accessor for Date();
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      outlined destroy of Date?(v9);
    }

    else
    {
      Date.timeIntervalSince1970.getter();
      OUTLINED_FUNCTION_21_2();
      (*(v11 + 8))(v9, v10);
    }
  }

  DefaultFlowActivity.init(activityName:activityType:activityStartTime:)();
  OUTLINED_FUNCTION_14_13();

  type metadata accessor for ActivityType();
  OUTLINED_FUNCTION_21_2();
  (*(v12 + 8))(v5);
  v13 = direct field offset for ShortcutsFlowActivity.underlyingActions;
  swift_beginAccess();
  *(v4 + v13) = v3;

  return v4;
}

uint64_t ShortcutsFlowActivity.__allocating_init(from:)()
{
  OUTLINED_FUNCTION_15_14();
  swift_allocObject();
  v0 = OUTLINED_FUNCTION_14_13();
  return ShortcutsFlowActivity.init(from:)(v0);
}

uint64_t ShortcutsFlowActivity.init(from:)(void *a1)
{
  *(v1 + direct field offset for ShortcutsFlowActivity.underlyingActions) = _swiftEmptyArrayStorage;
  outlined init with copy of DeviceState(a1, v5);
  v3 = DefaultFlowActivity.init(from:)();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t ShortcutsFlowActivity.deinit()
{
  v0 = DefaultFlowActivity.deinit();

  return v0;
}

uint64_t ShortcutsFlowActivity.__deallocating_deinit()
{
  DefaultFlowActivity.deinit();

  return swift_deallocClassInstance();
}

void *specialized CustomIntentResponseGenerator.init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:continueInAppCATWrapperSimple:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  v30[3] = a12;
  v30[4] = a13;
  __swift_allocate_boxed_opaque_existential_1(v30);
  OUTLINED_FUNCTION_21_2();
  (*(v19 + 32))();
  a11[10] = a1;
  a11[11] = a2;
  outlined init with copy of DeviceState(a4, (a11 + 2));
  a11[9] = a3;
  a11[12] = a9;
  outlined init with copy of DeviceState(v30, (a11 + 13));
  outlined init with copy of DeviceState(a4, v29);
  v20 = one-time initialization token for shared;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = static WFDialogState.shared;

  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  v22 = type metadata accessor for AppNameResolver();
  v23 = swift_allocObject();
  type metadata accessor for CustomIntentsDialogTemplating();
  v24 = swift_allocObject();
  *(v24 + 136) = v22;
  *(v24 + 144) = &protocol witness table for AppNameResolver;
  *(v24 + 112) = v23;
  *(v24 + 56) = v21;
  outlined init with take of Output(v29, v24 + 16);
  *(v24 + 64) = 0;
  *(v24 + 72) = 1;
  *(v24 + 80) = a5;
  *(v24 + 88) = a6;
  *(v24 + 96) = a7;
  *(v24 + 104) = a8;
  a11[7] = v24;
  v25 = a11[9];
  type metadata accessor for CustomIntentSnippetProvider();
  swift_allocObject();
  a11[8] = CustomIntentSnippetProvider.init(voiceCommandName:templatingService:deviceState:siriEnvironment:)(a1, a2, v24, a4, v25);

  return a11;
}

uint64_t type metadata accessor for ShortcutsFlowActivity(uint64_t a1)
{
  result = type metadata singleton initialization cache for ShortcutsFlowActivity;
  if (!type metadata singleton initialization cache for ShortcutsFlowActivity)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ShortcutsAction.CodingKeys and conformance ShortcutsAction.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ShortcutsAction.CodingKeys and conformance ShortcutsAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type ShortcutsAction.CodingKeys and conformance ShortcutsAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShortcutsAction.CodingKeys and conformance ShortcutsAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShortcutsAction.CodingKeys and conformance ShortcutsAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type ShortcutsAction.CodingKeys and conformance ShortcutsAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShortcutsAction.CodingKeys and conformance ShortcutsAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShortcutsAction.CodingKeys and conformance ShortcutsAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type ShortcutsAction.CodingKeys and conformance ShortcutsAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShortcutsAction.CodingKeys and conformance ShortcutsAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShortcutsAction.CodingKeys and conformance ShortcutsAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type ShortcutsAction.CodingKeys and conformance ShortcutsAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShortcutsAction.CodingKeys and conformance ShortcutsAction.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomIntentResponseGenerator.CustomIntentResponseGeneratorErrors and conformance CustomIntentResponseGenerator.CustomIntentResponseGeneratorErrors()
{
  result = lazy protocol witness table cache variable for type CustomIntentResponseGenerator.CustomIntentResponseGeneratorErrors and conformance CustomIntentResponseGenerator.CustomIntentResponseGeneratorErrors;
  if (!lazy protocol witness table cache variable for type CustomIntentResponseGenerator.CustomIntentResponseGeneratorErrors and conformance CustomIntentResponseGenerator.CustomIntentResponseGeneratorErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomIntentResponseGenerator.CustomIntentResponseGeneratorErrors and conformance CustomIntentResponseGenerator.CustomIntentResponseGeneratorErrors);
  }

  return result;
}

uint64_t sub_B27F8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for ShortcutsFlowActivity + 8))();
  *a2 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for CustomIntentResponseGenerator.CustomIntentResponseGeneratorErrors(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0xB2954);
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

_BYTE *storeEnumTagSinglePayload for ShortcutsAction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0xB2AC0);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void *OUTLINED_FUNCTION_8_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  v19 = *(v17 - 112);
  v20 = *(v17 - 104);
  v21 = *(v17 - 96);
  v22 = *(v17 - 88);

  return specialized CustomIntentResponseGenerator.init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:continueInAppCATWrapperSimple:responseFactory:)(v16, v15, v14, v13, v19, v20, v21, v22, a9, a10, a11, a12, a13);
}

uint64_t OUTLINED_FUNCTION_12_16(uint64_t a1)
{

  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_19_9()
{
  v1 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  return v1;
}

Swift::String __swiftcall INIntentCategory.asINPBString()()
{
  if (v0 >= 10 && __OFADD__(v0++, 1))
  {
LABEL_31:
    __break(1u);
    JUMPOUT(0xB2E90);
  }

  if (v0 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v0 > 0x7FFFFFFF)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  switch(v0)
  {
    case 1:
      v2 = @"CATEGORY_INFORMATION";
      goto LABEL_27;
    case 2:
      v2 = @"CATEGORY_PLAY_AUDIO";
      goto LABEL_27;
    case 3:
      v2 = @"CATEGORY_PLAY_VIDEO";
      goto LABEL_27;
    case 4:
      v2 = @"CATEGORY_ORDER";
      goto LABEL_27;
    case 5:
      v2 = @"CATEGORY_NAVIGATION";
      goto LABEL_27;
    case 6:
      v2 = @"CATEGORY_START";
      goto LABEL_27;
    case 7:
      v2 = @"CATEGORY_SHARE";
      goto LABEL_27;
    case 8:
      v2 = @"CATEGORY_CREATE";
      goto LABEL_27;
    case 9:
      v2 = @"CATEGORY_SEARCH";
      goto LABEL_27;
    case 11:
      v2 = @"CATEGORY_TOGGLE";
      goto LABEL_27;
    case 12:
      v2 = @"CATEGORY_DOWNLOAD";
      goto LABEL_27;
    case 13:
      v2 = @"CATEGORY_LOG";
      goto LABEL_27;
    case 14:
      v2 = @"CATEGORY_CHECK_IN";
      goto LABEL_27;
    case 15:
      v2 = @"CATEGORY_WORKFLOW";
      goto LABEL_27;
    case 16:
      v2 = @"CATEGORY_REQUEST";
      goto LABEL_27;
    case 17:
      v2 = @"CATEGORY_SET";
      goto LABEL_27;
    case 18:
      v2 = @"CATEGORY_CALL_AUDIO";
      goto LABEL_27;
    case 19:
      v2 = @"CATEGORY_CALL_VIDEO";
      goto LABEL_27;
    case 20:
      v2 = @"CATEGORY_PLAY_SOUND";
      goto LABEL_27;
    case 21:
      v2 = @"CATEGORY_USER_ACTIVITY";
LABEL_27:
      v3 = v2;
      break;
    default:
      v2 = [NSString stringWithFormat:@"(unknown: %i)", v0];
      break;
  }

  v4 = v2;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

INPerson __swiftcall Contact.toINPerson()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference13ContactHandleVSgMd, &_s13SiriInference13ContactHandleVSgMR);
  __chkstk_darwin(v0 - 8);
  v35 = v34 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = v34 - v3;
  v5 = type metadata accessor for PersonNameComponents();
  v36 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = Contact.namePrefix.getter();
  v34[5] = v9;
  v34[6] = v8;
  v10 = Contact.givenName.getter();
  v34[3] = v11;
  v34[4] = v10;
  v12 = Contact.middleName.getter();
  v34[1] = v13;
  v34[2] = v12;
  Contact.familyName.getter();
  Contact.nameSuffix.getter();
  Contact.nickname.getter();
  v37 = v5;
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v14 = v4;
  v15 = v35;
  v16 = v7;
  PersonNameComponents.init(namePrefix:givenName:middleName:familyName:nameSuffix:nickname:phoneticRepresentation:)();
  v17 = Contact.handles.getter();
  specialized Collection.first.getter(v17, v15);

  v18 = type metadata accessor for ContactHandle();
  if (__swift_getEnumTagSinglePayload(v15, 1, v18) == 1)
  {
    outlined destroy of ContactHandle?(v15);
    v19 = 0;
    v20 = 0;
  }

  else
  {
    v19 = ContactHandle.value.getter();
    v20 = v21;
    (*(*(v18 - 8) + 8))(v15, v18);
  }

  v22 = objc_allocWithZone(INPersonHandle);
  v23 = @nonobjc INPersonHandle.init(value:type:)(v19, v20, 0);
  v24 = v36;
  v25 = v14;
  v26 = v14;
  v27 = v37;
  (*(v36 + 16))(v26, v16, v37);
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v27);
  v28 = Contact.id.getter();
  v30 = v29;
  v31 = objc_allocWithZone(INPerson);
  v32 = @nonobjc INPerson.init(personHandle:nameComponents:displayName:image:contactIdentifier:customIdentifier:)(v23, v25, 0, 0, 0, v28, v30, 0, 0);
  (*(v24 + 8))(v16, v27);
  return v32;
}

uint64_t outlined destroy of ContactHandle?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference13ContactHandleVSgMd, &_s13SiriInference13ContactHandleVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id @nonobjc INPersonHandle.init(value:type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithValue:v5 type:a3];

  return v6;
}

id @nonobjc INPerson.init(personHandle:nameComponents:displayName:image:contactIdentifier:customIdentifier:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v16 = type metadata accessor for PersonNameComponents();
  isa = 0;
  if (__swift_getEnumTagSinglePayload(a2, 1, v16) != 1)
  {
    isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    (*(*(v16 - 8) + 8))(a2, v16);
  }

  if (a4)
  {
    v18 = String._bridgeToObjectiveC()();
  }

  else
  {
    v18 = 0;
  }

  if (!a7)
  {
    v19 = 0;
    if (a9)
    {
      goto LABEL_8;
    }

LABEL_10:
    v20 = 0;
    goto LABEL_11;
  }

  v19 = String._bridgeToObjectiveC()();

  if (!a9)
  {
    goto LABEL_10;
  }

LABEL_8:
  v20 = String._bridgeToObjectiveC()();

LABEL_11:
  v21 = [v10 initWithPersonHandle:a1 nameComponents:isa displayName:v18 image:a5 contactIdentifier:v19 customIdentifier:v20];

  return v21;
}

uint64_t DeviceState.asSiriKitDeviceState()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SirikitDeviceState();
  v7[3] = a1;
  v7[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v2, a1);
  return SirikitDeviceState.__allocating_init(from:)();
}

uint64_t DeviceState.asWFSiriRunSource()(uint64_t a1, uint64_t a2)
{
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    return 2;
  }

  OUTLINED_FUNCTION_48_2();
  if (dispatch thunk of DeviceState.isCarPlay.getter())
  {
    return 3;
  }

  OUTLINED_FUNCTION_48_2();
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    return 4;
  }

  else
  {
    return 1;
  }
}

uint64_t DeviceState.currentDevice.getter(uint64_t a1, uint64_t a2)
{
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    return 4;
  }

  OUTLINED_FUNCTION_48_2();
  if (dispatch thunk of DeviceState.isCarPlay.getter())
  {
    return 5;
  }

  OUTLINED_FUNCTION_48_2();
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    return 3;
  }

  OUTLINED_FUNCTION_48_2();
  if (dispatch thunk of DeviceState.isMac.getter())
  {
    return 7;
  }

  OUTLINED_FUNCTION_48_2();
  if (dispatch thunk of DeviceState.isPad.getter())
  {
    return 2;
  }

  OUTLINED_FUNCTION_48_2();
  if (dispatch thunk of DeviceState.isAppleTV.getter())
  {
    return 6;
  }

  else
  {
    return 1;
  }
}

void *LinkActionDialogTemplating.__allocating_init(deviceState:runLinkActionCatWrapper:runLinkActionCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:linkActionPatterns:)()
{
  OUTLINED_FUNCTION_71_1();
  swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v0, v0[3]);
  OUTLINED_FUNCTION_79_1();
  __chkstk_darwin(v1);
  v3 = OUTLINED_FUNCTION_51_1(v2, v15);
  v5 = v4(v3);
  v13 = OUTLINED_FUNCTION_54_3(v5, v6, v7, v8, v9, v10, v11, v12, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  return v13;
}

uint64_t LinkActionDialogTemplating.makeNeedsDisambiguationTitle(customPrompt:items:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[2];
  v0[6] = *(v0[4] + 64);
  if (v1)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[7] = v2;
    *v2 = v3;
    v2[1] = LinkActionDialogTemplating.makeNeedsDisambiguationTitle(customPrompt:items:);
    v4 = v0[5];

    return LNDialog.asSpeakableString.getter(v4);
  }

  else
  {
    type metadata accessor for SpeakableString();
    v6 = OUTLINED_FUNCTION_7_15();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);

    v10 = swift_task_alloc();
    v11 = OUTLINED_FUNCTION_85_2(v10);
    *v11 = v12;
    v13 = OUTLINED_FUNCTION_27_9(v11);

    return v14(v13);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

{
  OUTLINED_FUNCTION_15_2();

  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_85_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_27_9(v1);

  return v4(v3);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *v1;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 72) = v0;

  outlined destroy of Siri_Nlu_External_UserDialogAct?(*(v2 + 40), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_87();

    return _swift_task_switch(v5);
  }

  else
  {

    OUTLINED_FUNCTION_87();

    return v9(v7, v8, v9, v10, v11, v12, v13, v14);
  }
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t LinkActionDialogTemplating.makeParameterPromptDialog(parameterName:customPrompt:actionMetadata:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[4] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v1[9] = OUTLINED_FUNCTION_27();
  v1[10] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

{
  OUTLINED_FUNCTION_15_2();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_1();
  *v6 = v5;
  v7 = *v1;
  *v6 = *v1;
  *(v5 + 112) = v0;

  v8 = *(v4 + 80);
  outlined destroy of Siri_Nlu_External_UserDialogAct?(*(v4 + 72), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9);
  }

  else
  {

    v10 = *(v7 + 8);

    return v10(v3);
  }
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t LinkActionDialogTemplating.makeParameterPromptDialog(parameterName:customPrompt:actionMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v16 = v14[6];
  v14[11] = *(v14[8] + 64);
  if (v16)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v14[12] = v17;
    *v17 = v18;
    v17[1] = LinkActionDialogTemplating.makeParameterPromptDialog(parameterName:customPrompt:actionMetadata:);
    OUTLINED_FUNCTION_6_1();

    return LNDialog.asSpeakableString.getter(v19);
  }

  else
  {
    v22 = type metadata accessor for SpeakableString();
    v23 = OUTLINED_FUNCTION_7_15();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
    v26 = v14[7];
    v28 = v14[4];
    v27 = v14[5];

    OUTLINED_FUNCTION_74_1(v28, v27);
    OUTLINED_FUNCTION_45_4();
    v29 = [v26 systemProtocols];
    v30 = OUTLINED_FUNCTION_93_0();
    OUTLINED_FUNCTION_66_1(v30);

    v31 = objc_opt_self();
    v32 = OUTLINED_FUNCTION_44_5([v31 searchSystemProtocol]);
    OUTLINED_FUNCTION_34_8(v32);
    OUTLINED_FUNCTION_92_0();

    OUTLINED_FUNCTION_91([v26 systemProtocols]);

    v33 = OUTLINED_FUNCTION_43_4([v31 deleteEntitySystemProtocol]);
    OUTLINED_FUNCTION_35_7(v33);
    OUTLINED_FUNCTION_90_0();

    OUTLINED_FUNCTION_61_0();
    OUTLINED_FUNCTION_6_17();
    v46 = v34 + *v34;
    v35 = swift_task_alloc();
    v36 = OUTLINED_FUNCTION_31_4(v35);
    *v36 = v37;
    OUTLINED_FUNCTION_26_12(v36);
    OUTLINED_FUNCTION_6_1();

    return v42(v38, v39, v40, v41, v42, v43, v44, v45, a9, v46, a11, a12, a13, a14);
  }
}

{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v16 = v14[9];
  v17 = v14[7];
  v19 = v14[4];
  v18 = v14[5];

  OUTLINED_FUNCTION_74_1(v19, v18);
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_27_7();
  OUTLINED_FUNCTION_49_3();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  v24 = [v17 systemProtocols];
  v25 = OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_66_1(v25);

  v26 = objc_opt_self();
  v27 = OUTLINED_FUNCTION_44_5([v26 searchSystemProtocol]);
  OUTLINED_FUNCTION_34_8(v27);
  OUTLINED_FUNCTION_92_0();

  OUTLINED_FUNCTION_91([v17 systemProtocols]);

  v28 = OUTLINED_FUNCTION_43_4([v26 deleteEntitySystemProtocol]);
  OUTLINED_FUNCTION_35_7(v28);
  OUTLINED_FUNCTION_90_0();

  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_6_17();
  v42 = v29 + *v29;
  v30 = swift_task_alloc();
  v31 = OUTLINED_FUNCTION_31_4(v30);
  *v31 = v32;
  OUTLINED_FUNCTION_26_12(v31);
  OUTLINED_FUNCTION_6_1();

  return v37(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42, a11, a12, a13, a14);
}

BOOL specialized Sequence.contains(where:)(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = (a1)(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

void specialized Sequence.contains(where:)(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = specialized Array.count.getter(a3);
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v12 = v8;
    v10 = a1(&v12);

    if (!v3)
    {
      v6 = v7 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

BOOL specialized Sequence.contains(where:)(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v13 = *v6;
    v9 = v13;
    v10 = a1(&v13);
    if (v3)
    {

      return v7 != 0;
    }

    v11 = v10;

    ++v6;
  }

  while ((v11 & 1) == 0);
  return v7 != 0;
}

uint64_t LinkActionDialogTemplating.unsupportedOnPlatform()()
{
  *(v1 + 16) = v0;
  v2 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v2);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[2];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = DeviceState.asSiriKitDeviceState()(v2, v3);
  v0[3] = v4;
  OUTLINED_FUNCTION_2_26();
  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = LinkActionDialogTemplating.unsupportedOnPlatform();

  return v8(v4);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v4 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_18_0();

    return _swift_task_switch(v8);
  }

  else
  {

    v9 = *(v6 + 8);

    return v9(v1);
  }
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t LinkActionDialogTemplating.makeParameterValueConfirmation(customPrompt:parameterValue:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v0[5] = OUTLINED_FUNCTION_27();
  v0[6] = swift_task_alloc();
  v4 = type metadata accessor for Locale();
  v0[7] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v0[8] = v5;
  v0[9] = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_24_1();
  v1 = *(v0 + 16);
  __swift_project_boxed_opaque_existential_1((*(v0 + 32) + 16), *(*(v0 + 32) + 40));
  OUTLINED_FUNCTION_56_1();
  dispatch thunk of DeviceState.siriLocale.getter();
  *(v0 + 80) = Locale.identifier.getter();
  *(v0 + 88) = v2;
  v3 = OUTLINED_FUNCTION_9_3();
  v4(v3);
  if (!v1)
  {
    v10 = *(v0 + 48);
    v11 = type metadata accessor for SpeakableString();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
    v12 = [*(v0 + 24) displayRepresentation];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 title];

      v15 = String._bridgeToObjectiveC()();

      v16 = [v14 localizedStringForLocaleIdentifier:v15];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = OUTLINED_FUNCTION_56_1();
      OUTLINED_FUNCTION_74_1(v17, v18);
      v19 = 0;
    }

    else
    {

      v19 = 1;
    }

    __swift_storeEnumTagSinglePayload(*(v0 + 40), v19, 1, v11);
    OUTLINED_FUNCTION_18_4();
    OUTLINED_FUNCTION_2_26();
    v20 = swift_task_alloc();
    v21 = OUTLINED_FUNCTION_31_4(v20);
    *v21 = v22;
    v21[1] = LinkActionDialogTemplating.makeParameterValueConfirmation(customPrompt:parameterValue:);
    OUTLINED_FUNCTION_73(*(v0 + 48));
    OUTLINED_FUNCTION_103();

    __asm { BRAA            X2, X16 }
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 96) = v5;
  *v5 = v6;
  v5[1] = LinkActionDialogTemplating.makeParameterValueConfirmation(customPrompt:parameterValue:);
  OUTLINED_FUNCTION_103();

  return LNDialog.asSpeakableString.getter(v7);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v4 + 112) = v0;

  if (!v0)
  {
    *(v4 + 120) = v1;
  }

  OUTLINED_FUNCTION_18_0();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 48);
  v2 = OUTLINED_FUNCTION_20_1();
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v2, v3, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_87();

  return v6(v4, v5, v6, v7, v8, v9, v10, v11);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 48);
  v2 = OUTLINED_FUNCTION_20_1();
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v2, v3, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_87();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

void LinkActionDialogTemplating.makeParameterValueConfirmation(customPrompt:parameterValue:)()
{
  OUTLINED_FUNCTION_14_0();
  v1 = [*(v0 + 24) displayRepresentation];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 title];

    v4 = String._bridgeToObjectiveC()();

    v5 = [v3 localizedStringForLocaleIdentifier:v4];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = OUTLINED_FUNCTION_20_1();
    OUTLINED_FUNCTION_74_1(v6, v7);
    v8 = 0;
  }

  else
  {

    v8 = 1;
  }

  type metadata accessor for SpeakableString();
  v9 = OUTLINED_FUNCTION_27_7();
  __swift_storeEnumTagSinglePayload(v9, v8, 1, v10);
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_2_26();
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_31_4(v11);
  *v12 = v13;
  v12[1] = LinkActionDialogTemplating.makeParameterValueConfirmation(customPrompt:parameterValue:);
  OUTLINED_FUNCTION_73(*(v0 + 48));
  OUTLINED_FUNCTION_49_0();

  __asm { BRAA            X2, X16 }
}

void *LinkActionDialogTemplating.init(deviceState:runLinkActionCatWrapper:runLinkActionCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:linkActionPatterns:)()
{
  OUTLINED_FUNCTION_71_1();
  __swift_mutable_project_boxed_opaque_existential_1(v1, *(v1 + 24));
  OUTLINED_FUNCTION_79_1();
  __chkstk_darwin(v2);
  v4 = OUTLINED_FUNCTION_51_1(v3, v16);
  v6 = v5(v4);
  v14 = OUTLINED_FUNCTION_54_3(v6, v7, v8, v9, v10, v11, v12, v13, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  return v14;
}

uint64_t LinkActionDialogTemplating.makeActionPerformedPattern_preRFv2(customResponse:useSonicStatus:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 136) = v2;
  *(v1 + 64) = v3;
  *(v1 + 72) = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  *(v1 + 80) = OUTLINED_FUNCTION_28();
  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_14_0();
  if (!*(v0 + 64))
  {
    type metadata accessor for SpeakableString();
    v6 = OUTLINED_FUNCTION_7_15();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
    v10 = *(v0 + 136);
    v11 = OUTLINED_FUNCTION_11_13(*(v0 + 72));
    *(v0 + 96) = v11;
    OUTLINED_FUNCTION_65_1(v11);
    if (v10)
    {
      OUTLINED_FUNCTION_6_17();
      v12 = swift_task_alloc();
      v13 = OUTLINED_FUNCTION_31_4(v12);
      *v13 = v14;
      OUTLINED_FUNCTION_37_7(v13);
      OUTLINED_FUNCTION_4_23();
      OUTLINED_FUNCTION_82_2();

      __asm { BRAA            X5, X16 }
    }

    OUTLINED_FUNCTION_6_17();
    v17 = swift_task_alloc();
    *(v0 + 120) = v17;
    *v17 = v0;
    OUTLINED_FUNCTION_40_3(v17);
    OUTLINED_FUNCTION_4_23();
    OUTLINED_FUNCTION_82_2();

    __asm { BRAA            X5, X16 }
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 88) = v1;
  *v1 = v2;
  v1[1] = LinkActionDialogTemplating.makeActionPerformedPattern_preRFv2(customResponse:useSonicStatus:);
  OUTLINED_FUNCTION_82_2();

  return LNDialog.asSpeakableString.getter(v3);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v3[2] = v1;
  v3[3] = v5;
  v3[4] = v0;
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  v3[14] = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 24);
  outlined destroy of Siri_Nlu_External_UserDialogAct?(*(v0 + 80), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_6();

  return v2(v1);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v3[5] = v1;
  v3[6] = v5;
  v3[7] = v0;
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  v3[16] = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 48);
  outlined destroy of Siri_Nlu_External_UserDialogAct?(*(v0 + 80), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_6();

  return v2(v1);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 80);

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();

  return v2();
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 80);

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();

  return v2();
}

void LinkActionDialogTemplating.makeActionPerformedPattern_preRFv2(customResponse:useSonicStatus:)()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 136);
  v2 = OUTLINED_FUNCTION_11_13(*(v0 + 72));
  *(v0 + 96) = v2;
  OUTLINED_FUNCTION_65_1(v2);
  if (v1 == 1)
  {
    OUTLINED_FUNCTION_6_17();
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_31_4(v3);
    *v4 = v5;
    OUTLINED_FUNCTION_37_7(v4);
    OUTLINED_FUNCTION_4_23();
    OUTLINED_FUNCTION_82_2();

    __asm { BRAA            X5, X16 }
  }

  OUTLINED_FUNCTION_6_17();
  v8 = swift_task_alloc();
  *(v0 + 120) = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_40_3(v8);
  OUTLINED_FUNCTION_4_23();
  OUTLINED_FUNCTION_82_2();

  __asm { BRAA            X5, X16 }
}

uint64_t LinkActionDialogTemplating.makeActionConfirmationPattern_preRFv2(customResponse:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v1[4] = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_14_0();
  if (!v0[2])
  {
    type metadata accessor for SpeakableString();
    v6 = OUTLINED_FUNCTION_7_15();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
    v10 = OUTLINED_FUNCTION_11_13(v0[3]);
    v0[6] = v10;
    OUTLINED_FUNCTION_65_1(v10);
    OUTLINED_FUNCTION_2_26();
    v11 = swift_task_alloc();
    v12 = OUTLINED_FUNCTION_76_2(v11);
    *v12 = v13;
    OUTLINED_FUNCTION_39_8(v12);
    OUTLINED_FUNCTION_4_23();
    OUTLINED_FUNCTION_49_0();

    __asm { BRAA            X5, X16 }
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[5] = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_73_2(v1);
  OUTLINED_FUNCTION_49_0();

  return LNDialog.asSpeakableString.getter(v3);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (!v0)
  {
    *(v4 + 72) = v1;
  }

  OUTLINED_FUNCTION_18_0();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of Siri_Nlu_External_UserDialogAct?(*(v0 + 32), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_6();
  v2 = *(v0 + 72);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 32);

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();

  return v2();
}

void LinkActionDialogTemplating.makeActionConfirmationPattern_preRFv2(customResponse:)()
{
  OUTLINED_FUNCTION_14_0();
  v1 = OUTLINED_FUNCTION_11_13(*(v0 + 24));
  *(v0 + 48) = v1;
  OUTLINED_FUNCTION_65_1(v1);
  OUTLINED_FUNCTION_2_26();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_76_2(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_39_8(v3);
  OUTLINED_FUNCTION_4_23();
  OUTLINED_FUNCTION_49_0();

  __asm { BRAA            X5, X16 }
}

uint64_t LinkActionDialogTemplating.makeContinueInAppPattern(customResponse:)()
{
  OUTLINED_FUNCTION_8_0();
  v1 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14(v1);
  v0[2] = OUTLINED_FUNCTION_28();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v2);
  v3 = OUTLINED_FUNCTION_28();
  v0[3] = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[4] = v4;
  *v4 = v5;
  v4[1] = LinkActionDialogTemplating.makeContinueInAppPattern(customResponse:);

  return LNDialog.asSpeakableString.getter(v3);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[3];
  type metadata accessor for RunLinkActionCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  v0[5] = CATWrapper.__allocating_init(options:globals:)();
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = v1;
  OUTLINED_FUNCTION_2_26();
  v8 = (v3 + *v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_76_2(v4);
  *v5 = v6;
  v5[1] = LinkActionDialogTemplating.makeContinueInAppPattern(customResponse:);

  return (v8)(0, partial apply for closure #1 in LinkActionDialogTemplating.makeActionPerformedPattern_preRFv2(customResponse:useSonicStatus:), v2);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (!v0)
  {

    *(v4 + 72) = v1;
  }

  OUTLINED_FUNCTION_18_0();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of Siri_Nlu_External_UserDialogAct?(*(v0 + 24), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_6();
  v2 = *(v0 + 72);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 24);

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();

  return v2();
}

uint64_t LinkActionDialogTemplating.makeParameterPromptDialog_preRFv2(parameterName:customPrompt:actionMetadata:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[4] = v5;
  v1[5] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v1[10] = OUTLINED_FUNCTION_27();
  v1[11] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *v1;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 120) = v0;

  v5 = *(v2 + 88);
  outlined destroy of Siri_Nlu_External_UserDialogAct?(*(v2 + 80), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v0)
  {
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_87();

    return _swift_task_switch(v6);
  }

  else
  {

    OUTLINED_FUNCTION_87();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t LinkActionDialogTemplating.makeParameterPromptDialog_preRFv2(parameterName:customPrompt:actionMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v16 = v14[7];
  v14[12] = *(v14[9] + 56);
  if (v16)
  {
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_18_14(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_72_2(v18);
    OUTLINED_FUNCTION_6_1();

    return LNDialog.asSpeakableString.getter(v20);
  }

  else
  {
    v23 = type metadata accessor for SpeakableString();
    v24 = OUTLINED_FUNCTION_7_15();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v23);
    v27 = v14[8];
    v29 = v14[5];
    v28 = v14[6];

    OUTLINED_FUNCTION_74_1(v29, v28);
    OUTLINED_FUNCTION_45_4();
    v30 = [v27 systemProtocols];
    v31 = OUTLINED_FUNCTION_93_0();
    OUTLINED_FUNCTION_66_1(v31);

    v32 = objc_opt_self();
    v33 = OUTLINED_FUNCTION_44_5([v32 searchSystemProtocol]);
    OUTLINED_FUNCTION_33_5(v33);
    OUTLINED_FUNCTION_92_0();

    OUTLINED_FUNCTION_91([v27 systemProtocols]);

    v34 = OUTLINED_FUNCTION_43_4([v32 deleteEntitySystemProtocol]);
    OUTLINED_FUNCTION_35_7(v34);
    OUTLINED_FUNCTION_90_0();

    OUTLINED_FUNCTION_61_0();
    OUTLINED_FUNCTION_6_17();
    v46 = v35 + *v35;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v14[14] = v36;
    *v36 = v37;
    OUTLINED_FUNCTION_25_6(v36);
    OUTLINED_FUNCTION_6_1();

    return v43(v38, v39, v40, v41, v42, v43, v44, v45, a9, v46, a11, a12, a13, a14);
  }
}

{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v16 = v14[10];
  v17 = v14[8];
  v19 = v14[5];
  v18 = v14[6];

  OUTLINED_FUNCTION_74_1(v19, v18);
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_27_7();
  OUTLINED_FUNCTION_49_3();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  v24 = [v17 systemProtocols];
  v25 = OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_66_1(v25);

  v26 = objc_opt_self();
  v27 = OUTLINED_FUNCTION_44_5([v26 searchSystemProtocol]);
  OUTLINED_FUNCTION_33_5(v27);
  OUTLINED_FUNCTION_92_0();

  OUTLINED_FUNCTION_91([v17 systemProtocols]);

  v28 = OUTLINED_FUNCTION_43_4([v26 deleteEntitySystemProtocol]);
  OUTLINED_FUNCTION_35_7(v28);
  OUTLINED_FUNCTION_90_0();

  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_6_17();
  v41 = v29 + *v29;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v14[14] = v30;
  *v30 = v31;
  OUTLINED_FUNCTION_25_6(v30);
  OUTLINED_FUNCTION_6_1();

  return v37(v32, v33, v34, v35, v36, v37, v38, v39, a9, v41, a11, a12, a13, a14);
}

uint64_t LinkActionDialogTemplating.makeParameterValueDisambiguationPattern_preRFv2(customPrompt:items:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_14_0();
  if (!v0[2])
  {
    type metadata accessor for SpeakableString();
    v6 = OUTLINED_FUNCTION_7_15();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
    v10 = OUTLINED_FUNCTION_11_13(v0[4]);
    v0[7] = v10;
    OUTLINED_FUNCTION_65_1(v10);
    OUTLINED_FUNCTION_2_26();
    v11 = swift_task_alloc();
    v12 = OUTLINED_FUNCTION_85_2(v11);
    *v12 = v13;
    OUTLINED_FUNCTION_17_15(v12);
    OUTLINED_FUNCTION_49_0();

    __asm { BRAA            X6, X16 }
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[6] = v1;
  *v1 = v2;
  v1[1] = LinkActionDialogTemplating.makeParameterValueDisambiguationPattern_preRFv2(customPrompt:items:);
  OUTLINED_FUNCTION_49_0();

  return LNDialog.asSpeakableString.getter(v3);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_18_0();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of Siri_Nlu_External_UserDialogAct?(*(v0 + 40), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_6();
  v2 = *(v0 + 80);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 40);

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();

  return v2();
}

void LinkActionDialogTemplating.makeParameterValueDisambiguationPattern_preRFv2(customPrompt:items:)()
{
  OUTLINED_FUNCTION_14_0();
  v1 = OUTLINED_FUNCTION_11_13(*(v0 + 32));
  *(v0 + 56) = v1;
  OUTLINED_FUNCTION_65_1(v1);
  OUTLINED_FUNCTION_2_26();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_85_2(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_17_15(v3);
  OUTLINED_FUNCTION_49_0();

  __asm { BRAA            X6, X16 }
}

uint64_t LinkActionDialogTemplating.makeParameterValueConfirmationPattern_preRFv2(customPrompt:parameterValue:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_46_6(v1, v2);
  v3 = type metadata accessor for Locale();
  v0[5] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v0[6] = v4;
  v0[7] = OUTLINED_FUNCTION_28();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v0[8] = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_24_1();
  if (!*(v0 + 16))
  {
    type metadata accessor for SpeakableString();
    v7 = OUTLINED_FUNCTION_7_15();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
    v11 = [*(v0 + 24) displayRepresentation];
    v12 = v11;
    if (v11)
    {
      v13 = *(v0 + 48);
      v14 = *(v0 + 32);
      v15 = [v11 title];

      __swift_project_boxed_opaque_existential_1((v14 + 16), *(v14 + 40));
      OUTLINED_FUNCTION_13_5();
      dispatch thunk of DeviceState.siriLocale.getter();
      Locale.identifier.getter();
      v1 = v13 + 8;
      v16 = OUTLINED_FUNCTION_20_1();
      v17(v16);
      v18 = String._bridgeToObjectiveC()();

      v19 = [v15 localizedStringForLocaleIdentifier:v18];

      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = OUTLINED_FUNCTION_75_1();
    *(v0 + 88) = v22;
    v22[2] = v1;
    v22[3] = v12;
    v22[4] = v21;
    OUTLINED_FUNCTION_6_17();
    v23 = swift_task_alloc();
    *(v0 + 96) = v23;
    *v23 = v0;
    OUTLINED_FUNCTION_38_6(v23);
    OUTLINED_FUNCTION_60_2();
    OUTLINED_FUNCTION_78();

    __asm { BRAA            X5, X16 }
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 72) = v2;
  *v2 = v3;
  v2[1] = LinkActionDialogTemplating.makeParameterValueConfirmationPattern_preRFv2(customPrompt:parameterValue:);
  OUTLINED_FUNCTION_78();

  return LNDialog.asSpeakableString.getter(v4);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v4 + 104) = v0;

  if (!v0)
  {
    *(v4 + 112) = v1;
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of Siri_Nlu_External_UserDialogAct?(*(v0 + 64), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_6();
  v2 = *(v0 + 112);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 64);

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();

  return v2();
}

void LinkActionDialogTemplating.makeParameterValueConfirmationPattern_preRFv2(customPrompt:parameterValue:)()
{
  OUTLINED_FUNCTION_24_1();
  v2 = [*(v0 + 24) displayRepresentation];
  v3 = v2;
  if (v2)
  {
    v4 = *(v0 + 48);
    v5 = *(v0 + 32);
    v6 = [v2 title];

    __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
    OUTLINED_FUNCTION_13_5();
    dispatch thunk of DeviceState.siriLocale.getter();
    Locale.identifier.getter();
    v1 = v4 + 8;
    v7 = OUTLINED_FUNCTION_20_1();
    v8(v7);
    v9 = String._bridgeToObjectiveC()();

    v10 = [v6 localizedStringForLocaleIdentifier:v9];

    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = OUTLINED_FUNCTION_75_1();
  *(v0 + 88) = v13;
  v13[2] = v1;
  v13[3] = v3;
  v13[4] = v12;
  OUTLINED_FUNCTION_6_17();
  v14 = swift_task_alloc();
  *(v0 + 96) = v14;
  *v14 = v0;
  OUTLINED_FUNCTION_38_6(v14);
  OUTLINED_FUNCTION_60_2();
  OUTLINED_FUNCTION_78();

  __asm { BRAA            X5, X16 }
}

uint64_t closure #1 in LinkActionDialogTemplating.makeParameterValueConfirmationPattern_preRFv2(customPrompt:parameterValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - v8;
  outlined assign with copy of SpeakableString?(a2, a1);
  if (a4)
  {

    SpeakableString.init(print:speak:)();
    v10 = type metadata accessor for SpeakableString();
    v11 = 0;
  }

  else
  {
    v10 = type metadata accessor for SpeakableString();
    v11 = 1;
  }

  __swift_storeEnumTagSinglePayload(v9, v11, 1, v10);
  v12 = type metadata accessor for RunLinkActionParameterConfirmationParameters(0);
  return outlined assign with take of SpeakableString?(v9, a1 + *(v12 + 24));
}

uint64_t LinkActionDialogTemplating.extractDialogAndParamDetails(from:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getErrorValue();
  v9 = dispatch thunk of Error._code.getter();
  if (v9 == 2005)
  {
    v14 = 1;
    v15 = 1;
    goto LABEL_15;
  }

  if (v9 == 2014)
  {
    v10 = _convertErrorToNSError(_:)();
    v11 = [v10 ln_staticDeferredLocalizedString];

    if (v11)
    {
      __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
      dispatch thunk of DeviceState.siriLocale.getter();
      Locale.identifier.getter();
      (*(v6 + 8))(v8, v5);
      v12 = String._bridgeToObjectiveC()();

      v13 = [v11 localizedStringForLocaleIdentifier:v12];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      goto LABEL_7;
    }

    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.voiceCommands);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "#LinkActionDialogTemplating could not create error dialog from .localizedStringResource error.", v19, 2u);
    }

LABEL_14:
    v15 = 0;
    v14 = 1;
    goto LABEL_15;
  }

  if (v9 != 2009)
  {
    goto LABEL_14;
  }

  swift_getErrorValue();
  Error.localizedDescription.getter();
LABEL_7:
  SpeakableString.init(print:speak:)();
  v14 = 0;
  v15 = 0;
LABEL_15:
  v20 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(a1, v14, 1, v20);
  return v15;
}

uint64_t LinkActionDialogTemplating.makeFailureHandlingIntentDialog(error:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v1[4] = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_12_0();
  LinkActionDialogTemplating.extractDialogAndParamDetails(from:)(v0[4], v0[2]);
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_6_17();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = LinkActionDialogTemplating.makeFailureHandlingIntentDialog(error:);
  v3 = OUTLINED_FUNCTION_73(v0[4]);

  return v5(v3);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v4 + 48) = v0;

  if (!v0)
  {
    *(v4 + 56) = v1;
  }

  OUTLINED_FUNCTION_18_0();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of Siri_Nlu_External_UserDialogAct?(*(v0 + 32), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_6();
  v2 = *(v0 + 56);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of Siri_Nlu_External_UserDialogAct?(*(v0 + 32), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();

  return v1();
}

uint64_t LinkActionDialogTemplating.makeGenericError()()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 16) = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v2);
  *(v1 + 24) = OUTLINED_FUNCTION_28();
  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

{
  OUTLINED_FUNCTION_12_0();
  type metadata accessor for SpeakableString();
  v1 = OUTLINED_FUNCTION_27_7();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_6_17();
  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = LinkActionDialogTemplating.makeGenericError();
  v5 = OUTLINED_FUNCTION_73(*(v0 + 24));

  return (v7)(v5, 0);
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_1();
  *v6 = v5;
  v7 = *v1;
  *v6 = *v1;
  *(v5 + 40) = v0;

  outlined destroy of Siri_Nlu_External_UserDialogAct?(*(v4 + 24), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v8);
  }

  else
  {

    v9 = *(v7 + 8);

    return v9(v3);
  }
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t LinkActionDialogTemplating.makeFailureHandlingIntentDialog_preRFv2(error:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = LinkActionDialogTemplating.extractDialogAndParamDetails(from:)(v0[5], v0[3]);
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_6_17();
  v8 = (v2 + *v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[6] = v3;
  *v3 = v4;
  v3[1] = LinkActionDialogTemplating.makeFailureHandlingIntentDialog_preRFv2(error:);
  v5 = v0[5];
  v6 = v0[2];

  return (v8)(v6, v5, v1 & 1);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of Siri_Nlu_External_UserDialogAct?(*(v0 + 40), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();

  return v1();
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of Siri_Nlu_External_UserDialogAct?(*(v0 + 40), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();

  return v1();
}

uint64_t LinkActionDialogTemplating.makeNeedsDisambiguationTitle_preRFv2(customPrompt:items:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_46_6(v1, v2);
  v3 = type metadata accessor for TemplatingText();
  v0[5] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v0[6] = v4;
  v0[7] = OUTLINED_FUNCTION_28();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow17TemplatingSectionVSgMd, &_s11SiriKitFlow17TemplatingSectionVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v0[8] = OUTLINED_FUNCTION_28();
  v6 = type metadata accessor for TemplatingResult();
  v0[9] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v0[10] = v7;
  v0[11] = OUTLINED_FUNCTION_28();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v8);
  v0[12] = OUTLINED_FUNCTION_28();
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9);
}

{
  OUTLINED_FUNCTION_12_0();
  if (v0[2])
  {
    v1 = swift_task_alloc();
    v2 = OUTLINED_FUNCTION_18_14(v1);
    *v2 = v3;
    v2[1] = LinkActionDialogTemplating.makeNeedsDisambiguationTitle_preRFv2(customPrompt:items:);
    v4 = v0[12];

    return LNDialog.asSpeakableString.getter(v4);
  }

  else
  {
    type metadata accessor for SpeakableString();
    v6 = OUTLINED_FUNCTION_7_15();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
    OUTLINED_FUNCTION_19_10();
    OUTLINED_FUNCTION_2_26();
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[14] = v10;
    *v10 = v11;
    v12 = OUTLINED_FUNCTION_28_6(v10);

    return v13(v12);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_2_26();
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 112) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_28_6(v1);

  return v4(v3);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_12_0();
  outlined destroy of Siri_Nlu_External_UserDialogAct?(*(v0 + 96), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();

  return v1();
}

uint64_t LinkActionDialogTemplating.makeNeedsDisambiguationTitle_preRFv2(customPrompt:items:)(uint64_t a1)
{
  v32 = v1;
  v2 = v1[8];
  v3 = TemplatingResult.sections.getter();
  specialized Collection.first.getter(v3, v2);

  v4 = type metadata accessor for TemplatingSection();
  OUTLINED_FUNCTION_96(v4);
  if (v5)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v3, &_s11SiriKitFlow17TemplatingSectionVSgMd, &_s11SiriKitFlow17TemplatingSectionVSgMR);
    v8 = 0;
    v10 = 0;
  }

  else
  {
    TemplatingSection.content.getter();
    OUTLINED_FUNCTION_21_2();
    v6 = OUTLINED_FUNCTION_22_4();
    v7(v6);
    v8 = TemplatingText.text.getter();
    v10 = v9;
    v11 = OUTLINED_FUNCTION_56_1();
    v12(v11);
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.voiceCommands);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  v16 = os_log_type_enabled(v14, v15);
  v18 = v1[11];
  v17 = v1[12];
  v20 = v1[9];
  v19 = v1[10];
  if (v16)
  {
    v30 = v1[9];
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v31 = v22;
    *v21 = 136315138;
    v28 = v18;
    v29 = v17;
    v23 = v8;
    if (v10)
    {
      v24 = v10;
    }

    else
    {
      v8 = 0x2D6C696E2DLL;
      v24 = 0xE500000000000000;
    }

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v24, &v31);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_0, v14, v15, "#LinkActionDialogTemplating makeNeedsDisambiguationTitle (pre-RF2.0) needsDisambiguationText=%s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);

    (*(v19 + 8))(v28, v30);
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v29, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  }

  else
  {

    (*(v19 + 8))(v18, v20);
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v23 = v8;
  }

  OUTLINED_FUNCTION_12_7();

  return v26(v23, v10);
}

uint64_t LinkActionDialogTemplating.makeConfirmAndCancelButton(confirmationActionName:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for Locale();
  v1[4] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_28();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_76_2(v5);
  *v6 = v7;
  v6[1] = LinkActionDialogTemplating.makeConfirmAndCancelButton(confirmationActionName:);

  return LinkActionDialogTemplating.makeConfirmationButtonLabel(confirmationVerb:)();
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  v3[8] = v6;
  v3[9] = v7;

  if (v0)
  {

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {
    v10 = swift_task_alloc();
    v3[10] = v10;
    *v10 = v5;
    v10[1] = LinkActionDialogTemplating.makeConfirmAndCancelButton(confirmationActionName:);

    return static LabelTemplates.cancel()();
  }
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 88) = v6;
  *(v3 + 96) = v7;

  if (v0)
  {

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {
    OUTLINED_FUNCTION_18_0();

    return _swift_task_switch(v10);
  }
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_9_0();
  v7 = v6;
  OUTLINED_FUNCTION_4_1();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  v7[14] = v0;

  if (v0)
  {
  }

  else
  {
    v7[15] = v3;
    v7[16] = v5;
  }

  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v11);
}

{
  OUTLINED_FUNCTION_12_0();

  v1 = OUTLINED_FUNCTION_57_3();

  return v2(v1);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_9_0();
  v7 = v6;
  OUTLINED_FUNCTION_4_1();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  v7[18] = v0;

  if (v0)
  {
  }

  else
  {
    v7[19] = v3;
    v7[20] = v5;
  }

  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v11);
}

{
  OUTLINED_FUNCTION_12_0();

  v1 = OUTLINED_FUNCTION_57_3();

  return v2(v1);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  v3[23] = v7;
  v3[24] = v8;
  v3[25] = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 192);

  if (v1)
  {
    v2 = *(v0 + 192);
    v3 = (v0 + 184);
  }

  else
  {
    v2 = *(v0 + 72);
    v3 = (v0 + 64);
  }

  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = *v3;

  v7 = *(v0 + 8);

  return v7(v6, v2, v5, v4);
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v1();
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v1();
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v1();
}

uint64_t LinkActionDialogTemplating.makeConfirmAndCancelButton(confirmationActionName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  v11 = v10[2];
  if (!v11)
  {
LABEL_19:

    OUTLINED_FUNCTION_25_2();

    return v38(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10);
  }

  v12 = v11;
  v13 = [v12 type];
  if (!v13)
  {

    v24 = swift_task_alloc();
    v10[17] = v24;
    *v24 = v10;
    v24[1] = LinkActionDialogTemplating.makeConfirmAndCancelButton(confirmationActionName:);
    OUTLINED_FUNCTION_73(0x65756E69746E6F63);
    goto LABEL_10;
  }

  if (v13 == &dword_0 + 2)
  {
    v18 = v10[5];
    v17 = v10[6];
    v19 = v10[4];
    __swift_project_boxed_opaque_existential_1((v10[3] + 16), *(v10[3] + 40));
    OUTLINED_FUNCTION_56_1();
    dispatch thunk of DeviceState.siriLocale.getter();
    Locale.identifier.getter();
    (*(v18 + 8))(v17, v19);
    v20 = [v12 acceptLabel];
    if (v20)
    {
      v21 = v20;

      v22 = String._bridgeToObjectiveC()();
      v23 = [v21 localizedStringForLocaleIdentifier:v22];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v29 = [v12 denyLabel];
    if (v29)
    {
      v30 = v29;

      v31 = String._bridgeToObjectiveC()();

      v32 = [v30 localizedStringForLocaleIdentifier:v31];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
    }

    goto LABEL_19;
  }

  if (v13 == &dword_0 + 1)
  {

    v14 = swift_task_alloc();
    v15 = OUTLINED_FUNCTION_31_4(v14);
    *v15 = v16;
    v15[1] = LinkActionDialogTemplating.makeConfirmAndCancelButton(confirmationActionName:);
    OUTLINED_FUNCTION_73(0x7472617473);
LABEL_10:
    OUTLINED_FUNCTION_25_2();

    return LinkActionDialogTemplating.makeConfirmationButtonLabel(confirmationVerb:)();
  }

  v10[21] = LNConfirmationActionName.toIntentVerb()()._object;
  v27 = swift_task_alloc();
  v10[22] = v27;
  *v27 = v10;
  v27[1] = LinkActionDialogTemplating.makeConfirmAndCancelButton(confirmationActionName:);
  OUTLINED_FUNCTION_25_2();

  return LinkActionDialogTemplating.makeConfirmationButtonLabelForCategory(verb:)();
}

uint64_t LinkActionDialogTemplating.makeConfirmationButtonLabel(confirmationVerb:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_46_6(v1, v2);
  v3 = type metadata accessor for TemplatingText();
  v0[5] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v0[6] = v4;
  v0[7] = OUTLINED_FUNCTION_28();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow17TemplatingSectionVSgMd, &_s11SiriKitFlow17TemplatingSectionVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v0[8] = OUTLINED_FUNCTION_28();
  v6 = type metadata accessor for TemplatingResult();
  v0[9] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v0[10] = v7;
  v0[11] = OUTLINED_FUNCTION_28();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v8);
  v0[12] = OUTLINED_FUNCTION_27();
  v0[13] = swift_task_alloc();
  v9 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  v0[14] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v0[15] = v10;
  v0[16] = OUTLINED_FUNCTION_28();
  v11 = type metadata accessor for SpeakableString();
  v0[17] = v11;
  OUTLINED_FUNCTION_5_0(v11);
  v0[18] = v12;
  v0[19] = OUTLINED_FUNCTION_28();
  v13 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v13);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 168) = v0;

  v7 = *(v4 + 104);
  if (!v0)
  {
    *(v5 + 176) = v3;
  }

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 192) = v0;

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9);
}

void LinkActionDialogTemplating.makeConfirmationButtonLabel(confirmationVerb:)()
{
  OUTLINED_FUNCTION_24_1();
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v6 = v0[2];
  v5 = v0[3];

  OUTLINED_FUNCTION_74_1(v6, v5);
  (*(v3 + 104))(v2, enum case for RFFeatureFlags.ResponseFramework._SMART(_:), v4);
  v7 = RFFeatureFlags.ResponseFramework.isEnabled.getter();
  v8 = OUTLINED_FUNCTION_9_3();
  v9(v8);
  v10 = *(v1 + 16);
  v11 = v0[19];
  if (v7)
  {
    v10(v0[13], v11, v0[17]);
    OUTLINED_FUNCTION_45_4();
    OUTLINED_FUNCTION_61_0();
    OUTLINED_FUNCTION_2_26();
    v12 = swift_task_alloc();
    v0[20] = v12;
    *v12 = v0;
    v12[1] = LinkActionDialogTemplating.makeConfirmationButtonLabel(confirmationVerb:);
    OUTLINED_FUNCTION_73(v0[13]);
    OUTLINED_FUNCTION_103();

    __asm { BRAA            X1, X16 }
  }

  v10(v0[12], v11, v0[17]);
  OUTLINED_FUNCTION_45_4();
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_2_26();
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[23] = v15;
  *v15 = v16;
  v15[1] = LinkActionDialogTemplating.makeConfirmationButtonLabel(confirmationVerb:);
  OUTLINED_FUNCTION_103();

  __asm { BRAA            X2, X16 }
}

uint64_t LinkActionDialogTemplating.makeConfirmationButtonLabel(confirmationVerb:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  dispatch thunk of LabelExecutionResult.subscript.getter();

  v13 = *(v12 + 152);
  OUTLINED_FUNCTION_81_1();
  v14(v13);

  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_27_0();

  return v18(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  v13 = v12[8];
  v14 = TemplatingResult.sections.getter();
  specialized Collection.first.getter(v14, v13);

  v15 = type metadata accessor for TemplatingSection();
  OUTLINED_FUNCTION_96(v15);
  if (v16)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v14, &_s11SiriKitFlow17TemplatingSectionVSgMd, &_s11SiriKitFlow17TemplatingSectionVSgMR);
  }

  else
  {
    TemplatingSection.content.getter();
    OUTLINED_FUNCTION_21_2();
    v17 = OUTLINED_FUNCTION_22_4();
    v18(v17);
    TemplatingText.text.getter();
    v19 = OUTLINED_FUNCTION_20_1();
    v20(v19);
  }

  (*(v12[10] + 8))(v12[11], v12[9]);
  v21 = v12[19];
  OUTLINED_FUNCTION_81_1();
  v22(v21);

  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_22_4();
  OUTLINED_FUNCTION_27_0();

  return v26(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t LinkActionDialogTemplating.makeConfirmationButtonLabel(confirmationVerb:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  v10 = OUTLINED_FUNCTION_59_4();
  v11(v10);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_25_2();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  v10 = OUTLINED_FUNCTION_59_4();
  v11(v10);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_25_2();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t LinkActionDialogTemplating.makeConfirmationButtonLabelForCategory(verb:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_46_6(v1, v2);
  v3 = type metadata accessor for TemplatingText();
  v0[5] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v0[6] = v4;
  v0[7] = OUTLINED_FUNCTION_28();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow17TemplatingSectionVSgMd, &_s11SiriKitFlow17TemplatingSectionVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v0[8] = OUTLINED_FUNCTION_28();
  v6 = type metadata accessor for TemplatingResult();
  v0[9] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v0[10] = v7;
  v0[11] = OUTLINED_FUNCTION_28();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v8);
  v0[12] = OUTLINED_FUNCTION_27();
  v0[13] = swift_task_alloc();
  v9 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  v0[14] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v0[15] = v10;
  v0[16] = OUTLINED_FUNCTION_28();
  v11 = type metadata accessor for SpeakableString();
  v0[17] = v11;
  OUTLINED_FUNCTION_5_0(v11);
  v0[18] = v12;
  v0[19] = OUTLINED_FUNCTION_28();
  v13 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v13);
}

{
  OUTLINED_FUNCTION_15_2();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 176) = v0;

  v7 = *(v4 + 104);
  if (!v0)
  {
    *(v5 + 184) = v3;
  }

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 200) = v0;

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9);
}

uint64_t LinkActionDialogTemplating.makeConfirmationButtonLabelForCategory(verb:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v15 = v14[18];
  v17 = v14[15];
  v16 = v14[16];
  v18 = v14[14];
  v19 = v14[3];
  v20 = v14[2];
  __swift_project_boxed_opaque_existential_1((v14[4] + 16), *(v14[4] + 40));
  v21 = OUTLINED_FUNCTION_22_4();
  v14[20] = DeviceState.asSiriKitDeviceState()(v21, v22);

  OUTLINED_FUNCTION_74_1(v20, v19);
  (*(v17 + 104))(v16, enum case for RFFeatureFlags.ResponseFramework._SMART(_:), v18);
  v23 = RFFeatureFlags.ResponseFramework.isEnabled.getter();
  v24 = OUTLINED_FUNCTION_56_1();
  v25(v24);
  v26 = *(v15 + 16);
  v27 = v14[19];
  v28 = v14[17];
  v29 = v14[4];
  if (v23)
  {
    v30 = *(v29 + 80);
    v26(v14[13], v27, v14[17]);
    OUTLINED_FUNCTION_49_3();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v28);
    v34 = *(*v30 + class metadata base offset for RunVoiceCommandCATsSimple + 232);
    v62 = *v30 + class metadata base offset for RunVoiceCommandCATsSimple + 232;

    v60 = v34 + *v34;
    v35 = swift_task_alloc();
    v14[21] = v35;
    *v35 = v14;
    v35[1] = LinkActionDialogTemplating.makeConfirmationButtonLabelForCategory(verb:);
    OUTLINED_FUNCTION_6_1();

    return v38(v36, v37, v38, v39, v40, v41, v42, v43, a9, v60, v62, a12, a13, a14);
  }

  else
  {
    v45 = *(v29 + 72);
    v26(v14[12], v27, v14[17]);
    OUTLINED_FUNCTION_49_3();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v28);
    v49 = *(*v45 + class metadata base offset for RunVoiceCommandCATs + 112);
    v63 = *v45 + class metadata base offset for RunVoiceCommandCATs + 112;

    v61 = v49 + *v49;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v14[24] = v50;
    *v50 = v51;
    v50[1] = LinkActionDialogTemplating.makeConfirmationButtonLabelForCategory(verb:);
    OUTLINED_FUNCTION_6_1();

    return v55(v52, v53, v54, v55, v56, v57, v58, v59, a9, v61, v63, a12, a13, a14);
  }
}

{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v15 = v14[8];
  v16 = TemplatingResult.sections.getter();
  specialized Collection.first.getter(v16, v15);

  v17 = type metadata accessor for TemplatingSection();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v17);
  v19 = v14[19];
  v20 = v14[17];
  v21 = v14[18];
  v22 = v14[8];
  if (EnumTagSinglePayload == 1)
  {

    v23 = OUTLINED_FUNCTION_13_5();
    v24(v23);
    (*(v21 + 8))(v19, v20);
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v22, &_s11SiriKitFlow17TemplatingSectionVSgMd, &_s11SiriKitFlow17TemplatingSectionVSgMR);
  }

  else
  {
    a10 = v14[19];
    a11 = v14[17];
    v25 = v14[6];
    v26 = v14[7];
    a9 = v14[5];
    TemplatingSection.content.getter();
    OUTLINED_FUNCTION_21_2();
    (*(v27 + 8))(v22, v17);
    TemplatingText.text.getter();

    (*(v25 + 8))(v26, a9);
    v28 = OUTLINED_FUNCTION_13_5();
    v29(v28);
    (*(v21 + 8))(a10, a11);
  }

  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_6_1();

  return v33(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14);
}

uint64_t LinkActionDialogTemplating.makeConfirmationButtonLabelForCategory(verb:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  *(v10 + 208) = 2;
  dispatch thunk of LabelExecutionResult.subscript.getter();

  v11 = OUTLINED_FUNCTION_20_1();
  v12(v11);

  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_25_2();

  return v16(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t LinkActionDialogTemplating.makeConfirmationButtonLabelForCategory(verb:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_67_1();
  v12 = OUTLINED_FUNCTION_9_3();
  v13(v12);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_27_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_67_1();
  v12 = OUTLINED_FUNCTION_9_3();
  v13(v12);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_27_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t LinkActionDialogTemplating.makeContinueButton()()
{
  OUTLINED_FUNCTION_8_0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = LinkActionDialogTemplating.makeContinueButton();
  OUTLINED_FUNCTION_73(0x65756E69746E6F63);

  return LinkActionDialogTemplating.makeConfirmationButtonLabel(confirmationVerb:)();
}

{
  OUTLINED_FUNCTION_12_0();
  v4 = v3;
  OUTLINED_FUNCTION_18_3();
  v5 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  OUTLINED_FUNCTION_12_7();
  if (!v0)
  {
    v7 = v1;
    v8 = v4;
  }

  return v9(v7, v8);
}

uint64_t LinkActionDialogTemplating.actionPerformedDialog(customPrompt:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v1[4] = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_12_0();
  if (*(v0 + 16))
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 40) = v1;
    *v1 = v2;
    v3 = OUTLINED_FUNCTION_73_2(v1);

    return LNDialog.asSpeakableString.getter(v3);
  }

  else
  {
    type metadata accessor for SpeakableString();
    v5 = OUTLINED_FUNCTION_7_15();
    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
    OUTLINED_FUNCTION_24_10();
    OUTLINED_FUNCTION_2_26();
    v9 = swift_task_alloc();
    v10 = OUTLINED_FUNCTION_57_1(v9);
    *v10 = v11;
    v12 = OUTLINED_FUNCTION_10_20(v10);

    return v13(v12);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_24_10();
  OUTLINED_FUNCTION_2_26();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_57_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_20(v1);

  return v4(v3);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v4 + 56) = v0;

  if (!v0)
  {
    *(v4 + 64) = v1;
  }

  OUTLINED_FUNCTION_18_0();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of Siri_Nlu_External_UserDialogAct?(*(v0 + 32), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_6();
  v2 = *(v0 + 64);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of Siri_Nlu_External_UserDialogAct?(*(v0 + 32), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();

  return v1();
}

uint64_t LinkActionDialogTemplating.actionPerformedDialog_preRFv2(customPrompt:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for TemplatingText();
  v1[4] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_28();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow17TemplatingSectionVSgMd, &_s11SiriKitFlow17TemplatingSectionVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v1[7] = OUTLINED_FUNCTION_28();
  v6 = type metadata accessor for TemplatingResult();
  v1[8] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v1[9] = v7;
  v1[10] = OUTLINED_FUNCTION_28();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v8);
  v1[11] = OUTLINED_FUNCTION_28();
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9);
}

{
  OUTLINED_FUNCTION_12_0();
  if (*(v0 + 16))
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 96) = v1;
    *v1 = v2;
    v3 = OUTLINED_FUNCTION_72_2(v1);

    return LNDialog.asSpeakableString.getter(v3);
  }

  else
  {
    type metadata accessor for SpeakableString();
    v5 = OUTLINED_FUNCTION_7_15();
    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
    OUTLINED_FUNCTION_19_10();
    OUTLINED_FUNCTION_2_26();
    v9 = swift_task_alloc();
    v10 = OUTLINED_FUNCTION_18_14(v9);
    *v10 = v11;
    v12 = OUTLINED_FUNCTION_23_11(v10);

    return v13(v12);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_2_26();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18_14(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_23_11(v1);

  return v4(v3);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_12_0();
  outlined destroy of Siri_Nlu_External_UserDialogAct?(*(v0 + 88), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();

  return v1();
}

uint64_t LinkActionDialogTemplating.actionPerformedDialog_preRFv2(customPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  v13 = v12[7];
  v14 = TemplatingResult.sections.getter();
  specialized Collection.first.getter(v14, v13);

  v15 = type metadata accessor for TemplatingSection();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v15);
  v17 = v12[11];
  v18 = v12[7];
  if (EnumTagSinglePayload == 1)
  {
    v19 = OUTLINED_FUNCTION_56_1();
    v20(v19);
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v18, &_s11SiriKitFlow17TemplatingSectionVSgMd, &_s11SiriKitFlow17TemplatingSectionVSgMR);
  }

  else
  {
    v22 = v12[5];
    v21 = v12[6];
    v23 = v12[4];
    TemplatingSection.content.getter();
    OUTLINED_FUNCTION_21_2();
    (*(v24 + 8))(v18, v15);
    TemplatingText.text.getter();
    (*(v22 + 8))(v21, v23);
    v25 = OUTLINED_FUNCTION_56_1();
    v26(v25);
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  }

  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_27_0();

  return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

uint64_t LinkActionDialogTemplating.actionConfirmationHeader(customDialog:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v1[4] = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_12_0();
  if (*(v0 + 16))
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 40) = v1;
    *v1 = v2;
    v3 = OUTLINED_FUNCTION_73_2(v1);

    return LNDialog.asSpeakableString.getter(v3);
  }

  else
  {
    type metadata accessor for SpeakableString();
    v5 = OUTLINED_FUNCTION_7_15();
    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
    OUTLINED_FUNCTION_24_10();
    OUTLINED_FUNCTION_2_26();
    v9 = swift_task_alloc();
    v10 = OUTLINED_FUNCTION_57_1(v9);
    *v10 = v11;
    v12 = OUTLINED_FUNCTION_10_20(v10);

    return v13(v12);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_24_10();
  OUTLINED_FUNCTION_2_26();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_57_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_20(v1);

  return v4(v3);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v4 + 56) = v0;

  if (!v0)
  {
    *(v4 + 64) = v1;
  }

  OUTLINED_FUNCTION_18_0();

  return _swift_task_switch(v8);
}

uint64_t LinkActionDialogTemplating.actionConfirmationHeader_preRFv2(customDialog:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for TemplatingText();
  v1[4] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_28();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow17TemplatingSectionVSgMd, &_s11SiriKitFlow17TemplatingSectionVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v1[7] = OUTLINED_FUNCTION_28();
  v6 = type metadata accessor for TemplatingResult();
  v1[8] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v1[9] = v7;
  v1[10] = OUTLINED_FUNCTION_28();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v8);
  v1[11] = OUTLINED_FUNCTION_28();
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9);
}

{
  OUTLINED_FUNCTION_12_0();
  if (*(v0 + 16))
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 96) = v1;
    *v1 = v2;
    v3 = OUTLINED_FUNCTION_72_2(v1);

    return LNDialog.asSpeakableString.getter(v3);
  }

  else
  {
    type metadata accessor for SpeakableString();
    v5 = OUTLINED_FUNCTION_7_15();
    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
    OUTLINED_FUNCTION_19_10();
    OUTLINED_FUNCTION_2_26();
    v9 = swift_task_alloc();
    v10 = OUTLINED_FUNCTION_18_14(v9);
    *v10 = v11;
    v12 = OUTLINED_FUNCTION_23_11(v10);

    return v13(v12);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_2_26();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18_14(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_23_11(v1);

  return v4(v3);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

void *LinkActionDialogTemplating.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 88));
  return v0;
}

uint64_t LinkActionDialogTemplating.__deallocating_deinit()
{
  LinkActionDialogTemplating.deinit();

  return swift_deallocClassInstance();
}

void *specialized LinkActionDialogTemplating.init(deviceState:runLinkActionCatWrapper:runLinkActionCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:linkActionPatterns:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  a7[14] = a8;
  a7[15] = a9;
  __swift_allocate_boxed_opaque_existential_1(a7 + 11);
  OUTLINED_FUNCTION_21_2();
  (*(v15 + 32))();
  outlined init with take of Output(a1, (a7 + 2));
  a7[7] = a2;
  a7[8] = a3;
  a7[9] = a4;
  a7[10] = a5;
  return a7;
}

uint64_t outlined assign with copy of SpeakableString?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of SpeakableString?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_11_13@<X0>(uint64_t a1@<X8>)
{
  __swift_project_boxed_opaque_existential_1((a1 + 88), *(a1 + 112));

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_33_5(uint64_t a1)
{
  *(a1 + 16) = v1;

  specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, a1, v2);
}

void OUTLINED_FUNCTION_34_8(uint64_t a1)
{
  *(a1 + 16) = v1;

  specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), a1, v2);
}

void OUTLINED_FUNCTION_35_7(uint64_t a1)
{
  *(a1 + 16) = v2;

  specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, a1, v1);
}

uint64_t OUTLINED_FUNCTION_43_4(uint64_t a1)
{
  *(v1 + 24) = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_44_5(uint64_t a1)
{
  *(v1 + 16) = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_45_4()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_46_6(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return 0;
}

void *OUTLINED_FUNCTION_54_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return specialized LinkActionDialogTemplating.init(deviceState:runLinkActionCatWrapper:runLinkActionCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:linkActionPatterns:)(v14, v13, v12, v11, v10, v16, v9, v15, a9);
}

uint64_t OUTLINED_FUNCTION_66_1(uint64_t a1)
{

  return static Array._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t OUTLINED_FUNCTION_67_1()
{
}

uint64_t OUTLINED_FUNCTION_74_1(uint64_t a1, uint64_t a2)
{

  return SpeakableString.init(print:speak:)();
}

uint64_t OUTLINED_FUNCTION_75_1()
{
  *(v0 + 80) = v1;
  __swift_project_boxed_opaque_existential_1((*(v0 + 32) + 88), *(*(v0 + 32) + 112));

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_90_0()
{
}

uint64_t OUTLINED_FUNCTION_91(uint64_t a1)
{

  return static Array._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t OUTLINED_FUNCTION_92_0()
{
}

unint64_t OUTLINED_FUNCTION_93_0()
{

  return type metadata accessor for LNSystemProtocol();
}

uint64_t CustomIntentExecutionFlow.__allocating_init(runner:intent:voiceCommandName:deviceIdiom:deviceState:aceServiceInvoker:appPolicyHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  CustomIntentExecutionFlow.init(runner:intent:voiceCommandName:deviceIdiom:deviceState:aceServiceInvoker:appPolicyHandler:)(a1, a2, a3, a4, a5, a6 & 1, a7, a8, a9, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, vars0);
  return v17;
}

void CustomIntentExecutionFlow.state.didset()
{
  v1 = v0;
  v2 = type metadata accessor for CustomIntentExecutionFlow.State(0);
  __chkstk_darwin(v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.voiceCommands);

  v15 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    v9 = OBJC_IVAR____TtC18SiriLinkFlowPlugin25CustomIntentExecutionFlow_state;
    swift_beginAccess();
    outlined init with copy of CustomIntentExecutionFlow.State(v1 + v9, v4);
    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_0, v15, v6, "#CustomIntentExecutionFlow transitioned to state=%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  else
  {
    v13 = v15;
  }
}

uint64_t CustomIntentExecutionFlow.state.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18SiriLinkFlowPlugin25CustomIntentExecutionFlow_state;
  swift_beginAccess();
  outlined assign with copy of CustomIntentExecutionFlow.State(a1, v1 + v3);
  swift_endAccess();
  CustomIntentExecutionFlow.state.didset();
  return outlined destroy of CustomIntentExecutionFlow.State(a1);
}

uint64_t CustomIntentExecutionFlow.exitValue.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for CustomIntentExecutionFlow.State(0);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = OBJC_IVAR____TtC18SiriLinkFlowPlugin25CustomIntentExecutionFlow_state;
  swift_beginAccess();
  outlined init with copy of CustomIntentExecutionFlow.State(v1 + v7, v6);
  OUTLINED_FUNCTION_95();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 7:
      v12 = &enum case for RCHFlowResult.cancelled<A, B>(_:);
      goto LABEL_7;
    case 3:
      v11 = *(v6 + 8);
      *a1 = *v6;
      *(a1 + 8) = v11;
      v12 = &enum case for RCHFlowResult.error<A, B>(_:);
LABEL_7:
      v13 = *v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo8INIntentCSo0F8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo8INIntentCSo0F8ResponseCGMR);
      OUTLINED_FUNCTION_7();
      return (*(v14 + 104))(a1, v13);
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo8INIntentCSo0F8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo8INIntentCSo0F8ResponseCGMR);
      OUTLINED_FUNCTION_7();
      return (*(v9 + 32))(a1, v6);
    default:
      v15 = lazy protocol witness table accessor for type RunVoiceShortcutFlowErrors and conformance RunVoiceShortcutFlowErrors();
      v16 = OUTLINED_FUNCTION_16_6(&type metadata for RunVoiceShortcutFlowErrors, v15);
      *v17 = 0;
      *a1 = v16;
      *(a1 + 8) = 0;
      v18 = enum case for RCHFlowResult.error<A, B>(_:);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo8INIntentCSo0F8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo8INIntentCSo0F8ResponseCGMR);
      OUTLINED_FUNCTION_7();
      (*(v19 + 104))(a1, v18);
      return outlined destroy of CustomIntentExecutionFlow.State(v6);
  }
}

void CustomIntentExecutionFlow.init(runner:intent:voiceCommandName:deviceIdiom:deviceState:aceServiceInvoker:appPolicyHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  OUTLINED_FUNCTION_40_0();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v69 = v37;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_1();
  v67 = v39;
  v68 = v38;
  __chkstk_darwin(v38);
  OUTLINED_FUNCTION_3();
  v42 = v41 - v40;
  v43 = OBJC_IVAR____TtC18SiriLinkFlowPlugin25CustomIntentExecutionFlow_input;
  v44 = type metadata accessor for Input();
  v45 = v22 + v43;
  v46 = v26;
  __swift_storeEnumTagSinglePayload(v45, 1, 1, v44);
  v22[13] = v34;
  v22[14] = v32;
  v70 = v36;
  outlined init with copy of DeviceState(v36, (v22 + 15));
  outlined init with copy of DeviceState(v26, (v22 + 3));
  outlined init with copy of DeviceState(v24, (v22 + 8));
  if (v28)
  {
    v47 = v26[3];
    v48 = v26[4];
    __swift_project_boxed_opaque_existential_1(v26, v47);
    v30 = DeviceState.currentDevice.getter(v47, v48);
  }

  v22[2] = v30;
  *(v22 + OBJC_IVAR____TtC18SiriLinkFlowPlugin25CustomIntentExecutionFlow_appBlockedByScreentime) = 0;
  outlined init with copy of DeviceState(a21, v22 + OBJC_IVAR____TtC18SiriLinkFlowPlugin25CustomIntentExecutionFlow_appPolicyHandler);
  if (v69)
  {
    v49 = v69;
    v50 = [v49 _metadata];
    v51 = v50;
    if (!v50)
    {
      v52 = [objc_allocWithZone(_INPBIntentMetadata) init];
      if (!v52)
      {
        v51 = 0;
        goto LABEL_8;
      }

      v51 = v52;
    }

    v53 = v50;
    UUID.init()();
    v54 = UUID.uuidString.getter();
    v56 = v55;
    (*(v67 + 8))(v42, v68);
    outlined bridged method (mbnn) of @objc _INPBIntentMetadata.intentId.setter(v54, v56, v51);

LABEL_8:
    [v49 _setMetadata:v51];

    *(v22 + OBJC_IVAR____TtC18SiriLinkFlowPlugin25CustomIntentExecutionFlow_state) = v69;
    goto LABEL_10;
  }

  *(v22 + OBJC_IVAR____TtC18SiriLinkFlowPlugin25CustomIntentExecutionFlow_state) = 0;
LABEL_10:
  type metadata accessor for CustomIntentExecutionFlow.State(0);
  swift_storeEnumTagMultiPayload();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v57 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v57, static Logger.voiceCommands);
  v58 = v69;
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v71 = v62;
    *v61 = 136315138;
    if (v69 && (v63 = outlined bridged method (pb) of @objc INIntent.identifier.getter(v58, &selRef_identifier), v64))
    {
      v65 = v64;
    }

    else
    {

      v65 = 0xE500000000000000;
      v63 = 0x7974706D65;
    }

    v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v65, &v71);

    *(v61 + 4) = v66;
    _os_log_impl(&dword_0, v59, v60, "intent id: %s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    OUTLINED_FUNCTION_15_0(v62);
    OUTLINED_FUNCTION_15_0(v61);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a21);
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  __swift_destroy_boxed_opaque_existential_1Tm(v70);
  __swift_destroy_boxed_opaque_existential_1Tm(v46);
  OUTLINED_FUNCTION_42();
}

uint64_t outlined init with copy of CustomIntentExecutionFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomIntentExecutionFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CustomIntentExecutionFlow.State(uint64_t a1)
{
  v2 = type metadata accessor for CustomIntentExecutionFlow.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void CustomIntentExecutionFlow.on(input:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  v84 = type metadata accessor for CustomIntentExecutionFlow.State(0);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_50_0();
  v81 = v5 - v6;
  __chkstk_darwin(v7);
  v9 = &v79 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo8INIntentCSo0F8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo8INIntentCSo0F8ResponseCGMR);
  OUTLINED_FUNCTION_7_1();
  v82 = v11;
  v83 = v10;
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_50_0();
  v80 = (v12 - v13);
  __chkstk_darwin(v14);
  v16 = &v79 - v15;
  type metadata accessor for Parse.DirectInvocation();
  OUTLINED_FUNCTION_7_1();
  v85 = v17;
  v86 = v18;
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_3();
  v21 = v20 - v19;
  type metadata accessor for Parse();
  OUTLINED_FUNCTION_7_1();
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_3();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  __chkstk_darwin(v26 - 8);
  v28 = &v79 - v27;
  v29 = type metadata accessor for Input();
  OUTLINED_FUNCTION_7();
  (*(v30 + 16))(v28, v3, v29);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v29);
  v31 = OBJC_IVAR____TtC18SiriLinkFlowPlugin25CustomIntentExecutionFlow_input;
  swift_beginAccess();
  outlined assign with take of Input?(v28, v1 + v31);
  swift_endAccess();
  Input.parse.getter();
  v32 = OUTLINED_FUNCTION_62();
  v34 = v33(v32);
  if (v34 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v35 = OUTLINED_FUNCTION_62();
    v36(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR);
    v37 = Parse.ServerConversion.siriKitIntent.getter();
    v38 = [v37 _type];

    if (v38 == &dword_0 + 2)
    {
      v39 = Parse.ServerConversion.siriKitIntent.getter();
      CustomIntentExecutionFlow.processCustomIntentConversionResult(conversionResult:)(v39, 0);
    }

    type metadata accessor for NLIntent();
    OUTLINED_FUNCTION_7();
    (*(v40 + 8))(v25);
  }

  else
  {
    if (v34 != enum case for Parse.directInvocation(_:))
    {
      v48 = OUTLINED_FUNCTION_62();
      v50(v48, v49);
      goto LABEL_21;
    }

    v41 = OUTLINED_FUNCTION_62();
    v42(v41);
    v44 = v85;
    v43 = v86;
    (*(v86 + 32))(v21, v25, v85);
    if (Parse.DirectInvocation.identifier.getter() == 0xD00000000000003BLL && 0x8000000000230BC0 == v45)
    {
    }

    else
    {
      v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v47 & 1) == 0)
      {
        (*(v43 + 8))(v21, v44);
        goto LABEL_21;
      }
    }

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v51 = type metadata accessor for Logger();
    v52 = __swift_project_value_buffer(v51, static Logger.voiceCommands);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = OUTLINED_FUNCTION_52();
      *v55 = 0;
      _os_log_impl(&dword_0, v53, v54, "CustomIntentExecutionFlow on input: direct Invocation done button", v55, 2u);
      OUTLINED_FUNCTION_15_0(v55);
    }

    v56 = OBJC_IVAR____TtC18SiriLinkFlowPlugin25CustomIntentExecutionFlow_state;
    swift_beginAccess();
    outlined init with copy of CustomIntentExecutionFlow.State(v1 + v56, v9);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v58 = v82;
      v57 = v83;
      (*(v82 + 32))(v16, v9, v83);
      (*(v58 + 16))(v81, v16, v57);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_30_8();
      (*(v58 + 8))(v16, v57);
      (*(v43 + 8))(v21, v44);
    }

    else
    {
      outlined destroy of CustomIntentExecutionFlow.State(v9);
      v59 = Parse.DirectInvocation.userData.getter();
      if (v59 && (static ShortcutDoneButtonConverter.toShortcutDoneButton(userData:)(v59, &v87), , (v60 = v88) != 0))
      {
        v62 = v89;
        v61 = v90;
        v91 = v87;
        v63 = v52;
        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_17_11(v65))
        {
          v66 = v62;
          v67 = OUTLINED_FUNCTION_52();
          *v67 = 0;
          _os_log_impl(&dword_0, v64, v63, "CustomIntentExecutionFlow creating exit value with done button.", v67, 2u);
          v68 = v67;
          v62 = v66;
          OUTLINED_FUNCTION_15_0(v68);
        }

        v69 = v80;
        *v80 = v61;
        v69[1] = v60;
        v69[2] = v62;
        v71 = v82;
        v70 = v83;
        (*(v82 + 104))(v69, enum case for RCHFlowResult.complete<A, B>(_:), v83);
        (*(v71 + 16))(v81, v69, v70);
        swift_storeEnumTagMultiPayload();

        v72 = v60;
        v73 = v62;
        OUTLINED_FUNCTION_30_8();
        v92 = v91;
        outlined destroy of Any?(&v92, &_sSSSgMd, &_sSSSgMR);

        (*(v71 + 8))(v69, v70);
        (*(v86 + 8))(v21);
      }

      else
      {
        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_17_11(v75))
        {
          v76 = OUTLINED_FUNCTION_52();
          *v76 = 0;
          OUTLINED_FUNCTION_25(&dword_0, v77, v78, "CustomIntentExecutionFlow on input: incorrect state for done button");
          OUTLINED_FUNCTION_15_0(v76);
        }

        (*(v86 + 8))(v21);
      }
    }
  }

LABEL_21:
  OUTLINED_FUNCTION_42();
}

uint64_t CustomIntentExecutionFlow.execute()()
{
  OUTLINED_FUNCTION_8_0();
  v1[18] = v2;
  v1[19] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo8INIntentCSo0F8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo8INIntentCSo0F8ResponseCGMR);
  v1[20] = v3;
  v1[21] = *(v3 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14RCHFlowFactoryVy0a4LinkC6Plugin012CustomIntentD8StrategyCGMd, &_s11SiriKitFlow14RCHFlowFactoryVy0a4LinkC6Plugin012CustomIntentD8StrategyCGMR);
  v1[24] = v4;
  v1[25] = *(v4 - 8);
  v1[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo8INIntentCSo0G8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo8INIntentCSo0G8ResponseCGMR);
  v1[27] = swift_task_alloc();
  v1[28] = type metadata accessor for CustomIntentExecutionFlow.State(0);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();

  return _swift_task_switch(CustomIntentExecutionFlow.execute());
}

{
  v100 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 152);
  v3 = OBJC_IVAR____TtC18SiriLinkFlowPlugin25CustomIntentExecutionFlow_state;
  swift_beginAccess();
  outlined init with copy of CustomIntentExecutionFlow.State(v2 + v3, v1);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v4 = *(v0 + 232);
      v5 = **(v0 + 240);
      v6 = *(v0 + 152);
      if (!v5)
      {
        v89 = lazy protocol witness table accessor for type RunVoiceShortcutFlowErrors and conformance RunVoiceShortcutFlowErrors();
        v90 = OUTLINED_FUNCTION_16_6(&type metadata for RunVoiceShortcutFlowErrors, v89);
        *v91 = 0;
        *v4 = v90;
        *(v4 + 8) = 0;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_30_8();
        static ExecuteResponse.complete()();
        goto LABEL_40;
      }

      *v4 = v5;
      swift_storeEnumTagMultiPayload();
      v7 = v5;
      OUTLINED_FUNCTION_30_8();
      outlined init with copy of DeviceState(v6 + OBJC_IVAR____TtC18SiriLinkFlowPlugin25CustomIntentExecutionFlow_appPolicyHandler, v0 + 56);
      v8 = outlined bridged method (pb) of @objc INIntent.identifier.getter(v7, &selRef_launchId);
      if (v9)
      {
        v10 = v8;
      }

      else
      {
        v10 = 0xD000000000000013;
      }

      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0x800000000022F740;
      }

      v12 = type metadata accessor for VoiceCommandsScreentimeCheckFlowStrategy();
      v13 = swift_allocObject();
      outlined init with take of AceServiceInvokerAsync((v0 + 56), v13 + 16);
      *(v13 + 56) = v10;
      *(v13 + 64) = v11;
      v98 = v12;
      v99 = lazy protocol witness table accessor for type RunCustomIntentReadingDelegate and conformance RunCustomIntentReadingDelegate(&lazy protocol witness table cache variable for type VoiceCommandsScreentimeCheckFlowStrategy and conformance VoiceCommandsScreentimeCheckFlowStrategy, type metadata accessor for VoiceCommandsScreentimeCheckFlowStrategy, &protocol conformance descriptor for VoiceCommandsScreentimeCheckFlowStrategy);
      *&v97 = v13;

      static OutputPublisherFactory.makeOutputPublisherAsync()();
      v14 = type metadata accessor for ScreentimeCheckFlow();
      OUTLINED_FUNCTION_66(v14);
      *(v0 + 136) = ScreentimeCheckFlow.init(strategy:outputPublisher:)();
      v15 = swift_allocObject();
      *(v15 + 16) = partial apply for implicit closure #3 in implicit closure #2 in CustomIntentExecutionFlow.execute();
      *(v15 + 24) = v6;

      static ExecuteResponse.ongoing<A>(next:childCompletion:)();

      goto LABEL_16;
    case 1u:
      v38 = *(v0 + 152);
      v39 = **(v0 + 240);
      if (*(v38 + OBJC_IVAR____TtC18SiriLinkFlowPlugin25CustomIntentExecutionFlow_appBlockedByScreentime) == 1)
      {
        static ExecuteResponse.complete()();
      }

      else
      {
        v68 = v38[13];
        v69 = v38[14];
        v70 = v38[2];
        type metadata accessor for CustomIntentExecutionFlow(0);
        OUTLINED_FUNCTION_1_30();
        lazy protocol witness table accessor for type RunCustomIntentReadingDelegate and conformance RunCustomIntentReadingDelegate(v71, v72, &protocol conformance descriptor for CustomIntentExecutionFlow);
        v73 = SiriEnvironmentLocating<>.siriEnvironment.getter();
        _s11SiriKitFlow08RCHChildC14ProducersAsyncV0a4LinkC6PluginE16forCustomIntents16voiceCommandName12originDevice6runner15siriEnvironment11deviceStateACySo8INIntentCSo0V8ResponseCGSSSg_So13INDeviceIdiomVAD0A15WorkflowRunning_p0A9Utilities0aS0CAA0pU0_ptFZAL_ANTt5g5(v68, v69, v70, (v38 + 15), v73, v38 + 3);

        v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC7FactoryCySo8INIntentCSo0F8ResponseCGMd, &_s11SiriKitFlow08RCHChildC7FactoryCySo8INIntentCSo0F8ResponseCGMR);
        OUTLINED_FUNCTION_66(v74);
        RCHChildFlowFactory.init(producers:)();
        type metadata accessor for App();
        outlined bridged method (pb) of @objc INIntent.identifier.getter(v39, &selRef_launchId);
        App.__allocating_init(appIdentifier:)();
        if (one-time initialization token for voiceCommands != -1)
        {
          OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
        }

        v75 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_59(v75, static Logger.voiceCommands);
        v76 = v39;
        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          *&v95[0] = v80;
          *v79 = 136315138;
          v81 = outlined bridged method (pb) of @objc INIntent.identifier.getter(v76, &selRef_intentId);
          if (v82)
          {
            v83 = v82;
          }

          else
          {
            v81 = 0x7974706D65;
            v83 = 0xE500000000000000;
          }

          v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v83, v95);

          *(v79 + 4) = v84;
          _os_log_impl(&dword_0, v77, v78, "CustomIntentExecutionFlow intent id: %s", v79, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v80);
          OUTLINED_FUNCTION_15_0(v80);
          OUTLINED_FUNCTION_15_0(v79);
        }

        v85 = *(v0 + 200);
        v86 = *(v0 + 208);
        v87 = *(v0 + 192);
        type metadata accessor for CustomIntentRCHFlowStrategy();
        v88 = v76;
        static Device.current.getter();
        *(v0 + 128) = CustomIntentRCHFlowStrategy.__allocating_init(intent:deviceState:)(v88, v95);
        lazy protocol witness table accessor for type RunCustomIntentReadingDelegate and conformance RunCustomIntentReadingDelegate(&lazy protocol witness table cache variable for type CustomIntentRCHFlowStrategy and conformance CustomIntentRCHFlowStrategy, type metadata accessor for CustomIntentRCHFlowStrategy, &protocol conformance descriptor for CustomIntentRCHFlowStrategy);

        RCHFlowFactory.init(strategy:childFlowFactory:)();
        RCHFlowFactory.makeRCHFlowWithResolvedApp(_:intent:)();

        static ExecuteResponse.ongoing<A>(next:childCompletion:)();

        (*(v85 + 8))(v86, v87);
      }

      goto LABEL_40;
    case 4u:
      v17 = *(v0 + 240);
      v18 = *(v0 + 184);
      v19 = *(v0 + 160);
      v20 = *(v0 + 168);
      v22 = *v17;
      v21 = *(v17 + 8);
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8INIntentC6intent_So0A8ResponseC0bC011SiriKitFlow13RCHFlowResultOyAbEG9exitValuetMd, &_sSo8INIntentC6intent_So0A8ResponseC0bC011SiriKitFlow13RCHFlowResultOyAbEG9exitValuetMR);
      (*(v20 + 32))(v18, v17 + *(v23 + 64), v19);
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v24 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v24, static Logger.voiceCommands);
      v25 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      OUTLINED_FUNCTION_12_17();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = OUTLINED_FUNCTION_52();
        *v27 = 0;
        OUTLINED_FUNCTION_40(&dword_0, v28, v29, "Pushing Reading Flow to handle customIntents handle dialog");
        OUTLINED_FUNCTION_15_0(v27);
      }

      v30 = *(v0 + 232);
      v31 = *(v0 + 184);
      v33 = *(v0 + 160);
      v32 = *(v0 + 168);
      v34 = *(v0 + 152);

      v94 = v21;
      CustomIntentExecutionFlow.getReadItems(intent:intentResponse:)();

      v96 = 0;
      memset(v95, 0, sizeof(v95));
      outlined init with copy of DeviceState(v34 + 24, v0 + 16);
      static OutputPublisherFactory.makeOutputPublisher()();
      type metadata accessor for RunCustomIntentReadingDelegate();
      swift_allocObject();
      RunCustomIntentReadingDelegate.init(templater:deviceState:outputPublisher:)(v95, (v0 + 16), &v97);
      v35 = type metadata accessor for PaginatedConversationFlowSource();
      OUTLINED_FUNCTION_66(v35);
      lazy protocol witness table accessor for type RunCustomIntentReadingDelegate and conformance RunCustomIntentReadingDelegate(&lazy protocol witness table cache variable for type RunCustomIntentReadingDelegate and conformance RunCustomIntentReadingDelegate, type metadata accessor for RunCustomIntentReadingDelegate, &protocol conformance descriptor for RunCustomIntentReadingDelegate);

      PaginatedConversationFlowSource.init<A>(items:delegate:)();
      v36 = type metadata accessor for ReadingFlow();
      OUTLINED_FUNCTION_66(v36);

      v37 = ReadingFlow.init(source:)();
      (*(v32 + 16))(v30, v31, v33);
      swift_storeEnumTagMultiPayload();
      CustomIntentExecutionFlow.state.setter(v30);
      *(v0 + 120) = v37;
      static ExecuteResponse.complete<A>(next:)();

      (*(v32 + 8))(v31, v33);
LABEL_16:

      goto LABEL_40;
    case 5u:
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v40 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v40, static Logger.voiceCommands);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = OUTLINED_FUNCTION_52();
        *v43 = 0;
        _os_log_impl(&dword_0, v41, v42, "CustomIntentExecutionFlow waiting for done.", v43, 2u);
        OUTLINED_FUNCTION_15_0(v43);
      }

      v44 = *(v0 + 240);
      v45 = *(v0 + 160);
      v46 = *(v0 + 168);

      static ExecuteResponse.ongoing(requireInput:)();
      (*(v46 + 8))(v44, v45);
      goto LABEL_40;
    case 6u:
      (*(*(v0 + 168) + 32))(*(v0 + 176), *(v0 + 240), *(v0 + 160));
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v47 = type metadata accessor for Logger();
      *(v0 + 248) = __swift_project_value_buffer(v47, static Logger.voiceCommands);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_17_11(v49))
      {
        v50 = OUTLINED_FUNCTION_52();
        *v50 = 0;
        OUTLINED_FUNCTION_25(&dword_0, v51, v52, "CustomIntentExecutionFlow user pressed done, showing empty snippet");
        OUTLINED_FUNCTION_15_0(v50);
      }

      v53 = *(v0 + 232);
      v55 = *(v0 + 168);
      v54 = *(v0 + 176);
      v56 = *(v0 + 152);
      v57 = *(v0 + 160);

      v58 = [objc_allocWithZone(SAUIAssistantUtteranceView) init];
      v59 = [objc_allocWithZone(SAUIAddViews) init];
      *(v0 + 256) = v59;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_216010;
      *(v60 + 32) = v58;
      v61 = v58;
      outlined bridged method (mbnn) of @objc SAUIAddViews.views.setter(v60, v59);
      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      outlined bridged method (mbnn) of @objc SAUIAddViews.dialogPhase.setter(v62, v63, v59);

      (*(v55 + 16))(v53, v54, v57);
      swift_storeEnumTagMultiPayload();
      CustomIntentExecutionFlow.state.setter(v53);
      v64 = v56[11];
      v65 = v56[12];
      __swift_project_boxed_opaque_existential_1(v56 + 8, v64);
      v66 = swift_task_alloc();
      *(v0 + 264) = v66;
      v67 = type metadata accessor for NSError(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
      *v66 = v0;
      v66[1] = CustomIntentExecutionFlow.execute();

      return AceServiceInvokerAsync.submit<A>(_:)(v59, v64, v67, v65);
    default:
      v16 = *(v0 + 240);
      static ExecuteResponse.complete()();
      outlined destroy of CustomIntentExecutionFlow.State(v16);
LABEL_40:
      OUTLINED_FUNCTION_16_16();

      OUTLINED_FUNCTION_6_0();

      return v92();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 272) = v0;

  if (v0)
  {
    v7 = CustomIntentExecutionFlow.execute();
  }

  else
  {

    v7 = CustomIntentExecutionFlow.execute();
  }

  return _swift_task_switch(v7);
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static WFDialogState.shared;
  v4 = (*(*static WFDialogState.shared + 248))();
  OUTLINED_FUNCTION_22_9(v4);

  (*(v2 + 8))(v3, v0);
  OUTLINED_FUNCTION_16_16();

  OUTLINED_FUNCTION_6_0();

  return v5();
}

uint64_t CustomIntentExecutionFlow.execute()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_12_17();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v5 + 272);
  if (v9)
  {
    v6 = OUTLINED_FUNCTION_52();
    *v6 = 0;
    OUTLINED_FUNCTION_40(&dword_0, v11, v12, "CustomIntentExecutionFlow error submitting empty dialog");
    OUTLINED_FUNCTION_15_0(v6);
  }

  OUTLINED_FUNCTION_22_9(v13);
  (*(v6 + 8))(v7, v10);
  OUTLINED_FUNCTION_16_16();

  OUTLINED_FUNCTION_6_0();

  return v14();
}

uint64_t _s11SiriKitFlow08RCHChildC14ProducersAsyncV0a4LinkC6PluginE16forCustomIntents16voiceCommandName12originDevice6runner15siriEnvironment11deviceStateACySo8INIntentCSo0V8ResponseCGSSSg_So13INDeviceIdiomVAD0A15WorkflowRunning_p0A9Utilities0aS0CAA0pU0_ptFZAL_ANTt5g5(uint64_t a1, uint64_t a2, void x2_0, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = type metadata accessor for CATOption();
  __chkstk_darwin(v9 - 8);
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for INIntent, INIntent_ptr);
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for INIntentResponse, INIntentResponse_ptr);
  RCHChildFlowProducersAsync.init()();
  type metadata accessor for ModeInfoProvider();
  swift_allocObject();
  v43 = ModeInfoProvider.init()();
  outlined init with copy of DeviceState(a5, &v54);
  type metadata accessor for RunCustomIntentCATs(0);
  static CATOption.defaultMode.getter();
  v10 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunCustomIntentCATsSimple(0);
  static CATOption.defaultMode.getter();
  v11 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for CustomIntentNeedsValueFlowStrategy();
  swift_allocObject();
  *&v54 = CustomIntentNeedsValueFlowStrategy.init(deviceState:catWrapper:catWrapperSimple:)(&v54, v10, v11);
  lazy protocol witness table accessor for type RunCustomIntentReadingDelegate and conformance RunCustomIntentReadingDelegate(&lazy protocol witness table cache variable for type CustomIntentNeedsValueFlowStrategy and conformance CustomIntentNeedsValueFlowStrategy, type metadata accessor for CustomIntentNeedsValueFlowStrategy, &protocol conformance descriptor for CustomIntentNeedsValueFlowStrategy);
  static RCHChildFlowFactoryHelper.makeNeedsValueFlowProducer<A>(strategy:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo8INIntentCSo0G8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo8INIntentCSo0G8ResponseCGMR);
  RCHChildFlowProducersAsync.needsValueFlowProducer.setter();
  v41 = a5;
  outlined init with copy of DeviceState(a5, &v54);
  static CATOption.defaultMode.getter();
  v40 = CATWrapper.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  v39 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATs(0);
  static CATOption.defaultMode.getter();
  v38 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple(0);
  static CATOption.defaultMode.getter();
  v37 = CATWrapperSimple.__allocating_init(options:globals:)();
  v12 = type metadata accessor for ResponseFactory();
  swift_allocObject();
  v13 = ResponseFactory.init()();
  type metadata accessor for CustomIntentNeedsConfirmationFlowStrategy(0);
  v14 = swift_allocObject();
  v15 = (v14 + OBJC_IVAR____TtC18SiriLinkFlowPlugin41CustomIntentNeedsConfirmationFlowStrategy_voiceCommandName);
  *v15 = a1;
  v15[1] = a2;
  outlined init with copy of DeviceState(&v54, v14 + OBJC_IVAR____TtC18SiriLinkFlowPlugin41CustomIntentNeedsConfirmationFlowStrategy_deviceState);
  v16 = OBJC_IVAR____TtC18SiriLinkFlowPlugin41CustomIntentNeedsConfirmationFlowStrategy_confirmationState;
  v17 = enum case for SiriKitConfirmationState.unset(_:);
  v18 = type metadata accessor for SiriKitConfirmationState();
  (*(*(v18 - 8) + 104))(v14 + v16, v17, v18);
  outlined init with copy of DeviceState(&v54, v53);
  memset(v51, 0, sizeof(v51));
  v52 = 0;
  type metadata accessor for ContinueInAppCATWrapperSimple(0);
  swift_allocObject();
  outlined init with copy of DeviceState?(v51, v50);

  v19 = SiriKitFlowCATWrapperSimple.init(deviceState:)(v50);
  outlined destroy of Any?(v51, &_s11SiriKitFlow11DeviceState_pSgMd, &_s11SiriKitFlow11DeviceState_pSgMR);
  type metadata accessor for CustomIntentNeedsConfirmIntentResponseGenerator();
  v20 = swift_allocObject();
  outlined init with copy of DeviceState(v53, v51);
  v50[3] = v12;
  v50[4] = &protocol witness table for ResponseFactory;
  v42 = v12;
  v50[0] = v13;
  v44 = a1;
  v20[10] = a1;
  v20[11] = a2;
  outlined init with copy of DeviceState(v51, (v20 + 2));
  v20[9] = a4;
  v20[12] = v19;
  outlined init with copy of DeviceState(v50, (v20 + 13));
  outlined init with copy of DeviceState(v51, v49);
  v21 = one-time initialization token for shared;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = static WFDialogState.shared;

  __swift_destroy_boxed_opaque_existential_1Tm(v50);
  v23 = type metadata accessor for AppNameResolver();
  v24 = swift_allocObject();
  type metadata accessor for CustomIntentsDialogTemplating();
  v25 = swift_allocObject();
  v47 = v23;
  v48 = &protocol witness table for AppNameResolver;

  *&v46 = v24;
  __swift_destroy_boxed_opaque_existential_1Tm(v53);
  __swift_destroy_boxed_opaque_existential_1Tm(&v54);
  *(v25 + 56) = v22;
  outlined init with take of AceServiceInvokerAsync(v49, v25 + 16);
  *(v25 + 64) = 0;
  *(v25 + 72) = 1;
  *(v25 + 80) = v40;
  *(v25 + 88) = v39;
  *(v25 + 96) = v38;
  *(v25 + 104) = v37;
  outlined init with take of AceServiceInvokerAsync(&v46, v25 + 112);
  v20[7] = v25;
  v26 = v20[9];
  type metadata accessor for CustomIntentSnippetProvider();
  swift_allocObject();
  v20[8] = CustomIntentSnippetProvider.init(voiceCommandName:templatingService:deviceState:siriEnvironment:)(v44, a2, v25, v51, v26);
  *(v14 + OBJC_IVAR____TtC18SiriLinkFlowPlugin41CustomIntentNeedsConfirmationFlowStrategy_responseGenerator) = v20;
  *&v54 = v14;
  lazy protocol witness table accessor for type RunCustomIntentReadingDelegate and conformance RunCustomIntentReadingDelegate(&lazy protocol witness table cache variable for type CustomIntentNeedsConfirmationFlowStrategy and conformance CustomIntentNeedsConfirmationFlowStrategy, type metadata accessor for CustomIntentNeedsConfirmationFlowStrategy, &protocol conformance descriptor for CustomIntentNeedsConfirmationFlowStrategy);

  static RCHChildFlowFactoryHelper.makeNeedsConfirmationFlowProducer<A>(strategy:)();

  RCHChildFlowProducersAsync.needsConfirmationFlowProducer.setter();
  outlined init with copy of DeviceState(v41, &v54);

  static CATOption.defaultMode.getter();
  v27 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for CustomIntentNeedsDisambiguationFlowStrategy();
  v28 = swift_allocObject();

  *&v54 = specialized CustomIntentNeedsDisambiguationFlowStrategy.init(voiceCommandName:deviceState:modeInfoProvider:siriEnvironment:runCustomIntentCatWrapperSimple:)(v44, a2, &v54, v43, a4, v27, v28);
  lazy protocol witness table accessor for type RunCustomIntentReadingDelegate and conformance RunCustomIntentReadingDelegate(&lazy protocol witness table cache variable for type CustomIntentNeedsDisambiguationFlowStrategy and conformance CustomIntentNeedsDisambiguationFlowStrategy, type metadata accessor for CustomIntentNeedsDisambiguationFlowStrategy, &protocol conformance descriptor for CustomIntentNeedsDisambiguationFlowStrategy);
  static RCHChildFlowFactoryHelper.makeNeedsDisambiguationFlowProducer<A>(strategy:)();

  RCHChildFlowProducersAsync.needsDisambiguationFlowProducer.setter();
  outlined init with copy of DeviceState(v41, &v54);
  type metadata accessor for CustomIntentUnsupportedValueFlowStrategy();
  swift_allocObject();
  *&v54 = CustomIntentUnsupportedValueFlowStrategy.init(deviceState:)(&v54);
  lazy protocol witness table accessor for type RunCustomIntentReadingDelegate and conformance RunCustomIntentReadingDelegate(&lazy protocol witness table cache variable for type CustomIntentUnsupportedValueFlowStrategy and conformance CustomIntentUnsupportedValueFlowStrategy, type metadata accessor for CustomIntentUnsupportedValueFlowStrategy, &protocol conformance descriptor for CustomIntentUnsupportedValueFlowStrategy);
  static RCHChildFlowFactoryHelper.makeUnsupportedValueAndPromptFlowProducer<A>(strategy:)();

  RCHChildFlowProducersAsync.unsupportedValueFlowProducer.setter();
  outlined init with copy of DeviceState(v41, &v54);
  type metadata accessor for CustomIntentConfirmIntentFlowStrategy(0);
  swift_allocObject();

  *&v54 = CustomIntentConfirmIntentFlowStrategy.init(voiceCommandName:siriEnvironment:deviceState:)(v44, a2, a4, &v54);
  lazy protocol witness table accessor for type RunCustomIntentReadingDelegate and conformance RunCustomIntentReadingDelegate(&lazy protocol witness table cache variable for type CustomIntentConfirmIntentFlowStrategy and conformance CustomIntentConfirmIntentFlowStrategy, type metadata accessor for CustomIntentConfirmIntentFlowStrategy, &protocol conformance descriptor for CustomIntentConfirmIntentFlowStrategy);
  static RCHChildFlowFactoryHelper.makeConditionalConfirmIntentFlowProducer<A>(strategy:_:)();

  RCHChildFlowProducersAsync.confirmIntentFlowProducer.setter();
  outlined init with copy of DeviceState(v41, &v54);
  type metadata accessor for CustomIntentHandleIntentFlowStrategy();
  swift_allocObject();

  *&v54 = CustomIntentHandleIntentFlowStrategy.init(voiceCommandName:siriEnvironment:deviceState:)(v44, a2, a4, &v54);
  lazy protocol witness table accessor for type RunCustomIntentReadingDelegate and conformance RunCustomIntentReadingDelegate(&lazy protocol witness table cache variable for type CustomIntentHandleIntentFlowStrategy and conformance CustomIntentHandleIntentFlowStrategy, type metadata accessor for CustomIntentHandleIntentFlowStrategy, &protocol conformance descriptor for CustomIntentHandleIntentFlowStrategy);
  static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)();

  RCHChildFlowProducersAsync.handleIntentFlowProducer.setter();
  __swift_project_boxed_opaque_existential_1(v41, v41[3]);
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    outlined init with copy of DeviceState(a3, &v54);
    outlined init with copy of DeviceState(v41, v53);
    type metadata accessor for CustomIntentContinueInAppWithDialogStrategy();
    swift_allocObject();
    *&v54 = CustomIntentContinueInAppWithDialogStrategy.init(runner:deviceState:)(&v54, v53);
    lazy protocol witness table accessor for type RunCustomIntentReadingDelegate and conformance RunCustomIntentReadingDelegate(&lazy protocol witness table cache variable for type CustomIntentContinueInAppWithDialogStrategy and conformance CustomIntentContinueInAppWithDialogStrategy, type metadata accessor for CustomIntentContinueInAppWithDialogStrategy, &protocol conformance descriptor for CustomIntentContinueInAppWithDialogStrategy);
    static RCHChildFlowFactoryHelper.makeContinueInAppFlowWithHandoffToCompanionProducer<A>(strategy:)();

    v29 = v42;
  }

  else
  {
    outlined init with copy of DeviceState(v41, &v54);
    memset(v53, 0, sizeof(v53));
    swift_allocObject();
    outlined init with copy of DeviceState?(v53, v51);

    v30 = SiriKitFlowCATWrapperSimple.init(deviceState:)(v51);
    outlined destroy of Any?(v53, &_s11SiriKitFlow11DeviceState_pSgMd, &_s11SiriKitFlow11DeviceState_pSgMR);
    v29 = v42;
    swift_allocObject();
    v31 = ResponseFactory.init()();
    type metadata accessor for CustomIntentContinueInAppFlowStrategy();
    v32 = swift_allocObject();

    *&v54 = specialized CustomIntentContinueInAppFlowStrategy.init(voiceCommandName:siriEnvironment:deviceState:continueInAppCATWrapperSimple:responseFactory:)(v44, a2, a4, &v54, v30, v31, v32);
    lazy protocol witness table accessor for type RunCustomIntentReadingDelegate and conformance RunCustomIntentReadingDelegate(&lazy protocol witness table cache variable for type CustomIntentContinueInAppFlowStrategy and conformance CustomIntentContinueInAppFlowStrategy, type metadata accessor for CustomIntentContinueInAppFlowStrategy, &protocol conformance descriptor for CustomIntentContinueInAppFlowStrategy);
    static RCHChildFlowFactoryHelper.makeContinueInAppFlowWithAutomaticPunchOutProducer<A>(strategy:)();
  }

  RCHChildFlowProducersAsync.continueInAppFlowProducer.setter();
  outlined init with copy of DeviceState(v41, &v54);
  swift_allocObject();
  v33 = ResponseFactory.init()();
  type metadata accessor for CustomIntentTCCFlowStrategy();
  v34 = swift_allocObject();
  v34[10] = &type metadata for EnableTCCLabelsProvider;
  v34[11] = &protocol witness table for EnableTCCLabelsProvider;
  v34[15] = v29;
  v34[16] = &protocol witness table for ResponseFactory;
  v34[12] = v33;
  outlined init with take of AceServiceInvokerAsync(&v54, (v34 + 2));
  *&v54 = v34;
  lazy protocol witness table accessor for type RunCustomIntentReadingDelegate and conformance RunCustomIntentReadingDelegate(&lazy protocol witness table cache variable for type CustomIntentTCCFlowStrategy and conformance CustomIntentTCCFlowStrategy, type metadata accessor for CustomIntentTCCFlowStrategy, &protocol conformance descriptor for CustomIntentTCCFlowStrategy);
  static RCHChildFlowFactoryHelper.makeRequestTCCAcceptanceFlow<A, B>(strategy:)();

  RCHChildFlowProducersAsync.requestTCCAcceptanceFlowProducer.setter();
}

uint64_t CustomIntentExecutionFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CustomIntentExecutionFlow(0);
  OUTLINED_FUNCTION_1_30();
  lazy protocol witness table accessor for type RunCustomIntentReadingDelegate and conformance RunCustomIntentReadingDelegate(v2, v3, &protocol conformance descriptor for CustomIntentExecutionFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t CustomIntentExecutionFlow.isReadRequest(intent:intentResponse:deviceState:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for InteractionType();
  OUTLINED_FUNCTION_7_1();
  v6 = v5;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_50_0();
  v10 = (v8 - v9);
  __chkstk_darwin(v11);
  v13 = &v18 - v12;
  CustomIntentExecutionFlow.getReadItems(intent:intentResponse:)();
  v15 = *(v14 + 16);

  if (v15)
  {
    OUTLINED_FUNCTION_4_24();
    if (dispatch thunk of DeviceState.isWatch.getter() & 1) != 0 || (OUTLINED_FUNCTION_4_24(), (dispatch thunk of DeviceState.isCarPlay.getter()) || (OUTLINED_FUNCTION_4_24(), (dispatch thunk of DeviceState.isHomePod.getter()) || (OUTLINED_FUNCTION_4_24(), (dispatch thunk of DeviceState.isEyesFree.getter()))
    {
      LOBYTE(v15) = 1;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(a3, a3[3]);
      dispatch thunk of DeviceState.interactionType.getter();
      (*(v6 + 104))(v10, enum case for InteractionType.dialogDriven(_:), v4);
      LOBYTE(v15) = specialized == infix<A>(_:_:)();
      v17 = *(v6 + 8);
      v17(v10, v4);
      v17(v13, v4);
    }
  }

  return v15 & 1;
}

void CustomIntentExecutionFlow.getReadItems(intent:intentResponse:)()
{
  OUTLINED_FUNCTION_40_0();
  if (!v1)
  {
    goto LABEL_24;
  }

  v2 = v0;
  v3 = v1;
  v4 = outlined bridged method (pb) of @objc INIntentResponse.propertiesByName.getter(v3);
  if (!v4)
  {

LABEL_24:
    OUTLINED_FUNCTION_42();
    return;
  }

  v5 = v4;
  v6 = [v2 typeName];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  v23 = v3;
  v11 = INIntentResponse.localizedResponseTemplate(intentName:)(v10);

  type metadata accessor for CATSpeakableString();
  v24 = static CATSpeakableString.getPropertiesInTemplateString(templateString:)(v11._countAndFlagsBits, v11._object);

  v12 = 0;
  v13 = 1 << *(v5 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v5 + 64);
  v16 = (v13 + 63) >> 6;
LABEL_6:
  if (!v15)
  {
    goto LABEL_8;
  }

  do
  {
    v17 = v12;
LABEL_12:
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v19 = v18 | (v17 << 6);
    outlined init with copy of AnyHashable(*(v5 + 48) + 40 * v19, v26);
    outlined init with copy of Any(*(v5 + 56) + 32 * v19, v25);
    *v28 = v26[0];
    *&v28[16] = v26[1];
    *&v28[32] = v27;
    outlined init with take of Any(v25, &v28[40]);
LABEL_13:
    memcpy(v29, v28, 0x48uLL);
    if (!*(&v29[1] + 1))
    {

      goto LABEL_24;
    }

    outlined init with take of Any((&v29[2] + 8), v26);
    *v28 = v29[0];
    *&v28[16] = v29[1];
    *&v28[32] = *&v29[2];
    v20 = swift_dynamicCast();
    if (v20)
    {
      *v28 = v25[0];
      __chkstk_darwin(v20);
      v22[2] = v28;
      v21 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v22, v24);

      if (v21)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        goto LABEL_6;
      }

      outlined init with take of Any(v26, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      if (swift_dynamicCast())
      {

        goto LABEL_24;
      }

      goto LABEL_6;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  while (v15);
LABEL_8:
  while (1)
  {
    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v17 >= v16)
    {
      v15 = 0;
      memset(v28, 0, sizeof(v28));
      goto LABEL_13;
    }

    v15 = *(v5 + 64 + 8 * v17);
    ++v12;
    if (v15)
    {
      v12 = v17;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t CustomIntentExecutionFlow.processCustomIntentConversionResult(conversionResult:)(void *a1, char a2)
{
  type metadata accessor for CustomIntentExecutionFlow.State(0);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_3();
  v7 = (v6 - v5);
  if (a2)
  {
    *v7 = a1;
    OUTLINED_FUNCTION_21_11();
    swift_errorRetain();
  }

  else
  {
    outlined bridged method (pb) of @objc INIntent.identifier.getter(a1, &selRef_launchId);
    if (v8)
    {
    }

    else
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v9 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v9, static Logger.voiceCommands);
      v10 = static os_log_type_t.debug.getter();
      v11 = Logger.logObject.getter();
      if (os_log_type_enabled(v11, v10))
      {
        v12 = OUTLINED_FUNCTION_52();
        *v12 = 0;
        _os_log_impl(&dword_0, v11, v10, "No launchId found in INIntent", v12, 2u);
        OUTLINED_FUNCTION_15_0(v12);
      }

      v13 = lazy protocol witness table accessor for type RunVoiceShortcutFlowErrors and conformance RunVoiceShortcutFlowErrors();
      v14 = OUTLINED_FUNCTION_16_6(&type metadata for RunVoiceShortcutFlowErrors, v13);
      *v15 = 0;
      *v7 = v14;
      OUTLINED_FUNCTION_21_11();
      CustomIntentExecutionFlow.state.setter(v7);
    }

    *v7 = a1;
    swift_storeEnumTagMultiPayload();
    outlined copy of Result<INIntent, Error>(a1, 0);
  }

  return CustomIntentExecutionFlow.state.setter(v7);
}

void CustomIntentExecutionFlow.processCustomIntentExecutionResult(executionResult:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  type metadata accessor for CustomIntentExecutionFlow.State(0);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_3();
  v7 = (v6 - v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo8INIntentCSo0F8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo8INIntentCSo0F8ResponseCGMR);
  OUTLINED_FUNCTION_7_1();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = (&v47 - v12);
  v14 = *(v10 + 16);
  v14(&v47 - v12, v3, v8);
  v15 = OUTLINED_FUNCTION_18_15();
  v17 = v16(v15);
  if (v17 == enum case for RCHFlowResult.complete<A, B>(_:))
  {
    v18 = OUTLINED_FUNCTION_18_15();
    v19(v18);
    v20 = v13[1];
    v21 = v13[2];

    v22 = v21;
    LOBYTE(v21) = CustomIntentExecutionFlow.isReadRequest(intent:intentResponse:deviceState:)(v20, v21, (v1 + 24));

    if (v21)
    {
      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8INIntentC6intent_So0A8ResponseC0bC011SiriKitFlow13RCHFlowResultOyAbEG9exitValuetMd, &_sSo8INIntentC6intent_So0A8ResponseC0bC011SiriKitFlow13RCHFlowResultOyAbEG9exitValuetMR) + 64);
      *v7 = v20;
      v7[1] = v22;
      v14(v7 + v23, v3, v8);
      OUTLINED_FUNCTION_95();
      swift_storeEnumTagMultiPayload();
      v24 = v22;
      v25 = v20;
      OUTLINED_FUNCTION_13_15();
    }

    else
    {
      if ([v22 _intentResponseCode] == &dword_4)
      {
        type metadata accessor for CustomIntentExecutionFlow(0);
        OUTLINED_FUNCTION_1_30();
        lazy protocol witness table accessor for type RunCustomIntentReadingDelegate and conformance RunCustomIntentReadingDelegate(v29, v30, &protocol conformance descriptor for CustomIntentExecutionFlow);
        SiriEnvironmentLocating<>.siriEnvironment.getter();
        v31 = static CustomIntentExecutionFlow.isSkippingWaitForDone(intent:deviceState:siriEnvironment:)(v20, v1 + 24);
        v48 = v20;
        v32 = v31;

        if (v32)
        {
          v33 = OUTLINED_FUNCTION_9_16();
          (v14)(v33);
          OUTLINED_FUNCTION_95();
        }

        else
        {
          if (one-time initialization token for voiceCommands != -1)
          {
            OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
          }

          v40 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_59(v40, static Logger.voiceCommands);
          v41 = Logger.logObject.getter();
          v42 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v41, v42))
          {
            v43 = OUTLINED_FUNCTION_52();
            *v43 = 0;
            v44 = v42;
            v45 = v43;
            _os_log_impl(&dword_0, v41, v44, "CustomIntentExecutionFlow setting state to wait for done.", v43, 2u);
            OUTLINED_FUNCTION_15_0(v45);
          }

          v46 = OUTLINED_FUNCTION_9_16();
          (v14)(v46);
          OUTLINED_FUNCTION_95();
        }

        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_13_15();
      }

      else
      {
        v34 = OUTLINED_FUNCTION_9_16();
        (v14)(v34);
        OUTLINED_FUNCTION_95();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_13_15();
      }
    }
  }

  else if (v17 == enum case for RCHFlowResult.error<A, B>(_:))
  {
    v26 = OUTLINED_FUNCTION_18_15();
    v27(v26);
    v28 = *(v13 + 8);
    *v7 = *v13;
    *(v7 + 8) = v28;
    OUTLINED_FUNCTION_95();
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    OUTLINED_FUNCTION_13_15();
  }

  else if (v17 == enum case for RCHFlowResult.cancelled<A, B>(_:))
  {
    OUTLINED_FUNCTION_95();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_13_15();
  }

  else
  {
    v35 = lazy protocol witness table accessor for type RunVoiceShortcutFlowErrors and conformance RunVoiceShortcutFlowErrors();
    v36 = OUTLINED_FUNCTION_16_6(&type metadata for RunVoiceShortcutFlowErrors, v35);
    *v37 = 0;
    *v7 = v36;
    *(v7 + 8) = 0;
    OUTLINED_FUNCTION_95();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_13_15();
    v38 = OUTLINED_FUNCTION_18_15();
    v39(v38);
  }

  OUTLINED_FUNCTION_42();
}

uint64_t static CustomIntentExecutionFlow.isSkippingWaitForDone(intent:deviceState:siriEnvironment:)(void *a1, uint64_t a2)
{
  v4 = [a1 typeName];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (v5 == 0xD000000000000051 && 0x80000000002309D0 == v7)
  {
    goto LABEL_20;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
    goto LABEL_21;
  }

  v10 = [a1 typeName];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (v11 == 0xD00000000000005ALL && 0x8000000000232480 == v13)
  {
LABEL_20:
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0 && !INIntent.shouldSupressIntentResponseDialog()())
    {
      type metadata accessor for CustomIntentsDialogTemplating();
      if ((static CustomIntentsDialogTemplating.isShortcutsInternalCustomIntent(intent:)(a1) & 1) == 0)
      {
        v16 = [a1 _metadata];
        if (v16)
        {
          v17 = v16;
          v18 = [v16 showsWhenRun];

          if (v18)
          {
            type metadata accessor for CustomIntentSnippetProvider();
            if (static CustomIntentSnippetProvider.isDoneButtonEligible(deviceState:intent:siriEnvironment:)(a2, a1))
            {
              if (one-time initialization token for voiceCommands != -1)
              {
                OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
              }

              v19 = type metadata accessor for Logger();
              OUTLINED_FUNCTION_59(v19, static Logger.voiceCommands);
              v20 = Logger.logObject.getter();
              static os_log_type_t.debug.getter();
              OUTLINED_FUNCTION_12_17();
              if (!os_log_type_enabled(v20, v21))
              {
                v25 = 0;
                goto LABEL_32;
              }

              v22 = OUTLINED_FUNCTION_52();
              *v22 = 0;
              OUTLINED_FUNCTION_27_10(&dword_0, v23, v24, "#CustomIntentExecutionFlow isSkippingWaitForDone - will wait for done; button present");
              v25 = 0;
              goto LABEL_26;
            }
          }
        }
      }

      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v31 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v31, static Logger.voiceCommands);
      v20 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      OUTLINED_FUNCTION_12_17();
      if (os_log_type_enabled(v20, v32))
      {
        v22 = OUTLINED_FUNCTION_52();
        *v22 = 0;
        v30 = "#CustomIntentExecutionFlow isSkippingWaitForDone - skipping wait for done";
        goto LABEL_25;
      }

LABEL_31:
      v25 = 1;
      goto LABEL_32;
    }
  }

LABEL_21:
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v26 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v26, static Logger.voiceCommands);
  v20 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_12_17();
  if (!os_log_type_enabled(v20, v27))
  {
    goto LABEL_31;
  }

  v22 = OUTLINED_FUNCTION_52();
  *v22 = 0;
  v30 = "#CustomIntentExecutionFlow isSkippingWaitForDone - skipping wait for done due to smart prompt";
LABEL_25:
  OUTLINED_FUNCTION_27_10(&dword_0, v28, v29, v30);
  v25 = 1;
LABEL_26:
  OUTLINED_FUNCTION_15_0(v22);
LABEL_32:

  return v25;
}

uint64_t CustomIntentExecutionFlow.processScreentimeCheckCompletion(guardFlowResult:)(char a1)
{
  result = static GuardFlowResult.== infix(_:_:)();
  if (result)
  {
    *(v1 + OBJC_IVAR____TtC18SiriLinkFlowPlugin25CustomIntentExecutionFlow_appBlockedByScreentime) = 1;
  }

  return result;
}

void *CustomIntentExecutionFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 15);
  outlined destroy of CustomIntentExecutionFlow.State(v0 + OBJC_IVAR____TtC18SiriLinkFlowPlugin25CustomIntentExecutionFlow_state);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtC18SiriLinkFlowPlugin25CustomIntentExecutionFlow_input, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18SiriLinkFlowPlugin25CustomIntentExecutionFlow_appPolicyHandler));
  return v0;
}

uint64_t CustomIntentExecutionFlow.__deallocating_deinit()
{
  CustomIntentExecutionFlow.deinit();

  return swift_deallocClassInstance();
}

void (*protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance CustomIntentExecutionFlow(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = SiriEnvironmentLocating<>.siriEnvironment.modify();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance WFExecuteCustomIntentFlow;
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance CustomIntentExecutionFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for Flow.onAsync(input:) in conformance CustomIntentExecutionFlow;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance CustomIntentExecutionFlow()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t protocol witness for Flow.execute() in conformance CustomIntentExecutionFlow(uint64_t a1)
{
  v6 = (*(**v1 + 272) + **(**v1 + 272));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for Flow.execute() in conformance CustomIntentExecutionFlow;

  return v6(a1);
}

uint64_t protocol witness for Flow.execute() in conformance CustomIntentExecutionFlow()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  OUTLINED_FUNCTION_6_0();

  return v3();
}

void outlined bridged method (mbnn) of @objc _INPBIntentMetadata.intentId.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setIntentId:v4];
}

uint64_t outlined assign with take of Input?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type RunCustomIntentReadingDelegate and conformance RunCustomIntentReadingDelegate(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined bridged method (pb) of @objc INIntent.identifier.getter(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t sub_C25E8()
{

  return _swift_deallocObject(v0);
}

void type metadata completion function for CustomIntentExecutionFlow(uint64_t a1)
{
  type metadata accessor for CustomIntentExecutionFlow.State(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Input?(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Input?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Input?)
  {
    type metadata accessor for Input();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Input?);
    }
  }
}

uint64_t type metadata completion function for CustomIntentExecutionFlow.State(uint64_t a1)
{
  type metadata accessor for (intent: INIntent?)(319, &lazy cache variable for type metadata for (intent: INIntent?), type metadata accessor for INIntent?);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    type metadata accessor for (intent: INIntent)();
    v2 = v4;
    if (v5 <= 0x3F)
    {
      type metadata accessor for (intent: INIntent?)(319, &lazy cache variable for type metadata for (exitValue: RCHFlowResult<INIntent, INIntentResponse>), type metadata accessor for RCHFlowResult<INIntent, INIntentResponse>);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        type metadata accessor for (innerError: Error, handled: Bool)(319);
        if (v9 > 0x3F)
        {
          return v8;
        }

        type metadata accessor for (intent: INIntent, intentResponse: INIntentResponse, exitValue: RCHFlowResult<INIntent, INIntentResponse>)(319);
        if (v10 > 0x3F)
        {
          return v8;
        }

        else
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void type metadata accessor for INIntent?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for INIntent?)
  {
    type metadata accessor for NSError(255, &lazy cache variable for type metadata for INIntent, INIntent_ptr);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for INIntent?);
    }
  }
}

void type metadata accessor for (intent: INIntent)()
{
  if (!lazy cache variable for type metadata for (intent: INIntent))
  {
    v0 = type metadata accessor for NSError(0, &lazy cache variable for type metadata for INIntent, INIntent_ptr);
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (intent: INIntent));
    }
  }
}

void type metadata accessor for (intent: INIntent?)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for RCHFlowResult<INIntent, INIntentResponse>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for RCHFlowResult<INIntent, INIntentResponse>)
  {
    type metadata accessor for NSError(255, &lazy cache variable for type metadata for INIntent, INIntent_ptr);
    type metadata accessor for NSError(255, &lazy cache variable for type metadata for INIntentResponse, INIntentResponse_ptr);
    v1 = type metadata accessor for RCHFlowResult();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for RCHFlowResult<INIntent, INIntentResponse>);
    }
  }
}

void type metadata accessor for (innerError: Error, handled: Bool)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (innerError: Error, handled: Bool))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (innerError: Error, handled: Bool));
    }
  }
}

void type metadata accessor for (intent: INIntent, intentResponse: INIntentResponse, exitValue: RCHFlowResult<INIntent, INIntentResponse>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (intent: INIntent, intentResponse: INIntentResponse, exitValue: RCHFlowResult<INIntent, INIntentResponse>))
  {
    type metadata accessor for NSError(255, &lazy cache variable for type metadata for INIntent, INIntent_ptr);
    type metadata accessor for NSError(255, &lazy cache variable for type metadata for INIntentResponse, INIntentResponse_ptr);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriKitFlow13RCHFlowResultOySo8INIntentCSo0F8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo8INIntentCSo0F8ResponseCGMR);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (intent: INIntent, intentResponse: INIntentResponse, exitValue: RCHFlowResult<INIntent, INIntentResponse>));
    }
  }
}

uint64_t outlined init with copy of DeviceState?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow11DeviceState_pSgMd, &_s11SiriKitFlow11DeviceState_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id outlined copy of Result<INIntent, Error>(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

uint64_t outlined assign with copy of CustomIntentExecutionFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomIntentExecutionFlow.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_24()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_13_15()
{

  return CustomIntentExecutionFlow.state.setter(v0);
}

uint64_t OUTLINED_FUNCTION_16_16()
{
}

uint64_t OUTLINED_FUNCTION_21_11()
{
  *(v0 + 8) = 0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_22_9(uint64_t a1)
{

  return static ExecuteResponse.complete()();
}

void OUTLINED_FUNCTION_27_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_30_8()
{

  return CustomIntentExecutionFlow.state.setter(v0);
}

void static ShortcutDoneButtonConverter.toShortcutDoneButton(userData:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_25;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(0x614E746E65746E69, 0xEA0000000000656DLL);
  if ((v5 & 1) == 0)
  {
    goto LABEL_25;
  }

  v6 = outlined init with copy of Any(*(a1 + 56) + 32 * v4, &v77);
  if ((OUTLINED_FUNCTION_0_22(v6, v7, v8, &type metadata for String, v9, v10) & 1) == 0)
  {
    goto LABEL_25;
  }

  v16 = specialized Dictionary.subscript.getter(a1, &v77, 0x6144746E65746E69, 0xEA00000000006174);
  if (!v78)
  {

LABEL_24:
    outlined destroy of Any?(&v77);
    goto LABEL_25;
  }

  if ((OUTLINED_FUNCTION_0_22(v11, v12, v13, &type metadata for Data, v14, v15, v16) & 1) == 0)
  {

LABEL_25:
    OUTLINED_FUNCTION_5_16();
    v19 = 0;
    goto LABEL_26;
  }

  v17 = String._bridgeToObjectiveC()();

  OUTLINED_FUNCTION_1_31();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v19 = INIntentCreate();

  if (!v19)
  {
    v51 = OUTLINED_FUNCTION_1_31();
    outlined consume of Data._Representation(v51, v52);
    OUTLINED_FUNCTION_5_16();
LABEL_26:
    v34 = 0;
LABEL_27:
    v41 = 0;
    goto LABEL_28;
  }

  v25 = OUTLINED_FUNCTION_2_27("intentResponseName", v67, v69, v71, v74, v77);
  if (!v78)
  {
    v53 = OUTLINED_FUNCTION_1_31();
    outlined consume of Data._Representation(v53, v54);
LABEL_23:

    goto LABEL_24;
  }

  if ((OUTLINED_FUNCTION_0_22(v20, v21, v22, &type metadata for String, v23, v24, v25) & 1) == 0)
  {
    v55 = OUTLINED_FUNCTION_1_31();
    outlined consume of Data._Representation(v55, v56);
LABEL_30:

    goto LABEL_25;
  }

  v31 = OUTLINED_FUNCTION_2_27("intentResponseData", v68, v70, v72, v75, v77);
  if (!v78)
  {
    v57 = OUTLINED_FUNCTION_1_31();
    outlined consume of Data._Representation(v57, v58);

    goto LABEL_23;
  }

  if ((OUTLINED_FUNCTION_0_22(v26, v27, v28, &type metadata for Data, v29, v30, v31) & 1) == 0)
  {
    v59 = OUTLINED_FUNCTION_1_31();
    outlined consume of Data._Representation(v59, v60);

    goto LABEL_30;
  }

  v32 = String._bridgeToObjectiveC()();

  v33 = Data._bridgeToObjectiveC()().super.isa;
  v34 = INIntentResponseCreate();

  if (!v34)
  {
    v61 = OUTLINED_FUNCTION_1_31();
    outlined consume of Data._Representation(v61, v62);

    outlined consume of Data._Representation(v73, v76);
    OUTLINED_FUNCTION_5_16();
    v19 = 0;
    goto LABEL_27;
  }

  v40 = specialized Dictionary.subscript.getter(a1, &v77, 0x6449707061, 0xE500000000000000);
  if (!v78)
  {
    v63 = OUTLINED_FUNCTION_1_31();
    outlined consume of Data._Representation(v63, v64);

    outlined consume of Data._Representation(v73, v76);
    goto LABEL_24;
  }

  if ((OUTLINED_FUNCTION_0_22(v35, v36, v37, &type metadata for String, v38, v39, v40) & 1) == 0)
  {
    v65 = OUTLINED_FUNCTION_1_31();
    outlined consume of Data._Representation(v65, v66);

    outlined consume of Data._Representation(v73, v76);
    goto LABEL_25;
  }

  type metadata accessor for App();
  v41 = App.__allocating_init(appIdentifier:)();
  specialized Dictionary.subscript.getter(a1, &v77, 0x776F6C666B726F77, 0xEC000000656D614ELL);
  v42 = OUTLINED_FUNCTION_1_31();
  outlined consume of Data._Representation(v42, v43);
  v44 = outlined consume of Data._Representation(v73, v76);
  if (!v78)
  {
    outlined destroy of Any?(&v77);
    goto LABEL_35;
  }

  if ((OUTLINED_FUNCTION_0_22(v44, v45, v46, &type metadata for String, v47, v48) & 1) == 0)
  {
LABEL_35:
    OUTLINED_FUNCTION_5_16();
    goto LABEL_28;
  }

  v49 = v73;
  v50 = v76;
LABEL_28:
  *a2 = v49;
  a2[1] = v50;
  a2[2] = v19;
  a2[3] = v34;
  a2[4] = v41;
}

id static ShortcutDoneButtonConverter.toUserData(shortcutDoneButton:)(__int128 *a1)
{
  v2 = Dictionary.init(dictionaryLiteral:)();
  v10 = v2;
  v92 = *a1;
  if (*(&v92 + 1))
  {
    *(&v91 + 1) = &type metadata for String;
    OUTLINED_FUNCTION_4_25(v2, v3, v4, v5, v6, v7, v8, v9, v85, v86, v87, v88, v89, v92);
    outlined init with copy of String?(&v92, &v85);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_6_18();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v87, 0x776F6C666B726F77, 0xEC000000656D614ELL);
    v10 = v85;
  }

  v12 = *(a1 + 2);
  v11 = *(a1 + 3);
  v13 = outlined bridged method (ob) of @objc PBCodable.data.getter([v12 backingStore]);
  if (v14 >> 60 != 15)
  {
    v15 = v13;
    v16 = v14;
    v17 = [v12 typeName];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    *(&v91 + 1) = &type metadata for String;
    *&v90 = v18;
    *(&v90 + 1) = v20;
    OUTLINED_FUNCTION_4_25(v21, v22, v23, v24, v25, v26, v27, v28, v85, v86, v87, v88, v89, v90);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_6_18();
    v29 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v87, 0x614E746E65746E69, 0xEA0000000000656DLL);
    v30 = v85;
    *(&v91 + 1) = &type metadata for Data;
    *&v90 = v15;
    *(&v90 + 1) = v16;
    OUTLINED_FUNCTION_4_25(v29, v31, v32, v33, v34, v35, v36, v37, v85, v86, v87, v88, v89, v90);
    swift_isUniquelyReferenced_nonNull_native();
    v85 = v30;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v87, 0x6144746E65746E69, 0xEA00000000006174);
    v10 = v85;
  }

  result = [v11 backingStore];
  if (result)
  {
    v39 = outlined bridged method (ob) of @objc PBCodable.data.getter(result);
    if (v40 >> 60 != 15)
    {
      v41 = v39;
      v42 = v40;
      v43 = [v12 typeName];
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      *&v90 = v44;
      *(&v90 + 1) = v46;

      v47._countAndFlagsBits = 0x65736E6F70736552;
      v47._object = 0xE800000000000000;
      String.append(_:)(v47);

      *(&v91 + 1) = &type metadata for String;
      OUTLINED_FUNCTION_4_25(v48, v49, v50, v51, v52, v53, v54, v55, v85, v86, v87, v88, v89, v90);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_6_18();
      v60 = OUTLINED_FUNCTION_3_20(v56, v57, v58, v59);
      v61 = v85;
      *(&v91 + 1) = &type metadata for Data;
      *&v90 = v41;
      *(&v90 + 1) = v42;
      OUTLINED_FUNCTION_4_25(v60, v62, v63, v64, v65, v66, v67, v68, v85, v86, v87, v88, v89, v90);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85 = v61;
      OUTLINED_FUNCTION_3_20(isUniquelyReferenced_nonNull_native, v70, v71, isUniquelyReferenced_nonNull_native);
      v10 = v85;
    }

    v72 = App.appIdentifier.getter();
    if (v73)
    {
      *(&v91 + 1) = &type metadata for String;
      *&v90 = v72;
      *(&v90 + 1) = v73;
      OUTLINED_FUNCTION_4_25(v72, v73, v74, v75, v76, v77, v78, v79, v85, v86, v87, v88, v89, v90);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_6_18();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v87, 0x6449707061, 0xE500000000000000);
      return v85;
    }

    else
    {
      v80 = specialized __RawDictionaryStorage.find<A>(_:)(0x6449707061, 0xE500000000000000);
      if (v81)
      {
        v82 = v80;
        v83 = swift_isUniquelyReferenced_nonNull_native();
        *&v87 = v10;
        v84 = *(v10 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, &_ss17_NativeDictionaryVySSypGMR);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v83, v84);
        v10 = v87;

        outlined init with take of Any((*(v10 + 56) + 32 * v82), &v90);
        _NativeDictionary._delete(at:)();
      }

      else
      {
        v90 = 0u;
        v91 = 0u;
      }

      outlined destroy of Any?(&v90);
    }

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t outlined bridged method (ob) of @objc PBCodable.data.getter(void *a1)
{
  v2 = [a1 data];

  if (!v2)
  {
    return 0;
  }

  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t getEnumTagSinglePayload for ShortcutDoneButton(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for ShortcutDoneButton(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t OUTLINED_FUNCTION_0_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_2_27@<D0>(uint64_t x8_0@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13)
{

  return specialized Dictionary.subscript.getter(v14, &a13, 0xD000000000000012, (x8_0 - 32) | 0x8000000000000000);
}

_OWORD *OUTLINED_FUNCTION_3_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(va, 0xD000000000000012, v4 | 0x8000000000000000);
}

_OWORD *OUTLINED_FUNCTION_4_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, __int128 a14)
{

  return outlined init with take of Any(&a14, &a11);
}

uint64_t LinkActivityManager.__allocating_init(bundleId:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = OUTLINED_FUNCTION_3_21();
  LinkActivityManager.init(bundleId:)(v4, a2);
  return v2;
}

void *LinkActivityManager.init(bundleId:)(uint64_t a1, uint64_t a2)
{
  v2[2] = _swiftEmptyArrayStorage;
  v2[3] = 0;
  type metadata accessor for LinkActivityManager.AtomicSessionResult();
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v5 + 112) = _swiftEmptyArrayStorage;
  v2[4] = v5;
  v2[5] = a1;
  v2[6] = a2;
  LinkActivityManager.fetchCurrentSessionOrCreateNewAssertion()();
  return v2;
}

uint64_t LinkActivityManager.sessionIDString()()
{
  OUTLINED_FUNCTION_8_0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = LinkActivityManager.sessionIDString();

  return LinkActivityManager.sessionID()();
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = v1;
  v4 = v3;
  v7 = *v0;

  v5 = *(v7 + 8);

  return v5(v4, v2);
}

void LinkActivityManager.fetchCurrentSessionOrCreateNewAssertion()()
{
  v1 = type metadata accessor for ActivityDescriptor();
  OUTLINED_FUNCTION_7_1();
  v52 = v2;
  __chkstk_darwin(v3);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ActivityKit17ProcessDescriptorVSgMd, &_s11ActivityKit17ProcessDescriptorVSgMR);
  __chkstk_darwin(v6 - 8);
  v8 = &v48 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ActivityKit0A14AttributesTypeVSgMd, &_s11ActivityKit0A14AttributesTypeVSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = &v48 - v10;
  v12 = type metadata accessor for ActivityPredicate();
  OUTLINED_FUNCTION_7_1();
  v14 = v13;
  __chkstk_darwin(v15);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActivityCenter();
  static ActivityCenter.shared.getter();
  v18 = type metadata accessor for ActivityAttributesType();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v18);
  v49 = v0;

  ProcessDescriptor.init(identifier:)();
  v19 = type metadata accessor for ProcessDescriptor();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v19);
  ActivityPredicate.init(attributesType:owner:)();
  v20 = dispatch thunk of ActivityCenter.descriptors(matching:)();
  v21 = v52;
  v53 = v1;
  (*(v14 + 8))(v17, v12);

  v22 = *(v20 + 16);
  if (v22)
  {
    v54 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
    v23 = v53;
    v24 = v54;
    v26 = v21[2];
    v25 = (v21 + 2);
    v27 = v25[64];
    v48 = v20;
    v28 = v20 + ((v27 + 32) & ~v27);
    v51 = *(v25 + 7);
    v52 = v26;
    v50 = (v25 - 8);
    do
    {
      (v52)(v5, v28, v23);
      v29 = ActivityDescriptor.id.getter();
      v23 = v53;
      v30 = v29;
      v32 = v31;
      (*v50)(v5, v53);
      v54 = v24;
      v34 = v24[2];
      v33 = v24[3];
      if (v34 >= v33 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v33 > 1, v34 + 1, 1);
        v23 = v53;
        v24 = v54;
      }

      v24[2] = v34 + 1;
      v35 = &v24[2 * v34];
      v35[4] = v30;
      v35[5] = v32;
      v28 += v51;
      --v22;
    }

    while (v22);

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.voiceCommands);
    OUTLINED_FUNCTION_3_21();

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v54 = v40;
      *v39 = 136315138;
      v41 = Array.description.getter();
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v54);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_0, v37, v38, "LinkActivityManager: Fetched current session: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      OUTLINED_FUNCTION_15_0(v40);
      OUTLINED_FUNCTION_15_0(v39);
    }

    *(v49 + 16) = v24;
  }

  else
  {

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Logger.voiceCommands);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_0, v45, v46, "LinkActivityManager: no current session, taking assertion...", v47, 2u);
      OUTLINED_FUNCTION_15_0(v47);
    }

    LinkActivityManager.takeSessionAssertion()();
  }
}

uint64_t LinkActivityManager.sessionID()()
{
  *(v1 + 16) = v0;
  return _swift_task_switch(LinkActivityManager.sessionID());
}

{
  v17 = v0;
  v1 = *(v0 + 16);
  if (*(*(v1 + 16) + 16))
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.voiceCommands);
    OUTLINED_FUNCTION_3_21();

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v16 = v6;
      *v5 = 136315138;

      v7 = Array.description.getter();
      v9 = v8;

      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, &v16);

      *(v5 + 4) = v10;
      OUTLINED_FUNCTION_6_19(&dword_0, v11, v12, "LinkActivityManager: Returning one of active session IDs in: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      OUTLINED_FUNCTION_15_0(v6);
      OUTLINED_FUNCTION_15_0(v5);
    }

    if (*(*(v1 + 16) + 16))
    {
    }

    v13 = OUTLINED_FUNCTION_4_26();

    return v14(v13);
  }

  else
  {
    *(v0 + 24) = *(v1 + 32);

    return _swift_task_switch(LinkActivityManager.sessionID());
  }
}

{
  OUTLINED_FUNCTION_8_0();
  *(v0 + 32) = *(*(v0 + 24) + 112);

  return _swift_task_switch(LinkActivityManager.sessionID());
}

{
  v15 = v0;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.voiceCommands);
  OUTLINED_FUNCTION_3_21();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    v6 = Array.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v14);

    *(v4 + 4) = v8;
    OUTLINED_FUNCTION_6_19(&dword_0, v9, v10, "LinkActivityManager: Returning one of assertion session IDs in: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    OUTLINED_FUNCTION_15_0(v5);
    OUTLINED_FUNCTION_15_0(v4);
  }

  if (*(*(v0 + 32) + 16))
  {
  }

  v11 = OUTLINED_FUNCTION_4_26();

  return v12(v11);
}

void LinkActivityManager.takeSessionAssertion()()
{
  v1 = v0;
  type metadata accessor for SNAAssertionTarget();
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);

  v5 = SNAAssertionTarget.__allocating_init(bundleIdentifier:)(v2, v3, v4);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = objc_allocWithZone(SNAAssertion);
  v8 = @nonobjc SNAAssertion.init(explanation:target:invalidateOnSessionRequest:invalidationHandler:)(0xD000000000000036, 0x80000000002326D0, v5, 1, partial apply for closure #1 in LinkActivityManager.takeSessionAssertion(), v6);
  v9 = *(v1 + 24);
  *(v1 + 24) = v8;
}

id SNAAssertionTarget.__allocating_init(bundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 initWithBundleIdentifier:v4];

  return v5;
}

uint64_t closure #1 in LinkActivityManager.takeSessionAssertion()(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v5 - 8);
  v7 = v36 - v6;
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.voiceCommands);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "Got assertion", v11, 2u);
  }

  if (a2)
  {
    swift_errorRetain();

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v36[0] = a1;
      v14 = swift_slowAlloc();
      v37[0] = swift_slowAlloc();
      *v14 = 136315394;
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v17 = *(Strong + 40);
        v16 = *(Strong + 48);
      }

      else
      {
        v17 = 0x7974706D65;
        v16 = 0xE500000000000000;
      }

      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, v37);

      *(v14 + 4) = v25;
      *(v14 + 12) = 2080;
      v36[1] = a2;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v26 = String.init<A>(describing:)();
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v37);

      *(v14 + 14) = v28;
      _os_log_impl(&dword_0, v12, v13, "Failed to take an assertion for app %s with error: %s", v14, 0x16u);
      swift_arrayDestroy();

      a1 = v36[0];
    }

    else
    {
    }
  }

  else
  {

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v37[0] = v21;
      *v20 = 136315138;
      swift_beginAccess();
      v22 = swift_weakLoadStrong();
      if (v22)
      {
        v24 = *(v22 + 40);
        v23 = *(v22 + 48);
      }

      else
      {
        v24 = 0x7974706D65;
        v23 = 0xE500000000000000;
      }

      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v23, v37);

      *(v20 + 4) = v29;
      _os_log_impl(&dword_0, v18, v19, "Took SessionKit assertion for app: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
    }
  }

  swift_beginAccess();
  v30 = swift_weakLoadStrong();
  if (v30)
  {
    v31 = *(v30 + 32);
  }

  else
  {
    v31 = 0;
  }

  v32 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v32);
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = 0;
  v33[4] = v31;
  v33[5] = a1;
  v34 = a1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0);
}

uint64_t closure #1 in closure #1 in LinkActivityManager.takeSessionAssertion()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return _swift_task_switch(closure #1 in closure #1 in LinkActivityManager.takeSessionAssertion());
}

uint64_t closure #1 in closure #1 in LinkActivityManager.takeSessionAssertion()()
{
  OUTLINED_FUNCTION_8_0();
  if (*(v0 + 24))
  {
    v1 = [*(v0 + 32) sessionIdentifiers];
    *(v0 + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_task_switch(closure #1 in closure #1 in LinkActivityManager.takeSessionAssertion());
  }

  else
  {
    **(v0 + 16) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  *(*(v0 + 24) + 112) = *(v0 + 40);

  return _swift_task_switch(closure #1 in closure #1 in LinkActivityManager.takeSessionAssertion());
}

{
  **(v0 + 16) = *(v0 + 24) == 0;
  return (*(v0 + 8))();
}

uint64_t LinkActivityManager.AtomicSessionResult.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t LinkActivityManager.deinit()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    [v1 invalidate];
  }

  return v0;
}

uint64_t LinkActivityManager.__deallocating_deinit()
{
  LinkActivityManager.deinit();

  return swift_deallocClassInstance();
}

unint64_t type metadata accessor for SNAAssertionTarget()
{
  result = lazy cache variable for type metadata for SNAAssertionTarget;
  if (!lazy cache variable for type metadata for SNAAssertionTarget)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SNAAssertionTarget);
  }

  return result;
}

uint64_t sub_C4CA0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0);
}

id @nonobjc SNAAssertion.init(explanation:target:invalidateOnSessionRequest:invalidationHandler:)(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = String._bridgeToObjectiveC()();

  if (a5)
  {
    v16[4] = a5;
    v16[5] = a6;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed CATResult, @guaranteed Error?) -> ();
    v16[3] = &block_descriptor_6;
    v13 = _Block_copy(v16);
  }

  else
  {
    v13 = 0;
  }

  v14 = [v7 initWithExplanation:v12 target:a3 invalidateOnSessionRequest:a4 & 1 invalidationHandler:v13];
  _Block_release(v13);

  return v14;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_C4DFC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t partial apply for closure #1 in closure #1 in LinkActivityManager.takeSessionAssertion()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = protocol witness for ScreentimeCheckFlowStrategyAsync.makeAppRestrictedByScreentimeResponse() in conformance WFScreentimeCheckFlowStrategy;

  return closure #1 in closure #1 in LinkActivityManager.takeSessionAssertion()(a1, v4, v5, v7, v6);
}

void OUTLINED_FUNCTION_6_19(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

Swift::String __swiftcall LNConfirmationActionName.toIntentVerb()()
{
  v1 = [v0 type] - 3;
  v2 = 0xE200000000000000;
  v3 = 28516;
  switch(v1)
  {
    case 0uLL:
      break;
    case 1uLL:
      v2 = 0xE300000000000000;
      v3 = 7239026;
      break;
    case 2uLL:
      v3 = 28519;
      break;
    case 3uLL:
      v2 = 0xE400000000000000;
      v3 = 2003134838;
      break;
    case 4uLL:
      v2 = 0xE400000000000000;
      v3 = 1852141679;
      break;
    case 5uLL:
      v2 = 0xE500000000000000;
      v3 = 0x726564726FLL;
      break;
    case 6uLL:
      v2 = 0xE400000000000000;
      v3 = 1802465122;
      break;
    case 7uLL:
      v2 = 0xE300000000000000;
      v5 = 24944;
      goto LABEL_27;
    case 8uLL:
      v2 = 0xE300000000000000;
      v5 = 30050;
LABEL_27:
      v3 = v5 | 0x790000u;
      break;
    case 9uLL:
      v2 = 0xE700000000000000;
      v3 = 0x74736575716572;
      break;
    case 0xAuLL:
      v2 = 0xEF6E6F6974616769;
      v3 = 0x76616E7472617473;
      break;
    case 0xBuLL:
      v2 = 0xE500000000000000;
      v3 = 0x6572616873;
      break;
    case 0xCuLL:
      v2 = 0xE400000000000000;
      v3 = 1953722224;
      break;
    case 0xDuLL:
      v2 = 0xE400000000000000;
      v3 = 1684956531;
      break;
    case 0xEuLL:
      v2 = 0xE600000000000000;
      v3 = 0x657461657263;
      break;
    case 0xFuLL:
      v2 = 0xE300000000000000;
      v3 = 6579297;
      break;
    case 0x10uLL:
      v2 = 0xE600000000000000;
      v3 = 0x686372616573;
      break;
    case 0x11uLL:
      v3 = 1684957542;
      v2 = 0xE400000000000000;
      break;
    case 0x12uLL:
      v2 = 0xE600000000000000;
      v3 = 0x7265746C6966;
      break;
    case 0x13uLL:
      v2 = 0xE600000000000000;
      v3 = 0x656C67676F74;
      break;
    case 0x14uLL:
      v2 = 0xE700000000000000;
      v4 = 0x6F206E727574;
      goto LABEL_19;
    case 0x15uLL:
      v2 = 0xE800000000000000;
      v3 = 0x66666F206E727574;
      break;
    case 0x16uLL:
      v3 = 7628147;
      v2 = 0xE300000000000000;
      break;
    case 0x17uLL:
      v2 = 0xE800000000000000;
      v3 = 0x64616F6C6E776F64;
      break;
    case 0x18uLL:
      v2 = 0xE300000000000000;
      v3 = 7628135;
      break;
    case 0x19uLL:
      v2 = 0xE700000000000000;
      v4 = 0x696B63656863;
LABEL_19:
      v3 = v4 & 0xFFFFFFFFFFFFLL | 0x6E000000000000;
      break;
    case 0x1AuLL:
      v2 = 0xE300000000000000;
      v3 = 6778732;
      break;
    case 0x1BuLL:
      v2 = 0xE700000000000000;
      v3 = 0x61746164646461;
      break;
    case 0x1CuLL:
      v2 = 0xE400000000000000;
      v3 = 1819042147;
      break;
    case 0x1DuLL:
      v2 = 0xE400000000000000;
      v3 = 2036427888;
      break;
    case 0x1EuLL:
      v2 = 0xEA0000000000646ELL;
      v3 = 0x756F732079616C70;
      break;
    default:
      v3 = 0;
      v2 = 0xE000000000000000;
      break;
  }

  result._object = v2;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t WFRunVoiceShortcutFlow.__allocating_init(deviceState:appPolicyHandler:)(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24));
  OUTLINED_FUNCTION_34_9();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_3();
  v6 = OUTLINED_FUNCTION_20_7(v5);
  v7(v6);
  OUTLINED_FUNCTION_40_4();
  v8 = OUTLINED_FUNCTION_1_18();
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v3;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WFRunVoiceShortcutFlowError(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t ShortcutIdentification.getIdentifyingName(vcClient:)()
{
  OUTLINED_FUNCTION_15_2();
  v3 = v2[3];
  v4 = v2[4];
  v5 = __swift_project_boxed_opaque_existential_1(v2, v3);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = ShortcutIdentification.getIdentifyingName(vcClient:);

  return specialized ShortcutIdentification.getIdentifyingName(vcClient:)(v5, v0, v3, v4);
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = v1;
  OUTLINED_FUNCTION_9_0();
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_18_16();

  return v6(v5, v2);
}

uint64_t WFRunVoiceShortcutFlow.init(deviceState:appPolicyHandler:)(uint64_t a1, uint64_t a2)
{
  __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24));
  OUTLINED_FUNCTION_34_9();
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_3();
  v5 = OUTLINED_FUNCTION_20_7(v4);
  v6(v5);
  OUTLINED_FUNCTION_40_4();
  v7 = OUTLINED_FUNCTION_1_18();
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  return v2;
}

uint64_t WFRunVoiceShortcutFlow.on(input:)(uint64_t a1)
{
  v103 = type metadata accessor for VoiceCommandsNLIntent(0);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4_27();
  v102 = v3;
  OUTLINED_FUNCTION_22_10();
  v4 = type metadata accessor for NLIntent();
  OUTLINED_FUNCTION_7_1();
  v111 = v5;
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4_27();
  v110 = v7;
  v8 = OUTLINED_FUNCTION_22_10();
  v9 = type metadata accessor for WFRunVoiceShortcutFlow.State(v8);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_3();
  v13 = (v12 - v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriLinkFlowPlugin16VoiceCommandTaskOSgMd, &_s18SiriLinkFlowPlugin16VoiceCommandTaskOSgMR);
  v15 = OUTLINED_FUNCTION_14(v14);
  __chkstk_darwin(v15);
  v100 = v92 - v16;
  v17 = OUTLINED_FUNCTION_22_10();
  v101 = type metadata accessor for ShortcutIdentification(v17);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_4_27();
  v93 = v19;
  OUTLINED_FUNCTION_22_10();
  v97 = type metadata accessor for Siri_Nlu_External_UserParse();
  OUTLINED_FUNCTION_7_1();
  v95 = v20;
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_4_27();
  v94 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v24 = OUTLINED_FUNCTION_14(v23);
  v25 = __chkstk_darwin(v24);
  v99 = v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v107 = v92 - v27;
  OUTLINED_FUNCTION_22_10();
  v98 = type metadata accessor for USOParse();
  OUTLINED_FUNCTION_7_1();
  v108 = v28;
  __chkstk_darwin(v29);
  OUTLINED_FUNCTION_4_27();
  v96 = v30;
  OUTLINED_FUNCTION_22_10();
  type metadata accessor for Parse();
  OUTLINED_FUNCTION_7_1();
  v105 = v32;
  v106 = v31;
  __chkstk_darwin(v31);
  OUTLINED_FUNCTION_4_27();
  v112 = v33;
  OUTLINED_FUNCTION_22_10();
  v34 = type metadata accessor for Input();
  OUTLINED_FUNCTION_7_1();
  v36 = v35;
  __chkstk_darwin(v37);
  OUTLINED_FUNCTION_3();
  v40 = v39 - v38;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v41 = type metadata accessor for Logger();
  __swift_project_value_buffer(v41, static Logger.voiceCommands);
  v42 = *(v36 + 16);
  v109 = a1;
  v42(v40, a1, v34);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = OUTLINED_FUNCTION_48();
    v46 = OUTLINED_FUNCTION_85();
    v92[0] = v4;
    v47 = v46;
    v113 = v46;
    *v45 = 136315138;
    v48 = Input.description.getter();
    v92[1] = v9;
    v49 = v13;
    v51 = v50;
    (*(v36 + 8))(v40, v34);
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v51, &v113);
    v13 = v49;

    *(v45 + 4) = v52;
    _os_log_impl(&dword_0, v43, v44, "#WFRunVoiceShortcutFlow on input: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    v53 = v47;
    v4 = v92[0];
    OUTLINED_FUNCTION_15_0(v53);
    OUTLINED_FUNCTION_15_0(v45);
  }

  else
  {

    (*(v36 + 8))(v40, v34);
  }

  v54 = v112;
  Input.parse.getter();
  v56 = v105;
  v55 = v106;
  v57 = (*(v105 + 88))(v54, v106);
  v59 = v110;
  v58 = v111;
  v61 = v107;
  v60 = v108;
  if (v57 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v56 + 96))(v54, v55);
    (*(v58 + 32))(v59, v54, v4);
    v62 = v102;
    (*(v58 + 16))(v102, v59, v4);
    if (one-time initialization token for voiceCommandNameNode != -1)
    {
      swift_once();
    }

    _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_0(&lazy protocol witness table cache variable for type VoiceCommandsNLIntent and conformance VoiceCommandsNLIntent, type metadata accessor for VoiceCommandsNLIntent, &protocol conformance descriptor for VoiceCommandsNLIntent);
    IntentNodeTraversable.value<A>(forNode:)();
    outlined destroy of VoiceCommandsNLIntent(v62, type metadata accessor for VoiceCommandsNLIntent);
    (*(v58 + 8))(v59, v4);
    v63 = v114;
    if (v114)
    {
      *v13 = v113;
      v13[1] = v63;
      swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
    v80 = OBJC_IVAR____TtC18SiriLinkFlowPlugin22WFRunVoiceShortcutFlow_state;
    v81 = v104;
    OUTLINED_FUNCTION_57_0(v104 + OBJC_IVAR____TtC18SiriLinkFlowPlugin22WFRunVoiceShortcutFlow_state, &v113);
    v82 = v81 + v80;
    v83 = v13;
    goto LABEL_16;
  }

  if (v57 == enum case for Parse.uso(_:))
  {
    v111 = v13;
    v64 = v112;
    v65 = OUTLINED_FUNCTION_22();
    v66(v65);
    v67 = v96;
    v68 = v98;
    (*(v60 + 32))(v96, v64, v98);
    v69 = v94;
    USOParse.userParse.getter();
    v70 = Siri_Nlu_External_UserParse.userDialogActs.getter();
    (*(v95 + 8))(v69, v97);
    specialized Collection.first.getter(v70, v61);

    v71 = v99;
    outlined init with copy of Siri_Nlu_External_UserDialogAct?(v61, v99, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    v72 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
    if (OUTLINED_FUNCTION_37_8() == 1)
    {
      outlined destroy of Any?(v61, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
      (*(v60 + 8))(v67, v68);
      outlined destroy of Any?(v71, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
      v73 = type metadata accessor for VoiceCommandTask(0);
      v74 = v100;
      __swift_storeEnumTagSinglePayload(v100, 1, 1, v73);
LABEL_18:
      outlined destroy of Any?(v74, &_s18SiriLinkFlowPlugin16VoiceCommandTaskOSgMd, &_s18SiriLinkFlowPlugin16VoiceCommandTaskOSgMR);
      return 0;
    }

    v85 = v100;
    Siri_Nlu_External_UserDialogAct.convertToVoiceCommandTask()(v100);
    outlined destroy of Any?(v61, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    (*(v60 + 8))(v67, v68);
    v74 = v85;
    (*(*(v72 - 8) + 8))(v71, v72);
    v86 = type metadata accessor for VoiceCommandTask(0);
    if (__swift_getEnumTagSinglePayload(v85, 1, v86) == 1)
    {
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_22_4();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v87 = v93;
      _s18SiriLinkFlowPlugin22ShortcutIdentificationOWObTm_0(v85, v93, type metadata accessor for ShortcutIdentification);
      v88 = v87;
      v89 = v111;
      _s18SiriLinkFlowPlugin22ShortcutIdentificationOWObTm_0(v88, v111, type metadata accessor for ShortcutIdentification);
      swift_storeEnumTagMultiPayload();
      v90 = OBJC_IVAR____TtC18SiriLinkFlowPlugin22WFRunVoiceShortcutFlow_state;
      v91 = v104;
      OUTLINED_FUNCTION_57_0(v104 + OBJC_IVAR____TtC18SiriLinkFlowPlugin22WFRunVoiceShortcutFlow_state, &v113);
      v82 = v91 + v90;
      v83 = v89;
LABEL_16:
      outlined assign with take of WFRunVoiceShortcutFlow.State(v83, v82);
      swift_endAccess();
      return 1;
    }

    outlined destroy of VoiceCommandsNLIntent(v85, type metadata accessor for VoiceCommandTask);
  }

  else
  {
    v75 = lazy protocol witness table accessor for type WFRunVoiceShortcutFlowError and conformance WFRunVoiceShortcutFlowError();
    v76 = OUTLINED_FUNCTION_16_6(&type metadata for WFRunVoiceShortcutFlowError, v75);
    *v77 = 0;
    *v13 = v76;
    swift_storeEnumTagMultiPayload();
    v78 = OBJC_IVAR____TtC18SiriLinkFlowPlugin22WFRunVoiceShortcutFlow_state;
    v79 = v104;
    OUTLINED_FUNCTION_57_0(v104 + OBJC_IVAR____TtC18SiriLinkFlowPlugin22WFRunVoiceShortcutFlow_state, &v113);
    outlined assign with take of WFRunVoiceShortcutFlow.State(v13, v79 + v78);
    swift_endAccess();
    (*(v56 + 8))(v112, v55);
  }

  return 0;
}

uint64_t WFRunVoiceShortcutFlow.execute()()
{
  OUTLINED_FUNCTION_8_0();
  v1[124] = v0;
  v1[123] = v2;
  v3 = type metadata accessor for WorkflowRunnerFlow.State(0);
  v1[125] = v3;
  OUTLINED_FUNCTION_14(v3);
  v1[126] = OUTLINED_FUNCTION_28();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy18SiriLinkFlowPlugin0A19WorkflowRunnerEventOGMd, &_sScSy18SiriLinkFlowPlugin0A19WorkflowRunnerEventOGMR);
  v1[127] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v1[128] = v5;
  v1[129] = OUTLINED_FUNCTION_28();
  v6 = type metadata accessor for DateTimeResolver();
  v1[130] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v1[131] = v7;
  v1[132] = OUTLINED_FUNCTION_28();
  v8 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14(v8);
  v1[133] = OUTLINED_FUNCTION_28();
  v9 = type metadata accessor for ShortcutIdentification(0);
  OUTLINED_FUNCTION_14(v9);
  v1[134] = OUTLINED_FUNCTION_28();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  OUTLINED_FUNCTION_14(v10);
  v1[135] = swift_task_alloc();
  v1[136] = swift_task_alloc();
  v1[137] = swift_task_alloc();
  v1[138] = swift_task_alloc();
  v11 = type metadata accessor for WFRunVoiceShortcutFlow.State(0);
  v1[139] = v11;
  OUTLINED_FUNCTION_14(v11);
  v1[140] = swift_task_alloc();
  v1[141] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v12);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1160) = v3;
  *(v1 + 1168) = v4;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5);
}

{
  v1 = *(v0 + 1168);
  if (v1)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.voiceCommands);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_50(v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      OUTLINED_FUNCTION_26(&dword_0, v6, v7, "#WFRunVoiceShortcutFlow has shortcut name, moving onto WorkflowRunnerFlow");
      OUTLINED_FUNCTION_15_0(v5);
    }

    v8 = *(v0 + 1160);

    *(v0 + 16) = v8;
    *(v0 + 24) = v1;
    *(v0 + 80) = 0;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 1056);
    v10 = *(v0 + 1048);
    v11 = *(v0 + 1040);
    v12 = static WFDialogState.shared;
    static AceService.currentAsync.getter();
    static Device.current.getter();
    static OutputPublisherFactory.makeOutputPublisherAsync()();
    v13 = type metadata accessor for RunCustomIntentCATs(0);
    OUTLINED_FUNCTION_51_2(v13);
    OUTLINED_FUNCTION_76_0();
    v61 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for RunVoiceCommandCATs(0);
    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_76_0();
    v63 = CATWrapper.__allocating_init(options:globals:)();
    v56 = type metadata accessor for RunVoiceCommandCATsSimple(0);
    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_76_0();
    v14 = CATWrapperSimple.__allocating_init(options:globals:)();
    v15 = type metadata accessor for WorkflowRunnerCATPatternsExecutor(0);
    OUTLINED_FUNCTION_51_2(v15);
    OUTLINED_FUNCTION_76_0();
    v59 = CATWrapper.__allocating_init(options:globals:)();
    static AceService.currentAsync.getter();
    v16 = type metadata accessor for LocationProvider();
    v17 = swift_allocObject();
    *(v17 + 16) = 0x3FA999999999999ALL;
    outlined init with take of AceServiceInvokerAsync((v0 + 88), v17 + 24);
    DateTimeResolver.init()();
    v60 = type metadata accessor for WorkflowRunnerFlow(0);
    v18 = objc_allocWithZone(v60);
    *(v0 + 672) = v16;
    *(v0 + 680) = &protocol witness table for LocationProvider;
    *(v0 + 648) = v17;
    *(v0 + 712) = &type metadata for DefaultTCCTemplatesCATWrapper;
    *(v0 + 720) = &protocol witness table for DefaultTCCTemplatesCATWrapper;
    *(v0 + 752) = v11;
    *(v0 + 760) = &protocol witness table for DateTimeResolver;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 728));
    (*(v10 + 16))(boxed_opaque_existential_1, v9, v11);
    *(v0 + 152) = &type metadata for DefaultLinkHandlingFlowFactory;
    *(v0 + 160) = &protocol witness table for DefaultLinkHandlingFlowFactory;
    memcpy(&v18[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput], (v0 + 16), 0x41uLL);
    outlined init with copy of DeviceState(v0 + 248, &v18[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_aceServiceInvoker]);
    outlined init with copy of DeviceState(v0 + 288, &v18[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_deviceState]);
    *&v18[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_dialogState] = v12;
    outlined init with copy of DeviceState(v0 + 328, &v18[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_outputPublisher]);
    outlined init with copy of DeviceState(v0 + 648, &v18[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_locationProvider]);
    outlined init with copy of DeviceState(v0 + 728, &v18[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_dateTimeResolver]);
    outlined init with copy of DeviceState(v0 + 128, &v18[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_linkHandlingFlowFactory]);
    *&v18[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_runVoiceCommandsCatWrapperSimple] = v14;
    v20 = &v18[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_locationGuardFlowProvider];
    *v20 = closure #1 in variable initialization expression of static SLFLocationAccessGuardProvider.makeGuardFlow;
    v20[1] = 0;
    outlined init with copy of DeviceState(v0 + 688, &v18[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_tccTemplatesCATWrapper]);
    outlined init with copy of DeviceState(v0 + 288, v0 + 568);
    type metadata accessor for RunLinkActionCATs(0);

    v58 = v12;

    v62 = v14;

    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_76_0();
    v21 = CATWrapper.__allocating_init(options:globals:)();
    v22 = type metadata accessor for RunLinkActionCATsSimple(0);
    OUTLINED_FUNCTION_51_2(v22);
    OUTLINED_FUNCTION_76_0();
    v23 = CATWrapperSimple.__allocating_init(options:globals:)();
    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_76_0();
    v24 = CATWrapper.__allocating_init(options:globals:)();
    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_76_0();
    v25 = CATWrapperSimple.__allocating_init(options:globals:)();
    v26 = type metadata accessor for RunLinkActionCATPatternsExecutor(0);
    OUTLINED_FUNCTION_51_2(v26);
    OUTLINED_FUNCTION_76_0();
    v27 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for LinkActionDialogTemplating();
    v28 = swift_allocObject();
    v28[14] = v56;
    v28[15] = &protocol witness table for RunLinkActionCATPatternsExecutor;
    v28[11] = v27;
    outlined init with take of AceServiceInvokerAsync((v0 + 568), (v28 + 2));
    v28[7] = v21;
    v28[8] = v23;
    v28[9] = v24;
    v28[10] = v25;
    *&v18[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_linkActionDialogTemplate] = v28;
    outlined init with copy of Siri_Nlu_External_UserDialogAct?(v0 + 208, v0 + 488, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMd, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMR);
    if (*(v0 + 512))
    {
      outlined init with take of AceServiceInvokerAsync((v0 + 488), v0 + 528);
      outlined init with take of AceServiceInvokerAsync((v0 + 528), &v18[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner]);
    }

    else
    {
      outlined destroy of Any?(v0 + 488, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMd, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMR);
      outlined init with copy of DeviceState(v0 + 288, v0 + 448);
      outlined init with copy of DeviceState(v0 + 248, v0 + 408);
      v37 = type metadata accessor for SiriWorkflowRunner();
      swift_allocObject();

      v38 = SiriWorkflowRunner.init(workflowRunnerInput:deviceState:aceServiceInvoker:)((v0 + 16), (v0 + 448), (v0 + 408));
      v39 = &v18[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner];
      *(v39 + 3) = v37;
      *(v39 + 4) = &protocol witness table for SiriWorkflowRunner;
      *v39 = v38;
    }

    v54 = *(v0 + 1040);
    v55 = *(v0 + 1056);
    v40 = *(v0 + 1032);
    v51 = *(v0 + 1016);
    v52 = *(v0 + 1024);
    v50 = *(v0 + 1008);
    v53 = *(v0 + 1048);
    v57 = *(v0 + 1072);
    outlined init with copy of DeviceState(v0 + 288, v0 + 368);
    type metadata accessor for WorkflowRunnerCATs(0);

    static CATOption.defaultMode.getter();
    v41 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for WorkflowRunnerCATsSimple(0);
    static CATOption.defaultMode.getter();
    v42 = CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for RunCustomIntentCATsSimple(0);
    static CATOption.defaultMode.getter();
    v43 = CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for WorkflowDialogTemplating();
    swift_allocObject();
    *&v18[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_dialogTemplating] = WorkflowDialogTemplating.init(deviceState:dialogState:workflowCatWrapper:workflowCatWrapperSimple:runCustomCatWrapper:runCustomCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:)(v0 + 368, v58, v41, v42, v61, v43, v63, v62, v59);
    outlined init with copy of DeviceState(&v18[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner], v0 + 768);
    v44 = *(v0 + 792);
    v45 = *(v0 + 800);
    __swift_project_boxed_opaque_existential_1((v0 + 768), v44);
    (*(v45 + 8))(v44, v45);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 768));
    AsyncStream.makeAsyncIterator()();
    (*(v52 + 8))(v40, v51);
    swift_storeEnumTagMultiPayload();
    _s18SiriLinkFlowPlugin22ShortcutIdentificationOWObTm_0(v50, &v18[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state], type metadata accessor for WorkflowRunnerFlow.State);
    *(v0 + 944) = v18;
    *(v0 + 952) = v60;
    v46 = objc_msgSendSuper2((v0 + 944), "init");

    (*(v53 + 8))(v55, v54);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 328));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 288));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 248));
    outlined destroy of Any?(v0 + 208, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMd, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 728));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 688));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 648));
    *(v0 + 968) = v46;
    _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_0(&lazy protocol witness table cache variable for type WorkflowRunnerFlow and conformance WorkflowRunnerFlow, type metadata accessor for WorkflowRunnerFlow, &protocol conformance descriptor for WorkflowRunnerFlow);
    static ExecuteResponse.complete<A>(next:)();
    OUTLINED_FUNCTION_2_28();
    outlined destroy of VoiceCommandsNLIntent(v57, v47);
  }

  else
  {
    v29 = *(v0 + 1136);
    v30 = *(v0 + 1120);
    v31 = *(v0 + 1072);
    v32 = *(v0 + 992);
    v33 = lazy protocol witness table accessor for type WFRunVoiceShortcutFlowError and conformance WFRunVoiceShortcutFlowError();
    v34 = OUTLINED_FUNCTION_16_6(&type metadata for WFRunVoiceShortcutFlowError, v33);
    *v35 = 4;
    *v30 = v34;
    OUTLINED_FUNCTION_22_4();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_57_0(v32 + v29, v0 + 808);
    outlined assign with take of WFRunVoiceShortcutFlow.State(v30, v32 + v29);
    swift_endAccess();
    static ExecuteResponse.complete()();
    OUTLINED_FUNCTION_2_28();
    outlined destroy of VoiceCommandsNLIntent(v31, v36);
  }

  OUTLINED_FUNCTION_1_32();

  OUTLINED_FUNCTION_6_0();

  return v48();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 1184) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_12_0();
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  v1 = v0[24];
  v2 = v0[25];
  __swift_project_boxed_opaque_existential_1(v0 + 21, v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[149] = v3;
  *v3 = v4;
  v3[1] = WFRunVoiceShortcutFlow.execute();

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 76, v1, v2);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 1200) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

void WFRunVoiceShortcutFlow.execute()()
{
  v73 = v0;
  v1 = v0[141];
  v2 = v0[124];
  v3 = OBJC_IVAR____TtC18SiriLinkFlowPlugin22WFRunVoiceShortcutFlow_state;
  v0[142] = OBJC_IVAR____TtC18SiriLinkFlowPlugin22WFRunVoiceShortcutFlow_state;
  swift_beginAccess();
  outlined init with copy of WFRunVoiceShortcutFlow.State(v2 + v3, v1, type metadata accessor for WFRunVoiceShortcutFlow.State);
  OUTLINED_FUNCTION_22_4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      _s18SiriLinkFlowPlugin22ShortcutIdentificationOWObTm_0(v0[141], v0[134], type metadata accessor for ShortcutIdentification);
      type metadata accessor for VoiceShortcutClientWrapper();
      v0[143] = swift_initStackObject();
      v27 = swift_task_alloc();
      v0[144] = v27;
      *v27 = v0;
      v27[1] = WFRunVoiceShortcutFlow.execute();
      OUTLINED_FUNCTION_58();

      __asm { BR              X2 }

      return;
    case 2u:
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Logger.voiceCommands);
      OUTLINED_FUNCTION_1_18();
      swift_errorRetain();
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = OUTLINED_FUNCTION_48();
        v15 = OUTLINED_FUNCTION_85();
        v72 = v15;
        *v14 = 136315138;
        swift_getErrorValue();
        v16 = Error.localizedDescription.getter();
        v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v72);

        *(v14 + 4) = v18;
        _os_log_impl(&dword_0, v12, v13, "#WFRunVoiceShortcutFlo in error state, error: %s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v15);
        OUTLINED_FUNCTION_15_0(v15);
        OUTLINED_FUNCTION_15_0(v14);
      }

      static ExecuteResponse.complete()();

      break;
    case 3u:
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v19 = v0[138];
      v20 = v0[137];
      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static Logger.voiceCommands);
      OUTLINED_FUNCTION_42_6();
      v23 = v22;
      (*(v22 + 16))(v19);
      OUTLINED_FUNCTION_49_3();
      __swift_storeEnumTagSinglePayload(v24, v25, v26, v21);
      outlined init with copy of Siri_Nlu_External_UserDialogAct?(v19, v20, &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
      if (OUTLINED_FUNCTION_37_8() == 1)
      {
        outlined destroy of Any?(v0[137], &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
      }

      else
      {
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.error.getter();
        if (OUTLINED_FUNCTION_50(v47))
        {
          v48 = OUTLINED_FUNCTION_85();
          v49 = swift_slowAlloc();
          v72 = v49;
          *v48 = 136315650;
          v50 = StaticString.description.getter();
          v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v72);

          *(v48 + 4) = v52;
          *(v48 + 12) = 2048;
          *(v48 + 24) = OUTLINED_FUNCTION_27_11(105, v68, v69, v70, v71);
          OUTLINED_FUNCTION_44_6();
          _os_log_impl(v53, v54, v55, v56, v48, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_15_0(v49);
          OUTLINED_FUNCTION_15_0(v48);
        }

        (*(v23 + 8))(v0[137], v21);
      }

      goto LABEL_36;
    case 4u:
      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      v0[147] = v8;
      *v8 = v9;
      v8[1] = WFRunVoiceShortcutFlow.execute();
      OUTLINED_FUNCTION_58();

      WFRunVoiceShortcutFlow.makeOutputForPromptForShortcutName()();
      return;
    case 5u:
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v30 = v0[136];
      v31 = v0[135];
      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static Logger.voiceCommands);
      OUTLINED_FUNCTION_42_6();
      v34 = v33;
      (*(v33 + 16))(v30);
      OUTLINED_FUNCTION_49_3();
      __swift_storeEnumTagSinglePayload(v35, v36, v37, v32);
      outlined init with copy of Siri_Nlu_External_UserDialogAct?(v30, v31, &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
      if (OUTLINED_FUNCTION_37_8() == 1)
      {
        outlined destroy of Any?(v0[135], &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
      }

      else
      {
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.error.getter();
        if (OUTLINED_FUNCTION_50(v58))
        {
          v59 = OUTLINED_FUNCTION_85();
          v60 = swift_slowAlloc();
          v72 = v60;
          *v59 = 136315650;
          v61 = StaticString.description.getter();
          v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, &v72);

          *(v59 + 4) = v63;
          *(v59 + 12) = 2048;
          *(v59 + 24) = OUTLINED_FUNCTION_27_11(128, v68, v69, v70, v71);
          OUTLINED_FUNCTION_44_6();
          _os_log_impl(v64, v65, v66, v67, v59, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_15_0(v60);
          OUTLINED_FUNCTION_15_0(v59);
        }

        (*(v34 + 8))(v0[135], v32);
      }

LABEL_36:
      static SiriKitLifecycle._logCrashToEventBus(_:)();
      _assertionFailure(_:_:file:line:flags:)();
      OUTLINED_FUNCTION_58();
      return;
    case 6u:
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Logger.voiceCommands);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_50(v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        OUTLINED_FUNCTION_26(&dword_0, v42, v43, "#WFRunVoiceShortcutFlow completed, exiting");
        OUTLINED_FUNCTION_15_0(v41);
      }

      static ExecuteResponse.complete()();
      break;
    default:
      v4 = v0[141];
      v5 = v0[124];
      v0[122] = WFRunVoiceShortcutFlow.makeGuardFlows()();
      v6 = swift_allocObject();
      *(v6 + 16) = partial apply for implicit closure #2 in implicit closure #1 in WFRunVoiceShortcutFlow.execute();
      *(v6 + 24) = v5;
      type metadata accessor for GuardFlow();

      static ExecuteResponse.ongoing<A>(next:childCompletion:)();

      OUTLINED_FUNCTION_2_28();
      outlined destroy of VoiceCommandsNLIntent(v4, v7);
      break;
  }

  OUTLINED_FUNCTION_1_32();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_58();

  __asm { BRAA            X1, X16 }
}