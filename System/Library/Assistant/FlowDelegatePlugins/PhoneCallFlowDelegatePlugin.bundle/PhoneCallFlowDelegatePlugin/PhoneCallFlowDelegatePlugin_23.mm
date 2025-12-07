uint64_t closure #2 in PhoneCallBaseCatTemplatingService.makeSpeakableDisambiguationItemListForPhone(disambiguationList:_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v6 = a2;
    if (result + 1 == *(*a4 + 16) && (a5 & 1) == 0)
    {
    }

    else
    {
      v7 = (a6 + *(*a6 + class metadata base offset for PhoneCallBaseCatTemplatingService + 16));
      v8 = *v7;
      v9 = v7[1];

      v10._countAndFlagsBits = v8;
      v10._object = v9;
      String.append(_:)(v10);
      return a2;
    }

    return v6;
  }

  return result;
}

uint64_t (*PhoneCallBaseCatTemplatingService.appendVoxContactsReadout(disambiguationList:_:)(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  OUTLINED_FUNCTION_68_0();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = v3;
  v7[4] = a2;
  v7[5] = a3;

  return partial apply for closure #1 in PhoneCallBaseCatTemplatingService.appendVoxContactsReadout(disambiguationList:_:);
}

uint64_t closure #1 in PhoneCallBaseCatTemplatingService.appendVoxContactsReadout(disambiguationList:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v10 = *(v35 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v35);
  v38 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v34 = &v29 - v13;
  v14 = type metadata accessor for TemplatingResult();
  v33 = *(v14 - 8);
  v15 = *(v33 + 64);
  __chkstk_darwin(v14);
  v36 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v37 = &v29 - v17;
  if (SiriKitDisambiguationList.shouldReadItemsInVox.getter())
  {
    v18 = (a3 + *(*a3 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40));
    v32 = v11;
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    v19 = v32;
    if (DeviceState.isVox.getter())
    {
      v20 = v34;
      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(a1, v34, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v22 = v20;
        v30 = a1;
        v23 = v33;
        v35 = a2;
        v31 = *(v33 + 32);
        v24 = v37;
        v31(v37, v22, v14);
        outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v30, v38, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
        (*(v23 + 16))(v36, v24, v14);
        v25 = a5;
        v26 = (*(v10 + 80) + 32) & ~*(v10 + 80);
        v27 = (v19 + *(v23 + 80) + v26) & ~*(v23 + 80);
        v28 = swift_allocObject();
        *(v28 + 16) = a4;
        *(v28 + 24) = v25;
        outlined init with take of Result<TemplatingResult, Error>(v38, v28 + v26);
        v31((v28 + v27), v36, v14);

        PhoneCallBaseCatTemplatingService.makeSpeakableDisambiguationItemListForPhone(disambiguationList:_:)();

        return (*(v23 + 8))(v37, v14);
      }

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v20, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
    }
  }

  return a4(a1);
}

void *closure #1 in closure #1 in PhoneCallBaseCatTemplatingService.appendVoxContactsReadout(disambiguationList:_:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a4;
  v36 = a5;
  v37 = a3;
  v38 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin(v6);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = (v34 - v10);
  v12 = type metadata accessor for TemplatingResult();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v34[0] = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v34 - v16;
  __chkstk_darwin(v18);
  v20 = v34 - v19;
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(a1, v11, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v34[1] = v6;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = *v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    swift_willThrowTypedImpl();

    return v38(v35);
  }

  v22 = *(v13 + 32);
  v22(v17, v11, v12);
  v22(v20, v17, v12);
  v23 = TemplatingResult.templateIdentifier.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_424FD0;
  result = TemplatingResult.speak.getter();
  if (!result[2])
  {
    __break(1u);
    goto LABEL_8;
  }

  v35 = v23;
  v25 = result[4];
  v26 = result[5];

  v39 = v25;
  v40 = v26;
  v27._countAndFlagsBits = 32;
  v27._object = 0xE100000000000000;
  String.append(_:)(v27);
  result = TemplatingResult.speak.getter();
  if (!result[2])
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v29 = result[4];
  v28 = result[5];

  v30._countAndFlagsBits = v29;
  v30._object = v28;
  String.append(_:)(v30);

  v31 = v40;
  *(v24 + 32) = v39;
  *(v24 + 40) = v31;
  TemplatingResult.print.getter();
  v32 = v34[0];
  TemplatingResult.init(templateIdentifier:speak:print:)();
  (*(v13 + 16))(v8, v32, v12);
  swift_storeEnumTagMultiPayload();
  v38(v8);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v8, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v33 = *(v13 + 8);
  v33(v32, v12);
  return (v33)(v20, v12);
}

void PhoneCallBaseCatTemplatingService.makeParameterPromptDialog(app:parameterName:intent:_:)()
{
  OUTLINED_FUNCTION_66();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_2_0();
  v44 = v8;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v9);
  v10 = OUTLINED_FUNCTION_29_3();
  type metadata accessor for PhoneError(v10);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_12_5();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v17 = (&v42 - v16);
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_42_13();
  *v17 = 0xD000000000000036;
  v17[1] = 0x800000000045DA60;
  swift_storeEnumTagMultiPayload();
  PhoneError.logged()(v2);
  outlined destroy of PhoneError(v17);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.siriPhone);
  v20 = OUTLINED_FUNCTION_19_7();
  outlined init with copy of PhoneError(v20, v14);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v43 = v7;
    v24 = v23;
    v25 = swift_slowAlloc();
    v42 = v5;
    v26 = v25;
    v46 = v3;
    v47 = v25;
    *v24 = 136315394;
    type metadata accessor for PhoneCallBaseCatTemplatingService(0, *(v44 + class metadata base offset for PhoneCallBaseCatTemplatingService), *(v44 + class metadata base offset for PhoneCallBaseCatTemplatingService + 8), v27);

    v28 = String.init<A>(describing:)();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v47);

    *(v24 + 4) = v30;
    *(v24 + 12) = 2080;
    OUTLINED_FUNCTION_13_37();
    lazy protocol witness table accessor for type INIntentSlotValueType and conformance INIntentSlotValueType(v31, v32, &protocol conformance descriptor for PhoneError);
    v33 = Error.localizedDescription.getter();
    v35 = v34;
    outlined destroy of PhoneError(v14);
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v47);

    *(v24 + 14) = v36;
    _os_log_impl(&dword_0, v21, v22, "#%s: %s", v24, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v26);
    v37 = v24;
    v7 = v43;
    OUTLINED_FUNCTION_26_0(v37);
  }

  else
  {

    outlined destroy of PhoneError(v14);
  }

  OUTLINED_FUNCTION_13_37();
  lazy protocol witness table accessor for type INIntentSlotValueType and conformance INIntentSlotValueType(v38, v39, &protocol conformance descriptor for PhoneError);
  v40 = swift_allocError();
  outlined init with copy of PhoneError(v2, v41);
  *v1 = v40;
  swift_storeEnumTagMultiPayload();
  v7(v1);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v1, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  outlined destroy of PhoneError(v2);
  OUTLINED_FUNCTION_65();
}

void PhoneCallBaseCatTemplatingService.__allocating_init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:deviceState:localContext:)()
{
  swift_allocObject();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t PhoneCallBaseCatTemplatingService.__ivar_destroyer()
{
  OUTLINED_FUNCTION_35_0();

  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_2_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + *(v1 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40)));
  OUTLINED_FUNCTION_2_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + *(v2 + class metadata base offset for PhoneCallBaseCatTemplatingService + 48)));
  OUTLINED_FUNCTION_2_0();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + *(v3 + class metadata base offset for PhoneCallBaseCatTemplatingService + 56), &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  OUTLINED_FUNCTION_2_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + *(v4 + class metadata base offset for PhoneCallBaseCatTemplatingService + 64)));
  OUTLINED_FUNCTION_2_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + *(v5 + class metadata base offset for PhoneCallBaseCatTemplatingService + 72)));
  OUTLINED_FUNCTION_2_0();
}

uint64_t PhoneCallBaseCatTemplatingService.deinit()
{
  v0 = DucTemplatingService.deinit();

  OUTLINED_FUNCTION_41_0();

  OUTLINED_FUNCTION_41_0();

  OUTLINED_FUNCTION_41_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + *(v1 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40)));
  OUTLINED_FUNCTION_41_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + *(v2 + class metadata base offset for PhoneCallBaseCatTemplatingService + 48)));
  OUTLINED_FUNCTION_41_0();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + *(v3 + class metadata base offset for PhoneCallBaseCatTemplatingService + 56), &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  OUTLINED_FUNCTION_41_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + *(v4 + class metadata base offset for PhoneCallBaseCatTemplatingService + 64)));
  OUTLINED_FUNCTION_41_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + *(v5 + class metadata base offset for PhoneCallBaseCatTemplatingService + 72)));
  OUTLINED_FUNCTION_41_0();

  return v0;
}

uint64_t PhoneCallBaseCatTemplatingService.__deallocating_deinit()
{
  PhoneCallBaseCatTemplatingService.deinit();

  return swift_deallocClassInstance();
}

uint64_t partial apply for closure #1 in PhoneCallBaseCatTemplatingService.makeOpenAppDialog(app:_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync;

  return closure #1 in PhoneCallBaseCatTemplatingService.makeOpenAppDialog(app:_:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

void specialized PhoneCallBaseCatTemplatingService.init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_66();
  v68 = v25;
  v27 = v26;
  v29 = v28;
  v72 = v30;
  v32 = v31;
  v34 = v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25DucTemplatingLocalContextVSgMd, &_s11SiriKitFlow25DucTemplatingLocalContextVSgMR);
  OUTLINED_FUNCTION_21(v35);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v36);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_13(v37);
  v70 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v69 = v38;
  __chkstk_darwin(v39);
  OUTLINED_FUNCTION_4();
  v42 = v41 - v40;
  v78[3] = a22;
  v78[4] = a24;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v78);
  (*(*(a22 - 8) + 32))(boxed_opaque_existential_1, v29, a22);
  v77[3] = a23;
  v77[4] = a25;
  v44 = __swift_allocate_boxed_opaque_existential_1(v77);
  (*(*(a23 - 8) + 32))(v44, v27, a23);
  OUTLINED_FUNCTION_17_28((a21 + *(*a21 + class metadata base offset for PhoneCallBaseCatTemplatingService + 16)));
  OUTLINED_FUNCTION_72_0();
  v46 = a21 + *(v45 + class metadata base offset for PhoneCallBaseCatTemplatingService + 56);
  *v46 = 0u;
  *(v46 + 1) = 0u;
  *(v46 + 4) = 0;
  OUTLINED_FUNCTION_72_0();
  outlined init with copy of SignalProviding(v34, a21 + *(v47 + class metadata base offset for PhoneCallBaseCatTemplatingService + 72));
  v48 = v34[4];
  v49 = OUTLINED_FUNCTION_55();
  __swift_project_boxed_opaque_existential_1(v49, v50);
  v51 = OUTLINED_FUNCTION_5();
  v52(v51, v48);
  OUTLINED_FUNCTION_72_0();
  v54 = *(v53 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40);
  outlined init with take of PhoneCallFeatureFlagProviding(&v75, a21 + v54);
  OUTLINED_FUNCTION_72_0();
  *(a21 + *(v55 + class metadata base offset for PhoneCallBaseCatTemplatingService + 24)) = v32;
  OUTLINED_FUNCTION_72_0();
  *(a21 + *(v56 + class metadata base offset for PhoneCallBaseCatTemplatingService + 32)) = v72;
  OUTLINED_FUNCTION_72_0();
  outlined init with copy of SignalProviding(v78, a21 + *(v57 + class metadata base offset for PhoneCallBaseCatTemplatingService + 48));
  OUTLINED_FUNCTION_72_0();
  outlined init with copy of SignalProviding(v77, a21 + *(v58 + class metadata base offset for PhoneCallBaseCatTemplatingService + 64));
  OUTLINED_FUNCTION_72_0();
  *(a21 + *(v59 + class metadata base offset for PhoneCallBaseCatTemplatingService + 80)) = v68;
  outlined init with copy of SignalProviding(a21 + v54, &v75);
  __swift_project_boxed_opaque_existential_1(&v75, v76);

  dispatch thunk of DeviceState.siriLocale.getter();
  v74[0] = Locale.identifier.getter();
  v74[1] = v60;
  v73[0] = 45;
  v73[1] = 0xE100000000000000;
  v74[5] = 95;
  v74[6] = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_19_3();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  (*(v69 + 8))(v42, v70);

  type metadata accessor for INIntentSlotValueType(0);
  OUTLINED_FUNCTION_9_45();
  lazy protocol witness table accessor for type INIntentSlotValueType and conformance INIntentSlotValueType(v61, v62, &protocol conformance descriptor for INIntentSlotValueType);
  Dictionary.init(dictionaryLiteral:)();
  v63 = v34[3];
  v64 = v34[4];
  __swift_project_boxed_opaque_existential_1(v34, v63);
  (*(v64 + 24))(v74, v63, v64);
  outlined init with copy of SignalProviding(a21 + v54, v73);
  v65 = type metadata accessor for DucTemplatingLocalContext();
  OUTLINED_FUNCTION_27_19(v71, v66, v67, v65);
  DucTemplatingService.init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:deviceState:localContext:)();

  __swift_destroy_boxed_opaque_existential_1(v77);
  __swift_destroy_boxed_opaque_existential_1(v78);
  __swift_destroy_boxed_opaque_existential_1(&v75);
  __swift_destroy_boxed_opaque_existential_1(v34);
  OUTLINED_FUNCTION_65();
}

void *partial apply for closure #1 in closure #1 in PhoneCallBaseCatTemplatingService.appendVoxContactsReadout(disambiguationList:_:)(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = type metadata accessor for TemplatingResult();
  OUTLINED_FUNCTION_21(v6);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = v1 + ((v4 + v5 + *(v7 + 80)) & ~*(v7 + 80));

  return closure #1 in closure #1 in PhoneCallBaseCatTemplatingService.appendVoxContactsReadout(disambiguationList:_:)(a1, v8, v9, v1 + v4, v10);
}

PhoneCallFlowDelegatePlugin::PhoneCallCommonCATPatternsIdentifiers_optional __swiftcall PhoneCallCommonCATPatternsIdentifiers.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallCommonCATPatternsIdentifiers.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = PhoneCallFlowDelegatePlugin_PhoneCallCommonCATPatternsIdentifiers_promptCancelled;
  }

  else
  {
    v4.value = PhoneCallFlowDelegatePlugin_PhoneCallCommonCATPatternsIdentifiers_unknownDefault;
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

unint64_t PhoneCallCommonCATPatternsIdentifiers.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD00000000000001FLL;
  }

  else
  {
    return 0xD000000000000028;
  }
}

PhoneCallFlowDelegatePlugin::PhoneCallCommonCATPatternsIdentifiers_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallCommonCATPatternsIdentifiers@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallCommonCATPatternsIdentifiers_optional *a2@<X8>)
{
  result.value = PhoneCallCommonCATPatternsIdentifiers.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallCommonCATPatternsIdentifiers@<X0>(unint64_t *a1@<X8>)
{
  result = PhoneCallCommonCATPatternsIdentifiers.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t PhoneCallCommonCATPatternsExecutor.phoneFeaturesUnavailable()()
{
  v1 = OUTLINED_FUNCTION_1();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = AnnounceCallBellCATPatternsExecutor.informDoubleTapToEnd();

  return v3(0xD000000000000028, 0x8000000000452C30, _swiftEmptyArrayStorage);
}

uint64_t PhoneCallCommonCATPatternsExecutor.promptCancelled()()
{
  v1 = OUTLINED_FUNCTION_1();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = AnnounceCallBellCATPatternsExecutor.announceCallBellEnded();

  return v3(0xD00000000000001FLL, 0x8000000000452C60, _swiftEmptyArrayStorage);
}

unint64_t lazy protocol witness table accessor for type PhoneCallCommonCATPatternsIdentifiers and conformance PhoneCallCommonCATPatternsIdentifiers()
{
  result = lazy protocol witness table cache variable for type PhoneCallCommonCATPatternsIdentifiers and conformance PhoneCallCommonCATPatternsIdentifiers;
  if (!lazy protocol witness table cache variable for type PhoneCallCommonCATPatternsIdentifiers and conformance PhoneCallCommonCATPatternsIdentifiers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallCommonCATPatternsIdentifiers and conformance PhoneCallCommonCATPatternsIdentifiers);
  }

  return result;
}

uint64_t protocol witness for PhoneCallCommonCATPatternsExecuting.phoneFeaturesUnavailable() in conformance PhoneCallCommonCATPatternsExecutor()
{
  v4 = (*(**v0 + class metadata base offset for PhoneCallCommonCATPatternsExecutor) + **(**v0 + class metadata base offset for PhoneCallCommonCATPatternsExecutor));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = AnnounceCallBellCATPatternsExecutor.informDoubleTapToEnd();

  return v4();
}

uint64_t protocol witness for PhoneCallCommonCATPatternsExecuting.promptCancelled() in conformance PhoneCallCommonCATPatternsExecutor()
{
  v4 = (*(**v0 + class metadata base offset for PhoneCallCommonCATPatternsExecutor + 8) + **(**v0 + class metadata base offset for PhoneCallCommonCATPatternsExecutor + 8));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = AnnounceCallBellCATPatternsExecutor.informDoubleTapToEnd();

  return v4();
}

_BYTE *storeEnumTagSinglePayload for PhoneCallCommonCATPatternsIdentifiers(_BYTE *result, unsigned int a2, unsigned int a3)
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

PhoneCallFlowDelegatePlugin::PhoneCallCommonCATs::Properties_optional __swiftcall PhoneCallCommonCATs.Properties.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallCommonCATs.Properties.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t PhoneCallCommonCATs.Properties.rawValue.getter(char a1)
{
  result = 0xD000000000000016;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001DLL;
      break;
    case 2:
      result = 0xD000000000000028;
      break;
    case 3:
      result = 0xD00000000000001FLL;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallCommonCATs::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallCommonCATs.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallCommonCATs::Properties_optional *a2@<X8>)
{
  result.value = PhoneCallCommonCATs.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallCommonCATs.Properties@<X0>(unint64_t *a1@<X8>)
{
  result = PhoneCallCommonCATs.Properties.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t PhoneCallCommonCATs.orList(items:completion:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1(v4);
  OUTLINED_FUNCTION_1_13(v5, xmmword_424FD0);
  v5[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  v5[3].n128_u64[0] = a1;

  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PhoneCallCommonCATs.orList(items:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t PhoneCallCommonCATs.orList(items:)()
{
  v1 = v0[3];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  v0[5] = v3;
  OUTLINED_FUNCTION_1_13(v3, xmmword_424FD0);
  v3[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  v3[3].n128_u64[0] = v1;
  v8 = (&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[6] = v4;
  *v4 = v5;
  v4[1] = PhoneCallCommonCATs.orList(items:);
  v6 = v0[2];

  return v8(v6, 0xD000000000000016, 0x8000000000452C80, v3);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_11();

    return v10();
  }
}

{
  v1 = v0[2];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  v0[4] = v3;
  OUTLINED_FUNCTION_1_13(v3, xmmword_424FD0);
  v3[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  v3[3].n128_u64[0] = v1;
  v6 = (&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = PhoneCallCommonCATs.orList(items:);

  return v6(0xD000000000000016, 0x8000000000452C80, v3);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v5 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {

    v12 = *(v7 + 8);

    return v12(v3);
  }
}

uint64_t PhoneCallCommonCATs.orList(items:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t PhoneCallCommonCATs.orList(items:)(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  OUTLINED_FUNCTION_1_13(v3, xmmword_424FD0);
  v3[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  v3[3].n128_u64[0] = a1;

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t PhoneCallCommonCATs.orListForPics(contactNamesNotFromPics:contactNameOfPics:inferenceSource:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = OUTLINED_FUNCTION_21(v8);
  __chkstk_darwin(v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v16 = OUTLINED_FUNCTION_47(v15);
  v17 = OUTLINED_FUNCTION_8_51(v16, xmmword_426980);
  v17[2].n128_u64[0] = 0xD000000000000017;
  v17[2].n128_u64[1] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  *(v16 + 48) = a1;
  OUTLINED_FUNCTION_27_2();
  *(v16 + 72) = v19;
  *(v16 + 80) = 0xD000000000000011;
  *(v16 + 88) = v20;
  outlined init with copy of SpeakableString?(a2, v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v21 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v14, 1, v21) == 1)
  {

    outlined destroy of SpeakableString?(v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v16 + 96) = 0u;
    *(v16 + 112) = 0u;
  }

  else
  {
    *(v16 + 120) = v21;
    __swift_allocate_boxed_opaque_existential_1((v16 + 96));
    OUTLINED_FUNCTION_40();
    (*(v22 + 32))(v23);
  }

  OUTLINED_FUNCTION_0_75();
  *(v16 + 128) = v24;
  *(v16 + 136) = v25;
  outlined init with copy of SpeakableString?(a3, v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (__swift_getEnumTagSinglePayload(v11, 1, v21) == 1)
  {
    outlined destroy of SpeakableString?(v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v16 + 144) = 0u;
    *(v16 + 160) = 0u;
  }

  else
  {
    *(v16 + 168) = v21;
    __swift_allocate_boxed_opaque_existential_1((v16 + 144));
    OUTLINED_FUNCTION_40();
    (*(v26 + 32))(v27);
  }

  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PhoneCallCommonCATs.orListForPics(contactNamesNotFromPics:contactNameOfPics:inferenceSource:)()
{
  OUTLINED_FUNCTION_15();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v6);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  v1 = v0[8];
  v3 = v0[3];
  v2 = v0[4];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_47(v4);
  v0[9] = v5;
  v6 = OUTLINED_FUNCTION_8_51(v5, xmmword_426980);
  v6[2].n128_u64[0] = 0xD000000000000017;
  v6[2].n128_u64[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  *(v5 + 48) = v3;
  OUTLINED_FUNCTION_27_2();
  *(v5 + 72) = v8;
  *(v5 + 80) = 0xD000000000000011;
  *(v5 + 88) = v9;
  outlined init with copy of SpeakableString?(v2, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v10 = type metadata accessor for SpeakableString();
  v11 = OUTLINED_FUNCTION_15_4();
  v12 = v0[8];
  if (v11 == 1)
  {

    outlined destroy of SpeakableString?(v12, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v5 + 96) = 0u;
    *(v5 + 112) = 0u;
  }

  else
  {
    *(v5 + 120) = v10;
    __swift_allocate_boxed_opaque_existential_1((v5 + 96));
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_16_0();
    v13();
  }

  v14 = v0[7];
  OUTLINED_FUNCTION_0_75();
  *(v5 + 128) = v15;
  *(v5 + 136) = v16;
  outlined init with copy of SpeakableString?(v17, v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_15_4() == 1)
  {
    outlined destroy of SpeakableString?(v0[7], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v5 + 144) = 0u;
    *(v5 + 160) = 0u;
  }

  else
  {
    *(v5 + 168) = v10;
    __swift_allocate_boxed_opaque_existential_1((v5 + 144));
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_16_0();
    v18();
  }

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v24 = v19;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[10] = v20;
  *v20 = v21;
  v20[1] = PhoneCallCommonCATs.orListForPics(contactNamesNotFromPics:contactNameOfPics:inferenceSource:);
  v22 = v0[2];

  return v24(v22, 0xD00000000000001DLL, 0x8000000000452CA0, v5);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_11();

    return v10();
  }
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v0();
}

{
  OUTLINED_FUNCTION_15();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v5);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v6, v7, v8);
}

{
  v1 = v0[7];
  v3 = v0[2];
  v2 = v0[3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_47(v4);
  v0[8] = v5;
  v6 = OUTLINED_FUNCTION_8_51(v5, xmmword_426980);
  v6[2].n128_u64[0] = 0xD000000000000017;
  v6[2].n128_u64[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  *(v5 + 48) = v3;
  OUTLINED_FUNCTION_27_2();
  *(v5 + 72) = v8;
  *(v5 + 80) = 0xD000000000000011;
  *(v5 + 88) = v9;
  outlined init with copy of SpeakableString?(v2, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v10 = type metadata accessor for SpeakableString();
  v11 = OUTLINED_FUNCTION_15_4();
  v12 = v0[7];
  if (v11 == 1)
  {

    outlined destroy of SpeakableString?(v12, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v5 + 96) = 0u;
    *(v5 + 112) = 0u;
  }

  else
  {
    *(v5 + 120) = v10;
    __swift_allocate_boxed_opaque_existential_1((v5 + 96));
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_16_0();
    v13();
  }

  v14 = v0[6];
  OUTLINED_FUNCTION_0_75();
  *(v5 + 128) = v15;
  *(v5 + 136) = v16;
  outlined init with copy of SpeakableString?(v17, v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_15_4() == 1)
  {
    outlined destroy of SpeakableString?(v0[6], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v5 + 144) = 0u;
    *(v5 + 160) = 0u;
  }

  else
  {
    *(v5 + 168) = v10;
    __swift_allocate_boxed_opaque_existential_1((v5 + 144));
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_16_0();
    v18();
  }

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v23 = v19;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[9] = v20;
  *v20 = v21;
  v20[1] = PhoneCallCommonCATs.orListForPics(contactNamesNotFromPics:contactNameOfPics:inferenceSource:);

  return v23(0xD00000000000001DLL, 0x8000000000452CA0, v5);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v5 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {

    v12 = *(v7 + 8);

    return v12(v3);
  }
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t PhoneCallCommonCATs.orListForPics(contactNamesNotFromPics:contactNameOfPics:inferenceSource:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = OUTLINED_FUNCTION_21(v6);
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_47(v13);
  v15 = OUTLINED_FUNCTION_8_51(v14, xmmword_426980);
  v15[2].n128_u64[0] = 0xD000000000000017;
  v15[2].n128_u64[1] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  *(v14 + 48) = a1;
  OUTLINED_FUNCTION_27_2();
  *(v14 + 72) = v17;
  *(v14 + 80) = 0xD000000000000011;
  *(v14 + 88) = v18;
  outlined init with copy of SpeakableString?(a2, v12, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v19 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v12, 1, v19) == 1)
  {

    outlined destroy of SpeakableString?(v12, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v14 + 96) = 0u;
    *(v14 + 112) = 0u;
  }

  else
  {
    *(v14 + 120) = v19;
    __swift_allocate_boxed_opaque_existential_1((v14 + 96));
    OUTLINED_FUNCTION_40();
    (*(v20 + 32))();
  }

  OUTLINED_FUNCTION_0_75();
  *(v14 + 128) = v21;
  *(v14 + 136) = v22;
  outlined init with copy of SpeakableString?(a3, v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (__swift_getEnumTagSinglePayload(v9, 1, v19) == 1)
  {
    outlined destroy of SpeakableString?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v14 + 144) = 0u;
    *(v14 + 160) = 0u;
  }

  else
  {
    *(v14 + 168) = v19;
    __swift_allocate_boxed_opaque_existential_1((v14 + 144));
    OUTLINED_FUNCTION_40();
    (*(v23 + 32))();
  }

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t PhoneCallCommonCATs.phoneFeaturesUnavailable()()
{
  OUTLINED_FUNCTION_27();
  v2 = v1;
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v7 = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v4;
  *v4 = v5;
  v4[1] = closure #1 in ActionableCallControlFlow.execute();

  return v7(v2, 0xD000000000000028, 0x8000000000452C30, _swiftEmptyArrayStorage);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();

  return v4(0xD000000000000028, 0x8000000000452C30, _swiftEmptyArrayStorage);
}

{
  return OUTLINED_FUNCTION_33_1(40);
}

uint64_t PhoneCallCommonCATs.promptCancelled()()
{
  OUTLINED_FUNCTION_27();
  v2 = v1;
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v7 = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v4;
  *v4 = v5;
  v4[1] = closure #2 in ActionableCallControlFlow.execute();

  return v7(v2, 0xD00000000000001FLL, 0x8000000000452C60, _swiftEmptyArrayStorage);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = AddCallParticipantCATs.errorNoTargetCall();

  return v4(0xD00000000000001FLL, 0x8000000000452C60, _swiftEmptyArrayStorage);
}

{
  return OUTLINED_FUNCTION_33_1(31);
}

unint64_t lazy protocol witness table accessor for type PhoneCallCommonCATs.Properties and conformance PhoneCallCommonCATs.Properties()
{
  result = lazy protocol witness table cache variable for type PhoneCallCommonCATs.Properties and conformance PhoneCallCommonCATs.Properties;
  if (!lazy protocol witness table cache variable for type PhoneCallCommonCATs.Properties and conformance PhoneCallCommonCATs.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallCommonCATs.Properties and conformance PhoneCallCommonCATs.Properties);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneCallCommonCATs.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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

PhoneCallFlowDelegatePlugin::PhoneCallCommonCATsSimple::Properties_optional __swiftcall PhoneCallCommonCATsSimple.Properties.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallCommonCATsSimple.Properties.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t PhoneCallCommonCATsSimple.Properties.rawValue.getter(char a1)
{
  result = 0xD000000000000016;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001DLL;
      break;
    case 2:
      result = 0xD000000000000028;
      break;
    case 3:
      result = 0xD00000000000001FLL;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallCommonCATsSimple::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallCommonCATsSimple.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallCommonCATsSimple::Properties_optional *a2@<X8>)
{
  result.value = PhoneCallCommonCATsSimple.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallCommonCATsSimple.Properties@<X0>(unint64_t *a1@<X8>)
{
  result = PhoneCallCommonCATsSimple.Properties.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t PhoneCallCommonCATsSimple.orList(items:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t PhoneCallCommonCATsSimple.orList(items:)()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  v0[4] = v2;
  OUTLINED_FUNCTION_1_13(v2, xmmword_424FD0);
  v2[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  v2[3].n128_u64[0] = v1;
  v5 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = AnnounceIncomingCallCATsSimple.intentHandledResponseAsLabels(incomingCallConcept:);

  return v5(0xD000000000000016, 0x8000000000452C80, v2);
}

BOOL PhoneCallCommonCATsSimple.OrListDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallCommonCATsSimple.OrListDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallCommonCATsSimple.OrListDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = PhoneCallCommonCATsSimple.OrListDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t PhoneCallCommonCATsSimple.orListAsLabels(items:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t PhoneCallCommonCATsSimple.orListAsLabels(items:)()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  v0[4] = v2;
  OUTLINED_FUNCTION_1_13(v2, xmmword_424FD0);
  v2[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  v2[3].n128_u64[0] = v1;
  v6 = (&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));

  v3 = swift_task_alloc();
  v0[5] = v3;
  lazy protocol witness table accessor for type PhoneCallCommonCATsSimple.OrListDialogIds and conformance PhoneCallCommonCATsSimple.OrListDialogIds();
  OUTLINED_FUNCTION_9();
  *v3 = v4;
  v3[1] = AnnounceIncomingCallCATsSimple.intentHandledResponse(incomingCallConcept:);

  return v6(0xD000000000000016, 0x8000000000452C80, v2, &type metadata for PhoneCallCommonCATsSimple.OrListDialogIds);
}

unint64_t lazy protocol witness table accessor for type PhoneCallCommonCATsSimple.OrListDialogIds and conformance PhoneCallCommonCATsSimple.OrListDialogIds()
{
  result = lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.OrListDialogIds and conformance PhoneCallCommonCATsSimple.OrListDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.OrListDialogIds and conformance PhoneCallCommonCATsSimple.OrListDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.OrListDialogIds and conformance PhoneCallCommonCATsSimple.OrListDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.OrListDialogIds and conformance PhoneCallCommonCATsSimple.OrListDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.OrListDialogIds and conformance PhoneCallCommonCATsSimple.OrListDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.OrListDialogIds and conformance PhoneCallCommonCATsSimple.OrListDialogIds);
  }

  return result;
}

uint64_t PhoneCallCommonCATsSimple.orListForPics(contactNamesNotFromPics:contactNameOfPics:inferenceSource:)()
{
  OUTLINED_FUNCTION_15();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_21_25();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = swift_allocObject();
  v2[8] = v4;
  OUTLINED_FUNCTION_18_22(v4, "contactNamesNotFromPics", xmmword_426980);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  OUTLINED_FUNCTION_17_29(v5, "contactNameOfPics");
  outlined init with copy of PhoneCallNLIntent?(v0, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  v7 = OUTLINED_FUNCTION_15_4();
  v8 = v2[7];
  if (v7 == 1)
  {

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v6;
    __swift_allocate_boxed_opaque_existential_1((v4 + 96));
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v9();
  }

  v10 = OUTLINED_FUNCTION_4_49();
  outlined init with copy of PhoneCallNLIntent?(v10, v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_15_4() == 1)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v2[6], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 144) = 0u;
    *(v4 + 160) = 0u;
  }

  else
  {
    *(v4 + 168) = v6;
    __swift_allocate_boxed_opaque_existential_1((v4 + 144));
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v11();
  }

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v15 = v12;
  v13 = swift_task_alloc();
  v2[9] = v13;
  *v13 = v2;
  v13[1] = PhoneCallCommonCATsSimple.orListForPics(contactNamesNotFromPics:contactNameOfPics:inferenceSource:);

  return v15(v3 + 12, 0x8000000000452CA0, v4);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_49();

    return v11(v10);
  }
}

{
  OUTLINED_FUNCTION_15();

  v1 = *(v0 + 8);

  return v1();
}

BOOL PhoneCallCommonCATsSimple.OrListForPicsDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallCommonCATsSimple.OrListForPicsDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallCommonCATsSimple.OrListForPicsDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = PhoneCallCommonCATsSimple.OrListForPicsDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t PhoneCallCommonCATsSimple.orListForPicsAsLabels(contactNamesNotFromPics:contactNameOfPics:inferenceSource:)()
{
  OUTLINED_FUNCTION_15();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_21_25();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = swift_allocObject();
  v2[8] = v4;
  OUTLINED_FUNCTION_18_22(v4, "contactNamesNotFromPics", xmmword_426980);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  OUTLINED_FUNCTION_17_29(v5, "contactNameOfPics");
  outlined init with copy of PhoneCallNLIntent?(v0, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  v7 = OUTLINED_FUNCTION_15_4();
  v8 = v2[7];
  if (v7 == 1)
  {

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v6;
    __swift_allocate_boxed_opaque_existential_1((v4 + 96));
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v9();
  }

  v10 = OUTLINED_FUNCTION_4_49();
  outlined init with copy of PhoneCallNLIntent?(v10, v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_15_4() == 1)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v2[6], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 144) = 0u;
    *(v4 + 160) = 0u;
  }

  else
  {
    *(v4 + 168) = v6;
    __swift_allocate_boxed_opaque_existential_1((v4 + 144));
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v11();
  }

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v16 = v12;
  v13 = swift_task_alloc();
  v2[9] = v13;
  lazy protocol witness table accessor for type PhoneCallCommonCATsSimple.OrListForPicsDialogIds and conformance PhoneCallCommonCATsSimple.OrListForPicsDialogIds();
  OUTLINED_FUNCTION_9();
  *v13 = v14;
  v13[1] = PhoneCallCommonCATsSimple.orListForPicsAsLabels(contactNamesNotFromPics:contactNameOfPics:inferenceSource:);

  return v16(v3 + 12, 0x8000000000452CA0, v4, &type metadata for PhoneCallCommonCATsSimple.OrListForPicsDialogIds);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_49();

    return v11(v10);
  }
}

unint64_t lazy protocol witness table accessor for type PhoneCallCommonCATsSimple.OrListForPicsDialogIds and conformance PhoneCallCommonCATsSimple.OrListForPicsDialogIds()
{
  result = lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.OrListForPicsDialogIds and conformance PhoneCallCommonCATsSimple.OrListForPicsDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.OrListForPicsDialogIds and conformance PhoneCallCommonCATsSimple.OrListForPicsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.OrListForPicsDialogIds and conformance PhoneCallCommonCATsSimple.OrListForPicsDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.OrListForPicsDialogIds and conformance PhoneCallCommonCATsSimple.OrListForPicsDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.OrListForPicsDialogIds and conformance PhoneCallCommonCATsSimple.OrListForPicsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.OrListForPicsDialogIds and conformance PhoneCallCommonCATsSimple.OrListForPicsDialogIds);
  }

  return result;
}

uint64_t PhoneCallCommonCATsSimple.phoneFeaturesUnavailable()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();

  return v4(0xD000000000000028, 0x8000000000452C30, _swiftEmptyArrayStorage);
}

BOOL PhoneCallCommonCATsSimple.PhoneFeaturesUnavailableDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallCommonCATsSimple.PhoneFeaturesUnavailableDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallCommonCATsSimple.PhoneFeaturesUnavailableDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = PhoneCallCommonCATsSimple.PhoneFeaturesUnavailableDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t PhoneCallCommonCATsSimple.phoneFeaturesUnavailableAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  lazy protocol witness table accessor for type PhoneCallCommonCATsSimple.PhoneFeaturesUnavailableDialogIds and conformance PhoneCallCommonCATsSimple.PhoneFeaturesUnavailableDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v3;
  v2[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();

  return v5(0xD000000000000028, 0x8000000000452C30, _swiftEmptyArrayStorage, &type metadata for PhoneCallCommonCATsSimple.PhoneFeaturesUnavailableDialogIds);
}

unint64_t lazy protocol witness table accessor for type PhoneCallCommonCATsSimple.PhoneFeaturesUnavailableDialogIds and conformance PhoneCallCommonCATsSimple.PhoneFeaturesUnavailableDialogIds()
{
  result = lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.PhoneFeaturesUnavailableDialogIds and conformance PhoneCallCommonCATsSimple.PhoneFeaturesUnavailableDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.PhoneFeaturesUnavailableDialogIds and conformance PhoneCallCommonCATsSimple.PhoneFeaturesUnavailableDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.PhoneFeaturesUnavailableDialogIds and conformance PhoneCallCommonCATsSimple.PhoneFeaturesUnavailableDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.PhoneFeaturesUnavailableDialogIds and conformance PhoneCallCommonCATsSimple.PhoneFeaturesUnavailableDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.PhoneFeaturesUnavailableDialogIds and conformance PhoneCallCommonCATsSimple.PhoneFeaturesUnavailableDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.PhoneFeaturesUnavailableDialogIds and conformance PhoneCallCommonCATsSimple.PhoneFeaturesUnavailableDialogIds);
  }

  return result;
}

uint64_t PhoneCallCommonCATsSimple.promptCancelled()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = AddCallParticipantCATPatternsExecutor.unsupportedNoActiveCall();

  return v4(0xD00000000000001FLL, 0x8000000000452C60, _swiftEmptyArrayStorage);
}

BOOL PhoneCallCommonCATsSimple.PromptCancelledDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallCommonCATsSimple.PromptCancelledDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallCommonCATsSimple.PromptCancelledDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = PhoneCallCommonCATsSimple.PromptCancelledDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t PhoneCallCommonCATsSimple.promptCancelledAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  lazy protocol witness table accessor for type PhoneCallCommonCATsSimple.PromptCancelledDialogIds and conformance PhoneCallCommonCATsSimple.PromptCancelledDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v3;
  v2[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();

  return v5(0xD00000000000001FLL, 0x8000000000452C60, _swiftEmptyArrayStorage, &type metadata for PhoneCallCommonCATsSimple.PromptCancelledDialogIds);
}

unint64_t lazy protocol witness table accessor for type PhoneCallCommonCATsSimple.PromptCancelledDialogIds and conformance PhoneCallCommonCATsSimple.PromptCancelledDialogIds()
{
  result = lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.PromptCancelledDialogIds and conformance PhoneCallCommonCATsSimple.PromptCancelledDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.PromptCancelledDialogIds and conformance PhoneCallCommonCATsSimple.PromptCancelledDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.PromptCancelledDialogIds and conformance PhoneCallCommonCATsSimple.PromptCancelledDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.PromptCancelledDialogIds and conformance PhoneCallCommonCATsSimple.PromptCancelledDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.PromptCancelledDialogIds and conformance PhoneCallCommonCATsSimple.PromptCancelledDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.PromptCancelledDialogIds and conformance PhoneCallCommonCATsSimple.PromptCancelledDialogIds);
  }

  return result;
}

uint64_t PhoneCallCommonCATsSimple.__allocating_init(useResponseMode:options:)(uint64_t a1)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14_5();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  v2 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_39_1();
  v4(v3);
  CATWrapperSimple.init(useResponseMode:options:)();
  v5 = OUTLINED_FUNCTION_53();
  v6(v5);
  return v2;
}

uint64_t PhoneCallCommonCATsSimple.init(useResponseMode:options:)(uint64_t a1)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14_5();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_39_1();
  v4(v3);
  CATWrapperSimple.init(useResponseMode:options:)();
  v5 = OUTLINED_FUNCTION_53();
  v6(v5);
  return v1;
}

unint64_t lazy protocol witness table accessor for type PhoneCallCommonCATsSimple.Properties and conformance PhoneCallCommonCATsSimple.Properties()
{
  result = lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.Properties and conformance PhoneCallCommonCATsSimple.Properties;
  if (!lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.Properties and conformance PhoneCallCommonCATsSimple.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.Properties and conformance PhoneCallCommonCATsSimple.Properties);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneCallCommonCATsSimple.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for PhoneCallCommonCATsSimple.OrListDialogIds(_BYTE *result, int a2, int a3)
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

uint64_t closure #1 in static Transformer<>.transformer.getter@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v32 = a2;
  v2 = *a1;
  static Signpost.begin(_:)();
  v33 = v3;
  v30 = v5;
  v31 = v4;
  v29[3] = v6;
  if (v2 && (v7 = dispatch thunk of UsoEntity_common_PhoneCall.recipients.getter()) != 0)
  {
    v8 = v7;
  }

  else
  {

    v8 = _swiftEmptyArrayStorage;
  }

  v9 = _swiftEmptyArrayStorage;
  v34[0] = _swiftEmptyArrayStorage;
  result = specialized Array.count.getter(v8);
  v11 = result;
  v12 = 0;
  while (1)
  {
    if (v11 == v12)
    {

      v14 = specialized Array.count.getter(v9);
      if (v14)
      {
        v15 = v14;
        v37 = _swiftEmptyArrayStorage;
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14 & ~(v14 >> 63), 0);
        if (v15 < 0)
        {
          goto LABEL_30;
        }

        v16 = 0;
        v17 = v37;
        do
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
          }

          v19 = _s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC18contactConvertible0I4RoleAcA03UsogJ0_p_AA0abgK0OtcfCTf4enn_n0F8Ontology0L19Entity_common_AgentC_Tt1g5(v18, 1);
          v35 = type metadata accessor for SiriPhoneContactImpl(0);
          v36 = &protocol witness table for SiriPhoneContactImpl;

          v34[0] = v19;
          v37 = v17;
          v21 = v17[2];
          v20 = v17[3];
          if (v21 >= v20 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
          }

          ++v16;
          v22 = v35;
          v23 = v36;
          v24 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
          v25 = __chkstk_darwin(v24);
          v27 = v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v28 + 16))(v27, v25);
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v21, v27, &v37, v22, v23);
          __swift_destroy_boxed_opaque_existential_1(v34);
          v17 = v37;
        }

        while (v15 != v16);
      }

      else
      {

        v17 = _swiftEmptyArrayStorage;
      }

      *v32 = v17;
      Signpost.OpenSignpost.end()();
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v12 >= *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_29;
      }
    }

    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    dispatch thunk of CodeGenListEntry.entry.getter();

    ++v12;
    if (v37)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v34[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v34[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v9 = v34[0];
      v12 = v13;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallControlCATs::Properties_optional __swiftcall PhoneCallControlCATs.Properties.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallControlCATs.Properties.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t PhoneCallControlCATs.Properties.rawValue.getter(char a1)
{
  result = 0xD00000000000001CLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000027;
      break;
    case 2:
      result = 0xD000000000000026;
      break;
    case 3:
      result = 0xD000000000000022;
      break;
    case 4:
      result = 0xD00000000000002ELL;
      break;
    case 5:
      result = 0xD00000000000002CLL;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallControlCATs::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallControlCATs.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallControlCATs::Properties_optional *a2@<X8>)
{
  result.value = PhoneCallControlCATs.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallControlCATs.Properties@<X0>(unint64_t *a1@<X8>)
{
  result = PhoneCallControlCATs.Properties.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void PhoneCallControlCATs.callControl(callControlAction:completion:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_0_76();
  v1 = OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_27_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  *(v4 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_3_64(v4, "callControlAction");
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v5);
  if (v6)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_41_17();
  }

  else
  {
    OUTLINED_FUNCTION_55_2();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_47_15();
    v7();
  }

  OUTLINED_FUNCTION_30_21();

  OUTLINED_FUNCTION_65();
}

uint64_t PhoneCallControlCATs.callControl(callControlAction:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_50_13(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  *(v0 + 40) = OUTLINED_FUNCTION_45();
  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_16_34();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1(v1);
  v3 = OUTLINED_FUNCTION_46_15(v2);
  *(v3 + 16) = xmmword_424FD0;
  v4 = OUTLINED_FUNCTION_0_8(v3, "callControlAction");
  OUTLINED_FUNCTION_48_1(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_7(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v8();
  }

  v9 = OUTLINED_FUNCTION_12_0();
  v10 = OUTLINED_FUNCTION_22_19(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_24(v10);
  OUTLINED_FUNCTION_12_43();
  OUTLINED_FUNCTION_65_1();

  return v16(v12, v13, v14, v15, v16, v17, v18, v19);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_8_1();

    return v10();
  }
}

{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v1[4] = OUTLINED_FUNCTION_45();
  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_17_2();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1(v1);
  v3 = OUTLINED_FUNCTION_50_0(v2);
  *(v3 + 16) = xmmword_424FD0;
  v4 = OUTLINED_FUNCTION_0_8(v3, "callControlAction");
  OUTLINED_FUNCTION_48_1(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v8();
  }

  v9 = OUTLINED_FUNCTION_12_0();
  v10 = OUTLINED_FUNCTION_16_12(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_39(v10);
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_65_1();

  return v15(v12, v13, v14, v15, v16, v17, v18, v19);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_49();

    return v11(v10);
  }
}

void PhoneCallControlCATs.callControl(callControlAction:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_14_40();
  v2 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_21(v2);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_17_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1(v4);
  *(v5 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_4_50(v5, "callControlAction");
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_47(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_42_15();
  }

  else
  {
    OUTLINED_FUNCTION_54_16();
    OUTLINED_FUNCTION_19_12();
    OUTLINED_FUNCTION_40_4();
    v8();
  }

  OUTLINED_FUNCTION_37_16(v1 + 11);

  OUTLINED_FUNCTION_60_1();
}

void PhoneCallControlCATs.unsupportedCallControl(unsupportedReason:completion:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_0_76();
  v1 = OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_27_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  *(v4 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_3_64(v4, "unsupportedReason");
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v5);
  if (v6)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_41_17();
  }

  else
  {
    OUTLINED_FUNCTION_55_2();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_47_15();
    v7();
  }

  OUTLINED_FUNCTION_30_21();

  OUTLINED_FUNCTION_65();
}

uint64_t PhoneCallControlCATs.unsupportedCallControl(unsupportedReason:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_50_13(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  *(v0 + 40) = OUTLINED_FUNCTION_45();
  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_16_34();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1(v1);
  v3 = OUTLINED_FUNCTION_46_15(v2);
  *(v3 + 16) = xmmword_424FD0;
  v4 = OUTLINED_FUNCTION_0_8(v3, "unsupportedReason");
  OUTLINED_FUNCTION_48_1(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_7(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v8();
  }

  v9 = OUTLINED_FUNCTION_12_0();
  v10 = OUTLINED_FUNCTION_22_19(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_24(v10);
  OUTLINED_FUNCTION_12_43();
  OUTLINED_FUNCTION_65_1();

  return v16(v12, v13, v14, v15, v16, v17, v18, v19);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_8_1();

    return v10();
  }
}

{
  OUTLINED_FUNCTION_15();

  v1 = *(v0 + 8);

  return v1();
}

{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v1[4] = OUTLINED_FUNCTION_45();
  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_17_2();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1(v1);
  v3 = OUTLINED_FUNCTION_50_0(v2);
  *(v3 + 16) = xmmword_424FD0;
  v4 = OUTLINED_FUNCTION_0_8(v3, "unsupportedReason");
  OUTLINED_FUNCTION_48_1(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v8();
  }

  v9 = OUTLINED_FUNCTION_12_0();
  v10 = OUTLINED_FUNCTION_16_12(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_39(v10);
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_65_1();

  return v15(v12, v13, v14, v15, v16, v17, v18, v19);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_49();

    return v11(v10);
  }
}

void PhoneCallControlCATs.unsupportedCallControl(unsupportedReason:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_14_40();
  v2 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_21(v2);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_17_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1(v4);
  *(v5 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_4_50(v5, "unsupportedReason");
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_47(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_42_15();
  }

  else
  {
    OUTLINED_FUNCTION_54_16();
    OUTLINED_FUNCTION_19_12();
    OUTLINED_FUNCTION_40_4();
    v8();
  }

  OUTLINED_FUNCTION_37_16(v1 + 22);

  OUTLINED_FUNCTION_60_1();
}

void PhoneCallControlCATs.unsupportedHoldAction(unsupportedReason:completion:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_0_76();
  v1 = OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_27_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  *(v4 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_3_64(v4, "unsupportedReason");
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v5);
  if (v6)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_41_17();
  }

  else
  {
    OUTLINED_FUNCTION_55_2();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_47_15();
    v7();
  }

  OUTLINED_FUNCTION_30_21();

  OUTLINED_FUNCTION_65();
}

uint64_t PhoneCallControlCATs.unsupportedHoldAction(unsupportedReason:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_50_13(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  *(v0 + 40) = OUTLINED_FUNCTION_45();
  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_16_34();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1(v1);
  v3 = OUTLINED_FUNCTION_46_15(v2);
  *(v3 + 16) = xmmword_424FD0;
  v4 = OUTLINED_FUNCTION_0_8(v3, "unsupportedReason");
  OUTLINED_FUNCTION_48_1(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_7(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v8();
  }

  v9 = OUTLINED_FUNCTION_12_0();
  v10 = OUTLINED_FUNCTION_22_19(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_24(v10);
  OUTLINED_FUNCTION_12_43();
  OUTLINED_FUNCTION_65_1();

  return v16(v12, v13, v14, v15, v16, v17, v18, v19);
}

{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v1[4] = OUTLINED_FUNCTION_45();
  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_17_2();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1(v1);
  v3 = OUTLINED_FUNCTION_50_0(v2);
  *(v3 + 16) = xmmword_424FD0;
  v4 = OUTLINED_FUNCTION_0_8(v3, "unsupportedReason");
  OUTLINED_FUNCTION_48_1(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v8();
  }

  v9 = OUTLINED_FUNCTION_12_0();
  v10 = OUTLINED_FUNCTION_16_12(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_39(v10);
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_65_1();

  return v15(v12, v13, v14, v15, v16, v17, v18, v19);
}

void PhoneCallControlCATs.unsupportedHoldAction(unsupportedReason:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_14_40();
  v2 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_21(v2);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_17_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1(v4);
  *(v5 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_4_50(v5, "unsupportedReason");
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_47(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_42_15();
  }

  else
  {
    OUTLINED_FUNCTION_54_16();
    OUTLINED_FUNCTION_19_12();
    OUTLINED_FUNCTION_40_4();
    v8();
  }

  OUTLINED_FUNCTION_37_16(v1 + 21);

  OUTLINED_FUNCTION_60_1();
}

void PhoneCallControlCATs.unsupportedIntent(unsupportedIntent:completion:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_0_76();
  v1 = OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_27_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  *(v4 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_3_64(v4, "unsupportedIntent");
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v5);
  if (v6)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_41_17();
  }

  else
  {
    OUTLINED_FUNCTION_55_2();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_47_15();
    v7();
  }

  OUTLINED_FUNCTION_30_21();

  OUTLINED_FUNCTION_65();
}

uint64_t PhoneCallControlCATs.unsupportedIntent(unsupportedIntent:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_50_13(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  *(v0 + 40) = OUTLINED_FUNCTION_45();
  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_16_34();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1(v1);
  v3 = OUTLINED_FUNCTION_46_15(v2);
  *(v3 + 16) = xmmword_424FD0;
  v4 = OUTLINED_FUNCTION_0_8(v3, "unsupportedIntent");
  OUTLINED_FUNCTION_48_1(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_7(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v8();
  }

  v9 = OUTLINED_FUNCTION_12_0();
  v10 = OUTLINED_FUNCTION_22_19(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_24(v10);
  OUTLINED_FUNCTION_12_43();
  OUTLINED_FUNCTION_65_1();

  return v16(v12, v13, v14, v15, v16, v17, v18, v19);
}

{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v1[4] = OUTLINED_FUNCTION_45();
  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_17_2();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1(v1);
  v3 = OUTLINED_FUNCTION_50_0(v2);
  *(v3 + 16) = xmmword_424FD0;
  v4 = OUTLINED_FUNCTION_0_8(v3, "unsupportedIntent");
  OUTLINED_FUNCTION_48_1(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v8();
  }

  v9 = OUTLINED_FUNCTION_12_0();
  v10 = OUTLINED_FUNCTION_16_12(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_39(v10);
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_65_1();

  return v15(v12, v13, v14, v15, v16, v17, v18, v19);
}

void PhoneCallControlCATs.unsupportedIntent(unsupportedIntent:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_14_40();
  v2 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_21(v2);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_17_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1(v4);
  *(v5 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_4_50(v5, "unsupportedIntent");
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_47(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_42_15();
  }

  else
  {
    OUTLINED_FUNCTION_54_16();
    OUTLINED_FUNCTION_19_12();
    OUTLINED_FUNCTION_40_4();
    v8();
  }

  OUTLINED_FUNCTION_37_16(v1 + 17);

  OUTLINED_FUNCTION_60_1();
}

void PhoneCallControlCATs.unsupportedSpeakerphoneAction(unsupportedReason:completion:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_0_76();
  v1 = OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_27_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  *(v4 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_3_64(v4, "unsupportedReason");
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v5);
  if (v6)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_41_17();
  }

  else
  {
    OUTLINED_FUNCTION_55_2();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_47_15();
    v7();
  }

  OUTLINED_FUNCTION_30_21();

  OUTLINED_FUNCTION_65();
}

uint64_t PhoneCallControlCATs.unsupportedSpeakerphoneAction(unsupportedReason:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_50_13(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  *(v0 + 40) = OUTLINED_FUNCTION_45();
  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_16_34();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1(v1);
  v3 = OUTLINED_FUNCTION_46_15(v2);
  *(v3 + 16) = xmmword_424FD0;
  v4 = OUTLINED_FUNCTION_0_8(v3, "unsupportedReason");
  OUTLINED_FUNCTION_48_1(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_7(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v8();
  }

  v9 = OUTLINED_FUNCTION_12_0();
  v10 = OUTLINED_FUNCTION_22_19(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_24(v10);
  OUTLINED_FUNCTION_12_43();
  OUTLINED_FUNCTION_65_1();

  return v16(v12, v13, v14, v15, v16, v17, v18, v19);
}

{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v1[4] = OUTLINED_FUNCTION_45();
  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_17_2();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1(v1);
  v3 = OUTLINED_FUNCTION_50_0(v2);
  *(v3 + 16) = xmmword_424FD0;
  v4 = OUTLINED_FUNCTION_0_8(v3, "unsupportedReason");
  OUTLINED_FUNCTION_48_1(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v8();
  }

  v9 = OUTLINED_FUNCTION_12_0();
  v10 = OUTLINED_FUNCTION_16_12(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_39(v10);
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_65_1();

  return v15(v12, v13, v14, v15, v16, v17, v18, v19);
}

void PhoneCallControlCATs.unsupportedSpeakerphoneAction(unsupportedReason:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_14_40();
  v2 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_21(v2);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_17_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1(v4);
  *(v5 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_4_50(v5, "unsupportedReason");
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_47(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_42_15();
  }

  else
  {
    OUTLINED_FUNCTION_54_16();
    OUTLINED_FUNCTION_19_12();
    OUTLINED_FUNCTION_40_4();
    v8();
  }

  OUTLINED_FUNCTION_37_16(v1 + 29);

  OUTLINED_FUNCTION_60_1();
}

void PhoneCallControlCATs.unsupportedSwitchToFaceTime(unsupportedReason:completion:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_0_76();
  v1 = OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_27_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  *(v4 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_3_64(v4, "unsupportedReason");
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v5);
  if (v6)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_41_17();
  }

  else
  {
    OUTLINED_FUNCTION_55_2();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_47_15();
    v7();
  }

  OUTLINED_FUNCTION_30_21();

  OUTLINED_FUNCTION_65();
}

uint64_t PhoneCallControlCATs.unsupportedSwitchToFaceTime(unsupportedReason:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_50_13(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  *(v0 + 40) = OUTLINED_FUNCTION_45();
  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_16_34();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1(v1);
  v3 = OUTLINED_FUNCTION_46_15(v2);
  *(v3 + 16) = xmmword_424FD0;
  v4 = OUTLINED_FUNCTION_0_8(v3, "unsupportedReason");
  OUTLINED_FUNCTION_48_1(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_7(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v8();
  }

  v9 = OUTLINED_FUNCTION_12_0();
  v10 = OUTLINED_FUNCTION_22_19(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_24(v10);
  OUTLINED_FUNCTION_12_43();
  OUTLINED_FUNCTION_65_1();

  return v16(v12, v13, v14, v15, v16, v17, v18, v19);
}

{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v1[4] = OUTLINED_FUNCTION_45();
  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_17_2();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1(v1);
  v3 = OUTLINED_FUNCTION_50_0(v2);
  *(v3 + 16) = xmmword_424FD0;
  v4 = OUTLINED_FUNCTION_0_8(v3, "unsupportedReason");
  OUTLINED_FUNCTION_48_1(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v8();
  }

  v9 = OUTLINED_FUNCTION_12_0();
  v10 = OUTLINED_FUNCTION_16_12(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_39(v10);
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_65_1();

  return v15(v12, v13, v14, v15, v16, v17, v18, v19);
}

void PhoneCallControlCATs.unsupportedSwitchToFaceTime(unsupportedReason:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_14_40();
  v2 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_21(v2);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_17_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1(v4);
  *(v5 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_4_50(v5, "unsupportedReason");
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_47(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_42_15();
  }

  else
  {
    OUTLINED_FUNCTION_54_16();
    OUTLINED_FUNCTION_19_12();
    OUTLINED_FUNCTION_40_4();
    v8();
  }

  OUTLINED_FUNCTION_37_16(v1 + 27);

  OUTLINED_FUNCTION_60_1();
}

void PhoneCallControlCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_66();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = type metadata accessor for CATOption();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &a9 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_21(v30);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v31);
  outlined init with copy of PhoneCallNLIntent?(v25, &a9 - v32, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v27 + 16))(v29, v23, v26);
  CATWrapper.init(templateDir:options:globals:)();
  (*(v27 + 8))(v23, v26);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v25, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_65();
}

unint64_t lazy protocol witness table accessor for type PhoneCallControlCATs.Properties and conformance PhoneCallControlCATs.Properties()
{
  result = lazy protocol witness table cache variable for type PhoneCallControlCATs.Properties and conformance PhoneCallControlCATs.Properties;
  if (!lazy protocol witness table cache variable for type PhoneCallControlCATs.Properties and conformance PhoneCallControlCATs.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallControlCATs.Properties and conformance PhoneCallControlCATs.Properties);
  }

  return result;
}

uint64_t type metadata accessor for PhoneCallControlCATs(uint64_t a1)
{
  result = type metadata singleton initialization cache for PhoneCallControlCATs;
  if (!type metadata singleton initialization cache for PhoneCallControlCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneCallControlCATs.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_37_16(uint64_t a1)
{

  return dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t OUTLINED_FUNCTION_50_13(uint64_t result, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = result;
  return result;
}

uint64_t *OUTLINED_FUNCTION_54_16()
{
  *(v0 + 72) = v1;

  return __swift_allocate_boxed_opaque_existential_1((v0 + 48));
}

uint64_t OUTLINED_FUNCTION_56_6()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

PhoneCallFlowDelegatePlugin::PhoneCallControlCATsSimple::Properties_optional __swiftcall PhoneCallControlCATsSimple.Properties.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallControlCATsSimple.Properties.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t PhoneCallControlCATsSimple.Properties.rawValue.getter(char a1)
{
  result = 0xD00000000000001CLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000027;
      break;
    case 2:
      result = 0xD000000000000026;
      break;
    case 3:
      result = 0xD000000000000022;
      break;
    case 4:
      result = 0xD00000000000002ELL;
      break;
    case 5:
      result = 0xD00000000000002CLL;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallControlCATsSimple::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallControlCATsSimple.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallControlCATsSimple::Properties_optional *a2@<X8>)
{
  result.value = PhoneCallControlCATsSimple.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallControlCATsSimple.Properties()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = PhoneCallControlCATsSimple.Properties.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t PhoneCallControlCATsSimple.callControl(callControlAction:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v1[4] = OUTLINED_FUNCTION_45();
  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_17_2();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1(v1);
  v3 = OUTLINED_FUNCTION_50_0(v2);
  *(v3 + 16) = xmmword_424FD0;
  v4 = OUTLINED_FUNCTION_0_8(v3, "callControlAction");
  OUTLINED_FUNCTION_48_1(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v8();
  }

  v9 = OUTLINED_FUNCTION_12_0();
  v10 = OUTLINED_FUNCTION_16_12(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_39(v10);
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_65_1();

  return v15(v12, v13, v14, v15, v16, v17, v18, v19);
}

PhoneCallFlowDelegatePlugin::PhoneCallControlCATsSimple::CallControlDialogIds_optional __swiftcall PhoneCallControlCATsSimple.CallControlDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallControlCATsSimple.CallControlDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t PhoneCallControlCATsSimple.CallControlDialogIds.rawValue.getter(char a1)
{
  result = 1701736260;
  switch(a1)
  {
    case 1:
      result = 0x43656C6261736964;
      break;
    case 2:
      result = 0x48656C6261736964;
      break;
    case 3:
      result = 0x6143656C62616E65;
      break;
    case 4:
      result = 0x6F48656C62616E65;
      break;
    case 5:
      result = 0x7263694D6574756DLL;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallControlCATsSimple::CallControlDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallControlCATsSimple.CallControlDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallControlCATsSimple::CallControlDialogIds_optional *a2@<X8>)
{
  result.value = PhoneCallControlCATsSimple.CallControlDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallControlCATsSimple.CallControlDialogIds()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = PhoneCallControlCATsSimple.CallControlDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t PhoneCallControlCATsSimple.callControlAsLabels(callControlAction:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v1[4] = OUTLINED_FUNCTION_45();
  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_17_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  v4 = OUTLINED_FUNCTION_50_0(v3);
  *(v4 + 16) = xmmword_424FD0;
  v5 = OUTLINED_FUNCTION_0_8(v4, "callControlAction");
  OUTLINED_FUNCTION_48_1(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v7);
  if (v8)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v9();
  }

  v10 = OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_27_20(v10);
  lazy protocol witness table accessor for type PhoneCallControlCATsSimple.CallControlDialogIds and conformance PhoneCallControlCATsSimple.CallControlDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v11;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_10_46();
  OUTLINED_FUNCTION_65_1();

  return v17(v12, v13, v14, v15, v16, v17, v18, v19);
}

unint64_t lazy protocol witness table accessor for type PhoneCallControlCATsSimple.CallControlDialogIds and conformance PhoneCallControlCATsSimple.CallControlDialogIds()
{
  result = lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.CallControlDialogIds and conformance PhoneCallControlCATsSimple.CallControlDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.CallControlDialogIds and conformance PhoneCallControlCATsSimple.CallControlDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.CallControlDialogIds and conformance PhoneCallControlCATsSimple.CallControlDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.CallControlDialogIds and conformance PhoneCallControlCATsSimple.CallControlDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.CallControlDialogIds and conformance PhoneCallControlCATsSimple.CallControlDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.CallControlDialogIds and conformance PhoneCallControlCATsSimple.CallControlDialogIds);
  }

  return result;
}

uint64_t PhoneCallControlCATsSimple.unsupportedCallControl(unsupportedReason:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v1[4] = OUTLINED_FUNCTION_45();
  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_17_2();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1(v1);
  v3 = OUTLINED_FUNCTION_50_0(v2);
  *(v3 + 16) = xmmword_424FD0;
  v4 = OUTLINED_FUNCTION_0_8(v3, "unsupportedReason");
  OUTLINED_FUNCTION_48_1(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v8();
  }

  v9 = OUTLINED_FUNCTION_12_0();
  v10 = OUTLINED_FUNCTION_16_12(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_39(v10);
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_65_1();

  return v15(v12, v13, v14, v15, v16, v17, v18, v19);
}

BOOL PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds.init(rawValue:), v2);
  OUTLINED_FUNCTION_33_2();
  return v1 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t PhoneCallControlCATsSimple.unsupportedCallControlAsLabels(unsupportedReason:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v1[4] = OUTLINED_FUNCTION_45();
  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_17_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  v4 = OUTLINED_FUNCTION_50_0(v3);
  *(v4 + 16) = xmmword_424FD0;
  v5 = OUTLINED_FUNCTION_0_8(v4, "unsupportedReason");
  OUTLINED_FUNCTION_48_1(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v7);
  if (v8)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v9();
  }

  v10 = OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_27_20(v10);
  lazy protocol witness table accessor for type PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v11;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_10_46();
  OUTLINED_FUNCTION_65_1();

  return v17(v12, v13, v14, v15, v16, v17, v18, v19);
}

unint64_t lazy protocol witness table accessor for type PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds()
{
  result = lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds);
  }

  return result;
}

uint64_t PhoneCallControlCATsSimple.unsupportedHoldAction(unsupportedReason:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v1[4] = OUTLINED_FUNCTION_45();
  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_17_2();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1(v1);
  v3 = OUTLINED_FUNCTION_50_0(v2);
  *(v3 + 16) = xmmword_424FD0;
  v4 = OUTLINED_FUNCTION_0_8(v3, "unsupportedReason");
  OUTLINED_FUNCTION_48_1(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v8();
  }

  v9 = OUTLINED_FUNCTION_12_0();
  v10 = OUTLINED_FUNCTION_16_12(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_39(v10);
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_65_1();

  return v15(v12, v13, v14, v15, v16, v17, v18, v19);
}

PhoneCallFlowDelegatePlugin::PhoneCallControlCATsSimple::UnsupportedHoldActionDialogIds_optional __swiftcall PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x636972656E6567;
  }

  if (a1 == 1)
  {
    return 0xD000000000000017;
  }

  return 0xD000000000000016;
}

PhoneCallFlowDelegatePlugin::PhoneCallControlCATsSimple::UnsupportedHoldActionDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallControlCATsSimple::UnsupportedHoldActionDialogIds_optional *a2@<X8>)
{
  result.value = PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t PhoneCallControlCATsSimple.unsupportedHoldActionAsLabels(unsupportedReason:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v1[4] = OUTLINED_FUNCTION_45();
  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_17_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  v4 = OUTLINED_FUNCTION_50_0(v3);
  *(v4 + 16) = xmmword_424FD0;
  v5 = OUTLINED_FUNCTION_0_8(v4, "unsupportedReason");
  OUTLINED_FUNCTION_48_1(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v7);
  if (v8)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v9();
  }

  v10 = OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_27_20(v10);
  lazy protocol witness table accessor for type PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v11;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_10_46();
  OUTLINED_FUNCTION_65_1();

  return v17(v12, v13, v14, v15, v16, v17, v18, v19);
}

unint64_t lazy protocol witness table accessor for type PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds()
{
  result = lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds);
  }

  return result;
}

uint64_t PhoneCallControlCATsSimple.unsupportedIntent(unsupportedIntent:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v1[4] = OUTLINED_FUNCTION_45();
  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_17_2();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1(v1);
  v3 = OUTLINED_FUNCTION_50_0(v2);
  *(v3 + 16) = xmmword_424FD0;
  v4 = OUTLINED_FUNCTION_0_8(v3, "unsupportedIntent");
  OUTLINED_FUNCTION_48_1(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v8();
  }

  v9 = OUTLINED_FUNCTION_12_0();
  v10 = OUTLINED_FUNCTION_16_12(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_39(v10);
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_65_1();

  return v15(v12, v13, v14, v15, v16, v17, v18, v19);
}

PhoneCallFlowDelegatePlugin::PhoneCallControlCATsSimple::UnsupportedIntentDialogIds_optional __swiftcall PhoneCallControlCATsSimple.UnsupportedIntentDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallControlCATsSimple.UnsupportedIntentDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t PhoneCallControlCATsSimple.UnsupportedIntentDialogIds.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6F5665676E616863;
  }

  if (a1 == 1)
  {
    return 0x6C6F566B63656863;
  }

  return 0x636972656E6567;
}

PhoneCallFlowDelegatePlugin::PhoneCallControlCATsSimple::UnsupportedIntentDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallControlCATsSimple.UnsupportedIntentDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallControlCATsSimple::UnsupportedIntentDialogIds_optional *a2@<X8>)
{
  result.value = PhoneCallControlCATsSimple.UnsupportedIntentDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallControlCATsSimple.UnsupportedIntentDialogIds()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = PhoneCallControlCATsSimple.UnsupportedIntentDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t PhoneCallControlCATsSimple.unsupportedIntentAsLabels(unsupportedIntent:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v1[4] = OUTLINED_FUNCTION_45();
  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_17_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  v4 = OUTLINED_FUNCTION_50_0(v3);
  *(v4 + 16) = xmmword_424FD0;
  v5 = OUTLINED_FUNCTION_0_8(v4, "unsupportedIntent");
  OUTLINED_FUNCTION_48_1(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v7);
  if (v8)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v9();
  }

  v10 = OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_27_20(v10);
  lazy protocol witness table accessor for type PhoneCallControlCATsSimple.UnsupportedIntentDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedIntentDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v11;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_10_46();
  OUTLINED_FUNCTION_65_1();

  return v17(v12, v13, v14, v15, v16, v17, v18, v19);
}

unint64_t lazy protocol witness table accessor for type PhoneCallControlCATsSimple.UnsupportedIntentDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedIntentDialogIds()
{
  result = lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedIntentDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedIntentDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedIntentDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedIntentDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedIntentDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedIntentDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedIntentDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedIntentDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedIntentDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedIntentDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedIntentDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedIntentDialogIds);
  }

  return result;
}

uint64_t PhoneCallControlCATsSimple.unsupportedSpeakerphoneAction(unsupportedReason:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v1[4] = OUTLINED_FUNCTION_45();
  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_17_2();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1(v1);
  v3 = OUTLINED_FUNCTION_50_0(v2);
  *(v3 + 16) = xmmword_424FD0;
  v4 = OUTLINED_FUNCTION_0_8(v3, "unsupportedReason");
  OUTLINED_FUNCTION_48_1(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v8();
  }

  v9 = OUTLINED_FUNCTION_12_0();
  v10 = OUTLINED_FUNCTION_16_12(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_39(v10);
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_65_1();

  return v15(v12, v13, v14, v15, v16, v17, v18, v19);
}

BOOL PhoneCallControlCATsSimple.UnsupportedSpeakerphoneActionDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallControlCATsSimple.UnsupportedSpeakerphoneActionDialogIds.init(rawValue:), v2);
  OUTLINED_FUNCTION_33_2();
  return v1 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallControlCATsSimple.UnsupportedSpeakerphoneActionDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = PhoneCallControlCATsSimple.UnsupportedSpeakerphoneActionDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t PhoneCallControlCATsSimple.unsupportedSpeakerphoneActionAsLabels(unsupportedReason:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v1[4] = OUTLINED_FUNCTION_45();
  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_17_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  v4 = OUTLINED_FUNCTION_50_0(v3);
  *(v4 + 16) = xmmword_424FD0;
  v5 = OUTLINED_FUNCTION_0_8(v4, "unsupportedReason");
  OUTLINED_FUNCTION_48_1(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v7);
  if (v8)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v9();
  }

  v10 = OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_27_20(v10);
  lazy protocol witness table accessor for type PhoneCallControlCATsSimple.UnsupportedSpeakerphoneActionDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedSpeakerphoneActionDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v11;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_10_46();
  OUTLINED_FUNCTION_65_1();

  return v17(v12, v13, v14, v15, v16, v17, v18, v19);
}

unint64_t lazy protocol witness table accessor for type PhoneCallControlCATsSimple.UnsupportedSpeakerphoneActionDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedSpeakerphoneActionDialogIds()
{
  result = lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedSpeakerphoneActionDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedSpeakerphoneActionDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedSpeakerphoneActionDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedSpeakerphoneActionDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedSpeakerphoneActionDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedSpeakerphoneActionDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedSpeakerphoneActionDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedSpeakerphoneActionDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedSpeakerphoneActionDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedSpeakerphoneActionDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedSpeakerphoneActionDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedSpeakerphoneActionDialogIds);
  }

  return result;
}

uint64_t PhoneCallControlCATsSimple.unsupportedSwitchToFaceTime(unsupportedReason:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v1[4] = OUTLINED_FUNCTION_45();
  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_17_2();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1(v1);
  v3 = OUTLINED_FUNCTION_50_0(v2);
  *(v3 + 16) = xmmword_424FD0;
  v4 = OUTLINED_FUNCTION_0_8(v3, "unsupportedReason");
  OUTLINED_FUNCTION_48_1(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v8();
  }

  v9 = OUTLINED_FUNCTION_12_0();
  v10 = OUTLINED_FUNCTION_16_12(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_39(v10);
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_65_1();

  return v15(v12, v13, v14, v15, v16, v17, v18, v19);
}

PhoneCallFlowDelegatePlugin::PhoneCallControlCATsSimple::UnsupportedSwitchToFaceTimeDialogIds_optional __swiftcall PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

unint64_t PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds.rawValue.getter(char a1)
{
  result = 0xD00000000000001ALL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000028;
      break;
    case 3:
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
    case 8:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD000000000000021;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallControlCATsSimple::UnsupportedSwitchToFaceTimeDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallControlCATsSimple::UnsupportedSwitchToFaceTimeDialogIds_optional *a2@<X8>)
{
  result.value = PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t PhoneCallControlCATsSimple.unsupportedSwitchToFaceTimeAsLabels(unsupportedReason:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v1[4] = OUTLINED_FUNCTION_45();
  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_17_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  v4 = OUTLINED_FUNCTION_50_0(v3);
  *(v4 + 16) = xmmword_424FD0;
  v5 = OUTLINED_FUNCTION_0_8(v4, "unsupportedReason");
  OUTLINED_FUNCTION_48_1(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v7);
  if (v8)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v9();
  }

  v10 = OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_27_20(v10);
  lazy protocol witness table accessor for type PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v11;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_10_46();
  OUTLINED_FUNCTION_65_1();

  return v17(v12, v13, v14, v15, v16, v17, v18, v19);
}

unint64_t lazy protocol witness table accessor for type PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds()
{
  result = lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds);
  }

  return result;
}

uint64_t PhoneCallControlCATsSimple.__allocating_init(templateDir:options:globals:)()
{
  swift_allocObject();
  OUTLINED_FUNCTION_16_0();
  return PhoneCallControlCATsSimple.init(templateDir:options:globals:)(v0, v1, v2);
}

uint64_t PhoneCallControlCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14_5();
  v7 = v6;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v13 = OUTLINED_FUNCTION_21(v12);
  __chkstk_darwin(v13);
  outlined init with copy of PhoneCallNLIntent?(a1, &v17 - v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v7 + 16))(v11, a2, v3);
  v15 = CATWrapperSimple.init(templateDir:options:globals:)();
  (*(v7 + 8))(a2, v3);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v15;
}

uint64_t PhoneCallControlCATsSimple.__allocating_init(useResponseMode:options:)(uint64_t a1)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14_5();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  v2 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_39_1();
  v4(v3);
  CATWrapperSimple.init(useResponseMode:options:)();
  v5 = OUTLINED_FUNCTION_53();
  v6(v5);
  return v2;
}

uint64_t PhoneCallControlCATsSimple.init(useResponseMode:options:)(uint64_t a1)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14_5();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_39_1();
  v4(v3);
  CATWrapperSimple.init(useResponseMode:options:)();
  v5 = OUTLINED_FUNCTION_53();
  v6(v5);
  return v1;
}

unint64_t lazy protocol witness table accessor for type PhoneCallControlCATsSimple.Properties and conformance PhoneCallControlCATsSimple.Properties()
{
  result = lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.Properties and conformance PhoneCallControlCATsSimple.Properties;
  if (!lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.Properties and conformance PhoneCallControlCATsSimple.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.Properties and conformance PhoneCallControlCATsSimple.Properties);
  }

  return result;
}

uint64_t type metadata accessor for PhoneCallControlCATsSimple(uint64_t a1)
{
  result = type metadata singleton initialization cache for PhoneCallControlCATsSimple;
  if (!type metadata singleton initialization cache for PhoneCallControlCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneCallControlCATsSimple.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for PhoneCallControlCATsSimple.CallControlDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t PhoneCallControlFlow.__allocating_init(input:sharedGlobals:appFinder:)(uint64_t a1, void *a2, void *a3)
{
  v6 = swift_allocObject();
  PhoneCallControlFlow.init(input:sharedGlobals:appFinder:)(a1, a2, a3);
  return v6;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PhoneCallControlFlow.PhoneCallControlFlowError(uint64_t a1)
{
  Hasher.init(_seed:)();
  SharedNeedsValueContext.NeedsValueCase.hash(into:)();
  return Hasher._finalize()();
}

uint64_t PhoneCallControlFlow.init(input:sharedGlobals:appFinder:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  outlined init with copy of SignalProviding(a2, v3 + 16);
  v8 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneCallControlFlow_input;
  v9 = type metadata accessor for Input();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v4 + v8, a1, v9);
  outlined init with copy of SignalProviding(a3, v4 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneCallControlFlow_appFinder);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.siriPhone);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  v14 = OUTLINED_FUNCTION_10_6();
  if (os_log_type_enabled(v14, v15))
  {
    OUTLINED_FUNCTION_9_18();
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v12, v13, "#PhoneCallControlFlow state is initialized.", v16, 2u);
    OUTLINED_FUNCTION_8();
  }

  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  (*(v10 + 8))(a1, v9);
  return v4;
}

uint64_t PhoneCallControlFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PhoneCallControlFlow(0);
  lazy protocol witness table accessor for type PhoneCallControlFlow and conformance PhoneCallControlFlow(&lazy protocol witness table cache variable for type PhoneCallControlFlow and conformance PhoneCallControlFlow, type metadata accessor for PhoneCallControlFlow, &protocol conformance descriptor for PhoneCallControlFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t PhoneCallControlFlow.execute()(uint64_t a1)
{
  v2[56] = a1;
  v2[57] = v1;
  type metadata accessor for CATOption();
  v2[58] = swift_task_alloc();
  v3 = type metadata accessor for Parse();
  v2[59] = v3;
  v2[60] = *(v3 - 8);
  v2[61] = swift_task_alloc();

  return _swift_task_switch(PhoneCallControlFlow.execute(), 0, 0);
}

uint64_t PhoneCallControlFlow.execute()()
{
  v73 = v0;
  v2 = *(v0 + 480);
  v1 = *(v0 + 488);
  v3 = *(v0 + 472);
  v4 = *(v0 + 456);
  v5 = v4[5];
  v6 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v5);
  v7 = (*(v6 + 72))(v5, v6);
  Input.parse.getter();
  v8 = (*(*v7 + 248))(v1);

  (*(v2 + 8))(v1, v3);
  if (v8)
  {
    v9 = v4[6];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
    v10 = OUTLINED_FUNCTION_5();
    v11(v10, v9);
    v12 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    v13 = OUTLINED_FUNCTION_5();
    v15 = v14(v13, v12);
    if (!v15)
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + 56));
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      __swift_project_value_buffer(v36, static Logger.siriPhone);
      v37 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      v38 = OUTLINED_FUNCTION_10_6();
      if (os_log_type_enabled(v38, v39))
      {
        OUTLINED_FUNCTION_9_18();
        v40 = swift_slowAlloc();
        OUTLINED_FUNCTION_102(v40);
        OUTLINED_FUNCTION_2_74();
        _os_log_impl(v41, v42, v43, v44, v45, v46);
        OUTLINED_FUNCTION_5_39();
      }

      static SiriKitEventSender.current.getter();
      v47 = *(v0 + 120);
      v48 = *(v0 + 128);
      OUTLINED_FUNCTION_6_53((v0 + 96));
      SiriKitEventSending.sendCallControlEvent(action:target:state:)(11, v49, 0, v47, v48);
      __swift_destroy_boxed_opaque_existential_1((v0 + 96));
      outlined init with copy of SignalProviding((v4 + 2), v0 + 136);
      type metadata accessor for PhoneCallControlCATsSimple(0);

      static CATOption.defaultMode.getter();
      CATWrapperSimple.__allocating_init(options:globals:)();
      type metadata accessor for UnsupportedFlowCATsSimple(0);
      static CATOption.defaultMode.getter();
      CATWrapperSimple.__allocating_init(options:globals:)();
      type metadata accessor for UnsupportedCallControlIntentOutputProvider();
      v50 = swift_allocObject();
      v51 = OUTLINED_FUNCTION_9_46(v50, (v0 + 136));
      v52 = (*(*v51 + 120))();

      *(v0 + 408) = v52;
      type metadata accessor for SimpleOutputFlowAsync();
      static ExecuteResponse.complete<A>(next:)();
      goto LABEL_26;
    }

    v17 = v15;
    v18 = v16;
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    v19 = (*(*v8 + 136))(v17, v18);
    if (PhoneCallControlAction.rawValue.getter(v19) == 0xD000000000000011 && 0x8000000000452EF0 == v20)
    {
    }

    else
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v22 & 1) == 0)
      {
        v67 = PhoneCallControlFlow.getActionnableCallControlFlow(action:)(v19);
        static SiriKitEventSender.current.getter();
        v68 = *(v0 + 240);
        v69 = *(v0 + 248);
        OUTLINED_FUNCTION_6_53((v0 + 216));
        SiriKitEventSending.sendCallControlEvent(action:target:state:)(v19, v70, 256, v68, v69);
        __swift_destroy_boxed_opaque_existential_1((v0 + 216));
        outlined init with copy of SignalProviding((v4 + 2), v0 + 256);
        type metadata accessor for PhoneCallControlCATsSimple(0);
        static CATOption.defaultMode.getter();
        v71 = CATWrapperSimple.__allocating_init(options:globals:)();
        *(v0 + 432) = (*(v67 + 136))(v0 + 256, v19, v71);
        type metadata accessor for ActionableCallControlFlow();
        lazy protocol witness table accessor for type PhoneCallControlFlow and conformance PhoneCallControlFlow(&lazy protocol witness table cache variable for type ActionableCallControlFlow and conformance ActionableCallControlFlow, type metadata accessor for ActionableCallControlFlow, &protocol conformance descriptor for ActionableCallControlFlow);
LABEL_25:
        static ExecuteResponse.complete<A>(next:)();
        swift_unknownObjectRelease();
LABEL_26:

        goto LABEL_27;
      }
    }

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    __swift_project_value_buffer(v53, static Logger.siriPhone);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();
    v56 = OUTLINED_FUNCTION_10_6();
    if (os_log_type_enabled(v56, v57))
    {
      OUTLINED_FUNCTION_9_18();
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_0, v54, v55, "#PhoneCallControlFlow recognized unsupported action. Pushing UnsupportedFeatureGuardFlow output flow", v58, 2u);
      OUTLINED_FUNCTION_8();
    }

    static SiriKitEventSender.current.getter();
    v59 = *(v0 + 320);
    v60 = *(v0 + 328);
    OUTLINED_FUNCTION_6_53((v0 + 296));
    SiriKitEventSending.sendCallControlEvent(action:target:state:)(v19, v61, 1, v59, v60);
    __swift_destroy_boxed_opaque_existential_1((v0 + 296));
    outlined init with copy of SignalProviding((v4 + 2), v0 + 336);
    type metadata accessor for PhoneCallControlCATsSimple(0);

    static CATOption.defaultMode.getter();
    CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for UnsupportedFlowCATsSimple(0);
    static CATOption.defaultMode.getter();
    CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for UnsupportedCallControlIntentOutputProvider();
    v62 = swift_allocObject();
    v63 = OUTLINED_FUNCTION_9_46(v62, (v0 + 336));
    v64 = (*(*v63 + 120))();

    *(v0 + 440) = v64;
    type metadata accessor for SimpleOutputFlowAsync();
    goto LABEL_25;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.siriPhone);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v72[0] = v27;
    *v26 = 136315138;
    type metadata accessor for Input();
    lazy protocol witness table accessor for type PhoneCallControlFlow and conformance PhoneCallControlFlow(&lazy protocol witness table cache variable for type Input and conformance Input, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v72);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_0, v24, v25, "#PhoneCallControlFlow failed to get action from input %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    OUTLINED_FUNCTION_8();

    OUTLINED_FUNCTION_5_39();
  }

  static SiriKitEventSender.current.getter();
  v31 = *(v0 + 40);
  v32 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v31);
  SiriKitEventSending.sendCallControlEvent(action:target:state:)(11, 5, 1, v31, v32);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  type metadata accessor for StartCallCATsSimple(0);
  static CATOption.defaultMode.getter();
  v33 = CATWrapperSimple.__allocating_init(options:globals:)();
  v34 = static CommonOutputs.genericError(sharedGlobals:startCallCATsSimple:)(v4 + 2, v33);

  (*(*v34 + 112))(v35);
  OUTLINED_FUNCTION_5();

  *(v0 + 400) = v34;
  type metadata accessor for SimpleOutputFlowAsync();
  static ExecuteResponse.complete<A>(next:)();
LABEL_27:

  v65 = *(v0 + 8);

  return v65();
}

uint64_t PhoneCallControlFlow.getActionnableCallControlFlow(action:)(uint64_t a1)
{
  if (PhoneCallControlAction.isMicrophoneAction.getter(a1))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.siriPhone);
    v3 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v4 = OUTLINED_FUNCTION_10_6();
    if (os_log_type_enabled(v4, v5))
    {
      OUTLINED_FUNCTION_9_18();
      v6 = swift_slowAlloc();
      OUTLINED_FUNCTION_102(v6);
      OUTLINED_FUNCTION_2_74();
      _os_log_impl(v7, v8, v9, v10, v11, v12);
      OUTLINED_FUNCTION_5_39();
    }

    return type metadata accessor for MicrophoneControlFlow();
  }

  else if (PhoneCallControlAction.isCameraAction.getter(a1))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.siriPhone);
    v15 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v16 = OUTLINED_FUNCTION_10_6();
    if (os_log_type_enabled(v16, v17))
    {
      OUTLINED_FUNCTION_9_18();
      v18 = swift_slowAlloc();
      OUTLINED_FUNCTION_102(v18);
      OUTLINED_FUNCTION_2_74();
      _os_log_impl(v19, v20, v21, v22, v23, v24);
      OUTLINED_FUNCTION_5_39();
    }

    return type metadata accessor for CameraControlFlow();
  }

  else if (PhoneCallControlAction.isSpeakerphoneAction.getter(a1))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.siriPhone);
    v26 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v27 = OUTLINED_FUNCTION_10_6();
    if (os_log_type_enabled(v27, v28))
    {
      OUTLINED_FUNCTION_9_18();
      v29 = swift_slowAlloc();
      OUTLINED_FUNCTION_102(v29);
      OUTLINED_FUNCTION_2_74();
      _os_log_impl(v30, v31, v32, v33, v34, v35);
      OUTLINED_FUNCTION_5_39();
    }

    return type metadata accessor for SpeakerphoneControlFlow();
  }

  else if (PhoneCallControlAction.isHoldAction.getter(a1))
  {
    return type metadata accessor for HoldControlFlow();
  }

  else if (PhoneCallControlAction.isSwitchToFaceTimeAction.getter(a1))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.siriPhone);
    v37 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v38 = OUTLINED_FUNCTION_10_6();
    if (os_log_type_enabled(v38, v39))
    {
      OUTLINED_FUNCTION_9_18();
      v40 = swift_slowAlloc();
      OUTLINED_FUNCTION_102(v40);
      OUTLINED_FUNCTION_2_74();
      _os_log_impl(v41, v42, v43, v44, v45, v46);
      OUTLINED_FUNCTION_5_39();
    }

    return type metadata accessor for SwitchToFaceTimeControlFlow();
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, static Logger.siriPhone);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v55 = v51;
      *v50 = 136315138;
      v52 = PhoneCallControlAction.description.getter(a1);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, &v55);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_0, v48, v49, "#PhoneCallControlFlow action %s did not match microphone/camera/speakerphone/switchToFaceTime action and will not be handled. Throwing error.", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v51);
      OUTLINED_FUNCTION_8();

      OUTLINED_FUNCTION_8();
    }

    lazy protocol witness table accessor for type PhoneCallControlFlow.PhoneCallControlFlowError and conformance PhoneCallControlFlow.PhoneCallControlFlowError();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t PhoneCallControlFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneCallControlFlow_input;
  v2 = type metadata accessor for Input();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneCallControlFlow_appFinder));
  return v0;
}

uint64_t PhoneCallControlFlow.__deallocating_deinit()
{
  PhoneCallControlFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance PhoneCallControlFlow(uint64_t a1)
{
  v6 = (*(**v1 + 128) + **(**v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync;

  return v6(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance PhoneCallControlFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PhoneCallControlFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t type metadata accessor for PhoneCallControlFlow(uint64_t a1)
{
  result = type metadata singleton initialization cache for PhoneCallControlFlow;
  if (!type metadata singleton initialization cache for PhoneCallControlFlow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PhoneCallControlFlow and conformance PhoneCallControlFlow(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type PhoneCallControlFlow.PhoneCallControlFlowError and conformance PhoneCallControlFlow.PhoneCallControlFlowError()
{
  result = lazy protocol witness table cache variable for type PhoneCallControlFlow.PhoneCallControlFlowError and conformance PhoneCallControlFlow.PhoneCallControlFlowError;
  if (!lazy protocol witness table cache variable for type PhoneCallControlFlow.PhoneCallControlFlowError and conformance PhoneCallControlFlow.PhoneCallControlFlowError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallControlFlow.PhoneCallControlFlowError and conformance PhoneCallControlFlow.PhoneCallControlFlowError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallControlFlow.PhoneCallControlFlowError and conformance PhoneCallControlFlow.PhoneCallControlFlowError;
  if (!lazy protocol witness table cache variable for type PhoneCallControlFlow.PhoneCallControlFlowError and conformance PhoneCallControlFlow.PhoneCallControlFlowError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallControlFlow.PhoneCallControlFlowError and conformance PhoneCallControlFlow.PhoneCallControlFlowError);
  }

  return result;
}

uint64_t type metadata completion function for PhoneCallControlFlow(uint64_t a1)
{
  result = type metadata accessor for Input();
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

_BYTE *storeEnumTagSinglePayload for PhoneCallControlFlow.PhoneCallControlFlowError(_BYTE *result, int a2, int a3)
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

uint64_t PhoneCallControlAction.toSpeakableString.getter(uint64_t a1)
{
  PhoneCallControlAction.description.getter(a1);
  String.toSpeakableString.getter();
}

uint64_t PhoneCallControlAction.isCameraAction.getter(uint64_t a1)
{
  if (PhoneCallControlAction.description.getter(a1) == 0x6143656C62616E65 && v1 == 0xEC0000006172656DLL)
  {
  }

  else
  {
    OUTLINED_FUNCTION_2_75();
    _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_5_57();
  }

  return 1;
}

uint64_t PhoneCallControlAction.isHoldAction.getter(uint64_t a1)
{
  if (PhoneCallControlAction.description.getter(a1) == 0x6F48656C62616E65 && v1 == 0xEA0000000000646CLL)
  {
  }

  else
  {
    OUTLINED_FUNCTION_2_75();
    _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_5_57();
  }

  return 1;
}

uint64_t PhoneCallControlAction.isMicrophoneAction.getter(uint64_t a1)
{
  if (PhoneCallControlAction.description.getter(a1) == 0x7263694D6574756DLL && v1 == 0xEE00656E6F68706FLL)
  {
  }

  else
  {
    OUTLINED_FUNCTION_2_75();
    _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_5_57();
  }

  return 1;
}

_BYTE *PhoneCallControlNLIntent.__allocating_init(verb:target:)(char a1, char a2)
{
  result = swift_allocObject();
  result[18] = 11;
  result[16] = a1;
  result[17] = a2;
  return result;
}

uint64_t PhoneCallControlAction.isSpeakerphoneAction.getter(uint64_t a1)
{
  PhoneCallControlAction.description.getter(a1);
  v4 = v3;
  OUTLINED_FUNCTION_7_46();
  if (v7 == 0xD000000000000012 && v6 == v5)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_2_75();
  _stringCompareWithSmolCheck(_:_:expecting:)();
  OUTLINED_FUNCTION_5_57();
  if ((v2 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_46();
    if (v1 != 0xD000000000000013 || v12 != v4)
    {
      v9 = OUTLINED_FUNCTION_1_78(v10, v11, 0xD000000000000013, v12);
LABEL_13:

      return v9 & 1;
    }

LABEL_12:
    v9 = 1;
    goto LABEL_13;
  }

  v9 = 1;
  return v9 & 1;
}

uint64_t PhoneCallControlAction.isSwitchToFaceTimeAction.getter(uint64_t a1)
{
  PhoneCallControlAction.description.getter(a1);
  v4 = v3;
  OUTLINED_FUNCTION_7_46();
  if (v7 == 0xD000000000000010 && v6 == v5)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_2_75();
  _stringCompareWithSmolCheck(_:_:expecting:)();
  OUTLINED_FUNCTION_5_57();
  if ((v2 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_46();
    if (v1 != 0xD000000000000015 || v12 != v4)
    {
      v9 = OUTLINED_FUNCTION_1_78(v10, v11, 0xD000000000000015, v12);
LABEL_13:

      return v9 & 1;
    }

LABEL_12:
    v9 = 1;
    goto LABEL_13;
  }

  v9 = 1;
  return v9 & 1;
}

_BYTE *PhoneCallControlNLIntent.init(verb:target:)(char a1, char a2)
{
  v2[18] = 11;
  v2[16] = a1;
  v2[17] = a2;
  return v2;
}

uint64_t PhoneCallControlNLIntent.action(for:)(uint64_t a1, uint64_t a2)
{
  result = *(v2 + 18);
  if (result == 11)
  {
    result = static PhoneCallControlAction.from(nlIntent:for:)(v2, a1, a2);
    *(v2 + 18) = result;
  }

  return result;
}

uint64_t static PhoneCallControlAction.from(nlIntent:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 17);
  switch(*(a1 + 16))
  {
    case 0:
      result = 6;
      switch(v4)
      {
        case 1:
          return result;
        case 2:
          result = 3;
          break;
        case 3:
          result = 0;
          break;
        case 4:
        case 5:
          goto LABEL_8;
        default:
          ObjectType = swift_getObjectType();
          v7 = (*(a3 + 24))(ObjectType, a3);
          goto LABEL_26;
      }

      break;
    case 1:
      result = 0xA0A01020705uLL >> (8 * v4);
      break;
    case 2:
      switch(*(a1 + 17))
      {
        case 1:
          v12 = swift_getObjectType();
          if ((*(a3 + 16))(v12, a3) == 2)
          {
            result = 7;
          }

          else
          {
            result = 6;
          }

          break;
        case 2:
          v15 = swift_getObjectType();
          if ((*(a3 + 96))(v15, a3))
          {
            result = 3;
          }

          else
          {
            result = 2;
          }

          break;
        case 3:
          v14 = swift_getObjectType();
          result = (*(a3 + 120))(v14, a3) & 1;
          break;
        case 4:
        case 5:
          goto LABEL_8;
        default:
          v13 = swift_getObjectType();
          if ((*(a3 + 144))(v13, a3))
          {
            goto LABEL_18;
          }

          v7 = (*(a3 + 24))(v13, a3);
LABEL_26:
          if (v7)
          {
            result = 4;
          }

          else
          {
            result = 8;
          }

          break;
      }

      break;
    case 3:
      swift_getObjectType();
      if ((SPHCall.isFTVideo.getter() & 1) != 0 && (v10 = OUTLINED_FUNCTION_6_54(), (v11(v10) & 1) == 0))
      {
        result = 4;
      }

      else
      {
        result = 8;
      }

      break;
    case 4:
      swift_getObjectType();
      if ((*(a3 + 32))() & 1) != 0 && (v8 = OUTLINED_FUNCTION_6_54(), (v9(v8)))
      {
LABEL_18:
        result = 5;
      }

      else
      {
        result = 9;
      }

      break;
    default:
LABEL_8:
      result = 10;
      break;
  }

  return result;
}

unint64_t PhoneCallControlNLIntent.description.getter()
{
  _StringGuts.grow(_:)(46);

  v1._countAndFlagsBits = PhoneCallControlNLIntent.Verb.description.getter(*(v0 + 16));
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x746567726174202CLL;
  v2._object = 0xEA0000000000203ALL;
  String.append(_:)(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB15ControlNLIntentC6TargetOSgMd, &_s27PhoneCallFlowDelegatePlugin0aB15ControlNLIntentC6TargetOSgMR);
  v3._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 41;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 0xD00000000000001FLL;
}

void PhoneCallControlNLIntent.Verb.description.getter(char a1)
{
  switch(a1)
  {
    case 3:
      OUTLINED_FUNCTION_119();
      break;
    case 4:
      OUTLINED_FUNCTION_0_77();
      break;
    default:
      return;
  }
}

PhoneCallFlowDelegatePlugin::PhoneCallControlNLIntent::Verb_optional __swiftcall PhoneCallControlNLIntent.Verb.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallControlNLIntent.Verb.init(rawValue:), v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

PhoneCallFlowDelegatePlugin::PhoneCallControlNLIntent::Verb_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallControlNLIntent.Verb@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallControlNLIntent::Verb_optional *a2@<X8>)
{
  result.value = PhoneCallControlNLIntent.Verb.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallControlNLIntent.Verb@<X0>(uint64_t *a1@<X8>)
{
  result = PhoneCallControlNLIntent.Verb.description.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t PhoneCallControlNLIntent.Target.description.getter(char a1)
{
  result = 0x6172656D6163;
  switch(a1)
  {
    case 1:
      result = 1684828008;
      break;
    case 2:
      result = 0x6F68706F7263696DLL;
      break;
    case 3:
      result = 0x7072656B61657073;
      break;
    case 4:
      result = 0x656D756C6F76;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallControlNLIntent::Target_optional __swiftcall PhoneCallControlNLIntent.Target.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallControlNLIntent.Target.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

PhoneCallFlowDelegatePlugin::PhoneCallControlNLIntent::Target_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallControlNLIntent.Target@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallControlNLIntent::Target_optional *a2@<X8>)
{
  result.value = PhoneCallControlNLIntent.Target.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallControlNLIntent.Target@<X0>(uint64_t *a1@<X8>)
{
  result = PhoneCallControlNLIntent.Target.description.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void PhoneCallControlAction.description.getter(char a1)
{
  switch(a1)
  {
    case 3:
    case 8:
      OUTLINED_FUNCTION_119();
      break;
    case 9:
      OUTLINED_FUNCTION_0_77();
      break;
    default:
      return;
  }
}

PhoneCallFlowDelegatePlugin::PhoneCallControlAction_optional __swiftcall PhoneCallControlAction.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallControlAction.init(rawValue:), v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

PhoneCallFlowDelegatePlugin::PhoneCallControlAction_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallControlAction@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallControlAction_optional *a2@<X8>)
{
  result.value = PhoneCallControlAction.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallControlAction@<X0>(uint64_t *a1@<X8>)
{
  result = PhoneCallControlAction.description.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallControlNLIntent.Verb and conformance PhoneCallControlNLIntent.Verb()
{
  result = lazy protocol witness table cache variable for type PhoneCallControlNLIntent.Verb and conformance PhoneCallControlNLIntent.Verb;
  if (!lazy protocol witness table cache variable for type PhoneCallControlNLIntent.Verb and conformance PhoneCallControlNLIntent.Verb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallControlNLIntent.Verb and conformance PhoneCallControlNLIntent.Verb);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallControlNLIntent.Target and conformance PhoneCallControlNLIntent.Target()
{
  result = lazy protocol witness table cache variable for type PhoneCallControlNLIntent.Target and conformance PhoneCallControlNLIntent.Target;
  if (!lazy protocol witness table cache variable for type PhoneCallControlNLIntent.Target and conformance PhoneCallControlNLIntent.Target)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallControlNLIntent.Target and conformance PhoneCallControlNLIntent.Target);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallControlAction and conformance PhoneCallControlAction()
{
  result = lazy protocol witness table cache variable for type PhoneCallControlAction and conformance PhoneCallControlAction;
  if (!lazy protocol witness table cache variable for type PhoneCallControlAction and conformance PhoneCallControlAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallControlAction and conformance PhoneCallControlAction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [PhoneCallControlAction] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [PhoneCallControlAction] and conformance [A];
  if (!lazy protocol witness table cache variable for type [PhoneCallControlAction] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay27PhoneCallFlowDelegatePlugin0aB13ControlActionOGMd, &_sSay27PhoneCallFlowDelegatePlugin0aB13ControlActionOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [PhoneCallControlAction] and conformance [A]);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneCallControlNLIntent.Verb(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for PhoneCallControlNLIntent.Target(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneCallControlAction(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t PhoneCallControlNLTransformer.__allocating_init(cacheProvider:)(uint64_t a1)
{
  v2 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  OUTLINED_FUNCTION_8_6();
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_10_47(v4);
  v6(v5);
  OUTLINED_FUNCTION_16_35();
  v7 = OUTLINED_FUNCTION_40_0();
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v2;
}

uint64_t SingleIntentCacheProvider.cacheIntent(uda:value:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = Siri_Nlu_External_UserDialogAct.hashValue.getter();
  *(v2 + 24) = a2;
}

uint64_t SingleIntentCacheProvider.getCachedIntent(matching:)()
{
  if (Siri_Nlu_External_UserDialogAct.hashValue.getter() == *(v0 + 16))
  {
  }

  else
  {
    return 0;
  }
}

double SingleIntentCacheProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  result = NAN;
  *(v0 + 16) = xmmword_424FE0;
  return result;
}

double SingleIntentCacheProvider.init()()
{
  result = NAN;
  *(v0 + 16) = xmmword_424FE0;
  return result;
}

uint64_t PhoneCallControlNLTransformer.init(cacheProvider:)(uint64_t a1)
{
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  OUTLINED_FUNCTION_8_6();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_10_47(v3);
  v5(v4);
  OUTLINED_FUNCTION_16_35();
  v6 = OUTLINED_FUNCTION_40_0();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v1;
}

uint64_t PhoneCallControlNLTransformer.transformToCallControlNLIntent(parse:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = &v70 - v3;
  type metadata accessor for Siri_Nlu_External_UserParse();
  OUTLINED_FUNCTION_7();
  v73 = v6;
  v74 = v5;
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  v10 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_7();
  v71 = v11;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_4();
  v72 = v14 - v13;
  v15 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v17 = v16;
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_4();
  v21 = v20 - v19;
  v22 = type metadata accessor for USOParse();
  OUTLINED_FUNCTION_7();
  v24 = v23;
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_4();
  v28 = v27 - v26;
  (*(v17 + 16))(v21, a1, v15);
  if ((*(v17 + 88))(v21, v15) != enum case for Parse.uso(_:))
  {
    (*(v17 + 8))(v21, v15);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Logger.siriPhone);
    v41 = v75;

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = OUTLINED_FUNCTION_36();
      v76[2] = v45;
      *v44 = 136315138;
      OUTLINED_FUNCTION_5_58(v41[7], v41[8], v41[9], v41[10]);
      v46 = OUTLINED_FUNCTION_11_40();

      *(v44 + 4) = v46;
      _os_log_impl(&dword_0, v42, v43, "%s only USO parses are supported for call controls. This is not a call controls parse.", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      OUTLINED_FUNCTION_26_0(v45);
      OUTLINED_FUNCTION_26_0(v44);
    }

    return 0;
  }

  (*(v17 + 96))(v21, v15);
  (*(v24 + 32))(v28, v21, v22);
  USOParse.userParse.getter();
  v29 = Siri_Nlu_External_UserParse.userDialogActs.getter();
  (*(v73 + 8))(v9, v74);
  specialized Collection.first.getter(v29);

  v30 = v24;
  v31 = v22;
  v32 = v28;
  if (__swift_getEnumTagSinglePayload(v4, 1, v10) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v4);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.siriPhone);
    v34 = v75;

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_13_40(v38);
      *v37 = 136315138;
      OUTLINED_FUNCTION_5_58(v34[7], v34[8], v34[9], v34[10]);
      v39 = OUTLINED_FUNCTION_11_40();

      *(v37 + 4) = v39;
      _os_log_impl(&dword_0, v35, v36, "%s No user dialog act found in userParse.", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      OUTLINED_FUNCTION_4_5();
      OUTLINED_FUNCTION_26_0(v37);

      (*(v30 + 8))(v28, v31);
      return 0;
    }

LABEL_16:
    (*(v30 + 8))(v32, v31);
    return 0;
  }

  v48 = v71;
  v47 = v72;
  (*(v71 + 32))(v72, v4, v10);
  v49 = v75[5];
  v50 = v75[6];
  __swift_project_boxed_opaque_existential_1(v75 + 2, v49);
  v51 = (*(v50 + 16))(v47, v49, v50);
  if (v51)
  {
    v52 = v51;
    (*(v48 + 8))(v47, v10);
  }

  else
  {
    if (one-time initialization token for transformer != -1)
    {
      swift_once();
    }

    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8NLUTypes0A27_Nlu_External_UserDialogActV27PhoneCallFlowDelegatePlugin0ghI5ParseVGMd, &_s13SiriUtilities11TransformerVy0A8NLUTypes0A27_Nlu_External_UserDialogActV27PhoneCallFlowDelegatePlugin0ghI5ParseVGMR);
    __swift_project_value_buffer(v54, static Transformer<>.transformer);
    OUTLINED_FUNCTION_40_0();
    v55 = Transformer.transform.getter();
    v55(v76, v47);

    v57 = v75;
    v52 = PhoneCallControlNLTransformer.transformToCallControlNLIntent(usoTask:)(v56);

    v70 = v10;
    if (!v52)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v61 = type metadata accessor for Logger();
      __swift_project_value_buffer(v61, static Logger.siriPhone);
      v62 = v75;

      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v73 = v30;
        v74 = v31;
        v66 = v65;
        v67 = OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_13_40(v67);
        *v66 = 136315138;
        OUTLINED_FUNCTION_5_58(v62[7], v62[8], v62[9], v62[10]);
        v68 = v48;
        v69 = OUTLINED_FUNCTION_11_40();

        *(v66 + 4) = v69;
        __swift_destroy_boxed_opaque_existential_1(v54);
        OUTLINED_FUNCTION_4_5();
        OUTLINED_FUNCTION_26_0(v66);

        (*(v68 + 8))(v72, v70);
        (*(v73 + 8))(v32, v74);
        return 0;
      }

      (*(v48 + 8))(v72, v70);
      goto LABEL_16;
    }

    v58 = v47;
    v59 = v57[5];
    v60 = v57[6];
    __swift_project_boxed_opaque_existential_1(v57 + 2, v59);
    (*(v60 + 8))(v58, v52, v59, v60);

    (*(v48 + 8))(v58, v70);
  }

  (*(v30 + 8))(v32, v31);
  return v52;
}

uint64_t PhoneCallControlNLTransformer.transformToCallControlNLIntent(usoTask:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskC27PhoneCallFlowDelegatePlugin0gH15ControlNLIntentCSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskC27PhoneCallFlowDelegatePlugin0gH15ControlNLIntentCSgGMR);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v2);
  static Signpost.begin(_:)();
  v4 = v3;
  type metadata accessor for UsoTask();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB15ControlNLIntentCSgMd, &_s27PhoneCallFlowDelegatePlugin0aB15ControlNLIntentCSgMR);
  Transformer.init(transform:)();
  v5 = Transformer.transform.getter();
  v27[0] = a1;
  v5(&v28, v27);

  v6 = v28;
  if (v28)
  {
    v7 = one-time initialization token for siriPhone;

    if (v7 != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.siriPhone);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v9, v10))
    {
      OUTLINED_FUNCTION_36();
      v11 = OUTLINED_FUNCTION_17_30();
      OUTLINED_FUNCTION_13_40(v11);
      OUTLINED_FUNCTION_7_48(4.8152e-34);
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27[0], v27[1], &v28);

      v13 = OUTLINED_FUNCTION_15_34();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v28);

      *(v4 + 14) = v15;
      *(v4 + 22) = v12;
      v16 = *(*v6 + 144);

      v18 = v16(v17);
      v20 = v19;

      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v28);

      *(v4 + 24) = v21;
      OUTLINED_FUNCTION_14_41(&dword_0, v22, v23, "%s transformed %s into %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4_5();
      OUTLINED_FUNCTION_26_0(v4);
    }

    else
    {
    }
  }

  v24 = OUTLINED_FUNCTION_3_65();
  v25(v24);
  Signpost.OpenSignpost.end()();

  return v6;
}

uint64_t PhoneCallControlNLTransformer.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

void *specialized PhoneCallControlNLTransformer.init(cacheProvider:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  a2[5] = a3;
  a2[6] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2 + 2);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  a2[7] = type metadata accessor for PhoneCallControlNLTransformer();
  a2[8] = &outlined read-only object #0 of specialized PhoneCallControlNLTransformer.init(cacheProvider:);
  a2[9] = 0;
  a2[10] = 0;
  return a2;
}

uint64_t outlined destroy of Siri_Nlu_External_UserDialogAct?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static PhoneCallControlRequestSupportPolicy.unsupportedCameraControlReason(for:action:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (PhoneCallControlAction.rawValue.getter(a3) == 0xD000000000000015 && 0x8000000000452E80 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      if (PhoneCallControlAction.rawValue.getter(a3) == 0x43656C6261736964 && v10 == 0xED00006172656D61)
      {
      }

      else
      {
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v12 & 1) == 0)
        {
          return 10;
        }
      }

      ObjectType = swift_getObjectType();
      if (((*(a2 + 144))(ObjectType, a2) & 1) == 0)
      {
        return 10;
      }
    }
  }

  v13 = *(a4 + 24);
  v14 = *(a4 + 32);
  v15 = OUTLINED_FUNCTION_55();
  __swift_project_boxed_opaque_existential_1(v15, v16);
  OUTLINED_FUNCTION_6_55();
  v17(v13, v14);
  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  v18 = OUTLINED_FUNCTION_55();
  v19(v18);
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  v20 = OUTLINED_FUNCTION_55();
  v22 = v21(v20);
  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_destroy_boxed_opaque_existential_1(v30);
  if ((v22 & 1) == 0)
  {
    return 10;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v23 = type metadata accessor for Logger();
  v24 = OUTLINED_FUNCTION_12_1(v23, static Logger.siriPhone);
  v25 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = OUTLINED_FUNCTION_65_0();
    *v26 = 0;
    _os_log_impl(&dword_0, v24, v25, "#PhoneCallControlRequestSupportPolicy cannot switch to FaceTime Audio because it is restricted in region", v26, 2u);
  }

  return 6;
}

uint64_t static PhoneCallControlRequestSupportPolicy.unsupportedSwitchToFaceTimeReason(for:action:sharedGlobals:)(uint8_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = PhoneCallControlAction.rawValue.getter(a3);
  v10 = v8 == 0xD000000000000015 && 0x8000000000452E80 == v9;
  if (v10)
  {
  }

  else
  {
    v11 = OUTLINED_FUNCTION_4_51(v8);

    if ((v11 & 1) == 0)
    {
LABEL_13:
      swift_getObjectType();
      v27 = *(a2 + 40);
      v28 = a1;
      if ((v27() & 1) == 0)
      {
        goto LABEL_19;
      }

      PhoneCallControlAction.rawValue.getter(a3);
      OUTLINED_FUNCTION_10_48();
      if (v10 && 0x8000000000452E80 == v30)
      {
      }

      else
      {
        v32 = OUTLINED_FUNCTION_4_51(v29);

        if ((v32 & 1) == 0)
        {
LABEL_19:
          v33 = OUTLINED_FUNCTION_2_76();
          if (v34(v33))
          {
            if (PhoneCallControlAction.rawValue.getter(a3) == 0xD000000000000010 && 0x8000000000452E60 == v35)
            {
LABEL_38:

              goto LABEL_39;
            }

            v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v37)
            {
LABEL_39:
              if (one-time initialization token for siriPhone != -1)
              {
                OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
              }

              v55 = type metadata accessor for Logger();
              v21 = OUTLINED_FUNCTION_12_1(v55, static Logger.siriPhone);
              v56 = static os_log_type_t.debug.getter();
              if (OUTLINED_FUNCTION_3_66(v56))
              {
                v57 = OUTLINED_FUNCTION_65_0();
                OUTLINED_FUNCTION_7_14(v57);
                OUTLINED_FUNCTION_11_34(&dword_0, v58, v59, "#PhoneCallControlRequestSupportPolicy call is already FaceTime call. Not switching to FaceTime.");
                v26 = 0;
                goto LABEL_53;
              }

              v26 = 0;
              goto LABEL_54;
            }
          }

          if ((SPHCall.isFTAudio.getter() & 1) == 0)
          {
            goto LABEL_31;
          }

          PhoneCallControlAction.rawValue.getter(a3);
          OUTLINED_FUNCTION_10_48();
          if (!v10 || 0x8000000000452E80 != v39)
          {
            v41 = OUTLINED_FUNCTION_4_51(v38);

            if ((v41 & 1) == 0)
            {
LABEL_31:
              v42 = OUTLINED_FUNCTION_2_76();
              if (v43(v42) == 1)
              {
                v44 = a4[3];
                v45 = a4[4];
                __swift_project_boxed_opaque_existential_1(a4, v44);
                OUTLINED_FUNCTION_6_55();
                v46(v44, v45);
                v47 = v99;
                v48 = v100;
                __swift_project_boxed_opaque_existential_1(v98, v99);
                v49 = (*(v48 + 32))(v47, v48);
                __swift_destroy_boxed_opaque_existential_1(v98);
                if (v49 < 2)
                {
                  v69 = OUTLINED_FUNCTION_2_76();
                  if (v70(v69))
                  {
                    if (one-time initialization token for siriPhone != -1)
                    {
                      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
                    }

                    v71 = type metadata accessor for Logger();
                    v21 = OUTLINED_FUNCTION_12_1(v71, static Logger.siriPhone);
                    v72 = static os_log_type_t.debug.getter();
                    if (!OUTLINED_FUNCTION_3_66(v72))
                    {
                      v26 = 1;
                      goto LABEL_54;
                    }

                    v73 = OUTLINED_FUNCTION_65_0();
                    OUTLINED_FUNCTION_7_14(v73);
                    OUTLINED_FUNCTION_11_34(&dword_0, v74, v75, "#PhoneCallControlRequestSupportPolicy cannot switch to FaceTime because caller ID is blocked.");
                    v26 = 1;
                  }

                  else
                  {
                    v76 = OUTLINED_FUNCTION_2_76();
                    if (((v27)(v76) & 1) != 0 && (v77 = OUTLINED_FUNCTION_2_76(), (v78(v77) & 1) == 0))
                    {
                      if (one-time initialization token for siriPhone != -1)
                      {
                        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
                      }

                      v90 = type metadata accessor for Logger();
                      v21 = OUTLINED_FUNCTION_12_1(v90, static Logger.siriPhone);
                      v91 = static os_log_type_t.debug.getter();
                      if (!OUTLINED_FUNCTION_3_66(v91))
                      {
                        v26 = 7;
                        goto LABEL_54;
                      }

                      v92 = OUTLINED_FUNCTION_65_0();
                      OUTLINED_FUNCTION_7_14(v92);
                      OUTLINED_FUNCTION_11_34(&dword_0, v93, v94, "#PhoneCallControlRequestSupportPolicy cannot switch to FaceTime because FaceTime status is not valid.");
                      v26 = 7;
                    }

                    else
                    {
                      v79 = a4[3];
                      v80 = a4[4];
                      v81 = OUTLINED_FUNCTION_55();
                      __swift_project_boxed_opaque_existential_1(v81, v82);
                      (*(v80 + 144))(v98, v79, v80);
                      v83 = v99;
                      v84 = v100;
                      __swift_project_boxed_opaque_existential_1(v98, v99);
                      LOBYTE(v83) = (*(v84 + 24))(0xD000000000000012, 0x80000000004574F0, v83, v84);
                      __swift_destroy_boxed_opaque_existential_1(v98);
                      if (v83)
                      {
                        return 10;
                      }

                      if (one-time initialization token for siriPhone != -1)
                      {
                        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
                      }

                      v85 = type metadata accessor for Logger();
                      v21 = OUTLINED_FUNCTION_12_1(v85, static Logger.siriPhone);
                      v86 = static os_log_type_t.debug.getter();
                      if (!OUTLINED_FUNCTION_3_66(v86))
                      {
                        v26 = 4;
                        goto LABEL_54;
                      }

                      v87 = OUTLINED_FUNCTION_65_0();
                      OUTLINED_FUNCTION_7_14(v87);
                      OUTLINED_FUNCTION_11_34(&dword_0, v88, v89, "#PhoneCallControlRequestSupportPolicy FaceTime app nor installed.");
                      v26 = 4;
                    }
                  }
                }

                else
                {
                  if (one-time initialization token for siriPhone != -1)
                  {
                    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
                  }

                  v50 = type metadata accessor for Logger();
                  v21 = OUTLINED_FUNCTION_12_1(v50, static Logger.siriPhone);
                  v51 = static os_log_type_t.debug.getter();
                  if (!OUTLINED_FUNCTION_3_66(v51))
                  {
                    v26 = 8;
                    goto LABEL_54;
                  }

                  v52 = OUTLINED_FUNCTION_65_0();
                  OUTLINED_FUNCTION_7_14(v52);
                  OUTLINED_FUNCTION_11_34(&dword_0, v53, v54, "#PhoneCallControlRequestSupportPolicy cannot switch to FaceTime because there are multiple active calls.");
                  v26 = 8;
                }
              }

              else
              {
                if (one-time initialization token for siriPhone != -1)
                {
                  OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
                }

                v63 = type metadata accessor for Logger();
                v21 = OUTLINED_FUNCTION_12_1(v63, static Logger.siriPhone);
                v64 = static os_log_type_t.debug.getter();
                if (!OUTLINED_FUNCTION_3_66(v64))
                {
                  v26 = 3;
                  goto LABEL_54;
                }

                v65 = OUTLINED_FUNCTION_65_0();
                OUTLINED_FUNCTION_7_14(v65);
                OUTLINED_FUNCTION_11_34(&dword_0, v66, v67, "#PhoneCallControlRequestSupportPolicy cannot switch to FaceTime because current call is not active.");
                v26 = 3;
              }

              goto LABEL_53;
            }

            goto LABEL_39;
          }

          goto LABEL_38;
        }
      }

      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v60 = type metadata accessor for Logger();
      v21 = OUTLINED_FUNCTION_12_1(v60, static Logger.siriPhone);
      v61 = static os_log_type_t.debug.getter();
      v26 = 2;
      if (!os_log_type_enabled(v21, v61))
      {
        goto LABEL_54;
      }

      v62 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_7_14(v62);
      _os_log_impl(&dword_0, v21, v61, "#PhoneCallControlRequestSupportPolicy cannot switch to FTA from telephony.", v28, 2u);
      goto LABEL_53;
    }
  }

  v12 = a4[3];
  v13 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v12);
  OUTLINED_FUNCTION_6_55();
  v14(v12, v13);
  v15 = v99;
  v16 = v100;
  __swift_project_boxed_opaque_existential_1(v98, v99);
  (*(v16 + 40))(v95, v15, v16);
  v17 = v96;
  v18 = v97;
  __swift_project_boxed_opaque_existential_1(v95, v96);
  v19 = (*(v18 + 32))(v17, v18);
  __swift_destroy_boxed_opaque_existential_1(v95);
  __swift_destroy_boxed_opaque_existential_1(v98);
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v20 = type metadata accessor for Logger();
  v21 = OUTLINED_FUNCTION_12_1(v20, static Logger.siriPhone);
  v22 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_3_66(v22))
  {
    v23 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_7_14(v23);
    OUTLINED_FUNCTION_11_34(&dword_0, v24, v25, "#PhoneCallControlRequestSupportPolicy cannot switch to FaceTime Audio because it is restricted in region.");
    v26 = 6;
LABEL_53:

    goto LABEL_54;
  }

  v26 = 6;
LABEL_54:

  return v26;
}

__n128 PhoneCallDirectInvocationNLIntent.init(app:contacts:phoneCallAVMode:phoneCallAttributes:phoneCallAudioRoute:phoneCallCapability:phoneCallConfirmation:phoneCallDestinationType:phoneCallNoun:phoneCallPreferredProvider:phoneCallReference:phoneCallVerb:voiceMailVerb:voiceMailNoun:smsGroups:contactQueries:references:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, __n128 a11, uint64_t a12)
{
  result = a11;
  v13 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v13;
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 40) = a2;
  *(a9 + 48) = a3;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  *(a9 + 65) = a6;
  *(a9 + 66) = a7;
  *(a9 + 67) = a8;
  *(a9 + 68) = a10;
  *(a9 + 70) = *(&a10 + 2);
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  return result;
}

uint64_t outlined init with copy of PhoneCallApp?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB3App_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB3App_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of PhoneCallApp?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB3App_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB3App_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PhoneCallDirectInvocationNLIntent.contacts.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t PhoneCallDirectInvocationNLIntent.phoneCallAttributes.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t PhoneCallDirectInvocationNLIntent.smsGroups.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t SingleResultVoicemailModel.contactIds.setter(uint64_t a1)
{

  *(v1 + 88) = a1;
  return result;
}

uint64_t PhoneCallDirectInvocationNLIntent.references.setter(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

uint64_t getEnumTagSinglePayload for PhoneCallDirectInvocationNLIntent(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t storeEnumTagSinglePayload for PhoneCallDirectInvocationNLIntent(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

PhoneCallFlowDelegatePlugin::PhoneCallDisplayTextCATs::Properties_optional __swiftcall PhoneCallDisplayTextCATs.Properties.init(rawValue:)(Swift::String rawValue)
{
  v1 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v1 >= 0x16)
  {
    return 22;
  }

  else
  {
    return v1;
  }
}

unint64_t PhoneCallDisplayTextCATs.Properties.rawValue.getter(char a1)
{
  result = 0xD000000000000028;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000020;
      break;
    case 2:
    case 12:
    case 14:
    case 20:
      result = 0xD000000000000023;
      break;
    case 3:
      result = 0xD000000000000025;
      break;
    case 4:
    case 17:
    case 19:
      result = 0xD000000000000022;
      break;
    case 5:
      result = 0xD00000000000001ELL;
      break;
    case 6:
    case 18:
      result = 0xD00000000000001FLL;
      break;
    case 7:
    case 8:
    case 11:
      result = 0xD000000000000027;
      break;
    case 9:
    case 13:
      result = 0xD000000000000026;
      break;
    case 10:
      result = 0xD00000000000002CLL;
      break;
    case 15:
      result = 0xD00000000000001CLL;
      break;
    case 16:
      result = 0xD00000000000002BLL;
      break;
    case 21:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallDisplayTextCATs::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallDisplayTextCATs.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallDisplayTextCATs::Properties_optional *a2@<X8>)
{
  result.value = PhoneCallDisplayTextCATs.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallDisplayTextCATs.Properties@<X0>(unint64_t *a1@<X8>)
{
  result = PhoneCallDisplayTextCATs.Properties.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t PhoneCallDisplayTextCATs.addToCallButtonText()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(40);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1(40);
}

void PhoneCallDisplayTextCATs.appSettings(appName:completion:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_57_11();
  v1 = OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_27_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  OUTLINED_FUNCTION_0_4(v4, xmmword_424FD0);
  OUTLINED_FUNCTION_40_15();
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v5);
  if (v6)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_41_17();
  }

  else
  {
    OUTLINED_FUNCTION_55_2();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_47_15();
    v7();
  }

  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_49_12(32, v8);

  OUTLINED_FUNCTION_60_1();
}

uint64_t PhoneCallDisplayTextCATs.appSettings(appName:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v1[5] = OUTLINED_FUNCTION_45();
  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_75_6();
  v15 = v2;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_64_7();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v5 = OUTLINED_FUNCTION_46_15(v4);
  v6 = OUTLINED_FUNCTION_0_4(v5, xmmword_424FD0);
  OUTLINED_FUNCTION_54_2(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_7(v8);
  if (v9)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v10();
  }

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 56) = v11;
  *v11 = v12;
  OUTLINED_FUNCTION_10_49(v11);
  OUTLINED_FUNCTION_37_17();

  return v13();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_8_1();

    return v10();
  }
}

{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v1[4] = OUTLINED_FUNCTION_45();
  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_75_6();
  v16 = v1;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_60_9();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  v4 = OUTLINED_FUNCTION_50_0(v3);
  v5 = OUTLINED_FUNCTION_0_4(v4, xmmword_424FD0);
  OUTLINED_FUNCTION_54_2(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v7);
  if (v8)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v9();
  }

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_61_4(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_19_2(v11);
  v13 = OUTLINED_FUNCTION_38_1(32);

  return v14(v13);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_49();

    return v11(v10);
  }
}

void PhoneCallDisplayTextCATs.appSettings(appName:)()
{
  OUTLINED_FUNCTION_61_6();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_17_17();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v6 = OUTLINED_FUNCTION_35_1(v5);
  OUTLINED_FUNCTION_0_4(v6, xmmword_424FD0);
  OUTLINED_FUNCTION_50_14();
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_47(v7);
  if (v8)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
  }

  else
  {
    *(v6 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_1((v6 + 48));
    OUTLINED_FUNCTION_40();
    (*(v9 + 32))();
  }

  OUTLINED_FUNCTION_119();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();

  OUTLINED_FUNCTION_60_1();
}

void PhoneCallDisplayTextCATs.callButtonText(label:completion:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_57_11();
  v1 = OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_27_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  *(OUTLINED_FUNCTION_35_1(v3) + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_5_59();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  OUTLINED_FUNCTION_40_15();
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v7);
  if (v8)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_41_17();
  }

  else
  {
    OUTLINED_FUNCTION_55_2();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_47_15();
    v9();
  }

  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_49_12(35, v10);

  OUTLINED_FUNCTION_60_1();
}

uint64_t PhoneCallDisplayTextCATs.callButtonText(label:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v1[5] = OUTLINED_FUNCTION_45();
  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_75_6();
  v16 = v2;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_64_7();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  *(OUTLINED_FUNCTION_46_15(v4) + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_5_59();
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  OUTLINED_FUNCTION_54_2(v5, v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_7(v9);
  if (v10)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v11();
  }

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 56) = v12;
  *v12 = v13;
  OUTLINED_FUNCTION_10_49(v12);
  OUTLINED_FUNCTION_37_17();

  return v14();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_8_1();

    return v10();
  }
}

{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v1[4] = OUTLINED_FUNCTION_45();
  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_75_6();
  v17 = v1;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_60_9();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  *(OUTLINED_FUNCTION_50_0(v3) + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_5_59();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  OUTLINED_FUNCTION_54_2(v4, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v8);
  if (v9)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v10();
  }

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_61_4(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_19_2(v12);
  v14 = OUTLINED_FUNCTION_38_1(35);

  return v15(v14);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_49();

    return v11(v10);
  }
}

void PhoneCallDisplayTextCATs.callButtonText(label:)()
{
  OUTLINED_FUNCTION_61_6();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_17_17();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v6 = OUTLINED_FUNCTION_35_1(v5);
  *(v6 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_5_59();
  *(v7 + 32) = v8;
  *(v7 + 40) = v9;
  OUTLINED_FUNCTION_50_14();
  v10 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_47(v10);
  if (v11)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
  }

  else
  {
    *(v6 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_1((v6 + 48));
    OUTLINED_FUNCTION_40();
    (*(v12 + 32))();
  }

  OUTLINED_FUNCTION_119();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();

  OUTLINED_FUNCTION_60_1();
}

uint64_t PhoneCallDisplayTextCATs.cancelButtonText()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(37);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1(37);
}

uint64_t PhoneCallDisplayTextCATs.cancelledText()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(34);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1(34);
}

uint64_t PhoneCallDisplayTextCATs.changeApp()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(30);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1(30);
}

uint64_t PhoneCallDisplayTextCATs.changeText()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(31);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1(31);
}

uint64_t PhoneCallDisplayTextCATs.contactComposition()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(39);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1(39);
}

uint64_t PhoneCallDisplayTextCATs.emergencySashTitle()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(39);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1(39);
}

uint64_t PhoneCallDisplayTextCATs.emergencyServices()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(38);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1(38);
}

uint64_t PhoneCallDisplayTextCATs.emergencyServicesPrompt()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(44);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1(44);
}

void PhoneCallDisplayTextCATs.handleLabelAndType(personHandleLabel:label:type:completion:)()
{
  OUTLINED_FUNCTION_66();
  v31[2] = v0;
  v31[1] = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = OUTLINED_FUNCTION_21(v8);
  __chkstk_darwin(v9);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v31 - v13;
  __chkstk_darwin(v15);
  v17 = v31 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v19 = OUTLINED_FUNCTION_47(v18);
  *(v19 + 16) = xmmword_426980;
  OUTLINED_FUNCTION_27_2();
  *(v20 + 32) = 0xD000000000000011;
  *(v20 + 40) = v21;
  outlined init with copy of SpeakableString?(v7, v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v22 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_46_16(v17);
  if (v23)
  {
    outlined destroy of SpeakableString?(v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    *(v19 + 72) = v22;
    __swift_allocate_boxed_opaque_existential_1((v19 + 48));
    OUTLINED_FUNCTION_40();
    (*(v24 + 32))();
  }

  OUTLINED_FUNCTION_5_59();
  *(v19 + 80) = v25;
  *(v19 + 88) = v26;
  outlined init with copy of SpeakableString?(v5, v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_46_16(v14);
  if (v23)
  {
    outlined destroy of SpeakableString?(v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v19 + 96) = 0u;
    *(v19 + 112) = 0u;
  }

  else
  {
    *(v19 + 120) = v22;
    __swift_allocate_boxed_opaque_existential_1((v19 + 96));
    OUTLINED_FUNCTION_40();
    (*(v27 + 32))();
  }

  OUTLINED_FUNCTION_47_16();
  *(v19 + 128) = v28;
  *(v19 + 136) = v29;
  outlined init with copy of SpeakableString?(v3, v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_46_16(v11);
  if (v23)
  {
    outlined destroy of SpeakableString?(v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v19 + 144) = 0u;
    *(v19 + 160) = 0u;
  }

  else
  {
    *(v19 + 168) = v22;
    __swift_allocate_boxed_opaque_existential_1((v19 + 144));
    OUTLINED_FUNCTION_40();
    (*(v30 + 32))();
  }

  OUTLINED_FUNCTION_65_9();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();

  OUTLINED_FUNCTION_65();
}

uint64_t PhoneCallDisplayTextCATs.handleLabelAndType(personHandleLabel:label:type:)()
{
  OUTLINED_FUNCTION_15();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v6);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[3];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_47(v2);
  v0[10] = v3;
  *(v3 + 16) = xmmword_426980;
  OUTLINED_FUNCTION_27_2();
  *(v4 + 32) = 0xD000000000000011;
  *(v4 + 40) = v5;
  OUTLINED_FUNCTION_54_2(v4, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_58(v7) == 1)
  {
    outlined destroy of SpeakableString?(v0[9], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v8();
  }

  v9 = v0[8];
  OUTLINED_FUNCTION_5_59();
  *(v3 + 80) = v10;
  *(v3 + 88) = v11;
  outlined init with copy of SpeakableString?(v12, v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_15_4() == 1)
  {
    outlined destroy of SpeakableString?(v0[8], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v1;
    __swift_allocate_boxed_opaque_existential_1((v3 + 96));
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v13();
  }

  v14 = v0[7];
  OUTLINED_FUNCTION_47_16();
  *(v3 + 128) = v15;
  *(v3 + 136) = v16;
  outlined init with copy of SpeakableString?(v17, v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_15_4() == 1)
  {
    outlined destroy of SpeakableString?(v0[7], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
  }

  else
  {
    *(v3 + 168) = v1;
    __swift_allocate_boxed_opaque_existential_1((v3 + 144));
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v18();
  }

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v24 = v19;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[11] = v20;
  *v20 = v21;
  v20[1] = PhoneCallDisplayTextCATs.handleLabelAndType(personHandleLabel:label:type:);
  v22 = v0[2];

  return v24(v22, 0xD000000000000027, 0x8000000000453100, v3);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_8_1();

    return v10();
  }
}

{
  OUTLINED_FUNCTION_27();

  OUTLINED_FUNCTION_11();

  return v0();
}

{
  OUTLINED_FUNCTION_15();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v5);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[2];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_47(v2);
  v0[9] = v3;
  *(v3 + 16) = xmmword_426980;
  OUTLINED_FUNCTION_27_2();
  *(v4 + 32) = 0xD000000000000011;
  *(v4 + 40) = v5;
  OUTLINED_FUNCTION_54_2(v4, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_58(v7) == 1)
  {
    outlined destroy of SpeakableString?(v0[8], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v8();
  }

  v9 = v0[7];
  OUTLINED_FUNCTION_5_59();
  *(v3 + 80) = v10;
  *(v3 + 88) = v11;
  outlined init with copy of SpeakableString?(v12, v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_15_4() == 1)
  {
    outlined destroy of SpeakableString?(v0[7], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v1;
    __swift_allocate_boxed_opaque_existential_1((v3 + 96));
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v13();
  }

  v14 = v0[6];
  OUTLINED_FUNCTION_47_16();
  *(v3 + 128) = v15;
  *(v3 + 136) = v16;
  outlined init with copy of SpeakableString?(v17, v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_15_4() == 1)
  {
    outlined destroy of SpeakableString?(v0[6], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
  }

  else
  {
    *(v3 + 168) = v1;
    __swift_allocate_boxed_opaque_existential_1((v3 + 144));
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v18();
  }

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v23 = v19;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[10] = v20;
  *v20 = v21;
  v20[1] = PhoneCallDisplayTextCATs.handleLabelAndType(personHandleLabel:label:type:);

  return v23(0xD000000000000027, 0x8000000000453100, v3);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_49();

    return v11(v10);
  }
}

{
  OUTLINED_FUNCTION_27();

  OUTLINED_FUNCTION_11();

  return v0();
}

void PhoneCallDisplayTextCATs.handleLabelAndType(personHandleLabel:label:type:)()
{
  OUTLINED_FUNCTION_66();
  v33[0] = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = OUTLINED_FUNCTION_21(v7);
  __chkstk_darwin(v8);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v33 - v12;
  __chkstk_darwin(v14);
  v16 = v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v18 = OUTLINED_FUNCTION_47(v17);
  *(v18 + 16) = xmmword_426980;
  OUTLINED_FUNCTION_27_2();
  *(v19 + 32) = 0xD000000000000011;
  *(v19 + 40) = v20;
  outlined init with copy of SpeakableString?(v6, v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v21 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_4_1(v16);
  if (v22)
  {
    outlined destroy of SpeakableString?(v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_41_17();
  }

  else
  {
    OUTLINED_FUNCTION_55_2();
    OUTLINED_FUNCTION_24_23();
    (*(v23 + 32))(v24);
  }

  OUTLINED_FUNCTION_5_59();
  *(v18 + 80) = v25;
  *(v18 + 88) = v26;
  outlined init with copy of SpeakableString?(v4, v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_4_1(v13);
  if (v22)
  {
    outlined destroy of SpeakableString?(v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v18 + 96) = 0u;
    *(v18 + 112) = 0u;
  }

  else
  {
    *(v18 + 120) = v21;
    __swift_allocate_boxed_opaque_existential_1((v18 + 96));
    OUTLINED_FUNCTION_24_23();
    (*(v27 + 32))(v28);
  }

  OUTLINED_FUNCTION_47_16();
  *(v18 + 128) = v29;
  *(v18 + 136) = v30;
  outlined init with copy of SpeakableString?(v2, v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_4_1(v10);
  if (v22)
  {
    outlined destroy of SpeakableString?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v18 + 144) = 0u;
    *(v18 + 160) = 0u;
  }

  else
  {
    *(v18 + 168) = v21;
    __swift_allocate_boxed_opaque_existential_1((v18 + 144));
    OUTLINED_FUNCTION_24_23();
    (*(v31 + 32))(v32);
  }

  OUTLINED_FUNCTION_65_9();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();

  OUTLINED_FUNCTION_65();
}

uint64_t PhoneCallDisplayTextCATs.joinButtonText()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #2 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_15_2(v1);
  *v2 = v3;
  v2[1] = AddCallParticipantCATs.errorNoTargetCall();
  v4 = OUTLINED_FUNCTION_28_6();

  return v6(v4);
}

{
  return OUTLINED_FUNCTION_33_1(35);
}

uint64_t PhoneCallDisplayTextCATs.newCallButtonText()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(38);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1(38);
}

uint64_t PhoneCallDisplayTextCATs.nextButtonText()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_15_2(v1);
  *v2 = v3;
  v2[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  v4 = OUTLINED_FUNCTION_28_6();

  return v6(v4);
}

{
  return OUTLINED_FUNCTION_33_1(35);
}

void PhoneCallDisplayTextCATs.openApp(appName:completion:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_57_11();
  v1 = OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_27_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  OUTLINED_FUNCTION_0_4(v4, xmmword_424FD0);
  OUTLINED_FUNCTION_40_15();
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v5);
  if (v6)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_41_17();
  }

  else
  {
    OUTLINED_FUNCTION_55_2();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_47_15();
    v7();
  }

  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_49_12(28, v8);

  OUTLINED_FUNCTION_60_1();
}

uint64_t PhoneCallDisplayTextCATs.openApp(appName:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v1[5] = OUTLINED_FUNCTION_45();
  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_75_6();
  v15 = v2;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_64_7();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v5 = OUTLINED_FUNCTION_46_15(v4);
  v6 = OUTLINED_FUNCTION_0_4(v5, xmmword_424FD0);
  OUTLINED_FUNCTION_54_2(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_7(v8);
  if (v9)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v10();
  }

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 56) = v11;
  *v11 = v12;
  OUTLINED_FUNCTION_10_49(v11);
  OUTLINED_FUNCTION_37_17();

  return v13();
}

{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v1[4] = OUTLINED_FUNCTION_45();
  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_75_6();
  v16 = v1;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_60_9();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  v4 = OUTLINED_FUNCTION_50_0(v3);
  v5 = OUTLINED_FUNCTION_0_4(v4, xmmword_424FD0);
  OUTLINED_FUNCTION_54_2(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v7);
  if (v8)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v9();
  }

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_61_4(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_19_2(v11);
  v13 = OUTLINED_FUNCTION_38_1(28);

  return v14(v13);
}

void PhoneCallDisplayTextCATs.openApp(appName:)()
{
  OUTLINED_FUNCTION_61_6();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_17_17();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v6 = OUTLINED_FUNCTION_35_1(v5);
  OUTLINED_FUNCTION_0_4(v6, xmmword_424FD0);
  OUTLINED_FUNCTION_50_14();
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_47(v7);
  if (v8)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
  }

  else
  {
    *(v6 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_1((v6 + 48));
    OUTLINED_FUNCTION_40();
    (*(v9 + 32))();
  }

  OUTLINED_FUNCTION_119();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();

  OUTLINED_FUNCTION_60_1();
}

uint64_t PhoneCallDisplayTextCATs.openContactsButtonText()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(43);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1(43);
}

uint64_t PhoneCallDisplayTextCATs.transcription()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(34);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1(34);
}

void PhoneCallDisplayTextCATs.tryWithApp(appName:isThirdPartyApp:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_66();
  a19 = v20;
  a20 = v21;
  OUTLINED_FUNCTION_74_4();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v22);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v23);
  v25 = &a9 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v27 = OUTLINED_FUNCTION_45_0(v26);
  OUTLINED_FUNCTION_0_4(v27, xmmword_424FF0);
  OUTLINED_FUNCTION_77_7();
  v28 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_46_16(v25);
  if (v29)
  {
    outlined destroy of SpeakableString?(v25, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    v27[4].n128_u64[1] = v28;
    __swift_allocate_boxed_opaque_existential_1(&v27[3]);
    OUTLINED_FUNCTION_40();
    (*(v30 + 32))();
  }

  OUTLINED_FUNCTION_4_52();
  v27[5].n128_u64[0] = v31;
  v27[5].n128_u64[1] = v32;
  OUTLINED_FUNCTION_72_4();
  OUTLINED_FUNCTION_78_0(31, v33);

  OUTLINED_FUNCTION_65();
}

uint64_t PhoneCallDisplayTextCATs.tryWithApp(appName:isThirdPartyApp:)()
{
  OUTLINED_FUNCTION_15();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 72) = v3;
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v5);
  *(v1 + 40) = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_75_6();
  v19 = v3;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_64_7();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_45_0(v4);
  v6 = OUTLINED_FUNCTION_46_15(v5);
  v7 = OUTLINED_FUNCTION_0_4(v6, xmmword_424FF0);
  OUTLINED_FUNCTION_54_2(v7, v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_7(v9);
  if (v10)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v11();
  }

  OUTLINED_FUNCTION_4_52();
  *(v2 + 80) = v12;
  *(v2 + 88) = v13;
  OUTLINED_FUNCTION_73_1(v14);
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 56) = v15;
  *v15 = v16;
  OUTLINED_FUNCTION_10_49(v15);
  OUTLINED_FUNCTION_37_17();

  return v17();
}

{
  OUTLINED_FUNCTION_15();
  *(v1 + 64) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  *(v1 + 32) = OUTLINED_FUNCTION_45();
  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_75_6();
  v20 = v2;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_60_9();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_45_0(v3);
  v5 = OUTLINED_FUNCTION_50_0(v4);
  v6 = OUTLINED_FUNCTION_0_4(v5, xmmword_424FF0);
  OUTLINED_FUNCTION_54_2(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v8);
  if (v9)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v10();
  }

  OUTLINED_FUNCTION_4_52();
  *(v1 + 80) = v11;
  *(v1 + 88) = v12;
  OUTLINED_FUNCTION_73_1(v13);
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_61_4(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_19_2(v15);
  v17 = OUTLINED_FUNCTION_38_1(31);

  return v18(v17);
}

void PhoneCallDisplayTextCATs.tryWithApp(appName:isThirdPartyApp:)()
{
  OUTLINED_FUNCTION_61_6();
  v1 = OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_27_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_45_0(v3);
  OUTLINED_FUNCTION_0_4(v4, xmmword_424FF0);
  OUTLINED_FUNCTION_40_15();
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v5);
  if (v6)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_41_17();
  }

  else
  {
    OUTLINED_FUNCTION_55_2();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_47_15();
    v7();
  }

  OUTLINED_FUNCTION_4_52();
  v4[5].n128_u64[0] = v8;
  v4[5].n128_u64[1] = v9;
  OUTLINED_FUNCTION_67_8();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();

  OUTLINED_FUNCTION_60_1();
}

uint64_t PhoneCallDisplayTextCATs.unknownCaller()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(34);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1(34);
}

uint64_t PhoneCallDisplayTextCATs.updateSettings()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_15_2(v1);
  *v2 = v3;
  v2[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  v4 = OUTLINED_FUNCTION_28_6();

  return v6(v4);
}

{
  return OUTLINED_FUNCTION_33_1(35);
}

void PhoneCallDisplayTextCATs.useApp(appName:isPhoneApp:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_66();
  a19 = v20;
  a20 = v21;
  OUTLINED_FUNCTION_74_4();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v22);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v23);
  v25 = &a9 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v27 = OUTLINED_FUNCTION_45_0(v26);
  OUTLINED_FUNCTION_0_4(v27, xmmword_424FF0);
  OUTLINED_FUNCTION_77_7();
  v28 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_46_16(v25);
  if (v29)
  {
    outlined destroy of SpeakableString?(v25, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    v27[4].n128_u64[1] = v28;
    __swift_allocate_boxed_opaque_existential_1(&v27[3]);
    OUTLINED_FUNCTION_40();
    (*(v30 + 32))();
  }

  OUTLINED_FUNCTION_16_6();
  v27[5].n128_u64[0] = v31;
  v27[5].n128_u64[1] = v32;
  OUTLINED_FUNCTION_72_4();
  OUTLINED_FUNCTION_78_0(27, v33);

  OUTLINED_FUNCTION_65();
}

uint64_t PhoneCallDisplayTextCATs.useApp(appName:isPhoneApp:)()
{
  OUTLINED_FUNCTION_15();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 72) = v3;
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v5);
  *(v1 + 40) = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_75_6();
  v19 = v3;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_64_7();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_45_0(v4);
  v6 = OUTLINED_FUNCTION_46_15(v5);
  v7 = OUTLINED_FUNCTION_0_4(v6, xmmword_424FF0);
  OUTLINED_FUNCTION_54_2(v7, v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_7(v9);
  if (v10)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v11();
  }

  OUTLINED_FUNCTION_16_6();
  *(v2 + 80) = v12;
  *(v2 + 88) = v13;
  OUTLINED_FUNCTION_73_1(v14);
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 56) = v15;
  *v15 = v16;
  OUTLINED_FUNCTION_10_49(v15);
  OUTLINED_FUNCTION_37_17();

  return v17();
}

{
  OUTLINED_FUNCTION_15();
  *(v1 + 64) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  *(v1 + 32) = OUTLINED_FUNCTION_45();
  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_75_6();
  v20 = v2;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_60_9();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_45_0(v3);
  v5 = OUTLINED_FUNCTION_50_0(v4);
  v6 = OUTLINED_FUNCTION_0_4(v5, xmmword_424FF0);
  OUTLINED_FUNCTION_54_2(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v8);
  if (v9)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v10();
  }

  OUTLINED_FUNCTION_16_6();
  *(v1 + 80) = v11;
  *(v1 + 88) = v12;
  OUTLINED_FUNCTION_73_1(v13);
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_61_4(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_19_2(v15);
  v17 = OUTLINED_FUNCTION_38_1(27);

  return v18(v17);
}

void PhoneCallDisplayTextCATs.useApp(appName:isPhoneApp:)()
{
  OUTLINED_FUNCTION_61_6();
  v1 = OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_27_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_45_0(v3);
  OUTLINED_FUNCTION_0_4(v4, xmmword_424FF0);
  OUTLINED_FUNCTION_40_15();
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v5);
  if (v6)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_41_17();
  }

  else
  {
    OUTLINED_FUNCTION_55_2();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_47_15();
    v7();
  }

  OUTLINED_FUNCTION_16_6();
  v4[5].n128_u64[0] = v8;
  v4[5].n128_u64[1] = v9;
  OUTLINED_FUNCTION_67_8();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();

  OUTLINED_FUNCTION_60_1();
}

void PhoneCallDisplayTextCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_66();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = type metadata accessor for CATOption();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &a9 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_21(v30);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v31);
  outlined init with copy of SpeakableString?(v25, &a9 - v32, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v27 + 16))(v29, v23, v26);
  CATWrapper.init(templateDir:options:globals:)();
  (*(v27 + 8))(v23, v26);
  outlined destroy of SpeakableString?(v25, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_65();
}

unint64_t lazy protocol witness table accessor for type PhoneCallDisplayTextCATs.Properties and conformance PhoneCallDisplayTextCATs.Properties()
{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATs.Properties and conformance PhoneCallDisplayTextCATs.Properties;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATs.Properties and conformance PhoneCallDisplayTextCATs.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATs.Properties and conformance PhoneCallDisplayTextCATs.Properties);
  }

  return result;
}

uint64_t type metadata accessor for PhoneCallDisplayTextCATs(uint64_t a1)
{
  result = type metadata singleton initialization cache for PhoneCallDisplayTextCATs;
  if (!type metadata singleton initialization cache for PhoneCallDisplayTextCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhoneCallDisplayTextCATs.Properties(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEB)
  {
    if (a2 + 21 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 21) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 22;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v5 = v6 - 22;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PhoneCallDisplayTextCATs.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEA)
  {
    v6 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
          *result = a2 + 21;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_40_15()
{

  return outlined init with copy of SpeakableString?(v1, v0, v2, v3);
}

uint64_t OUTLINED_FUNCTION_50_14()
{

  return outlined init with copy of SpeakableString?(v1, v0, v2, v3);
}

uint64_t OUTLINED_FUNCTION_77_7()
{

  return outlined init with copy of SpeakableString?(v1, v0, v2, v3);
}

PhoneCallFlowDelegatePlugin::PhoneCallDisplayTextCATsSimple::Properties_optional __swiftcall PhoneCallDisplayTextCATsSimple.Properties.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  _findStringSwitchCaseWithCache(cases:string:cache:)();
  OUTLINED_FUNCTION_33_2();
  if (v1 >= 0x16)
  {
    return 22;
  }

  else
  {
    return v1;
  }
}

unint64_t PhoneCallDisplayTextCATsSimple.Properties.rawValue.getter(char a1)
{
  result = 0xD000000000000028;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000020;
      break;
    case 2:
    case 12:
    case 14:
    case 20:
      result = 0xD000000000000023;
      break;
    case 3:
      result = 0xD000000000000025;
      break;
    case 4:
    case 17:
    case 19:
      result = 0xD000000000000022;
      break;
    case 5:
      result = 0xD00000000000001ELL;
      break;
    case 6:
    case 18:
      result = 0xD00000000000001FLL;
      break;
    case 7:
    case 8:
    case 11:
      result = 0xD000000000000027;
      break;
    case 9:
    case 13:
      result = 0xD000000000000026;
      break;
    case 10:
      result = 0xD00000000000002CLL;
      break;
    case 15:
      result = 0xD00000000000001CLL;
      break;
    case 16:
      result = 0xD00000000000002BLL;
      break;
    case 21:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallDisplayTextCATsSimple::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallDisplayTextCATsSimple.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallDisplayTextCATsSimple::Properties_optional *a2@<X8>)
{
  result.value = PhoneCallDisplayTextCATsSimple.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallDisplayTextCATsSimple.Properties()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = PhoneCallDisplayTextCATsSimple.Properties.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.addToCallButtonText()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(40);

  return v4(v3);
}

BOOL PhoneCallDisplayTextCATsSimple.AddToCallButtonTextDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallDisplayTextCATsSimple.AddToCallButtonTextDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallDisplayTextCATsSimple.AddToCallButtonTextDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = PhoneCallDisplayTextCATsSimple.AddToCallButtonTextDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.addToCallButtonTextAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.AddToCallButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.AddToCallButtonTextDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(40);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.AddToCallButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.AddToCallButtonTextDialogIds()
{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.AddToCallButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.AddToCallButtonTextDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.AddToCallButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.AddToCallButtonTextDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.AddToCallButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.AddToCallButtonTextDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.AddToCallButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.AddToCallButtonTextDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.AddToCallButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.AddToCallButtonTextDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.AddToCallButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.AddToCallButtonTextDialogIds);
  }

  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.appSettings(appName:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v1[4] = OUTLINED_FUNCTION_45();
  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_75_6();
  v16 = v1;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_60_9();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  v4 = OUTLINED_FUNCTION_50_0(v3);
  v5 = OUTLINED_FUNCTION_0_4(v4, xmmword_424FD0);
  OUTLINED_FUNCTION_48_1(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v7);
  if (v8)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v9();
  }

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_61_4(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_19_2(v11);
  v13 = OUTLINED_FUNCTION_38_1(32);

  return v14(v13);
}