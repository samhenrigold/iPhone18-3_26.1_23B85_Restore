PhoneCallFlowDelegatePlugin::StartCallCATsSimple::IntentHandledResponseDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.IntentHandledResponseDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StartCallCATsSimple::IntentHandledResponseDialogIds_optional *a2@<X8>)
{
  result.value = StartCallCATsSimple.IntentHandledResponseDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance StartCallCATsSimple.IntentHandledResponseDialogIds()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = StartCallCATsSimple.IntentHandledResponseDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t StartCallCATsSimple.intentHandledResponseAsLabels(intent:redactedContacts:device:appName:isFirstPartyApp:isWalkieTalkie:shouldPrintDialogOnDisplayMode:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_126_3(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v8);
  *(v0 + 56) = OUTLINED_FUNCTION_45();
  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t StartCallCATsSimple.intentHandledResponseAsLabels(intent:redactedContacts:device:appName:isFirstPartyApp:isWalkieTalkie:shouldPrintDialogOnDisplayMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_101_4();
  OUTLINED_FUNCTION_24_1();
  v13 = v12[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = swift_allocObject();
  v12[8] = v14;
  OUTLINED_FUNCTION_12_6(v14, xmmword_431D00);
  if (v13)
  {
    type metadata accessor for PhoneStartCallIntent(0);
  }

  else
  {
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
  }

  v15 = v12[3];
  *(v14 + 48) = v13;
  OUTLINED_FUNCTION_27_2();
  *(v14 + 72) = v16;
  *(v14 + 80) = 0xD000000000000010;
  *(v14 + 88) = v17;
  v18 = 0;
  if (v15)
  {
    v18 = type metadata accessor for PhonePersonList();
  }

  else
  {
    *(v14 + 104) = 0;
    *(v14 + 112) = 0;
  }

  OUTLINED_FUNCTION_100_4(v18);
  if (v13)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v14 + 152) = 0;
    *(v14 + 160) = 0;
  }

  v19 = v12[7];
  *(v14 + 144) = v13;
  OUTLINED_FUNCTION_21_40();
  *(v14 + 168) = v20;
  *(v14 + 176) = v21;
  *(v14 + 184) = 0xE700000000000000;
  OUTLINED_FUNCTION_169(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v22);
  v23 = type metadata accessor for SpeakableString();
  __swift_getEnumTagSinglePayload(v19, 1, v23);
  v24 = v12[7];
  OUTLINED_FUNCTION_225_0();
  if (v25)
  {

    outlined destroy of SpeakableString?(v24, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v14 + 192) = 0u;
    *(v14 + 208) = 0u;
  }

  else
  {
    *(v14 + 216) = v23;
    __swift_allocate_boxed_opaque_existential_1((v14 + 192));
    OUTLINED_FUNCTION_40();
    (*(v26 + 32))();
  }

  OUTLINED_FUNCTION_98_7();
  OUTLINED_FUNCTION_128_2();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_194(v27);
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v28 = swift_task_alloc();
  v12[9] = v28;
  lazy protocol witness table accessor for type StartCallCATsSimple.IntentHandledResponseDialogIds and conformance StartCallCATsSimple.IntentHandledResponseDialogIds();
  OUTLINED_FUNCTION_9();
  *v28 = v29;
  v28[1] = SearchCallHistoryCATsSimple.readSearchCallHistoryIntroductionAsLabels(callRecordCount:totalCallRecordCount:intent:isFirstPartyApp:appName:);
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_133_3();

  return v35(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.IntentHandledResponseDialogIds and conformance StartCallCATsSimple.IntentHandledResponseDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.IntentHandledResponseDialogIds and conformance StartCallCATsSimple.IntentHandledResponseDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.IntentHandledResponseDialogIds and conformance StartCallCATsSimple.IntentHandledResponseDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.IntentHandledResponseDialogIds and conformance StartCallCATsSimple.IntentHandledResponseDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.IntentHandledResponseDialogIds and conformance StartCallCATsSimple.IntentHandledResponseDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.IntentHandledResponseDialogIds and conformance StartCallCATsSimple.IntentHandledResponseDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.IntentHandledResponseDialogIds and conformance StartCallCATsSimple.IntentHandledResponseDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.intentHandledResponseEmergency(intent:noCountdownPresented:isMyriadCall:isRepromptAutoCall:device:)(uint64_t a1, char a2, char a3, char a4, uint64_t a5)
{
  *(v6 + 24) = a5;
  *(v6 + 32) = v5;
  *(v6 + 66) = a4;
  *(v6 + 65) = a3;
  *(v6 + 64) = a2;
  *(v6 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.intentHandledResponseEmergency(intent:noCountdownPresented:isMyriadCall:isRepromptAutoCall:device:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v14 = *(v11 + 16);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v16 = OUTLINED_FUNCTION_187(v15);
  v17 = OUTLINED_FUNCTION_47_3(v16);
  OUTLINED_FUNCTION_12_6(v17, xmmword_42BF20);
  if (v14)
  {
    type metadata accessor for PhoneStartCallIntent(0);
    v18 = v14;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  OUTLINED_FUNCTION_123_5(v18);
  OUTLINED_FUNCTION_27_2();
  v12[9] = v19;
  v12[10] = v13 + 2;
  v12[11] = v20;
  OUTLINED_FUNCTION_139_0(&type metadata for Bool);
  v22 = OUTLINED_FUNCTION_124_2(v21);
  if (v10)
  {
    v22 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v12[31] = 0;
    v12[32] = 0;
  }

  v12[30] = v10;
  v12[33] = v22;
  OUTLINED_FUNCTION_17_53();

  v23 = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_61_4(v23);
  *v24 = v25;
  OUTLINED_FUNCTION_114_0(v24);
  OUTLINED_FUNCTION_183_1();
  OUTLINED_FUNCTION_60();

  return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::IntentHandledResponseEmergencyDialogIds_optional __swiftcall StartCallCATsSimple.IntentHandledResponseEmergencyDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.IntentHandledResponseEmergencyDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_174_0();
  if (v5)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

void StartCallCATsSimple.IntentHandledResponseEmergencyDialogIds.rawValue.getter(char a1)
{
  if (!a1)
  {
    OUTLINED_FUNCTION_151_1();
  }
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::IntentHandledResponseEmergencyDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.IntentHandledResponseEmergencyDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StartCallCATsSimple::IntentHandledResponseEmergencyDialogIds_optional *a2@<X8>)
{
  result.value = StartCallCATsSimple.IntentHandledResponseEmergencyDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance StartCallCATsSimple.IntentHandledResponseEmergencyDialogIds()
{
  v1 = OUTLINED_FUNCTION_40_2();
  StartCallCATsSimple.IntentHandledResponseEmergencyDialogIds.rawValue.getter(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t StartCallCATsSimple.intentHandledResponseEmergencyAsLabels(intent:noCountdownPresented:isMyriadCall:isRepromptAutoCall:device:)(uint64_t a1, char a2, char a3, char a4, uint64_t a5)
{
  *(v6 + 24) = a5;
  *(v6 + 32) = v5;
  *(v6 + 66) = a4;
  *(v6 + 65) = a3;
  *(v6 + 64) = a2;
  *(v6 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.intentHandledResponseEmergencyAsLabels(intent:noCountdownPresented:isMyriadCall:isRepromptAutoCall:device:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v14 = *(v11 + 16);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v16 = OUTLINED_FUNCTION_187(v15);
  v17 = OUTLINED_FUNCTION_47_3(v16);
  OUTLINED_FUNCTION_12_6(v17, xmmword_42BF20);
  if (v14)
  {
    type metadata accessor for PhoneStartCallIntent(0);
    v18 = v14;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  OUTLINED_FUNCTION_123_5(v18);
  OUTLINED_FUNCTION_27_2();
  v12[9] = v19;
  v12[10] = v13 + 2;
  v12[11] = v20;
  OUTLINED_FUNCTION_139_0(&type metadata for Bool);
  v22 = OUTLINED_FUNCTION_124_2(v21);
  if (v10)
  {
    v22 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v12[31] = 0;
    v12[32] = 0;
  }

  v12[30] = v10;
  v12[33] = v22;
  OUTLINED_FUNCTION_17_53();

  v23 = swift_task_alloc();
  OUTLINED_FUNCTION_27_20(v23);
  lazy protocol witness table accessor for type StartCallCATsSimple.IntentHandledResponseEmergencyDialogIds and conformance StartCallCATsSimple.IntentHandledResponseEmergencyDialogIds();
  OUTLINED_FUNCTION_9();
  *v14 = v24;
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_60();

  return v30(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.IntentHandledResponseEmergencyDialogIds and conformance StartCallCATsSimple.IntentHandledResponseEmergencyDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.IntentHandledResponseEmergencyDialogIds and conformance StartCallCATsSimple.IntentHandledResponseEmergencyDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.IntentHandledResponseEmergencyDialogIds and conformance StartCallCATsSimple.IntentHandledResponseEmergencyDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.IntentHandledResponseEmergencyDialogIds and conformance StartCallCATsSimple.IntentHandledResponseEmergencyDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.IntentHandledResponseEmergencyDialogIds and conformance StartCallCATsSimple.IntentHandledResponseEmergencyDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.IntentHandledResponseEmergencyDialogIds and conformance StartCallCATsSimple.IntentHandledResponseEmergencyDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.IntentHandledResponseEmergencyDialogIds and conformance StartCallCATsSimple.IntentHandledResponseEmergencyDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.intentHandledResponseWithFaceTimeLink()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(47);

  return v4(v3);
}

BOOL StartCallCATsSimple.IntentHandledResponseWithFaceTimeLinkDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.IntentHandledResponseWithFaceTimeLinkDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.IntentHandledResponseWithFaceTimeLinkDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = StartCallCATsSimple.IntentHandledResponseWithFaceTimeLinkDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t StartCallCATsSimple.intentHandledResponseWithFaceTimeLinkAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type StartCallCATsSimple.IntentHandledResponseWithFaceTimeLinkDialogIds and conformance StartCallCATsSimple.IntentHandledResponseWithFaceTimeLinkDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(47);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.IntentHandledResponseWithFaceTimeLinkDialogIds and conformance StartCallCATsSimple.IntentHandledResponseWithFaceTimeLinkDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.IntentHandledResponseWithFaceTimeLinkDialogIds and conformance StartCallCATsSimple.IntentHandledResponseWithFaceTimeLinkDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.IntentHandledResponseWithFaceTimeLinkDialogIds and conformance StartCallCATsSimple.IntentHandledResponseWithFaceTimeLinkDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.IntentHandledResponseWithFaceTimeLinkDialogIds and conformance StartCallCATsSimple.IntentHandledResponseWithFaceTimeLinkDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.IntentHandledResponseWithFaceTimeLinkDialogIds and conformance StartCallCATsSimple.IntentHandledResponseWithFaceTimeLinkDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.IntentHandledResponseWithFaceTimeLinkDialogIds and conformance StartCallCATsSimple.IntentHandledResponseWithFaceTimeLinkDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.IntentHandledResponseWithFaceTimeLinkDialogIds and conformance StartCallCATsSimple.IntentHandledResponseWithFaceTimeLinkDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.internalConversionError(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.internalConversionError(device:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v5 = OUTLINED_FUNCTION_51(v4);
  v6 = OUTLINED_FUNCTION_3_0(v5, xmmword_424FD0);
  if (v2)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v6);
  OUTLINED_FUNCTION_7_82();

  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_117(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_30(v8);
  OUTLINED_FUNCTION_43_4(33);
  OUTLINED_FUNCTION_65_1();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

BOOL StartCallCATsSimple.InternalConversionErrorDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.InternalConversionErrorDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.InternalConversionErrorDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = StartCallCATsSimple.InternalConversionErrorDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t StartCallCATsSimple.internalConversionErrorAsLabels(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.internalConversionErrorAsLabels(device:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v5 = OUTLINED_FUNCTION_51(v4);
  v6 = OUTLINED_FUNCTION_3_0(v5, xmmword_424FD0);
  if (v2)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v6);
  OUTLINED_FUNCTION_7_82();

  v7 = swift_task_alloc();
  OUTLINED_FUNCTION_42_0(v7);
  lazy protocol witness table accessor for type StartCallCATsSimple.InternalConversionErrorDialogIds and conformance StartCallCATsSimple.InternalConversionErrorDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v8;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_70_10(33);
  OUTLINED_FUNCTION_65_1();

  return v14(v9, v10, v11, v12, v13, v14, v15, v16);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.InternalConversionErrorDialogIds and conformance StartCallCATsSimple.InternalConversionErrorDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.InternalConversionErrorDialogIds and conformance StartCallCATsSimple.InternalConversionErrorDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.InternalConversionErrorDialogIds and conformance StartCallCATsSimple.InternalConversionErrorDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.InternalConversionErrorDialogIds and conformance StartCallCATsSimple.InternalConversionErrorDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.InternalConversionErrorDialogIds and conformance StartCallCATsSimple.InternalConversionErrorDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.InternalConversionErrorDialogIds and conformance StartCallCATsSimple.InternalConversionErrorDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.InternalConversionErrorDialogIds and conformance StartCallCATsSimple.InternalConversionErrorDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.joinFaceTimeMessage()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(29);

  return v4(v3);
}

BOOL StartCallCATsSimple.JoinFaceTimeMessageDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.JoinFaceTimeMessageDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.JoinFaceTimeMessageDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = StartCallCATsSimple.JoinFaceTimeMessageDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t StartCallCATsSimple.joinFaceTimeMessageAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type StartCallCATsSimple.JoinFaceTimeMessageDialogIds and conformance StartCallCATsSimple.JoinFaceTimeMessageDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(29);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.JoinFaceTimeMessageDialogIds and conformance StartCallCATsSimple.JoinFaceTimeMessageDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.JoinFaceTimeMessageDialogIds and conformance StartCallCATsSimple.JoinFaceTimeMessageDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.JoinFaceTimeMessageDialogIds and conformance StartCallCATsSimple.JoinFaceTimeMessageDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.JoinFaceTimeMessageDialogIds and conformance StartCallCATsSimple.JoinFaceTimeMessageDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.JoinFaceTimeMessageDialogIds and conformance StartCallCATsSimple.JoinFaceTimeMessageDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.JoinFaceTimeMessageDialogIds and conformance StartCallCATsSimple.JoinFaceTimeMessageDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.JoinFaceTimeMessageDialogIds and conformance StartCallCATsSimple.JoinFaceTimeMessageDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.promptForCallCapability()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(33);

  return v4(v3);
}

BOOL StartCallCATsSimple.PromptForCallCapabilityDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.PromptForCallCapabilityDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.PromptForCallCapabilityDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = StartCallCATsSimple.PromptForCallCapabilityDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t StartCallCATsSimple.promptForCallCapabilityAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type StartCallCATsSimple.PromptForCallCapabilityDialogIds and conformance StartCallCATsSimple.PromptForCallCapabilityDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(33);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.PromptForCallCapabilityDialogIds and conformance StartCallCATsSimple.PromptForCallCapabilityDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.PromptForCallCapabilityDialogIds and conformance StartCallCATsSimple.PromptForCallCapabilityDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.PromptForCallCapabilityDialogIds and conformance StartCallCATsSimple.PromptForCallCapabilityDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.PromptForCallCapabilityDialogIds and conformance StartCallCATsSimple.PromptForCallCapabilityDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.PromptForCallCapabilityDialogIds and conformance StartCallCATsSimple.PromptForCallCapabilityDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.PromptForCallCapabilityDialogIds and conformance StartCallCATsSimple.PromptForCallCapabilityDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.PromptForCallCapabilityDialogIds and conformance StartCallCATsSimple.PromptForCallCapabilityDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.promptForContacts(appName:isFaceTime:rePromptCount:startingOver:isUnsupportedFollowUp:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_131_4(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v7);
  *(v0 + 40) = OUTLINED_FUNCTION_45();
  v8 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_75_6();
  v21 = v2;
  OUTLINED_FUNCTION_23_0();
  v3 = v0[5];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_187(v4);
  v6 = OUTLINED_FUNCTION_46_15(v5);
  v7 = OUTLINED_FUNCTION_0_4(v6, xmmword_42BF20);
  OUTLINED_FUNCTION_54_2(v7, v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_19_42(v9) == 1)
  {
    outlined destroy of SpeakableString?(v3, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v10();
  }

  OUTLINED_FUNCTION_47_2();
  *(v1 + 80) = v11;
  *(v1 + 88) = 0xEA0000000000656DLL;
  OUTLINED_FUNCTION_133_4(&type metadata for Bool);
  if (v12)
  {
    v13 = 0;
    *(v1 + 152) = 0;
    *(v1 + 160) = 0;
  }

  else
  {
    v13 = v0[3];
  }

  *(v1 + 144) = v13;
  OUTLINED_FUNCTION_91_7();
  OUTLINED_FUNCTION_39_0();
  *(v1 + 216) = v14;
  *(v1 + 224) = 0xD000000000000015;
  *(v1 + 232) = v15;
  *(v1 + 264) = v14;
  *(v1 + 240) = v16;
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[7] = v17;
  *v17 = v18;
  OUTLINED_FUNCTION_114_0(v17);
  OUTLINED_FUNCTION_212();

  return v20();
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::PromptForContactsDialogIds_optional __swiftcall StartCallCATsSimple.PromptForContactsDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.PromptForContactsDialogIds.init(rawValue:), v3);
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

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::PromptForContactsDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.PromptForContactsDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StartCallCATsSimple::PromptForContactsDialogIds_optional *a2@<X8>)
{
  result.value = StartCallCATsSimple.PromptForContactsDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t StartCallCATsSimple.promptForContactsAsLabels(appName:isFaceTime:rePromptCount:startingOver:isUnsupportedFollowUp:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_131_4(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v7);
  *(v0 + 40) = OUTLINED_FUNCTION_45();
  v8 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v3 = v0[5];
  v4 = v0[2];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v6 = OUTLINED_FUNCTION_187(v5);
  v7 = OUTLINED_FUNCTION_46_15(v6);
  v8 = OUTLINED_FUNCTION_0_4(v7, xmmword_42BF20);
  OUTLINED_FUNCTION_54_2(v8, v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v10 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_19_42(v10) == 1)
  {
    outlined destroy of SpeakableString?(v3, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v11();
  }

  OUTLINED_FUNCTION_47_2();
  *(v1 + 80) = v12;
  *(v1 + 88) = 0xEA0000000000656DLL;
  OUTLINED_FUNCTION_133_4(&type metadata for Bool);
  if (v13)
  {
    v14 = 0;
    *(v1 + 152) = 0;
    *(v1 + 160) = 0;
  }

  else
  {
    v14 = v0[3];
  }

  *(v1 + 144) = v14;
  OUTLINED_FUNCTION_91_7();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_162_0();
  *(v1 + 216) = v15;
  *(v1 + 224) = v2;
  *(v1 + 232) = v16;
  *(v1 + 264) = v15;
  *(v1 + 240) = v17;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v18 = swift_task_alloc();
  OUTLINED_FUNCTION_66_3(v18);
  lazy protocol witness table accessor for type StartCallCATsSimple.PromptForContactsDialogIds and conformance StartCallCATsSimple.PromptForContactsDialogIds();
  OUTLINED_FUNCTION_9();
  *v4 = v19;
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_65_1();

  return v25(v20, v21, v22, v23, v24, v25, v26, v27);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.PromptForContactsDialogIds and conformance StartCallCATsSimple.PromptForContactsDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.PromptForContactsDialogIds and conformance StartCallCATsSimple.PromptForContactsDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.PromptForContactsDialogIds and conformance StartCallCATsSimple.PromptForContactsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.PromptForContactsDialogIds and conformance StartCallCATsSimple.PromptForContactsDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.PromptForContactsDialogIds and conformance StartCallCATsSimple.PromptForContactsDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.PromptForContactsDialogIds and conformance StartCallCATsSimple.PromptForContactsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.PromptForContactsDialogIds and conformance StartCallCATsSimple.PromptForContactsDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.promptForContactsKnownLabel(requestedHandleLabelEnum:requestedHandle:)()
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

uint64_t StartCallCATsSimple.promptForContactsKnownLabel(requestedHandleLabelEnum:requestedHandle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_101_6();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_45_0(v14);
  v16 = OUTLINED_FUNCTION_46_15(v15);
  *(v16 + 16) = xmmword_424FF0;
  v17 = OUTLINED_FUNCTION_0_8(v16, "requestedHandleLabelEnum");
  OUTLINED_FUNCTION_54_2(v17, v18, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v19 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_19_42(v19) == 1)
  {
    outlined destroy of SpeakableString?(v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v20();
  }

  v21 = OUTLINED_FUNCTION_87_7();
  if (v10)
  {
    v21 = type metadata accessor for DialogPersonHandle();
  }

  else
  {
    *(v13 + 104) = 0;
    *(v13 + 112) = 0;
  }

  OUTLINED_FUNCTION_218_0(v21);
  OUTLINED_FUNCTION_19_11();

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v12 + 56) = v22;
  *v22 = v23;
  OUTLINED_FUNCTION_114_0(v22);
  OUTLINED_FUNCTION_99_4();
  OUTLINED_FUNCTION_65_2();

  return v27(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::PromptForContactsKnownLabelDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.PromptForContactsKnownLabelDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StartCallCATsSimple::PromptForContactsKnownLabelDialogIds_optional *a2@<X8>)
{
  result.value = StartCallCATsSimple.PromptForContactsKnownLabelDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t StartCallCATsSimple.promptForContactsKnownLabelAsLabels(requestedHandleLabelEnum:requestedHandle:)()
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

uint64_t StartCallCATsSimple.promptForContactsKnownLabelAsLabels(requestedHandleLabelEnum:requestedHandle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_101_6();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_45_0(v13);
  v15 = OUTLINED_FUNCTION_46_15(v14);
  *(v15 + 16) = xmmword_424FF0;
  v16 = OUTLINED_FUNCTION_0_8(v15, "requestedHandleLabelEnum");
  OUTLINED_FUNCTION_54_2(v16, v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v18 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_19_42(v18) == 1)
  {
    outlined destroy of SpeakableString?(v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v19();
  }

  v20 = OUTLINED_FUNCTION_87_7();
  if (v10)
  {
    v20 = type metadata accessor for DialogPersonHandle();
  }

  else
  {
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
  }

  OUTLINED_FUNCTION_218_0(v20);
  OUTLINED_FUNCTION_19_11();

  v21 = swift_task_alloc();
  OUTLINED_FUNCTION_66_3(v21);
  lazy protocol witness table accessor for type StartCallCATsSimple.PromptForContactsKnownLabelDialogIds and conformance StartCallCATsSimple.PromptForContactsKnownLabelDialogIds();
  OUTLINED_FUNCTION_9();
  *v10 = v22;
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_37_28();
  OUTLINED_FUNCTION_65_2();

  return v28(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.PromptForContactsKnownLabelDialogIds and conformance StartCallCATsSimple.PromptForContactsKnownLabelDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.PromptForContactsKnownLabelDialogIds and conformance StartCallCATsSimple.PromptForContactsKnownLabelDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.PromptForContactsKnownLabelDialogIds and conformance StartCallCATsSimple.PromptForContactsKnownLabelDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.PromptForContactsKnownLabelDialogIds and conformance StartCallCATsSimple.PromptForContactsKnownLabelDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.PromptForContactsKnownLabelDialogIds and conformance StartCallCATsSimple.PromptForContactsKnownLabelDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.PromptForContactsKnownLabelDialogIds and conformance StartCallCATsSimple.PromptForContactsKnownLabelDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.PromptForContactsKnownLabelDialogIds and conformance StartCallCATsSimple.PromptForContactsKnownLabelDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.promptForDestinationType()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(34);

  return v4(v3);
}

BOOL StartCallCATsSimple.PromptForDestinationTypeDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.PromptForDestinationTypeDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.PromptForDestinationTypeDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = StartCallCATsSimple.PromptForDestinationTypeDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t StartCallCATsSimple.promptForDestinationTypeAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type StartCallCATsSimple.PromptForDestinationTypeDialogIds and conformance StartCallCATsSimple.PromptForDestinationTypeDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(34);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.PromptForDestinationTypeDialogIds and conformance StartCallCATsSimple.PromptForDestinationTypeDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.PromptForDestinationTypeDialogIds and conformance StartCallCATsSimple.PromptForDestinationTypeDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.PromptForDestinationTypeDialogIds and conformance StartCallCATsSimple.PromptForDestinationTypeDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.PromptForDestinationTypeDialogIds and conformance StartCallCATsSimple.PromptForDestinationTypeDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.PromptForDestinationTypeDialogIds and conformance StartCallCATsSimple.PromptForDestinationTypeDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.PromptForDestinationTypeDialogIds and conformance StartCallCATsSimple.PromptForDestinationTypeDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.PromptForDestinationTypeDialogIds and conformance StartCallCATsSimple.PromptForDestinationTypeDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.promptForPreferredCallProvider()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(40);

  return v4(v3);
}

BOOL StartCallCATsSimple.PromptForPreferredCallProviderDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.PromptForPreferredCallProviderDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.PromptForPreferredCallProviderDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = StartCallCATsSimple.PromptForPreferredCallProviderDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t StartCallCATsSimple.promptForPreferredCallProviderAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type StartCallCATsSimple.PromptForPreferredCallProviderDialogIds and conformance StartCallCATsSimple.PromptForPreferredCallProviderDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(40);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.PromptForPreferredCallProviderDialogIds and conformance StartCallCATsSimple.PromptForPreferredCallProviderDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.PromptForPreferredCallProviderDialogIds and conformance StartCallCATsSimple.PromptForPreferredCallProviderDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.PromptForPreferredCallProviderDialogIds and conformance StartCallCATsSimple.PromptForPreferredCallProviderDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.PromptForPreferredCallProviderDialogIds and conformance StartCallCATsSimple.PromptForPreferredCallProviderDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.PromptForPreferredCallProviderDialogIds and conformance StartCallCATsSimple.PromptForPreferredCallProviderDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.PromptForPreferredCallProviderDialogIds and conformance StartCallCATsSimple.PromptForPreferredCallProviderDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.PromptForPreferredCallProviderDialogIds and conformance StartCallCATsSimple.PromptForPreferredCallProviderDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.relationship(relationship:)()
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
  v5 = OUTLINED_FUNCTION_42_1(v4, xmmword_424FD0);
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

  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_61_4(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_19_2(v11);
  v13 = OUTLINED_FUNCTION_38_1(22);

  return v14(v13);
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::RelationshipDialogIds_optional __swiftcall StartCallCATsSimple.RelationshipDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  _findStringSwitchCaseWithCache(cases:string:cache:)();
  OUTLINED_FUNCTION_33_2();
  if (v1 >= 0x59)
  {
    return 89;
  }

  else
  {
    return v1;
  }
}

void StartCallCATsSimple.RelationshipDialogIds.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
    case 65:
    case 66:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
      OUTLINED_FUNCTION_151_1();
      break;
    default:
      return;
  }
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::RelationshipDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.RelationshipDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StartCallCATsSimple::RelationshipDialogIds_optional *a2@<X8>)
{
  result.value = StartCallCATsSimple.RelationshipDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance StartCallCATsSimple.RelationshipDialogIds()
{
  v1 = OUTLINED_FUNCTION_40_2();
  StartCallCATsSimple.RelationshipDialogIds.rawValue.getter(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t StartCallCATsSimple.relationshipAsLabels(relationship:)()
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
  v16 = v2;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_60_9();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v5 = OUTLINED_FUNCTION_50_0(v4);
  v6 = OUTLINED_FUNCTION_42_1(v5, xmmword_424FD0);
  OUTLINED_FUNCTION_54_2(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v8);
  if (v9)
  {
    outlined destroy of SpeakableString?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v10();
  }

  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v11 = swift_task_alloc();
  OUTLINED_FUNCTION_27_20(v11);
  lazy protocol witness table accessor for type StartCallCATsSimple.RelationshipDialogIds and conformance StartCallCATsSimple.RelationshipDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v12;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_19_4();
  v13 = OUTLINED_FUNCTION_29_9(22);

  return v14(v13);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.RelationshipDialogIds and conformance StartCallCATsSimple.RelationshipDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.RelationshipDialogIds and conformance StartCallCATsSimple.RelationshipDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.RelationshipDialogIds and conformance StartCallCATsSimple.RelationshipDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.RelationshipDialogIds and conformance StartCallCATsSimple.RelationshipDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.RelationshipDialogIds and conformance StartCallCATsSimple.RelationshipDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.RelationshipDialogIds and conformance StartCallCATsSimple.RelationshipDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.RelationshipDialogIds and conformance StartCallCATsSimple.RelationshipDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.unsupportedCallCapability()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedNoActiveCall();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(35);

  return v4(v3);
}

BOOL StartCallCATsSimple.UnsupportedCallCapabilityDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.UnsupportedCallCapabilityDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.UnsupportedCallCapabilityDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = StartCallCATsSimple.UnsupportedCallCapabilityDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t StartCallCATsSimple.unsupportedCallCapabilityAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedCallCapabilityDialogIds and conformance StartCallCATsSimple.UnsupportedCallCapabilityDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(35);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedCallCapabilityDialogIds and conformance StartCallCATsSimple.UnsupportedCallCapabilityDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedCallCapabilityDialogIds and conformance StartCallCATsSimple.UnsupportedCallCapabilityDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedCallCapabilityDialogIds and conformance StartCallCATsSimple.UnsupportedCallCapabilityDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedCallCapabilityDialogIds and conformance StartCallCATsSimple.UnsupportedCallCapabilityDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedCallCapabilityDialogIds and conformance StartCallCATsSimple.UnsupportedCallCapabilityDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedCallCapabilityDialogIds and conformance StartCallCATsSimple.UnsupportedCallCapabilityDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedCallCapabilityDialogIds and conformance StartCallCATsSimple.UnsupportedCallCapabilityDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.unsupportedCallCapabilityCameraNotAccessible(appName:)()
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

  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_61_4(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_19_2(v11);
  v13 = OUTLINED_FUNCTION_38_1(54);

  return v14(v13);
}

BOOL StartCallCATsSimple.UnsupportedCallCapabilityCameraNotAccessibleDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.UnsupportedCallCapabilityCameraNotAccessibleDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.UnsupportedCallCapabilityCameraNotAccessibleDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = StartCallCATsSimple.UnsupportedCallCapabilityCameraNotAccessibleDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t StartCallCATsSimple.unsupportedCallCapabilityCameraNotAccessibleAsLabels(appName:)()
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
  v16 = v2;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_60_9();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v5 = OUTLINED_FUNCTION_50_0(v4);
  v6 = OUTLINED_FUNCTION_0_4(v5, xmmword_424FD0);
  OUTLINED_FUNCTION_54_2(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v8);
  if (v9)
  {
    outlined destroy of SpeakableString?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v10();
  }

  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v11 = swift_task_alloc();
  OUTLINED_FUNCTION_27_20(v11);
  lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedCallCapabilityCameraNotAccessibleDialogIds and conformance StartCallCATsSimple.UnsupportedCallCapabilityCameraNotAccessibleDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v12;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_19_4();
  v13 = OUTLINED_FUNCTION_29_9(54);

  return v14(v13);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedCallCapabilityCameraNotAccessibleDialogIds and conformance StartCallCATsSimple.UnsupportedCallCapabilityCameraNotAccessibleDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedCallCapabilityCameraNotAccessibleDialogIds and conformance StartCallCATsSimple.UnsupportedCallCapabilityCameraNotAccessibleDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedCallCapabilityCameraNotAccessibleDialogIds and conformance StartCallCATsSimple.UnsupportedCallCapabilityCameraNotAccessibleDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedCallCapabilityCameraNotAccessibleDialogIds and conformance StartCallCATsSimple.UnsupportedCallCapabilityCameraNotAccessibleDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedCallCapabilityCameraNotAccessibleDialogIds and conformance StartCallCATsSimple.UnsupportedCallCapabilityCameraNotAccessibleDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedCallCapabilityCameraNotAccessibleDialogIds and conformance StartCallCATsSimple.UnsupportedCallCapabilityCameraNotAccessibleDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedCallCapabilityCameraNotAccessibleDialogIds and conformance StartCallCATsSimple.UnsupportedCallCapabilityCameraNotAccessibleDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.unsupportedCallCapabilityMicrophoneNotAccessible(appName:)()
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

  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_61_4(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_19_2(v11);
  v13 = OUTLINED_FUNCTION_38_1(58);

  return v14(v13);
}

BOOL StartCallCATsSimple.UnsupportedCallCapabilityMicrophoneNotAccessibleDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.UnsupportedCallCapabilityMicrophoneNotAccessibleDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.UnsupportedCallCapabilityMicrophoneNotAccessibleDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = StartCallCATsSimple.UnsupportedCallCapabilityMicrophoneNotAccessibleDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t StartCallCATsSimple.unsupportedCallCapabilityMicrophoneNotAccessibleAsLabels(appName:)()
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
  v16 = v2;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_60_9();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v5 = OUTLINED_FUNCTION_50_0(v4);
  v6 = OUTLINED_FUNCTION_0_4(v5, xmmword_424FD0);
  OUTLINED_FUNCTION_54_2(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v8);
  if (v9)
  {
    outlined destroy of SpeakableString?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v10();
  }

  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v11 = swift_task_alloc();
  OUTLINED_FUNCTION_27_20(v11);
  lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedCallCapabilityMicrophoneNotAccessibleDialogIds and conformance StartCallCATsSimple.UnsupportedCallCapabilityMicrophoneNotAccessibleDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v12;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_19_4();
  v13 = OUTLINED_FUNCTION_29_9(58);

  return v14(v13);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedCallCapabilityMicrophoneNotAccessibleDialogIds and conformance StartCallCATsSimple.UnsupportedCallCapabilityMicrophoneNotAccessibleDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedCallCapabilityMicrophoneNotAccessibleDialogIds and conformance StartCallCATsSimple.UnsupportedCallCapabilityMicrophoneNotAccessibleDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedCallCapabilityMicrophoneNotAccessibleDialogIds and conformance StartCallCATsSimple.UnsupportedCallCapabilityMicrophoneNotAccessibleDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedCallCapabilityMicrophoneNotAccessibleDialogIds and conformance StartCallCATsSimple.UnsupportedCallCapabilityMicrophoneNotAccessibleDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedCallCapabilityMicrophoneNotAccessibleDialogIds and conformance StartCallCATsSimple.UnsupportedCallCapabilityMicrophoneNotAccessibleDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedCallCapabilityMicrophoneNotAccessibleDialogIds and conformance StartCallCATsSimple.UnsupportedCallCapabilityMicrophoneNotAccessibleDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedCallCapabilityMicrophoneNotAccessibleDialogIds and conformance StartCallCATsSimple.UnsupportedCallCapabilityMicrophoneNotAccessibleDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.unsupportedCallCapabilityVideoCallUnsupported()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(55);

  return v4(v3);
}

BOOL StartCallCATsSimple.UnsupportedCallCapabilityVideoCallUnsupportedDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.UnsupportedCallCapabilityVideoCallUnsupportedDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.UnsupportedCallCapabilityVideoCallUnsupportedDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = StartCallCATsSimple.UnsupportedCallCapabilityVideoCallUnsupportedDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t StartCallCATsSimple.unsupportedCallCapabilityVideoCallUnsupportedAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedCallCapabilityVideoCallUnsupportedDialogIds and conformance StartCallCATsSimple.UnsupportedCallCapabilityVideoCallUnsupportedDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(55);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedCallCapabilityVideoCallUnsupportedDialogIds and conformance StartCallCATsSimple.UnsupportedCallCapabilityVideoCallUnsupportedDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedCallCapabilityVideoCallUnsupportedDialogIds and conformance StartCallCATsSimple.UnsupportedCallCapabilityVideoCallUnsupportedDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedCallCapabilityVideoCallUnsupportedDialogIds and conformance StartCallCATsSimple.UnsupportedCallCapabilityVideoCallUnsupportedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedCallCapabilityVideoCallUnsupportedDialogIds and conformance StartCallCATsSimple.UnsupportedCallCapabilityVideoCallUnsupportedDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedCallCapabilityVideoCallUnsupportedDialogIds and conformance StartCallCATsSimple.UnsupportedCallCapabilityVideoCallUnsupportedDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedCallCapabilityVideoCallUnsupportedDialogIds and conformance StartCallCATsSimple.UnsupportedCallCapabilityVideoCallUnsupportedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedCallCapabilityVideoCallUnsupportedDialogIds and conformance StartCallCATsSimple.UnsupportedCallCapabilityVideoCallUnsupportedDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.unsupportedContactsForeignEmergencyDisambiguation()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(59);

  return v4(v3);
}

BOOL StartCallCATsSimple.UnsupportedContactsForeignEmergencyDisambiguationDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.UnsupportedContactsForeignEmergencyDisambiguationDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.UnsupportedContactsForeignEmergencyDisambiguationDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = StartCallCATsSimple.UnsupportedContactsForeignEmergencyDisambiguationDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t StartCallCATsSimple.unsupportedContactsForeignEmergencyDisambiguationAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedContactsForeignEmergencyDisambiguationDialogIds and conformance StartCallCATsSimple.UnsupportedContactsForeignEmergencyDisambiguationDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(59);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedContactsForeignEmergencyDisambiguationDialogIds and conformance StartCallCATsSimple.UnsupportedContactsForeignEmergencyDisambiguationDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsForeignEmergencyDisambiguationDialogIds and conformance StartCallCATsSimple.UnsupportedContactsForeignEmergencyDisambiguationDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsForeignEmergencyDisambiguationDialogIds and conformance StartCallCATsSimple.UnsupportedContactsForeignEmergencyDisambiguationDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsForeignEmergencyDisambiguationDialogIds and conformance StartCallCATsSimple.UnsupportedContactsForeignEmergencyDisambiguationDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsForeignEmergencyDisambiguationDialogIds and conformance StartCallCATsSimple.UnsupportedContactsForeignEmergencyDisambiguationDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsForeignEmergencyDisambiguationDialogIds and conformance StartCallCATsSimple.UnsupportedContactsForeignEmergencyDisambiguationDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsForeignEmergencyDisambiguationDialogIds and conformance StartCallCATsSimple.UnsupportedContactsForeignEmergencyDisambiguationDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.unsupportedContactsInvalidHandle(contacts:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.unsupportedContactsInvalidHandle(contacts:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  *(OUTLINED_FUNCTION_51(v4) + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_51_28();
  v7 = OUTLINED_FUNCTION_73_9(v6, v5 & 0xFFFFFFFFFFFFLL | 0x7374000000000000);
  if (v2)
  {
    v7 = type metadata accessor for PhonePersonList();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v7);
  OUTLINED_FUNCTION_7_82();

  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_117(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_30(v9);
  OUTLINED_FUNCTION_43_4(42);
  OUTLINED_FUNCTION_65_1();

  return v14(v11, v12, v13, v14, v15, v16, v17, v18);
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::UnsupportedContactsInvalidHandleDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.UnsupportedContactsInvalidHandleDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StartCallCATsSimple::UnsupportedContactsInvalidHandleDialogIds_optional *a2@<X8>)
{
  result.value = StartCallCATsSimple.UnsupportedContactsInvalidHandleDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance StartCallCATsSimple.UnsupportedContactsInvalidHandleDialogIds()
{
  OUTLINED_FUNCTION_40_2();
  StartCallCATsSimple.UnsupportedContactsInvalidHandleDialogIds.rawValue.getter();
  *v0 = v1;
  v0[1] = v2;
}

uint64_t StartCallCATsSimple.unsupportedContactsInvalidHandleAsLabels(contacts:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.unsupportedContactsInvalidHandleAsLabels(contacts:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  *(OUTLINED_FUNCTION_51(v4) + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_51_28();
  v7 = OUTLINED_FUNCTION_73_9(v6, v5 & 0xFFFFFFFFFFFFLL | 0x7374000000000000);
  if (v2)
  {
    v7 = type metadata accessor for PhonePersonList();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v7);
  OUTLINED_FUNCTION_7_82();

  v8 = swift_task_alloc();
  OUTLINED_FUNCTION_42_0(v8);
  lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedContactsInvalidHandleDialogIds and conformance StartCallCATsSimple.UnsupportedContactsInvalidHandleDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v9;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_70_10(42);
  OUTLINED_FUNCTION_65_1();

  return v15(v10, v11, v12, v13, v14, v15, v16, v17);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedContactsInvalidHandleDialogIds and conformance StartCallCATsSimple.UnsupportedContactsInvalidHandleDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsInvalidHandleDialogIds and conformance StartCallCATsSimple.UnsupportedContactsInvalidHandleDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsInvalidHandleDialogIds and conformance StartCallCATsSimple.UnsupportedContactsInvalidHandleDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsInvalidHandleDialogIds and conformance StartCallCATsSimple.UnsupportedContactsInvalidHandleDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsInvalidHandleDialogIds and conformance StartCallCATsSimple.UnsupportedContactsInvalidHandleDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsInvalidHandleDialogIds and conformance StartCallCATsSimple.UnsupportedContactsInvalidHandleDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsInvalidHandleDialogIds and conformance StartCallCATsSimple.UnsupportedContactsInvalidHandleDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.unsupportedContactsMultipleContactsUnsupported()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(56);

  return v4(v3);
}

BOOL StartCallCATsSimple.UnsupportedContactsMultipleContactsUnsupportedDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.UnsupportedContactsMultipleContactsUnsupportedDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.UnsupportedContactsMultipleContactsUnsupportedDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = StartCallCATsSimple.UnsupportedContactsMultipleContactsUnsupportedDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t StartCallCATsSimple.unsupportedContactsMultipleContactsUnsupportedAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedContactsMultipleContactsUnsupportedDialogIds and conformance StartCallCATsSimple.UnsupportedContactsMultipleContactsUnsupportedDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(56);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedContactsMultipleContactsUnsupportedDialogIds and conformance StartCallCATsSimple.UnsupportedContactsMultipleContactsUnsupportedDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsMultipleContactsUnsupportedDialogIds and conformance StartCallCATsSimple.UnsupportedContactsMultipleContactsUnsupportedDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsMultipleContactsUnsupportedDialogIds and conformance StartCallCATsSimple.UnsupportedContactsMultipleContactsUnsupportedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsMultipleContactsUnsupportedDialogIds and conformance StartCallCATsSimple.UnsupportedContactsMultipleContactsUnsupportedDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsMultipleContactsUnsupportedDialogIds and conformance StartCallCATsSimple.UnsupportedContactsMultipleContactsUnsupportedDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsMultipleContactsUnsupportedDialogIds and conformance StartCallCATsSimple.UnsupportedContactsMultipleContactsUnsupportedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsMultipleContactsUnsupportedDialogIds and conformance StartCallCATsSimple.UnsupportedContactsMultipleContactsUnsupportedDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.unsupportedContactsNoCallHistoryForRedial()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(51);

  return v4(v3);
}

BOOL StartCallCATsSimple.UnsupportedContactsNoCallHistoryForRedialDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.UnsupportedContactsNoCallHistoryForRedialDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.UnsupportedContactsNoCallHistoryForRedialDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = StartCallCATsSimple.UnsupportedContactsNoCallHistoryForRedialDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t StartCallCATsSimple.unsupportedContactsNoCallHistoryForRedialAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedContactsNoCallHistoryForRedialDialogIds and conformance StartCallCATsSimple.UnsupportedContactsNoCallHistoryForRedialDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(51);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedContactsNoCallHistoryForRedialDialogIds and conformance StartCallCATsSimple.UnsupportedContactsNoCallHistoryForRedialDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsNoCallHistoryForRedialDialogIds and conformance StartCallCATsSimple.UnsupportedContactsNoCallHistoryForRedialDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsNoCallHistoryForRedialDialogIds and conformance StartCallCATsSimple.UnsupportedContactsNoCallHistoryForRedialDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsNoCallHistoryForRedialDialogIds and conformance StartCallCATsSimple.UnsupportedContactsNoCallHistoryForRedialDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsNoCallHistoryForRedialDialogIds and conformance StartCallCATsSimple.UnsupportedContactsNoCallHistoryForRedialDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsNoCallHistoryForRedialDialogIds and conformance StartCallCATsSimple.UnsupportedContactsNoCallHistoryForRedialDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsNoCallHistoryForRedialDialogIds and conformance StartCallCATsSimple.UnsupportedContactsNoCallHistoryForRedialDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.unsupportedContactsNoContactFound(contact:appName:isFirstPartyApp:)()
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
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = v0[2];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_47(v3);
  *(OUTLINED_FUNCTION_153(v4) + 16) = xmmword_426980;
  OUTLINED_FUNCTION_51_28();
  OUTLINED_FUNCTION_73_9(v6, v5 & 0xFFFFFFFFFFFFLL | 0x74000000000000);
  if (v2)
  {
    type metadata accessor for DialogPerson();
  }

  else
  {
    v1[7] = 0;
    v1[8] = 0;
  }

  v7 = v0[5];
  OUTLINED_FUNCTION_127_3();
  OUTLINED_FUNCTION_21_40();
  v1[9] = v8;
  v1[10] = v9;
  v1[11] = 0xE700000000000000;
  OUTLINED_FUNCTION_191(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v10);
  v11 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_19_42(v11);
  OUTLINED_FUNCTION_225_0();
  if (v12)
  {

    outlined destroy of SpeakableString?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_160_2();
  }

  else
  {
    OUTLINED_FUNCTION_201();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v13();
  }

  OUTLINED_FUNCTION_103_4();
  OUTLINED_FUNCTION_224_0(v14);
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v15 = swift_task_alloc();
  v0[7] = v15;
  *v15 = v0;
  OUTLINED_FUNCTION_114_0(v15);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_131_3(43);
  OUTLINED_FUNCTION_65_1();

  return v19(v16, v17, v18, v19, v20, v21, v22, v23);
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::UnsupportedContactsNoContactFoundDialogIds_optional __swiftcall StartCallCATsSimple.UnsupportedContactsNoContactFoundDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.UnsupportedContactsNoContactFoundDialogIds.init(rawValue:), v3);
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

void StartCallCATsSimple.UnsupportedContactsNoContactFoundDialogIds.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 2:
    case 3:
      OUTLINED_FUNCTION_151_1();
      break;
    default:
      return;
  }
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::UnsupportedContactsNoContactFoundDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.UnsupportedContactsNoContactFoundDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StartCallCATsSimple::UnsupportedContactsNoContactFoundDialogIds_optional *a2@<X8>)
{
  result.value = StartCallCATsSimple.UnsupportedContactsNoContactFoundDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance StartCallCATsSimple.UnsupportedContactsNoContactFoundDialogIds()
{
  v1 = OUTLINED_FUNCTION_40_2();
  StartCallCATsSimple.UnsupportedContactsNoContactFoundDialogIds.rawValue.getter(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t StartCallCATsSimple.unsupportedContactsNoContactFoundAsLabels(contact:appName:isFirstPartyApp:)()
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
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_47(v4);
  *(OUTLINED_FUNCTION_153(v5) + 16) = xmmword_426980;
  OUTLINED_FUNCTION_51_28();
  OUTLINED_FUNCTION_73_9(v7, v6 & 0xFFFFFFFFFFFFLL | 0x74000000000000);
  if (v3)
  {
    type metadata accessor for DialogPerson();
  }

  else
  {
    v2[7] = 0;
    v2[8] = 0;
  }

  v8 = *(v1 + 40);
  OUTLINED_FUNCTION_127_3();
  OUTLINED_FUNCTION_21_40();
  v2[9] = v9;
  v2[10] = v10;
  v2[11] = 0xE700000000000000;
  OUTLINED_FUNCTION_191(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v11);
  v12 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_19_42(v12);
  OUTLINED_FUNCTION_225_0();
  if (v13)
  {

    outlined destroy of SpeakableString?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_160_2();
  }

  else
  {
    OUTLINED_FUNCTION_201();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v14();
  }

  OUTLINED_FUNCTION_103_4();
  OUTLINED_FUNCTION_224_0(v15);
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v16 = swift_task_alloc();
  OUTLINED_FUNCTION_66_3(v16);
  lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedContactsNoContactFoundDialogIds and conformance StartCallCATsSimple.UnsupportedContactsNoContactFoundDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v17;
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_131_3(43);
  OUTLINED_FUNCTION_65_1();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedContactsNoContactFoundDialogIds and conformance StartCallCATsSimple.UnsupportedContactsNoContactFoundDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsNoContactFoundDialogIds and conformance StartCallCATsSimple.UnsupportedContactsNoContactFoundDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsNoContactFoundDialogIds and conformance StartCallCATsSimple.UnsupportedContactsNoContactFoundDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsNoContactFoundDialogIds and conformance StartCallCATsSimple.UnsupportedContactsNoContactFoundDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsNoContactFoundDialogIds and conformance StartCallCATsSimple.UnsupportedContactsNoContactFoundDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsNoContactFoundDialogIds and conformance StartCallCATsSimple.UnsupportedContactsNoContactFoundDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsNoContactFoundDialogIds and conformance StartCallCATsSimple.UnsupportedContactsNoContactFoundDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.unsupportedContactsNoContactFoundUserUnknown()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(54);

  return v4(v3);
}

BOOL StartCallCATsSimple.UnsupportedContactsNoContactFoundUserUnknownDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.UnsupportedContactsNoContactFoundUserUnknownDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.UnsupportedContactsNoContactFoundUserUnknownDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = StartCallCATsSimple.UnsupportedContactsNoContactFoundUserUnknownDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t StartCallCATsSimple.unsupportedContactsNoContactFoundUserUnknownAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedContactsNoContactFoundUserUnknownDialogIds and conformance StartCallCATsSimple.UnsupportedContactsNoContactFoundUserUnknownDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(54);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedContactsNoContactFoundUserUnknownDialogIds and conformance StartCallCATsSimple.UnsupportedContactsNoContactFoundUserUnknownDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsNoContactFoundUserUnknownDialogIds and conformance StartCallCATsSimple.UnsupportedContactsNoContactFoundUserUnknownDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsNoContactFoundUserUnknownDialogIds and conformance StartCallCATsSimple.UnsupportedContactsNoContactFoundUserUnknownDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsNoContactFoundUserUnknownDialogIds and conformance StartCallCATsSimple.UnsupportedContactsNoContactFoundUserUnknownDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsNoContactFoundUserUnknownDialogIds and conformance StartCallCATsSimple.UnsupportedContactsNoContactFoundUserUnknownDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsNoContactFoundUserUnknownDialogIds and conformance StartCallCATsSimple.UnsupportedContactsNoContactFoundUserUnknownDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsNoContactFoundUserUnknownDialogIds and conformance StartCallCATsSimple.UnsupportedContactsNoContactFoundUserUnknownDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.unsupportedContactsNoHandleForLabel(intent:preferredCallProvider:unsupportedPerson:unsupportedPersonHandleLabel:unsupportedHandle:)()
{
  OUTLINED_FUNCTION_15();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v7);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t StartCallCATsSimple.unsupportedContactsNoHandleForLabel(intent:preferredCallProvider:unsupportedPerson:unsupportedPersonHandleLabel:unsupportedHandle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = v11[2];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_187(v13);
  v11[10] = v14;
  OUTLINED_FUNCTION_12_6(v14, xmmword_42BF20);
  if (v12)
  {
    type metadata accessor for PhoneStartCallIntent(0);
  }

  else
  {
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
  }

  OUTLINED_FUNCTION_127_3();
  OUTLINED_FUNCTION_39_0();
  *(v14 + 72) = v15;
  *(v14 + 80) = 0xD000000000000015;
  *(v14 + 88) = v16;
  OUTLINED_FUNCTION_191(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v17);
  v18 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_58(v18);
  v19 = v11[9];
  OUTLINED_FUNCTION_225_0();
  if (v20)
  {

    outlined destroy of SpeakableString?(v19, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_160_2();
  }

  else
  {
    OUTLINED_FUNCTION_201();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v21();
  }

  v22 = v11[4];
  OUTLINED_FUNCTION_27_2();
  *(v14 + 128) = 0xD000000000000011;
  *(v14 + 136) = v23;
  if (v22)
  {
    type metadata accessor for DialogPerson();
  }

  else
  {
    *(v14 + 152) = 0;
    *(v14 + 160) = 0;
  }

  v24 = v11[8];
  *(v14 + 144) = v22;
  OUTLINED_FUNCTION_39_0();
  *(v14 + 168) = v25;
  *(v14 + 176) = 0xD00000000000001CLL;
  *(v14 + 184) = v26;
  OUTLINED_FUNCTION_191(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v27);
  OUTLINED_FUNCTION_169_1();
  if (v20)
  {

    outlined destroy of SpeakableString?(v24, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v14 + 192) = 0u;
    *(v14 + 208) = 0u;
  }

  else
  {
    *(v14 + 216) = v10;
    __swift_allocate_boxed_opaque_existential_1((v14 + 192));
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v28();
  }

  v29 = v11[6];
  OUTLINED_FUNCTION_27_2();
  *(v14 + 224) = 0xD000000000000011;
  *(v14 + 232) = v30;
  v31 = 0;
  if (v29)
  {
    v31 = type metadata accessor for DialogPersonHandle();
  }

  else
  {
    *(v14 + 248) = 0;
    *(v14 + 256) = 0;
  }

  *(v14 + 240) = v29;
  *(v14 + 264) = v31;
  OUTLINED_FUNCTION_19_11();

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v11[11] = v32;
  *v32 = v33;
  v32[1] = StartCallCATs.unsupportedContactsNoHandleForLabel(intent:preferredCallProvider:unsupportedPerson:unsupportedPersonHandleLabel:unsupportedHandle:);
  OUTLINED_FUNCTION_65_2();

  return v37(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10);
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::UnsupportedContactsNoHandleForLabelDialogIds_optional __swiftcall StartCallCATsSimple.UnsupportedContactsNoHandleForLabelDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.UnsupportedContactsNoHandleForLabelDialogIds.init(rawValue:), v3);
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

uint64_t StartCallCATsSimple.UnsupportedContactsNoHandleForLabelDialogIds.rawValue.getter(char a1)
{
  result = 0x6464416C69616D45;
  switch(a1)
  {
    case 1:
      result = 0x6E6F437974706D45;
      break;
    case 2:
      result = OUTLINED_FUNCTION_136_6(0x6547u);
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x6D754E656E6F6850;
      break;
    case 5:
      result = 0x6F43656C676E6953;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::UnsupportedContactsNoHandleForLabelDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.UnsupportedContactsNoHandleForLabelDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StartCallCATsSimple::UnsupportedContactsNoHandleForLabelDialogIds_optional *a2@<X8>)
{
  result.value = StartCallCATsSimple.UnsupportedContactsNoHandleForLabelDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance StartCallCATsSimple.UnsupportedContactsNoHandleForLabelDialogIds()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = StartCallCATsSimple.UnsupportedContactsNoHandleForLabelDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t StartCallCATsSimple.unsupportedContactsNoHandleForLabelAsLabels(intent:preferredCallProvider:unsupportedPerson:unsupportedPersonHandleLabel:unsupportedHandle:)()
{
  OUTLINED_FUNCTION_15();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v7);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v8, v9, v10);
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
  *(v3 + 96) = v0;

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

uint64_t StartCallCATsSimple.unsupportedContactsNoHandleForLabelAsLabels(intent:preferredCallProvider:unsupportedPerson:unsupportedPersonHandleLabel:unsupportedHandle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = v11[2];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_187(v13);
  v11[10] = v14;
  OUTLINED_FUNCTION_12_6(v14, xmmword_42BF20);
  if (v12)
  {
    type metadata accessor for PhoneStartCallIntent(0);
  }

  else
  {
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
  }

  OUTLINED_FUNCTION_127_3();
  OUTLINED_FUNCTION_39_0();
  *(v14 + 72) = v15;
  *(v14 + 80) = 0xD000000000000015;
  *(v14 + 88) = v16;
  OUTLINED_FUNCTION_191(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v17);
  v18 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_58(v18);
  v19 = v11[9];
  OUTLINED_FUNCTION_225_0();
  if (v20)
  {

    outlined destroy of SpeakableString?(v19, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_160_2();
  }

  else
  {
    OUTLINED_FUNCTION_201();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v21();
  }

  v22 = v11[4];
  OUTLINED_FUNCTION_27_2();
  *(v14 + 128) = 0xD000000000000011;
  *(v14 + 136) = v23;
  if (v22)
  {
    type metadata accessor for DialogPerson();
  }

  else
  {
    *(v14 + 152) = 0;
    *(v14 + 160) = 0;
  }

  v24 = v11[8];
  *(v14 + 144) = v22;
  OUTLINED_FUNCTION_39_0();
  *(v14 + 168) = v25;
  *(v14 + 176) = 0xD00000000000001CLL;
  *(v14 + 184) = v26;
  OUTLINED_FUNCTION_191(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v27);
  OUTLINED_FUNCTION_169_1();
  if (v20)
  {

    outlined destroy of SpeakableString?(v24, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v14 + 192) = 0u;
    *(v14 + 208) = 0u;
  }

  else
  {
    *(v14 + 216) = v10;
    __swift_allocate_boxed_opaque_existential_1((v14 + 192));
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v28();
  }

  v29 = v11[6];
  OUTLINED_FUNCTION_27_2();
  *(v14 + 224) = 0xD000000000000011;
  *(v14 + 232) = v30;
  v31 = 0;
  if (v29)
  {
    v31 = type metadata accessor for DialogPersonHandle();
  }

  else
  {
    *(v14 + 248) = 0;
    *(v14 + 256) = 0;
  }

  *(v14 + 240) = v29;
  *(v14 + 264) = v31;
  OUTLINED_FUNCTION_19_11();

  v32 = swift_task_alloc();
  v11[11] = v32;
  lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedContactsNoHandleForLabelDialogIds and conformance StartCallCATsSimple.UnsupportedContactsNoHandleForLabelDialogIds();
  OUTLINED_FUNCTION_9();
  *v32 = v33;
  v32[1] = StartCallCATsSimple.unsupportedContactsNoHandleForLabelAsLabels(intent:preferredCallProvider:unsupportedPerson:unsupportedPersonHandleLabel:unsupportedHandle:);
  OUTLINED_FUNCTION_65_2();

  return v39(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedContactsNoHandleForLabelDialogIds and conformance StartCallCATsSimple.UnsupportedContactsNoHandleForLabelDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsNoHandleForLabelDialogIds and conformance StartCallCATsSimple.UnsupportedContactsNoHandleForLabelDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsNoHandleForLabelDialogIds and conformance StartCallCATsSimple.UnsupportedContactsNoHandleForLabelDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsNoHandleForLabelDialogIds and conformance StartCallCATsSimple.UnsupportedContactsNoHandleForLabelDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsNoHandleForLabelDialogIds and conformance StartCallCATsSimple.UnsupportedContactsNoHandleForLabelDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsNoHandleForLabelDialogIds and conformance StartCallCATsSimple.UnsupportedContactsNoHandleForLabelDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsNoHandleForLabelDialogIds and conformance StartCallCATsSimple.UnsupportedContactsNoHandleForLabelDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.unsupportedContactsNoUsableHandleForRedial()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(52);

  return v4(v3);
}

BOOL StartCallCATsSimple.UnsupportedContactsNoUsableHandleForRedialDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.UnsupportedContactsNoUsableHandleForRedialDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.UnsupportedContactsNoUsableHandleForRedialDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = StartCallCATsSimple.UnsupportedContactsNoUsableHandleForRedialDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t StartCallCATsSimple.unsupportedContactsNoUsableHandleForRedialAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedContactsNoUsableHandleForRedialDialogIds and conformance StartCallCATsSimple.UnsupportedContactsNoUsableHandleForRedialDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(52);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedContactsNoUsableHandleForRedialDialogIds and conformance StartCallCATsSimple.UnsupportedContactsNoUsableHandleForRedialDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsNoUsableHandleForRedialDialogIds and conformance StartCallCATsSimple.UnsupportedContactsNoUsableHandleForRedialDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsNoUsableHandleForRedialDialogIds and conformance StartCallCATsSimple.UnsupportedContactsNoUsableHandleForRedialDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsNoUsableHandleForRedialDialogIds and conformance StartCallCATsSimple.UnsupportedContactsNoUsableHandleForRedialDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsNoUsableHandleForRedialDialogIds and conformance StartCallCATsSimple.UnsupportedContactsNoUsableHandleForRedialDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsNoUsableHandleForRedialDialogIds and conformance StartCallCATsSimple.UnsupportedContactsNoUsableHandleForRedialDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsNoUsableHandleForRedialDialogIds and conformance StartCallCATsSimple.UnsupportedContactsNoUsableHandleForRedialDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.unsupportedContactsUnsupportedMmiUssd()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(47);

  return v4(v3);
}

BOOL StartCallCATsSimple.UnsupportedContactsUnsupportedMmiUssdDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.UnsupportedContactsUnsupportedMmiUssdDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.UnsupportedContactsUnsupportedMmiUssdDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = StartCallCATsSimple.UnsupportedContactsUnsupportedMmiUssdDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t StartCallCATsSimple.unsupportedContactsUnsupportedMmiUssdAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedContactsUnsupportedMmiUssdDialogIds and conformance StartCallCATsSimple.UnsupportedContactsUnsupportedMmiUssdDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(47);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedContactsUnsupportedMmiUssdDialogIds and conformance StartCallCATsSimple.UnsupportedContactsUnsupportedMmiUssdDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsUnsupportedMmiUssdDialogIds and conformance StartCallCATsSimple.UnsupportedContactsUnsupportedMmiUssdDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsUnsupportedMmiUssdDialogIds and conformance StartCallCATsSimple.UnsupportedContactsUnsupportedMmiUssdDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsUnsupportedMmiUssdDialogIds and conformance StartCallCATsSimple.UnsupportedContactsUnsupportedMmiUssdDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsUnsupportedMmiUssdDialogIds and conformance StartCallCATsSimple.UnsupportedContactsUnsupportedMmiUssdDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsUnsupportedMmiUssdDialogIds and conformance StartCallCATsSimple.UnsupportedContactsUnsupportedMmiUssdDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedContactsUnsupportedMmiUssdDialogIds and conformance StartCallCATsSimple.UnsupportedContactsUnsupportedMmiUssdDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.unsupportedDestinationType()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(36);

  return v4(v3);
}

BOOL StartCallCATsSimple.UnsupportedDestinationTypeDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.UnsupportedDestinationTypeDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.UnsupportedDestinationTypeDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = StartCallCATsSimple.UnsupportedDestinationTypeDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t StartCallCATsSimple.unsupportedDestinationTypeAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedDestinationTypeDialogIds and conformance StartCallCATsSimple.UnsupportedDestinationTypeDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(36);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedDestinationTypeDialogIds and conformance StartCallCATsSimple.UnsupportedDestinationTypeDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedDestinationTypeDialogIds and conformance StartCallCATsSimple.UnsupportedDestinationTypeDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedDestinationTypeDialogIds and conformance StartCallCATsSimple.UnsupportedDestinationTypeDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedDestinationTypeDialogIds and conformance StartCallCATsSimple.UnsupportedDestinationTypeDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedDestinationTypeDialogIds and conformance StartCallCATsSimple.UnsupportedDestinationTypeDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedDestinationTypeDialogIds and conformance StartCallCATsSimple.UnsupportedDestinationTypeDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedDestinationTypeDialogIds and conformance StartCallCATsSimple.UnsupportedDestinationTypeDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.unsupportedDeviceFaceTimeLink(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.unsupportedDeviceFaceTimeLink(device:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v5 = OUTLINED_FUNCTION_51(v4);
  v6 = OUTLINED_FUNCTION_3_0(v5, xmmword_424FD0);
  if (v2)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v6);
  OUTLINED_FUNCTION_7_82();

  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_117(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_30(v8);
  OUTLINED_FUNCTION_43_4(39);
  OUTLINED_FUNCTION_65_1();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::UnsupportedDeviceFaceTimeLinkDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.UnsupportedDeviceFaceTimeLinkDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StartCallCATsSimple::UnsupportedDeviceFaceTimeLinkDialogIds_optional *a2@<X8>)
{
  result.value = StartCallCATsSimple.UnsupportedDeviceFaceTimeLinkDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t StartCallCATsSimple.unsupportedDeviceFaceTimeLinkAsLabels(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.unsupportedDeviceFaceTimeLinkAsLabels(device:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v5 = OUTLINED_FUNCTION_51(v4);
  v6 = OUTLINED_FUNCTION_3_0(v5, xmmword_424FD0);
  if (v2)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v6);
  OUTLINED_FUNCTION_7_82();

  v7 = swift_task_alloc();
  OUTLINED_FUNCTION_42_0(v7);
  lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedDeviceFaceTimeLinkDialogIds and conformance StartCallCATsSimple.UnsupportedDeviceFaceTimeLinkDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v8;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_70_10(39);
  OUTLINED_FUNCTION_65_1();

  return v14(v9, v10, v11, v12, v13, v14, v15, v16);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedDeviceFaceTimeLinkDialogIds and conformance StartCallCATsSimple.UnsupportedDeviceFaceTimeLinkDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedDeviceFaceTimeLinkDialogIds and conformance StartCallCATsSimple.UnsupportedDeviceFaceTimeLinkDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedDeviceFaceTimeLinkDialogIds and conformance StartCallCATsSimple.UnsupportedDeviceFaceTimeLinkDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedDeviceFaceTimeLinkDialogIds and conformance StartCallCATsSimple.UnsupportedDeviceFaceTimeLinkDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedDeviceFaceTimeLinkDialogIds and conformance StartCallCATsSimple.UnsupportedDeviceFaceTimeLinkDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedDeviceFaceTimeLinkDialogIds and conformance StartCallCATsSimple.UnsupportedDeviceFaceTimeLinkDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedDeviceFaceTimeLinkDialogIds and conformance StartCallCATsSimple.UnsupportedDeviceFaceTimeLinkDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.unsupportedDeviceGroupFaceTime(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.unsupportedDeviceGroupFaceTime(device:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v5 = OUTLINED_FUNCTION_51(v4);
  v6 = OUTLINED_FUNCTION_3_0(v5, xmmword_424FD0);
  if (v2)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v6);
  OUTLINED_FUNCTION_7_82();

  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_117(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_30(v8);
  OUTLINED_FUNCTION_43_4(40);
  OUTLINED_FUNCTION_65_1();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::UnsupportedDeviceGroupFaceTimeDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.UnsupportedDeviceGroupFaceTimeDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StartCallCATsSimple::UnsupportedDeviceGroupFaceTimeDialogIds_optional *a2@<X8>)
{
  result.value = StartCallCATsSimple.UnsupportedDeviceGroupFaceTimeDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t StartCallCATsSimple.unsupportedDeviceGroupFaceTimeAsLabels(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.unsupportedDeviceGroupFaceTimeAsLabels(device:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v5 = OUTLINED_FUNCTION_51(v4);
  v6 = OUTLINED_FUNCTION_3_0(v5, xmmword_424FD0);
  if (v2)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v6);
  OUTLINED_FUNCTION_7_82();

  v7 = swift_task_alloc();
  OUTLINED_FUNCTION_42_0(v7);
  lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedDeviceGroupFaceTimeDialogIds and conformance StartCallCATsSimple.UnsupportedDeviceGroupFaceTimeDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v8;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_70_10(40);
  OUTLINED_FUNCTION_65_1();

  return v14(v9, v10, v11, v12, v13, v14, v15, v16);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedDeviceGroupFaceTimeDialogIds and conformance StartCallCATsSimple.UnsupportedDeviceGroupFaceTimeDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedDeviceGroupFaceTimeDialogIds and conformance StartCallCATsSimple.UnsupportedDeviceGroupFaceTimeDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedDeviceGroupFaceTimeDialogIds and conformance StartCallCATsSimple.UnsupportedDeviceGroupFaceTimeDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedDeviceGroupFaceTimeDialogIds and conformance StartCallCATsSimple.UnsupportedDeviceGroupFaceTimeDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedDeviceGroupFaceTimeDialogIds and conformance StartCallCATsSimple.UnsupportedDeviceGroupFaceTimeDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedDeviceGroupFaceTimeDialogIds and conformance StartCallCATsSimple.UnsupportedDeviceGroupFaceTimeDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedDeviceGroupFaceTimeDialogIds and conformance StartCallCATsSimple.UnsupportedDeviceGroupFaceTimeDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.unsupportedPreferredCallProvider(intent:device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.unsupportedPreferredCallProvider(intent:device:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v13 = *(v11 + 16);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_45_0(v14);
  v16 = OUTLINED_FUNCTION_47_3(v15);
  OUTLINED_FUNCTION_12_6(v16, xmmword_424FF0);
  if (v13)
  {
    v17 = type metadata accessor for PhoneStartCallIntent(0);
    v18 = v13;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_14();
  }

  v19 = OUTLINED_FUNCTION_20_1(v17, v18);
  if (v10)
  {
    v19 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
  }

  OUTLINED_FUNCTION_140_2(v19);
  OUTLINED_FUNCTION_20_4();

  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_61_4(v20);
  *v21 = v22;
  OUTLINED_FUNCTION_64_17(v21);
  OUTLINED_FUNCTION_131_3(42);
  OUTLINED_FUNCTION_65_2();

  return v26(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::UnsupportedPreferredCallProviderDialogIds_optional __swiftcall StartCallCATsSimple.UnsupportedPreferredCallProviderDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.UnsupportedPreferredCallProviderDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t StartCallCATsSimple.UnsupportedPreferredCallProviderDialogIds.rawValue.getter(char a1)
{
  result = 0x656D695465636146;
  switch(a1)
  {
    case 2:
      result = OUTLINED_FUNCTION_135_3(0x7247u);
      break;
    case 3:
      result = 0x6C616D726F4ELL;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::UnsupportedPreferredCallProviderDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.UnsupportedPreferredCallProviderDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StartCallCATsSimple::UnsupportedPreferredCallProviderDialogIds_optional *a2@<X8>)
{
  result.value = StartCallCATsSimple.UnsupportedPreferredCallProviderDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance StartCallCATsSimple.UnsupportedPreferredCallProviderDialogIds()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = StartCallCATsSimple.UnsupportedPreferredCallProviderDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t StartCallCATsSimple.unsupportedPreferredCallProviderAsLabels(intent:device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.unsupportedPreferredCallProviderAsLabels(intent:device:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v13 = *(v11 + 16);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_45_0(v14);
  v16 = OUTLINED_FUNCTION_47_3(v15);
  OUTLINED_FUNCTION_12_6(v16, xmmword_424FF0);
  if (v13)
  {
    v17 = type metadata accessor for PhoneStartCallIntent(0);
    v18 = v13;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_14();
  }

  v19 = OUTLINED_FUNCTION_20_1(v17, v18);
  if (v10)
  {
    v19 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
  }

  OUTLINED_FUNCTION_140_2(v19);
  OUTLINED_FUNCTION_20_4();

  v20 = swift_task_alloc();
  OUTLINED_FUNCTION_27_20(v20);
  lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedPreferredCallProviderDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderDialogIds();
  OUTLINED_FUNCTION_9();
  *v13 = v21;
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_99_5();
  OUTLINED_FUNCTION_131_3(42);
  OUTLINED_FUNCTION_65_2();

  return v27(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedPreferredCallProviderDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedPreferredCallProviderDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedPreferredCallProviderDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedPreferredCallProviderDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedPreferredCallProviderDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedPreferredCallProviderDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedPreferredCallProviderDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.unsupportedPreferredCallProviderAccountSetupRequired(intent:device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.unsupportedPreferredCallProviderAccountSetupRequired(intent:device:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v13 = *(v11 + 16);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_45_0(v14);
  v16 = OUTLINED_FUNCTION_47_3(v15);
  OUTLINED_FUNCTION_12_6(v16, xmmword_424FF0);
  if (v13)
  {
    v17 = type metadata accessor for PhoneStartCallIntent(0);
    v18 = v13;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_14();
  }

  v19 = OUTLINED_FUNCTION_20_1(v17, v18);
  if (v10)
  {
    v19 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
  }

  OUTLINED_FUNCTION_140_2(v19);
  OUTLINED_FUNCTION_20_4();

  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_61_4(v20);
  *v21 = v22;
  OUTLINED_FUNCTION_64_17(v21);
  OUTLINED_FUNCTION_131_3(62);
  OUTLINED_FUNCTION_65_2();

  return v26(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::UnsupportedPreferredCallProviderAccountSetupRequiredDialogIds_optional __swiftcall StartCallCATsSimple.UnsupportedPreferredCallProviderAccountSetupRequiredDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.UnsupportedPreferredCallProviderAccountSetupRequiredDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_174_0();
  if (v5)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t StartCallCATsSimple.UnsupportedPreferredCallProviderAccountSetupRequiredDialogIds.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6423317473726966;
  }

  else
  {
    return 0x31676F6C616964;
  }
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::UnsupportedPreferredCallProviderAccountSetupRequiredDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.UnsupportedPreferredCallProviderAccountSetupRequiredDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StartCallCATsSimple::UnsupportedPreferredCallProviderAccountSetupRequiredDialogIds_optional *a2@<X8>)
{
  result.value = StartCallCATsSimple.UnsupportedPreferredCallProviderAccountSetupRequiredDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance StartCallCATsSimple.UnsupportedPreferredCallProviderAccountSetupRequiredDialogIds()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = StartCallCATsSimple.UnsupportedPreferredCallProviderAccountSetupRequiredDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t StartCallCATsSimple.unsupportedPreferredCallProviderAccountSetupRequiredAsLabels(intent:device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.unsupportedPreferredCallProviderAccountSetupRequiredAsLabels(intent:device:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v13 = *(v11 + 16);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_45_0(v14);
  v16 = OUTLINED_FUNCTION_47_3(v15);
  OUTLINED_FUNCTION_12_6(v16, xmmword_424FF0);
  if (v13)
  {
    v17 = type metadata accessor for PhoneStartCallIntent(0);
    v18 = v13;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_14();
  }

  v19 = OUTLINED_FUNCTION_20_1(v17, v18);
  if (v10)
  {
    v19 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
  }

  OUTLINED_FUNCTION_140_2(v19);
  OUTLINED_FUNCTION_20_4();

  v20 = swift_task_alloc();
  OUTLINED_FUNCTION_27_20(v20);
  lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedPreferredCallProviderAccountSetupRequiredDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderAccountSetupRequiredDialogIds();
  OUTLINED_FUNCTION_9();
  *v13 = v21;
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_99_5();
  OUTLINED_FUNCTION_131_3(62);
  OUTLINED_FUNCTION_65_2();

  return v27(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedPreferredCallProviderAccountSetupRequiredDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderAccountSetupRequiredDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedPreferredCallProviderAccountSetupRequiredDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderAccountSetupRequiredDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedPreferredCallProviderAccountSetupRequiredDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderAccountSetupRequiredDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedPreferredCallProviderAccountSetupRequiredDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderAccountSetupRequiredDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedPreferredCallProviderAccountSetupRequiredDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderAccountSetupRequiredDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedPreferredCallProviderAccountSetupRequiredDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderAccountSetupRequiredDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedPreferredCallProviderAccountSetupRequiredDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderAccountSetupRequiredDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.unsupportedPreferredCallProviderEmergencyCallProviderNotAccessible()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(76);

  return v4(v3);
}

BOOL StartCallCATsSimple.UnsupportedPreferredCallProviderEmergencyCallProviderNotAccessibleDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.UnsupportedPreferredCallProviderEmergencyCallProviderNotAccessibleDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.UnsupportedPreferredCallProviderEmergencyCallProviderNotAccessibleDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = StartCallCATsSimple.UnsupportedPreferredCallProviderEmergencyCallProviderNotAccessibleDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t StartCallCATsSimple.unsupportedPreferredCallProviderEmergencyCallProviderNotAccessibleAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedPreferredCallProviderEmergencyCallProviderNotAccessibleDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderEmergencyCallProviderNotAccessibleDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(76);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedPreferredCallProviderEmergencyCallProviderNotAccessibleDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderEmergencyCallProviderNotAccessibleDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedPreferredCallProviderEmergencyCallProviderNotAccessibleDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderEmergencyCallProviderNotAccessibleDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedPreferredCallProviderEmergencyCallProviderNotAccessibleDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderEmergencyCallProviderNotAccessibleDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedPreferredCallProviderEmergencyCallProviderNotAccessibleDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderEmergencyCallProviderNotAccessibleDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedPreferredCallProviderEmergencyCallProviderNotAccessibleDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderEmergencyCallProviderNotAccessibleDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedPreferredCallProviderEmergencyCallProviderNotAccessibleDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderEmergencyCallProviderNotAccessibleDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedPreferredCallProviderEmergencyCallProviderNotAccessibleDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderEmergencyCallProviderNotAccessibleDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.unsupportedPreferredCallProviderProviderDisabledInSettings()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(68);

  return v4(v3);
}

BOOL StartCallCATsSimple.UnsupportedPreferredCallProviderProviderDisabledInSettingsDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.UnsupportedPreferredCallProviderProviderDisabledInSettingsDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.UnsupportedPreferredCallProviderProviderDisabledInSettingsDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = StartCallCATsSimple.UnsupportedPreferredCallProviderProviderDisabledInSettingsDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t StartCallCATsSimple.unsupportedPreferredCallProviderProviderDisabledInSettingsAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedPreferredCallProviderProviderDisabledInSettingsDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderProviderDisabledInSettingsDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(68);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedPreferredCallProviderProviderDisabledInSettingsDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderProviderDisabledInSettingsDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedPreferredCallProviderProviderDisabledInSettingsDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderProviderDisabledInSettingsDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedPreferredCallProviderProviderDisabledInSettingsDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderProviderDisabledInSettingsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedPreferredCallProviderProviderDisabledInSettingsDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderProviderDisabledInSettingsDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedPreferredCallProviderProviderDisabledInSettingsDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderProviderDisabledInSettingsDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedPreferredCallProviderProviderDisabledInSettingsDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderProviderDisabledInSettingsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedPreferredCallProviderProviderDisabledInSettingsDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderProviderDisabledInSettingsDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.unsupportedPreferredCallProviderSettingsRestricted(intent:device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.unsupportedPreferredCallProviderSettingsRestricted(intent:device:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v13 = *(v11 + 16);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_45_0(v14);
  v16 = OUTLINED_FUNCTION_47_3(v15);
  OUTLINED_FUNCTION_12_6(v16, xmmword_424FF0);
  if (v13)
  {
    v17 = type metadata accessor for PhoneStartCallIntent(0);
    v18 = v13;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_14();
  }

  v19 = OUTLINED_FUNCTION_20_1(v17, v18);
  if (v10)
  {
    v19 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
  }

  OUTLINED_FUNCTION_140_2(v19);
  OUTLINED_FUNCTION_20_4();

  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_61_4(v20);
  *v21 = v22;
  OUTLINED_FUNCTION_64_17(v21);
  OUTLINED_FUNCTION_131_3(60);
  OUTLINED_FUNCTION_65_2();

  return v26(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::UnsupportedPreferredCallProviderSettingsRestrictedDialogIds_optional __swiftcall StartCallCATsSimple.UnsupportedPreferredCallProviderSettingsRestrictedDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.UnsupportedPreferredCallProviderSettingsRestrictedDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_174_0();
  if (v5)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t StartCallCATsSimple.UnsupportedPreferredCallProviderSettingsRestrictedDialogIds.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6544687469575446;
  }

  if (a1 == 1)
  {
    return 0x756F687469575446;
  }

  return 0x636972656E6547;
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::UnsupportedPreferredCallProviderSettingsRestrictedDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.UnsupportedPreferredCallProviderSettingsRestrictedDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StartCallCATsSimple::UnsupportedPreferredCallProviderSettingsRestrictedDialogIds_optional *a2@<X8>)
{
  result.value = StartCallCATsSimple.UnsupportedPreferredCallProviderSettingsRestrictedDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance StartCallCATsSimple.UnsupportedPreferredCallProviderSettingsRestrictedDialogIds()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = StartCallCATsSimple.UnsupportedPreferredCallProviderSettingsRestrictedDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t StartCallCATsSimple.unsupportedPreferredCallProviderSettingsRestrictedAsLabels(intent:device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.unsupportedPreferredCallProviderSettingsRestrictedAsLabels(intent:device:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v13 = *(v11 + 16);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_45_0(v14);
  v16 = OUTLINED_FUNCTION_47_3(v15);
  OUTLINED_FUNCTION_12_6(v16, xmmword_424FF0);
  if (v13)
  {
    v17 = type metadata accessor for PhoneStartCallIntent(0);
    v18 = v13;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_14();
  }

  v19 = OUTLINED_FUNCTION_20_1(v17, v18);
  if (v10)
  {
    v19 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
  }

  OUTLINED_FUNCTION_140_2(v19);
  OUTLINED_FUNCTION_20_4();

  v20 = swift_task_alloc();
  OUTLINED_FUNCTION_27_20(v20);
  lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedPreferredCallProviderSettingsRestrictedDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderSettingsRestrictedDialogIds();
  OUTLINED_FUNCTION_9();
  *v13 = v21;
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_99_5();
  OUTLINED_FUNCTION_131_3(60);
  OUTLINED_FUNCTION_65_2();

  return v27(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedPreferredCallProviderSettingsRestrictedDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderSettingsRestrictedDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedPreferredCallProviderSettingsRestrictedDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderSettingsRestrictedDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedPreferredCallProviderSettingsRestrictedDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderSettingsRestrictedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedPreferredCallProviderSettingsRestrictedDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderSettingsRestrictedDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedPreferredCallProviderSettingsRestrictedDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderSettingsRestrictedDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedPreferredCallProviderSettingsRestrictedDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderSettingsRestrictedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedPreferredCallProviderSettingsRestrictedDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderSettingsRestrictedDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.unsupportedPreferredCallProviderTelephonyUnsupported(device:isFaceTimeOnlyDevice:)(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.unsupportedPreferredCallProviderTelephonyUnsupported(device:isFaceTimeOnlyDevice:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 16);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_45_0(v13);
  v15 = OUTLINED_FUNCTION_51(v14);
  OUTLINED_FUNCTION_3_0(v15, xmmword_424FF0);
  if (v12)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v11[7] = 0;
    v11[8] = 0;
  }

  OUTLINED_FUNCTION_132_2();
  OUTLINED_FUNCTION_39_0();
  v11[11] = v16;
  OUTLINED_FUNCTION_73_1(v17);
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_92_6(v18);
  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_117(v19);
  *v20 = v21;
  OUTLINED_FUNCTION_39(v20);
  OUTLINED_FUNCTION_99_4();
  OUTLINED_FUNCTION_65_2();

  return v25(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::UnsupportedPreferredCallProviderTelephonyUnsupportedDialogIds_optional __swiftcall StartCallCATsSimple.UnsupportedPreferredCallProviderTelephonyUnsupportedDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.UnsupportedPreferredCallProviderTelephonyUnsupportedDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t StartCallCATsSimple.UnsupportedPreferredCallProviderTelephonyUnsupportedDialogIds.rawValue.getter(char a1)
{
  result = 0x636972656E6547;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 6512973;
      break;
    case 3:
      result = 0x6863746157;
      break;
    case 4:
      result = 0x6976654468746957;
      break;
    default:
      result = OUTLINED_FUNCTION_2_7();
      break;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::UnsupportedPreferredCallProviderTelephonyUnsupportedDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.UnsupportedPreferredCallProviderTelephonyUnsupportedDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StartCallCATsSimple::UnsupportedPreferredCallProviderTelephonyUnsupportedDialogIds_optional *a2@<X8>)
{
  result.value = StartCallCATsSimple.UnsupportedPreferredCallProviderTelephonyUnsupportedDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance StartCallCATsSimple.UnsupportedPreferredCallProviderTelephonyUnsupportedDialogIds()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = StartCallCATsSimple.UnsupportedPreferredCallProviderTelephonyUnsupportedDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t StartCallCATsSimple.unsupportedPreferredCallProviderTelephonyUnsupportedAsLabels(device:isFaceTimeOnlyDevice:)(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.unsupportedPreferredCallProviderTelephonyUnsupportedAsLabels(device:isFaceTimeOnlyDevice:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 16);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_45_0(v13);
  v15 = OUTLINED_FUNCTION_51(v14);
  OUTLINED_FUNCTION_3_0(v15, xmmword_424FF0);
  if (v12)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v11[7] = 0;
    v11[8] = 0;
  }

  OUTLINED_FUNCTION_132_2();
  OUTLINED_FUNCTION_39_0();
  v11[11] = v16;
  OUTLINED_FUNCTION_73_1(v17);
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_92_6(v18);
  v19 = swift_task_alloc();
  OUTLINED_FUNCTION_42_0(v19);
  lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedPreferredCallProviderTelephonyUnsupportedDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderTelephonyUnsupportedDialogIds();
  OUTLINED_FUNCTION_9();
  *v12 = v20;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_37_28();
  OUTLINED_FUNCTION_65_2();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.UnsupportedPreferredCallProviderTelephonyUnsupportedDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderTelephonyUnsupportedDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedPreferredCallProviderTelephonyUnsupportedDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderTelephonyUnsupportedDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedPreferredCallProviderTelephonyUnsupportedDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderTelephonyUnsupportedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedPreferredCallProviderTelephonyUnsupportedDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderTelephonyUnsupportedDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedPreferredCallProviderTelephonyUnsupportedDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderTelephonyUnsupportedDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedPreferredCallProviderTelephonyUnsupportedDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderTelephonyUnsupportedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.UnsupportedPreferredCallProviderTelephonyUnsupportedDialogIds and conformance StartCallCATsSimple.UnsupportedPreferredCallProviderTelephonyUnsupportedDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.__allocating_init(useResponseMode:options:)(uint64_t a1)
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

uint64_t StartCallCATsSimple.init(useResponseMode:options:)(uint64_t a1)
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

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.Properties and conformance StartCallCATsSimple.Properties()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.Properties and conformance StartCallCATsSimple.Properties;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.Properties and conformance StartCallCATsSimple.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.Properties and conformance StartCallCATsSimple.Properties);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StartCallCATsSimple.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 68 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 68) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xBC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xBB)
  {
    v6 = ((a2 - 188) >> 8) + 1;
    *result = a2 + 68;
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
          *result = a2 + 68;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StartCallCATsSimple.ConfirmContactsDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for StartCallCATsSimple.ErrorWithCodeCallInProgressDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_83_5(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_81_5(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_82_5(result, v6);
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
          result = OUTLINED_FUNCTION_52_11(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StartCallCATsSimple.IntentHandledResponseDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StartCallCATsSimple.RelationshipDialogIds(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xA8)
  {
    if (a2 + 88 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 88) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 89;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x59;
  v5 = v6 - 89;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StartCallCATsSimple.RelationshipDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 88 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 88) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xA8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xA7)
  {
    v6 = ((a2 - 168) >> 8) + 1;
    *result = a2 + 88;
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
          *result = a2 + 88;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StartCallCATsSimple.PromptForContactsDialogIds(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_84_6(-1);
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_84_6((*a1 | (v4 << 8)) - 6);
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

      return OUTLINED_FUNCTION_84_6((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_84_6((*a1 | (v4 << 8)) - 6);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_84_6(v8);
}

_BYTE *storeEnumTagSinglePayload for StartCallCATsSimple.PromptForContactsDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_83_5(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_81_5(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_82_5(result, v6);
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
          result = OUTLINED_FUNCTION_52_11(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StartCallCATsSimple.BusinessCallingFeatureDisabledDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_83_5(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_81_5(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_82_5(result, v6);
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
          result = OUTLINED_FUNCTION_52_11(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StartCallCATsSimple.DisambiguateCallCapabilityDialogIds(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for StartCallCATsSimple.ConfirmPreferredCallProviderDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_83_5(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_81_5(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_82_5(result, v6);
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
          result = OUTLINED_FUNCTION_52_11(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StartCallCATsSimple.UnsupportedPreferredCallProviderDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_83_5(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_81_5(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_82_5(result, v6);
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
          result = OUTLINED_FUNCTION_52_11(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_79_9(uint64_t result)
{
  *(v2 + 48) = v1;
  *(v2 + 72) = result;
  strcpy((v2 + 80), "hintIdentifier");
  *(v2 + 95) = -18;
  return result;
}

uint64_t OUTLINED_FUNCTION_82_10@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[6] = a2;
  v2[9] = result;
  v2[10] = 0x436465776F6C6C61;
  v2[11] = 0xEF73746361746E6FLL;
  return result;
}

void OUTLINED_FUNCTION_91_7()
{
  *(v2 + 168) = v0;
  strcpy((v2 + 176), "startingOver");
  *(v2 + 189) = 0;
  *(v2 + 190) = -5120;
  *(v2 + 192) = v1;
}

uint64_t OUTLINED_FUNCTION_100_4(uint64_t a1)
{
  v2[12] = v1;
  v2[15] = a1;
  v2[16] = 0x656369766564;
  v2[17] = 0xE600000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_131_4(uint64_t result, char a2, uint64_t a3, char a4, char a5, char a6)
{
  *(v7 + 24) = a3;
  *(v7 + 32) = v6;
  *(v7 + 75) = a6;
  *(v7 + 74) = a5;
  *(v7 + 73) = a4;
  *(v7 + 72) = a2;
  *(v7 + 16) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_147_2(uint64_t result, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  *(v7 + 32) = a6;
  *(v7 + 40) = v6;
  *(v7 + 82) = a5;
  *(v7 + 81) = a4;
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 80) = result;
  return result;
}

void specialized Result<>.merge(with:behaviorAfterSpeaking:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_66();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v27 = v26;
  v28 = type metadata accessor for TemplatingResult();
  OUTLINED_FUNCTION_7();
  v30 = v29;
  __chkstk_darwin(v31);
  OUTLINED_FUNCTION_4();
  v34 = v33 - v32;
  v35 = OUTLINED_FUNCTION_13_24();
  __swift_instantiateConcreteTypeFromMangledNameV2(v35, v36);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v37);
  v39 = (&a9 - v38);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v23, &a9 - v38, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  OUTLINED_FUNCTION_104();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v27 = *v39;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v30 + 32))(v34, v39, v28);
    specialized closure #1 in Result<>.merge(with:behaviorAfterSpeaking:)(v34, v25, v27);
    (*(v30 + 8))(v34, v28);
  }

  OUTLINED_FUNCTION_65();
}

void StartCallCatTemplatingService.__allocating_init(sharedGlobals:startCallCats:displayTextCats:phoneCallCommonCats:unsupportedFlowCats:appInfoBuilder:operationManager:)()
{
  OUTLINED_FUNCTION_66();
  v17 = v1;
  v3 = v2;
  OUTLINED_FUNCTION_24_43();
  v4 = swift_allocObject();
  v6 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v6);
  OUTLINED_FUNCTION_22_37();
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v9 = OUTLINED_FUNCTION_24_0(v8);
  v10(v9);
  v11 = OUTLINED_FUNCTION_25_41();
  specialized StartCallCatTemplatingService.init(sharedGlobals:startCallCats:displayTextCats:phoneCallCommonCats:unsupportedFlowCats:appInfoBuilder:operationManager:)(v11, v12, v13, v14, v15, v0, v17, v4, v6, v5);
  v16 = OUTLINED_FUNCTION_40_0();
  __swift_destroy_boxed_opaque_existential_1(v16);
  OUTLINED_FUNCTION_65();
}

uint64_t specialized closure #1 in Result<>.merge(with:behaviorAfterSpeaking:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a1;
  v22 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow21BehaviorAfterSpeakingOSgMd, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for TemplatingResult();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin(v11);
  v13 = (&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v16 = (&v21 - v15);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(a2, v13, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v16 = *v13;
    v17 = v21;
  }

  else
  {
    (*(v8 + 32))(v10, v13, v7);
    v18 = type metadata accessor for BehaviorAfterSpeaking();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v18);
    v19 = v21;
    TemplatingResult.merge(with:behaviorAfterSpeaking:)(v6, v16);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v6, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMd, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMR);
    (*(v8 + 8))(v10, v7);
    v17 = v19;
  }

  swift_storeEnumTagMultiPayload();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 16))(v22, v17, v7);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v8 + 32))(v22, v16, v7);
    return swift_storeEnumTagMultiPayload();
  }
}

void StartCallCatTemplatingService.init(sharedGlobals:startCallCats:displayTextCats:phoneCallCommonCats:unsupportedFlowCats:appInfoBuilder:operationManager:)()
{
  OUTLINED_FUNCTION_66();
  v22 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = *(v4 + 24);
  v16 = *(v4 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v17);
  OUTLINED_FUNCTION_22_37();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_4();
  v20 = OUTLINED_FUNCTION_24_0(v19);
  v21(v20);
  specialized StartCallCatTemplatingService.init(sharedGlobals:startCallCats:displayTextCats:phoneCallCommonCats:unsupportedFlowCats:appInfoBuilder:operationManager:)(v15, v13, v11, v9, v7, v1, v3, v22, v17, v16);
  __swift_destroy_boxed_opaque_existential_1(v5);
  OUTLINED_FUNCTION_65();
}

uint64_t StartCallCatTemplatingService.slotTemplating(for:)@<X0>(char a1@<W0>, _OWORD *a2@<X8>)
{
  switch(a1)
  {
    case 2:
      OUTLINED_FUNCTION_35_0();
      v6 = OUTLINED_FUNCTION_11_5(v5 + class metadata base offset for PhoneCallBaseCatTemplatingService);
      outlined init with copy of SignalProviding(v6, v33);
      OUTLINED_FUNCTION_7_2(direct field offset for StartCallCatTemplatingService.startCallCatFamily);
      specialized SlotTemplating.toAnySlotTemplating()();

      v7 = &_s27PhoneCallFlowDelegatePlugin29DestinationTypeSlotTemplatingVySo07INStartB6IntentCSo16INIntentResponseCGMd;
      v8 = &_s27PhoneCallFlowDelegatePlugin29DestinationTypeSlotTemplatingVySo07INStartB6IntentCSo16INIntentResponseCGMR;
      goto LABEL_5;
    case 3:
      OUTLINED_FUNCTION_35_0();
      v13 = OUTLINED_FUNCTION_11_5(v12 + class metadata base offset for PhoneCallBaseCatTemplatingService);
      outlined init with copy of SignalProviding(v13, v33);
      OUTLINED_FUNCTION_7_2(direct field offset for StartCallCatTemplatingService.startCallCatFamily);
      specialized SlotTemplating.toAnySlotTemplating()();

      v7 = &_s27PhoneCallFlowDelegatePlugin09PreferredB22ProviderSlotTemplatingVySo07INStartB6IntentCSo16INIntentResponseCGMd;
      v8 = &_s27PhoneCallFlowDelegatePlugin09PreferredB22ProviderSlotTemplatingVySo07INStartB6IntentCSo16INIntentResponseCGMR;
LABEL_5:
      v14 = v33;
      goto LABEL_7;
    case 5:
      OUTLINED_FUNCTION_35_0();
      v16 = OUTLINED_FUNCTION_11_5(v15 + class metadata base offset for PhoneCallBaseCatTemplatingService);
      outlined init with copy of SignalProviding(v16, v32);
      v17 = *(v2 + direct field offset for StartCallCatTemplatingService.startCallCatFamily);

      v18 = DucTemplatingService.locale.getter();
      v20 = v19;
      v21 = type metadata accessor for AppInfoBuilder();
      v22 = swift_allocObject();
      v32[11] = v21;
      v32[12] = &protocol witness table for AppInfoBuilder;
      v32[5] = v17;
      v32[6] = v18;
      v32[7] = v20;
      v32[8] = v22;
      v3 = v33;
      specialized SlotTemplating.toAnySlotTemplating()();
      v7 = &_s27PhoneCallFlowDelegatePlugin22ContactsSlotTemplatingVySo07INStartB6IntentCSo16INIntentResponseCGMd;
      v8 = &_s27PhoneCallFlowDelegatePlugin22ContactsSlotTemplatingVySo07INStartB6IntentCSo16INIntentResponseCGMR;
      v14 = v32;
LABEL_7:
      result = outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v14, v7, v8);
      goto LABEL_9;
    case 8:
      OUTLINED_FUNCTION_35_0();
      v10 = OUTLINED_FUNCTION_11_5(v9 + class metadata base offset for PhoneCallBaseCatTemplatingService);
      outlined init with copy of SignalProviding(v10, v33);
      OUTLINED_FUNCTION_7_2(direct field offset for StartCallCatTemplatingService.startCallCatFamily);
      specialized SlotTemplating.toAnySlotTemplating()();

      result = outlined destroy of CallCapabilitySlotTemplating(v33);
      goto LABEL_9;
    case 13:
      OUTLINED_FUNCTION_35_0();
      v24 = OUTLINED_FUNCTION_11_5(v23 + class metadata base offset for PhoneCallBaseCatTemplatingService);
      outlined init with copy of SignalProviding(v24, v33);
      OUTLINED_FUNCTION_7_2(direct field offset for StartCallCatTemplatingService.startCallCatFamily);
      specialized SlotTemplating.toAnySlotTemplating()();

      result = outlined destroy of CallRecordToCallBackSlotTemplating(v33);
LABEL_9:
      v25 = v3[1];
      *a2 = *v3;
      a2[1] = v25;
      v26 = v3[3];
      a2[2] = v3[2];
      a2[3] = v26;
      break;
    default:
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, static Logger.siriPhone);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v32[0] = v31;
        *v30 = 136315138;
        *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004DLL, 0x80000000004625C0, v32);
        _os_log_impl(&dword_0, v28, v29, "%s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v31);
        OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_26_0(v30);
      }

      static SiriKitLifecycle._logCrashToEventBus(_:)();
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      break;
  }

  return result;
}

uint64_t StartCallCatTemplatingService.makeParameterValueConfirmationDialog(app:parameterName:intentResolutionResult:intent:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, void (*a16)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  OUTLINED_FUNCTION_32_26();
  a32 = v34;
  a33 = v35;
  v37 = v36;
  v65 = v39;
  v66 = v38;
  v41 = v40;
  v67 = v42;
  v44 = v43;
  v46 = v45;
  v47 = static Signpost.begin(_:parameterName:)("ParameterConfirmation", 21, 2, v45, v43);
  v63 = v49;
  v64 = v48;
  v51 = v50;
  OUTLINED_FUNCTION_35_0();
  v53 = (v33 + *(v52 + class metadata base offset for PhoneCallBaseCatTemplatingService + 72));
  v54 = v53[3];
  v55 = v53[4];
  __swift_project_boxed_opaque_existential_1(v53, v54);
  v56 = (*(v55 + 56))(v54, v55);
  LOBYTE(v54) = (*(*v33 + class metadata base offset for StartCallCatTemplatingService + 56))(v41, v56);

  v57._countAndFlagsBits = OUTLINED_FUNCTION_104();
  v58.value = PhoneCallSlotNames.init(rawValue:)(v57).value;
  StartCallCatTemplatingService.slotTemplating(for:)(v58.value, &a15);
  OUTLINED_FUNCTION_102_0();
  v59 = swift_allocObject();
  *(v59 + 16) = v47;
  *(v59 + 24) = v64;
  *(v59 + 32) = v63;
  *(v59 + 40) = v51;
  *(v59 + 41) = HIBYTE(v51) & 1;
  *(v59 + 48) = v65;
  *(v59 + 56) = v37;
  v60 = a16;

  v60(v66, v46, v44, v67, v41, v54 & 1, partial apply for closure #1 in Signpost.OpenSignpost.end(_:), v59);

  OUTLINED_FUNCTION_33_25();
}

uint64_t static Signpost.begin(_:parameterName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  _StringGuts.grow(_:)(16);

  v7._countAndFlagsBits = a4;
  v7._object = a5;
  String.append(_:)(v7);
  OUTLINED_FUNCTION_104();
  static Signpost.begin(_:message:)();
  v9 = v8;

  return v9;
}

uint64_t (*Signpost.OpenSignpost.end(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6))()
{
  OUTLINED_FUNCTION_102_0();
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  *(v12 + 32) = a5;
  *(v12 + 40) = a6;
  *(v12 + 41) = HIBYTE(a6) & 1;
  *(v12 + 48) = a1;
  *(v12 + 56) = a2;

  return closure #1 in Signpost.OpenSignpost.end(_:)partial apply;
}

uint64_t StartCallCatTemplatingService.makeParameterValueDisambiguationDialog(app:parameterName:intentResolutionResult:disambiguationList:deviceIsLocked:intent:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, uint64_t a17, void (*a18)(uint64_t, uint64_t, void *, uint64_t, uint64_t, void, uint64_t, uint64_t (*)()), uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_32_26();
  a32 = v35;
  a33 = v36;
  v38 = v37;
  v69 = v39;
  v68 = v40;
  v42 = v41;
  v66 = v43;
  v67 = v44;
  v46 = v45;
  v48 = v47;
  v49 = a34;
  v50 = static Signpost.begin(_:parameterName:)("ParameterDisambiguation", 23, 2, v47, v45);
  v52 = v51;
  v54 = v53;
  v56 = v55;

  v57._countAndFlagsBits = v48;
  v57._object = v46;
  v58.value = PhoneCallSlotNames.init(rawValue:)(v57).value;
  StartCallCatTemplatingService.slotTemplating(for:)(v58.value, &a15);
  v59 = (*(*v34 + class metadata base offset for PhoneCallBaseCatTemplatingService + 216))(v42, v38, v49);
  v61 = v60;
  OUTLINED_FUNCTION_102_0();
  v62 = swift_allocObject();
  *(v62 + 16) = v50;
  *(v62 + 24) = v52;
  *(v62 + 32) = v54;
  *(v62 + 40) = v56;
  *(v62 + 41) = HIBYTE(v56) & 1;
  *(v62 + 48) = v59;
  *(v62 + 56) = v61;
  v63 = a18;

  v63(v66, v48, v46, v67, v42, v68, v69, closure #1 in Signpost.OpenSignpost.end(_:)partial apply);

  OUTLINED_FUNCTION_33_25();
}

uint64_t StartCallCatTemplatingService.makeParameterValueUnsupportedDialog(app:parameterName:intentResolutionResult:intent:multicardinalValueIndex:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void (*a20)(uint64_t, uint64_t, void *, uint64_t, uint64_t, uint64_t, void, uint64_t (*)()), uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_32_26();
  a32 = v34;
  a33 = v35;
  v37 = v36;
  v62 = v38;
  v64 = v39;
  v65 = v40;
  v63 = v41;
  v43 = v42;
  v45 = v44;
  v61 = v46;
  v47 = a34;
  v48 = static Signpost.begin(_:parameterName:)("ParameterUnsupported", 20, 2, v44, v42);
  v50 = v49;
  v52 = v51;
  v54 = v53;

  v55._countAndFlagsBits = v45;
  v55._object = v43;
  v56.value = PhoneCallSlotNames.init(rawValue:)(v55).value;
  StartCallCatTemplatingService.slotTemplating(for:)(v56.value, &a15);
  OUTLINED_FUNCTION_102_0();
  v57 = swift_allocObject();
  *(v57 + 16) = v48;
  *(v57 + 24) = v50;
  *(v57 + 32) = v52;
  *(v57 + 40) = v54;
  *(v57 + 41) = HIBYTE(v54) & 1;
  *(v57 + 48) = v37;
  *(v57 + 56) = v47;
  v58 = a20;

  v58(v61, v45, v43, v63, v64, v65, v62 & 1, closure #1 in Signpost.OpenSignpost.end(_:)partial apply);

  OUTLINED_FUNCTION_33_25();
}

void StartCallCatTemplatingService.makeIntentConfirmationDialog(app:intent:intentResponse:_:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v134 = v5;
  v135 = v4;
  v7 = v6;
  v137 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v125 = v8;
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_4();
  v136 = v11 - v10;
  OUTLINED_FUNCTION_15_0();
  v130 = type metadata accessor for ResponseMode();
  OUTLINED_FUNCTION_7();
  v128 = v12;
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_4();
  v126 = (v15 - v14);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSg_ADtMd, &_s13SiriUtilities12ResponseModeVSg_ADtMR);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v16);
  v18 = &v124 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  __chkstk_darwin(v19 - 8);
  OUTLINED_FUNCTION_12_5();
  v127 = v20 - v21;
  __chkstk_darwin(v22);
  v24 = &v124 - v23;
  __chkstk_darwin(v25);
  v27 = &v124 - v26;
  static Signpost.begin(_:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  OUTLINED_FUNCTION_102_0();
  v36 = swift_allocObject();
  *(v36 + 16) = v29;
  *(v36 + 24) = v31;
  *(v36 + 32) = v33;
  *(v36 + 40) = v35;
  *(v36 + 41) = BYTE1(v35) & 1;
  *(v36 + 48) = v134;
  *(v36 + 56) = v3;
  v132 = v36;
  v133 = v29;

  v134 = v7;
  v37 = v7;
  v38 = v135;
  v39 = static EmergencyUtils.requiresEmergencyConfirmation(intent:intentResponse:)(v37, v135);
  v131 = v1;
  if (v39)
  {
    v40 = (v1 + *(*v1 + class metadata base offset for PhoneCallBaseCatTemplatingService + 72));
    v41 = v40[4];
    __swift_project_boxed_opaque_existential_1(v40, v40[3]);
    v42 = OUTLINED_FUNCTION_40_0();
    if (v43(v42, v41))
    {
      CurrentRequest.responseMode.getter();

      v44 = 0;
    }

    else
    {
      v44 = 1;
    }

    v61 = v130;
    __swift_storeEnumTagSinglePayload(v27, v44, 1, v130);
    static ResponseMode.voiceOnly.getter();
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v61);
    v62 = *(v129 + 48);
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v27, v18, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v24, &v18[v62], &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    OUTLINED_FUNCTION_37_0(v18);
    if (v65)
    {
      OUTLINED_FUNCTION_9_20(v24);
      OUTLINED_FUNCTION_9_20(v27);
      OUTLINED_FUNCTION_37_0(&v18[v62]);
      if (v65)
      {
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v18, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
        v63 = v131;
LABEL_35:
        v79 = *(v63 + direct field offset for StartCallCatTemplatingService.startCallCatFamily);
        v80 = swift_allocObject();
        v81 = v134;
        *(v80 + 16) = v134;
        *(v80 + 24) = v38;
        v82 = OUTLINED_FUNCTION_7_83(v80);
        *(v82 + 48) = v132;
        v83 = *(*v79 + class metadata base offset for StartCallCATs + 1088);
        v84 = v38;

        v85 = v81;
        v83(partial apply for closure #1 in StartCallCatTemplatingService.makeIntentConfirmationDialog(app:intent:intentResponse:_:), v80);

        goto LABEL_72;
      }
    }

    else
    {
      v64 = v127;
      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v18, v127, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
      OUTLINED_FUNCTION_37_0(&v18[v62]);
      if (!v65)
      {
        v75 = v128;
        v76 = &v18[v62];
        v77 = v126;
        (*(v128 + 32))(v126, v76, v61);
        lazy protocol witness table accessor for type ResponseMode and conformance ResponseMode(&lazy protocol witness table cache variable for type ResponseMode and conformance ResponseMode, &type metadata accessor for ResponseMode, &protocol conformance descriptor for ResponseMode);
        LODWORD(v137) = dispatch thunk of static Equatable.== infix(_:_:)();
        v78 = *(v75 + 8);
        v78(v77, v61);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v24, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v27, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
        v78(v64, v61);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v18, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
        v63 = v131;
        if (v137)
        {
          goto LABEL_35;
        }

LABEL_33:
        v66 = *(v63 + direct field offset for StartCallCatTemplatingService.startCallCatFamily);
        v67 = v134;
        _s27PhoneCallFlowDelegatePlugin0a5StartB6IntentC6intent21isRelationshipRequestAcA07CallingG0_p_SbtcfCTf4enn_nSo07INStartbG0C_Tt1g5();
        v137 = v68;
        type metadata accessor for SirikitDeviceState();
        outlined init with copy of SignalProviding(v63 + *(*v63 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40), v138);
        v69 = SirikitDeviceState.__allocating_init(from:)();
        v70 = swift_allocObject();
        *(v70 + 16) = v67;
        *(v70 + 24) = v38;
        v71 = OUTLINED_FUNCTION_7_83(v70);
        *(v71 + 48) = v132;
        v72 = *(*v66 + class metadata base offset for StartCallCATs + 1056);
        v73 = v38;

        v74 = v67;
        v72(v137, v69, 0, partial apply for closure #2 in StartCallCatTemplatingService.makeIntentConfirmationDialog(app:intent:intentResponse:_:), v70);

LABEL_72:

        OUTLINED_FUNCTION_65();
        return;
      }

      OUTLINED_FUNCTION_9_20(v24);
      OUTLINED_FUNCTION_9_20(v27);
      (*(v128 + 8))(v64, v61);
    }

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v18, &_s13SiriUtilities12ResponseModeVSg_ADtMd, &_s13SiriUtilities12ResponseModeVSg_ADtMR);
    v63 = v131;
    goto LABEL_33;
  }

  if (v38)
  {
    v45 = [v38 confirmationReason];
    if (v45 == _INStartCallIntentConfirmationReasonHasRestrictedContacts)
    {
      v46 = outlined bridged method (pb) of @objc INStartCallIntentResponse.restrictedContacts.getter(v38);
      if (v46)
      {
        specialized Array.count.getter(v46);
        OUTLINED_FUNCTION_40_0();

        if (v3)
        {
          v47 = outlined bridged method (pb) of @objc INStartCallIntentResponse.restrictedContacts.getter(v38);
          v48 = _swiftEmptyArrayStorage;
          if (v47)
          {
            v49 = v47;
            v126 = _swiftEmptyArrayStorage;
            v140 = _swiftEmptyArrayStorage;
            v129 = specialized Array.count.getter(v47);
            v130 = 0;
            v50 = 0;
            v127 = v49 & 0xFFFFFFFFFFFFFF8;
            v128 = v49 & 0xC000000000000001;
            v51 = (v125 + 8);
            while (1)
            {
              if (v129 == v50)
              {

                v38 = v135;
                v48 = v126;
                goto LABEL_38;
              }

              if (v128)
              {
                v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v50 >= *(v127 + 16))
                {
                  goto LABEL_74;
                }

                v52 = *(v49 + 8 * v50 + 32);
              }

              v53 = v52;
              v54 = v50 + 1;
              if (__OFADD__(v50, 1))
              {
                break;
              }

              type metadata accessor for PhonePerson(0);
              static Device.current.getter();
              v35 = v139;
              __swift_project_boxed_opaque_existential_1(v138, v139);
              v55 = v136;
              OUTLINED_FUNCTION_109();
              dispatch thunk of DeviceState.siriLocale.getter();
              __swift_destroy_boxed_opaque_existential_1(v138);
              v56 = static PhonePerson.make(phonePerson:options:locale:)(v53, 0, v55);

              (*v51)(v55, v137);
              ++v50;
              if (v56)
              {
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                OUTLINED_FUNCTION_8_65();
                if (v57)
                {
                  OUTLINED_FUNCTION_34_25();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v126 = v140;
                v50 = v54;
              }
            }

            __break(1u);
LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
LABEL_78:
            __break(1u);
          }

          else
          {
            v130 = 0;
LABEL_38:
            v86 = type metadata accessor for PhonePersonList();
            v127 = PhonePersonList.__allocating_init(list:)(v48);
            v87 = outlined bridged method (pb) of @objc INStartCallIntent.contacts.getter(v134);
            v88 = _swiftEmptyArrayStorage;
            if (v87)
            {
              v124 = v86;
              v126 = _swiftEmptyArrayStorage;
              v138[0] = _swiftEmptyArrayStorage;
              v89 = specialized Array.count.getter(v87);
              v90 = 0;
              v35 = v87 & 0xFFFFFFFFFFFFFF8;
              while (v89 != v90)
              {
                if ((v87 & 0xC000000000000001) != 0)
                {
                  v91 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v90 >= *(&dword_10 + (v87 & 0xFFFFFFFFFFFFFF8)))
                  {
                    goto LABEL_76;
                  }

                  v91 = *(v87 + 8 * v90 + 32);
                }

                v92 = v91;
                if (__OFADD__(v90, 1))
                {
                  goto LABEL_75;
                }

                v93 = outlined bridged method (pb) of @objc INStartCallIntentResponse.restrictedContacts.getter(v38);
                if (v93)
                {
                  v94 = v93;
                  v140 = v92;
                  __chkstk_darwin(v93);
                  *(&v124 - 2) = &v140;
                  v95 = v130;
                  specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v124 - 4), v94);
                  v97 = v96;
                  v130 = v95;

                  if (v97)
                  {
                  }

                  else
                  {
                    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                    specialized ContiguousArray._endMutation()();
                  }

                  v38 = v135;
                }

                else
                {
                }

                ++v90;
              }

              v35 = v138[0];
              v140 = _swiftEmptyArrayStorage;
              v98 = specialized Array.count.getter(v138[0]);
              v128 = v35 & 0xC000000000000001;
              v129 = v98;
              v99 = (v125 + 8);

              v100 = 0;
              while (v129 != v100)
              {
                if (v128)
                {
                  v101 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v100 >= *(v35 + 16))
                  {
                    goto LABEL_78;
                  }

                  v101 = *(v35 + 8 * v100 + 32);
                }

                v102 = v101;
                v103 = v100 + 1;
                if (__OFADD__(v100, 1))
                {
                  goto LABEL_77;
                }

                type metadata accessor for PhonePerson(0);
                static Device.current.getter();
                __swift_project_boxed_opaque_existential_1(v138, v139);
                v104 = v35;
                v105 = v136;
                dispatch thunk of DeviceState.siriLocale.getter();
                __swift_destroy_boxed_opaque_existential_1(v138);
                v106 = static PhonePerson.make(phonePerson:options:locale:)(v102, 0, v105);

                v107 = v105;
                v35 = v104;
                (*v99)(v107, v137);
                ++v100;
                if (v106)
                {
                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  OUTLINED_FUNCTION_8_65();
                  if (v57)
                  {
                    OUTLINED_FUNCTION_34_25();
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  v126 = v140;
                  v100 = v103;
                }
              }

              v88 = v126;
            }

            else
            {
              v35 = 0;
            }

            PhonePersonList.__allocating_init(list:)(v88);
            if (!v35)
            {
              goto LABEL_71;
            }

            if (one-time initialization token for siriPhone == -1)
            {
LABEL_68:
              v108 = type metadata accessor for Logger();
              __swift_project_value_buffer(v108, static Logger.siriPhone);
              v109 = v135;

              v110 = Logger.logObject.getter();
              v111 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v110, v111))
              {
                v112 = swift_slowAlloc();
                v113 = swift_slowAlloc();
                v138[0] = v113;
                *v112 = 136315394;
                type metadata accessor for INPerson();
                v114 = Array.description.getter();
                v116 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v114, v115, v138);

                *(v112 + 4) = v116;
                *(v112 + 12) = 2080;
                v140 = outlined bridged method (pb) of @objc INStartCallIntentResponse.restrictedContacts.getter(v109);
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGSgMd, &_sSaySo8INPersonCGSgMR);
                v117 = String.init<A>(describing:)();
                v119 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v118, v138);

                *(v112 + 14) = v119;
                _os_log_impl(&dword_0, v110, v111, "User needs to confirm by Yes/No the updated contacts: %s because of the restricted contacts: %s", v112, 0x16u);
                swift_arrayDestroy();
                OUTLINED_FUNCTION_26_0(v113);
                OUTLINED_FUNCTION_52();
              }

              v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
              v138[0] = v35;
              NSObject.update(with:at:)(v138, 0x73746361746E6F63, 0xE800000000000000);
              __swift_destroy_boxed_opaque_existential_1(v138);
LABEL_71:
              v120 = v134;
              _s27PhoneCallFlowDelegatePlugin0a5StartB6IntentC6intent21isRelationshipRequestAcA07CallingG0_p_SbtcfCTf4enn_nSo07INStartbG0C_Tt1g5();
              OUTLINED_FUNCTION_35_0();
              v122 = *(v121 + class metadata base offset for StartCallCATs + 1120);

              v123 = OUTLINED_FUNCTION_55();
              v122(v123);

              goto LABEL_72;
            }
          }

          OUTLINED_FUNCTION_0_6();
          swift_once();
          goto LABEL_68;
        }
      }
    }
  }

  v58 = v134;
  _s27PhoneCallFlowDelegatePlugin0a5StartB6IntentC6intent21isRelationshipRequestAcA07CallingG0_p_SbtcfCTf4enn_nSo07INStartbG0C_Tt1g5();
  OUTLINED_FUNCTION_35_0();
  (*(v59 + class metadata base offset for StartCallCATs + 1024))();

  OUTLINED_FUNCTION_65();
}

void closure #1 in StartCallCatTemplatingService.makeIntentConfirmationDialog(app:intent:intentResponse:_:)()
{
  OUTLINED_FUNCTION_66();
  v30 = v1;
  v31 = v0;
  v3 = v2;
  v5 = v4;
  type metadata accessor for BehaviorAfterSpeaking();
  OUTLINED_FUNCTION_7();
  v28 = v7;
  v29 = v6;
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  v27 = v9 - v8;
  OUTLINED_FUNCTION_15_0();
  v10 = type metadata accessor for TemplatingResult();
  OUTLINED_FUNCTION_7();
  v26 = v11;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_4();
  v15 = v14 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_12_5();
  v19 = (v17 - v18);
  __chkstk_darwin(v20);
  v22 = (&v26 - v21);
  v23 = OUTLINED_FUNCTION_55();
  if ((static EmergencyUtils.requiresEmergencyConfirmation(intent:intentResponse:)(v23, v24) & 1) != 0 && (static EmergencyUtils.shouldOpenMicForEmergency(intent:deviceState:)(v3) & 1) == 0)
  {
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v5, v19, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *v22 = *v19;
    }

    else
    {
      v25 = v26;
      (*(v26 + 32))(v15, v19, v10);
      TemplatingResult.templateIdentifier.getter();
      TemplatingResult.speak.getter();
      TemplatingResult.print.getter();
      (*(v28 + 104))(v27, enum case for BehaviorAfterSpeaking.continueWithoutListening(_:), v29);
      OUTLINED_FUNCTION_55();
      TemplatingResult.init(templateIdentifier:speak:print:behaviorAfterSpeaking:)();
      (*(v25 + 8))(v15, v10);
    }

    swift_storeEnumTagMultiPayload();
    v31(v22);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v22, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  }

  else
  {
    v31(v5);
  }

  OUTLINED_FUNCTION_65();
}

uint64_t StartCallCatTemplatingService.makeInterstitialDialog(app:intent:intentResponse:_:)()
{
  v4 = v0;
  OUTLINED_FUNCTION_24_43();
  static Signpost.event(_:)();
  v5 = outlined bridged method (pb) of @objc INIntent.intentId.getter(v2);
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    if (App.isFirstParty()() && !INStartCallIntent.isThirdPartyCallKitCallBack.getter())
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v21 = v7;
      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static Logger.siriPhone);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_0, v10, v11, "Eagerly calling IntentHandled", v12, 2u);
        OUTLINED_FUNCTION_26_0(v12);
      }

      v13 = *(v4 + direct field offset for StartCallCatTemplatingService.operationManager);
      v14 = swift_allocObject();
      v14[2] = v4;
      v14[3] = v3;
      v14[4] = v2;
      v14[5] = v1;
      v20 = *(*v13 + 160);
      v15 = v1;

      v16 = v2;
      v20(v21, v8, partial apply for closure #1 in StartCallCatTemplatingService.makeInterstitialDialog(app:intent:intentResponse:_:), v14);
    }

    else
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB24BaseCatTemplatingServiceCySo07INStartB6IntentCSo0jbK8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0aB24BaseCatTemplatingServiceCySo07INStartB6IntentCSo0jbK8ResponseCGMR);
  method lookup function for DucTemplatingService();
  v17 = OUTLINED_FUNCTION_25_41();

  return v18(v17);
}

uint64_t StartCallCatTemplatingService.makeIntentHandledDialog(app:intent:intentResponse:_:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  static Signpost.begin(_:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  OUTLINED_FUNCTION_102_0();
  v19 = swift_allocObject();
  *(v19 + 16) = v12;
  *(v19 + 24) = v14;
  *(v19 + 32) = v16;
  *(v19 + 40) = v18;
  *(v19 + 41) = HIBYTE(v18) & 1;
  *(v19 + 48) = a4;
  *(v19 + 56) = a5;
  v20 = *(v6 + direct field offset for StartCallCatTemplatingService.operationManager);

  v28 = outlined bridged method (pb) of @objc INIntent.intentId.getter(a2);
  v22 = v21;
  OUTLINED_FUNCTION_102_0();
  v23 = swift_allocObject();
  v23[2] = closure #1 in Signpost.OpenSignpost.end(_:)partial apply;
  v23[3] = v19;
  v23[4] = v6;
  v23[5] = a1;
  v23[6] = a2;
  v23[7] = a3;
  v24 = *(*v20 + 176);
  v25 = a3;

  v26 = a2;
  v24(v28, v22, partial apply for closure #1 in StartCallCatTemplatingService.makeIntentHandledDialog(app:intent:intentResponse:_:), v23);
}

void closure #1 in StartCallCatTemplatingService.makeIntentHandledDialog(app:intent:intentResponse:_:)(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20[0] = a7;
  v20[1] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGSgMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin(v12);
  v14 = v20 - v13;
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(a1, v11, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGSgMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGSgMR);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v11, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGSgMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGSgMR);
    StartCallCatTemplatingService.makeIntentHandledDialogHelper(app:intent:intentResponse:_:)();
  }

  else
  {
    v15 = a2;
    outlined init with take of Result<TemplatingResult, Error>(v11, v14);
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.siriPhone);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "Retrieving result from eagerly calling IntentHandled", v19, 2u);
    }

    v15(v14);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v14, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  }
}

void StartCallCatTemplatingService.makeIntentHandledDialogHelper(app:intent:intentResponse:_:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v109 = v10;
  v11 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v11 - 8);
  OUTLINED_FUNCTION_4();
  v108 = v13 - v12;
  OUTLINED_FUNCTION_15_0();
  type metadata accessor for DispatchTimeInterval();
  OUTLINED_FUNCTION_7();
  v105 = v15;
  v106 = v14;
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_4();
  v107 = (v17 - v16);
  OUTLINED_FUNCTION_15_0();
  type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v102 = v19;
  v103 = v18;
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_4();
  v101 = v21 - v20;
  static Signpost.begin(_:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  OUTLINED_FUNCTION_102_0();
  v30 = swift_allocObject();
  *(v30 + 16) = v23;
  *(v30 + 24) = v25;
  *(v30 + 32) = v27;
  v31 = v9;
  *(v30 + 40) = v29;
  *(v30 + 41) = HIBYTE(v29) & 1;
  *(v30 + 48) = v5;
  *(v30 + 56) = v3;

  v32 = OUTLINED_FUNCTION_13_24();
  if (static EmergencyUtils.requiresEmergencyConfirmation(intent:intentResponse:)(v32, v33))
  {
    OUTLINED_FUNCTION_26_1();
    v35 = (v1 + *(v34 + class metadata base offset for PhoneCallBaseCatTemplatingService + 72));
    v36 = v35[4];
    __swift_project_boxed_opaque_existential_1(v35, v35[3]);
    v37 = OUTLINED_FUNCTION_40_0();
    v39 = v38(v37, v36);
    v40 = (*(*v39 + 120))(1);

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.siriPhone);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 67109120;
      *(v44 + 4) = v40 & 1;
      _os_log_impl(&dword_0, v42, v43, "#StartCallCatTemplatingService is emergency confirmation reprompt: %{BOOL}d", v44, 8u);
      v45 = v44;
      v31 = v9;
      OUTLINED_FUNCTION_26_0(v45);
    }

    if (v40)
    {
      v46 = v31;
      v47 = v35[3];
      v48 = v35[4];
      __swift_project_boxed_opaque_existential_1(v35, v47);
      v49 = *(v48 + 224);
      v50 = v48;
      v31 = v46;
      v51 = v49(v47, v50);
      (*(*v51 + 128))(v51);
    }

    v52 = *(v1 + direct field offset for StartCallCatTemplatingService.startCallCatFamily);
    v53 = v31;
    _s27PhoneCallFlowDelegatePlugin0a5StartB6IntentC6intent21isRelationshipRequestAcA07CallingG0_p_SbtcfCTf4enn_nSo07INStartbG0C_Tt1g5();
    v55 = v54;
    v56 = *(*v1 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40);
    v57 = 0;
    if (static EmergencyUtils.requiresEmergencyConfirmation(intent:intentResponse:)(v53, v7))
    {
      v57 = static EmergencyUtils.shouldOpenMicForEmergency(intent:deviceState:)(v53);
    }

    type metadata accessor for SirikitDeviceState();
    outlined init with copy of SignalProviding(v1 + v56, v111);
    v58 = SirikitDeviceState.__allocating_init(from:)();
    (*(*v52 + class metadata base offset for StartCallCATs + 1184))(v55, v57 & 1, 0, v40 & 1, v58, closure #1 in Signpost.OpenSignpost.end(_:)partial apply, v30);

    goto LABEL_36;
  }

  if (INStartCallIntent.isThirdPartyCallKitCallBack.getter() && v7 && (INStartCallIntentResponse.thirdPartyCallKitCallBackBundleId.getter(), v59))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    __swift_project_value_buffer(v60, static Logger.siriPhone);
    OUTLINED_FUNCTION_109();

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v111[0] = v64;
      *v63 = 136315138;
      v65 = OUTLINED_FUNCTION_13_24();
      *(v63 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, v67);
      _os_log_impl(&dword_0, v61, v62, "CallKitCallBack case: using bundleId from userActivity launchId: %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v64);
      OUTLINED_FUNCTION_26_0(v64);
      OUTLINED_FUNCTION_26_0(v63);
    }

    type metadata accessor for App();
    OUTLINED_FUNCTION_13_24();
    v68 = App.__allocating_init(appIdentifier:)();
  }

  else
  {
    v68 = v109;
  }

  v69 = *(*v1 + class metadata base offset for StartCallCatTemplatingService + 48);

  v69(v9);
  v100 = v9;
  _s27PhoneCallFlowDelegatePlugin0a5StartB6IntentC6intent21isRelationshipRequestAcA07CallingG0_p_SbtcfCTf4enn_nSo07INStartbG0C_Tt1g5();
  v104 = v70;
  v110 = v68;
  if (!App.isFirstParty()())
  {
    goto LABEL_31;
  }

  v71 = App.appIdentifier.getter();
  if (!v72)
  {

    goto LABEL_29;
  }

  if (v71 == 0xD000000000000010 && v72 == 0x8000000000458F10)
  {

LABEL_31:

LABEL_32:
    OUTLINED_FUNCTION_26_1();
    v78 = (v1 + *(v77 + class metadata base offset for PhoneCallBaseCatTemplatingService + 48));
    v79 = v78[3];
    v80 = v78[4];
    __swift_project_boxed_opaque_existential_1(v78, v79);
    OUTLINED_FUNCTION_26_1();
    v82 = OUTLINED_FUNCTION_9_80(v81 + class metadata base offset for PhoneCallBaseCatTemplatingService);
    __swift_project_boxed_opaque_existential_1(v82, v82[3]);
    dispatch thunk of DeviceState.siriLocale.getter();
    v75 = (*(v80 + 16))(v110, v101, v79, v80);
    v76 = v83;
    (*(v102 + 8))(v101, v103);
    goto LABEL_33;
  }

  v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v74)
  {
    goto LABEL_32;
  }

LABEL_29:
  v75 = 0;
  v76 = 0;
LABEL_33:
  type metadata accessor for SirikitDeviceState();
  v84 = OUTLINED_FUNCTION_9_80(*v1 + class metadata base offset for PhoneCallBaseCatTemplatingService);
  outlined init with copy of SignalProviding(v84, v111);
  v85 = SirikitDeviceState.__allocating_init(from:)();
  *v107 = 500;
  (*(v105 + 104))(v107, enum case for DispatchTimeInterval.milliseconds(_:), v106);
  static DispatchQoS.userInteractive.getter();
  type metadata accessor for TemplatingParallelizer(0);
  swift_allocObject();
  v86 = TemplatingParallelizer.init(name:timeout:qos:)("IntentHandled", 13, 2, v107, v108);
  v87 = swift_allocObject();
  v87[2] = v100;
  v87[3] = v1;
  v87[4] = v104;
  v87[5] = v85;
  v87[6] = v75;
  v87[7] = v76;
  v87[8] = v110;
  v88 = *(*v86 + 176);
  v89 = v100;

  v88(partial apply for closure #1 in StartCallCatTemplatingService.makeIntentHandledDialogHelper(app:intent:intentResponse:_:), v87);

  outlined init with copy of SignalProviding(v1 + *(*v1 + class metadata base offset for PhoneCallBaseCatTemplatingService + 72), &v112);
  LOBYTE(v111[0]) = 1;
  v111[1] = 0xD000000000000013;
  v111[2] = 0x8000000000455210;
  v90 = specialized SiriPhoneHintGenerator.generateHint()();
  v92 = v91;
  v94 = v93;
  v96 = v95;
  outlined destroy of HangUpTipGenerator(v111);
  if (v92)
  {
    OUTLINED_FUNCTION_102_0();
    v97 = swift_allocObject();
    v97[2] = v1;
    v97[3] = v85;
    v97[4] = v90;
    v97[5] = v92;
    v97[6] = v94;
    v97[7] = v96;

    v88(partial apply for closure #2 in StartCallCatTemplatingService.makeIntentHandledDialogHelper(app:intent:intentResponse:_:), v97);
  }

  v98 = swift_allocObject();
  *(v98 + 16) = closure #1 in Signpost.OpenSignpost.end(_:)partial apply;
  *(v98 + 24) = v30;
  v99 = *(*v86 + 184);

  v99(partial apply for closure #3 in StartCallCatTemplatingService.makeIntentHandledDialogHelper(app:intent:intentResponse:_:), v98);

LABEL_36:

  OUTLINED_FUNCTION_65();
}

id closure #1 in StartCallCatTemplatingService.makeIntentHandledDialogHelper(app:intent:intentResponse:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49 = a7;
  v50 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v14 - 8);
  v16 = &v44 - v15;
  v55 = type metadata accessor for Locale();
  v17 = *(v55 - 8);
  __chkstk_darwin(v55);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = outlined bridged method (pb) of @objc INStartCallIntent.contacts.getter(a3);
  v51 = a5;
  if (v20)
  {
    v21 = v20;
    v44 = a8;
    v45 = a2;
    v46 = v16;
    v47 = a1;
    v48 = a6;
    v58 = _swiftEmptyArrayStorage;
    result = specialized Array.count.getter(v20);
    v56 = result;
    v23 = 0;
    v53 = v21 & 0xFFFFFFFFFFFFFF8;
    v54 = v21 & 0xC000000000000001;
    v52 = (v17 + 8);
    v24 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v56 == v23)
      {

        v29 = v47;
        v28 = v48;
        a2 = v45;
        v16 = v46;
        a8 = v44;
        v30 = v24;
        goto LABEL_15;
      }

      if (v54)
      {
        result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v23 >= *(v53 + 16))
        {
          goto LABEL_29;
        }

        result = *(v21 + 8 * v23 + 32);
      }

      v25 = result;
      v26 = (v23 + 1);
      if (__OFADD__(v23, 1))
      {
        break;
      }

      type metadata accessor for PhonePerson(0);
      static Device.current.getter();
      __swift_project_boxed_opaque_existential_1(v57, v57[3]);
      dispatch thunk of DeviceState.siriLocale.getter();
      __swift_destroy_boxed_opaque_existential_1(v57);
      v27 = static PhonePerson.make(phonePerson:options:locale:)(v25, 0, v19);

      result = (*v52)(v19, v55);
      ++v23;
      if (v27)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(&dword_10 + (v58 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v58 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v24 = v58;
        v23 = v26;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    v29 = a1;
    v28 = a6;
    v30 = _swiftEmptyArrayStorage;
LABEL_15:
    type metadata accessor for PhonePersonList.Builder();
    v31 = swift_allocObject();
    *(v31 + 16) = _swiftEmptyArrayStorage;
    swift_beginAccess();
    *(v31 + 16) = v30;
    type metadata accessor for PhonePersonList();
    swift_allocObject();
    v32 = PhonePersonList.init(builder:)(v31);
    v33 = *(v50 + direct field offset for StartCallCatTemplatingService.startCallCatFamily);
    if (a8)
    {

      SpeakableString.init(print:speak:)();
      v34 = type metadata accessor for SpeakableString();
      __swift_storeEnumTagSinglePayload(v16, 0, 1, v34);
    }

    else
    {
      v35 = type metadata accessor for SpeakableString();
      __swift_storeEnumTagSinglePayload(v16, 1, 1, v35);
    }

    v36 = v28;
    v37 = App.isFirstParty()();
    v38 = App.appIdentifier.getter();
    v40 = v29;
    if (v39)
    {
      v41 = v38 == 0xD000000000000010 && v39 == 0x8000000000458F10;
      v42 = v51;
      if (v41)
      {
        v43 = 1;
      }

      else
      {
        v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v43 = 0;
      v42 = v51;
    }

    (*(*v33 + class metadata base offset for StartCallCATs + 1152))(v42, v32, v36, v16, v37, v43 & 1, 0, v40, a2);

    return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  }

  return result;
}

uint64_t closure #2 in StartCallCatTemplatingService.makeIntentHandledDialogHelper(app:intent:intentResponse:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v16 - 8);
  v18 = &v24 - v17;
  v19 = *(a3 + direct field offset for StartCallCatTemplatingService.startCallCatFamily);
  String.toSpeakableString.getter();
  v20 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v20);
  v21 = swift_allocObject();
  v21[2] = a5;
  v21[3] = a6;
  v21[4] = a7;
  v21[5] = a8;
  v21[6] = a1;
  v21[7] = a2;
  v22 = *(*v19 + class metadata base offset for StartCallCATs + 992);

  v22(a4, v18, partial apply for closure #1 in closure #2 in StartCallCatTemplatingService.makeIntentHandledDialogHelper(app:intent:intentResponse:_:), v21);

  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v18, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
}

void StartCallCatTemplatingService.makeFailureHandlingIntentDialog(app:intent:intentResponse:_:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v91 = v4;
  v92 = v5;
  v7 = v6;
  type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v9 = v8;
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v14 - 8);
  OUTLINED_FUNCTION_12_5();
  v17 = v15 - v16;
  *&v19 = __chkstk_darwin(v18).n128_u64[0];
  v21 = &v83 - v20;
  switch([v7 code])
  {
    case 6uLL:
      type metadata accessor for SirikitDeviceState();
      OUTLINED_FUNCTION_26_1();
      v23 = (v1 + *(v22 + class metadata base offset for PhoneCallBaseCatTemplatingService + 72));
      v24 = v23[3];
      v25 = v23[4];
      __swift_project_boxed_opaque_existential_1(v23, v24);
      (*(v25 + 8))(v94, v24, v25);
      SirikitDeviceState.__allocating_init(from:)();
      OUTLINED_FUNCTION_23_38();
      (*(v26 + class metadata base offset for StartCallCATs + 736))();
      OUTLINED_FUNCTION_65();

      return;
    case 7uLL:
      v85 = v3;
      OUTLINED_FUNCTION_26_1();
      v48 = (v1 + *(v47 + class metadata base offset for PhoneCallBaseCatTemplatingService + 48));
      v91 = v48[3];
      v90 = __swift_project_boxed_opaque_existential_1(v48, v91);
      OUTLINED_FUNCTION_26_1();
      v50 = OUTLINED_FUNCTION_9_80(v49 + class metadata base offset for PhoneCallBaseCatTemplatingService);
      __swift_project_boxed_opaque_existential_1(v50, v50[3]);
      dispatch thunk of DeviceState.siriLocale.getter();
      v51 = OUTLINED_FUNCTION_12_65();
      v52(v51);
      v54 = v53;
      v55 = OUTLINED_FUNCTION_104();
      v56(v55);
      if (v54)
      {
        OUTLINED_FUNCTION_35_27();
        v57 = 0;
      }

      else
      {
        v57 = 1;
      }

      v74 = v85;
      v75 = type metadata accessor for SpeakableString();
      __swift_storeEnumTagSinglePayload(v17, v57, 1, v75);
      OUTLINED_FUNCTION_23_38();
      (*(v76 + class metadata base offset for StartCallCATs + 768))(v17, v92, v74);
      v73 = v17;
      goto LABEL_32;
    case 8uLL:
      v39 = static EmergencyUtils.requiresEmergencyConfirmation(intent:intentResponse:)(v91, v7);
      v40 = *(v1 + direct field offset for StartCallCatTemplatingService.startCallCatFamily);
      type metadata accessor for SirikitDeviceState();
      OUTLINED_FUNCTION_26_1();
      v42 = OUTLINED_FUNCTION_9_80(v41 + class metadata base offset for PhoneCallBaseCatTemplatingService);
      outlined init with copy of SignalProviding(v42, v94);
      v43 = SirikitDeviceState.__allocating_init(from:)();
      (*(*v40 + class metadata base offset for StartCallCATs + 608))(v43, v39 & 1, v92, v3);
      goto LABEL_14;
    case 9uLL:
      OUTLINED_FUNCTION_23_38();
      (*(v44 + class metadata base offset for StartCallCATs + 896))(v92, v3);
      goto LABEL_33;
    case 0xAuLL:
      v85 = v3;
      OUTLINED_FUNCTION_26_1();
      v29 = (v1 + *(v28 + class metadata base offset for PhoneCallBaseCatTemplatingService + 48));
      v91 = v29[3];
      v90 = __swift_project_boxed_opaque_existential_1(v29, v91);
      OUTLINED_FUNCTION_26_1();
      v31 = OUTLINED_FUNCTION_9_80(v30 + class metadata base offset for PhoneCallBaseCatTemplatingService);
      __swift_project_boxed_opaque_existential_1(v31, v31[3]);
      OUTLINED_FUNCTION_109();
      dispatch thunk of DeviceState.siriLocale.getter();
      v32 = OUTLINED_FUNCTION_12_65();
      v33(v32);
      v35 = v34;
      v36 = OUTLINED_FUNCTION_104();
      v37(v36);
      if (v35)
      {
        OUTLINED_FUNCTION_35_27();
        v38 = 0;
      }

      else
      {
        v38 = 1;
      }

      v70 = v85;
      v71 = type metadata accessor for SpeakableString();
      __swift_storeEnumTagSinglePayload(v21, v38, 1, v71);
      OUTLINED_FUNCTION_23_38();
      (*(v72 + class metadata base offset for StartCallCATs + 640))(v21, v92, v70);
      v73 = v21;
LABEL_32:
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v73, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      goto LABEL_33;
    case 0xBuLL:
    case 0xCuLL:
      goto LABEL_13;
    default:
      v45 = [v7 code];
      if (_INStartCallIntentResponseCodeFailureScreenTimeRestrictionEnabled == v45)
      {
        OUTLINED_FUNCTION_23_38();
        (*(v46 + class metadata base offset for StartCallCATs + 864))(v92, v3);
LABEL_33:
        OUTLINED_FUNCTION_65();
        return;
      }

      if (_INStartCallIntentResponseCodeFailureDownTimeRestrictionEnabled != v45)
      {
LABEL_13:
        type metadata accessor for SirikitDeviceState();
        OUTLINED_FUNCTION_26_1();
        v59 = OUTLINED_FUNCTION_9_80(v58 + class metadata base offset for PhoneCallBaseCatTemplatingService);
        outlined init with copy of SignalProviding(v59, v94);
        SirikitDeviceState.__allocating_init(from:)();
        OUTLINED_FUNCTION_20_48();
        OUTLINED_FUNCTION_18_38();
        v60();
LABEL_14:

        goto LABEL_33;
      }

      v61 = outlined bridged method (pb) of @objc INStartCallIntent.contacts.getter(v91);
      if (!v61)
      {
        goto LABEL_36;
      }

      v62 = v61;
      v84 = _swiftEmptyArrayStorage;
      v85 = v3;
      v93 = _swiftEmptyArrayStorage;
      v63 = specialized Array.count.getter(v61);
      v64 = 0;
      v89 = v62 & 0xC000000000000001;
      v90 = v63;
      v87 = v9 + 8;
      v88 = v62 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v90 == v64)
        {

          v3 = v85;
LABEL_36:
          v77 = *(v1 + direct field offset for StartCallCatTemplatingService.startCallCatFamily);
          v78 = v91;
          _s27PhoneCallFlowDelegatePlugin0a5StartB6IntentC6intent21isRelationshipRequestAcA07CallingG0_p_SbtcfCTf4enn_nSo07INStartbG0C_Tt1g5();
          v80 = v79;
          type metadata accessor for PhonePersonList();
          v81 = OUTLINED_FUNCTION_109();
          v82 = PhonePersonList.__allocating_init(list:)(v81);
          (*(*v77 + class metadata base offset for StartCallCATs + 800))(v80, v82, v92, v3);

          goto LABEL_14;
        }

        if (v89)
        {
          v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v64 >= *(v88 + 16))
          {
            goto LABEL_38;
          }

          v65 = *(v62 + 8 * v64 + 32);
        }

        v66 = v65;
        if (__OFADD__(v64, 1))
        {
          break;
        }

        v86 = (v64 + 1);
        type metadata accessor for PhonePerson(0);
        static Device.current.getter();
        __swift_project_boxed_opaque_existential_1(v94, v94[3]);
        dispatch thunk of DeviceState.siriLocale.getter();
        __swift_destroy_boxed_opaque_existential_1(v94);
        v67 = static PhonePerson.make(phonePerson:options:locale:)(v66, 0, v13);

        v68 = OUTLINED_FUNCTION_104();
        v69(v68);
        ++v64;
        if (v67)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*(&dword_10 + (v93 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v93 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          OUTLINED_FUNCTION_55();
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v84 = v93;
          v64 = v86;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
      return;
  }
}

uint64_t StartCallCatTemplatingService.makeGenericErrorDialog(app:_:)()
{
  type metadata accessor for SirikitDeviceState();
  OUTLINED_FUNCTION_35_0();
  v1 = OUTLINED_FUNCTION_11_5(v0 + class metadata base offset for PhoneCallBaseCatTemplatingService);
  outlined init with copy of SignalProviding(v1, v4);
  SirikitDeviceState.__allocating_init(from:)();
  OUTLINED_FUNCTION_26_1();
  (*(v2 + class metadata base offset for StartCallCATs + 960))();
}

Swift::Bool __swiftcall StartCallCatTemplatingService.isRelationshipRequest(intent:)(INStartCallIntent intent)
{
  v2 = outlined bridged method (pb) of @objc INStartCallIntent.contacts.getter(intent.super.super.isa);
  v3 = v2;
  if (v2)
  {
    v4 = specialized Array.count.getter(v2);
    v5 = 0;
    while (1)
    {
      if (v4 == v5)
      {

        LOBYTE(v3) = 0;
        goto LABEL_12;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_23;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v8 = [v6 relationship];

      ++v5;
      if (v8)
      {

        LOBYTE(v3) = 1;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_12:
  (*(*v1 + class metadata base offset for PhoneCallBaseCatTemplatingService + 88))(&v14);
  if (v15)
  {
    outlined init with take of SPHConversation(&v14, v16);
    if (v3)
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v16, v16[3]);
      LOBYTE(v3) = PhoneCallNLIntent.hasRelationship()();
    }

    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v14, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  }

  if (one-time initialization token for siriPhone != -1)
  {
LABEL_24:
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.siriPhone);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = v3 & 1;
    _os_log_impl(&dword_0, v10, v11, "#StartCallCatTemplatingService isRelationshipRequest: %{BOOL}d", v12, 8u);
    OUTLINED_FUNCTION_52();
  }

  return v3 & 1;
}

uint64_t StartCallCatTemplatingService.getContactsInferenceSource(intent:featureManager:)(void *a1)
{
  v1 = outlined bridged method (pb) of @objc INStartCallIntent.contacts.getter(a1);
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  if (specialized Array.count.getter(v1) != 1 || ((specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v2 & 0xC000000000000001) == 0, v2), (v2 & 0xC000000000000001) != 0) ? (v3 = specialized _ArrayBuffer._getElementSlowPath(_:)()) : (v3 = *(v2 + 32)), (v4 = outlined bridged method (ob) of @objc INPerson.siriMatches.getter(v3)) == 0))
  {

    return 1;
  }

  v5 = v4;
  v6 = v4 & 0xC000000000000001;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v4 & 0xC000000000000001) == 0, v4);
  if (v6)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v7 = *(v5 + 32);
  }

  v8 = v7;

  if (!INPerson.isProvidedByPlus.getter())
  {

    return 1;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.siriPhone);
  OUTLINED_FUNCTION_40_0();

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    if ((v2 & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v14 = *(v2 + 32);
    }

    v16 = v14;

    *(v12 + 4) = v16;
    *v13 = v16;
    _os_log_impl(&dword_0, v10, v11, "#StartCallCatTemplatingService Found a contact that is inferred by PLUS: %@", v12, 0xCu);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_26_0(v13);
    OUTLINED_FUNCTION_52();
  }

  else
  {
  }

  return 0;
}

uint64_t StartCallCatTemplatingService.__ivar_destroyer()
{
}

uint64_t StartCallCatTemplatingService.deinit()
{
  v0 = specialized PhoneCallBaseCatTemplatingService.deinit();

  return v0;
}

uint64_t StartCallCatTemplatingService.__deallocating_deinit()
{
  StartCallCatTemplatingService.deinit();

  return swift_deallocClassInstance();
}

uint64_t outlined bridged method (ob) of @objc INPerson.siriMatches.getter(void *a1)
{
  v2 = [a1 siriMatches];

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for INPerson();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (pb) of @objc INStartCallIntentResponse.restrictedContacts.getter(void *a1)
{
  v1 = [a1 restrictedContacts];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for INPerson();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t specialized StartCallCatTemplatingService.init(sharedGlobals:startCallCats:displayTextCats:phoneCallCommonCats:unsupportedFlowCats:appInfoBuilder:operationManager:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v45 = a3;
  v46 = a4;
  v43 = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25DucTemplatingLocalContextVSgMd, &_s11SiriKitFlow25DucTemplatingLocalContextVSgMR);
  __chkstk_darwin(v16 - 8);
  v44 = &v37 - v17;
  v18 = type metadata accessor for Locale();
  v38 = *(v18 - 8);
  v39 = v18;
  __chkstk_darwin(v18);
  v37 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for CATOption();
  __chkstk_darwin(v20 - 8);
  v56[3] = a9;
  v56[4] = a10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);
  (*(*(a9 - 8) + 32))(boxed_opaque_existential_1, a6, a9);
  v40 = a2;
  v41 = a5;
  *(a8 + direct field offset for StartCallCatTemplatingService.startCallCatFamily) = a2;
  *(a8 + direct field offset for StartCallCatTemplatingService.unsupportedFlowCats) = a5;
  v42 = a7;
  *(a8 + direct field offset for StartCallCatTemplatingService.operationManager) = a7;
  outlined init with copy of SignalProviding(a1, v53);
  outlined init with copy of SignalProviding(v56, v52);
  type metadata accessor for StartCallCATs(0);

  static CATOption.defaultMode.getter();
  v22 = CATWrapper.__allocating_init(options:globals:)();
  v51[3] = &type metadata for LabelTemplatesProvider;
  v51[4] = &protocol witness table for LabelTemplatesProvider;
  v23 = swift_allocObject();
  v51[0] = v23;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0u;
  v24 = (a8 + *(*a8 + class metadata base offset for PhoneCallBaseCatTemplatingService + 16));
  *v24 = 0x3D65737561705C1BLL;
  v24[1] = 0xEC0000005C303532;
  v25 = a8 + *(*a8 + class metadata base offset for PhoneCallBaseCatTemplatingService + 56);
  *v25 = 0u;
  *(v25 + 1) = 0u;
  *(v25 + 4) = 0;
  outlined init with copy of SignalProviding(v53, a8 + *(*a8 + class metadata base offset for PhoneCallBaseCatTemplatingService + 72));
  v26 = v54;
  v27 = v55;
  __swift_project_boxed_opaque_existential_1(v53, v54);
  (*(v27 + 8))(&v49, v26, v27);
  v28 = *(*a8 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40);
  outlined init with take of SPHConversation(&v49, a8 + v28);
  v29 = v46;
  *(a8 + *(*a8 + class metadata base offset for PhoneCallBaseCatTemplatingService + 24)) = v45;
  *(a8 + *(*a8 + class metadata base offset for PhoneCallBaseCatTemplatingService + 32)) = v29;
  outlined init with copy of SignalProviding(v52, a8 + *(*a8 + class metadata base offset for PhoneCallBaseCatTemplatingService + 48));
  outlined init with copy of SignalProviding(v51, a8 + *(*a8 + class metadata base offset for PhoneCallBaseCatTemplatingService + 64));
  *(a8 + *(*a8 + class metadata base offset for PhoneCallBaseCatTemplatingService + 80)) = v22;
  outlined init with copy of SignalProviding(a8 + v28, &v49);
  __swift_project_boxed_opaque_existential_1(&v49, v50);

  v30 = v37;
  dispatch thunk of DeviceState.siriLocale.getter();
  v48[0] = Locale.identifier.getter();
  v48[1] = v31;
  v47[0] = 45;
  v47[1] = 0xE100000000000000;
  v48[5] = 95;
  v48[6] = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  (*(v38 + 8))(v30, v39);

  type metadata accessor for INIntentSlotValueType(0);
  lazy protocol witness table accessor for type ResponseMode and conformance ResponseMode(&lazy protocol witness table cache variable for type INIntentSlotValueType and conformance INIntentSlotValueType, type metadata accessor for INIntentSlotValueType, &protocol conformance descriptor for INIntentSlotValueType);
  Dictionary.init(dictionaryLiteral:)();
  v32 = v54;
  v33 = v55;
  __swift_project_boxed_opaque_existential_1(v53, v54);
  (*(v33 + 24))(v48, v32, v33);
  outlined init with copy of SignalProviding(a8 + v28, v47);
  v34 = type metadata accessor for DucTemplatingLocalContext();
  __swift_storeEnumTagSinglePayload(v44, 1, 1, v34);
  v35 = DucTemplatingService.init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:deviceState:localContext:)();

  __swift_destroy_boxed_opaque_existential_1(v43);
  __swift_destroy_boxed_opaque_existential_1(v52);
  __swift_destroy_boxed_opaque_existential_1(v56);
  __swift_destroy_boxed_opaque_existential_1(v51);
  __swift_destroy_boxed_opaque_existential_1(&v49);
  __swift_destroy_boxed_opaque_existential_1(v53);
  return v35;
}

uint64_t objectdestroy_18Tm()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for closure #1 in Signpost.OpenSignpost.end(_:)(uint64_t a1)
{
  if (*(v1 + 41))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return closure #1 in Signpost.OpenSignpost.end(_:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v2 | *(v1 + 40), *(v1 + 48));
}

uint64_t lazy protocol witness table accessor for type ResponseMode and conformance ResponseMode(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC34makeGenericConfirmationNLv3Context07SiriKitC00F6UpdateVyFZSo8INIntentC_So0P8ResponseCTt0g5Tm(uint64_t a1)
{
  NLContextUpdate.init()();
  PhoneCallNLConstants.canonicalName.getter(1);
  NLContextUpdate.weightedPromptTargetDomain.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_424FF0;
  v17 = String.uppercased()();
  v15 = 32;
  v16 = 0xE100000000000000;
  v13 = 95;
  v14 = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_30_38(&v15, &v13);

  v17._countAndFlagsBits = PhoneCallNLConstants.canonicalName.getter(6);
  v17._object = v2;
  v3._countAndFlagsBits = 0x2E65756C61562ELL;
  v3._object = 0xE700000000000000;
  String.append(_:)(v3);
  v4 = String.uppercased()();
  String.append(_:)(v4);

  object = v17._object;
  *(v1 + 32) = v17._countAndFlagsBits;
  *(v1 + 40) = object;
  v17 = String.uppercased()();
  v15 = 32;
  v16 = 0xE100000000000000;
  v13 = 95;
  v14 = 0xE100000000000000;
  OUTLINED_FUNCTION_30_38(&v15, &v13);

  v17._countAndFlagsBits = PhoneCallNLConstants.canonicalName.getter(6);
  v17._object = v6;
  v7._countAndFlagsBits = 0x2E65756C61562ELL;
  v7._object = 0xE700000000000000;
  String.append(_:)(v7);
  v8 = String.uppercased()();
  String.append(_:)(v8);

  v9 = v17._object;
  *(v1 + 48) = v17._countAndFlagsBits;
  *(v1 + 56) = v9;
  NLContextUpdate.weightedPromptResponseOptions.setter();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_424FD0;
  *(v10 + 32) = PhoneCallNLConstants.canonicalName.getter(6);
  *(v10 + 40) = v11;
  NLContextUpdate.weightedPromptResponseTargets.setter();
  return NLContextUpdate.weightedPromptStrict.setter();
}

uint64_t StartCallConfirmIntentFlowStrategy.__allocating_init(delegate:startCallCATsSimple:displayTextCATsSimple:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  *(result + 40) = 5;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  return result;
}

uint64_t _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC22makeSDAForConfirmation33_3C2ABB69DDB872D121E37A32A4E694A9LLSay12SiriNLUTypes0T29_Nlu_External_SystemDialogActVGSgyFZSo8INIntentC_So16INIntentResponseCTtg5()
{
  v80 = type metadata accessor for PhoneError(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v0);
  OUTLINED_FUNCTION_12_5();
  v79 = v1 - v2;
  __chkstk_darwin(v3);
  v78 = (v71 - v4);
  OUTLINED_FUNCTION_15_0();
  type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  OUTLINED_FUNCTION_7();
  v81 = v6;
  v82 = v5;
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v7);
  v9 = v71 - v8;
  type metadata accessor for Siri_Nlu_External_SystemOffered();
  OUTLINED_FUNCTION_7();
  v83 = v11;
  v84 = v10;
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v12);
  v85 = v71 - v13;
  OUTLINED_FUNCTION_15_0();
  v73 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_7();
  v72 = v14;
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v16);
  v18 = v71 - v17;
  v19 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v20 = OUTLINED_FUNCTION_21(v19);
  __chkstk_darwin(v20);
  v21 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed();
  OUTLINED_FUNCTION_7();
  v23 = v22;
  __chkstk_darwin(v24);
  OUTLINED_FUNCTION_12_5();
  v27 = v25 - v26;
  __chkstk_darwin(v28);
  v30 = v71 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  v32 = OUTLINED_FUNCTION_21(v31);
  __chkstk_darwin(v32);
  v34 = v71 - v33;
  type metadata accessor for UsoTaskBuilder_call_common_PhoneCall();
  swift_allocObject();
  v35 = UsoTaskBuilder_call_common_PhoneCall.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_426260;
  *(v36 + 32) = v35;
  v37 = type metadata accessor for UsoBuilderOptions();
  __swift_storeEnumTagSinglePayload(v34, 1, 1, v37);
  v76 = v35;

  v38 = static UsoGraphBuilder.buildGraphWithOptions(taskBuilders:options:)();

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v34, &_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  Siri_Nlu_External_UserWantedToProceed.init()();
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  v75 = v38;
  Siri_Nlu_External_UserWantedToProceed.reference.setter();
  Siri_Nlu_External_UserDialogAct.init()();
  v77 = v30;
  v78 = v23;
  v39 = v23[2];
  v79 = v21;
  (v39)(v27, v30, v21);
  Siri_Nlu_External_UserDialogAct.wantedToProceed.setter();
  v40 = v85;
  Siri_Nlu_External_SystemOffered.init()();
  v41 = v72;
  v42 = *(v72 + 16);
  v80 = v18;
  v43 = v73;
  v42(v71[1], v18, v73);
  Siri_Nlu_External_SystemOffered.offeredAct.setter();
  Siri_Nlu_External_SystemDialogAct.init()();
  v45 = v83;
  v44 = v84;
  (*(v83 + 16))(v74, v40, v84);
  Siri_Nlu_External_SystemDialogAct.offered.setter();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  __swift_project_value_buffer(v46, static Logger.siriPhone);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();
  v49 = OUTLINED_FUNCTION_10_0(v48);
  v50 = v81;
  v51 = v82;
  if (v49)
  {
    v52 = OUTLINED_FUNCTION_42();
    v74 = swift_slowAlloc();
    v86[0] = v74;
    *v52 = 136315138;
    swift_beginAccess();
    v53 = v71[0];
    (*(v50 + 16))(v71[0], v9, v51);
    v54 = _sSS27PhoneCallFlowDelegatePluginE10describingSS21InternalSwiftProtobuf7Message_p_tcfCTf4en_n12SiriNLUTypes0K29_Nlu_External_SystemDialogActV_Tt0g5(v53);
    v56 = v41;
    v57 = v9;
    v58 = v51;
    v59 = v43;
    v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, v86);

    *(v52 + 4) = v60;
    v43 = v59;
    v51 = v58;
    v9 = v57;
    v41 = v56;
    OUTLINED_FUNCTION_40_3();
    _os_log_impl(v61, v62, v63, v64, v52, 0xCu);
    v65 = v74;
    __swift_destroy_boxed_opaque_existential_1(v74);
    v45 = v83;
    OUTLINED_FUNCTION_26_0(v65);
    v66 = v52;
    v44 = v84;
    OUTLINED_FUNCTION_26_0(v66);
  }

  v67 = v80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v68 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_424FD0;
  swift_beginAccess();
  (*(v50 + 16))(v69 + v68, v9, v51);

  (*(v45 + 8))(v85, v44);
  (*(v41 + 8))(v67, v43);
  v78[1](v77, v79);
  (*(v50 + 8))(v9, v51);
  return v69;
}

void StartCallConfirmIntentFlowStrategy.promptResponse.didset()
{
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.siriPhone);

  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB12ConfirmationOSgMd, &_s27PhoneCallFlowDelegatePlugin0aB12ConfirmationOSgMR);
    v4 = String.init<A>(describing:)();
    v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&dword_0, oslog, v1, "#StartCallConfirmIntentFlowStrategy promptResponse: %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
  }
}

void StartCallConfirmIntentFlowStrategy.promptResponse.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
  StartCallConfirmIntentFlowStrategy.promptResponse.didset();
}

uint64_t StartCallConfirmIntentFlowStrategy.init(delegate:startCallCATsSimple:displayTextCATsSimple:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = 5;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

uint64_t StartCallConfirmIntentFlowStrategy.actionForInput(_:confirmParameters:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v78 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
  v4 = OUTLINED_FUNCTION_21(v3);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_12_5();
  v7 = v5 - v6;
  __chkstk_darwin(v8);
  v10 = (&v75 - v9);
  OUTLINED_FUNCTION_15_0();
  v11 = type metadata accessor for Parse.DirectInvocation();
  OUTLINED_FUNCTION_7();
  v76 = v12;
  __chkstk_darwin(v13);
  v77 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_15_0();
  v15 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v17 = v16;
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_12_5();
  v21 = v19 - v20;
  __chkstk_darwin(v22);
  v24 = &v75 - v23;
  Input.parse.getter();
  v25 = OUTLINED_FUNCTION_63();
  v27 = v26(v25);
  if (v27 == enum case for Parse.NLv3IntentOnly(_:))
  {
LABEL_2:
    v28 = *(v17 + 8);
    v29 = OUTLINED_FUNCTION_63();
    v30 = v28(v29);
    (*(*v1 + 112))(v79, v30);
    v31 = v80;
    v32 = v81;
    __swift_project_boxed_opaque_existential_1(v79, v80);
    v33 = (*(v32 + 72))(v31, v32);
    Input.parse.getter();
    (*(*v33 + 192))(v82, v21);

    (v28)(v21, v15);
    __swift_destroy_boxed_opaque_existential_1(v79);
    if (v83)
    {
      v34 = v84;
      __swift_project_boxed_opaque_existential_1(v82, v83);
      v35 = OUTLINED_FUNCTION_40_0();
      v37 = v36(v35, v34);
      __swift_destroy_boxed_opaque_existential_1(v82);
    }

    else
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v82, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
      v37 = 5;
    }

    OUTLINED_FUNCTION_10_74();
    v1[40] = v37;
    StartCallConfirmIntentFlowStrategy.promptResponse.didset();
    goto LABEL_28;
  }

  if (v27 == enum case for Parse.directInvocation(_:))
  {
    v38 = OUTLINED_FUNCTION_63();
    v39(v38);
    v40 = v76;
    (*(v76 + 32))(v77, v24, v11);
    static CommonDirectAction.from(_:)(v10);
    v41 = type metadata accessor for CommonDirectAction(0);
    if (__swift_getEnumTagSinglePayload(v10, 1, v41) != 1)
    {
      outlined init with copy of CommonDirectAction?(v10, v7);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 6)
      {
        OUTLINED_FUNCTION_10_74();
        v1[40] = 0;
        goto LABEL_27;
      }

      if (EnumCaseMultiPayload == 7)
      {
        OUTLINED_FUNCTION_10_74();
        v1[40] = 2;
LABEL_27:
        StartCallConfirmIntentFlowStrategy.promptResponse.didset();
        (*(v40 + 8))(v77, v11);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v10, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
        goto LABEL_28;
      }

      _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_7(v7, type metadata accessor for CommonDirectAction);
    }

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    __swift_project_value_buffer(v54, static Logger.siriPhone);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_10_0(v56))
    {
      v57 = OUTLINED_FUNCTION_65_0();
      *v57 = 0;
      OUTLINED_FUNCTION_40_3();
      _os_log_impl(v58, v59, v60, v61, v57, 2u);
      v62 = v57;
      v40 = v76;
      OUTLINED_FUNCTION_26_0(v62);
    }

    OUTLINED_FUNCTION_10_74();
    v1[40] = 5;
    goto LABEL_27;
  }

  if (v27 == enum case for Parse.NLv4IntentOnly(_:) || v27 == enum case for Parse.uso(_:))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  __swift_project_value_buffer(v44, static Logger.siriPhone);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_10_0(v46))
  {
    v47 = OUTLINED_FUNCTION_65_0();
    *v47 = 0;
    OUTLINED_FUNCTION_40_3();
    _os_log_impl(v48, v49, v50, v51, v47, 2u);
    OUTLINED_FUNCTION_26_0(v47);
  }

  OUTLINED_FUNCTION_10_74();
  v1[40] = 5;
  StartCallConfirmIntentFlowStrategy.promptResponse.didset();
  v52 = OUTLINED_FUNCTION_63();
  v53(v52);
LABEL_28:
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v63 = type metadata accessor for Logger();
  __swift_project_value_buffer(v63, static Logger.siriPhone);
  OUTLINED_FUNCTION_5();

  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v79[0] = v67;
    *v66 = 136315394;
    *(v66 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x8000000000462610, v79);
    *(v66 + 12) = 2080;
    v68 = (*(*v1 + 120))();
    if (v68 == 5)
    {
      v69 = 0xE300000000000000;
      v70 = 7104878;
    }

    else
    {
      v70 = PhoneCallConfirmation.rawValue.getter(v68);
      v69 = v71;
    }

    v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v69, v79);

    *(v66 + 14) = v72;
    _os_log_impl(&dword_0, v64, v65, "#StartCallConfirmIntentStrategy %s received response: %s", v66, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v67);
    OUTLINED_FUNCTION_35();
  }

  else
  {
  }

  v73 = (*(*v2 + 120))();
  if (v73 < 2)
  {
    return static ActionForInput.handle()();
  }

  if (v73 != 2)
  {
    return static ActionForInput.ignore()();
  }

  StartCallConfirmIntentFlowStrategy.cancelEmergencyCountdownTimer()();
  return static ActionForInput.cancel()();
}

uint64_t StartCallConfirmIntentFlowStrategy.parseConfirmationResponse(input:confirmParameters:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for PhoneError(0);
  v1[5] = v4;
  OUTLINED_FUNCTION_21(v4);
  v1[6] = OUTLINED_FUNCTION_45();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  OUTLINED_FUNCTION_21(v5);
  v1[7] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_2_0();
  v2 = (*(v1 + 120))();
  if (v2 >= 3u)
  {
    v11 = *(v0 + 48);
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 2;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_48();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_3(v12, v13, &protocol conformance descriptor for PhoneError);
    swift_allocError();
    PhoneError.logged()(v14);
    _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_7(v11, type metadata accessor for PhoneError);
    swift_willThrow();

    OUTLINED_FUNCTION_11();
  }

  else
  {
    v3 = *(v0 + 56);
    v4 = **(&off_535740 + v2);
    v5 = type metadata accessor for ConfirmationResponse();
    OUTLINED_FUNCTION_23_1();
    (*(v6 + 104))(v3, v4, v5);
    v7 = OUTLINED_FUNCTION_10_42();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMR);
    IntentResolutionRecord.intent.getter();
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
    ConfirmIntentAnswer.init(confirmationResponse:intent:)();

    OUTLINED_FUNCTION_8_1();
  }

  return v10();
}

uint64_t StartCallConfirmIntentFlowStrategy.makePromptForConfirmation(confirmParameters:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1(StartCallConfirmIntentFlowStrategy.makePromptForConfirmation(confirmParameters:));
}

uint64_t StartCallConfirmIntentFlowStrategy.makePromptForConfirmation(confirmParameters:)()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMR);
  v2 = IntentResolutionRecord.app.getter();
  v0[5] = v2;
  v3 = IntentResolutionRecord.intent.getter();
  v0[6] = v3;
  v4 = IntentResolutionRecord.intentResponse.getter();
  v0[7] = v4;
  v9 = (*(*v1 + 176) + **(*v1 + 176));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[8] = v5;
  *v5 = v6;
  v5[1] = StartCallConfirmIntentFlowStrategy.makePromptForConfirmation(confirmParameters:);
  v7 = v0[2];

  return v9(v7, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {

    return _swift_task_switch(StartCallConfirmIntentFlowStrategy.makePromptForConfirmation(confirmParameters:), 0, 0);
  }

  else
  {
    v7 = *(v3 + 48);

    OUTLINED_FUNCTION_8_1();

    return v8();
  }
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 48);

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);
  OUTLINED_FUNCTION_5();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_42();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_0, v3, v4, "#StartCallConfirmIntentFlowStrategy makePromptForConfirmation get an unknown error: %@", v5, 0xCu);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_26_0(v6);
    OUTLINED_FUNCTION_35();
  }

  swift_willThrow();
  OUTLINED_FUNCTION_11();

  return v8();
}

uint64_t StartCallConfirmIntentFlowStrategy.makePromptForConfirmationOutput(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_15();
  v1[57] = v2;
  v1[58] = v0;
  v1[55] = v3;
  v1[56] = v4;
  v1[54] = v5;
  v6 = type metadata accessor for YesNoConfirmationModel(0);
  OUTLINED_FUNCTION_21(v6);
  v1[59] = OUTLINED_FUNCTION_45();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_21(v7);
  v1[60] = OUTLINED_FUNCTION_45();
  v1[61] = type metadata accessor for Locale();
  OUTLINED_FUNCTION_24_5();
  v1[62] = v8;
  v1[63] = OUTLINED_FUNCTION_45();
  v9 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v9);
  v1[64] = OUTLINED_FUNCTION_45();
  v1[65] = type metadata accessor for OutputGenerationManifest();
  OUTLINED_FUNCTION_24_5();
  v1[66] = v10;
  v1[67] = OUTLINED_FUNCTION_45();
  v1[68] = type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_24_5();
  v1[69] = v11;
  v1[70] = OUTLINED_FUNCTION_45();
  v12 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_21(v12);
  v1[71] = OUTLINED_FUNCTION_45();
  v13 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v13, v14, v15);
}

{
  v99 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    goto LABEL_72;
  }

  while (1)
  {
    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.siriPhone);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = OUTLINED_FUNCTION_65_0();
      *v4 = 0;
      _os_log_impl(&dword_0, v2, v3, "#StartCallConfirmIntentFlowStrategy makePromptForConfirmationOutput: Building output using Response Framework..", v4, 2u);
      OUTLINED_FUNCTION_35();
    }

    v6 = v0[56];
    v5 = v0[57];

    v7 = static EmergencyUtils.requiresEmergencyConfirmation(intent:intentResponse:)(v6, v5);
    if (v7)
    {
      break;
    }

    v17 = v0[57];
    _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC34makeGenericConfirmationNLv3Context07SiriKitC00F6UpdateVyFZSo8INIntentC_So0P8ResponseCTt0g5Tm(v7);
    _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC22makeSDAForConfirmation33_3C2ABB69DDB872D121E37A32A4E694A9LLSay12SiriNLUTypes0T29_Nlu_External_SystemDialogActVGSgyFZSo8INIntentC_So16INIntentResponseCTtg5();
    NLContextUpdate.nluSystemDialogActs.setter();
    static DialogPhase.confirmation.getter();
    OutputGenerationManifest.init(dialogPhase:_:)();
    v18 = [v17 confirmationReason];
    if (v18 != _INStartCallIntentConfirmationReasonHasRestrictedContacts || (v19 = outlined bridged method (pb) of @objc INStartCallIntentResponse.restrictedContacts.getter(v0[57])) == 0 || (v20 = specialized Array.count.getter(v19), , !v20))
    {
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = OUTLINED_FUNCTION_65_0();
        *v35 = 0;
        _os_log_impl(&dword_0, v33, v34, "StartCallConfirmIntentFlowStrategy makePromptForConfirmationOutput return intentConfirmation dialog", v35, 2u);
        OUTLINED_FUNCTION_26_0(v35);
      }

      v36 = v0[56];

      v37 = v36;
      _s27PhoneCallFlowDelegatePlugin0a5StartB6IntentC6intent21isRelationshipRequestAcA07CallingG0_p_SbtcfCTf4enn_nSo07INStartbG0C_Tt1g5();
      v0[86] = v38;
      OUTLINED_FUNCTION_24_5();
      v39 = swift_task_alloc();
      v0[87] = v39;
      *v39 = v0;
      v39[1] = StartCallConfirmIntentFlowStrategy.makePromptForConfirmationOutput(app:intent:intentResponse:);
      OUTLINED_FUNCTION_43_1();

      __asm { BRAA            X1, X16 }
    }

    v21 = v0[57];
    type metadata accessor for PhonePersonList.Builder();
    v22 = swift_allocObject();
    *(v22 + 16) = _swiftEmptyArrayStorage;
    v23 = outlined bridged method (pb) of @objc INStartCallIntentResponse.restrictedContacts.getter(v21);
    v88 = _swiftEmptyArrayStorage;
    v97 = v0;
    if (!v23)
    {
      v42 = _swiftEmptyArrayStorage;
LABEL_32:
      v43 = v0[56];
      swift_beginAccess();
      *(v22 + 16) = v42;

      type metadata accessor for PhonePersonList();
      swift_allocObject();
      v44 = OUTLINED_FUNCTION_5();
      v0[76] = PhonePersonList.init(builder:)(v44);
      v45 = outlined bridged method (pb) of @objc INStartCallIntent.contacts.getter(v43);
      if (v45)
      {
        v46 = v45;
        v95 = v0 + 53;
        v98[0] = _swiftEmptyArrayStorage;
        v47 = specialized Array.count.getter(v45);
        v48 = 0;
        while (1)
        {
          for (i = v48; ; ++i)
          {
            if (v47 == i)
            {
              v56 = v0[62];

              v57 = v98[0];
              v87 = swift_allocObject();
              *(v87 + 16) = _swiftEmptyArrayStorage;
              v98[0] = _swiftEmptyArrayStorage;
              v93 = v57 & 0xC000000000000001;
              v96 = specialized Array.count.getter(v57);

              v58 = 0;
              v90 = v57;
              while (v96 != v58)
              {
                if (v93)
                {
                  v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v58 >= *(v57 + 16))
                  {
                    goto LABEL_71;
                  }

                  v59 = *(v57 + 8 * v58 + 32);
                }

                v60 = v59;
                v61 = v58 + 1;
                if (__OFADD__(v58, 1))
                {
                  goto LABEL_70;
                }

                v0 = v97;
                v62 = v97[63];
                v63 = v97[61];
                type metadata accessor for PhonePerson(0);
                static Device.current.getter();
                __swift_project_boxed_opaque_existential_1(v0 + 32, v0[35]);
                dispatch thunk of DeviceState.siriLocale.getter();
                __swift_destroy_boxed_opaque_existential_1(v97 + 32);
                v64 = static PhonePerson.make(phonePerson:options:locale:)(v60, 0, v62);

                (*(v56 + 8))(v62, v63);
                ++v58;
                v57 = v90;
                if (v64)
                {
                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  OUTLINED_FUNCTION_39_27();
                  if (v32)
                  {
                    OUTLINED_FUNCTION_44_21();
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  v88 = v98[0];
                  v58 = v61;
                }
              }

              v65 = v88;
              v66 = v87;
              v0 = v97;
LABEL_59:
              swift_beginAccess();
              *(v66 + 16) = v65;

              swift_allocObject();
              v67 = OUTLINED_FUNCTION_40_0();
              v0[77] = PhonePersonList.init(builder:)(v67);
              if (v57)
              {
                v68 = v0[57];

                v69 = Logger.logObject.getter();
                v70 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v69, v70))
                {
                  v71 = v0[57];
                  v72 = swift_slowAlloc();
                  v73 = swift_slowAlloc();
                  v98[0] = v73;
                  *v72 = 136315394;
                  v0[52] = outlined bridged method (pb) of @objc INStartCallIntentResponse.restrictedContacts.getter(v71);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGSgMd, &_sSaySo8INPersonCGSgMR);
                  v74 = String.init<A>(describing:)();
                  v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, v98);

                  *(v72 + 4) = v76;
                  *(v72 + 12) = 2080;
                  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
                  v77 = Array.description.getter();
                  v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, v98);

                  *(v72 + 14) = v79;
                  _os_log_impl(&dword_0, v69, v70, "Some contacts are restricted: %s. User needs to confirm by Yes/No the updated contacts: %s", v72, 0x16u);
                  swift_arrayDestroy();
                  OUTLINED_FUNCTION_26_0(v73);
                  OUTLINED_FUNCTION_26_0(v72);
                }

                v0[45] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
                v0[42] = v57;
                NSObject.update(with:at:)(v0 + 42, 0x73746361746E6F63, 0xE800000000000000);
                __swift_destroy_boxed_opaque_existential_1(v0 + 42);
              }

              v80 = v0[56];
              _s27PhoneCallFlowDelegatePlugin0a5StartB6IntentC6intent21isRelationshipRequestAcA07CallingG0_p_SbtcfCTf4enn_nSo07INStartbG0C_Tt1g5();
              v0[78] = v81;

              v82 = swift_task_alloc();
              v0[79] = v82;
              *v82 = v0;
              v82[1] = StartCallConfirmIntentFlowStrategy.makePromptForConfirmationOutput(app:intent:intentResponse:);
              OUTLINED_FUNCTION_43_1();

              __asm { BRAA            X3, X16 }
            }

            if ((v46 & 0xC000000000000001) != 0)
            {
              v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (i >= *(&dword_10 + (v46 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_69;
              }

              v50 = *(v46 + 8 * i + 32);
            }

            v51 = v50;
            v48 = i + 1;
            if (__OFADD__(i, 1))
            {
              goto LABEL_68;
            }

            v52 = outlined bridged method (pb) of @objc INStartCallIntentResponse.restrictedContacts.getter(v0[57]);
            if (v52)
            {
              break;
            }
          }

          v53 = v52;
          *v95 = v51;
          v54 = swift_task_alloc();
          *(v54 + 16) = v95;
          specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v54, v53);
          v92 = v55;

          if (v92)
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }
        }
      }

      v66 = swift_allocObject();
      v57 = 0;
      v65 = _swiftEmptyArrayStorage;
      *(v66 + 16) = _swiftEmptyArrayStorage;
      goto LABEL_59;
    }

    v24 = v23;
    v85 = v22;
    v25 = v0[62];
    v98[0] = _swiftEmptyArrayStorage;
    v26 = 0;
    v91 = v23 & 0xC000000000000001;
    v94 = specialized Array.count.getter(v23);
    v86 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v94 == v26)
      {

        v22 = v85;
        v0 = v97;
        v42 = v86;
        goto LABEL_32;
      }

      if (v91)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v26 >= *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_67;
        }

        v27 = *(v24 + 8 * v26 + 32);
      }

      v28 = v27;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      v89 = v26 + 1;
      v0 = v97;
      v29 = v97[63];
      v30 = v97[61];
      type metadata accessor for PhonePerson(0);
      static Device.current.getter();
      __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
      OUTLINED_FUNCTION_40_0();
      dispatch thunk of DeviceState.siriLocale.getter();
      __swift_destroy_boxed_opaque_existential_1(v97 + 12);
      v31 = static PhonePerson.make(phonePerson:options:locale:)(v28, 0, v29);

      (*(v25 + 8))(v29, v30);
      ++v26;
      if (v31)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        OUTLINED_FUNCTION_39_27();
        if (v32)
        {
          OUTLINED_FUNCTION_44_21();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v86 = v98[0];
        v26 = v89;
      }
    }

    __break(1u);
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
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_65_0();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "#StartCallConfirmIntentFlowStrategy makePromptForConfirmationOutput: Using the RF2.0 emergency countdown with nlContextUpdate", v10, 2u);
    OUTLINED_FUNCTION_26_0(v10);
  }

  OUTLINED_FUNCTION_2_0();
  (*(v11 + 112))(v12);
  type metadata accessor for StartCallCATsSimple(0);
  static CATOption.defaultMode.getter();
  v0[72] = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallDisplayTextCATsSimple(0);
  static CATOption.defaultMode.getter();
  v0[73] = CATWrapperSimple.__allocating_init(options:globals:)();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[74] = v13;
  *v13 = v14;
  v13[1] = StartCallConfirmIntentFlowStrategy.makePromptForConfirmationOutput(app:intent:intentResponse:);
  OUTLINED_FUNCTION_43_1();

  return static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:)();
}

{
  OUTLINED_FUNCTION_23_0();
  v2 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v3 = v2;
  v4 = *v1;
  *v3 = *v1;
  *(v2 + 600) = v0;

  __swift_destroy_boxed_opaque_existential_1((v2 + 296));

  if (v0)
  {

    return _swift_task_switch(StartCallConfirmIntentFlowStrategy.makePromptForConfirmationOutput(app:intent:intentResponse:), 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5();
  }
}

{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_1();
  *v5 = v4;
  *(v7 + 640) = v6;
  *(v7 + 648) = v0;

  if (v0)
  {
    v8 = StartCallConfirmIntentFlowStrategy.makePromptForConfirmationOutput(app:intent:intentResponse:);
  }

  else
  {
    v8 = StartCallConfirmIntentFlowStrategy.makePromptForConfirmationOutput(app:intent:intentResponse:);
  }

  return _swift_task_switch(v8, 0, 0);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_33_26();
  (*(v3 + 16))(v1);
  v4 = OUTLINED_FUNCTION_10_42();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v0);
  OutputGenerationManifest.nlContextUpdate.setter();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v2 + 656) = v7;
  *v7 = v8;
  v7[1] = StartCallConfirmIntentFlowStrategy.makePromptForConfirmationOutput(app:intent:intentResponse:);
  v9 = *(v2 + 472);

  return StartCallConfirmIntentFlowStrategy.buildYesNoConfirmationUnderRestrictionModel()(v9);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 664) = v0;

  if (v0)
  {
    v7 = StartCallConfirmIntentFlowStrategy.makePromptForConfirmationOutput(app:intent:intentResponse:);
  }

  else
  {
    v7 = StartCallConfirmIntentFlowStrategy.makePromptForConfirmationOutput(app:intent:intentResponse:);
  }

  return _swift_task_switch(v7, 0, 0);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v1 = v0[80];
  v2 = v0[59];
  OUTLINED_FUNCTION_2_0();
  (*(v3 + 112))();
  v4 = v0[21];
  __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
  v5 = OUTLINED_FUNCTION_40_0();
  v6(v5, v4);
  __swift_project_boxed_opaque_existential_1(v0 + 22, v0[25]);
  v0[30] = type metadata accessor for PhoneSnippetDataModels(0);
  v0[31] = _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_3(&lazy protocol witness table cache variable for type PhoneSnippetDataModels and conformance PhoneSnippetDataModels, type metadata accessor for PhoneSnippetDataModels, &protocol conformance descriptor for PhoneSnippetDataModels);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 27);
  outlined init with copy of YesNoConfirmationModel(v2, boxed_opaque_existential_1);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v8 = swift_allocObject();
  v0[84] = v8;
  *(v8 + 16) = xmmword_426260;
  *(v8 + 32) = v1;
  v9 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[85] = v10;
  *v10 = v11;
  v10[1] = StartCallConfirmIntentFlowStrategy.makePromptForConfirmationOutput(app:intent:intentResponse:);
  OUTLINED_FUNCTION_60();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v12, v13, v14, v15, v16, v17);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 216));
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_41_33();
  v2 = v1[69];
  v3 = v1[68];
  v4 = v1[67];
  v5 = v1[66];
  v6 = v1[65];
  v7 = v1[59];

  _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_7(v7, type metadata accessor for YesNoConfirmationModel);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v0, v3);
  __swift_destroy_boxed_opaque_existential_1(v1 + 22);
  __swift_destroy_boxed_opaque_existential_1(v1 + 17);
  OUTLINED_FUNCTION_35_28();

  OUTLINED_FUNCTION_8_1();

  return v9();
}

{
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 704) = v0;

  if (v0)
  {
    v6 = StartCallConfirmIntentFlowStrategy.makePromptForConfirmationOutput(app:intent:intentResponse:);
  }

  else
  {
    *(v4 + 712) = v3;
    v6 = StartCallConfirmIntentFlowStrategy.makePromptForConfirmationOutput(app:intent:intentResponse:);
  }

  return _swift_task_switch(v6, 0, 0);
}

{
  OUTLINED_FUNCTION_23_0();
  v3 = v2[89];
  OUTLINED_FUNCTION_33_26();
  v4 = v2[58];
  (*(v5 + 16))(v1);
  v6 = OUTLINED_FUNCTION_10_42();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v0);
  v9 = OutputGenerationManifest.nlContextUpdate.setter();
  (*(*v4 + 112))(v9);
  v10 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  v11 = OUTLINED_FUNCTION_40_0();
  v12(v11, v10);
  v13 = v2[10];
  v14 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v15 = swift_allocObject();
  v2[90] = v15;
  *(v15 + 16) = xmmword_426260;
  *(v15 + 32) = v3;
  v16 = *(v14 + 8);
  v17 = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v2[91] = v21;
  *v21 = v22;
  v21[1] = StartCallConfirmIntentFlowStrategy.makePromptForConfirmationOutput(app:intent:intentResponse:);
  v23 = v2[67];
  v24 = v2[54];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v24, v15, v23, v13, v16, v18, v19, v20);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 560);
  v2 = *(v0 + 552);
  v3 = *(v0 + 544);
  v4 = *(v0 + 536);
  v5 = *(v0 + 528);
  v6 = *(v0 + 520);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_35_28();

  OUTLINED_FUNCTION_8_1();

  return v7();
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_41_33();
  v2 = v1[69];
  v3 = v1[68];
  v4 = v1[67];
  v5 = v1[66];
  v6 = v1[65];

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v0, v3);
  OUTLINED_FUNCTION_8_79();

  OUTLINED_FUNCTION_11();

  return v8();
}

uint64_t StartCallConfirmIntentFlowStrategy.makePromptForConfirmationOutput(app:intent:intentResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_8_79();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_60();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v11 = v10[70];
  v12 = v10[69];
  v13 = v10[68];
  v14 = v10[67];
  v15 = v10[66];
  v16 = v10[65];

  (*(v15 + 8))(v14, v16);
  (*(v12 + 8))(v11, v13);
  OUTLINED_FUNCTION_8_79();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_60();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v11 = v10[70];
  v12 = v10[69];
  v13 = v10[68];
  (*(v10[66] + 8))(v10[67], v10[65]);
  (*(v12 + 8))(v11, v13);
  OUTLINED_FUNCTION_8_79();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_60();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t closure #1 in StartCallConfirmIntentFlowStrategy.makePromptForConfirmationOutput(app:intent:intentResponse:)()
{
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  return OutputGenerationManifest.printSupportingDialogInDisplayModes.setter();
}

void StartCallConfirmIntentFlowStrategy.cancelEmergencyCountdownTimer()()
{
  v0 = type metadata accessor for EmergencyCountdownModel(0);
  OUTLINED_FUNCTION_2_0();
  (*(v1 + 112))(v15);
  v2 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  v3 = OUTLINED_FUNCTION_5();
  v4(v3, v2);
  v5 = specialized UpdateResponseCommand<>.asUpdateCommand(for:)(v0, &protocol witness table for EmergencyCountdownModel, 0);
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  AceServiceInvokerAsync.submitAndForget(_:)();

  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.siriPhone);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_10_0(v8))
  {
    v9 = OUTLINED_FUNCTION_65_0();
    *v9 = 0;
    OUTLINED_FUNCTION_40_3();
    _os_log_impl(v10, v11, v12, v13, v9, 2u);
    OUTLINED_FUNCTION_26_0(v9);
  }
}

uint64_t StartCallConfirmIntentFlowStrategy.buildYesNoConfirmationUnderRestrictionModel()(uint64_t a1)
{
  *(v2 + 1376) = v1;
  *(v2 + 1368) = a1;
  return OUTLINED_FUNCTION_0_1(StartCallConfirmIntentFlowStrategy.buildYesNoConfirmationUnderRestrictionModel());
}

uint64_t StartCallConfirmIntentFlowStrategy.buildYesNoConfirmationUnderRestrictionModel()()
{
  OUTLINED_FUNCTION_15();
  *(v0 + 1384) = static SiriPhoneActionFactory.makeConfirmAndRejectActions()();
  *(v0 + 1392) = v1;

  swift_asyncLet_begin();

  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 16, v0 + 1336, StartCallConfirmIntentFlowStrategy.buildYesNoConfirmationUnderRestrictionModel(), v0 + 1296);
}

{
  OUTLINED_FUNCTION_15();
  v1[175] = v0;
  if (v0)
  {

    return _swift_asyncLet_finish(v1 + 82, v1 + 169, StartCallConfirmIntentFlowStrategy.buildYesNoConfirmationUnderRestrictionModel(), v1 + 162);
  }

  else
  {
    v1[176] = v1[167];
    v1[177] = v1[168];

    v2 = OUTLINED_FUNCTION_15_59();

    return _swift_asyncLet_get_throwing(v2, v3, v4, v5);
  }
}

{
  *(v1 + 1424) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(StartCallConfirmIntentFlowStrategy.buildYesNoConfirmationUnderRestrictionModel());
  }

  else
  {
    return OUTLINED_FUNCTION_0_1(StartCallConfirmIntentFlowStrategy.buildYesNoConfirmationUnderRestrictionModel());
  }
}

{
  v1 = *(v0 + 1416);
  v2 = *(v0 + 1408);
  v3 = *(v0 + 1392);
  v4 = *(v0 + 1384);
  v5 = *(v0 + 1368);
  v18 = *(v0 + 1352);
  v6 = *(v0 + 1360);
  v7 = type metadata accessor for YesNoConfirmationModel(0);
  *(v0 + 1296) = 0u;

  v8 = v3;
  v9 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  Loggable.init(wrappedValue:)();
  v10 = (v5 + *(v7 + 36));
  *v10 = 0xD000000000000011;
  v10[1] = 0x8000000000456DF0;
  *(v0 + 1296) = v2;
  *(v0 + 1304) = v1;
  Loggable.init(wrappedValue:)();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, SAIntentGroupRunSiriKitExecutor_ptr);
  v11 = v9;
  CodableAceObject.init(wrappedValue:)();
  *(v0 + 1296) = v18;
  *(v0 + 1304) = v6;
  Loggable.init(wrappedValue:)();
  v12 = v8;
  CodableAceObject.init(wrappedValue:)();
  *(v0 + 1296) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  Loggable.wrappedValue.setter();

  v13 = OUTLINED_FUNCTION_15_59();

  return _swift_asyncLet_finish(v13, v14, v15, v16);
}

{
  return OUTLINED_FUNCTION_0_1(StartCallConfirmIntentFlowStrategy.buildYesNoConfirmationUnderRestrictionModel());
}

{
  return OUTLINED_FUNCTION_0_1(StartCallConfirmIntentFlowStrategy.buildYesNoConfirmationUnderRestrictionModel());
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 1392);

  OUTLINED_FUNCTION_8_1();

  return v2();
}

{
  return OUTLINED_FUNCTION_0_1(StartCallConfirmIntentFlowStrategy.buildYesNoConfirmationUnderRestrictionModel());
}

{
  return OUTLINED_FUNCTION_0_1(StartCallConfirmIntentFlowStrategy.buildYesNoConfirmationUnderRestrictionModel());
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 1392);

  OUTLINED_FUNCTION_11();

  return v2();
}

{
  OUTLINED_FUNCTION_15();

  v0 = OUTLINED_FUNCTION_15_59();

  return _swift_asyncLet_finish(v0, v1, v2, v3);
}

{
  return OUTLINED_FUNCTION_0_1(StartCallConfirmIntentFlowStrategy.buildYesNoConfirmationUnderRestrictionModel());
}

{
  return OUTLINED_FUNCTION_0_1(StartCallConfirmIntentFlowStrategy.buildYesNoConfirmationUnderRestrictionModel());
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 1392);

  OUTLINED_FUNCTION_11();

  return v2();
}

uint64_t StartCallConfirmIntentFlowStrategy.buildYesNoConfirmationUnderRestrictionModel()(uint64_t a1, uint64_t a2)
{
  return OUTLINED_FUNCTION_4_88(a1, a2, StartCallConfirmIntentFlowStrategy.buildYesNoConfirmationUnderRestrictionModel());
}

{
  return OUTLINED_FUNCTION_4_88(a1, a2, StartCallConfirmIntentFlowStrategy.buildYesNoConfirmationUnderRestrictionModel());
}

{
  return OUTLINED_FUNCTION_4_88(a1, a2, StartCallConfirmIntentFlowStrategy.buildYesNoConfirmationUnderRestrictionModel());
}

uint64_t implicit closure #1 in StartCallConfirmIntentFlowStrategy.buildYesNoConfirmationUnderRestrictionModel()(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(implicit closure #1 in StartCallConfirmIntentFlowStrategy.buildYesNoConfirmationUnderRestrictionModel(), 0, 0);
}

uint64_t implicit closure #1 in StartCallConfirmIntentFlowStrategy.buildYesNoConfirmationUnderRestrictionModel()()
{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 32);
  v2 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  OUTLINED_FUNCTION_24_5();
  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = implicit closure #1 in StartCallConfirmIntentFlowStrategy.buildYesNoConfirmationUnderRestrictionModel();
  v5 = *(v0 + 32);

  return v7(v5);
}

{
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 48) = v0;

  v7 = *(v4 + 32);
  if (v0)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v8 = implicit closure #4 in static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:);
  }

  else
  {
    *(v5 + 56) = v3;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v8 = implicit closure #1 in static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:);
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t implicit closure #2 in StartCallConfirmIntentFlowStrategy.buildYesNoConfirmationUnderRestrictionModel()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(implicit closure #2 in StartCallConfirmIntentFlowStrategy.buildYesNoConfirmationUnderRestrictionModel(), 0, 0);
}

uint64_t implicit closure #2 in StartCallConfirmIntentFlowStrategy.buildYesNoConfirmationUnderRestrictionModel()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_24_5();
  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = implicit closure #2 in StartCallConfirmIntentFlowStrategy.buildYesNoConfirmationUnderRestrictionModel();

  return v4();
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

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 40) = v3;

    return _swift_task_switch(implicit closure #2 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:), 0, 0);
  }
}

uint64_t StartCallConfirmIntentFlowStrategy.deinit()
{

  return v0;
}

uint64_t StartCallConfirmIntentFlowStrategy.__deallocating_deinit()
{
  StartCallConfirmIntentFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.parseConfirmationResponse(input:confirmParameters:) in conformance StartCallConfirmIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + 160) + **(**v3 + 160));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = closure #1 in ActionableCallControlFlow.execute();

  return v10(a1, a2, a3);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makePromptForConfirmation(confirmParameters:) in conformance StartCallConfirmIntentFlowStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 168) + **(**v2 + 168));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = closure #1 in ActionableCallControlFlow.execute();

  return v8(a1, a2);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeRepromptOnEmptyParse(confirmParameters:) in conformance StartCallConfirmIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for StartCallConfirmIntentFlowStrategy();
  *v8 = v4;
  v8[1] = closure #1 in ActionableCallControlFlow.execute();

  return ConfirmIntentFlowStrategyAsync.makeRepromptOnEmptyParse(confirmParameters:)(a1, a2, v9, a4);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeRepromptOnLowConfidence(confirmParameters:) in conformance StartCallConfirmIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for StartCallConfirmIntentFlowStrategy();
  *v8 = v4;
  v8[1] = closure #1 in ActionableCallControlFlow.execute();

  return ConfirmIntentFlowStrategyAsync.makeRepromptOnLowConfidence(confirmParameters:)(a1, a2, v9, a4);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeConfirmationRejectedResponse(confirmParameters:) in conformance StartCallConfirmIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for StartCallConfirmIntentFlowStrategy();
  *v8 = v4;
  v8[1] = closure #1 in ActionableCallControlFlow.execute();

  return ConfirmIntentFlowStrategyAsync.makeConfirmationRejectedResponse(confirmParameters:)(a1, a2, v9, a4);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeFlowCancelledResponse(confirmParameters:) in conformance StartCallConfirmIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for StartCallConfirmIntentFlowStrategy();
  *v8 = v4;
  v8[1] = closure #2 in ActionableCallControlFlow.execute();

  return ConfirmIntentFlowStrategyAsync.makeFlowCancelledResponse(confirmParameters:)(a1, a2, v9, a4);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeErrorResponse(error:confirmParameters:) in conformance StartCallConfirmIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for StartCallConfirmIntentFlowStrategy();
  *v10 = v5;
  v10[1] = closure #1 in ActionableCallControlFlow.execute();

  return ConfirmIntentFlowStrategyAsync.makeErrorResponse(error:confirmParameters:)(a1, a2, a3, v11, a5);
}

uint64_t _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_7(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_23_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t partial apply for implicit closure #1 in StartCallConfirmIntentFlowStrategy.buildYesNoConfirmationUnderRestrictionModel()()
{
  OUTLINED_FUNCTION_15();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_5(v1);

  return implicit closure #1 in StartCallConfirmIntentFlowStrategy.buildYesNoConfirmationUnderRestrictionModel()(v3, v4);
}

uint64_t partial apply for implicit closure #2 in StartCallConfirmIntentFlowStrategy.buildYesNoConfirmationUnderRestrictionModel()()
{
  OUTLINED_FUNCTION_15();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_5(v1);

  return implicit closure #2 in StartCallConfirmIntentFlowStrategy.buildYesNoConfirmationUnderRestrictionModel()(v3, v4);
}

BOOL StartCallDirectAction.Keys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallDirectAction.Keys.init(rawValue:), v2);

  return v3 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallDirectAction.Keys@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = StartCallDirectAction.Keys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t StartCallDirectAction.toDictionary()(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_424FD0;
  *(inited + 32) = 0x6C646E7542707061;
  *(inited + 40) = 0xEB00000000644965;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  return Dictionary.init(dictionaryLiteral:)();
}

unint64_t lazy protocol witness table accessor for type StartCallDirectAction.Keys and conformance StartCallDirectAction.Keys()
{
  result = lazy protocol witness table cache variable for type StartCallDirectAction.Keys and conformance StartCallDirectAction.Keys;
  if (!lazy protocol witness table cache variable for type StartCallDirectAction.Keys and conformance StartCallDirectAction.Keys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallDirectAction.Keys and conformance StartCallDirectAction.Keys);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StartCallDirectAction.Keys(_BYTE *result, int a2, int a3)
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

uint64_t StartCallDisplayModeContext.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t StartCallDisplayModeContext.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t StartCallFlow.init(app:sharedGlobals:appFinder:)(uint64_t a1, void *a2, void *a3)
{
  v7 = v3 + direct field offset for StartCallFlow.flowName;
  strcpy((v3 + direct field offset for StartCallFlow.flowName), "StartCallFlow");
  *(v7 + 14) = -4864;
  outlined init with copy of SignalProviding(a2, v10);
  v8 = specialized CallingFlowAbstraction.init(app:flowName:sharedGlobals:)(a1, 0x6C61437472617453, 0xED0000776F6C466CLL, v10);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v8;
}

uint64_t StartCallFlow.makeRCHFlow(input:intent:app:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC9ProducersVySo17INStartCallIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow08RCHChildC9ProducersVySo17INStartCallIntentCSo0fgH8ResponseCGMR);
  OUTLINED_FUNCTION_7();
  v36 = v6;
  v37 = v5;
  __chkstk_darwin(v5);
  v35 = v30 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo17INStartCallIntentCSo0ghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo17INStartCallIntentCSo0ghI8ResponseCGMR);
  OUTLINED_FUNCTION_7();
  v33 = v9;
  v34 = v8;
  __chkstk_darwin(v8);
  v32 = v30 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So07INStartB6IntentCSo0ibJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So07INStartB6IntentCSo0ibJ8ResponseCGMR);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = v30 - v13;
  v15 = type metadata accessor for CATOption();
  __chkstk_darwin(v15 - 8);
  type metadata accessor for StartCallRCHFlowDelegate(0);
  v16 = *(*v3 + 152);
  v16(&v43);
  swift_retain_n();
  v30[1] = StartCallRCHFlowDelegate.__allocating_init(sharedGlobals:appResolved:)(&v43, a3);
  v16(&v43);
  type metadata accessor for PhoneCallDisplayTextCATsSimple(0);
  static CATOption.defaultMode.getter();
  v17 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for StartCallCATsSimple(0);
  static CATOption.defaultMode.getter();
  v18 = CATWrapperSimple.__allocating_init(options:globals:)();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo07INStartbG0CSo0jbG8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo07INStartbG0CSo0jbG8ResponseCGMR);
  swift_allocObject();
  v19 = specialized CallingIntentRCHFlowStrategy.init(sharedGlobals:appResolved:phoneCallDisplayTextCATsSimple:startCallCATsSimple:)(&v43, a3, v17, v18);
  v16(&v43);
  static PhoneCallFlowFactory.getStartCallProducers(skIntent:delegate:app:sharedGlobals:)();
  v20 = __swift_destroy_boxed_opaque_existential_1(&v43);
  (v16)(&v43, v20);
  v21 = v44;
  v22 = v45;
  __swift_project_boxed_opaque_existential_1(&v43, v44);
  (*(v22 + 104))(v40, v21, v22);
  v24 = v41;
  v23 = v42;
  __swift_project_boxed_opaque_existential_1(v40, v41);
  v39 = v19;
  (*(v33 + 16))(v32, &v14[*(v12 + 44)], v34);
  (*(v36 + 16))(v35, v14, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC7FactoryCySo17INStartCallIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow08RCHChildC7FactoryCySo17INStartCallIntentCSo0fgH8ResponseCGMR);
  swift_allocObject();
  v25 = RCHChildFlowFactory.init(producers:withFallbacks:)();
  v26 = *(v23 + 8);
  v27 = lazy protocol witness table accessor for type CallingIntentRCHFlowStrategy<INStartCallIntent, INStartCallIntentResponse> and conformance CallingIntentRCHFlowStrategy<A, B>();
  v28 = v26(&v39, v25, a3, v38, v31, v27, v24, v23);

  outlined destroy of PhoneCallFlowFactory.PhoneRCHFlowProducers<INStartCallIntent, INStartCallIntentResponse>(v14);

  __swift_destroy_boxed_opaque_existential_1(v40);
  __swift_destroy_boxed_opaque_existential_1(&v43);
  return v28;
}

unint64_t lazy protocol witness table accessor for type CallingIntentRCHFlowStrategy<INStartCallIntent, INStartCallIntentResponse> and conformance CallingIntentRCHFlowStrategy<A, B>()
{
  result = lazy protocol witness table cache variable for type CallingIntentRCHFlowStrategy<INStartCallIntent, INStartCallIntentResponse> and conformance CallingIntentRCHFlowStrategy<A, B>;
  if (!lazy protocol witness table cache variable for type CallingIntentRCHFlowStrategy<INStartCallIntent, INStartCallIntentResponse> and conformance CallingIntentRCHFlowStrategy<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo07INStartbG0CSo0jbG8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo07INStartbG0CSo0jbG8ResponseCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallingIntentRCHFlowStrategy<INStartCallIntent, INStartCallIntentResponse> and conformance CallingIntentRCHFlowStrategy<A, B>);
  }

  return result;
}

uint64_t StartCallFlow.deinit()
{
  v0 = specialized CallingFlowAbstraction.deinit();

  return v0;
}

uint64_t StartCallFlow.__deallocating_deinit()
{
  specialized CallingFlowAbstraction.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StartCallFlow(uint64_t a1)
{
  result = type metadata singleton initialization cache for StartCallFlow;
  if (!type metadata singleton initialization cache for StartCallFlow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UpgradeToVideoIntent.UpgradeToVideoResult.description.getter(char a1)
{
  v2 = 0xE700000000000000;
  v3 = 0x73736563637573;
  switch(a1)
  {
    case 1:
      v3 = 0xD000000000000013;
      v2 = 0x80000000004565C0;
      break;
    case 2:
      OUTLINED_FUNCTION_0_117();
      v3 = v4 + 5;
      break;
    case 3:
      OUTLINED_FUNCTION_0_117();
      v3 = v5 + 6;
      break;
    default:
      break;
  }

  v6 = v2;
  String.append(_:)(*&v3);

  return 46;
}

unint64_t UpgradeToVideoIntent.UpgradeToVideoResult.rawValue.getter(char a1)
{
  result = 0x73736563637573;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::UpgradeToVideoIntent::UpgradeToVideoResult_optional __swiftcall UpgradeToVideoIntent.UpgradeToVideoResult.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UpgradeToVideoIntent.UpgradeToVideoResult.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

PhoneCallFlowDelegatePlugin::UpgradeToVideoIntent::UpgradeToVideoResult_optional protocol witness for RawRepresentable.init(rawValue:) in conformance UpgradeToVideoIntent.UpgradeToVideoResult@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::UpgradeToVideoIntent::UpgradeToVideoResult_optional *a2@<X8>)
{
  result.value = UpgradeToVideoIntent.UpgradeToVideoResult.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance UpgradeToVideoIntent.UpgradeToVideoResult@<X0>(unint64_t *a1@<X8>)
{
  result = UpgradeToVideoIntent.UpgradeToVideoResult.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for static IntentValueTypeIdentifiable.lnValueType.getter in conformance UpgradeToVideoIntent.UpgradeToVideoResult(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UpgradeToVideoIntent.UpgradeToVideoResult and conformance UpgradeToVideoIntent.UpgradeToVideoResult();

  return static AppEnumRepresentation.lnValueType.getter(a1, v2);
}

uint64_t protocol witness for IntentValue.lnValue.getter in conformance UpgradeToVideoIntent.UpgradeToVideoResult(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UpgradeToVideoIntent.UpgradeToVideoResult and conformance UpgradeToVideoIntent.UpgradeToVideoResult();

  return AppEnumRepresentation.lnValue.getter(a1, v2);
}

uint64_t protocol witness for static IntentValue.canConvert(_:) in conformance UpgradeToVideoIntent.UpgradeToVideoResult(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UpgradeToVideoIntent.UpgradeToVideoResult and conformance UpgradeToVideoIntent.UpgradeToVideoResult();

  return static IntentValueTypeIdentifiable.canConvert(_:)(a1, a2, v4);
}

uint64_t protocol witness for static IntentValue.from(_:context:) in conformance UpgradeToVideoIntent.UpgradeToVideoResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type UpgradeToVideoIntent.UpgradeToVideoResult and conformance UpgradeToVideoIntent.UpgradeToVideoResult();

  return static AppEnumRepresentation.from(_:context:)(a1, a2, a3, v6);
}

uint64_t protocol witness for static IntentValueSequenceElement.canConvertFrom(_:) in conformance UpgradeToVideoIntent.UpgradeToVideoResult(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UpgradeToVideoIntent.UpgradeToVideoResult and conformance UpgradeToVideoIntent.UpgradeToVideoResult();

  return static IntentValueTypeIdentifiable.canConvertFrom(_:)(a1, a2, v4);
}

unint64_t lazy protocol witness table accessor for type UpgradeToVideoIntent.UpgradeToVideoResult and conformance UpgradeToVideoIntent.UpgradeToVideoResult()
{
  result = lazy protocol witness table cache variable for type UpgradeToVideoIntent.UpgradeToVideoResult and conformance UpgradeToVideoIntent.UpgradeToVideoResult;
  if (!lazy protocol witness table cache variable for type UpgradeToVideoIntent.UpgradeToVideoResult and conformance UpgradeToVideoIntent.UpgradeToVideoResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UpgradeToVideoIntent.UpgradeToVideoResult and conformance UpgradeToVideoIntent.UpgradeToVideoResult);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UpgradeToVideoIntent.UpgradeToVideoResult and conformance UpgradeToVideoIntent.UpgradeToVideoResult;
  if (!lazy protocol witness table cache variable for type UpgradeToVideoIntent.UpgradeToVideoResult and conformance UpgradeToVideoIntent.UpgradeToVideoResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UpgradeToVideoIntent.UpgradeToVideoResult and conformance UpgradeToVideoIntent.UpgradeToVideoResult);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UpgradeToVideoIntent.UpgradeToVideoResult and conformance UpgradeToVideoIntent.UpgradeToVideoResult;
  if (!lazy protocol witness table cache variable for type UpgradeToVideoIntent.UpgradeToVideoResult and conformance UpgradeToVideoIntent.UpgradeToVideoResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UpgradeToVideoIntent.UpgradeToVideoResult and conformance UpgradeToVideoIntent.UpgradeToVideoResult);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UpgradeToVideoIntent.UpgradeToVideoResult and conformance UpgradeToVideoIntent.UpgradeToVideoResult;
  if (!lazy protocol witness table cache variable for type UpgradeToVideoIntent.UpgradeToVideoResult and conformance UpgradeToVideoIntent.UpgradeToVideoResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UpgradeToVideoIntent.UpgradeToVideoResult and conformance UpgradeToVideoIntent.UpgradeToVideoResult);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UpgradeToVideoIntent.UpgradeToVideoResult and conformance UpgradeToVideoIntent.UpgradeToVideoResult;
  if (!lazy protocol witness table cache variable for type UpgradeToVideoIntent.UpgradeToVideoResult and conformance UpgradeToVideoIntent.UpgradeToVideoResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UpgradeToVideoIntent.UpgradeToVideoResult and conformance UpgradeToVideoIntent.UpgradeToVideoResult);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UpgradeToVideoIntent.UpgradeToVideoResult and conformance UpgradeToVideoIntent.UpgradeToVideoResult;
  if (!lazy protocol witness table cache variable for type UpgradeToVideoIntent.UpgradeToVideoResult and conformance UpgradeToVideoIntent.UpgradeToVideoResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UpgradeToVideoIntent.UpgradeToVideoResult and conformance UpgradeToVideoIntent.UpgradeToVideoResult);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UpgradeToVideoIntent.UpgradeToVideoResult and conformance UpgradeToVideoIntent.UpgradeToVideoResult;
  if (!lazy protocol witness table cache variable for type UpgradeToVideoIntent.UpgradeToVideoResult and conformance UpgradeToVideoIntent.UpgradeToVideoResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UpgradeToVideoIntent.UpgradeToVideoResult and conformance UpgradeToVideoIntent.UpgradeToVideoResult);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UpgradeToVideoIntent.UpgradeToVideoResult and conformance UpgradeToVideoIntent.UpgradeToVideoResult;
  if (!lazy protocol witness table cache variable for type UpgradeToVideoIntent.UpgradeToVideoResult and conformance UpgradeToVideoIntent.UpgradeToVideoResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UpgradeToVideoIntent.UpgradeToVideoResult and conformance UpgradeToVideoIntent.UpgradeToVideoResult);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UpgradeToVideoIntent.UpgradeToVideoResult and conformance UpgradeToVideoIntent.UpgradeToVideoResult;
  if (!lazy protocol witness table cache variable for type UpgradeToVideoIntent.UpgradeToVideoResult and conformance UpgradeToVideoIntent.UpgradeToVideoResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UpgradeToVideoIntent.UpgradeToVideoResult and conformance UpgradeToVideoIntent.UpgradeToVideoResult);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [UpgradeToVideoIntent.UpgradeToVideoResult] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [UpgradeToVideoIntent.UpgradeToVideoResult] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UpgradeToVideoIntent.UpgradeToVideoResult] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay27PhoneCallFlowDelegatePlugin20UpgradeToVideoIntentV0fgH6ResultOGMd, &_sSay27PhoneCallFlowDelegatePlugin20UpgradeToVideoIntentV0fgH6ResultOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UpgradeToVideoIntent.UpgradeToVideoResult] and conformance [A]);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UpgradeToVideoIntent.UpgradeToVideoResult(_BYTE *result, unsigned int a2, unsigned int a3)
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

id static StartCallIntentConversion.convertToIntent(phoneCallNLIntent:app:sharedGlobals:previousIntent:previousIntentResponse:groupResolver:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v11 = a6[3];
  v12 = a6[4];
  v13 = __swift_project_boxed_opaque_existential_1(a6, v11);

  return specialized static StartCallIntentConversion.convertToIntent(phoneCallNLIntent:app:sharedGlobals:previousIntent:previousIntentResponse:groupResolver:)(a1, a2, a3, a4, a5, v13, v11, v12);
}

id specialized static StartCallIntentConversion.convertToIntent(phoneCallNLIntent:app:sharedGlobals:previousIntent:previousIntentResponse:groupResolver:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v167 = a4;
  v166 = a2;
  v156 = type metadata accessor for Locale();
  v155 = *(v156 - 8);
  __chkstk_darwin(v156);
  v154 = &v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo18INCallRecordFilterCSgGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo18INCallRecordFilterCSgGMR);
  v160 = *(v161 - 8);
  __chkstk_darwin(v161);
  v15 = &v141 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMR);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v173 = &v141 - v18;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo21INCallDestinationTypeVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo21INCallDestinationTypeVGMR);
  v165 = *(v168 - 8);
  __chkstk_darwin(v168);
  v174 = &v141 - v19;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo011INPreferredE8ProviderVGMd, _s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo011INPreferredE8ProviderVGMR);
  v164 = *(v169 - 8);
  __chkstk_darwin(v169);
  v171 = &v141 - v20;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallCapabilityVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallCapabilityVGMR);
  v163 = *(v172 - 8);
  __chkstk_darwin(v172);
  v170 = &v141 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
  v162 = *(v22 - 8);
  __chkstk_darwin(v22);
  v24 = &v141 - v23;
  v181[3] = a7;
  v181[4] = a8;
  v153 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v181);
  v26 = *(*(a7 - 8) + 16);
  v152 = boxed_opaque_existential_1;
  v26(boxed_opaque_existential_1, a6, a7);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (PhoneCallNLIntent.hasAnyConfirmation()())
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.siriPhone);
    v28 = v167;
    v29 = v167;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v180[0] = v33;
      *v32 = 136315138;
      *&v177 = v28;
      v34 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17INStartCallIntentCSgMd, &_sSo17INStartCallIntentCSgMR);
      v35 = String.init<A>(describing:)();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v180);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_0, v30, v31, "#INStartCallIntentConversion is confirmation, returning previousIntent: %s.", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
    }

    v38 = v29;
    goto LABEL_12;
  }

  v151 = v17;
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v157 = v22;
  v39 = type metadata accessor for Logger();
  v158 = __swift_project_value_buffer(v39, static Logger.siriPhone);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_0, v40, v41, "#INStartCallIntentConversion makeIntentFromParse called with NLv4IntentOnly", v42, 2u);
  }

  v43 = a3[3];
  v44 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v43);
  (*(v44 + 8))(v180, v43, v44);
  outlined init with copy of SignalProviding(a3, &v177);
  v45 = swift_allocObject();
  outlined init with take of SPHConversation(&v177, v45 + 16);
  *(v45 + 56) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  type metadata accessor for INCallAudioRoute(0);
  v159 = v24;
  Transformer.init(transform:)();
  outlined init with copy of SignalProviding(a3, &v177);
  v46 = swift_allocObject();
  outlined init with take of SPHConversation(&v177, v46 + 16);
  v47 = v166;
  *(v46 + 56) = v166;
  type metadata accessor for INCallCapability(0);

  Transformer.init(transform:)();
  outlined init with copy of SignalProviding(a3, &v177);
  v48 = swift_allocObject();
  outlined init with take of SPHConversation(&v177, v48 + 16);
  *(v48 + 56) = v47;
  type metadata accessor for INPreferredCallProvider(0);

  Transformer.init(transform:)();
  type metadata accessor for INCallDestinationType(0);
  Transformer.init(transform:)();
  outlined init with copy of SignalProviding(v180, &v177);
  outlined init with copy of SignalProviding(v181, &v176);
  v49 = swift_allocObject();
  outlined init with take of SPHConversation(&v177, v49 + 16);
  outlined init with take of SPHConversation(&v176, v49 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin8SmsGroup_pGMd, &_sSay27PhoneCallFlowDelegatePlugin8SmsGroup_pGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo11INCallGroupCGSgMd, &_sSaySo11INCallGroupCGSgMR);
  Transformer.init(transform:)();
  v50 = Transformer.transform.getter();
  v50(&v177, a1);

  v51 = v177;
  v52 = Transformer.transform.getter();
  v52(&v177, a1);
  v150 = v51;

  v149 = v177;
  v54 = Transformer.transform.getter();
  v54(&v177, a1);
  v148 = v16;

  v146 = v177;
  v56 = a1[3];
  v55 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v56);
  v147 = (*(v55 + 128))(v56, v55);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  LODWORD(v56) = PhoneCallNLIntent.isEmergencyContactCall()();
  v57 = Transformer.transform.getter();
  v57(&v177, a1);
  HIDWORD(v142) = v56;

  v141 = v177;
  v145 = Transformer.transform.getter();
  v143 = v58;
  v60 = a1[3];
  v59 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v60);
  v144 = (*(v59 + 136))(v60, v59);
  *&v177 = v144;
  v145(&v176, &v177);

  v145 = v176;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v61 = PhoneCallNLIntent.getPersons()();
  v62 = swift_allocObject();
  *(v62 + 16) = v150;
  *(v62 + 24) = v61;
  v144 = v61;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18INCallRecordFilterCSgMd, &_sSo18INCallRecordFilterCSgMR);
  Transformer.init(transform:)();
  v63 = v161;
  v64 = Transformer.transform.getter();
  (v160[1])(v15, v63);
  v64(&v177, a1);

  v65 = v177;
  type metadata accessor for INStartCallIntent();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v66 = PhoneCallNLIntent.isGroupFaceTimeCall()();
  v67 = INStartCallIntent.init(callRecordFilter:callRecordToCallBack:audioRoute:destinationType:preferredCallProvider:contacts:ttyType:callCapability:isGroupCall:callGroups:)(v65, 0, v141, v146, v149, v144, 0, v150, v66, v145);
  v175 = v67;
  outlined init with copy of SignalProviding(a1, &v177);
  v68 = v166;

  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v160 = v72;
    v161 = swift_slowAlloc();
    *&v176 = v161;
    *v71 = 138413058;
    *(v71 + 4) = v67;
    *v72 = v67;
    *(v71 + 12) = 2080;
    v73 = v67;
    LODWORD(v150) = v70;
    v74 = dispatch thunk of App.debugDescription.getter();
    v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, &v176);

    *(v71 + 14) = v76;
    *(v71 + 22) = 2080;
    v77 = v178;
    v78 = v179;
    __swift_project_boxed_opaque_existential_1(&v177, v178);
    (*(v78 + 24))(v77, v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pMR);
    v79 = Array.description.getter();
    v81 = v80;

    __swift_destroy_boxed_opaque_existential_1(&v177);
    v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, &v176);

    *(v71 + 24) = v82;
    *(v71 + 32) = 2080;
    type metadata accessor for ContactQuery();
    v83 = Array.debugDescription.getter();
    v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v84, &v176);

    *(v71 + 34) = v85;
    _os_log_impl(&dword_0, v69, v150, "#INStartCallIntentConversion Starts with intent:%@ resolvedApp:%s phoneCallNLIntent=%s contactQueries=%s", v71, 0x2Au);
    outlined destroy of NSObject?(v160);

    swift_arrayDestroy();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v177);
  }

  v86 = v167;
  v87 = v67;
  v88 = _s27PhoneCallFlowDelegatePlugin20NLv4IntentConversionPAAE03setG8Metadata3for13sharedGlobals3app08previousG00G4TypeQzAJ_AA06SharedM9Providing_p17SiriAppResolution0T0CAJSgtFZAA05StartbgH0O_Tt3g5(v87, a3, v68, v86);

  swift_beginAccess();
  v175 = v88;

  type metadata accessor for App();
  v89 = v88;
  App.appIdentifier.getter();
  v90 = App.__allocating_init(appIdentifier:)();
  v91 = a3[3];
  v92 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v91);
  v93 = (*(v92 + 56))(v91, v92);
  LOBYTE(v91) = (*(*v93 + 232))(v93);

  if (v91)
  {
    static SiriKitEventSender.current.getter();
    type metadata accessor for EmergencyContactResolution();
    swift_allocObject();
    _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO21resolveUpdateSKIntent13siriKitIntent14contactQueries012hasEmergencyG03app02nlO013sharedGlobals18multicardinalIndex0mN11EventSender09emergencygH00P13GroupResolveryAA013NCRResolvableO0_p_Say13SiriInference0G5QueryVGSb07SiriAppH03AppCAA0aB8NLIntent_pAA06SharedW9Providing_pSiSg04SirinC004SirinZ7Sending_pAA0sgH0CAA0G14GroupResolving_ptFZTf4ennnnnnnnnn_nSo07INStartbO0C_Tt9g5Tf4nnnnnnnnne_n();
  }

  else
  {
    v94 = a3[3];
    v95 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v94);
    (*(v95 + 8))(&v177, v94, v95);
    __swift_project_boxed_opaque_existential_1(&v177, v178);
    v96 = v154;
    dispatch thunk of DeviceState.siriLocale.getter();
    static SiriKitEventSender.current.getter();
    type metadata accessor for EmergencyContactResolution();
    v97 = swift_allocObject();
    v98 = a1[3];
    v99 = a1[4];
    v100 = __swift_project_boxed_opaque_existential_1(a1, v98);
    LOBYTE(v139) = 1;
    _s27PhoneCallFlowDelegatePlugin17ContactResolutionC19updateSiriKitIntent04sirijK014contactQueries012hasEmergencyF03app6locale02nlK013sharedGlobals18multicardinalIndex0lJ11EventSender09emergencyfG0yAA013NCRResolvableK0_p_Say0I9Inference0F5QueryVGSb0i3AppG03AppCSg10Foundation6LocaleVAA0aB8NLIntent_pAA06SharedU9Providing_pSiSg0ijC00ijX7Sending_pAA0pfG0CtFZTf4ennnnnnnnnn_nSo07INStartbK0C_Tt9g5Tf4nnnnnennnn_n(v89, v147, BYTE4(v142) & 1, v90, v96, v100, a3, 0, v139, &v176, v97, v98, v99, v140, v141, v142, v143, v144, v145, v146, v147);

    __swift_destroy_boxed_opaque_existential_1(&v176);
    (*(v155 + 8))(v96, v156);
  }

  __swift_destroy_boxed_opaque_existential_1(&v177);
  v101 = v148;
  v28 = v89;
  v102 = outlined bridged method (ob) of @objc INStartCallIntent.contacts.getter(v28);
  v103 = one-time initialization token for instance;
  v104 = v28;
  v105 = v159;
  if (v103 != -1)
  {
    swift_once();
  }

  _s27PhoneCallFlowDelegatePlugin34AppSelectionSignalsGatheringHelperO23triggerSignalCollection13sharedGlobals8contacts05phoneB8NLIntent05smartfG018eligibleAppsFinder8skIntentyAA06SharedO9Providing_p_SaySo8INPersonCGSgAA0abR0_pAA05SmartfG14FeatureManagerCSgAA012PrefetchableF7Finding_pAA07CallingX0_pSgtFZTf4nnnnenn_nAA08EligiblefV0C_Tt5g5(a3, v102, a1, 0, static EligibleAppFinder.instance);

  __swift_project_boxed_opaque_existential_1(v180, v180[3]);
  if (dispatch thunk of DeviceState.isXRDevice.getter())
  {
    v106 = v104;
    v107 = outlined bridged method (ob) of @objc INStartCallIntent.contacts.getter(v106);
    if (v107)
    {
      v108 = v107;
      if (specialized Array.count.getter(v107))
      {
LABEL_24:
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v108 & 0xC000000000000001) == 0, v108);
        if ((v108 & 0xC000000000000001) != 0)
        {
          v109 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v109 = *(v108 + 32);
        }

        v110 = v109;

        v111 = outlined bridged method (pb) of @objc INPerson.sourceAppBundleIdentifier.getter(v110);
        v113 = v112;

        if (v113)
        {
          v114 = v111;
        }

        else
        {
          v114 = 0;
        }

        if (v113)
        {
          v115 = v113;
        }

        else
        {
          v115 = 0xE000000000000000;
        }

        v116 = static PhoneReferenceResolution.getContactSourceType(contactSource:)(v114, v115);

        if (static PhoneReferenceResolution.isTelephonyTargetFromSrr(contactSourceType:)(v116))
        {
          v117 = Logger.logObject.getter();
          v118 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v117, v118))
          {
            v167 = v28;
            v119 = v117;
            v120 = v104;
            v121 = swift_slowAlloc();
            v122 = swift_slowAlloc();
            *&v177 = v122;
            *v121 = 136315138;
            if (v116)
            {
              if (v116 == 1)
              {
                v123 = 0x8000000000453AB0;
                v124 = 0xD000000000000012;
              }

              else
              {
                v123 = 0xED00007465677261;
                v124 = 0x54746C7561666564;
              }
            }

            else
            {
              v123 = 0xEB00000000737365;
              v124 = 0x6E69737542727273;
            }

            v130 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v123, &v177);

            *(v121 + 4) = v130;
            _os_log_impl(&dword_0, v119, v118, "#INStartCallIntentConversion detected Telephony target(%s from srr, update PreferredCallProvider to telephonyProvider", v121, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v122);

            v104 = v120;
            v101 = v148;
            v28 = v167;
          }

          else
          {
          }

          v131 = v106;
          INStartCallIntent.updatePreferredCallProvider(preferredCallProvider:)(1);
        }

        v105 = v159;
        goto LABEL_52;
      }
    }

    v125 = outlined bridged method (ob) of @objc INStartCallIntent.contacts.getter(v106);
    if (v125)
    {
      v126 = v125;
      if (specialized Array.count.getter(v125))
      {
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v126 & 0xC000000000000001) == 0, v126);
        if ((v126 & 0xC000000000000001) != 0)
        {
          v127 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v127 = *(v126 + 32);
        }

        v128 = v127;

        v129 = outlined bridged method (ob) of @objc INPerson.siriMatches.getter(v128);
        if (!v129)
        {
          goto LABEL_45;
        }

        v108 = v129;
        if (specialized Array.count.getter(v129))
        {
          goto LABEL_24;
        }
      }
    }
  }

LABEL_45:

LABEL_52:
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v132 = v104;
  v133 = PhoneCallNLIntent.isGroupFaceTimeCall()();
  INStartCallIntent.updateIsGroupCall(isGroupCall:)(v133);

  v134 = Logger.logObject.getter();
  v135 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v134, v135))
  {
    v136 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    *v136 = 138412290;
    *(v136 + 4) = v132;
    *v137 = v28;
    v138 = v132;
    _os_log_impl(&dword_0, v134, v135, "#INStartCallIntentConversion ends with %@", v136, 0xCu);
    outlined destroy of NSObject?(v137);
  }

  (*(v151 + 8))(v173, v101);
  (*(v165 + 8))(v174, v168);
  (*(v164 + 8))(v171, v169);
  (*(v163 + 8))(v170, v172);
  (*(v162 + 8))(v105, v157);
  __swift_destroy_boxed_opaque_existential_1(v180);
LABEL_12:
  __swift_destroy_boxed_opaque_existential_1(v181);
  return v28;
}