uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:) in conformance PhoneIntentRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v13 = type metadata accessor for PhoneIntentRCHFlowStrategy(0, *(a4 + 80), *(a4 + 88), v12);
  *v11 = v5;
  v11[1] = protocol witness for ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:) in conformance PhoneIntentRCHFlowStrategy<A, B>;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, v13, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:) in conformance PhoneIntentRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v13 = type metadata accessor for PhoneIntentRCHFlowStrategy(0, *(a4 + 80), *(a4 + 88), v12);
  *v11 = v5;
  v11[1] = protocol witness for ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:) in conformance PhoneIntentRCHFlowStrategy<A, B>;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, v13, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:) in conformance PhoneIntentRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v13 = type metadata accessor for PhoneIntentRCHFlowStrategy(0, *(a4 + 80), *(a4 + 88), v12);
  *v11 = v5;
  v11[1] = protocol witness for ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:) in conformance PhoneIntentRCHFlowStrategy<A, B>;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, v13, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:) in conformance PhoneIntentRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v15 = type metadata accessor for PhoneIntentRCHFlowStrategy(0, *(a5 + 80), *(a5 + 88), v14);
  *v13 = v6;
  v13[1] = protocol witness for ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:) in conformance PhoneIntentRCHFlowStrategy<A, B>;

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, v15, a6);
}

uint64_t protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance PhoneIntentRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v15 = type metadata accessor for PhoneIntentRCHFlowStrategy(0, *(a5 + 80), *(a5 + 88), v14);
  *v13 = v6;
  v13[1] = protocol witness for ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:) in conformance PhoneIntentRCHFlowStrategy<A, B>;

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(a1, a2, a3, a4, v15, a6);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance PhoneIntentRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v11 = type metadata accessor for PhoneIntentRCHFlowStrategy(0, *(a3 + 80), *(a3 + 88), v10);
  *v9 = v4;
  v9[1] = protocol witness for Flow.onAsync(input:) in conformance AnnounceVoicemailReadingFlow;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(a1, a2, v11, a4);
}

uint64_t specialized Sequence.first(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 40);
  if (!v5)
  {
    return 0;
  }

  while (1)
  {
    v8 = *(v6 - 1);
    v7 = *v6;
    v11[0] = v8;
    v11[1] = v7;

    v9 = a1(v11);
    if (v3)
    {
      break;
    }

    if (v9)
    {
      return v8;
    }

    v6 += 2;
    if (!--v5)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t *a4@<X4>, _OWORD *a5@<X8>)
{
  v8 = result;
  v10 = *(a2 + 16);
  v11 = a2 + 32;
  if (v10)
  {
    while (1)
    {
      outlined init with copy of PhoneCallNLIntent?(v11, v14, a3, a4);
      result = v8(v14);
      if (v5)
      {
        return OUTLINED_FUNCTION_45_15(v14);
      }

      if (result)
      {
        break;
      }

      result = OUTLINED_FUNCTION_45_15(v14);
      v11 += 64;
      if (!--v10)
      {
        goto LABEL_5;
      }
    }

    v12 = v14[1];
    *a5 = v14[0];
    a5[1] = v12;
    v13 = v14[3];
    a5[2] = v14[2];
    a5[3] = v13;
  }

  else
  {
LABEL_5:
    a5[2] = 0u;
    a5[3] = 0u;
    *a5 = 0u;
    a5[1] = 0u;
  }

  return result;
}

uint64_t _s27PhoneCallFlowDelegatePlugin19ContactSlotResolverO4make03rchC7Context13sharedGlobalsAA09AnyIntentH0VyxGAA13SKTransformerV07RCHFlowK0V_AA06SharedM9Providing_ptAA013NCRResolvableO0RzlFZSo07INStartbO0C_Tt2g5@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStarteJ0CGGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStarteJ0CGGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_424FF0;
  outlined init with copy of SignalProviding(a4, v17);
  v11 = [objc_allocWithZone(HKHealthStore) init];
  v12 = [objc_allocWithZone(HKMedicalIDStore) initWithHealthStore:v11];

  v19 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for HKMedicalIDStore, HKMedicalIDStore_ptr);
  v20 = &protocol witness table for HKMedicalIDStore;
  v18 = v12;
  specialized SKIntentResolver.toAnyIntentResolver()((v10 + 32));
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v17, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo07INStartB6IntentCGMR);
  outlined init with copy of SignalProviding(a4, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin32SiriInferenceContactSlotResolverCySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin32SiriInferenceContactSlotResolverCySo07INStartB6IntentCGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  outlined init with take of PhoneCallFeatureFlagProviding(v17, v13 + 40);
  *(v13 + 80) = 0;
  *(v13 + 88) = 1;
  v14 = a3;

  v15 = a2;
  specialized SKIntentResolver.toAnyIntentResolver()(&_s27PhoneCallFlowDelegatePlugin32SiriInferenceContactSlotResolverCySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin32SiriInferenceContactSlotResolverCySo07INStartB6IntentCGMR, partial apply for specialized implicit closure #2 in implicit closure #1 in AnyIntentResolver.init<A>(_:), &async function pointer to partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:), (v10 + 96));

  _s27PhoneCallFlowDelegatePlugin21SKIntentResolverChainO8firstHityAA09AnyIntentG0VyxGAGd_tSo8INIntentCRbzlFZSo07INStartbL0C_Tt1g5(v10, a5);
}

uint64_t _s27PhoneCallFlowDelegatePlugin19ContactSlotResolverO4make03rchC7Context13sharedGlobalsAA09AnyIntentH0VyxGAA13SKTransformerV07RCHFlowK0V_AA06SharedM9Providing_ptAA013NCRResolvableO0RzlFZSo012INStartAudiobO0C_Tt2g5@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudioeJ0CGGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudioeJ0CGGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_424FF0;
  outlined init with copy of SignalProviding(a4, v17);
  v11 = [objc_allocWithZone(HKHealthStore) init];
  v12 = [objc_allocWithZone(HKMedicalIDStore) initWithHealthStore:v11];

  v19 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for HKMedicalIDStore, HKMedicalIDStore_ptr);
  v20 = &protocol witness table for HKMedicalIDStore;
  v18 = v12;
  specialized SKIntentResolver.toAnyIntentResolver()((v10 + 32));
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v17, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo012INStartAudioB6IntentCGMR);
  outlined init with copy of SignalProviding(a4, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin32SiriInferenceContactSlotResolverCySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin32SiriInferenceContactSlotResolverCySo012INStartAudioB6IntentCGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  outlined init with take of PhoneCallFeatureFlagProviding(v17, v13 + 40);
  *(v13 + 80) = 0;
  *(v13 + 88) = 1;
  v14 = a3;

  v15 = a2;
  specialized SKIntentResolver.toAnyIntentResolver()(&_s27PhoneCallFlowDelegatePlugin32SiriInferenceContactSlotResolverCySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin32SiriInferenceContactSlotResolverCySo012INStartAudioB6IntentCGMR, partial apply for specialized implicit closure #2 in implicit closure #1 in AnyIntentResolver.init<A>(_:), &async function pointer to partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:), (v10 + 96));

  _s27PhoneCallFlowDelegatePlugin21SKIntentResolverChainO8firstHityAA09AnyIntentG0VyxGAGd_tSo8INIntentCRbzlFZSo012INStartAudiobL0C_Tt1g5(v10, a5);
}

uint64_t _s27PhoneCallFlowDelegatePlugin19ContactSlotResolverO4make03rchC7Context13sharedGlobalsAA09AnyIntentH0VyxGAA13SKTransformerV07RCHFlowK0V_AA06SharedM9Providing_ptAA013NCRResolvableO0RzlFZSo012INStartVideobO0C_Tt2g5@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideoeJ0CGGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideoeJ0CGGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_424FF0;
  outlined init with copy of SignalProviding(a4, v17);
  v11 = [objc_allocWithZone(HKHealthStore) init];
  v12 = [objc_allocWithZone(HKMedicalIDStore) initWithHealthStore:v11];

  v19 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for HKMedicalIDStore, HKMedicalIDStore_ptr);
  v20 = &protocol witness table for HKMedicalIDStore;
  v18 = v12;
  specialized SKIntentResolver.toAnyIntentResolver()((v10 + 32));
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v17, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo012INStartVideoB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo012INStartVideoB6IntentCGMR);
  outlined init with copy of SignalProviding(a4, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin32SiriInferenceContactSlotResolverCySo012INStartVideoB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin32SiriInferenceContactSlotResolverCySo012INStartVideoB6IntentCGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  outlined init with take of PhoneCallFeatureFlagProviding(v17, v13 + 40);
  *(v13 + 80) = 0;
  *(v13 + 88) = 1;
  v14 = a3;

  v15 = a2;
  specialized SKIntentResolver.toAnyIntentResolver()(&_s27PhoneCallFlowDelegatePlugin32SiriInferenceContactSlotResolverCySo012INStartVideoB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin32SiriInferenceContactSlotResolverCySo012INStartVideoB6IntentCGMR, partial apply for specialized implicit closure #2 in implicit closure #1 in AnyIntentResolver.init<A>(_:), &async function pointer to partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:), (v10 + 96));

  _s27PhoneCallFlowDelegatePlugin21SKIntentResolverChainO8firstHityAA09AnyIntentG0VyxGAGd_tSo8INIntentCRbzlFZSo012INStartVideobL0C_Tt1g5(v10, a5);
}

uint64_t specialized SKIntentResolver.toAnyIntentResolver()@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for AddCallParticipantContactSlotResolver();
  *a1 = v1;
  a1[3] = v3;
  a1[4] = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyIntentResolver.init<A>(_:);
  a1[5] = v1;
  a1[6] = &async function pointer to partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);
  a1[7] = v1;
  return swift_retain_n();
}

void *specialized SKIntentResolver.toAnyIntentResolver()@<X0>(uint64_t *a1@<X8>)
{
  outlined init with copy of PhoneCallNLIntent?(v1, __src, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo012INStartVideoB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo012INStartVideoB6IntentCGMR);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo012INStartVideoB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo012INStartVideoB6IntentCGMR);
  v3 = swift_allocObject();
  *a1 = v3;
  outlined init with copy of PhoneCallNLIntent?(__src, v3 + 16, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo012INStartVideoB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo012INStartVideoB6IntentCGMR);
  outlined init with copy of PhoneCallNLIntent?(__src, v7, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo012INStartVideoB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo012INStartVideoB6IntentCGMR);
  v4 = swift_allocObject();
  memcpy((v4 + 16), v7, 0x50uLL);
  a1[4] = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyIntentResolver.init<A>(_:);
  a1[5] = v4;
  v5 = swift_allocObject();
  result = memcpy((v5 + 16), __src, 0x50uLL);
  a1[6] = &async function pointer to partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);
  a1[7] = v5;
  return result;
}

{
  outlined init with copy of PhoneCallNLIntent?(v1, __src, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo012INStartAudioB6IntentCGMR);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo012INStartAudioB6IntentCGMR);
  v3 = swift_allocObject();
  *a1 = v3;
  outlined init with copy of PhoneCallNLIntent?(__src, v3 + 16, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo012INStartAudioB6IntentCGMR);
  outlined init with copy of PhoneCallNLIntent?(__src, v7, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo012INStartAudioB6IntentCGMR);
  v4 = swift_allocObject();
  memcpy((v4 + 16), v7, 0x50uLL);
  a1[4] = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyIntentResolver.init<A>(_:);
  a1[5] = v4;
  v5 = swift_allocObject();
  result = memcpy((v5 + 16), __src, 0x50uLL);
  a1[6] = &async function pointer to partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);
  a1[7] = v5;
  return result;
}

{
  outlined init with copy of PhoneCallNLIntent?(v1, __src, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo07INStartB6IntentCGMR);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo07INStartB6IntentCGMR);
  v3 = swift_allocObject();
  *a1 = v3;
  outlined init with copy of PhoneCallNLIntent?(__src, v3 + 16, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo07INStartB6IntentCGMR);
  outlined init with copy of PhoneCallNLIntent?(__src, v7, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo07INStartB6IntentCGMR);
  v4 = swift_allocObject();
  memcpy((v4 + 16), v7, 0x50uLL);
  a1[4] = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyIntentResolver.init<A>(_:);
  a1[5] = v4;
  v5 = swift_allocObject();
  result = memcpy((v5 + 16), __src, 0x50uLL);
  a1[6] = &async function pointer to partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);
  a1[7] = v5;
  return result;
}

uint64_t specialized SKIntentResolver.toAnyIntentResolver()@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  *a5 = v5;
  a5[3] = v9;
  a5[4] = a3;
  a5[5] = v5;
  a5[6] = a4;
  a5[7] = v5;
  return swift_retain_n();
}

uint64_t _s27PhoneCallFlowDelegatePlugin21SKIntentResolverChainO8firstHityAA09AnyIntentG0VyxGAGd_tSo8INIntentCRbzlFZSo012INStartVideobL0C_Tt1g5@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin22FirstHitIntentResolver33_F6DF120089954B0E13EF06C80F55DC3CLLVySo012INStartVideobH0CGMd, &_s27PhoneCallFlowDelegatePlugin22FirstHitIntentResolver33_F6DF120089954B0E13EF06C80F55DC3CLLVySo012INStartVideobH0CGMR);
  *a2 = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  a2[4] = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyIntentResolver.init<A>(_:);
  a2[5] = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  a2[6] = &async function pointer to partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);
  a2[7] = v5;
  return swift_bridgeObjectRetain_n();
}

uint64_t _s27PhoneCallFlowDelegatePlugin21SKIntentResolverChainO8firstHityAA09AnyIntentG0VyxGAGd_tSo8INIntentCRbzlFZSo012INStartAudiobL0C_Tt1g5@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin22FirstHitIntentResolver33_F6DF120089954B0E13EF06C80F55DC3CLLVySo012INStartAudiobH0CGMd, &_s27PhoneCallFlowDelegatePlugin22FirstHitIntentResolver33_F6DF120089954B0E13EF06C80F55DC3CLLVySo012INStartAudiobH0CGMR);
  *a2 = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  a2[4] = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyIntentResolver.init<A>(_:);
  a2[5] = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  a2[6] = &async function pointer to partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);
  a2[7] = v5;
  return swift_bridgeObjectRetain_n();
}

uint64_t _s27PhoneCallFlowDelegatePlugin21SKIntentResolverChainO8firstHityAA09AnyIntentG0VyxGAGd_tSo8INIntentCRbzlFZSo07INStartbL0C_Tt1g5@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin22FirstHitIntentResolver33_F6DF120089954B0E13EF06C80F55DC3CLLVySo07INStartbH0CGMd, &_s27PhoneCallFlowDelegatePlugin22FirstHitIntentResolver33_F6DF120089954B0E13EF06C80F55DC3CLLVySo07INStartbH0CGMR);
  *a2 = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  a2[4] = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyIntentResolver.init<A>(_:);
  a2[5] = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  a2[6] = &async function pointer to partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);
  a2[7] = v5;
  return swift_bridgeObjectRetain_n();
}

uint64_t PhoneIntentResolver.resolve<A>(nlIntent:skIntent:rchFlowContext:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[44] = a6;
  v7[45] = a7;
  v7[42] = a4;
  v7[43] = a5;
  v7[40] = a2;
  v7[41] = a3;
  v7[39] = a1;
  return _swift_task_switch(PhoneIntentResolver.resolve<A>(nlIntent:skIntent:rchFlowContext:sharedGlobals:), 0, 0);
}

uint64_t PhoneIntentResolver.resolve<A>(nlIntent:skIntent:rchFlowContext:sharedGlobals:)()
{
  v54 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v2 = *(v0 + 320);
  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v3, static Logger.siriPhone);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 320);
    v8 = OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_12_17();
    swift_slowAlloc();
    OUTLINED_FUNCTION_26_25();
    *v8 = 136315138;
    v9 = [v7 _className];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v53);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_0, v5, v6, "#PhoneIntentResolver Resolving %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v1);
    OUTLINED_FUNCTION_5_39();

    OUTLINED_FUNCTION_8();
  }

  v14 = objc_opt_self();
  if (OUTLINED_FUNCTION_49_19(v14))
  {
    v15 = OUTLINED_FUNCTION_32_20();
    _s27PhoneCallFlowDelegatePlugin19ContactSlotResolverO4make03rchC7Context13sharedGlobalsAA09AnyIntentH0VyxGAA13SKTransformerV07RCHFlowK0V_AA06SharedM9Providing_ptAA013NCRResolvableO0RzlFZSo07INStartbO0C_Tt2g5(v15, v16, v17, v18, (v0 + 208));
    OUTLINED_FUNCTION_0_93();
    v52 = v19;
    v20 = swift_task_alloc();
    *(v0 + 368) = v20;
    *v20 = v0;
    v21 = PhoneIntentResolver.resolve<A>(nlIntent:skIntent:rchFlowContext:sharedGlobals:);
LABEL_11:
    v20[1] = v21;
    v36 = *(v0 + 312);

    return v52(v6, v36);
  }

  v22 = objc_opt_self();
  if (OUTLINED_FUNCTION_49_19(v22))
  {
    v23 = OUTLINED_FUNCTION_32_20();
    _s27PhoneCallFlowDelegatePlugin19ContactSlotResolverO4make03rchC7Context13sharedGlobalsAA09AnyIntentH0VyxGAA13SKTransformerV07RCHFlowK0V_AA06SharedM9Providing_ptAA013NCRResolvableO0RzlFZSo012INStartAudiobO0C_Tt2g5(v23, v24, v25, v26, (v0 + 144));
    OUTLINED_FUNCTION_0_93();
    v52 = v27;
    v20 = swift_task_alloc();
    *(v0 + 392) = v20;
    *v20 = v0;
    v21 = PhoneIntentResolver.resolve<A>(nlIntent:skIntent:rchFlowContext:sharedGlobals:);
    goto LABEL_11;
  }

  v28 = objc_opt_self();
  if (OUTLINED_FUNCTION_49_19(v28))
  {
    v29 = OUTLINED_FUNCTION_32_20();
    _s27PhoneCallFlowDelegatePlugin19ContactSlotResolverO4make03rchC7Context13sharedGlobalsAA09AnyIntentH0VyxGAA13SKTransformerV07RCHFlowK0V_AA06SharedM9Providing_ptAA013NCRResolvableO0RzlFZSo012INStartVideobO0C_Tt2g5(v29, v30, v31, v32, (v0 + 80));
    OUTLINED_FUNCTION_0_93();
    v52 = v33;
    v34 = swift_task_alloc();
    v20 = OUTLINED_FUNCTION_47_20(v34);
    *v20 = v35;
    v21 = PhoneIntentResolver.resolve<A>(nlIntent:skIntent:rchFlowContext:sharedGlobals:);
    goto LABEL_11;
  }

  v38 = objc_opt_self();
  v39 = OUTLINED_FUNCTION_49_19(v38);
  if (v39)
  {
    v6 = v39;
    v40 = *(v0 + 344);
    v41 = *(v0 + 328);
    v42 = *(v0 + 336);
    v43 = *(v0 + 312);
    outlined init with copy of SignalProviding(*(v0 + 352), v0 + 272);
    type metadata accessor for AddCallParticipantContactSlotResolver();
    v44 = swift_allocObject();
    v44[2] = v41;
    v44[3] = v42;
    v44[4] = v40;
    outlined init with take of PhoneCallFeatureFlagProviding((v0 + 272), (v44 + 5));
    v45 = v40;

    v46 = v42;
    specialized SKIntentResolver.toAnyIntentResolver()((v0 + 16));

    if ((*(v0 + 48))(v6, v43))
    {
      OUTLINED_FUNCTION_0_93();
      v52 = v47;
      v20 = swift_task_alloc();
      *(v0 + 440) = v20;
      *v20 = v0;
      v21 = PhoneIntentResolver.resolve<A>(nlIntent:skIntent:rchFlowContext:sharedGlobals:);
      goto LABEL_11;
    }

    v48 = *(v0 + 360);
    v49 = *(v0 + 320);
    INIntent.typedOrThrow<A>(as:)(v48, v48);
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 16, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo05INAddb11ParticipantG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo05INAddb11ParticipantG0CGMR);
  }

  else
  {
    *(v0 + 320);
  }

  v50 = OUTLINED_FUNCTION_2_8();

  return v51(v50);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 376) = v4;
  *(v2 + 384) = v0;

  if (v0)
  {
    v5 = PhoneIntentResolver.resolve<A>(nlIntent:skIntent:rchFlowContext:sharedGlobals:);
  }

  else
  {
    v5 = PhoneIntentResolver.resolve<A>(nlIntent:skIntent:rchFlowContext:sharedGlobals:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 384);
  v2 = OUTLINED_FUNCTION_50_20();
  v3 = *(v0 + 376);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 208, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGMR);

  OUTLINED_FUNCTION_17_5();
  if (!v1)
  {
    v4 = v2;
  }

  return v5(v4);
}

{
  OUTLINED_FUNCTION_15();
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 208, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGMR);
  OUTLINED_FUNCTION_11();

  return v1();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 400) = v4;
  *(v2 + 408) = v0;

  if (v0)
  {
    v5 = PhoneIntentResolver.resolve<A>(nlIntent:skIntent:rchFlowContext:sharedGlobals:);
  }

  else
  {
    v5 = PhoneIntentResolver.resolve<A>(nlIntent:skIntent:rchFlowContext:sharedGlobals:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 408);
  v2 = OUTLINED_FUNCTION_50_20();
  v3 = *(v0 + 400);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 144, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGMR);

  OUTLINED_FUNCTION_17_5();
  if (!v1)
  {
    v4 = v2;
  }

  return v5(v4);
}

{
  OUTLINED_FUNCTION_15();
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 144, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGMR);
  OUTLINED_FUNCTION_11();

  return v1();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 424) = v4;
  *(v2 + 432) = v0;

  if (v0)
  {
    v5 = PhoneIntentResolver.resolve<A>(nlIntent:skIntent:rchFlowContext:sharedGlobals:);
  }

  else
  {
    v5 = PhoneIntentResolver.resolve<A>(nlIntent:skIntent:rchFlowContext:sharedGlobals:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 432);
  v2 = OUTLINED_FUNCTION_50_20();
  v3 = *(v0 + 424);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 80, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGMR);

  OUTLINED_FUNCTION_17_5();
  if (!v1)
  {
    v4 = v2;
  }

  return v5(v4);
}

{
  OUTLINED_FUNCTION_15();
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 80, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGMR);
  OUTLINED_FUNCTION_11();

  return v1();
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v5 + 448) = v0;

  if (!v0)
  {
    *(v5 + 456) = v3;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_27();
  v2 = *(v0 + 448);
  v1 = *(v0 + 456);
  v3 = OUTLINED_FUNCTION_50_20();
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 16, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo05INAddb11ParticipantG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo05INAddb11ParticipantG0CGMR);

  OUTLINED_FUNCTION_17_5();
  if (!v2)
  {
    v4 = v3;
  }

  return v5(v4);
}

{
  OUTLINED_FUNCTION_15();
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 16, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo05INAddb11ParticipantG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo05INAddb11ParticipantG0CGMR);
  OUTLINED_FUNCTION_11();

  return v1();
}

uint64_t protocol witness for PhoneIntentResolving.resolve<A>(nlIntent:skIntent:rchFlowContext:sharedGlobals:) in conformance PhoneIntentResolver(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = protocol witness for PhoneIntentResolving.resolve<A>(nlIntent:skIntent:rchFlowContext:sharedGlobals:) in conformance PhoneIntentResolver;

  return PhoneIntentResolver.resolve<A>(nlIntent:skIntent:rchFlowContext:sharedGlobals:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t protocol witness for PhoneIntentResolving.resolve<A>(nlIntent:skIntent:rchFlowContext:sharedGlobals:) in conformance PhoneIntentResolver()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_18_4();
  v3 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;

  OUTLINED_FUNCTION_17_5();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t specialized implicit closure #2 in implicit closure #1 in AnyIntentResolver.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(*a3 + 128))(a1, a2) & 1;
}

{
  return (*(*a3 + 128))(a1, a2) & 1;
}

uint64_t specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);

  return specialized SlotResolver.resolve(skIntent:nlIntent:)();
}

{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);

  return specialized SlotResolver.resolve(skIntent:nlIntent:)();
}

{
  *(v2 + 16) = a1;
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);

  return specialized SlotResolver.resolveSlot(skIntent:nlIntent:)(a1, a2);
}

{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);

  return specialized SlotResolver.resolve(skIntent:nlIntent:)();
}

{
  *(v2 + 16) = a1;
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);

  return specialized SlotResolver.resolveSlot(skIntent:nlIntent:)(a1, a2);
}

{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);

  return specialized SlotResolver.resolve(skIntent:nlIntent:)();
}

{
  *(v2 + 16) = a1;
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);

  return specialized SlotResolver.resolveSlot(skIntent:nlIntent:)(a1, a2);
}

{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);

  return specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:)(a1, a2);
}

{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);

  return specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:)(a1, a2);
}

{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);

  return specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:)(a1, a2);
}

{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);

  return specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:)(a1, a2);
}

uint64_t specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);

  return specialized FirstHitIntentResolver.resolve(skIntent:nlIntent:)(a1, a2, a3);
}

{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);

  return specialized FirstHitIntentResolver.resolve(skIntent:nlIntent:)(a1, a2, a3);
}

{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);

  return specialized FirstHitIntentResolver.resolve(skIntent:nlIntent:)(a1, a2, a3);
}

uint64_t specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:)()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_18_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;

  if (v1)
  {
    OUTLINED_FUNCTION_13_6();

    return v8();
  }

  else
  {
    *(v4 + 32) = v0;
    v10 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v10, v11, v12);
  }
}

{
  OUTLINED_FUNCTION_27();
  v1 = OUTLINED_FUNCTION_36_21();
  INStartVideoCallIntent.overwriteContacts(newContacts:)(v1);

  OUTLINED_FUNCTION_11();
  v2 = v0;
  v3 = OUTLINED_FUNCTION_34_16();

  return v4(v3);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_18_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;

  if (v1)
  {
    OUTLINED_FUNCTION_13_6();

    return v8();
  }

  else
  {
    *(v4 + 32) = v0;
    v10 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v10, v11, v12);
  }
}

{
  OUTLINED_FUNCTION_27();
  v1 = OUTLINED_FUNCTION_36_21();
  INStartAudioCallIntent.overwriteContacts(newContacts:)(v1);

  OUTLINED_FUNCTION_11();
  v2 = v0;
  v3 = OUTLINED_FUNCTION_34_16();

  return v4(v3);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_18_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;

  if (v1)
  {
    OUTLINED_FUNCTION_13_6();

    return v8();
  }

  else
  {
    *(v4 + 32) = v0;
    v10 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v10, v11, v12);
  }
}

{
  OUTLINED_FUNCTION_27();
  v1 = OUTLINED_FUNCTION_36_21();
  INStartCallIntent.overwriteContacts(newContacts:)(v1);

  OUTLINED_FUNCTION_11();
  v2 = v0;
  v3 = OUTLINED_FUNCTION_34_16();

  return v4(v3);
}

uint64_t specialized FirstHitIntentResolver.resolve(skIntent:nlIntent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[50] = a2;
  v3[51] = a3;
  v3[49] = a1;
  return _swift_task_switch(specialized FirstHitIntentResolver.resolve(skIntent:nlIntent:), 0, 0);
}

{
  v3[50] = a2;
  v3[51] = a3;
  v3[49] = a1;
  return _swift_task_switch(specialized FirstHitIntentResolver.resolve(skIntent:nlIntent:), 0, 0);
}

{
  v3[50] = a2;
  v3[51] = a3;
  v3[49] = a1;
  return _swift_task_switch(specialized FirstHitIntentResolver.resolve(skIntent:nlIntent:), 0, 0);
}

uint64_t specialized FirstHitIntentResolver.resolve(skIntent:nlIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_135();
  v19 = OUTLINED_FUNCTION_41_24();
  OUTLINED_FUNCTION_31_22(v19);
  OUTLINED_FUNCTION_21_31(v20, v21, v22, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGMR);

  outlined init with copy of PhoneCallNLIntent?(v15 + 16, v15 + 144, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGSgMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGSgMR);
  if (*(v15 + 168))
  {
    OUTLINED_FUNCTION_23_25();
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v23, static Logger.siriPhone);
    outlined init with copy of PhoneCallNLIntent?(v15 + 80, v15 + 208, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGMR);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_51_0(v25))
    {
      swift_slowAlloc();
      OUTLINED_FUNCTION_40_21();
      OUTLINED_FUNCTION_26_25();
      *v14 = 136315394;
      *(v15 + 376) = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartVideoCallIntent, INStartVideoCallIntent_ptr);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22INStartVideoCallIntentCmMd, &_sSo22INStartVideoCallIntentCmMR);
      v26 = String.init<A>(describing:)();
      OUTLINED_FUNCTION_38_20(v26, v27, v28, v29);
      OUTLINED_FUNCTION_113_0();
      OUTLINED_FUNCTION_30_29();
      OUTLINED_FUNCTION_28_20();
      OUTLINED_FUNCTION_42_20();
      outlined init with copy of Any(v15 + 272, v15 + 336);
      v30 = OUTLINED_FUNCTION_27_25();
      OUTLINED_FUNCTION_51_22(v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, &_sypXpMR);
      String.init<A>(describing:)();
      v31 = OUTLINED_FUNCTION_24_31();
      v33 = OUTLINED_FUNCTION_43_22(v31, v32);

      *(v14 + 14) = v33;
      OUTLINED_FUNCTION_9_57();
      _os_log_impl(v34, v35, v36, v37, v38, 0x16u);
      OUTLINED_FUNCTION_15_20();
      OUTLINED_FUNCTION_5_39();

      OUTLINED_FUNCTION_8();
    }

    else
    {
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v15 + 208, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGMR);
    }

    if ((*(v15 + 112))(*(v15 + 392), *(v15 + 400)))
    {
      OUTLINED_FUNCTION_0_93();
      a9 = v52;
      v53 = swift_task_alloc();
      v54 = OUTLINED_FUNCTION_47_20(v53);
      *v54 = v55;
      OUTLINED_FUNCTION_14_48(v54);
      OUTLINED_FUNCTION_15_11();

      return v58(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14);
    }

    *v18;
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v15 + 80, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGMR);
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v15 + 16, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGSgMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGSgMR);
  }

  else
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v15 + 144, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGSgMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGSgMR);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v39, static Logger.siriPhone);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_51_0(v41))
    {
      v42 = OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_12_17();
      swift_slowAlloc();
      OUTLINED_FUNCTION_26_25();
      *v42 = 136315138;
      *(v15 + 368) = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartVideoCallIntent, INStartVideoCallIntent_ptr);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22INStartVideoCallIntentCmMd, &_sSo22INStartVideoCallIntentCmMR);
      v43 = String.init<A>(describing:)();
      OUTLINED_FUNCTION_38_20(v43, v44, v45, v46);
      OUTLINED_FUNCTION_113_0();
      *(v42 + 4) = v17;
      OUTLINED_FUNCTION_9_57();
      _os_log_impl(v47, v48, v49, v50, v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_5_39();

      OUTLINED_FUNCTION_8();
    }

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v15 + 16, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGSgMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGSgMR);
    *v18;
  }

  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_15_11();

  return v58(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_135();
  v19 = OUTLINED_FUNCTION_41_24();
  OUTLINED_FUNCTION_31_22(v19);
  OUTLINED_FUNCTION_21_31(v20, v21, v22, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGMR);

  outlined init with copy of PhoneCallNLIntent?(v15 + 16, v15 + 144, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGSgMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGSgMR);
  if (*(v15 + 168))
  {
    OUTLINED_FUNCTION_23_25();
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v23, static Logger.siriPhone);
    outlined init with copy of PhoneCallNLIntent?(v15 + 80, v15 + 208, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGMR);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_51_0(v25))
    {
      swift_slowAlloc();
      OUTLINED_FUNCTION_40_21();
      OUTLINED_FUNCTION_26_25();
      *v14 = 136315394;
      *(v15 + 376) = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartAudioCallIntent, INStartAudioCallIntent_ptr);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22INStartAudioCallIntentCmMd, &_sSo22INStartAudioCallIntentCmMR);
      v26 = String.init<A>(describing:)();
      OUTLINED_FUNCTION_38_20(v26, v27, v28, v29);
      OUTLINED_FUNCTION_113_0();
      OUTLINED_FUNCTION_30_29();
      OUTLINED_FUNCTION_28_20();
      OUTLINED_FUNCTION_42_20();
      outlined init with copy of Any(v15 + 272, v15 + 336);
      v30 = OUTLINED_FUNCTION_27_25();
      OUTLINED_FUNCTION_51_22(v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, &_sypXpMR);
      String.init<A>(describing:)();
      v31 = OUTLINED_FUNCTION_24_31();
      v33 = OUTLINED_FUNCTION_43_22(v31, v32);

      *(v14 + 14) = v33;
      OUTLINED_FUNCTION_9_57();
      _os_log_impl(v34, v35, v36, v37, v38, 0x16u);
      OUTLINED_FUNCTION_15_20();
      OUTLINED_FUNCTION_5_39();

      OUTLINED_FUNCTION_8();
    }

    else
    {
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v15 + 208, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGMR);
    }

    if ((*(v15 + 112))(*(v15 + 392), *(v15 + 400)))
    {
      OUTLINED_FUNCTION_0_93();
      a9 = v52;
      v53 = swift_task_alloc();
      v54 = OUTLINED_FUNCTION_47_20(v53);
      *v54 = v55;
      OUTLINED_FUNCTION_14_48(v54);
      OUTLINED_FUNCTION_15_11();

      return v58(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14);
    }

    *v18;
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v15 + 80, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGMR);
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v15 + 16, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGSgMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGSgMR);
  }

  else
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v15 + 144, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGSgMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGSgMR);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v39, static Logger.siriPhone);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_51_0(v41))
    {
      v42 = OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_12_17();
      swift_slowAlloc();
      OUTLINED_FUNCTION_26_25();
      *v42 = 136315138;
      *(v15 + 368) = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartAudioCallIntent, INStartAudioCallIntent_ptr);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22INStartAudioCallIntentCmMd, &_sSo22INStartAudioCallIntentCmMR);
      v43 = String.init<A>(describing:)();
      OUTLINED_FUNCTION_38_20(v43, v44, v45, v46);
      OUTLINED_FUNCTION_113_0();
      *(v42 + 4) = v17;
      OUTLINED_FUNCTION_9_57();
      _os_log_impl(v47, v48, v49, v50, v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_5_39();

      OUTLINED_FUNCTION_8();
    }

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v15 + 16, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGSgMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGSgMR);
    *v18;
  }

  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_15_11();

  return v58(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_135();
  v19 = OUTLINED_FUNCTION_41_24();
  OUTLINED_FUNCTION_31_22(v19);
  OUTLINED_FUNCTION_21_31(v20, v21, v22, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGMR);

  outlined init with copy of PhoneCallNLIntent?(v15 + 16, v15 + 144, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGSgMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGSgMR);
  if (*(v15 + 168))
  {
    OUTLINED_FUNCTION_23_25();
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v23, static Logger.siriPhone);
    outlined init with copy of PhoneCallNLIntent?(v15 + 80, v15 + 208, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGMR);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_51_0(v25))
    {
      swift_slowAlloc();
      OUTLINED_FUNCTION_40_21();
      OUTLINED_FUNCTION_26_25();
      *v14 = 136315394;
      *(v15 + 376) = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17INStartCallIntentCmMd, &_sSo17INStartCallIntentCmMR);
      v26 = String.init<A>(describing:)();
      OUTLINED_FUNCTION_38_20(v26, v27, v28, v29);
      OUTLINED_FUNCTION_113_0();
      OUTLINED_FUNCTION_30_29();
      OUTLINED_FUNCTION_28_20();
      OUTLINED_FUNCTION_42_20();
      outlined init with copy of Any(v15 + 272, v15 + 336);
      v30 = OUTLINED_FUNCTION_27_25();
      OUTLINED_FUNCTION_51_22(v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, &_sypXpMR);
      String.init<A>(describing:)();
      v31 = OUTLINED_FUNCTION_24_31();
      v33 = OUTLINED_FUNCTION_43_22(v31, v32);

      *(v14 + 14) = v33;
      OUTLINED_FUNCTION_9_57();
      _os_log_impl(v34, v35, v36, v37, v38, 0x16u);
      OUTLINED_FUNCTION_15_20();
      OUTLINED_FUNCTION_5_39();

      OUTLINED_FUNCTION_8();
    }

    else
    {
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v15 + 208, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGMR);
    }

    if ((*(v15 + 112))(*(v15 + 392), *(v15 + 400)))
    {
      OUTLINED_FUNCTION_0_93();
      a9 = v52;
      v53 = swift_task_alloc();
      v54 = OUTLINED_FUNCTION_47_20(v53);
      *v54 = v55;
      OUTLINED_FUNCTION_14_48(v54);
      OUTLINED_FUNCTION_15_11();

      return v58(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14);
    }

    *v18;
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v15 + 80, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGMR);
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v15 + 16, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGSgMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGSgMR);
  }

  else
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v15 + 144, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGSgMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGSgMR);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v39, static Logger.siriPhone);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_51_0(v41))
    {
      v42 = OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_12_17();
      swift_slowAlloc();
      OUTLINED_FUNCTION_26_25();
      *v42 = 136315138;
      *(v15 + 368) = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17INStartCallIntentCmMd, &_sSo17INStartCallIntentCmMR);
      v43 = String.init<A>(describing:)();
      OUTLINED_FUNCTION_38_20(v43, v44, v45, v46);
      OUTLINED_FUNCTION_113_0();
      *(v42 + 4) = v17;
      OUTLINED_FUNCTION_9_57();
      _os_log_impl(v47, v48, v49, v50, v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_5_39();

      OUTLINED_FUNCTION_8();
    }

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v15 + 16, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGSgMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGSgMR);
    *v18;
  }

  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_15_11();

  return v58(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14);
}

uint64_t specialized FirstHitIntentResolver.resolve(skIntent:nlIntent:)()
{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v5 + 424) = v0;

  if (!v0)
  {
    *(v5 + 432) = v3;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_15();
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 80, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGMR);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 16, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGSgMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGSgMR);
  v1 = OUTLINED_FUNCTION_2_8();

  return v2(v1);
}

{
  OUTLINED_FUNCTION_15();
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 80, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGMR);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 16, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGSgMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGSgMR);
  OUTLINED_FUNCTION_11();

  return v1();
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v5 + 424) = v0;

  if (!v0)
  {
    *(v5 + 432) = v3;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_15();
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 80, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGMR);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 16, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGSgMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGSgMR);
  v1 = OUTLINED_FUNCTION_2_8();

  return v2(v1);
}

{
  OUTLINED_FUNCTION_15();
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 80, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGMR);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 16, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGSgMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGSgMR);
  OUTLINED_FUNCTION_11();

  return v1();
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v5 + 424) = v0;

  if (!v0)
  {
    *(v5 + 432) = v3;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_15();
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 80, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGMR);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 16, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGSgMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGSgMR);
  v1 = OUTLINED_FUNCTION_2_8();

  return v2(v1);
}

{
  OUTLINED_FUNCTION_15();
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 80, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGMR);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 16, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGSgMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGSgMR);
  OUTLINED_FUNCTION_11();

  return v1();
}

uint64_t specialized closure #1 in FirstHitIntentResolver.resolve(skIntent:nlIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = (*(a1 + 32))(a2, a3);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.siriPhone);
  outlined init with copy of PhoneCallNLIntent?(a1, v21, a4, a5);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    OUTLINED_FUNCTION_12_17();
    v18 = swift_slowAlloc();
    v22 = v18;
    *v12 = 136315394;
    outlined init with copy of PhoneCallNLIntent?(v21, v20, a4, a5);
    OUTLINED_FUNCTION_45_15(v21);
    outlined init with copy of Any(v20, v19);
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1(v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, &_sypXpMR);
    v13 = String.init<A>(describing:)();
    v15 = v14;
    OUTLINED_FUNCTION_45_15(v20);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v22);

    *(v12 + 4) = v16;
    *(v12 + 12) = 1024;
    *(v12 + 14) = v8 & 1;
    _os_log_impl(&dword_0, v10, v11, "#%s shouldRunResolver = %{BOOL}d", v12, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v18);
    OUTLINED_FUNCTION_5_39();

    OUTLINED_FUNCTION_8();
  }

  else
  {
    OUTLINED_FUNCTION_45_15(v21);
  }

  return v8 & 1;
}

uint64_t specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);

  return specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:)(a1, a2, v6);
}

{
  v6 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);

  return specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:)(a1, a2, v6);
}

{
  v6 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);

  return specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:)(a1, a2, v6);
}

uint64_t partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:)()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_24_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);
  v3 = OUTLINED_FUNCTION_4_63();

  return v4(v3);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_58();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_46_19(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_77(v1);

  return v4(v3);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_24_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);
  v3 = OUTLINED_FUNCTION_4_63();

  return specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:)(v3, v4);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_24_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);
  v3 = OUTLINED_FUNCTION_4_63();

  return v4(v3);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_58();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_46_19(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_77(v1);

  return v4(v3);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_18_4();
  v2 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v3 = v2;

  OUTLINED_FUNCTION_17_5();

  return v4(v0);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_24_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);
  v3 = OUTLINED_FUNCTION_4_63();

  return specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:)(v3, v4);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_18_4();
  v2 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v3 = v2;

  OUTLINED_FUNCTION_17_5();

  return v4(v0);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_24_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);
  v3 = OUTLINED_FUNCTION_4_63();

  return v4(v3);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_58();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_46_19(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_77(v1);

  return v4(v3);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_24_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);
  v3 = OUTLINED_FUNCTION_4_63();

  return specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:)(v3, v4);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_58();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_46_19(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_77(v1);

  return v4(v3);
}

uint64_t partial apply for specialized closure #1 in FirstHitIntentResolver.resolve(skIntent:nlIntent:)(uint64_t a1)
{
  return specialized closure #1 in FirstHitIntentResolver.resolve(skIntent:nlIntent:)(a1, *(v1 + 16), *(v1 + 24), &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGMR) & 1;
}

{
  return specialized closure #1 in FirstHitIntentResolver.resolve(skIntent:nlIntent:)(a1, *(v1 + 16), *(v1 + 24), &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGMR) & 1;
}

{
  return specialized closure #1 in FirstHitIntentResolver.resolve(skIntent:nlIntent:)(a1, *(v1 + 16), *(v1 + 24), &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGMR) & 1;
}

uint64_t partial apply for specialized implicit closure #2 in implicit closure #1 in AnyIntentResolver.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  return specialized implicit closure #2 in implicit closure #1 in AnyIntentResolver.init<A>(_:)(a1, a2, v2) & 1;
}

{
  return specialized implicit closure #2 in implicit closure #1 in AnyIntentResolver.init<A>(_:)(a1, a2, v2);
}

__n128 OUTLINED_FUNCTION_31_22(__n128 *a1)
{
  result = *v1;
  a1[1] = *v1;
  return result;
}

unint64_t OUTLINED_FUNCTION_38_20(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_40_21()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_45_15(uint64_t a1)
{

  return _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_50_20()
{
  v2 = *(v0 + 360);

  return INIntent.typedOrThrow<A>(as:)(v2, v2);
}

uint64_t OUTLINED_FUNCTION_51_22(uint64_t a1)
{
  result = __swift_destroy_boxed_opaque_existential_1((v1 + 336));
  *(v1 + 384) = a1;
  return result;
}

uint64_t PhoneIntentsRestrictedGuardFlow.__allocating_init(selectedIntent:app:sharedGlobals:phoneCallNLIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  outlined init with copy of SignalProviding(a4, v14);
  outlined init with copy of SignalProviding(a5, v13);
  v11 = (*(v5 + 152))(2, a1, a2, a3, v14, v13);
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v11;
}

uint64_t key path setter for PhoneIntentsRestrictedGuardFlow.state : PhoneIntentsRestrictedGuardFlow(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 120) = v2;
  return result;
}

uint64_t PhoneIntentsRestrictedGuardFlow.__allocating_init(state:selectedIntent:app:sharedGlobals:phoneCallNLIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, __int128 *a6)
{
  v11 = a1;
  v12 = swift_allocObject();
  PhoneIntentsRestrictedGuardFlow.init(state:selectedIntent:app:sharedGlobals:phoneCallNLIntent:)(v11, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t PhoneIntentsRestrictedGuardFlow.init(state:selectedIntent:app:sharedGlobals:phoneCallNLIntent:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, __int128 *a6)
{
  *(v6 + 120) = a1;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  outlined init with take of SPHConversation(a5, v6 + 40);
  outlined init with take of SPHConversation(a6, v6 + 80);
  return v6;
}

uint64_t PhoneIntentsRestrictedGuardFlow.execute()(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return _swift_task_switch(PhoneIntentsRestrictedGuardFlow.execute(), 0, 0);
}

uint64_t PhoneIntentsRestrictedGuardFlow.execute()()
{
  if ((*(*v0[8] + 120))() == 2)
  {
    locked = PhoneIntentsRestrictedGuardFlow.requiresINIntentsRestrictedWhileLockedAuthentication()();
    v2 = v0[8];
    if (locked)
    {
      __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
      v3 = OUTLINED_FUNCTION_1_16();
      v4(v3);
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      v5 = OUTLINED_FUNCTION_7_33();
      SiriKitFlowFactoryProtocol.makeAuthenticationGuardFlow()(v5, v6);

      static ExecuteResponse.ongoing<A>(next:childCompletion:)();

      __swift_destroy_boxed_opaque_existential_1(v0 + 2);
      goto LABEL_7;
    }

    swift_beginAccess();
    *(v2 + 120) = 0;
  }

  static ExecuteResponse.complete()();
LABEL_7:
  v7 = v0[1];

  return v7();
}

uint64_t static PhoneIntentsRestrictedGuardFlow.State.__derived_enum_equals(_:_:)(char a1, char a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a2 == 2)
  {
    return 0;
  }

  return static GuardFlowResult.== infix(_:_:)(a1 & 1, a2 & 1);
}

uint64_t closure #1 in PhoneIntentsRestrictedGuardFlow.execute()(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = swift_beginAccess();
  *(a2 + 120) = v3;
  return result;
}

uint64_t PhoneIntentsRestrictedGuardFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PhoneIntentsRestrictedGuardFlow();
  lazy protocol witness table accessor for type PhoneIntentsRestrictedGuardFlow and conformance PhoneIntentsRestrictedGuardFlow();
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t PhoneIntentsRestrictedGuardFlow.requiresINIntentsRestrictedWhileLockedAuthentication()()
{
  v1 = v0;
  v2 = v0[8];
  v3 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v2);
  (*(v3 + 152))(&v59, v2, v3);
  v4 = v61;
  __swift_project_boxed_opaque_existential_1(&v59, v60);
  v5 = App.appIdentifier.getter();
  v7 = v6;
  (*(v4 + 16))(v62, v5);

  if (!v62[0])
  {
    __swift_destroy_boxed_opaque_existential_1(&v59);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v30 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_6_65(v30, static Logger.siriPhone);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = OUTLINED_FUNCTION_42();
      v34 = swift_slowAlloc();
      *&v59 = v34;
      *v33 = 136315138;
      *&v65 = *v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0a22IntentsRestrictedGuardC0CmMd, &_s27PhoneCallFlowDelegatePlugin0a22IntentsRestrictedGuardC0CmMR);
      v35 = String.init<A>(describing:)();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v59);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_0, v31, v32, "#%s Couldn't find cached AnnotatedApp, cannot determine if INIntentsRestrictedWhileLocked is set for this intent + app", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      OUTLINED_FUNCTION_26_0(v34);
      OUTLINED_FUNCTION_26_0(v33);
    }

    return 0;
  }

  v8 = v62[1];
  v9 = v64;
  v65 = v63;
  __swift_destroy_boxed_opaque_existential_1(&v59);
  if (specialized Set.contains(_:)(v0[2], v0[3], v9))
  {
    __swift_project_boxed_opaque_existential_1(v0 + 5, v0[8]);
    v10 = OUTLINED_FUNCTION_1_16();
    v11(v10);
    v7 = v61;
    __swift_project_boxed_opaque_existential_1(&v59, v60);
    OUTLINED_FUNCTION_1_16();
    v12 = dispatch thunk of DeviceState.isHomePod.getter();
    __swift_destroy_boxed_opaque_existential_1(&v59);
    if (v12 & 1) != 0 || (v7 = v1[9], __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]), v13 = OUTLINED_FUNCTION_1_16(), v14(v13), __swift_project_boxed_opaque_existential_1(&v59, v60), v15 = OUTLINED_FUNCTION_7_33(), v17 = DeviceState.isAuthenticatedForPhone.getter(v15, v16), __swift_destroy_boxed_opaque_existential_1(&v59), (v17))
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v18 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_6_65(v18, static Logger.siriPhone);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v19, v20))
      {
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_42();
      v21 = OUTLINED_FUNCTION_14_2();
      OUTLINED_FUNCTION_3_78(4.8149e-34);
      v58 = v22;
      *&v59 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0a22IntentsRestrictedGuardC0CmMd, &_s27PhoneCallFlowDelegatePlugin0a22IntentsRestrictedGuardC0CmMR);
      v24 = String.init<A>(describing:)();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v58);

      *(v7 + 4) = v26;
      v29 = "#%s Device does not require unlock";
LABEL_25:
      OUTLINED_FUNCTION_45_1(&dword_0, v27, v28, v29);
      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_26_0(v21);
      OUTLINED_FUNCTION_26_0(v7);
LABEL_26:

      v66 = v8;
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v66, &_sShySSGMd, &_sShySSGMR);
      v59 = v65;
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v59, &_sSSSgMd, &_sSSSgMR);

      return 0;
    }

    v66 = v8;
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v66, &_sShySSGMd, &_sShySSGMR);
    v49 = v63;
  }

  else
  {
    if (App.isFirstParty()() || (__swift_project_boxed_opaque_existential_1(v0 + 10, v0[13]), OUTLINED_FUNCTION_7_33(), !PhoneCallNLIntent.hasPhoneNumber()()))
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v50 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_6_65(v50, static Logger.siriPhone);
      v19 = Logger.logObject.getter();
      v51 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v19, v51))
      {
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_42();
      v21 = OUTLINED_FUNCTION_14_2();
      OUTLINED_FUNCTION_3_78(4.8149e-34);
      v58 = v52;
      *&v59 = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0a22IntentsRestrictedGuardC0CmMd, &_s27PhoneCallFlowDelegatePlugin0a22IntentsRestrictedGuardC0CmMR);
      v54 = String.init<A>(describing:)();
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, &v58);

      *(v7 + 4) = v56;
      v29 = "#%s Intent is not restricted";
      goto LABEL_25;
    }

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v38 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_6_65(v38, static Logger.siriPhone);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v39, v40))
    {
      OUTLINED_FUNCTION_42();
      v41 = OUTLINED_FUNCTION_14_2();
      OUTLINED_FUNCTION_3_78(4.8149e-34);
      v58 = v42;
      *&v59 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0a22IntentsRestrictedGuardC0CmMd, &_s27PhoneCallFlowDelegatePlugin0a22IntentsRestrictedGuardC0CmMR);
      v44 = String.init<A>(describing:)();
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v58);

      *(v7 + 4) = v46;
      OUTLINED_FUNCTION_45_1(&dword_0, v47, v48, "#%s calling a third party app by using phone number requires to unlock the device firstly");
      __swift_destroy_boxed_opaque_existential_1(v41);
      OUTLINED_FUNCTION_26_0(v41);
      OUTLINED_FUNCTION_26_0(v7);
    }

    v66 = v8;
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v66, &_sShySSGMd, &_sShySSGMR);
    v49 = v65;
  }

  v59 = v49;
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v59, &_sSSSgMd, &_sSSSgMR);

  return 1;
}

unint64_t lazy protocol witness table accessor for type PhoneIntentsRestrictedGuardFlow and conformance PhoneIntentsRestrictedGuardFlow()
{
  result = lazy protocol witness table cache variable for type PhoneIntentsRestrictedGuardFlow and conformance PhoneIntentsRestrictedGuardFlow;
  if (!lazy protocol witness table cache variable for type PhoneIntentsRestrictedGuardFlow and conformance PhoneIntentsRestrictedGuardFlow)
  {
    type metadata accessor for PhoneIntentsRestrictedGuardFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneIntentsRestrictedGuardFlow and conformance PhoneIntentsRestrictedGuardFlow);
  }

  return result;
}

uint64_t PhoneIntentsRestrictedGuardFlow.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  return v0;
}

uint64_t PhoneIntentsRestrictedGuardFlow.__deallocating_deinit()
{
  PhoneIntentsRestrictedGuardFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance PhoneIntentsRestrictedGuardFlow(uint64_t a1)
{
  v6 = (*(**v1 + 168) + **(**v1 + 168));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync;

  return v6(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance PhoneIntentsRestrictedGuardFlow@<X0>(_BYTE *a1@<X8>)
{
  result = (*(**v1 + 144))();
  *a1 = result & 1;
  return result;
}

unsigned __int8 *getEnumTagSinglePayload for PhoneIntentsRestrictedGuardFlow.State(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 2;
    v8 = v6 - 2;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 2;
    if (a2 + 2 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 2);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneIntentsRestrictedGuardFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFE)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFD)
  {
    v7 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTag for PhoneIntentsRestrictedGuardFlow.State(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for PhoneIntentsRestrictedGuardFlow.State(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

void Logger.logAndCrash(_:)(uint64_t a1, unint64_t a2)
{

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v8);
    _os_log_impl(&dword_0, v4, v5, "%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t LogPrefix.withFunction(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return a3;
}

uint64_t one-time initialization function for announceTelephony()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.announceTelephony);
  __swift_project_value_buffer(v0, static Logger.announceTelephony);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for siriPhone(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t Logger.siriPhone.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t static Logger.siriPhone.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

PhoneCallFlowDelegatePlugin::LogTag_optional __swiftcall LogTag.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of LogTag.init(rawValue:), v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t LogTag.rawValue.getter(char a1)
{
  result = 19534;
  switch(a1)
  {
    case 1:
      result = 5916994;
      break;
    case 2:
      result = 1464814662;
      break;
    case 3:
      result = 1396786515;
      break;
    case 4:
      result = 4735827;
      break;
    case 5:
      result = 5395011;
      break;
    case 6:
      result = 5395027;
      break;
    case 7:
      result = 5263425;
      break;
    case 8:
      result = 21574;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::LogTag_optional protocol witness for RawRepresentable.init(rawValue:) in conformance LogTag@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::LogTag_optional *a2@<X8>)
{
  result.value = LogTag.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance LogTag@<X0>(uint64_t *a1@<X8>)
{
  result = LogTag.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type LogTag and conformance LogTag()
{
  result = lazy protocol witness table cache variable for type LogTag and conformance LogTag;
  if (!lazy protocol witness table cache variable for type LogTag and conformance LogTag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogTag and conformance LogTag);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LogTag(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t specialized == infix<A>(_:_:)()
{
  OUTLINED_FUNCTION_30_30();
  switch(v2)
  {
    case 1:
    case 4:
      OUTLINED_FUNCTION_43_23();
      break;
    case 3:
      OUTLINED_FUNCTION_66_13();
      break;
    case 5:
      OUTLINED_FUNCTION_67_12();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_26_26();
  switch(v6)
  {
    case 1:
      OUTLINED_FUNCTION_41_25();
      v5 = v7 & 0xFFFF00000000FFFFLL | 0x746165700000;
      break;
    case 2:
      v5 = 1885956979;
      break;
    case 3:
      OUTLINED_FUNCTION_62_18();
      break;
    case 4:
      OUTLINED_FUNCTION_41_25();
      v5 = v8 & 0xFFFF00000000FFFFLL | 0x656D75730000;
      break;
    case 5:
      OUTLINED_FUNCTION_63_12();
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_3_80(v3, v4, v5);
  }

  return v10 & 1;
}

{
  v0 = 0xEB000000006F666ELL;
  OUTLINED_FUNCTION_33_20();
  v4 = v3 & 0xFFFFFFFFFFFFLL | 0x4974000000000000;
  v6 = v5;
  v7 = v4;
  v8 = 0xEB000000006F666ELL;
  switch(v6)
  {
    case 1:
      v8 = 0x80000000004521B0;
      v7 = v2 - 4;
      break;
    case 2:
      break;
    case 3:
      v9 = "MessageIdentifier";
      goto LABEL_5;
    default:
      v9 = "er";
LABEL_5:
      v8 = v9 | 0x8000000000000000;
      v7 = 0xD000000000000015;
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = 0x80000000004521B0;
      v4 = v2 - 4;
      break;
    case 2:
      break;
    case 3:
      v10 = "MessageIdentifier";
      goto LABEL_10;
    default:
      v10 = "er";
LABEL_10:
      v0 = v10 | 0x8000000000000000;
      v4 = 0xD000000000000015;
      break;
  }

  if (v7 == v4 && v8 == v0)
  {
    v12 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_5_71(v7, v1, v4);
  }

  return v12 & 1;
}

{
  OUTLINED_FUNCTION_33_20();
  v4 = v3 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
  if (v1)
  {
    v5 = OUTLINED_FUNCTION_15_43();
    if (v16)
    {
      v0 = v8;
    }

    else
    {
      v0 = v9;
    }
  }

  else
  {
    v5 = OUTLINED_FUNCTION_47_21(v1, v2, v4);
  }

  if (v6)
  {
    OUTLINED_FUNCTION_27_2();
    if (v11 == 1)
    {
      v7 = v12;
    }

    else
    {
      v7 = v14;
    }

    if (v11 == 1)
    {
      v15 = v13;
    }

    else
    {
      v15 = v10;
    }
  }

  else
  {
    v15 = 0xE700000000000000;
  }

  v16 = v5 == v7 && v0 == v15;
  if (v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_3_80(v5, v6, v7);
  }

  return v17 & 1;
}

{
  OUTLINED_FUNCTION_4_64();
  if (v0)
  {
    v3 = 0x746163696C707041;
  }

  else
  {
    v3 = 0xD000000000000015;
  }

  if (v0)
  {
    v4 = 0xEC000000736E6F69;
  }

  else
  {
    v4 = v2;
  }

  if (v1)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0x746163696C707041;
  }

  if (v1)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0xEC000000736E6F69;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80(v3, v1, v5);
  }

  return v8 & 1;
}

{
  OUTLINED_FUNCTION_30_30();
  switch(v2)
  {
    case 1:
    case 4:
      OUTLINED_FUNCTION_43_23();
      break;
    case 3:
      OUTLINED_FUNCTION_66_13();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_26_26();
  switch(v6)
  {
    case 1:
      OUTLINED_FUNCTION_41_25();
      v5 = v7 & 0xFFFF00000000FFFFLL | 0x746165700000;
      break;
    case 2:
      v5 = 1885956979;
      break;
    case 3:
      OUTLINED_FUNCTION_62_18();
      break;
    case 4:
      OUTLINED_FUNCTION_41_25();
      v5 = v8 & 0xFFFF00000000FFFFLL | 0x656D75730000;
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_3_80(v3, v4, v5);
  }

  return v10 & 1;
}

{
  OUTLINED_FUNCTION_4_64();
  if (v0)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v3 = 0x6F56746165706572;
  }

  if (v0)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0xEF6C69616D656369;
  }

  if (v1)
  {
    v5 = 0x6F56746165706572;
  }

  else
  {
    v5 = 0xD000000000000015;
  }

  if (v1)
  {
    v6 = 0xEF6C69616D656369;
  }

  else
  {
    v6 = v2;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80(v3, v1, v5);
  }

  return v8 & 1;
}

{
  OUTLINED_FUNCTION_46_20();
  v2 = v1 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
  v3 = 0xE500000000000000;
  v5 = v4;
  v6 = v2;
  switch(v5)
  {
    case 1:
      v3 = 0xE600000000000000;
      v6 = 0x656C6464696DLL;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v6 = 1953718636;
      break;
    case 3:
      v6 = OUTLINED_FUNCTION_48_19();
      break;
    default:
      break;
  }

  v7 = 0xE500000000000000;
  switch(v0)
  {
    case 1:
      v7 = 0xE600000000000000;
      v2 = 0x656C6464696DLL;
      break;
    case 2:
      v7 = 0xE400000000000000;
      v2 = 1953718636;
      break;
    case 3:
      OUTLINED_FUNCTION_44_15();
      break;
    default:
      break;
  }

  if (v6 == v2 && v3 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_3_80(v6, v0, v2);
  }

  return v9 & 1;
}

{
  OUTLINED_FUNCTION_30_30();
  switch(v2)
  {
    case 2:
      v0 = 0xEE006E6F69746341;
      break;
    case 3:
      OUTLINED_FUNCTION_48_19();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_26_26();
  switch(v6)
  {
    case 1:
      v5 = 880168014;
      break;
    case 2:
      v5 = 0x746E65696C434649;
      v1 = 0xEE006E6F69746341;
      break;
    case 3:
      OUTLINED_FUNCTION_44_15();
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80(v3, v4, v5);
  }

  return v8 & 1;
}

{
  OUTLINED_FUNCTION_56_10();
  if (v2)
  {
    OUTLINED_FUNCTION_78_5();
    if (v3)
    {
      v5 = 1886352499;
    }

    else
    {
      v5 = 0x746165706572;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE800000000000000;
    v5 = v1;
  }

  if (v0)
  {
    OUTLINED_FUNCTION_78_5();
    if (v7)
    {
      v1 = 1886352499;
    }

    else
    {
      v1 = 0x746165706572;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE600000000000000;
    }
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  if (v5 == v1 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_3_80(v5, v0, v1);
  }

  return v11 & 1;
}

{
  OUTLINED_FUNCTION_30_30();
  switch(v2)
  {
    case 1:
      v0 = 0xE500000000000000;
      OUTLINED_FUNCTION_49_20();
      break;
    case 2:
      v0 = 0xE800000000000000;
      OUTLINED_FUNCTION_17_6();
      break;
    case 3:
      OUTLINED_FUNCTION_17_6();
      v3 = 0x6F6964756120;
      goto LABEL_6;
    case 4:
      v3 = 0x656D69746563;
LABEL_6:
      v0 = v3 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    case 5:
      OUTLINED_FUNCTION_1_91();
      v0 = v0 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    case 6:
      OUTLINED_FUNCTION_12_52();
      v0 = v4 | 0x8000000000000000;
      break;
    case 7:
      OUTLINED_FUNCTION_46_18();
      v0 = 0xE900000000000079;
      break;
    case 8:
      OUTLINED_FUNCTION_60_13();
      v0 = 0xE900000000000068;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_26_26();
  switch(v8)
  {
    case 1:
      v1 = 0xE500000000000000;
      OUTLINED_FUNCTION_23_26();
      v7 = v9 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
      break;
    case 2:
      v1 = 0xE800000000000000;
      OUTLINED_FUNCTION_16_7();
      break;
    case 3:
      OUTLINED_FUNCTION_16_7();
      v10 = 0x6F6964756120;
      goto LABEL_16;
    case 4:
      v7 = 0x61665F70756F7267;
      v10 = 0x656D69746563;
LABEL_16:
      v1 = v10 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    case 5:
      OUTLINED_FUNCTION_0_94();
      v1 = v1 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    case 6:
      OUTLINED_FUNCTION_6_66();
      v1 = v11 | 0x8000000000000000;
      break;
    case 7:
      OUTLINED_FUNCTION_57_17();
      v1 = 0xE900000000000079;
      break;
    case 8:
      OUTLINED_FUNCTION_54_21();
      v1 = 0xE900000000000068;
      break;
    default:
      break;
  }

  if (v5 == v7 && v0 == v1)
  {
    v13 = 1;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_3_80(v5, v6, v7);
  }

  return v13 & 1;
}

{
  OUTLINED_FUNCTION_11_47();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

{
  OUTLINED_FUNCTION_51_23();
  v3 = 7562617;
  switch(v4)
  {
    case 1:
      v0 = 0xE200000000000000;
      v3 = 28526;
      break;
    case 2:
      v3 = OUTLINED_FUNCTION_21_32();
      break;
    case 3:
      v3 = OUTLINED_FUNCTION_25_28();
      break;
    default:
      break;
  }

  v5 = 0xE300000000000000;
  switch(v1)
  {
    case 1:
      v5 = 0xE200000000000000;
      v2 = 28526;
      break;
    case 2:
      OUTLINED_FUNCTION_22_25();
      break;
    case 3:
      OUTLINED_FUNCTION_24_32();
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_3_80(v3, v1, v2);
  }

  return v7 & 1;
}

{
  OUTLINED_FUNCTION_30_30();
  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_35_20();
      v0 = 0xED00006172656D61;
      break;
    case 2:
      OUTLINED_FUNCTION_35_20();
      v0 = 0xEB00000000646C6FLL;
      break;
    case 3:
      v0 = 0xEC0000006172656DLL;
      break;
    case 4:
      v0 = 0xEA0000000000646CLL;
      break;
    case 5:
      v0 = 0xEE00656E6F68706FLL;
      break;
    case 6:
      OUTLINED_FUNCTION_12_52();
      v0 = v3 | 0x8000000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_26_26();
  switch(v7)
  {
    case 1:
      OUTLINED_FUNCTION_32_21();
      v6 = v8 & 0xFFFFFFFFFFFFLL | 0x4365000000000000;
      v1 = 0xED00006172656D61;
      break;
    case 2:
      OUTLINED_FUNCTION_32_21();
      v6 = v10 & 0xFFFFFFFFFFFFLL | 0x4865000000000000;
      v1 = 0xEB00000000646C6FLL;
      break;
    case 3:
      OUTLINED_FUNCTION_31_23();
      v6 = v11 & 0xFFFFFFFFFFFFLL | 0x6143000000000000;
      v1 = 0xEC0000006172656DLL;
      break;
    case 4:
      OUTLINED_FUNCTION_31_23();
      v6 = v9 & 0xFFFFFFFFFFFFLL | 0x6F48000000000000;
      v1 = 0xEA0000000000646CLL;
      break;
    case 5:
      v6 = 0x7263694D6574756DLL;
      v1 = 0xEE00656E6F68706FLL;
      break;
    case 6:
      OUTLINED_FUNCTION_6_66();
      v1 = v12 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v4 == v6 && v0 == v1)
  {
    v14 = 1;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_3_80(v4, v5, v6);
  }

  return v14 & 1;
}

{
  OUTLINED_FUNCTION_40_22();
  switch(v2)
  {
    case 1:
      v0 = 0xE400000000000000;
      break;
    case 2:
      v0 = 0xEA0000000000656ELL;
      break;
    case 3:
      OUTLINED_FUNCTION_1_91();
      v0 = v0 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_42_21();
  switch(v6)
  {
    case 1:
      v1 = 0xE400000000000000;
      v5 = 1684828008;
      break;
    case 2:
      v5 = 0x6F68706F7263696DLL;
      v1 = 0xEA0000000000656ELL;
      break;
    case 3:
      OUTLINED_FUNCTION_0_94();
      v1 = v1 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    case 4:
      v5 = 0x656D756C6F76;
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80(v3, v4, v5);
  }

  return v8 & 1;
}

{
  OUTLINED_FUNCTION_30_30();
  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_49_20();
      v0 = 0xE90000000000006BLL;
      break;
    case 2:
      v0 = 0xE800000000000000;
      OUTLINED_FUNCTION_17_6();
      break;
    case 3:
      OUTLINED_FUNCTION_17_6();
      v0 = 0xEE006F6964756120;
      break;
    case 4:
      OUTLINED_FUNCTION_1_91();
      v0 = v0 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    case 6:
      OUTLINED_FUNCTION_43_23();
      break;
    case 7:
      v0 = 0xE700000000000000;
      break;
    case 9:
      v0 = 0xE700000000000000;
      break;
    case 10:
      v0 = 0xE600000000000000;
      break;
    case 11:
      v0 = 0xE700000000000000;
      break;
    case 12:
      OUTLINED_FUNCTION_67_12();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_26_26();
  switch(v6)
  {
    case 1:
      OUTLINED_FUNCTION_23_26();
      v5 = v7 | 0x6361622000000000;
      v1 = 0xE90000000000006BLL;
      break;
    case 2:
      v1 = 0xE800000000000000;
      OUTLINED_FUNCTION_16_7();
      break;
    case 3:
      OUTLINED_FUNCTION_16_7();
      v1 = 0xEE006F6964756120;
      break;
    case 4:
      OUTLINED_FUNCTION_0_94();
      v1 = v1 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    case 5:
      v5 = 1684957542;
      break;
    case 6:
      OUTLINED_FUNCTION_41_25();
      v5 = v8 & 0xFFFF00000000FFFFLL | 0x6C6169640000;
      break;
    case 7:
      v1 = 0xE700000000000000;
      v5 = 0x79666972616C63;
      break;
    case 8:
      v5 = 1684104562;
      break;
    case 9:
      v1 = 0xE700000000000000;
      v5 = 0x6D7269666E6F63;
      break;
    case 10:
      v1 = 0xE600000000000000;
      v5 = 0x726577736E61;
      break;
    case 11:
      v1 = 0xE700000000000000;
      v5 = 0x70755F676E6168;
      break;
    case 12:
      OUTLINED_FUNCTION_63_12();
      break;
    case 13:
      v5 = 1852403562;
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_3_80(v3, v4, v5);
  }

  return v10 & 1;
}

{
  OUTLINED_FUNCTION_51_23();
  v3 = 7562617;
  switch(v4)
  {
    case 1:
      v0 = 0xE200000000000000;
      v3 = 28526;
      break;
    case 2:
      v0 = 0xE600000000000000;
      v3 = 0x6C65636E6163;
      break;
    case 3:
      v3 = OUTLINED_FUNCTION_21_32();
      break;
    case 4:
      v3 = OUTLINED_FUNCTION_25_28();
      break;
    default:
      break;
  }

  v5 = 0xE300000000000000;
  switch(v1)
  {
    case 1:
      v5 = 0xE200000000000000;
      v2 = 28526;
      break;
    case 2:
      v5 = 0xE600000000000000;
      v2 = 0x6C65636E6163;
      break;
    case 3:
      OUTLINED_FUNCTION_22_25();
      break;
    case 4:
      OUTLINED_FUNCTION_24_32();
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_3_80(v3, v1, v2);
  }

  return v7 & 1;
}

{
  OUTLINED_FUNCTION_11_47();
  if (v0 == v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_50_21(v0, v1, v2);
  }

  swift_bridgeObjectRelease_n();
  return v3 & 1;
}

{
  OUTLINED_FUNCTION_11_47();
  if (v0 == v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_50_21(v0, v1, v2);
  }

  swift_bridgeObjectRelease_n();
  return v3 & 1;
}

{
  v0 = 0xE900000000000073;
  OUTLINED_FUNCTION_23_26();
  v3 = v2 | 0x6570795400000000;
  v4 = 0xE900000000000073;
  v6 = v5;
  v7 = v3;
  v8 = "preferredCallProvider";
  switch(v6)
  {
    case 1:
      v4 = 0x80000000004522D0;
      v7 = OUTLINED_FUNCTION_64_11();
      break;
    case 2:
      v7 = 0xD000000000000010;
      v4 = 0x8000000000452390;
      break;
    case 3:
      v7 = 0x6E65697069636572;
      v4 = 0xE900000000000074;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = (v8 - 32) | 0x8000000000000000;
      OUTLINED_FUNCTION_61_18();
      break;
    case 2:
      OUTLINED_FUNCTION_6_66();
      v0 = v9 | 0x8000000000000000;
      break;
    case 3:
      v3 = 0x6E65697069636572;
      v0 = 0xE900000000000074;
      break;
    default:
      break;
  }

  if (v7 == v3 && v4 == v0)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_5_71(v7, v1, v3);
  }

  return v11 & 1;
}

{
  v0 = 0xEE007974696C6962;
  OUTLINED_FUNCTION_23_26();
  v3 = v2 | 0x6170614300000000;
  v5 = v4;
  v6 = v3;
  v7 = 0xEE007974696C6962;
  switch(v5)
  {
    case 1:
      v6 = 0x756F526F69647561;
      v7 = 0xEA00000000006574;
      break;
    case 2:
      v6 = 0xD000000000000015;
      v7 = 0x80000000004522D0;
      break;
    case 3:
      v6 = 0x74616E6974736564;
      v7 = 0xEF657079546E6F69;
      break;
    case 4:
      v7 = 0xE800000000000000;
      v6 = 0x73746361746E6F63;
      break;
    case 5:
      v6 = OUTLINED_FUNCTION_49_20() | 0x756F724700000000;
      v7 = 0xEA00000000007370;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v3 = 0x756F526F69647561;
      v0 = 0xEA00000000006574;
      break;
    case 2:
      OUTLINED_FUNCTION_7_57();
      break;
    case 3:
      v3 = 0x74616E6974736564;
      v0 = 0xEF657079546E6F69;
      break;
    case 4:
      v0 = 0xE800000000000000;
      OUTLINED_FUNCTION_33_20();
      v3 = v8 & 0xFFFFFFFFFFFFLL | 0x7374000000000000;
      break;
    case 5:
      OUTLINED_FUNCTION_23_26();
      v3 = v9 | 0x756F724700000000;
      v0 = 0xEA00000000007370;
      break;
    default:
      break;
  }

  if (v6 == v3 && v7 == v0)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_5_71(v6, v1, v3);
  }

  return v11 & 1;
}

{
  OUTLINED_FUNCTION_40_22();
  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_49_20();
      v0 = 0xEB00000000656D75;
      break;
    case 2:
      OUTLINED_FUNCTION_17_38();
      v0 = 1702131053;
      goto LABEL_11;
    case 3:
      OUTLINED_FUNCTION_17_38();
      v3 = 0x6574756D6E75;
      goto LABEL_6;
    case 4:
      OUTLINED_FUNCTION_17_38();
      v3 = 0x656D756C6F76;
LABEL_6:
      v0 = v3 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    case 5:
      v0 = 0xE400000000000000;
      break;
    case 6:
      v0 = 0xE900000000000065;
      break;
    case 7:
      v0 = 0xEB00000000657475;
      break;
    case 8:
      OUTLINED_FUNCTION_1_91();
LABEL_11:
      v0 = v0 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_42_21();
  switch(v8)
  {
    case 1:
      OUTLINED_FUNCTION_23_26();
      v6 = v9 | 0x6C6F765F00000000;
      v1 = 0xEB00000000656D75;
      break;
    case 2:
      OUTLINED_FUNCTION_19_33();
      v1 = 1702131053;
      goto LABEL_22;
    case 3:
      OUTLINED_FUNCTION_19_33();
      v10 = 0x6574756D6E75;
      goto LABEL_17;
    case 4:
      OUTLINED_FUNCTION_19_33();
      v10 = 0x656D756C6F76;
LABEL_17:
      v1 = v10 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    case 5:
      v1 = 0xE400000000000000;
      v6 = 1684828008;
      break;
    case 6:
      v6 = 0x74756D5F666C6573;
      v1 = 0xE900000000000065;
      break;
    case 7:
      v6 = 0x6D6E755F666C6573;
      v1 = v7 + 1792;
      break;
    case 8:
      OUTLINED_FUNCTION_0_94();
LABEL_22:
      v1 = v1 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      break;
  }

  if (v4 == v6 && v0 == v1)
  {
    v12 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_3_80(v4, v5, v6);
  }

  return v12 & 1;
}

{
  OUTLINED_FUNCTION_18_25();
  v3 = v0;
  if (v0)
  {
    if (v0 == 1)
    {
      v4 = 0x7461446567616D69;
    }

    else
    {
      v4 = 0x63417463656C6573;
    }

    if (v3 == 1)
    {
      v5 = 0xE900000000000061;
    }

    else
    {
      v5 = 0xEC0000006E6F6974;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = v2;
  }

  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 0x7461446567616D69;
    }

    else
    {
      v2 = 0x63417463656C6573;
    }

    if (v1 == 1)
    {
      v6 = 0xE900000000000061;
    }

    else
    {
      v6 = 0xEC0000006E6F6974;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80(v4, v1, v2);
  }

  return v8 & 1;
}

{
  OUTLINED_FUNCTION_4_64();
  if (v0)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v3 = 0x31676F6C616964;
  }

  if (v0)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (v1)
  {
    v5 = 0x31676F6C616964;
  }

  else
  {
    v5 = 0xD000000000000014;
  }

  if (v1)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = v2;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80(v3, v1, v5);
  }

  return v8 & 1;
}

{
  OUTLINED_FUNCTION_4_64();
  if (v0)
  {
    v3 = 0x32676F6C616964;
  }

  else
  {
    v3 = 0xD000000000000015;
  }

  if (v0)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = v2;
  }

  if (v1)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0x32676F6C616964;
  }

  if (v1)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80(v3, v1, v5);
  }

  return v8 & 1;
}

{
  OUTLINED_FUNCTION_4_64();
  if (v0)
  {
    v3 = 0xD00000000000001ELL;
  }

  else
  {
    v3 = 0x65766947656D6153;
  }

  if (v0)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0xED0000656D614E6ELL;
  }

  if (v1)
  {
    v5 = 0x65766947656D6153;
  }

  else
  {
    v5 = 0xD00000000000001ELL;
  }

  if (v1)
  {
    v6 = 0xED0000656D614E6ELL;
  }

  else
  {
    v6 = v2;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80(v3, v1, v5);
  }

  return v8 & 1;
}

{
  OUTLINED_FUNCTION_4_64();
  if (v0)
  {
    v3 = 0x436D7269666E6F43;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  if (v0)
  {
    v4 = 0xEE00746361746E6FLL;
  }

  else
  {
    v4 = v2;
  }

  if (v1)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0x436D7269666E6F43;
  }

  if (v1)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0xEE00746361746E6FLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80(v3, v1, v5);
  }

  return v8 & 1;
}

{
  OUTLINED_FUNCTION_23_26();
  v4 = v3 | 0x676E6900000000;
  if (v1)
  {
    OUTLINED_FUNCTION_36_22();
    if (v7 == 1)
    {
      v10 = v8;
    }

    else
    {
      v10 = 7565171;
    }

    if (v7 == 1)
    {
      v0 = v9;
    }

    else
    {
      v0 = 0xE300000000000000;
    }
  }

  else
  {
    v10 = OUTLINED_FUNCTION_47_21(v1, v2, v4);
  }

  if (v5)
  {
    OUTLINED_FUNCTION_27_2();
    if (v12 == 1)
    {
      v6 = v13;
    }

    else
    {
      v6 = 7565171;
    }

    if (v12 == 1)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0xE300000000000000;
    }
  }

  else
  {
    v14 = 0xE700000000000000;
  }

  if (v10 == v6 && v0 == v14)
  {
    v16 = 1;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_3_80(v10, v5, v6);
  }

  return v16 & 1;
}

{
  OUTLINED_FUNCTION_4_64();
  if (v0)
  {
    v3 = 0x32676F6C616964;
  }

  else
  {
    v3 = 0xD000000000000016;
  }

  if (v0)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = v2;
  }

  if (v1)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0x32676F6C616964;
  }

  if (v1)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80(v3, v1, v5);
  }

  return v8 & 1;
}

{
  OUTLINED_FUNCTION_11_47();
  if (v0 == v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_29_24(v0, v1, v2);
  }

  OUTLINED_FUNCTION_68_9();
  return v3 & 1;
}

{
  OUTLINED_FUNCTION_8_59();
  v2 = 0xE700000000000000;
  v4 = v3;
  v5 = v1;
  switch(v4)
  {
    case 1:
      break;
    case 2:
      v2 = 0xE300000000000000;
      v5 = 6512973;
      break;
    case 3:
      v2 = 0xE500000000000000;
      v5 = 0x6863746157;
      break;
    case 4:
      v5 = 0x6976654468746957;
      v2 = 0xEA00000000006563;
      break;
    default:
      v5 = 0xD000000000000012;
      v2 = 0x8000000000455530;
      break;
  }

  v6 = 0xE700000000000000;
  switch(v0)
  {
    case 1:
      break;
    case 2:
      v6 = 0xE300000000000000;
      v1 = 6512973;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v1 = 0x6863746157;
      break;
    case 4:
      v1 = 0x6976654468746957;
      v6 = 0xEA00000000006563;
      break;
    default:
      v1 = 0xD000000000000012;
      v6 = 0x8000000000455530;
      break;
  }

  if (v5 == v1 && v2 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80(v5, v0, v1);
  }

  return v8 & 1;
}

{
  OUTLINED_FUNCTION_59_11();
  v2 = 0xE800000000000000;
  v4 = v3;
  v5 = v1;
  switch(v4)
  {
    case 1:
      OUTLINED_FUNCTION_85_2();
      v5 = v1;
      break;
    case 2:
      v5 = 0x63614670756F7247;
      v2 = 0xED0000656D695465;
      break;
    case 3:
      v2 = 0xE600000000000000;
      v5 = 0x6C616D726F4ELL;
      break;
    case 4:
      v5 = OUTLINED_FUNCTION_12_52();
      v2 = v6 | 0x8000000000000000;
      break;
    default:
      break;
  }

  v7 = 0xE800000000000000;
  switch(v0)
  {
    case 1:
      v8 = 0x6F69647541;
      goto LABEL_10;
    case 2:
      v1 = 0x63614670756F7247;
      v8 = 0x656D695465;
LABEL_10:
      v7 = v8 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    case 3:
      v7 = 0xE600000000000000;
      v1 = 0x6C616D726F4ELL;
      break;
    case 4:
      OUTLINED_FUNCTION_6_66();
      v7 = v9 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v5 == v1 && v2 == v7)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_3_80(v5, v0, v1);
  }

  return v11 & 1;
}

{
  OUTLINED_FUNCTION_8_59();
  v4 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = 0x646C6F486E4FLL;
    }

    else
    {
      v5 = 0x676E69676E6952;
    }

    if (v4 == 1)
    {
      v0 = 0xE600000000000000;
    }

    else
    {
      v0 = 0xE700000000000000;
    }
  }

  else
  {
    v5 = OUTLINED_FUNCTION_47_21(v1, v2, v3);
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0x646C6F486E4FLL;
    }

    else
    {
      v3 = 0x676E69676E6952;
    }

    if (v2 == 1)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v5 == v3 && v0 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80(v5, v2, v3);
  }

  return v8 & 1;
}

{
  OUTLINED_FUNCTION_85_2();
  OUTLINED_FUNCTION_59_11();
  v4 = v3;
  v5 = v2;
  v6 = v0;
  switch(v4)
  {
    case 1:
      v6 = 0xED00006F65646956;
      v5 = v2;
      break;
    case 2:
      v5 = OUTLINED_FUNCTION_45_16();
      break;
    case 3:
      v6 = 0xE500000000000000;
      v5 = 0x656E6F6850;
      break;
    case 4:
      v5 = OUTLINED_FUNCTION_14_49();
      v6 = v0 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      break;
    case 5:
      v5 = OUTLINED_FUNCTION_14_49();
      v7 = v0 & 0xFFFF00000000FFFFLL | 0x696475410000;
      goto LABEL_8;
    case 6:
      v5 = OUTLINED_FUNCTION_14_49();
      v7 = v0 & 0xFFFF00000000FFFFLL | 0x656469560000;
LABEL_8:
      v6 = v7 & 0xFFFFFFFFFFFFLL | 0xEF6F000000000000;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = 0xED00006F65646956;
      break;
    case 2:
      v0 = 0xE700000000000000;
      OUTLINED_FUNCTION_8_59();
      break;
    case 3:
      v0 = 0xE500000000000000;
      v2 = 0x656E6F6850;
      break;
    case 4:
      OUTLINED_FUNCTION_13_45();
      v0 = v0 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      break;
    case 5:
      OUTLINED_FUNCTION_13_45();
      v8 = v0 & 0xFFFF00000000FFFFLL | 0x696475410000;
      goto LABEL_16;
    case 6:
      OUTLINED_FUNCTION_13_45();
      v8 = v0 & 0xFFFF00000000FFFFLL | 0x656469560000;
LABEL_16:
      v0 = v8 & 0xFFFFFFFFFFFFLL | 0xEF6F000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v6 == v0)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_5_71(v5, v1, v2);
  }

  return v10 & 1;
}

{
  OUTLINED_FUNCTION_11_47();
  if (v0 == v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_29_24(v0, v1, v2);
  }

  OUTLINED_FUNCTION_68_9();
  return v3 & 1;
}

uint64_t specialized == infix<A>(_:_:)(char a1)
{
  if (a1)
  {
    v1 = 0xE500000000000000;
  }

  else
  {
    v1 = 0xE90000000000006CLL;
  }

  OUTLINED_FUNCTION_11_47();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_3_80(v2, v3, v4);
  }

  return v9 & 1;
}

{
  if (a1)
  {
    v1 = 0xEA00000000007265;
  }

  else
  {
    v1 = 0xEB0000000072656DLL;
  }

  OUTLINED_FUNCTION_11_47();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_3_80(v2, v3, v4);
  }

  return v9 & 1;
}

{
  v2 = 0xE600000000000000;
  switch(a1)
  {
    case 1:
      v2 = 0xED0000746E617473;
      break;
    case 3:
      v2 = 0xE700000000000000;
      break;
    case 4:
      v2 = 0xE700000000000000;
      break;
    case 5:
      v2 = 0xEA00000000006272;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_42_21();
  switch(v6)
  {
    case 1:
      v5 = 0x6973734169726953;
      v1 = 0xED0000746E617473;
      break;
    case 2:
      v5 = 0x6E6F69746361;
      break;
    case 3:
      v1 = 0xE700000000000000;
      v5 = 0x646E616D6D6F63;
      break;
    case 4:
      v1 = 0xE700000000000000;
      v5 = 0x7463656A627573;
      break;
    case 5:
      v5 = 0x6556726564616572;
      v1 = 0xEA00000000006272;
      break;
    default:
      break;
  }

  if (v3 == v5 && v2 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80(v3, v4, v5);
  }

  return v8 & 1;
}

{
  if (a1)
  {
    v1 = 0xE500000000000000;
  }

  else
  {
    v1 = 0xE700000000000000;
  }

  OUTLINED_FUNCTION_11_47();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_3_80(v2, v3, v4);
  }

  return v9 & 1;
}

{
  if (a1)
  {
    v1 = 0xE800000000000000;
  }

  else
  {
    v1 = 0xEF6873696C626174;
  }

  OUTLINED_FUNCTION_11_47();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_3_80(v2, v3, v4);
  }

  return v9 & 1;
}

{
  if (a1)
  {
    v1 = 0xEC00000073746E61;
  }

  else
  {
    v1 = 0xEA00000000006570;
  }

  OUTLINED_FUNCTION_11_47();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_3_80(v2, v3, v4);
  }

  return v9 & 1;
}

{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xE900000000000065;
  }

  OUTLINED_FUNCTION_11_47();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_3_80(v2, v3, v4);
  }

  return v9 & 1;
}

{
  if (a1)
  {
    v1 = 0xEB00000000707041;
  }

  else
  {
    v1 = 0xEE00707041656E6FLL;
  }

  OUTLINED_FUNCTION_11_47();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_3_80(v2, v3, v4);
  }

  return v9 & 1;
}

{
  v2 = 0xE600000000000000;
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_46_18();
      v2 = 0xE900000000000079;
      break;
    case 2:
      v2 = 0xE90000000000006CLL;
      break;
    case 4:
      v2 = 0xE800000000000000;
      OUTLINED_FUNCTION_49_20();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_42_21();
  switch(v6)
  {
    case 1:
      OUTLINED_FUNCTION_57_17();
      v1 = 0xE900000000000079;
      break;
    case 2:
      v5 = 0x69616D6563696F76;
      v1 = 0xE90000000000006CLL;
      break;
    case 3:
      v5 = 0x6C6169646572;
      break;
    case 4:
      v1 = 0xE800000000000000;
      OUTLINED_FUNCTION_23_26();
      v5 = v7 | 0x6B63616200000000;
      break;
    default:
      break;
  }

  if (v3 == v5 && v2 == v1)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_3_80(v3, v4, v5);
  }

  return v9 & 1;
}

{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xE800000000000000;
  }

  OUTLINED_FUNCTION_11_47();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_3_80(v2, v3, v4);
  }

  return v9 & 1;
}

{
  if (a1)
  {
    v1 = 0xE90000000000006CLL;
  }

  else
  {
    v1 = 0xE700000000000000;
  }

  OUTLINED_FUNCTION_11_47();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_3_80(v2, v3, v4);
  }

  return v9 & 1;
}

{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xE800000000000000;
  }

  OUTLINED_FUNCTION_11_47();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_3_80(v2, v3, v4);
  }

  return v9 & 1;
}

{
  if (a1)
  {
    v1 = 0xE400000000000000;
  }

  else
  {
    v1 = 0xE300000000000000;
  }

  OUTLINED_FUNCTION_11_47();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_3_80(v2, v3, v4);
  }

  return v9 & 1;
}

{
  if (a1)
  {
    v1 = 0xEB0000000074706DLL;
  }

  else
  {
    v1 = 0xEA00000000007470;
  }

  OUTLINED_FUNCTION_11_47();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_3_80(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t specialized == infix<A>(_:_:)(char a1, uint64_t a2)
{
  v3 = 0xE200000000000000;
  v4 = 19534;
  switch(a1)
  {
    case 1:
      v3 = 0xE300000000000000;
      v4 = 5916994;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v4 = 1464814662;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v4 = 1396786515;
      break;
    case 4:
      v3 = 0xE300000000000000;
      v4 = 4735827;
      break;
    case 5:
      v3 = 0xE300000000000000;
      v4 = 5395011;
      break;
    case 6:
      v4 = 5395027;
      v3 = 0xE300000000000000;
      break;
    case 7:
      v3 = 0xE300000000000000;
      v4 = 5263425;
      break;
    case 8:
      v4 = 21574;
      break;
    default:
      break;
  }

  v5 = 0xE200000000000000;
  v6 = 19534;
  switch(a2)
  {
    case 1:
      v5 = 0xE300000000000000;
      v6 = 5916994;
      break;
    case 2:
      v5 = 0xE400000000000000;
      v6 = 1464814662;
      break;
    case 3:
      v5 = 0xE400000000000000;
      v6 = 1396786515;
      break;
    case 4:
      v5 = 0xE300000000000000;
      v6 = 4735827;
      break;
    case 5:
      v5 = 0xE300000000000000;
      v6 = 5395011;
      break;
    case 6:
      v6 = 5395027;
      v5 = 0xE300000000000000;
      break;
    case 7:
      v5 = 0xE300000000000000;
      v6 = 5263425;
      break;
    case 8:
      v6 = 21574;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80(v4, a2, v6);
  }

  return v8 & 1;
}

{
  if (a1)
  {
    OUTLINED_FUNCTION_78_5();
    if (v2)
    {
      v4 = 1836020326;
    }

    else
    {
      v4 = 1752459639;
    }

    if (v2)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = 0xE200000000000000;
    v4 = 28532;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_78_5();
    if (v6)
    {
      v8 = 1836020326;
    }

    else
    {
      v8 = 1752459639;
    }

    if (v6)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0xE400000000000000;
    }
  }

  else
  {
    v9 = 0xE200000000000000;
    v8 = 28532;
  }

  if (v4 == v8 && v5 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_3_80(v4, a2, v8);
  }

  return v11 & 1;
}

{
  v3 = 0xE200000000000000;
  v4 = 28494;
  switch(a1)
  {
    case 1:
      v3 = 0xE700000000000000;
      v4 = 0x73746E65636552;
      break;
    case 2:
      v4 = 0x69616D6563696F56;
      v3 = 0xEE00656C7469546CLL;
      break;
    case 3:
      v3 = 0xE300000000000000;
      v4 = 7562585;
      break;
    default:
      break;
  }

  v5 = 0xE200000000000000;
  v6 = 28494;
  switch(a2)
  {
    case 1:
      v5 = 0xE700000000000000;
      v6 = 0x73746E65636552;
      break;
    case 2:
      v6 = 0x69616D6563696F56;
      v5 = 0xEE00656C7469546CLL;
      break;
    case 3:
      v5 = 0xE300000000000000;
      v6 = 7562585;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80(v4, a2, v6);
  }

  return v8 & 1;
}

{
  if (a1)
  {
    v2 = 0x32676F6C616964;
  }

  else
  {
    v2 = 0x31676F6C616964;
  }

  if (a2)
  {
    v3 = 0x32676F6C616964;
  }

  else
  {
    v3 = 0x31676F6C616964;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_29_24(v2, a2, v3);
  }

  OUTLINED_FUNCTION_68_9();
  return v4 & 1;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xED000079726F7473;
  v3 = 0x69486C6C61436F4ELL;
  v4 = a1;
  v5 = 0x69486C6C61436F4ELL;
  v6 = 0xED000079726F7473;
  switch(v4)
  {
    case 1:
      v7 = OUTLINED_FUNCTION_38_21();
      goto LABEL_7;
    case 2:
      v8 = OUTLINED_FUNCTION_38_21();
      goto LABEL_5;
    case 3:
      v7 = 0x327473726966;
LABEL_7:
      v5 = v7 & 0xFFFFFFFFFFFFLL | 0x6423000000000000;
      v9 = 0x31676F6C6169;
      goto LABEL_8;
    case 4:
      v8 = 0x327473726966;
LABEL_5:
      v5 = v8 & 0xFFFFFFFFFFFFLL | 0x6423000000000000;
      v9 = 0x32676F6C6169;
LABEL_8:
      v6 = v9 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_46_20();
      v11 = v10 & 0xFFFF0000FFFFFFFFLL | 0x317400000000;
      goto LABEL_15;
    case 2:
      OUTLINED_FUNCTION_46_20();
      v13 = v14 & 0xFFFF0000FFFFFFFFLL | 0x317400000000;
      goto LABEL_13;
    case 3:
      OUTLINED_FUNCTION_46_20();
      v11 = v16 & 0xFFFF0000FFFFFFFFLL | 0x327400000000;
LABEL_15:
      v3 = v11 & 0xFFFFFFFFFFFFLL | 0x6423000000000000;
      v15 = 0x31676F6C6169;
      goto LABEL_16;
    case 4:
      OUTLINED_FUNCTION_46_20();
      v13 = v12 & 0xFFFF0000FFFFFFFFLL | 0x327400000000;
LABEL_13:
      v3 = v13 & 0xFFFFFFFFFFFFLL | 0x6423000000000000;
      v15 = 0x32676F6C6169;
LABEL_16:
      v2 = v15 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v18 = 1;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_5_71(v5, a2, v3);
  }

  return v18 & 1;
}

{
  v2 = 0xEC000000656C7552;
  v3 = 0x6567617355707061;
  v4 = a1;
  v5 = 0x6567617355707061;
  v6 = 0xEC000000656C7552;
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000016;
      v6 = 0x8000000000452C10;
      break;
    case 2:
      break;
    case 3:
      v5 = 0x63656C6553707061;
      v6 = 0xEC0000006E6F6974;
      break;
    default:
      v6 = 0x8000000000452BF0;
      v5 = 0xD000000000000017;
      break;
  }

  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_7_57();
      break;
    case 2:
      break;
    case 3:
      v3 = 0x63656C6553707061;
      v2 = 0xEC0000006E6F6974;
      break;
    default:
      v2 = 0x8000000000452BF0;
      v3 = 0xD000000000000017;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_71(v5, a2, v3);
  }

  return v8 & 1;
}

{
  v2 = a1 << 32;
  if (v2 == a2 << 32)
  {
    v3 = 1;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_50_21(v2 + 0x31746E6968, a2, (a2 << 32) + 0x31746E6968);
  }

  swift_bridgeObjectRelease_n();
  return v3 & 1;
}

{
  v2 = 0xEC000000656D614ELL;
  v3 = 0x7373656E69737562;
  v4 = a1;
  v5 = 0x7373656E69737562;
  v6 = 0xEC000000656D614ELL;
  switch(v4)
  {
    case 1:
      v5 = OUTLINED_FUNCTION_37_23() & 0xFFFFFFFFFFFFLL | 0x614E000000000000;
      v6 = 0xEA0000000000656DLL;
      break;
    case 2:
      v5 = OUTLINED_FUNCTION_37_23() & 0xFFFFFFFFFFFFLL | 0x7250000000000000;
      v6 = 0xEC00000078696665;
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_37_23() & 0xFFFFFFFFFFFFLL | 0x7553000000000000;
      v6 = v7 + 1;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_18_25();
      v3 = v8 & 0xFFFFFFFFFFFFLL | 0x614E000000000000;
      v2 = 0xEA0000000000656DLL;
      break;
    case 2:
      OUTLINED_FUNCTION_18_25();
      v3 = v9 & 0xFFFFFFFFFFFFLL | 0x7250000000000000;
      v2 = 0xEC00000078696665;
      break;
    case 3:
      OUTLINED_FUNCTION_18_25();
      v3 = v10 & 0xFFFFFFFFFFFFLL | 0x7553000000000000;
      v2 = v11 + 1;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v13 = 1;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_5_71(v5, a2, v3);
  }

  return v13 & 1;
}

{
  v2 = 0xD000000000000013;
  v3 = 0x73736563637573;
  v4 = 0xE700000000000000;
  v5 = "failureUpgradeUnavailable";
  v6 = a1;
  v7 = "failureActiveCallInvalid";
  v8 = 0x73736563637573;
  v9 = "failureCallNotFound";
  switch(v6)
  {
    case 1:
      v8 = OUTLINED_FUNCTION_55_16();
      break;
    case 2:
      v4 = 0x80000000004565E0;
      v8 = 0xD000000000000018;
      break;
    case 3:
      v4 = 0x8000000000456600;
      v8 = 0xD000000000000019;
      break;
    default:
      break;
  }

  v10 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v10 = (v9 - 32) | 0x8000000000000000;
      v3 = 0xD000000000000013;
      break;
    case 2:
      v10 = (v7 - 32) | 0x8000000000000000;
      v3 = v2 + 5;
      break;
    case 3:
      v10 = (v5 - 32) | 0x8000000000000000;
      v3 = v2 + 6;
      break;
    default:
      break;
  }

  if (v8 == v3 && v4 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_3_80(v8, a2, v3);
  }

  return v12 & 1;
}

{
  v2 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0x72656469766F7270;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (v2 == 1)
    {
      v4 = 0xEC000000656D614ELL;
    }

    else
    {
      v4 = 0x8000000000453880;
    }
  }

  else
  {
    v4 = 0x80000000004522D0;
    v3 = 0xD000000000000015;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0x72656469766F7270;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (a2 == 1)
    {
      v6 = 0xEC000000656D614ELL;
    }

    else
    {
      v6 = 0x8000000000453880;
    }
  }

  else
  {
    v6 = 0x80000000004522D0;
    v5 = 0xD000000000000015;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80(v3, a2, v5);
  }

  return v8 & 1;
}

{
  v2 = 0x6C61636F6CLL;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6C61636F4C6E6F6ELL;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v3 == 1)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v4 = 0x6C61636F6CLL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6C61636F4C6E6F6ELL;
    }

    else
    {
      v2 = 1701736302;
    }

    if (a2 == 1)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80(v4, a2, v2);
  }

  return v8 & 1;
}

{
  v2 = 0xEC000000656E6F68;
  v3 = 0x7072656B61657073;
  v4 = a1;
  v5 = 0x7072656B61657073;
  v6 = 0xEC000000656E6F68;
  switch(v4)
  {
    case 1:
      v5 = OUTLINED_FUNCTION_12_52();
      v6 = v7 | 0x8000000000000000;
      break;
    case 2:
      v5 = OUTLINED_FUNCTION_60_13();
      v6 = 0xE900000000000068;
      break;
    case 3:
      v5 = 0x65756C625F746F6ELL;
      v6 = 0xED000068746F6F74;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_6_66();
      v2 = v8 | 0x8000000000000000;
      break;
    case 2:
      OUTLINED_FUNCTION_54_21();
      v2 = 0xE900000000000068;
      break;
    case 3:
      v3 = 0x65756C625F746F6ELL;
      v2 = 0xED000068746F6F74;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_5_71(v5, a2, v3);
  }

  return v10 & 1;
}

{
  v2 = 0xE900000000000079;
  v3 = 0x6E6F6870656C6574;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x656D697465636166;
    }

    else
    {
      v5 = 0x7261506472696874;
    }

    if (v4 == 1)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEA00000000007974;
    }
  }

  else
  {
    v5 = 0x6E6F6870656C6574;
    v6 = 0xE900000000000079;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x656D697465636166;
    }

    else
    {
      v3 = 0x7261506472696874;
    }

    if (a2 == 1)
    {
      v2 = 0xE800000000000000;
    }

    else
    {
      v2 = 0xEA00000000007974;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_71(v5, a2, v3);
  }

  return v8 & 1;
}

{
  v2 = 0xE900000000000065;
  v3 = 0x707954616964656DLL;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x6563696F76;
    }

    else
    {
      v5 = 0x656D756C6F76;
    }

    if (v4 == 1)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0x707954616964656DLL;
    v6 = 0xE900000000000065;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x6563696F76;
    }

    else
    {
      v3 = 0x656D756C6F76;
    }

    if (a2 == 1)
    {
      v2 = 0xE500000000000000;
    }

    else
    {
      v2 = 0xE600000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_71(v5, a2, v3);
  }

  return v8 & 1;
}

{
  v2 = 6579297;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x654E646E41646E65;
    }

    else
    {
      v4 = 0x4E646E41646C6F68;
    }

    if (v3 == 1)
    {
      v5 = 0xED00006C6C614377;
    }

    else
    {
      v5 = 0xEE006C6C61437765;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 6579297;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x654E646E41646E65;
    }

    else
    {
      v2 = 0x4E646E41646C6F68;
    }

    if (a2 == 1)
    {
      v6 = 0xED00006C6C614377;
    }

    else
    {
      v6 = 0xEE006C6C61437765;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80(v4, a2, v2);
  }

  return v8 & 1;
}

{
  v2 = 0xEC00000073736572;
  v3 = 0x6464416C69616D45;
  v4 = a1;
  v5 = 0x6464416C69616D45;
  v6 = 0xEC00000073736572;
  switch(v4)
  {
    case 1:
      v5 = 0x6E6F437974706D45;
      v6 = 0xEC00000074636174;
      break;
    case 2:
      v5 = OUTLINED_FUNCTION_45_16();
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_12_52();
      v6 = v7 | 0x8000000000000000;
      break;
    case 4:
      v5 = 0x6D754E656E6F6850;
      v6 = 0xEB00000000726562;
      break;
    case 5:
      v5 = 0x6F43656C676E6953;
      v6 = 0xED0000746361746ELL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x6E6F437974706D45;
      v2 = 0xEC00000074636174;
      break;
    case 2:
      v2 = 0xE700000000000000;
      OUTLINED_FUNCTION_8_59();
      break;
    case 3:
      OUTLINED_FUNCTION_6_66();
      v2 = v8 | 0x8000000000000000;
      break;
    case 4:
      v3 = 0x6D754E656E6F6850;
      v2 = 0xEB00000000726562;
      break;
    case 5:
      v3 = 0x6F43656C676E6953;
      v2 = 0xED0000746361746ELL;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_5_71(v5, a2, v3);
  }

  return v10 & 1;
}

{
  v2 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0xD000000000000019;
    }

    else
    {
      v3 = 0x6574736575716552;
    }

    if (v2 == 1)
    {
      v4 = 0x80000000004557C0;
    }

    else
    {
      v4 = 0xEF656C646E614864;
    }
  }

  else
  {
    v4 = 0x80000000004557A0;
    v3 = 0xD00000000000001BLL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0xD000000000000019;
    }

    else
    {
      v5 = 0x6574736575716552;
    }

    if (a2 == 1)
    {
      v6 = 0x80000000004557C0;
    }

    else
    {
      v6 = 0xEF656C646E614864;
    }
  }

  else
  {
    v6 = 0x80000000004557A0;
    v5 = 0xD00000000000001BLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80(v3, a2, v5);
  }

  return v8 & 1;
}

{
  v2 = 0xEF7475706E49726FLL;
  v3 = 0x46676E6974696177;
  v4 = a1;
  v5 = 0x46676E6974696177;
  v6 = 0xEF7475706E49726FLL;
  switch(v4)
  {
    case 1:
      break;
    case 2:
      v5 = 0x65756E69746E6F63;
      v6 = 0xEF776F6C46484352;
      break;
    case 3:
      v5 = 0x43526C65636E6163;
      v6 = 0xED0000776F6C4648;
      break;
    default:
      v5 = 0xD000000000000012;
      v6 = 0x8000000000452570;
      break;
  }

  switch(a2)
  {
    case 1:
      break;
    case 2:
      OUTLINED_FUNCTION_56_10();
      v2 = 0xEF776F6C46484352;
      break;
    case 3:
      v3 = 0x43526C65636E6163;
      v2 = 0xED0000776F6C4648;
      break;
    default:
      OUTLINED_FUNCTION_7_57();
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_71(v5, a2, v3);
  }

  return v8 & 1;
}

{
  v2 = a1 << 48;
  if (v2 == a2 << 48)
  {
    v3 = 1;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_29_24(v2 + 0x31676F6C616964, a2, (a2 << 48) + 0x31676F6C616964);
  }

  OUTLINED_FUNCTION_68_9();
  return v3 & 1;
}

uint64_t specialized == infix<A>(_:_:)(char a1, char a2)
{
  v2 = "ow";
  if (a1)
  {
    v3 = "showedForcedAppDisambiguation";
  }

  else
  {
    v3 = "ow";
  }

  if (a2)
  {
    v2 = "showedForcedAppDisambiguation";
  }

  if ((v3 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

{
  v2 = 0xEF31676F6C616964;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0xEF32676F6C616964;
    }

    else
    {
      v3 = 0xEF33676F6C616964;
    }
  }

  else
  {
    v3 = 0xEF31676F6C616964;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xEF32676F6C616964;
    }

    else
    {
      v2 = 0xEF33676F6C616964;
    }
  }

  if (v3 == v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_27_26(0x2331686374697773);
  }

  return v4 & 1;
}

{
  v2 = 0xEC00000031676F6CLL;
  v3 = 0xEC00000031676F6CLL;
  switch(a1)
  {
    case 1:
      v4 = 845639532;
      goto LABEL_5;
    case 2:
      v4 = 862416748;
      goto LABEL_5;
    case 3:
      v4 = 879193964;
LABEL_5:
      v3 = v4 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v5 = 845639532;
      goto LABEL_10;
    case 2:
      v5 = 862416748;
      goto LABEL_10;
    case 3:
      v5 = 879193964;
LABEL_10:
      v2 = v5 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      break;
  }

  if (v3 == v2)
  {
    v6 = 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_27_26(0x61696423316C6C61);
  }

  return v6 & 1;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1)
{
  v2 = 0xE400000000000000;
  switch(a1)
  {
    case 1u:
      v2 = 0x8000000000452800;
      break;
    case 2u:
      v2 = 0x8000000000452820;
      break;
    case 3u:
      v2 = 0x8000000000452840;
      break;
    case 4u:
      v2 = 0xE90000000000004CLL;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_26_26();
  switch(v10)
  {
    case 1:
      v1 = (v9 - 32) | 0x8000000000000000;
      v5 = v6 + 1;
      break;
    case 2:
      v1 = (v8 - 32) | 0x8000000000000000;
      v5 = v6 + 2;
      break;
    case 3:
      v1 = (v7 - 32) | 0x8000000000000000;
      v5 = 0xD000000000000011;
      break;
    case 4:
      v5 = 0x4C41435F44414552;
      v1 = 0xE90000000000004CLL;
      break;
    default:
      break;
  }

  if (v3 == v5 && v2 == v1)
  {
    v12 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_3_80(v3, v4, v5);
  }

  return v12 & 1;
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_31_23();
  v2 = 0xE600000000000000;
  switch(v3)
  {
    case 1:
      v2 = 0xE700000000000000;
      OUTLINED_FUNCTION_35_20();
      break;
    case 3:
      v2 = 0x8000000000452E60;
      break;
    case 4:
      v2 = 0x8000000000452E80;
      OUTLINED_FUNCTION_64_11();
      break;
    case 5:
      v2 = 0xE800000000000000;
      break;
    case 6:
      v2 = 0xE400000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_42_21();
  switch(v9)
  {
    case 1:
      v1 = 0xE700000000000000;
      OUTLINED_FUNCTION_32_21();
      v6 = v10 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
      break;
    case 2:
      v6 = 0x656C67676F74;
      break;
    case 3:
      v6 = 0xD000000000000010;
      v1 = (v8 - 32) | 0x8000000000000000;
      break;
    case 4:
      v1 = (v7 - 32) | 0x8000000000000000;
      OUTLINED_FUNCTION_61_18();
      break;
    case 5:
      v1 = 0xE800000000000000;
      v6 = 0x6C6576654C746573;
      break;
    case 6:
      v1 = 0xE400000000000000;
      v6 = 1684104562;
      break;
    default:
      break;
  }

  if (v4 == v6 && v2 == v1)
  {
    v12 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_3_80(v4, v5, v6);
  }

  return v12 & 1;
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1, char a2)
{
  if (a1)
  {
    v2 = 0xEE0032676F6C6169;
  }

  else
  {
    v2 = 0xEE0031676F6C6169;
  }

  if (a2)
  {
    v3 = 0xEE0032676F6C6169;
  }

  else
  {
    v3 = 0xEE0031676F6C6169;
  }

  if (v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_38_21();
    v5 = OUTLINED_FUNCTION_27_26(v4 & 0xFFFFFFFFFFFFLL | 0x6423000000000000);
  }

  return v5 & 1;
}

uint64_t specialized == infix<A>(_:_:)(char a1, char a2, uint64_t (*a3)(void))
{
  v5 = a3(a1 & 1);
  v7 = v6;
  v8 = a3(a2 & 1);
  if (v5 == v8 && v7 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_3_80(v5, v9, v8);
  }

  return v11 & 1;
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1);
  v7 = v6;
  v8 = a3(a2);
  if (v5 == v8 && v7 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_3_80(v5, v9, v8);
  }

  return v11 & 1;
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  a3(0);
  lazy protocol witness table accessor for type PhonePerson and conformance DialogPerson(a4, a5, a6);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v15 == v13 && v16 == v14)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_5_71(v15, v9, v13);
  }

  return v11 & 1;
}

uint64_t static PhonePerson.make(phonePerson:options:locale:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DialogPerson();
  (*(v8 + 16))(v11, a3, v6);
  v12 = a1;
  if (!DialogPerson.init(person:locale:isRelative:)(a1, v11, v4 & 1))
  {
    return 0;
  }

  type metadata accessor for DialogPersonHandle();
  v13 = [v12 personHandle];
  static DialogPersonHandle.make(phoneHandle:locale:)(v13, a3);

  type metadata accessor for PhonePerson.Builder(0);
  swift_allocObject();
  DialogPerson.Builder.init()();
  specialized DialogPerson.copy<A>(to:)();

  dispatch thunk of DialogPerson.Builder.withPersonHandle(_:)();

  DialogPerson.Builder.applyOptions(_:)(v4);

  v14 = dispatch thunk of DialogPerson.Builder.build()();

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.siriPhone);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v14;
    v26 = v19;
    *v18 = 136315138;
    type metadata accessor for PhonePerson(0);
    lazy protocol witness table accessor for type PhonePerson and conformance DialogPerson(&lazy protocol witness table cache variable for type PhonePerson and conformance DialogPerson, type metadata accessor for PhonePerson, &protocol conformance descriptor for DialogPerson);
    CATType.toDictionary.getter();
    v20 = Dictionary.description.getter();
    v22 = v21;

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v26);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_0, v16, v17, "DialogPerson: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  return v14;
}

uint64_t protocol witness for SetAlgebra.intersection(_:) in conformance PhonePerson.Options@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _ss9OptionSetPsE12intersectionyxxF27PhoneCallFlowDelegatePlugin0dE6RecordC7OptionsV_Tgq5_0(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t DialogPerson.init(person:locale:isRelative:)(void *a1, uint64_t a2, int a3)
{
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v19[3] = a3;
    v11 = a1;
    v12 = [v11 displayName];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    LOBYTE(v12) = String.isPhoneNumber.getter(v13, v15);

    if (v12)
    {
      v16 = DialogPerson.__allocating_init(unnamedPerson:)();

      (*(v7 + 8))(a2, v6);
      return v16;
    }
  }

  (*(v7 + 16))(v10, a2, v6, v8);
  v16 = DialogPerson.__allocating_init(person:locale:useConversationalName:)();
  v17 = *(v7 + 8);

  v17(a2, v6);
  if (v16)
  {
  }

  return v16;
}

uint64_t static DialogPersonHandle.make(phoneHandle:locale:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v55 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v7 - 8);
  v9 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v48 - v11;
  __chkstk_darwin(v13);
  v15 = v48 - v14;
  v16 = type metadata accessor for SpeakableString();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  v53 = a2;
  v20 = a1;
  v21 = INIntentSlotValueTransformToContactHandle();
  if (!v21)
  {

    return 0;
  }

  v22 = v21;
  v23 = [v21 type];
  v50 = v22;
  v51 = v9;
  v54 = v20;
  switch(v23)
  {
    case 0:
      v24 = @"Unknown";
      goto LABEL_11;
    case 1:
      v24 = @"EmailAddress";
      goto LABEL_11;
    case 2:
      v24 = @"PhoneNumber";
      goto LABEL_11;
    case 3:
      v24 = @"Website";
      goto LABEL_11;
    case 4:
      v24 = @"InstantMessage";
LABEL_11:
      v26 = v24;
      break;
    default:
      v24 = [NSString stringWithFormat:@"(unknown: %i)", v23];
      break;
  }

  v27 = v24;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v52 = v19;
  SpeakableString.init(print:speak:)();
  v28 = outlined bridged method (pb) of @objc INPersonHandle.value.getter(v54);
  if (v29)
  {
    v30 = v28;
    v31 = v29;
    v32 = static CharacterSet.controlCharacters.getter();
    __chkstk_darwin(v32);
    v46 = v6;

    specialized RangeReplaceableCollection.filter(_:)(partial apply for closure #1 in String.remove(characters:), v45, v30, v31);

    (*(v55 + 8))(v6, v4);
    SpeakableString.init(print:speak:)();
    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = 1;
  __swift_storeEnumTagSinglePayload(v15, v33, 1, v16);
  v35 = v54;
  v36 = [v54 label];
  if (v36)
  {
    v37 = v36;
    static Signpost.begin(_:)();
    v55 = v38;
    v49 = v39;
    v48[3] = v40;
    v60 = Locale.identifier.getter();
    v61 = v41;
    v58 = 45;
    v59 = 0xE100000000000000;
    v56 = 95;
    v57 = 0xE100000000000000;
    v46 = lazy protocol witness table accessor for type String and conformance String();
    v47 = v46;
    v45[0] = &type metadata for String;
    v45[1] = v46;
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    static LabelMappingUtil.translateINPersonHandleLabel(_:languageCode:)();

    Signpost.OpenSignpost.end()();
    SpeakableString.init(print:speak:)();

    v34 = 0;
  }

  v42 = v52;
  __swift_storeEnumTagSinglePayload(v12, v34, 1, v16);
  type metadata accessor for DialogPersonHandle.Builder();
  swift_allocObject();
  DialogPersonHandle.Builder.init()();
  v43 = v51;
  (*(v17 + 16))(v51, v42, v16);
  __swift_storeEnumTagSinglePayload(v43, 0, 1, v16);
  dispatch thunk of DialogPersonHandle.Builder.withType(_:)();

  outlined destroy of SpeakableString?(v43);
  dispatch thunk of DialogPersonHandle.Builder.withValue(_:)();

  dispatch thunk of DialogPersonHandle.Builder.withLabel(_:)();

  v25 = dispatch thunk of DialogPersonHandle.Builder.build()();

  outlined destroy of SpeakableString?(v12);
  outlined destroy of SpeakableString?(v15);
  (*(v17 + 8))(v42, v16);
  return v25;
}

uint64_t specialized DialogPerson.copy<A>(to:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - v1;
  DialogPerson.givenName.getter();
  dispatch thunk of DialogPerson.Builder.withGivenName(_:)();
  outlined destroy of SpeakableString?(v2);
  DialogPerson.middleName.getter();
  dispatch thunk of DialogPerson.Builder.withMiddleName(_:)();

  outlined destroy of SpeakableString?(v2);
  DialogPerson.familyName.getter();
  dispatch thunk of DialogPerson.Builder.withFamilyName(_:)();

  outlined destroy of SpeakableString?(v2);
  DialogPerson.nickname.getter();
  dispatch thunk of DialogPerson.Builder.withNickname(_:)();

  outlined destroy of SpeakableString?(v2);
  DialogPerson.fullNameFromInput.getter();
  dispatch thunk of DialogPerson.Builder.withFullName(_:)();

  outlined destroy of SpeakableString?(v2);
  DialogPerson.pronoun.getter();
  dispatch thunk of DialogPerson.Builder.withPronoun(_:)();

  DialogPerson.company.getter();
  dispatch thunk of DialogPerson.Builder.withCompany(_:)();

  outlined destroy of SpeakableString?(v2);
  DialogPerson.useConversationalName.getter();
  dispatch thunk of DialogPerson.Builder.withUseConversationalName(_:)();

  DialogPerson.related.getter();
  dispatch thunk of DialogPerson.Builder.withRelated(_:)();

  DialogPerson.personHandle.getter();
  dispatch thunk of DialogPerson.Builder.withPersonHandle(_:)();

  DialogPerson.friendlyPhoneNumberName.getter();
  dispatch thunk of DialogPerson.Builder.withFriendlyPhoneNumberName(_:)();

  DialogPerson.friendlyPhoneNumberNameShort.getter();
  dispatch thunk of DialogPerson.Builder.withFriendlyPhoneNumberNameShort(_:)();

  DialogPerson.relationship.getter();
  dispatch thunk of DialogPerson.Builder.withRelationship(_:)();

  outlined destroy of SpeakableString?(v2);
  DialogPerson.useRelationshipName.getter();
  v3 = dispatch thunk of DialogPerson.Builder.withUseRelationshipName(_:)();

  return v3;
}

uint64_t DialogPerson.Builder.applyOptions(_:)(char a1)
{
  if (a1)
  {
    dispatch thunk of DialogPerson.Builder.withUseConversationalName(_:)();
  }

  if ((a1 & 2) != 0)
  {
    dispatch thunk of DialogPerson.Builder.withFriendlyPhoneNumberNameShort(_:)();
  }
}

uint64_t PhonePerson.toPersonAndVisualData(contactId:command:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v32[0] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v7 - 8);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v32 - v11;
  v13 = type metadata accessor for ContactImage();
  OUTLINED_FUNCTION_7();
  v15 = v14;
  __chkstk_darwin(v16);
  v18 = (v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_424FD0;
  *(v19 + 32) = a1;
  *(v19 + 40) = a2;
  *v18 = v19;
  (*(v15 + 104))(v18, enum case for ContactImage.contacts(_:), v13);
  type metadata accessor for PhonePersonAndVisualData.Builder(0);
  swift_allocObject();
  v20 = *(*PhonePersonAndVisualData.Builder.init()() + 184);

  v21 = v20(v4);

  v22 = ContactImage.serializedData.getter();
  v24 = v23;
  Data.base64EncodedString(options:)(0);
  outlined consume of Data._Representation(v22, v24);
  String.toSpeakableString.getter();

  v25 = type metadata accessor for SpeakableString();
  v26 = 1;
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v25);
  v27 = (*(*v21 + 200))(v12);

  outlined destroy of SpeakableString?(v12);
  if (v32[0] && AceObject.serializeToBase64()().value._object)
  {
    String.toSpeakableString.getter();

    v26 = 0;
  }

  __swift_storeEnumTagSinglePayload(v9, v26, 1, v25);
  v28 = (*(*v27 + 216))(v9);

  v29 = outlined destroy of SpeakableString?(v9);
  v30 = (*(*v28 + 232))(v29);

  (*(v15 + 8))(v18, v13);
  return v30;
}

unint64_t lazy protocol witness table accessor for type PhonePerson.Options and conformance PhonePerson.Options()
{
  result = lazy protocol witness table cache variable for type PhonePerson.Options and conformance PhonePerson.Options;
  if (!lazy protocol witness table cache variable for type PhonePerson.Options and conformance PhonePerson.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhonePerson.Options and conformance PhonePerson.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhonePerson.Options and conformance PhonePerson.Options;
  if (!lazy protocol witness table cache variable for type PhonePerson.Options and conformance PhonePerson.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhonePerson.Options and conformance PhonePerson.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhonePerson.Options and conformance PhonePerson.Options;
  if (!lazy protocol witness table cache variable for type PhonePerson.Options and conformance PhonePerson.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhonePerson.Options and conformance PhonePerson.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhonePerson.Options and conformance PhonePerson.Options;
  if (!lazy protocol witness table cache variable for type PhonePerson.Options and conformance PhonePerson.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhonePerson.Options and conformance PhonePerson.Options);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PhonePerson and conformance DialogPerson(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_29_24(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_50_21(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t PhonePerson.Builder.build()()
{
  type metadata accessor for PhonePerson(0);
  swift_allocObject();

  return DialogPerson.init(builder:)();
}

uint64_t PhonePerson.Builder.__deallocating_deinit()
{
  DialogPerson.Builder.deinit();

  return swift_deallocClassInstance();
}

uint64_t PhonePerson.getProperty(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 == 0xD000000000000014 && 0x800000000045F8A0 == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    result = specialized PhonePersonProperties<>.isUnnamedPhoneNumber.getter();
    *(a3 + 24) = &type metadata for Bool;
    *a3 = result & 1;
  }

  else
  {
    type metadata accessor for DialogPerson();
    v8 = method lookup function for DialogPerson();

    return v8(a1, a2);
  }

  return result;
}

uint64_t specialized PhonePersonProperties<>.isUnnamedPhoneNumber.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_43F9D0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = swift_getKeyPath();
  *(inited + 56) = swift_getKeyPath();
  result = swift_getKeyPath();
  v6 = 0;
  *(inited + 64) = result;
  while (1)
  {
    v7 = v6;
    if (v6 == 5)
    {
LABEL_9:

      return v7 == 5;
    }

    if ((inited & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_6;
    }

    if (v6 >= *(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)))
    {
      break;
    }

LABEL_6:
    ++v6;
    v10 = v0;

    swift_getAtKeyPath();

    v8 = type metadata accessor for SpeakableString();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v8);
    outlined destroy of SpeakableString?(v3);

    if (EnumTagSinglePayload != 1)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t PhonePerson.init(from:)(void *a1)
{
  outlined init with copy of SignalProviding(a1, v4);
  v2 = DialogPerson.init(from:)();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t PhonePerson.__deallocating_deinit()
{
  DialogPerson.deinit();

  return swift_deallocClassInstance();
}

uint64_t PhonePersonAndVisualData.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  PhonePersonAndVisualData.Builder.init()();
  return v0;
}

uint64_t key path setter for PhonePersonAndVisualData.Builder.person : PhonePersonAndVisualData.Builder(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 112);

  return v2(v3);
}

uint64_t PhonePersonAndVisualData.Builder.person.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_9_58(a1);
  *(v2 + 16) = v1;
}

uint64_t key path setter for PhonePersonAndVisualData.Builder.imageData : PhonePersonAndVisualData.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of SpeakableString?(a1, &v8 - v5);
  return (*(**a2 + 136))(v6);
}

uint64_t key path setter for PhonePersonAndVisualData.Builder.selectAction : PhonePersonAndVisualData.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of SpeakableString?(a1, &v8 - v5);
  return (*(**a2 + 160))(v6);
}

uint64_t PhonePersonAndVisualData.Builder.imageData.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  OUTLINED_FUNCTION_4_4(v3 + *a1, a2);
  return outlined init with copy of SpeakableString?(v3 + v5, a3);
}

uint64_t PhonePersonAndVisualData.Builder.init()()
{
  *(v0 + 16) = 0;
  v1 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin24PhonePersonAndVisualData7Builder_imageData;
  v2 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin24PhonePersonAndVisualData7Builder_selectAction, 1, 1, v2);
  return v0;
}

uint64_t PhonePersonAndVisualData.Builder.withPerson(_:)()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 112);

  v1(v2);
}

uint64_t PhonePersonAndVisualData.Builder.withPerson(_:)(uint64_t a1)
{
  if (a1)
  {
    a1 = dispatch thunk of DialogPerson.Builder.build()();
  }

  (*(*v1 + 112))(a1);
}

uint64_t PhonePersonAndVisualData.Builder.withImageData(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_5_63();
  outlined init with copy of SpeakableString?(a1, v1);
  OUTLINED_FUNCTION_2_0();
  (*(v5 + 136))(v1);
}

uint64_t PhonePersonAndVisualData.Builder.withImageData(print:speak:)()
{
  OUTLINED_FUNCTION_7_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_12_7();
  v3 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v3);
  OUTLINED_FUNCTION_2_0();
  (*(v4 + 136))(v0);
}

uint64_t PhonePersonAndVisualData.Builder.withSelectAction(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_5_63();
  outlined init with copy of SpeakableString?(a1, v1);
  OUTLINED_FUNCTION_2_0();
  (*(v5 + 160))(v1);
}

uint64_t PhonePersonAndVisualData.Builder.withSelectAction(print:speak:)()
{
  OUTLINED_FUNCTION_7_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_12_7();
  v3 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v3);
  OUTLINED_FUNCTION_2_0();
  (*(v4 + 160))(v0);
}

uint64_t PhonePersonAndVisualData.Builder.build()()
{
  type metadata accessor for PhonePersonAndVisualData(0);
  v0 = swift_allocObject();

  PhonePersonAndVisualData.init(builder:)();
  return v0;
}

uint64_t PhonePersonAndVisualData.__allocating_init(builder:)(uint64_t a1)
{
  v1 = swift_allocObject();
  PhonePersonAndVisualData.init(builder:)();
  return v1;
}

uint64_t PhonePersonAndVisualData.Builder.deinit()
{

  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin24PhonePersonAndVisualData7Builder_imageData);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin24PhonePersonAndVisualData7Builder_selectAction);
  return v0;
}

uint64_t key path setter for PhonePersonAndVisualData.mockGlobals : PhonePersonAndVisualData(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 136);
  v4 = *a1;
  return v3(v2);
}

void PhonePersonAndVisualData.mockGlobals.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_9_58(a1);
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;
}

uint64_t PhonePersonAndVisualData.init(builder:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v2);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_5_63();
  *(v0 + 16) = 0;
  OUTLINED_FUNCTION_2_0();
  *(v0 + 24) = (*(v4 + 104))();
  OUTLINED_FUNCTION_2_0();
  (*(v5 + 128))();
  outlined init with take of SpeakableString?(v1, v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin24PhonePersonAndVisualData_imageData);
  OUTLINED_FUNCTION_2_0();
  (*(v6 + 152))();

  outlined init with take of SpeakableString?(v1, v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin24PhonePersonAndVisualData_selectAction);
  return v0;
}

uint64_t PhonePersonAndVisualData.__allocating_init(person:imageData:selectAction:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PhonePersonAndVisualData.Builder(0);
  swift_allocObject();
  PhonePersonAndVisualData.Builder.init()();
  OUTLINED_FUNCTION_2_0();
  v8 = (*(v7 + 184))(a1);

  (*(*v8 + 200))(a2);

  OUTLINED_FUNCTION_2_0();
  v10 = (*(v9 + 216))(a3);

  v11 = (*(v3 + 152))(v10);

  outlined destroy of SpeakableString?(a3);
  outlined destroy of SpeakableString?(a2);
  return v11;
}

void PhonePersonAndVisualData.getProperty(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = OUTLINED_FUNCTION_21(v7);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  v14 = a1 == 0x6E6F73726570 && a2 == 0xE600000000000000;
  if (!v14 && (OUTLINED_FUNCTION_13_46(0x6E6F73726570, 0xE600000000000000) & 1) == 0)
  {
    v16 = a1 == 0x7461446567616D69 && a2 == 0xE900000000000061;
    if (v16 || (OUTLINED_FUNCTION_13_46(0x7461446567616D69, 0xE900000000000061) & 1) != 0)
    {
      outlined init with copy of SpeakableString?(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin24PhonePersonAndVisualData_imageData, v13);
      v17 = type metadata accessor for SpeakableString();
      if (__swift_getEnumTagSinglePayload(v13, 1, v17) != 1)
      {
        *(a3 + 24) = v17;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
        (*(*(v17 - 8) + 32))(boxed_opaque_existential_1, v13, v17);
        return;
      }

      v18 = v13;
    }

    else
    {
      v20 = a1 == 0x63417463656C6573 && a2 == 0xEC0000006E6F6974;
      if (!v20 && (OUTLINED_FUNCTION_13_46(0x63417463656C6573, 0xEC0000006E6F6974) & 1) == 0)
      {
        goto LABEL_18;
      }

      outlined init with copy of SpeakableString?(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin24PhonePersonAndVisualData_selectAction, v10);
      v21 = type metadata accessor for SpeakableString();
      if (__swift_getEnumTagSinglePayload(v10, 1, v21) != 1)
      {
        *(a3 + 24) = v21;
        v22 = __swift_allocate_boxed_opaque_existential_1(a3);
        (*(*(v21 - 8) + 32))(v22, v10, v21);
        return;
      }

      v18 = v10;
    }

    outlined destroy of SpeakableString?(v18);
LABEL_18:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  v15 = *(v3 + 24);
  if (!v15)
  {
    goto LABEL_18;
  }

  *(a3 + 24) = type metadata accessor for PhonePerson(0);
  *a3 = v15;
}

PhoneCallFlowDelegatePlugin::PhonePersonAndVisualData::CodingKeys_optional __swiftcall PhonePersonAndVisualData.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhonePersonAndVisualData.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t PhonePersonAndVisualData.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6E6F73726570;
  }

  if (a1 == 1)
  {
    return 0x7461446567616D69;
  }

  return 0x63417463656C6573;
}

PhoneCallFlowDelegatePlugin::PhonePersonAndVisualData::CodingKeys_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhonePersonAndVisualData.CodingKeys@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhonePersonAndVisualData::CodingKeys_optional *a2@<X8>)
{
  result.value = PhonePersonAndVisualData.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhonePersonAndVisualData.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = PhonePersonAndVisualData.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

PhoneCallFlowDelegatePlugin::PhonePersonAndVisualData::CodingKeys_optional protocol witness for CodingKey.init(stringValue:) in conformance PhonePersonAndVisualData.CodingKeys@<W0>(uint64_t a1@<X0>, PhoneCallFlowDelegatePlugin::PhonePersonAndVisualData::CodingKeys_optional *a2@<X8>)
{
  result.value = PhonePersonAndVisualData.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhonePersonAndVisualData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhonePersonAndVisualData.CodingKeys and conformance PhonePersonAndVisualData.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhonePersonAndVisualData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhonePersonAndVisualData.CodingKeys and conformance PhonePersonAndVisualData.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PhonePersonAndVisualData.deinit()
{

  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin24PhonePersonAndVisualData_imageData);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin24PhonePersonAndVisualData_selectAction);
  return v0;
}

uint64_t PhonePersonAndVisualData.Builder.__deallocating_deinit(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t PhonePersonAndVisualData.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0D19PersonAndVisualDataC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0D19PersonAndVisualDataC10CodingKeysOGMR);
  OUTLINED_FUNCTION_7();
  v7 = v6;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhonePersonAndVisualData.CodingKeys and conformance PhonePersonAndVisualData.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = *(v3 + 24);
  HIBYTE(v17) = 0;
  type metadata accessor for PhonePerson(0);
  OUTLINED_FUNCTION_2_89();
  lazy protocol witness table accessor for type PhonePerson and conformance DialogPerson(v11, v12, &protocol conformance descriptor for DialogPerson);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v13 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin24PhonePersonAndVisualData_imageData;
    BYTE6(v17) = 1;
    type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_1_92();
    lazy protocol witness table accessor for type PhonePerson and conformance DialogPerson(v14, v15, &protocol conformance descriptor for SpeakableString);
    OUTLINED_FUNCTION_11_9(v3 + v13, &v17 + 6);
    BYTE5(v17) = 2;
    OUTLINED_FUNCTION_11_9(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin24PhonePersonAndVisualData_selectAction, &v17 + 5);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t lazy protocol witness table accessor for type PhonePersonAndVisualData.CodingKeys and conformance PhonePersonAndVisualData.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PhonePersonAndVisualData.CodingKeys and conformance PhonePersonAndVisualData.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhonePersonAndVisualData.CodingKeys and conformance PhonePersonAndVisualData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhonePersonAndVisualData.CodingKeys and conformance PhonePersonAndVisualData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhonePersonAndVisualData.CodingKeys and conformance PhonePersonAndVisualData.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhonePersonAndVisualData.CodingKeys and conformance PhonePersonAndVisualData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhonePersonAndVisualData.CodingKeys and conformance PhonePersonAndVisualData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhonePersonAndVisualData.CodingKeys and conformance PhonePersonAndVisualData.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhonePersonAndVisualData.CodingKeys and conformance PhonePersonAndVisualData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhonePersonAndVisualData.CodingKeys and conformance PhonePersonAndVisualData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhonePersonAndVisualData.CodingKeys and conformance PhonePersonAndVisualData.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhonePersonAndVisualData.CodingKeys and conformance PhonePersonAndVisualData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhonePersonAndVisualData.CodingKeys and conformance PhonePersonAndVisualData.CodingKeys);
  }

  return result;
}

uint64_t PhonePersonAndVisualData.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  PhonePersonAndVisualData.init(from:)(a1);
  return v2;
}

uint64_t PhonePersonAndVisualData.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = OUTLINED_FUNCTION_21(v5);
  __chkstk_darwin(v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v24 - v10;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0D19PersonAndVisualDataC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0D19PersonAndVisualDataC10CodingKeysOGMR);
  OUTLINED_FUNCTION_7();
  v13 = v12;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v14);
  *(v3 + 16) = 0;
  v15 = a1[3];
  v28 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  lazy protocol witness table accessor for type PhonePersonAndVisualData.CodingKeys and conformance PhonePersonAndVisualData.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {

    type metadata accessor for PhonePersonAndVisualData(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v25 = v8;
    v26 = v13;
    type metadata accessor for PhonePerson(0);
    v31 = 0;
    OUTLINED_FUNCTION_2_89();
    lazy protocol witness table accessor for type PhonePerson and conformance DialogPerson(v16, v17, &protocol conformance descriptor for DialogPerson);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v3 + 24) = v32;
    type metadata accessor for SpeakableString();
    v30 = 1;
    OUTLINED_FUNCTION_1_92();
    lazy protocol witness table accessor for type PhonePerson and conformance DialogPerson(v19, v20, &protocol conformance descriptor for SpeakableString);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined init with take of SpeakableString?(v11, v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin24PhonePersonAndVisualData_imageData);
    v29 = 2;
    v21 = v25;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v22 = OUTLINED_FUNCTION_3_81();
    v23(v22);
    outlined init with take of SpeakableString?(v21, v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin24PhonePersonAndVisualData_selectAction);
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
  return v3;
}

void (*protocol witness for CATType.mockGlobals.modify in conformance PhonePersonAndVisualData(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 144))();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance BusinessCompositionFlow;
}

uint64_t protocol witness for Decodable.init(from:) in conformance PhonePersonAndVisualData@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 184))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void type metadata completion function for PhonePersonAndVisualData(uint64_t a1)
{
  type metadata accessor for SpeakableString?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata completion function for PhonePersonAndVisualData.Builder(uint64_t a1)
{
  type metadata accessor for SpeakableString?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

_BYTE *storeEnumTagSinglePayload for PhonePersonAndVisualData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t PhonePersonWithAliasesList.Builder.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t PhonePersonList.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_2_12();
  v2 = swift_allocObject();
  PhonePersonList.init(builder:)(a1);
  return v2;
}

uint64_t PhonePersonList.__allocating_init(list:)(uint64_t a1)
{
  type metadata accessor for PhonePersonList.Builder();
  v3 = swift_allocObject();
  *(v3 + 16) = _swiftEmptyArrayStorage;
  swift_beginAccess();
  *(v3 + 16) = a1;
  return (*(v1 + 136))(v3);
}

uint64_t key path setter for PhonePersonList.Builder.list : PhonePersonList.Builder(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 96);

  return v2(v3);
}

uint64_t PhonePersonList.Builder.list.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_9_58(a1);
  *(v2 + 16) = v1;
}

uint64_t PhonePersonWithAliasesList.Builder.init()()
{
  result = v0;
  *(v0 + 16) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t PhonePersonList.Builder.withList(_:)(uint64_t a1)
{
  v2 = *(*v1 + 96);

  v2(v3);
}

uint64_t PhonePersonList.Builder.build()(uint64_t a1)
{
  type metadata accessor for PhonePersonList();
  v1 = swift_allocObject();

  PhonePersonList.init(builder:)(v2);
  return v1;
}

uint64_t key path setter for PhonePersonList.mockGlobals : PhonePersonList(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 120);
  v4 = *a1;
  return v3(v2);
}

void *PhonePersonList.mockGlobals.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_7_58(a1);
  v2 = *(v1 + 16);
  v3 = v2;
  return v2;
}

uint64_t PhonePersonList.init(builder:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  v2 = (*(*a1 + 88))(a1);

  *(v1 + 24) = v2;
  return v1;
}

double PhonePersonList.getProperty(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 == 1953720684 && a2 == 0xE400000000000000;
  if (!v5 && (OUTLINED_FUNCTION_8_4(1953720684, 0xE400000000000000) & 1) == 0)
  {
    v10 = a1 == 0xD000000000000010 && 0x800000000045FA10 == a2;
    if (v10 || (OUTLINED_FUNCTION_8_4(0xD000000000000010, 0x800000000045FA10) & 1) != 0)
    {
      v11 = specialized PhonePersonListProperties.allSameGivenName.getter();
    }

    else
    {
      v12 = a1 == 0xD000000000000014 && 0x800000000045F8A0 == a2;
      if (v12 || (OUTLINED_FUNCTION_8_4(0xD000000000000014, 0x800000000045F8A0) & 1) != 0)
      {
        v11 = specialized PhonePersonListProperties.isUnnamedPhoneNumber.getter();
      }

      else
      {
        v13 = a1 == 0x6C646E6148736168 && a2 == 0xEF736C6562614C65;
        if (v13 || (OUTLINED_FUNCTION_8_4(0x6C646E6148736168, 0xEF736C6562614C65) & 1) != 0)
        {
          v11 = specialized PhonePersonListProperties.hasHandleLabels.getter();
        }

        else
        {
          v14 = a1 == 0xD000000000000018 && 0x800000000045FA30 == a2;
          if (!v14 && (OUTLINED_FUNCTION_8_4(0xD000000000000018, 0x800000000045FA30) & 1) == 0)
          {
            result = 0.0;
            *a3 = 0u;
            *(a3 + 16) = 0u;
            return result;
          }

          v11 = specialized PhonePersonListProperties.hasDifferentNameAndLabel.getter();
        }
      }
    }

    *(a3 + 24) = &type metadata for Bool;
    *a3 = v11 & 1;
    return result;
  }

  v8 = *(v3 + 24);
  *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR);
  *a3 = v8;

  return result;
}

uint64_t specialized PhonePersonListProperties.allSameGivenName.getter()
{
  v1 = *(v0 + 24);
  v4[2] = &v5;

  v2 = specialized Sequence.allSatisfy(_:)(partial apply for specialized closure #1 in PhonePersonListProperties.allSameGivenName.getter, v4, v1);

  return v2 & 1;
}

BOOL specialized PhonePersonListProperties.isUnnamedPhoneNumber.getter()
{
  v1 = *(v0 + 24);
  if (!(v1 >> 62))
  {
    if (*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_12:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    return 0;
  }

LABEL_3:
  v2 = specialized Array.count.getter(v1);
  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  do
  {
    v5 = v2 == v3;
    if (v2 == v3)
    {
      break;
    }

    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v3, v4 == 0, v1);
    if (v4)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
    }

    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_12;
    }

    v6 = specialized PhonePersonProperties<>.isUnnamedPhoneNumber.getter();

    ++v3;
  }

  while ((v6 & 1) != 0);
  return v5;
}

uint64_t specialized PhonePersonListProperties.hasHandleLabels.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v4 = *(v0 + 24);
  result = specialized Array.count.getter(v4);
  v6 = result;
  v7 = 0;
  while (1)
  {
    v8 = v7;
    if (v6 == v7)
    {
      return v6 == v8;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_19;
      }
    }

    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (!DialogPerson.personHandle.getter())
    {

      return v6 == v8;
    }

    DialogPersonHandle.label.getter();

    v9 = type metadata accessor for SpeakableString();
    if (__swift_getEnumTagSinglePayload(v3, 1, v9) == 1)
    {

      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v3, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      return v6 == v8;
    }

    v10 = SpeakableString.print.getter();
    v12 = v11;

    (*(*(v9 - 8) + 8))(v3, v9);
    if (v12)
    {

      v13 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v13 = v10 & 0xFFFFFFFFFFFFLL;
      }

      v7 = v8 + 1;
      if (v13)
      {
        continue;
      }
    }

    return v6 == v8;
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t specialized PhonePersonListProperties.hasDifferentNameAndLabel.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v1 - 8);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v20 - v5;
  v7 = *(v0 + 24);
  result = specialized Array.count.getter(v7);
  v9 = result;
  v10 = 0;
  v24 = v7;
  v25 = v7 & 0xC000000000000001;
  v22 = v6;
  v23 = v7 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v9 == v10)
    {
      return v9 == v10;
    }

    if (v25)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v10 >= *(v23 + 16))
      {
        goto LABEL_31;
      }
    }

    if (__OFADD__(v10, 1))
    {
      break;
    }

    dispatch thunk of DialogPerson.toString.getter();
    v11 = type metadata accessor for SpeakableString();
    if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
    {
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      countAndFlagsBits = 0;
      object = 0;
    }

    else
    {
      SpeakableString.print.getter();
      (*(*(v11 - 8) + 8))(v6, v11);
      v14 = String.lowercased()();
      countAndFlagsBits = v14._countAndFlagsBits;
      object = v14._object;
    }

    v15 = DialogPerson.personHandle.getter();
    if (v15)
    {
      DialogPersonHandle.label.getter();

      if (__swift_getEnumTagSinglePayload(v3, 1, v11) == 1)
      {
        _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v3, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
        v16 = 0;
        v15 = 0;
        if (!object)
        {
          goto LABEL_23;
        }
      }

      else
      {
        SpeakableString.print.getter();
        v21 = countAndFlagsBits;
        (*(*(v11 - 8) + 8))(v3, v11);
        v19 = String.lowercased()();
        v16 = v19._countAndFlagsBits;
        v15 = v19._object;
        countAndFlagsBits = v21;

        if (!object)
        {
LABEL_23:
          if (!v15)
          {

            return v9 == v10;
          }

LABEL_25:

          v6 = v22;
          goto LABEL_26;
        }
      }
    }

    else
    {
      v16 = 0;
      if (!object)
      {
        goto LABEL_23;
      }
    }

    if (!v15)
    {
      goto LABEL_25;
    }

    if (countAndFlagsBits == v16 && object == v15)
    {

      return v9 == v10;
    }

    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v22;
    if (v18)
    {
      return v9 == v10;
    }

LABEL_26:
    ++v10;
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

BOOL PhonePersonList.CodingKeys.init(stringValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhonePersonList.CodingKeys.init(rawValue:), v2);

  return v3 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance PhonePersonList.CodingKeys@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = PhonePersonList.CodingKeys.init(stringValue:)(*a1);
  *a2 = result;
  return result;
}

BOOL protocol witness for CodingKey.init(stringValue:) in conformance PhonePersonList.CodingKeys@<W0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = PhonePersonList.CodingKeys.init(stringValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhonePersonList.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhonePersonList.CodingKeys and conformance PhonePersonList.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhonePersonList.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhonePersonList.CodingKeys and conformance PhonePersonList.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PhonePersonList.__deallocating_deinit()
{
  EligibleAppFinder.deinit();
  OUTLINED_FUNCTION_2_12();

  return swift_deallocClassInstance();
}

uint64_t PhonePersonList.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0D10PersonListC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0D10PersonListC10CodingKeysOGMR);
  OUTLINED_FUNCTION_7();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhonePersonList.CodingKeys and conformance PhonePersonList.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = *(v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR);
  _sSay27PhoneCallFlowDelegatePlugin0A6PersonCGSayxGSEsSERzlWlTm_1(&lazy protocol witness table cache variable for type [PhonePerson] and conformance <A> [A], &lazy protocol witness table cache variable for type PhonePerson and conformance DialogPerson, &protocol conformance descriptor for DialogPerson, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v9, v4);
}

unint64_t lazy protocol witness table accessor for type PhonePersonList.CodingKeys and conformance PhonePersonList.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PhonePersonList.CodingKeys and conformance PhonePersonList.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhonePersonList.CodingKeys and conformance PhonePersonList.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhonePersonList.CodingKeys and conformance PhonePersonList.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhonePersonList.CodingKeys and conformance PhonePersonList.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhonePersonList.CodingKeys and conformance PhonePersonList.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhonePersonList.CodingKeys and conformance PhonePersonList.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhonePersonList.CodingKeys and conformance PhonePersonList.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhonePersonList.CodingKeys and conformance PhonePersonList.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhonePersonList.CodingKeys and conformance PhonePersonList.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhonePersonList.CodingKeys and conformance PhonePersonList.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhonePersonList.CodingKeys and conformance PhonePersonList.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhonePersonList.CodingKeys and conformance PhonePersonList.CodingKeys);
  }

  return result;
}

uint64_t PhonePersonList.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_2_12();
  v2 = swift_allocObject();
  PhonePersonList.init(from:)(a1);
  return v2;
}

uint64_t PhonePersonList.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0D10PersonListC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0D10PersonListC10CodingKeysOGMR);
  OUTLINED_FUNCTION_7();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = v11 - v8;
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhonePersonList.CodingKeys and conformance PhonePersonList.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {

    type metadata accessor for PhonePersonList();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR);
    _sSay27PhoneCallFlowDelegatePlugin0A6PersonCGSayxGSEsSERzlWlTm_1(&lazy protocol witness table cache variable for type [PhonePerson] and conformance <A> [A], &lazy protocol witness table cache variable for type PhonePerson and conformance DialogPerson, &protocol conformance descriptor for DialogPerson, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v4);
    *(v1 + 24) = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t _sSay27PhoneCallFlowDelegatePlugin0A6PersonCGSayxGSEsSERzlWlTm_1(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR);
    _s27PhoneCallFlowDelegatePlugin0A6PersonC16SiriDialogEngine0hF0CSEADWlTm_0(a2, 255, type metadata accessor for PhonePerson, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void (*protocol witness for CATType.mockGlobals.modify in conformance PhonePersonList(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 128))();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance BusinessCompositionFlow;
}

uint64_t protocol witness for Decodable.init(from:) in conformance PhonePersonList@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 168))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhonePersonList.CodingKeys(_BYTE *result, int a2, int a3)
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

uint64_t specialized closure #1 in PhonePersonListProperties.allSameGivenName.getter(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SpeakableString();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSg_ADtMd, &_s16SiriDialogEngine15SpeakableStringVSg_ADtMR);
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v26 - v13;
  __chkstk_darwin(v15);
  v17 = &v26 - v16;
  DialogPerson.givenName.getter();
  v18 = *(a2 + 24);
  if (specialized Array.count.getter(v18) <= 0)
  {
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v3);
  }

  else
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v18 & 0xC000000000000001) == 0, v18);
    if ((v18 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
    }

    DialogPerson.givenName.getter();
  }

  v19 = v11;
  v20 = *(v6 + 48);
  outlined init with copy of SpeakableString?(v17, v8);
  outlined init with copy of SpeakableString?(v14, &v8[v20]);
  if (__swift_getEnumTagSinglePayload(v8, 1, v3) != 1)
  {
    outlined init with copy of SpeakableString?(v8, v11);
    if (__swift_getEnumTagSinglePayload(&v8[v20], 1, v3) != 1)
    {
      v22 = v27;
      (*(v4 + 32))(v27, &v8[v20], v3);
      _s27PhoneCallFlowDelegatePlugin0A6PersonC16SiriDialogEngine0hF0CSEADWlTm_0(&lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString, 255, &type metadata accessor for SpeakableString, &protocol conformance descriptor for SpeakableString);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v26 = v19;
      v21 = v23;
      v24 = *(v4 + 8);
      v24(v22, v3);
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      v24(v26, v3);
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      return v21 & 1;
    }

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    (*(v4 + 8))(v11, v3);
    goto LABEL_11;
  }

  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (__swift_getEnumTagSinglePayload(&v8[v20], 1, v3) != 1)
  {
LABEL_11:
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v8, &_s16SiriDialogEngine15SpeakableStringVSg_ADtMd, &_s16SiriDialogEngine15SpeakableStringVSg_ADtMR);
    v21 = 0;
    return v21 & 1;
  }

  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v21 = 1;
  return v21 & 1;
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A6PersonC16SiriDialogEngine0hF0CSEADWlTm_0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PhonePersonListProperties.allSameGivenName.getter(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v5 = (*(a2 + 8))();
  v7[2] = a1;
  v7[3] = v3;
  v8 = v2;
  LOBYTE(v3) = specialized Sequence.allSatisfy(_:)(partial apply for closure #1 in PhonePersonListProperties.allSameGivenName.getter, v7, v5);

  return v3 & 1;
}

uint64_t PhonePersonListProperties.isUnnamedPhoneNumber.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = v4();
  v6 = specialized Array.count.getter(v5);

  if (v6)
  {
    v7 = (v4)(a1, a2);
    v8 = specialized Array.count.getter(v7);
    v9 = 0;
    v10 = v7 & 0xC000000000000001;
    while (1)
    {
      v11 = v8 == v9;
      if (v8 == v9)
      {
LABEL_10:

        return v11;
      }

      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v9, v10 == 0, v7);

      if (__OFADD__(v9, 1))
      {
        break;
      }

      v13 = specialized PhonePersonProperties<>.isUnnamedPhoneNumber.getter();

      ++v9;
      if ((v13 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t PhonePersonListProperties.hasHandleLabels.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = (*(a2 + 8))(a1, a2, v5);
  result = specialized Array.count.getter(v8);
  v10 = result;
  v11 = 0;
  while (1)
  {
    v12 = v11;
    if (v10 == v11)
    {
      goto LABEL_17;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v11 >= *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_19;
      }
    }

    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (!DialogPerson.personHandle.getter())
    {

LABEL_17:

      return v10 == v12;
    }

    DialogPersonHandle.label.getter();

    v13 = type metadata accessor for SpeakableString();
    if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
    {

      outlined destroy of SpeakableString?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      goto LABEL_17;
    }

    v14 = SpeakableString.print.getter();
    v16 = v15;

    OUTLINED_FUNCTION_40();
    (*(v17 + 8))(v7, v13);
    if (v16)
    {

      v18 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v18 = v14 & 0xFFFFFFFFFFFFLL;
      }

      v11 = v12 + 1;
      if (v18)
      {
        continue;
      }
    }

    goto LABEL_17;
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t PhonePersonListProperties.hasDifferentNameAndLabel.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v26 - v9;
  v11 = (*(a2 + 8))(a1, a2, v8);
  result = specialized Array.count.getter(v11);
  v13 = result;
  v14 = 0;
  v30 = v11 & 0xC000000000000001;
  v31 = v11;
  v28 = v10;
  v29 = v11 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v13 == v14)
    {
      goto LABEL_30;
    }

    if (v30)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v14 >= *(v29 + 16))
      {
        goto LABEL_33;
      }
    }

    if (__OFADD__(v14, 1))
    {
      break;
    }

    dispatch thunk of DialogPerson.toString.getter();
    v15 = type metadata accessor for SpeakableString();
    if (__swift_getEnumTagSinglePayload(v10, 1, v15) == 1)
    {
      outlined destroy of SpeakableString?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      countAndFlagsBits = 0;
      object = 0;
    }

    else
    {
      SpeakableString.print.getter();
      OUTLINED_FUNCTION_40();
      (*(v18 + 8))(v10, v15);
      v19 = String.lowercased()();
      countAndFlagsBits = v19._countAndFlagsBits;
      object = v19._object;
    }

    v20 = DialogPerson.personHandle.getter();
    if (v20)
    {
      DialogPersonHandle.label.getter();

      if (__swift_getEnumTagSinglePayload(v6, 1, v15) == 1)
      {
        outlined destroy of SpeakableString?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
        v21 = 0;
        v20 = 0;
        if (!object)
        {
          goto LABEL_23;
        }
      }

      else
      {
        SpeakableString.print.getter();
        v27 = countAndFlagsBits;
        OUTLINED_FUNCTION_40();
        (*(v24 + 8))(v6, v15);
        v25 = String.lowercased()();
        v21 = v25._countAndFlagsBits;
        v20 = v25._object;
        countAndFlagsBits = v27;

        if (!object)
        {
LABEL_23:
          if (!v20)
          {

            return v13 == v14;
          }

LABEL_25:

          goto LABEL_26;
        }
      }
    }

    else
    {
      v21 = 0;
      if (!object)
      {
        goto LABEL_23;
      }
    }

    if (!v20)
    {
      goto LABEL_25;
    }

    if (countAndFlagsBits == v21 && object == v20)
    {

LABEL_30:

      return v13 == v14;
    }

    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v23)
    {
      goto LABEL_30;
    }

LABEL_26:
    ++v14;
    v10 = v28;
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t closure #1 in PhonePersonListProperties.allSameGivenName.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SpeakableString();
  v30 = *(v6 - 8);
  __chkstk_darwin(v6);
  v29 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSg_ADtMd, &_s16SiriDialogEngine15SpeakableStringVSg_ADtMR);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v11 - 8);
  v31 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  DialogPerson.givenName.getter();
  v19 = (*(a4 + 8))(a3, a4);
  if (specialized Array.count.getter(v19) <= 0)
  {

    __swift_storeEnumTagSinglePayload(v15, 1, 1, v6);
  }

  else
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v19 & 0xC000000000000001) == 0, v19);
    if ((v19 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
    }

    DialogPerson.givenName.getter();
  }

  v20 = *(v8 + 48);
  outlined init with copy of SpeakableString?(v18, v10);
  outlined init with copy of SpeakableString?(v15, &v10[v20]);
  if (__swift_getEnumTagSinglePayload(v10, 1, v6) != 1)
  {
    v22 = v31;
    outlined init with copy of SpeakableString?(v10, v31);
    if (__swift_getEnumTagSinglePayload(&v10[v20], 1, v6) != 1)
    {
      v23 = v30;
      v24 = &v10[v20];
      v25 = v29;
      (*(v30 + 32))(v29, v24, v6);
      lazy protocol witness table accessor for type SpeakableString and conformance SpeakableString();
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v26 = *(v23 + 8);
      v26(v25, v6);
      outlined destroy of SpeakableString?(v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      outlined destroy of SpeakableString?(v18, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      v26(v31, v6);
      outlined destroy of SpeakableString?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      return v21 & 1;
    }

    outlined destroy of SpeakableString?(v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    outlined destroy of SpeakableString?(v18, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    (*(v30 + 8))(v22, v6);
    goto LABEL_11;
  }

  outlined destroy of SpeakableString?(v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  outlined destroy of SpeakableString?(v18, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (__swift_getEnumTagSinglePayload(&v10[v20], 1, v6) != 1)
  {
LABEL_11:
    outlined destroy of SpeakableString?(v10, &_s16SiriDialogEngine15SpeakableStringVSg_ADtMd, &_s16SiriDialogEngine15SpeakableStringVSg_ADtMR);
    v21 = 0;
    return v21 & 1;
  }

  outlined destroy of SpeakableString?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v21 = 1;
  return v21 & 1;
}

unint64_t lazy protocol witness table accessor for type SpeakableString and conformance SpeakableString()
{
  result = lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString;
  if (!lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString)
  {
    type metadata accessor for SpeakableString();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString);
  }

  return result;
}

uint64_t PhonePersonProperties<>.isUnnamedPhoneNumber.getter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_43F9D0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = swift_getKeyPath();
  *(inited + 56) = swift_getKeyPath();
  result = swift_getKeyPath();
  v4 = 0;
  *(inited + 64) = result;
  while (1)
  {
    if (v4 == 5)
    {
LABEL_9:

      return v4 == 5;
    }

    if ((inited & 0xC000000000000001) == 0)
    {
      break;
    }

    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_6:
    v7 = v5;
    v6 = closure #1 in PhonePersonProperties<>.isUnnamedPhoneNumber.getter(&v7, v1);

    if (!v6)
    {
      goto LABEL_9;
    }

    ++v4;
  }

  if (v4 < *(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)))
  {
    v5 = *(inited + 8 * v4 + 32);

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

BOOL closure #1 in PhonePersonProperties<>.isUnnamedPhoneNumber.getter(uint64_t *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = v9 - v4;
  v9[1] = a2;

  swift_getAtKeyPath();

  v6 = type metadata accessor for SpeakableString();
  v7 = __swift_getEnumTagSinglePayload(v5, 1, v6) == 1;
  outlined destroy of SpeakableString?(v5);
  return v7;
}

uint64_t PhonePersonWithAliasesList.Builder.build()(uint64_t a1)
{
  type metadata accessor for PhonePersonWithAliasesList();
  OUTLINED_FUNCTION_50();
  swift_allocObject();

  return PhonePersonList.init(builder:)(v1);
}

uint64_t PhonePersonWithAliasesList.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_50();
  swift_allocObject();
  return PhonePersonList.init(builder:)(a1);
}

double PhonePersonWithAliasesList.getProperty(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x68744F664F6D756ELL && a2 == 0xEB00000000737265;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = PhonePersonWithAliasesListProperties<>.numOfOthers.getter();
    if (v9)
    {
      result = 0.0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }

    else
    {
      *(a3 + 24) = &type metadata for Double;
      *a3 = v7;
    }
  }

  else
  {
    v10 = a1 == 0xD000000000000011 && 0x800000000045FAF0 == a2;
    if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v11 = specialized PhonePersonWithAliasesListProperties<>.allSameFamilyName.getter();
      *(a3 + 24) = &type metadata for Bool;
      *a3 = v11 & 1;
    }

    else
    {

      return PhonePersonList.getProperty(_:)(a1, a2, a3);
    }
  }

  return result;
}

uint64_t PhonePersonWithAliasesListProperties<>.numOfOthers.getter()
{
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    *&result = COERCE_DOUBLE(_CocoaArrayWrapper.endIndex.getter());
  }

  else
  {
    result = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  }

  if (__OFSUB__(result, 2))
  {
    __break(1u);
  }

  else
  {
    *&result = ((result - 2) & ~((result - 2) >> 63));
  }

  return result;
}

uint64_t specialized PhonePersonWithAliasesListProperties<>.allSameFamilyName.getter()
{
  v1 = type metadata accessor for SpeakableString();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v32 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSg_ADtMd, &_s16SiriDialogEngine15SpeakableStringVSg_ADtMR);
  __chkstk_darwin(v37);
  v5 = v30 - v4;
  v6 = &_s16SiriDialogEngine15SpeakableStringVSgMd;
  v7 = &_s16SiriDialogEngine15SpeakableStringVSgMR;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v38 = v30 - v12;
  __chkstk_darwin(v13);
  v42 = v30 - v14;
  v15 = *(v0 + 24);
  result = specialized Array.count.getter(v15);
  v17 = result;
  v18 = 0;
  v39 = v15 & 0xC000000000000001;
  v41 = v15 & 0xFFFFFFFFFFFFFF8;
  if (v15 < 0)
  {
    v19 = v15;
  }

  else
  {
    v19 = v15 & 0xFFFFFFFFFFFFFF8;
  }

  v30[1] = v19;
  v31 = (v2 + 32);
  v33 = (v2 + 8);
  v36 = v15;
  while (1)
  {
    if (v17 == v18)
    {
      return v17 == v18;
    }

    if (v39)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v20 = v38;
    }

    else
    {
      v20 = v38;
      if (v18 >= *(v41 + 16))
      {
        goto LABEL_31;
      }
    }

    if (__OFADD__(v18, 1))
    {
      break;
    }

    v40 = result;
    DialogPerson.familyName.getter();
    if (v15 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      result = *(v41 + 16);
    }

    if (result < 1)
    {
      __swift_storeEnumTagSinglePayload(v20, 1, 1, v1);
    }

    else
    {
      if (v39)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*(v41 + 16))
        {
          goto LABEL_32;
        }
      }

      DialogPerson.familyName.getter();
    }

    v21 = *(v37 + 48);
    v22 = v42;
    outlined init with copy of SpeakableString?(v42, v5);
    outlined init with copy of SpeakableString?(v20, &v5[v21]);
    if (__swift_getEnumTagSinglePayload(v5, 1, v1) == 1)
    {
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v20, v6, v7);
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v22, v6, v7);
      if (__swift_getEnumTagSinglePayload(&v5[v21], 1, v1) != 1)
      {
        goto LABEL_28;
      }

      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v5, v6, v7);

      v15 = v36;
    }

    else
    {
      outlined init with copy of SpeakableString?(v5, v10);
      if (__swift_getEnumTagSinglePayload(&v5[v21], 1, v1) == 1)
      {
        _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v20, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
        _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v42, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
        (*v33)(v10, v1);
LABEL_28:
        _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v5, &_s16SiriDialogEngine15SpeakableStringVSg_ADtMd, &_s16SiriDialogEngine15SpeakableStringVSg_ADtMR);

        return v17 == v18;
      }

      v23 = &v5[v21];
      v24 = v1;
      v25 = v7;
      v26 = v6;
      v27 = v32;
      (*v31)(v32, v23, v24);
      lazy protocol witness table accessor for type SpeakableString and conformance SpeakableString();
      v34 = dispatch thunk of static Equatable.== infix(_:_:)();
      v35 = v18;
      v28 = *v33;
      v29 = v27;
      v6 = v26;
      v7 = v25;
      v1 = v24;
      (*v33)(v29, v24);
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v20, v6, v7);
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v42, v6, v7);
      v28(v10, v24);
      v18 = v35;
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v5, v6, v7);

      v15 = v36;
      if ((v34 & 1) == 0)
      {
        return v17 == v18;
      }
    }

    ++v18;
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t PhonePersonWithAliasesList.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_50();
  swift_allocObject();
  return PhonePersonWithAliasesList.init(from:)(a1);
}

uint64_t PhonePersonWithAliasesList.init(from:)(void *a1)
{
  outlined init with copy of SignalProviding(a1, v4);
  v2 = PhonePersonList.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t PhonePersonWithAliasesList.__deallocating_deinit()
{
  EligibleAppFinder.deinit();
  OUTLINED_FUNCTION_50();

  return swift_deallocClassInstance();
}

uint64_t PhonePersonWithAliasesListProperties<>.allSameFamilyName.getter(uint64_t a1)
{
  v2 = *(v1 + 24);
  result = specialized Array.count.getter(v2);
  v4 = result;
  v5 = 0;
  while (1)
  {
    v6 = v5;
    if (v4 == v5)
    {
      return v4 == v6;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v7 = result;
    }

    else
    {
      if (v5 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_12;
      }

      v7 = *(v2 + 8 * v5 + 32);
    }

    if (__OFADD__(v6, 1))
    {
      break;
    }

    v9 = v7;
    v8 = closure #1 in PhonePersonWithAliasesListProperties<>.allSameFamilyName.getter(&v9, v1);

    v5 = v6 + 1;
    if ((v8 & 1) == 0)
    {
      return v4 == v6;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t closure #1 in PhonePersonWithAliasesListProperties<>.allSameFamilyName.getter(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SpeakableString();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSg_ADtMd, &_s16SiriDialogEngine15SpeakableStringVSg_ADtMR);
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v26 - v13;
  __chkstk_darwin(v15);
  v17 = &v26 - v16;
  DialogPerson.familyName.getter();
  v18 = *(a2 + 24);
  if (specialized Array.count.getter(v18) <= 0)
  {
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v3);
  }

  else
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v18 & 0xC000000000000001) == 0, v18);
    if ((v18 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
    }

    DialogPerson.familyName.getter();
  }

  v19 = v11;
  v20 = *(v6 + 48);
  outlined init with copy of SpeakableString?(v17, v8);
  outlined init with copy of SpeakableString?(v14, &v8[v20]);
  if (__swift_getEnumTagSinglePayload(v8, 1, v3) != 1)
  {
    outlined init with copy of SpeakableString?(v8, v11);
    if (__swift_getEnumTagSinglePayload(&v8[v20], 1, v3) != 1)
    {
      v22 = v27;
      (*(v4 + 32))(v27, &v8[v20], v3);
      lazy protocol witness table accessor for type SpeakableString and conformance SpeakableString();
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v26 = v19;
      v21 = v23;
      v24 = *(v4 + 8);
      v24(v22, v3);
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      v24(v26, v3);
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      return v21 & 1;
    }

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    (*(v4 + 8))(v11, v3);
    goto LABEL_11;
  }

  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (__swift_getEnumTagSinglePayload(&v8[v20], 1, v3) != 1)
  {
LABEL_11:
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v8, &_s16SiriDialogEngine15SpeakableStringVSg_ADtMd, &_s16SiriDialogEngine15SpeakableStringVSg_ADtMR);
    v21 = 0;
    return v21 & 1;
  }

  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v21 = 1;
  return v21 & 1;
}

void *PhoneProtectedAppCheckStrategy.protectedAppCheck(_:appsToBeUnlocked:)(uint64_t a1, uint64_t a2)
{
  if (PhoneProtectedAppCheckStrategy.shouldDisableProtectedAppsCheck()())
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.siriPhone);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_10_0(v7))
    {
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_8_60();
      *v2 = 136315138;
      *(v2 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x800000000045FBA0, &v11);
      OUTLINED_FUNCTION_57(&dword_0, v8, v9, "#PhoneProtectedAppCheckStrategy %s ProtectedAppCheck disabled, returning empty!");
      __swift_destroy_boxed_opaque_existential_1(v3);
      OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_26_0(v2);
    }

    return _swiftEmptyArrayStorage;
  }

  else
  {
  }

  return a2;
}

void PhoneProtectedAppCheckStrategy.protectedAppCheck(_:didProduce:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315650;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x800000000045FBD0, &v14);
    *(v4 + 12) = 2080;
    type metadata accessor for ProtectedAppStatus();
    v6 = Array.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v14);

    *(v4 + 14) = v8;
    *(v4 + 22) = 2080;
    ProtectedAppCheck.appIDs.getter();
    v9 = Array.description.getter();
    v11 = v10;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v14);

    *(v4 + 24) = v12;
    _os_log_impl(&dword_0, oslog, v3, "#PhoneProtectedAppCheckStrategy %s called with status %s for %s", v4, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v5);
    OUTLINED_FUNCTION_52();
  }
}

uint64_t PhoneProtectedAppCheckStrategy.shouldDisableProtectedAppsCheck()()
{
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(*(v2 + 56))(v1, v2);
  v4 = (*(v3 + 264))();

  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_59();
    if (!v5)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.siriPhone);
    v7 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_10_0(v15))
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_8_60();
    *v4 = 136315138;
    *(v4 + 4) = OUTLINED_FUNCTION_1_93(v16, v17);
    v13 = "#PhoneProtectedAppCheckStrategy %s ProtectedApps is disabled";
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_2_90();
  if (PhoneCallNLIntent.isEmergencyCall()())
  {
    OUTLINED_FUNCTION_7_59();
    if (!v5)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.siriPhone);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_10_0(v8))
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_8_60();
    *v4 = 136315138;
    *(v4 + 4) = OUTLINED_FUNCTION_1_93(v9, v10);
    v13 = "#PhoneProtectedAppCheckStrategy %s isEmergency = true";
LABEL_11:
    OUTLINED_FUNCTION_57(&dword_0, v11, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_26_0(v4);
LABEL_12:

    v18 = 1;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_2_90();
  if (!PhoneCallNLIntent.isOutgoingCallExcludeCallBackAndRedial()())
  {
    OUTLINED_FUNCTION_2_90();
    if (!PhoneCallNLIntent.isSearchCallOrVoiceMail()())
    {
      OUTLINED_FUNCTION_7_59();
      if (!v5)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, static Logger.siriPhone);
      v7 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_10_0(v26))
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_8_60();
      *v4 = 136315138;
      *(v4 + 4) = OUTLINED_FUNCTION_1_93(v27, v28);
      v13 = "#PhoneProtectedAppCheckStrategy %s Not a calling or call history request";
      goto LABEL_11;
    }
  }

  v18 = 0;
LABEL_13:
  OUTLINED_FUNCTION_7_59();
  if (!v5)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.siriPhone);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v22 = 136315394;
    *(v22 + 4) = OUTLINED_FUNCTION_1_93(v29, v23);
    *(v22 + 12) = 1024;
    *(v22 + 14) = v18;
    _os_log_impl(&dword_0, v20, v21, "#PhoneProtectedAppCheckStrategy %s --> %{BOOL}d", v22, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v29);
    OUTLINED_FUNCTION_26_0(v29);
    OUTLINED_FUNCTION_52();
  }

  return v18;
}

uint64_t static PhoneReferenceResolution.resolveEntity(_:referenceResolver:matchedResultsSetting:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v99 = a2;
  v100 = a3;
  v7 = type metadata accessor for PhoneRRTarget.Target(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  v97 = type metadata accessor for MatchedResultsSetting();
  OUTLINED_FUNCTION_7();
  v13 = v12;
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_4();
  v98 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  __chkstk_darwin(v17 - 8);
  v19 = &v92 - v18;
  type metadata accessor for RREntity();
  OUTLINED_FUNCTION_7();
  v103 = v21;
  v104 = v20;
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_4();
  v102 = v23 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMR);
  __chkstk_darwin(v24 - 8);
  OUTLINED_FUNCTION_16_2();
  v95 = v25;
  __chkstk_darwin(v26);
  v28 = &v92 - v27;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Logger.siriPhone);
  OUTLINED_FUNCTION_40_0();

  v101 = v4;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  v32 = os_log_type_enabled(v30, v31);
  v96 = v7;
  v94 = v28;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v93 = a4;
    v34 = v33;
    v106[0] = swift_slowAlloc();
    *v34 = 136315394;
    *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000039, 0x800000000045FC90, v106);
    *(v34 + 12) = 2080;
    v105 = a1;
    type metadata accessor for UsoEntity();

    v35 = String.init<A>(describing:)();
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v106);

    *(v34 + 14) = v37;
    _os_log_impl(&dword_0, v30, v31, "#ReferenceResolution %s resolving %s", v34, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_52();
    v38 = v34;
    a4 = v93;
    OUTLINED_FUNCTION_26_0(v38);
  }

  __swift_project_boxed_opaque_existential_1(v99, v99[3]);
  (*(v13 + 16))(v98, v100, v97);
  type metadata accessor for ResolveQuery();
  swift_allocObject();
  OUTLINED_FUNCTION_40_0();

  ResolveQuery.init(referenceEntity:alternativeEntityTypes:restrictedEntitiesKey:matchedResultsSetting:)();
  RRReferenceResolverProtocol.resolveEntity(resolveQuery:)();

  v39 = v104;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v104);
  v41 = v102;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_10_0(v43))
    {
      v44 = OUTLINED_FUNCTION_65_0();
      *v44 = 0;
      OUTLINED_FUNCTION_33(&dword_0, v45, v46, "#ReferenceResolution no entity found");
      OUTLINED_FUNCTION_26_0(v44);
    }

    goto LABEL_25;
  }

  (*(v103 + 32))(v102, v19, v39);
  static Signpost.begin(_:)();
  v100 = v47;
  v49 = v48;
  v51 = v50;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  v52 = RREntity.convertData<A>(to:)();
  Signpost.OpenSignpost.end()();
  if (v52)
  {
    v53 = v52;
    v54 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    v55 = OUTLINED_FUNCTION_16_4(v49);
    v56 = v94;
    if (v55)
    {
      v57 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_102(v57);
      OUTLINED_FUNCTION_47_1(&dword_0, v58, v59, "#ReferenceResolution resolved to an INPerson");
      OUTLINED_FUNCTION_26_0(v51);
    }

    *v56 = v53;
    OUTLINED_FUNCTION_5_72();
    goto LABEL_22;
  }

  RREntity.usoEntity.getter();
  OUTLINED_FUNCTION_88();
  type metadata accessor for UsoEntity_common_Person();
  OUTLINED_FUNCTION_3_83();

  v56 = v94;
  if (!v106[0])
  {
    RREntity.usoEntity.getter();
    OUTLINED_FUNCTION_88();
    type metadata accessor for UsoEntity_common_Group();
    OUTLINED_FUNCTION_3_83();

    v64 = v106[0];
    if (v106[0])
    {
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_16_4(v66))
      {
        v67 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_103(v67);
        OUTLINED_FUNCTION_36_0(&dword_0, v68, v69, "#ReferenceResolution resolved to a common_Group");
        OUTLINED_FUNCTION_52();
      }
    }

    else
    {
      RREntity.usoEntity.getter();
      OUTLINED_FUNCTION_88();
      type metadata accessor for UsoEntity_common_Agent();
      OUTLINED_FUNCTION_3_83();

      if (v106[0])
      {
        v79 = Logger.logObject.getter();
        v49 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_16_4(v49))
        {
          v80 = OUTLINED_FUNCTION_65_0();
          OUTLINED_FUNCTION_102(v80);
          OUTLINED_FUNCTION_47_1(&dword_0, v81, v82, "#ReferenceResolution resolved to a common_Agent");
          OUTLINED_FUNCTION_26_0(0);
        }

        UsoEntity_common_Agent.toContactQuery()();
        goto LABEL_17;
      }

      RREntity.usoEntity.getter();
      OUTLINED_FUNCTION_88();
      type metadata accessor for UsoEntity_common_App();
      OUTLINED_FUNCTION_3_83();

      v64 = v106[0];
      if (!v106[0])
      {
        v87 = Logger.logObject.getter();
        v88 = static os_log_type_t.error.getter();
        if (OUTLINED_FUNCTION_16_4(v88))
        {
          v89 = OUTLINED_FUNCTION_65_0();
          OUTLINED_FUNCTION_103(v89);
          OUTLINED_FUNCTION_36_0(&dword_0, v90, v91, "#ReferenceResolution resolved entity was not recognized as a person or group");
          OUTLINED_FUNCTION_52();
        }

        v70 = 1;
        v49 = v96;
        goto LABEL_23;
      }

      v65 = Logger.logObject.getter();
      v83 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_16_4(v83))
      {
        v84 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_103(v84);
        OUTLINED_FUNCTION_36_0(&dword_0, v85, v86, "#ReferenceResolution resolved to a common_app");
        OUTLINED_FUNCTION_52();
      }
    }

    *v56 = v64;
    OUTLINED_FUNCTION_5_72();
    goto LABEL_22;
  }

  v60 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v49))
  {
    v61 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_102(v61);
    OUTLINED_FUNCTION_47_1(&dword_0, v62, v63, "#ReferenceResolution resolved to a common_Person");
    OUTLINED_FUNCTION_26_0(v51);
  }

  UsoEntity_common_Person.toContactQuery()();
LABEL_17:

  OUTLINED_FUNCTION_5_72();
LABEL_22:
  swift_storeEnumTagMultiPayload();
  v70 = 0;
LABEL_23:
  __swift_storeEnumTagSinglePayload(v56, v70, 1, v49);
  v71 = RREntity.appBundleId.getter();
  v73 = static PhoneReferenceResolution.getContactSourceType(contactSource:)(v71, v72);

  (*(v103 + 8))(v41, v39);
  v74 = v95;
  outlined init with take of PhoneRRTarget.Target?(v56, v95);
  if (__swift_getEnumTagSinglePayload(v74, 1, v49) != 1)
  {
    outlined init with take of PhoneRRTarget.Target(v74, v11);
    outlined init with take of PhoneRRTarget.Target(v11, a4);
    v75 = type metadata accessor for PhoneRRTarget(0);
    *(a4 + *(v75 + 20)) = v73;
    v76 = a4;
    v77 = 0;
    return __swift_storeEnumTagSinglePayload(v76, v77, 1, v75);
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v74, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMR);
LABEL_25:
  v75 = type metadata accessor for PhoneRRTarget(0);
  v76 = a4;
  v77 = 1;
  return __swift_storeEnumTagSinglePayload(v76, v77, 1, v75);
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A21SelfPerformanceLoggerC8signpost19domainExecutionType04taskL018siriKitEventSender_xSo020FLOWSchemaFLOWDomainkL0V_SS04SirioC00toP7Sending_pxyXEtlFZSay0T28ReferenceResolutionDataModel8RRResultOG_Tt4g5()
{
  OUTLINED_FUNCTION_15_44();
  outlined init with copy of SignalProviding(v4, v8);
  type metadata accessor for PhoneSelfPerformanceLogger();
  swift_initStackObject();

  PhoneSelfPerformanceLogger.init(siriKitEventSender:domainExecutionType:taskType:)(v8, v3, v2, v0);
  v1(&v7);
  v5 = v7;

  return v5;
}

__n128 _s27PhoneCallFlowDelegatePlugin0A21SelfPerformanceLoggerC8signpost19domainExecutionType04taskL018siriKitEventSender_xSo020FLOWSchemaFLOWDomainkL0V_SS04SirioC00toP7Sending_pxyXEtlFZAA14TargetContacts33_9A2BD23864AF7C0BC1A75979566F7BA5LLVSg_Tt4g5()
{
  OUTLINED_FUNCTION_15_44();
  v5 = v4;
  outlined init with copy of SignalProviding(v6, v15);
  type metadata accessor for PhoneSelfPerformanceLogger();
  swift_initStackObject();

  PhoneSelfPerformanceLogger.init(siriKitEventSender:domainExecutionType:taskType:)(v15, v3, v2, v0);
  v1(v12);
  v7 = v13;
  v8 = v14;
  v10 = v12[1];
  v11 = v12[0];

  result = v11;
  *v5 = v11;
  *(v5 + 16) = v10;
  *(v5 + 32) = v7;
  *(v5 + 40) = v8;
  return result;
}