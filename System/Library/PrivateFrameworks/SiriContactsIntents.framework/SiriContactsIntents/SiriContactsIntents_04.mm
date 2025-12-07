uint64_t _s19SiriContactsIntents12StrategyUtilO17getActionForInput5input10intentType0A7KitFlow0ghI0VAG0I0V_xmtAA0aM13ContactIntentRzlFZAA06Modifyo9AttributeP0C_Tt1t2g5@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = type metadata accessor for Parse.DirectInvocation();
  v63 = *(v3 - 8);
  v64 = v3;
  MEMORY[0x28223BE20](v3);
  v62 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Parse();
  v69 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v65 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v66 = &v59 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v59 - v10;
  v12 = type metadata accessor for Input();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for ModifyContactAttributeIntent();
  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = __swift_project_value_buffer(v16, static Logger.siriContacts);
  (*(v13 + 16))(v15, a1, v12);
  v67 = v17;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v70 = v59;
    *v20 = 136315138;
    _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type Input and conformance Input, MEMORY[0x277D5C118], MEMORY[0x277D5C120]);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v60 = v11;
    v22 = a1;
    v23 = v5;
    v25 = v24;
    (*(v13 + 8))(v15, v12);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v25, &v70);
    v5 = v23;
    a1 = v22;
    v11 = v60;

    *(v20 + 4) = v26;
    _os_log_impl(&dword_26686A000, v18, v19, "#getActionForInput received input: %s", v20, 0xCu);
    v27 = v59;
    __swift_destroy_boxed_opaque_existential_0Tm(v59);
    MEMORY[0x26D5E3300](v27, -1, -1);
    MEMORY[0x26D5E3300](v20, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  Input.parse.getter();
  v28 = v69;
  v29 = *(v69 + 88);
  v30 = v29(v11, v5);
  v31 = *MEMORY[0x277D5C150];
  if (v30 != *MEMORY[0x277D5C128] && v30 != v31 && v30 != *MEMORY[0x277D5C160])
  {
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_26686A000, v42, v43, "#getActionForInput: Received unsupported parse type, returning .ignore() actionForInput", v44, 2u);
      MEMORY[0x26D5E3300](v44, -1, -1);
    }

    static ActionForInput.ignore()();
    return (*(v28 + 8))(v11, v5);
  }

  v34 = *(v28 + 8);
  v34(v11, v5);
  v35 = v66;
  v60 = a1;
  Input.parse.getter();
  Parse.cancelOrContactIntent.getter();
  v37 = v36;
  v34(v35, v5);
  if (v37)
  {
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_26686A000, v38, v39, "#getActionForInput: .cancel() actionForInput", v40, 2u);
      MEMORY[0x26D5E3300](v40, -1, -1);
    }

    return static ActionForInput.cancel()();
  }

  if ((v37 & 0x100) == 0)
  {
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v45, v46))
    {
LABEL_25:

      return static ActionForInput.ignore()();
    }

    v47 = swift_slowAlloc();
    *v47 = 0;
    v48 = "#getActionForInput: .ignore() actionForInput";
LABEL_24:
    _os_log_impl(&dword_26686A000, v45, v46, v48, v47, 2u);
    MEMORY[0x26D5E3300](v47, -1, -1);
    goto LABEL_25;
  }

  v49 = v65;
  Input.parse.getter();
  if (v29(v49, v5) == v31)
  {
    (*(v28 + 96))(v49, v5);
    v51 = v62;
    v50 = v63;
    v52 = v49;
    v53 = v64;
    (*(v63 + 32))(v62, v52, v64);
    static StrategyUtil.actionForDirectInvocation(_:)(v51);
    return (*(v50 + 8))(v51, v53);
  }

  v34(v49, v5);
  v54 = v66;
  Input.parse.getter();
  Parse.getSiriKitIntentType()();
  v56 = v55;
  v34(v54, v5);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();
  v57 = os_log_type_enabled(v45, v46);
  if (!v56 || v61 != v56)
  {
    if (!v57)
    {
      goto LABEL_25;
    }

    v47 = swift_slowAlloc();
    *v47 = 0;
    v48 = "#getActionForInput: parse intent type does not match flow's intent type, returning .ignore()";
    goto LABEL_24;
  }

  if (v57)
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_26686A000, v45, v46, "#getActionForInput: .handle() actionForInput", v58, 2u);
    MEMORY[0x26D5E3300](v58, -1, -1);
  }

  return static ActionForInput.handle()();
}

uint64_t ModifyContactAttributeConfirmIntentStrategy.actionForInput(_:confirmParameters:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v5 = OUTLINED_FUNCTION_18_0(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  v8 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_4();
  v14 = (v12 - v13);
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - v16;
  Input.parse.getter();
  Parse.isCancel.getter();
  v19 = v18;
  v20 = *(v10 + 8);
  v20(v17, v8);
  if (v19)
  {
    return static ActionForInput.cancel()();
  }

  Input.parse.getter();
  Parse.confirmationResponse.getter();
  v20(v14, v8);
  v22 = type metadata accessor for ConfirmationResponse();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v22);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v7, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  if (EnumTagSinglePayload != 1)
  {
    return static ActionForInput.handle()();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVy0A15ContactsIntents022ModifyContactAttributeD0CAD0ijkD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVy0A15ContactsIntents022ModifyContactAttributeD0CAD0ijkD8ResponseCGMR);
  v24 = IntentResolutionRecord.intent.getter();
  v25 = OUTLINED_FUNCTION_55_2();
  v27 = ModifyContactAttributeConfirmIntentStrategy.isRequestForDifferentAttribute(_:intent:)(v25, v26);

  if ((v27 & 1) == 0)
  {
    return _s19SiriContactsIntents12StrategyUtilO17getActionForInput5input10intentType0A7KitFlow0ghI0VAG0I0V_xmtAA0aM13ContactIntentRzlFZAA06Modifyo9AttributeP0C_Tt1t2g5(a1, a2);
  }

  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v28 = type metadata accessor for Logger();
  v29 = OUTLINED_FUNCTION_52_0(v28, static Logger.siriContacts);
  v30 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = OUTLINED_FUNCTION_30();
    *v31 = 0;
    _os_log_impl(&dword_26686A000, v29, v30, "[ModifyContactAttributeConfirmIntentStrategy] actionForInput encountered request to modify a different attribute or confirm a different value, ignoring", v31, 2u);
    MEMORY[0x26D5E3300](v31, -1, -1);
  }

  return static ActionForInput.ignore()();
}

uint64_t ModifyContactAttributeConfirmIntentStrategy.parseConfirmationResponse(input:confirmParameters:)()
{
  OUTLINED_FUNCTION_4();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  OUTLINED_FUNCTION_18_0(v4);
  v0[5] = OUTLINED_FUNCTION_10_0();
  v5 = type metadata accessor for Parse();
  v0[6] = v5;
  OUTLINED_FUNCTION_1_1(v5);
  v0[7] = v6;
  v0[8] = OUTLINED_FUNCTION_10_0();
  v7 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v1 = type metadata accessor for Logger();
  v2 = OUTLINED_FUNCTION_52_0(v1, static Logger.siriContacts);
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_24_0(v4);
    _os_log_impl(&dword_26686A000, v2, v3, "[ModifyContactAttributeConfirmIntentStrategy] parseConfirmationResponse", v0, 2u);
    OUTLINED_FUNCTION_11_1();
  }

  Input.parse.getter();
  Parse.confirmationResponse.getter();
  v5 = OUTLINED_FUNCTION_22_0();
  v6(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVy0A15ContactsIntents022ModifyContactAttributeD0CAD0ijkD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVy0A15ContactsIntents022ModifyContactAttributeD0CAD0ijkD8ResponseCGMR);
  IntentResolutionRecord.intent.getter();
  type metadata accessor for ModifyContactAttributeIntent();
  ConfirmIntentAnswer.init(confirmationResponse:intent:)();

  OUTLINED_FUNCTION_6_4();

  return v7();
}

uint64_t ModifyContactAttributeConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:)()
{
  OUTLINED_FUNCTION_4();
  v1[22] = v2;
  v1[23] = v0;
  v1[21] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_18_0(v4);
  v1[24] = OUTLINED_FUNCTION_10_0();
  v5 = type metadata accessor for TemplatingResult();
  v1[25] = v5;
  OUTLINED_FUNCTION_1_1(v5);
  v1[26] = v6;
  v1[27] = OUTLINED_FUNCTION_45();
  v1[28] = swift_task_alloc();
  v7 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_18_0(v7);
  v1[29] = OUTLINED_FUNCTION_10_0();
  v8 = type metadata accessor for OutputGenerationManifest();
  v1[30] = v8;
  OUTLINED_FUNCTION_1_1(v8);
  v1[31] = v9;
  v1[32] = OUTLINED_FUNCTION_10_0();
  v10 = type metadata accessor for ContactsSnippetPluginModel();
  v1[33] = v10;
  OUTLINED_FUNCTION_1_1(v10);
  v1[34] = v11;
  v1[35] = OUTLINED_FUNCTION_10_0();
  v12 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_18_0(v12);
  v1[36] = OUTLINED_FUNCTION_10_0();
  v13 = type metadata accessor for ContactsSnippetFlowState();
  v1[37] = v13;
  OUTLINED_FUNCTION_1_1(v13);
  v1[38] = v14;
  v1[39] = OUTLINED_FUNCTION_10_0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  OUTLINED_FUNCTION_18_0(v15);
  v1[40] = OUTLINED_FUNCTION_10_0();
  v16 = type metadata accessor for ModifyContactAttributeSnippetModel.ContactAttributeToModify();
  v1[41] = v16;
  OUTLINED_FUNCTION_1_1(v16);
  v1[42] = v17;
  v1[43] = OUTLINED_FUNCTION_10_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriContactsCommon34ModifyContactAttributeSnippetModelVSgMd, &_s18SiriContactsCommon34ModifyContactAttributeSnippetModelVSgMR);
  OUTLINED_FUNCTION_18_0(v18);
  v1[44] = OUTLINED_FUNCTION_45();
  v1[45] = swift_task_alloc();
  v19 = type metadata accessor for ModifyContactAttributeSnippetModel();
  v1[46] = v19;
  OUTLINED_FUNCTION_1_1(v19);
  v1[47] = v20;
  v1[48] = OUTLINED_FUNCTION_45();
  v1[49] = swift_task_alloc();
  v21 = type metadata accessor for SpeakableString();
  v1[50] = v21;
  OUTLINED_FUNCTION_1_1(v21);
  v1[51] = v22;
  v1[52] = OUTLINED_FUNCTION_45();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v23 = type metadata accessor for Locale();
  v1[55] = v23;
  OUTLINED_FUNCTION_18_0(v23);
  v1[56] = OUTLINED_FUNCTION_10_0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v24);
  v1[57] = OUTLINED_FUNCTION_45();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v25 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

{
  if (one-time initialization token for siriContacts != -1)
  {
LABEL_67:
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v1 = type metadata accessor for Logger();
  v0[68] = __swift_project_value_buffer(v1, static Logger.siriContacts);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_15_0(v3))
  {
    v4 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_24_0(v4);
    OUTLINED_FUNCTION_23_1(&dword_26686A000, v5, v6, "[ModifyContactAttributeConfirmIntentStrategy] makePromptForConfirmation");
    OUTLINED_FUNCTION_11_1();
  }

  v7 = v0[23];

  v0[69] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVy0A15ContactsIntents022ModifyContactAttributeD0CAD0ijkD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVy0A15ContactsIntents022ModifyContactAttributeD0CAD0ijkD8ResponseCGMR);
  v8 = IntentResolutionRecord.intent.getter();
  v9 = [v8 contactAttributeToModify];

  outlined init with copy of DeviceState(v7 + 16, (v0 + 3));
  v10 = *(v7 + 104);
  v0[2] = v9;
  v0[8] = v10;

  v11 = MEMORY[0x277D84F90];
  specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:)();
  v0[70] = v12;
  outlined destroy of ConfirmationViewBuilder((v0 + 2));
  v13 = IntentResolutionRecord.intent.getter();
  v14 = [v13 contactAttributeToModify];

  if (v14 == 6)
  {
    v34 = IntentResolutionRecord.intent.getter();
    v35 = outlined bridged method (ob) of @objc ContactAttribute.handleLabel.getter(v34, &selRef_modifyNickName);
    if (!v36)
    {
      v35 = static String.EMPTY.getter();
    }

    v37 = v0[51];
    v38 = v0[50];
    OUTLINED_FUNCTION_49_0(v35, v36);
    v0[85] = *(v37 + 16);
    v0[86] = (v37 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    OUTLINED_FUNCTION_2_18();
    v39();
    OUTLINED_FUNCTION_50();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v38);
    swift_task_alloc();
    OUTLINED_FUNCTION_36_0();
    v0[87] = v43;
    *v43 = v44;
    v43[1] = ModifyContactAttributeConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
    OUTLINED_FUNCTION_40_1();

    return ModifyContactAttributeCATs.confirmModifyNickname(requestedNickname:)();
  }

  if (v14 != 10)
  {

    type metadata accessor for ContactsError(0);
    _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type ContactsError and conformance ContactsError, type metadata accessor for ContactsError, &protocol conformance descriptor for ContactsError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    OUTLINED_FUNCTION_41_4();
    OUTLINED_FUNCTION_1_21();

    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_40_1();

    __asm { BRAA            X1, X16 }
  }

  __swift_storeEnumTagSinglePayload(v0[67], 1, 1, v0[50]);
  v15 = IntentResolutionRecord.intent.getter();
  v16 = outlined bridged method (ob) of @objc ModifyContactAttributeIntent.relatedSiriMatches.getter(v15);
  v17 = &selRef_isoCountryCode;
  v161 = v7;
  if (!v16)
  {
    goto LABEL_12;
  }

  v18 = v16;
  v19 = (v16 & 0xC000000000000001);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
  if (v19)
  {
    MEMORY[0x26D5E29D0](0, v18);
  }

  else
  {
    v20 = *(v18 + 32);
  }

  OUTLINED_FUNCTION_44_0();

  v21 = outlined bridged method (ob) of @objc INObject.identifier.getter(v19);
  if (!v22)
  {
    goto LABEL_12;
  }

  v23 = v21;
  v24 = v22;
  v25 = v0[23];
  v26 = v25[10];
  v27 = v25[11];
  __swift_project_boxed_opaque_existential_1(v25 + 7, v26);
  v90 = (*(v27 + 8))(v23, v24, v26, v27);

  if (!v90)
  {
    v17 = &selRef_isoCountryCode;
LABEL_12:
    v28 = IntentResolutionRecord.intentResponse.getter();
    v29 = [v28 v17[43]];

    if (v29 && (v30 = outlined bridged method (ob) of @objc ContactRelation.relatedFullName.getter(v29), v31))
    {
      v32 = v30;
      v33 = v31;
    }

    else
    {
      v32 = static String.EMPTY.getter();
      v33 = v49;
    }

    v50 = v0[67];
    v51 = v0 + 65;
    v52 = v0[50];
    OUTLINED_FUNCTION_49_0(v32, v33);
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v50, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_50();
    __swift_storeEnumTagSinglePayload(v53, v54, v55, v52);
    goto LABEL_25;
  }

  v91 = v7;
  v51 = v0 + 66;
  v164 = v0[67];
  v92 = v0[56];
  v93 = v0[23];
  type metadata accessor for DialogPerson();
  __swift_project_boxed_opaque_existential_1((v91 + 16), *(v93 + 40));
  v94 = v90;
  dispatch thunk of DeviceState.siriLocale.getter();
  v95 = *(v93 + 120);
  v96 = v95;
  DialogPerson.init(from:useConversationalName:locale:mockGlobals:)(v94, 0, v92, v95);
  dispatch thunk of DialogPerson.fullName.getter();

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v164, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
LABEL_25:
  v56 = *v51;
  v57 = v0[64];
  v58 = v0[50];
  v59 = v0[23];
  outlined init with take of SpeakableString?(v56, v0[67]);
  v60 = IntentResolutionRecord.intent.getter();
  v61 = [v60 modifyOperation];

  v62 = ModifyOperation.stringify.getter(v61);
  OUTLINED_FUNCTION_49_0(v62, v63);
  v64 = v59[11];
  __swift_project_boxed_opaque_existential_1(v59 + 7, v59[10]);
  v65 = OUTLINED_FUNCTION_18_7();
  v67 = v66(v65, v64);
  v0[71] = v67;
  __swift_storeEnumTagSinglePayload(v57, 1, 1, v58);
  if (!v67)
  {
    goto LABEL_54;
  }

  v68 = [v67 contactRelations];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
  v69 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v70 = IntentResolutionRecord.intentResponse.getter();
  v71 = [v70 updatedRelationship];

  if (!v71 || (v72 = outlined bridged method (ob) of @objc ContactRelation.relatedFullName.getter(v71), !v73))
  {

    goto LABEL_54;
  }

  v74 = v72;
  v75 = v73;
  v165 = v11;
  v76 = specialized Array._getCount()();
  v77 = 0;
  v162 = v69 & 0xFFFFFFFFFFFFFF8;
  v163 = v69 & 0xC000000000000001;
  while (v76 != v77)
  {
    if (v163)
    {
      v58 = v69;
      v78 = MEMORY[0x26D5E29D0](v77, v69);
    }

    else
    {
      if (v77 >= *(v162 + 16))
      {
        goto LABEL_66;
      }

      v58 = v69;
      v78 = *(v69 + 8 * v77 + 32);
    }

    v79 = v78;
    if (__OFADD__(v77, 1))
    {
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v80 = [v78 value];
    v81 = [v80 name];

    v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v84 = v83;

    if (v82 == v74 && v75 == v84)
    {
    }

    else
    {
      v86 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v86 & 1) == 0)
      {

        goto LABEL_42;
      }
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
LABEL_42:
    ++v77;
    v69 = v58;
  }

  if (specialized Array._getCount()())
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
    if ((v165 & 0xC000000000000001) != 0)
    {
      v87 = MEMORY[0x26D5E29D0](0, v165);
    }

    else
    {
      v87 = *(v165 + 32);
    }

    v88 = v87;

    v89 = [v88 label];

    if (v89)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v98 = v0[63];
    v97 = v0[64];
    v58 = v0[50];
    v99 = OUTLINED_FUNCTION_55_2();
    v101 = static Dictionary<>.nlSemantic(forCNLabel:)(v99, v100);
    v103 = v102;

    OUTLINED_FUNCTION_49_0(v101, v103);
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v97, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_50();
    __swift_storeEnumTagSinglePayload(v104, v105, v106, v58);
    outlined init with take of SpeakableString?(v98, v97);
  }

  else
  {
  }

LABEL_54:
  v107 = IntentResolutionRecord.intentResponse.getter();
  v108 = [v107 updatedRelationship];

  if (v108 && (v109 = outlined bridged method (ob) of @objc ContactAttribute.handleLabel.getter(v108, &selRef_relationship), v110))
  {
    v111 = v109;
    v112 = v110;
  }

  else
  {
    v111 = static String.EMPTY.getter();
    v112 = v113;
  }

  v114 = v0[23];
  OUTLINED_FUNCTION_49_0(v111, v112);
  v115 = SpeakableString.print.getter();
  v117 = v116;
  static Dictionary<>.cnLabel(forNLSemantic:)(v115, v116);
  v119 = v118;

  objc_opt_self();
  v120 = OUTLINED_FUNCTION_18_7();
  v121 = MEMORY[0x26D5E2470](v120, v119);

  v122 = [v117 localizedStringForLabel_];

  v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v125 = v124;

  if (specialized ContactsStrategy.isSmartEnabled.getter())
  {
    v126 = v0[55];
    v127 = v0[43];
    v128 = v0[40];
    v157 = v0[42];
    v158 = v0[41];
    v129 = v0[39];
    v159 = v0[38];
    v160 = v0[37];
    v130 = v0[23];
    v0[72] = IntentResolutionRecord.intent.getter();
    v0[73] = IntentResolutionRecord.intentResponse.getter();
    v0[19] = v123;
    v0[20] = v125;
    __swift_project_boxed_opaque_existential_1((v161 + 16), *(v130 + 40));
    dispatch thunk of DeviceState.siriLocale.getter();
    OUTLINED_FUNCTION_50();
    __swift_storeEnumTagSinglePayload(v131, v132, v133, v126);
    lazy protocol witness table accessor for type String and conformance String();
    v134 = StringProtocol.capitalized(with:)();
    v136 = v135;
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v128, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

    *v127 = v134;
    v127[1] = v136;
    (*(v157 + 104))(v127, *MEMORY[0x277D55AB0], v158);
    v137 = static ContactsDirectInvocations.confirm()();
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAStartLocalRequest, 0x277D47940);
    v138 = SAClientBoundCommand.data.getter();
    v140 = v139;

    static ContactsDirectInvocations.deny()();
    OUTLINED_FUNCTION_18_7();
    v141 = SAClientBoundCommand.data.getter();
    v143 = v142;

    *v129 = v138;
    v129[1] = v140;
    v129[2] = v141;
    v129[3] = v143;
    (*(v159 + 104))(v129, *MEMORY[0x277D55978], v160);
    type metadata accessor for ContactsLabelCATsModern(0);
    static CATOption.defaultMode.getter();
    v0[74] = CATWrapperSimple.__allocating_init(options:globals:)();
    swift_task_alloc();
    OUTLINED_FUNCTION_36_0();
    v0[75] = v144;
    *v144 = v145;
    v144[1] = ModifyContactAttributeConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
    OUTLINED_FUNCTION_40_1();

    return static ModifyContactAttributeSnippetModel.from(intent:intentResponse:contactService:attributeToModify:flowState:labelCATs:)();
  }

  else
  {

    v147 = OUTLINED_FUNCTION_21_8();
    v125(v147);
    OUTLINED_FUNCTION_50();
    __swift_storeEnumTagSinglePayload(v148, v149, v150, v58);
    (v125)(v114, v123, v58);
    OUTLINED_FUNCTION_50();
    __swift_storeEnumTagSinglePayload(v151, v152, v153, v58);
    swift_task_alloc();
    OUTLINED_FUNCTION_36_0();
    v0[83] = v154;
    *v154 = v155;
    OUTLINED_FUNCTION_10_17(v154);
    OUTLINED_FUNCTION_40_1();

    return ModifyContactAttributeCATs.confirmModifyRelationship(requestedRelationship:existingRelationship:contactName:modifyOperation:)();
  }
}

{
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_5();
  v2 = *(v1 + 584);
  v3 = *(v1 + 576);
  v4 = *v0;
  OUTLINED_FUNCTION_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_43();
  v7(v6);
  v8 = OUTLINED_FUNCTION_22_0();
  v9(v8);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_22_3();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_5();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 112));
  v6 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 672) = v0;

  if (v0)
  {
    v7 = *(v3 + 480);

    v8 = OUTLINED_FUNCTION_22_0();
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v8, v9, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  }

  else
  {
    OUTLINED_FUNCTION_2_18();
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v10, v11, v12);
    OUTLINED_FUNCTION_2_18();
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v13, v14, v15);
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v16, v17, v18);
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
  *(v3 + 704) = v0;

  outlined destroy of UsoEntity_common_Person.DefinedValues?(*(v3 + 464), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_5();
  v2 = *(v1 + 728);
  v3 = *(v1 + 720);
  v4 = *v0;
  OUTLINED_FUNCTION_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_43();
  v7(v6);
  v8 = OUTLINED_FUNCTION_22_0();
  v9(v8);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_22_3();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_5();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 72));
  v6 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t ModifyContactAttributeConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v18 = v14[45];
  OUTLINED_FUNCTION_43_3();
  if (v19)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v18, &_s18SiriContactsCommon34ModifyContactAttributeSnippetModelVSgMd, &_s18SiriContactsCommon34ModifyContactAttributeSnippetModelVSgMR);
    v20 = OUTLINED_FUNCTION_21_8();
    v17(v20);
    OUTLINED_FUNCTION_50();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v16);
    (v17)(v18, v15, v16);
    OUTLINED_FUNCTION_50();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v16);
    swift_task_alloc();
    OUTLINED_FUNCTION_36_0();
    v14[83] = v27;
    *v27 = v28;
    OUTLINED_FUNCTION_10_17(v27);

    return ModifyContactAttributeCATs.confirmModifyRelationship(requestedRelationship:existingRelationship:contactName:modifyOperation:)();
  }

  else
  {

    v30 = OUTLINED_FUNCTION_51_1();
    v31(v30);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_15_0(v33))
    {
      v35 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v35);
      OUTLINED_FUNCTION_23_1(&dword_26686A000, v36, v37, "#ModifyContactAttributeConfirmIntentStrategy makePromptForConfirmation constructing SMART snippet");
      OUTLINED_FUNCTION_11_1();
    }

    v38 = v14[62];
    v39 = v14[53];
    v40 = v14[50];
    v41 = v14[51];

    type metadata accessor for ModifyContactAttributeCATsModern(0);
    static CATOption.defaultMode.getter();
    v14[76] = CATWrapperSimple.__allocating_init(options:globals:)();
    v42 = *(v41 + 16);
    (v42)(v38, v39, v40);
    OUTLINED_FUNCTION_50();
    __swift_storeEnumTagSinglePayload(v43, v44, v45, v40);
    OUTLINED_FUNCTION_46_2();
    v42();
    OUTLINED_FUNCTION_50();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v40);
    v49 = swift_task_alloc();
    v14[77] = v49;
    *v49 = v14;
    v49[1] = ModifyContactAttributeConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);

    return ModifyContactAttributeCATsModern.confirmModifyRelationship(requestedRelationship:existingRelationship:contactName:modifyOperation:)();
  }
}

uint64_t ModifyContactAttributeConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *v6 = *v2;
  *(v5 + 624) = v1;

  v7 = *(v4 + 488);

  if (!v1)
  {
    *(v5 + 632) = a1;
  }

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = OUTLINED_FUNCTION_55_2();
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v8, v9, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *v6 = *v2;
  *(v5 + 768) = v1;

  v7 = *(v4 + 456);
  if (!v1)
  {
    *(v5 + 776) = a1;
  }

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t ModifyContactAttributeConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_39();
  v16 = v14[79];
  v17 = v14[71];
  v18 = OUTLINED_FUNCTION_31_3();
  v19(v18);
  v20 = OUTLINED_FUNCTION_56_1();
  v21(v20);
  static DialogPhase.confirmation.getter();
  v22 = swift_task_alloc();
  v22[2] = v15;
  v22[3] = v17;
  v22[4] = v12;
  OUTLINED_FUNCTION_59_1();

  type metadata accessor for ResponseFactory();
  swift_allocObject();
  v14[80] = ResponseFactory.init()();
  v14[17] = v13;
  OUTLINED_FUNCTION_14_11();
  v14[18] = _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_0(v23, v24, MEMORY[0x277D559E0]);
  __swift_allocate_boxed_opaque_existential_1(v14 + 14);
  OUTLINED_FUNCTION_2_18();
  v25();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v26 = swift_allocObject();
  v14[81] = v26;
  *(v26 + 16) = xmmword_266966A40;
  *(v26 + 32) = v16;
  OUTLINED_FUNCTION_60_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  v14[82] = v27;
  *v27 = v28;
  v27[1] = ModifyContactAttributeConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
  OUTLINED_FUNCTION_22_3();

  return v33(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_39();
  v16 = v14[97];
  v17 = v14[89];
  v18 = OUTLINED_FUNCTION_31_3();
  v19(v18);
  v20 = OUTLINED_FUNCTION_56_1();
  v21(v20);
  static DialogPhase.confirmation.getter();
  v22 = swift_task_alloc();
  v22[2] = v15;
  v22[3] = v17;
  v22[4] = v12;
  OUTLINED_FUNCTION_59_1();

  type metadata accessor for ResponseFactory();
  swift_allocObject();
  v14[98] = ResponseFactory.init()();
  v14[12] = v13;
  OUTLINED_FUNCTION_14_11();
  v14[13] = _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_0(v23, v24, MEMORY[0x277D559E0]);
  __swift_allocate_boxed_opaque_existential_1(v14 + 9);
  OUTLINED_FUNCTION_2_18();
  v25();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v26 = swift_allocObject();
  v14[99] = v26;
  *(v26 + 16) = xmmword_266966A40;
  *(v26 + 32) = v16;
  OUTLINED_FUNCTION_60_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  v14[100] = v27;
  *v27 = v28;
  v27[1] = ModifyContactAttributeConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
  OUTLINED_FUNCTION_22_3();

  return v33(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

uint64_t ModifyContactAttributeConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_42_3();
  v31 = *(v30 + 568);
  v56 = *(v30 + 536);
  v52 = *(v30 + 512);
  v53 = *(v30 + 432);
  v33 = *(v30 + 400);
  v32 = *(v30 + 408);
  v50 = *(v30 + 392);
  v51 = *(v30 + 424);
  v35 = *(v30 + 368);
  v34 = *(v30 + 376);
  v36 = *(v30 + 272);
  v37 = *(v30 + 256);
  v54 = *(v30 + 264);
  v55 = *(v30 + 280);
  v39 = *(v30 + 240);
  v38 = *(v30 + 248);

  (*(v38 + 8))(v37, v39);
  (*(v34 + 8))(v50, v35);
  v40 = *(v32 + 8);
  v40(v51, v33);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v52, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v40(v53, v33);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v56, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  (*(v36 + 8))(v55, v54);
  OUTLINED_FUNCTION_0_25();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_19_8();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v50, v51, v52, v53, v54, v55, v56, a28, a29, a30);
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_42_3();
  v31 = v30[71];
  v32 = v30[70];
  v59 = v30[54];
  v60 = v30[67];
  v57 = v30[53];
  v58 = v30[64];
  v33 = v30[51];
  v34 = v30[28];
  v35 = v30[26];
  v55 = v30[25];
  v56 = v30[50];
  v36 = v30[24];
  v54 = v30[23];
  v37 = v30[21];
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAPerson, 0x277D47630);
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v53 = v31;
  v38.super.super.isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  v39 = SAPerson.init(contact:isMe:)(v31, v38.super.super.isa);
  v40 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v36, 1, 1, v40);
  v41 = type metadata accessor for AceOutput();
  v42 = MEMORY[0x277D5C1D8];
  v37[3] = v41;
  v37[4] = v42;
  __swift_allocate_boxed_opaque_existential_1(v37);
  specialized ContactsStrategy.confirmationOutput(templateResult:views:meCard:listenAfterSpeaking:nlContextUpdate:)(v34, v32, v39, 1, v36);

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v36, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v35 + 8))(v34, v55);
  v43 = *(v33 + 8);
  v43(v57, v56);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v58, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v43(v59, v56);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v60, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_0_25();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_19_8();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v53, v54, v55, v56, v57, v58, v59, v60, a28, a29, a30);
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_42_3();
  v33 = v30[23];
  v34 = type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAPerson, 0x277D47630);
  v35 = v33[11];
  __swift_project_boxed_opaque_existential_1(v33 + 7, v33[10]);
  v36 = OUTLINED_FUNCTION_43();
  v38 = v37(v36);
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v39.super.super.isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  v30[89] = SAPerson.init(contact:isMe:)(v38, v39.super.super.isa);
  if (specialized ContactsStrategy.isSmartEnabled.getter())
  {
    v40 = v30[42];
    v41 = v30[43];
    v42 = v30[41];
    v43 = v30[38];
    v44 = v30[39];
    v72 = v30[37];
    v30[90] = IntentResolutionRecord.intent.getter();
    v30[91] = IntentResolutionRecord.intentResponse.getter();
    *v41 = SpeakableString.print.getter();
    v41[1] = v45;
    (*(v40 + 104))(v41, *MEMORY[0x277D55AB8], v42);
    v46 = static ContactsDirectInvocations.confirm()();
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAStartLocalRequest, 0x277D47940);
    v47 = SAClientBoundCommand.data.getter();
    v49 = v48;

    v50 = static ContactsDirectInvocations.deny()();
    v51 = SAClientBoundCommand.data.getter();
    v53 = v52;

    *v44 = v47;
    v44[1] = v49;
    v44[2] = v51;
    v44[3] = v53;
    (*(v43 + 104))(v44, *MEMORY[0x277D55978], v72);
    type metadata accessor for ContactsLabelCATsModern(0);
    static CATOption.defaultMode.getter();
    v30[92] = CATWrapperSimple.__allocating_init(options:globals:)();
    swift_task_alloc();
    OUTLINED_FUNCTION_36_0();
    v30[93] = v54;
    *v54 = v55;
    v54[1] = ModifyContactAttributeConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
    OUTLINED_FUNCTION_19_8();

    return static ModifyContactAttributeSnippetModel.from(intent:intentResponse:contactService:attributeToModify:flowState:labelCATs:)();
  }

  else
  {
    OUTLINED_FUNCTION_20_6();
    OUTLINED_FUNCTION_48_1();
    type metadata accessor for NLContextUpdate();
    OUTLINED_FUNCTION_50();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
    v62 = type metadata accessor for AceOutput();
    v63 = MEMORY[0x277D5C1D8];
    v33[3] = v62;
    v33[4] = v63;
    __swift_allocate_boxed_opaque_existential_1(v33);
    OUTLINED_FUNCTION_35_4();

    outlined destroy of UsoEntity_common_Person.DefinedValues?(v31, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    (*(v35 + 8))(v38, a25);
    (*(v34 + 8))(a27, a26);
    OUTLINED_FUNCTION_0_25();

    OUTLINED_FUNCTION_6_4();
    OUTLINED_FUNCTION_19_8();

    return v65(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
  }
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_42_3();
  v35 = v30[46];
  v36 = v30[44];
  OUTLINED_FUNCTION_43_3();
  if (v37)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v36, &_s18SiriContactsCommon34ModifyContactAttributeSnippetModelVSgMd, &_s18SiriContactsCommon34ModifyContactAttributeSnippetModelVSgMR);
    OUTLINED_FUNCTION_20_6();
    OUTLINED_FUNCTION_48_1();
    type metadata accessor for NLContextUpdate();
    OUTLINED_FUNCTION_50();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
    v42 = type metadata accessor for AceOutput();
    v43 = MEMORY[0x277D5C1D8];
    v35[3] = v42;
    v35[4] = v43;
    __swift_allocate_boxed_opaque_existential_1(v35);
    OUTLINED_FUNCTION_35_4();

    outlined destroy of UsoEntity_common_Person.DefinedValues?(v33, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    (*(v32 + 8))(v31, a25);
    (*(v36 + 8))(a27, a26);
    OUTLINED_FUNCTION_0_25();

    OUTLINED_FUNCTION_6_4();
    OUTLINED_FUNCTION_19_8();

    return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
  }

  else
  {

    v53 = OUTLINED_FUNCTION_51_1();
    v54(v53);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_15_0(v56))
    {
      v58 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v58);
      OUTLINED_FUNCTION_23_1(&dword_26686A000, v59, v60, "#ModifyContactAttributeConfirmIntentStrategy makePromptForConfirmation constructing SMART snippet");
      OUTLINED_FUNCTION_11_1();
    }

    v61 = v30[85];
    v62 = v30[50];

    type metadata accessor for ModifyContactAttributeCATsModern(0);
    static CATOption.defaultMode.getter();
    v30[94] = CATWrapperSimple.__allocating_init(options:globals:)();
    v63 = OUTLINED_FUNCTION_22_0();
    v61(v63);
    OUTLINED_FUNCTION_50();
    __swift_storeEnumTagSinglePayload(v64, v65, v66, v62);
    v67 = swift_task_alloc();
    v30[95] = v67;
    *v67 = v30;
    v67[1] = ModifyContactAttributeConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
    OUTLINED_FUNCTION_19_8();

    return ModifyContactAttributeCATsModern.confirmModifyNickname(requestedNickname:)();
  }
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_42_3();
  v31 = *(v30 + 712);
  v32 = *(v30 + 408);
  v54 = *(v30 + 416);
  v52 = *(v30 + 400);
  v33 = *(v30 + 376);
  v50 = *(v30 + 368);
  v51 = *(v30 + 384);
  v34 = *(v30 + 272);
  v55 = *(v30 + 280);
  v35 = *(v30 + 256);
  v53 = *(v30 + 264);
  v37 = *(v30 + 240);
  v36 = *(v30 + 248);
  v38 = *(v30 + 208);
  v49 = *(v30 + 216);
  v39 = *(v30 + 200);

  (*(v36 + 8))(v35, v37);
  (*(v33 + 8))(v51, v50);
  (*(v38 + 8))(v49, v39);
  (*(v32 + 8))(v54, v52);
  (*(v34 + 8))(v55, v53);
  OUTLINED_FUNCTION_0_25();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_19_8();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v49, v50, v51, v52, v53, v54, v55, a28, a29, a30);
}

uint64_t ModifyContactAttributeConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_53_1();
  v34 = v33[50];
  v35 = v33[51];
  v36 = v33[49];
  v37 = v33[46];
  v38 = v33[47];

  (*(v38 + 8))(v36, v37);
  v40 = *(v35 + 8);
  v41 = OUTLINED_FUNCTION_43();
  v40(v41);
  OUTLINED_FUNCTION_46_2();
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v42, v43, v44);
  (v40)(v32, v34);
  OUTLINED_FUNCTION_46_2();
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v45, v46, v47);
  v57 = v33[78];
  OUTLINED_FUNCTION_41_4();
  OUTLINED_FUNCTION_1_21();
  OUTLINED_FUNCTION_4_16();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_54();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v57, a30, a31, a32);
}

{
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_53_1();
  v34 = v33[50];
  v35 = v33[51];

  v37 = *(v35 + 8);
  v38 = OUTLINED_FUNCTION_43();
  v37(v38);
  OUTLINED_FUNCTION_46_2();
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v39, v40, v41);
  (v37)(v32, v34);
  OUTLINED_FUNCTION_46_2();
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v42, v43, v44);
  v54 = v33[84];
  OUTLINED_FUNCTION_41_4();
  OUTLINED_FUNCTION_1_21();
  OUTLINED_FUNCTION_4_16();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_54();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v54, a30, a31, a32);
}

{
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_54_1();
  (*(v32[51] + 8))(v32[52], v32[50]);
  v42 = v32[88];
  OUTLINED_FUNCTION_41_4();
  OUTLINED_FUNCTION_1_21();
  OUTLINED_FUNCTION_4_16();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_54();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v42, a30, a31, a32);
}

{
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_54_1();
  v34 = *(v32 + 408);
  v33 = *(v32 + 416);
  v35 = *(v32 + 400);
  v37 = *(v32 + 376);
  v36 = *(v32 + 384);
  v38 = *(v32 + 368);
  v40 = *(v32 + 208);
  v39 = *(v32 + 216);
  v41 = *(v32 + 200);

  (*(v37 + 8))(v36, v38);
  (*(v40 + 8))(v39, v41);
  (*(v34 + 8))(v33, v35);
  v51 = *(v32 + 768);
  OUTLINED_FUNCTION_41_4();
  OUTLINED_FUNCTION_1_21();
  OUTLINED_FUNCTION_4_16();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_54();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v51, a30, a31, a32);
}

uint64_t closure #2 in ModifyContactAttributeConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAPerson, 0x277D47630);
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v7 = a3;
  v8.super.super.isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  v9 = SAPerson.init(contact:isMe:)(a3, v8.super.super.isa);
  static ContactsContextProvider.confirm(person:attribute:)(v9, 0, 1);

  v10 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
  OutputGenerationManifest.nlContextUpdate.setter();
  ContactsSnippetPluginModel.responseViewID.getter();
  return OutputGenerationManifest.responseViewId.setter();
}

uint64_t closure #3 in ModifyContactAttributeConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  static ContactsContextProvider.confirm(person:attribute:)(a3, 0, 1);
  v7 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  OutputGenerationManifest.nlContextUpdate.setter();
  ContactsSnippetPluginModel.responseViewID.getter();
  return OutputGenerationManifest.responseViewId.setter();
}

uint64_t ModifyContactAttributeConfirmIntentStrategy.isRequestForDifferentAttribute(_:intent:)(uint64_t a1, void *a2)
{
  v130 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology24PrimitiveStringOperatorsOSgMd, &_s12SiriOntology24PrimitiveStringOperatorsOSgMR);
  v3 = OUTLINED_FUNCTION_18_0(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_4();
  v126 = v4 - v5;
  MEMORY[0x28223BE20](v6);
  v127 = &v122 - v7;
  type metadata accessor for PrimitiveStringOperators();
  OUTLINED_FUNCTION_1_0();
  v128 = v9;
  v129 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_4();
  v12 = (v10 - v11);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v122 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v124 = &v122 - v18;
  MEMORY[0x28223BE20](v17);
  v125 = &v122 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v21 = OUTLINED_FUNCTION_18_0(v20);
  MEMORY[0x28223BE20](v21);
  v23 = &v122 - v22;
  v24 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_1_0();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v122 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for USOParse();
  OUTLINED_FUNCTION_1_0();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v122 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  if ((*(v26 + 88))(v29, v24) != *MEMORY[0x277D5C160])
  {
    (*(v26 + 8))(v29, v24);
LABEL_16:
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v55 = type metadata accessor for Logger();
    v56 = OUTLINED_FUNCTION_52_0(v55, static Logger.siriContacts);
    v57 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_21_2(v57))
    {
      v58 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v58);
      OUTLINED_FUNCTION_7_4(&dword_26686A000, v59, v60, "#ModifyContactAttributeConfirmIntentStrategy isRequestForDifferentAttribute new input wasn't the expected task type, unable to determine difference");
      OUTLINED_FUNCTION_11_1();
    }

    goto LABEL_21;
  }

  (*(v26 + 96))(v29, v24);
  (*(v32 + 32))(v35, v29, v30);
  USOParse.preferredUserDialogAct.getter(v23);
  v36 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_43_3();
  if (v83)
  {
    v37 = OUTLINED_FUNCTION_6_16();
    v38(v37);
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v23, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
LABEL_14:
    v132 = 0u;
    v133 = 0u;
LABEL_15:
    outlined destroy of UsoEntity_common_Person.DefinedValues?(&v132, &_sypSgMd, &_sypSgMR);
    goto LABEL_16;
  }

  v39 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
  (*(*(v36 - 8) + 8))(v23, v36);
  if (!v39)
  {
    v53 = OUTLINED_FUNCTION_6_16();
    v54(v53);
    goto LABEL_14;
  }

  static UsoTask_CodegenConverter.convert(task:)();

  if (!*(&v133 + 1))
  {
    v63 = OUTLINED_FUNCTION_6_16();
    v64(v63);
    goto LABEL_15;
  }

  type metadata accessor for UsoTask_update_common_Person();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v65 = OUTLINED_FUNCTION_6_16();
    v66(v65);
    goto LABEL_16;
  }

  v40 = v130;
  v123 = [v130 contactAttributeToModify];
  updated = UsoTask_update_common_Person.updateTaskType.getter(v123);
  if (updated)
  {
    v42 = UsoTask_update_common_Person.updateTaskType.getter(updated);
    v43 = [v40 modifyOperation];
    if (v42 != 1)
    {
      v52 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v44 = 0;
      v46 = 0;
      v51 = 1;
      goto LABEL_61;
    }

    v44 = outlined bridged method (pb) of @objc ModifyContactAttributeIntent.modifyRelationship.getter(v40);
    v46 = v45;
    v47 = UsoTask_update_common_Person.updateRelationshipInfoLocation.getter(v44);
    if (v47 == 2)
    {
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v51 = 1;
      v52 = 10;
      goto LABEL_61;
    }

    if (v47)
    {

      OUTLINED_FUNCTION_26_8();
      dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
      v74 = v132;
      if (v132)
      {
        dispatch thunk of UsoEntity_common_Person.identifyingRelationship.getter();
        OUTLINED_FUNCTION_18_7();

        UsoEntity_common_PersonRelationship.relationshipIdentifierOrLabel.getter();
        v130 = v75;
        v126 = v76;
      }

      else
      {
        v130 = 0;
        v126 = 0;
      }

      OUTLINED_FUNCTION_26_8();
      dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
    }

    else
    {

      OUTLINED_FUNCTION_26_8();
      dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter();
      v74 = v132;
      if (v132)
      {
        dispatch thunk of UsoEntity_common_Person.identifyingRelationship.getter();
        OUTLINED_FUNCTION_18_7();

        UsoEntity_common_PersonRelationship.relationshipIdentifierOrLabel.getter();
        v130 = v77;
        v126 = v78;
      }

      else
      {
        v130 = 0;
        v126 = 0;
      }

      OUTLINED_FUNCTION_26_8();
      dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter();
    }

    if (!v132 || (dispatch thunk of UsoEntity_common_Person.identifyingRelationship.getter(), OUTLINED_FUNCTION_44_0(), , !v74))
    {
      v48 = 0;
      v51 = 1;
      goto LABEL_59;
    }

    dispatch thunk of UsoEntity_common_PersonRelationship.relationshipTypeAsExpression.getter();
    OUTLINED_FUNCTION_18_7();

    v48 = v127;
    dispatch thunk of CodeGenExpression.operatorAsString.getter();
    if (v79)
    {
      PrimitiveStringOperators.init(rawValue:)();
      v80 = v129;
      if (__swift_getEnumTagSinglePayload(v48, 1, v129) != 1)
      {

        v114 = *(v128 + 32);
        v114(v125, v48, v80);
        v115 = v114;
        v116 = v80;
        v117 = v124;
        v115(v124, v125, v116);
        v118 = v117;
        v119 = v128;
        v120 = (*(v128 + 88))(v118, v116);
        if (v120 == *MEMORY[0x277D5E860] || v120 == *MEMORY[0x277D5E868])
        {
          v51 = 0;
          v48 = 3;
          goto LABEL_59;
        }

        (*(v119 + 8))(v118, v116);
        v48 = 0;
        goto LABEL_57;
      }

      outlined destroy of UsoEntity_common_Person.DefinedValues?(v48, &_s12SiriOntology24PrimitiveStringOperatorsOSgMd, &_s12SiriOntology24PrimitiveStringOperatorsOSgMR);
    }

    v81 = dispatch thunk of CodeGenExpression.operatorAsString.getter();
    v127 = v44;
    static ModifyOperation.from(_:)(v81, v82);
    OUTLINED_FUNCTION_44_0();

    v44 = v127;

LABEL_57:
    v51 = 0;
LABEL_59:
    v52 = 10;
    v50 = v126;
    goto LABEL_60;
  }

  v125 = [v40 modifyOperation];
  v127 = outlined bridged method (pb) of @objc ModifyContactAttributeIntent.modifyNickName.getter(v40);
  v46 = v67;

  OUTLINED_FUNCTION_26_8();
  dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
  v48 = v132;
  if (!v132 || (dispatch thunk of UsoEntity_common_Person.structuredNameAsExpression.getter(), OUTLINED_FUNCTION_18_7(), , dispatch thunk of CodeGenExpression.operand.getter(), , !v131) || (v130 = dispatch thunk of UsoEntity_common_PersonName.nickName.getter(), v50 = v68, , !v50))
  {
    OUTLINED_FUNCTION_26_8();
    dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
    v48 = v132;
    if (v132)
    {
      dispatch thunk of UsoEntity_common_Person.structuredName.getter();
      OUTLINED_FUNCTION_18_7();

      v130 = dispatch thunk of UsoEntity_common_PersonName.nickName.getter();
      v50 = v69;
    }

    else
    {

      v130 = 0;
      v50 = 0;
    }
  }

  OUTLINED_FUNCTION_26_8();
  dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();

  if (!v132)
  {
    v48 = 0;
    goto LABEL_39;
  }

  dispatch thunk of UsoEntity_common_Person.structuredName.getter();
  OUTLINED_FUNCTION_44_0();

  if (!v48)
  {
LABEL_39:
    v51 = 1;
    goto LABEL_40;
  }

  dispatch thunk of UsoEntity_common_PersonName.nickNameAsExpression.getter();
  OUTLINED_FUNCTION_18_7();

  v124 = v46;
  dispatch thunk of CodeGenExpression.operatorAsString.getter();
  v71 = v70;

  if (v71)
  {
    v72 = v126;
    OUTLINED_FUNCTION_22_0();
    PrimitiveStringOperators.init(rawValue:)();
    v73 = v129;
    if (__swift_getEnumTagSinglePayload(v72, 1, v129) == 1)
    {
      outlined destroy of UsoEntity_common_Person.DefinedValues?(v72, &_s12SiriOntology24PrimitiveStringOperatorsOSgMd, &_s12SiriOntology24PrimitiveStringOperatorsOSgMR);
      goto LABEL_37;
    }

    v107 = v72;
    v108 = *(v128 + 32);
    v108(v16, v107, v73);
    v109 = v16;
    v110 = v128;
    v108(v12, v109, v73);
    v111 = (*(v110 + 88))(v12, v73);
    v112 = v111 == *MEMORY[0x277D5E860] || v111 == *MEMORY[0x277D5E868];
    v113 = v73;
    v46 = v124;
    if (v112)
    {
      v51 = 0;
      v48 = 3;
    }

    else
    {
      (*(v110 + 8))(v12, v113);
      v48 = 0;
      v51 = 0;
    }

LABEL_40:
    v52 = 6;
    goto LABEL_41;
  }

LABEL_37:
  v48 = 0;
  v51 = 1;
  v52 = 6;
  v46 = v124;
LABEL_41:
  v43 = v125;
  v44 = v127;
LABEL_60:
  v49 = v130;
LABEL_61:
  if (v123 != v52)
  {

    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v85 = type metadata accessor for Logger();
    v86 = OUTLINED_FUNCTION_52_0(v85, static Logger.siriContacts);
    v87 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_21_2(v87))
    {
      v88 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v88);
      v91 = "#ModifyContactAttributeConfirmIntentStrategy isRequestForDifferentAttribute found new attribute type different from current one, returning true";
LABEL_80:
      OUTLINED_FUNCTION_7_4(&dword_26686A000, v89, v90, v91);
      OUTLINED_FUNCTION_11_1();

LABEL_82:
      v95 = OUTLINED_FUNCTION_6_16();
      v96(v95);
      v61 = 1;
      return v61 & 1;
    }

LABEL_81:

    goto LABEL_82;
  }

  if (v43 == v48)
  {
    v51 = 1;
  }

  if ((v51 & 1) == 0)
  {

    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v92 = type metadata accessor for Logger();
    v86 = OUTLINED_FUNCTION_52_0(v92, static Logger.siriContacts);
    v93 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_21_2(v93))
    {
      v94 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v94);
      v91 = "#ModifyContactAttributeConfirmIntentStrategy isRequestForDifferentAttribute found new operation type different from current one, returning true";
      goto LABEL_80;
    }

    goto LABEL_81;
  }

  if (!v46)
  {

    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v97 = type metadata accessor for Logger();
    v98 = OUTLINED_FUNCTION_52_0(v97, static Logger.siriContacts);
    v99 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_21_2(v99))
    {
      v100 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v100);
      OUTLINED_FUNCTION_7_4(&dword_26686A000, v101, v102, "#ModifyContactAttributeConfirmIntentStrategy isRequestForDifferentAttribute there was no current attribute value, cannot evaluate difference, returning false");
      OUTLINED_FUNCTION_11_1();
    }

    else
    {
    }

    v105 = OUTLINED_FUNCTION_6_16();
    v106(v105);
LABEL_21:
    v61 = 0;
    return v61 & 1;
  }

  if (v50)
  {
    v83 = v44 == v49 && v46 == v50;
    if (v83)
    {

      v61 = 0;
    }

    else
    {
      v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v61 = v84 ^ 1;
    }
  }

  else
  {

    v61 = 1;
  }

  v103 = OUTLINED_FUNCTION_6_16();
  v104(v103);
  return v61 & 1;
}

uint64_t type metadata accessor for ModifyContactAttributeConfirmIntentStrategy(uint64_t a1)
{
  result = type metadata singleton initialization cache for ModifyContactAttributeConfirmIntentStrategy;
  if (!type metadata singleton initialization cache for ModifyContactAttributeConfirmIntentStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.parseConfirmationResponse(input:confirmParameters:) in conformance ModifyContactAttributeConfirmIntentStrategy()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return ModifyContactAttributeConfirmIntentStrategy.parseConfirmationResponse(input:confirmParameters:)();
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makePromptForConfirmation(confirmParameters:) in conformance ModifyContactAttributeConfirmIntentStrategy()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return ModifyContactAttributeConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:)();
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeRepromptOnEmptyParse(confirmParameters:) in conformance ModifyContactAttributeConfirmIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ModifyContactAttributeConfirmIntentStrategy(0);
  *v8 = v4;
  v8[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821B9D08](a1, a2, v9, a4);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeRepromptOnLowConfidence(confirmParameters:) in conformance ModifyContactAttributeConfirmIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ModifyContactAttributeConfirmIntentStrategy(0);
  *v8 = v4;
  v8[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821B9D10](a1, a2, v9, a4);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeConfirmationRejectedResponse(confirmParameters:) in conformance ModifyContactAttributeConfirmIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ModifyContactAttributeConfirmIntentStrategy(0);
  *v8 = v4;
  v8[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821B9D18](a1, a2, v9, a4);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeFlowCancelledResponse(confirmParameters:) in conformance ModifyContactAttributeConfirmIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ModifyContactAttributeConfirmIntentStrategy(0);
  *v8 = v4;
  v8[1] = protocol witness for Flow.execute() in conformance ContactsUnsupportedFlow;

  return MEMORY[0x2821B9CF8](a1, a2, v9, a4);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeErrorResponse(error:confirmParameters:) in conformance ModifyContactAttributeConfirmIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for ModifyContactAttributeConfirmIntentStrategy(0);
  *v10 = v5;
  v10[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821B9D00](a1, a2, a3, v11, a5);
}

uint64_t outlined init with copy of NLContextUpdate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_0_25()
{
  v3 = v0[28];
  *(v1 - 104) = v0[29];
  *(v1 - 96) = v3;
  v4 = v0[24];
  *(v1 - 88) = v0[27];
  *(v1 - 80) = v4;
}

uint64_t OUTLINED_FUNCTION_4_16()
{
  v3 = v0[28];
  *(v1 - 112) = v0[29];
  *(v1 - 104) = v3;
  v4 = v0[24];
  *(v1 - 96) = v0[27];
  *(v1 - 88) = v4;
}

id OUTLINED_FUNCTION_20_6()
{
  v3 = v0[89];
  v4 = v0[52];
  *(v1 - 88) = v0[50];
  *(v1 - 80) = v4;
  *(v1 - 96) = v0[25];

  return v3;
}

uint64_t OUTLINED_FUNCTION_35_4()
{

  return specialized ContactsStrategy.confirmationOutput(templateResult:views:meCard:listenAfterSpeaking:nlContextUpdate:)(v0, v2, v3, 1, v1);
}

uint64_t OUTLINED_FUNCTION_48_1()
{

  return static ContactsContextProvider.confirm(person:attribute:)(v0, 6, 0);
}

uint64_t OUTLINED_FUNCTION_59_1()
{

  return OutputGenerationManifest.init(dialogPhase:_:)();
}

id OUTLINED_FUNCTION_60_1()
{

  return v0;
}

id Contact.__allocating_init(contactIdentifier:givenName:middleName:familyName:nickName:fullName:namePrefix:suffix:phoneNumber:emailAddress:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = v20;
  if (a2)
  {
    v28 = MEMORY[0x26D5E2470](a1);
  }

  else
  {
    v28 = 0;
  }

  v29 = objc_allocWithZone(v21);
  v30 = static String.EMPTY.getter();
  v31 = MEMORY[0x26D5E2470](v30);

  v32 = [v29 initWithIdentifier:v28 displayString:v31];

  v33 = v32;
  if (a4)
  {
    v34 = MEMORY[0x26D5E2470](a3, a4);
  }

  else
  {
    v34 = 0;
  }

  [v32 setGivenName_];

  if (a6)
  {
    v35 = MEMORY[0x26D5E2470](a5, a6);
  }

  else
  {
    v35 = 0;
  }

  [v32 setMiddleName_];

  if (a8)
  {
    v36 = MEMORY[0x26D5E2470](a7, a8);
  }

  else
  {
    v36 = 0;
  }

  [v32 setFamilyName_];

  if (a10)
  {
    v37 = MEMORY[0x26D5E2470](a9, a10);
  }

  else
  {
    v37 = 0;
  }

  [v32 setNickName_];

  if (a14)
  {
    v39 = MEMORY[0x26D5E2470](a13, a14);
  }

  else
  {
    v39 = 0;
  }

  OUTLINED_FUNCTION_0_26(v38, sel_setNamePrefix_);

  if (a16)
  {
    v41 = MEMORY[0x26D5E2470](a15, a16);
  }

  else
  {
    v41 = 0;
  }

  OUTLINED_FUNCTION_0_26(v40, sel_setNameSuffix_);

  if (a12)
  {
    v43 = MEMORY[0x26D5E2470](a11, a12);
  }

  else
  {
    v43 = 0;
  }

  OUTLINED_FUNCTION_0_26(v42, sel_setFullName_);

  if (a18)
  {
    v45 = MEMORY[0x26D5E2470](a17, a18);
  }

  else
  {
    v45 = 0;
  }

  OUTLINED_FUNCTION_0_26(v44, sel_setPhoneNumber_);

  if (a20)
  {
    v46 = MEMORY[0x26D5E2470](a19, a20);
  }

  else
  {
    v46 = 0;
  }

  [v32 setEmailAddress_];

  return v32;
}

id OUTLINED_FUNCTION_0_26(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t Views.buildViews(for:isMe:mockGlobals:)(void *a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v2 + 1, v2[4]);
  if ((DeviceState.supportsCompactView.getter() & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(v2 + 1, v2[4]);
    if (dispatch thunk of DeviceState.isWatch.getter())
    {
      v29 = *v2;
      outlined init with copy of DeviceState((v3 + 1), v57);
      v57[8] = &type metadata for InstalledAppsProvider;
      v57[9] = &protocol witness table for InstalledAppsProvider;
      v56 = v29;
      __swift_project_boxed_opaque_existential_1(v3 + 1, v3[4]);

      dispatch thunk of DeviceState.siriLocale.getter();
      v30 = Locale.identifier.getter();
      v32 = OUTLINED_FUNCTION_2_26(v30, v31);
      v38 = OUTLINED_FUNCTION_1_22(v32, v33, v34, v35, v36, v37, MEMORY[0x277D837D0]);
      v40 = v39;

      (*(v7 + 8))(v9, v6);
      v41 = WatchViews.buildGetSnippet(contact:localeString:)(a1, v38, v40);

      outlined destroy of WatchViews(&v56);
      if (v41 >> 62)
      {
        type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAAceView, 0x277D47140);

        v22 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAAceView, 0x277D47140);
        v22 = v41;
      }

      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
      }

      v42 = type metadata accessor for Logger();
      __swift_project_value_buffer(v42, static Logger.siriContacts);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v43, v44))
      {
        goto LABEL_22;
      }

      v45 = OUTLINED_FUNCTION_30();
      *v45 = 0;
      v46 = "#Views Constructed snippet for Watch.";
    }

    else
    {
      OUTLINED_FUNCTION_4_17();
      if ((dispatch thunk of DeviceState.isMac.getter() & 1) == 0)
      {
        OUTLINED_FUNCTION_4_17();
        if ((dispatch thunk of DeviceState.isXRDevice.getter() & 1) == 0)
        {
          if (one-time initialization token for siriContacts != -1)
          {
            OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
          }

          v53 = type metadata accessor for Logger();
          __swift_project_value_buffer(v53, static Logger.siriContacts);
          v49 = Logger.logObject.getter();
          v50 = static os_log_type_t.debug.getter();
          if (!os_log_type_enabled(v49, v50))
          {
            goto LABEL_32;
          }

          v51 = OUTLINED_FUNCTION_30();
          *v51 = 0;
          v52 = "#Views Skipping snippet for device.";
          goto LABEL_31;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_266966A40;
      type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAABPersonSnippet, 0x277D47108);
      *(v22 + 32) = SAABPersonSnippet.init(_:isMe:)(a1, [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_]);
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
      }

      v47 = type metadata accessor for Logger();
      __swift_project_value_buffer(v47, static Logger.siriContacts);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v43, v44))
      {
LABEL_22:

        return v22;
      }

      v45 = OUTLINED_FUNCTION_30();
      *v45 = 0;
      v46 = "#Views Constructed snippet for Mac or XR.";
    }

    _os_log_impl(&dword_26686A000, v43, v44, v46, v45, 2u);
    MEMORY[0x26D5E3300](v45, -1, -1);
    goto LABEL_22;
  }

  v10 = *v2;
  v57[3] = &type metadata for InstalledAppsProvider;
  v57[4] = &protocol witness table for InstalledAppsProvider;
  v56 = v10;
  v57[5] = 0;
  type metadata accessor for ContactAttribute();

  v11 = ContactAttribute.__allocating_init(contactAttributeType:identifier:handleLabel:handleValue:ageDateTime:postalAddress:)(9, 0, 0, 0, 0, 0, 0, 0, 0);
  __swift_project_boxed_opaque_existential_1(v3 + 1, v3[4]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v12 = Locale.identifier.getter();
  v14 = OUTLINED_FUNCTION_2_26(v12, v13);
  OUTLINED_FUNCTION_1_22(v14, v15, v16, v17, v18, v19, MEMORY[0x277D837D0]);

  (*(v7 + 8))(v9, v6);
  CompactViews.buildGetAttributeSnippet(handles:contact:contactAttribute:localeString:)();
  v21 = v20;

  outlined destroy of CompactViews(&v56);
  if (!v21)
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v48 = type metadata accessor for Logger();
    __swift_project_value_buffer(v48, static Logger.siriContacts);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v49, v50))
    {
      goto LABEL_32;
    }

    v51 = OUTLINED_FUNCTION_30();
    *v51 = 0;
    v52 = "#Views Skipped snippet for iOS VF/VO.";
LABEL_31:
    _os_log_impl(&dword_26686A000, v49, v50, v52, v51, 2u);
    MEMORY[0x26D5E3300](v51, -1, -1);
LABEL_32:

    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_266966A40;
  *(v22 + 32) = v21;
  v23 = one-time initialization token for siriContacts;
  v24 = v21;
  if (v23 != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.siriContacts);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = OUTLINED_FUNCTION_30();
    *v28 = 0;
    _os_log_impl(&dword_26686A000, v26, v27, "#Views Constructed snippet for iOS VF/VO.", v28, 2u);
    MEMORY[0x26D5E3300](v28, -1, -1);
  }

  return v22;
}

uint64_t Views.init(deviceState:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for CATOption();
  MEMORY[0x28223BE20](v4 - 8);
  type metadata accessor for ContactsLabelCATs(0);
  static CATOption.defaultMode.getter();
  *a2 = CATWrapper.__allocating_init(options:globals:)();
  return outlined init with take of DeviceState(a1, (a2 + 1));
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Views(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for Views(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
}

unint64_t OUTLINED_FUNCTION_2_26(uint64_t a1, uint64_t a2)
{
  *(v2 - 184) = a1;
  *(v2 - 176) = a2;
  *(v2 - 200) = 45;
  *(v2 - 192) = 0xE100000000000000;
  *(v2 - 216) = 95;
  *(v2 - 208) = 0xE100000000000000;

  return lazy protocol witness table accessor for type String and conformance String();
}

uint64_t OUTLINED_FUNCTION_4_17()
{
  v1 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1((v0 + 8), v1);
  return v1;
}

id SiriMatch.__allocating_init(identifier:fullName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = MEMORY[0x26D5E2470](a3, a4);
  v11 = outlined bridged method (mbnnn) of @objc INObject.init(identifier:display:)(a1, a2, v10, v9);

  outlined bridged method (mbnn) of @objc SiriMatch.fullName.setter(a3, a4, v11);
  return v11;
}

void outlined bridged method (mbnn) of @objc SiriMatch.fullName.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x26D5E2470](a1);

  [a3 setFullName_];
}

uint64_t ModifyContactAttributeViewBuilder.makeViewsForMac()()
{
  v1 = v0;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriContacts);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_26686A000, v3, v4, "[ModifyContactAttributeViewBuilder] Constructing PersonSnippet with all display properties for macOS.", v5, 2u);
    MEMORY[0x26D5E3300](v5, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_266966A40;
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAABPersonSnippet, 0x277D47108);
  v7 = *v1;
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v8 = v7;
  isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
  outlined init with copy of AppUtil((v1 + 12), v11);
  *(v6 + 32) = SAABPersonSnippet.init(contact:attributeType:isMe:appUtil:)(v8, 0, isa, v11);
  return v6;
}

uint64_t ModifyContactAttributeViewBuilder.makeViewsForIOS()()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CATOption();
  MEMORY[0x28223BE20](v6 - 8);
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.siriContacts);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_26686A000, v8, v9, "[ModifyContactAttributeViewBuilder] Constructing PersonSnippet-like CardSnippet for iOS.", v10, 2u);
    MEMORY[0x26D5E3300](v10, -1, -1);
  }

  v11 = *(v1 + 8);
  if (v11 == 6)
  {
    v31 = *(v1 + 16);
    if ((v31 - 1) < 2)
    {
      v32 = *v1;
      v33 = *(v1 + 136);
      OUTLINED_FUNCTION_1_23();
      v71[0] = v33;
      v72 = 0;

      v34 = [v32 nickname];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = CNContact.formattedFullName.getter();
      v40 = v39;
      v41 = [v32 identifier];
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      v45._countAndFlagsBits = v35;
      v45._object = v37;
      v46._countAndFlagsBits = v38;
      v46._object = v40;
      v47._countAndFlagsBits = v42;
      v47._object = v44;
      rawValue = CompactViews.buildCompactSetNickNameView(newNickName:meCardName:meCardContactID:)(v45, v46, v47)._0._rawValue;

LABEL_13:

      goto LABEL_14;
    }

    if (v31 == 3)
    {
      OUTLINED_FUNCTION_1_23();
      type metadata accessor for ContactsLabelCATs(0);
      static CATOption.defaultMode.getter();
      v71[0] = CATWrapper.__allocating_init(options:globals:)();
      v72 = 0;
      type metadata accessor for ContactAttribute();
      v61 = ContactAttribute.__allocating_init(contactAttributeType:identifier:handleLabel:handleValue:ageDateTime:postalAddress:)(9, 0, 0, 0, 0, 0, 0, 0, 0);
      __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
      dispatch thunk of DeviceState.siriLocale.getter();
      v70[5] = Locale.identifier.getter();
      v70[6] = v62;
      v70[3] = 45;
      v70[4] = 0xE100000000000000;
      v70[1] = 95;
      v70[2] = 0xE100000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

      (*(v3 + 8))(v5, v2);
      CompactViews.buildGetAttributeSnippet(handles:contact:contactAttribute:localeString:)();
      v64 = v63;

      outlined destroy of CompactViews(v71);
      if (!v64)
      {
        return MEMORY[0x277D84F90];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v65 = swift_allocObject();
      *(v65 + 16) = xmmword_266966A40;
      *(v65 + 32) = v64;
      return v65;
    }

LABEL_18:
    rawValue = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  if (v11 != 10)
  {
    goto LABEL_18;
  }

  v12 = *(v1 + 16);
  if ((v12 - 1) >= 2)
  {
    if (v12 == 3)
    {
      OUTLINED_FUNCTION_1_23();
      type metadata accessor for ContactsLabelCATs(0);
      static CATOption.defaultMode.getter();
      v71[0] = CATWrapper.__allocating_init(options:globals:)();
      v72 = 0;
      v48 = *(v1 + 24);
      v49 = *(v1 + 32);
      v50 = *v1;
      v51 = CNContact.formattedFullName.getter();
      v53 = v52;
      v54 = [v50 identifier];
      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v56;

      v58.value._countAndFlagsBits = v48;
      v58.value._object = v49;
      v59._countAndFlagsBits = v51;
      v59._object = v53;
      v60._countAndFlagsBits = v55;
      v60._object = v57;
      rawValue = CompactViews.buildCompactForgetRelationshipView(relatedContactName:meCardName:meCardContactID:)(v58, v59, v60)._0._rawValue;
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  v13 = *(v1 + 136);
  OUTLINED_FUNCTION_1_23();
  v71[0] = v13;
  v72 = 0;
  v14 = *(v1 + 24);
  v15 = *(v1 + 32);
  v16 = *v1;

  v17 = CNContact.formattedFullName.getter();
  v19 = v18;
  v20 = *(v1 + 40);
  v21 = *(v1 + 48);
  v22 = [v16 identifier];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26.value._countAndFlagsBits = v14;
  v26.value._object = v15;
  v27._countAndFlagsBits = v17;
  v27._object = v19;
  v28.value._countAndFlagsBits = v20;
  v28.value._object = v21;
  v29._countAndFlagsBits = v23;
  v29._object = v25;
  rawValue = CompactViews.buildCompactSetRelationshipView(relatedContactName:meCardName:relationship:meCardContactID:)(v26, v27, v28, v29)._0._rawValue;

LABEL_14:

  outlined destroy of CompactViews(v71);
LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_266966A40;
  if (rawValue >> 62)
  {
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFCardSection, 0x277D4C238);

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFCardSection, 0x277D4C238);
  }

  v66 = *(v1 + 120);
  v67 = *(v1 + 128);
  __swift_project_boxed_opaque_existential_1((v1 + 96), v66);
  (*(v67 + 8))(v66, v67);
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SACardSnippet, 0x277D47200);
  v68 = static SACardSnippet.makeFromCardSections(cardSections:shouldGenerateAceId:sashBundleId:referencedCommands:)();

  *(v65 + 32) = v68;
  return v65;
}

uint64_t getEnumTagSinglePayload for ModifyContactAttributeViewBuilder(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 144))
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

uint64_t storeEnumTagSinglePayload for ModifyContactAttributeViewBuilder(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_23()
{

  return outlined init with copy of AppUtil(v0 + 96, v1 - 128);
}

BOOL INIntentResolutionResult.isModifyContactAttributeNeedsValue.getter()
{
  type metadata accessor for ModifyContactAttributeModifyNickNameResolutionResult();
  if (swift_dynamicCastClass())
  {
    if (OUTLINED_FUNCTION_0_27() == 1)
    {
      return 0;
    }

    goto LABEL_6;
  }

  type metadata accessor for ModifyContactAttributeModifyRelationshipResolutionResult();
  v0 = swift_dynamicCastClass();
  v1 = OUTLINED_FUNCTION_0_27();
  if (!v0)
  {
    if (v1 == 1 || OUTLINED_FUNCTION_0_27() == 2)
    {
      return 0;
    }

    v2 = 3;
    return OUTLINED_FUNCTION_0_27() != v2;
  }

  if (v1 != 1)
  {
LABEL_6:
    v2 = 2;
    return OUTLINED_FUNCTION_0_27() != v2;
  }

  return 0;
}

id OUTLINED_FUNCTION_0_27()
{

  return [v0 (v1 + 3324)];
}

uint64_t static ContactsLabelCATContainer.modifyConfirmationCATs(from:)()
{
  OUTLINED_FUNCTION_4();
  v0[2] = v1;
  v0[3] = v2;
  v3 = type metadata accessor for ContactsLabelCATContainer.LabelType();
  v0[4] = v3;
  OUTLINED_FUNCTION_1_1(v3);
  v0[5] = v4;
  v0[6] = swift_task_alloc();
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = static ContactsLabelCATContainer.modifyConfirmationCATs(from:);

  return ContactsLabelCATsModern.cancelAsLabel()();
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_16_9();
  v4 = v3;
  OUTLINED_FUNCTION_5_3();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_0();
  *v7 = v6;

  if (v1)
  {

    v4[9] = MEMORY[0x277D84F98];
    v8 = swift_task_alloc();
    v4[10] = v8;
    *v8 = v6;
    OUTLINED_FUNCTION_4_18(v8);

    return ContactsLabelCATsModern.saveAsLabel()();
  }

  else
  {
    v4[8] = v0;
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }
}

{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  (*(v2 + 104))(v1, *MEMORY[0x277D559B0], v3);
  *(v0 + 97) = 2;
  v4 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v6 = v5;
  v7 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v4, v6, v1, isUniquelyReferenced_nonNull_native);

  (*(v2 + 8))(v1, v3);
  *(v0 + 72) = v7;
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  *v9 = v0;
  OUTLINED_FUNCTION_4_18(v9);

  return ContactsLabelCATsModern.saveAsLabel()();
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_16_9();
  v4 = v3;
  OUTLINED_FUNCTION_5_3();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_0();
  *v7 = v6;

  if (v1)
  {
  }

  else
  {
    *(v4 + 88) = v0;
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  (*(v2 + 104))(v1, *MEMORY[0x277D55998], v3);
  *(v0 + 96) = 12;
  v4 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v6 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v4, v6, v1, isUniquelyReferenced_nonNull_native);

  (*(v2 + 8))(v1, v3);
  Dictionary.init(dictionaryLiteral:)();
  ContactsLabelCATContainer.init(labels:localizedAttributeLabels:)();

  OUTLINED_FUNCTION_3();

  return v8();
}

{
  OUTLINED_FUNCTION_41();
  Dictionary.init(dictionaryLiteral:)();
  ContactsLabelCATContainer.init(labels:localizedAttributeLabels:)();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t static ContactsLabelCATContainer.modifyIntentHandledCATs(from:)()
{
  OUTLINED_FUNCTION_4();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = static ContactsLabelCATContainer.modifyIntentHandledCATs(from:);

  return ContactsLabelCATsModern.savedAsLabel()();
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_16_9();
  v4 = v3;
  OUTLINED_FUNCTION_5_3();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_0();
  *v7 = v6;

  if (v1)
  {
  }

  else
  {
    *(v4 + 32) = v0;
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO_SStGMd, &_ss23_ContiguousArrayStorageCy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO_SStGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriContactsCommon0B17LabelCATContainerV0D4TypeO_SStMd, &_s18SiriContactsCommon0B17LabelCATContainerV0D4TypeO_SStMR) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_266966D90;
  v4 = v3 + v2;
  v5 = (v4 + v1[14]);
  v6 = *MEMORY[0x277D559A0];
  v7 = type metadata accessor for ContactsLabelCATContainer.LabelType();
  (*(*(v7 - 8) + 104))(v4, v6, v7);
  *(v0 + 40) = 13;
  *v5 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v5[1] = v8;
  lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType and conformance ContactsLabelCATContainer.LabelType();
  Dictionary.init(dictionaryLiteral:)();
  Dictionary.init(dictionaryLiteral:)();
  ContactsLabelCATContainer.init(labels:localizedAttributeLabels:)();

  OUTLINED_FUNCTION_3();

  return v9();
}

{
  OUTLINED_FUNCTION_41();
  type metadata accessor for ContactsLabelCATContainer.LabelType();
  lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType and conformance ContactsLabelCATContainer.LabelType();
  Dictionary.init(dictionaryLiteral:)();
  Dictionary.init(dictionaryLiteral:)();
  ContactsLabelCATContainer.init(labels:localizedAttributeLabels:)();
  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t static ModifyContactAttributeSnippetModel.from(intent:intentResponse:contactService:attributeToModify:flowState:labelCATs:)()
{
  OUTLINED_FUNCTION_4();
  v0[17] = v1;
  v0[18] = v2;
  v0[15] = v3;
  v0[16] = v4;
  v0[13] = v5;
  v0[14] = v6;
  v0[12] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriContactsCommon14CodableContactVySo9CNContactCGMd, &_s18SiriContactsCommon14CodableContactVySo9CNContactCGMR);
  v0[19] = OUTLINED_FUNCTION_45();
  v0[20] = swift_task_alloc();
  type metadata accessor for ModifyContactAttributeSnippetModel.ModificationType();
  v0[21] = OUTLINED_FUNCTION_45();
  v0[22] = swift_task_alloc();
  v8 = type metadata accessor for ModifyContactAttributeSnippetModel.ContactAttributeToModify();
  v0[23] = v8;
  OUTLINED_FUNCTION_1_1(v8);
  v0[24] = v9;
  v0[25] = OUTLINED_FUNCTION_45();
  v0[26] = swift_task_alloc();
  v10 = type metadata accessor for ContactsSnippetFlowState();
  v0[27] = v10;
  OUTLINED_FUNCTION_1_1(v10);
  v0[28] = v11;
  v0[29] = OUTLINED_FUNCTION_45();
  v0[30] = swift_task_alloc();
  v0[31] = swift_task_alloc();
  v12 = type metadata accessor for ContactsLabelCATContainer();
  v0[32] = v12;
  OUTLINED_FUNCTION_1_1(v12);
  v0[33] = v13;
  v0[34] = OUTLINED_FUNCTION_45();
  v0[35] = swift_task_alloc();
  v0[36] = swift_task_alloc();
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

{
  v6 = *(v0 + 248);
  v7 = *(v0 + 216);
  v8 = *(v0 + 224);
  v9 = *(v0 + 136);
  v10 = *(v8 + 16);
  *(v0 + 296) = v10;
  *(v0 + 304) = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v6, v9, v7);
  v12 = *(v8 + 88);
  v11 = (v8 + 88);
  v13 = v12(v6, v7);
  if (v13 == *MEMORY[0x277D55978])
  {
    (*(*(v0 + 224) + 8))(*(v0 + 248), *(v0 + 216));
    v14 = swift_task_alloc();
    *(v0 + 312) = v14;
    *v14 = v0;
    OUTLINED_FUNCTION_26_9(v14);
    OUTLINED_FUNCTION_10_18();

    return static ContactsLabelCATContainer.modifyConfirmationCATs(from:)();
  }

  if (v13 == *MEMORY[0x277D55970])
  {
    v17 = swift_task_alloc();
    *(v0 + 320) = v17;
    *v17 = v0;
    OUTLINED_FUNCTION_26_9(v17);
    OUTLINED_FUNCTION_10_18();

    return static ContactsLabelCATContainer.modifyIntentHandledCATs(from:)();
  }

  if (v13 == *MEMORY[0x277D55968])
  {
    static ContactsLabelCATContainer.empty.getter();
    v19 = [*(v0 + 104) contactAttributeToModify];
    if (v19 == 6)
    {
      v6 = __swift_project_boxed_opaque_existential_1(*(v0 + 120), *(*(v0 + 120) + 24));
      v30 = OUTLINED_FUNCTION_22_0();
      if (v31(v30))
      {
        OUTLINED_FUNCTION_1_24();
        *(v0 + 40) = &type metadata for InstalledAppsProvider;
        *(v0 + 48) = &protocol witness table for InstalledAppsProvider;
        v33 = [v32 identifier];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        OUTLINED_FUNCTION_22_0();
        AppUtil.buildPunchoutFor(contactIdentifier:)();
        v35 = v34;

        outlined destroy of AppUtil(v0 + 16);
        v36 = OUTLINED_FUNCTION_24_6();
        v37(v36);
        ModifyOperation.asSnippetModelModificationType.getter([v91 modifyOperation], v93);
        type metadata accessor for CNContact(0, &lazy cache variable for type metadata for CNContact, 0x277CBDA58);
        v38 = v4;
        CodableContact.init(wrappedValue:)();
        v102();
        v40 = *(v1 + 16);
        v39 = (v1 + 16);
        v40();
        if (v35)
        {
          type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAUIAppPunchOut, 0x277D479F0);
          v39 = v35;
          SAClientBoundCommand.data.getter();
          OUTLINED_FUNCTION_30_3();
        }

        else
        {
          OUTLINED_FUNCTION_27_6();
        }

        OUTLINED_FUNCTION_5_22();

        (*(v5 + 8))(v39, v2);
        v43 = type metadata accessor for ModifyContactAttributeSnippetModel();
        v44 = v3;
        goto LABEL_45;
      }
    }

    else if (v19 == 10)
    {
      v20 = outlined bridged method (pb) of @objc ModifyContactAttributeIntent.relatedSiriMatches.getter(*(v0 + 104));
      if (v20)
      {
        OUTLINED_FUNCTION_33_1(v20);
        if (v7)
        {
          v21 = MEMORY[0x26D5E29D0](0, v6);
        }

        else
        {
          v21 = v6[4];
        }

        v22 = v21;

        v23 = outlined bridged method (ob) of @objc INObject.identifier.getter(v22);
        v25 = v24;
        if (v24)
        {
          OUTLINED_FUNCTION_21_9();
          v26 = OUTLINED_FUNCTION_17_7();
          v27 = v3(v26);
          if (v11)
          {
          }

          else
          {
            v82 = v27;

            if (v82)
            {
              goto LABEL_35;
            }
          }
        }
      }

      else
      {
        v23 = 0;
        v25 = 0;
      }

      v46 = *(v0 + 112);
      if (v46 && (v47 = [v46 updatedRelationship]) != 0 && (v48 = outlined bridged method (ob) of @objc ContactRelation.relatedFullName.getter(v47), v49))
      {
        v50 = v48;
        v51 = v49;
        type metadata accessor for CNContact(0, &lazy cache variable for type metadata for CNContact, 0x277CBDA58);
        @nonobjc CNContact.init(displayName:handle:)(v50, v51, MEMORY[0x277D84F90]);
      }

      else
      {
        if (one-time initialization token for siriContacts != -1)
        {
          OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
        }

        v52 = type metadata accessor for Logger();
        __swift_project_value_buffer(v52, static Logger.siriContacts);
        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          OUTLINED_FUNCTION_23_1(&dword_26686A000, v56, v57, "ModifyContactAttributeSnippetModel couldn't fetch related contact for display, falling back on empty one");
          MEMORY[0x26D5E3300](v55, -1, -1);
        }

        v58 = [objc_opt_self() emptyContact];
      }

LABEL_35:
      v105 = OUTLINED_FUNCTION_25_6(*(v0 + 120), &type metadata for InstalledAppsProvider);
      v59 = OUTLINED_FUNCTION_22_0();
      v60 = v3(v59);
      if (v60)
      {
        v61 = v60;
        v62 = [v60 identifier];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      OUTLINED_FUNCTION_2_27();
      v64 = v63;

      OUTLINED_FUNCTION_30_6(v65, v66, v67, v68, v69, v70, v71, v72, v83, v84, v86, v88, v89, v91, v93, v95, v97, v98, v100, v102, v104, v23);
      v74 = v73;

      v75 = OUTLINED_FUNCTION_29_5();
      v76(v75);
      ModifyOperation.asSnippetModelModificationType.getter([v85 modifyOperation], v87);
      type metadata accessor for CNContact(0, &lazy cache variable for type metadata for CNContact, 0x277CBDA58);
      CodableContact.init(wrappedValue:)();
      v96(v92, v90, v94);
      v78 = *(v2 + 16);
      v77 = (v2 + 16);
      v78(v101, v103, v99);
      if (v64)
      {
        type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAUIAppPunchOut, 0x277D479F0);
        v79 = v64;
        SAClientBoundCommand.data.getter();

        if (v74)
        {
LABEL_39:
          type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAUIAppPunchOut, 0x277D479F0);
          v77 = v74;
          SAClientBoundCommand.data.getter();
          OUTLINED_FUNCTION_30_3();

LABEL_42:
          OUTLINED_FUNCTION_6_17();

          (*(v5 + 8))(v77, v25);
          outlined destroy of AppUtil(v0 + 56);
          v43 = type metadata accessor for ModifyContactAttributeSnippetModel();
          v44 = v23;
LABEL_45:
          v45 = 0;
LABEL_46:
          __swift_storeEnumTagSinglePayload(v44, v45, 1, v43);
          OUTLINED_FUNCTION_9_14();

          OUTLINED_FUNCTION_3();
          OUTLINED_FUNCTION_10_18();

          __asm { BRAA            X1, X16 }
        }
      }

      else if (v74)
      {
        goto LABEL_39;
      }

      OUTLINED_FUNCTION_27_6();
      goto LABEL_42;
    }

    v41 = OUTLINED_FUNCTION_28_5();
    v42(v41);
    v43 = type metadata accessor for ModifyContactAttributeSnippetModel();
    v44 = v6;
    v45 = 1;
    goto LABEL_46;
  }

  OUTLINED_FUNCTION_10_18();

  return MEMORY[0x2821FDEB8](v28);
}

{
  OUTLINED_FUNCTION_4();
  v1 = *v0;
  OUTLINED_FUNCTION_0();
  *v2 = v1;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  OUTLINED_FUNCTION_4();
  v1 = *v0;
  OUTLINED_FUNCTION_0();
  *v2 = v1;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void static ModifyContactAttributeSnippetModel.from(intent:intentResponse:contactService:attributeToModify:flowState:labelCATs:)()
{
  v9 = [*(v3 + 104) contactAttributeToModify];
  if (v9 == 6)
  {
    v1 = __swift_project_boxed_opaque_existential_1(*(v3 + 120), *(*(v3 + 120) + 24));
    v18 = OUTLINED_FUNCTION_22_0();
    if (v19(v18))
    {
      OUTLINED_FUNCTION_1_24();
      *(v3 + 40) = &type metadata for InstalledAppsProvider;
      *(v3 + 48) = &protocol witness table for InstalledAppsProvider;
      v21 = [v20 identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      OUTLINED_FUNCTION_22_0();
      AppUtil.buildPunchoutFor(contactIdentifier:)();
      v23 = v22;

      outlined destroy of AppUtil(v3 + 16);
      v24 = OUTLINED_FUNCTION_24_6();
      v25(v24);
      ModifyOperation.asSnippetModelModificationType.getter([v79 modifyOperation], v81);
      type metadata accessor for CNContact(0, &lazy cache variable for type metadata for CNContact, 0x277CBDA58);
      v26 = v7;
      CodableContact.init(wrappedValue:)();
      v90();
      v28 = *(v4 + 16);
      v27 = (v4 + 16);
      v28();
      if (v23)
      {
        type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAUIAppPunchOut, 0x277D479F0);
        v27 = v23;
        SAClientBoundCommand.data.getter();
        OUTLINED_FUNCTION_30_3();
      }

      else
      {
        OUTLINED_FUNCTION_27_6();
      }

      OUTLINED_FUNCTION_5_22();

      (*(v8 + 8))(v27, v5);
      v31 = type metadata accessor for ModifyContactAttributeSnippetModel();
      v32 = v6;
      goto LABEL_33;
    }
  }

  else if (v9 == 10)
  {
    v10 = outlined bridged method (pb) of @objc ModifyContactAttributeIntent.relatedSiriMatches.getter(*(v3 + 104));
    if (v10)
    {
      OUTLINED_FUNCTION_33_1(v10);
      if (v0)
      {
        v11 = MEMORY[0x26D5E29D0](0, v1);
      }

      else
      {
        v11 = v1[4];
      }

      v12 = v11;

      v13 = outlined bridged method (ob) of @objc INObject.identifier.getter(v12);
      v15 = v14;
      if (v14)
      {
        OUTLINED_FUNCTION_21_9();
        v16 = OUTLINED_FUNCTION_17_7();
        v17 = v6(v16);
        if (v2)
        {
        }

        else
        {
          v70 = v17;

          if (v70)
          {
            goto LABEL_23;
          }
        }
      }
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    v34 = *(v3 + 112);
    if (v34 && (v35 = [v34 updatedRelationship]) != 0 && (v36 = outlined bridged method (ob) of @objc ContactRelation.relatedFullName.getter(v35), v37))
    {
      v38 = v36;
      v39 = v37;
      type metadata accessor for CNContact(0, &lazy cache variable for type metadata for CNContact, 0x277CBDA58);
      @nonobjc CNContact.init(displayName:handle:)(v38, v39, MEMORY[0x277D84F90]);
    }

    else
    {
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
      }

      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, static Logger.siriContacts);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        OUTLINED_FUNCTION_23_1(&dword_26686A000, v44, v45, "ModifyContactAttributeSnippetModel couldn't fetch related contact for display, falling back on empty one");
        MEMORY[0x26D5E3300](v43, -1, -1);
      }

      v46 = [objc_opt_self() emptyContact];
    }

LABEL_23:
    v93 = OUTLINED_FUNCTION_25_6(*(v3 + 120), &type metadata for InstalledAppsProvider);
    v47 = OUTLINED_FUNCTION_22_0();
    v48 = v6(v47);
    if (v48)
    {
      v49 = v48;
      v50 = [v48 identifier];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    OUTLINED_FUNCTION_2_27();
    v52 = v51;

    OUTLINED_FUNCTION_30_6(v53, v54, v55, v56, v57, v58, v59, v60, v71, v72, v74, v76, v77, v79, v81, v83, v85, v86, v88, v90, v92, v13);
    v62 = v61;

    v63 = OUTLINED_FUNCTION_29_5();
    v64(v63);
    ModifyOperation.asSnippetModelModificationType.getter([v73 modifyOperation], v75);
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for CNContact, 0x277CBDA58);
    CodableContact.init(wrappedValue:)();
    v84(v80, v78, v82);
    v66 = *(v5 + 16);
    v65 = (v5 + 16);
    v66(v89, v91, v87);
    if (v52)
    {
      type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAUIAppPunchOut, 0x277D479F0);
      v67 = v52;
      SAClientBoundCommand.data.getter();

      if (v62)
      {
LABEL_27:
        type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAUIAppPunchOut, 0x277D479F0);
        v65 = v62;
        SAClientBoundCommand.data.getter();
        OUTLINED_FUNCTION_30_3();

LABEL_30:
        OUTLINED_FUNCTION_6_17();

        (*(v8 + 8))(v65, v15);
        outlined destroy of AppUtil(v3 + 56);
        v31 = type metadata accessor for ModifyContactAttributeSnippetModel();
        v32 = v13;
LABEL_33:
        v33 = 0;
LABEL_34:
        __swift_storeEnumTagSinglePayload(v32, v33, 1, v31);
        OUTLINED_FUNCTION_9_14();

        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_10_18();

        __asm { BRAA            X1, X16 }
      }
    }

    else if (v62)
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_27_6();
    goto LABEL_30;
  }

  v29 = OUTLINED_FUNCTION_28_5();
  v30(v29);
  v31 = type metadata accessor for ModifyContactAttributeSnippetModel();
  v32 = v1;
  v33 = 1;
  goto LABEL_34;
}

id @nonobjc CNContact.init(displayName:handle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v4 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5.super.isa = 0;
    goto LABEL_6;
  }

  v4 = MEMORY[0x26D5E2470](a1);

  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

LABEL_6:
  v6 = [swift_getObjCClassFromMetadata() contactWithDisplayName:v4 handleStrings:v5.super.isa];

  return v6;
}

uint64_t ModifyOperation.asSnippetModelModificationType.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 >= 4)
  {
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    v3 = **(&unk_279BD3688 + a1);
    v4 = type metadata accessor for ModifyContactAttributeSnippetModel.ModificationType();
    v5 = *(*(v4 - 8) + 104);

    return v5(a2, v3, v4);
  }

  return result;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  OUTLINED_FUNCTION_0_28();
  if (v9)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo15SAUIAppPunchOutCGMd, &_ss17_NativeDictionaryVySSSo15SAUIAppPunchOutCGMR);
  if (OUTLINED_FUNCTION_32_5())
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    OUTLINED_FUNCTION_14_12();
    if (!v13)
    {
      goto LABEL_14;
    }

    v10 = v12;
  }

  v14 = *v3;
  if (v11)
  {
    v15 = v14[7];
    v16 = *(v15 + 8 * v10);
    *(v15 + 8 * v10) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v10, a2, a3, a1, v14);
  }
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  OUTLINED_FUNCTION_0_28();
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, &_ss17_NativeDictionaryVySSypGMR);
  if (OUTLINED_FUNCTION_32_5())
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    OUTLINED_FUNCTION_14_12();
    if (!v13)
    {
      goto LABEL_14;
    }

    v10 = v12;
  }

  v14 = *v3;
  if (v11)
  {
    v15 = (v14[7] + 32 * v10);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);

    return outlined init with take of Any(a1, v15);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v10, a2, a3, a1, v14);
  }
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  specialized __RawDictionaryStorage.find<A>(_:)();
  OUTLINED_FUNCTION_0_28();
  if (v11)
  {
    __break(1u);
LABEL_12:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVys11AnyHashableVypGMd, &_ss17_NativeDictionaryVys11AnyHashableVypGMR);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v8))
  {
    specialized __RawDictionaryStorage.find<A>(_:)();
    OUTLINED_FUNCTION_14_12();
    if (!v15)
    {
      goto LABEL_12;
    }

    v12 = v14;
  }

  v16 = *v4;
  if (v13)
  {
    v17 = (v16[7] + 32 * v12);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);

    return outlined init with take of Any(a1, v17);
  }

  else
  {
    outlined init with copy of AnyHashable(a2, v19);
    return specialized _NativeDictionary._insert(at:key:value:)(v12, v19, a1, v16);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v26 = a2;
  v9 = type metadata accessor for ContactsLabelCATContainer.LabelType();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  specialized __RawDictionaryStorage.find<A>(_:)();
  OUTLINED_FUNCTION_0_28();
  if (v16)
  {
    __break(1u);
    goto LABEL_11;
  }

  v17 = v14;
  v18 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy18SiriContactsCommon0D17LabelCATContainerV0F4TypeOSSGMd, &_ss17_NativeDictionaryVy18SiriContactsCommon0D17LabelCATContainerV0F4TypeOSSGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v13))
  {
    goto LABEL_5;
  }

  v19 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v18 & 1) != (v20 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v17 = v19;
LABEL_5:
  v21 = *v5;
  if (v18)
  {
    v22 = (v21[7] + 16 * v17);
    v23 = v26;
    *v22 = a1;
    v22[1] = v23;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return specialized _NativeDictionary._insert(at:key:value:)(v17, v12, a1, v26, v21);
  }
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for ContactsLabelCATContainer.LabelType();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

void *outlined bridged method (ob) of @objc ContactRelation.relatedFullName.getter(void *a1)
{
  v1 = a1;
  v2 = [a1 relatedFullName];

  if (!v2)
  {
    return 0;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_30_3();

  return v1;
}

unint64_t lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType and conformance ContactsLabelCATContainer.LabelType()
{
  result = lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType and conformance ContactsLabelCATContainer.LabelType;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType and conformance ContactsLabelCATContainer.LabelType)
  {
    type metadata accessor for ContactsLabelCATContainer.LabelType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType and conformance ContactsLabelCATContainer.LabelType);
  }

  return result;
}

void OUTLINED_FUNCTION_1_24()
{
  v2 = *(v0 + 288);
  *(v1 - 96) = *(v0 + 272);
  *(v1 - 88) = v2;
}

void OUTLINED_FUNCTION_2_27()
{

  AppUtil.buildPunchoutFor(contactIdentifier:)();
}

uint64_t OUTLINED_FUNCTION_5_22()
{
  v5 = v2[34];
  v6 = v2[29];
  v7 = v2[25];
  v8 = v2[21];
  v9 = v2[19];

  return MEMORY[0x2821B7590](v7, v8, v9, v6, v5, v0, v1, 0, v3);
}

uint64_t OUTLINED_FUNCTION_6_17()
{
  v6 = v3[35];
  v7 = v3[30];
  v8 = v3[26];
  v9 = v3[22];
  v10 = v3[20];

  return MEMORY[0x2821B7590](v8, v9, v10, v7, v6, v0, v4, v1, v2);
}

uint64_t OUTLINED_FUNCTION_9_14()
{
  v3 = *(v0 + 152);
  *(v1 - 96) = *(v0 + 160);
  *(v1 - 88) = v3;
}

uint64_t OUTLINED_FUNCTION_21_9()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 120), *(*(v0 + 120) + 24));
}

id OUTLINED_FUNCTION_25_6@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(v4 + 80) = a2;
  *(v4 + 88) = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return v3;
}

void OUTLINED_FUNCTION_30_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{

  AppUtil.buildPunchoutFor(contactIdentifier:)();
}

BOOL OUTLINED_FUNCTION_32_5()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

uint64_t DeviceState.supportsCompactView.getter()
{
  if ((dispatch thunk of DeviceState.isPhone.getter() & 1) != 0 || (OUTLINED_FUNCTION_47_0(), (dispatch thunk of DeviceState.isPad.getter()) || (OUTLINED_FUNCTION_47_0(), (dispatch thunk of DeviceState.isPod.getter())) && (OUTLINED_FUNCTION_47_0(), (dispatch thunk of DeviceState.isCarPlay.getter() & 1) == 0) && (OUTLINED_FUNCTION_47_0(), (dispatch thunk of DeviceState.isCarDNDMode.getter() & 1) == 0))
  {
    OUTLINED_FUNCTION_47_0();
    v0 = dispatch thunk of DeviceState.isXRDevice.getter() ^ 1;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t DeviceState.toSiriKitDeviceState.getter()
{
  type metadata accessor for Locale.Language();
  OUTLINED_FUNCTION_1_0();
  v57 = v1;
  v58 = v0;
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_8();
  v56 = v3 - v2;
  type metadata accessor for Locale();
  OUTLINED_FUNCTION_1_0();
  v53 = v5;
  v54 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8();
  v52 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v55 = &v48 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v59 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - v13;
  type metadata accessor for InputOrigin();
  OUTLINED_FUNCTION_1_0();
  v50 = v16;
  v51 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_8();
  v19 = v18 - v17;
  v49 = type metadata accessor for InteractionType();
  OUTLINED_FUNCTION_1_0();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_8();
  v25 = v24 - v23;
  type metadata accessor for SirikitDeviceState.Builder();
  swift_allocObject();
  SirikitDeviceState.Builder.init()();
  OUTLINED_FUNCTION_0_29();
  v26 = dispatch thunk of DeviceState.isHomePod.getter();
  OUTLINED_FUNCTION_5_23(v26);
  dispatch thunk of SirikitDeviceState.Builder.withIsHomePod(_:)();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_0_29();
  v27 = dispatch thunk of DeviceState.isWatch.getter();
  OUTLINED_FUNCTION_6_18(v27);
  dispatch thunk of SirikitDeviceState.Builder.withIsWatch(_:)();
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_0_29();
  v28 = dispatch thunk of DeviceState.isMac.getter();
  OUTLINED_FUNCTION_5_23(v28);
  dispatch thunk of SirikitDeviceState.Builder.withIsMac(_:)();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_0_29();
  v29 = dispatch thunk of DeviceState.isCarPlay.getter();
  OUTLINED_FUNCTION_6_18(v29);
  dispatch thunk of SirikitDeviceState.Builder.withIsCarPlay(_:)();
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_0_29();
  v30 = dispatch thunk of DeviceState.isCarDNDMode.getter();
  OUTLINED_FUNCTION_5_23(v30);
  dispatch thunk of SirikitDeviceState.Builder.withIsCarDnD(_:)();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_0_29();
  v31 = dispatch thunk of DeviceState.isAppleTV.getter();
  OUTLINED_FUNCTION_6_18(v31);
  dispatch thunk of SirikitDeviceState.Builder.withIsAppleTV(_:)();
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_0_29();
  v32 = dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  OUTLINED_FUNCTION_5_23(v32);
  dispatch thunk of SirikitDeviceState.Builder.withIsTextToSpeechEnabled(_:)();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_0_29();
  v33 = dispatch thunk of DeviceState.isLockedWithPasscode.getter();
  OUTLINED_FUNCTION_6_18(v33);
  dispatch thunk of SirikitDeviceState.Builder.withIsLockedWithPasscode(_:)();
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_0_29();
  v34 = dispatch thunk of DeviceState.isEyesFree.getter();
  OUTLINED_FUNCTION_5_23(v34);
  dispatch thunk of SirikitDeviceState.Builder.withIsEyesFree(_:)();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_0_29();
  v35 = dispatch thunk of DeviceState.isVoiceTriggerEnabled.getter();
  OUTLINED_FUNCTION_6_18(v35);
  dispatch thunk of SirikitDeviceState.Builder.withIsVoiceTriggerEnabled(_:)();
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_0_29();
  v36 = dispatch thunk of DeviceState.interactionType.getter();
  MEMORY[0x26D5E18F0](v36);
  (*(v21 + 8))(v25, v49);
  OUTLINED_FUNCTION_4_19();
  dispatch thunk of SirikitDeviceState.Builder.withInteractionType(print:speak:)();

  OUTLINED_FUNCTION_0_29();
  dispatch thunk of DeviceState.inputOrigin.getter();
  InputOrigin.rawValue.getter();
  (*(v50 + 8))(v19, v51);
  OUTLINED_FUNCTION_4_19();
  dispatch thunk of SirikitDeviceState.Builder.withInputOrigin(print:speak:)();

  v37 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v37);
  dispatch thunk of SirikitDeviceState.Builder.withMultiUserState(_:)();

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_0_29();
  dispatch thunk of DeviceState.userAssignedDeviceName.getter();
  if (!v38)
  {
    static String.EMPTY.getter();
  }

  OUTLINED_FUNCTION_4_19();
  dispatch thunk of SirikitDeviceState.Builder.withUserAssignedDeviceName(print:speak:)();

  OUTLINED_FUNCTION_0_29();
  dispatch thunk of DeviceState.userAssignedDeviceName.getter();
  if (!v39)
  {
    static String.EMPTY.getter();
  }

  OUTLINED_FUNCTION_4_19();
  dispatch thunk of SirikitDeviceState.Builder.withDeviceName(print:speak:)();

  v40 = v52;
  OUTLINED_FUNCTION_0_29();
  dispatch thunk of DeviceState.siriLocale.getter();
  v41 = v56;
  Locale.language.getter();
  (*(v53 + 8))(v40, v54);
  v42 = v55;
  Locale.Language.languageCode.getter();
  (*(v57 + 8))(v41, v58);
  v43 = type metadata accessor for Locale.LanguageCode();
  if (__swift_getEnumTagSinglePayload(v42, 1, v43) == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v42, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    v44 = 1;
    v45 = v59;
  }

  else
  {
    MEMORY[0x26D5DF380]();
    (*(*(v43 - 8) + 8))(v42, v43);
    v45 = v59;
    OUTLINED_FUNCTION_4_19();
    SpeakableString.init(print:speak:)();
    v44 = 0;
  }

  __swift_storeEnumTagSinglePayload(v45, v44, 1, v37);
  dispatch thunk of SirikitDeviceState.Builder.withSiriLocale(_:)();

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v45, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v46 = dispatch thunk of SirikitDeviceState.Builder.build()();

  return v46;
}

uint64_t OUTLINED_FUNCTION_7_10()
{
}

uint64_t OUTLINED_FUNCTION_8_12()
{
}

uint64_t static Signpost.begin(_:)()
{
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  v0 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_2_28();
  os_signpost(_:dso:log:name:signpostID:)();
  v1 = type metadata accessor for Signpost.OpenSignpost(0);
  return OUTLINED_FUNCTION_3_13(v1);
}

Swift::Void __swiftcall Signpost.OpenSignpost.end()()
{
  static os_signpost_type_t.end.getter();
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  type metadata accessor for Signpost.OpenSignpost(0);

  os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t one-time initialization function for contactsLog()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static Signpost.contactsLog = result;
  return result;
}

uint64_t type metadata accessor for Signpost.OpenSignpost(uint64_t a1)
{
  result = type metadata singleton initialization cache for Signpost.OpenSignpost;
  if (!type metadata singleton initialization cache for Signpost.OpenSignpost)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id static Signpost.contactsLog.getter()
{
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  v1 = static Signpost.contactsLog;

  return v1;
}

uint64_t static Signpost.beginEnabled(_:)()
{
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  v0 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v11 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_2_28();
  os_signpost(_:dso:log:name:signpostID:_:_:)(v1, v2, v3, v4, v5, v6, v7, v8, 19, 2, v11);
  v9 = type metadata accessor for Signpost.OpenSignpost(0);
  return OUTLINED_FUNCTION_3_13(v9);
}

_BYTE *storeEnumTagSinglePayload for Signpost(_BYTE *result, int a2, int a3)
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

uint64_t type metadata completion function for Signpost.OpenSignpost(uint64_t a1)
{
  result = type metadata accessor for OSSignpostID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SignpostName(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SignpostName(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

void OUTLINED_FUNCTION_0_30(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = 2;
}

uint64_t OUTLINED_FUNCTION_3_13(uint64_t result)
{
  v5 = v1 + *(result + 20);
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t ContactsPhoneHandle.Builder.withPhoneLabel(print:speak:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v5);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;

  SpeakableString.init(print:speak:)();
  v9 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  v10 = OBJC_IVAR____TtCC19SiriContactsIntents19ContactsPhoneHandle7Builder_phoneLabel;
  swift_beginAccess();
  outlined assign with take of SpeakableString?(v8, v4 + v10);
  swift_endAccess();
}

uint64_t ContactsPhoneHandle.Builder.__deallocating_deinit()
{
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC19SiriContactsIntents19ContactsPhoneHandle7Builder_phoneLabel);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC19SiriContactsIntents19ContactsPhoneHandle7Builder_phoneHandle);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t ContactsPhoneHandle.init(builder:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v3);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v4);
  v6 = &v10[-v5];
  *(v1 + 16) = 0;
  v7 = OBJC_IVAR____TtCC19SiriContactsIntents19ContactsPhoneHandle7Builder_phoneLabel;
  swift_beginAccess();
  outlined init with copy of SpeakableString?(a1 + v7, v1 + OBJC_IVAR____TtC19SiriContactsIntents19ContactsPhoneHandle_phoneLabel);
  v8 = OBJC_IVAR____TtCC19SiriContactsIntents19ContactsPhoneHandle7Builder_phoneHandle;
  swift_beginAccess();
  outlined init with copy of SpeakableString?(a1 + v8, v6);

  outlined init with take of SpeakableString?(v6, v1 + OBJC_IVAR____TtC19SiriContactsIntents19ContactsPhoneHandle_phoneHandle);
  return v1;
}

uint64_t ContactsPhoneHandle.getProperty(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = OUTLINED_FUNCTION_18_0(v7);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  v14 = a1 == 0x62614C656E6F6870 && a2 == 0xEA00000000006C65;
  if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    outlined init with copy of SpeakableString?(v3 + OBJC_IVAR____TtC19SiriContactsIntents19ContactsPhoneHandle_phoneLabel, v13);
    v15 = type metadata accessor for SpeakableString();
    if (__swift_getEnumTagSinglePayload(v13, 1, v15) == 1)
    {
      v16 = v13;
LABEL_8:
      result = outlined destroy of SpeakableString?(v16);
LABEL_9:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    *(a3 + 24) = v15;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(*(v15 - 8) + 32))(boxed_opaque_existential_1, v13, v15);
  }

  else
  {
    if (a1 != 0x6E6148656E6F6870 || a2 != 0xEB00000000656C64)
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    outlined init with copy of SpeakableString?(v3 + OBJC_IVAR____TtC19SiriContactsIntents19ContactsPhoneHandle_phoneHandle, v11);
    v20 = type metadata accessor for SpeakableString();
    if (__swift_getEnumTagSinglePayload(v11, 1, v20) == 1)
    {
      v16 = v11;
      goto LABEL_8;
    }

    *(a3 + 24) = v20;
    v21 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(*(v20 - 8) + 32))(v21, v11, v20);
  }
}

uint64_t ContactsPhoneHandle.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ContactsPhoneHandle.CodingKeys.init(rawValue:), v2);

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

uint64_t ContactsPhoneHandle.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6E6148656E6F6870;
  }

  else
  {
    return 0x62614C656E6F6870;
  }
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ContactsPhoneHandle.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = ContactsPhoneHandle.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ContactsPhoneHandle.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = ContactsPhoneHandle.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ContactsPhoneHandle.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = ContactsPhoneHandle.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ContactsPhoneHandle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsPhoneHandle.CodingKeys and conformance ContactsPhoneHandle.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ContactsPhoneHandle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsPhoneHandle.CodingKeys and conformance ContactsPhoneHandle.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContactsPhoneHandle.deinit()
{
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC19SiriContactsIntents19ContactsPhoneHandle_phoneLabel);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC19SiriContactsIntents19ContactsPhoneHandle_phoneHandle);
  return v0;
}

uint64_t ContactsPhoneHandle.__deallocating_deinit()
{
  ContactsPhoneHandle.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void type metadata completion function for ContactsPhoneHandle(uint64_t a1)
{
  type metadata accessor for SpeakableString?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t ContactsPhoneHandle.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriContactsIntents0E11PhoneHandleC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy19SiriContactsIntents0E11PhoneHandleC10CodingKeysOGMR);
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ContactsPhoneHandle.CodingKeys and conformance ContactsPhoneHandle.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = OBJC_IVAR____TtC19SiriContactsIntents19ContactsPhoneHandle_phoneLabel;
  v17 = 0;
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_0_31();
  lazy protocol witness table accessor for type ContactsPhoneHandle and conformance ContactsPhoneHandle(v12, v13, MEMORY[0x277D55C50]);
  OUTLINED_FUNCTION_2_29(v3 + v11, &v17);
  if (!v2)
  {
    v16 = 1;
    OUTLINED_FUNCTION_2_29(v3 + OBJC_IVAR____TtC19SiriContactsIntents19ContactsPhoneHandle_phoneHandle, &v16);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t ContactsPhoneHandle.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ContactsPhoneHandle.init(from:)(a1);
  return v2;
}

void type metadata completion function for ContactsPhoneHandle.Builder(uint64_t a1)
{
  type metadata accessor for SpeakableString?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id *ContactsPhoneHandle.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = OUTLINED_FUNCTION_18_0(v4);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v21 = v20 - v9;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriContactsIntents0E11PhoneHandleC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy19SiriContactsIntents0E11PhoneHandleC10CodingKeysOGMR);
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v12);
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ContactsPhoneHandle.CodingKeys and conformance ContactsPhoneHandle.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {

    type metadata accessor for ContactsPhoneHandle(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20[1] = v11;
    v13 = type metadata accessor for SpeakableString();
    v24 = 0;
    OUTLINED_FUNCTION_0_31();
    lazy protocol witness table accessor for type ContactsPhoneHandle and conformance ContactsPhoneHandle(v14, v15, MEMORY[0x277D55C60]);
    v16 = v21;
    OUTLINED_FUNCTION_6_19(v13, &v24, v22);
    outlined init with take of SpeakableString?(v16, v1 + OBJC_IVAR____TtC19SiriContactsIntents19ContactsPhoneHandle_phoneLabel);
    v23 = 1;
    OUTLINED_FUNCTION_6_19(v13, &v23, v22);
    v18 = OUTLINED_FUNCTION_1_25();
    v19(v18);
    outlined init with take of SpeakableString?(v8, v1 + OBJC_IVAR____TtC19SiriContactsIntents19ContactsPhoneHandle_phoneHandle);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v1;
}

uint64_t protocol witness for Decodable.init(from:) in conformance ContactsPhoneHandle@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = ContactsPhoneHandle.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ContactsPhoneHandle and conformance ContactsPhoneHandle(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type ContactsPhoneHandle.CodingKeys and conformance ContactsPhoneHandle.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ContactsPhoneHandle.CodingKeys and conformance ContactsPhoneHandle.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsPhoneHandle.CodingKeys and conformance ContactsPhoneHandle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsPhoneHandle.CodingKeys and conformance ContactsPhoneHandle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsPhoneHandle.CodingKeys and conformance ContactsPhoneHandle.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsPhoneHandle.CodingKeys and conformance ContactsPhoneHandle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsPhoneHandle.CodingKeys and conformance ContactsPhoneHandle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsPhoneHandle.CodingKeys and conformance ContactsPhoneHandle.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsPhoneHandle.CodingKeys and conformance ContactsPhoneHandle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsPhoneHandle.CodingKeys and conformance ContactsPhoneHandle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsPhoneHandle.CodingKeys and conformance ContactsPhoneHandle.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsPhoneHandle.CodingKeys and conformance ContactsPhoneHandle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsPhoneHandle.CodingKeys and conformance ContactsPhoneHandle.CodingKeys);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContactsPhoneHandle.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_2_29(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_6_19(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

uint64_t DialogExecutionResult.responseViewIDForManifest.getter()
{
  v1 = [v0 dialog];
  type metadata accessor for DialogElement();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (specialized Array._getCount()())
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x26D5E29D0](0, v2);
    }

    else
    {
      v3 = *(v2 + 32);
    }

    v4 = v3;

    v5 = [v4 id];
  }

  else
  {

    v5 = [v0 catId];
  }

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

uint64_t TemplatingResult.merge(with:behaviorAfterSpeaking:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a2;
  v21 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow21BehaviorAfterSpeakingOSgMd, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v19 - v5;
  v7 = type metadata accessor for BehaviorAfterSpeaking();
  v19[0] = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v19 - v11;
  v13 = TemplatingResult.templateIdentifier.getter();
  v19[1] = v14;
  v19[2] = v13;
  v15 = TemplatingResult.sections.getter();
  outlined init with copy of URL?(a1, v12, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  v16 = type metadata accessor for TemplatingResult();
  if (__swift_getEnumTagSinglePayload(v12, 1, v16) == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v12, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
    v17 = MEMORY[0x277D84F90];
  }

  else
  {
    v17 = TemplatingResult.sections.getter();
    (*(*(v16 - 8) + 8))(v12, v16);
  }

  v22 = v15;
  specialized Array.append<A>(contentsOf:)(v17);
  outlined init with copy of URL?(v20, v6, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMd, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMR);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    TemplatingResult.behaviorAfterSpeaking.getter();
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {
      outlined destroy of UsoEntity_common_Person.DefinedValues?(v6, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMd, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMR);
    }
  }

  else
  {
    (*(v19[0] + 32))(v9, v6, v7);
  }

  return TemplatingResult.init(templateIdentifier:sections:behaviorAfterSpeaking:)();
}

unint64_t type metadata accessor for DialogElement()
{
  result = lazy cache variable for type metadata for DialogElement;
  if (!lazy cache variable for type metadata for DialogElement)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for DialogElement);
  }

  return result;
}

uint64_t GetContactAttributeHandleIntentWithNoOutputStrategy.makeIntentExecutionBehavior(app:intent:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for SiriKitIntentHandler();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](GetContactAttributeHandleIntentWithNoOutputStrategy.makeIntentExecutionBehavior(app:intent:), 0, 0);
}

uint64_t GetContactAttributeHandleIntentWithNoOutputStrategy.makeIntentExecutionBehavior(app:intent:)()
{
  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriContacts);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26686A000, v2, v3, "#GetContactAttributeHandleIntentWithNoOutputStrategy makeIntentExecutionBehavior", v4, 2u);
    MEMORY[0x26D5E3300](v4, -1, -1);
  }

  type metadata accessor for SiriKitIntentExecutionBehavior();
  v5 = one-time initialization token for current;

  if (v5 != -1)
  {
    swift_once();
  }

  v7 = v0[5];
  v6 = v0[6];
  v9 = v0[3];
  v8 = v0[4];
  type metadata accessor for ContactResolver();
  swift_allocObject();
  v10 = ContactResolver.init()();
  v11 = objc_allocWithZone(type metadata accessor for GetContactAttributeIntentHandler(0));

  specialized BaseIntentHandler.init(contactService:contactResolver:)(v12, v10, v11);
  type metadata accessor for GetContactAttributeIntent();
  v13 = v9;
  SiriKitIntentHandler.init<A>(app:intentHandler:intent:)();
  v14 = static SiriKitIntentExecutionBehavior.embeddedIntentHandler(intentHandler:)();
  (*(v7 + 8))(v6, v8);

  v15 = v0[1];

  return v15(v14);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:) in conformance GetContactAttributeHandleIntentWithNoOutputStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  ContactAttributeHandleIntentWithNoOutputStrategy = type metadata accessor for GetContactAttributeHandleIntentWithNoOutputStrategy();
  *v8 = v4;
  v8[1] = ContactsLabelCATs.address();

  return MEMORY[0x2821B9C68](a1, a2, ContactAttributeHandleIntentWithNoOutputStrategy, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentWithNoOutputStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  ContactAttributeHandleIntentWithNoOutputStrategy = type metadata accessor for GetContactAttributeHandleIntentWithNoOutputStrategy();
  *v8 = v4;
  v8[1] = ContactsLabelCATs.address();

  return MEMORY[0x2821B9C70](a1, a2, ContactAttributeHandleIntentWithNoOutputStrategy, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:) in conformance GetContactAttributeHandleIntentWithNoOutputStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  ContactAttributeHandleIntentWithNoOutputStrategy = type metadata accessor for GetContactAttributeHandleIntentWithNoOutputStrategy();
  *v8 = v4;
  v8[1] = ContactsLabelCATs.address();

  return MEMORY[0x2821B9C48](a1, a2, ContactAttributeHandleIntentWithNoOutputStrategy, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeIntentHandledResponse(rchRecord:) in conformance GetContactAttributeHandleIntentWithNoOutputStrategy(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  ContactAttributeHandleIntentWithNoOutputStrategy = type metadata accessor for GetContactAttributeHandleIntentWithNoOutputStrategy();
  v7 = lazy protocol witness table accessor for type GetContactAttributeHandleIntentWithNoOutputStrategy and conformance GetContactAttributeHandleIntentWithNoOutputStrategy(&lazy protocol witness table cache variable for type GetContactAttributeHandleIntentWithNoOutputStrategy and conformance GetContactAttributeHandleIntentWithNoOutputStrategy, &protocol conformance descriptor for GetContactAttributeHandleIntentWithNoOutputStrategy);
  *v5 = v2;
  v5[1] = ContactsLabelCATs.address();

  return MEMORY[0x2821B9FD8](a1, a2, ContactAttributeHandleIntentWithNoOutputStrategy, v7);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:) in conformance GetContactAttributeHandleIntentWithNoOutputStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  ContactAttributeHandleIntentWithNoOutputStrategy = type metadata accessor for GetContactAttributeHandleIntentWithNoOutputStrategy();
  *v8 = v4;
  v8[1] = ContactsLabelCATs.address();

  return MEMORY[0x2821B9C60](a1, a2, ContactAttributeHandleIntentWithNoOutputStrategy, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:) in conformance GetContactAttributeHandleIntentWithNoOutputStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  ContactAttributeHandleIntentWithNoOutputStrategy = type metadata accessor for GetContactAttributeHandleIntentWithNoOutputStrategy();
  *v8 = v4;
  v8[1] = ContactsLabelCATs.address();

  return MEMORY[0x2821B9C58](a1, a2, ContactAttributeHandleIntentWithNoOutputStrategy, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:) in conformance GetContactAttributeHandleIntentWithNoOutputStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  ContactAttributeHandleIntentWithNoOutputStrategy = type metadata accessor for GetContactAttributeHandleIntentWithNoOutputStrategy();
  *v8 = v4;
  v8[1] = ContactsLabelCATs.email();

  return MEMORY[0x2821B9C38](a1, a2, ContactAttributeHandleIntentWithNoOutputStrategy, a4);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance GetContactAttributeHandleIntentWithNoOutputStrategy(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance GetContactAttributeHandleIntentWithNoOutputStrategy;

  return GetContactAttributeHandleIntentWithNoOutputStrategy.makeIntentExecutionBehavior(app:intent:)(a1, a2);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance GetContactAttributeHandleIntentWithNoOutputStrategy(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t lazy protocol witness table accessor for type GetContactAttributeHandleIntentWithNoOutputStrategy and conformance GetContactAttributeHandleIntentWithNoOutputStrategy(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GetContactAttributeHandleIntentWithNoOutputStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ContactNLIntent.ContactPostalAddressField.rawValue.getter(char a1)
{
  result = 2037672291;
  switch(a1)
  {
    case 1:
      result = 0x726F62686769656ELL;
      break;
    case 2:
      result = 0x6F436C6174736F70;
      break;
    case 3:
      result = 0x65636E69766F7270;
      break;
    case 4:
      result = 0x746565727473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t ContactNLIntent.ContactIntentAddressAttributes.rawValue.getter(char a1)
{
  result = 0x73736572646461;
  switch(a1)
  {
    case 1:
      v3 = 544829025;
      return v3 | 0x7264646100000000;
    case 2:
      v3 = 544045415;
      return v3 | 0x7264646100000000;
    case 3:
      v4 = 1701670760;
      goto LABEL_7;
    case 4:
      v4 = 1802661751;
LABEL_7:
      result = v4 | 0x6464612000000000;
      break;
    case 5:
      result = 0x61206C6F6F686373;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t ContactNLIntent.ContactIntentDateDescription.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x7961646874726962;
  }

  else
  {
    return 0x73726576696E6E61;
  }
}

unint64_t ContactNLIntent.ContactPostalAddressField.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ContactNLIntent.ContactPostalAddressField.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t ContactNLIntent.NLContactAttributeLabel.rawValue.getter(char a1)
{
  result = 1701670760;
  switch(a1)
  {
    case 1:
      result = 1802661751;
      break;
    case 2:
      result = 0x656C69626F6DLL;
      break;
    case 3:
      result = OUTLINED_FUNCTION_0_32();
      break;
    case 4:
      result = 1852399981;
      break;
    case 5:
      result = 0x726568746FLL;
      break;
    case 6:
      result = 0x6C6F6F686373;
      break;
    case 7:
      result = 0x7972616D697270;
      break;
    case 8:
      result = OUTLINED_FUNCTION_1_26();
      break;
    case 9:
      result = OUTLINED_FUNCTION_2_30();
      break;
    case 10:
      result = 0x6F69646172;
      break;
    case 11:
      result = 7174503;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t ContactNLIntent.NLContactTypeValue.attributeTypeAndLabel()(unsigned __int8 a1)
{
  if (a1 > 0x23u)
  {
    return 0;
  }

  else
  {
    return qword_266969528[a1];
  }
}

uint64_t ContactNLIntent.NLContactTypeValue.rawValue.getter(char a1)
{
  result = 0x6F687020656D6F68;
  switch(a1)
  {
    case 1:
      v3 = 1802661751;
      return v3 | 0x6F68702000000000;
    case 2:
      v7 = 0x656C69626F6DLL;
      return v7 & 0xFFFFFFFFFFFFLL | 0x7020000000000000;
    case 3:
      return OUTLINED_FUNCTION_0_32();
    case 4:
      v3 = 1852399981;
      return v3 | 0x6F68702000000000;
    case 5:
      v8 = 1701670760;
      return v8 | 0x7861662000000000;
    case 6:
      v8 = 1802661751;
      return v8 | 0x7861662000000000;
    case 7:
      return 0x616620726568746FLL;
    case 8:
      v4 = 1701273968;
      goto LABEL_35;
    case 9:
      v6 = 0x20726568746FLL;
      return v6 & 0xFFFFFFFFFFFFLL | 0x6870000000000000;
    case 10:
      return 0x656E6F6870;
    case 11:
      v7 = 0x6C6F6F686373;
      return v7 & 0xFFFFFFFFFFFFLL | 0x7020000000000000;
    case 12:
      return OUTLINED_FUNCTION_2_30();
    case 13:
      return 0x6E6F687020726163;
    case 14:
      v6 = 0x206F69646172;
      return v6 & 0xFFFFFFFFFFFFLL | 0x6870000000000000;
    case 15:
      return 0xD000000000000012;
    case 16:
      v5 = 0x72616D697270;
      goto LABEL_27;
    case 17:
      return 0xD000000000000014;
    case 18:
      return 0xD000000000000014;
    case 19:
      return 0x6B6361626C6C6163;
    case 20:
      v3 = 1852076905;
      return v3 | 0x6F68702000000000;
    case 21:
      v5 = 0x747420646474;
LABEL_27:
      result = v5 & 0xFFFFFFFFFFFFLL | 0x2079000000000000;
      break;
    case 22:
      result = 1870031222;
      break;
    case 23:
      result = 0x6F72616C63;
      break;
    case 24:
      result = 7170420;
      break;
    case 25:
      result = 26991;
      break;
    case 26:
      result = 0x6C657478656ELL;
      break;
    case 27:
      v4 = 1634167905;
LABEL_35:
      result = v4 & 0xFFFF0000FFFFFFFFLL | 0x7200000000;
      break;
    case 28:
      result = 0x65746D6F63726573;
      break;
    case 29:
      result = 1870032493;
      break;
    case 30:
      result = 0x6C69616D65;
      break;
    case 31:
      result = 0x616D65206B726F77;
      break;
    case 32:
      result = OUTLINED_FUNCTION_1_26();
      break;
    case 33:
      result = 0x6D6520726568746FLL;
      break;
    case 34:
      result = 0x65206C6F6F686373;
      break;
    case 35:
      result = 0x7264646120796E61;
      break;
    default:
      return result;
  }

  return result;
}

SiriContactsIntents::ContactNLIntent::NLContactTypeValue_optional __swiftcall ContactNLIntent.NLContactTypeValue.init(rawValue:)(Swift::String rawValue)
{
  v1 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v1 >= 0x24)
  {
    return 36;
  }

  else
  {
    return v1;
  }
}

uint64_t getEnumTagSinglePayload for ContactNLIntent.NLContactTypeValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDD)
  {
    if (a2 + 35 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 35) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 36;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x24;
  v5 = v6 - 36;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContactNLIntent.NLContactTypeValue(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 35 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 35) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDC)
  {
    v6 = ((a2 - 221) >> 8) + 1;
    *result = a2 + 35;
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
          *result = a2 + 35;
        }

        break;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue()
{
  result = lazy protocol witness table cache variable for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue;
  if (!lazy protocol witness table cache variable for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue;
  if (!lazy protocol witness table cache variable for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue;
  if (!lazy protocol witness table cache variable for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue;
  if (!lazy protocol witness table cache variable for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue;
  if (!lazy protocol witness table cache variable for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue;
  if (!lazy protocol witness table cache variable for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue);
  }

  return result;
}

SiriContactsIntents::ContactNLIntent::NLContactTypeValue_optional protocol witness for RawRepresentable.init(rawValue:) in conformance ContactNLIntent.NLContactTypeValue@<W0>(Swift::String *a1@<X0>, SiriContactsIntents::ContactNLIntent::NLContactTypeValue_optional *a2@<X8>)
{
  result.value = ContactNLIntent.NLContactTypeValue.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ContactNLIntent.NLContactTypeValue@<X0>(uint64_t *a1@<X8>)
{
  result = ContactNLIntent.NLContactTypeValue.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for static TerminalNodeValueType.fromIntentNodeValue(_:) in conformance ContactNLIntent.NLContactTypeValue(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue();
  v5 = lazy protocol witness table accessor for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue();
  v6 = lazy protocol witness table accessor for type ContactNLIntent.NLContactTypeValue and conformance ContactNLIntent.NLContactTypeValue();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t lazy protocol witness table accessor for type [ContactNLIntent.NLContactTypeValue] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [ContactNLIntent.NLContactTypeValue] and conformance [A];
  if (!lazy protocol witness table cache variable for type [ContactNLIntent.NLContactTypeValue] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriContactsIntents15ContactNLIntentO18NLContactTypeValueOGMd, &_sSay19SiriContactsIntents15ContactNLIntentO18NLContactTypeValueOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ContactNLIntent.NLContactTypeValue] and conformance [A]);
  }

  return result;
}

uint64_t ConfirmationViewBuilder.makeViewsForWatch()()
{
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.siriContacts);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_26686A000, v1, v2, "[ConfirmationViewBuilder] Constructing no views for Watch, an unsupported idiom.", v3, 2u);
    MEMORY[0x26D5E3300](v3, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

uint64_t ConfirmationViewBuilder.makeViewsForMac()(const char *a1)
{
  v3 = v1;
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
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26686A000, v5, v6, a1, v7, 2u);
    MEMORY[0x26D5E3300](v7, -1, -1);
  }

  v8 = v3[6];
  v9 = *v3;

  return GenericViews.buildConfirmationViewForMacAndCarPlay(contactAttributeType:)(v9, v8);
}

uint64_t ConfirmationViewBuilder.makeViewsForIOS()()
{
  v1 = *(v0 + 48);
  v5[4] = &type metadata for InstalledAppsProvider;
  v5[5] = &protocol witness table for InstalledAppsProvider;
  v5[0] = v1;
  v5[6] = 0;

  CompactViews.buildCompactConfirmationView(attributeType:)();
  v3 = v2;
  outlined destroy of CompactViews(v5);
  return v3;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for ConfirmationViewBuilder(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for ConfirmationViewBuilder(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static GetContactAttributeSnippetModel.from(_:requestedAttribute:handlesToReturn:deviceState:mockGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for ContactsSnippetFlowState();
  v6[8] = v7;
  OUTLINED_FUNCTION_1_1(v7);
  v6[9] = v8;
  v6[10] = OUTLINED_FUNCTION_10_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriContactsCommon14CodableContactVySo9CNContactCGMd, &_s18SiriContactsCommon14CodableContactVySo9CNContactCGMR);
  OUTLINED_FUNCTION_18_0(v9);
  v6[11] = OUTLINED_FUNCTION_10_0();
  v10 = type metadata accessor for UUID();
  v6[12] = v10;
  OUTLINED_FUNCTION_1_1(v10);
  v6[13] = v11;
  v6[14] = OUTLINED_FUNCTION_10_0();
  ContactAttributeSnippet = type metadata accessor for GetContactAttributeSnippetModel.DisplayAttribute.AttributeType();
  OUTLINED_FUNCTION_18_0(ContactAttributeSnippet);
  v6[15] = OUTLINED_FUNCTION_10_0();
  v13 = type metadata accessor for GetContactAttributeSnippetModel.DisplayAttribute();
  v6[16] = v13;
  OUTLINED_FUNCTION_1_1(v13);
  v6[17] = v14;
  v6[18] = OUTLINED_FUNCTION_45();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v15);
  v6[23] = OUTLINED_FUNCTION_10_0();
  v16 = type metadata accessor for DateComponents();
  v6[24] = v16;
  OUTLINED_FUNCTION_1_1(v16);
  v6[25] = v17;
  v6[26] = OUTLINED_FUNCTION_10_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_18_0(v18);
  v6[27] = OUTLINED_FUNCTION_45();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_18_0(v19);
  v6[30] = OUTLINED_FUNCTION_10_0();
  v20 = type metadata accessor for Locale();
  v6[31] = v20;
  OUTLINED_FUNCTION_1_1(v20);
  v6[32] = v21;
  v6[33] = OUTLINED_FUNCTION_10_0();
  v22 = type metadata accessor for ContactsLabelCATContainer();
  v6[34] = v22;
  OUTLINED_FUNCTION_1_1(v22);
  v6[35] = v23;
  v6[36] = OUTLINED_FUNCTION_45();
  v6[37] = swift_task_alloc();
  v24 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_18_0(v24);
  v6[38] = OUTLINED_FUNCTION_10_0();
  ContactDirectInvocationsModel = type metadata accessor for GetContactDirectInvocationsModel();
  v6[39] = ContactDirectInvocationsModel;
  OUTLINED_FUNCTION_1_1(ContactDirectInvocationsModel);
  v6[40] = v26;
  v6[41] = OUTLINED_FUNCTION_45();
  v6[42] = swift_task_alloc();
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v27, v28, v29);
}

uint64_t static GetContactAttributeSnippetModel.from(_:requestedAttribute:handlesToReturn:deviceState:mockGlobals:)()
{
  v3 = *(v0 + 256);
  v2 = *(v0 + 264);
  v4 = *(v0 + 248);
  v5 = *(v0 + 48);
  v6 = *(v0 + 32);
  GetContactDirectInvocationsModel.init(contact:)(*(v0 + 24));
  type metadata accessor for ContactsLabelCATs(0);
  static CATOption.defaultMode.getter();
  *(v0 + 344) = CATWrapper.__allocating_init(options:globals:)();
  static ContactsLabelCATContainer.empty.getter();
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v7 = v2;
  *(v0 + 352) = Locale.identifier.getter();
  *(v0 + 360) = v8;
  (*(v3 + 8))(v2, v4);
  if ([v6 contactAttributeType] == 4)
  {
    v9 = *(v0 + 56);
    v11 = *(v0 + 24);
    v10 = *(v0 + 32);
    v12 = [v10 ageDateTime];
    *(v0 + 368) = v12;
    type metadata accessor for ContactsAgeInfo();
    v13 = v9;
    v14 = ContactsAgeInfo.__allocating_init(contact:contactAttribute:mockGlobals:)(v11, v10, v9);
    *(v0 + 376) = v14;
    if (v12)
    {
      v15 = [v12 dateComponents];
      if (v15)
      {
        v16 = v15;
        static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

        v17 = 0;
      }

      else
      {
        v17 = 1;
      }

      v68 = *(v0 + 224);
      v67 = *(v0 + 232);
      v69 = *(v0 + 192);
      __swift_storeEnumTagSinglePayload(v68, v17, 1, v69);
      outlined init with take of DateComponents?(v68, v67);
      if (__swift_getEnumTagSinglePayload(v67, 1, v69))
      {
        v70 = *(v0 + 232);
        v71 = &_s10Foundation14DateComponentsVSgMd;
        v72 = &_s10Foundation14DateComponentsVSgMR;
LABEL_52:
        outlined destroy of ResponseMode?(v70, v71, v72);
        goto LABEL_53;
      }

      v73 = *(v0 + 232);
      v74 = *(v0 + 240);
      v76 = *(v0 + 200);
      v75 = *(v0 + 208);
      v77 = *(v0 + 192);
      (*(v76 + 16))(v75, v73, v77);
      outlined destroy of ResponseMode?(v73, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
      DateComponents.date.getter();
      (*(v76 + 8))(v75, v77);
      v78 = type metadata accessor for Date();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v74, 1, v78);
      v80 = *(v0 + 240);
      if (EnumTagSinglePayload == 1)
      {
        v71 = &_s10Foundation4DateVSgMd;
        v72 = &_s10Foundation4DateVSgMR;
        v70 = *(v0 + 240);
        goto LABEL_52;
      }

      Date.timeIntervalSince1970.getter();
      OUTLINED_FUNCTION_52();
      (*(v104 + 8))(v80, v78);
      if ([v12 qualifier] == 2 || objc_msgSend(v12, sel_qualifier) == 1)
      {
        if (v14)
        {
          if (*(v14 + 64))
          {
            v105 = *(v0 + 184);

            dispatch thunk of DialogCalendar.dateDescriptive.getter();

            v106 = type metadata accessor for SpeakableString();
            v107 = __swift_getEnumTagSinglePayload(v105, 1, v106);
            v108 = *(v0 + 184);
            if (v107 != 1)
            {
              v81 = SpeakableString.print.getter();
              v85 = v112;
              OUTLINED_FUNCTION_52();
              (*(v113 + 8))(v108, v106);
              goto LABEL_57;
            }

            outlined destroy of ResponseMode?(*(v0 + 184), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
          }

          v85 = 0;
          v81 = 0;
LABEL_57:
          if ((*(v14 + 40) & 1) == 0)
          {
            type metadata accessor for DialogDuration();
            v86 = DialogDuration.init(_:mockGlobals:)();
            v87 = v86;
LABEL_80:
            *(v0 + 400) = v86;
            *(v0 + 408) = v87;
            *(v0 + 384) = v85;
            *(v0 + 392) = v81;
            type metadata accessor for ContactsLabelCATsModern(0);

            static CATOption.defaultMode.getter();
            *(v0 + 416) = CATWrapperSimple.__allocating_init(options:globals:)();
            v109 = swift_task_alloc();
            *(v0 + 424) = v109;
            *v109 = v0;
            v109[1] = static GetContactAttributeSnippetModel.from(_:requestedAttribute:handlesToReturn:deviceState:mockGlobals:);
            OUTLINED_FUNCTION_53_2();

            return ContactsLabelCATsModern.ageUnitsAsLabels(age:)(v110);
          }

          v86 = *(v14 + 56);
          if (!v86)
          {
            v86 = *(v14 + 48);
            if (!v86)
            {
              v86 = *(v14 + 24);
            }
          }

LABEL_79:
          v87 = 0;
          goto LABEL_80;
        }

        v85 = 0;
        v81 = 0;
LABEL_78:
        v86 = 0;
        goto LABEL_79;
      }
    }

LABEL_53:
    v81 = [*(v0 + 24) birthday];
    v82 = *(v0 + 216);
    v83 = *(v0 + 192);
    if (v81)
    {
      static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

      __swift_storeEnumTagSinglePayload(v82, 0, 1, v83);
      outlined destroy of ResponseMode?(v82, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
      v81 = CNContact.formattedBirthdateString.getter();
      v85 = v84;
      if (!v14)
      {
        goto LABEL_78;
      }

      goto LABEL_57;
    }

    __swift_storeEnumTagSinglePayload(*(v0 + 216), 1, 1, *(v0 + 192));
    outlined destroy of ResponseMode?(v82, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    v85 = 0;
    if (v14)
    {
      goto LABEL_57;
    }

    goto LABEL_78;
  }

  if (OUTLINED_FUNCTION_74_0() == 5)
  {
    v18 = *(v0 + 24);
    type metadata accessor for ContactsLabelCATsModern(0);
    static CATOption.defaultMode.getter();
    *(v0 + 440) = CATWrapperSimple.__allocating_init(options:globals:)();
    *(v0 + 448) = CNContact.toDialogPerson(useConversationalName:)(0);
    type metadata accessor for ContactsBirthdayInfo(0);
    v19 = ContactsBirthdayInfo.__allocating_init(contact:shouldAccountForYearless:)(v18, 1);
    if (v19)
    {
      v20 = *(v19 + 24);
    }

    else
    {
      v20 = 0;
    }

    *(v0 + 456) = v20;
    CNContact.isBirthdayToday.getter();
    v88 = swift_task_alloc();
    *(v0 + 464) = v88;
    *v88 = v0;
    v88[1] = static GetContactAttributeSnippetModel.from(_:requestedAttribute:handlesToReturn:deviceState:mockGlobals:);
    OUTLINED_FUNCTION_53_2();

    return ContactsLabelCATsModern.modernBirthdayAsLabels(contact:birthdayInfo:isToday:)(v89, v90, v91);
  }

  if (OUTLINED_FUNCTION_74_0() == 6)
  {
    v7 = [*(v0 + 24) nickname];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_92();

    v21 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v21 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      v2 = *(v0 + 160);
      v7 = *(v0 + 112);
      v22 = *(v0 + 120);
      v23 = *(v0 + 96);
      v24 = *(v0 + 104);
      v25 = *(v0 + 32);
      v26 = [*(v0 + 24) nickname];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      static GetContactAttributeSnippetModel.DisplayAttribute.AttributeType.from(_:)([v25 contactAttributeType], v22);
      UUID.init()();
      UUID.uuidString.getter();
      OUTLINED_FUNCTION_29_6();
      v27 = *(v24 + 8);
      v1 = (v24 + 8);
      v27(v7, v23);
      OUTLINED_FUNCTION_90_0();
      GetContactAttributeSnippetModel.DisplayAttribute.init(id:displayLabel:displayValue:type:)();
      v28 = MEMORY[0x277D84F90];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_27_3();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v28 = v116;
      }

      v6 = *(v28 + 16);
      OUTLINED_FUNCTION_34_4();
      if (v30)
      {
        OUTLINED_FUNCTION_1_27(v29);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v28 = v117;
      }

      OUTLINED_FUNCTION_78_0();
      *(v28 + 16) = v7;
      OUTLINED_FUNCTION_5_24();
      v32 = OUTLINED_FUNCTION_39_4(v31);
      v33(v32);
      goto LABEL_17;
    }
  }

  if (OUTLINED_FUNCTION_74_0() != 7 && OUTLINED_FUNCTION_74_0() != 9 && OUTLINED_FUNCTION_74_0() != 8 && OUTLINED_FUNCTION_74_0() != 6 && OUTLINED_FUNCTION_74_0() != 11)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_17:
    result = specialized Array._getCount()();
    if (!result)
    {
      v93 = *(v0 + 336);
      v94 = *(v0 + 320);
      v118 = *(v0 + 312);
      v119 = *(v0 + 328);
      v95 = *(v0 + 24);

      type metadata accessor for CNContact();
      OUTLINED_FUNCTION_48_2(v95);
      v96 = OUTLINED_FUNCTION_21_10();
      v97(v96);
      (*(v94 + 16))(v119, v93, v118);
      v98 = OUTLINED_FUNCTION_42_1();
      v99(v98);
      GetContactAttributeSnippetModel.init(attributes:contact:flowState:directInvocationsModel:labelCATs:)();

      v100 = OUTLINED_FUNCTION_31_4();
      v101(v100);
      (*(v94 + 8))(v93, v118);

      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_53_2();

      __asm { BRAA            X1, X16 }
    }

    if (result >= 1)
    {
      v35 = *(v0 + 40);
      v121 = v35 & 0xC000000000000001;
      v120 = (v35 + 32);
      v122 = *(v0 + 136);
      while (1)
      {
        if (v121)
        {
          OUTLINED_FUNCTION_81();
        }

        else
        {
          v36 = *v120;
        }

        OUTLINED_FUNCTION_37_5(v36);
        v37 = OUTLINED_FUNCTION_41_5();
        OUTLINED_FUNCTION_19_9(v37);

        if (OUTLINED_FUNCTION_66() == 3 && (v38 = [v1 postalAddress]) != 0)
        {
          v39 = v38;
          v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
          v7 = OUTLINED_FUNCTION_88_0(v39);
          CNLabeledValue<>.formattedString.getter();
          OUTLINED_FUNCTION_29_6();
        }

        else
        {
          outlined bridged method (pb) of @objc ContactAttribute.handleValue.getter(v1);
          OUTLINED_FUNCTION_29_6();
        }

        v1 = v1;
        v40 = outlined bridged method (ob) of @objc INObject.identifier.getter(v1);
        if (v41)
        {
          OUTLINED_FUNCTION_30_3();
        }

        else
        {
          OUTLINED_FUNCTION_50_3(v40);
          v7 = v6;
          UUID.uuidString.getter();
          OUTLINED_FUNCTION_30_3();
          v42 = OUTLINED_FUNCTION_55_3();
          v43(v42);
        }

        OUTLINED_FUNCTION_80();
        static GetContactAttributeSnippetModel.DisplayAttribute.AttributeType.from(_:)([v1 contactAttributeType], v5);
        GetContactAttributeSnippetModel.DisplayAttribute.init(id:displayLabel:displayValue:type:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_27_3();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v28 = v47;
        }

        OUTLINED_FUNCTION_67_0();
        if (v30)
        {
          OUTLINED_FUNCTION_1_27(v44);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v28 = v48;
        }

        OUTLINED_FUNCTION_49_2();
        *(v28 + 16) = v7;
        v45 = OUTLINED_FUNCTION_13_9(v28 + ((*(v122 + 80) + 32) & ~*(v122 + 80)));
        v46(v45);
      }
    }

    __break(1u);
    return result;
  }

  v49 = *(v0 + 112);
  v50 = *(v0 + 120);
  v51 = *(v0 + 96);
  v52 = *(v0 + 104);
  v53 = OUTLINED_FUNCTION_74_0();
  static GetContactAttributeSnippetModel.DisplayAttribute.AttributeType.from(_:)(v53, v50);
  UUID.init()();
  UUID.uuidString.getter();
  OUTLINED_FUNCTION_29_6();
  (*(v52 + 8))(v49, v51);
  OUTLINED_FUNCTION_90_0();
  GetContactAttributeSnippetModel.DisplayAttribute.init(id:displayLabel:displayValue:type:)();
  v54 = MEMORY[0x277D84F90];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_27_3();
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v54 = v114;
  }

  v55 = *(v54 + 16);
  if (v55 >= *(v54 + 24) >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v54 = v115;
  }

  *(v0 + 480) = v54;
  OUTLINED_FUNCTION_20_7();
  *(v54 + 16) = v55 + 1;
  OUTLINED_FUNCTION_5_24();
  v58(v54 + v56 + *(v57 + 40) * v55);
  v59 = type metadata accessor for ContactsLabelCATsModern(0);
  OUTLINED_FUNCTION_85(v59);
  v60 = OUTLINED_FUNCTION_89_0();
  v61 = OUTLINED_FUNCTION_33_3(v60);
  OUTLINED_FUNCTION_76_0(v61);
  v62 = swift_task_alloc();
  v63 = OUTLINED_FUNCTION_77_0(v62);
  *v63 = v64;
  OUTLINED_FUNCTION_0_33(v63);
  OUTLINED_FUNCTION_53_2();

  return ContactsLabelCATsModern.quickActionButtonLabels(contact:)(v65);
}

uint64_t static GetContactAttributeSnippetModel.from(_:requestedAttribute:handlesToReturn:deviceState:mockGlobals:)(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  *v5 = *v2;

  if (v1)
  {
  }

  else
  {

    *(v4 + 432) = a1;
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  v4 = *v2;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  *v5 = *v2;

  if (v1)
  {
  }

  else
  {

    *(v4 + 472) = a1;
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  v4 = *v2;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  *v5 = *v2;

  if (v1)
  {
  }

  else
  {

    *(v4 + 512) = a1;
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void (*static GetContactAttributeSnippetModel.ageUnitLabel(from:given:)(uint64_t a1, uint64_t a2))(uint64_t)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  v107[4] = v4;
  v107[5] = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v107[3] = v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v107[2] = v107 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v10 = OUTLINED_FUNCTION_18_0(v9);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v107 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v107 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v107 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = v107 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = (v107 - v27);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = (v107 - v30);
  MEMORY[0x28223BE20](v29);
  v33 = v107 - v32;
  if (!a1 || !a2)
  {
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Logger.siriContacts);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_26686A000, v43, v44, "#GetContactAttributeSnippetModel ageUnitLabel invalid params, returning", v45, 2u);
      MEMORY[0x26D5E3300](v45, -1, -1);
    }

    goto LABEL_13;
  }

  v107[1] = a1;

  v34 = dispatch thunk of DialogDuration.valueInYears.getter();
  if ((v35 & 1) == 0)
  {
    v107[0] = a2;
    OUTLINED_FUNCTION_44_2(v34);
    if (v46 == v47)
    {
      dispatch thunk of DialogDuration.years.getter();
      v50 = type metadata accessor for SpeakableString();
      OUTLINED_FUNCTION_2_0(v33);
      if (v51)
      {
        outlined destroy of ResponseMode?(v33, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      }

      else
      {
        SpeakableString.print.getter();
        OUTLINED_FUNCTION_6_20();
        v56 = (*(v55 + 8))(v33, v50);
        OUTLINED_FUNCTION_43_4(v56);
        CharacterSet.inverted.getter();
        v57 = OUTLINED_FUNCTION_17_8();
        v31(v57);
        lazy protocol witness table accessor for type String and conformance String();
        StringProtocol.components(separatedBy:)();
        v58 = OUTLINED_FUNCTION_68_1();
        v31(v58);

        if (*(v50 + 16))
        {
          OUTLINED_FUNCTION_75();

LABEL_59:
          v81 = 18;
LABEL_86:
          OUTLINED_FUNCTION_83_0(v81);
LABEL_87:

          return v31;
        }
      }

      OUTLINED_FUNCTION_40_2();
      goto LABEL_59;
    }

    OUTLINED_FUNCTION_96();
    if (v46 != v47)
    {
      goto LABEL_4;
    }

    dispatch thunk of DialogDuration.years.getter();
    v48 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_2_0(v31);
    if (v51)
    {
      outlined destroy of ResponseMode?(v31, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    }

    else
    {
      SpeakableString.print.getter();
      OUTLINED_FUNCTION_6_20();
      v70 = (*(v69 + 8))(v31, v48);
      OUTLINED_FUNCTION_43_4(v70);
      CharacterSet.inverted.getter();
      v71 = OUTLINED_FUNCTION_17_8();
      v31(v71);
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol.components(separatedBy:)();
      v72 = OUTLINED_FUNCTION_68_1();
      v31(v72);

      if (*(v48 + 16))
      {
        OUTLINED_FUNCTION_75();

LABEL_71:
        v81 = 17;
        goto LABEL_86;
      }
    }

    OUTLINED_FUNCTION_40_2();
    goto LABEL_71;
  }

LABEL_4:
  v36 = dispatch thunk of DialogDuration.valueInMonths.getter();
  if (v37)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_44_2(v36);
  if (v46 == v47)
  {
    dispatch thunk of DialogDuration.months.getter();
    v53 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_2_0(v28);
    if (v54)
    {
      outlined destroy of ResponseMode?(v28, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    }

    else
    {
      v62 = SpeakableString.print.getter();
      v31 = v63;
      OUTLINED_FUNCTION_52();
      (*(v64 + 8))(v28, v53);
      v108 = v62;
      v109 = v31;
      v65 = static CharacterSet.decimalDigits.getter();
      OUTLINED_FUNCTION_86(v65);
      v66 = OUTLINED_FUNCTION_94();
      v28(v66);
      v67 = lazy protocol witness table accessor for type String and conformance String();
      OUTLINED_FUNCTION_87(v67, MEMORY[0x277D837D0], v67);
      v68 = OUTLINED_FUNCTION_32_6();
      v28(v68);

      if (*(v53 + 16))
      {
        OUTLINED_FUNCTION_75();

LABEL_66:
        v81 = 6;
        goto LABEL_86;
      }
    }

    OUTLINED_FUNCTION_40_2();
    goto LABEL_66;
  }

  OUTLINED_FUNCTION_96();
  if (v46 == v47)
  {
    dispatch thunk of DialogDuration.months.getter();
    v49 = type metadata accessor for SpeakableString();
    if (__swift_getEnumTagSinglePayload(v25, 1, v49) == 1)
    {
      outlined destroy of ResponseMode?(v25, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    }

    else
    {
      v82 = SpeakableString.print.getter();
      v31 = v83;
      OUTLINED_FUNCTION_52();
      v84 = OUTLINED_FUNCTION_22_0();
      v85(v84);
      v108 = v82;
      v109 = v31;
      v86 = static CharacterSet.decimalDigits.getter();
      OUTLINED_FUNCTION_86(v86);
      v87 = OUTLINED_FUNCTION_94();
      v49(v87);
      v88 = lazy protocol witness table accessor for type String and conformance String();
      OUTLINED_FUNCTION_87(v88, MEMORY[0x277D837D0], v88);
      v89 = OUTLINED_FUNCTION_32_6();
      v49(v89);

      if (*(v25 + 2))
      {
        OUTLINED_FUNCTION_75();

LABEL_79:
        v81 = 5;
        goto LABEL_86;
      }
    }

    OUTLINED_FUNCTION_40_2();
    goto LABEL_79;
  }

LABEL_5:
  v38 = dispatch thunk of DialogDuration.valueInWeeks.getter();
  if (v39)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_44_2(v38);
  if (v46 == v47)
  {
    dispatch thunk of DialogDuration.weeks.getter();
    v60 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_2_0(v22);
    if (v61)
    {
      outlined destroy of ResponseMode?(v22, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    }

    else
    {
      SpeakableString.print.getter();
      OUTLINED_FUNCTION_6_20();
      v76 = (*(v75 + 8))(v22, v60);
      v77 = OUTLINED_FUNCTION_43_4(v76);
      OUTLINED_FUNCTION_86(v77);
      v78 = OUTLINED_FUNCTION_17_8();
      v31(v78);
      v79 = lazy protocol witness table accessor for type String and conformance String();
      OUTLINED_FUNCTION_87(v79, MEMORY[0x277D837D0], v79);
      v80 = OUTLINED_FUNCTION_32_6();
      v31(v80);

      if (*(v60 + 16))
      {
        OUTLINED_FUNCTION_75();

LABEL_74:
        v81 = 16;
        goto LABEL_86;
      }
    }

    OUTLINED_FUNCTION_40_2();
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_96();
  if (v46 == v47)
  {
    dispatch thunk of DialogDuration.weeks.getter();
    v52 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_2_0(v19);
    if (v51)
    {
      outlined destroy of ResponseMode?(v19, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    }

    else
    {
      SpeakableString.print.getter();
      OUTLINED_FUNCTION_6_20();
      v97 = (*(v96 + 8))(v19, v52);
      v98 = OUTLINED_FUNCTION_43_4(v97);
      OUTLINED_FUNCTION_86(v98);
      v99 = OUTLINED_FUNCTION_17_8();
      v31(v99);
      v100 = lazy protocol witness table accessor for type String and conformance String();
      OUTLINED_FUNCTION_87(v100, MEMORY[0x277D837D0], v100);
      v101 = OUTLINED_FUNCTION_32_6();
      v31(v101);

      if (*(v52 + 16))
      {
        OUTLINED_FUNCTION_75();

LABEL_85:
        v81 = 15;
        goto LABEL_86;
      }
    }

    OUTLINED_FUNCTION_40_2();
    goto LABEL_85;
  }

LABEL_6:
  v40 = dispatch thunk of DialogDuration.valueInDays.getter();
  if ((v41 & 1) == 0)
  {
    OUTLINED_FUNCTION_44_2(v40);
    if (v46 == v47)
    {
      dispatch thunk of DialogDuration.days.getter();
      v73 = type metadata accessor for SpeakableString();
      OUTLINED_FUNCTION_2_0(v16);
      if (v74)
      {
        outlined destroy of ResponseMode?(v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      }

      else
      {
        SpeakableString.print.getter();
        OUTLINED_FUNCTION_6_20();
        v91 = (*(v90 + 8))(v16, v73);
        v92 = OUTLINED_FUNCTION_43_4(v91);
        OUTLINED_FUNCTION_86(v92);
        v93 = OUTLINED_FUNCTION_17_8();
        v31(v93);
        v94 = lazy protocol witness table accessor for type String and conformance String();
        OUTLINED_FUNCTION_87(v94, MEMORY[0x277D837D0], v94);
        v95 = OUTLINED_FUNCTION_32_6();
        v31(v95);

        if (*(v73 + 16))
        {
          OUTLINED_FUNCTION_75();

LABEL_82:
          v81 = 4;
          goto LABEL_86;
        }
      }

      OUTLINED_FUNCTION_40_2();
      goto LABEL_82;
    }

    OUTLINED_FUNCTION_96();
    if (v46 != v47)
    {
      goto LABEL_7;
    }

    dispatch thunk of DialogDuration.days.getter();
    v59 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_2_0(v13);
    if (v51)
    {
      outlined destroy of ResponseMode?(v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    }

    else
    {
      SpeakableString.print.getter();
      OUTLINED_FUNCTION_6_20();
      v103 = (*(v102 + 8))(v13, v59);
      OUTLINED_FUNCTION_43_4(v103);
      CharacterSet.inverted.getter();
      v104 = OUTLINED_FUNCTION_17_8();
      v31(v104);
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol.components(separatedBy:)();
      v105 = OUTLINED_FUNCTION_68_1();
      v31(v105);

      if (*(v59 + 16))
      {
        OUTLINED_FUNCTION_75();

LABEL_91:
        OUTLINED_FUNCTION_83_0(3);
        goto LABEL_87;
      }
    }

    OUTLINED_FUNCTION_40_2();
    goto LABEL_91;
  }

LABEL_7:

LABEL_13:
  OUTLINED_FUNCTION_40_2();
  return v31;
}

uint64_t static GetContactAttributeSnippetModel.DisplayAttribute.AttributeType.from(_:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 >= 0xC)
  {
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    v3 = **(&unk_279BD36A8 + a1);
    type metadata accessor for GetContactAttributeSnippetModel.DisplayAttribute.AttributeType();
    OUTLINED_FUNCTION_52();
    v6 = *(v5 + 104);

    return v6(a2, v3, v4);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_31()
{
  v4 = v0[18];
  v3 = v0[19];
  *(v1 - 128) = v0[20];
  *(v1 - 120) = v3;
  v5 = v0[14];
  v6 = v0[15];
  *(v1 - 112) = v4;
  *(v1 - 104) = v6;
  *(v1 - 96) = v5;
}

uint64_t OUTLINED_FUNCTION_4_20(uint64_t result)
{
  v3 = *(v1 + 136);
  *(v2 - 120) = *(v1 + 40) & 0xC000000000000001;
  *(v2 - 112) = v3;
  *(v2 - 104) = result;
  *(v2 - 128) = v3 + 32;
  return result;
}

void OUTLINED_FUNCTION_8_13()
{
  v4 = v1[18];
  v3 = v1[19];
  *(v2 - 128) = v0;
  *(v2 - 120) = v3;
  v5 = v1[14];
  v6 = v1[15];
  *(v2 - 112) = v4;
  *(v2 - 104) = v6;
  *(v2 - 96) = v5;
}

uint64_t OUTLINED_FUNCTION_18_8()
{

  return GetContactAttributeSnippetModel.DisplayAttribute.init(id:displayLabel:displayValue:type:)();
}

void *OUTLINED_FUNCTION_19_9(uint64_t a1)
{

  return LabelMapper.localizedLabel(handleLabel:localeString:type:)(v5, v1, v3, v2, a1, v4);
}

uint64_t OUTLINED_FUNCTION_23_10()
{

  return GetContactAttributeSnippetModel.init(attributes:contact:flowState:directInvocationsModel:labelCATs:)();
}

uint64_t OUTLINED_FUNCTION_33_3(uint64_t a1)
{
  *(v1 + 488) = a1;

  return CNContact.toDialogPerson(useConversationalName:)(0);
}

uint64_t OUTLINED_FUNCTION_36_4(uint64_t result)
{
  v3 = *(v1 + 136);
  *(v2 - 120) = *(v1 + 40) & 0xC000000000000001;
  *(v2 - 112) = v3;
  *(v2 - 104) = result;
  *(v2 - 128) = v3 + 32;
  return result;
}

uint64_t OUTLINED_FUNCTION_37_5(void *a1)
{

  return outlined bridged method (pb) of @objc ContactAttribute.handleLabel.getter(a1);
}

id OUTLINED_FUNCTION_41_5()
{

  return [v0 contactAttributeType];
}

uint64_t OUTLINED_FUNCTION_43_4(uint64_t a1)
{
  *(v3 - 96) = v1;
  *(v3 - 88) = v2;

  return static CharacterSet.decimalDigits.getter();
}

uint64_t OUTLINED_FUNCTION_48_2(uint64_t a1)
{

  return CodableContact.init(wrappedValue:)();
}

void OUTLINED_FUNCTION_49_2()
{
}

uint64_t OUTLINED_FUNCTION_50_3(uint64_t a1)
{

  return UUID.init()();
}

uint64_t OUTLINED_FUNCTION_58_1(uint64_t a1)
{

  return GetContactAttributeSnippetModel.DisplayAttribute.init(id:displayLabel:displayValue:type:)();
}

id OUTLINED_FUNCTION_59_2()
{
  v2 = *(v0 + 24);

  return [v2 nickname];
}

uint64_t OUTLINED_FUNCTION_61_0()
{

  return GetContactAttributeSnippetModel.DisplayAttribute.init(id:displayLabel:displayValue:type:)();
}

id OUTLINED_FUNCTION_62()
{
  v3 = *(v0 + 32);

  return [v3 (v1 + 1614)];
}

uint64_t OUTLINED_FUNCTION_63_0(uint64_t a1)
{
  *(v1 - 96) = a1;
}

id OUTLINED_FUNCTION_65_1()
{
  v3 = *(v0 + 32);

  return [v3 (v1 + 1614)];
}

id OUTLINED_FUNCTION_66()
{

  return [v1 (v0 + 1614)];
}

id OUTLINED_FUNCTION_71_1()
{
  *(v2 - 88) = *(v0 + 160);
  v4 = *(v0 + 24);

  return [v4 (v1 + 3554)];
}

id OUTLINED_FUNCTION_72_0()
{
  v4 = v0[20];
  *(v2 - 96) = v0[12];
  *(v2 - 88) = v4;
  v5 = v0[3];

  return [v5 (v1 + 3554)];
}

void *OUTLINED_FUNCTION_73_0(uint64_t a1)
{

  return LabelMapper.localizedLabel(handleLabel:localeString:type:)(v4, v5, v2, v1, a1, v3);
}

id OUTLINED_FUNCTION_74_0()
{
  v3 = *(v0 + 32);

  return [v3 (v1 + 1614)];
}

uint64_t OUTLINED_FUNCTION_75()
{
}

void OUTLINED_FUNCTION_81()
{

  JUMPOUT(0x26D5E29D0);
}

id OUTLINED_FUNCTION_82_0()
{

  return [v0 contactAttributeType];
}

uint64_t OUTLINED_FUNCTION_83_0@<X0>(char a1@<W8>)
{
  *(v1 - 96) = a1;

  return dispatch thunk of LabelExecutionResult.subscript.getter();
}

id OUTLINED_FUNCTION_84_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v28 = *(a26 + 8 * v26);

  return v28;
}

uint64_t OUTLINED_FUNCTION_85(uint64_t a1)
{

  return static CATOption.defaultMode.getter();
}

uint64_t OUTLINED_FUNCTION_86(uint64_t a1)
{

  return CharacterSet.inverted.getter();
}

uint64_t OUTLINED_FUNCTION_87(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return StringProtocol.components(separatedBy:)();
}

id OUTLINED_FUNCTION_88_0(void *a1)
{

  return CNLabeledValue<>.init(address:)(a1);
}

uint64_t OUTLINED_FUNCTION_89_0()
{

  return CATWrapperSimple.__allocating_init(options:globals:)();
}

void OUTLINED_FUNCTION_97()
{
  v2 = *(v0 + 368);
}

uint64_t OUTLINED_FUNCTION_98(uint64_t a1)
{

  return GetContactAttributeSnippetModel.DisplayAttribute.init(id:displayLabel:displayValue:type:)();
}

uint64_t OUTLINED_FUNCTION_99()
{
}

void OUTLINED_FUNCTION_101()
{
}

SiriContactsIntents::SiriKitContactUnsupportedReason_optional __swiftcall SiriKitContactUnsupportedReason.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 8)
  {
    return 7;
  }

  else
  {
    return (0x605040302010007uLL >> (8 * rawValue));
  }
}

SiriContactsIntents::SiriKitContactUnsupportedReason_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SiriKitContactUnsupportedReason@<W0>(Swift::Int *a1@<X0>, SiriContactsIntents::SiriKitContactUnsupportedReason_optional *a2@<X8>)
{
  result.value = SiriKitContactUnsupportedReason.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SiriKitContactUnsupportedReason@<X0>(uint64_t *a1@<X8>)
{
  result = SiriKitContactUnsupportedReason.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

void *BaseIntentHandler.init(contactService:contactResolver:)(void *a1, void *a2)
{
  v5 = *v2;
  v6 = *MEMORY[0x277D85000];
  v7 = *MEMORY[0x277D85000] & *v2;
  *(v2 + direct field offset for BaseIntentHandler.$__lazy_storage_$_meCard) = 1;
  outlined init with copy of DeviceState(a1, v2 + direct field offset for BaseIntentHandler.contactService);
  outlined init with copy of DeviceState(a2, v2 + direct field offset for BaseIntentHandler.contactResolver);
  *(v2 + direct field offset for BaseIntentHandler.passedPrereqs) = 0;
  v8 = *((v6 & v5) + 0x70);
  v9 = *(v7 + 96);
  v19[0] = *(v7 + 80);
  v19[1] = v9;
  v20 = v8;
  v10 = type metadata accessor for BaseIntentHandler(0, v19);
  v21.receiver = v2;
  v21.super_class = v10;
  v11 = objc_msgSendSuper2(&v21, sel_init);
  v12 = one-time initialization token for siriContacts;
  v13 = v11;
  if (v12 != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.siriContacts);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_26686A000, v15, v16, "Constructed ContactsIntentHandler.", v17, 2u);
    MEMORY[0x26D5E3300](v17, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v13;
}

id BaseIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BaseIntentHandler.__deallocating_deinit()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x70);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x60);
  v5[0] = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v5[1] = v2;
  v6 = v1;
  v3 = type metadata accessor for BaseIntentHandler(0, v5);
  v7.receiver = v0;
  v7.super_class = v3;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void @objc BaseIntentHandler.__ivar_destroyer(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_0Tm((a1 + direct field offset for BaseIntentHandler.contactService));
  __swift_destroy_boxed_opaque_existential_0Tm((a1 + direct field offset for BaseIntentHandler.contactResolver));
  v2 = *(a1 + direct field offset for BaseIntentHandler.$__lazy_storage_$_meCard);

  outlined consume of CNContact??(v2);
}

void outlined consume of CNContact??(id a1)
{
  if (a1 != 1)
  {
  }
}

id specialized BaseIntentHandler.init(contactService:contactResolver:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return specialized BaseIntentHandler.init(contactService:contactResolver:)(a1, a2, a3, a4, a5, a6, a7, &_s19SiriContactsIntents17BaseIntentHandlerCyAA019GetContactAttributeE0CAA0ghiE8ResponseCAA0ghiA23MatchesResolutionResultCGMd, &_s19SiriContactsIntents17BaseIntentHandlerCyAA019GetContactAttributeE0CAA0ghiE8ResponseCAA0ghiA23MatchesResolutionResultCGMR);
}

{
  return specialized BaseIntentHandler.init(contactService:contactResolver:)(a1, a2, a3, a4, a5, a6, a7, &_s19SiriContactsIntents17BaseIntentHandlerCyAA010GetContactE0CAA0ghE8ResponseCAA0ghA23MatchesResolutionResultCGMd, &_s19SiriContactsIntents17BaseIntentHandlerCyAA010GetContactE0CAA0ghE8ResponseCAA0ghA23MatchesResolutionResultCGMR);
}

{
  return specialized BaseIntentHandler.init(contactService:contactResolver:)(a1, a2, a3, a4, a5, a6, a7, &_s19SiriContactsIntents17BaseIntentHandlerCyAA022ModifyContactAttributeE0CAA0ghiE8ResponseCAA0ghi7RelatedA23MatchesResolutionResultCGMd, &_s19SiriContactsIntents17BaseIntentHandlerCyAA022ModifyContactAttributeE0CAA0ghiE8ResponseCAA0ghi7RelatedA23MatchesResolutionResultCGMR);
}

id specialized BaseIntentHandler.init(contactService:contactResolver:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9)
{
  v28[3] = a4;
  v28[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v27[3] = a5;
  v27[4] = a7;
  v17 = __swift_allocate_boxed_opaque_existential_1(v27);
  (*(*(a5 - 8) + 32))(v17, a2, a5);
  *&a3[direct field offset for BaseIntentHandler.$__lazy_storage_$_meCard] = 1;
  outlined init with copy of DeviceState(v28, &a3[direct field offset for BaseIntentHandler.contactService]);
  outlined init with copy of DeviceState(v27, &a3[direct field offset for BaseIntentHandler.contactResolver]);
  a3[direct field offset for BaseIntentHandler.passedPrereqs] = 0;
  v26.receiver = a3;
  v26.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(a8, a9);
  v18 = objc_msgSendSuper2(&v26, sel_init);
  v19 = one-time initialization token for siriContacts;
  v20 = v18;
  if (v19 != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.siriContacts);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_26686A000, v22, v23, "Constructed ContactsIntentHandler.", v24, 2u);
    MEMORY[0x26D5E3300](v24, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  return v20;
}

uint64_t getEnumTagSinglePayload for SiriKitContactUnsupportedReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SiriKitContactUnsupportedReason(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type SiriKitContactUnsupportedReason and conformance SiriKitContactUnsupportedReason()
{
  result = lazy protocol witness table cache variable for type SiriKitContactUnsupportedReason and conformance SiriKitContactUnsupportedReason;
  if (!lazy protocol witness table cache variable for type SiriKitContactUnsupportedReason and conformance SiriKitContactUnsupportedReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriKitContactUnsupportedReason and conformance SiriKitContactUnsupportedReason);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WatchViews(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for WatchViews(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t WatchViews.buildGetSnippet(contact:localeString:)(void *a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for Signpost.OpenSignpost(0);
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  v9 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  v10 = static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_18_2(v10);
  v58 = v8;
  v11 = v8 + *(v4 + 20);
  *v11 = "BuildGetSnippetWatchOS";
  *(v11 + 8) = 22;
  *(v11 + 16) = 2;
  v63 = WatchViews.buildContactHeader(contact:)(a1);
  v12 = [a1 phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = Array<A>.toContactAttributes.getter(v13, v14, v15, v16, v17, v18, v19, v20, v55, v9, v58);

  v22 = CNContact.formattedFullName.getter();
  v24 = v23;
  v25 = [a1 identifier];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v29 = WatchViews.buildPhoneAttributeSnippet(phoneNumbers:formattedFullName:localeString:contactIdentifier:)(v21, v22, v24, a2, a3, v26, v28);

  if (v29)
  {
    result = outlined bridged method (pb) of @objc SASTItemGroup.templateItems.getter(v29);
    if (!result)
    {
      __break(1u);
      goto LABEL_20;
    }

    specialized Array.append<A>(contentsOf:)(result);
  }

  v31 = [a1 emailAddresses];
  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v40 = Array<A>.toContactAttributes.getter(v32, v33, v34, v35, v36, v37, v38, v39, v56, v57, v59);

  v41 = CNContact.formattedFullName.getter();
  v43 = WatchViews.buildEmailAttributeSnippet(emailAddresses:formattedFullName:localeString:)(v40, v41, v42, a2, a3);

  if (!v43)
  {
    goto LABEL_9;
  }

  result = outlined bridged method (pb) of @objc SASTItemGroup.templateItems.getter(v43);
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  specialized Array.append<A>(contentsOf:)(result);

LABEL_9:
  v44 = [a1 postalAddresses];
  v45 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v46 = WatchViews.buildAddressAttributeSnippet(postalAddresses:contact:localeString:)(v45, a1, a2, a3);

  if (v46)
  {
    result = outlined bridged method (pb) of @objc SASTItemGroup.templateItems.getter(v46);
    if (result)
    {
      specialized Array.append<A>(contentsOf:)(result);

      goto LABEL_12;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_12:
  v47 = WatchViews.buildContactRelationsSnippet(contact:)(a1);
  if (v47)
  {
    v48 = outlined bridged method (ob) of @objc SASTItemGroup.templateItems.getter(v47);
    if (v48)
    {
      specialized Array.append<A>(contentsOf:)(v48);
    }
  }

  v49 = WatchViews.buildBirthdayAttributeSnippet(contact:)();
  if (!v49)
  {
    goto LABEL_18;
  }

  v50 = v49;
  result = outlined bridged method (pb) of @objc SASTItemGroup.templateItems.getter(v49);
  if (result)
  {
    specialized Array.append<A>(contentsOf:)(result);

LABEL_18:
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v52 = OUTLINED_FUNCTION_4_21(v51);
    *(v52 + 16) = xmmword_266966A40;
    v53 = [objc_allocWithZone(MEMORY[0x277D47780]) init];
    outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v63, v53, &_sSo16SASTTemplateItem_pMd, _sSo16SASTTemplateItem_pMR, &selRef_setTemplateItems_);
    *(v52 + 32) = v53;
    v54 = static os_signpost_type_t.end.getter();
    OUTLINED_FUNCTION_18_2(v54);
    outlined destroy of Signpost.OpenSignpost(v60);
    return v52;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t WatchViews.buildContactHeader(contact:)(void *a1)
{
  v2 = type metadata accessor for Signpost.OpenSignpost(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v5 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v6 = &v4[*(v2 + 20)];
  *v6 = "BuildContactHeaderWatchOS";
  *(v6 + 1) = 25;
  v6[16] = 2;
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAUIDecoratedText, 0x277D47A40);
  v7 = CNContact.formattedFullName.getter();
  v9 = SAUIDecoratedText.init(text:regions:)(v7, v8, 0);
  result = outlined bridged method (pb) of @objc SAUIDecoratedText.text.getter(v9);
  if (v11)
  {
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SASTHeaderItem, 0x277D47778);
    v12 = v9;
    v13 = SASTHeaderItem.init(header:text:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_266966A40;
    *(v14 + 32) = v13;
    v36 = v14;
    v35 = v13;
    v15 = [a1 nickname];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SASTLineDetailItem, 0x277D47788);
      v20 = [a1 nickname];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24 = SAUIDecoratedText.init(text:regions:)(v21, v23, 0);
      SASTLineDetailItem.init(title:)(v24);
      MEMORY[0x26D5E25E0]();
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v14 = v36;
    }

    v25 = [a1 organizationName];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v29 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (v29)
    {
      type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SASTLineDetailItem, 0x277D47788);
      v30 = [a1 organizationName];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      v34 = SAUIDecoratedText.init(text:regions:)(v31, v33, 0);
      SASTLineDetailItem.init(title:)(v34);
      MEMORY[0x26D5E25E0]();
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v14 = v36;
    }

    static os_signpost_type_t.end.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    outlined destroy of Signpost.OpenSignpost(v4);
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id WatchViews.buildPhoneAttributeSnippet(phoneNumbers:formattedFullName:localeString:contactIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v123 = a7;
  v122 = a6;
  v152 = a4;
  v153 = a2;
  v154 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v137 = v116 - v10;
  v133 = type metadata accessor for AceOutput();
  *&v159 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v149 = v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for BehaviorAfterSpeaking();
  v158 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v135 = v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for TemplatingResult();
  v13 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v157 = v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14TemplatingTextVSgMd, &_s11SiriKitFlow14TemplatingTextVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v141 = v116 - v16;
  v155 = type metadata accessor for TemplatingText();
  v17 = MEMORY[0x28223BE20](v155);
  v134 = v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v140 = v116 - v19;
  v121 = type metadata accessor for CharacterSet();
  v20 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v120 = v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v22 = MEMORY[0x28223BE20](v151);
  v139 = v116 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v138 = v116 - v24;
  v25 = type metadata accessor for Signpost.OpenSignpost(0);
  MEMORY[0x28223BE20](v25);
  v27 = v116 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for contactsLog != -1)
  {
LABEL_50:
    swift_once();
  }

  v28 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v116[1] = v28;
  os_signpost(_:dso:log:name:signpostID:)();
  v29 = *(v25 + 20);
  v117 = v27;
  v30 = (v27 + v29);
  *v30 = "BuildPhoneAttributeSnippetWatchOS";
  *(v30 + 1) = 33;
  v30[16] = 2;
  v31 = [objc_allocWithZone(MEMORY[0x277D47780]) init];
  v32 = MEMORY[0x277D84F90];
  outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(MEMORY[0x277D84F90], v31, &_sSo16SASTTemplateItem_pMd, _sSo16SASTTemplateItem_pMR, &selRef_setTemplateItems_);
  v33 = specialized Array._getCount()();
  v25 = v155;
  v143 = v33;
  if (!v33)
  {
LABEL_47:
    static os_signpost_type_t.end.getter();
    v115 = v117;
    os_signpost(_:dso:log:name:signpostID:)();
    outlined destroy of Signpost.OpenSignpost(v115);
    return v31;
  }

  v27 = 0;
  v142 = a1 & 0xC000000000000001;
  v118 = a1 & 0xFFFFFFFFFFFFFF8;
  v119 = (v20 + 8);
  v129 = *MEMORY[0x277D5BF60];
  v128 = v158 + 13;
  v125 = (v159 + 8);
  v124 = v13 + 1;
  v131 = xmmword_266966ED0;
  v159 = xmmword_266966A40;
  v127 = a5;
  v126 = a1;
  v130 = v31;
  while (1)
  {
    if (v142)
    {
      v34 = MEMORY[0x26D5E29D0](v27, a1);
    }

    else
    {
      if (v27 >= *(v118 + 16))
      {
        goto LABEL_49;
      }

      v34 = *(a1 + 8 * v27 + 32);
    }

    v35 = v34;
    v20 = (v27 + 1);
    if (__OFADD__(v27, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v36 = outlined bridged method (pb) of @objc ContactAttribute.handleValue.getter(v34);
    if (v37)
    {
      break;
    }

LABEL_44:
    ++v27;
    if (v20 == v143)
    {
      goto LABEL_47;
    }
  }

  v147 = v36;
  v148 = v37;
  v145 = (v27 + 1);
  v146 = v27;
  v162 = v32;
  v38 = *v150;
  v39 = v138;
  ContactsLabelCATs.call()();
  v40 = Result<>.firstPrint.getter();
  v42 = v41;
  outlined destroy of Result<TemplatingResult, Error>(v39, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v158 = v35;
  if (v42)
  {
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logger.siriContacts);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_26686A000, v44, v45, "[WatchViews] Building Call button for phone attribute view", v46, 2u);
      MEMORY[0x26D5E3300](v46, -1, -1);
    }

    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAUIDecoratedText, 0x277D47A40);
    v47 = SAUIDecoratedText.init(text:regions:)(v40, v42, 0);
    v48 = static ContactsDirectInvocations.startCall(fullName:phoneHandle:contactIdentifier:)(v153, v154, v35, v122, v123);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v49 = swift_allocObject();
    *(v49 + 16) = v159;
    *(v49 + 32) = v48;
    v50 = objc_allocWithZone(MEMORY[0x277D47770]);
    v51 = v48;
    v52 = [v50 init];
    outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v49, v52, &_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR, &selRef_setCommands_);
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SASTButtonItem, 0x277D47760);
    v53 = v52;
    v54 = v47;
    SASTButtonItem.init(action:centered:decoratedLabel:)(v53, 0, v54);
    MEMORY[0x26D5E25E0]();
    if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v162 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v55 = v162;

    v25 = v155;
    v35 = v158;
  }

  else
  {
    v55 = v32;
  }

  v56 = v139;
  ContactsLabelCATs.message()();
  v57 = Result<>.firstPrint.getter();
  v59 = v58;
  outlined destroy of Result<TemplatingResult, Error>(v56, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  if (v59)
  {
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
      _os_log_impl(&dword_26686A000, v61, v62, "[WatchViews] Building Message button for phone attribute view", v63, 2u);
      MEMORY[0x26D5E3300](v63, -1, -1);
    }

    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAUIDecoratedText, 0x277D47A40);
    v64 = SAUIDecoratedText.init(text:regions:)(v57, v59, 0);
    v65 = outlined bridged method (pb) of @objc ContactAttribute.handleValue.getter(v35);
    v67 = static ContactsDirectInvocations.sendMessage(contactName:contactPhoneNumber:)(v153, v154, v65, v66);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v68 = swift_allocObject();
    *(v68 + 16) = v159;
    *(v68 + 32) = v67;
    v69 = objc_allocWithZone(MEMORY[0x277D47770]);
    v70 = v67;
    v71 = [v69 init];
    outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v68, v71, &_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR, &selRef_setCommands_);
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SASTButtonItem, 0x277D47760);
    v72 = v71;
    v73 = v64;
    SASTButtonItem.init(action:centered:decoratedLabel:)(v72, 0, v73);
    MEMORY[0x26D5E25E0]();
    if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v162 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v55 = v162;

    v25 = v155;
    v35 = v158;
  }

  v156 = v55;
  v74 = outlined bridged method (pb) of @objc ContactAttribute.handleLabel.getter(v35);
  v76 = LabelMapper.localizedLabel(handleLabel:localeString:type:)(v74, v75, v152, a5, 2, v38);
  v78 = v77;

  v79 = HIBYTE(v78) & 0xF;
  if ((v78 & 0x2000000000000000) == 0)
  {
    v79 = v76 & 0xFFFFFFFFFFFFLL;
  }

  if (v79)
  {
    v80 = v120;
    CharacterSet.init(charactersIn:)();
    *&v160[0] = v76;
    *(&v160[0] + 1) = v78;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol.rangeOfCharacter(from:options:range:)();
    if (v81)
    {
      v82 = String.formattedForCNLabelConversion.getter(v76, v78);
      *&v160[0] = 1008804959;
      *(&v160[0] + 1) = 0xE400000000000000;
      MEMORY[0x26D5E2570](v82);

      MEMORY[0x26D5E2570](1596203326, 0xE400000000000000);

      v83 = *(&v160[0] + 1);
      v76 = *&v160[0];
      (*v119)(v80, v121);

      v78 = v83;
    }

    else
    {
      (*v119)(v80, v121);
    }
  }

  *&v160[0] = v76;
  *(&v160[0] + 1) = v78;
  lazy protocol witness table accessor for type String and conformance String();
  v84 = StringProtocol.capitalized.getter();
  v86 = v85;

  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAUIDecoratedText, 0x277D47A40);
  v144 = v86;
  v87 = MEMORY[0x26D5E2470](v84, v86);
  static LabelMappingUtil.translateINPersonHandleLabel(_:languageCode:)();

  v88 = String.sanitizeCNLabel.getter();
  v90 = v89;

  v91 = SAUIDecoratedText.init(text:regions:)(v88, v90, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow17TemplatingSectionVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow17TemplatingSectionVGMR);
  type metadata accessor for TemplatingSection();
  *(swift_allocObject() + 16) = v131;
  static String.EMPTY.getter();

  TemplatingText.init(text:speakableTextOverride:)();
  v92 = v141;
  __swift_storeEnumTagSinglePayload(v141, 1, 1, v25);
  TemplatingSection.init(id:content:caption:spokenOnly:)();
  static String.EMPTY.getter();
  result = outlined bridged method (pb) of @objc SAUIDecoratedText.text.getter(v91);
  if (!v94)
  {
    goto LABEL_52;
  }

  TemplatingText.init(text:speakableTextOverride:)();
  __swift_storeEnumTagSinglePayload(v92, 1, 1, v25);
  TemplatingSection.init(id:content:caption:spokenOnly:)();
  static String.EMPTY.getter();
  (*v128)(v135, v129, v136);

  TemplatingResult.init(templateIdentifier:sections:behaviorAfterSpeaking:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v95 = swift_allocObject();
  *(v95 + 16) = v159;
  v96 = v156;
  if (v156 >> 62)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, _sSo16SASTTemplateItem_pMR);
    v97 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v97 = v96;
  }

  v98 = [objc_allocWithZone(MEMORY[0x277D47780]) init];
  outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v97, v98, &_sSo16SASTTemplateItem_pMd, _sSo16SASTTemplateItem_pMR, &selRef_setTemplateItems_);
  *(v95 + 32) = v98;
  v99 = type metadata accessor for NLContextUpdate();
  v100 = v137;
  __swift_storeEnumTagSinglePayload(v137, 1, 1, v99);
  v161 = 0;
  memset(v160, 0, sizeof(v160));
  static AceOutputHelper.makeConfirmationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of Result<TemplatingResult, Error>(v160, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of Result<TemplatingResult, Error>(v100, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAStartLocalRequest, 0x277D47940);
  v101 = AceOutput.commands.getter();
  v102 = specialized _arrayConditionalCast<A, B>(_:)(v101);

  v103 = SAStartLocalRequest.init(clientBoundCommands:)(v102);
  v104 = swift_allocObject();
  *(v104 + 16) = v159;
  *(v104 + 32) = v103;
  v105 = objc_allocWithZone(MEMORY[0x277D47770]);
  v106 = v103;
  v107 = [v105 init];
  outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v104, v107, &_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR, &selRef_setCommands_);
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SASTColumnDataListItem, 0x277D47768);
  v108 = swift_allocObject();
  *(v108 + 16) = v159;
  v109 = v91;
  v110 = v148;

  *(v108 + 32) = SAUIDecoratedText.init(text:regions:)(v147, v110, 0);
  v13 = v107;
  v111 = SASTColumnDataListItem.init(title:decoratedRows:action:)(v109, v108, v107);
  v31 = v130;
  result = outlined bridged method (pb) of @objc SASTItemGroup.templateItems.getter(v130);
  *&v160[0] = result;
  if (result)
  {

    v112 = v111;
    MEMORY[0x26D5E25E0]();
    v113 = v158;
    if (*((*&v160[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v160[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    a1 = v126;
    if (*&v160[0])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, _sSo16SASTTemplateItem_pMR);
      v114.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v114.super.isa = 0;
    }

    v25 = v155;
    [v31 setTemplateItems_];

    (*v125)(v149, v133);
    (*v124)(v157, v132);
    a5 = v127;
    v32 = MEMORY[0x277D84F90];
    v27 = v146;
    v20 = v145;
    goto LABEL_44;
  }

  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

id WatchViews.buildEmailAttributeSnippet(emailAddresses:formattedFullName:localeString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v61 = a5;
  v60 = a4;
  v56 = type metadata accessor for CharacterSet();
  v6 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = type metadata accessor for Signpost.OpenSignpost(0);
  MEMORY[0x28223BE20](isa);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for contactsLog != -1)
  {
LABEL_36:
    swift_once();
  }

  v12 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v52 = v12;
  os_signpost(_:dso:log:name:signpostID:)();
  v13 = isa[5];
  v53 = v11;
  v14 = (v11 + v13);
  *v14 = "BuildEmailAttributeSnippetWatchOS";
  *(v14 + 1) = 33;
  v14[16] = 2;
  v15 = [objc_allocWithZone(MEMORY[0x277D47780]) init];
  outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(MEMORY[0x277D84F90], v15, &_sSo16SASTTemplateItem_pMd, _sSo16SASTTemplateItem_pMR, &selRef_setTemplateItems_);
  v64 = specialized Array._getCount()();
  if (!v64)
  {
LABEL_33:
    static os_signpost_type_t.end.getter();
    v51 = v53;
    os_signpost(_:dso:log:name:signpostID:)();
    outlined destroy of Signpost.OpenSignpost(v51);
    return v15;
  }

  v11 = 0;
  v62 = a1 & 0xC000000000000001;
  v54 = a1 & 0xFFFFFFFFFFFFFF8;
  v55 = (v6 + 8);
  v63 = xmmword_266966A40;
  v57 = v8;
  v58 = a1;
  v59 = v15;
  while (1)
  {
    if (v62)
    {
      v16 = MEMORY[0x26D5E29D0](v11, a1);
    }

    else
    {
      if (v11 >= *(v54 + 16))
      {
        goto LABEL_35;
      }

      v16 = *(a1 + 8 * v11 + 32);
    }

    isa = v16;
    v6 = (v11 + 1);
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v17 = outlined bridged method (pb) of @objc ContactAttribute.handleValue.getter(v16);
    if (v18)
    {
      break;
    }

LABEL_32:
    ++v11;
    if (v6 == v64)
    {
      goto LABEL_33;
    }
  }

  v19 = v17;
  v20 = v18;
  v66 = isa;
  v21 = outlined bridged method (pb) of @objc ContactAttribute.handleLabel.getter(isa);
  if (v22)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0;
  }

  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0xE000000000000000;
  }

  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {
    CharacterSet.init(charactersIn:)();
    v67 = v23;
    v68 = v24;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol.rangeOfCharacter(from:options:range:)();
    if (v26)
    {
      v27 = String.formattedForCNLabelConversion.getter(v23, v24);
      v67 = 1008804959;
      v68 = 0xE400000000000000;
      MEMORY[0x26D5E2570](v27);

      MEMORY[0x26D5E2570](1596203326, 0xE400000000000000);

      v23 = v67;
      v28 = v68;
      (*v55)(v8, v56);

      v24 = v28;
    }

    else
    {
      (*v55)(v8, v56);
    }
  }

  v67 = v23;
  v68 = v24;
  lazy protocol witness table accessor for type String and conformance String();
  v29 = StringProtocol.capitalized.getter();
  v31 = v30;

  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAUIDecoratedText, 0x277D47A40);
  v32 = MEMORY[0x26D5E2470](v29, v31);
  static LabelMappingUtil.translateINPersonHandleLabel(_:languageCode:)();

  v33 = String.sanitizeCNLabel.getter();
  v35 = v34;

  v36 = SAUIDecoratedText.init(text:regions:)(v33, v35, 0);
  v67 = v19;
  v68 = v20;

  v37 = String.init<A>(_:)();
  v39 = SAUIDecoratedText.init(text:regions:)(v37, v38, 0);
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SASTColumnDataListItem, 0x277D47768);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v40 = swift_allocObject();
  *(v40 + 16) = v63;
  *(v40 + 32) = v39;
  v41 = v36;
  v65 = v39;
  v42 = SASTColumnDataListItem.init(title:decoratedRows:action:)(v41, v40, 0);
  AppUtil.buildPunchoutFor(emailAddress:)();
  if (v43)
  {
    v44 = v43;
    v45 = swift_allocObject();
    *(v45 + 16) = v63;
    *(v45 + 32) = v44;
    v46 = objc_allocWithZone(MEMORY[0x277D47770]);
    v47 = v44;
    v48 = [v46 init];
    outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v45, v48, &_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR, &selRef_setCommands_);
    [v42 setAction_];
  }

  v15 = v59;
  result = outlined bridged method (pb) of @objc SASTItemGroup.templateItems.getter(v59);
  v67 = result;
  if (result)
  {

    v50 = v42;
    MEMORY[0x26D5E25E0]();
    v8 = v57;
    if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    if (v67)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, _sSo16SASTTemplateItem_pMR);
      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      isa = 0;
    }

    [v15 setTemplateItems_];

    a1 = v58;
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

id WatchViews.buildAddressAttributeSnippet(postalAddresses:contact:localeString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v60 = a2;
  v61 = a3;
  v8 = type metadata accessor for Signpost.OpenSignpost(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for contactsLog != -1)
  {
LABEL_26:
    swift_once();
  }

  v11 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v52 = v11;
  os_signpost(_:dso:log:name:signpostID:)();
  v12 = v8[5];
  v53 = v10;
  v13 = &v10[v12];
  *v13 = "BuildAddressAttributeSnippetWatchOS";
  *(v13 + 1) = 35;
  v13[16] = 2;
  v14 = [objc_allocWithZone(MEMORY[0x277D47780]) init];
  outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(MEMORY[0x277D84F90], v14, &_sSo16SASTTemplateItem_pMd, _sSo16SASTTemplateItem_pMR, &selRef_setTemplateItems_);
  v59 = specialized Array._getCount()();
  if (v59)
  {
    v56 = type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAUIDecoratedText, 0x277D47A40);
    v55 = type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SASTColumnDataListItem, 0x277D47768);
    v58 = a1 & 0xC000000000000001;
    v15 = 4;
    v62 = xmmword_266966A40;
    v57 = v14;
    v54 = a1;
    while (1)
    {
      v16 = v58;
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (v16)
      {
        v17 = MEMORY[0x26D5E29D0](v15 - 4, a1);
      }

      else
      {
        v17 = *(a1 + 8 * v15);
      }

      v8 = v17;
      if (__OFADD__(v15 - 4, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      v65 = v15 - 3;
      v18 = [v17 label];
      if (v18)
      {
        v19 = v18;
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;
      }

      else
      {
        v20 = static String.EMPTY.getter();
        v22 = v23;
      }

      v24 = MEMORY[0x26D5E2470](v20, v22);

      v25 = static LabelMappingUtil.translateINPersonHandleLabel(_:languageCode:)();
      v27 = v26;

      v28 = SAUIDecoratedText.init(text:regions:)(v25, v27, 0);
      v29 = CNLabeledValue<>.formattedString.getter();
      v31 = SAUIDecoratedText.init(text:regions:)(v29, v30, 0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v32 = swift_allocObject();
      *(v32 + 16) = v62;
      *(v32 + 32) = v31;
      v33 = v28;
      v63 = v31;
      v64 = v33;
      v34 = SASTColumnDataListItem.init(title:decoratedRows:action:)(v33, v32, 0);
      AppUtil.buildPunchoutFor(labeledAddress:contact:)();
      if (v35)
      {
        v36 = v35;
        if (one-time initialization token for siriContacts != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        __swift_project_value_buffer(v37, static Logger.siriContacts);
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = a4;
          v41 = v5;
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&dword_26686A000, v38, v39, "#buildAddressAttributeSnippet Built action to launch Maps with address", v42, 2u);
          v43 = v42;
          v5 = v41;
          a4 = v40;
          MEMORY[0x26D5E3300](v43, -1, -1);
        }

        v44 = swift_allocObject();
        *(v44 + 16) = v62;
        *(v44 + 32) = v36;
        v45 = objc_allocWithZone(MEMORY[0x277D47770]);
        v46 = v36;
        v47 = [v45 init];
        outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v44, v47, &_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR, &selRef_setCommands_);
        [v34 setAction_];

        a1 = v54;
      }

      v14 = v57;
      result = outlined bridged method (pb) of @objc SASTItemGroup.templateItems.getter(v57);
      v66 = result;
      if (!result)
      {
        break;
      }

      v49 = v34;
      MEMORY[0x26D5E25E0]();
      if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v10 = v66;
      if (v66)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, _sSo16SASTTemplateItem_pMR);
        v50.super.isa = Array._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v50.super.isa = 0;
      }

      [v14 setTemplateItems_];

      ++v15;
      if (v65 == v59)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    static os_signpost_type_t.end.getter();
    v51 = v53;
    os_signpost(_:dso:log:name:signpostID:)();
    outlined destroy of Signpost.OpenSignpost(v51);
    return v14;
  }

  return result;
}

id WatchViews.buildContactRelationsSnippet(contact:)(id a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v73 = &v64 - v3;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x28223BE20](v4);
  v71 = &v64 - v5;
  v6 = type metadata accessor for Signpost.OpenSignpost(0);
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8();
  v10 = (v9 - v8);
  if (one-time initialization token for contactsLog != -1)
  {
LABEL_30:
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  v11 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v12 = &v10[v6[5]];
  *v12 = "BuildContactRelationsSnippetWatchOS";
  *(v12 + 1) = 35;
  v12[16] = 2;
  a1 = [a1 contactRelations];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v79 = specialized Array._getCount()();
  if (v79)
  {
    v64 = v11;
    v65 = v10;
    v14 = [objc_allocWithZone(MEMORY[0x277D47780]) init];
    outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(MEMORY[0x277D84F90], v14, &_sSo16SASTTemplateItem_pMd, _sSo16SASTTemplateItem_pMR, &selRef_setTemplateItems_);
    v15 = 0;
    v78 = v13 & 0xC000000000000001;
    v16 = *MEMORY[0x277D487C0];
    v67 = v13 & 0xFFFFFFFFFFFFFF8;
    v68 = v16;
    *&v17 = 136315138;
    v66 = v17;
    v80 = xmmword_266966A40;
    v69 = v14;
    v70 = v13;
    while (1)
    {
      if (v78)
      {
        v18 = MEMORY[0x26D5E29D0](v15, v13);
      }

      else
      {
        if (v15 >= *(v67 + 16))
        {
          goto LABEL_29;
        }

        v18 = *(v13 + 8 * v15 + 32);
      }

      v19 = v18;
      a1 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v20 = [v18 label];
      if (v20)
      {
        v21 = v20;
        v22 = v14;
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        static Dictionary<>.nlSemantic(forCNLabel:)(v23, v25);

        v10 = v73;
        SpeakableString.init(print:speak:)();
        v26 = type metadata accessor for SpeakableString();
        __swift_storeEnumTagSinglePayload(v10, 0, 1, v26);
        v27 = v71;
        ContactsLabelCATs.relationship(relationship:)(v10);
        outlined destroy of Result<TemplatingResult, Error>(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
        v6 = v27;
        v28 = Result<>.firstPrint.getter();
        v30 = v29;
        outlined destroy of Result<TemplatingResult, Error>(v27, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
        if (v30)
        {
          v75 = v25;
          if (one-time initialization token for siriContacts != -1)
          {
            swift_once();
          }

          v31 = type metadata accessor for Logger();
          __swift_project_value_buffer(v31, static Logger.siriContacts);

          v32 = Logger.logObject.getter();
          v33 = static os_log_type_t.debug.getter();

          v34 = os_log_type_enabled(v32, v33);
          v76 = (v15 + 1);
          if (v34)
          {
            v35 = swift_slowAlloc();
            v36 = swift_slowAlloc();
            v81 = v36;
            *v35 = v66;
            *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v81);
            _os_log_impl(&dword_26686A000, v32, v33, "[WatchViews] Building snippet for relationship label: %s", v35, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v36);
            MEMORY[0x26D5E3300](v36, -1, -1);
            MEMORY[0x26D5E3300](v35, -1, -1);
          }

          type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SATextDecorationRegion, 0x277D479C8);
          type metadata accessor for CNContact(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
          isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
          String.count.getter();
          v38 = Int._bridgeToObjectiveC()().super.super.isa;
          v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v41 = SATextDecorationRegion.init(start:length:property:)(isa, v38, v39, v40);
          type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAUIDecoratedText, 0x277D47A40);
          v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v43 = OUTLINED_FUNCTION_4_21(v42);
          *(v43 + 16) = v80;
          *(v43 + 32) = v41;

          v74 = v41;
          v77 = SAUIDecoratedText.init(text:regions:)(v28, v30, v43);
          v44 = OUTLINED_FUNCTION_4_21(v42);
          *(v44 + 16) = v80;
          v45 = [v19 value];
          v46 = [v45 name];

          v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v49 = v48;

          *(v44 + 32) = SAUIDecoratedText.init(text:regions:)(v47, v49, 0);
          v50 = [v19 value];
          v51 = [v50 name];

          v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v54 = v53;

          v55 = static ContactsDirectInvocations.getContact(contactName:)(v52, v54);

          v56 = OUTLINED_FUNCTION_4_21(v42);
          *(v56 + 16) = v80;
          *(v56 + 32) = v55;
          v57 = objc_allocWithZone(MEMORY[0x277D47770]);
          v58 = v55;
          v59 = [v57 init];
          outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v56, v59, &_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR, &selRef_setCommands_);
          type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SASTColumnDataListItem, 0x277D47768);
          v10 = v77;

          v60 = v59;
          v61 = SASTColumnDataListItem.init(title:decoratedRows:action:)(v10, v44, v59);
          v14 = v69;
          result = outlined bridged method (pb) of @objc SASTItemGroup.templateItems.getter(v69);
          v81 = result;
          if (!result)
          {
            __break(1u);
            return result;
          }

          v63 = v61;
          MEMORY[0x26D5E25E0]();
          if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          if (v81)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, _sSo16SASTTemplateItem_pMR);
            v6 = Array._bridgeToObjectiveC()().super.isa;
          }

          else
          {
            v6 = 0;
          }

          [v14 setTemplateItems_];

          v13 = v70;
          a1 = v76;
        }

        else
        {

          v14 = v22;
          v13 = v70;
        }
      }

      else
      {
      }

      ++v15;
      if (a1 == v79)
      {

        v10 = v65;
        goto LABEL_27;
      }
    }
  }

  v14 = 0;
LABEL_27:
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  outlined destroy of Signpost.OpenSignpost(v10);
  return v14;
}

id WatchViews.buildBirthdayAttributeSnippet(contact:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  MEMORY[0x28223BE20](v0);
  v2 = &v34 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v34 - v4;
  v6 = type metadata accessor for Signpost.OpenSignpost(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v9 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v10 = &v8[*(v6 + 20)];
  *v10 = "BuildBirthdayAttributeSnippetWatchOS";
  *(v10 + 1) = 36;
  v10[16] = 2;
  CNContact.timezonedBirthdate.getter(v5);
  v11 = type metadata accessor for Date();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v11);
  outlined destroy of Result<TemplatingResult, Error>(v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (EnumTagSinglePayload == 1 || (ContactsLabelCATs.birthday()(), v13 = Result<>.firstPrint.getter(), v15 = v14, outlined destroy of Result<TemplatingResult, Error>(v2, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR), !v15))
  {
    v33 = 0;
    goto LABEL_8;
  }

  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAUIDecoratedText, 0x277D47A40);

  v16 = SAUIDecoratedText.init(text:regions:)(v13, v15, 0);
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v17.super.super.isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
  result = outlined bridged method (pb) of @objc SAUIDecoratedText.text.getter(v16);
  if (v19)
  {

    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SATextDecorationRegion, 0x277D479C8);
    String.count.getter();

    isa = Int._bridgeToObjectiveC()().super.super.isa;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = SATextDecorationRegion.init(start:length:property:)(v17.super.super.isa, isa, v21, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v24 = swift_allocObject();
    v34 = xmmword_266966A40;
    *(v24 + 16) = xmmword_266966A40;
    *(v24 + 32) = v23;
    v25 = v23;
    outlined bridged method (mbnn) of @objc SAUIDecoratedText.regions.setter(v24, v16);
    v26 = CNContact.formattedBirthdateString.getter();
    v28 = SAUIDecoratedText.init(text:regions:)(v26, v27, 0);
    v29 = swift_allocObject();
    *(v29 + 16) = v34;
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SASTPropertyListItem, 0x277D47790);
    v30 = swift_allocObject();
    *(v30 + 16) = v34;
    *(v30 + 32) = v28;
    v31 = v16;
    v32 = v28;
    *(v29 + 32) = SASTPropertyListItem.init(decoratedTitle:decoratedValues:)(v31, v30);
    v33 = [objc_allocWithZone(MEMORY[0x277D47780]) init];
    outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v29, v33, &_sSo16SASTTemplateItem_pMd, _sSo16SASTTemplateItem_pMR, &selRef_setTemplateItems_);

LABEL_8:
    static os_signpost_type_t.end.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    outlined destroy of Signpost.OpenSignpost(v8);
    return v33;
  }

  __break(1u);
  return result;
}

id WatchViews.buildGetAttributeSnippet(handles:contact:contactAttribute:localeString:)(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = type metadata accessor for Signpost.OpenSignpost(0);
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  v13 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  v14 = static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_18_2(v14);
  v15 = v12 + *(v8 + 20);
  *v15 = "BuildGetAttributeSnippetWatchOS";
  *(v15 + 8) = 31;
  *(v15 + 16) = 2;
  switch([a3 contactAttributeType])
  {
    case 1uLL:
      if (!a1 || !specialized Array._getCount()())
      {
        goto LABEL_15;
      }

      v18 = CNContact.formattedFullName.getter();
      v16 = WatchViews.buildEmailAttributeSnippet(emailAddresses:formattedFullName:localeString:)(a1, v18, v19, a4, a5);
      goto LABEL_14;
    case 2uLL:
      if (!a1 || !specialized Array._getCount()())
      {
        goto LABEL_15;
      }

      v20 = CNContact.formattedFullName.getter();
      v22 = v21;
      v23 = [a2 identifier];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v16 = WatchViews.buildPhoneAttributeSnippet(phoneNumbers:formattedFullName:localeString:contactIdentifier:)(a1, v20, v22, a4, a5, v24, v26);

      goto LABEL_14;
    case 3uLL:
      if (!a1 || !specialized Array._getCount()())
      {
        goto LABEL_15;
      }

      Array<A>.toCNPostalAddresses.getter(a1);
      v16 = WatchViews.buildAddressAttributeSnippet(postalAddresses:contact:localeString:)(v17, a2, a4, a5);
LABEL_14:

      break;
    case 4uLL:
    case 5uLL:
      v16 = WatchViews.buildBirthdayAttributeSnippet(contact:)();
      break;
    default:
LABEL_15:
      v16 = 0;
      break;
  }

  v27 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_18_2(v27);
  outlined destroy of Signpost.OpenSignpost(v12);
  return v16;
}

id specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  specialized Array._getCount()();
  specialized ContiguousArray.reserveCapacity(_:)();
  result = specialized Array._getCount()();
  v3 = result;
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      return v6;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D5E29D0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      result = *(a1 + 8 * i + 32);
    }

    v5 = result;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (!swift_dynamicCastObjCProtocolConditional())
    {

      return 0;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, SEL *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 *a5];
}

uint64_t outlined bridged method (pb) of @objc SAUIDecoratedText.text.getter(void *a1)
{
  v1 = [a1 text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (pb) of @objc SASTItemGroup.templateItems.getter(void *a1)
{
  v1 = [a1 templateItems];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, _sSo16SASTTemplateItem_pMR);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void outlined bridged method (mbnn) of @objc SAUIDecoratedText.regions.setter(uint64_t a1, void *a2)
{
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SATextDecorationRegion, 0x277D479C8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setRegions_];
}

uint64_t outlined bridged method (ob) of @objc SASTItemGroup.templateItems.getter(void *a1)
{
  v2 = [a1 templateItems];

  if (!v2)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, _sSo16SASTTemplateItem_pMR);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined destroy of Result<TemplatingResult, Error>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_10_1();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_4_21(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t ContactNLv3Intent.init(intent:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_266969B60;
  if (one-time initialization token for personNode != -1)
  {
    OUTLINED_FUNCTION_6_21(&one-time initialization token for personNode);
  }

  v5 = static ContactNLv3Intent.personNode;
  v6 = type metadata accessor for NonTerminalOntologyNode();
  v7 = MEMORY[0x277D5E210];
  *(v4 + 56) = v6;
  *(v4 + 64) = v7;
  *(v4 + 32) = v5;
  v8 = one-time initialization token for contactId;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = static ContactNLv3Intent.contactId;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  *(v4 + 96) = v10;
  OUTLINED_FUNCTION_1_28();
  v13 = lazy protocol witness table accessor for type BasicDisambiguationItemContainer<String> and conformance BasicDisambiguationItemContainer<A>(v11, &_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR, v12);
  *(v4 + 104) = v13;
  *(v4 + 72) = v9;
  v14 = one-time initialization token for contactType;

  if (v14 != -1)
  {
    OUTLINED_FUNCTION_7_7(&one-time initialization token for contactType);
  }

  v15 = static ContactNLv3Intent.contactType;
  *(v4 + 136) = v10;
  *(v4 + 144) = v13;
  *(v4 + 112) = v15;
  v16 = one-time initialization token for contactReference;

  if (v16 != -1)
  {
    OUTLINED_FUNCTION_4_22(&one-time initialization token for contactReference);
  }

  v17 = static ContactNLv3Intent.contactReference;
  v18 = OUTLINED_FUNCTION_47();
  *(v4 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
  OUTLINED_FUNCTION_1_28();
  *(v4 + 184) = OUTLINED_FUNCTION_55_4(v20, v21, v22, v23);
  *(v4 + 152) = v17;
  v24 = one-time initialization token for contactAttributes;

  if (v24 != -1)
  {
    OUTLINED_FUNCTION_8_11(&one-time initialization token for contactAttributes);
  }

  v25 = static ContactNLv3Intent.contactAttributes;
  v26 = OUTLINED_FUNCTION_47();
  *(v4 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  OUTLINED_FUNCTION_1_28();
  *(v4 + 224) = OUTLINED_FUNCTION_55_4(v28, v29, v30, v31);
  *(v4 + 192) = v25;
  v32 = one-time initialization token for contactVerb;

  if (v32 != -1)
  {
    OUTLINED_FUNCTION_3_10(&one-time initialization token for contactVerb);
  }

  v33 = static ContactNLv3Intent.contactVerb;
  v34 = OUTLINED_FUNCTION_47();
  *(v4 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(v34, v35);
  OUTLINED_FUNCTION_1_28();
  *(v4 + 264) = OUTLINED_FUNCTION_55_4(v36, v37, v38, v39);
  *(v4 + 232) = v33;
  v40 = one-time initialization token for contactNoun;

  if (v40 != -1)
  {
    OUTLINED_FUNCTION_35_6(&one-time initialization token for contactNoun);
  }

  v41 = static ContactNLv3Intent.contactNoun;
  v42 = OUTLINED_FUNCTION_47();
  *(v4 + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(v42, v43);
  OUTLINED_FUNCTION_1_28();
  *(v4 + 304) = OUTLINED_FUNCTION_55_4(v44, v45, v46, v47);
  *(v4 + 272) = v41;
  v48 = one-time initialization token for contactConfirmation;

  if (v48 != -1)
  {
    OUTLINED_FUNCTION_10_20(&one-time initialization token for contactConfirmation);
  }

  v49 = static ContactNLv3Intent.contactConfirmation;
  v50 = OUTLINED_FUNCTION_47();
  *(v4 + 336) = __swift_instantiateConcreteTypeFromMangledNameV2(v50, v51);
  OUTLINED_FUNCTION_1_28();
  *(v4 + 344) = OUTLINED_FUNCTION_55_4(v52, v53, v54, v55);
  *(v4 + 312) = v49;
  v56 = one-time initialization token for contactAgeDate;

  if (v56 != -1)
  {
    swift_once();
  }

  v57 = static ContactNLv3Intent.contactAgeDate;
  v58 = OUTLINED_FUNCTION_47();
  *(v4 + 376) = __swift_instantiateConcreteTypeFromMangledNameV2(v58, v59);
  OUTLINED_FUNCTION_1_28();
  *(v4 + 384) = OUTLINED_FUNCTION_55_4(v60, v61, v62, v63);
  *(v4 + 352) = v57;
  v64 = one-time initialization token for setNickName;

  if (v64 != -1)
  {
    OUTLINED_FUNCTION_6_13(&one-time initialization token for setNickName);
  }

  v65 = static ContactNLv3Intent.setNickName;
  *(v4 + 416) = v10;
  *(v4 + 424) = v13;
  *(v4 + 392) = v65;
  v66 = one-time initialization token for setRelationship;

  if (v66 != -1)
  {
    swift_once();
  }

  v67 = static ContactNLv3Intent.setRelationship;
  *(v4 + 456) = v10;
  *(v4 + 464) = v13;
  *(v4 + 432) = v67;
  v68 = one-time initialization token for removeRelationship;

  if (v68 != -1)
  {
    swift_once();
  }

  v69 = static ContactNLv3Intent.removeRelationship;
  *(v4 + 496) = v10;
  *(v4 + 504) = v13;
  *(v4 + 472) = v69;
  v70 = type metadata accessor for DomainOntologyNode();
  OUTLINED_FUNCTION_2_6(v70);

  *a2 = DomainOntologyNode.init(name:childNodes:isInEventTree:)();
  v71 = type metadata accessor for ContactNLv3Intent(0);
  *&a2[*(v71 + 24)] = &outlined read-only object #0 of ContactNLv3Intent.init(intent:);
  v72 = *(v71 + 20);
  type metadata accessor for NLIntent();
  OUTLINED_FUNCTION_10_1();
  v74 = *(v73 + 32);

  return v74(&a2[v72], a1);
}

void ContactNLv3Intent.person.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_15();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
  OUTLINED_FUNCTION_18_0(v24);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v25);
  v27 = &a9 - v26;
  v28 = type metadata accessor for NonTerminalIntentNode();
  OUTLINED_FUNCTION_1_0();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v32);
  v34 = &a9 - v33;
  if (one-time initialization token for personNode != -1)
  {
    OUTLINED_FUNCTION_6_21(&one-time initialization token for personNode);
  }

  type metadata accessor for ContactNLv3Intent(0);
  OUTLINED_FUNCTION_0_34();
  _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(v35, v36, &protocol conformance descriptor for ContactNLv3Intent);
  OUTLINED_FUNCTION_47();
  IntentNodeTraversable.intentNode(forOntologyNode:)();
  OUTLINED_FUNCTION_57(v27, 1, v28);
  if (v37)
  {
    outlined destroy of Result<TemplatingResult, Error>(v27, &_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
    v43 = 1;
  }

  else
  {
    v38 = OUTLINED_FUNCTION_43();
    v39(v38);
    v40 = OUTLINED_FUNCTION_44_3();
    v41(v40);
    v42 = type metadata accessor for PersonOntologyNode();
    OUTLINED_FUNCTION_2_6(v42);
    PersonOntologyNode.init(name:multicardinal:)();
    PersonIntentNode.init(intentNode:ontologyNode:)();
    (*(v30 + 8))(v34, v28);
    v43 = 0;
  }

  v44 = type metadata accessor for PersonIntentNode();
  __swift_storeEnumTagSinglePayload(v23, v43, 1, v44);
  OUTLINED_FUNCTION_14();
}

void ContactNLv3Constants.rawValue.getter()
{
  switch(*v0)
  {
    case 5:
    case 0xC:
    case 0xE:
      OUTLINED_FUNCTION_21_11();
      break;
    case 0x15:
      OUTLINED_FUNCTION_57_2();
      break;
    default:
      return;
  }
}

uint64_t ContactNLv3Intent.hasFreshVerb.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology18TerminalIntentNodeVSgMd, &_s12SiriOntology18TerminalIntentNodeVSgMR);
  OUTLINED_FUNCTION_18_0(v0);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v1);
  v3 = &v37 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementVSgMd, &_s12SiriOntology15TerminalElementVSgMR);
  OUTLINED_FUNCTION_18_0(v4);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v5);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV13OriginalValueVSgMd, &_s12SiriOntology15TerminalElementV13OriginalValueVSgMR);
  OUTLINED_FUNCTION_18_0(v8);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  if (one-time initialization token for contactVerb != -1)
  {
    OUTLINED_FUNCTION_3_10(&one-time initialization token for contactVerb);
  }

  type metadata accessor for ContactNLv3Intent(0);
  OUTLINED_FUNCTION_0_34();
  _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(v12, v13, &protocol conformance descriptor for ContactNLv3Intent);
  OUTLINED_FUNCTION_43();
  IntentNodeTraversable.intentNode<A>(forOntologyNode:)();
  type metadata accessor for TerminalIntentNode();
  OUTLINED_FUNCTION_14_14(v3);
  if (v21)
  {
    v14 = &_s12SiriOntology18TerminalIntentNodeVSgMd;
    v15 = &_s12SiriOntology18TerminalIntentNodeVSgMR;
    v16 = v3;
LABEL_12:
    outlined destroy of Result<TemplatingResult, Error>(v16, v14, v15);
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.siriContacts);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v29, v30))
    {
      v33 = 0;
      goto LABEL_18;
    }

    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_26686A000, v29, v30, "#hasFreshVerb no isFresh, return false", v31, 2u);
    v33 = 0;
    goto LABEL_16;
  }

  v17 = TerminalIntentNode.elements.getter();
  OUTLINED_FUNCTION_12_11();
  v18 = OUTLINED_FUNCTION_44_3();
  v19(v18);
  specialized BidirectionalCollection.last.getter(v17, v7);

  v20 = type metadata accessor for TerminalElement();
  OUTLINED_FUNCTION_57(v7, 1, v20);
  if (v21)
  {
    v14 = &_s12SiriOntology15TerminalElementVSgMd;
    v15 = &_s12SiriOntology15TerminalElementVSgMR;
    v16 = v7;
    goto LABEL_12;
  }

  TerminalElement.originalValue.getter();
  OUTLINED_FUNCTION_52();
  v22 = OUTLINED_FUNCTION_25_8();
  v23(v22);
  v24 = type metadata accessor for TerminalElement.OriginalValue();
  v25 = OUTLINED_FUNCTION_36_5();
  OUTLINED_FUNCTION_57(v25, v26, v24);
  if (v27)
  {
    v14 = &_s12SiriOntology15TerminalElementV13OriginalValueVSgMd;
    v15 = &_s12SiriOntology15TerminalElementV13OriginalValueVSgMR;
    v16 = v11;
    goto LABEL_12;
  }

  v33 = TerminalElement.OriginalValue.isFresh.getter();
  OUTLINED_FUNCTION_52();
  (*(v34 + 8))(v11, v24);
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v35 = type metadata accessor for Logger();
  __swift_project_value_buffer(v35, static Logger.siriContacts);
  v29 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v29, v36))
  {
    v31 = swift_slowAlloc();
    *v31 = 67109120;
    *(v31 + 4) = v33 & 1;
    _os_log_impl(&dword_26686A000, v29, v36, "#hasFreshVerb isFresh: %{BOOL}d", v31, 8u);
LABEL_16:
    MEMORY[0x26D5E3300](v31, -1, -1);
  }

LABEL_18:

  return v33 & 1;
}

uint64_t ContactNLv3Intent.isModifyOtherContactNickname.getter()
{
  if (!ContactNLv3Intent.containsAttribute(_:)())
  {
    if (one-time initialization token for setNickName != -1)
    {
      OUTLINED_FUNCTION_6_13(&one-time initialization token for setNickName);
    }

    type metadata accessor for ContactNLv3Intent(0);
    OUTLINED_FUNCTION_0_34();
    _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(v0, v1, &protocol conformance descriptor for ContactNLv3Intent);
    OUTLINED_FUNCTION_22_0();
    IntentNodeTraversable.value<A>(forNode:)();
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if (one-time initialization token for contactVerb != -1)
  {
    OUTLINED_FUNCTION_3_10(&one-time initialization token for contactVerb);
  }

  type metadata accessor for ContactNLv3Intent(0);
  OUTLINED_FUNCTION_0_34();
  _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(v2, v3, &protocol conformance descriptor for ContactNLv3Intent);
  OUTLINED_FUNCTION_22_0();
  IntentNodeTraversable.value<A>(forNode:)();
  if ((specialized == infix<A>(_:_:)(44, 4) & 1) == 0)
  {
LABEL_10:
    v4 = 0;
    return v4 & 1;
  }

  v4 = ContactNLv3Intent.isMeCardRequest.getter() ^ 1;
  return v4 & 1;
}

uint64_t ContactNLv3Intent.hasAddressAttribute.getter()
{
  v0 = 0;
  v1 = MEMORY[0x277D84F90];
  do
  {
    v2 = 0xE700000000000000;
    v3 = 0x73736572646461;
    switch(outlined read-only object #0 of static ContactNLIntent.ContactIntentAddressAttributes.allCases.getter[v0 + 32])
    {
      case 1:
        v4 = 544829025;
        goto LABEL_6;
      case 2:
        v4 = 544045415;
LABEL_6:
        v3 = v4 | 0x7264646100000000;
        v2 = 0xEB00000000737365;
        break;
      case 3:
        v5 = 1701670760;
        goto LABEL_8;
      case 4:
        v5 = 1802661751;
LABEL_8:
        v3 = v5 | 0x6464612000000000;
        v2 = 0xEC00000073736572;
        break;
      case 5:
        v3 = 0x61206C6F6F686373;
        v2 = 0xEE00737365726464;
        break;
      default:
        break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 16) + 1, 1, v1);
      v1 = v9;
    }

    v7 = *(v1 + 16);
    v6 = *(v1 + 24);
    if (v7 >= v6 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v6 > 1, v7 + 1, 1, v1);
      v1 = v10;
    }

    ++v0;
    *(v1 + 16) = v7 + 1;
    v8 = v1 + 16 * v7;
    *(v8 + 32) = v3;
    *(v8 + 40) = v2;
  }

  while (v0 != 6);
  ContactNLv3Intent.containsAttribute(_:)();
  v12 = v11;

  return v12 & 1;
}

BOOL ContactNLv3Intent.hasEmailAttribute.getter()
{
  ContactNLv3Intent.containsAttribute(_:)();
  if (v0)
  {
    return 1;
  }

  return ContactNLv3Intent.containsContactType(_:)(&outlined read-only object #0 of one-time initialization function for emailAttributes);
}

BOOL ContactNLv3Intent.hasPhoneAttribute.getter()
{
  ContactNLv3Intent.containsAttribute(_:)();
  if (v0)
  {
    return 1;
  }

  return ContactNLv3Intent.containsContactType(_:)(&outlined read-only object #0 of one-time initialization function for phoneAttributes);
}

uint64_t ContactNLv3Intent.isShowContactCard.getter()
{
  if (one-time initialization token for contactNoun != -1)
  {
    OUTLINED_FUNCTION_35_6(&one-time initialization token for contactNoun);
  }

  type metadata accessor for ContactNLv3Intent(0);
  OUTLINED_FUNCTION_0_34();
  _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(v0, v1, &protocol conformance descriptor for ContactNLv3Intent);
  OUTLINED_FUNCTION_2_18();
  IntentNodeTraversable.value<A>(forNode:)();
  if (v6 != 2)
  {
    v3 = specialized == infix<A>(_:_:)(v6 & 1);
    v2 = 0;
    if ((v3 & 1) == 0)
    {
      return v2 & 1;
    }

    if (one-time initialization token for contactVerb != -1)
    {
      OUTLINED_FUNCTION_3_10(&one-time initialization token for contactVerb);
    }

    OUTLINED_FUNCTION_2_18();
    IntentNodeTraversable.value<A>(forNode:)();
    if (v5 != 17)
    {
      v2 = specialized == infix<A>(_:_:)(v5, 0);
      return v2 & 1;
    }
  }

  v2 = 0;
  return v2 & 1;
}

uint64_t ContactNLv3Intent.isMeCardRequest.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
  OUTLINED_FUNCTION_18_0(v0);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v1);
  v3 = &v25[-1] - v2;
  v4 = type metadata accessor for NonTerminalIntentNode();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v25[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for personNode != -1)
  {
    OUTLINED_FUNCTION_6_21(&one-time initialization token for personNode);
  }

  type metadata accessor for ContactNLv3Intent(0);
  OUTLINED_FUNCTION_0_34();
  _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(v10, v11, &protocol conformance descriptor for ContactNLv3Intent);
  IntentNodeTraversable.intentNode(forOntologyNode:)();
  OUTLINED_FUNCTION_57(v3, 1, v4);
  if (v23)
  {
    outlined destroy of Result<TemplatingResult, Error>(v3, &_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
    if (one-time initialization token for contactReference != -1)
    {
      OUTLINED_FUNCTION_4_22(&one-time initialization token for contactReference);
    }

    IntentNodeTraversable.value<A>(forNode:)();
    if (LOBYTE(v25[0]) != 38)
    {
      v12 = specialized == infix<A>(_:_:)(LOBYTE(v25[0]), 35);
      return v12 & 1;
    }

LABEL_17:
    v12 = 0;
    return v12 & 1;
  }

  v13 = OUTLINED_FUNCTION_25_8();
  v14(v13);
  v15 = *(NonTerminalIntentNode.childNodes.getter() + 16);

  if (v15 != 1)
  {
    (*(v6 + 8))(v9, v4);
    goto LABEL_17;
  }

  result = NonTerminalIntentNode.childNodes.getter();
  if (*(result + 16))
  {
    outlined init with copy of DeviceState(result + 32, v25);

    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    OUTLINED_FUNCTION_44_3();
    v17 = dispatch thunk of IntentNode.ontologyNodeName.getter();
    v19 = v18;
    type metadata accessor for PersonOntologyNode();
    static PersonOntologyNode.personSelfReferenceNode.getter();
    v20 = TerminalOntologyNode.name.getter();
    v22 = v21;

    v23 = v17 == v20 && v19 == v22;
    if (v23)
    {
      v12 = 1;
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    (*(v6 + 8))(v9, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    return v12 & 1;
  }

  __break(1u);
  return result;
}

uint64_t ContactNLv3Intent.hasModifyVerb.getter()
{
  if (one-time initialization token for contactVerb != -1)
  {
    OUTLINED_FUNCTION_3_10(&one-time initialization token for contactVerb);
  }

  type metadata accessor for ContactNLv3Intent(0);
  OUTLINED_FUNCTION_0_34();
  _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(v0, v1, &protocol conformance descriptor for ContactNLv3Intent);
  OUTLINED_FUNCTION_22_0();
  IntentNodeTraversable.value<A>(forNode:)();
  if (v7 == 17)
  {
LABEL_10:
    v2 = 0;
    return v2 & 1;
  }

  OUTLINED_FUNCTION_22_0();
  IntentNodeTraversable.value<A>(forNode:)();
  if (v6 == 17 || (specialized == infix<A>(_:_:)(v6, 4) & 1) == 0)
  {
    OUTLINED_FUNCTION_22_0();
    IntentNodeTraversable.value<A>(forNode:)();
    if (v5 == 17 || (specialized == infix<A>(_:_:)(v5, 15) & 1) == 0)
    {
      OUTLINED_FUNCTION_22_0();
      IntentNodeTraversable.value<A>(forNode:)();
      if (v4 != 17)
      {
        v2 = specialized == infix<A>(_:_:)(v4, 13);
        return v2 & 1;
      }

      goto LABEL_10;
    }
  }

  v2 = 1;
  return v2 & 1;
}

uint64_t ContactNLv3Intent.isPronounceName.getter(uint64_t a1)
{
  if (one-time initialization token for contactVerb != -1)
  {
    OUTLINED_FUNCTION_3_10(&one-time initialization token for contactVerb);
  }

  type metadata accessor for ContactNLv3Intent(0);
  OUTLINED_FUNCTION_0_34();
  _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(v2, v3, &protocol conformance descriptor for ContactNLv3Intent);
  OUTLINED_FUNCTION_25_8();
  IntentNodeTraversable.value<A>(forNode:)();
  if (v7 == 17 || (OUTLINED_FUNCTION_25_8(), IntentNodeTraversable.value<A>(forNode:)(), v6 == 17))
  {
    v4 = 0;
  }

  else
  {
    v4 = specialized == infix<A>(_:_:)(v6, a1);
  }

  return v4 & 1;
}