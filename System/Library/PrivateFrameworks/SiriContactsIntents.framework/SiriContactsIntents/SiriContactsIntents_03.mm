id SASTButtonItem.init(action:centered:decoratedLabel:)(void *a1, char a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v6 setAction_];
  [v6 setCentered_];
  v7 = a3;
  [v6 setDecoratedLabel_];

  return v6;
}

id SAUIConfirmationView.init(confirmCommands:confirmText:denyCommands:denyText:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  outlined bridged method (mbgnn) of @objc SAUIConfirmationView.confirmCommands.setter(a1, v12, &selRef_setConfirmCommands_);
  outlined bridged method (mbgnn) of @objc SAUIConfirmationView.confirmText.setter(a2, a3, v12);
  outlined bridged method (mbgnn) of @objc SAUIConfirmationView.confirmCommands.setter(a4, v12, &selRef_setDenyCommands_);
  outlined bridged method (mbgnn) of @objc SAUIConfirmationView.denyText.setter(a5, a6, v12);
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAUIConfirmationOption, 0x277D47A28);
  v13 = SAUIConfirmationOption.init(commands:label:)(a1, a2, a3);
  v14 = SAUIConfirmationOption.init(commands:label:)(a4, a5, a6);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v16 = OUTLINED_FUNCTION_5_18(v15);
  *(v16 + 16) = xmmword_2669681E0;
  *(v16 + 32) = v13;
  *(v16 + 40) = v14;
  v17 = v13;
  v18 = v14;
  outlined bridged method (mbnn) of @objc SASTColumnDataListItem.decoratedRows.setter(v16, v12, &lazy cache variable for type metadata for SAUIConfirmationOption, 0x277D47A28, &selRef_setAllConfirmationOptions_);

  return v12;
}

id SAUIConfirmationOption.init(commands:label:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = v6;
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    v8.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  [v6 setCommands_];

  outlined bridged method (mbnn) of @objc PostalAddress.street.setter(a2, a3, v6, &selRef_setLabel_);
  return v6;
}

void outlined bridged method (mbnn) of @objc SASTColumnDataListItem.decoratedRows.setter(uint64_t a1, void *a2, unint64_t *a3, void *a4, SEL *a5)
{
  type metadata accessor for CNContact(0, a3, a4);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 *a5];
}

void outlined bridged method (mbnn) of @objc SAUIButton.commands.setter(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setCommands_];
}

void outlined bridged method (mbgnn) of @objc SAUIConfirmationView.confirmText.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x26D5E2470](a1, a2);
  [a3 setConfirmText_];
}

void outlined bridged method (mbgnn) of @objc SAUIConfirmationView.confirmCommands.setter(uint64_t a1, void *a2, SEL *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [a2 *a3];
}

void outlined bridged method (mbgnn) of @objc SAUIConfirmationView.denyText.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x26D5E2470](a1, a2);
  [a3 setDenyText_];
}

uint64_t outlined bridged method (ob) of @objc SABaseAceObject.aceId.getter(void *a1)
{
  v2 = [a1 aceId];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void outlined bridged method (mbnn) of @objc SAABPersonSnippet.displayProperties.setter(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setDisplayProperties_];
}

uint64_t outlined destroy of DateComponents?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void OUTLINED_FUNCTION_0_21(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{

  outlined bridged method (mbnn) of @objc PostalAddress.street.setter(v4, v6, v5, a4);
}

void OUTLINED_FUNCTION_3_12()
{
}

uint64_t OUTLINED_FUNCTION_4_12()
{

  return swift_getObjCClassFromMetadata();
}

uint64_t OUTLINED_FUNCTION_5_18(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t ContactsDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[24] = v2;
  v1[25] = v0;
  v1[23] = v3;
  v1[26] = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow28WindowedPaginationParametersVSgMd, &_s11SiriKitFlow28WindowedPaginationParametersVSgMR);
  OUTLINED_FUNCTION_18_0(v4);
  v1[27] = OUTLINED_FUNCTION_10_0();
  v5 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_18_0(v5);
  v1[28] = OUTLINED_FUNCTION_10_0();
  v6 = type metadata accessor for OutputGenerationManifest();
  v1[29] = v6;
  OUTLINED_FUNCTION_1_1(v6);
  v1[30] = v7;
  v1[31] = OUTLINED_FUNCTION_10_0();
  v8 = type metadata accessor for Signpost.OpenSignpost(0);
  v1[32] = v8;
  OUTLINED_FUNCTION_18_0(v8);
  v1[33] = OUTLINED_FUNCTION_10_0();
  v9 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  v51 = v0;
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  v2 = v0[32];
  v1 = v0[33];
  v3 = static Signpost.contactsLog;
  v0[34] = static Signpost.contactsLog;
  v4 = v3;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v5 = v1 + *(v2 + 20);
  *v5 = "MakePromptForDisambiguation";
  *(v5 + 8) = 27;
  *(v5 + 16) = 2;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v6 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_29(v6, static Logger.siriContacts);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_15_0(v8))
  {
    swift_slowAlloc();
    v9 = OUTLINED_FUNCTION_32_4();
    v50 = v9;
    *"MakePromptForDisambiguation" = 136315138;
    v10 = _typeName(_:qualified:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v50);

    *"PromptForDisambiguation" = v12;
    OUTLINED_FUNCTION_11_0();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_11_1();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVySSGMd, &_s11SiriKitFlow22PaginatedItemContainerVySSGMR);
  v0[22] = PaginatedItemContainer.items.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  type metadata accessor for CNContact();
  OUTLINED_FUNCTION_12_8(&lazy protocol witness table cache variable for type [String] and conformance [A]);
  v18 = Sequence.compactMap<A>(_:)();

  v19 = specialized Array._getCount()();
  v20 = MEMORY[0x277D84F90];
  if (v19)
  {
    v21 = v19;
    v50 = MEMORY[0x277D84F90];
    v22 = specialized ContiguousArray.reserveCapacity(_:)();
    if (v21 < 0)
    {
      __break(1u);
      return MEMORY[0x2821B9188](v22, v23, v24, v25, v26, v27);
    }

    v28 = 0;
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v29 = OUTLINED_FUNCTION_22_0();
        v30 = MEMORY[0x26D5E29D0](v29);
      }

      else
      {
        v30 = *(v18 + 8 * v28 + 32);
      }

      v31 = v30;
      ++v28;
      [objc_allocWithZone(MEMORY[0x277CD3E90]) initWithContact_];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      OUTLINED_FUNCTION_36_3();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v21 != v28);
    v20 = v50;
  }

  v0[35] = v20;
  v32 = v0[25];
  static DialogPhase.clarification.getter();
  v33 = swift_task_alloc();
  *(v33 + 16) = v32;
  *(v33 + 24) = v18;
  OutputGenerationManifest.init(dialogPhase:_:)();

  v34 = ContactsStrategy.isSmartEnabled.getter();
  v35 = *(v32 + 120);
  v36 = v0[25];
  if ((v34 & 1) == 0)
  {
    if (v35)
    {
      outlined init with copy of DeviceState(v36 + 16, (v0 + 7));
      v39 = type metadata accessor for ContactResolutionPatternGenerator();
      OUTLINED_FUNCTION_2_6(v39);
      v40 = v35;
    }

    else
    {
      outlined init with copy of DeviceState(v36 + 16, (v0 + 2));
      type metadata accessor for CATGlobals();
      CATGlobals.__allocating_init()();
      v45 = type metadata accessor for ContactResolutionPatternGenerator();
      OUTLINED_FUNCTION_2_6(v45);
    }

    OUTLINED_FUNCTION_34_2();
    v0[39] = ContactResolutionPatternGenerator.init(appBundleId:globals:deviceState:)();
    v46 = v0[27];
    v47 = type metadata accessor for WindowedPaginationParameters();
    __swift_storeEnumTagSinglePayload(v46, 1, 1, v47);

    v48 = swift_task_alloc();
    v0[40] = v48;
    *v48 = v0;
    v48[1] = ContactsDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
    v27 = v0[27];
    v23 = 0xD000000000000025;
    v24 = 0x800000026696E020;
    v25 = 0xD000000000000025;
    v26 = 0x800000026696DFF0;
    v22 = v20;

    return MEMORY[0x2821B9188](v22, v23, v24, v25, v26, v27);
  }

  if (v35)
  {
    outlined init with copy of DeviceState(v36 + 16, (v0 + 17));
    v37 = type metadata accessor for ContactResolutionSnippetGenerator();
    OUTLINED_FUNCTION_2_6(v37);
    v38 = v35;
  }

  else
  {
    outlined init with copy of DeviceState(v36 + 16, (v0 + 12));
    type metadata accessor for CATGlobals();
    CATGlobals.__allocating_init()();
    v41 = type metadata accessor for ContactResolutionSnippetGenerator();
    OUTLINED_FUNCTION_2_6(v41);
  }

  OUTLINED_FUNCTION_34_2();
  v0[36] = ContactResolutionSnippetGenerator.init(appBundleId:globals:deviceState:)();

  v42 = swift_task_alloc();
  v0[37] = v42;
  *v42 = v0;
  v42[1] = ContactsDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
  v43 = v0[31];
  v44 = v0[23];

  return MEMORY[0x2821B91D0](v44, v20, 0xD000000000000025, 0x800000026696DFF0, v43);
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_3();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 304) = v0;

  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  OUTLINED_FUNCTION_19_1();

  v1 = OUTLINED_FUNCTION_23_7();
  v2(v1);
  v3 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_39_1(v3);
  outlined destroy of Signpost.OpenSignpost(v0);

  OUTLINED_FUNCTION_3();

  return v4();
}

{
  OUTLINED_FUNCTION_19_1();
  v2 = *v1;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  *(v3 + 328) = v5;
  *(v3 + 336) = v0;

  outlined destroy of UsoEntity_common_Person.DefinedValues?(*(v2 + 216), &_s11SiriKitFlow28WindowedPaginationParametersVSgMd, &_s11SiriKitFlow28WindowedPaginationParametersVSgMR);

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_4();
  v1 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_2_6(v1);
  v0[43] = ResponseFactory.init()();
  v7 = (*MEMORY[0x277D5BD48] + MEMORY[0x277D5BD48]);
  v2 = swift_task_alloc();
  v0[44] = v2;
  *v2 = v0;
  v2[1] = ContactsDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
  v3 = v0[41];
  v4 = v0[31];
  v5 = v0[23];

  return v7(v5, v3, v4);
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_3();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 360) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  OUTLINED_FUNCTION_19_1();

  v2 = OUTLINED_FUNCTION_23_7();
  v3(v2);
  v4 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_39_1(v4);
  outlined destroy of Signpost.OpenSignpost(v0);

  OUTLINED_FUNCTION_3();

  return v5();
}

{
  OUTLINED_FUNCTION_19_1();

  v1 = OUTLINED_FUNCTION_4_13();
  v2(v1);
  v3 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_21_5(v3);
  outlined destroy of Signpost.OpenSignpost(v0);

  OUTLINED_FUNCTION_3();

  return v4();
}

{
  OUTLINED_FUNCTION_19_1();

  v1 = OUTLINED_FUNCTION_4_13();
  v2(v1);
  v3 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_21_5(v3);
  outlined destroy of Signpost.OpenSignpost(v0);

  OUTLINED_FUNCTION_3();

  return v4();
}

{
  OUTLINED_FUNCTION_19_1();

  v2 = OUTLINED_FUNCTION_4_13();
  v3(v2);
  v4 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_21_5(v4);
  outlined destroy of Signpost.OpenSignpost(v0);

  OUTLINED_FUNCTION_3();

  return v5();
}

uint64_t static ContactsDisambiguationStrategy.extractCurrentContext(from:)()
{
  v2 = *(v1 + 240);
  type metadata accessor for ParameterResolutionRecord();
  v49 = ParameterResolutionRecord.intent.getter();
  v3 = (*(*(v1 + 256) + 32))(v2);
  v50 = MEMORY[0x277D84F90];
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v8 = v7;
    v0 = *(v7 + 16);
    v9 = *(v7 + 24);
    v2 = v0 + 1;
    if (v0 >= v9 >> 1)
    {
LABEL_39:
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v9 > 1, v2, 1, v8);
      v8 = v47;
    }

    *(v8 + 16) = v2;
    v10 = v8 + 16 * v0;
    *(v10 + 32) = v5;
    *(v10 + 40) = v6;
    v50 = v8;
  }

  v11 = ParameterResolutionRecord.result.getter();
  v5 = specialized INIntentResolutionResult.typedDisambiguationItems<A>()();

  v12 = specialized Array._getCount()();
  v6 = 0;
  v13 = MEMORY[0x277D84F90];
  while (v12 != v6)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x26D5E29D0](v6, v5);
    }

    else
    {
      v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6 >= v9)
      {
        goto LABEL_36;
      }

      v14 = *(v5 + 8 * v6 + 32);
    }

    v15 = v14;
    v0 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v2 = outlined bridged method (pb) of @objc INObject.identifier.getter(v14);
    v17 = v16;

    ++v6;
    if (v17)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = OUTLINED_FUNCTION_27_3();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v21, v22, v23, v13);
        v13 = v24;
      }

      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      if (v19 >= v18 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v18 > 1, v19 + 1, 1, v13);
        v13 = v25;
      }

      *(v13 + 16) = v19 + 1;
      v20 = v13 + 16 * v19;
      *(v20 + 32) = v2;
      *(v20 + 40) = v17;
      v6 = v0;
    }
  }

  specialized Array.append<A>(contentsOf:)(v13);
  v26 = v49;
  ObjectType = swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(v49, ObjectType, &protocol descriptor for SiriKitGetEntityIntent))
  {
    v29 = v28;
    v6 = swift_getObjectType();
    v30 = *(v29 + 16);
    v31 = v49;
    v0 = v30(v6, v29);
    v32 = (*(v29 + 104))(v6, v29);
    if (v32)
    {
      v5 = v32;
      v48 = v31;
      v2 = specialized Array._getCount()();
      v33 = 0;
      v34 = MEMORY[0x277D84F90];
      while (v2 != v33)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v35 = MEMORY[0x26D5E29D0](v33, v5);
        }

        else
        {
          v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v33 >= v9)
          {
            goto LABEL_38;
          }

          v35 = *(v5 + 8 * v33 + 32);
        }

        v6 = v35;
        v0 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_37;
        }

        v36 = outlined bridged method (pb) of @objc INObject.identifier.getter(v35);
        v38 = v37;

        ++v33;
        if (v38)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = OUTLINED_FUNCTION_27_3();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v41, v42, v43, v34);
            v34 = v44;
          }

          v6 = *(v34 + 16);
          v39 = *(v34 + 24);
          if (v6 >= v39 >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v39 > 1, v6 + 1, 1, v34);
            v34 = v45;
          }

          *(v34 + 16) = v6 + 1;
          v40 = v34 + 16 * v6;
          *(v40 + 32) = v36;
          *(v40 + 40) = v38;
          v33 = v0;
        }
      }

      specialized Array.append<A>(contentsOf:)(v34);
      v26 = v49;
      v31 = v48;
    }
  }

  return v50;
}

uint64_t static ContactsDisambiguationStrategy.isRequestForDifferentContact(_:currentContactIds:currentRelation:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v83 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v8 = OUTLINED_FUNCTION_18_0(v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v81 - v9;
  USOParse.preferredUserDialogAct.getter(&v81 - v9);
  v11 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v10, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
LABEL_8:
    v82 = 0;
    v14 = 0;
    v88 = 0u;
    v89 = 0u;
LABEL_9:
    v13 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  a1 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
  (*(*(v11 - 8) + 8))(v10, v11);
  if (!a1)
  {
    goto LABEL_8;
  }

  static UsoTask_CodegenConverter.convert(task:)();

  if (!*(&v89 + 1))
  {
    goto LABEL_73;
  }

  outlined init with copy of Any?(&v88, v87);
  v12 = type metadata accessor for UsoTask_noVerb_common_Person();
  if (OUTLINED_FUNCTION_2_21(v12))
  {

    OUTLINED_FUNCTION_24_5();
    dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
    a1 = v85;
    if (v85)
    {
      v13 = UsoEntity_common_Person.contactIds.getter();
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }

    OUTLINED_FUNCTION_24_5();
    dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
    goto LABEL_66;
  }

  common_Person = type metadata accessor for UsoTask_read_common_Person();
  if (OUTLINED_FUNCTION_2_21(common_Person))
  {
LABEL_35:

    OUTLINED_FUNCTION_24_5();
    dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
    a1 = v85;
    if (v85)
    {
      v13 = UsoEntity_common_Person.contactIds.getter();
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }

    OUTLINED_FUNCTION_24_5();
    dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
    goto LABEL_66;
  }

  v75 = type metadata accessor for UsoTask_request_common_Person();
  v76 = OUTLINED_FUNCTION_2_21(v75);
  if (!v76)
  {
    v77 = type metadata accessor for UsoTask_summarise_common_Person();
    if (OUTLINED_FUNCTION_2_21(v77))
    {
      goto LABEL_35;
    }

    updated = type metadata accessor for UsoTask_update_common_Person();
    if (OUTLINED_FUNCTION_2_21(updated))
    {

      OUTLINED_FUNCTION_24_5();
      dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter();
      a1 = v85;
      if (v85)
      {
        v13 = UsoEntity_common_Person.contactIds.getter();
      }

      else
      {
        v13 = MEMORY[0x277D84F90];
      }

      OUTLINED_FUNCTION_24_5();
      dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter();
      goto LABEL_66;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v87);
LABEL_73:
    v82 = 0;
    v14 = 0;
    goto LABEL_9;
  }

  a1 = v86;
  v13 = UsoTask_request_common_Person.contactIds.getter(v76);

  dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
LABEL_66:

  v14 = v85;
  if (v85)
  {
    a1 = dispatch thunk of UsoEntity_common_Person.identifyingRelationship.getter();

    if (a1)
    {
      UsoEntity_common_PersonRelationship.relationshipIdentifierOrLabel.getter();
      v82 = v79;
      v14 = v80;
    }

    else
    {

      v82 = 0;
      v14 = 0;
    }
  }

  else
  {

    v82 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v87);
LABEL_10:
  outlined destroy of UsoEntity_common_Person.DefinedValues?(&v88, &_sypSgMd, &_sypSgMR);
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v15 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_29(v15, static Logger.siriContacts);

  v84 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_33_2();
    v81 = a4;
    v19 = v18;
    *&v88 = OUTLINED_FUNCTION_40_0();
    *v19 = 136315394;

    v21 = MEMORY[0x277D837D0];
    MEMORY[0x26D5E2610](v20, MEMORY[0x277D837D0]);
    v22 = v14;

    v23 = OUTLINED_FUNCTION_36_3();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v25);

    *(v19 + 4) = v26;
    *(v19 + 12) = 2080;
    v27 = MEMORY[0x26D5E2610](a2, v21);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v88);

    *(v19 + 14) = v29;
    v14 = v22;
    _os_log_impl(&dword_26686A000, v16, v17, "#ContactsDisambiguationStrategy isRequestForDifferentContact contactIds: %s, current IDs are %s", v19, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11_1();
    a4 = v81;
    OUTLINED_FUNCTION_6();
  }

  if (*(v13 + 16))
  {

    v31 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v30);

    v33 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v32);
    v34 = specialized _NativeSet.intersection(_:)(v33, v31);

    v35 = *(v34 + 16);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    v38 = OUTLINED_FUNCTION_21_2(v37);
    if (v35)
    {
      if (v38)
      {
        v39 = OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_24_0(v39);
        OUTLINED_FUNCTION_7_4(&dword_26686A000, v40, v41, "#ContactsDisambiguationStrategy isRequestForDifferentContact returning false");
        OUTLINED_FUNCTION_11_1();
      }

      v42 = 0;
      return v42 & 1;
    }

    if (v38)
    {
      v50 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v50);
      v53 = "#ContactsDisambiguationStrategy isRequestForDifferentContact returning true";
LABEL_32:
      OUTLINED_FUNCTION_7_4(&dword_26686A000, v51, v52, v53);
      OUTLINED_FUNCTION_11_1();
      goto LABEL_33;
    }

    goto LABEL_33;
  }

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = OUTLINED_FUNCTION_30();
    *v45 = 0;
    _os_log_impl(&dword_26686A000, v43, v44, "#ContactsDisambiguationStrategy isRequestForDifferentContact no contact IDs found in response parse", v45, 2u);
    OUTLINED_FUNCTION_6();
  }

  if (!a4)
  {
    v36 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_21_2(v54))
    {
      v55 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v55);
      v53 = "#ContactsDisambiguationStrategy isRequestForDifferentContact no current relationship from intent, returning true";
      goto LABEL_32;
    }

LABEL_33:

    v42 = 1;
    return v42 & 1;
  }

  v46 = String.lowercased()();
  if (v14)
  {
    v47 = String.lowercased()();
    if (v46._countAndFlagsBits == v47._countAndFlagsBits && v46._object == v47._object)
    {
      v49 = 1;
    }

    else
    {
      v49 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v49 = 0;
  }

  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v87[0] = v84;
    *v59 = 136315906;
    *&v88 = v82;
    *(&v88 + 1) = v14;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v60 = String.init<A>(describing:)();
    v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, v87);
    v82 = v14;
    v63 = v62;

    *(v59 + 4) = v63;
    *(v59 + 12) = 2080;
    if (v49)
    {
      v64 = 0x6465686374616DLL;
    }

    else
    {
      v64 = 0x20746F6E20646964;
    }

    if (v49)
    {
      v65 = 0xE700000000000000;
    }

    else
    {
      v65 = 0xED0000686374616DLL;
    }

    v66 = 0xD000000000000011;
    if (v49)
    {
      v66 = 0x6E6F6320656D6173;
    }

    v81 = v66;
    if (v49)
    {
      v67 = 0xEC00000074636174;
    }

    else
    {
      v67 = 0x800000026696FDA0;
    }

    v68 = v49;
    v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, v87);

    *(v59 + 14) = v69;
    v49 = v68;
    *(v59 + 22) = 2080;
    *&v88 = v83;
    *(&v88 + 1) = a4;

    v70 = String.init<A>(describing:)();
    v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, v87);

    *(v59 + 24) = v72;
    *(v59 + 32) = 2080;
    v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v67, v87);

    *(v59 + 34) = v73;
    _os_log_impl(&dword_26686A000, v57, v58, "#ContactsDisambiguationStrategy isRequestForDifferentContact identifiyingRelationship from parse %s %s the current %s, so %s.", v59, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  v42 = v49 ^ 1;
  return v42 & 1;
}

uint64_t ContactsDisambiguationStrategy.actionForInput(_:resolveRecord:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v79 = a2;
  v84 = a3;
  v82 = *v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v7 = OUTLINED_FUNCTION_18_0(v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v77 - v8;
  v81 = type metadata accessor for ConfirmationResponse();
  OUTLINED_FUNCTION_1_0();
  v78 = v10;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v80 = &v77 - v15;
  v16 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_1_0();
  v18 = v17;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v77 - v23;
  v25 = type metadata accessor for USOParse();
  OUTLINED_FUNCTION_1_0();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = a1;
  Input.parse.getter();
  if ((*(v18 + 88))(v24, v16) != *MEMORY[0x277D5C160])
  {
    (*(v18 + 8))(v24, v16);
    v41 = v82;
    return static StrategyUtil.getActionForInput<A>(input:intentType:)(v83, *(v41 + 240), v84);
  }

  (*(v18 + 96))(v24, v16);
  v77 = v27;
  (*(v27 + 32))(v30, v24, v25);
  v31 = v30;
  if (USOParse.isOrdinalDisambiguation.getter())
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v32 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v32, static Logger.siriContacts);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    v35 = OUTLINED_FUNCTION_21_2(v34);
    v36 = v77;
    if (v35)
    {
      v37 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v37);
      OUTLINED_FUNCTION_7_4(&dword_26686A000, v38, v39, "#ContactsDisambiguationStrategy actionForInput ordinal disambiguation, returning .handle()");
      OUTLINED_FUNCTION_11_1();
    }

    static ActionForInput.handle()();
    return (*(v36 + 8))(v30, v25);
  }

  Input.parse.getter();
  Parse.confirmationResponse.getter();
  (*(v18 + 8))(v22, v16);
  v42 = v81;
  if (__swift_getEnumTagSinglePayload(v9, 1, v81) == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v9, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
    v43 = v31;
LABEL_12:
    v41 = v82;
    v44 = static ContactsDisambiguationStrategy.extractCurrentContext(from:)();
    v47 = static ContactsDisambiguationStrategy.isRequestForDifferentContact(_:currentContactIds:currentRelation:)(v43, v44, v45, v46);

    v48 = v77;
    if (v47)
    {
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
      }

      v49 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_29(v49, static Logger.siriContacts);
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_21_2(v51))
      {
        v52 = OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_24_0(v52);
        OUTLINED_FUNCTION_7_4(&dword_26686A000, v53, v54, "#ContactsDisambiguationStrategy actionForInput encountered parse for different contact, ignoring");
        OUTLINED_FUNCTION_11_1();
      }

      static ActionForInput.ignore()();
      return (*(v48 + 8))(v43, v25);
    }

    if (USOParse.isOrdinalDisambiguation.getter() & 1) != 0 || (USOParse.isContactDisambiguation.getter())
    {
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
      }

      v64 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_29(v64, static Logger.siriContacts);
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_21_2(v66))
      {
        v67 = OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_24_0(v67);
        OUTLINED_FUNCTION_7_4(&dword_26686A000, v68, v69, "#ContactsDisambiguationStrategy actionForInput returning .handle()");
        OUTLINED_FUNCTION_11_1();
      }

      static ActionForInput.handle()();
      return (*(v48 + 8))(v43, v25);
    }

    (*(v48 + 8))(v43, v25);
    return static StrategyUtil.getActionForInput<A>(input:intentType:)(v83, *(v41 + 240), v84);
  }

  v55 = v78;
  v56 = v80;
  (*(v78 + 32))(v80, v9, v42);
  (*(v55 + 16))(v14, v56, v42);
  v57 = (*(v55 + 88))(v14, v42);
  if (v57 == *MEMORY[0x277D5BED8])
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v58 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v58, static Logger.siriContacts);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_21_2(v60))
    {
      v61 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v61);
      OUTLINED_FUNCTION_7_4(&dword_26686A000, v62, v63, "#ContactsDisambiguationStrategy actionForInput user accepted, returning .handle()");
      v56 = v80;
      OUTLINED_FUNCTION_6();
    }

    static ActionForInput.handle()();
    (*(v55 + 8))(v56, v42);
    return (*(v77 + 8))(v31, v25);
  }

  else
  {
    v43 = v31;
    if (v57 != *MEMORY[0x277D5BED0])
    {
      v76 = *(v55 + 8);
      v76(v56, v42);
      v76(v14, v42);
      goto LABEL_12;
    }

    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v70 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v70, static Logger.siriContacts);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_21_2(v72))
    {
      v73 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v73);
      OUTLINED_FUNCTION_7_4(&dword_26686A000, v74, v75, "#ContactsDisambiguationStrategy actionForInput user rejected, returning .cancel()");
      v56 = v80;
      OUTLINED_FUNCTION_6();
    }

    static ActionForInput.cancel()();
    (*(v55 + 8))(v56, v42);
    return (*(v77 + 8))(v31, v25);
  }
}

uint64_t ContactsDisambiguationStrategy.makeDisambiguationItemContainer(resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[2] = v2;
  v1[3] = *(*v0 + 240);
  v3 = type metadata accessor for ParameterResolutionRecord();
  v1[4] = v3;
  OUTLINED_FUNCTION_1_1(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_10_0();
  v5 = type metadata accessor for Signpost.OpenSignpost(0);
  v1[7] = v5;
  OUTLINED_FUNCTION_18_0(v5);
  v1[8] = OUTLINED_FUNCTION_10_0();
  v6 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  v58 = v0;
  if (one-time initialization token for contactsLog != -1)
  {
LABEL_28:
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v3 = v1 + *(v2 + 20);
  *v3 = "MakeDisambiguationItemContainer";
  *(v3 + 8) = 31;
  *(v3 + 16) = 2;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v0 + 32);
  v56 = v0;
  v7 = *(v0 + 16);
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.siriContacts);
  (*(v5 + 16))(v4, v7, v6);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  v11 = os_log_type_enabled(v9, v10);
  v13 = *(v0 + 40);
  v12 = *(v0 + 48);
  v14 = *(v0 + 32);
  if (v11)
  {
    v15 = OUTLINED_FUNCTION_33_2();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v57 = v17;
    *v15 = 136315394;
    v18 = _typeName(_:qualified:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v57);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2112;
    v21 = ParameterResolutionRecord.result.getter();
    (*(v13 + 8))(v12, v14);
    *(v15 + 14) = v21;
    *v16 = v21;
    _os_log_impl(&dword_26686A000, v9, v10, "#ContactsDisambiguationStrategy<%s> Intent resolution result: %@", v15, 0x16u);
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_6();
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v22 = ParameterResolutionRecord.result.getter();
  v23 = specialized INIntentResolutionResult.typedDisambiguationItems<A>()();

  v24 = specialized Array._getCount()();
  v25 = 0;
  v0 = MEMORY[0x277D84F90];
  while (v24 != v25)
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x26D5E29D0](v25, v23);
    }

    else
    {
      if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v26 = *(v23 + 8 * v25 + 32);
    }

    v27 = v26;
    v28 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v29 = outlined bridged method (pb) of @objc INObject.identifier.getter(v26);
    v31 = v30;

    ++v25;
    if (v31)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = OUTLINED_FUNCTION_27_3();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v35, v36, v37, v0);
        v0 = v38;
      }

      v33 = *(v0 + 16);
      v32 = *(v0 + 24);
      if (v33 >= v32 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v32 > 1, v33 + 1, 1, v0);
        v0 = v39;
      }

      *(v0 + 16) = v33 + 1;
      v34 = v0 + 16 * v33;
      *(v34 + 32) = v29;
      *(v34 + 40) = v31;
      v25 = v28;
    }
  }

  v40 = v0;

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = v56;
    v44 = OUTLINED_FUNCTION_33_2();
    v57 = OUTLINED_FUNCTION_40_0();
    *v44 = 136315394;
    v45 = _typeName(_:qualified:)();
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v57);

    *(v44 + 4) = v47;
    *(v44 + 12) = 2080;
    v48 = MEMORY[0x26D5E2610](v40, MEMORY[0x277D837D0]);
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v57);

    *(v44 + 14) = v50;
    _os_log_impl(&dword_26686A000, v41, v42, "#ContactsDisambiguationStrategy<%s> Contact identifiers retrieved from disambiguation items: %s", v44, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_11_1();
  }

  else
  {

    v43 = v56;
  }

  v51 = *(v43 + 64);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow32BasicDisambiguationItemContainerCySSGMd, &_s11SiriKitFlow32BasicDisambiguationItemContainerCySSGMR);
  OUTLINED_FUNCTION_2_6(v52);
  v53 = BasicDisambiguationItemContainer.init(_:_:)();
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  outlined destroy of Signpost.OpenSignpost(v51);

  v54 = *(v43 + 8);

  return v54(v53);
}

uint64_t ContactsDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[16] = v2;
  v1[17] = v3;
  v1[14] = v4;
  v1[15] = v5;
  v6 = *v0;
  v1[18] = *v0;
  v1[19] = *(v6 + 240);
  v7 = type metadata accessor for IntentPromptAnswer();
  v1[20] = v7;
  OUTLINED_FUNCTION_1_1(v7);
  v1[21] = v8;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v9 = type metadata accessor for Parse.DirectInvocation();
  v1[24] = v9;
  OUTLINED_FUNCTION_1_1(v9);
  v1[25] = v10;
  v1[26] = OUTLINED_FUNCTION_10_0();
  v11 = type metadata accessor for Parse();
  v1[27] = v11;
  OUTLINED_FUNCTION_1_1(v11);
  v1[28] = v12;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v13 = type metadata accessor for Signpost.OpenSignpost(0);
  v1[32] = v13;
  OUTLINED_FUNCTION_18_0(v13);
  v1[33] = OUTLINED_FUNCTION_10_0();
  v14 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

{
  v108 = v0;
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  v3 = *(v0 + 256);
  v2 = *(v0 + 264);
  static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v4 = v2 + *(v3 + 20);
  *v4 = "ParseDisambiguationResult";
  *(v4 + 8) = 25;
  *(v4 + 16) = 2;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.siriContacts);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_15_0(v7))
  {
    swift_slowAlloc();
    v8 = OUTLINED_FUNCTION_32_4();
    v104 = v8;
    *v3 = 136315138;
    v9 = _typeName(_:qualified:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v104);

    *(v3 + 4) = v11;
    OUTLINED_FUNCTION_11_0();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_11_1();
  }

  Input.parse.getter();
  v17 = OUTLINED_FUNCTION_22_0();
  if (v18(v17) != *MEMORY[0x277D5C150])
  {
    goto LABEL_14;
  }

  v19 = *(v0 + 240);
  v20 = *(v0 + 216);
  v21 = *(v0 + 224);
  v23 = *(v0 + 200);
  v22 = *(v0 + 208);
  v24 = *(v0 + 192);
  (*(v21 + 16))(v19, *(v0 + 248), v20);
  (*(v21 + 96))(v19, v20);
  v25 = *(v23 + 32);
  v1 = (v23 + 32);
  v25(v22, v19, v24);
  if (Parse.DirectInvocation.identifier.getter() == 0xD000000000000025 && 0x800000026696DFF0 == v26)
  {
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v28 & 1) == 0)
    {
      (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
LABEL_14:
      Input.parse.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVySSGMd, &_s11SiriKitFlow22PaginatedItemContainerVySSGMR);
      v29 = PaginatedItemContainer.items.getter();
      v31 = Parse.toContactId(existingCandidates:)(v29);
      if (v30)
      {

        v32 = OUTLINED_FUNCTION_30_4();
        v1(v32);
        v33 = 0;
        v34 = 0;
      }

      else
      {
        v41 = OUTLINED_FUNCTION_30_4();
        v1(v41);

        v33 = String.sanitizeContactIdURL.getter(v31._countAndFlagsBits, v31._object);
        v34 = v42;
      }

LABEL_22:
      v43 = *(v0 + 152);
      (v1)(*(v0 + 248), *(v0 + 216));
      v103 = v33;
      if (v43 == type metadata accessor for GetContactIntent() || (v44 = *(v0 + 152), v44 == type metadata accessor for GetContactAttributeIntent()))
      {
        type metadata accessor for ParameterResolutionRecord();
        v45 = ParameterResolutionRecord.intent.getter();
        if (v34)
        {
          v51 = OUTLINED_FUNCTION_36_3();
          v52 = MEMORY[0x26D5E2470](v51);
        }

        else
        {
          v52 = 0;
        }

        v53 = MEMORY[0x26D5E2470](0xD000000000000011, 0x800000026696E340);
        [v45 setValue:v52 forKey:v53];
        swift_unknownObjectRelease();
      }

      else
      {
        type metadata accessor for ParameterResolutionRecord();
        v45 = ParameterResolutionRecord.intent.getter();
        type metadata accessor for ModifyContactAttributeIntent();
        v46 = swift_dynamicCastClass();
        if (!v46 || (v47 = [v46 relatedContact]) == 0)
        {
LABEL_40:
          v74 = *(v0 + 144);
          v73 = *(v0 + 152);
          v75 = *(v0 + 136);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVySSGMd, &_s11SiriKitFlow22PaginatedItemContainerVySSGMR);
          *(v0 + 96) = PaginatedItemContainer.items.getter();
          v76 = swift_task_alloc();
          *(v76 + 16) = v73;
          *(v76 + 24) = *(v74 + 248);
          *(v76 + 40) = *(v74 + 264);
          *(v76 + 48) = v75;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
          OUTLINED_FUNCTION_12_8(&lazy protocol witness table cache variable for type [String] and conformance [A]);
          Sequence.first(where:)();

          v77 = *(v0 + 56);
          if (v77)
          {
            v78 = *(v0 + 48);

            v79 = Logger.logObject.getter();
            v80 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v79, v80))
            {
              v81 = OUTLINED_FUNCTION_33_2();
              v104 = OUTLINED_FUNCTION_40_0();
              *v81 = 136315394;
              v82 = _typeName(_:qualified:)();
              v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v83, &v104);

              *(v81 + 4) = v84;
              *(v81 + 12) = 2080;
              *(v81 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v77, &v104);
              _os_log_impl(&dword_26686A000, v79, v80, "#ContactsDisambiguationStrategy<%s> Returning user-selected contact: %s.", v81, 0x16u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_6();
              OUTLINED_FUNCTION_6();
            }

            v85 = (v0 + 184);
            v107 = MEMORY[0x277D837D0];
            v104 = v78;
            v105 = v77;
            type metadata accessor for ParameterResolutionRecord();
            ParameterResolutionRecord.intent.getter();
            goto LABEL_50;
          }

          v86 = Logger.logObject.getter();
          v87 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v86, v87))
          {
            v88 = OUTLINED_FUNCTION_33_2();
            v104 = OUTLINED_FUNCTION_40_0();
            *v88 = 136315394;
            v89 = _typeName(_:qualified:)();
            v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v90, &v104);

            *(v88 + 4) = v91;
            *(v88 + 12) = 2080;
            v92 = v103;
            *(v0 + 64) = v103;
            *(v0 + 72) = v34;

            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
            v93 = String.init<A>(describing:)();
            v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v94, &v104);

            *(v88 + 14) = v95;
            _os_log_impl(&dword_26686A000, v86, v87, "#ContactsDisambiguationStrategy<%s> Returning contact selected from contact picker: %s.", v88, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_6();
            OUTLINED_FUNCTION_11_1();

            if (v34)
            {
LABEL_46:
              v96 = MEMORY[0x277D837D0];
LABEL_49:
              v85 = (v0 + 176);
              v104 = v92;
              v105 = v34;
              v107 = v96;
              type metadata accessor for ParameterResolutionRecord();
              ParameterResolutionRecord.intent.getter();
LABEL_50:
              IntentPromptAnswer.init(answeredValue:updatedIntent:)();
              v97 = *v85;
              v98 = *(v0 + 264);
              v100 = *(v0 + 160);
              v99 = *(v0 + 168);
              static DisambiguationResult.chosenItem(_:)();
              (*(v99 + 8))(v97, v100);
              static os_signpost_type_t.end.getter();
              os_signpost(_:dso:log:name:signpostID:)();
              outlined destroy of Signpost.OpenSignpost(v98);

              OUTLINED_FUNCTION_3();
              goto LABEL_51;
            }
          }

          else
          {

            v92 = v103;
            if (v34)
            {
              goto LABEL_46;
            }
          }

          v92 = 0;
          v96 = 0;
          v106 = 0;
          goto LABEL_49;
        }

        v48 = v47;
        if (v34)
        {
          v49 = OUTLINED_FUNCTION_36_3();
          v50 = MEMORY[0x26D5E2470](v49);
        }

        else
        {
          v50 = 0;
        }

        v70 = MEMORY[0x26D5E2470](0x696669746E656469, 0xEA00000000007265);
        [v48 setValue:v50 forKey:v70];

        swift_unknownObjectRelease();
        v71 = ParameterResolutionRecord.intent.getter();
        v72 = v48;
        v53 = MEMORY[0x26D5E2470](0x43646574616C6572, 0xEE00746361746E6FLL);
        [v71 setValue:v72 forKey:v53];
      }

      v45 = v53;
      goto LABEL_40;
    }
  }

  v35 = Parse.DirectInvocation.userData.getter();
  if (!v35)
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    goto LABEL_33;
  }

  specialized Dictionary.subscript.getter(0x7865646E69, 0xE500000000000000, v35, (v0 + 16));

  if (!*(v0 + 40))
  {
LABEL_33:
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0 + 16, &_sypSgMd, &_sypSgMR);
    goto LABEL_34;
  }

  if (swift_dynamicCast())
  {
    v36 = *(v0 + 224);
    v37 = *(v0 + 104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVySSGMd, &_s11SiriKitFlow22PaginatedItemContainerVySSGMR);
    v38 = PaginatedItemContainer.items.getter();
    Array.subscript.getter(v37, v38, MEMORY[0x277D837D0], v0 + 80);

    v39 = OUTLINED_FUNCTION_22_0();
    v40(v39);
    v33 = *(v0 + 80);
    v34 = *(v0 + 88);
    v1 = *(v36 + 8);
    goto LABEL_22;
  }

LABEL_34:
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_15_0(v55))
  {
    v56 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_24_0(v56);
    OUTLINED_FUNCTION_11_0();
    _os_log_impl(v57, v58, v59, v60, v61, 2u);
    OUTLINED_FUNCTION_11_1();
  }

  v62 = *(v0 + 264);
  v63 = *(v0 + 248);
  v64 = *(v0 + 224);
  v65 = *(v0 + 208);
  v102 = *(v0 + 216);
  v67 = *(v0 + 192);
  v66 = *(v0 + 200);

  type metadata accessor for ContactsError(0);
  lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
  swift_allocError();
  (*(v66 + 16))(v68, v65, v67);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  (*(v66 + 8))(v65, v67);
  (*(v64 + 8))(v63, v102);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  outlined destroy of Signpost.OpenSignpost(v62);

  OUTLINED_FUNCTION_3();
LABEL_51:

  return v69();
}

uint64_t ContactsDisambiguationStrategy.makeFlowCancelledResponse(app:intent:parameter:)()
{
  OUTLINED_FUNCTION_4();
  v1[2] = v2;
  v1[3] = *v0;
  v3 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_18_0(v3);
  v1[4] = OUTLINED_FUNCTION_10_0();
  v4 = type metadata accessor for OutputGenerationManifest();
  v1[5] = v4;
  OUTLINED_FUNCTION_1_1(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_10_0();
  v6 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_18_0(v6);
  v1[8] = OUTLINED_FUNCTION_10_0();
  v7 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  v17 = v1;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_29(v2, static Logger.siriContacts);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_15_0(v4))
  {
    swift_slowAlloc();
    v5 = OUTLINED_FUNCTION_32_4();
    v16 = v5;
    *v0 = 136315138;
    v6 = _typeName(_:qualified:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v16);

    *(v0 + 4) = v8;
    OUTLINED_FUNCTION_11_0();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_11_1();
  }

  type metadata accessor for ContactsCommonCATsModern(0);
  static CATOption.defaultMode.getter();
  *(v1 + 72) = CATWrapperSimple.__allocating_init(options:globals:)();
  v14 = swift_task_alloc();
  *(v1 + 80) = v14;
  *v14 = v1;
  v14[1] = ContactsDisambiguationStrategy.makeFlowCancelledResponse(app:intent:parameter:);

  return ContactsCommonCATsModern.cancellationAcknowledgement()();
}

{
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_5();
  v5 = v4;
  OUTLINED_FUNCTION_5_3();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  *(v5 + 88) = v0;

  if (!v0)
  {

    *(v5 + 96) = v3;
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_19_1();
  v1 = v0[12];
  static DialogPhase.canceled.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  v2 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_2_6(v2);
  v0[13] = ResponseFactory.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v3 = swift_allocObject();
  v0[14] = v3;
  *(v3 + 16) = xmmword_266966A40;
  *(v3 + 32) = v1;
  v9 = (*MEMORY[0x277D5BD50] + MEMORY[0x277D5BD50]);
  v4 = v1;
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = ContactsDisambiguationStrategy.makeFlowCancelledResponse(app:intent:parameter:);
  v6 = v0[7];
  v7 = v0[2];

  return v9(v7, v3, v6);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  OUTLINED_FUNCTION_19_1();

  v1 = OUTLINED_FUNCTION_22_0();
  v2(v1);

  OUTLINED_FUNCTION_3();

  return v3();
}

{
  OUTLINED_FUNCTION_41();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t closure #1 in ContactsDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = a1[1];
  type metadata accessor for ParameterResolutionRecord();
  v9 = ParameterResolutionRecord.intent.getter();
  v10 = (*(a5 + 32))(a3, a5);
  v12 = v11;

  if (v12)
  {
    if (v7 == v10 && v12 == v8)
    {
      v14 = 1;
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t closure #1 in ContactsDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a2[10];
  v8 = a2[11];
  __swift_project_boxed_opaque_existential_1(a2 + 7, v7);
  result = (*(v8 + 8))(v5, v6, v7, v8);
  if (v3)
  {

    result = 0;
  }

  *a3 = result;
  return result;
}

uint64_t closure #3 in ContactsDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for ResponseType();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  static ContactsContextProvider.disambiguate(contacts:)(a3, v10);
  v11 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  OutputGenerationManifest.nlContextUpdate.setter();
  (*(v5 + 104))(v7, *MEMORY[0x277D5BC50], v4);
  return OutputGenerationManifest.responseType.setter();
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(uint64_t a1)
{
  result = MEMORY[0x26D5E26C0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    specialized Set._Variant.insert(_:)(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t ContactsDisambiguationStrategy.__deallocating_deinit()
{
  ContactsStrategy.deinit();
  OUTLINED_FUNCTION_38_0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.paginationStyle(resolveRecord:) in conformance ContactsDisambiguationStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 256);
  v8[0] = *(a2 + 240);
  v8[1] = v5;
  v6 = type metadata accessor for ContactsDisambiguationStrategy(0, v8);
  return MEMORY[0x26D5DF6B0](a1, v6, a3);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeDisambiguationItemContainer(resolveRecord:) in conformance ContactsDisambiguationStrategy<A, B>(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeDisambiguationItemContainer(contacts:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>;

  return ContactsDisambiguationStrategy.makeDisambiguationItemContainer(resolveRecord:)();
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.parseDisambiguationResult(input:paginatedItems:resolveRecord:) in conformance ContactsDisambiguationStrategy<A, B>()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return ContactsDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)();
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makePromptForDisambiguation(paginatedItems:resolveRecord:) in conformance ContactsDisambiguationStrategy<A, B>()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for Flow.execute() in conformance ContactsUnsupportedFlow;

  return ContactsDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)();
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:) in conformance ContactsDisambiguationStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 48) = v11;
  v12 = *(a4 + 256);
  *(v5 + 16) = *(a4 + 240);
  *(v5 + 32) = v12;
  v13 = type metadata accessor for ContactsDisambiguationStrategy(0, v5 + 16);
  *v11 = v5;
  v11[1] = protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeRepromptToSaveRelationshipOnEmptyParse(person:requestedRelationship:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>;

  return MEMORY[0x2821B9F38](a1, a2, a3, v13, a5);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:resolveRecord:) in conformance ContactsDisambiguationStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 48) = v11;
  v12 = *(a4 + 256);
  *(v5 + 16) = *(a4 + 240);
  *(v5 + 32) = v12;
  v13 = type metadata accessor for ContactsDisambiguationStrategy(0, v5 + 16);
  *v11 = v5;
  v11[1] = protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeIntentCancelledResponse(resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>;

  return MEMORY[0x2821B9F48](a1, a2, a3, v13, a5);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:) in conformance ContactsDisambiguationStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 48) = v9;
  v10 = *(a3 + 256);
  *(v4 + 16) = *(a3 + 240);
  *(v4 + 32) = v10;
  v11 = type metadata accessor for ContactsDisambiguationStrategy(0, v4 + 16);
  *v9 = v4;
  v9[1] = protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeIntentCancelledResponse(resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>;

  return MEMORY[0x2821B9F40](a1, a2, v11, a4);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:) in conformance ContactsDisambiguationStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 48) = v9;
  v10 = *(a3 + 256);
  *(v4 + 16) = *(a3 + 240);
  *(v4 + 32) = v10;
  v11 = type metadata accessor for ContactsDisambiguationStrategy(0, v4 + 16);
  *v9 = v4;
  v9[1] = protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeIntentCancelledResponse(resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>;

  return MEMORY[0x2821B9F58](a1, a2, v11, a4);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.pervasiveUseCaseDescription(resolveRecord:) in conformance ContactsDisambiguationStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 256);
  v5[0] = *(a2 + 240);
  v5[1] = v3;
  type metadata accessor for ContactsDisambiguationStrategy(0, v5);
  return NeedsDisambiguationFlowStrategyAsync.pervasiveUseCaseDescription(resolveRecord:)();
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:) in conformance ContactsDisambiguationStrategy<A, B>()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return ContactsDisambiguationStrategy.makeFlowCancelledResponse(app:intent:parameter:)();
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:) in conformance ContactsDisambiguationStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 48) = v15;
  v16 = *(a6 + 256);
  *(v7 + 16) = *(a6 + 240);
  *(v7 + 32) = v16;
  v17 = type metadata accessor for ContactsDisambiguationStrategy(0, v7 + 16);
  *v15 = v7;
  v15[1] = protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeIntentCancelledResponse(resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v17, a7);
}

uint64_t GetContactDisambiguationStrategy.__deallocating_deinit()
{
  specialized ContactsStrategy.deinit();
  OUTLINED_FUNCTION_38_0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t lazy protocol witness table accessor for type BasicDisambiguationItemContainer<String> and conformance BasicDisambiguationItemContainer<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

Swift::Int specialized _NativeSet.intersection(_:)(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v8 = v12 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v6, v8);
    v9 = specialized closure #1 in _NativeSet.intersection(_:)(v8, v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(v11, v6, a2, a1);

    MEMORY[0x26D5E3300](v11, -1, -1);
  }

  return v9;
}

void *specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = specialized closure #1 in _NativeSet.intersection(_:)(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

Swift::Int specialized closure #1 in _NativeSet.intersection(_:)(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v28 = 0;
    v29 = 1 << *(a3 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v31 = v30 & *(a3 + 56);
    v32 = (v29 + 63) >> 6;
    v33 = a4 + 56;
LABEL_28:
    while (v31)
    {
      v34 = __clz(__rbit64(v31));
      v51 = (v31 - 1) & v31;
LABEL_35:
      v49 = v34 | (v28 << 6);
      v37 = (*(v5 + 48) + 16 * v49);
      v39 = *v37;
      v38 = v37[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v40 = Hasher._finalize()();
      v41 = ~(-1 << *(v4 + 32));
      do
      {
        v42 = v40 & v41;
        if (((*(v33 + (((v40 & v41) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v40 & v41)) & 1) == 0)
        {

          v4 = a4;
          v31 = v51;
          goto LABEL_28;
        }

        v43 = (*(a4 + 48) + 16 * v42);
        if (*v43 == v39 && v43[1] == v38)
        {
          break;
        }

        v45 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v40 = v42 + 1;
      }

      while ((v45 & 1) == 0);

      *(v52 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      v27 = __OFADD__(v53++, 1);
      v4 = a4;
      v31 = v51;
      if (v27)
      {
        goto LABEL_50;
      }
    }

    v35 = v28;
    while (1)
    {
      v28 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v28 >= v32)
      {
LABEL_46:

        return specialized _NativeSet.extractSubset(using:count:)(v52, a2, v53, v5);
      }

      v36 = *(v5 + 56 + 8 * v28);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v51 = (v36 - 1) & v36;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v46 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v48 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v50 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v18 = Hasher._finalize()();
      v19 = v5;
      v20 = ~(-1 << *(v5 + 32));
      do
      {
        v21 = v18 & v20;
        v22 = (v18 & v20) >> 6;
        v23 = 1 << (v18 & v20);
        if ((v23 & *(v11 + 8 * v22)) == 0)
        {

          v5 = v19;
          v4 = a4;
          v10 = v48;
          v9 = v50;
          goto LABEL_6;
        }

        v24 = (*(v19 + 48) + 16 * v21);
        if (*v24 == v17 && v24[1] == v16)
        {
          break;
        }

        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v18 = v21 + 1;
      }

      while ((v26 & 1) == 0);

      v9 = v50;
      v52[v22] |= v23;
      v27 = __OFADD__(v53++, 1);
      v5 = v19;
      v4 = a4;
      v10 = v48;
      if (v27)
      {
        goto LABEL_49;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_46;
      }

      v14 = *(v46 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v50 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
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
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
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
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_2_21(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_12_8(unint64_t *a1)
{
  v4 = MEMORY[0x277D83970];

  return lazy protocol witness table accessor for type BasicDisambiguationItemContainer<String> and conformance BasicDisambiguationItemContainer<A>(a1, v1, v2, v4);
}

uint64_t OUTLINED_FUNCTION_21_5(uint64_t a1)
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t OUTLINED_FUNCTION_32_4()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_33_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_39_1(uint64_t a1)
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t OUTLINED_FUNCTION_40_0()
{

  return swift_slowAlloc();
}

uint64_t UsoIdentifierNamespace.rawValue.getter(char a1)
{
  result = 0x64695F6D657469;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x65746C615F727361;
      break;
    case 3:
      v3 = 0x54656E6F6870;
      goto LABEL_6;
    case 4:
      v3 = 0x546C69616D65;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7079000000000000;
      break;
    case 5:
      result = 0x5473736572646461;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x54746361746E6F63;
      break;
    case 8:
      result = 0x6369746E616D6573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t UsoIdentifierAppBundle.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x73746361746E6F43;
  }
}

uint64_t one-time initialization function for contactsUnlockPolicy()
{
  v0 = type metadata accessor for UnlockDevicePolicy();
  __swift_allocate_value_buffer(v0, static Constants.contactsUnlockPolicy);
  __swift_project_value_buffer(v0, static Constants.contactsUnlockPolicy);
  return static UnlockDevicePolicy.requiringDeviceUnlock.getter();
}

uint64_t static Constants.contactsUnlockPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for contactsUnlockPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for UnlockDevicePolicy();
  v3 = __swift_project_value_buffer(v2, static Constants.contactsUnlockPolicy);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t getEnumTagSinglePayload for Constants(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for Constants(_BYTE *result, int a2, int a3)
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

uint64_t static UsoIdentifierNamespace.attributeType(for:)(uint64_t a1, void *a2)
{
  if (a2 && (, v4._countAndFlagsBits = a1, v4._object = a2, v5.value = UsoIdentifierNamespace.init(rawValue:)(v4).value - 3, v5.value <= SiriContactsIntents_UsoIdentifierNamespace_asrAlternative))
  {
    return qword_266968590[v5.value];
  }

  else
  {
    return 0;
  }
}

SiriContactsIntents::UsoIdentifierNamespace_optional __swiftcall UsoIdentifierNamespace.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UsoIdentifierNamespace.init(rawValue:), v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t UsoAttributeName.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

SiriContactsIntents::UsoIdentifierNamespace_optional protocol witness for RawRepresentable.init(rawValue:) in conformance UsoIdentifierNamespace@<W0>(Swift::String *a1@<X0>, SiriContactsIntents::UsoIdentifierNamespace_optional *a2@<X8>)
{
  result.value = UsoIdentifierNamespace.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance UsoIdentifierNamespace@<X0>(uint64_t *a1@<X8>)
{
  result = UsoIdentifierNamespace.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t UsoCommonPersonAttribute.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x636974656E6F6870;
  }

  else
  {
    return 1701667182;
  }
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

uint64_t getEnumTagSinglePayload for UsoIdentifierNamespace(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for UsoIdentifierNamespace(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UsoIdentifierNamespace and conformance UsoIdentifierNamespace()
{
  result = lazy protocol witness table cache variable for type UsoIdentifierNamespace and conformance UsoIdentifierNamespace;
  if (!lazy protocol witness table cache variable for type UsoIdentifierNamespace and conformance UsoIdentifierNamespace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsoIdentifierNamespace and conformance UsoIdentifierNamespace);
  }

  return result;
}

uint64_t ContactsBirthdayInfo.Builder.withBirthday(_:)(uint64_t a1)
{
  if (a1)
  {
    a1 = dispatch thunk of DialogCalendar.Builder.build()();
  }

  *(v1 + 16) = a1;
}

uint64_t ContactsBirthdayInfo.Builder.__deallocating_deinit()
{

  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC19SiriContactsIntents20ContactsBirthdayInfo7Builder_durationUntilBirthday);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t ContactsBirthdayInfo.init(builder:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v3);
  v5 = &v7 - v4;
  *(v1 + 16) = 0;
  *(v1 + 24) = *(a1 + 16);
  outlined init with copy of SpeakableString?(a1 + OBJC_IVAR____TtCC19SiriContactsIntents20ContactsBirthdayInfo7Builder_durationUntilBirthday, &v7 - v4);

  outlined init with take of SpeakableString?(v5, v1 + OBJC_IVAR____TtC19SiriContactsIntents20ContactsBirthdayInfo_durationUntilBirthday);
  return v1;
}

uint64_t ContactsBirthdayInfo.getProperty(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_10_5();
  result = MEMORY[0x28223BE20](v7);
  v10 = &v16 - v9;
  if (a1 != 0x7961646874726962 || a2 != 0xE800000000000000)
  {
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((result & 1) == 0)
    {
      v13 = a1 == 0xD000000000000015 && 0x800000026696E460 == a2;
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
        outlined init with copy of SpeakableString?(v3 + OBJC_IVAR____TtC19SiriContactsIntents20ContactsBirthdayInfo_durationUntilBirthday, v10);
        v14 = type metadata accessor for SpeakableString();
        if (__swift_getEnumTagSinglePayload(v10, 1, v14) != 1)
        {
          *(a3 + 24) = v14;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
          return (*(*(v14 - 8) + 32))(boxed_opaque_existential_1, v10, v14);
        }

        result = outlined destroy of SpeakableString?(v10);
      }

      goto LABEL_17;
    }
  }

  v12 = *(v3 + 24);
  if (!v12)
  {
LABEL_17:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  *(a3 + 24) = type metadata accessor for DialogCalendar();
  *a3 = v12;
}

uint64_t ContactsBirthdayInfo.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ContactsBirthdayInfo.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t ContactsBirthdayInfo.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x7961646874726962;
  }
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ContactsBirthdayInfo.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = ContactsBirthdayInfo.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ContactsBirthdayInfo.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = ContactsBirthdayInfo.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ContactsBirthdayInfo.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = ContactsBirthdayInfo.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ContactsBirthdayInfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsBirthdayInfo.CodingKeys and conformance ContactsBirthdayInfo.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ContactsBirthdayInfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsBirthdayInfo.CodingKeys and conformance ContactsBirthdayInfo.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContactsBirthdayInfo.deinit()
{

  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC19SiriContactsIntents20ContactsBirthdayInfo_durationUntilBirthday);
  return v0;
}

uint64_t ContactsBirthdayInfo.__deallocating_deinit()
{
  ContactsBirthdayInfo.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void type metadata completion function for ContactsBirthdayInfo(uint64_t a1)
{
  type metadata accessor for SpeakableString?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t ContactsBirthdayInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriContactsIntents0E12BirthdayInfoC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy19SiriContactsIntents0E12BirthdayInfoC10CodingKeysOGMR);
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ContactsBirthdayInfo.CodingKeys and conformance ContactsBirthdayInfo.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = *(v3 + 24);
  HIBYTE(v17) = 0;
  type metadata accessor for DialogCalendar();
  OUTLINED_FUNCTION_0_22();
  lazy protocol witness table accessor for type ContactsBirthdayInfo and conformance ContactsBirthdayInfo(v11, v12, MEMORY[0x277D55B98]);
  OUTLINED_FUNCTION_5_19(&v18, &v17 + 7);
  if (!v2)
  {
    v13 = OBJC_IVAR____TtC19SiriContactsIntents20ContactsBirthdayInfo_durationUntilBirthday;
    BYTE6(v17) = 1;
    type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_1_18();
    lazy protocol witness table accessor for type ContactsBirthdayInfo and conformance ContactsBirthdayInfo(v14, v15, MEMORY[0x277D55C50]);
    OUTLINED_FUNCTION_5_19(v3 + v13, &v17 + 6);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t ContactsBirthdayInfo.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ContactsBirthdayInfo.init(from:)(a1);
  return v2;
}

void type metadata accessor for SpeakableString?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for SpeakableString?)
  {
    type metadata accessor for SpeakableString();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for SpeakableString?);
    }
  }
}

void type metadata completion function for ContactsBirthdayInfo.Builder(uint64_t a1)
{
  type metadata accessor for SpeakableString?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id *ContactsBirthdayInfo.init(from:)(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriContactsIntents0E12BirthdayInfoC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy19SiriContactsIntents0E12BirthdayInfoC10CodingKeysOGMR);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v8);
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ContactsBirthdayInfo.CodingKeys and conformance ContactsBirthdayInfo.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {

    type metadata accessor for ContactsBirthdayInfo(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = type metadata accessor for DialogCalendar();
    v20 = 0;
    OUTLINED_FUNCTION_0_22();
    lazy protocol witness table accessor for type ContactsBirthdayInfo and conformance ContactsBirthdayInfo(v10, v11, MEMORY[0x277D55BA0]);
    OUTLINED_FUNCTION_6_15(v9, &v20);
    *(v3 + 24) = v21;
    v13 = type metadata accessor for SpeakableString();
    v19 = 1;
    OUTLINED_FUNCTION_1_18();
    lazy protocol witness table accessor for type ContactsBirthdayInfo and conformance ContactsBirthdayInfo(v14, v15, MEMORY[0x277D55C60]);
    OUTLINED_FUNCTION_6_15(v13, &v19);
    v16 = OUTLINED_FUNCTION_2_22();
    v17(v16);
    outlined init with take of SpeakableString?(v7, v3 + OBJC_IVAR____TtC19SiriContactsIntents20ContactsBirthdayInfo_durationUntilBirthday);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v3;
}

void *protocol witness for CATType.mockGlobals.getter in conformance ContactsBirthdayInfo()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = v2;
  return v2;
}

void protocol witness for CATType.mockGlobals.setter in conformance ContactsBirthdayInfo(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = a1;
}

uint64_t protocol witness for Decodable.init(from:) in conformance ContactsBirthdayInfo@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = ContactsBirthdayInfo.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ContactsBirthdayInfo and conformance ContactsBirthdayInfo(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type ContactsBirthdayInfo.CodingKeys and conformance ContactsBirthdayInfo.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ContactsBirthdayInfo.CodingKeys and conformance ContactsBirthdayInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsBirthdayInfo.CodingKeys and conformance ContactsBirthdayInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsBirthdayInfo.CodingKeys and conformance ContactsBirthdayInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsBirthdayInfo.CodingKeys and conformance ContactsBirthdayInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsBirthdayInfo.CodingKeys and conformance ContactsBirthdayInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsBirthdayInfo.CodingKeys and conformance ContactsBirthdayInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsBirthdayInfo.CodingKeys and conformance ContactsBirthdayInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsBirthdayInfo.CodingKeys and conformance ContactsBirthdayInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsBirthdayInfo.CodingKeys and conformance ContactsBirthdayInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsBirthdayInfo.CodingKeys and conformance ContactsBirthdayInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsBirthdayInfo.CodingKeys and conformance ContactsBirthdayInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsBirthdayInfo.CodingKeys and conformance ContactsBirthdayInfo.CodingKeys);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactsBirthdayInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContactsBirthdayInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_5_19(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_6_15(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

uint64_t ContactsAgeInfo.__allocating_init(contact:contactAttribute:mockGlobals:)(void *a1, id a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v163 = &v154 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v154 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v154 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v154 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v154 - v18;
  v167 = type metadata accessor for DateComponents();
  v20 = *(v167 - 8);
  v21 = MEMORY[0x28223BE20](v167);
  v23 = &v154 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  MEMORY[0x28223BE20](v24);
  v165 = a1;
  v166 = &v154 - v25;
  static DateTimeUtil.getRequestedAgeInterval(contact:contactAttribute:)(a1, a2);
  if (v26)
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v27 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v27, static Logger.siriContacts);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    v30 = OUTLINED_FUNCTION_21_2(v29);
    v31 = v165;
    if (v30)
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      OUTLINED_FUNCTION_2_23();
      _os_log_impl(v33, v34, v35, v36, v32, 2u);
      OUTLINED_FUNCTION_6();
    }

    return 0;
  }

  v37 = type metadata accessor for DialogDuration();
  v160 = a3;
  v158 = a3;
  v159 = v37;
  v162 = DialogDuration.init(_:mockGlobals:)();
  type metadata accessor for ContactsAgeInfo.Builder();
  swift_initStackObject();
  v161 = ContactsAgeInfo.Builder.init()();
  v38 = [a2 ageDateTime];
  v164 = a2;
  if (v38)
  {
    v39 = v38;
    v40 = [v38 dateComponents];

    v41 = v20;
    if (v40)
    {
      static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v42 = 0;
    }

    else
    {
      v42 = 1;
    }

    v43 = v167;
    __swift_storeEnumTagSinglePayload(v17, v42, 1, v167);
    outlined init with take of DateComponents?(v17, v19);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v43);
    a2 = v164;
    if (EnumTagSinglePayload != 1)
    {
      (*(v20 + 32))(v166, v19, v43);
      goto LABEL_16;
    }
  }

  else
  {
    v43 = v167;
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v167);
    v41 = v20;
  }

  static DateComponents.startOfToday.getter();
  if (__swift_getEnumTagSinglePayload(v19, 1, v43) != 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v19, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  }

LABEL_16:
  v45 = v165;
  v46 = [v165 birthday];
  if (!v46)
  {
    goto LABEL_36;
  }

  v47 = v46;
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

  v48 = DateComponents.month.getter();
  v50 = v49;
  v51 = DateComponents.month.getter();
  if (v50)
  {
    if ((v52 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if ((v52 & 1) != 0 || v48 != v51)
  {
    goto LABEL_33;
  }

  v53 = DateComponents.day.getter();
  v55 = v54;
  v56 = DateComponents.day.getter();
  if (v55)
  {
    if ((v57 & 1) == 0)
    {
LABEL_33:
      v74 = OUTLINED_FUNCTION_1_19();
      v75(v74);
      a2 = v164;
      goto LABEL_36;
    }
  }

  else if ((v57 & 1) != 0 || v53 != v56)
  {
    goto LABEL_33;
  }

  v58 = dispatch thunk of DialogDuration.valueInYears.getter();
  v60 = v59;
  v61 = round(*&v58);
  if (v59)
  {
    v61 = *&v58;
  }

  v157 = *&v61;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v62 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_29(v62, static Logger.siriContacts);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = OUTLINED_FUNCTION_24();
    v154 = v65;
    v155 = OUTLINED_FUNCTION_23();
    v170 = v155;
    *v65 = 136315138;
    v66 = v157;
    v168 = v157;
    v169 = v60 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, _sSdSgMR);
    v67 = String.init<A>(describing:)();
    v156 = v60;
    v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, &v170);

    v70 = v154;
    *(v154 + 1) = v69;
    v45 = v165;
    _os_log_impl(&dword_26686A000, v63, v64, "#ContactsAgeInfo.init: birthday is today or on the date requested, setting ageInYearsAsInteger to %s", v70, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v155);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();

    v71 = OUTLINED_FUNCTION_1_19();
    v72(v71);
    v73 = v156;
    a2 = v164;
  }

  else
  {

    v76 = OUTLINED_FUNCTION_1_19();
    v77(v76);
    v73 = v60;
    a2 = v164;
    v66 = v157;
  }

  v78 = v161;
  *(v161 + 24) = v66;
  *(v78 + 32) = v73 & 1;
LABEL_36:
  v79 = [a2 ageDateTime];
  v80 = v162;
  if (!v79)
  {
    goto LABEL_58;
  }

  v81 = v79;
  v82 = [v79 dateComponents];

  if (v82)
  {
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v83 = 0;
  }

  else
  {
    v83 = 1;
  }

  v84 = v167;
  __swift_storeEnumTagSinglePayload(v11, v83, 1, v167);
  outlined init with take of DateComponents?(v11, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v84))
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v14, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    goto LABEL_58;
  }

  (*(v41 + 16))(v23, v14, v84);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v14, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v85 = v163;
  DateComponents.date.getter();
  v86 = *(v41 + 8);
  v86(v23, v84);
  v87 = type metadata accessor for Date();
  if (__swift_getEnumTagSinglePayload(v85, 1, v87) != 1)
  {
    Date.timeIntervalSince1970.getter();
    (*(*(v87 - 8) + 8))(v85, v87);
    type metadata accessor for DialogCalendar();
    v88 = v160;
    DialogCalendar.init(_:mockGlobals:)();
    v89 = [v164 ageDateTime];
    if (v89)
    {
      v90 = v89;
      v91 = [v89 qualifier];

      if (v91 == 2)
      {
        if (one-time initialization token for siriContacts != -1)
        {
          OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
        }

        v139 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_29(v139, static Logger.siriContacts);

        v140 = Logger.logObject.getter();
        v141 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v140, v141))
        {
          v142 = OUTLINED_FUNCTION_24();
          v143 = OUTLINED_FUNCTION_23();
          v168 = v143;
          *v142 = 136315138;
          v170 = v80;

          v144 = OUTLINED_FUNCTION_5_20();
          v146 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v144, v145, &v168);

          *(v142 + 4) = v146;
          OUTLINED_FUNCTION_2_23();
          _os_log_impl(v147, v148, v149, v150, v142, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v143);
          OUTLINED_FUNCTION_6();
          v45 = v165;
          OUTLINED_FUNCTION_6();
        }

        ContactsAgeInfo.Builder.withPastAge(_:)(v151);
        goto LABEL_79;
      }

      if (v91 == 1)
      {
        if (one-time initialization token for siriContacts != -1)
        {
          OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
        }

        v92 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_29(v92, static Logger.siriContacts);

        v93 = Logger.logObject.getter();
        v94 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v93, v94))
        {
          v95 = OUTLINED_FUNCTION_24();
          v96 = OUTLINED_FUNCTION_23();
          v168 = v96;
          *v95 = 136315138;
          v170 = v80;

          v97 = OUTLINED_FUNCTION_5_20();
          v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v98, &v168);

          *(v95 + 4) = v99;
          OUTLINED_FUNCTION_2_23();
          _os_log_impl(v100, v101, v102, v103, v95, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v96);
          OUTLINED_FUNCTION_6();
          v45 = v165;
          OUTLINED_FUNCTION_6();
        }

        ContactsAgeInfo.Builder.withFutureAge(_:)(v104);
LABEL_79:

        v153 = ContactsAgeInfo.Builder.withRequestedDate(_:)(v152);

        type metadata accessor for ContactsAgeInfo();
        swift_allocObject();
        v137 = ContactsAgeInfo.init(builder:)(v153);

        goto LABEL_69;
      }
    }

    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v105 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v105, static Logger.siriContacts);
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_21_2(v107))
    {
      v108 = swift_slowAlloc();
      *v108 = 0;
      OUTLINED_FUNCTION_2_23();
      _os_log_impl(v109, v110, v111, v112, v108, 2u);
      OUTLINED_FUNCTION_6();
    }

    goto LABEL_57;
  }

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v85, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_57:
  a2 = v164;
LABEL_58:
  v113 = COERCE_DOUBLE(dispatch thunk of DialogDuration.valueInDays.getter());
  if ((v114 & 1) == 0 && v113 < 0.0)
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v115 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v115, static Logger.siriContacts);
    v116 = Logger.logObject.getter();
    v117 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_21_2(v117))
    {
      v118 = swift_slowAlloc();
      *v118 = 0;
      OUTLINED_FUNCTION_2_23();
      _os_log_impl(v119, v120, v121, v122, v118, 2u);
      OUTLINED_FUNCTION_6();
    }

    else
    {
    }

    (*(v41 + 8))(v166, v167);
    return 0;
  }

  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v123 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_29(v123, static Logger.siriContacts);

  v124 = Logger.logObject.getter();
  v125 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v124, v125))
  {
    v126 = OUTLINED_FUNCTION_24();
    v127 = OUTLINED_FUNCTION_23();
    v168 = v127;
    *v126 = 136315138;
    v170 = v80;

    v128 = OUTLINED_FUNCTION_5_20();
    v130 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v128, v129, &v168);
    v45 = v165;

    *(v126 + 4) = v130;
    OUTLINED_FUNCTION_2_23();
    _os_log_impl(v131, v132, v133, v134, v126, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v127);
    a2 = v164;
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v136 = ContactsAgeInfo.Builder.withAge(_:)(v135);

  type metadata accessor for ContactsAgeInfo();
  swift_allocObject();
  v137 = ContactsAgeInfo.init(builder:)(v136);

  v86 = *(v41 + 8);
LABEL_69:
  v86(v166, v167);
  return v137;
}

uint64_t OUTLINED_FUNCTION_5_20()
{

  return String.init<A>(describing:)();
}

uint64_t GetContactAttributeUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[50] = v2;
  v1[51] = v0;
  v1[49] = v3;
  type metadata accessor for CATOption();
  v1[52] = OUTLINED_FUNCTION_10_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v1[53] = OUTLINED_FUNCTION_10_0();
  v4 = type metadata accessor for TemplatingResult();
  v1[54] = v4;
  v1[55] = *(v4 - 8);
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v5 = type metadata accessor for ParameterIdentifier();
  v1[60] = v5;
  v1[61] = *(v5 - 8);
  v1[62] = OUTLINED_FUNCTION_10_0();
  v1[63] = type metadata accessor for Signpost.OpenSignpost(0);
  v1[64] = OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 504);
  v1 = *(v0 + 512);
  v3 = static Signpost.contactsLog;
  *(v0 + 520) = static Signpost.contactsLog;
  v4 = v3;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_5_21();
  os_signpost(_:dso:log:name:signpostID:)();
  v5 = v1 + *(v2 + 20);
  *v5 = "MakeGetContactAttributeUnsupportedValueOutput";
  *(v5 + 8) = 45;
  *(v5 + 16) = 2;
  if (specialized ContactsStrategy.isSmartEnabled.getter())
  {
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.siriContacts);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_26686A000, v7, v8, "#GetContactAttributeUnsupportedValueStrategy makeIntentHandledResponse SMART enabled but not yet implemented for the intent", v9, 2u);
      MEMORY[0x26D5E3300](v9, -1, -1);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents25GetContactAttributeIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents25GetContactAttributeIntentCGMR);
  ParameterResolutionRecord.parameter.getter();
  v10 = ParameterIdentifier.name.getter();
  v12 = v11;
  v13 = OUTLINED_FUNCTION_17_0();
  v14(v13);
  v15._countAndFlagsBits = v10;
  v15._object = v12;
  v16.value = GetContactAttributeSlots.init(rawValue:)(v15).value;
  if (v16.value == SiriContactsIntents_GetContactAttributeSlots_unknownDefault)
  {
LABEL_10:
    swift_task_alloc();
    OUTLINED_FUNCTION_36_0();
    *(v0 + 624) = v17;
    *v17 = v18;
    v17[1] = GetContactAttributeUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
    OUTLINED_FUNCTION_8_6();

    __asm { BR              X2 }
  }

  GetContactAttributeSlots.rawValue.getter(v16.value);
  if (v22 == 0xD000000000000015 && 0x800000026696E390 == v21)
  {
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v24 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v25 = ParameterResolutionRecord.result.getter();
  v26 = [v25 unsupportedReason];

  v27 = GetContactAttributeContactAttributeToGetUnsupportedReason.init(rawValue:)(v26);
  if (v28)
  {
    goto LABEL_21;
  }

  switch(v27)
  {
    case 1:
      swift_task_alloc();
      OUTLINED_FUNCTION_36_0();
      *(v0 + 584) = v41;
      *v41 = v42;
      v41[1] = GetContactAttributeUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
      OUTLINED_FUNCTION_8_6();

      return ContactsCommonCATs.unsupportedAuthFailed()();
    case 2:
      v37 = *(v0 + 408);
      type metadata accessor for ContactsLabelCATs(0);
      static CATOption.defaultMode.getter();
      v38 = CATWrapper.__allocating_init(options:globals:)();
      *(v0 + 544) = v38;
      outlined init with copy of DeviceState(v37 + 16, v0 + 272);
      *(v0 + 640) = *(v37 + 112);
      v39 = ParameterResolutionRecord.intent.getter();
      v40 = [v39 isMe];

      if (v40)
      {
        [v40 BOOLValue];
      }

      v44 = *(v0 + 392);
      v45 = type metadata accessor for AceOutput();
      v46 = MEMORY[0x277D5C1D8];
      v44[3] = v45;
      v44[4] = v46;
      *(v0 + 552) = __swift_allocate_boxed_opaque_existential_1(v44);
      outlined init with copy of DeviceState(v0 + 272, v0 + 104);
      *(v0 + 176) = &type metadata for InstalledAppsProvider;
      *(v0 + 184) = &protocol witness table for InstalledAppsProvider;
      *(v0 + 144) = v38;

      specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:)();
      *(v0 + 560) = v47;
      outlined destroy of MissingMeCardViewBuilder(v0 + 104);
      swift_task_alloc();
      OUTLINED_FUNCTION_36_0();
      *(v0 + 568) = v48;
      *v48 = v49;
      v48[1] = GetContactAttributeUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
      OUTLINED_FUNCTION_8_6();

      return ContactsCommonCATs.missingMeCard(deviceState:contactAttributeType:isMe:)();
    case 3:
      swift_task_alloc();
      OUTLINED_FUNCTION_36_0();
      *(v0 + 528) = v33;
      *v33 = v34;
      v33[1] = GetContactAttributeUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
      OUTLINED_FUNCTION_8_6();

      return GetContactAttributeCATs.unsupportedContactAttribute()(v35);
    default:
LABEL_21:
      type metadata accessor for ContactsCommonCATs(0);
      static CATOption.defaultMode.getter();
      *(v0 + 600) = CATWrapper.__allocating_init(options:globals:)();
      swift_task_alloc();
      OUTLINED_FUNCTION_36_0();
      *(v0 + 608) = v29;
      *v29 = v30;
      v29[1] = GetContactAttributeUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
      OUTLINED_FUNCTION_8_6();

      return ContactsCommonCATs.unsupportedAction()();
  }
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  *(v6 + 536) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 576) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  *(v6 + 592) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  v1 = *(v0 + 456);
  v2 = *(v0 + 440);
  v14 = *(v0 + 432);
  v3 = *(v0 + 424);
  v4 = *(v0 + 408);
  v5 = *(v0 + 392);
  outlined init with copy of DeviceState(v4 + 16, v0 + 16);
  v6 = *(v4 + 104);
  *(v0 + 88) = &type metadata for InstalledAppsProvider;
  *(v0 + 96) = &protocol witness table for InstalledAppsProvider;
  *(v0 + 56) = v6;

  specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:)();
  outlined destroy of ErrorViewBuilder(v0 + 16);
  v7 = type metadata accessor for NLContextUpdate();
  v10 = OUTLINED_FUNCTION_17_5(v3, v8, v9, v7);
  *(v0 + 248) = 0u;
  *(v0 + 264) = 0;
  *(v0 + 232) = 0u;
  v11 = MEMORY[0x277D5C1D8];
  v5[3] = v10;
  v5[4] = v11;
  __swift_allocate_boxed_opaque_existential_1(v5);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v0 + 232, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v3, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v2 + 8))(v1, v14);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_5_21();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_0_23();

  OUTLINED_FUNCTION_6_4();

  return v12();
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 616) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  *(v6 + 632) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t GetContactAttributeUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_0();
  v28 = *(v14 + 520);
  v29 = *(v14 + 512);
  v15 = *(v14 + 424);
  v16 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  *(v14 + 344) = 0;
  *(v14 + 312) = 0u;
  *(v14 + 328) = 0u;
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v14 + 312, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v15, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v17 = OUTLINED_FUNCTION_17_0();
  v18(v17);
  __swift_destroy_boxed_opaque_existential_0Tm((v14 + 272));
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_5_21();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_0_23();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_13_0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, v14 + 312, v28, v29, a12, a13, a14);
}

uint64_t GetContactAttributeUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11_11();
  v13 = *(v12 + 392);

  __swift_destroy_boxed_opaque_existential_0Tm((v12 + 272));
  __swift_deallocate_boxed_opaque_existential_1(v13);
  v14 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_2_24(v14);
  OUTLINED_FUNCTION_1_20();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_22_3();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11_11();
  v12 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_2_24(v12);
  OUTLINED_FUNCTION_1_20();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_22_3();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11_11();
  v12 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_2_24(v12);
  OUTLINED_FUNCTION_1_20();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_22_3();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11_11();
  v12 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_2_24(v12);
  OUTLINED_FUNCTION_1_20();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_22_3();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11_11();

  v12 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_2_24(v12);
  OUTLINED_FUNCTION_1_20();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_22_3();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t GetContactAttributeUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)(uint64_t a1)
{
  OUTLINED_FUNCTION_11_11();
  v1 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_2_24(v1);
  OUTLINED_FUNCTION_0_23();

  OUTLINED_FUNCTION_6_4();

  return v2();
}

uint64_t type metadata accessor for GetContactAttributeUnsupportedValueStrategy(uint64_t a1)
{
  result = type metadata singleton initialization cache for GetContactAttributeUnsupportedValueStrategy;
  if (!type metadata singleton initialization cache for GetContactAttributeUnsupportedValueStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_23()
{
  v2 = *(v0 + 512);

  return outlined destroy of Signpost.OpenSignpost(v2);
}

uint64_t OUTLINED_FUNCTION_1_20()
{
  v2 = *(v0 + 512);

  return outlined destroy of Signpost.OpenSignpost(v2);
}

uint64_t OUTLINED_FUNCTION_2_24(uint64_t a1)
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t OUTLINED_FUNCTION_17_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);

  return type metadata accessor for AceOutput();
}

uint64_t OUTLINED_FUNCTION_21_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
}

id static DateTimeUtil.getRequestedAgeInterval(contact:contactAttribute:)(void *a1, void *a2)
{
  v82 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v5 = OUTLINED_FUNCTION_18_0(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_4();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19_4();
  v83 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v12 = OUTLINED_FUNCTION_18_0(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_16();
  v80 = v13;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_26_6();
  v84 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_16();
  v81 = v18;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_6();
  v79 = v20;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v21);
  v23 = &v75 - v22;
  v24 = type metadata accessor for DateComponents();
  OUTLINED_FUNCTION_1_0();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_4();
  v30 = (v28 - v29);
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v75 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v75 - v35;
  result = [a1 birthday];
  if (result)
  {
    v38 = result;
    v77 = v23;
    v78 = v16;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v39 = *(v26 + 32);
    v39(v36, v34, v24);
    DateComponents.year.getter();
    if (v40)
    {
      v41 = OUTLINED_FUNCTION_23_8();
      v42(v41);
      return 0;
    }

    DateComponents.date.getter();
    v43 = v84;
    OUTLINED_FUNCTION_57(v2, 1, v84);
    if (v44)
    {
      v45 = OUTLINED_FUNCTION_23_8();
      v46(v45);
      outlined destroy of UsoEntity_common_Person.DefinedValues?(v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      return 0;
    }

    v76 = *(v78 + 32);
    v76(v77, v2, v43);
    v47 = [v82 ageDateTime];
    if (v47)
    {
      v48 = v47;
      v49 = [v47 dateComponents];

      if (v49)
      {
        static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

        v50 = 0;
      }

      else
      {
        v50 = 1;
      }

      v51 = v83;
      __swift_storeEnumTagSinglePayload(v8, v50, 1, v24);
      outlined init with take of DateComponents?(v8, v51);
      OUTLINED_FUNCTION_57(v51, 1, v24);
      if (!v44)
      {
        v39(v30, v51, v24);
        DateComponents.year.getter();
        if ((v62 & 1) == 0)
        {
          v65 = v80;
          DateComponents.date.getter();
          v66 = v84;
          OUTLINED_FUNCTION_57(v65, 1, v84);
          v52 = v78;
          if (!v44)
          {
            v69 = v79;
            v76(v79, v65, v66);
            v70 = v77;
            v71 = v66;
            Date.timeIntervalSince(_:)();
            v56 = v72;
            v73 = *(v52 + 8);
            v73(v69, v71);
            v74 = *(v26 + 8);
            v74(v30, v24);
            v73(v70, v71);
            v74(v36, v24);
            return v56;
          }

          v67 = OUTLINED_FUNCTION_48();
          v68(v67);
          outlined destroy of UsoEntity_common_Person.DefinedValues?(v65, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_18:
          v53 = v81;
          static Date.startOfTodayGMT.getter();
          v54 = v77;
          Date.timeIntervalSince(_:)();
          v56 = v55;
          v57 = *(v52 + 8);
          v58 = v53;
          v59 = v84;
          v57(v58, v84);
          v57(v54, v59);
          v60 = OUTLINED_FUNCTION_23_8();
          v61(v60);
          return v56;
        }

        v63 = OUTLINED_FUNCTION_48();
        v64(v63);
LABEL_17:
        v52 = v78;
        goto LABEL_18;
      }
    }

    else
    {
      v51 = v83;
      __swift_storeEnumTagSinglePayload(v83, 1, 1, v24);
    }

    outlined destroy of UsoEntity_common_Person.DefinedValues?(v51, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    goto LABEL_17;
  }

  return result;
}

uint64_t static DateTimeUtil.getRequestedAgeDateTime(from:)()
{
  OUTLINED_FUNCTION_4();
  v0[2] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_18_0(v2);
  v0[3] = swift_task_alloc();
  v0[4] = swift_task_alloc();
  v3 = type metadata accessor for TimeZone();
  v0[5] = v3;
  OUTLINED_FUNCTION_1_1(v3);
  v0[6] = v4;
  v0[7] = OUTLINED_FUNCTION_10_0();
  v5 = type metadata accessor for Calendar();
  v0[8] = v5;
  OUTLINED_FUNCTION_1_1(v5);
  v0[9] = v6;
  v0[10] = OUTLINED_FUNCTION_10_0();
  v7 = type metadata accessor for DateComponents();
  v0[11] = v7;
  OUTLINED_FUNCTION_1_1(v7);
  v0[12] = v8;
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v9 = type metadata accessor for DateTimeResolutionSpec.DateTimeConvergenceStrategy();
  v0[16] = v9;
  OUTLINED_FUNCTION_1_1(v9);
  v0[17] = v10;
  v0[18] = OUTLINED_FUNCTION_10_0();
  v11 = type metadata accessor for DateTimeResolutionSpec.ExpandToType();
  v0[19] = v11;
  OUTLINED_FUNCTION_1_1(v11);
  v0[20] = v12;
  v0[21] = OUTLINED_FUNCTION_10_0();
  v13 = type metadata accessor for DateTimeResolutionSpec();
  v0[22] = v13;
  OUTLINED_FUNCTION_1_1(v13);
  v0[23] = v14;
  v0[24] = OUTLINED_FUNCTION_10_0();
  v15 = type metadata accessor for DateTimeResolver();
  v0[25] = v15;
  OUTLINED_FUNCTION_1_1(v15);
  v0[26] = v16;
  v0[27] = OUTLINED_FUNCTION_10_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8DateTimeCGSgMd, &_s13SiriInference14RecommendationOyAA8DateTimeCGSgMR);
  OUTLINED_FUNCTION_18_0(v17);
  v0[28] = OUTLINED_FUNCTION_10_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8DateTimeCGMd, &_s13SiriInference14RecommendationOyAA8DateTimeCGMR);
  v0[29] = v18;
  OUTLINED_FUNCTION_1_1(v18);
  v0[30] = v19;
  v0[31] = swift_task_alloc();
  v0[32] = swift_task_alloc();
  v0[33] = swift_task_alloc();
  v20 = type metadata accessor for Signpost.OpenSignpost(0);
  v0[34] = v20;
  OUTLINED_FUNCTION_18_0(v20);
  v0[35] = OUTLINED_FUNCTION_10_0();
  v21 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

{
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v2 = v0[34];
  v1 = v0[35];
  v3 = static Signpost.contactsLog;
  v0[36] = static Signpost.contactsLog;
  v4 = v3;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v5 = v1 + *(v2 + 20);
  *v5 = "AgeDateTime";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = UsoEntity_common_Date.toDate()();
  v0[37] = v6;
  if (v6)
  {
    type metadata accessor for DateTime.Time();
    swift_allocObject();

    DateTime.Time.init(withHour:)();
    v0[38] = type metadata accessor for DateTime();
    swift_allocObject();
    v0[39] = DateTime.init(withDate:time:)();
    DateTimeResolver.init()();
    v7 = swift_task_alloc();
    v0[40] = v7;
    *v7 = v0;
    v7[1] = static DateTimeUtil.getRequestedAgeDateTime(from:);

    return static DateTimeUtil.requestContext()();
  }

  else
  {
    v9 = v0[35];
    static os_signpost_type_t.end.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    outlined destroy of Signpost.OpenSignpost(v9);

    v10 = v0[1];

    return v10(0);
  }
}

{
  OUTLINED_FUNCTION_4();
  *(*v0 + 328) = v1;

  v2 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

{
  v96 = v0;
  v1 = v0[18];
  v3 = v0[16];
  v2 = v0[17];
  (*(v0[20] + 104))(v0[21], *MEMORY[0x277D56138], v0[19]);
  (*(v2 + 104))(v1, *MEMORY[0x277D56128], v3);
  type metadata accessor for DateTime.DateTimeRange.DefinedDateTimeRange();
  lazy protocol witness table accessor for type DateTime.DateTimeRange.DefinedDateTimeRange and conformance DateTime.DateTimeRange.DefinedDateTimeRange(&lazy protocol witness table cache variable for type DateTime.DateTimeRange.DefinedDateTimeRange and conformance DateTime.DateTimeRange.DefinedDateTimeRange, MEMORY[0x277D563F8], MEMORY[0x277D56400]);
  Dictionary.init(dictionaryLiteral:)();
  OUTLINED_FUNCTION_42_1();
  DateTimeResolutionSpec.init(expandToType:dateTimeConvergenceStrategy:overridesForDefinedDateTimeRanges:inferDurationAsInterval:witchingHourRoundOffEnabled:convergeToOperatingHours:)();
  DateTimeResolver.makeRecommendation(value:context:spec:)();
  v7 = v0[29];
  v8 = v0[30];
  v9 = v0[28];
  v92 = v0[27];
  v94 = v0[33];
  v11 = v0[25];
  v10 = v0[26];

  v12 = OUTLINED_FUNCTION_42_1();
  v13(v12);
  (*(v10 + 8))(v92, v11);
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v7);
  (*(v8 + 32))(v94, v9, v7);
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v17 = v0[32];
  v18 = v0[33];
  v20 = v0[29];
  v19 = v0[30];
  v21 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_29(v21, static Logger.siriContacts);
  v22 = *(v19 + 16);
  v22(v17, v18, v20);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v89 = v24;
    v25 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v95 = v88;
    *v25 = 136315138;
    lazy protocol witness table accessor for type Recommendation<DateTime> and conformance Recommendation<A>();
    v26 = v22;
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    v30 = OUTLINED_FUNCTION_39_2();
    v31(v30);
    v32 = v27;
    v22 = v26;
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v29, &v95);

    *(v25 + 4) = v33;
    _os_log_impl(&dword_26686A000, v23, v89, "#getRequestedAgeDateTime ### datetime recommendation: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v88);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    v34 = OUTLINED_FUNCTION_39_2();
    v35(v34);
  }

  v36 = v0[30];
  v37 = v0[31];
  v38 = v0[29];
  v22(v37, v0[33], v38);
  v39 = (*(v36 + 88))(v37, v38);
  if (v39 == *MEMORY[0x277D56080] || v39 == *MEMORY[0x277D56068])
  {
    v42 = v0[9];
    v41 = v0[10];
    v43 = v0[8];
    (*(v0[30] + 96))(v0[31], v0[29]);
    static Calendar.current.getter();
    static TimeZone.current.getter();
    v44 = DateTime.toINDateComponentsRange(calendar:timeZone:)();

    v45 = OUTLINED_FUNCTION_43();
    v46(v45);
    (*(v42 + 8))(v41, v43);
    v47 = [v44 startDateComponents];

    v48 = v0[29];
    if (!v47)
    {
      v92(v0[33], v0[29]);

LABEL_2:
      v93 = 0;
      goto LABEL_3;
    }

    v50 = v0[14];
    v49 = v0[15];
    v52 = v0[11];
    v51 = v0[12];
    v90 = v0[33];
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for AgeDateTime();
    (*(v51 + 16))(v50, v49, v52);
    v53 = static DateTimeUtil.getQualifier(for:)();
    v93 = AgeDateTime.__allocating_init(dateComponents:qualifier:)(v50, v53);

    (*(v51 + 8))(v49, v52);
    v54 = v90;
    v55 = v48;
  }

  else
  {
    if (v39 != *MEMORY[0x277D56070])
    {
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_31(v68))
      {
        *OUTLINED_FUNCTION_30() = 0;
        OUTLINED_FUNCTION_27(&dword_26686A000, v69, v70, "#getRequestedAgeDateTime DateTimeValue recommendation had no valid value, returning nil.");
        OUTLINED_FUNCTION_6();
      }

      v71 = v0[31];
      v72 = v0[29];
      v92(v0[33], v72);
      v92(v71, v72);
      goto LABEL_2;
    }

    v56 = v0[31];
    (*(v0[30] + 96))(v56, v0[29]);
    v57 = *v56;
    if (!specialized Array._getCount()())
    {

      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_31(v74))
      {
        *OUTLINED_FUNCTION_30() = 0;
        OUTLINED_FUNCTION_27(&dword_26686A000, v75, v76, "#getRequestedAgeDateTime DateTimeValue recommendation had no valid value, returning nil.");
        OUTLINED_FUNCTION_6();
      }

      v92(v0[33], v0[29]);
      goto LABEL_2;
    }

    specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
    if ((v57 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D5E29D0](0, v57);
    }

    else
    {
    }

    v59 = v0[9];
    v58 = v0[10];
    v61 = v0[7];
    v60 = v0[8];
    v62 = v0[5];
    v63 = v0[6];

    static Calendar.current.getter();
    static TimeZone.current.getter();
    v64 = DateTime.toINDateComponentsRange(calendar:timeZone:)();

    (*(v63 + 8))(v61, v62);
    (*(v59 + 8))(v58, v60);
    v65 = [v64 startDateComponents];

    if (v65)
    {
      static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v66 = 0;
    }

    else
    {
      v66 = 1;
    }

    v77 = v0[11];
    v79 = v0[3];
    v78 = v0[4];
    __swift_storeEnumTagSinglePayload(v79, v66, 1, v77);
    outlined init with take of DateComponents?(v79, v78);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v78, 1, v77);
    v81 = v0[29];
    if (EnumTagSinglePayload == 1)
    {
      v82 = v0[4];
      v92(v0[33], v0[29]);

      outlined destroy of UsoEntity_common_Person.DefinedValues?(v82, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
      goto LABEL_2;
    }

    v84 = v0[13];
    v83 = v0[14];
    v86 = v0[11];
    v85 = v0[12];
    v91 = v0[33];
    (*(v85 + 32))(v84, v0[4], v86);
    type metadata accessor for AgeDateTime();
    (*(v85 + 16))(v83, v84, v86);
    v87 = static DateTimeUtil.getQualifier(for:)();
    v93 = AgeDateTime.__allocating_init(dateComponents:qualifier:)(v83, v87);

    (*(v85 + 8))(v84, v86);
    v54 = v91;
    v55 = v81;
  }

  v92(v54, v55);
LABEL_3:
  v4 = v0[35];
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  outlined destroy of Signpost.OpenSignpost(v4);

  v5 = v0[1];

  return v5(v93);
}

uint64_t static DateTimeUtil.requestContext()()
{
  type metadata accessor for Date();
  v0[2] = swift_task_alloc();
  type metadata accessor for Calendar();
  v0[3] = swift_task_alloc();
  type metadata accessor for DateTimeResolutionContext.Hemisphere();
  v0[4] = swift_task_alloc();
  type metadata accessor for TimeZone();
  v0[5] = swift_task_alloc();
  type metadata accessor for Locale();
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](static DateTimeUtil.requestContext(), 0, 0);
}

{
  static Locale.autoupdatingCurrent.getter();
  static Locale.autoupdatingCurrent.getter();
  static Locale.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = static DateTimeUtil.requestContext();
  v2 = *(v0 + 32);

  return static DateTimeUtil.hemisphere()(v2);
}

{
  OUTLINED_FUNCTION_4();

  v0 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

{
  static Calendar.autoupdatingCurrent.getter();
  static Date.now.getter();
  type metadata accessor for DateTimeResolutionContext();
  swift_allocObject();
  OUTLINED_FUNCTION_43();
  v1 = DateTimeResolutionContext.init(with:regionFormat:regionAwareLanguage:timeZone:hemisphere:calendar:date:)();

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t static DateTimeUtil.getQualifier(for:)()
{
  v0 = type metadata accessor for DateComponents();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  static DateComponents.startOfToday.getter();
  DateComponents.date.getter();
  (*(v1 + 8))(v3, v0);
  v10 = type metadata accessor for Date();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    v11 = v9;
LABEL_5:
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    return 0;
  }

  Date.timeIntervalSince1970.getter();
  v13 = v12;
  v14 = *(*(v10 - 8) + 8);
  v14(v9, v10);
  DateComponents.date.getter();
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    v11 = v7;
    goto LABEL_5;
  }

  Date.timeIntervalSince1970.getter();
  v17 = v16;
  v14(v7, v10);
  if (v13 >= v17)
  {
    return 2 * (v17 < v13);
  }

  else
  {
    return 1;
  }
}

id static DateTimeUtil.getRequestedAgeDateTime(from:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarV9ComponentOSgMd, &_s10Foundation8CalendarV9ComponentOSgMR);
  OUTLINED_FUNCTION_18_0(v3);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_30_5();
  OUTLINED_FUNCTION_11_12(v5);
  v185 = type metadata accessor for Calendar.Component();
  OUTLINED_FUNCTION_1_0();
  v184 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_11_12(v8);
  v195 = type metadata accessor for TerminalElement.Qualifier();
  OUTLINED_FUNCTION_1_0();
  v191 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_0_15();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_14_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV8IntervalVSgMd, &_s12SiriOntology15TerminalElementV8IntervalVSgMR);
  OUTLINED_FUNCTION_18_0(v13);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_30_5();
  OUTLINED_FUNCTION_11_12(v15);
  v204 = type metadata accessor for TerminalElement.Interval();
  OUTLINED_FUNCTION_1_0();
  v194 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_14_10(v18);
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV9QualifierOSgMd, &_s12SiriOntology15TerminalElementV9QualifierOSgMR);
  MEMORY[0x28223BE20](v193);
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_0_15();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_0_15();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_0_15();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_14_10(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, _s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_18_0(v23);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_30_5();
  OUTLINED_FUNCTION_14_10(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  OUTLINED_FUNCTION_18_0(v26);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_30_5();
  v207 = v28;
  OUTLINED_FUNCTION_13_8();
  v208 = type metadata accessor for Calendar();
  OUTLINED_FUNCTION_1_0();
  v206 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_74();
  v211 = v31;
  OUTLINED_FUNCTION_13_8();
  v200 = type metadata accessor for DateComponents();
  OUTLINED_FUNCTION_1_0();
  v199 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_0_15();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_7_6();
  v209 = v35;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_19_4();
  v214 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV14DateTimePeriodVSgMd, &_s12SiriOntology15TerminalElementV14DateTimePeriodVSgMR);
  OUTLINED_FUNCTION_18_0(v38);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v39);
  v41 = &v182 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV6PeriodOSgMd, &_s12SiriOntology15TerminalElementV6PeriodOSgMR);
  v43 = OUTLINED_FUNCTION_18_0(v42);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_0_15();
  MEMORY[0x28223BE20](v44);
  v46 = &v182 - v45;
  v205 = type metadata accessor for TerminalElement.Period();
  OUTLINED_FUNCTION_1_0();
  v192 = v47;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_0_15();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_26_6();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV4DateVSgMd, &_s12SiriOntology15TerminalElementV4DateVSgMR);
  OUTLINED_FUNCTION_18_0(v50);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v51);
  v53 = &v182 - v52;
  v213 = type metadata accessor for TerminalElement.Date();
  OUTLINED_FUNCTION_1_0();
  v210 = v54;
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_74();
  v212 = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV13DateTimeValueVSgMd, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMR);
  OUTLINED_FUNCTION_18_0(v57);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v58);
  v60 = &v182 - v59;
  v61 = type metadata accessor for TerminalElement.DateTimeValue();
  OUTLINED_FUNCTION_1_0();
  v216 = v62;
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_74();
  v215 = v64;
  if (one-time initialization token for contactAgeDate != -1)
  {
    swift_once();
  }

  v65 = type metadata accessor for ContactNLv3Intent(0);
  lazy protocol witness table accessor for type DateTime.DateTimeRange.DefinedDateTimeRange and conformance DateTime.DateTimeRange.DefinedDateTimeRange(&lazy protocol witness table cache variable for type ContactNLv3Intent and conformance ContactNLv3Intent, type metadata accessor for ContactNLv3Intent, &protocol conformance descriptor for ContactNLv3Intent);
  v196 = v65;
  v203 = a1;
  IntentNodeTraversable.value<A>(forNode:)();
  OUTLINED_FUNCTION_57(v60, 1, v61);
  if (v72)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v60, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMd, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMR);
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v66 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v66, static Logger.siriContacts);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v69);
      _os_log_impl(&dword_26686A000, v67, v68, "#getRequestedAgeDateTime user didn't provide a date time reference for age computation. returning nil.", v41, 2u);
      OUTLINED_FUNCTION_11_1();
    }

    return 0;
  }

  v70 = *(v216 + 32);
  v182 = v61;
  v70(v215, v60);
  TerminalElement.DateTimeValue.startDate.getter();
  v71 = v213;
  OUTLINED_FUNCTION_57(v53, 1, v213);
  if (!v72)
  {
    v79 = v212;
    v80 = OUTLINED_FUNCTION_46_0();
    v81(v80);
    v82 = TerminalElement.Date.periods.getter();
    specialized Collection.first.getter(v82, v41);

    v83 = type metadata accessor for TerminalElement.DateTimePeriod();
    v84 = OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_57(v84, v85, v83);
    if (v86)
    {
      outlined destroy of UsoEntity_common_Person.DefinedValues?(v41, &_s12SiriOntology15TerminalElementV14DateTimePeriodVSgMd, &_s12SiriOntology15TerminalElementV14DateTimePeriodVSgMR);
      __swift_storeEnumTagSinglePayload(v46, 1, 1, v205);
    }

    else
    {
      TerminalElement.DateTimePeriod.period.getter();
      (*(*(v83 - 8) + 8))(v41, v83);
      v99 = v205;
      OUTLINED_FUNCTION_57(v46, 1, v205);
      if (!v100)
      {
        OUTLINED_FUNCTION_44_1();
        (*(v148 + 32))(v1, v46, v99);
        v98 = static DateTimeUtil.ageDateTime(for:)(v1);
        (*(v41 + 1))(v1, v99);
        (*(v210 + 8))(v79, v71);
LABEL_44:
        v149 = OUTLINED_FUNCTION_7_9();
        v150(v149);
        return v98;
      }
    }

    outlined destroy of UsoEntity_common_Person.DefinedValues?(v46, &_s12SiriOntology15TerminalElementV6PeriodOSgMd, &_s12SiriOntology15TerminalElementV6PeriodOSgMR);
    static DateComponents.startOfToday.getter();
    static Calendar.gregorianCurrent.getter();
    result = TerminalElement.Date.month.getter();
    v103 = v102;
    if (v102)
    {
      v205 = 0;
LABEL_30:
      v104 = v208;
      (*(v206 + 16))(v207, v211, v208);
      OUTLINED_FUNCTION_50();
      __swift_storeEnumTagSinglePayload(v105, v106, v107, v104);
      Calendar.timeZone.getter();
      type metadata accessor for TimeZone();
      OUTLINED_FUNCTION_50();
      __swift_storeEnumTagSinglePayload(v108, v109, v110, v111);
      TerminalElement.Date.year.getter();
      if (v112)
      {
        DateComponents.year.getter();
      }

      TerminalElement.Date.dayOfMonth.getter();
      TerminalElement.Date.dayOfWeekOrdinalValue.getter();
      TerminalElement.Date.year.getter();
      if (v113)
      {
        DateComponents.year.getter();
      }

      v114 = v209;
      DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
      (*(v206 + 8))(v211, v208);
      if (one-time initialization token for contactAttributes != -1)
      {
        swift_once();
      }

      v115 = IntentNodeTraversable.values<A>(forNode:)();
      v116 = v201;
      v117 = v214;
      static DateTimeUtil.qualifier(for:requestedDateComponents:now:)(v115, v201);

      DateComponents.setImplicitYear(from:now:qualifier:)(v212, v117, v116);
      v118 = v202;
      v119 = v200;
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
      }

      v120 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_29(v120, static Logger.siriContacts);
      v121 = v197;
      outlined init with copy of TerminalElement.Qualifier?(v116, v197);
      v122 = Logger.logObject.getter();
      v123 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v122, v123))
      {
        v103 = swift_slowAlloc();
        v218 = swift_slowAlloc();
        *v103 = 136315394;
        outlined init with copy of TerminalElement.Qualifier?(v121, v118);
        v124 = String.init<A>(describing:)();
        v126 = v125;
        outlined destroy of UsoEntity_common_Person.DefinedValues?(v121, &_s12SiriOntology15TerminalElementV9QualifierOSgMd, &_s12SiriOntology15TerminalElementV9QualifierOSgMR);
        v127 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v126, &v218);

        *(v103 + 4) = v127;
        *(v103 + 12) = 2080;
        OUTLINED_FUNCTION_50_1(v209, v217);
        OUTLINED_FUNCTION_4_14();
        lazy protocol witness table accessor for type DateTime.DateTimeRange.DefinedDateTimeRange and conformance DateTime.DateTimeRange.DefinedDateTimeRange(v128, v129, MEMORY[0x277CC89C0]);
        v130 = dispatch thunk of CustomStringConvertible.description.getter();
        v132 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v131, &v218);

        *(v103 + 14) = v132;
        _os_log_impl(&dword_26686A000, v122, v123, "#getRequestedAgeDateTime user asked for age with qualifier: %s on specific date: %s", v103, 0x16u);
        swift_arrayDestroy();
        v114 = v209;
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_11_1();
      }

      else
      {

        outlined destroy of UsoEntity_common_Person.DefinedValues?(v121, &_s12SiriOntology15TerminalElementV9QualifierOSgMd, &_s12SiriOntology15TerminalElementV9QualifierOSgMR);
      }

      type metadata accessor for AgeDateTime();
      OUTLINED_FUNCTION_50_1(v114, &v218);
      OUTLINED_FUNCTION_44_1();
      v134 = v198;
      (*(v133 + 16))(v198, v114, v119);
      outlined init with copy of TerminalElement.Qualifier?(v116, v118);
      v98 = AgeDateTime.__allocating_init(dateComponents:qualifier:)(v134, v118);
      outlined destroy of UsoEntity_common_Person.DefinedValues?(v116, &_s12SiriOntology15TerminalElementV9QualifierOSgMd, &_s12SiriOntology15TerminalElementV9QualifierOSgMR);
      v135 = *(v103 + 8);
      v135(v214, v119);
      (*(v210 + 8))(v212, v213);
      v136 = OUTLINED_FUNCTION_7_9();
      v137(v136);
      v135(v114, v119);
      return v98;
    }

    if (!__OFADD__(result, 1))
    {
      v205 = result + 1;
      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_62;
  }

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v53, &_s12SiriOntology15TerminalElementV4DateVSgMd, &_s12SiriOntology15TerminalElementV4DateVSgMR);
  OUTLINED_FUNCTION_44_1();
  TerminalElement.DateTimeValue.interval.getter();
  v73 = OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_57(v73, v74, v204);
  if (v72)
  {
    v75 = OUTLINED_FUNCTION_29_4();
    v76(v75);
    v77 = &_s12SiriOntology15TerminalElementV8IntervalVSgMd;
    v78 = &_s12SiriOntology15TerminalElementV8IntervalVSgMR;
    goto LABEL_21;
  }

  v87 = OUTLINED_FUNCTION_37_0();
  v88(v87);
  OUTLINED_FUNCTION_44_1();
  TerminalElement.Interval.qualifier.getter();
  v89 = OUTLINED_FUNCTION_43_2();
  v90 = v195;
  OUTLINED_FUNCTION_57(v89, v91, v195);
  if (v92)
  {
    v93 = OUTLINED_FUNCTION_25_4();
    v94(v93);
    v95 = OUTLINED_FUNCTION_29_4();
    v96(v95);
    v77 = &_s12SiriOntology15TerminalElementV9QualifierOSgMd;
    v78 = &_s12SiriOntology15TerminalElementV9QualifierOSgMR;
    goto LABEL_21;
  }

  v138 = v191;
  v139 = v190;
  (*(v191 + 32))(v190, v41, v90);
  v140 = TerminalElement.Interval.quantity.getter();
  if (v141)
  {
    v142 = OUTLINED_FUNCTION_46_0();
    v143(v142);
    v144 = OUTLINED_FUNCTION_25_4();
    v145(v144);
    v146 = OUTLINED_FUNCTION_7_9();
    v147(v146);
    return 0;
  }

  v151 = v140;
  v152 = *&v140;
  v153 = v187;
  (*(v138 + 104))(v187, *MEMORY[0x277D5E640], v90);
  v154 = MEMORY[0x26D5E0980](v139, v153);
  v155 = OUTLINED_FUNCTION_43();
  v214 = v156;
  result = (v156)(v155);
  if (v154)
  {
    v157 = v188;
    v158 = v189;
    if ((~v151 & 0x7FF0000000000000) == 0)
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v41 = v186;
    if (v152 <= -9.22337204e18)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v152 < 9.22337204e18)
    {
      goto LABEL_55;
    }

    __break(1u);
  }

  v157 = v188;
  v158 = v189;
  if ((v151 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v41 = v186;
  if (v152 >= 9.22337204e18)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v152 > -9.22337204e18)
  {
    v152 = -v152;
LABEL_55:
    TerminalElement.Interval.period.getter();
    v159 = OUTLINED_FUNCTION_43_2();
    v160 = v205;
    OUTLINED_FUNCTION_57(v159, v161, v205);
    if (!v72)
    {
      v167 = v192;
      (*(v192 + 32))(v158, v41, v160);
      static DateTimeUtil.calendarComponent(for:)(v158, v157);
      v168 = v185;
      OUTLINED_FUNCTION_57(v157, 1, v185);
      if (!v169)
      {
        v213 = v152;
        v175 = v167;
        v176 = v183;
        (*(v184 + 32))(v183, v157, v168);
        v98 = static DateTimeUtil.ageDateTime(for:nlQuantity:qualifier:)(v176, v213, v139);
        v177 = OUTLINED_FUNCTION_37_0();
        v178(v177);
        (*(v175 + 8))(v189, v205);
        v179 = OUTLINED_FUNCTION_43();
        v214(v179);
        v180 = OUTLINED_FUNCTION_41_2();
        v181(v180);
        goto LABEL_44;
      }

      (*(v167 + 8))(v158, v160);
      v170 = OUTLINED_FUNCTION_46_0();
      v214(v170);
      v171 = OUTLINED_FUNCTION_41_2();
      v172(v171);
      v173 = OUTLINED_FUNCTION_7_9();
      v174(v173);
      v77 = &_s10Foundation8CalendarV9ComponentOSgMd;
      v78 = &_s10Foundation8CalendarV9ComponentOSgMR;
      v97 = v157;
      goto LABEL_22;
    }

    v162 = OUTLINED_FUNCTION_46_0();
    v214(v162);
    v163 = OUTLINED_FUNCTION_25_4();
    v164(v163);
    v165 = OUTLINED_FUNCTION_7_9();
    v166(v165);
    v77 = &_s12SiriOntology15TerminalElementV6PeriodOSgMd;
    v78 = &_s12SiriOntology15TerminalElementV6PeriodOSgMR;
LABEL_21:
    v97 = v41;
LABEL_22:
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v97, v77, v78);
    return 0;
  }

LABEL_66:
  __break(1u);
  return result;
}

id static DateTimeUtil.ageDateTime(for:)(uint64_t a1)
{
  v75 = a1;
  v1 = type metadata accessor for Calendar.Component();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v68 = &v67 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV9QualifierOSgMd, &_s12SiriOntology15TerminalElementV9QualifierOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v70 = &v67 - v11;
  v12 = type metadata accessor for TimeZone();
  v73 = *(v12 - 8);
  v74 = v12;
  MEMORY[0x28223BE20](v12);
  v71 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DateComponents();
  MEMORY[0x28223BE20](v14 - 8);
  v72 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TerminalElement.Period();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Date();
  v76 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v69 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v67 = &v67 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v67 - v25;
  v27 = type metadata accessor for Calendar();
  v77 = *(v27 - 8);
  v78 = v27;
  MEMORY[0x28223BE20](v27);
  v29 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.gregorianCurrent.getter();
  static Date.startOfToday.getter();
  (*(v17 + 16))(v19, v75, v16);
  v30 = (*(v17 + 88))(v19, v16);
  if (v30 == *MEMORY[0x277D5E638])
  {
    (*(v2 + 104))(v4, *MEMORY[0x277CC9968], v1);
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    (*(v2 + 8))(v4, v1);
    v31 = v29;
    if (__swift_getEnumTagSinglePayload(v8, 1, v20) == 1)
    {
      (*(v76 + 8))(v26, v20);
      (*(v77 + 8))(v29, v78);
      v32 = v8;
LABEL_4:
      outlined destroy of UsoEntity_common_Person.DefinedValues?(v32, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      return 0;
    }

    v45 = v76;
    v46 = v69;
    (*(v76 + 32))(v69, v8, v20);
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, static Logger.siriContacts);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_26686A000, v48, v49, "#getRequestedAgeDateTime user asked for age yesterday. returning yesterday's date components.", v50, 2u);
      MEMORY[0x26D5E3300](v50, -1, -1);
    }

    type metadata accessor for AgeDateTime();
    v51 = v71;
    Calendar.timeZone.getter();
    v52 = v72;
    Calendar.dateComponents(in:from:)();
    (*(v73 + 8))(v51, v74);
    v44 = AgeDateTime.__allocating_init(dateComponents:qualifier:)(v52, 2);
    v53 = *(v45 + 8);
    v53(v46, v20);
    v53(v26, v20);
    goto LABEL_16;
  }

  v33 = v29;
  if (v30 == *MEMORY[0x277D5E610])
  {
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.siriContacts);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v76;
    v31 = v33;
    if (v37)
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_26686A000, v35, v36, "#getRequestedAgeDateTime user asked for age today. returning today's date components.", v39, 2u);
      MEMORY[0x26D5E3300](v39, -1, -1);
    }

    type metadata accessor for AgeDateTime();
    v40 = v71;
    Calendar.timeZone.getter();
    v41 = v72;
    Calendar.dateComponents(in:from:)();
    (*(v73 + 8))(v40, v74);
    v42 = type metadata accessor for TerminalElement.Qualifier();
    v43 = v70;
    __swift_storeEnumTagSinglePayload(v70, 1, 1, v42);
    v44 = AgeDateTime.__allocating_init(dateComponents:qualifier:)(v41, v43);
    (*(v38 + 8))(v26, v20);
LABEL_16:
    (*(v77 + 8))(v31, v78);
    return v44;
  }

  if (v30 != *MEMORY[0x277D5E628])
  {
    (*(v76 + 8))(v26, v20);
    (*(v77 + 8))(v29, v78);
    (*(v17 + 8))(v19, v16);
    return 0;
  }

  v54 = v1;
  (*(v2 + 104))(v4, *MEMORY[0x277CC9968], v1);
  v55 = v68;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (*(v2 + 8))(v4, v54);
  v56 = v20;
  if (__swift_getEnumTagSinglePayload(v55, 1, v20) == 1)
  {
    (*(v76 + 8))(v26, v20);
    (*(v77 + 8))(v29, v78);
    v32 = v55;
    goto LABEL_4;
  }

  v58 = v76;
  v59 = v67;
  (*(v76 + 32))(v67, v55, v20);
  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v60 = type metadata accessor for Logger();
  __swift_project_value_buffer(v60, static Logger.siriContacts);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&dword_26686A000, v61, v62, "#getRequestedAgeDateTime user asked for age tomorrow. returning tomorrow's date components.", v63, 2u);
    MEMORY[0x26D5E3300](v63, -1, -1);
  }

  type metadata accessor for AgeDateTime();
  v64 = v71;
  Calendar.timeZone.getter();
  v65 = v72;
  Calendar.dateComponents(in:from:)();
  (*(v73 + 8))(v64, v74);
  v44 = AgeDateTime.__allocating_init(dateComponents:qualifier:)(v65, 1);
  v66 = *(v58 + 8);
  v66(v59, v56);
  v66(v26, v56);
  (*(v77 + 8))(v33, v78);
  return v44;
}

uint64_t static DateTimeUtil.qualifier(for:requestedDateComponents:now:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!specialized Sequence<>.contains(_:)(67, a1))
  {
    DateComponents.year.getter();
    if ((v12 & 1) != 0 || (DateComponents.day.getter(), (v13 & 1) == 0) || (DateComponents.month.getter(), (v14 & 1) == 0))
    {
      if (!specialized Sequence<>.contains(_:)(69, a1))
      {
        DateComponents.year.getter();
        if ((v22 & 1) != 0 || (DateComponents.day.getter(), (v23 & 1) == 0) || (DateComponents.month.getter(), (v24 & 1) == 0))
        {
          v21 = type metadata accessor for TerminalElement.Qualifier();
          v19 = a2;
          v20 = 1;
          goto LABEL_15;
        }
      }

      result = DateComponents.year.getter();
      if ((v15 & 1) == 0)
      {
        v16 = result;
        result = DateComponents.year.getter();
        if ((v17 & 1) == 0)
        {
          v18 = result;
          v9 = type metadata accessor for TerminalElement.Qualifier();
          v10 = *(*(v9 - 8) + 104);
          if (v16 < v18)
          {
            goto LABEL_13;
          }

          goto LABEL_5;
        }

LABEL_25:
        __break(1u);
        return result;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }
  }

  result = DateComponents.year.getter();
  if (v5)
  {
    __break(1u);
    goto LABEL_23;
  }

  v6 = result;
  result = DateComponents.year.getter();
  if (v7)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v8 = result;
  v9 = type metadata accessor for TerminalElement.Qualifier();
  v10 = *(*(v9 - 8) + 104);
  if (v8 >= v6)
  {
LABEL_13:
    v11 = MEMORY[0x277D5E648];
    goto LABEL_14;
  }

LABEL_5:
  v11 = MEMORY[0x277D5E640];
LABEL_14:
  v10(a2, *v11, v9);
  v19 = a2;
  v20 = 0;
  v21 = v9;
LABEL_15:

  return __swift_storeEnumTagSinglePayload(v19, v20, 1, v21);
}

uint64_t static DateTimeUtil.calendarComponent(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TerminalElement.Period();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x277D5E620])
  {
    v9 = MEMORY[0x277CC99A8];
  }

  else if (v8 == *MEMORY[0x277D5E618])
  {
    v9 = MEMORY[0x277CC99A0];
  }

  else if (v8 == *MEMORY[0x277D5E5F0])
  {
    v9 = MEMORY[0x277CC9980];
  }

  else if (v8 == *MEMORY[0x277D5E5E8])
  {
    v9 = MEMORY[0x277CC9968];
  }

  else if (v8 == *MEMORY[0x277D5E5F8])
  {
    v9 = MEMORY[0x277CC9940];
  }

  else if (v8 == *MEMORY[0x277D5E608])
  {
    v9 = MEMORY[0x277CC9998];
  }

  else
  {
    if (v8 != *MEMORY[0x277D5E600])
    {
      v13 = type metadata accessor for Calendar.Component();
      __swift_storeEnumTagSinglePayload(a2, 1, 1, v13);
      return (*(v5 + 8))(v7, v4);
    }

    v9 = MEMORY[0x277CC9988];
  }

  v10 = *v9;
  v11 = type metadata accessor for Calendar.Component();
  (*(*(v11 - 8) + 104))(a2, v10, v11);
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v11);
}

id static DateTimeUtil.ageDateTime(for:nlQuantity:qualifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v165 = a2;
  v166 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV9QualifierOSgMd, &_s12SiriOntology15TerminalElementV9QualifierOSgMR);
  OUTLINED_FUNCTION_18_0(v5);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_30_5();
  v163 = v7;
  OUTLINED_FUNCTION_13_8();
  v167 = type metadata accessor for TerminalElement.Qualifier();
  OUTLINED_FUNCTION_1_0();
  v159 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_16();
  v156 = v10;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_0_15();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_11_12(v13);
  v155 = type metadata accessor for TimeZone();
  OUTLINED_FUNCTION_1_0();
  v153 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_74();
  v154 = v16;
  OUTLINED_FUNCTION_13_8();
  v164 = type metadata accessor for DateComponents();
  OUTLINED_FUNCTION_1_0();
  v161 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_0_15();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_6();
  v158 = v20;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7_6();
  v162 = v22;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_19_4();
  v157 = v24;
  OUTLINED_FUNCTION_13_8();
  v152 = type metadata accessor for Calendar.Component();
  OUTLINED_FUNCTION_1_0();
  v151 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_0_15();
  MEMORY[0x28223BE20](v27);
  v29 = &v138 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_18_0(v30);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v31);
  v33 = &v138 - v32;
  v34 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1_0();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1_4();
  v40 = v38 - v39;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_26_6();
  v42 = type metadata accessor for Calendar();
  OUTLINED_FUNCTION_1_0();
  v44 = v43;
  MEMORY[0x28223BE20](v45);
  v47 = &v138 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.gregorianCurrent.getter();
  static Date.startOfToday.getter();
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v48 = *(v36 + 8);
  v165 = v36 + 8;
  v160 = v48;
  v48(v40, v34);
  OUTLINED_FUNCTION_57(v33, 1, v34);
  if (v49)
  {
    (*(v44 + 8))(v47, v42);
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v33, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    return 0;
  }

  else
  {
    v145 = v44;
    v146 = v42;
    v51 = *(v36 + 32);
    v147 = v34;
    v51(v3, v33, v34);
    v52 = v151;
    v53 = v152;
    (*(v151 + 104))(v29, *MEMORY[0x277CC9988], v152);
    v54 = MEMORY[0x26D5DF470](a1, v29);
    v55 = *(v52 + 8);
    v142 = v52 + 8;
    v141 = v55;
    v55(v29, v53);
    v56 = v154;
    Calendar.timeZone.getter();
    v57 = (v153 + 8);
    v144 = v3;
    v143 = v47;
    if (v54)
    {
      Calendar.dateComponents(in:from:)();
      (*v57)(v56, v155);
      DateComponents.month.setter();
      DateComponents.day.setter();
      v58 = v161;
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
      }

      v59 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_29(v59, static Logger.siriContacts);
      v60 = v159;
      v61 = *(v159 + 16);
      v62 = v149;
      v63 = v167;
      (v61)(v149, v166, v167);
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.debug.getter();
      v66 = os_log_type_enabled(v64, v65);
      v158 = v61;
      if (v66)
      {
        v67 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v169 = v29;
        *v67 = 136315394;
        v68 = OUTLINED_FUNCTION_34_3(&v171);
        (v61)(v68, v62, v167);
        v69 = String.init<A>(describing:)();
        v71 = v70;
        (*(v60 + 8))(v62, v167);
        v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v71, &v169);

        *(v67 + 4) = v72;
        *(v67 + 12) = 2080;
        v73 = v157;
        OUTLINED_FUNCTION_50_1(v157, v168);
        OUTLINED_FUNCTION_4_14();
        lazy protocol witness table accessor for type DateTime.DateTimeRange.DefinedDateTimeRange and conformance DateTime.DateTimeRange.DefinedDateTimeRange(v74, v75, MEMORY[0x277CC89C0]);
        v76 = v164;
        v77 = dispatch thunk of CustomStringConvertible.description.getter();
        v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, &v169);

        *(v67 + 14) = v61;
        _os_log_impl(&dword_26686A000, v64, v65, "#getRequestedAgeDateTime user asked for age on year interval. qualifier: %s, date: %s", v67, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6();
        v63 = v167;
        OUTLINED_FUNCTION_6();

        OUTLINED_FUNCTION_47_1();
      }

      else
      {

        (*(v60 + 8))(v62, v63);
        v76 = v164;
        OUTLINED_FUNCTION_47_1();
        v73 = v157;
      }

      type metadata accessor for AgeDateTime();
      OUTLINED_FUNCTION_50_1(v73, &v169);
      v116 = v162;
      (*(v58 + 16))(v162, v73, v76);
      v117 = v163;
      v158(v163, v166, v63);
      OUTLINED_FUNCTION_50();
      __swift_storeEnumTagSinglePayload(v118, v119, v120, v63);
      v50 = AgeDateTime.__allocating_init(dateComponents:qualifier:)(v116, v117);
      v121 = OUTLINED_FUNCTION_22_7();
      v122(v121);
      (*(v61 + 8))(v143, v29);
      v123 = OUTLINED_FUNCTION_42_1();
      v124(v123);
    }

    else
    {
      v79 = a1;
      v149 = v29;
      v80 = v53;
      v81 = v158;
      Calendar.dateComponents(in:from:)();
      (*v57)(v56, v155);
      v82 = v161;
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
      }

      v83 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_29(v83, static Logger.siriContacts);
      v84 = (v52 + 16);
      v85 = v148;
      v86 = v80;
      v151 = *(v52 + 16);
      (v151)(v148, v79, v80);
      v87 = v159;
      v88 = *(v159 + 16);
      v154 = v159 + 16;
      v88(v156, v166, v167);
      v89 = *(v82 + 16);
      v90 = v164;
      v157 = v82 + 16;
      v155 = v89;
      v89(v150, v81, v164);
      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.debug.getter();
      v93 = OUTLINED_FUNCTION_31(v92);
      v153 = v88;
      if (v93)
      {
        v94 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        v169 = v140;
        *v94 = 136315650;
        v139 = v91;
        v95 = OUTLINED_FUNCTION_34_3(&v170);
        (v151)(v95, v85, v86);
        v96 = String.init<A>(describing:)();
        v98 = v97;
        v99 = OUTLINED_FUNCTION_20_4();
        v100(v99);
        v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v98, &v169);

        *(v94 + 4) = v101;
        *(v94 + 12) = 2080;
        v102 = OUTLINED_FUNCTION_34_3(&v171);
        v84 = v156;
        v103 = v167;
        v88(v102, v156, v167);
        String.init<A>(describing:)();
        LODWORD(v152) = v92;
        (*(v87 + 8))(v84, v103);
        v104 = OUTLINED_FUNCTION_37_0();
        v107 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v105, v106);

        *(v94 + 14) = v107;
        *(v94 + 22) = 2080;
        OUTLINED_FUNCTION_4_14();
        lazy protocol witness table accessor for type DateTime.DateTimeRange.DefinedDateTimeRange and conformance DateTime.DateTimeRange.DefinedDateTimeRange(v108, v109, MEMORY[0x277CC89C0]);
        dispatch thunk of CustomStringConvertible.description.getter();
        v110 = OUTLINED_FUNCTION_35_3();
        v84(v110, v164);
        v111 = OUTLINED_FUNCTION_37_0();
        v114 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v111, v112, v113);

        *(v94 + 24) = v114;
        v115 = v139;
        _os_log_impl(&dword_26686A000, v139, v152, "#getRequestedAgeDateTime user asked for age on %s interval. qualifier: %s, date: %s", v94, 0x20u);
        OUTLINED_FUNCTION_34_3(&v169);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6();
        v90 = v164;
        OUTLINED_FUNCTION_6();
      }

      else
      {

        v125 = OUTLINED_FUNCTION_35_3();
        v84(v125, v90);
        v126 = v167;
        (*(v87 + 8))(v156, v167);
        v127 = OUTLINED_FUNCTION_20_4();
        v128(v127);
        v103 = v126;
      }

      type metadata accessor for AgeDateTime();
      v129 = v162;
      v130 = v158;
      v155(v162, v158, v90);
      v131 = v163;
      (v153)(v163, v166, v103);
      OUTLINED_FUNCTION_50();
      __swift_storeEnumTagSinglePayload(v132, v133, v134, v103);
      v50 = AgeDateTime.__allocating_init(dateComponents:qualifier:)(v129, v131);
      v84(v130, v90);
      v135 = OUTLINED_FUNCTION_22_7();
      v136(v135);
      (*(v145 + 8))(v143, v146);
    }
  }

  return v50;
}

uint64_t static DateTimeUtil.hemisphere()(uint64_t a1)
{
  v1[7] = a1;
  v2 = type metadata accessor for DateTimeResolutionContext.Hemisphere();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](static DateTimeUtil.hemisphere(), 0, 0);
}

uint64_t static DateTimeUtil.hemisphere()()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = [objc_allocWithZone(MEMORY[0x277D47310]) init];
  *(v0 + 96) = v3;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  outlined bridged method (mbnn) of @objc SAGetRequestOrigin.desiredAccuracy.setter(v4, v5, v3);
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  isa = NSNumber.init(integerLiteral:)(300).super.super.isa;
  [v3 setMaxAge_];

  *(v0 + 136) = *MEMORY[0x277D56158];
  v7 = *(v2 + 104);
  *(v0 + 104) = v7;
  *(v0 + 112) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v7(v1);
  static AceService.currentAsync.getter();
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v8);
  v10 = swift_task_alloc();
  *(v0 + 120) = v10;
  v11 = type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SABaseCommand, 0x277D471B0);
  *v10 = v0;
  v10[1] = static DateTimeUtil.hemisphere();

  return MEMORY[0x2821BB6A0](v3, v8, v11, v9);
}

{
  OUTLINED_FUNCTION_4();
  *(*v1 + 128) = v2;

  if (v0)
  {

    v3 = static DateTimeUtil.hemisphere();
  }

  else
  {
    v3 = static DateTimeUtil.hemisphere();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  v2 = *(v0 + 128);
  if (v1)
  {
    v3 = v1;
    v4 = *(v0 + 80);
    v24 = *(v0 + 104);
    v5 = *(v0 + 136);
    v6 = *(v0 + 88);
    v7 = *(v0 + 96);
    v8 = *(v0 + 64);
    v9 = *(v0 + 72);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    [v3 latitude];
    v11 = v10;

    (*(v9 + 8))(v6, v8);
    if (v11 <= 0.0)
    {
      v12 = v5;
    }

    else
    {
      v12 = *MEMORY[0x277D56150];
    }

    v24(v4, v12, v8);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v13 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v13, static Logger.siriContacts);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_31(v15))
    {
      v16 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v16);
      OUTLINED_FUNCTION_23_1(&dword_26686A000, v17, v18, "#getCurrentLocation - submitted SAGetRequestOrigin command but either failed or could not cast to SASetRequestOrigin. returning nil");
      OUTLINED_FUNCTION_11_1();
    }

    v19 = *(v0 + 96);
  }

  v20 = OUTLINED_FUNCTION_37_3();
  v21(v20);

  v22 = *(v0 + 8);

  return v22();
}

{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_29(v1, static Logger.siriContacts);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_31(v3))
  {
    v4 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_24_0(v4);
    OUTLINED_FUNCTION_23_1(&dword_26686A000, v5, v6, "#getCurrentLocation - submitted SAGetRequestOrigin command but either failed or could not cast to SASetRequestOrigin. returning nil");
    OUTLINED_FUNCTION_11_1();
  }

  v7 = v0[12];

  v8 = OUTLINED_FUNCTION_37_3();
  v9(v8, v2);

  v10 = v0[1];

  return v10();
}

unint64_t lazy protocol witness table accessor for type Recommendation<DateTime> and conformance Recommendation<A>()
{
  result = lazy protocol witness table cache variable for type Recommendation<DateTime> and conformance Recommendation<A>;
  if (!lazy protocol witness table cache variable for type Recommendation<DateTime> and conformance Recommendation<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s13SiriInference14RecommendationOyAA8DateTimeCGMd, &_s13SiriInference14RecommendationOyAA8DateTimeCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Recommendation<DateTime> and conformance Recommendation<A>);
  }

  return result;
}

void outlined bridged method (mbnn) of @objc SAGetRequestOrigin.desiredAccuracy.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x26D5E2470](a1);

  [a3 setDesiredAccuracy_];
}

uint64_t lazy protocol witness table accessor for type DateTime.DateTimeRange.DefinedDateTimeRange and conformance DateTime.DateTimeRange.DefinedDateTimeRange(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_50_1(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t specialized INIntentResolutionResult.typedDisambiguationItems<A>()(uint64_t (*a1)(void *))
{
  v3 = [v1 disambiguationItems];
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v13 = MEMORY[0x277D84F90];
  v7 = *(v4 + 16);
LABEL_2:
  v8 = v4 + 32 + 32 * v5;
  while (1)
  {
    if (v7 == v5)
    {

      return v6;
    }

    if (v5 >= *(v4 + 16))
    {
      break;
    }

    outlined init with copy of Any(v8, v12);
    v9 = a1(v12);
    ++v5;
    v8 += 32;
    v10 = __swift_destroy_boxed_opaque_existential_0Tm(v12);
    if (v9)
    {
      MEMORY[0x26D5E25E0](v10);
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = v13;
      goto LABEL_2;
    }
  }

  __break(1u);

  __swift_destroy_boxed_opaque_existential_0Tm(v12);

  __break(1u);
  return result;
}

void ContactAttributeDisambiguationStrategy.actionForInput(_:resolveRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v63 = *v1;
  type metadata accessor for Parse();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8();
  v64 = v8 - v7;
  v9 = type metadata accessor for USOParse();
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8();
  v15 = v14 - v13;
  v16 = type metadata accessor for Input();
  OUTLINED_FUNCTION_1_0();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_8();
  v22 = v21 - v20;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.siriContacts);
  v65 = v3;
  (*(v18 + 16))(v22, v3, v16);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v61 = v11;
    v26 = OUTLINED_FUNCTION_24();
    v62 = v5;
    v27 = OUTLINED_FUNCTION_23();
    v66 = v27;
    *v26 = 136315138;
    v28 = Input.description.getter();
    v60 = v15;
    v29 = v9;
    v31 = v30;
    (*(v18 + 8))(v22, v16);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v31, &v66);
    v9 = v29;
    v15 = v60;

    *(v26 + 4) = v32;
    _os_log_impl(&dword_26686A000, v24, v25, "#ContactAttributeDisambiguationStrategy input: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    v5 = v62;
    OUTLINED_FUNCTION_6();
    v11 = v61;
    OUTLINED_FUNCTION_6();
  }

  else
  {

    (*(v18 + 8))(v22, v16);
  }

  v33 = v65;
  Input.parse.getter();
  v34 = OUTLINED_FUNCTION_59_0();
  if (v35(v34) == *MEMORY[0x277D5C160])
  {
    v36 = OUTLINED_FUNCTION_59_0();
    v37(v36);
    (*(v11 + 32))(v15, v64, v9);
    if (USOParse.isOrdinalDisambiguation.getter())
    {
      static ActionForInput.handle()();
LABEL_28:
      (*(v11 + 8))(v15, v9);
      goto LABEL_29;
    }

    v40 = *(v63 + 240);
    type metadata accessor for ParameterResolutionRecord();
    v41 = ParameterResolutionRecord.intent.getter();
    v42 = [v41 siriMatches];

    if (v42)
    {
      type metadata accessor for SiriMatch();
      OUTLINED_FUNCTION_73();
      v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (specialized Array._getCount()())
      {
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
        if ((v43 & 0xC000000000000001) != 0)
        {
          v44 = MEMORY[0x26D5E29D0](0, v43);
        }

        else
        {
          v44 = *(v43 + 32);
        }

        v45 = v44;

        v46 = [v45 identifier];

        if (v46)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        v33 = v65;
      }

      else
      {
      }
    }

    static ContactAttributeDisambiguationStrategy.isRequestForDifferentContact(_:currentContactId:)();
    v48 = v47;

    if (v48)
    {
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_21_2(v50))
      {
        v51 = OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_24_0(v51);
        v54 = "#ContactAttributeDisambiguationStrategy received request_common_Person for another contact which is not a disambiguation response, ignoring here.";
LABEL_26:
        OUTLINED_FUNCTION_7_4(&dword_26686A000, v52, v53, v54);
        OUTLINED_FUNCTION_11_1();
        goto LABEL_27;
      }

      goto LABEL_27;
    }

    v55 = ParameterResolutionRecord.intent.getter();
    v56 = [v55 contactAttributeToGet];

    static ContactAttributeDisambiguationStrategy.isRequestForDifferentContactAttribute(_:contactAttributeToGet:)();
    LOBYTE(v55) = v57;

    if (v55)
    {
      v49 = Logger.logObject.getter();
      v58 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_21_2(v58))
      {
        v59 = OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_24_0(v59);
        v54 = "#ContactAttributeDisambiguationStrategy received request for a different contact attribute which is not a disambiguation response, ignoring here.";
        goto LABEL_26;
      }

LABEL_27:

      static ActionForInput.ignore()();
      goto LABEL_28;
    }

    (*(v11 + 8))(v15, v9);
  }

  else
  {
    v38 = OUTLINED_FUNCTION_59_0();
    v39(v38);
    v40 = *(v63 + 240);
  }

  static StrategyUtil.getActionForInput<A>(input:intentType:)(v33, v40, v5);
LABEL_29:
  OUTLINED_FUNCTION_14();
}

void static ContactAttributeDisambiguationStrategy.isRequestForDifferentContact(_:currentContactId:)()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v6 = OUTLINED_FUNCTION_18_0(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_39_3();
  MEMORY[0x28223BE20](v7);
  v9 = &v41[-v8];
  USOParse.preferredUserDialogAct.getter(&v41[-v8]);
  v10 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    outlined destroy of ResponseMode?(v9, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
LABEL_7:
    OUTLINED_FUNCTION_46_1();
    goto LABEL_8;
  }

  v11 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
  OUTLINED_FUNCTION_9_13();
  (*(v12 + 8))(v9, v10);
  if (!v11)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_52_1();

  if (!v43)
  {
LABEL_8:
    outlined destroy of ResponseMode?(v42, &_sypSgMd, &_sypSgMR);
    goto LABEL_9;
  }

  type metadata accessor for UsoTask_request_common_Person();
  OUTLINED_FUNCTION_15_9();
  v13 = swift_dynamicCast();
  if (v13)
  {
    v14 = UsoTask_request_common_Person.contactIds.getter(v13);
LABEL_17:

    goto LABEL_21;
  }

LABEL_9:
  USOParse.preferredUserDialogAct.getter(v0);
  OUTLINED_FUNCTION_20_5(v0);
  if (v35)
  {
    outlined destroy of ResponseMode?(v0, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
LABEL_18:
    OUTLINED_FUNCTION_46_1();
    goto LABEL_19;
  }

  v15 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
  OUTLINED_FUNCTION_9_13();
  (*(v16 + 8))(v0, v10);
  if (!v15)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_52_1();

  if (!v43)
  {
LABEL_19:
    outlined destroy of ResponseMode?(v42, &_sypSgMd, &_sypSgMR);
    goto LABEL_20;
  }

  type metadata accessor for UsoTask_noVerb_common_Person();
  OUTLINED_FUNCTION_15_9();
  if (swift_dynamicCast())
  {

    dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();

    if (v42[0])
    {
      v14 = UsoEntity_common_Person.contactIds.getter();

      goto LABEL_17;
    }
  }

LABEL_20:
  v14 = MEMORY[0x277D84F90];
LABEL_21:
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.siriContacts);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v42[0] = swift_slowAlloc();
    *v20 = 136315394;

    MEMORY[0x26D5E2610](v21, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_10_8();

    v22 = OUTLINED_FUNCTION_26_7();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v24);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;

    v26 = OUTLINED_FUNCTION_26_7();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v28);

    *(v20 + 14) = v29;
    OUTLINED_FUNCTION_68_0(&dword_26686A000, v30, v31, "#GCADisambiguationStrategy isRequestForDifferentContact contactIds: %s, current is %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v32 = *(v14 + 16);
  if (v32)
  {
    if (v2)
    {
      v33 = (v14 + 40);
      v34 = v32 + 1;
      do
      {
        if (!--v34)
        {
          break;
        }

        v35 = *(v33 - 1) == v4 && *v33 == v2;
        if (v35)
        {
          break;
        }

        v33 += 2;
      }

      while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0);
    }
  }

  else
  {
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_21_2(v37))
    {
      v38 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v38);
      OUTLINED_FUNCTION_7_4(&dword_26686A000, v39, v40, "#GCADisambiguationStrategy isRequestForDifferentContact no contact IDs found in response parse, treating as follow-up for same contact");
      OUTLINED_FUNCTION_11_1();
    }
  }

  OUTLINED_FUNCTION_14();
}

void static ContactAttributeDisambiguationStrategy.isRequestForDifferentContactAttribute(_:contactAttributeToGet:)()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  type metadata accessor for UsoIdentifier();
  OUTLINED_FUNCTION_1_0();
  v126 = v4;
  v127 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_4();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_54_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v123 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v13 = OUTLINED_FUNCTION_18_0(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_4();
  v16 = (v14 - v15);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v123 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v123 - v21;
  USOParse.preferredUserDialogAct.getter(&v123 - v21);
  v23 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_71_0(v22);
  if (v105)
  {
    outlined destroy of ResponseMode?(v22, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
LABEL_25:
    OUTLINED_FUNCTION_46_1();
    goto LABEL_26;
  }

  v24 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
  OUTLINED_FUNCTION_52();
  (*(v25 + 8))(v22, v23);
  if (!v24)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_52_1();

  if (!v130)
  {
LABEL_26:
    outlined destroy of ResponseMode?(v129, &_sypSgMd, &_sypSgMR);
    goto LABEL_27;
  }

  type metadata accessor for UsoTask_request_common_Person();
  OUTLINED_FUNCTION_15_9();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  v26 = v128;

  dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();

  v27 = v129[0];
  if (!v129[0])
  {

LABEL_27:
    USOParse.preferredUserDialogAct.getter(v20);
    OUTLINED_FUNCTION_71_0(v20);
    if (v105)
    {
      outlined destroy of ResponseMode?(v20, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    }

    else
    {
      v45 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
      OUTLINED_FUNCTION_52();
      (*(v46 + 8))(v20, v23);
      if (v45)
      {
        OUTLINED_FUNCTION_52_1();

        if (v130)
        {
          type metadata accessor for UsoTask_noVerb_common_Person();
          OUTLINED_FUNCTION_15_9();
          if (swift_dynamicCast())
          {
            v47 = v128;

            dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();

            v48 = v129[0];
            if (v129[0])
            {
              dispatch thunk of UsoEntity_common_Person.specifyingContactAddress.getter();
              OUTLINED_FUNCTION_48_0();

              OUTLINED_FUNCTION_19_7();
              OUTLINED_FUNCTION_51_0();
              v49 = *(v48 + 16);
              if (v49)
              {
                v123 = v48;
                v124 = v47;
                OUTLINED_FUNCTION_21_7();
                v51 = v48 + v50;
                v125 = *(v52 + 56);
                v126 = v53;
                v54 = (v52 - 8);
                v35 = MEMORY[0x277D84F90];
                do
                {
                  v55 = v127;
                  v126(v0, v51, v127);
                  v56 = UsoIdentifier.namespace.getter();
                  if (v57)
                  {
                    v58 = v56;
                  }

                  else
                  {
                    v58 = 0;
                  }

                  if (v57)
                  {
                    v59 = v57;
                  }

                  else
                  {
                    v59 = 0xE000000000000000;
                  }

                  v60._countAndFlagsBits = v58;
                  v60._object = v59;
                  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UsoIdentifierNamespace.init(rawValue:), v60);
                  OUTLINED_FUNCTION_48_0();

                  if (v0 >= 9)
                  {
                    (*v54)(v0, v55);
                  }

                  else
                  {
                    (*v54)(v0, v55);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      OUTLINED_FUNCTION_23_9();
                      v35 = v63;
                    }

                    v62 = *(v35 + 16);
                    v61 = *(v35 + 24);
                    if (v62 >= v61 >> 1)
                    {
                      OUTLINED_FUNCTION_22_8(v61);
                      v35 = v64;
                    }

                    *(v35 + 16) = v62 + 1;
                    *(v35 + v62 + 32) = v0;
                  }

                  v51 += v125;
                  --v49;
                }

                while (v49);
                goto LABEL_114;
              }

              goto LABEL_123;
            }
          }

LABEL_53:
          USOParse.preferredUserDialogAct.getter(v16);
          OUTLINED_FUNCTION_71_0(v16);
          if (v105)
          {
            outlined destroy of ResponseMode?(v16, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
          }

          else
          {
            v65 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
            OUTLINED_FUNCTION_52();
            (*(v66 + 8))(v16, v23);
            if (v65)
            {
              OUTLINED_FUNCTION_52_1();

              if (v130)
              {
                type metadata accessor for UsoTask_checkExistence_common_Person();
                OUTLINED_FUNCTION_15_9();
                if (swift_dynamicCast())
                {
                  v67 = v128;

                  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();

                  if (v129[0])
                  {
                    v68 = dispatch thunk of UsoEntity_common_Person.specifyingContactAddress.getter();

                    if (v68)
                    {
                      v69 = OUTLINED_FUNCTION_19_7();

                      if (v69)
                      {
                        v70 = *(v69 + 16);
                        if (v70)
                        {
                          v123 = v69;
                          v124 = v67;
                          OUTLINED_FUNCTION_21_7();
                          v72 = v69 + v71;
                          v125 = *(v73 + 56);
                          v126 = v74;
                          v75 = (v73 - 8);
                          v35 = MEMORY[0x277D84F90];
                          do
                          {
                            v76 = v127;
                            v126(v7, v72, v127);
                            v77 = UsoIdentifier.namespace.getter();
                            if (v78)
                            {
                              v79 = v77;
                            }

                            else
                            {
                              v79 = 0;
                            }

                            if (v78)
                            {
                              v80 = v78;
                            }

                            else
                            {
                              v80 = 0xE000000000000000;
                            }

                            v81._countAndFlagsBits = v79;
                            v81._object = v80;
                            _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UsoIdentifierNamespace.init(rawValue:), v81);
                            OUTLINED_FUNCTION_48_0();

                            if (v7 >= 9)
                            {
                              (*v75)(v7, v76);
                            }

                            else
                            {
                              (*v75)(v7, v76);
                              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                              {
                                OUTLINED_FUNCTION_23_9();
                                v35 = v84;
                              }

                              v83 = *(v35 + 16);
                              v82 = *(v35 + 24);
                              if (v83 >= v82 >> 1)
                              {
                                OUTLINED_FUNCTION_22_8(v82);
                                v35 = v85;
                              }

                              *(v35 + 16) = v83 + 1;
                              *(v35 + v83 + 32) = v7;
                            }

                            v72 += v125;
                            --v70;
                          }

                          while (v70);
                          goto LABEL_114;
                        }

                        goto LABEL_123;
                      }
                    }
                  }
                }

LABEL_81:
                v35 = MEMORY[0x277D84F90];
                goto LABEL_82;
              }

LABEL_80:
              outlined destroy of ResponseMode?(v129, &_sypSgMd, &_sypSgMR);
              goto LABEL_81;
            }
          }

          OUTLINED_FUNCTION_46_1();
          goto LABEL_80;
        }

LABEL_52:
        outlined destroy of ResponseMode?(v129, &_sypSgMd, &_sypSgMR);
        goto LABEL_53;
      }
    }

    OUTLINED_FUNCTION_46_1();
    goto LABEL_52;
  }

  v124 = v26;
  dispatch thunk of UsoEntity_common_Person.specifyingContactAddress.getter();
  OUTLINED_FUNCTION_48_0();

  OUTLINED_FUNCTION_19_7();
  OUTLINED_FUNCTION_51_0();
  v28 = *(v27 + 16);
  if (!v28)
  {
LABEL_123:

    goto LABEL_81;
  }

  v29 = v127;
  OUTLINED_FUNCTION_21_7();
  v123 = v27;
  v31 = v27 + v30;
  v125 = *(v32 + 56);
  v126 = v33;
  v34 = (v32 - 8);
  v35 = MEMORY[0x277D84F90];
  do
  {
    v126(v11, v31, v29);
    v36 = UsoIdentifier.namespace.getter();
    if (v37)
    {
      v38 = v36;
    }

    else
    {
      v38 = 0;
    }

    if (v37)
    {
      v39 = v37;
    }

    else
    {
      v39 = 0xE000000000000000;
    }

    v40._countAndFlagsBits = v38;
    v40._object = v39;
    _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UsoIdentifierNamespace.init(rawValue:), v40);
    OUTLINED_FUNCTION_48_0();

    if (v11 >= 9)
    {
      (*v34)(v11, v29);
    }

    else
    {
      (*v34)(v11, v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_23_9();
        v35 = v43;
      }

      v42 = *(v35 + 16);
      v41 = *(v35 + 24);
      if (v42 >= v41 >> 1)
      {
        OUTLINED_FUNCTION_22_8(v41);
        v35 = v44;
      }

      *(v35 + 16) = v42 + 1;
      *(v35 + v42 + 32) = v11;
      v29 = v127;
    }

    v31 += v125;
    --v28;
  }

  while (v28);
LABEL_114:

LABEL_82:
  if (!*(v35 + 16))
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v111 = type metadata accessor for Logger();
    __swift_project_value_buffer(v111, static Logger.siriContacts);
    v114 = Logger.logObject.getter();
    v112 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_25_5(v112))
    {
      goto LABEL_111;
    }

    v113 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_47_2(v113);
    v110 = "#GCADisambiguationStrategy isRequestForDifferentContactAttribute no relevant namespace candidates found, returning true";
LABEL_110:
    OUTLINED_FUNCTION_65_0(&dword_26686A000, v108, v109, v110);
    OUTLINED_FUNCTION_6();
    goto LABEL_111;
  }

  if (one-time initialization token for siriContacts != -1)
  {
LABEL_125:
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v86 = type metadata accessor for Logger();
  __swift_project_value_buffer(v86, static Logger.siriContacts);
  v87 = v2;
  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v129[0] = swift_slowAlloc();
    *v90 = 136315394;

    MEMORY[0x26D5E2610](v91, &type metadata for UsoIdentifierNamespace);
    OUTLINED_FUNCTION_10_8();

    v92 = OUTLINED_FUNCTION_26_7();
    v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v93, v94);

    *(v90 + 4) = v95;
    *(v90 + 12) = 2080;
    v128 = v2;
    v96 = v87;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriContactsIntents16ContactAttributeCSgMd, _s19SiriContactsIntents16ContactAttributeCSgMR);
    v97 = String.init<A>(describing:)();
    v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v98, v129);

    *(v90 + 14) = v99;
    OUTLINED_FUNCTION_68_0(&dword_26686A000, v100, v101, "#GCADisambiguationStrategy isRequestForDifferentContactAttribute follow-up namespaces: %s, current is %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v102 = *(v35 + 16);
  if (!v102)
  {
LABEL_104:
    v114 = Logger.logObject.getter();
    v106 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_25_5(v106))
    {
      goto LABEL_111;
    }

    v107 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_47_2(v107);
    v110 = "#GCADisambiguationStrategy isRequestForDifferentContactAttribute returning true";
    goto LABEL_110;
  }

  v103 = 0;
  while (1)
  {
    if (v103 >= *(v35 + 16))
    {
      __break(1u);
      goto LABEL_125;
    }

    v104 = *(v35 + v103 + 32);
    if (v104 != 5)
    {
      break;
    }

    if (v2 && [v87 contactAttributeType] == 3)
    {

      v114 = Logger.logObject.getter();
      v118 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_25_5(v118))
      {
        goto LABEL_111;
      }

      v119 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_47_2(v119);
      v110 = "#GCADisambiguationStrategy isRequestForDifferentContactAttribute matched to postal address request, returning false";
      goto LABEL_110;
    }

LABEL_102:
    if (v102 == ++v103)
    {

      goto LABEL_104;
    }
  }

  if (v104 != 4)
  {
    v105 = v104 != 3 || v2 == 0;
    if (!v105 && [v87 contactAttributeType] == 2)
    {

      v114 = Logger.logObject.getter();
      v115 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_25_5(v115))
      {
        v117 = OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_47_2(v117);
        v110 = "#GCADisambiguationStrategy isRequestForDifferentContactAttribute matched to phone number request, returning false";
        goto LABEL_110;
      }

      goto LABEL_111;
    }

    goto LABEL_102;
  }

  if (!v2 || [v87 contactAttributeType] != 1)
  {
    goto LABEL_102;
  }

  v114 = Logger.logObject.getter();
  v120 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_25_5(v120))
  {
    v122 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_47_2(v122);
    v110 = "#GCADisambiguationStrategy isRequestForDifferentContactAttribute matched to email request, returning false";
    goto LABEL_110;
  }

LABEL_111:

  OUTLINED_FUNCTION_14();
}

uint64_t ContactAttributeDisambiguationStrategy.makeDisambiguationItemContainer(resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  v0[2] = v1;
  v2 = type metadata accessor for ParameterResolutionRecord();
  v0[3] = v2;
  OUTLINED_FUNCTION_1_1(v2);
  v0[4] = v3;
  v0[5] = OUTLINED_FUNCTION_10_0();
  v4 = type metadata accessor for Signpost.OpenSignpost(0);
  v0[6] = v4;
  OUTLINED_FUNCTION_18_0(v4);
  v0[7] = OUTLINED_FUNCTION_10_0();
  v5 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t ContactAttributeDisambiguationStrategy.makeDisambiguationItemContainer(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_19_0();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  v25 = v22[6];
  static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_42_2(*(v25 + 20));
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v26 = v22[4];
  v27 = v22[5];
  v29 = v22[2];
  v28 = v22[3];
  v30 = type metadata accessor for Logger();
  v31 = __swift_project_value_buffer(v30, static Logger.siriContacts);
  (*(v26 + 16))(v27, v29, v28);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = OUTLINED_FUNCTION_24();
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    a10 = v31;
    v36 = ParameterResolutionRecord.result.getter();
    v37 = OUTLINED_FUNCTION_60_0();
    v38(v37);
    *(v34 + 4) = v36;
    *v35 = v36;
    _os_log_impl(&dword_26686A000, v32, v33, "#ContactAttributeDisambiguationStrategy Intent resolution result: %@", v34, 0xCu);
    outlined destroy of ResponseMode?(v35, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    v39 = OUTLINED_FUNCTION_60_0();
    v40(v39);
  }

  v41 = ParameterResolutionRecord.result.getter();
  v42 = specialized INIntentResolutionResult.typedDisambiguationItems<A>()(specialized closure #1 in INIntentResolutionResult.typedDisambiguationItems<A>());

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = OUTLINED_FUNCTION_24();
    v46 = OUTLINED_FUNCTION_23();
    a11 = v46;
    *v45 = 136315138;
    v47 = type metadata accessor for ContactAttribute();
    v48 = MEMORY[0x26D5E2610](v42, v47);
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &a11);

    *(v45 + 4) = v50;
    _os_log_impl(&dword_26686A000, v43, v44, "#ContactAttributeDisambiguationStrategy Contact attributes retrieved from disambiguation items: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v46);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v51 = v22[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow32BasicDisambiguationItemContainerCy0A15ContactsIntents16ContactAttributeCGMd, &_s11SiriKitFlow32BasicDisambiguationItemContainerCy0A15ContactsIntents16ContactAttributeCGMR);
  BasicDisambiguationItemContainer.__allocating_init(_:_:)();
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_0_24();
  _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_1(v51, v52);

  OUTLINED_FUNCTION_13_0();

  return v55(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14);
}

uint64_t ContactAttributeDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[16] = a4;
  v5[17] = v4;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  v6 = *v4;
  v7 = type metadata accessor for ContactNLv3Intent(0);
  OUTLINED_FUNCTION_18_0(v7);
  v5[18] = OUTLINED_FUNCTION_10_0();
  v8 = type metadata accessor for NLIntent();
  v5[19] = v8;
  OUTLINED_FUNCTION_1_1(v8);
  v5[20] = v9;
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = *(v6 + 240);
  v10 = type metadata accessor for IntentPromptAnswer();
  v5[24] = v10;
  OUTLINED_FUNCTION_1_1(v10);
  v5[25] = v11;
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v12 = type metadata accessor for USOParse();
  v5[28] = v12;
  OUTLINED_FUNCTION_1_1(v12);
  v5[29] = v13;
  v5[30] = OUTLINED_FUNCTION_10_0();
  v14 = type metadata accessor for Parse();
  v5[31] = v14;
  OUTLINED_FUNCTION_1_1(v14);
  v5[32] = v15;
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v16 = type metadata accessor for Input();
  v5[35] = v16;
  OUTLINED_FUNCTION_1_1(v16);
  v5[36] = v17;
  v5[37] = OUTLINED_FUNCTION_10_0();
  v18 = type metadata accessor for Signpost.OpenSignpost(0);
  v5[38] = v18;
  OUTLINED_FUNCTION_18_0(v18);
  v5[39] = OUTLINED_FUNCTION_10_0();
  v19 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t ContactAttributeDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)()
{
  v139 = v0;
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  v1 = v0[38];
  v2 = static Signpost.contactsLog;
  v0[40] = static Signpost.contactsLog;
  v2;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_42_2(*(v1 + 20));
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v3 = v0[36];
  v4 = v0[37];
  v5 = v0[35];
  v6 = v0[14];
  v7 = type metadata accessor for Logger();
  v8 = __swift_project_value_buffer(v7, static Logger.siriContacts);
  v0[41] = v8;
  (*(v3 + 16))(v4, v6, v5);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[36];
  v12 = v0[37];
  v14 = v0[35];
  v136 = v8;
  if (v11)
  {
    v15 = v0[34];
    v16 = v0[31];
    v17 = OUTLINED_FUNCTION_24();
    *&v137 = OUTLINED_FUNCTION_23();
    *v17 = 136315138;
    Input.parse.getter();
    OUTLINED_FUNCTION_26_7();
    String.init<A>(describing:)();
    OUTLINED_FUNCTION_10_8();
    (*(v13 + 8))(v12, v14);
    v18 = v15;
    v8 = v136;
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v16, &v137);

    *(v17 + 4) = v19;
    _os_log_impl(&dword_26686A000, v9, v10, "#ContactAttributeDisambiguationStrategy Running parseDisambiguationResult() %s", v17, 0xCu);
    OUTLINED_FUNCTION_12_9();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  Input.parse.getter();
  v20 = OUTLINED_FUNCTION_22_0();
  v22 = v21(v20);
  if (v22 == *MEMORY[0x277D5C128])
  {
    v23 = v0[33];
    v25 = v0[21];
    v24 = v0[22];
    v27 = v0[19];
    v26 = v0[20];
    value = v0[18];
    (*(v0[32] + 96))(v23, v0[31]);
    (*(v26 + 32))(v24, v23, v27);
    v29 = v26 + 16;
    v30 = OUTLINED_FUNCTION_59_0();
    v31(v30);
    ContactNLv3Intent.init(intent:)(v25, value);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVy0A15ContactsIntents16ContactAttributeCGMd, &_s11SiriKitFlow22PaginatedItemContainerVy0A15ContactsIntents16ContactAttributeCGMR);
    PaginatedItemContainer.items.getter();
    type metadata accessor for ContactAttribute();
    v32 = OUTLINED_FUNCTION_60_0();
    v33 = MEMORY[0x26D5E2640](v32);

    v141 = ContactNLv3Intent.arrayIndexForReference(arrayLength:)(v33);
    if (!v141.is_nil)
    {
      value = v141.value;
      if ((v141.value & 0x8000000000000000) == 0 && v141.value < v33)
      {
        PaginatedItemContainer.items.getter();
        Array.subscript.getter();

        v66 = v0[12];
        v67 = [v66 handleLabel];

        if (v67)
        {
          v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v37 = v69;
        }

        else
        {
          v68 = 0;
          v37 = 0;
        }

        swift_bridgeObjectRetain_n();
        v94 = Logger.logObject.getter();
        v95 = static os_log_type_t.debug.getter();

        os_log_type_enabled(v94, v95);
        OUTLINED_FUNCTION_57_0();
        if (v96)
        {
          OUTLINED_FUNCTION_24();
          OUTLINED_FUNCTION_32_4();
          OUTLINED_FUNCTION_41_3();
          *value = 136315138;
          v0[4] = v68;
          v0[5] = v37;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          v97 = String.init<A>(describing:)();
          v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v98, &v137);

          *(value + 4) = v99;
          OUTLINED_FUNCTION_69_0(&dword_26686A000, v100, v101, "#ContactAttributeDisambiguationStrategy User selected attribute label by ordinal reference: %s");
          OUTLINED_FUNCTION_12_9();
          OUTLINED_FUNCTION_11_1();

          OUTLINED_FUNCTION_2_25();
          _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_1(v8, v102);
          (*(v29 + 8))(v8);
        }

        else
        {

          OUTLINED_FUNCTION_2_25();
          _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_1(v8, v103);
          v104 = OUTLINED_FUNCTION_60();
          v106(v104, v105);
        }

        if (!v37)
        {
          goto LABEL_46;
        }

        goto LABEL_42;
      }
    }

    v34 = ContactNLv3Intent.requestedContactAttributeLabel.getter();
    if (!v35)
    {
      OUTLINED_FUNCTION_2_25();
      _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_1(v70, v71);
      v72 = OUTLINED_FUNCTION_60();
      v73(v72);
      goto LABEL_46;
    }

    v36 = v34;
    v37 = v35;
    swift_bridgeObjectRetain_n();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();

    os_log_type_enabled(v38, v39);
    OUTLINED_FUNCTION_57_0();
    if (v40)
    {
      OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_32_4();
      OUTLINED_FUNCTION_41_3();
      *value = 136315138;
      v0[2] = v36;
      v0[3] = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v41 = String.init<A>(describing:)();
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v137);

      *(value + 4) = v43;
      OUTLINED_FUNCTION_69_0(&dword_26686A000, v44, v45, "#ContactAttributeDisambiguationStrategy User selected attribute label by semantic reference: %s");
      OUTLINED_FUNCTION_12_9();
      OUTLINED_FUNCTION_11_1();

      OUTLINED_FUNCTION_2_25();
      _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_1(v8, v46);
      (*(v29 + 8))(v8);
      goto LABEL_42;
    }

    OUTLINED_FUNCTION_2_25();
    _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_1(v8, v74);
    v75 = OUTLINED_FUNCTION_60();
LABEL_41:
    v77(v75, v76);
LABEL_42:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVy0A15ContactsIntents16ContactAttributeCGMd, &_s11SiriKitFlow22PaginatedItemContainerVy0A15ContactsIntents16ContactAttributeCGMR);
    v0[11] = PaginatedItemContainer.items.getter();
    v109 = swift_task_alloc();
    *(v109 + 16) = v135;
    *(v109 + 24) = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriContactsIntents16ContactAttributeCGMd, &_sSay19SiriContactsIntents16ContactAttributeCGMR);
    lazy protocol witness table accessor for type BasicDisambiguationItemContainer<SAPerson> and conformance BasicDisambiguationItemContainer<A>(&lazy protocol witness table cache variable for type [ContactAttribute] and conformance [A], &_sSay19SiriContactsIntents16ContactAttributeCGMd, &_sSay19SiriContactsIntents16ContactAttributeCGMR);
    Sequence.first(where:)();

    v110 = v0[10];
    if (v110)
    {
      type metadata accessor for ParameterResolutionRecord();
      v111 = ParameterResolutionRecord.intent.getter();
      [v111 setContactHandleMatches_];

      v112 = ParameterResolutionRecord.intent.getter();
      [v112 setContactHandleAlternatives_];

      v113 = ParameterResolutionRecord.intent.getter();
      v114 = v110;
      v115 = MEMORY[0x26D5E2470](0xD000000000000015, 0x800000026696E390);
      [v113 setValue:v114 forKey:v115];

      v116 = v114;
      v117 = Logger.logObject.getter();
      v118 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v117, v118))
      {
        v119 = OUTLINED_FUNCTION_24();
        v120 = swift_slowAlloc();
        *v119 = 138412290;
        *(v119 + 4) = v116;
        *v120 = v110;
        v121 = v116;
        _os_log_impl(&dword_26686A000, v117, v118, "#ContactAttributeDisambiguationStrategy Returning user-selected contact attribute: %@.", v119, 0xCu);
        outlined destroy of ResponseMode?(v120, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_17_6();
      }

      v123 = v0[25];
      v122 = v0[26];
      v124 = v0[24];
      v125 = v0[16];

      *(&v138 + 1) = type metadata accessor for ContactAttribute();
      *&v137 = v116;
      v126 = v116;
      ParameterResolutionRecord.intent.getter();
      IntentPromptAnswer.init(answeredValue:updatedIntent:)();
      static DisambiguationResult.chosenItem(_:)();

      (*(v123 + 8))(v122, v124);
      goto LABEL_49;
    }

LABEL_46:
    v127 = Logger.logObject.getter();
    v128 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = OUTLINED_FUNCTION_30();
      *v129 = 0;
      _os_log_impl(&dword_26686A000, v127, v128, "#ContactAttributeDisambiguationStrategy No matching contact attribute found, returning nil.", v129, 2u);
      OUTLINED_FUNCTION_17_6();
    }

    v125 = v0[16];

    type metadata accessor for ParameterResolutionRecord();
    v137 = 0u;
    v138 = 0u;
    ParameterResolutionRecord.intent.getter();
    IntentPromptAnswer.init(answeredValue:updatedIntent:)();
    OUTLINED_FUNCTION_22_0();
    static DisambiguationResult.chosenItem(_:)();
    v130 = OUTLINED_FUNCTION_22_0();
    v131(v130);
LABEL_49:
    static os_signpost_type_t.end.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    OUTLINED_FUNCTION_27_4();
    OUTLINED_FUNCTION_0_24();
    _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_1(v125, v132);

    OUTLINED_FUNCTION_3();

    return v133();
  }

  v47 = v0[32];
  v48 = v0[31];
  if (v22 != *MEMORY[0x277D5C160])
  {
    (*(v47 + 8))(v0[33], v48);
    goto LABEL_46;
  }

  v49 = v0[17];
  (*(v47 + 96))(v0[33], v48);
  v50 = OUTLINED_FUNCTION_26_3();
  v51(v50);
  v52 = v49[27];
  __swift_project_boxed_opaque_existential_1(v49 + 23, v49[26]);
  v53 = OUTLINED_FUNCTION_26_3();
  if (RRReferenceResolverProtocol.resolveAttributeDisambiguationReference(from:)(v53, v54, v52))
  {
    v55 = dispatch thunk of UsoEntity_common_ContactAddress.label.getter();
    v37 = v56;
    swift_bridgeObjectRetain_n();
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.debug.getter();

    v59 = os_log_type_enabled(v57, v58);
    v61 = v0[29];
    v60 = v0[30];
    v62 = v0[28];
    v135 = v55;
    if (v59)
    {
      OUTLINED_FUNCTION_24();
      *&v137 = OUTLINED_FUNCTION_32_4();
      *v62 = 136315138;
      v0[8] = v55;
      v0[9] = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v63 = String.init<A>(describing:)();
      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, &v137);

      *(v62 + 4) = v65;
      _os_log_impl(&dword_26686A000, v57, v58, "#ContactAttributeDisambiguationStrategy User selected attribute with label: %s", v62, 0xCu);
      OUTLINED_FUNCTION_12_9();
      OUTLINED_FUNCTION_11_1();

      (*(v61 + 8))(v60, v62);
    }

    else
    {

      v91 = OUTLINED_FUNCTION_22_0();
      v93(v91, v92);
    }

    if (!v37)
    {
      goto LABEL_46;
    }

    goto LABEL_42;
  }

  v78 = type metadata accessor for ParameterResolutionRecord();
  v0[42] = v78;
  v79 = ParameterResolutionRecord.intent.getter();
  v80 = [v79 contactAttributeToGet];

  v135 = ContactAttributeDisambiguationStrategy.extractContactAttribute(_:fromParse:)(v80);
  v37 = v81;

  if (v37)
  {
    swift_bridgeObjectRetain_n();
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.debug.getter();

    v84 = os_log_type_enabled(v82, v83);
    v86 = v0[29];
    v85 = v0[30];
    v87 = v0[28];
    if (v84)
    {
      OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_32_4();
      OUTLINED_FUNCTION_41_3();
      *v78 = 136315138;
      v0[6] = v135;
      v0[7] = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v88 = String.init<A>(describing:)();
      v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v89, &v137);

      *(v78 + 4) = v90;
      _os_log_impl(&dword_26686A000, v82, v83, "#ContactAttributeDisambiguationStrategy User selected attribute with label: %s", v78, 0xCu);
      OUTLINED_FUNCTION_12_9();
      OUTLINED_FUNCTION_11_1();

      v77 = *(v86 + 8);
      v75 = v134;
    }

    else
    {

      v77 = *(v86 + 8);
      v75 = v85;
    }

    v76 = v87;
    goto LABEL_41;
  }

  v0[43] = ParameterResolutionRecord.intent.getter();
  v107 = swift_task_alloc();
  v0[44] = v107;
  *v107 = v0;
  v107[1] = ContactAttributeDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:);

  return USOParse.toSiriKitIntent(previousIntent:referenceResolver:)();
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v2 = *(v1 + 344);
  v3 = *v0;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  *(v6 + 360) = v5;

  v7 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t ContactAttributeDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_24_0(v4);
    OUTLINED_FUNCTION_23_1(&dword_26686A000, v5, v6, "#ContactAttributeDisambiguationStrategy User either did not select an option or we could not resolve their selection, returning nil");
    OUTLINED_FUNCTION_11_1();
  }

  v7 = v1[45];

  if (v7 && (v8 = v1[23], OUTLINED_FUNCTION_26_3(), swift_dynamicCastClass()))
  {
    v9 = v7;
  }

  else
  {
    ParameterResolutionRecord.intent.getter();
    v8 = v1[23];
  }

  v10 = v1[29];
  v17 = v1[30];
  v11 = v1[28];
  IntentPromptAnswer.init(answeredValue:updatedIntent:)();
  OUTLINED_FUNCTION_26_7();
  static DisambiguationResult.chosenItem(_:)();

  v12 = OUTLINED_FUNCTION_26_7();
  v13(v12);
  (*(v10 + 8))(v17, v11);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_27_4();
  OUTLINED_FUNCTION_0_24();
  _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_1(v8, v14);

  OUTLINED_FUNCTION_3();

  return v15();
}

uint64_t closure #1 in ContactAttributeDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)(void **a1, uint64_t a2)
{
  v2 = outlined bridged method (pb) of @objc ContactAttribute.handleLabel.getter(*a1);
  if (v3)
  {
    v2 = String.sanitizeCNLabel.getter();
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = String.sanitizeCNLabel.getter();
  v8 = String.convertToContactAttributeLabel.getter(v6, v7);
  v10 = v9;

  if (v5)
  {
    if (v2 == v8 && v5 == v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t ContactAttributeDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v1[25] = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_18_0(v4);
  v1[26] = OUTLINED_FUNCTION_10_0();
  v5 = type metadata accessor for TemplatingResult();
  v1[27] = v5;
  OUTLINED_FUNCTION_1_1(v5);
  v1[28] = v6;
  v1[29] = OUTLINED_FUNCTION_10_0();
  v7 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_18_0(v7);
  v1[30] = OUTLINED_FUNCTION_10_0();
  v8 = type metadata accessor for OutputGenerationManifest();
  v1[31] = v8;
  OUTLINED_FUNCTION_1_1(v8);
  v1[32] = v9;
  v1[33] = OUTLINED_FUNCTION_10_0();
  v10 = type metadata accessor for Locale();
  v1[34] = v10;
  OUTLINED_FUNCTION_1_1(v10);
  v1[35] = v11;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v12 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_18_0(v12);
  v1[38] = OUTLINED_FUNCTION_10_0();
  v13 = type metadata accessor for ContactsSnippetPluginModel();
  v1[39] = v13;
  OUTLINED_FUNCTION_1_1(v13);
  v1[40] = v14;
  v1[41] = OUTLINED_FUNCTION_10_0();
  ContactAttributeSnippetModel = type metadata accessor for GetContactAttributeSnippetModel();
  v1[42] = ContactAttributeSnippetModel;
  OUTLINED_FUNCTION_1_1(ContactAttributeSnippetModel);
  v1[43] = v16;
  v1[44] = OUTLINED_FUNCTION_10_0();
  v17 = type metadata accessor for NLContextUpdate();
  v1[45] = v17;
  OUTLINED_FUNCTION_1_1(v17);
  v1[46] = v18;
  v1[47] = OUTLINED_FUNCTION_10_0();
  v19 = type metadata accessor for Signpost.OpenSignpost(0);
  v1[48] = v19;
  OUTLINED_FUNCTION_18_0(v19);
  v1[49] = OUTLINED_FUNCTION_10_0();
  v20 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

{
  v116 = v0;
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  v1 = *(v0 + 384);
  v2 = static Signpost.contactsLog;
  *(v0 + 400) = static Signpost.contactsLog;
  v3 = v2;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_49_1();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_42_2(*(v1 + 20));
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.siriContacts);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_30();
    *v7 = 0;
    _os_log_impl(&dword_26686A000, v5, v6, "#ContactAttributeDisambiguationStrategy Running makePromptForDisambiguation()", v7, 2u);
    OUTLINED_FUNCTION_6();
  }

  type metadata accessor for ParameterResolutionRecord();
  v8 = ParameterResolutionRecord.intent.getter();
  v9 = [v8 siriMatches];

  if (!v9 || ((type metadata accessor for SiriMatch(), v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v9, specialized Array._checkSubscript(_:wasNativeTypeChecked:)(), (v10 & 0xC000000000000001) != 0) ? (v11 = MEMORY[0x26D5E29D0](0, v10)) : (v11 = *(v10 + 32)), v12 = v11, , v13 = [v12 identifier], v12, !v13))
  {
    type metadata accessor for ContactsError(0);
    OUTLINED_FUNCTION_4_15();
    v25 = lazy protocol witness table accessor for type ContactsError and conformance ContactsError(v23, v24);
    OUTLINED_FUNCTION_7_1(v25);
LABEL_23:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_24:
    static os_signpost_type_t.end.getter();
    OUTLINED_FUNCTION_49_1();
    os_signpost(_:dso:log:name:signpostID:)();
    v50 = *(v0 + 392);
    OUTLINED_FUNCTION_55_1();
    OUTLINED_FUNCTION_0_24();
    _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_1(v50, v51);

    OUTLINED_FUNCTION_3();
    goto LABEL_25;
  }

  v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = ParameterResolutionRecord.intent.getter();
  v17 = [v16 isMe];

  if (v17 && (LOBYTE(v115[0]) = 2, MEMORY[0x26D5E2680](v17, v115), v17, (v115[0] & 1) != 0))
  {
    v18 = *(v0 + 192);
    v19 = v18[10];
    v20 = v18[11];
    __swift_project_boxed_opaque_existential_1(v18 + 7, v19);
    v21 = (*(v20 + 24))(v19, v20);
    v22 = 1;
  }

  else
  {
    v26 = *(v0 + 192);
    v27 = v26[10];
    v28 = v26[11];
    __swift_project_boxed_opaque_existential_1(v26 + 7, v27);
    v21 = (*(v28 + 8))(v112, v15, v27, v28);
    v22 = 0;
  }

  *(v0 + 408) = v21;
  *(v0 + 520) = v22;
  if (!v21)
  {
    type metadata accessor for ContactsError(0);
    OUTLINED_FUNCTION_4_15();
    v48 = lazy protocol witness table accessor for type ContactsError and conformance ContactsError(v46, v47);
    OUTLINED_FUNCTION_7_1(v48);
    *v49 = v112;
    v49[1] = v15;
    goto LABEL_23;
  }

  v29 = ParameterResolutionRecord.intent.getter();
  v30 = [v29 contactAttributeToGet];
  *(v0 + 416) = v30;

  if (!v30)
  {
    type metadata accessor for ContactsError(0);
    OUTLINED_FUNCTION_4_15();
    v56 = lazy protocol witness table accessor for type ContactsError and conformance ContactsError(v54, v55);
    OUTLINED_FUNCTION_7_1(v56);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_24;
  }

  v31 = v30;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();

  v113 = v33;
  v110 = v22;
  if (os_log_type_enabled(v32, v33))
  {
    v108 = v0;
    v105 = v21;
    v34 = OUTLINED_FUNCTION_24();
    v35 = OUTLINED_FUNCTION_23();
    v115[0] = v35;
    *v34 = 136315138;
    v36 = v31;
    v37 = v31;
    v38 = [v37 description];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v31 = v36;
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v115);

    *(v34 + 4) = v42;
    _os_log_impl(&dword_26686A000, v32, v113, "#ContactAttributeDisambiguationStrategy Attempting to create views for %s disambiguation.", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    OUTLINED_FUNCTION_6();
    v21 = v105;
    v0 = v108;
    OUTLINED_FUNCTION_6();
  }

  v43 = ParameterResolutionRecord.intent.getter();
  v44 = [v43 contactHandleMatches];

  if (v44)
  {
    type metadata accessor for ContactAttribute();
    OUTLINED_FUNCTION_73();
    v45 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v45 = 0;
  }

  *(v0 + 424) = v45;
  v57 = ParameterResolutionRecord.intent.getter();
  v58 = [v57 contactHandleAlternatives];

  if (v58)
  {
    type metadata accessor for ContactAttribute();
    OUTLINED_FUNCTION_73();
    v59 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v59 = 0;
  }

  *(v0 + 432) = v59;
  v60 = *(v0 + 376);
  v109 = v59;
  v61 = specialized ContactsStrategy.handles(matches:alternatives:)(v45, v59);
  *(v0 + 440) = v61;
  static ContactsContextProvider.getContactAttribute(contact:handles:contactAttributeType:needsSDA:)(v21, v61, [v31 contactAttributeType], 1, v60);
  if (ContactsStrategy.isSmartEnabled.getter())
  {
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v64);
      OUTLINED_FUNCTION_23_1(&dword_26686A000, v65, v66, "#ContactAttributeDisambiguationStrategy makeIntentHandledResponse constructing SMART snippet");
      OUTLINED_FUNCTION_11_1();
    }

    v67 = *(v0 + 192);

    v68 = *(v67 + 120);
    v69 = swift_task_alloc();
    *(v0 + 448) = v69;
    *v69 = v0;
    v69[1] = ContactAttributeDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
    v70 = *(v0 + 352);

    return static GetContactAttributeSnippetModel.from(_:requestedAttribute:handlesToReturn:deviceState:mockGlobals:)(v70, v21, v31, v61, v67 + 16, v68);
  }

  v104 = v45;
  v71 = ParameterResolutionRecord.intent.getter();
  isa = [v71 isMe];

  if (!isa)
  {
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
  }

  v73 = v31;
  static Device.current.getter();
  type metadata accessor for ContactsLabelCATs(0);
  static CATOption.defaultMode.getter();
  v74 = CATWrapper.__allocating_init(options:globals:)();
  *(v0 + 16) = v61;
  *(v0 + 24) = v21;
  *(v0 + 32) = isa;
  *(v0 + 40) = v73;
  *(v0 + 88) = v74;
  v107 = v21;
  specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:)();
  outlined destroy of GetContactAttributeViewBuilder(v0 + 16);
  v75 = v73;
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.debug.getter();

  v106 = v75;
  if (os_log_type_enabled(v76, v77))
  {
    v78 = OUTLINED_FUNCTION_24();
    v79 = OUTLINED_FUNCTION_23();
    v115[0] = v79;
    *v78 = 136315138;
    v80 = v75;
    v81 = [v80 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_10_8();

    v82 = OUTLINED_FUNCTION_26_7();
    v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v83, v84);

    *(v78 + 4) = v85;
    _os_log_impl(&dword_26686A000, v76, v77, "#ContactAttributeDisambiguationStrategy Attempting to create dialog for %s disambiguation.", v78, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v79);
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_6();
  }

  v87 = *(v0 + 280);
  v86 = *(v0 + 288);
  v88 = *(v0 + 272);
  v89 = *(v0 + 232);
  __swift_project_boxed_opaque_existential_1((*(v0 + 192) + 16), *(*(v0 + 192) + 40));
  dispatch thunk of DeviceState.siriLocale.getter();
  v90 = Locale.identifier.getter();
  v92 = v91;
  (*(v87 + 8))(v86, v88);
  v93 = OUTLINED_FUNCTION_50_2();
  GetContactAttributeCATs.disambiguateLabeledAttribute(matches:alternatives:attribute:contact:isMe:localeString:isVoiceMode:)(v104, v109, v106, v107, v110, v90, v92, v93 & 1, v89);
  v94 = *(v0 + 368);
  v111 = *(v0 + 376);
  v95 = *(v0 + 360);
  v102 = *(v0 + 232);
  v103 = *(v0 + 224);
  v96 = *(v0 + 208);
  v114 = *(v0 + 216);
  v97 = *(v0 + 176);

  OUTLINED_FUNCTION_50_2();
  (*(v94 + 16))(v96, v111, v95);
  __swift_storeEnumTagSinglePayload(v96, 0, 1, v95);
  v98 = type metadata accessor for AceOutput();
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  v99 = MEMORY[0x277D5C1D8];
  v97[3] = v98;
  v97[4] = v99;
  __swift_allocate_boxed_opaque_existential_1(v97);
  static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of ResponseMode?(v0 + 96, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of ResponseMode?(v96, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v103 + 8))(v102, v114);
  v100 = *(v0 + 392);
  (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 360));
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_49_1();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_0_24();
  _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_1(v100, v101);

  v52 = *(v0 + 8);
LABEL_25:

  return v52();
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  v1 = *(v0 + 408);
  v2 = *(v0 + 328);
  v3 = *(v0 + 312);
  v4 = *(v0 + 320);
  v5 = *(v0 + 296);
  v6 = *(v0 + 272);
  v7 = *(v0 + 280);
  v8 = *(v0 + 192);
  (*(*(v0 + 344) + 16))(v2, *(v0 + 352), *(v0 + 336));
  (*(v4 + 104))(v2, *MEMORY[0x277D559F0], v3);
  type metadata accessor for GetContactAttributeCATsModern(0);
  static CATOption.defaultMode.getter();
  *(v0 + 456) = CATWrapperSimple.__allocating_init(options:globals:)();
  __swift_project_boxed_opaque_existential_1((v8 + 16), *(v8 + 40));
  dispatch thunk of DeviceState.siriLocale.getter();
  v9 = Locale.identifier.getter();
  v11 = v10;
  *(v0 + 464) = v10;
  (*(v7 + 8))(v5, v6);
  __swift_project_boxed_opaque_existential_1((v8 + 16), *(v8 + 40));
  OUTLINED_FUNCTION_60_0();
  v12 = DeviceState.isVox.getter();
  v13 = swift_task_alloc();
  *(v0 + 472) = v13;
  *v13 = v0;
  v13[1] = ContactAttributeDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
  v15 = *(v0 + 424);
  v14 = *(v0 + 432);
  v16 = *(v0 + 416);
  v17 = *(v0 + 520);

  return GetContactAttributeCATsModern.disambiguateLabeledAttribute(matches:alternatives:attribute:contact:isMe:localeString:isVoiceMode:)(v15, v14, v16, v1, v17, v9, v11, v12 & 1);
}

{
  v1 = v0[61];
  v2 = v0[47];
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[39];
  v6 = v0[24];
  static DialogPhase.clarification.getter();
  v7 = swift_task_alloc();
  v7[2] = v6;
  v7[3] = v2;
  v7[4] = v3;
  OutputGenerationManifest.init(dialogPhase:_:)();

  type metadata accessor for ResponseFactory();
  swift_allocObject();
  v0[62] = ResponseFactory.init()();
  v0[20] = v5;
  v0[21] = lazy protocol witness table accessor for type ContactsError and conformance ContactsError(&lazy protocol witness table cache variable for type ContactsSnippetPluginModel and conformance ContactsSnippetPluginModel, MEMORY[0x277D55A00]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 17);
  (*(v4 + 16))(boxed_opaque_existential_1, v3, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v9 = swift_allocObject();
  v0[63] = v9;
  *(v9 + 16) = xmmword_266966A40;
  *(v9 + 32) = v1;
  v15 = (*MEMORY[0x277D5BD38] + MEMORY[0x277D5BD38]);
  v10 = v1;
  v11 = swift_task_alloc();
  v0[64] = v11;
  *v11 = v0;
  v11[1] = ContactAttributeDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
  v12 = v0[33];
  v13 = v0[22];

  return v15(v13, v0 + 17, v9, v12);
}

{
  OUTLINED_FUNCTION_5();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_0();
  *v4 = v3;

  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 136));
  v5 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t ContactAttributeDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  *v5 = *v2;
  *(v4 + 480) = v1;

  if (v1)
  {

    v6 = ContactAttributeDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
  }

  else
  {

    *(v4 + 488) = a1;

    v6 = ContactAttributeDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t ContactAttributeDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_0();
  v16 = *(v14 + 408);
  v15 = *(v14 + 416);
  v17 = *(v14 + 320);
  v35 = *(v14 + 312);
  v37 = *(v14 + 328);
  v18 = *(v14 + 256);
  v19 = *(v14 + 264);
  v20 = *(v14 + 248);

  (*(v18 + 8))(v19, v20);
  v21 = OUTLINED_FUNCTION_60();
  v22(v21);
  (*(v17 + 8))(v37, v35);
  v23 = *(v14 + 392);
  v34 = *(v14 + 240);
  v36 = *(v14 + 232);
  v38 = *(v14 + 208);
  (*(*(v14 + 368) + 8))(*(v14 + 376), *(v14 + 360));
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_49_1();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_0_24();
  _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_1(v23, v24);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_0();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, v34, v36, v38, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_19_0();
  v15 = *(v14 + 408);
  v16 = *(v14 + 368);
  v36 = *(v14 + 376);
  v18 = *(v14 + 352);
  v17 = *(v14 + 360);
  v20 = *(v14 + 336);
  v19 = *(v14 + 344);
  v21 = *(v14 + 320);
  v22 = *(v14 + 328);
  v23 = *(v14 + 312);

  (*(v19 + 8))(v18, v20);
  (*(v21 + 8))(v22, v23);
  (*(v16 + 8))(v36, v17);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_49_1();
  os_signpost(_:dso:log:name:signpostID:)();
  v24 = *(v14 + 392);
  OUTLINED_FUNCTION_55_1();
  v37 = *(v14 + 232);
  v38 = *(v14 + 208);
  v39 = v25;
  OUTLINED_FUNCTION_0_24();
  _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_1(v24, v26);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_0();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, v37, v38, v39, a12, a13, a14);
}

uint64_t closure #1 in ContactAttributeDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  OutputGenerationManifest.canUseServerTTS.setter();
  __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
  DeviceState.isVox.getter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  v8 = type metadata accessor for NLContextUpdate();
  (*(*(v8 - 8) + 16))(v7, a3, v8);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  OutputGenerationManifest.nlContextUpdate.setter();
  ContactsSnippetPluginModel.responseViewID.getter();
  return OutputGenerationManifest.responseViewId.setter();
}

uint64_t ContactAttributeDisambiguationStrategy.extractContactAttribute(_:fromParse:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v3 = OUTLINED_FUNCTION_18_0(v2);
  MEMORY[0x28223BE20](v3);
  v5 = v26 - v4;
  USOParse.preferredUserDialogAct.getter(v26 - v4);
  v6 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_20_5(v5);
  if (v7)
  {
    outlined destroy of ResponseMode?(v5, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  }

  else
  {
    v8 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
    OUTLINED_FUNCTION_9_13();
    (*(v9 + 8))(v5, v6);
    if (v8)
    {
      ContactAttributeDisambiguationStrategy.extractContactAddress(from:intendedAttribute:)(v8, a1);
      if (v10)
      {
        if (one-time initialization token for siriContacts != -1)
        {
          OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
        }

        v11 = type metadata accessor for Logger();
        __swift_project_value_buffer(v11, static Logger.siriContacts);

        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v12, v13))
        {
          v14 = OUTLINED_FUNCTION_24();
          v15 = OUTLINED_FUNCTION_23();
          v26[1] = v15;
          *v14 = 136315138;
          v16 = OUTLINED_FUNCTION_22_0();
          *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v18);
          _os_log_impl(&dword_26686A000, v12, v13, "#GCAContactAttributeDisambiguationStrategy extracted contactAddress from parse as %s", v14, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v15);
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_6();
        }

        return OUTLINED_FUNCTION_22_0();
      }
    }
  }

  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.siriContacts);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_21_2(v21))
  {
    v22 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_24_0(v22);
    OUTLINED_FUNCTION_7_4(&dword_26686A000, v23, v24, "#GCAContactAttributeDisambiguationStrategy Could not obtain contactAddress from UsoParse, returning nil");
    OUTLINED_FUNCTION_11_1();
  }

  return OUTLINED_FUNCTION_22_0();
}

uint64_t ContactAttributeDisambiguationStrategy.extractContactAddress(from:intendedAttribute:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v5 = OUTLINED_FUNCTION_18_0(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_4();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_39_3();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v42 - v12;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_54_0();
  MEMORY[0x28223BE20](v14);
  v16 = v42 - v15;
  static UsoTask_CodegenConverter.convert(task:)();
  if (v44)
  {
    outlined init with copy of Any?(v43, v42);
    type metadata accessor for UsoTask_noVerb_common_Person();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_70_0();
      OUTLINED_FUNCTION_58_0();
      dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();

      if (v41)
      {
        dispatch thunk of UsoEntity_common_Person.specifyingContactAddress.getter();
        OUTLINED_FUNCTION_51_0();
        if (v2)
        {
          ContactAttributeDisambiguationStrategy.extractAddressIdentifiers(from:intendedAttribute:)();
          specialized Collection.first.getter(v17, v16);

          v18 = type metadata accessor for UsoIdentifier();
          if (__swift_getEnumTagSinglePayload(v16, 1, v18) == 1)
          {
            v19 = v16;
LABEL_18:
            outlined destroy of ResponseMode?(v19, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
            dispatch thunk of UsoEntity_common_ContactAddress.label.getter();
            OUTLINED_FUNCTION_10_16();

LABEL_19:

LABEL_42:
            __swift_destroy_boxed_opaque_existential_0Tm(v42);
            goto LABEL_43;
          }

          UsoIdentifier.value.getter();
          OUTLINED_FUNCTION_10_16();

          OUTLINED_FUNCTION_52();
          v36 = *(v29 + 8);
          v37 = v16;
LABEL_38:
          v34 = v18;
LABEL_41:
          v36(v37, v34);
          goto LABEL_42;
        }
      }

      goto LABEL_26;
    }

    v20 = type metadata accessor for UsoTask_request_common_Person();
    if (OUTLINED_FUNCTION_11_13(v20))
    {
      OUTLINED_FUNCTION_70_0();
      OUTLINED_FUNCTION_58_0();
      dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();

      if (v41)
      {
        dispatch thunk of UsoEntity_common_Person.specifyingContactAddress.getter();
        OUTLINED_FUNCTION_51_0();
        if (v2)
        {
          ContactAttributeDisambiguationStrategy.extractAddressIdentifiers(from:intendedAttribute:)();
          specialized Collection.first.getter(v21, v3);

          v18 = type metadata accessor for UsoIdentifier();
          if (__swift_getEnumTagSinglePayload(v3, 1, v18) == 1)
          {
            v19 = v3;
            goto LABEL_18;
          }

          UsoIdentifier.value.getter();
          OUTLINED_FUNCTION_10_16();

          OUTLINED_FUNCTION_52();
          v36 = *(v33 + 8);
          v37 = v3;
          goto LABEL_38;
        }
      }

      goto LABEL_26;
    }

    v22 = type metadata accessor for UsoTask_summarise_common_Person();
    if (OUTLINED_FUNCTION_11_13(v22))
    {
      OUTLINED_FUNCTION_70_0();
      OUTLINED_FUNCTION_58_0();
      dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();

      if (v41)
      {
        dispatch thunk of UsoEntity_common_Person.specifyingContactAddress.getter();
        OUTLINED_FUNCTION_51_0();
        if (v2)
        {
          ContactAttributeDisambiguationStrategy.extractAddressIdentifiers(from:intendedAttribute:)();
          specialized Collection.first.getter(v23, v13);

          v24 = type metadata accessor for UsoIdentifier();
          OUTLINED_FUNCTION_20_5(v13);
          if (v25)
          {
            v19 = v13;
            goto LABEL_18;
          }

          UsoIdentifier.value.getter();
          OUTLINED_FUNCTION_10_16();

          OUTLINED_FUNCTION_9_13();
          v36 = *(v35 + 8);
          v37 = v13;
          goto LABEL_40;
        }
      }

LABEL_26:

LABEL_27:
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      goto LABEL_43;
    }

    common_Person = type metadata accessor for UsoTask_read_common_Person();
    if (OUTLINED_FUNCTION_11_13(common_Person))
    {
      OUTLINED_FUNCTION_70_0();
      OUTLINED_FUNCTION_58_0();
      dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();

      if (!v41)
      {
        goto LABEL_26;
      }

      v27 = dispatch thunk of UsoEntity_common_Person.specifyingContactAddress.getter();

      if (!v27)
      {
        goto LABEL_26;
      }

      ContactAttributeDisambiguationStrategy.extractAddressIdentifiers(from:intendedAttribute:)();
      specialized Collection.first.getter(v28, v2);

      v24 = type metadata accessor for UsoIdentifier();
      OUTLINED_FUNCTION_20_5(v2);
      if (!v25)
      {
        UsoIdentifier.value.getter();
        OUTLINED_FUNCTION_10_16();

        OUTLINED_FUNCTION_9_13();
        v36 = *(v38 + 8);
        v37 = v2;
LABEL_40:
        v34 = v24;
        goto LABEL_41;
      }

      outlined destroy of ResponseMode?(v2, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      dispatch thunk of UsoEntity_common_ContactAddress.label.getter();
      OUTLINED_FUNCTION_10_16();
    }

    else
    {
      v30 = type metadata accessor for UsoTask_checkExistence_common_Person();
      if (!OUTLINED_FUNCTION_11_13(v30))
      {
        goto LABEL_27;
      }

      dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();

      if (!v41)
      {
        goto LABEL_26;
      }

      v31 = dispatch thunk of UsoEntity_common_Person.specifyingContactAddress.getter();

      if (!v31)
      {
        goto LABEL_26;
      }

      ContactAttributeDisambiguationStrategy.extractAddressIdentifiers(from:intendedAttribute:)();
      specialized Collection.first.getter(v32, v8);

      v24 = type metadata accessor for UsoIdentifier();
      OUTLINED_FUNCTION_20_5(v8);
      if (!v25)
      {
        UsoIdentifier.value.getter();

        OUTLINED_FUNCTION_9_13();
        v36 = *(v39 + 8);
        v37 = v8;
        goto LABEL_40;
      }

      outlined destroy of ResponseMode?(v8, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      dispatch thunk of UsoEntity_common_ContactAddress.label.getter();
    }

    goto LABEL_19;
  }

LABEL_43:
  outlined destroy of ResponseMode?(v43, &_sypSgMd, &_sypSgMR);
  return OUTLINED_FUNCTION_26_3();
}

void ContactAttributeDisambiguationStrategy.extractAddressIdentifiers(from:intendedAttribute:)()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v3 = type metadata accessor for UsoIdentifier();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_39_3();
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  v10 = OUTLINED_FUNCTION_19_7();
  if (v10)
  {
    v11 = v10;
    v47 = *(v10 + 16);
    if (!v47)
    {

      goto LABEL_49;
    }

    if (v2)
    {
      v12 = [v2 contactAttributeType];
      LODWORD(v2) = 1;
      if (v12 > 3)
      {
        v13 = 9;
      }

      else
      {
        LODWORD(v2) = 1u >> (v12 & 0xF);
        v13 = 0x5030409u >> (8 * v12);
      }

      v43 = v13;
    }

    else
    {
      v43 = 9;
      LODWORD(v2) = 1;
    }

    v44 = v3;
    if (one-time initialization token for siriContacts != -1)
    {
LABEL_51:
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.siriContacts);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    v17 = os_log_type_enabled(v15, v16);
    v40 = v0;
    v45 = v2;
    if (v17)
    {
      v18 = OUTLINED_FUNCTION_24();
      v19 = OUTLINED_FUNCTION_23();
      v50 = v19;
      *v18 = 136315138;
      if (v2)
      {
        v20 = 0;
        v21 = 0;
      }

      else
      {
        v20 = UsoIdentifierNamespace.rawValue.getter(v43);
      }

      v48 = v20;
      v49 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v22 = String.init<A>(describing:)();
      v0 = v23;
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v50);

      *(v18 + 4) = v24;
      _os_log_impl(&dword_26686A000, v15, v16, "#GCADisambiguationStrategy extractAddressIdentifiers targetNamespace %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_17_6();
    }

    v25 = 0;
    v46 = v5 + 16;
    v41 = 0x800000026696E1A0;
    v39 = (v5 + 32);
    v42 = MEMORY[0x277D84F90];
    v26 = v44;
    while (1)
    {
      while (1)
      {
        if (v47 == v25)
        {

          goto LABEL_49;
        }

        if (v25 >= *(v11 + 16))
        {
          __break(1u);
          goto LABEL_51;
        }

        v2 = (*(v5 + 80) + 32) & ~*(v5 + 80);
        v27 = *(v5 + 72);
        (*(v5 + 16))(v9, v11 + v2 + v27 * v25, v26);
        UsoIdentifier.namespace.getter();
        if (v28)
        {
          break;
        }

LABEL_39:
        (*(v5 + 8))(v9, v26);
        ++v25;
      }

      v29 = UsoIdentifier.namespace.getter();
      if ((v45 & 1) == 0)
      {
        v31 = 0x707954656E6F6870;
        v32 = 0xE900000000000065;
        switch(v43)
        {
          case 4:
            v31 = 0x7079546C69616D65;
            if (v30)
            {
              goto LABEL_34;
            }

            goto LABEL_30;
          case 5:
            v31 = 0x5473736572646461;
            goto LABEL_29;
          case 6:
            v31 = 0xD000000000000011;
            v32 = v41;
            goto LABEL_33;
          case 7:
            v31 = 0x54746361746E6F63;
LABEL_29:
            v32 = 0xEB00000000657079;
            if (!v30)
            {
              goto LABEL_30;
            }

            goto LABEL_34;
          case 8:
            v31 = 0x6369746E616D6573;
            v32 = 0xEE0065756C61765FLL;
            if (!v30)
            {
              goto LABEL_30;
            }

            goto LABEL_34;
          default:
LABEL_33:
            if (!v30)
            {
LABEL_30:
              v26 = v44;
              goto LABEL_31;
            }

LABEL_34:
            if (v29 == v31 && v30 == v32)
            {

              v26 = v44;
              goto LABEL_43;
            }

            v0 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v26 = v44;
            if (v0)
            {
              goto LABEL_43;
            }

            break;
        }

        goto LABEL_39;
      }

      if (v30)
      {
LABEL_31:

        goto LABEL_39;
      }

LABEL_43:
      v38 = *v39;
      v38(v40, v9, v26);
      v34 = v42;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 16) + 1, 1);
        v34 = v48;
      }

      v0 = *(v34 + 16);
      v36 = *(v34 + 24);
      if (v0 >= v36 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v36 > 1, v0 + 1, 1);
        v34 = v48;
      }

      ++v25;
      *(v34 + 16) = v0 + 1;
      v42 = v34;
      v26 = v44;
      v38(v34 + v2 + v0 * v27, v40, v44);
    }
  }

LABEL_49:
  OUTLINED_FUNCTION_14();
}

uint64_t ContactAttributeDisambiguationStrategy.deinit()
{
  v0 = ContactsStrategy.deinit();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 184));
  return v0;
}

uint64_t ContactAttributeDisambiguationStrategy.__deallocating_deinit()
{
  v0 = ContactAttributeDisambiguationStrategy.deinit();

  return MEMORY[0x2821FE8D8](v0, 224, 7);
}

void protocol witness for NeedsDisambiguationFlowStrategyAsync.paginationStyle(resolveRecord:) in conformance ContactAttributeDisambiguationStrategy<A, B, C>(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for ContactAttributeDisambiguationStrategy(0, a2[30], a2[31], a2[32]);

  JUMPOUT(0x26D5DF6B0);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeDisambiguationItemContainer(resolveRecord:) in conformance ContactAttributeDisambiguationStrategy<A, B, C>(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = protocol witness for NeedsDisambiguationFlowStrategyAsync.makeDisambiguationItemContainer(resolveRecord:) in conformance ContactAttributeDisambiguationStrategy<A, B, C>;

  return ContactAttributeDisambiguationStrategy.makeDisambiguationItemContainer(resolveRecord:)();
}

{
  OUTLINED_FUNCTION_5();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_0();
  *v7 = v6;

  if (!v1)
  {
    **(v5 + 16) = a1;
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.parseDisambiguationResult(input:paginatedItems:resolveRecord:) in conformance ContactAttributeDisambiguationStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return ContactAttributeDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)(a1, a2, a3, a4);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makePromptForDisambiguation(paginatedItems:resolveRecord:) in conformance ContactAttributeDisambiguationStrategy<A, B, C>()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for Flow.execute() in conformance ContactsUnsupportedFlow;

  return ContactAttributeDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)();
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:) in conformance ContactAttributeDisambiguationStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for ContactAttributeDisambiguationStrategy(0, a4[30], a4[31], a4[32]);
  *v11 = v5;
  v11[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821B9F38](a1, a2, a3, v12, a5);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:resolveRecord:) in conformance ContactAttributeDisambiguationStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for ContactAttributeDisambiguationStrategy(0, a4[30], a4[31], a4[32]);
  *v11 = v5;
  v11[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821B9F48](a1, a2, a3, v12, a5);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:) in conformance ContactAttributeDisambiguationStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ContactAttributeDisambiguationStrategy(0, a3[30], a3[31], a3[32]);
  *v9 = v4;
  v9[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821B9F40](a1, a2, v10, a4);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:) in conformance ContactAttributeDisambiguationStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ContactAttributeDisambiguationStrategy(0, a3[30], a3[31], a3[32]);
  *v9 = v4;
  v9[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821B9F58](a1, a2, v10, a4);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.pervasiveUseCaseDescription(resolveRecord:) in conformance ContactAttributeDisambiguationStrategy<A, B, C>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  type metadata accessor for ContactAttributeDisambiguationStrategy(0, a2[30], a2[31], a2[32]);

  return NeedsDisambiguationFlowStrategyAsync.pervasiveUseCaseDescription(resolveRecord:)();
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:) in conformance ContactAttributeDisambiguationStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for ContactAttributeDisambiguationStrategy(0, a5[30], a5[31], a5[32]);
  *v13 = v6;
  v13[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v14, a6);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:) in conformance ContactAttributeDisambiguationStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = type metadata accessor for ContactAttributeDisambiguationStrategy(0, a6[30], a6[31], a6[32]);
  *v15 = v7;
  v15[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v16, a7);
}

id specialized closure #1 in INIntentResolutionResult.typedDisambiguationItems<A>()(uint64_t a1)
{
  v2 = type metadata accessor for ContactsError(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any(a1, v37);
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for INObject, 0x277CD3E20);
  if (swift_dynamicCast())
  {
    return v36;
  }

  outlined init with copy of Any(a1, v37);
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for INCustomObject, 0x277CD3B58);
  if ((swift_dynamicCast() & 1) == 0)
  {
    swift_storeEnumTagMultiPayload();
    v9 = ContactsError.errorDescription.getter();
    v11 = v10;
    _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_1(v4, type metadata accessor for ContactsError);
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.siriContacts);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v37[0] = v16;
      *v15 = 136315138;
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, v37);

      *(v15 + 4) = v17;
      _os_log_impl(&dword_26686A000, v13, v14, "%s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x26D5E3300](v16, -1, -1);
      MEMORY[0x26D5E3300](v15, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v27 = static FatalError.fatalErrorClosure;
    swift_storeEnumTagMultiPayload();

    v28 = ContactsError.errorDescription.getter();
    v30 = v29;
    _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_1(v4, type metadata accessor for ContactsError);
    v27(v28, v30, "/Library/Caches/com.apple.xbs/Sources/SiriContacts/SiriContactsIntents/Extension/Intents/ResolutionResult+SiriContacts.swift", 124, 2, 18);
  }

  v6 = v36;
  v7 = INTypedObjectWithCustomObject();
  if (!v7)
  {
    swift_storeEnumTagMultiPayload();
    v18 = ContactsError.errorDescription.getter();
    v20 = v19;
    _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_1(v4, type metadata accessor for ContactsError);
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.siriContacts);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v37[0] = v25;
      *v24 = 136315138;
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v37);

      *(v24 + 4) = v26;
      _os_log_impl(&dword_26686A000, v22, v23, "%s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x26D5E3300](v25, -1, -1);
      MEMORY[0x26D5E3300](v24, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v31 = static FatalError.fatalErrorClosure;
    swift_storeEnumTagMultiPayload();

    v32 = ContactsError.errorDescription.getter();
    v34 = v33;
    _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_1(v4, type metadata accessor for ContactsError);
    v31(v32, v34, "/Library/Caches/com.apple.xbs/Sources/SiriContacts/SiriContactsIntents/Extension/Intents/ResolutionResult+SiriContacts.swift", 124, 2, 21);
  }

  v5 = v7;

  return v5;
}

{
  v2 = type metadata accessor for ContactsError(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any(a1, v37);
  type metadata accessor for ContactAttribute();
  if (swift_dynamicCast())
  {
    return v36;
  }

  outlined init with copy of Any(a1, v37);
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for INCustomObject, 0x277CD3B58);
  if ((swift_dynamicCast() & 1) == 0)
  {
    swift_storeEnumTagMultiPayload();
    v9 = ContactsError.errorDescription.getter();
    v11 = v10;
    _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_1(v4, type metadata accessor for ContactsError);
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.siriContacts);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v37[0] = v16;
      *v15 = 136315138;
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, v37);

      *(v15 + 4) = v17;
      _os_log_impl(&dword_26686A000, v13, v14, "%s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x26D5E3300](v16, -1, -1);
      MEMORY[0x26D5E3300](v15, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v27 = static FatalError.fatalErrorClosure;
    swift_storeEnumTagMultiPayload();

    v28 = ContactsError.errorDescription.getter();
    v30 = v29;
    _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_1(v4, type metadata accessor for ContactsError);
    v27(v28, v30, "/Library/Caches/com.apple.xbs/Sources/SiriContacts/SiriContactsIntents/Extension/Intents/ResolutionResult+SiriContacts.swift", 124, 2, 18);
  }

  v6 = v36;
  v7 = INTypedObjectWithCustomObject();
  if (!v7)
  {
    swift_storeEnumTagMultiPayload();
    v18 = ContactsError.errorDescription.getter();
    v20 = v19;
    _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_1(v4, type metadata accessor for ContactsError);
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.siriContacts);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v37[0] = v25;
      *v24 = 136315138;
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v37);

      *(v24 + 4) = v26;
      _os_log_impl(&dword_26686A000, v22, v23, "%s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x26D5E3300](v25, -1, -1);
      MEMORY[0x26D5E3300](v24, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v31 = static FatalError.fatalErrorClosure;
    swift_storeEnumTagMultiPayload();

    v32 = ContactsError.errorDescription.getter();
    v34 = v33;
    _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_1(v4, type metadata accessor for ContactsError);
    v31(v32, v34, "/Library/Caches/com.apple.xbs/Sources/SiriContacts/SiriContactsIntents/Extension/Intents/ResolutionResult+SiriContacts.swift", 124, 2, 21);
  }

  v5 = v7;

  return v5;
}

uint64_t lazy protocol witness table accessor for type ContactsError and conformance ContactsError(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_73();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_1(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_52();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_11_13(uint64_t a1)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_12_9()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x26D5E3300);
}

void OUTLINED_FUNCTION_17_6()
{

  JUMPOUT(0x26D5E3300);
}

uint64_t OUTLINED_FUNCTION_19_7()
{

  return dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
}

void OUTLINED_FUNCTION_22_8(unint64_t a1@<X8>)
{

  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1 > 1, v2, 1, v1);
}

void OUTLINED_FUNCTION_23_9()
{
  v2 = *(v0 + 16) + 1;

  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 1, v0);
}

BOOL OUTLINED_FUNCTION_25_5(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_42_2(uint64_t a1@<X8>)
{
  v5 = v1 + a1;
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
}

double OUTLINED_FUNCTION_46_1()
{
  result = 0.0;
  *(v0 - 112) = 0u;
  *(v0 - 96) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_50_2()
{
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));

  return DeviceState.isVox.getter();
}

uint64_t OUTLINED_FUNCTION_51_0()
{
}

void *OUTLINED_FUNCTION_52_1()
{

  return static UsoTask_CodegenConverter.convert(task:)();
}

void OUTLINED_FUNCTION_65_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

void OUTLINED_FUNCTION_68_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void OUTLINED_FUNCTION_69_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_70_0()
{
}

_BYTE *storeEnumTagSinglePayload for SiriContactsFeatures(_BYTE *result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type SiriContactsFeatures and conformance SiriContactsFeatures()
{
  result = lazy protocol witness table cache variable for type SiriContactsFeatures and conformance SiriContactsFeatures;
  if (!lazy protocol witness table cache variable for type SiriContactsFeatures and conformance SiriContactsFeatures)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriContactsFeatures and conformance SiriContactsFeatures);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriContactsFeatures and conformance SiriContactsFeatures;
  if (!lazy protocol witness table cache variable for type SiriContactsFeatures and conformance SiriContactsFeatures)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriContactsFeatures and conformance SiriContactsFeatures);
  }

  return result;
}

Swift::Int SiriContactsFeatures.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x26D5E2C00](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SiriContactsFeatures(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x26D5E2C00](0);
  return Hasher._finalize()();
}

uint64_t specialized ContactsStrategy.confirmationOutput(templateResult:views:meCard:listenAfterSpeaking:nlContextUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - v12;
  outlined init with copy of DeviceState(v5 + 16, v18);
  outlined init with copy of NLContextUpdate?(a5, v11);
  v14 = type metadata accessor for NLContextUpdate();
  if (__swift_getEnumTagSinglePayload(v11, 1, v14) == 1)
  {
    static ContactsContextProvider.confirm(person:attribute:)(a3, 0, 1);
    if (__swift_getEnumTagSinglePayload(v11, 1, v14) != 1)
    {
      outlined destroy of UsoEntity_common_Person.DefinedValues?(v11, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    }
  }

  else
  {
    (*(*(v14 - 8) + 32))(v13, v11, v14);
  }

  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  static AceOutputHelper.makeConfirmationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v13, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  return __swift_destroy_boxed_opaque_existential_0Tm(v18);
}