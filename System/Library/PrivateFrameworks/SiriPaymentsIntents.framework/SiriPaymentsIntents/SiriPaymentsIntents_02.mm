uint64_t protocol witness for AppDisambiguationStrategyAsync.makeRepromptOnLowConfidence(apps:) in conformance PaymentsAppResolutionFlowStrategy<A1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821BBAB8](a1, a2, a3, a4);
}

uint64_t protocol witness for AppDisambiguationStrategyAsync.makeDisambiguationCancelResponse(apps:) in conformance PaymentsAppResolutionFlowStrategy<A1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821BBAA8](a1, a2, a3, a4);
}

uint64_t protocol witness for AppDisambiguationStrategyAsync.makeDisambiguationErrorResponse(error:apps:) in conformance PaymentsAppResolutionFlowStrategy<A1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821BBAA0](a1, a2, a3, a4, a5);
}

id @nonobjc _SFPBCard.init(data:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0xF000000000000000) == 0xF000000000000000)
  {
    v5 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(a1, a2);
    v5 = isa;
  }

  v3 = [v8 initWithData_];
  MEMORY[0x277D82BD8](v5);
  return v3;
}

id @nonobjc SFCard.init(protobuf:)(uint64_t a1)
{
  v4 = [v1 initWithProtobuf_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id @nonobjc _SFPBCard.init(facade:)(uint64_t a1)
{
  v4 = [v1 initWithFacade_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v7[1] = a4;
  v8 = *(a3 - 8);
  v9 = a3 - 8;
  v7[0] = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](a1, a2);
  v10 = v7 - v7[0];
  v4();
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  v13 = v5;
  (*(v8 + 8))(v10, v11);
  return v12;
}

void *outlined init with copy of AppResolutionResult.AppResolutionResultError?(const void *a1, void *a2)
{
  v6 = type metadata accessor for AppResolutionResult.AppResolutionResultError();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0bC6ResultO0bcD5ErrorOSgMd, &_s17SiriAppResolution0bC6ResultO0bcD5ErrorOSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t outlined destroy of AppResolutionResult.AppResolutionResultError?(uint64_t a1)
{
  v3 = type metadata accessor for AppResolutionResult.AppResolutionResultError();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
  v1 = lazy protocol witness table accessor for type [App] and conformance [A]();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

unint64_t lazy protocol witness table accessor for type [App] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [App] and conformance [A];
  if (!lazy protocol witness table cache variable for type [App] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [App] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [App] and conformance [A];
  if (!lazy protocol witness table cache variable for type [App] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [App] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [App] and conformance [A];
  if (!lazy protocol witness table cache variable for type [App] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [App] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

__n128 outlined init with take of Any(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_268709218()
{
  v2 = *(type metadata accessor for Input() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #2 in PaymentsAppResolutionFlowStrategy.parseConfirmationResponse(input:)()
{
  v1 = *(type metadata accessor for Input() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #2 in PaymentsAppResolutionFlowStrategy.parseConfirmationResponse(input:)(v2);
}

uint64_t outlined destroy of ConfirmationResponse?(uint64_t a1)
{
  v3 = type metadata accessor for ConfirmationResponse();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *outlined init with copy of ConfirmationResponse?(const void *a1, void *a2)
{
  v6 = type metadata accessor for ConfirmationResponse();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_268709820()
{
  v2 = *(type metadata accessor for Parse.DirectInvocation() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #2 in PaymentsAppResolutionFlowStrategy.parseDisambiguationResponse(input:)()
{
  v1 = *(type metadata accessor for Parse.DirectInvocation() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #2 in PaymentsAppResolutionFlowStrategy.parseDisambiguationResponse(input:)(v2);
}

uint64_t outlined consume of PaymentsDirectInvocations(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1 || a3 == 2)
  {
  }

  return result;
}

unint64_t type metadata accessor for SAUIAssistantUtteranceView()
{
  v2 = lazy cache variable for type metadata for SAUIAssistantUtteranceView;
  if (!lazy cache variable for type metadata for SAUIAssistantUtteranceView)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SAUIAssistantUtteranceView);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for App();
  v1 = lazy protocol witness table accessor for type App and conformance App();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16SASTTemplateItem_pGMd, &_sSaySo16SASTTemplateItem_pGMR);
  v1 = lazy protocol witness table accessor for type [SASTTemplateItem] and conformance [A]();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for RRCandidate();
  v1 = lazy protocol witness table accessor for type RRCandidate and conformance RRCandidate();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

unint64_t lazy protocol witness table accessor for type App and conformance App()
{
  v2 = lazy protocol witness table cache variable for type App and conformance App;
  if (!lazy protocol witness table cache variable for type App and conformance App)
  {
    type metadata accessor for App();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type App and conformance App);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [SAAceView] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [SAAceView] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SAAceView] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo9SAAceViewCGMd, &_sSaySo9SAAceViewCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [SAAceView] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata completion function for PaymentsAppResolutionFlowStrategy(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

unint64_t lazy protocol witness table accessor for type [SAUIListItem] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [SAUIListItem] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SAUIListItem] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo12SAUIListItemCGMd, &_sSaySo12SAUIListItemCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [SAUIListItem] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for SAUIListItem()
{
  v2 = lazy cache variable for type metadata for SAUIListItem;
  if (!lazy cache variable for type metadata for SAUIListItem)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SAUIListItem);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Zip2Sequence<[SAUIListItem], [App]> and conformance Zip2Sequence<A, B>()
{
  v2 = lazy protocol witness table cache variable for type Zip2Sequence<[SAUIListItem], [App]> and conformance Zip2Sequence<A, B>;
  if (!lazy protocol witness table cache variable for type Zip2Sequence<[SAUIListItem], [App]> and conformance Zip2Sequence<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss12Zip2SequenceVySaySo12SAUIListItemCGSay17SiriAppResolution0F0CGGMd, &_ss12Zip2SequenceVySaySo12SAUIListItemCGSay17SiriAppResolution0F0CGGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Zip2Sequence<[SAUIListItem], [App]> and conformance Zip2Sequence<A, B>);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for SFCard()
{
  v2 = lazy cache variable for type metadata for SFCard;
  if (!lazy cache variable for type metadata for SFCard)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SFCard);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for _SFPBCard()
{
  v2 = lazy cache variable for type metadata for _SFPBCard;
  if (!lazy cache variable for type metadata for _SFPBCard)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for _SFPBCard);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [SFCardSection] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [SFCardSection] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SFCardSection] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo13SFCardSectionCGMd, &_sSaySo13SFCardSectionCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [SFCardSection] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type EnumeratedSequence<[SFCardSection]> and conformance EnumeratedSequence<A>()
{
  v2 = lazy protocol witness table cache variable for type EnumeratedSequence<[SFCardSection]> and conformance EnumeratedSequence<A>;
  if (!lazy protocol witness table cache variable for type EnumeratedSequence<[SFCardSection]> and conformance EnumeratedSequence<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss18EnumeratedSequenceVySaySo13SFCardSectionCGGMd, &_ss18EnumeratedSequenceVySaySo13SFCardSectionCGGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type EnumeratedSequence<[SFCardSection]> and conformance EnumeratedSequence<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [SASTColumnDataListItem] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [SASTColumnDataListItem] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SASTColumnDataListItem] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo22SASTColumnDataListItemCGMd, &_sSaySo22SASTColumnDataListItemCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [SASTColumnDataListItem] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Zip2Sequence<[SASTColumnDataListItem], [App]> and conformance Zip2Sequence<A, B>()
{
  v2 = lazy protocol witness table cache variable for type Zip2Sequence<[SASTColumnDataListItem], [App]> and conformance Zip2Sequence<A, B>;
  if (!lazy protocol witness table cache variable for type Zip2Sequence<[SASTColumnDataListItem], [App]> and conformance Zip2Sequence<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss12Zip2SequenceVySaySo22SASTColumnDataListItemCGSay17SiriAppResolution0H0CGGMd, &_ss12Zip2SequenceVySaySo22SASTColumnDataListItemCGSay17SiriAppResolution0H0CGGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Zip2Sequence<[SASTColumnDataListItem], [App]> and conformance Zip2Sequence<A, B>);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for INIntent()
{
  v2 = lazy cache variable for type metadata for INIntent;
  if (!lazy cache variable for type metadata for INIntent)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for INIntent);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [SFAbstractCommand] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [SFAbstractCommand] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SFAbstractCommand] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17SFAbstractCommandCGMd, &_sSaySo17SFAbstractCommandCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [SFAbstractCommand] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined destroy of A.Element?(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, a2);
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type Input and conformance Input()
{
  v2 = lazy protocol witness table cache variable for type Input and conformance Input;
  if (!lazy protocol witness table cache variable for type Input and conformance Input)
  {
    type metadata accessor for Input();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Input and conformance Input);
    return WitnessTable;
  }

  return v2;
}

void *outlined init with copy of [App](void *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

uint64_t sub_26870AC00()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v4);

  return swift_deallocObject();
}

void partial apply for closure #1 in closure #1 in PaymentsAppResolutionFlowStrategy.resolveApp(input:)(uint64_t *a1)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR) - 8);
  v2 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + ((v2 + *(v7 + 64) + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in closure #1 in PaymentsAppResolutionFlowStrategy.resolveApp(input:)(a1, v3, v4, v1 + v2, v5);
}

void *outlined init with copy of Result<AppResolutionResult, Error>(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy17SiriAppResolution0cdA0Os5Error_pGMd, &_ss6ResultOy17SiriAppResolution0cdA0Os5Error_pGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *a1;
    MEMORY[0x26D621420]();
    *a2 = v4;
  }

  else
  {
    v2 = type metadata accessor for AppResolutionResult();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

void *outlined assign with take of AppResolutionResult.AppResolutionResultError?(const void *a1, void *a2)
{
  v7 = type metadata accessor for AppResolutionResult.AppResolutionResultError();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0bC6ResultO0bcD5ErrorOSgMd, &_s17SiriAppResolution0bC6ResultO0bcD5ErrorOSgMR);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0bC6ResultO0bcD5ErrorOSgMd, &_s17SiriAppResolution0bC6ResultO0bcD5ErrorOSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t sub_26870B1F0()
{
  v2 = *(type metadata accessor for AppResolutionResult.AppResolutionResultError() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #2 in closure #1 in closure #1 in PaymentsAppResolutionFlowStrategy.resolveApp(input:)()
{
  type metadata accessor for AppResolutionResult.AppResolutionResultError();

  return implicit closure #2 in closure #1 in closure #1 in PaymentsAppResolutionFlowStrategy.resolveApp(input:)();
}

unint64_t lazy protocol witness table accessor for type AppResolutionResult.AppResolutionResultError and conformance AppResolutionResult.AppResolutionResultError()
{
  v2 = lazy protocol witness table cache variable for type AppResolutionResult.AppResolutionResultError and conformance AppResolutionResult.AppResolutionResultError;
  if (!lazy protocol witness table cache variable for type AppResolutionResult.AppResolutionResultError and conformance AppResolutionResult.AppResolutionResultError)
  {
    type metadata accessor for AppResolutionResult.AppResolutionResultError();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AppResolutionResult.AppResolutionResultError and conformance AppResolutionResult.AppResolutionResultError);
    return WitnessTable;
  }

  return v2;
}

uint64_t PaymentsUnsupportedIntentCATs.disabledSurfIntent(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsUnsupportedIntent#DisabledSurfIntent", 0x2CuLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PaymentsUnsupportedIntentCATs.disabledSurfIntent()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  return MEMORY[0x2822009F8](PaymentsUnsupportedIntentCATs.disabledSurfIntent(), 0);
}

uint64_t PaymentsUnsupportedIntentCATs.disabledSurfIntent()()
{
  v5 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsUnsupportedIntent#DisabledSurfIntent", 0x2CuLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v7;
  v8 = (v5 + *v5);
  v2 = swift_task_alloc();
  v6[8] = v2;
  *v2 = v6[2];
  v2[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v3 = v6[4];

  return v8(v3, v1._countAndFlagsBits, v1._object, v7);
}

{
  v4 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](PaymentsUnsupportedIntentCATs.disabledSurfIntent(), 0);
  }

  else
  {

    v2 = *(*(v4 + 16) + 8);

    return v2();
  }
}

{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsUnsupportedIntent#DisabledSurfIntent", 0x2CuLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t PaymentsUnsupportedIntentCATs.unsupportedSurfIntent(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsUnsupportedIntent#UnsupportedSurfIntent", 0x2FuLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PaymentsUnsupportedIntentCATs.unsupportedSurfIntent()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  return MEMORY[0x2822009F8](PaymentsUnsupportedIntentCATs.unsupportedSurfIntent(), 0);
}

uint64_t PaymentsUnsupportedIntentCATs.unsupportedSurfIntent()()
{
  v5 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsUnsupportedIntent#UnsupportedSurfIntent", 0x2FuLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v7;
  v8 = (v5 + *v5);
  v2 = swift_task_alloc();
  v6[8] = v2;
  *v2 = v6[2];
  v2[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v3 = v6[4];

  return v8(v3, v1._countAndFlagsBits, v1._object, v7);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsUnsupportedIntent#UnsupportedSurfIntent", 0x2FuLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t type metadata accessor for PaymentsUnsupportedIntentCATs(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for PaymentsUnsupportedIntentCATs;
  if (!type metadata singleton initialization cache for PaymentsUnsupportedIntentCATs)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t type metadata completion function for PaymentsUnsupportedIntentCATs(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t PaymentsUnsupportedIntentCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v18 = a2;
  v15 = a3;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v19 = type metadata accessor for CATOption();
  v16 = *(v19 - 8);
  v17 = v19 - 8;
  v11 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19, v4);
  v13 = &v10 - v11;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v20, v5);
  v14 = &v10 - v12;
  v24 = v6;
  v23 = v7;
  v22 = v8;
  v25 = v3;
  outlined init with copy of URL?(v6, &v10 - v12);
  (*(v16 + 16))(v13, v18, v19);
  MEMORY[0x277D82BE0](v15);
  v21 = CATWrapper.init(templateDir:options:globals:)();

  v25 = v21;
  MEMORY[0x277D82BD8](v15);
  (*(v16 + 8))(v18, v19);
  outlined destroy of URL?(v20);

  return v21;
}

uint64_t Siri_Nlu_External_SystemDialogAct.init(systemOffered:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v20 = a1;
  v26 = 0;
  v25 = 0;
  v9 = 0;
  v19 = type metadata accessor for Siri_Nlu_External_SystemOffered();
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v10 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v2);
  v15 = &v9 - v10;
  v24 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v21 = *(v24 - 8);
  v22 = v24 - 8;
  v12 = *(v21 + 64);
  v11 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v20, v3);
  v14 = &v9 - v11;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v4, v5);
  v7 = &v9 - v13;
  v23 = &v9 - v13;
  v26 = &v9 - v13;
  v25 = v6;
  Siri_Nlu_External_SystemDialogAct.init()();
  (*(v21 + 32))(v7, v14, v24);
  (*(v17 + 16))(v15, v20, v19);
  Siri_Nlu_External_SystemDialogAct.offered.setter();
  (*(v21 + 16))(v16, v23, v24);
  (*(v17 + 8))(v20, v19);
  return (*(v21 + 8))(v23, v24);
}

uint64_t Siri_Nlu_External_SystemDialogAct.init(systemPrompted:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v20 = a1;
  v26 = 0;
  v25 = 0;
  v9 = 0;
  v19 = type metadata accessor for Siri_Nlu_External_SystemPrompted();
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v10 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v2);
  v15 = &v9 - v10;
  v24 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v21 = *(v24 - 8);
  v22 = v24 - 8;
  v12 = *(v21 + 64);
  v11 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v20, v3);
  v14 = &v9 - v11;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v4, v5);
  v7 = &v9 - v13;
  v23 = &v9 - v13;
  v26 = &v9 - v13;
  v25 = v6;
  Siri_Nlu_External_SystemDialogAct.init()();
  (*(v21 + 32))(v7, v14, v24);
  (*(v17 + 16))(v15, v20, v19);
  Siri_Nlu_External_SystemDialogAct.prompted.setter();
  (*(v21 + 16))(v16, v23, v24);
  (*(v17 + 8))(v20, v19);
  return (*(v21 + 8))(v23, v24);
}

uint64_t Siri_Nlu_External_SystemDialogAct.init(gaveOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v20 = a1;
  v26 = 0;
  v25 = 0;
  v9 = 0;
  v19 = type metadata accessor for Siri_Nlu_External_SystemGaveOptions();
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v10 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v2);
  v15 = &v9 - v10;
  v24 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v21 = *(v24 - 8);
  v22 = v24 - 8;
  v12 = *(v21 + 64);
  v11 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v20, v3);
  v14 = &v9 - v11;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v4, v5);
  v7 = &v9 - v13;
  v23 = &v9 - v13;
  v26 = &v9 - v13;
  v25 = v6;
  Siri_Nlu_External_SystemDialogAct.init()();
  (*(v21 + 32))(v7, v14, v24);
  (*(v17 + 16))(v15, v20, v19);
  Siri_Nlu_External_SystemDialogAct.gaveOptions.setter();
  (*(v21 + 16))(v16, v23, v24);
  (*(v17 + 8))(v20, v19);
  return (*(v21 + 8))(v23, v24);
}

uint64_t Siri_Nlu_External_SystemPrompted.init(_:)@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v28 = a1;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  v14 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2, v3);
  v32 = &v12 - v14;
  v15 = 0;
  v31 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v29 = *(v31 - 8);
  v30 = v31 - 8;
  v16 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v15, v4);
  v17 = &v12 - v16;
  v18 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, &v12 - v16);
  v19 = &v12 - v18;
  v35 = &v12 - v18;
  v27 = type metadata accessor for Siri_Nlu_External_SystemPrompted();
  v23 = *(v27 - 8);
  v24 = v27 - 8;
  v21 = *(v23 + 64);
  v20 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v28, v7);
  v26 = &v12 - v20;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v8, v9);
  v25 = &v12 - v22;
  v34 = &v12 - v22;
  v33 = v10;
  Siri_Nlu_External_SystemPrompted.init()();
  (*(v23 + 32))(v25, v26, v27);
  outlined init with copy of Siri_Nlu_External_UsoGraph?(v28, v32);
  if ((*(v29 + 48))(v32, 1, v31) == 1)
  {
    outlined destroy of Siri_Nlu_External_UsoGraph?(v32);
  }

  else
  {
    (*(v29 + 32))(v19, v32, v31);
    (*(v29 + 16))(v17, v19, v31);
    Siri_Nlu_External_SystemPrompted.target.setter();
    (*(v29 + 8))(v19, v31);
  }

  (*(v23 + 16))(v13, v25, v27);
  outlined destroy of Siri_Nlu_External_UsoGraph?(v28);
  return (*(v23 + 8))(v25, v27);
}

void *outlined init with copy of Siri_Nlu_External_UsoGraph?(const void *a1, void *a2)
{
  v6 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t outlined destroy of Siri_Nlu_External_UsoGraph?(uint64_t a1)
{
  v3 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t static Siri_Nlu_External_SystemPrompted.from(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v20 = a1;
  v30 = 0;
  v29 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  v15 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2, v3);
  v23 = &v13 - v15;
  v16 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v20, v4);
  v17 = &v13 - v16;
  v18 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v5, &v13 - v16);
  v25 = &v13 - v18;
  v30 = &v13 - v18;
  v29 = v7;
  v27 = 0;
  v22 = type metadata accessor for UsoTaskBuilder();
  v19 = _allocateUninitializedArray<A>(_:)();
  v21 = v8;

  *v21 = v20;
  _finalizeUninitializedArray<A>(_:)();
  v24 = v9;
  v10 = type metadata accessor for UsoBuilderOptions();
  (*(*(v10 - 8) + 56))(v23, 1);
  v26 = MEMORY[0x26D61F5F0](v24, v23);
  outlined destroy of UsoBuilderOptions?(v23);

  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  v28 = 0;

  v11 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  (*(*(v11 - 8) + 56))(v25, 0, 1);
  outlined init with copy of Siri_Nlu_External_UsoGraph?(v25, v17);
  Siri_Nlu_External_SystemPrompted.init(_:)(v17, v14);
  return outlined destroy of Siri_Nlu_External_UsoGraph?(v25);
}

uint64_t Siri_Nlu_External_SystemOffered.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v20 = a1;
  v26 = 0;
  v25 = 0;
  v9 = 0;
  v19 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v10 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v2);
  v15 = &v9 - v10;
  v24 = type metadata accessor for Siri_Nlu_External_SystemOffered();
  v21 = *(v24 - 8);
  v22 = v24 - 8;
  v12 = *(v21 + 64);
  v11 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v20, v3);
  v14 = &v9 - v11;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v4, v5);
  v7 = &v9 - v13;
  v23 = &v9 - v13;
  v26 = &v9 - v13;
  v25 = v6;
  Siri_Nlu_External_SystemOffered.init()();
  (*(v21 + 32))(v7, v14, v24);
  (*(v17 + 16))(v15, v20, v19);
  Siri_Nlu_External_SystemOffered.offeredAct.setter();
  (*(v21 + 16))(v16, v23, v24);
  (*(v17 + 8))(v20, v19);
  return (*(v21 + 8))(v23, v24);
}

uint64_t static Siri_Nlu_External_SystemOffered.from(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v10 = a1;
  v16 = 0;
  v6[1] = 0;
  v9 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed();
  v12 = *(v9 - 8);
  v8 = v9 - 8;
  v7 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v2);
  v13 = v6 - v7;
  v11 = (*(*(type metadata accessor for Siri_Nlu_External_UserDialogAct() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v13, v10);
  v15 = v6 - v11;
  v16 = v4;
  (*(v12 + 16))(v3);
  Siri_Nlu_External_UserDialogAct.init(_:)(v13, v15);
  return Siri_Nlu_External_SystemOffered.init(_:)(v15, v14);
}

uint64_t Siri_Nlu_External_UserDialogAct.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v20 = a1;
  v26 = 0;
  v25 = 0;
  v9 = 0;
  v19 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed();
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v10 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v2);
  v15 = &v9 - v10;
  v24 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v21 = *(v24 - 8);
  v22 = v24 - 8;
  v12 = *(v21 + 64);
  v11 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v20, v3);
  v14 = &v9 - v11;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v4, v5);
  v7 = &v9 - v13;
  v23 = &v9 - v13;
  v26 = &v9 - v13;
  v25 = v6;
  Siri_Nlu_External_UserDialogAct.init()();
  (*(v21 + 32))(v7, v14, v24);
  (*(v17 + 16))(v15, v20, v19);
  Siri_Nlu_External_UserDialogAct.wantedToProceed.setter();
  (*(v21 + 16))(v16, v23, v24);
  (*(v17 + 8))(v20, v19);
  return (*(v21 + 8))(v23, v24);
}

{
  v16 = a2;
  v20 = a1;
  v26 = 0;
  v25 = 0;
  v9 = 0;
  v19 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v10 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v2);
  v15 = &v9 - v10;
  v24 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v21 = *(v24 - 8);
  v22 = v24 - 8;
  v12 = *(v21 + 64);
  v11 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v20, v3);
  v14 = &v9 - v11;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v4, v5);
  v7 = &v9 - v13;
  v23 = &v9 - v13;
  v26 = &v9 - v13;
  v25 = v6;
  Siri_Nlu_External_UserDialogAct.init()();
  (*(v21 + 32))(v7, v14, v24);
  (*(v17 + 16))(v15, v20, v19);
  Siri_Nlu_External_UserDialogAct.userStatedTask.setter();
  (*(v21 + 16))(v16, v23, v24);
  (*(v17 + 8))(v20, v19);
  return (*(v21 + 8))(v23, v24);
}

uint64_t Siri_Nlu_External_SystemGaveOptions.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v12 = a1;
  v19 = 0;
  v18 = 0;
  v16 = type metadata accessor for Siri_Nlu_External_SystemGaveOptions();
  v14 = *(v16 - 8);
  v15 = v16 - 8;
  v9 = *(v14 + 64);
  v8 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v12, v2);
  v11 = &v8 - v8;
  v10 = v8;
  v5 = MEMORY[0x28223BE20](v3, v4);
  v6 = &v8 - v10;
  v17 = &v8 - v10;
  v19 = &v8 - v10;
  v18 = v5;
  Siri_Nlu_External_SystemGaveOptions.init()();
  (*(v14 + 32))(v6, v11, v16);
  MEMORY[0x26D61F470](v12);
  (*(v14 + 16))(v13, v17, v16);
  return (*(v14 + 8))(v17, v16);
}

uint64_t Siri_Nlu_External_UserStatedTask.init(_:)@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v28 = a1;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  v14 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2, v3);
  v32 = &v12 - v14;
  v15 = 0;
  v31 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v29 = *(v31 - 8);
  v30 = v31 - 8;
  v16 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v15, v4);
  v17 = &v12 - v16;
  v18 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, &v12 - v16);
  v19 = &v12 - v18;
  v35 = &v12 - v18;
  v27 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v23 = *(v27 - 8);
  v24 = v27 - 8;
  v21 = *(v23 + 64);
  v20 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v28, v7);
  v26 = &v12 - v20;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v8, v9);
  v25 = &v12 - v22;
  v34 = &v12 - v22;
  v33 = v10;
  Siri_Nlu_External_UserStatedTask.init()();
  (*(v23 + 32))(v25, v26, v27);
  outlined init with copy of Siri_Nlu_External_UsoGraph?(v28, v32);
  if ((*(v29 + 48))(v32, 1, v31) == 1)
  {
    outlined destroy of Siri_Nlu_External_UsoGraph?(v32);
  }

  else
  {
    (*(v29 + 32))(v19, v32, v31);
    (*(v29 + 16))(v17, v19, v31);
    Siri_Nlu_External_UserStatedTask.task.setter();
    (*(v29 + 8))(v19, v31);
  }

  (*(v23 + 16))(v13, v25, v27);
  outlined destroy of Siri_Nlu_External_UsoGraph?(v28);
  return (*(v23 + 8))(v25, v27);
}

uint64_t static Siri_Nlu_External_UserStatedTask.from(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v19 = a1;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  v14 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2, v3);
  v15 = &v13 - v14;
  v16 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v13 - v14, v5);
  v24 = &v13 - v16;
  v30 = &v13 - v16;
  v17 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v19, v6);
  v22 = &v13 - v17;
  v29 = v7;
  v26 = 0;
  v21 = type metadata accessor for UsoTaskBuilder();
  v18 = _allocateUninitializedArray<A>(_:)();
  v20 = v8;

  *v20 = v19;
  _finalizeUninitializedArray<A>(_:)();
  v23 = v9;
  v10 = type metadata accessor for UsoBuilderOptions();
  (*(*(v10 - 8) + 56))(v22, 1);
  v25 = MEMORY[0x26D61F5F0](v23, v22);
  outlined destroy of UsoBuilderOptions?(v22);

  v28 = v25;
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  v27 = 0;
  v11 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  (*(*(v11 - 8) + 56))(v24, 0, 1);
  outlined init with copy of Siri_Nlu_External_UsoGraph?(v24, v15);
  Siri_Nlu_External_UserStatedTask.init(_:)(v15, v13);
  outlined destroy of Siri_Nlu_External_UsoGraph?(v24);
}

uint64_t Siri_Nlu_External_UserDialogAct.usoTask.getter()
{
  static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology7UsoTaskCGMd, &_sSay12SiriOntology7UsoTaskCGMR);
  lazy protocol witness table accessor for type [UsoTask] and conformance [A]();
  Collection.first.getter();

  return v1;
}

unint64_t lazy protocol witness table accessor for type [UsoTask] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [UsoTask] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UsoTask] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12SiriOntology7UsoTaskCGMd, &_sSay12SiriOntology7UsoTaskCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [UsoTask] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t Siri_Nlu_External_UserDialogAct.contactId.getter()
{
  v28 = 0;
  v30 = closure #1 in Siri_Nlu_External_UserDialogAct.contactId.getter;
  v32 = 0;
  v14 = 0;
  v24 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v22 = *(v24 - 8);
  v23 = v24 - 8;
  v15 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v1);
  v25 = &v7 - v15;
  v21 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v18 = *(v21 - 8);
  v19 = v21 - 8;
  v16 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21, v2);
  v20 = &v7 - v16;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMd, &_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMR);
  v17 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3, v4);
  v27 = &v7 - v17;
  v32 = v0;
  Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
  Siri_Nlu_External_UserStatedTask.task.getter();
  (*(v18 + 8))(v20, v21);
  v26 = Siri_Nlu_External_UsoGraph.identifiers.getter();
  (*(v22 + 8))(v25, v24);
  v31 = v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVGMd, &_sSay12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVGMR);
  lazy protocol witness table accessor for type [Siri_Nlu_External_UsoEntityIdentifier] and conformance [A]();
  Sequence.first(where:)();
  outlined destroy of [SFCardSection](&v31);
  v11 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  if ((*(v12 + 48))(v27, 1) == 1)
  {
    outlined destroy of Siri_Nlu_External_UsoEntityIdentifier?(v27);
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v7 = Siri_Nlu_External_UsoEntityIdentifier.value.getter();
    v8 = v5;
    (*(v12 + 8))(v27, v11);
    v9 = v7;
    v10 = v8;
  }

  return v9;
}

uint64_t closure #1 in Siri_Nlu_External_UserDialogAct.contactId.getter(uint64_t a1)
{
  v15 = a1;
  v26 = 0;
  v16 = type metadata accessor for Google_Protobuf_StringValue();
  v17 = *(v16 - 8);
  v18 = v16 - 8;
  v19 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16, v2);
  v20 = &v9 - v19;
  v26 = a1;
  v21 = Siri_Nlu_External_UsoEntityIdentifier.backingAppBundleID.getter();
  v24 = v3;
  v4 = AppUtil.usoContactsBundleId.unsafeMutableAddressor();
  v22 = *v4;
  v23 = *(v4 + 1);

  v25 = MEMORY[0x26D620740](v21, v24, v22, v23);

  if (v25)
  {
    Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
    v10 = Google_Protobuf_StringValue.value.getter();
    v12 = v5;
    (*(v17 + 8))(v20, v16);
    v6 = UsoIdentifierNamespace.rawValue.getter(0);
    v11 = v7;
    v13 = MEMORY[0x26D620740](v10, v12, v6);

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

unint64_t lazy protocol witness table accessor for type [Siri_Nlu_External_UsoEntityIdentifier] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [Siri_Nlu_External_UsoEntityIdentifier] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Siri_Nlu_External_UsoEntityIdentifier] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVGMd, &_sSay12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Siri_Nlu_External_UsoEntityIdentifier] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined destroy of Siri_Nlu_External_UsoEntityIdentifier?(uint64_t a1)
{
  v3 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t Siri_Nlu_External_UserDialogAct.appId.getter()
{
  v61 = 0;
  v59 = 0;
  v58 = 0;
  v56 = 0;
  v55 = 0;
  v53 = 0;
  v52 = 0;
  v46 = 0;
  v45 = 0;
  v39 = 0;
  v38 = 0;
  v72 = v0;
  if (Siri_Nlu_External_UserDialogAct.usoTask.getter())
  {
    UsoTask.eraseToAny.getter();
  }

  else
  {
    memset(v69, 0, sizeof(v69));
    v70 = 0;
  }

  if (!v70)
  {
    outlined destroy of FlowActivity?(v69);
    return 0;
  }

  outlined init with take of Any(v69, v71);
  outlined init with copy of Any(v71, v68);
  type metadata accessor for UsoTask_noVerb_common_Payment();
  if ((swift_dynamicCast() & 1) == 0)
  {
    type metadata accessor for UsoTask_pay_common_Payment();
    if (swift_dynamicCast())
    {
      v45 = v66;

      dispatch thunk of Uso_VerbTemplate_Target.target.getter();

      if (v43[1])
      {
        v23 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      v43[0] = v24;

      if (v24)
      {
        v44 = v43[0];
      }

      else
      {

        dispatch thunk of Uso_VerbTemplate_Target.target.getter();

        if (v42 && (v22 = dispatch thunk of UsoEntity_common_Payment.payer.getter(), , v22))
        {
          v20 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

          v21 = v20;
        }

        else
        {
          v21 = 0;
        }

        v41 = v21;

        if (v21)
        {
          v44 = v41;
        }

        else
        {

          dispatch thunk of Uso_VerbTemplate_Target.target.getter();

          if (v40 && (v19 = dispatch thunk of UsoEntity_common_Payment.payee.getter(), , v19))
          {
            v44 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();
          }

          else
          {
            v44 = 0;
          }
        }

        if (v43[0])
        {
          outlined destroy of ContiguousArray<A1>(v43);
        }
      }

      if (v44)
      {
        v39 = v44;
        v18 = UsoEntity_common_App.appIdentifier.getter();

        __swift_destroy_boxed_opaque_existential_0(v68);
        __swift_destroy_boxed_opaque_existential_0(v71);
        return v18;
      }

      __swift_destroy_boxed_opaque_existential_0(v68);
    }

    else
    {
      type metadata accessor for UsoTask_requestMoney_common_Payment();
      if (swift_dynamicCast())
      {
        v52 = v65;

        dispatch thunk of Uso_VerbTemplate_Target.target.getter();

        if (v50[1])
        {
          v16 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        v50[0] = v17;

        if (v17)
        {
          v51 = v50[0];
        }

        else
        {

          dispatch thunk of Uso_VerbTemplate_Target.target.getter();

          if (v49 && (v15 = dispatch thunk of UsoEntity_common_Payment.payee.getter(), , v15))
          {
            v13 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

            v14 = v13;
          }

          else
          {
            v14 = 0;
          }

          v48 = v14;

          if (v14)
          {
            v51 = v48;
          }

          else
          {

            dispatch thunk of Uso_VerbTemplate_Target.target.getter();

            if (v47 && (v12 = dispatch thunk of UsoEntity_common_Payment.payer.getter(), , v12))
            {
              v51 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();
            }

            else
            {
              v51 = 0;
            }
          }

          if (v50[0])
          {
            outlined destroy of ContiguousArray<A1>(v50);
          }
        }

        if (v51)
        {
          v46 = v51;
          v11 = UsoEntity_common_App.appIdentifier.getter();

          __swift_destroy_boxed_opaque_existential_0(v68);
          __swift_destroy_boxed_opaque_existential_0(v71);
          return v11;
        }

        __swift_destroy_boxed_opaque_existential_0(v68);
      }

      else
      {
        type metadata accessor for UsoTask_request_common_PaymentAccount();
        if (swift_dynamicCast())
        {
          v55 = v64;

          dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();

          if (v54)
          {
            v9 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

            v10 = v9;
          }

          else
          {
            v10 = 0;
          }

          if (v10)
          {
            v53 = v10;
            v8 = UsoEntity_common_App.appIdentifier.getter();

            __swift_destroy_boxed_opaque_existential_0(v68);
            __swift_destroy_boxed_opaque_existential_0(v71);
            return v8;
          }
        }

        else
        {
          type metadata accessor for UsoTask_summarise_common_PaymentAccount();
          if (swift_dynamicCast())
          {
            v58 = v63;

            dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();

            if (v57)
            {
              v6 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

              v7 = v6;
            }

            else
            {
              v7 = 0;
            }

            if (v7)
            {
              v56 = v7;
              v5 = UsoEntity_common_App.appIdentifier.getter();

              __swift_destroy_boxed_opaque_existential_0(v68);
              __swift_destroy_boxed_opaque_existential_0(v71);
              return v5;
            }
          }

          else
          {
            type metadata accessor for UsoTask_noVerb_common_PaymentAccount();
            if ((swift_dynamicCast() & 1) == 0)
            {
              __swift_destroy_boxed_opaque_existential_0(v68);
              goto LABEL_101;
            }

            v61 = v62;

            dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();

            if (v60)
            {
              v3 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

              v4 = v3;
            }

            else
            {
              v4 = 0;
            }

            if (v4)
            {
              v59 = v4;
              v2 = UsoEntity_common_App.appIdentifier.getter();

              __swift_destroy_boxed_opaque_existential_0(v68);
              __swift_destroy_boxed_opaque_existential_0(v71);
              return v2;
            }
          }
        }

        __swift_destroy_boxed_opaque_existential_0(v68);
      }
    }

LABEL_101:
    __swift_destroy_boxed_opaque_existential_0(v71);
    return 0;
  }

  v38 = v67;

  dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();

  if (v36[1])
  {
    v31 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  v36[0] = v32;

  if (v32)
  {
    v37 = v36[0];
  }

  else
  {

    dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();

    if (v35 && (v30 = dispatch thunk of UsoEntity_common_Payment.payer.getter(), , v30))
    {
      v28 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    v34 = v29;

    if (v29)
    {
      v37 = v34;
    }

    else
    {

      dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();

      if (v33 && (v27 = dispatch thunk of UsoEntity_common_Payment.payee.getter(), , v27))
      {
        v37 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();
      }

      else
      {
        v37 = 0;
      }
    }

    if (v36[0])
    {
      outlined destroy of ContiguousArray<A1>(v36);
    }
  }

  if (!v37)
  {

    __swift_destroy_boxed_opaque_existential_0(v68);
    goto LABEL_101;
  }

  v25 = UsoEntity_common_App.appIdentifier.getter();

  __swift_destroy_boxed_opaque_existential_0(v68);
  __swift_destroy_boxed_opaque_existential_0(v71);
  return v25;
}

uint64_t Siri_Nlu_External_UserWantedToProceed.init(_:)@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v28 = a1;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  v14 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2, v3);
  v32 = &v12 - v14;
  v15 = 0;
  v31 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v29 = *(v31 - 8);
  v30 = v31 - 8;
  v16 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v15, v4);
  v17 = &v12 - v16;
  v18 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, &v12 - v16);
  v19 = &v12 - v18;
  v35 = &v12 - v18;
  v27 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed();
  v23 = *(v27 - 8);
  v24 = v27 - 8;
  v21 = *(v23 + 64);
  v20 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v28, v7);
  v26 = &v12 - v20;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v8, v9);
  v25 = &v12 - v22;
  v34 = &v12 - v22;
  v33 = v10;
  Siri_Nlu_External_UserWantedToProceed.init()();
  (*(v23 + 32))(v25, v26, v27);
  outlined init with copy of Siri_Nlu_External_UsoGraph?(v28, v32);
  if ((*(v29 + 48))(v32, 1, v31) == 1)
  {
    outlined destroy of Siri_Nlu_External_UsoGraph?(v32);
  }

  else
  {
    (*(v29 + 32))(v19, v32, v31);
    (*(v29 + 16))(v17, v19, v31);
    Siri_Nlu_External_UserWantedToProceed.reference.setter();
    (*(v29 + 8))(v19, v31);
  }

  (*(v23 + 16))(v13, v25, v27);
  outlined destroy of Siri_Nlu_External_UsoGraph?(v28);
  return (*(v23 + 8))(v25, v27);
}

uint64_t static Siri_Nlu_External_UserWantedToProceed.from(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v20 = a1;
  v30 = 0;
  v29 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  v15 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2, v3);
  v23 = &v13 - v15;
  v16 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v20, v4);
  v17 = &v13 - v16;
  v18 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v5, &v13 - v16);
  v25 = &v13 - v18;
  v30 = &v13 - v18;
  v29 = v7;
  v27 = 0;
  v22 = type metadata accessor for UsoTaskBuilder();
  v19 = _allocateUninitializedArray<A>(_:)();
  v21 = v8;

  *v21 = v20;
  _finalizeUninitializedArray<A>(_:)();
  v24 = v9;
  v10 = type metadata accessor for UsoBuilderOptions();
  (*(*(v10 - 8) + 56))(v23, 1);
  v26 = MEMORY[0x26D61F5F0](v24, v23);
  outlined destroy of UsoBuilderOptions?(v23);

  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  v28 = 0;

  v11 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  (*(*(v11 - 8) + 56))(v25, 0, 1);
  outlined init with copy of Siri_Nlu_External_UsoGraph?(v25, v17);
  Siri_Nlu_External_UserWantedToProceed.init(_:)(v17, v14);
  return outlined destroy of Siri_Nlu_External_UsoGraph?(v25);
}

const char *Features.feature.getter(char a1)
{
  if (a1)
  {
    return "NLXFuture";
  }

  else
  {
    return "NLX";
  }
}

unint64_t lazy protocol witness table accessor for type Features and conformance Features()
{
  v2 = lazy protocol witness table cache variable for type Features and conformance Features;
  if (!lazy protocol witness table cache variable for type Features and conformance Features)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Features and conformance Features);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Features and conformance Features;
  if (!lazy protocol witness table cache variable for type Features and conformance Features)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Features and conformance Features);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Features and conformance Features;
  if (!lazy protocol witness table cache variable for type Features and conformance Features)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Features and conformance Features);
    return WitnessTable;
  }

  return v2;
}

uint64_t SiriPaymentsFeatureManager.isNLXEnabled.getter()
{
  v2[3] = &type metadata for Features;
  v2[4] = lazy protocol witness table accessor for type Features and conformance Features();
  LOBYTE(v2[0]) = 0;
  v1 = SiriPaymentsFeatureManager.logAndReturn(flag:)(v2);
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v1 & 1;
}

uint64_t SiriPaymentsFeatureManager.logAndReturn(flag:)(uint64_t a1)
{
  v53 = a1;
  v58 = partial apply for implicit closure #1 in SiriPaymentsFeatureManager.logAndReturn(flag:);
  v60 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v62 = partial apply for implicit closure #2 in SiriPaymentsFeatureManager.logAndReturn(flag:);
  v64 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v69 = partial apply for implicit closure #3 in SiriPaymentsFeatureManager.logAndReturn(flag:);
  v73 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v75 = partial apply for closure #1 in OSLogArguments.append(_:);
  v77 = partial apply for closure #1 in OSLogArguments.append(_:);
  v79 = partial apply for closure #1 in OSLogArguments.append(_:);
  v81 = partial apply for closure #1 in OSLogArguments.append(_:);
  v83 = partial apply for closure #1 in OSLogArguments.append(_:);
  v85 = partial apply for closure #1 in OSLogArguments.append(_:);
  v87 = partial apply for closure #1 in OSLogArguments.append(_:);
  v89 = partial apply for closure #1 in OSLogArguments.append(_:);
  v92 = partial apply for closure #1 in OSLogArguments.append(_:);
  v106 = 0;
  v105 = 0;
  v46 = 0;
  v51 = type metadata accessor for Logger();
  v49 = *(v51 - 8);
  v50 = v51 - 8;
  v47 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = v37 - v47;
  v48 = v37 - v47;
  v106 = MEMORY[0x28223BE20](v53, v1);
  v57 = isFeatureEnabled(_:)();
  v56 = 1;
  v105 = v57 & 1;
  v3 = Logger.payments.unsafeMutableAddressor();
  (*(v49 + 16))(v2, v3, v51);
  v52 = v104;
  outlined init with copy of GlobalsProviding(v53, v104);
  v54 = 56;
  v71 = 7;
  v59 = swift_allocObject();
  outlined init with take of CommonLabelsProviding(v52, (v59 + 16));
  v55 = v103;
  outlined init with copy of GlobalsProviding(v53, v103);
  v63 = swift_allocObject();
  outlined init with take of CommonLabelsProviding(v55, (v63 + 16));
  v67 = 17;
  v72 = swift_allocObject();
  *(v72 + 16) = v57 & v56;
  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.default.getter();
  v76 = swift_allocObject();
  v66 = 32;
  *(v76 + 16) = 32;
  v78 = swift_allocObject();
  v68 = 8;
  *(v78 + 16) = 8;
  v70 = 32;
  v4 = swift_allocObject();
  v5 = v59;
  v61 = v4;
  *(v4 + 16) = v58;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v61;
  v80 = v6;
  *(v6 + 16) = v60;
  *(v6 + 24) = v7;
  v82 = swift_allocObject();
  *(v82 + 16) = v66;
  v84 = swift_allocObject();
  *(v84 + 16) = v68;
  v8 = swift_allocObject();
  v9 = v63;
  v65 = v8;
  *(v8 + 16) = v62;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v65;
  v86 = v10;
  *(v10 + 16) = v64;
  *(v10 + 24) = v11;
  v88 = swift_allocObject();
  *(v88 + 16) = v66;
  v90 = swift_allocObject();
  *(v90 + 16) = v68;
  v12 = swift_allocObject();
  v13 = v72;
  v74 = v12;
  *(v12 + 16) = v69;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v74;
  v93 = v14;
  *(v14 + 16) = v73;
  *(v14 + 24) = v15;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v91 = _allocateUninitializedArray<A>(_:)();
  v94 = v16;

  v17 = v76;
  v18 = v94;
  *v94 = v75;
  v18[1] = v17;

  v19 = v78;
  v20 = v94;
  v94[2] = v77;
  v20[3] = v19;

  v21 = v80;
  v22 = v94;
  v94[4] = v79;
  v22[5] = v21;

  v23 = v82;
  v24 = v94;
  v94[6] = v81;
  v24[7] = v23;

  v25 = v84;
  v26 = v94;
  v94[8] = v83;
  v26[9] = v25;

  v27 = v86;
  v28 = v94;
  v94[10] = v85;
  v28[11] = v27;

  v29 = v88;
  v30 = v94;
  v94[12] = v87;
  v30[13] = v29;

  v31 = v90;
  v32 = v94;
  v94[14] = v89;
  v32[15] = v31;

  v33 = v93;
  v34 = v94;
  v94[16] = v92;
  v34[17] = v33;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v96, v97))
  {
    v35 = v46;
    v39 = static UnsafeMutablePointer.allocate(capacity:)();
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v40 = createStorage<A>(capacity:type:)(0, v38, v38);
    v41 = createStorage<A>(capacity:type:)(3, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v42 = &v102;
    v102 = v39;
    v43 = &v101;
    v101 = v40;
    v44 = &v100;
    v100 = v41;
    serialize(_:at:)(2, &v102);
    serialize(_:at:)(3, v42);
    v98 = v75;
    v99 = v76;
    closure #1 in osLogInternal(_:log:type:)(&v98, v42, v43, v44);
    v45 = v35;
    if (v35)
    {

      __break(1u);
    }

    else
    {
      v98 = v77;
      v99 = v78;
      closure #1 in osLogInternal(_:log:type:)(&v98, &v102, &v101, &v100);
      v37[6] = 0;
      v98 = v79;
      v99 = v80;
      closure #1 in osLogInternal(_:log:type:)(&v98, &v102, &v101, &v100);
      v37[5] = 0;
      v98 = v81;
      v99 = v82;
      closure #1 in osLogInternal(_:log:type:)(&v98, &v102, &v101, &v100);
      v37[4] = 0;
      v98 = v83;
      v99 = v84;
      closure #1 in osLogInternal(_:log:type:)(&v98, &v102, &v101, &v100);
      v37[3] = 0;
      v98 = v85;
      v99 = v86;
      closure #1 in osLogInternal(_:log:type:)(&v98, &v102, &v101, &v100);
      v37[2] = 0;
      v98 = v87;
      v99 = v88;
      closure #1 in osLogInternal(_:log:type:)(&v98, &v102, &v101, &v100);
      v37[1] = 0;
      v98 = v89;
      v99 = v90;
      closure #1 in osLogInternal(_:log:type:)(&v98, &v102, &v101, &v100);
      v37[0] = 0;
      v98 = v92;
      v99 = v93;
      closure #1 in osLogInternal(_:log:type:)(&v98, &v102, &v101, &v100);
      _os_log_impl(&dword_2686B1000, v96, v97, "FeatureFlag: %s/%s=%s", v39, 0x20u);
      destroyStorage<A>(_:count:)(v40, 0, v38);
      destroyStorage<A>(_:count:)(v41, 3, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v39, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v96);
  (*(v49 + 8))(v48, v51);
  return v57 & 1;
}

uint64_t SiriPaymentsFeatureManager.isNLXFutureEnabled.getter()
{
  v2[3] = &type metadata for Features;
  v2[4] = lazy protocol witness table accessor for type Features and conformance Features();
  LOBYTE(v2[0]) = 1;
  v1 = SiriPaymentsFeatureManager.logAndReturn(flag:)(v2);
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v1 & 1;
}

uint64_t implicit closure #1 in SiriPaymentsFeatureManager.logAndReturn(flag:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of FeatureFlagsKey.domain.getter();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #2 in SiriPaymentsFeatureManager.logAndReturn(flag:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of FeatureFlagsKey.feature.getter();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #3 in SiriPaymentsFeatureManager.logAndReturn(flag:)(char a1)
{
  if (a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("on", 2uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("off", 3uLL, 1)._countAndFlagsBits;
  }
}

uint64_t getEnumTagSinglePayload for Features(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 1) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 254;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 2;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Features(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 1) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t AmountUnsupportedStrategy.makeUnsupportedValueOutput(resolveRecord:)(uint64_t a1, uint64_t a2)
{
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[3] = a2;
  v3[4] = v2;
  return MEMORY[0x2822009F8](AmountUnsupportedStrategy.makeUnsupportedValueOutput(resolveRecord:), 0);
}

uint64_t AmountUnsupportedStrategy.makeUnsupportedValueOutput(resolveRecord:)()
{
  *(v0 + 16) = v0;
  String.NOT_YET_IMPLEMENTED.unsafeMutableAddressor();

  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t AmountUnsupportedStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)(uint64_t a1)
{
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  return MEMORY[0x2822009F8](AmountUnsupportedStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:), 0);
}

uint64_t AmountUnsupportedStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)()
{
  *(v0 + 16) = v0;
  String.NOT_YET_IMPLEMENTED.unsafeMutableAddressor();

  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeUnsupportedValueOutput(resolveRecord:) in conformance AmountUnsupportedStrategy<A, B>(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return AmountUnsupportedStrategy.makeUnsupportedValueOutput(resolveRecord:)(a1, a2);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeUpdatedIntentForUnsupportedValue(resolveRecord:) in conformance AmountUnsupportedStrategy<A, B>(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = protocol witness for TCCResponseProviding.promptToEnableApp(appDisplayInfo:deviceState:catOverrides:) in conformance TCCResponses;

  return AmountUnsupportedStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)(a1);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:) in conformance AmountUnsupportedStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v9 + 24) = v5;
  v6 = type metadata accessor for AmountUnsupportedStrategy(0, a3[10], a3[11], a3[12]);
  *v5 = *(v9 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9E00](a1, a2, v6, a4);
}

uint64_t type metadata completion function for AmountUnsupportedStrategy(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t RequestPaymentCATsModern.intentConfirmationPrompt(paymentsConcept:)(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  return MEMORY[0x2822009F8](RequestPaymentCATsModern.intentConfirmationPrompt(paymentsConcept:), 0);
}

{
  v6 = *v2;
  *(v6 + 16) = *v2;
  *(v6 + 80) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](RequestPaymentCATsModern.intentConfirmationPrompt(paymentsConcept:), 0);
  }

  else
  {

    v3 = *(*(v6 + 16) + 8);

    return v3(a1);
  }
}

uint64_t RequestPaymentCATsModern.intentConfirmationPrompt(paymentsConcept:)()
{
  v10 = v0[5];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#IntentConfirmationPrompt", 0x27uLL, 1);
  v0[7] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v9 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentsConcept", 0xFuLL, 1);

  if (v10)
  {
    v7 = v8[5];
    v9[2]._object = type metadata accessor for PaymentsDialogConcept(0);
    v9[1]._countAndFlagsBits = v7;
  }

  else
  {
    v9[1]._countAndFlagsBits = 0;
    v9[1]._object = 0;
    v9[2]._countAndFlagsBits = 0;
    v9[2]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v5 = KeyValuePairs.init(dictionaryLiteral:)();
  v8[8] = v5;
  v6 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v3 = swift_task_alloc();
  v8[9] = v3;
  *v3 = v8[2];
  v3[1] = RequestPaymentCATsModern.intentConfirmationPrompt(paymentsConcept:);

  return v6(v1._countAndFlagsBits, v1._object, v5);
}

{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t RequestPaymentCATsModern.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v18 = a2;
  v15 = a3;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v19 = type metadata accessor for CATOption();
  v16 = *(v19 - 8);
  v17 = v19 - 8;
  v11 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19, v4);
  v13 = &v10 - v11;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v20, v5);
  v14 = &v10 - v12;
  v24 = v6;
  v23 = v7;
  v22 = v8;
  v25 = v3;
  outlined init with copy of URL?(v6, &v10 - v12);
  (*(v16 + 16))(v13, v18, v19);
  MEMORY[0x277D82BE0](v15);
  v21 = CATWrapperSimple.init(templateDir:options:globals:)();

  v25 = v21;
  MEMORY[0x277D82BD8](v15);
  (*(v16 + 8))(v18, v19);
  outlined destroy of URL?(v20);

  return v21;
}

uint64_t RequestPaymentCATsModern.init(useResponseMode:options:)(int a1, uint64_t a2)
{
  v8 = a1;
  v9 = a2;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v12 = type metadata accessor for CATOption();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12, v9);
  v7 = &v5 - v6;
  v15 = v8 & 1;
  v14 = v3;
  v16 = v2;
  (*(v10 + 16))();
  v13 = CATWrapperSimple.init(useResponseMode:options:)();

  v16 = v13;
  (*(v10 + 8))(v9, v12);

  return v13;
}

uint64_t SendPaymentCATsModern.intentConfirmationPrompt(paymentsConcept:)(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  return MEMORY[0x2822009F8](SendPaymentCATsModern.intentConfirmationPrompt(paymentsConcept:), 0);
}

uint64_t SendPaymentCATsModern.intentConfirmationPrompt(paymentsConcept:)()
{
  v10 = v0[5];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#IntentConfirmationPrompt", 0x24uLL, 1);
  v0[7] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v9 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentsConcept", 0xFuLL, 1);

  if (v10)
  {
    v7 = v8[5];
    v9[2]._object = type metadata accessor for PaymentsDialogConcept(0);
    v9[1]._countAndFlagsBits = v7;
  }

  else
  {
    v9[1]._countAndFlagsBits = 0;
    v9[1]._object = 0;
    v9[2]._countAndFlagsBits = 0;
    v9[2]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v5 = KeyValuePairs.init(dictionaryLiteral:)();
  v8[8] = v5;
  v6 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v3 = swift_task_alloc();
  v8[9] = v3;
  *v3 = v8[2];
  v3[1] = RequestPaymentCATsModern.intentConfirmationPrompt(paymentsConcept:);

  return v6(v1._countAndFlagsBits, v1._object, v5);
}

uint64_t DisambiguationCATsModern.intentDisambiguationPrompt()()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  return MEMORY[0x2822009F8](DisambiguationCATsModern.intentDisambiguationPrompt(), 0);
}

{
  v4 = MEMORY[0x277D55C70];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#DisambiguateApp", 0x1CuLL, 1);
  v0[5] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v6 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[6] = v6;
  v7 = (v4 + *v4);
  v2 = swift_task_alloc();
  *(v5 + 56) = v2;
  *v2 = *(v5 + 16);
  v2[1] = DisambiguationCATsModern.intentDisambiguationPrompt();

  return v7(v1._countAndFlagsBits, v1._object, v6);
}

{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t DisambiguationCATsModern.intentDisambiguationPrompt()(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 16) = *v2;
  *(v6 + 64) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](DisambiguationCATsModern.intentDisambiguationPrompt(), 0);
  }

  else
  {

    v3 = *(*(v6 + 16) + 8);

    return v3(a1);
  }
}

uint64_t type metadata accessor for RequestPaymentCATsModern(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for RequestPaymentCATsModern;
  if (!type metadata singleton initialization cache for RequestPaymentCATsModern)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t type metadata completion function for RequestPaymentCATsModern(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t type metadata accessor for SendPaymentCATsModern(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for SendPaymentCATsModern;
  if (!type metadata singleton initialization cache for SendPaymentCATsModern)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t type metadata completion function for SendPaymentCATsModern(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t type metadata accessor for DisambiguationCATsModern(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for DisambiguationCATsModern;
  if (!type metadata singleton initialization cache for DisambiguationCATsModern)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t type metadata completion function for DisambiguationCATsModern(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t SearchForCardInfoCATs.apply(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#Apply", 0x17uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SearchForCardInfoCATs.apply()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  return MEMORY[0x2822009F8](SearchForCardInfoCATs.apply(), 0);
}

uint64_t SearchForCardInfoCATs.apply()()
{
  v5 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#Apply", 0x17uLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v7;
  v8 = (v5 + *v5);
  v2 = swift_task_alloc();
  v6[8] = v2;
  *v2 = v6[2];
  v2[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v3 = v6[4];

  return v8(v3, v1._countAndFlagsBits, v1._object, v7);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#Apply", 0x17uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SearchForCardInfoCATs.goToAppleWebsite(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#GoToAppleWebsite", 0x22uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SearchForCardInfoCATs.goToAppleWebsite()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  return MEMORY[0x2822009F8](SearchForCardInfoCATs.goToAppleWebsite(), 0);
}

uint64_t SearchForCardInfoCATs.goToAppleWebsite()()
{
  v5 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#GoToAppleWebsite", 0x22uLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v7;
  v8 = (v5 + *v5);
  v2 = swift_task_alloc();
  v6[8] = v2;
  *v2 = v6[2];
  v2[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v3 = v6[4];

  return v8(v3, v1._countAndFlagsBits, v1._object, v7);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#GoToAppleWebsite", 0x22uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SearchForCardInfoCATs.learn(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#Learn", 0x17uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SearchForCardInfoCATs.learn()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  return MEMORY[0x2822009F8](SearchForCardInfoCATs.learn(), 0);
}

uint64_t SearchForCardInfoCATs.learn()()
{
  v5 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#Learn", 0x17uLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v7;
  v8 = (v5 + *v5);
  v2 = swift_task_alloc();
  v6[8] = v2;
  *v2 = v6[2];
  v2[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v3 = v6[4];

  return v8(v3, v1._countAndFlagsBits, v1._object, v7);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#Learn", 0x17uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SearchForCardInfoCATs.openAppleWebsite(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#OpenAppleWebsite", 0x22uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SearchForCardInfoCATs.openAppleWebsite()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  return MEMORY[0x2822009F8](SearchForCardInfoCATs.openAppleWebsite(), 0);
}

uint64_t SearchForCardInfoCATs.openAppleWebsite()()
{
  v5 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#OpenAppleWebsite", 0x22uLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v7;
  v8 = (v5 + *v5);
  v2 = swift_task_alloc();
  v6[8] = v2;
  *v2 = v6[2];
  v2[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v3 = v6[4];

  return v8(v3, v1._countAndFlagsBits, v1._object, v7);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#OpenAppleWebsite", 0x22uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SearchForCardInfoCATs.openWallet(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#OpenWallet", 0x1CuLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SearchForCardInfoCATs.openWallet()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  return MEMORY[0x2822009F8](SearchForCardInfoCATs.openWallet(), 0);
}

uint64_t SearchForCardInfoCATs.openWallet()()
{
  v5 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#OpenWallet", 0x1CuLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v7;
  v8 = (v5 + *v5);
  v2 = swift_task_alloc();
  v6[8] = v2;
  *v2 = v6[2];
  v2[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v3 = v6[4];

  return v8(v3, v1._countAndFlagsBits, v1._object, v7);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#OpenWallet", 0x1CuLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SearchForCardInfoCATs.appleCardBalance(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#AppleCardBalance", 0x22uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SearchForCardInfoCATs.appleCardBalance()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  return MEMORY[0x2822009F8](SearchForCardInfoCATs.appleCardBalance(), 0);
}

uint64_t SearchForCardInfoCATs.appleCardBalance()()
{
  v5 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#AppleCardBalance", 0x22uLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v7;
  v8 = (v5 + *v5);
  v2 = swift_task_alloc();
  v6[8] = v2;
  *v2 = v6[2];
  v2[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v3 = v6[4];

  return v8(v3, v1._countAndFlagsBits, v1._object, v7);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#AppleCardBalance", 0x22uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SearchForCardInfoCATs.unlock(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#Unlock", 0x18uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SearchForCardInfoCATs.unlock()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  return MEMORY[0x2822009F8](SearchForCardInfoCATs.unlock(), 0);
}

uint64_t SearchForCardInfoCATs.unlock()()
{
  v5 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#Unlock", 0x18uLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v7;
  v8 = (v5 + *v5);
  v2 = swift_task_alloc();
  v6[8] = v2;
  *v2 = v6[2];
  v2[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v3 = v6[4];

  return v8(v3, v1._countAndFlagsBits, v1._object, v7);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#Unlock", 0x18uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SearchForCardInfoCATs.unsupportedDevice(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#UnsupportedDevice", 0x23uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SearchForCardInfoCATs.unsupportedDevice()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  return MEMORY[0x2822009F8](SearchForCardInfoCATs.unsupportedDevice(), 0);
}

uint64_t SearchForCardInfoCATs.unsupportedDevice()()
{
  v5 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#UnsupportedDevice", 0x23uLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v7;
  v8 = (v5 + *v5);
  v2 = swift_task_alloc();
  v6[8] = v2;
  *v2 = v6[2];
  v2[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v3 = v6[4];

  return v8(v3, v1._countAndFlagsBits, v1._object, v7);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#UnsupportedDevice", 0x23uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SearchForCardInfoCATs.unsupportedLocale(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#UnsupportedLocale", 0x23uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SearchForCardInfoCATs.unsupportedLocale()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  return MEMORY[0x2822009F8](SearchForCardInfoCATs.unsupportedLocale(), 0);
}

uint64_t SearchForCardInfoCATs.unsupportedLocale()()
{
  v5 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#UnsupportedLocale", 0x23uLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v7;
  v8 = (v5 + *v5);
  v2 = swift_task_alloc();
  v6[8] = v2;
  *v2 = v6[2];
  v2[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v3 = v6[4];

  return v8(v3, v1._countAndFlagsBits, v1._object, v7);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForCardInfo#UnsupportedLocale", 0x23uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t type metadata accessor for SearchForCardInfoCATs(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for SearchForCardInfoCATs;
  if (!type metadata singleton initialization cache for SearchForCardInfoCATs)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t type metadata completion function for SearchForCardInfoCATs(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t SearchForCardInfoCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v18 = a2;
  v15 = a3;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v19 = type metadata accessor for CATOption();
  v16 = *(v19 - 8);
  v17 = v19 - 8;
  v11 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19, v4);
  v13 = &v10 - v11;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v20, v5);
  v14 = &v10 - v12;
  v24 = v6;
  v23 = v7;
  v22 = v8;
  v25 = v3;
  outlined init with copy of URL?(v6, &v10 - v12);
  (*(v16 + 16))(v13, v18, v19);
  MEMORY[0x277D82BE0](v15);
  v21 = CATWrapper.init(templateDir:options:globals:)();

  v25 = v21;
  MEMORY[0x277D82BD8](v15);
  (*(v16 + 8))(v18, v19);
  outlined destroy of URL?(v20);

  return v21;
}

NSJSONWritingOptions default argument 1 of PaymentsContinueInAppStrategy.init(globals:commonLabelsProvider:errorTemplateProvider:)@<X0>(Swift::UInt a1@<X0>, uint64_t a2@<X8>)
{
  result = NSJSONWritingOptions.init(rawValue:)(a1);
  *(a2 + 24) = &type metadata for CommonLabelsProvider;
  *(a2 + 32) = &protocol witness table for CommonLabelsProvider;
  return result;
}

uint64_t default argument 2 of PaymentsContinueInAppStrategy.init(globals:commonLabelsProvider:errorTemplateProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v15[5] = a1;
  v15[4] = a2;
  v15[0] = a1;
  v15[1] = a2;
  v15[2] = a3;
  v15[3] = a4;
  v11 = type metadata accessor for PaymentsErrorTemplateProvider(0, v15);
  default argument 0 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(a1, a2, v14);
  v10 = default argument 1 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(a1, a2);
  v5 = default argument 2 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(a1, a2);
  v13 = PaymentsErrorTemplateProvider.__allocating_init(globals:catFamily:searchForAccountsCATs:)(v14, v10, v5);
  a5[3] = v11;
  WitnessTable = swift_getWitnessTable();
  result = v13;
  a5[4] = WitnessTable;
  *a5 = v13;
  return result;
}

uint64_t default argument 1 of PaymentsRCHFlowStrategy.init(globals:contactResolver:)@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for SiriKitContactResolver();
  a1[4] = &protocol witness table for SiriKitContactResolver;
  __swift_allocate_boxed_opaque_existential_1(a1);
  return SiriKitContactResolver.init()();
}

uint64_t default argument 0 of PaymentsAppResolutionFlowStrategy.init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[5] = a1;
  type metadata accessor for PaymentsAppResolver(0, a1, a2, a4);
  default argument 0 of PaymentsAppResolver.init(appLister:)(a1, a2, v7);
  return PaymentsAppResolver.__allocating_init(appLister:)(v7);
}

uint64_t default argument 0 of PaymentsAppResolver.init(appLister:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  PaymentsAppLister.init()();
  result = type metadata accessor for PaymentsAppLister(0, a1, a2, v3);
  *(a3 + 24) = result;
  *(a3 + 32) = &protocol witness table for PaymentsAppLister<A>;
  return result;
}

NSJSONWritingOptions default argument 1 of PaymentsAppResolutionFlowStrategy.init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)@<X0>(Swift::UInt a1@<X0>, uint64_t a2@<X8>)
{
  result = NSJSONWritingOptions.init(rawValue:)(a1);
  *(a2 + 24) = &type metadata for CommonLabelsProvider;
  *(a2 + 32) = &protocol witness table for CommonLabelsProvider;
  return result;
}

uint64_t default argument 2 of PaymentsAppResolutionFlowStrategy.init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for SiriKitContactResolver();
  a1[4] = &protocol witness table for SiriKitContactResolver;
  __swift_allocate_boxed_opaque_existential_1(a1);
  return SiriKitContactResolver.init()();
}

uint64_t default argument 4 of PaymentsAppResolutionFlowStrategy.init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)(uint64_t a1)
{
  v4[3] = a1;
  v4[2] = 0;
  v4[0] = (*(*(type metadata accessor for CATOption() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](0, v1);
  v4[1] = v4 - v4[0];
  type metadata accessor for PaymentsBaseCATs(v2);
  default argument 0 of CATWrapper.init(options:globals:)();
  return CATWrapper.__allocating_init(options:globals:)();
}

uint64_t FlowFactory.init(deviceState:contactResolver:)(void *a1, void *a2)
{
  v9 = 0;
  v11 = a1;
  v10 = a2;
  outlined init with copy of GlobalsProviding(a1, v8);
  outlined init with take of CommonLabelsProviding(v8, (v2 + 16));
  outlined init with copy of GlobalsProviding(a2, v7);
  outlined init with take of CommonLabelsProviding(v7, (v2 + 56));
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v6;
}

uint64_t FlowFactory.findFlow(for:)(uint64_t a1)
{
  v2[110] = v1;
  v2[109] = a1;
  v2[68] = v2;
  v2[69] = 0;
  v2[70] = 0;
  v2[71] = 0;
  v2[88] = 0;
  v2[93] = 0;
  v2[98] = 0;
  v2[103] = 0;
  v2[108] = 0;
  v3 = type metadata accessor for Siri_Nlu_External_UserParse();
  v2[111] = v3;
  v2[112] = *(v3 - 8);
  v2[113] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v2[114] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[115] = v4;
  v2[116] = *(v4 - 8);
  v2[117] = swift_task_alloc();
  v2[118] = swift_task_alloc();
  v2[119] = swift_task_alloc();
  v2[120] = swift_task_alloc();
  v2[121] = swift_task_alloc();
  v2[122] = swift_task_alloc();
  v2[123] = swift_task_alloc();
  v2[124] = swift_task_alloc();
  v2[125] = swift_task_alloc();
  v5 = type metadata accessor for USOParse();
  v2[126] = v5;
  v8 = *(v5 - 8);
  v2[127] = v8;
  v2[128] = *(v8 + 64);
  v2[129] = swift_task_alloc();
  v2[130] = swift_task_alloc();
  v6 = type metadata accessor for Parse();
  v2[131] = v6;
  v9 = *(v6 - 8);
  v2[132] = v9;
  v2[133] = *(v9 + 64);
  v2[134] = swift_task_alloc();
  v2[135] = swift_task_alloc();
  v2[69] = a1;
  v2[70] = v1;

  return MEMORY[0x2822009F8](FlowFactory.findFlow(for:), 0);
}

uint64_t FlowFactory.findFlow(for:)()
{
  v246 = v0;
  v230 = v0[135];
  v228 = v0[132];
  v229 = v0[131];
  v0[68] = v0;
  v227 = *(v228 + 16);
  v227();
  if ((*(v228 + 88))(v230, v229) != *MEMORY[0x277D5C160])
  {
    v40 = *(v226 + 1072);
    v41 = *(v226 + 1048);
    v20 = *(v226 + 936);
    v36 = *(v226 + 920);
    v37 = *(v226 + 872);
    v38 = *(v226 + 1056);
    v35 = *(v226 + 928);
    v21 = Logger.payments.unsafeMutableAddressor();
    (*(v35 + 16))(v20, v21, v36);
    (v227)(v40, v37, v41);
    v39 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v42 = swift_allocObject();
    (*(v38 + 32))(v42 + v39, v40, v41);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    v44 = swift_allocObject();
    *(v44 + 16) = 32;
    v45 = swift_allocObject();
    *(v45 + 16) = 8;
    v43 = swift_allocObject();
    *(v43 + 16) = partial apply for implicit closure #3 in FlowFactory.findFlow(for:);
    *(v43 + 24) = v42;
    v46 = swift_allocObject();
    *(v46 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v46 + 24) = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    _allocateUninitializedArray<A>(_:)();
    v47 = v22;

    *v47 = partial apply for closure #1 in OSLogArguments.append(_:);
    v47[1] = v44;

    v47[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v47[3] = v45;

    v47[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v47[5] = v46;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v48, v49))
    {
      v32 = static UnsafeMutablePointer.allocate(capacity:)();
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v33 = createStorage<A>(capacity:type:)(0, v31, v31);
      v34 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v231 = v32;
      v232 = v33;
      v233 = v34;
      serialize(_:at:)(2, &v231);
      serialize(_:at:)(1, &v231);
      v234 = partial apply for closure #1 in OSLogArguments.append(_:);
      v235 = v44;
      closure #1 in osLogInternal(_:log:type:)(&v234, &v231, &v232, &v233);
      v234 = partial apply for closure #1 in OSLogArguments.append(_:);
      v235 = v45;
      closure #1 in osLogInternal(_:log:type:)(&v234, &v231, &v232, &v233);
      v234 = partial apply for closure #1 in OSLogArguments.append(_:);
      v235 = v46;
      closure #1 in osLogInternal(_:log:type:)(&v234, &v231, &v232, &v233);
      _os_log_impl(&dword_2686B1000, v48, v49, "#FlowFactory received unsupported parse: %s", v32, 0xCu);
      destroyStorage<A>(_:count:)(v33, 0, v31);
      destroyStorage<A>(_:count:)(v34, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v32, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v29 = *(v226 + 1080);
    v30 = *(v226 + 1048);
    v26 = *(v226 + 936);
    v27 = *(v226 + 920);
    v28 = *(v226 + 1056);
    v25 = *(v226 + 928);
    MEMORY[0x277D82BD8](v48);
    (*(v25 + 8))(v26, v27);
    (*(v28 + 8))(v29, v30);
LABEL_91:
    v185 = 0;
    goto LABEL_92;
  }

  v209 = *(v226 + 1080);
  v213 = *(v226 + 1040);
  v215 = *(v226 + 1032);
  v216 = *(v226 + 1008);
  v1 = *(v226 + 1000);
  v211 = *(v226 + 920);
  v208 = *(v226 + 1016);
  v210 = *(v226 + 928);
  (*(*(v226 + 1056) + 96))();
  v217 = *(v208 + 32);
  v217(v213, v209, v216);
  *(v226 + 568) = v213;
  v2 = Logger.payments.unsafeMutableAddressor();
  v212 = *(v210 + 16);
  v212(v1, v2, v211);
  (*(v208 + 16))(v215, v213, v216);
  v214 = (*(v208 + 80) + 16) & ~*(v208 + 80);
  v218 = swift_allocObject();
  v217(v218 + v214, v215, v216);
  oslog = Logger.logObject.getter();
  v225 = static os_log_type_t.debug.getter();
  v220 = swift_allocObject();
  *(v220 + 16) = 32;
  v221 = swift_allocObject();
  *(v221 + 16) = 8;
  v219 = swift_allocObject();
  *(v219 + 16) = partial apply for implicit closure #1 in FlowFactory.findFlow(for:);
  *(v219 + 24) = v218;
  v222 = swift_allocObject();
  *(v222 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v222 + 24) = v219;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v223 = v3;

  *v223 = partial apply for closure #1 in OSLogArguments.append(_:);
  v223[1] = v220;

  v223[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v223[3] = v221;

  v223[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v223[5] = v222;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v225))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v206 = createStorage<A>(capacity:type:)(0, v204, v204);
    v207 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v241 = buf;
    v242 = v206;
    v243 = v207;
    serialize(_:at:)(2, &v241);
    serialize(_:at:)(1, &v241);
    v244 = partial apply for closure #1 in OSLogArguments.append(_:);
    v245 = v220;
    closure #1 in osLogInternal(_:log:type:)(&v244, &v241, &v242, &v243);
    v244 = partial apply for closure #1 in OSLogArguments.append(_:);
    v245 = v221;
    closure #1 in osLogInternal(_:log:type:)(&v244, &v241, &v242, &v243);
    v244 = partial apply for closure #1 in OSLogArguments.append(_:);
    v245 = v222;
    closure #1 in osLogInternal(_:log:type:)(&v244, &v241, &v242, &v243);
    _os_log_impl(&dword_2686B1000, oslog, v225, "#FlowFactory received uso parse: %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v206, 0, v204);
    destroyStorage<A>(_:count:)(v207, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v194 = *(v226 + 1000);
  v195 = *(v226 + 920);
  v201 = *(v226 + 912);
  v199 = *(v226 + 904);
  v198 = *(v226 + 888);
  v193 = *(v226 + 928);
  v197 = *(v226 + 896);
  MEMORY[0x277D82BD8](oslog);
  v196 = *(v193 + 8);
  v196(v194, v195);
  v4 = USOParse.userParse.getter();
  v200 = MEMORY[0x26D61F2D0](v4);
  (*(v197 + 8))(v199, v198);
  *(v226 + 576) = v200;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMd, &_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMR);
  lazy protocol witness table accessor for type [Siri_Nlu_External_UserDialogAct] and conformance [A]();
  Collection.first.getter();

  v202 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v203 = *(v202 - 8);
  if ((*(v203 + 48))(v201, 1) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(*(v226 + 912));
  }

  else
  {
    v191 = *(v226 + 912);
    v192 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
    (*(v203 + 8))(v191, v202);
    if (v192)
    {
      UsoTask.eraseToAny.getter();

      goto LABEL_10;
    }
  }

  *(v226 + 448) = 0;
  *(v226 + 456) = 0;
  *(v226 + 464) = 0;
  *(v226 + 472) = 0;
LABEL_10:
  if (*(v226 + 472))
  {
    outlined init with take of Any(v226 + 448, v226 + 416);
    outlined init with copy of Any(v226 + 416, v226 + 480);
    type metadata accessor for UsoTask_pay_common_Payment();
    if (swift_dynamicCast())
    {
      v189 = *(v226 + 880);
      static AceService.currentAsync.getter();
      outlined init with copy of GlobalsProviding(v189 + 56, v226 + 376);
      v190 = Parse.toSiriKitIntent(previousIntent:aceService:contactResolver:)(0, 0, v226 + 336, v226 + 376);
      __swift_destroy_boxed_opaque_existential_0((v226 + 376));
      __swift_destroy_boxed_opaque_existential_0((v226 + 336));
      if (v190)
      {
        objc_opt_self();
        v188 = swift_dynamicCastObjCClass();
        if (v188)
        {
          v187 = v188;
        }

        else
        {
          MEMORY[0x277D82BD8](v190);
          v187 = 0;
        }

        v186 = v187;
      }

      else
      {
        v186 = 0;
      }

      if (v186)
      {
        v182 = *(v226 + 1040);
        v183 = *(v226 + 1008);
        v181 = *(v226 + 1016);
        *(v226 + 864) = v186;
        v184 = FlowFactory.sendPaymentFlow(intent:)(v186);
        MEMORY[0x277D82BD8](v186);

        __swift_destroy_boxed_opaque_existential_0((v226 + 480));
        __swift_destroy_boxed_opaque_existential_0((v226 + 416));
        (*(v181 + 8))(v182, v183);
        v185 = v184;
        goto LABEL_92;
      }

      v5 = *(v226 + 992);
      v177 = *(v226 + 920);
      v6 = Logger.payments.unsafeMutableAddressor();
      v212(v5, v6, v177);
      log = Logger.logObject.getter();
      v178 = static os_log_type_t.debug.getter();
      v180 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(log, v178))
      {
        v173 = static UnsafeMutablePointer.allocate(capacity:)();
        v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v174 = createStorage<A>(capacity:type:)(0, v172, v172);
        v175 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v226 + 832) = v173;
        *(v226 + 840) = v174;
        *(v226 + 848) = v175;
        serialize(_:at:)(0, (v226 + 832));
        serialize(_:at:)(0, (v226 + 832));
        *(v226 + 856) = v180;
        v176 = swift_task_alloc();
        v176[2] = v226 + 832;
        v176[3] = v226 + 840;
        v176[4] = v226 + 848;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_2686B1000, log, v178, "#FlowFactory couldn't create intent from parse", v173, 2u);
        destroyStorage<A>(_:count:)(v174, 0, v172);
        destroyStorage<A>(_:count:)(v175, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v173, MEMORY[0x277D84B78]);
      }

      v170 = *(v226 + 992);
      v171 = *(v226 + 920);
      MEMORY[0x277D82BD8](log);
      v196(v170, v171);

      __swift_destroy_boxed_opaque_existential_0((v226 + 480));
    }

    else
    {
      type metadata accessor for UsoTask_noVerb_common_Payment();
      if (swift_dynamicCast())
      {
        v168 = *(v226 + 880);
        static AceService.currentAsync.getter();
        outlined init with copy of GlobalsProviding(v168 + 56, v226 + 296);
        v169 = Parse.toSiriKitIntent(previousIntent:aceService:contactResolver:)(0, 0, v226 + 256, v226 + 296);
        __swift_destroy_boxed_opaque_existential_0((v226 + 296));
        __swift_destroy_boxed_opaque_existential_0((v226 + 256));
        if (v169)
        {
          objc_opt_self();
          v167 = swift_dynamicCastObjCClass();
          if (v167)
          {
            v166 = v167;
          }

          else
          {
            MEMORY[0x277D82BD8](v169);
            v166 = 0;
          }

          v165 = v166;
        }

        else
        {
          v165 = 0;
        }

        if (v165)
        {
          v162 = *(v226 + 1040);
          v163 = *(v226 + 1008);
          v161 = *(v226 + 1016);
          *(v226 + 824) = v165;
          v164 = FlowFactory.sendPaymentFlow(intent:)(v165);
          MEMORY[0x277D82BD8](v165);

          __swift_destroy_boxed_opaque_existential_0((v226 + 480));
          __swift_destroy_boxed_opaque_existential_0((v226 + 416));
          (*(v161 + 8))(v162, v163);
          v185 = v164;
          goto LABEL_92;
        }

        v7 = *(v226 + 984);
        v157 = *(v226 + 920);
        v8 = Logger.payments.unsafeMutableAddressor();
        v212(v7, v8, v157);
        v159 = Logger.logObject.getter();
        v158 = static os_log_type_t.debug.getter();
        v160 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v159, v158))
        {
          v153 = static UnsafeMutablePointer.allocate(capacity:)();
          v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v154 = createStorage<A>(capacity:type:)(0, v152, v152);
          v155 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          *(v226 + 792) = v153;
          *(v226 + 800) = v154;
          *(v226 + 808) = v155;
          serialize(_:at:)(0, (v226 + 792));
          serialize(_:at:)(0, (v226 + 792));
          *(v226 + 816) = v160;
          v156 = swift_task_alloc();
          v156[2] = v226 + 792;
          v156[3] = v226 + 800;
          v156[4] = v226 + 808;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();

          _os_log_impl(&dword_2686B1000, v159, v158, "#FlowFactory couldn't create intent from parse", v153, 2u);
          destroyStorage<A>(_:count:)(v154, 0, v152);
          destroyStorage<A>(_:count:)(v155, 0, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v153, MEMORY[0x277D84B78]);
        }

        v150 = *(v226 + 984);
        v151 = *(v226 + 920);
        MEMORY[0x277D82BD8](v159);
        v196(v150, v151);

        __swift_destroy_boxed_opaque_existential_0((v226 + 480));
      }

      else
      {
        type metadata accessor for UsoTask_requestMoney_common_Payment();
        if (swift_dynamicCast())
        {
          v148 = *(v226 + 880);
          static AceService.currentAsync.getter();
          outlined init with copy of GlobalsProviding(v148 + 56, v226 + 216);
          v149 = Parse.toSiriKitIntent(previousIntent:aceService:contactResolver:)(0, 0, v226 + 176, v226 + 216);
          __swift_destroy_boxed_opaque_existential_0((v226 + 216));
          __swift_destroy_boxed_opaque_existential_0((v226 + 176));
          if (v149)
          {
            objc_opt_self();
            v147 = swift_dynamicCastObjCClass();
            if (v147)
            {
              v146 = v147;
            }

            else
            {
              MEMORY[0x277D82BD8](v149);
              v146 = 0;
            }

            v145 = v146;
          }

          else
          {
            v145 = 0;
          }

          if (v145)
          {
            v142 = *(v226 + 1040);
            v143 = *(v226 + 1008);
            v141 = *(v226 + 1016);
            *(v226 + 784) = v145;
            v144 = FlowFactory.requestPaymentFlow(intent:)(v145);
            MEMORY[0x277D82BD8](v145);

            __swift_destroy_boxed_opaque_existential_0((v226 + 480));
            __swift_destroy_boxed_opaque_existential_0((v226 + 416));
            (*(v141 + 8))(v142, v143);
            v185 = v144;
            goto LABEL_92;
          }

          v9 = *(v226 + 976);
          v137 = *(v226 + 920);
          v10 = Logger.payments.unsafeMutableAddressor();
          v212(v9, v10, v137);
          v139 = Logger.logObject.getter();
          v138 = static os_log_type_t.debug.getter();
          v140 = _allocateUninitializedArray<A>(_:)();
          if (os_log_type_enabled(v139, v138))
          {
            v133 = static UnsafeMutablePointer.allocate(capacity:)();
            v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v134 = createStorage<A>(capacity:type:)(0, v132, v132);
            v135 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
            *(v226 + 752) = v133;
            *(v226 + 760) = v134;
            *(v226 + 768) = v135;
            serialize(_:at:)(0, (v226 + 752));
            serialize(_:at:)(0, (v226 + 752));
            *(v226 + 776) = v140;
            v136 = swift_task_alloc();
            v136[2] = v226 + 752;
            v136[3] = v226 + 760;
            v136[4] = v226 + 768;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
            lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
            Sequence.forEach(_:)();

            _os_log_impl(&dword_2686B1000, v139, v138, "#FlowFactory couldn't create intent from parse", v133, 2u);
            destroyStorage<A>(_:count:)(v134, 0, v132);
            destroyStorage<A>(_:count:)(v135, 0, MEMORY[0x277D84F70] + 8);
            MEMORY[0x26D620BD0](v133, MEMORY[0x277D84B78]);
          }

          v130 = *(v226 + 976);
          v131 = *(v226 + 920);
          MEMORY[0x277D82BD8](v139);
          v196(v130, v131);

          __swift_destroy_boxed_opaque_existential_0((v226 + 480));
        }

        else
        {
          type metadata accessor for UsoTask_summarise_common_PaymentAccount();
          if (swift_dynamicCast())
          {
            if (USOParse.isRequestToSummariseAppleCardInfo.getter())
            {
              v127 = *(v226 + 1040);
              v128 = *(v226 + 1008);
              v126 = *(v226 + 1016);
              v129 = FlowFactory.makeLearnAboutAppleCardFlow()();

              __swift_destroy_boxed_opaque_existential_0((v226 + 480));
              __swift_destroy_boxed_opaque_existential_0((v226 + 416));
              (*(v126 + 8))(v127, v128);
              v185 = v129;
              goto LABEL_92;
            }

            v124 = *(v226 + 880);
            static AceService.currentAsync.getter();
            outlined init with copy of GlobalsProviding(v124 + 56, v226 + 136);
            v125 = Parse.toSiriKitIntent(previousIntent:aceService:contactResolver:)(0, 0, v226 + 96, v226 + 136);
            __swift_destroy_boxed_opaque_existential_0((v226 + 136));
            __swift_destroy_boxed_opaque_existential_0((v226 + 96));
            if (v125)
            {
              objc_opt_self();
              v123 = swift_dynamicCastObjCClass();
              if (v123)
              {
                v122 = v123;
              }

              else
              {
                MEMORY[0x277D82BD8](v125);
                v122 = 0;
              }

              v121 = v122;
            }

            else
            {
              v121 = 0;
            }

            if (v121)
            {
              v118 = *(v226 + 1040);
              v119 = *(v226 + 1008);
              v117 = *(v226 + 1016);
              *(v226 + 744) = v121;
              v120 = FlowFactory.searchForAccountsFlow(intent:)(v121);
              MEMORY[0x277D82BD8](v121);

              __swift_destroy_boxed_opaque_existential_0((v226 + 480));
              __swift_destroy_boxed_opaque_existential_0((v226 + 416));
              (*(v117 + 8))(v118, v119);
              v185 = v120;
              goto LABEL_92;
            }

            v11 = *(v226 + 968);
            v113 = *(v226 + 920);
            v12 = Logger.payments.unsafeMutableAddressor();
            v212(v11, v12, v113);
            v115 = Logger.logObject.getter();
            v114 = static os_log_type_t.debug.getter();
            v116 = _allocateUninitializedArray<A>(_:)();
            if (os_log_type_enabled(v115, v114))
            {
              v109 = static UnsafeMutablePointer.allocate(capacity:)();
              v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
              v110 = createStorage<A>(capacity:type:)(0, v108, v108);
              v111 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
              *(v226 + 712) = v109;
              *(v226 + 720) = v110;
              *(v226 + 728) = v111;
              serialize(_:at:)(0, (v226 + 712));
              serialize(_:at:)(0, (v226 + 712));
              *(v226 + 736) = v116;
              v112 = swift_task_alloc();
              v112[2] = v226 + 712;
              v112[3] = v226 + 720;
              v112[4] = v226 + 728;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
              lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
              Sequence.forEach(_:)();

              _os_log_impl(&dword_2686B1000, v115, v114, "#FlowFactory couldn't create intent from parse", v109, 2u);
              destroyStorage<A>(_:count:)(v110, 0, v108);
              destroyStorage<A>(_:count:)(v111, 0, MEMORY[0x277D84F70] + 8);
              MEMORY[0x26D620BD0](v109, MEMORY[0x277D84B78]);
            }

            v106 = *(v226 + 968);
            v107 = *(v226 + 920);
            MEMORY[0x277D82BD8](v115);
            v196(v106, v107);

            __swift_destroy_boxed_opaque_existential_0((v226 + 480));
          }

          else
          {
            type metadata accessor for UsoTask_noVerb_common_PaymentAccount();
            if (swift_dynamicCast() & 1) != 0 || (type metadata accessor for UsoTask_request_common_PaymentAccount(), (swift_dynamicCast()))
            {

              __swift_destroy_boxed_opaque_existential_0((v226 + 480));
              v104 = *(v226 + 880);
              static AceService.currentAsync.getter();
              outlined init with copy of GlobalsProviding(v104 + 56, v226 + 56);
              v105 = Parse.toSiriKitIntent(previousIntent:aceService:contactResolver:)(0, 0, v226 + 16, v226 + 56);
              __swift_destroy_boxed_opaque_existential_0((v226 + 56));
              __swift_destroy_boxed_opaque_existential_0((v226 + 16));
              if (v105)
              {
                objc_opt_self();
                v103 = swift_dynamicCastObjCClass();
                if (v103)
                {
                  v102 = v103;
                }

                else
                {
                  MEMORY[0x277D82BD8](v105);
                  v102 = 0;
                }

                v101 = v102;
              }

              else
              {
                v101 = 0;
              }

              if (v101)
              {
                v98 = *(v226 + 1040);
                v99 = *(v226 + 1008);
                v97 = *(v226 + 1016);
                *(v226 + 704) = v101;
                v100 = FlowFactory.searchForAccountsFlow(intent:)(v101);
                MEMORY[0x277D82BD8](v101);
                __swift_destroy_boxed_opaque_existential_0((v226 + 416));
                (*(v97 + 8))(v98, v99);
                v185 = v100;
                goto LABEL_92;
              }

              v13 = *(v226 + 960);
              v93 = *(v226 + 920);
              v14 = Logger.payments.unsafeMutableAddressor();
              v212(v13, v14, v93);
              v95 = Logger.logObject.getter();
              v94 = static os_log_type_t.debug.getter();
              v96 = _allocateUninitializedArray<A>(_:)();
              if (os_log_type_enabled(v95, v94))
              {
                v89 = static UnsafeMutablePointer.allocate(capacity:)();
                v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                v90 = createStorage<A>(capacity:type:)(0, v88, v88);
                v91 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
                *(v226 + 672) = v89;
                *(v226 + 680) = v90;
                *(v226 + 688) = v91;
                serialize(_:at:)(0, (v226 + 672));
                serialize(_:at:)(0, (v226 + 672));
                *(v226 + 696) = v96;
                v92 = swift_task_alloc();
                v92[2] = v226 + 672;
                v92[3] = v226 + 680;
                v92[4] = v226 + 688;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
                lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
                Sequence.forEach(_:)();

                _os_log_impl(&dword_2686B1000, v95, v94, "#FlowFactory couldn't create intent from parse", v89, 2u);
                destroyStorage<A>(_:count:)(v90, 0, v88);
                destroyStorage<A>(_:count:)(v91, 0, MEMORY[0x277D84F70] + 8);
                MEMORY[0x26D620BD0](v89, MEMORY[0x277D84B78]);
              }

              v86 = *(v226 + 960);
              v87 = *(v226 + 920);
              MEMORY[0x277D82BD8](v95);
              v196(v86, v87);
            }

            else
            {
              type metadata accessor for UsoTask_create_common_PaymentAccount();
              if (swift_dynamicCast())
              {
                if (USOParse.isRequestToCreateAppleCardAccount.getter())
                {
                  v83 = *(v226 + 1040);
                  v84 = *(v226 + 1008);
                  v82 = *(v226 + 1016);
                  v85 = FlowFactory.makeApplyForAppleCardFlow()();

                  __swift_destroy_boxed_opaque_existential_0((v226 + 480));
                  __swift_destroy_boxed_opaque_existential_0((v226 + 416));
                  (*(v82 + 8))(v83, v84);
                  v185 = v85;
                  goto LABEL_92;
                }

                __swift_destroy_boxed_opaque_existential_0((v226 + 480));
              }

              else
              {
                v15 = *(v226 + 952);
                v73 = *(v226 + 920);
                v16 = Logger.payments.unsafeMutableAddressor();
                v212(v15, v16, v73);
                outlined init with copy of Any(v226 + 416, v226 + 512);
                v74 = swift_allocObject();
                outlined init with take of Any(v226 + 512, v74 + 16);
                v80 = Logger.logObject.getter();
                v81 = static os_log_type_t.debug.getter();
                v76 = swift_allocObject();
                *(v76 + 16) = 32;
                v77 = swift_allocObject();
                *(v77 + 16) = 8;
                v75 = swift_allocObject();
                *(v75 + 16) = partial apply for implicit closure #2 in FlowFactory.findFlow(for:);
                *(v75 + 24) = v74;
                v78 = swift_allocObject();
                *(v78 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
                *(v78 + 24) = v75;
                _allocateUninitializedArray<A>(_:)();
                v79 = v17;

                *v79 = partial apply for closure #1 in OSLogArguments.append(_:);
                v79[1] = v76;

                v79[2] = partial apply for closure #1 in OSLogArguments.append(_:);
                v79[3] = v77;

                v79[4] = partial apply for closure #1 in OSLogArguments.append(_:);
                v79[5] = v78;
                _finalizeUninitializedArray<A>(_:)();

                if (os_log_type_enabled(v80, v81))
                {
                  v70 = static UnsafeMutablePointer.allocate(capacity:)();
                  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                  v71 = createStorage<A>(capacity:type:)(0, v69, v69);
                  v72 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
                  v236 = v70;
                  v237 = v71;
                  v238 = v72;
                  serialize(_:at:)(2, &v236);
                  serialize(_:at:)(1, &v236);
                  v239 = partial apply for closure #1 in OSLogArguments.append(_:);
                  v240 = v76;
                  closure #1 in osLogInternal(_:log:type:)(&v239, &v236, &v237, &v238);
                  v239 = partial apply for closure #1 in OSLogArguments.append(_:);
                  v240 = v77;
                  closure #1 in osLogInternal(_:log:type:)(&v239, &v236, &v237, &v238);
                  v239 = partial apply for closure #1 in OSLogArguments.append(_:);
                  v240 = v78;
                  closure #1 in osLogInternal(_:log:type:)(&v239, &v236, &v237, &v238);
                  _os_log_impl(&dword_2686B1000, v80, v81, "#FlowFactory encountered unsupported task: %s", v70, 0xCu);
                  destroyStorage<A>(_:count:)(v71, 0, v69);
                  destroyStorage<A>(_:count:)(v72, 1, MEMORY[0x277D84F70] + 8);
                  MEMORY[0x26D620BD0](v70, MEMORY[0x277D84B78]);
                }

                else
                {
                }

                v67 = *(v226 + 952);
                v68 = *(v226 + 920);
                MEMORY[0x277D82BD8](v80);
                v196(v67, v68);
                __swift_destroy_boxed_opaque_existential_0((v226 + 480));
              }
            }
          }
        }
      }
    }

    v65 = *(v226 + 1040);
    v66 = *(v226 + 1008);
    v64 = *(v226 + 1016);
    __swift_destroy_boxed_opaque_existential_0((v226 + 416));
    (*(v64 + 8))(v65, v66);
    goto LABEL_91;
  }

  v18 = *(v226 + 944);
  v60 = *(v226 + 920);
  outlined destroy of FlowActivity?((v226 + 448));
  v19 = Logger.payments.unsafeMutableAddressor();
  v212(v18, v19, v60);
  v62 = Logger.logObject.getter();
  v61 = static os_log_type_t.debug.getter();
  v63 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v62, v61))
  {
    v56 = static UnsafeMutablePointer.allocate(capacity:)();
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v57 = createStorage<A>(capacity:type:)(0, v55, v55);
    v58 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v226 + 584) = v56;
    *(v226 + 592) = v57;
    *(v226 + 600) = v58;
    serialize(_:at:)(0, (v226 + 584));
    serialize(_:at:)(0, (v226 + 584));
    *(v226 + 608) = v63;
    v59 = swift_task_alloc();
    v59[2] = v226 + 584;
    v59[3] = v226 + 592;
    v59[4] = v226 + 600;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v62, v61, "#FlowFactory couldn't find a UsoTask for the given UsoParse", v56, 2u);
    destroyStorage<A>(_:count:)(v57, 0, v55);
    destroyStorage<A>(_:count:)(v58, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](v56, MEMORY[0x277D84B78]);
  }

  v53 = *(v226 + 1040);
  v54 = *(v226 + 1008);
  v50 = *(v226 + 944);
  v51 = *(v226 + 920);
  v52 = *(v226 + 1016);
  MEMORY[0x277D82BD8](v62);
  v196(v50, v51);
  (*(v52 + 8))(v53, v54);
  v185 = 0;
LABEL_92:

  v23 = *(*(v226 + 544) + 8);

  return v23(v185);
}

uint64_t implicit closure #3 in FlowFactory.findFlow(for:)(uint64_t a1)
{
  v3 = a1;
  v6 = type metadata accessor for Parse();
  v5 = *(v6 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6, v3);
  v7 = &v2 - v4;
  (*(v5 + 16))();
  return String.init<A>(describing:)();
}

uint64_t sub_268719070()
{
  v2 = *(type metadata accessor for Parse() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #3 in FlowFactory.findFlow(for:)()
{
  v1 = *(type metadata accessor for Parse() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #3 in FlowFactory.findFlow(for:)(v2);
}

uint64_t FlowFactory.unsupportedActionFlow()()
{
  v1[9] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v2 = type metadata accessor for Logger();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v1[3] = v0;

  return MEMORY[0x2822009F8](FlowFactory.unsupportedActionFlow(), 0);
}

{
  v1 = v0[12];
  v16 = v0[11];
  v17 = v0[10];
  v0[2] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v16 + 16))(v1, v2, v17);
  v19 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v20 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v19, v18))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = createStorage<A>(capacity:type:)(0, v10, v10);
    v13 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v15 + 40) = buf;
    *(v15 + 48) = v12;
    *(v15 + 56) = v13;
    serialize(_:at:)(0, (v15 + 40));
    serialize(_:at:)(0, (v15 + 40));
    *(v15 + 64) = v20;
    v14 = swift_task_alloc();
    v14[2] = v15 + 40;
    v14[3] = v15 + 48;
    v14[4] = v15 + 56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v19, v18, "#FlowFactory building flow for unsupportedAction", buf, 2u);
    destroyStorage<A>(_:count:)(v12, 0, v10);
    destroyStorage<A>(_:count:)(v13, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v8 = *(v15 + 96);
  v6 = *(v15 + 80);
  v5 = *(v15 + 88);
  MEMORY[0x277D82BD8](v19);
  (*(v5 + 8))(v8, v6);
  type metadata accessor for SimpleOutputFlowAsync();

  default argument 3 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v7 = SimpleOutputFlowAsync.__allocating_init(outputPublisher:outputGenerator:)();

  *(v15 + 32) = v7;
  v9 = Flow.eraseToAnyFlow()();

  v3 = *(*(v15 + 16) + 8);

  return v3(v9);
}

uint64_t closure #1 in FlowFactory.unsupportedActionFlow()(uint64_t a1, uint64_t a2)
{
  v2[20] = a2;
  v2[19] = a1;
  v2[17] = v2;
  v2[18] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v2[21] = swift_task_alloc();
  type metadata accessor for CATOption();
  v2[22] = swift_task_alloc();
  v3 = type metadata accessor for TemplatingResult();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  v2[18] = a2;

  return MEMORY[0x2822009F8](closure #1 in FlowFactory.unsupportedActionFlow(), 0);
}

uint64_t closure #1 in FlowFactory.unsupportedActionFlow()()
{
  *(v0 + 136) = v0;
  type metadata accessor for PaymentsUnsupportedIntentCATs(0);
  default argument 0 of CATWrapper.init(options:globals:)();
  *(v0 + 208) = CATWrapper.__allocating_init(options:globals:)();
  v1 = swift_task_alloc();
  v4[27] = v1;
  *v1 = v4[17];
  v1[1] = closure #1 in FlowFactory.unsupportedActionFlow();
  v2 = v4[25];

  return PaymentsUnsupportedIntentCATs.unsupportedSurfIntent()(v2);
}

{
  v4 = *v1;
  *(v4 + 136) = *v1;
  *(v4 + 224) = v0;

  if (v0)
  {
    v2 = closure #1 in FlowFactory.unsupportedActionFlow();
  }

  else
  {

    v2 = closure #1 in FlowFactory.unsupportedActionFlow();
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v8 = v0[25];
  v6 = v0[24];
  v7 = v0[23];
  v9 = v0[21];
  v4 = v0[20];
  v5 = v0[19];
  v0[17] = v0;
  outlined init with copy of GlobalsProviding(v4 + 16, (v0 + 2));
  outlined init with copy of GlobalsProviding(v4 + 16, (v0 + 7));
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v1 = type metadata accessor for NLContextUpdate();
  (*(*(v1 - 8) + 56))(v9, 1);
  v0[12] = 0;
  v0[13] = 0;
  v0[14] = 0;
  v0[15] = 0;
  v0[16] = 0;
  default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v5[3] = type metadata accessor for AceOutput();
  v5[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v5);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 12);
  outlined destroy of NLContextUpdate?(v9);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (*(v6 + 8))(v8, v7);

  v2 = *(v0[17] + 8);

  return v2();
}

{
  *(v0 + 136) = v0;

  v1 = *(*(v0 + 136) + 8);

  return v1();
}

uint64_t FlowFactory.unsupportedOnDeviceFlow()()
{
  v36 = 0;
  v45 = 0;
  v26 = 0;
  v33 = type metadata accessor for Logger();
  v27 = v33;
  v28 = *(v33 - 8);
  v32 = v28;
  v29 = v28;
  v30 = *(v28 + 64);
  MEMORY[0x28223BE20](v33 - 8, v33);
  v0 = &v7 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v0;
  v45 = v1;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v32 + 16))(v0, v2, v33);
  v38 = Logger.logObject.getter();
  v34 = v38;
  v37 = static os_log_type_t.debug.getter();
  v35 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v39 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v38, v37))
  {
    v3 = v26;
    v17 = static UnsafeMutablePointer.allocate(capacity:)();
    v13 = v17;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v15 = 0;
    v18 = createStorage<A>(capacity:type:)(0, v14, v14);
    v16 = v18;
    v19 = createStorage<A>(capacity:type:)(v15, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v43[0] = v17;
    v42 = v18;
    v41 = v19;
    v20 = 0;
    v21 = v43;
    serialize(_:at:)(0, v43);
    serialize(_:at:)(v20, v21);
    v40 = v39;
    v22 = &v7;
    MEMORY[0x28223BE20](&v7, v4);
    v23 = &v7 - 6;
    *(&v7 - 4) = v5;
    *(&v7 - 3) = &v42;
    *(&v7 - 2) = &v41;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v25 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_2686B1000, v34, v35, "#FlowFactory building flow for unsupported on device", v13, 2u);
      v11 = 0;
      destroyStorage<A>(_:count:)(v16, 0, v14);
      destroyStorage<A>(_:count:)(v19, v11, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v13, MEMORY[0x277D84B78]);

      v12 = v25;
    }
  }

  else
  {

    v12 = v26;
  }

  (*(v29 + 8))(v31, v27);
  v9 = type metadata accessor for SimpleOutputFlowAsync();

  v7 = &v44;
  default argument 3 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v8 = SimpleOutputFlowAsync.__allocating_init(outputPublisher:outputGenerator:)();

  v43[1] = v8;
  v10 = Flow.eraseToAnyFlow()();

  return v10;
}

uint64_t closure #1 in FlowFactory.unsupportedOnDeviceFlow()(uint64_t a1, uint64_t a2)
{
  v2[20] = a2;
  v2[19] = a1;
  v2[17] = v2;
  v2[18] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v2[21] = swift_task_alloc();
  type metadata accessor for CATOption();
  v2[22] = swift_task_alloc();
  v3 = type metadata accessor for TemplatingResult();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  v2[18] = a2;

  return MEMORY[0x2822009F8](closure #1 in FlowFactory.unsupportedOnDeviceFlow(), 0);
}

uint64_t closure #1 in FlowFactory.unsupportedOnDeviceFlow()()
{
  *(v0 + 136) = v0;
  type metadata accessor for PaymentsBaseCATs(0);
  default argument 0 of CATWrapper.init(options:globals:)();
  *(v0 + 208) = CATWrapper.__allocating_init(options:globals:)();
  v1 = swift_task_alloc();
  v4[27] = v1;
  *v1 = v4[17];
  v1[1] = closure #1 in FlowFactory.unsupportedActionFlow();
  v2 = v4[25];

  return PaymentsBaseCATs.unsupportedOnWatch()(v2);
}

uint64_t FlowFactory.sendPaymentFlow(intent:)(void *a1)
{
  v16 = a1;
  v34 = 0;
  v33 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo19INSendPaymentIntentCSo0ghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo19INSendPaymentIntentCSo0ghI8ResponseCGMR);
  v8 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2, v3);
  v18 = &v8 - v8;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14RCHFlowFactoryVy0A15PaymentsIntents011SendPaymentC8StrategyCGMd, &_s11SiriKitFlow14RCHFlowFactoryVy0A15PaymentsIntents011SendPaymentC8StrategyCGMR);
  v22 = *(v24 - 8);
  v23 = v24 - 8;
  v9 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v16, v4);
  v25 = &v8 - v9;
  v34 = v5;
  v33 = v1;
  v10 = 0;
  v20 = type metadata accessor for SendPaymentFlowStrategy(0);
  v11 = type metadata accessor for INSendPaymentIntent();
  v12 = type metadata accessor for INSendPaymentIntentResponse();
  v14 = v32;
  v13 = &protocol witness table for INSendPaymentIntent;
  default argument 0 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v11, v12, v32);
  v15 = v31;
  default argument 1 of PaymentsRCHFlowStrategy.init(globals:contactResolver:)(v31);
  v6 = SendPaymentFlowStrategy.__allocating_init(globals:contactResolver:)(v14, v15);
  v21 = &v30;
  v30 = v6;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC7FactoryCySo19INSendPaymentIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow08RCHChildC7FactoryCySo19INSendPaymentIntentCSo0fgH8ResponseCGMR);
  FlowFactory.sendPaymentFlowProducers(intent:)(v16, v18);
  v19 = RCHChildFlowFactory.__allocating_init(producers:)();
  lazy protocol witness table accessor for type SendPaymentFlowStrategy and conformance PaymentsRCHFlowStrategy<A, B>();
  RCHFlowFactory.init(strategy:childFlowFactory:)();
  v26 = RCHFlowFactory.makeAppResolvingRCHFlow()();
  (*(v22 + 8))(v25, v24);
  v29 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo19INSendPaymentIntentCSo0hiJ8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo19INSendPaymentIntentCSo0hiJ8ResponseCGGMR);
  lazy protocol witness table accessor for type AnyValueFlow<RCHFlowResult<INSendPaymentIntent, INSendPaymentIntentResponse>> and conformance AnyValueFlow<A>();
  v28 = Flow.eraseToAnyFlow()();

  return v28;
}

uint64_t FlowFactory.sendPaymentFlowProducers(intent:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a1;
  v81 = a2;
  v100 = 0;
  v119 = 0;
  v118 = 0;
  v117 = 0;
  v116 = 0;
  v82 = 0;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo19INSendPaymentIntentCSo0ghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo19INSendPaymentIntentCSo0ghI8ResponseCGMR);
  v84 = *(v83 - 8);
  v85 = v84;
  v86 = (*(v84 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v83);
  v87 = &v27 - v86;
  v119 = &v27 - v86;
  v97 = type metadata accessor for Logger();
  v88 = v97;
  v89 = *(v97 - 8);
  v96 = v89;
  v90 = v89;
  v2 = MEMORY[0x28223BE20](v100, v97);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v4;
  v93 = *(*(type metadata accessor for Signpost.OpenSignpost(v2) - 8) + 64);
  v6 = MEMORY[0x28223BE20](v92, v5);
  v95 = &v27 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v95;
  v118 = v95;
  v117 = v6;
  v116 = v7;
  v8 = SignpostName.makeSendPaymentFlowProducers.unsafeMutableAddressor();
  static Signpost.begin(_:)(*v8, v8[1], *(v8 + 16), v95);
  v9 = Logger.payments.unsafeMutableAddressor();
  (*(v96 + 16))(v4, v9, v97);
  v102 = Logger.logObject.getter();
  v98 = v102;
  v101 = static os_log_type_t.debug.getter();
  v99 = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v103 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v102, v101))
  {
    v10 = v82;
    v72 = static UnsafeMutablePointer.allocate(capacity:)();
    v68 = v72;
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v70 = 0;
    v73 = createStorage<A>(capacity:type:)(0, v69, v69);
    v71 = v73;
    v74 = createStorage<A>(capacity:type:)(v70, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v107[0] = v72;
    v106 = v73;
    v105 = v74;
    v75 = 0;
    v76 = v107;
    serialize(_:at:)(0, v107);
    serialize(_:at:)(v75, v76);
    v104 = v103;
    v77 = &v27;
    MEMORY[0x28223BE20](&v27, v11);
    v78 = &v27 - 6;
    *(&v27 - 4) = v12;
    *(&v27 - 3) = &v106;
    *(&v27 - 2) = &v105;
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v80 = v10;
    if (v10)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_2686B1000, v98, v99, "#sendPaymentFlowProducers init", v68, 2u);
      v66 = 0;
      destroyStorage<A>(_:count:)(v71, 0, v69);
      destroyStorage<A>(_:count:)(v74, v66, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v68, MEMORY[0x277D84B78]);

      v67 = v80;
    }
  }

  else
  {

    v67 = v82;
  }

  (*(v90 + 8))(v91, v88);
  v62 = 0;
  v37 = type metadata accessor for INSendPaymentIntent();
  v38 = type metadata accessor for INSendPaymentIntentResponse();
  RCHChildFlowProducersAsync.init()();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriPaymentsIntents0B25AppResolutionFlowStrategyCySo19INSendPaymentIntentCGMd, &_s19SiriPaymentsIntents0B25AppResolutionFlowStrategyCySo19INSendPaymentIntentCGMR);
  v39 = &protocol witness table for INSendPaymentIntent;
  v30 = default argument 0 of PaymentsAppResolutionFlowStrategy.init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)(v37, &protocol witness table for INSendPaymentIntent, v13, v14);
  v27 = v115;
  default argument 1 of PaymentsAppResolutionFlowStrategy.init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)(v37, v115);
  v28 = v114;
  default argument 2 of PaymentsAppResolutionFlowStrategy.init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)(v114);
  v29 = &v113;
  default argument 3 of PaymentsAppResolutionFlowStrategy.init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)();
  v15 = default argument 4 of PaymentsAppResolutionFlowStrategy.init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)(v37);
  v112 = PaymentsAppResolutionFlowStrategy.__allocating_init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)(v30, v27, v28, v29, v15);
  lazy protocol witness table accessor for type PaymentsAppResolutionFlowStrategy<INSendPaymentIntent> and conformance PaymentsAppResolutionFlowStrategy<A>();
  v32 = static RCHChildFlowFactoryHelper.makeAppResolutionFlowProducer<A, B, C>(strategy:)();
  v33 = v16;

  RCHChildFlowProducersAsync.appResolutionFlowProducer.setter();
  v34 = type metadata accessor for SendTCCHandleStrategy(v62);
  v17 = v92;
  v111 = SendTCCHandleStrategy.__allocating_init(previousIntent:)(v92);
  lazy protocol witness table accessor for type SendTCCHandleStrategy and conformance TCCHandleStrategy<A, B, C>();
  v35 = static RCHChildFlowFactoryHelper.makeRequestTCCAcceptanceFlow<A, B>(strategy:)();
  v36 = v18;

  RCHChildFlowProducersAsync.requestTCCAcceptanceFlowProducer.setter();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriPaymentsIntents0B21ContinueInAppStrategyCySo19INSendPaymentIntentCSo0hiJ8ResponseCGMd, &_s19SiriPaymentsIntents0B21ContinueInAppStrategyCySo19INSendPaymentIntentCSo0hiJ8ResponseCGMR);
  v40 = &protocol witness table for INSendPaymentIntentResponse;
  v41 = v110;
  default argument 0 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v37, v38, v110);
  v42 = v109;
  default argument 1 of PaymentsContinueInAppStrategy.init(globals:commonLabelsProvider:errorTemplateProvider:)(v37, v109);
  v43 = v108;
  default argument 2 of PaymentsContinueInAppStrategy.init(globals:commonLabelsProvider:errorTemplateProvider:)(v37, v38, v39, v40, v108);
  v107[7] = PaymentsContinueInAppStrategy.__allocating_init(globals:commonLabelsProvider:errorTemplateProvider:)(v41, v42, v43);
  lazy protocol witness table accessor for type PaymentsContinueInAppStrategy<INSendPaymentIntent, INSendPaymentIntentResponse> and conformance PaymentsContinueInAppStrategy<A, B>();
  v45 = static RCHChildFlowFactoryHelper.makeContinueInAppFlowWithDialogProducer<A>(strategy:)();
  v46 = v19;

  RCHChildFlowProducersAsync.continueInAppFlowProducer.setter();
  v47 = type metadata accessor for SendPaymentUnsupportedValueStrategy(v62);
  v107[6] = SendPaymentUnsupportedValueStrategy.__allocating_init()();
  lazy protocol witness table accessor for type SendPaymentUnsupportedValueStrategy and conformance SendPaymentUnsupportedValueStrategy();
  v48 = static RCHChildFlowFactoryHelper.makeUnsupportedValueAndPromptFlowProducer<A>(strategy:)();
  v49 = v20;

  RCHChildFlowProducersAsync.unsupportedValueFlowProducer.setter();
  v50 = type metadata accessor for SendPaymentNeedsValueStrategy(v62);
  v107[5] = SendPaymentNeedsValueStrategy.__allocating_init()();
  lazy protocol witness table accessor for type SendPaymentNeedsValueStrategy and conformance SendPaymentNeedsValueStrategy();
  v51 = static RCHChildFlowFactoryHelper.makeNeedsValueFlowProducer<A>(strategy:)();
  v52 = v21;

  RCHChildFlowProducersAsync.needsValueFlowProducer.setter();
  v53 = type metadata accessor for PayeeDisambiguationStrategy(v62);
  v107[4] = PayeeDisambiguationStrategy.__allocating_init()();
  lazy protocol witness table accessor for type PayeeDisambiguationStrategy and conformance ContactDisambiguationStrategy<A, B, C>();
  v54 = static RCHChildFlowFactoryHelper.makeNeedsDisambiguationFlowProducer<A>(strategy:)();
  v55 = v22;

  RCHChildFlowProducersAsync.needsDisambiguationFlowProducer.setter();
  v56 = type metadata accessor for SendPaymentNeedsConfirmationFlowStrategy(v62);
  v107[3] = SendPaymentNeedsConfirmationFlowStrategy.__allocating_init()();
  lazy protocol witness table accessor for type SendPaymentNeedsConfirmationFlowStrategy and conformance PaymentsNeedsConfirmationFlowStrategy<A, B, C>();
  v57 = static RCHChildFlowFactoryHelper.makeNeedsConfirmationFlowProducer<A>(strategy:)();
  v58 = v23;

  RCHChildFlowProducersAsync.needsConfirmationFlowProducer.setter();
  v59 = type metadata accessor for SendPaymentConfirmIntentStrategy(v62);
  v107[2] = SendPaymentConfirmIntentStrategy.__allocating_init()();
  lazy protocol witness table accessor for type SendPaymentConfirmIntentStrategy and conformance SendPaymentConfirmIntentStrategy();
  v60 = static RCHChildFlowFactoryHelper.makeConfirmIntentFlowProducer<A>(strategy:)();
  v61 = v24;

  RCHChildFlowProducersAsync.confirmIntentFlowProducer.setter();
  v63 = type metadata accessor for SendPaymentHandleIntentStrategy(v62);
  v107[1] = SendPaymentHandleIntentStrategy.__allocating_init()();
  lazy protocol witness table accessor for type SendPaymentHandleIntentStrategy and conformance BaseStrategy<A, B, C>();
  v64 = static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)();
  v65 = v25;

  RCHChildFlowProducersAsync.handleIntentFlowProducer.setter();
  (*(v85 + 32))(v81, v87, v83);
  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  return outlined destroy of Signpost.OpenSignpost(v94);
}

uint64_t FlowFactory.requestPaymentFlow(intent:)(void *a1)
{
  v16 = a1;
  v34 = 0;
  v33 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo22INRequestPaymentIntentCSo0ghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo22INRequestPaymentIntentCSo0ghI8ResponseCGMR);
  v8 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2, v3);
  v18 = &v8 - v8;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14RCHFlowFactoryVy0A15PaymentsIntents014RequestPaymentC8StrategyCGMd, &_s11SiriKitFlow14RCHFlowFactoryVy0A15PaymentsIntents014RequestPaymentC8StrategyCGMR);
  v22 = *(v24 - 8);
  v23 = v24 - 8;
  v9 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v16, v4);
  v25 = &v8 - v9;
  v34 = v5;
  v33 = v1;
  v10 = 0;
  v20 = type metadata accessor for RequestPaymentFlowStrategy(0);
  v11 = type metadata accessor for INRequestPaymentIntent();
  v12 = type metadata accessor for INRequestPaymentIntentResponse();
  v14 = v32;
  v13 = &protocol witness table for INRequestPaymentIntent;
  default argument 0 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v11, v12, v32);
  v15 = v31;
  default argument 1 of PaymentsRCHFlowStrategy.init(globals:contactResolver:)(v31);
  v6 = SendPaymentFlowStrategy.__allocating_init(globals:contactResolver:)(v14, v15);
  v21 = &v30;
  v30 = v6;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC7FactoryCySo22INRequestPaymentIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow08RCHChildC7FactoryCySo22INRequestPaymentIntentCSo0fgH8ResponseCGMR);
  FlowFactory.requestPaymentFlowProducers(intent:)(v16, v18);
  v19 = RCHChildFlowFactory.__allocating_init(producers:)();
  lazy protocol witness table accessor for type RequestPaymentFlowStrategy and conformance PaymentsRCHFlowStrategy<A, B>();
  RCHFlowFactory.init(strategy:childFlowFactory:)();
  v26 = RCHFlowFactory.makeAppResolvingRCHFlow()();
  (*(v22 + 8))(v25, v24);
  v29 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo22INRequestPaymentIntentCSo0hiJ8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo22INRequestPaymentIntentCSo0hiJ8ResponseCGGMR);
  lazy protocol witness table accessor for type AnyValueFlow<RCHFlowResult<INRequestPaymentIntent, INRequestPaymentIntentResponse>> and conformance AnyValueFlow<A>();
  v28 = Flow.eraseToAnyFlow()();

  return v28;
}

uint64_t FlowFactory.requestPaymentFlowProducers(intent:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a1;
  v81 = a2;
  v100 = 0;
  v119 = 0;
  v118 = 0;
  v117 = 0;
  v116 = 0;
  v82 = 0;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo22INRequestPaymentIntentCSo0ghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo22INRequestPaymentIntentCSo0ghI8ResponseCGMR);
  v84 = *(v83 - 8);
  v85 = v84;
  v86 = (*(v84 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v83);
  v87 = &v27 - v86;
  v119 = &v27 - v86;
  v97 = type metadata accessor for Logger();
  v88 = v97;
  v89 = *(v97 - 8);
  v96 = v89;
  v90 = v89;
  v2 = MEMORY[0x28223BE20](v100, v97);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v4;
  v93 = *(*(type metadata accessor for Signpost.OpenSignpost(v2) - 8) + 64);
  v6 = MEMORY[0x28223BE20](v92, v5);
  v95 = &v27 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v95;
  v118 = v95;
  v117 = v6;
  v116 = v7;
  v8 = SignpostName.makeRequestPaymentFlowProducers.unsafeMutableAddressor();
  static Signpost.begin(_:)(*v8, v8[1], *(v8 + 16), v95);
  v9 = Logger.payments.unsafeMutableAddressor();
  (*(v96 + 16))(v4, v9, v97);
  v102 = Logger.logObject.getter();
  v98 = v102;
  v101 = static os_log_type_t.debug.getter();
  v99 = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v103 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v102, v101))
  {
    v10 = v82;
    v72 = static UnsafeMutablePointer.allocate(capacity:)();
    v68 = v72;
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v70 = 0;
    v73 = createStorage<A>(capacity:type:)(0, v69, v69);
    v71 = v73;
    v74 = createStorage<A>(capacity:type:)(v70, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v107[0] = v72;
    v106 = v73;
    v105 = v74;
    v75 = 0;
    v76 = v107;
    serialize(_:at:)(0, v107);
    serialize(_:at:)(v75, v76);
    v104 = v103;
    v77 = &v27;
    MEMORY[0x28223BE20](&v27, v11);
    v78 = &v27 - 6;
    *(&v27 - 4) = v12;
    *(&v27 - 3) = &v106;
    *(&v27 - 2) = &v105;
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v80 = v10;
    if (v10)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_2686B1000, v98, v99, "#requestPaymentFlowProducers init", v68, 2u);
      v66 = 0;
      destroyStorage<A>(_:count:)(v71, 0, v69);
      destroyStorage<A>(_:count:)(v74, v66, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v68, MEMORY[0x277D84B78]);

      v67 = v80;
    }
  }

  else
  {

    v67 = v82;
  }

  (*(v90 + 8))(v91, v88);
  v62 = 0;
  v37 = type metadata accessor for INRequestPaymentIntent();
  v38 = type metadata accessor for INRequestPaymentIntentResponse();
  RCHChildFlowProducersAsync.init()();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriPaymentsIntents0B25AppResolutionFlowStrategyCySo22INRequestPaymentIntentCGMd, &_s19SiriPaymentsIntents0B25AppResolutionFlowStrategyCySo22INRequestPaymentIntentCGMR);
  v39 = &protocol witness table for INRequestPaymentIntent;
  v30 = default argument 0 of PaymentsAppResolutionFlowStrategy.init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)(v37, &protocol witness table for INRequestPaymentIntent, v13, v14);
  v27 = v115;
  default argument 1 of PaymentsAppResolutionFlowStrategy.init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)(v37, v115);
  v28 = v114;
  default argument 2 of PaymentsAppResolutionFlowStrategy.init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)(v114);
  v29 = &v113;
  default argument 3 of PaymentsAppResolutionFlowStrategy.init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)();
  v15 = default argument 4 of PaymentsAppResolutionFlowStrategy.init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)(v37);
  v112 = PaymentsAppResolutionFlowStrategy.__allocating_init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)(v30, v27, v28, v29, v15);
  lazy protocol witness table accessor for type PaymentsAppResolutionFlowStrategy<INRequestPaymentIntent> and conformance PaymentsAppResolutionFlowStrategy<A>();
  v32 = static RCHChildFlowFactoryHelper.makeAppResolutionFlowProducer<A, B, C>(strategy:)();
  v33 = v16;

  RCHChildFlowProducersAsync.appResolutionFlowProducer.setter();
  v34 = type metadata accessor for RequestTCCHandleStrategy(v62);
  v17 = v92;
  v111 = RequestTCCHandleStrategy.__allocating_init(previousIntent:)(v92);
  lazy protocol witness table accessor for type RequestTCCHandleStrategy and conformance TCCHandleStrategy<A, B, C>();
  v35 = static RCHChildFlowFactoryHelper.makeRequestTCCAcceptanceFlow<A, B>(strategy:)();
  v36 = v18;

  RCHChildFlowProducersAsync.requestTCCAcceptanceFlowProducer.setter();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriPaymentsIntents0B21ContinueInAppStrategyCySo22INRequestPaymentIntentCSo0hiJ8ResponseCGMd, &_s19SiriPaymentsIntents0B21ContinueInAppStrategyCySo22INRequestPaymentIntentCSo0hiJ8ResponseCGMR);
  v40 = &protocol witness table for INRequestPaymentIntentResponse;
  v41 = v110;
  default argument 0 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v37, v38, v110);
  v42 = v109;
  default argument 1 of PaymentsContinueInAppStrategy.init(globals:commonLabelsProvider:errorTemplateProvider:)(v37, v109);
  v43 = v108;
  default argument 2 of PaymentsContinueInAppStrategy.init(globals:commonLabelsProvider:errorTemplateProvider:)(v37, v38, v39, v40, v108);
  v107[7] = PaymentsContinueInAppStrategy.__allocating_init(globals:commonLabelsProvider:errorTemplateProvider:)(v41, v42, v43);
  lazy protocol witness table accessor for type PaymentsContinueInAppStrategy<INRequestPaymentIntent, INRequestPaymentIntentResponse> and conformance PaymentsContinueInAppStrategy<A, B>();
  v45 = static RCHChildFlowFactoryHelper.makeContinueInAppFlowWithDialogProducer<A>(strategy:)();
  v46 = v19;

  RCHChildFlowProducersAsync.continueInAppFlowProducer.setter();
  v47 = type metadata accessor for RequestPaymentUnsupportedValueStrategy(v62);
  v107[6] = RequestPaymentUnsupportedValueStrategy.__allocating_init()();
  lazy protocol witness table accessor for type RequestPaymentUnsupportedValueStrategy and conformance RequestPaymentUnsupportedValueStrategy();
  v48 = static RCHChildFlowFactoryHelper.makeUnsupportedValueAndPromptFlowProducer<A>(strategy:)();
  v49 = v20;

  RCHChildFlowProducersAsync.unsupportedValueFlowProducer.setter();
  v50 = type metadata accessor for RequestPaymentNeedsValueStrategy(v62);
  v107[5] = RequestPaymentNeedsValueStrategy.__allocating_init()();
  lazy protocol witness table accessor for type RequestPaymentNeedsValueStrategy and conformance RequestPaymentNeedsValueStrategy();
  v51 = static RCHChildFlowFactoryHelper.makeNeedsValueFlowProducer<A>(strategy:)();
  v52 = v21;

  RCHChildFlowProducersAsync.needsValueFlowProducer.setter();
  v53 = type metadata accessor for PayerDisambiguationStrategy(v62);
  v107[4] = PayerDisambiguationStrategy.__allocating_init()();
  lazy protocol witness table accessor for type PayerDisambiguationStrategy and conformance ContactDisambiguationStrategy<A, B, C>();
  v54 = static RCHChildFlowFactoryHelper.makeNeedsDisambiguationFlowProducer<A>(strategy:)();
  v55 = v22;

  RCHChildFlowProducersAsync.needsDisambiguationFlowProducer.setter();
  v56 = type metadata accessor for RequestPaymentNeedsConfirmationFlowStrategy(v62);
  v107[3] = RequestPaymentNeedsConfirmationFlowStrategy.__allocating_init()();
  lazy protocol witness table accessor for type RequestPaymentNeedsConfirmationFlowStrategy and conformance PaymentsNeedsConfirmationFlowStrategy<A, B, C>();
  v57 = static RCHChildFlowFactoryHelper.makeNeedsConfirmationFlowProducer<A>(strategy:)();
  v58 = v23;

  RCHChildFlowProducersAsync.needsConfirmationFlowProducer.setter();
  v59 = type metadata accessor for RequestPaymentConfirmIntentStrategy(v62);
  v107[2] = RequestPaymentConfirmIntentStrategy.__allocating_init()();
  lazy protocol witness table accessor for type RequestPaymentConfirmIntentStrategy and conformance RequestPaymentConfirmIntentStrategy();
  v60 = static RCHChildFlowFactoryHelper.makeConfirmIntentFlowProducer<A>(strategy:)();
  v61 = v24;

  RCHChildFlowProducersAsync.confirmIntentFlowProducer.setter();
  v63 = type metadata accessor for RequestPaymentHandleIntentStrategy(v62);
  v107[1] = RequestPaymentHandleIntentStrategy.__allocating_init()();
  lazy protocol witness table accessor for type RequestPaymentHandleIntentStrategy and conformance BaseStrategy<A, B, C>();
  v64 = static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)();
  v65 = v25;

  RCHChildFlowProducersAsync.handleIntentFlowProducer.setter();
  (*(v85 + 32))(v81, v87, v83);
  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  return outlined destroy of Signpost.OpenSignpost(v94);
}

uint64_t FlowFactory.searchForAccountsFlow(intent:)(uint64_t a1)
{
  v16 = a1;
  v34 = 0;
  v33 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo25INSearchForAccountsIntentCSo0ghiJ8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo25INSearchForAccountsIntentCSo0ghiJ8ResponseCGMR);
  v8 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2, v3);
  v18 = &v8 - v8;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14RCHFlowFactoryVy0A15PaymentsIntents017SearchForAccountsC8StrategyCGMd, &_s11SiriKitFlow14RCHFlowFactoryVy0A15PaymentsIntents017SearchForAccountsC8StrategyCGMR);
  v22 = *(v24 - 8);
  v23 = v24 - 8;
  v9 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v16, v4);
  v25 = &v8 - v9;
  v34 = v5;
  v33 = v1;
  v10 = 0;
  v20 = type metadata accessor for SearchForAccountsFlowStrategy(0);
  v11 = type metadata accessor for INSearchForAccountsIntent();
  v12 = type metadata accessor for INSearchForAccountsIntentResponse();
  v14 = v32;
  v13 = &protocol witness table for INSearchForAccountsIntent;
  default argument 0 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v11, v12, v32);
  v15 = v31;
  default argument 1 of PaymentsRCHFlowStrategy.init(globals:contactResolver:)(v31);
  v6 = SendPaymentFlowStrategy.__allocating_init(globals:contactResolver:)(v14, v15);
  v21 = &v30;
  v30 = v6;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC7FactoryCySo25INSearchForAccountsIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC7FactoryCySo25INSearchForAccountsIntentCSo0fghI8ResponseCGMR);
  FlowFactory.searchForAccountsFlowProducers(intent:)(v16, v18);
  v19 = RCHChildFlowFactory.__allocating_init(producers:)();
  lazy protocol witness table accessor for type SearchForAccountsFlowStrategy and conformance PaymentsRCHFlowStrategy<A, B>();
  RCHFlowFactory.init(strategy:childFlowFactory:)();
  v26 = RCHFlowFactory.makeAppResolvingRCHFlow()();
  (*(v22 + 8))(v25, v24);
  v29 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo25INSearchForAccountsIntentCSo0hijK8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo25INSearchForAccountsIntentCSo0hijK8ResponseCGGMR);
  lazy protocol witness table accessor for type AnyValueFlow<RCHFlowResult<INSearchForAccountsIntent, INSearchForAccountsIntentResponse>> and conformance AnyValueFlow<A>();
  v28 = Flow.eraseToAnyFlow()();

  return v28;
}

uint64_t FlowFactory.searchForAccountsFlowProducers(intent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v53 = a1;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo25INSearchForAccountsIntentCSo0ghiJ8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo25INSearchForAccountsIntentCSo0ghiJ8ResponseCGMR);
  v64 = *(v68 - 8);
  v65 = v68 - 8;
  v23 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v67 = &v22 - v23;
  v83 = &v22 - v23;
  v82 = MEMORY[0x28223BE20](v53, v3);
  v81 = v2;
  v59 = 0;
  v30 = type metadata accessor for INSearchForAccountsIntent();
  v55 = type metadata accessor for INSearchForAccountsIntentResponse();
  RCHChildFlowProducersAsync.init()();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriPaymentsIntents0B25AppResolutionFlowStrategyCySo25INSearchForAccountsIntentCGMd, &_s19SiriPaymentsIntents0B25AppResolutionFlowStrategyCySo25INSearchForAccountsIntentCGMR);
  v24 = &protocol witness table for INSearchForAccountsIntent;
  v28 = default argument 0 of PaymentsAppResolutionFlowStrategy.init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)(v30, &protocol witness table for INSearchForAccountsIntent, v4, v5);
  v25 = v80;
  default argument 1 of PaymentsAppResolutionFlowStrategy.init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)(v30, v80);
  v26 = v79;
  default argument 2 of PaymentsAppResolutionFlowStrategy.init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)(v79);
  v27 = &v78;
  default argument 3 of PaymentsAppResolutionFlowStrategy.init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)();
  v6 = default argument 4 of PaymentsAppResolutionFlowStrategy.init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)(v30);
  v7 = PaymentsAppResolutionFlowStrategy.__allocating_init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)(v28, v25, v26, v27, v6);
  v31 = &v77;
  v77 = v7;
  lazy protocol witness table accessor for type PaymentsAppResolutionFlowStrategy<INSearchForAccountsIntent> and conformance PaymentsAppResolutionFlowStrategy<A>();
  v32 = static RCHChildFlowFactoryHelper.makeAppResolutionFlowProducer<A, B, C>(strategy:)();
  v33 = v8;

  RCHChildFlowProducersAsync.appResolutionFlowProducer.setter();
  v34 = type metadata accessor for SearchForAccountsContinueInAppStrategy(v59);
  v9 = SearchForAccountsContinueInAppStrategy.__allocating_init()();
  v35 = &v76;
  v76 = v9;
  lazy protocol witness table accessor for type SearchForAccountsContinueInAppStrategy and conformance SearchForAccountsContinueInAppStrategy();
  v36 = static RCHChildFlowFactoryHelper.makeContinueInAppFlowWithDialogProducer<A>(strategy:)();
  v37 = v10;

  RCHChildFlowProducersAsync.continueInAppFlowProducer.setter();
  v38 = type metadata accessor for SearchForAccountsHandleIntentStrategy(v59);
  v11 = SearchForAccountsHandleIntentStrategy.__allocating_init()();
  v39 = &v75;
  v75 = v11;
  lazy protocol witness table accessor for type SearchForAccountsHandleIntentStrategy and conformance BaseStrategy<A, B, C>();
  v40 = static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)();
  v41 = v12;

  RCHChildFlowProducersAsync.handleIntentFlowProducer.setter();
  v45 = type metadata accessor for SearchForAccountsNeedsConfirmationStrategy();
  v42 = v74;
  default argument 0 of SearchForAccountsNeedsConfirmationStrategy.init(globals:catFamily:commonLabelsProvider:)(v74);
  v43 = default argument 1 of SearchForAccountsNeedsConfirmationStrategy.init(globals:catFamily:commonLabelsProvider:)();
  v44 = v73;
  default argument 2 of SearchForAccountsNeedsConfirmationStrategy.init(globals:catFamily:commonLabelsProvider:)(v43, v73);
  v13 = SearchForAccountsNeedsConfirmationStrategy.__allocating_init(globals:catFamily:commonLabelsProvider:)(v42, v43, v44);
  v46 = &v72;
  v72 = v13;
  lazy protocol witness table accessor for type SearchForAccountsNeedsConfirmationStrategy and conformance SearchForAccountsNeedsConfirmationStrategy();
  v47 = static RCHChildFlowFactoryHelper.makeNeedsConfirmationFlowProducer<A>(strategy:)();
  v48 = v14;

  RCHChildFlowProducersAsync.needsConfirmationFlowProducer.setter();
  v49 = type metadata accessor for SearchForAccountsNeedsValueStrategy(v59);
  v15 = SearchForAccountsNeedsValueStrategy.__allocating_init()();
  v50 = &v71;
  v71 = v15;
  lazy protocol witness table accessor for type SearchForAccountsNeedsValueStrategy and conformance SearchForAccountsNeedsValueStrategy();
  v51 = static RCHChildFlowFactoryHelper.makeNeedsValueFlowProducer<A>(strategy:)();
  v52 = v16;

  RCHChildFlowProducersAsync.needsValueFlowProducer.setter();
  v54 = type metadata accessor for SearchForAccountsTCCHandleStrategy(v59);
  MEMORY[0x277D82BE0](v53);
  v17 = SearchForAccountsTCCHandleStrategy.__allocating_init(previousIntent:)(v53);
  v56 = &v70;
  v70 = v17;
  lazy protocol witness table accessor for type SearchForAccountsTCCHandleStrategy and conformance TCCHandleStrategy<A, B, C>();
  v57 = static RCHChildFlowFactoryHelper.makeRequestTCCAcceptanceFlow<A, B>(strategy:)();
  v58 = v18;

  RCHChildFlowProducersAsync.requestTCCAcceptanceFlowProducer.setter();
  v60 = type metadata accessor for SearchForAccountsUnsupportedValueStrategy(v59);
  v19 = SearchForAccountsUnsupportedValueStrategy.__allocating_init()();
  v61 = &v69;
  v69 = v19;
  lazy protocol witness table accessor for type SearchForAccountsUnsupportedValueStrategy and conformance SearchForAccountsUnsupportedValueStrategy();
  v62 = static RCHChildFlowFactoryHelper.makeUnsupportedValueAndCancelFlowProducer<A>(strategy:)();
  v63 = v20;

  RCHChildFlowProducersAsync.unsupportedValueFlowProducer.setter();
  return (*(v64 + 32))(v66, v67, v68);
}

uint64_t default argument 0 of SearchForAccountsNeedsConfirmationStrategy.init(globals:catFamily:commonLabelsProvider:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Globals();
  default argument 0 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v7);
  default argument 1 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  default argument 2 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  default argument 3 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  result = Globals.__allocating_init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v7, v6, v5, v4);
  a1[3] = v2;
  a1[4] = &protocol witness table for Globals;
  *a1 = result;
  return result;
}

uint64_t default argument 1 of SearchForAccountsNeedsConfirmationStrategy.init(globals:catFamily:commonLabelsProvider:)()
{
  v6 = 0;
  v4 = (*(*(type metadata accessor for CATOption() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](0, v0);
  v5 = &v3 - v4;
  type metadata accessor for SearchForAccountsCATs(v1);
  default argument 0 of CATWrapper.init(options:globals:)();
  return CATWrapper.__allocating_init(options:globals:)();
}

NSJSONWritingOptions default argument 2 of SearchForAccountsNeedsConfirmationStrategy.init(globals:catFamily:commonLabelsProvider:)@<X0>(Swift::UInt a1@<X0>, uint64_t a2@<X8>)
{
  result = NSJSONWritingOptions.init(rawValue:)(a1);
  *(a2 + 24) = &type metadata for CommonLabelsProvider;
  *(a2 + 32) = &protocol witness table for CommonLabelsProvider;
  return result;
}

uint64_t FlowFactory.makeApplyForAppleCardFlow()()
{
  type metadata accessor for SimpleOutputFlowAsync();

  default argument 3 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  SimpleOutputFlowAsync.__allocating_init(outputPublisher:outputGenerator:)();
  v1 = Flow.eraseToAnyFlow()();

  return v1;
}

uint64_t closure #1 in FlowFactory.makeApplyForAppleCardFlow()(uint64_t a1, uint64_t a2)
{
  v2[107] = a2;
  v2[106] = a1;
  v2[101] = v2;
  v2[102] = 0;
  v2[103] = 0;
  v2[104] = 0;
  v2[105] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v2[108] = swift_task_alloc();
  v3 = type metadata accessor for TemplatingResult();
  v2[109] = v3;
  v2[110] = *(v3 - 8);
  v2[111] = swift_task_alloc();
  v2[112] = swift_task_alloc();
  v2[113] = swift_task_alloc();
  v2[114] = swift_task_alloc();
  v2[115] = swift_task_alloc();
  v2[116] = swift_task_alloc();
  v4 = type metadata accessor for Locale();
  v2[117] = v4;
  v2[118] = *(v4 - 8);
  v2[119] = swift_task_alloc();
  type metadata accessor for CATOption();
  v2[120] = swift_task_alloc();
  v2[102] = a2;

  return MEMORY[0x2822009F8](closure #1 in FlowFactory.makeApplyForAppleCardFlow(), 0);
}

uint64_t closure #1 in FlowFactory.makeApplyForAppleCardFlow()()
{
  v18 = *(v0 + 952);
  v17 = *(v0 + 944);
  v19 = *(v0 + 936);
  *(v0 + 808) = v0;
  type metadata accessor for SearchForCardInfoCATs(0);
  default argument 0 of CATWrapper.init(options:globals:)();
  v16 = CATWrapper.__allocating_init(options:globals:)();
  *(v0 + 968) = v16;
  *(v0 + 824) = v16;
  static Locale.current.getter();
  v20 = Locale.identifier.getter();
  v21 = v1;
  (*(v17 + 8))(v18, v19);
  *(v0 + 776) = v20;
  *(v0 + 784) = v21;
  *(v0 + 792) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_US", 3uLL, 1);
  lazy protocol witness table accessor for type String and conformance String();
  v22 = StringProtocol.contains<A>(_:)();
  outlined destroy of String.UTF8View(v0 + 792);
  outlined destroy of String.UTF8View(v0 + 776);
  if (v22)
  {
    outlined init with copy of GlobalsProviding(v15[107] + 16, (v15 + 42));
    __swift_project_boxed_opaque_existential_1(v15 + 42, v15[45]);
    v14 = dispatch thunk of DeviceState.isPhone.getter();

    if (v14)
    {

      __swift_destroy_boxed_opaque_existential_0(v15 + 42);
    }

    else
    {
      outlined init with copy of GlobalsProviding(v15[107] + 16, (v15 + 47));
      __swift_project_boxed_opaque_existential_1(v15 + 47, v15[50]);
      v13 = dispatch thunk of DeviceState.isPad.getter();
      __swift_destroy_boxed_opaque_existential_0(v15 + 47);

      __swift_destroy_boxed_opaque_existential_0(v15 + 42);

      if ((v13 & 1) == 0)
      {
        outlined init with copy of GlobalsProviding(v15[107] + 16, (v15 + 52));
        __swift_project_boxed_opaque_existential_1(v15 + 52, v15[55]);
        v12 = dispatch thunk of DeviceState.isPod.getter();
        __swift_destroy_boxed_opaque_existential_0(v15 + 52);

        if ((v12 & 1) == 0)
        {
LABEL_11:
          v5 = swift_task_alloc();
          v15[126] = v5;
          *v5 = v15[101];
          v5[1] = closure #1 in FlowFactory.makeApplyForAppleCardFlow();
          v6 = v15[114];

          return SearchForCardInfoCATs.unsupportedDevice()(v6);
        }

LABEL_7:
        outlined init with copy of GlobalsProviding(v15[107] + 16, (v15 + 72));
        __swift_project_boxed_opaque_existential_1(v15 + 72, v15[75]);
        v11 = dispatch thunk of DeviceState.isCarPlay.getter();
        __swift_destroy_boxed_opaque_existential_0(v15 + 72);
        if ((v11 & 1) == 0)
        {
          v2 = swift_task_alloc();
          v15[122] = v2;
          *v2 = v15[101];
          v2[1] = closure #1 in FlowFactory.makeApplyForAppleCardFlow();
          v3 = v15[116];

          return SearchForCardInfoCATs.apply()(v3);
        }

        goto LABEL_11;
      }
    }

    goto LABEL_7;
  }

  outlined init with copy of GlobalsProviding(v15[107] + 16, (v15 + 2));
  __swift_project_boxed_opaque_existential_1(v15 + 2, v15[5]);
  v10 = dispatch thunk of DeviceState.isWatch.getter();
  __swift_destroy_boxed_opaque_existential_0(v15 + 2);
  if (v10)
  {
    v7 = swift_task_alloc();
    v15[128] = v7;
    *v7 = v15[101];
    v7[1] = closure #1 in FlowFactory.makeApplyForAppleCardFlow();
    v6 = v15[113];

    return SearchForCardInfoCATs.unsupportedDevice()(v6);
  }

  v8 = swift_task_alloc();
  v15[130] = v8;
  *v8 = v15[101];
  v8[1] = closure #1 in FlowFactory.makeApplyForAppleCardFlow();
  v9 = v15[112];

  return SearchForCardInfoCATs.unsupportedLocale()(v9);
}

{
  v7 = *v1;
  v5 = *v1 + 16;
  v6 = (*v1 + 808);
  *(v7 + 808) = *v1;
  *(v7 + 984) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](closure #1 in FlowFactory.makeApplyForAppleCardFlow(), 0);
  }

  else
  {
    v2 = swift_task_alloc();
    *(v5 + 976) = v2;
    *v2 = *v6;
    v2[1] = closure #1 in FlowFactory.makeApplyForAppleCardFlow();
    v3 = *(v5 + 904);

    return SearchForCardInfoCATs.openWallet()(v3);
  }
}

{
  v4 = *v1;
  *(v4 + 808) = *v1;
  *(v4 + 1000) = v0;

  if (v0)
  {
    v2 = closure #1 in FlowFactory.makeApplyForAppleCardFlow();
  }

  else
  {
    v2 = closure #1 in FlowFactory.makeApplyForAppleCardFlow();
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v16 = v0[116];
  v15 = v0[115];
  v14 = v0[110];
  v17 = v0[109];
  v13 = v0[108];
  v11 = v0[107];
  v12 = v0[106];
  v0[101] = v0;
  type metadata accessor for SAAceView();
  _allocateUninitializedArray<A>(_:)();
  v10 = v1;
  v7 = TemplatingResult.resultSectionsAsString.getter();
  v8 = v2;
  outlined init with copy of GlobalsProviding(v11 + 16, (v0 + 77));
  v9 = static ConfirmationViewBuilder.makeWalletAppLaunchButton(launchAction:buttonText:deviceState:)(0, v7, v8, v0 + 77);
  __swift_destroy_boxed_opaque_existential_0(v0 + 77);

  *v10 = v9;
  _finalizeUninitializedArray<A>(_:)();
  v0[105] = v3;
  outlined init with copy of GlobalsProviding(v11 + 16, (v0 + 82));
  outlined init with copy of GlobalsProviding(v11 + 16, (v0 + 87));
  __swift_project_boxed_opaque_existential_1(v0 + 87, v0[90]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v4 = type metadata accessor for NLContextUpdate();
  (*(*(v4 - 8) + 56))(v13, 1);
  v0[92] = 0;
  v0[93] = 0;
  v0[94] = 0;
  v0[95] = 0;
  v0[96] = 0;
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v12[3] = type metadata accessor for AceOutput();
  v12[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v12);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 92);
  outlined destroy of NLContextUpdate?(v13);
  __swift_destroy_boxed_opaque_existential_0(v0 + 87);
  __swift_destroy_boxed_opaque_existential_0(v0 + 82);

  v18 = *(v14 + 8);
  v18(v15, v17);
  v18(v16, v17);

  v5 = *(v0[101] + 8);

  return v5();
}

{
  v4 = *v1;
  *(v4 + 808) = *v1;
  *(v4 + 1016) = v0;

  if (v0)
  {
    v2 = closure #1 in FlowFactory.makeApplyForAppleCardFlow();
  }

  else
  {
    v2 = closure #1 in FlowFactory.makeApplyForAppleCardFlow();
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v8 = v0[114];
  v7 = v0[110];
  v9 = v0[109];
  v6 = v0[108];
  v4 = v0[107];
  v5 = v0[106];
  v0[101] = v0;
  outlined init with copy of GlobalsProviding(v4 + 16, (v0 + 57));
  outlined init with copy of GlobalsProviding(v4 + 16, (v0 + 62));
  __swift_project_boxed_opaque_existential_1(v0 + 62, v0[65]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v1 = type metadata accessor for NLContextUpdate();
  (*(*(v1 - 8) + 56))(v6, 1);
  v0[67] = 0;
  v0[68] = 0;
  v0[69] = 0;
  v0[70] = 0;
  v0[71] = 0;
  default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v5[3] = type metadata accessor for AceOutput();
  v5[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v5);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 67);
  outlined destroy of NLContextUpdate?(v6);
  __swift_destroy_boxed_opaque_existential_0(v0 + 62);
  __swift_destroy_boxed_opaque_existential_0(v0 + 57);
  (*(v7 + 8))(v8, v9);

  v2 = *(v0[101] + 8);

  return v2();
}

{
  v4 = *v1;
  *(v4 + 808) = *v1;
  *(v4 + 1032) = v0;

  if (v0)
  {
    v2 = closure #1 in FlowFactory.makeApplyForAppleCardFlow();
  }

  else
  {
    v2 = closure #1 in FlowFactory.makeApplyForAppleCardFlow();
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v8 = v0[113];
  v7 = v0[110];
  v9 = v0[109];
  v6 = v0[108];
  v4 = v0[107];
  v5 = v0[106];
  v0[101] = v0;
  outlined init with copy of GlobalsProviding(v4 + 16, (v0 + 27));
  outlined init with copy of GlobalsProviding(v4 + 16, (v0 + 32));
  __swift_project_boxed_opaque_existential_1(v0 + 32, v0[35]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v1 = type metadata accessor for NLContextUpdate();
  (*(*(v1 - 8) + 56))(v6, 1);
  v0[37] = 0;
  v0[38] = 0;
  v0[39] = 0;
  v0[40] = 0;
  v0[41] = 0;
  default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v5[3] = type metadata accessor for AceOutput();
  v5[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v5);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 37);
  outlined destroy of NLContextUpdate?(v6);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  (*(v7 + 8))(v8, v9);

  v2 = *(v0[101] + 8);

  return v2();
}

{
  v7 = *v1;
  v5 = *v1 + 16;
  v6 = (*v1 + 808);
  *(v7 + 808) = *v1;
  *(v7 + 1048) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](closure #1 in FlowFactory.makeApplyForAppleCardFlow(), 0);
  }

  else
  {
    v2 = swift_task_alloc();
    *(v5 + 1040) = v2;
    *v2 = *v6;
    v2[1] = closure #1 in FlowFactory.makeApplyForAppleCardFlow();
    v3 = *(v5 + 872);

    return SearchForCardInfoCATs.openAppleWebsite()(v3);
  }
}

{
  v4 = *v1;
  *(v4 + 808) = *v1;
  *(v4 + 1064) = v0;

  if (v0)
  {
    v2 = closure #1 in FlowFactory.makeApplyForAppleCardFlow();
  }

  else
  {
    v2 = closure #1 in FlowFactory.makeApplyForAppleCardFlow();
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v19 = v0[112];
  v18 = v0[111];
  v17 = v0[110];
  v20 = v0[109];
  v16 = v0[108];
  v14 = v0[107];
  v15 = v0[106];
  v0[101] = v0;
  type metadata accessor for SAAceView();
  _allocateUninitializedArray<A>(_:)();
  v13 = v1;
  v2 = String.APPLE_CARD_WEB_PAGE_LINK.unsafeMutableAddressor();
  v9 = *v2;
  v11 = v2[1];

  v8 = TemplatingResult.resultSectionsAsString.getter();
  v10 = v3;
  outlined init with copy of GlobalsProviding(v14 + 16, (v0 + 7));
  v12 = static ConfirmationViewBuilder.makeWebPunchoutButton(for:buttonText:deviceState:)(v9, v11, v8, v10, v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  *v13 = v12;
  _finalizeUninitializedArray<A>(_:)();
  v0[104] = v4;
  outlined init with copy of GlobalsProviding(v14 + 16, (v0 + 12));
  outlined init with copy of GlobalsProviding(v14 + 16, (v0 + 17));
  __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v5 = type metadata accessor for NLContextUpdate();
  (*(*(v5 - 8) + 56))(v16, 1);
  v0[22] = 0;
  v0[23] = 0;
  v0[24] = 0;
  v0[25] = 0;
  v0[26] = 0;
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v15[3] = type metadata accessor for AceOutput();
  v15[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v15);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 22);
  outlined destroy of NLContextUpdate?(v16);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  v21 = *(v17 + 8);
  v21(v18, v20);
  v21(v19, v20);

  v6 = *(v0[101] + 8);

  return v6();
}

{
  *(v0 + 808) = v0;

  v1 = *(*(v0 + 808) + 8);

  return v1();
}

{
  *(v0 + 808) = v0;

  v1 = *(*(v0 + 808) + 8);

  return v1();
}

{
  v1 = v0[112];
  v2 = v0[110];
  v3 = v0[109];
  v0[101] = v0;
  (*(v2 + 8))(v1, v3);

  v4 = *(v0[101] + 8);

  return v4();
}

{
  *(v0 + 808) = v0;

  v1 = *(*(v0 + 808) + 8);

  return v1();
}

{
  v1 = v0[116];
  v2 = v0[110];
  v3 = v0[109];
  v0[101] = v0;
  (*(v2 + 8))(v1, v3);

  v4 = *(v0[101] + 8);

  return v4();
}

{
  *(v0 + 808) = v0;

  v1 = *(*(v0 + 808) + 8);

  return v1();
}

uint64_t FlowFactory.makeLearnAboutAppleCardFlow()()
{
  type metadata accessor for SimpleOutputFlowAsync();

  default argument 3 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  SimpleOutputFlowAsync.__allocating_init(outputPublisher:outputGenerator:)();
  v1 = Flow.eraseToAnyFlow()();

  return v1;
}

uint64_t closure #1 in FlowFactory.makeLearnAboutAppleCardFlow()(uint64_t a1, uint64_t a2)
{
  v2[97] = a2;
  v2[96] = a1;
  v2[91] = v2;
  v2[92] = 0;
  v2[93] = 0;
  v2[94] = 0;
  v2[95] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v2[98] = swift_task_alloc();
  v3 = type metadata accessor for TemplatingResult();
  v2[99] = v3;
  v2[100] = *(v3 - 8);
  v2[101] = swift_task_alloc();
  v2[102] = swift_task_alloc();
  v2[103] = swift_task_alloc();
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();
  v2[106] = swift_task_alloc();
  v4 = type metadata accessor for Locale();
  v2[107] = v4;
  v2[108] = *(v4 - 8);
  v2[109] = swift_task_alloc();
  type metadata accessor for CATOption();
  v2[110] = swift_task_alloc();
  v2[92] = a2;

  return MEMORY[0x2822009F8](closure #1 in FlowFactory.makeLearnAboutAppleCardFlow(), 0);
}

uint64_t closure #1 in FlowFactory.makeLearnAboutAppleCardFlow()()
{
  v16 = *(v0 + 872);
  v15 = *(v0 + 864);
  v17 = *(v0 + 856);
  *(v0 + 728) = v0;
  type metadata accessor for SearchForCardInfoCATs(0);
  default argument 0 of CATWrapper.init(options:globals:)();
  v14 = CATWrapper.__allocating_init(options:globals:)();
  *(v0 + 888) = v14;
  *(v0 + 744) = v14;
  static Locale.current.getter();
  v18 = Locale.identifier.getter();
  v19 = v1;
  (*(v15 + 8))(v16, v17);
  *(v0 + 696) = v18;
  *(v0 + 704) = v19;
  *(v0 + 712) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_US", 3uLL, 1);
  lazy protocol witness table accessor for type String and conformance String();
  v20 = StringProtocol.contains<A>(_:)();
  outlined destroy of String.UTF8View(v0 + 712);
  outlined destroy of String.UTF8View(v0 + 696);
  if (v20)
  {
    outlined init with copy of GlobalsProviding(v13[97] + 16, (v13 + 42));
    __swift_project_boxed_opaque_existential_1(v13 + 42, v13[45]);
    v12 = dispatch thunk of DeviceState.isPhone.getter();

    if ((v12 & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_0(v13 + 42);
      goto LABEL_9;
    }

    outlined init with copy of GlobalsProviding(v13[97] + 16, (v13 + 82));
    __swift_project_boxed_opaque_existential_1(v13 + 82, v13[85]);
    v11 = dispatch thunk of DeviceState.isCarPlay.getter();
    __swift_destroy_boxed_opaque_existential_0(v13 + 82);

    __swift_destroy_boxed_opaque_existential_0(v13 + 42);
    if (v11)
    {
LABEL_9:
      v5 = swift_task_alloc();
      v13[116] = v5;
      *v5 = v13[91];
      v5[1] = closure #1 in FlowFactory.makeLearnAboutAppleCardFlow();
      v6 = v13[104];

      return SearchForCardInfoCATs.unsupportedDevice()(v6);
    }

    v2 = swift_task_alloc();
    v13[112] = v2;
    *v2 = v13[91];
    v2[1] = closure #1 in FlowFactory.makeLearnAboutAppleCardFlow();
    v3 = v13[106];

    return SearchForCardInfoCATs.learn()(v3);
  }

  else
  {
    outlined init with copy of GlobalsProviding(v13[97] + 16, (v13 + 2));
    __swift_project_boxed_opaque_existential_1(v13 + 2, v13[5]);
    v10 = dispatch thunk of DeviceState.isWatch.getter();
    __swift_destroy_boxed_opaque_existential_0(v13 + 2);
    if (v10)
    {
      v7 = swift_task_alloc();
      v13[118] = v7;
      *v7 = v13[91];
      v7[1] = closure #1 in FlowFactory.makeLearnAboutAppleCardFlow();
      v6 = v13[103];

      return SearchForCardInfoCATs.unsupportedDevice()(v6);
    }

    v8 = swift_task_alloc();
    v13[120] = v8;
    *v8 = v13[91];
    v8[1] = closure #1 in FlowFactory.makeLearnAboutAppleCardFlow();
    v9 = v13[102];

    return SearchForCardInfoCATs.unsupportedLocale()(v9);
  }
}

{
  v7 = *v1;
  v5 = *v1 + 16;
  v6 = (*v1 + 728);
  *(v7 + 728) = *v1;
  *(v7 + 904) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](closure #1 in FlowFactory.makeLearnAboutAppleCardFlow(), 0);
  }

  else
  {
    v2 = swift_task_alloc();
    *(v5 + 896) = v2;
    *v2 = *v6;
    v2[1] = closure #1 in FlowFactory.makeLearnAboutAppleCardFlow();
    v3 = *(v5 + 824);

    return SearchForCardInfoCATs.openWallet()(v3);
  }
}

{
  v4 = *v1;
  *(v4 + 728) = *v1;
  *(v4 + 920) = v0;

  if (v0)
  {
    v2 = closure #1 in FlowFactory.makeLearnAboutAppleCardFlow();
  }

  else
  {
    v2 = closure #1 in FlowFactory.makeLearnAboutAppleCardFlow();
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v16 = v0[106];
  v15 = v0[105];
  v14 = v0[100];
  v17 = v0[99];
  v13 = v0[98];
  v11 = v0[97];
  v12 = v0[96];
  v0[91] = v0;
  type metadata accessor for SAAceView();
  _allocateUninitializedArray<A>(_:)();
  v10 = v1;
  v7 = TemplatingResult.resultSectionsAsString.getter();
  v8 = v2;
  outlined init with copy of GlobalsProviding(v11 + 16, (v0 + 62));
  v9 = static ConfirmationViewBuilder.makeWalletAppLaunchButton(launchAction:buttonText:deviceState:)(1u, v7, v8, v0 + 62);
  __swift_destroy_boxed_opaque_existential_0(v0 + 62);

  *v10 = v9;
  _finalizeUninitializedArray<A>(_:)();
  v0[95] = v3;
  outlined init with copy of GlobalsProviding(v11 + 16, (v0 + 67));
  outlined init with copy of GlobalsProviding(v11 + 16, (v0 + 72));
  __swift_project_boxed_opaque_existential_1(v0 + 72, v0[75]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v4 = type metadata accessor for NLContextUpdate();
  (*(*(v4 - 8) + 56))(v13, 1);
  v0[77] = 0;
  v0[78] = 0;
  v0[79] = 0;
  v0[80] = 0;
  v0[81] = 0;
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v12[3] = type metadata accessor for AceOutput();
  v12[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v12);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 77);
  outlined destroy of NLContextUpdate?(v13);
  __swift_destroy_boxed_opaque_existential_0(v0 + 72);
  __swift_destroy_boxed_opaque_existential_0(v0 + 67);

  v18 = *(v14 + 8);
  v18(v15, v17);
  v18(v16, v17);

  v5 = *(v0[91] + 8);

  return v5();
}

{
  v4 = *v1;
  *(v4 + 728) = *v1;
  *(v4 + 936) = v0;

  if (v0)
  {
    v2 = closure #1 in FlowFactory.makeLearnAboutAppleCardFlow();
  }

  else
  {
    v2 = closure #1 in FlowFactory.makeLearnAboutAppleCardFlow();
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v8 = v0[104];
  v7 = v0[100];
  v9 = v0[99];
  v6 = v0[98];
  v4 = v0[97];
  v5 = v0[96];
  v0[91] = v0;
  outlined init with copy of GlobalsProviding(v4 + 16, (v0 + 47));
  outlined init with copy of GlobalsProviding(v4 + 16, (v0 + 52));
  __swift_project_boxed_opaque_existential_1(v0 + 52, v0[55]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v1 = type metadata accessor for NLContextUpdate();
  (*(*(v1 - 8) + 56))(v6, 1);
  v0[57] = 0;
  v0[58] = 0;
  v0[59] = 0;
  v0[60] = 0;
  v0[61] = 0;
  default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v5[3] = type metadata accessor for AceOutput();
  v5[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v5);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 57);
  outlined destroy of NLContextUpdate?(v6);
  __swift_destroy_boxed_opaque_existential_0(v0 + 52);
  __swift_destroy_boxed_opaque_existential_0(v0 + 47);
  (*(v7 + 8))(v8, v9);

  v2 = *(v0[91] + 8);

  return v2();
}

{
  v4 = *v1;
  *(v4 + 728) = *v1;
  *(v4 + 952) = v0;

  if (v0)
  {
    v2 = closure #1 in FlowFactory.makeLearnAboutAppleCardFlow();
  }

  else
  {
    v2 = closure #1 in FlowFactory.makeLearnAboutAppleCardFlow();
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v8 = v0[103];
  v7 = v0[100];
  v9 = v0[99];
  v6 = v0[98];
  v4 = v0[97];
  v5 = v0[96];
  v0[91] = v0;
  outlined init with copy of GlobalsProviding(v4 + 16, (v0 + 27));
  outlined init with copy of GlobalsProviding(v4 + 16, (v0 + 32));
  __swift_project_boxed_opaque_existential_1(v0 + 32, v0[35]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v1 = type metadata accessor for NLContextUpdate();
  (*(*(v1 - 8) + 56))(v6, 1);
  v0[37] = 0;
  v0[38] = 0;
  v0[39] = 0;
  v0[40] = 0;
  v0[41] = 0;
  default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v5[3] = type metadata accessor for AceOutput();
  v5[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v5);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 37);
  outlined destroy of NLContextUpdate?(v6);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  (*(v7 + 8))(v8, v9);

  v2 = *(v0[91] + 8);

  return v2();
}

{
  v7 = *v1;
  v5 = *v1 + 16;
  v6 = (*v1 + 728);
  *(v7 + 728) = *v1;
  *(v7 + 968) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](closure #1 in FlowFactory.makeLearnAboutAppleCardFlow(), 0);
  }

  else
  {
    v2 = swift_task_alloc();
    *(v5 + 960) = v2;
    *v2 = *v6;
    v2[1] = closure #1 in FlowFactory.makeLearnAboutAppleCardFlow();
    v3 = *(v5 + 792);

    return SearchForCardInfoCATs.openAppleWebsite()(v3);
  }
}

{
  v4 = *v1;
  *(v4 + 728) = *v1;
  *(v4 + 984) = v0;

  if (v0)
  {
    v2 = closure #1 in FlowFactory.makeLearnAboutAppleCardFlow();
  }

  else
  {
    v2 = closure #1 in FlowFactory.makeLearnAboutAppleCardFlow();
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v19 = v0[102];
  v18 = v0[101];
  v17 = v0[100];
  v20 = v0[99];
  v16 = v0[98];
  v14 = v0[97];
  v15 = v0[96];
  v0[91] = v0;
  type metadata accessor for SAAceView();
  _allocateUninitializedArray<A>(_:)();
  v13 = v1;
  v2 = String.APPLE_CARD_WEB_PAGE_LINK.unsafeMutableAddressor();
  v9 = *v2;
  v11 = v2[1];

  v8 = TemplatingResult.resultSectionsAsString.getter();
  v10 = v3;
  outlined init with copy of GlobalsProviding(v14 + 16, (v0 + 7));
  v12 = static ConfirmationViewBuilder.makeWebPunchoutButton(for:buttonText:deviceState:)(v9, v11, v8, v10, v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  *v13 = v12;
  _finalizeUninitializedArray<A>(_:)();
  v0[94] = v4;
  outlined init with copy of GlobalsProviding(v14 + 16, (v0 + 12));
  outlined init with copy of GlobalsProviding(v14 + 16, (v0 + 17));
  __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v5 = type metadata accessor for NLContextUpdate();
  (*(*(v5 - 8) + 56))(v16, 1);
  v0[22] = 0;
  v0[23] = 0;
  v0[24] = 0;
  v0[25] = 0;
  v0[26] = 0;
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v15[3] = type metadata accessor for AceOutput();
  v15[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v15);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 22);
  outlined destroy of NLContextUpdate?(v16);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  v21 = *(v17 + 8);
  v21(v18, v20);
  v21(v19, v20);

  v6 = *(v0[91] + 8);

  return v6();
}

{
  *(v0 + 728) = v0;

  v1 = *(*(v0 + 728) + 8);

  return v1();
}

{
  *(v0 + 728) = v0;

  v1 = *(*(v0 + 728) + 8);

  return v1();
}

{
  v1 = v0[102];
  v2 = v0[100];
  v3 = v0[99];
  v0[91] = v0;
  (*(v2 + 8))(v1, v3);

  v4 = *(v0[91] + 8);

  return v4();
}

{
  *(v0 + 728) = v0;

  v1 = *(*(v0 + 728) + 8);

  return v1();
}

{
  v1 = v0[106];
  v2 = v0[100];
  v3 = v0[99];
  v0[91] = v0;
  (*(v2 + 8))(v1, v3);

  v4 = *(v0[91] + 8);

  return v4();
}

{
  *(v0 + 728) = v0;

  v1 = *(*(v0 + 728) + 8);

  return v1();
}

uint64_t FlowFactory.makeAppleCardBalanceOutputFlow()()
{
  type metadata accessor for SimpleOutputFlowAsync();

  default argument 3 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  SimpleOutputFlowAsync.__allocating_init(outputPublisher:outputGenerator:)();
  v1 = Flow.eraseToAnyFlow()();

  return v1;
}

uint64_t closure #1 in FlowFactory.makeAppleCardBalanceOutputFlow()(uint64_t a1, uint64_t a2)
{
  v2[97] = a2;
  v2[96] = a1;
  v2[91] = v2;
  v2[92] = 0;
  v2[93] = 0;
  v2[94] = 0;
  v2[95] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v2[98] = swift_task_alloc();
  v3 = type metadata accessor for TemplatingResult();
  v2[99] = v3;
  v2[100] = *(v3 - 8);
  v2[101] = swift_task_alloc();
  v2[102] = swift_task_alloc();
  v2[103] = swift_task_alloc();
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();
  v2[106] = swift_task_alloc();
  v4 = type metadata accessor for Locale();
  v2[107] = v4;
  v2[108] = *(v4 - 8);
  v2[109] = swift_task_alloc();
  type metadata accessor for CATOption();
  v2[110] = swift_task_alloc();
  v2[92] = a2;

  return MEMORY[0x2822009F8](closure #1 in FlowFactory.makeAppleCardBalanceOutputFlow(), 0);
}

uint64_t closure #1 in FlowFactory.makeAppleCardBalanceOutputFlow()()
{
  v16 = *(v0 + 872);
  v15 = *(v0 + 864);
  v17 = *(v0 + 856);
  *(v0 + 728) = v0;
  type metadata accessor for SearchForCardInfoCATs(0);
  default argument 0 of CATWrapper.init(options:globals:)();
  v14 = CATWrapper.__allocating_init(options:globals:)();
  *(v0 + 888) = v14;
  *(v0 + 744) = v14;
  static Locale.current.getter();
  v18 = Locale.identifier.getter();
  v19 = v1;
  (*(v15 + 8))(v16, v17);
  *(v0 + 696) = v18;
  *(v0 + 704) = v19;
  *(v0 + 712) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_US", 3uLL, 1);
  lazy protocol witness table accessor for type String and conformance String();
  v20 = StringProtocol.contains<A>(_:)();
  outlined destroy of String.UTF8View(v0 + 712);
  outlined destroy of String.UTF8View(v0 + 696);
  if (v20)
  {
    outlined init with copy of GlobalsProviding(v13[97] + 16, (v13 + 42));
    __swift_project_boxed_opaque_existential_1(v13 + 42, v13[45]);
    v12 = dispatch thunk of DeviceState.isPhone.getter();

    if ((v12 & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_0(v13 + 42);
      goto LABEL_9;
    }

    outlined init with copy of GlobalsProviding(v13[97] + 16, (v13 + 82));
    __swift_project_boxed_opaque_existential_1(v13 + 82, v13[85]);
    v11 = dispatch thunk of DeviceState.isCarPlay.getter();
    __swift_destroy_boxed_opaque_existential_0(v13 + 82);

    __swift_destroy_boxed_opaque_existential_0(v13 + 42);
    if (v11)
    {
LABEL_9:
      v5 = swift_task_alloc();
      v13[116] = v5;
      *v5 = v13[91];
      v5[1] = closure #1 in FlowFactory.makeLearnAboutAppleCardFlow();
      v6 = v13[104];

      return SearchForCardInfoCATs.unsupportedDevice()(v6);
    }

    v2 = swift_task_alloc();
    v13[112] = v2;
    *v2 = v13[91];
    v2[1] = closure #1 in FlowFactory.makeLearnAboutAppleCardFlow();
    v3 = v13[106];

    return SearchForCardInfoCATs.appleCardBalance()(v3);
  }

  else
  {
    outlined init with copy of GlobalsProviding(v13[97] + 16, (v13 + 2));
    __swift_project_boxed_opaque_existential_1(v13 + 2, v13[5]);
    v10 = dispatch thunk of DeviceState.isWatch.getter();
    __swift_destroy_boxed_opaque_existential_0(v13 + 2);
    if (v10)
    {
      v7 = swift_task_alloc();
      v13[118] = v7;
      *v7 = v13[91];
      v7[1] = closure #1 in FlowFactory.makeLearnAboutAppleCardFlow();
      v6 = v13[103];

      return SearchForCardInfoCATs.unsupportedDevice()(v6);
    }

    v8 = swift_task_alloc();
    v13[120] = v8;
    *v8 = v13[91];
    v8[1] = closure #1 in FlowFactory.makeLearnAboutAppleCardFlow();
    v9 = v13[102];

    return SearchForCardInfoCATs.unsupportedLocale()(v9);
  }
}

uint64_t FlowFactory.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  return v2;
}

uint64_t protocol witness for FlowProviding.findFlow(for:) in conformance FlowFactory(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = (*(**v1 + 104) + **(**v1 + 104));
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for TCCResponseProviding.promptToEnableApp(appDisplayInfo:deviceState:catOverrides:) in conformance TCCResponses;

  return v6(a1);
}

uint64_t protocol witness for FlowProviding.unsupportedActionFlow() in conformance FlowFactory()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v5 = (*(**v0 + 120) + **(**v0 + 120));
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = protocol witness for TCCResponseProviding.promptToEnableApp(appDisplayInfo:deviceState:catOverrides:) in conformance TCCResponses;

  return v5();
}

uint64_t sub_268721F98()
{
  v2 = *(type metadata accessor for USOParse() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in FlowFactory.findFlow(for:)()
{
  type metadata accessor for USOParse();

  return implicit closure #1 in FlowFactory.findFlow(for:)();
}

unint64_t lazy protocol witness table accessor for type [Siri_Nlu_External_UserDialogAct] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [Siri_Nlu_External_UserDialogAct] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Siri_Nlu_External_UserDialogAct] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMd, &_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Siri_Nlu_External_UserDialogAct] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [Siri_Nlu_External_UserDialogAct] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Siri_Nlu_External_UserDialogAct] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMd, &_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Siri_Nlu_External_UserDialogAct] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined destroy of Siri_Nlu_External_UserDialogAct?(uint64_t a1)
{
  v3 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t partial apply for closure #1 in FlowFactory.unsupportedActionFlow()(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = partial apply for closure #1 in FlowFactory.unsupportedActionFlow();

  return closure #1 in FlowFactory.unsupportedActionFlow()(a1, v5);
}

uint64_t partial apply for closure #1 in FlowFactory.unsupportedActionFlow()()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t partial apply for closure #1 in FlowFactory.unsupportedOnDeviceFlow()(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = partial apply for closure #1 in FlowFactory.unsupportedActionFlow();

  return closure #1 in FlowFactory.unsupportedOnDeviceFlow()(a1, v5);
}

unint64_t lazy protocol witness table accessor for type SendPaymentFlowStrategy and conformance PaymentsRCHFlowStrategy<A, B>()
{
  v2 = lazy protocol witness table cache variable for type SendPaymentFlowStrategy and conformance PaymentsRCHFlowStrategy<A, B>;
  if (!lazy protocol witness table cache variable for type SendPaymentFlowStrategy and conformance PaymentsRCHFlowStrategy<A, B>)
  {
    type metadata accessor for SendPaymentFlowStrategy(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SendPaymentFlowStrategy and conformance PaymentsRCHFlowStrategy<A, B>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type AnyValueFlow<RCHFlowResult<INSendPaymentIntent, INSendPaymentIntentResponse>> and conformance AnyValueFlow<A>()
{
  v2 = lazy protocol witness table cache variable for type AnyValueFlow<RCHFlowResult<INSendPaymentIntent, INSendPaymentIntentResponse>> and conformance AnyValueFlow<A>;
  if (!lazy protocol witness table cache variable for type AnyValueFlow<RCHFlowResult<INSendPaymentIntent, INSendPaymentIntentResponse>> and conformance AnyValueFlow<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo19INSendPaymentIntentCSo0hiJ8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo19INSendPaymentIntentCSo0hiJ8ResponseCGGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AnyValueFlow<RCHFlowResult<INSendPaymentIntent, INSendPaymentIntentResponse>> and conformance AnyValueFlow<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type PaymentsAppResolutionFlowStrategy<INSendPaymentIntent> and conformance PaymentsAppResolutionFlowStrategy<A>()
{
  v2 = lazy protocol witness table cache variable for type PaymentsAppResolutionFlowStrategy<INSendPaymentIntent> and conformance PaymentsAppResolutionFlowStrategy<A>;
  if (!lazy protocol witness table cache variable for type PaymentsAppResolutionFlowStrategy<INSendPaymentIntent> and conformance PaymentsAppResolutionFlowStrategy<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s19SiriPaymentsIntents0B25AppResolutionFlowStrategyCySo19INSendPaymentIntentCGMd, &_s19SiriPaymentsIntents0B25AppResolutionFlowStrategyCySo19INSendPaymentIntentCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PaymentsAppResolutionFlowStrategy<INSendPaymentIntent> and conformance PaymentsAppResolutionFlowStrategy<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type SendTCCHandleStrategy and conformance TCCHandleStrategy<A, B, C>()
{
  v2 = lazy protocol witness table cache variable for type SendTCCHandleStrategy and conformance TCCHandleStrategy<A, B, C>;
  if (!lazy protocol witness table cache variable for type SendTCCHandleStrategy and conformance TCCHandleStrategy<A, B, C>)
  {
    type metadata accessor for SendTCCHandleStrategy(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SendTCCHandleStrategy and conformance TCCHandleStrategy<A, B, C>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type PaymentsContinueInAppStrategy<INSendPaymentIntent, INSendPaymentIntentResponse> and conformance PaymentsContinueInAppStrategy<A, B>()
{
  v2 = lazy protocol witness table cache variable for type PaymentsContinueInAppStrategy<INSendPaymentIntent, INSendPaymentIntentResponse> and conformance PaymentsContinueInAppStrategy<A, B>;
  if (!lazy protocol witness table cache variable for type PaymentsContinueInAppStrategy<INSendPaymentIntent, INSendPaymentIntentResponse> and conformance PaymentsContinueInAppStrategy<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s19SiriPaymentsIntents0B21ContinueInAppStrategyCySo19INSendPaymentIntentCSo0hiJ8ResponseCGMd, &_s19SiriPaymentsIntents0B21ContinueInAppStrategyCySo19INSendPaymentIntentCSo0hiJ8ResponseCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PaymentsContinueInAppStrategy<INSendPaymentIntent, INSendPaymentIntentResponse> and conformance PaymentsContinueInAppStrategy<A, B>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type SendPaymentUnsupportedValueStrategy and conformance SendPaymentUnsupportedValueStrategy()
{
  v2 = lazy protocol witness table cache variable for type SendPaymentUnsupportedValueStrategy and conformance SendPaymentUnsupportedValueStrategy;
  if (!lazy protocol witness table cache variable for type SendPaymentUnsupportedValueStrategy and conformance SendPaymentUnsupportedValueStrategy)
  {
    type metadata accessor for SendPaymentUnsupportedValueStrategy(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SendPaymentUnsupportedValueStrategy and conformance SendPaymentUnsupportedValueStrategy);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type SendPaymentNeedsValueStrategy and conformance SendPaymentNeedsValueStrategy()
{
  v2 = lazy protocol witness table cache variable for type SendPaymentNeedsValueStrategy and conformance SendPaymentNeedsValueStrategy;
  if (!lazy protocol witness table cache variable for type SendPaymentNeedsValueStrategy and conformance SendPaymentNeedsValueStrategy)
  {
    type metadata accessor for SendPaymentNeedsValueStrategy(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SendPaymentNeedsValueStrategy and conformance SendPaymentNeedsValueStrategy);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SendPaymentNeedsValueStrategy and conformance SendPaymentNeedsValueStrategy;
  if (!lazy protocol witness table cache variable for type SendPaymentNeedsValueStrategy and conformance SendPaymentNeedsValueStrategy)
  {
    type metadata accessor for SendPaymentNeedsValueStrategy(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SendPaymentNeedsValueStrategy and conformance SendPaymentNeedsValueStrategy);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type PayeeDisambiguationStrategy and conformance ContactDisambiguationStrategy<A, B, C>()
{
  v2 = lazy protocol witness table cache variable for type PayeeDisambiguationStrategy and conformance ContactDisambiguationStrategy<A, B, C>;
  if (!lazy protocol witness table cache variable for type PayeeDisambiguationStrategy and conformance ContactDisambiguationStrategy<A, B, C>)
  {
    type metadata accessor for PayeeDisambiguationStrategy(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PayeeDisambiguationStrategy and conformance ContactDisambiguationStrategy<A, B, C>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type SendPaymentNeedsConfirmationFlowStrategy and conformance PaymentsNeedsConfirmationFlowStrategy<A, B, C>()
{
  v2 = lazy protocol witness table cache variable for type SendPaymentNeedsConfirmationFlowStrategy and conformance PaymentsNeedsConfirmationFlowStrategy<A, B, C>;
  if (!lazy protocol witness table cache variable for type SendPaymentNeedsConfirmationFlowStrategy and conformance PaymentsNeedsConfirmationFlowStrategy<A, B, C>)
  {
    type metadata accessor for SendPaymentNeedsConfirmationFlowStrategy(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SendPaymentNeedsConfirmationFlowStrategy and conformance PaymentsNeedsConfirmationFlowStrategy<A, B, C>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type SendPaymentConfirmIntentStrategy and conformance SendPaymentConfirmIntentStrategy()
{
  v2 = lazy protocol witness table cache variable for type SendPaymentConfirmIntentStrategy and conformance SendPaymentConfirmIntentStrategy;
  if (!lazy protocol witness table cache variable for type SendPaymentConfirmIntentStrategy and conformance SendPaymentConfirmIntentStrategy)
  {
    type metadata accessor for SendPaymentConfirmIntentStrategy(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SendPaymentConfirmIntentStrategy and conformance SendPaymentConfirmIntentStrategy);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type SendPaymentHandleIntentStrategy and conformance BaseStrategy<A, B, C>()
{
  v2 = lazy protocol witness table cache variable for type SendPaymentHandleIntentStrategy and conformance BaseStrategy<A, B, C>;
  if (!lazy protocol witness table cache variable for type SendPaymentHandleIntentStrategy and conformance BaseStrategy<A, B, C>)
  {
    type metadata accessor for SendPaymentHandleIntentStrategy(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SendPaymentHandleIntentStrategy and conformance BaseStrategy<A, B, C>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type RequestPaymentFlowStrategy and conformance PaymentsRCHFlowStrategy<A, B>()
{
  v2 = lazy protocol witness table cache variable for type RequestPaymentFlowStrategy and conformance PaymentsRCHFlowStrategy<A, B>;
  if (!lazy protocol witness table cache variable for type RequestPaymentFlowStrategy and conformance PaymentsRCHFlowStrategy<A, B>)
  {
    type metadata accessor for RequestPaymentFlowStrategy(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type RequestPaymentFlowStrategy and conformance PaymentsRCHFlowStrategy<A, B>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type AnyValueFlow<RCHFlowResult<INRequestPaymentIntent, INRequestPaymentIntentResponse>> and conformance AnyValueFlow<A>()
{
  v2 = lazy protocol witness table cache variable for type AnyValueFlow<RCHFlowResult<INRequestPaymentIntent, INRequestPaymentIntentResponse>> and conformance AnyValueFlow<A>;
  if (!lazy protocol witness table cache variable for type AnyValueFlow<RCHFlowResult<INRequestPaymentIntent, INRequestPaymentIntentResponse>> and conformance AnyValueFlow<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo22INRequestPaymentIntentCSo0hiJ8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo22INRequestPaymentIntentCSo0hiJ8ResponseCGGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AnyValueFlow<RCHFlowResult<INRequestPaymentIntent, INRequestPaymentIntentResponse>> and conformance AnyValueFlow<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type PaymentsAppResolutionFlowStrategy<INRequestPaymentIntent> and conformance PaymentsAppResolutionFlowStrategy<A>()
{
  v2 = lazy protocol witness table cache variable for type PaymentsAppResolutionFlowStrategy<INRequestPaymentIntent> and conformance PaymentsAppResolutionFlowStrategy<A>;
  if (!lazy protocol witness table cache variable for type PaymentsAppResolutionFlowStrategy<INRequestPaymentIntent> and conformance PaymentsAppResolutionFlowStrategy<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s19SiriPaymentsIntents0B25AppResolutionFlowStrategyCySo22INRequestPaymentIntentCGMd, &_s19SiriPaymentsIntents0B25AppResolutionFlowStrategyCySo22INRequestPaymentIntentCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PaymentsAppResolutionFlowStrategy<INRequestPaymentIntent> and conformance PaymentsAppResolutionFlowStrategy<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type RequestTCCHandleStrategy and conformance TCCHandleStrategy<A, B, C>()
{
  v2 = lazy protocol witness table cache variable for type RequestTCCHandleStrategy and conformance TCCHandleStrategy<A, B, C>;
  if (!lazy protocol witness table cache variable for type RequestTCCHandleStrategy and conformance TCCHandleStrategy<A, B, C>)
  {
    type metadata accessor for RequestTCCHandleStrategy(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type RequestTCCHandleStrategy and conformance TCCHandleStrategy<A, B, C>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type PaymentsContinueInAppStrategy<INRequestPaymentIntent, INRequestPaymentIntentResponse> and conformance PaymentsContinueInAppStrategy<A, B>()
{
  v2 = lazy protocol witness table cache variable for type PaymentsContinueInAppStrategy<INRequestPaymentIntent, INRequestPaymentIntentResponse> and conformance PaymentsContinueInAppStrategy<A, B>;
  if (!lazy protocol witness table cache variable for type PaymentsContinueInAppStrategy<INRequestPaymentIntent, INRequestPaymentIntentResponse> and conformance PaymentsContinueInAppStrategy<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s19SiriPaymentsIntents0B21ContinueInAppStrategyCySo22INRequestPaymentIntentCSo0hiJ8ResponseCGMd, &_s19SiriPaymentsIntents0B21ContinueInAppStrategyCySo22INRequestPaymentIntentCSo0hiJ8ResponseCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PaymentsContinueInAppStrategy<INRequestPaymentIntent, INRequestPaymentIntentResponse> and conformance PaymentsContinueInAppStrategy<A, B>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type RequestPaymentUnsupportedValueStrategy and conformance RequestPaymentUnsupportedValueStrategy()
{
  v2 = lazy protocol witness table cache variable for type RequestPaymentUnsupportedValueStrategy and conformance RequestPaymentUnsupportedValueStrategy;
  if (!lazy protocol witness table cache variable for type RequestPaymentUnsupportedValueStrategy and conformance RequestPaymentUnsupportedValueStrategy)
  {
    type metadata accessor for RequestPaymentUnsupportedValueStrategy(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type RequestPaymentUnsupportedValueStrategy and conformance RequestPaymentUnsupportedValueStrategy);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type RequestPaymentNeedsValueStrategy and conformance RequestPaymentNeedsValueStrategy()
{
  v2 = lazy protocol witness table cache variable for type RequestPaymentNeedsValueStrategy and conformance RequestPaymentNeedsValueStrategy;
  if (!lazy protocol witness table cache variable for type RequestPaymentNeedsValueStrategy and conformance RequestPaymentNeedsValueStrategy)
  {
    type metadata accessor for RequestPaymentNeedsValueStrategy(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type RequestPaymentNeedsValueStrategy and conformance RequestPaymentNeedsValueStrategy);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type RequestPaymentNeedsValueStrategy and conformance RequestPaymentNeedsValueStrategy;
  if (!lazy protocol witness table cache variable for type RequestPaymentNeedsValueStrategy and conformance RequestPaymentNeedsValueStrategy)
  {
    type metadata accessor for RequestPaymentNeedsValueStrategy(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type RequestPaymentNeedsValueStrategy and conformance RequestPaymentNeedsValueStrategy);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type PayerDisambiguationStrategy and conformance ContactDisambiguationStrategy<A, B, C>()
{
  v2 = lazy protocol witness table cache variable for type PayerDisambiguationStrategy and conformance ContactDisambiguationStrategy<A, B, C>;
  if (!lazy protocol witness table cache variable for type PayerDisambiguationStrategy and conformance ContactDisambiguationStrategy<A, B, C>)
  {
    type metadata accessor for PayerDisambiguationStrategy(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PayerDisambiguationStrategy and conformance ContactDisambiguationStrategy<A, B, C>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type RequestPaymentNeedsConfirmationFlowStrategy and conformance PaymentsNeedsConfirmationFlowStrategy<A, B, C>()
{
  v2 = lazy protocol witness table cache variable for type RequestPaymentNeedsConfirmationFlowStrategy and conformance PaymentsNeedsConfirmationFlowStrategy<A, B, C>;
  if (!lazy protocol witness table cache variable for type RequestPaymentNeedsConfirmationFlowStrategy and conformance PaymentsNeedsConfirmationFlowStrategy<A, B, C>)
  {
    type metadata accessor for RequestPaymentNeedsConfirmationFlowStrategy(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type RequestPaymentNeedsConfirmationFlowStrategy and conformance PaymentsNeedsConfirmationFlowStrategy<A, B, C>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type RequestPaymentConfirmIntentStrategy and conformance RequestPaymentConfirmIntentStrategy()
{
  v2 = lazy protocol witness table cache variable for type RequestPaymentConfirmIntentStrategy and conformance RequestPaymentConfirmIntentStrategy;
  if (!lazy protocol witness table cache variable for type RequestPaymentConfirmIntentStrategy and conformance RequestPaymentConfirmIntentStrategy)
  {
    type metadata accessor for RequestPaymentConfirmIntentStrategy(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type RequestPaymentConfirmIntentStrategy and conformance RequestPaymentConfirmIntentStrategy);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type RequestPaymentHandleIntentStrategy and conformance BaseStrategy<A, B, C>()
{
  v2 = lazy protocol witness table cache variable for type RequestPaymentHandleIntentStrategy and conformance BaseStrategy<A, B, C>;
  if (!lazy protocol witness table cache variable for type RequestPaymentHandleIntentStrategy and conformance BaseStrategy<A, B, C>)
  {
    type metadata accessor for RequestPaymentHandleIntentStrategy(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type RequestPaymentHandleIntentStrategy and conformance BaseStrategy<A, B, C>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type SearchForAccountsFlowStrategy and conformance PaymentsRCHFlowStrategy<A, B>()
{
  v2 = lazy protocol witness table cache variable for type SearchForAccountsFlowStrategy and conformance PaymentsRCHFlowStrategy<A, B>;
  if (!lazy protocol witness table cache variable for type SearchForAccountsFlowStrategy and conformance PaymentsRCHFlowStrategy<A, B>)
  {
    type metadata accessor for SearchForAccountsFlowStrategy(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SearchForAccountsFlowStrategy and conformance PaymentsRCHFlowStrategy<A, B>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type AnyValueFlow<RCHFlowResult<INSearchForAccountsIntent, INSearchForAccountsIntentResponse>> and conformance AnyValueFlow<A>()
{
  v2 = lazy protocol witness table cache variable for type AnyValueFlow<RCHFlowResult<INSearchForAccountsIntent, INSearchForAccountsIntentResponse>> and conformance AnyValueFlow<A>;
  if (!lazy protocol witness table cache variable for type AnyValueFlow<RCHFlowResult<INSearchForAccountsIntent, INSearchForAccountsIntentResponse>> and conformance AnyValueFlow<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo25INSearchForAccountsIntentCSo0hijK8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo25INSearchForAccountsIntentCSo0hijK8ResponseCGGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AnyValueFlow<RCHFlowResult<INSearchForAccountsIntent, INSearchForAccountsIntentResponse>> and conformance AnyValueFlow<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type PaymentsAppResolutionFlowStrategy<INSearchForAccountsIntent> and conformance PaymentsAppResolutionFlowStrategy<A>()
{
  v2 = lazy protocol witness table cache variable for type PaymentsAppResolutionFlowStrategy<INSearchForAccountsIntent> and conformance PaymentsAppResolutionFlowStrategy<A>;
  if (!lazy protocol witness table cache variable for type PaymentsAppResolutionFlowStrategy<INSearchForAccountsIntent> and conformance PaymentsAppResolutionFlowStrategy<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s19SiriPaymentsIntents0B25AppResolutionFlowStrategyCySo25INSearchForAccountsIntentCGMd, &_s19SiriPaymentsIntents0B25AppResolutionFlowStrategyCySo25INSearchForAccountsIntentCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PaymentsAppResolutionFlowStrategy<INSearchForAccountsIntent> and conformance PaymentsAppResolutionFlowStrategy<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type SearchForAccountsHandleIntentStrategy and conformance BaseStrategy<A, B, C>()
{
  v2 = lazy protocol witness table cache variable for type SearchForAccountsHandleIntentStrategy and conformance BaseStrategy<A, B, C>;
  if (!lazy protocol witness table cache variable for type SearchForAccountsHandleIntentStrategy and conformance BaseStrategy<A, B, C>)
  {
    type metadata accessor for SearchForAccountsHandleIntentStrategy(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SearchForAccountsHandleIntentStrategy and conformance BaseStrategy<A, B, C>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type SearchForAccountsNeedsConfirmationStrategy and conformance SearchForAccountsNeedsConfirmationStrategy()
{
  v2 = lazy protocol witness table cache variable for type SearchForAccountsNeedsConfirmationStrategy and conformance SearchForAccountsNeedsConfirmationStrategy;
  if (!lazy protocol witness table cache variable for type SearchForAccountsNeedsConfirmationStrategy and conformance SearchForAccountsNeedsConfirmationStrategy)
  {
    type metadata accessor for SearchForAccountsNeedsConfirmationStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SearchForAccountsNeedsConfirmationStrategy and conformance SearchForAccountsNeedsConfirmationStrategy);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SearchForAccountsNeedsConfirmationStrategy and conformance SearchForAccountsNeedsConfirmationStrategy;
  if (!lazy protocol witness table cache variable for type SearchForAccountsNeedsConfirmationStrategy and conformance SearchForAccountsNeedsConfirmationStrategy)
  {
    type metadata accessor for SearchForAccountsNeedsConfirmationStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SearchForAccountsNeedsConfirmationStrategy and conformance SearchForAccountsNeedsConfirmationStrategy);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type SearchForAccountsNeedsValueStrategy and conformance SearchForAccountsNeedsValueStrategy()
{
  v2 = lazy protocol witness table cache variable for type SearchForAccountsNeedsValueStrategy and conformance SearchForAccountsNeedsValueStrategy;
  if (!lazy protocol witness table cache variable for type SearchForAccountsNeedsValueStrategy and conformance SearchForAccountsNeedsValueStrategy)
  {
    type metadata accessor for SearchForAccountsNeedsValueStrategy(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SearchForAccountsNeedsValueStrategy and conformance SearchForAccountsNeedsValueStrategy);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SearchForAccountsNeedsValueStrategy and conformance SearchForAccountsNeedsValueStrategy;
  if (!lazy protocol witness table cache variable for type SearchForAccountsNeedsValueStrategy and conformance SearchForAccountsNeedsValueStrategy)
  {
    type metadata accessor for SearchForAccountsNeedsValueStrategy(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SearchForAccountsNeedsValueStrategy and conformance SearchForAccountsNeedsValueStrategy);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type SearchForAccountsTCCHandleStrategy and conformance TCCHandleStrategy<A, B, C>()
{
  v2 = lazy protocol witness table cache variable for type SearchForAccountsTCCHandleStrategy and conformance TCCHandleStrategy<A, B, C>;
  if (!lazy protocol witness table cache variable for type SearchForAccountsTCCHandleStrategy and conformance TCCHandleStrategy<A, B, C>)
  {
    type metadata accessor for SearchForAccountsTCCHandleStrategy(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SearchForAccountsTCCHandleStrategy and conformance TCCHandleStrategy<A, B, C>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type SearchForAccountsUnsupportedValueStrategy and conformance SearchForAccountsUnsupportedValueStrategy()
{
  v2 = lazy protocol witness table cache variable for type SearchForAccountsUnsupportedValueStrategy and conformance SearchForAccountsUnsupportedValueStrategy;
  if (!lazy protocol witness table cache variable for type SearchForAccountsUnsupportedValueStrategy and conformance SearchForAccountsUnsupportedValueStrategy)
  {
    type metadata accessor for SearchForAccountsUnsupportedValueStrategy(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SearchForAccountsUnsupportedValueStrategy and conformance SearchForAccountsUnsupportedValueStrategy);
    return WitnessTable;
  }

  return v2;
}

uint64_t partial apply for closure #1 in FlowFactory.makeApplyForAppleCardFlow()(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = partial apply for closure #1 in FlowFactory.unsupportedActionFlow();

  return closure #1 in FlowFactory.makeApplyForAppleCardFlow()(a1, v5);
}

uint64_t partial apply for closure #1 in FlowFactory.makeLearnAboutAppleCardFlow()(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = partial apply for closure #1 in FlowFactory.unsupportedActionFlow();

  return closure #1 in FlowFactory.makeLearnAboutAppleCardFlow()(a1, v5);
}

uint64_t partial apply for closure #1 in FlowFactory.makeAppleCardBalanceOutputFlow()(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = partial apply for closure #1 in FlowFactory.unsupportedActionFlow();

  return closure #1 in FlowFactory.makeAppleCardBalanceOutputFlow()(a1, v5);
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  v2 = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type String and conformance String);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type String and conformance String);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type String and conformance String);
    return WitnessTable;
  }

  return v2;
}

float static USOEntityNumberExtractor.preciseRound(_:_:)(uint64_t a1, float a2)
{
  v22 = a2;
  v19 = a1;
  v46 = 0;
  v45 = 0;
  v32 = 0.0;
  v27 = type metadata accessor for FloatingPointRoundingRule();
  v25 = *(v27 - 8);
  v26 = v27 - 8;
  v17 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v19, v2);
  v28 = &v15[-v17];
  v18 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v3, &v15[-v17]);
  v24 = &v15[-v18];
  v46 = v6;
  v45 = v5;
  v42 = MEMORY[0x26D620BA0](10.0);
  v43 = v7;
  v44 = v8;
  v39 = v42;
  v40 = v7;
  v41 = v8;
  pow(_:_:)(HIWORD(v8), v42, v7);
  v36 = v9;
  v37 = v10;
  v38 = v11;
  v33 = v9;
  v34 = v10;
  v35 = v11;
  NSDecimal._bridgeToObjectiveC()(HIWORD(v11));
  v20 = v12;
  Float.init(truncating:)();
  v21 = v13;
  MEMORY[0x277D82BD8](v20);
  v32 = v21;
  v23 = v22 * v21;
  v29 = MEMORY[0x277D84678];
  (*(v25 + 104))(v24, *MEMORY[0x277D84678], v27);
  v31 = v23;
  (*(v25 + 16))(v28, v24, v27);
  v30 = (*(v25 + 88))(v28, v27);
  if (v30 == *v29)
  {
    v31 = roundf(v23);
    goto LABEL_15;
  }

  if (v30 == *MEMORY[0x277D84670])
  {
    v31 = rintf(v23);
    goto LABEL_15;
  }

  if (v30 == *MEMORY[0x277D84680])
  {
LABEL_12:
    v31 = ceilf(v23);
    goto LABEL_15;
  }

  if (v30 == *MEMORY[0x277D84688])
  {
LABEL_14:
    v31 = floorf(v23);
    goto LABEL_15;
  }

  if (v30 == *MEMORY[0x277D84660])
  {
    v31 = truncf(v23);
    goto LABEL_15;
  }

  if (v30 == *MEMORY[0x277D84668])
  {
    if ((Float.sign.getter() & 1) != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  Float._roundSlowPath(_:)();
  (*(v25 + 8))(v28, v27);
LABEL_15:
  v16 = v31;
  (*(v25 + 8))(v24, v27);
  return v16 / v21;
}

uint64_t static USOEntityNumberExtractor.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)(uint64_t a1, float a2, float a3, float a4, float a5)
{
  v155 = a1;
  v144 = a2;
  v145 = a3;
  v146 = a4;
  v147 = a5;
  v131 = 0.0;
  v196 = 0;
  v195 = 0;
  v194 = 0;
  v193 = 0;
  v192 = 0;
  v191 = 0;
  v190 = 0;
  v188 = 0;
  v182 = 0;
  v181 = 0;
  v180 = 0;
  v178 = 0.0;
  v176 = 0.0;
  v175 = 0;
  v172 = 0;
  v168 = 0;
  v167 = 0;
  v164 = 0;
  v162 = 0;
  v163 = 0;
  v161 = 0;
  v160 = 0;
  v159 = 0;
  v157 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology24UsoEntity_common_DecimalC13DefinedValuesOSgMd, &_s12SiriOntology24UsoEntity_common_DecimalC13DefinedValuesOSgMR);
  v132 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, v6);
  v133 = &v37 - v132;
  v141 = 0;
  v134 = type metadata accessor for UsoEntity_common_Decimal.DefinedValues();
  v135 = *(v134 - 8);
  v136 = v134 - 8;
  v137 = (*(v135 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v134, v7);
  v138 = &v37 - v137;
  v139 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v37 - v137, v9);
  v140 = &v37 - v139;
  v196 = &v37 - v139;
  v142 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_NumberC13DefinedValuesOSgMd, _s12SiriOntology23UsoEntity_common_NumberC13DefinedValuesOSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v141, v10);
  v143 = &v37 - v142;
  v148 = type metadata accessor for UsoEntity_common_Number.DefinedValues();
  v149 = *(v148 - 8);
  v150 = v148 - 8;
  v151 = (*(v149 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x28223BE20](v155, v11);
  v152 = &v37 - v151;
  v153 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x28223BE20](v12, &v37 - v151);
  v154 = &v37 - v153;
  v195 = &v37 - v153;
  v194 = v14;
  v193 = v15;
  v192 = v16;
  v191 = v17;
  v190 = v18;

  if (!v155)
  {
    v117 = v131;
    v118 = 1;
    goto LABEL_89;
  }

  v130 = v155;
  v128 = v155;
  v188 = v155;

  type metadata accessor for UsoEntity_common_Number();
  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

  v129 = v187;
  if (v187)
  {
    v127 = v129;
    v126 = v129;
    v157 = v129;
    dispatch thunk of UsoEntity_common_Number.definedValue.getter();
    if ((*(v149 + 48))(v143, 1, v148) != 1)
    {
      (*(v149 + 32))(v154, v143, v148);
      (*(v149 + 16))(v152, v154, v148);
      v125 = (*(v149 + 88))(v152, v148);
      if (v125 == *MEMORY[0x277D5E7E0])
      {
        strcpy(v156, "(knN");
        *&v123 = 1000000000.0;
        v124 = 0;
      }

      else if (v125 == *MEMORY[0x277D5E7D8])
      {
        v156[0] = 1094713344;
        LOBYTE(v156[1]) = 0;
        *&v123 = 12.0;
        v124 = 0;
      }

      else if (v125 == *MEMORY[0x277D5E7F8])
      {
        v156[0] = 1148846080;
        LOBYTE(v156[1]) = 0;
        *&v123 = 1000.0;
        v124 = 0;
      }

      else if (v125 == *MEMORY[0x277D5E800])
      {
        v156[0] = 1399379109;
        LOBYTE(v156[1]) = 0;
        *&v123 = 1.0e12;
        v124 = 0;
      }

      else if (v125 == *MEMORY[0x277D5E798])
      {
        v122 = (0.5 * v145) + (0.5 * v144);
        v19 = default argument 1 of static USOEntityNumberExtractor.preciseRound(_:_:)();
        v156[0] = static USOEntityNumberExtractor.preciseRound(_:_:)(v19, v122);
        LOBYTE(v156[1]) = 0;
        v123 = v156[0];
        v124 = 0;
      }

      else if (v125 == *MEMORY[0x277D5E7F0])
      {
        v156[0] = 1232348160;
        LOBYTE(v156[1]) = 0;
        *&v123 = 1000000.0;
        v124 = 0;
      }

      else if (v125 == *MEMORY[0x277D5E7C0])
      {
        v156[0] = 1203982336;
        LOBYTE(v156[1]) = 0;
        *&v123 = 100000.0;
        v124 = 0;
      }

      else if (v125 == *MEMORY[0x277D5E7D0])
      {
        v121 = (v146 * v145) + ((1.0 - v146) * v144);
        v20 = default argument 1 of static USOEntityNumberExtractor.preciseRound(_:_:)();
        v156[0] = static USOEntityNumberExtractor.preciseRound(_:_:)(v20, v121);
        LOBYTE(v156[1]) = 0;
        v123 = v156[0];
        v124 = 0;
      }

      else if (v125 == *MEMORY[0x277D5E7B0])
      {
        *v156 = v145;
        LOBYTE(v156[1]) = 0;
        *&v123 = v145;
        v124 = 0;
      }

      else if (v125 == *MEMORY[0x277D5E7A0])
      {
        v156[0] = 1176256512;
        LOBYTE(v156[1]) = 0;
        *&v123 = 10000.0;
        v124 = 0;
      }

      else if (v125 == *MEMORY[0x277D5E7C8])
      {
        v120 = (v147 * v145) + ((1.0 - v147) * v144);
        v21 = default argument 1 of static USOEntityNumberExtractor.preciseRound(_:_:)();
        v156[0] = static USOEntityNumberExtractor.preciseRound(_:_:)(v21, v120);
        LOBYTE(v156[1]) = 0;
        v123 = v156[0];
        v124 = 0;
      }

      else if (v125 == *MEMORY[0x277D5E7E8])
      {
        v156[0] = 1120403456;
        LOBYTE(v156[1]) = 0;
        *&v123 = 100.0;
        v124 = 0;
      }

      else if (v125 == *MEMORY[0x277D5E790])
      {
        v156[0] = 1259902592;
        LOBYTE(v156[1]) = 0;
        *&v123 = 10000000.0;
        v124 = 0;
      }

      else if (v125 == *MEMORY[0x277D5E7B8])
      {
        *v156 = v144;
        LOBYTE(v156[1]) = 0;
        *&v123 = v144;
        v124 = 0;
      }

      else
      {
        *&v119 = 0.0;
        v156[0] = 0;
        LOBYTE(v156[1]) = 1;
        (*(v149 + 8))(v152, v148);
        v123 = v119;
        v124 = 1;
      }

      v116 = v124;
      v115 = *&v123;
      (*(v149 + 8))(v154, v148);

      v117 = v115;
      v118 = v116;
      goto LABEL_89;
    }

    outlined destroy of UsoEntity_common_Number.DefinedValues?(v143);
  }

  type metadata accessor for UsoEntity_common_Integer();
  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

  v114 = v186;
  if (v186)
  {
    v113 = v114;
    v111 = v114;
    v160 = v114;
    v112 = dispatch thunk of UsoEntity_common_Integer.integerValue.getter();
    if ((v22 & 1) == 0)
    {
      v110 = v112;
      v159 = v112;
      v108 = &v158;
      v158 = v112;
      lazy protocol witness table accessor for type Int64 and conformance Int64();
      Float.init<A>(_:)();
      v109 = v23;

      v117 = v109;
      v118 = 0;
      goto LABEL_89;
    }

    goto LABEL_86;
  }

  type metadata accessor for UsoEntity_common_Decimal();
  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

  v107 = v185;
  if (v185)
  {
    v106 = v107;
    v105 = v107;
    v164 = v107;
    dispatch thunk of UsoEntity_common_Decimal.definedValue.getter();
    if ((*(v135 + 48))(v133, 1, v134) == 1)
    {
      outlined destroy of UsoEntity_common_Decimal.DefinedValues?(v133);
    }

    else
    {
      (*(v135 + 32))(v140, v133, v134);
      (*(v135 + 104))(v138, *MEMORY[0x277D5E880], v134);
      lazy protocol witness table accessor for type UsoEntity_common_Decimal.DefinedValues and conformance UsoEntity_common_Decimal.DefinedValues();
      v104 = == infix<A>(_:_:)();
      v102 = *(v135 + 8);
      v103 = v135 + 8;
      v102(v138, v134);
      if (v104)
      {
        v102(v140, v134);

        v117 = 0.01;
        v118 = 0;
        goto LABEL_89;
      }

      v102(v140, v134);
    }

    v100 = dispatch thunk of UsoEntity_common_Decimal.canonicalString.getter();
    v101 = v24;
    if (v24)
    {
      v98 = v100;
      v99 = v101;
      v94 = v101;
      v93 = v100;
      v162 = v100;
      v163 = v101;
      type metadata accessor for NSNumberFormatter();
      v95 = SAUIAppPunchOut.__allocating_init()();
      v161 = v95;
      [v95 setNumberStyle_];

      v96 = MEMORY[0x26D620690](v93, v94);

      v97 = [v95 numberFromString_];
      MEMORY[0x277D82BD8](v96);
      if (v97)
      {
        v92 = v97;
        v88 = v97;
        [v97 floatValue];
        v89 = v25;
        MEMORY[0x277D82BD8](v88);
        v90 = v89;
        v91 = 0;
      }

      else
      {
        v90 = 0.0;
        v91 = 1;
      }

      v87 = v91;
      v86 = v90;
      MEMORY[0x277D82BD8](v95);

      v117 = v86;
      v118 = v87;
      goto LABEL_89;
    }

LABEL_86:

LABEL_87:

    v117 = v131;
    v118 = 1;
    goto LABEL_89;
  }

  type metadata accessor for UsoEntity_common_MixedFraction();
  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

  v85 = v184;
  if (!v184)
  {

    type metadata accessor for UsoEntity_common_MultipliedNumber();
    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    v58 = v183;
    if (!v183)
    {
      goto LABEL_87;
    }

    v57 = v58;
    v55 = v58;
    v182 = v58;
    v32 = dispatch thunk of UsoEntity_common_MultipliedNumber.value.getter();
    v56 = v32;
    if (v32)
    {
      v54 = v56;
      v52 = v56;
      v181 = v56;
      v33 = dispatch thunk of UsoEntity_common_MultipliedNumber.multiplier.getter();
      v53 = v33;
      if (v33)
      {
        v51 = v53;
        v46 = v53;
        v180 = v53;

        v48 = CodeGenBase.entity.getter();

        v47 = default argument 3 of static USOEntityNumberExtractor.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)();
        v34 = default argument 4 of static USOEntityNumberExtractor.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)();
        v179 = static USOEntityNumberExtractor.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)(v48, v144, v145, v47, v34);
        v49 = *&v179;
        v50 = BYTE4(v179);

        if ((v50 & 1) == 0)
        {
          v45 = v49;
          v40 = v49;
          v178 = v49;

          v42 = CodeGenBase.entity.getter();

          v41 = default argument 3 of static USOEntityNumberExtractor.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)();
          v35 = default argument 4 of static USOEntityNumberExtractor.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)();
          v177 = static USOEntityNumberExtractor.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)(v42, v144, v145, v41, v35);
          v43 = *&v177;
          v44 = BYTE4(v177);

          if ((v44 & 1) == 0)
          {
            v39 = v43;
            v176 = v43;
            v38 = v43 * v40;

            v117 = v38;
            v118 = 0;
            goto LABEL_89;
          }
        }
      }

      else
      {
      }
    }

    goto LABEL_86;
  }

  v84 = v85;
  v82 = v85;
  v175 = v85;
  v173 = 0.0;
  v174 = 1;
  v83 = dispatch thunk of UsoEntity_common_MixedFraction.numeratorValue.getter();
  if (v26)
  {
    v79 = 0.0;
    v80 = 1;
  }

  else
  {
    v81 = v83;
    v77 = v83;
    v168 = v83;
    v78 = dispatch thunk of UsoEntity_common_MixedFraction.denominatorValue.getter();
    if (v27)
    {
      v79 = 0.0;
      v80 = 1;
    }

    else
    {
      v76 = v78;
      v75 = v76;
      v167 = v76;
      if (!v76)
      {

        v117 = v131;
        v118 = 1;
        goto LABEL_89;
      }

      v71 = &v166;
      v166 = v77;
      v73 = lazy protocol witness table accessor for type Int64 and conformance Int64();
      v72 = MEMORY[0x277D84A28];
      Float.init<A>(_:)();
      v74 = v28;
      v165 = v75;
      Float.init<A>(_:)();
      v173 = v74 / v29;
      v174 = 0;
      v79 = v74 / v29;
      v80 = 0;
    }
  }

  v68 = v80;
  v69 = v79;
  v70 = dispatch thunk of UsoEntity_common_MixedFraction.wholeValue.getter();
  if (v30)
  {
    v65 = v69;
    v66 = v68;
  }

  else
  {
    v67 = v70;
    v64 = v67;
    v172 = v67;
    v170 = v69;
    v171 = v68 & 1;
    if (v68)
    {
      v63 = 0.0;
    }

    else
    {
      v63 = v170;
    }

    v62 = v63;
    v61 = &v169;
    v169 = v64;
    lazy protocol witness table accessor for type Int64 and conformance Int64();
    Float.init<A>(_:)();
    v173 = v62 + v31;
    v174 = 0;
    v65 = v62 + v31;
    v66 = 0;
  }

  v60 = v66;
  v59 = v65;

  v117 = v59;
  v118 = v60;
LABEL_89:
  *&v189 = v117;
  BYTE4(v189) = v118 & 1;
  return v189;
}

unint64_t lazy protocol witness table accessor for type Int64 and conformance Int64()
{
  v2 = lazy protocol witness table cache variable for type Int64 and conformance Int64;
  if (!lazy protocol witness table cache variable for type Int64 and conformance Int64)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Int64 and conformance Int64);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined destroy of UsoEntity_common_Decimal.DefinedValues?(uint64_t a1)
{
  v3 = type metadata accessor for UsoEntity_common_Decimal.DefinedValues();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t type metadata accessor for NSNumberFormatter()
{
  v2 = lazy cache variable for type metadata for NSNumberFormatter;
  if (!lazy cache variable for type metadata for NSNumberFormatter)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSNumberFormatter);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type UsoEntity_common_Decimal.DefinedValues and conformance UsoEntity_common_Decimal.DefinedValues()
{
  v2 = lazy protocol witness table cache variable for type UsoEntity_common_Decimal.DefinedValues and conformance UsoEntity_common_Decimal.DefinedValues;
  if (!lazy protocol witness table cache variable for type UsoEntity_common_Decimal.DefinedValues and conformance UsoEntity_common_Decimal.DefinedValues)
  {
    type metadata accessor for UsoEntity_common_Decimal.DefinedValues();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UsoEntity_common_Decimal.DefinedValues and conformance UsoEntity_common_Decimal.DefinedValues);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined destroy of UsoEntity_common_Number.DefinedValues?(uint64_t a1)
{
  v3 = type metadata accessor for UsoEntity_common_Number.DefinedValues();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t PaymentsErrorTemplateProvider.catFamily.getter()
{
  v2 = *(v0 + 56);

  return v2;
}

uint64_t PaymentsErrorTemplateProvider.searchForAccountsCATs.getter()
{
  v2 = *(v0 + 64);

  return v2;
}

uint64_t PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(void *a1, uint64_t a2, uint64_t a3)
{
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v5 = *v3;
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = v3;
  v12 = *(v5 + 80);
  v11 = *(v5 + 88);
  outlined init with copy of GlobalsProviding(a1, v10);
  outlined init with take of CommonLabelsProviding(v10, v3 + 2);

  v3[7] = a2;

  v3[8] = a3;

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

uint64_t PaymentsErrorTemplateProvider.continueInAppError(intentType:app:)(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 56) = v3;
  *(v4 + 48) = a3;
  *(v4 + 89) = a2;
  *(v4 + 40) = a1;
  *(v4 + 16) = v4;
  *(v4 + 88) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 88) = a2;
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  return MEMORY[0x2822009F8](PaymentsErrorTemplateProvider.continueInAppError(intentType:app:), 0);
}

uint64_t PaymentsErrorTemplateProvider.continueInAppError(intentType:app:)()
{
  *(v0 + 16) = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("fallback", 8uLL, 1);
  *(v0 + 64) = v1._object;
  v2 = swift_task_alloc();
  *(v6 + 72) = v2;
  *v2 = *(v6 + 16);
  v2[1] = PaymentsErrorTemplateProvider.continueInAppError(intentType:app:);
  v3 = *(v6 + 89);
  v4 = *(v6 + 40);

  return PaymentsErrorTemplateProvider.errorWithCode(responseCode:intentType:intentPerson:currencyAmount:memo:app:)(v4, v1._countAndFlagsBits, v1._object, v3, 0, 0, 0, 0);
}

{
  v4 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](PaymentsErrorTemplateProvider.continueInAppError(intentType:app:), 0);
  }

  else
  {

    v2 = *(*(v4 + 16) + 8);

    return v2();
  }
}

{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t PaymentsErrorTemplateProvider.errorWithCode(from:)(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v5 = *v2;
  v3[3] = a2;
  v3[8] = *(v5 + 80);
  v3[9] = *(v5 + 88);
  v3[4] = v2;
  return MEMORY[0x2822009F8](PaymentsErrorTemplateProvider.errorWithCode(from:), 0);
}

uint64_t PaymentsErrorTemplateProvider.errorWithCode(from:)()
{
  v0[2] = v0;
  type metadata accessor for IntentResolutionRecord();
  v5 = IntentResolutionRecord.intent.getter();
  v0[10] = v5;
  v6 = IntentResolutionRecord.intentResponse.getter();
  v0[11] = v6;
  v7 = IntentResolutionRecord.app.getter();
  v0[12] = v7;
  v1 = swift_task_alloc();
  v4[13] = v1;
  *v1 = v4[2];
  v1[1] = PaymentsErrorTemplateProvider.errorWithCode(from:);
  v2 = v4[5];

  return PaymentsErrorTemplateProvider.errorWithCode(intent:intentResponse:app:)(v2, v5, v6, v7);
}

{
  v6 = *v1;
  v6[2] = *v1;
  v6[14] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](PaymentsErrorTemplateProvider.errorWithCode(from:), 0);
  }

  else
  {
    v4 = v6[11];
    v5 = v6[10];

    v2 = *(v6[2] + 8);

    return v2();
  }
}

{
  v3 = v0[11];
  v4 = v0[10];
  v0[2] = v0;

  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  v1 = *(v0[2] + 8);

  return v1();
}

uint64_t PaymentsErrorTemplateProvider.unsupportedErrorWithCode(from:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 200) = v2;
  *(v3 + 192) = a2;
  *(v3 + 184) = a1;
  *(v3 + 80) = v3;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 136) = 0;
  *(v3 + 480) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 144) = 0;
  *(v3 + 152) = 0;
  *(v3 + 160) = 0;
  *(v3 + 488) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  v11 = *v2;
  *(v3 + 208) = *v2;
  *(v3 + 216) = *(v11 + 80);
  v4 = type metadata accessor for ParameterResolutionRecord();
  *(v3 + 224) = v4;
  v8 = *(v4 - 8);
  *(v3 + 232) = v8;
  *(v3 + 240) = *(v8 + 64);
  *(v3 + 248) = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  *(v3 + 256) = v5;
  *(v3 + 264) = *(v5 - 8);
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = swift_task_alloc();
  *(v3 + 304) = swift_task_alloc();
  v6 = type metadata accessor for ParameterIdentifier();
  *(v3 + 312) = v6;
  *(v3 + 320) = *(v6 - 8);
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 88) = a2;
  *(v3 + 96) = v10;
  *(v3 + 336) = *(v11 + 88);

  return MEMORY[0x2822009F8](PaymentsErrorTemplateProvider.unsupportedErrorWithCode(from:), 0);
}

uint64_t PaymentsErrorTemplateProvider.unsupportedErrorWithCode(from:)()
{
  v225 = v0;
  v0[10] = v0;
  v203 = ParameterResolutionRecord.intent.getter();
  v0[43] = v203;
  objc_opt_self();
  v204 = swift_dynamicCastObjCClass();
  v0[44] = v204;
  if (v204)
  {
    v199 = *(v202 + 328);
    v200 = *(v202 + 312);
    v198 = *(v202 + 320);
    MEMORY[0x277D82BE0](v204);
    *(v202 + 160) = v204;
    ParameterResolutionRecord.parameter.getter();
    rawValue._countAndFlagsBits = ParameterIdentifier.name.getter();
    rawValue._object = v1;
    (*(v198 + 8))(v199, v200);
    v2.value = RequestPaymentSlots.init(rawValue:)(rawValue).value;
    if (v2.value == SiriPaymentsIntents_RequestPaymentSlots_unknownDefault)
    {
      v147 = *(v202 + 336);
      v24 = *(v202 + 296);
      v143 = *(v202 + 256);
      v150 = *(v202 + 248);
      v151 = *(v202 + 224);
      v146 = *(v202 + 216);
      v145 = *(v202 + 192);
      v142 = *(v202 + 264);
      v144 = *(v202 + 232);
      v148 = *(v202 + 208);
      v25 = Logger.payments.unsafeMutableAddressor();
      (*(v142 + 16))(v24, v25, v143);
      (*(v144 + 16))(v150, v145, v151);
      v149 = (*(v144 + 80) + 48) & ~*(v144 + 80);
      v152 = swift_allocObject();
      *(v152 + 2) = v146;
      *(v152 + 3) = v147;
      *(v152 + 4) = *(v148 + 96);
      *(v152 + 5) = *(v148 + 104);
      (*(v144 + 32))(&v152[v149], v150, v151);
      log = Logger.logObject.getter();
      v159 = static os_log_type_t.error.getter();
      v154 = swift_allocObject();
      *(v154 + 16) = 32;
      v155 = swift_allocObject();
      *(v155 + 16) = 8;
      v153 = swift_allocObject();
      *(v153 + 16) = partial apply for implicit closure #3 in PaymentsErrorTemplateProvider.unsupportedErrorWithCode(from:);
      *(v153 + 24) = v152;
      v156 = swift_allocObject();
      *(v156 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v156 + 24) = v153;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      _allocateUninitializedArray<A>(_:)();
      v157 = v26;

      *v157 = partial apply for closure #1 in OSLogArguments.append(_:);
      v157[1] = v154;

      v157[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v157[3] = v155;

      v157[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v157[5] = v156;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(log, v159))
      {
        v139 = static UnsafeMutablePointer.allocate(capacity:)();
        v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v140 = createStorage<A>(capacity:type:)(0, v138, v138);
        v141 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v215 = v139;
        v216 = v140;
        v217 = v141;
        serialize(_:at:)(2, &v215);
        serialize(_:at:)(1, &v215);
        v218 = partial apply for closure #1 in OSLogArguments.append(_:);
        v219 = v154;
        closure #1 in osLogInternal(_:log:type:)(&v218, &v215, &v216, &v217);
        v218 = partial apply for closure #1 in OSLogArguments.append(_:);
        v219 = v155;
        closure #1 in osLogInternal(_:log:type:)(&v218, &v215, &v216, &v217);
        v218 = partial apply for closure #1 in OSLogArguments.append(_:);
        v219 = v156;
        closure #1 in osLogInternal(_:log:type:)(&v218, &v215, &v216, &v217);
        _os_log_impl(&dword_2686B1000, log, v159, "#PaymentsErrorTemplateProvider unsupportedErrorWithCode unknown parameter for Request: %s", v139, 0xCu);
        destroyStorage<A>(_:count:)(v140, 0, v138);
        destroyStorage<A>(_:count:)(v141, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v139, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v135 = *(v202 + 296);
      v136 = *(v202 + 256);
      v137 = *(v202 + 184);
      v134 = *(v202 + 264);
      MEMORY[0x277D82BD8](log);
      (*(v134 + 8))(v135, v136);
      v27 = type metadata accessor for TemplatingResult();
      (*(*(v27 - 8) + 56))(v137, 1);
      MEMORY[0x277D82BD8](v204);
      MEMORY[0x277D82BD8](v203);
    }

    else
    {
      *(v202 + 488) = v2;
      *(v202 + 48) = 0;
      *(v202 + 56) = 0;
      if (v2.value)
      {
        if (v2.value == SiriPaymentsIntents_RequestPaymentSlots_currencyAmount)
        {
          v197 = ParameterResolutionRecord.result.getter();
          [v197 unsupportedReason];
          MEMORY[0x277D82BD8](v197);
          INSiriAuthorizationStatus.init(rawValue:)();
          if ((v4 & 1) == 0)
          {
            *(v202 + 176) = v3;
            *(v202 + 48) = static PaymentIntentCATResponseCode.from(_:)(v3);
            *(v202 + 56) = v5;
          }
        }
      }

      else
      {
        v196 = ParameterResolutionRecord.result.getter();
        [v196 unsupportedReason];
        MEMORY[0x277D82BD8](v196);
        INSiriAuthorizationStatus.init(rawValue:)();
        if ((v7 & 1) == 0)
        {
          *(v202 + 168) = v6;
          *(v202 + 48) = static PaymentIntentCATResponseCode.from(_:)(v6);
          *(v202 + 56) = v8;
        }
      }

      v194 = *(v202 + 48);
      v195 = *(v202 + 56);
      *(v202 + 360) = v195;

      if (v195)
      {
        *(v202 + 64) = v194;
        *(v202 + 72) = v195;
        v191 = [v204 payer];
        *(v202 + 368) = v191;
        v192 = [v204 currencyAmount];
        *(v202 + 376) = v192;
        v193 = [v204 note];
        if (v193)
        {
          v187 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v188 = v9;
          MEMORY[0x277D82BD8](v193);
          v189 = v187;
          v190 = v188;
        }

        else
        {
          v189 = 0;
          v190 = 0;
        }

        *(v202 + 384) = v190;
        v186 = ParameterResolutionRecord.app.getter();
        *(v202 + 392) = v186;
        v10 = swift_task_alloc();
        v11 = v194;
        v12 = v195;
        v13 = v191;
        v14 = v192;
        v15 = v189;
        v16 = v190;
        *(v202 + 400) = v10;
        *v10 = *(v202 + 80);
        v10[1] = PaymentsErrorTemplateProvider.unsupportedErrorWithCode(from:);
        v17 = *(v202 + 184);
        v227 = v186;
        v18 = 0;

        return PaymentsErrorTemplateProvider.errorWithCode(responseCode:intentType:intentPerson:currencyAmount:memo:app:)(v17, v11, v12, v18, v13, v14, v15, v16);
      }

      v173 = *(v202 + 336);
      v20 = *(v202 + 304);
      v169 = *(v202 + 256);
      v176 = *(v202 + 248);
      v177 = *(v202 + 224);
      v172 = *(v202 + 216);
      v171 = *(v202 + 192);
      v168 = *(v202 + 264);
      v170 = *(v202 + 232);
      v174 = *(v202 + 208);
      v21 = Logger.payments.unsafeMutableAddressor();
      (*(v168 + 16))(v20, v21, v169);
      (*(v170 + 16))(v176, v171, v177);
      v175 = (*(v170 + 80) + 48) & ~*(v170 + 80);
      v178 = swift_allocObject();
      *(v178 + 2) = v172;
      *(v178 + 3) = v173;
      *(v178 + 4) = *(v174 + 96);
      *(v178 + 5) = *(v174 + 104);
      (*(v170 + 32))(&v178[v175], v176, v177);
      oslog = Logger.logObject.getter();
      v185 = static os_log_type_t.error.getter();
      v180 = swift_allocObject();
      *(v180 + 16) = 32;
      v181 = swift_allocObject();
      *(v181 + 16) = 8;
      v179 = swift_allocObject();
      *(v179 + 16) = partial apply for implicit closure #3 in PaymentsErrorTemplateProvider.unsupportedErrorWithCode(from:);
      *(v179 + 24) = v178;
      v182 = swift_allocObject();
      *(v182 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v182 + 24) = v179;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      _allocateUninitializedArray<A>(_:)();
      v183 = v22;

      *v183 = partial apply for closure #1 in OSLogArguments.append(_:);
      v183[1] = v180;

      v183[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v183[3] = v181;

      v183[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v183[5] = v182;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(oslog, v185))
      {
        buf = static UnsafeMutablePointer.allocate(capacity:)();
        v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v166 = createStorage<A>(capacity:type:)(0, v164, v164);
        v167 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v220 = buf;
        v221 = v166;
        v222 = v167;
        serialize(_:at:)(2, &v220);
        serialize(_:at:)(1, &v220);
        v223 = partial apply for closure #1 in OSLogArguments.append(_:);
        v224 = v180;
        closure #1 in osLogInternal(_:log:type:)(&v223, &v220, &v221, &v222);
        v223 = partial apply for closure #1 in OSLogArguments.append(_:);
        v224 = v181;
        closure #1 in osLogInternal(_:log:type:)(&v223, &v220, &v221, &v222);
        v223 = partial apply for closure #1 in OSLogArguments.append(_:);
        v224 = v182;
        closure #1 in osLogInternal(_:log:type:)(&v223, &v220, &v221, &v222);
        _os_log_impl(&dword_2686B1000, oslog, v185, "#PaymentsErrorTemplateProvider unsupportedErrorWithCode recognized Request slot %s, but no known error code found, returning nil", buf, 0xCu);
        destroyStorage<A>(_:count:)(v166, 0, v164);
        destroyStorage<A>(_:count:)(v167, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v161 = *(v202 + 304);
      v162 = *(v202 + 256);
      v163 = *(v202 + 184);
      v160 = *(v202 + 264);
      MEMORY[0x277D82BD8](oslog);
      (*(v160 + 8))(v161, v162);
      v23 = type metadata accessor for TemplatingResult();
      (*(*(v23 - 8) + 56))(v163, 1);
      outlined destroy of String.UTF8View(v202 + 48);
      MEMORY[0x277D82BD8](v204);
      MEMORY[0x277D82BD8](v203);
    }
  }

  else
  {
    objc_opt_self();
    v28 = swift_dynamicCastObjCClass();
    v133 = v28;
    *(v202 + 416) = v28;
    if (v28)
    {
      v130 = *(v202 + 328);
      v131 = *(v202 + 312);
      v129 = *(v202 + 320);
      MEMORY[0x277D82BE0](v28);
      *(v202 + 136) = v133;
      ParameterResolutionRecord.parameter.getter();
      v132._countAndFlagsBits = ParameterIdentifier.name.getter();
      v132._object = v29;
      (*(v129 + 8))(v130, v131);
      v30.value = SendPaymentSlots.init(rawValue:)(v132).value;
      if (v30.value == SiriPaymentsIntents_SendPaymentSlots_unknownDefault)
      {
        v78 = *(v202 + 336);
        v43 = *(v202 + 280);
        v74 = *(v202 + 256);
        v81 = *(v202 + 248);
        v82 = *(v202 + 224);
        v77 = *(v202 + 216);
        v76 = *(v202 + 192);
        v73 = *(v202 + 264);
        v75 = *(v202 + 232);
        v79 = *(v202 + 208);
        v44 = Logger.payments.unsafeMutableAddressor();
        (*(v73 + 16))(v43, v44, v74);
        (*(v75 + 16))(v81, v76, v82);
        v80 = (*(v75 + 80) + 48) & ~*(v75 + 80);
        v83 = swift_allocObject();
        *(v83 + 2) = v77;
        *(v83 + 3) = v78;
        *(v83 + 4) = *(v79 + 96);
        *(v83 + 5) = *(v79 + 104);
        (*(v75 + 32))(&v83[v80], v81, v82);
        v89 = Logger.logObject.getter();
        v90 = static os_log_type_t.error.getter();
        v85 = swift_allocObject();
        *(v85 + 16) = 32;
        v86 = swift_allocObject();
        *(v86 + 16) = 8;
        v84 = swift_allocObject();
        *(v84 + 16) = partial apply for implicit closure #3 in PaymentsErrorTemplateProvider.unsupportedErrorWithCode(from:);
        *(v84 + 24) = v83;
        v87 = swift_allocObject();
        *(v87 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
        *(v87 + 24) = v84;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        _allocateUninitializedArray<A>(_:)();
        v88 = v45;

        *v88 = partial apply for closure #1 in OSLogArguments.append(_:);
        v88[1] = v85;

        v88[2] = partial apply for closure #1 in OSLogArguments.append(_:);
        v88[3] = v86;

        v88[4] = partial apply for closure #1 in OSLogArguments.append(_:);
        v88[5] = v87;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v89, v90))
        {
          v70 = static UnsafeMutablePointer.allocate(capacity:)();
          v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v71 = createStorage<A>(capacity:type:)(0, v69, v69);
          v72 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v205 = v70;
          v206 = v71;
          v207 = v72;
          serialize(_:at:)(2, &v205);
          serialize(_:at:)(1, &v205);
          v208 = partial apply for closure #1 in OSLogArguments.append(_:);
          v209 = v85;
          closure #1 in osLogInternal(_:log:type:)(&v208, &v205, &v206, &v207);
          v208 = partial apply for closure #1 in OSLogArguments.append(_:);
          v209 = v86;
          closure #1 in osLogInternal(_:log:type:)(&v208, &v205, &v206, &v207);
          v208 = partial apply for closure #1 in OSLogArguments.append(_:);
          v209 = v87;
          closure #1 in osLogInternal(_:log:type:)(&v208, &v205, &v206, &v207);
          _os_log_impl(&dword_2686B1000, v89, v90, "#PaymentsErrorTemplateProvider unsupportedErrorWithCode unknown parameter for Send: %s", v70, 0xCu);
          destroyStorage<A>(_:count:)(v71, 0, v69);
          destroyStorage<A>(_:count:)(v72, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v70, MEMORY[0x277D84B78]);
        }

        else
        {
        }

        v66 = *(v202 + 280);
        v67 = *(v202 + 256);
        v68 = *(v202 + 184);
        v65 = *(v202 + 264);
        MEMORY[0x277D82BD8](v89);
        (*(v65 + 8))(v66, v67);
        v46 = type metadata accessor for TemplatingResult();
        (*(*(v46 - 8) + 56))(v68, 1);
        MEMORY[0x277D82BD8](v133);
        MEMORY[0x277D82BD8](v203);
      }

      else
      {
        *(v202 + 480) = v30;
        *(v202 + 16) = 0;
        *(v202 + 24) = 0;
        if (v30.value)
        {
          if (v30.value == SiriPaymentsIntents_SendPaymentSlots_currencyAmount)
          {
            v128 = ParameterResolutionRecord.result.getter();
            [v128 unsupportedReason];
            MEMORY[0x277D82BD8](v128);
            INSiriAuthorizationStatus.init(rawValue:)();
            if ((v32 & 1) == 0)
            {
              *(v202 + 152) = v31;
              *(v202 + 16) = static PaymentIntentCATResponseCode.from(_:)(v31);
              *(v202 + 24) = v33;
            }
          }
        }

        else
        {
          v127 = ParameterResolutionRecord.result.getter();
          [v127 unsupportedReason];
          MEMORY[0x277D82BD8](v127);
          INSiriAuthorizationStatus.init(rawValue:)();
          if ((v35 & 1) == 0)
          {
            *(v202 + 144) = v34;
            *(v202 + 16) = static PaymentIntentCATResponseCode.from(_:)(v34);
            *(v202 + 24) = v36;
          }
        }

        v125 = *(v202 + 16);
        v126 = *(v202 + 24);
        *(v202 + 424) = v126;

        if (v126)
        {
          *(v202 + 32) = v125;
          *(v202 + 40) = v126;
          v122 = [v133 payee];
          *(v202 + 432) = v122;
          v123 = [v133 currencyAmount];
          *(v202 + 440) = v123;
          v124 = [v133 note];
          if (v124)
          {
            v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v119 = v37;
            MEMORY[0x277D82BD8](v124);
            v120 = v118;
            v121 = v119;
          }

          else
          {
            v120 = 0;
            v121 = 0;
          }

          *(v202 + 448) = v121;
          v117 = ParameterResolutionRecord.app.getter();
          *(v202 + 456) = v117;
          v38 = swift_task_alloc();
          v11 = v125;
          v12 = v126;
          v13 = v122;
          v14 = v123;
          v15 = v120;
          v16 = v121;
          *(v202 + 464) = v38;
          *v38 = *(v202 + 80);
          v38[1] = PaymentsErrorTemplateProvider.unsupportedErrorWithCode(from:);
          v17 = *(v202 + 184);
          v227 = v117;
          v18 = 1;

          return PaymentsErrorTemplateProvider.errorWithCode(responseCode:intentType:intentPerson:currencyAmount:memo:app:)(v17, v11, v12, v18, v13, v14, v15, v16);
        }

        v104 = *(v202 + 336);
        v39 = *(v202 + 288);
        v100 = *(v202 + 256);
        v107 = *(v202 + 248);
        v108 = *(v202 + 224);
        v103 = *(v202 + 216);
        v102 = *(v202 + 192);
        v99 = *(v202 + 264);
        v101 = *(v202 + 232);
        v105 = *(v202 + 208);
        v40 = Logger.payments.unsafeMutableAddressor();
        (*(v99 + 16))(v39, v40, v100);
        (*(v101 + 16))(v107, v102, v108);
        v106 = (*(v101 + 80) + 48) & ~*(v101 + 80);
        v109 = swift_allocObject();
        *(v109 + 2) = v103;
        *(v109 + 3) = v104;
        *(v109 + 4) = *(v105 + 96);
        *(v109 + 5) = *(v105 + 104);
        (*(v101 + 32))(&v109[v106], v107, v108);
        v115 = Logger.logObject.getter();
        v116 = static os_log_type_t.error.getter();
        v111 = swift_allocObject();
        *(v111 + 16) = 32;
        v112 = swift_allocObject();
        *(v112 + 16) = 8;
        v110 = swift_allocObject();
        *(v110 + 16) = partial apply for implicit closure #3 in PaymentsErrorTemplateProvider.unsupportedErrorWithCode(from:);
        *(v110 + 24) = v109;
        v113 = swift_allocObject();
        *(v113 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
        *(v113 + 24) = v110;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        _allocateUninitializedArray<A>(_:)();
        v114 = v41;

        *v114 = partial apply for closure #1 in OSLogArguments.append(_:);
        v114[1] = v111;

        v114[2] = partial apply for closure #1 in OSLogArguments.append(_:);
        v114[3] = v112;

        v114[4] = partial apply for closure #1 in OSLogArguments.append(_:);
        v114[5] = v113;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v115, v116))
        {
          v96 = static UnsafeMutablePointer.allocate(capacity:)();
          v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v97 = createStorage<A>(capacity:type:)(0, v95, v95);
          v98 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v210 = v96;
          v211 = v97;
          v212 = v98;
          serialize(_:at:)(2, &v210);
          serialize(_:at:)(1, &v210);
          v213 = partial apply for closure #1 in OSLogArguments.append(_:);
          v214 = v111;
          closure #1 in osLogInternal(_:log:type:)(&v213, &v210, &v211, &v212);
          v213 = partial apply for closure #1 in OSLogArguments.append(_:);
          v214 = v112;
          closure #1 in osLogInternal(_:log:type:)(&v213, &v210, &v211, &v212);
          v213 = partial apply for closure #1 in OSLogArguments.append(_:);
          v214 = v113;
          closure #1 in osLogInternal(_:log:type:)(&v213, &v210, &v211, &v212);
          _os_log_impl(&dword_2686B1000, v115, v116, "#PaymentsErrorTemplateProvider unsupportedErrorWithCode recognized Send slot %s, but no known error code found, returning nil", v96, 0xCu);
          destroyStorage<A>(_:count:)(v97, 0, v95);
          destroyStorage<A>(_:count:)(v98, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v96, MEMORY[0x277D84B78]);
        }

        else
        {
        }

        v92 = *(v202 + 288);
        v93 = *(v202 + 256);
        v94 = *(v202 + 184);
        v91 = *(v202 + 264);
        MEMORY[0x277D82BD8](v115);
        (*(v91 + 8))(v92, v93);
        v42 = type metadata accessor for TemplatingResult();
        (*(*(v42 - 8) + 56))(v94, 1);
        outlined destroy of String.UTF8View(v202 + 16);
        MEMORY[0x277D82BD8](v133);
        MEMORY[0x277D82BD8](v203);
      }
    }

    else
    {
      v47 = *(v202 + 272);
      v61 = *(v202 + 256);
      v60 = *(v202 + 264);
      MEMORY[0x277D82BD8](v203);
      v48 = Logger.payments.unsafeMutableAddressor();
      (*(v60 + 16))(v47, v48, v61);
      v63 = Logger.logObject.getter();
      v62 = static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v64 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v63, v62))
      {
        v56 = static UnsafeMutablePointer.allocate(capacity:)();
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v57 = createStorage<A>(capacity:type:)(0, v55, v55);
        v58 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v202 + 104) = v56;
        *(v202 + 112) = v57;
        *(v202 + 120) = v58;
        serialize(_:at:)(0, (v202 + 104));
        serialize(_:at:)(0, (v202 + 104));
        *(v202 + 128) = v64;
        v59 = swift_task_alloc();
        v59[2] = v202 + 104;
        v59[3] = v202 + 112;
        v59[4] = v202 + 120;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_2686B1000, v63, v62, "#PaymentsErrorTemplateProvider unsupportedErrorWithCode returning nil", v56, 2u);
        destroyStorage<A>(_:count:)(v57, 0, v55);
        destroyStorage<A>(_:count:)(v58, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v56, MEMORY[0x277D84B78]);
      }

      v52 = *(v202 + 272);
      v53 = *(v202 + 256);
      v54 = *(v202 + 184);
      v51 = *(v202 + 264);
      MEMORY[0x277D82BD8](v63);
      (*(v51 + 8))(v52, v53);
      v49 = type metadata accessor for TemplatingResult();
      (*(*(v49 - 8) + 56))(v54, 1);
    }
  }

  v50 = *(*(v202 + 80) + 8);

  return v50();
}

{
  v6 = *v1;
  v6[10] = *v1;
  v6[51] = v0;

  if (v0)
  {
    v2 = PaymentsErrorTemplateProvider.unsupportedErrorWithCode(from:);
  }

  else
  {
    v4 = v6[47];
    v5 = v6[46];

    v2 = PaymentsErrorTemplateProvider.unsupportedErrorWithCode(from:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v5 = v0[44];
  v6 = v0[43];
  v4 = v0[23];
  v0[10] = v0;
  v1 = type metadata accessor for TemplatingResult();
  (*(*(v1 - 8) + 56))(v4, 0, 1);

  outlined destroy of String.UTF8View((v0 + 6));
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);

  v2 = *(v0[10] + 8);

  return v2();
}

{
  v6 = *v1;
  v6[10] = *v1;
  v6[59] = v0;

  if (v0)
  {
    v2 = PaymentsErrorTemplateProvider.unsupportedErrorWithCode(from:);
  }

  else
  {
    v4 = v6[55];
    v5 = v6[54];

    v2 = PaymentsErrorTemplateProvider.unsupportedErrorWithCode(from:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v5 = v0[52];
  v6 = v0[43];
  v4 = v0[23];
  v0[10] = v0;
  v1 = type metadata accessor for TemplatingResult();
  (*(*(v1 - 8) + 56))(v4, 0, 1);

  outlined destroy of String.UTF8View((v0 + 2));
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);

  v2 = *(v0[10] + 8);

  return v2();
}

{
  v3 = v0[47];
  v4 = v0[46];
  v5 = v0[44];
  v6 = v0[43];
  v0[10] = v0;

  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);

  outlined destroy of String.UTF8View((v0 + 6));
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);

  v1 = *(v0[10] + 8);

  return v1();
}

{
  v3 = v0[55];
  v4 = v0[54];
  v5 = v0[52];
  v6 = v0[43];
  v0[10] = v0;

  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);

  outlined destroy of String.UTF8View((v0 + 2));
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);

  v1 = *(v0[10] + 8);

  return v1();
}

uint64_t implicit closure #1 in PaymentsErrorTemplateProvider.unsupportedErrorWithCode(from:)(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v6 = 0;
  v11 = type metadata accessor for ParameterIdentifier();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v5);
  v10 = &v4 - v7;
  type metadata accessor for ParameterResolutionRecord();
  ParameterResolutionRecord.parameter.getter();
  v12 = ParameterIdentifier.name.getter();
  v13 = v2;
  (*(v8 + 8))(v10, v11);
  return v12;
}

uint64_t PaymentsErrorTemplateProvider.errorWithCode(intent:intentResponse:app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[20] = v4;
  v5[19] = a4;
  v5[18] = a3;
  v5[17] = a2;
  v5[16] = a1;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = 0;
  v5[6] = 0;
  v5[11] = 0;
  v5[12] = 0;
  v5[13] = 0;
  v5[14] = 0;
  v5[15] = 0;
  v6 = type metadata accessor for Logger();
  v5[21] = v6;
  v5[22] = *(v6 - 8);
  v5[23] = swift_task_alloc();
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = v4;

  return MEMORY[0x2822009F8](PaymentsErrorTemplateProvider.errorWithCode(intent:intentResponse:app:), 0);
}

uint64_t PaymentsErrorTemplateProvider.errorWithCode(intent:intentResponse:app:)()
{
  v66 = v0[18];
  v1 = v0[17];
  v0[2] = v0;
  MEMORY[0x277D82BE0](v1);
  MEMORY[0x277D82BE0](v66);
  objc_opt_self();
  v67 = swift_dynamicCastObjCClass();
  v0[24] = v67;
  if (v67)
  {
    MEMORY[0x277D82BE0](v67);
    objc_opt_self();
    v64 = swift_dynamicCastObjCClass();
    *(v65 + 200) = v64;
    if (v64)
    {
      MEMORY[0x277D82BE0](v64);
      *(v65 + 112) = v67;
      *(v65 + 120) = v64;
      v59 = static PaymentIntentCATResponseCode.from(_:)([v64 code]);
      v60 = v2;
      *(v65 + 208) = v2;
      v61 = [v67 payer];
      *(v65 + 216) = v61;
      v62 = [v67 currencyAmount];
      *(v65 + 224) = v62;
      v63 = [v67 note];
      if (v63)
      {
        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v3;
        MEMORY[0x277D82BD8](v63);
        v57 = v55;
        v58 = v56;
      }

      else
      {
        v57 = 0;
        v58 = 0;
      }

      *(v65 + 232) = v58;
      v4 = swift_task_alloc();
      v5 = v59;
      v6 = v60;
      v7 = v61;
      v8 = v62;
      v9 = v57;
      v10 = v58;
      *(v65 + 240) = v4;
      *v4 = *(v65 + 16);
      v4[1] = PaymentsErrorTemplateProvider.errorWithCode(intent:intentResponse:app:);
      v11 = *(v65 + 128);
      v12 = 0;

      return PaymentsErrorTemplateProvider.errorWithCode(responseCode:intentType:intentPerson:currencyAmount:memo:app:)(v11, v5, v6, v12, v7, v8, v9, v10);
    }

    MEMORY[0x277D82BD8](v67);
  }

  objc_opt_self();
  v54 = swift_dynamicCastObjCClass();
  *(v65 + 256) = v54;
  if (v54)
  {
    MEMORY[0x277D82BE0](v54);
    objc_opt_self();
    v53 = swift_dynamicCastObjCClass();
    *(v65 + 264) = v53;
    if (v53)
    {
      MEMORY[0x277D82BE0](v53);
      *(v65 + 96) = v54;
      *(v65 + 104) = v53;
      v48 = static PaymentIntentCATResponseCode.from(_:)([v53 code]);
      v49 = v14;
      *(v65 + 272) = v14;
      v50 = [v54 payee];
      *(v65 + 280) = v50;
      v51 = [v54 currencyAmount];
      *(v65 + 288) = v51;
      v52 = [v54 note];
      if (v52)
      {
        v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v15;
        MEMORY[0x277D82BD8](v52);
        v46 = v44;
        v47 = v45;
      }

      else
      {
        v46 = 0;
        v47 = 0;
      }

      *(v65 + 296) = v47;
      v16 = swift_task_alloc();
      v5 = v48;
      v6 = v49;
      v7 = v50;
      v8 = v51;
      v9 = v46;
      v10 = v47;
      *(v65 + 304) = v16;
      *v16 = *(v65 + 16);
      v16[1] = PaymentsErrorTemplateProvider.errorWithCode(intent:intentResponse:app:);
      v11 = *(v65 + 128);
      v12 = 1;

      return PaymentsErrorTemplateProvider.errorWithCode(responseCode:intentType:intentPerson:currencyAmount:memo:app:)(v11, v5, v6, v12, v7, v8, v9, v10);
    }

    MEMORY[0x277D82BD8](v54);
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass() && (objc_opt_self(), v43 = swift_dynamicCastObjCClass(), (*(v65 + 320) = v43) != 0))
  {
    MEMORY[0x277D82BE0](v43);
    *(v65 + 88) = v43;
    v41 = static PaymentIntentCATResponseCode.from(_:)([v43 code]);
    v42 = v17;
    *(v65 + 328) = v17;
    v18 = swift_task_alloc();
    *(v65 + 336) = v18;
    *v18 = *(v65 + 16);
    v18[1] = PaymentsErrorTemplateProvider.errorWithCode(intent:intentResponse:app:);
    v19 = *(v65 + 152);
    v20 = *(v65 + 128);

    return PaymentsErrorTemplateProvider.searchForAccountErrorWithCode(responseCode:app:)(v20, v41, v42, v19);
  }

  else
  {
    v21 = *(v65 + 184);
    v37 = *(v65 + 168);
    v36 = *(v65 + 176);
    v22 = Logger.payments.unsafeMutableAddressor();
    (*(v36 + 16))(v21, v22, v37);
    oslog = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v40 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v38))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v33 = createStorage<A>(capacity:type:)(0, v31, v31);
      v34 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v65 + 56) = buf;
      *(v65 + 64) = v33;
      *(v65 + 72) = v34;
      serialize(_:at:)(0, (v65 + 56));
      serialize(_:at:)(0, (v65 + 56));
      *(v65 + 80) = v40;
      v35 = swift_task_alloc();
      v35[2] = v65 + 56;
      v35[3] = v65 + 64;
      v35[4] = v65 + 72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_2686B1000, oslog, v38, "PaymentsErrorTemplateProvider errorWithCode unexpected intent type, returning nil", buf, 2u);
      destroyStorage<A>(_:count:)(v33, 0, v31);
      destroyStorage<A>(_:count:)(v34, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
    }

    v26 = *(v65 + 184);
    v27 = *(v65 + 168);
    v30 = *(v65 + 144);
    v29 = *(v65 + 136);
    v28 = *(v65 + 128);
    v25 = *(v65 + 176);
    MEMORY[0x277D82BD8](oslog);
    (*(v25 + 8))(v26, v27);
    v23 = type metadata accessor for TemplatingResult();
    (*(*(v23 - 8) + 56))(v28, 1);
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](v30);

    v24 = *(*(v65 + 16) + 8);

    return v24();
  }
}

{
  v6 = *v1;
  v6[2] = *v1;
  v6[31] = v0;

  if (v0)
  {
    v2 = PaymentsErrorTemplateProvider.errorWithCode(intent:intentResponse:app:);
  }

  else
  {
    v4 = v6[28];
    v5 = v6[27];

    v2 = PaymentsErrorTemplateProvider.errorWithCode(intent:intentResponse:app:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v5 = v0[25];
  v6 = v0[24];
  v8 = v0[18];
  v7 = v0[17];
  v4 = v0[16];
  v0[2] = v0;
  v1 = type metadata accessor for TemplatingResult();
  (*(*(v1 - 8) + 56))(v4, 0, 1);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);

  v2 = *(v0[2] + 8);

  return v2();
}

{
  v6 = *v1;
  v6[2] = *v1;
  v6[39] = v0;

  if (v0)
  {
    v2 = PaymentsErrorTemplateProvider.errorWithCode(intent:intentResponse:app:);
  }

  else
  {
    v4 = v6[36];
    v5 = v6[35];

    v2 = PaymentsErrorTemplateProvider.errorWithCode(intent:intentResponse:app:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v5 = v0[33];
  v6 = v0[32];
  v8 = v0[18];
  v7 = v0[17];
  v4 = v0[16];
  v0[2] = v0;
  v1 = type metadata accessor for TemplatingResult();
  (*(*(v1 - 8) + 56))(v4, 0, 1);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);

  v2 = *(v0[2] + 8);

  return v2();
}

{
  v4 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 344) = v0;

  if (v0)
  {
    v2 = PaymentsErrorTemplateProvider.errorWithCode(intent:intentResponse:app:);
  }

  else
  {

    v2 = PaymentsErrorTemplateProvider.errorWithCode(intent:intentResponse:app:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v5 = v0[40];
  v7 = v0[18];
  v6 = v0[17];
  v4 = v0[16];
  v0[2] = v0;
  v1 = type metadata accessor for TemplatingResult();
  (*(*(v1 - 8) + 56))(v4, 0, 1);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);

  v2 = *(v0[2] + 8);

  return v2();
}

{
  v3 = v0[28];
  v4 = v0[27];
  v5 = v0[25];
  v6 = v0[24];
  v8 = v0[18];
  v7 = v0[17];
  v0[2] = v0;

  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);

  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);

  v1 = *(v0[2] + 8);

  return v1();
}

{
  v3 = v0[36];
  v4 = v0[35];
  v5 = v0[33];
  v6 = v0[32];
  v8 = v0[18];
  v7 = v0[17];
  v0[2] = v0;

  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);

  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);

  v1 = *(v0[2] + 8);

  return v1();
}

{
  v3 = v0[40];
  v5 = v0[18];
  v4 = v0[17];
  v0[2] = v0;

  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);

  v1 = *(v0[2] + 8);

  return v1();
}

uint64_t PaymentsErrorTemplateProvider.errorWithCode(responseCode:intentType:intentPerson:currencyAmount:memo:app:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 392) = v8;
  *(v9 + 384) = v20;
  *(v9 + 376) = a8;
  *(v9 + 368) = a7;
  *(v9 + 360) = a6;
  *(v9 + 352) = a5;
  *(v9 + 515) = a4;
  *(v9 + 344) = a3;
  *(v9 + 336) = a2;
  *(v9 + 328) = a1;
  *(v9 + 248) = v9;
  *(v9 + 216) = 0;
  *(v9 + 224) = 0;
  *(v9 + 512) = 0;
  *(v9 + 256) = 0;
  *(v9 + 264) = 0;
  *(v9 + 232) = 0;
  *(v9 + 240) = 0;
  *(v9 + 272) = 0;
  *(v9 + 280) = 0;
  *(v9 + 288) = 0;
  *(v9 + 296) = 0;
  *(v9 + 304) = 0;
  *(v9 + 312) = 0;
  *(v9 + 320) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  *(v9 + 400) = swift_task_alloc();
  *(v9 + 408) = swift_task_alloc();
  *(v9 + 416) = swift_task_alloc();
  *(v9 + 424) = swift_task_alloc();
  *(v9 + 432) = swift_task_alloc();
  type metadata accessor for Locale();
  *(v9 + 440) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v9 + 448) = v10;
  *(v9 + 456) = *(v10 - 8);
  *(v9 + 464) = swift_task_alloc();
  *(v9 + 216) = a2;
  *(v9 + 224) = a3;
  *(v9 + 512) = a4;
  *(v9 + 256) = a5;
  *(v9 + 264) = a6;
  *(v9 + 232) = a7;
  *(v9 + 240) = a8;
  *(v9 + 272) = v20;
  *(v9 + 280) = v8;

  return MEMORY[0x2822009F8](PaymentsErrorTemplateProvider.errorWithCode(responseCode:intentType:intentPerson:currencyAmount:memo:app:), 0);
}

uint64_t PaymentsErrorTemplateProvider.errorWithCode(responseCode:intentType:intentPerson:currencyAmount:memo:app:)()
{
  v80 = v0;
  v1 = *(v0 + 464);
  v57 = *(v0 + 456);
  v58 = *(v0 + 448);
  v59 = *(v0 + 515);
  v61 = *(v0 + 344);
  v60 = *(v0 + 336);
  *(v0 + 248) = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v57 + 16))(v1, v2, v58);
  v62 = swift_allocObject();
  *(v62 + 16) = v59;

  v64 = swift_allocObject();
  *(v64 + 16) = v60;
  *(v64 + 24) = v61;
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.debug.getter();
  v66 = swift_allocObject();
  *(v66 + 16) = 32;
  v67 = swift_allocObject();
  *(v67 + 16) = 8;
  v63 = swift_allocObject();
  *(v63 + 16) = partial apply for implicit closure #1 in PaymentsErrorTemplateProvider.errorWithCode(responseCode:intentType:intentPerson:currencyAmount:memo:app:);
  *(v63 + 24) = v62;
  v68 = swift_allocObject();
  *(v68 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v68 + 24) = v63;
  v69 = swift_allocObject();
  *(v69 + 16) = 32;
  v70 = swift_allocObject();
  *(v70 + 16) = 8;
  v65 = swift_allocObject();
  *(v65 + 16) = partial apply for implicit closure #1 in static Logger.logForCrash(_:);
  *(v65 + 24) = v64;
  v71 = swift_allocObject();
  *(v71 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v71 + 24) = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v72 = v3;

  *v72 = partial apply for closure #1 in OSLogArguments.append(_:);
  v72[1] = v66;

  v72[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v72[3] = v67;

  v72[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v72[5] = v68;

  v72[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v72[7] = v69;

  v72[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v72[9] = v70;

  v72[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v72[11] = v71;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v73, v74))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v54 = createStorage<A>(capacity:type:)(0, v52, v52);
    v55 = createStorage<A>(capacity:type:)(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v75 = buf;
    v76 = v54;
    v77 = v55;
    serialize(_:at:)(2, &v75);
    serialize(_:at:)(2, &v75);
    v78 = partial apply for closure #1 in OSLogArguments.append(_:);
    v79 = v66;
    closure #1 in osLogInternal(_:log:type:)(&v78, &v75, &v76, &v77);
    v78 = partial apply for closure #1 in OSLogArguments.append(_:);
    v79 = v67;
    closure #1 in osLogInternal(_:log:type:)(&v78, &v75, &v76, &v77);
    v78 = partial apply for closure #1 in OSLogArguments.append(_:);
    v79 = v68;
    closure #1 in osLogInternal(_:log:type:)(&v78, &v75, &v76, &v77);
    v78 = partial apply for closure #1 in OSLogArguments.append(_:);
    v79 = v69;
    closure #1 in osLogInternal(_:log:type:)(&v78, &v75, &v76, &v77);
    v78 = partial apply for closure #1 in OSLogArguments.append(_:);
    v79 = v70;
    closure #1 in osLogInternal(_:log:type:)(&v78, &v75, &v76, &v77);
    v78 = partial apply for closure #1 in OSLogArguments.append(_:);
    v79 = v71;
    closure #1 in osLogInternal(_:log:type:)(&v78, &v75, &v76, &v77);
    _os_log_impl(&dword_2686B1000, v73, v74, "#PaymentsErrorTemplateProvider errorWithCode intentType %s, code %s", buf, 0x16u);
    destroyStorage<A>(_:count:)(v54, 0, v52);
    destroyStorage<A>(_:count:)(v55, 2, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v48 = *(v56 + 464);
  v49 = *(v56 + 448);
  v51 = *(v56 + 352);
  v47 = *(v56 + 456);
  MEMORY[0x277D82BD8](v73);
  (*(v47 + 8))(v48, v49);
  type metadata accessor for PaymentsDialogConcept.Builder(0);
  v50 = PaymentsDialogConcept.Builder.__allocating_init()();
  *(v56 + 472) = v50;
  *(v56 + 288) = v50;
  MEMORY[0x277D82BE0](v51);
  if (v51)
  {
    v44 = *(v56 + 352);
    v41 = *(v56 + 392);
    v46 = *(v56 + 515);
    *(v56 + 312) = v44;
    type metadata accessor for DialogPerson();
    MEMORY[0x277D82BE0](v44);
    outlined init with copy of GlobalsProviding(v41 + 16, v56 + 16);
    v43 = *(v56 + 40);
    v42 = *(v56 + 48);
    __swift_project_boxed_opaque_existential_1((v56 + 16), v43);
    (*(v42 + 16))(v43);
    __swift_project_boxed_opaque_existential_1((v56 + 56), *(v56 + 80));
    dispatch thunk of DeviceState.siriLocale.getter();
    v45 = DialogPerson.__allocating_init(namedPerson:locale:useConversationalName:)();
    __swift_destroy_boxed_opaque_existential_0((v56 + 56));
    __swift_destroy_boxed_opaque_existential_0((v56 + 16));
    *(v56 + 320) = v45;
    *(v56 + 513) = v46;
    *(v56 + 514) = 0;
    lazy protocol witness table accessor for type Constants.IntentTypeCATCode and conformance Constants.IntentTypeCATCode();
    if (== infix<A>(_:_:)())
    {

      v40 = (v50 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_payerName);
      swift_beginAccess();
      *v40 = v45;
    }

    else
    {

      v39 = (v50 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_payeeName);
      swift_beginAccess();
      *v39 = v45;
    }

    swift_endAccess();

    MEMORY[0x277D82BD8](v44);
  }

  v38 = *(v56 + 360);
  MEMORY[0x277D82BE0](v38);
  if (v38)
  {
    v36 = *(v56 + 360);
    *(v56 + 304) = v36;
    type metadata accessor for DialogCurrency.Builder();
    DialogCurrency.Builder.__allocating_init()();
    v4 = [v36 amount];
    v37 = v4;
    if (v4)
    {
      [v4 doubleValue];
      MEMORY[0x277D82BD8](v37);
    }

    dispatch thunk of DialogAbstractMeasurement.Builder.withValue(_:)();

    v35 = [v36 currencyCode];
    if (v35)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v5;
      MEMORY[0x277D82BD8](v35);
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    if (v34)
    {
      v32 = *(v56 + 432);
      String.toSpeakableString.getter();

      v6 = type metadata accessor for SpeakableString();
      (*(*(v6 - 8) + 56))(v32, 0, 1);
    }

    else
    {
      v29 = *(v56 + 432);
      v7 = type metadata accessor for SpeakableString();
      (*(*(v7 - 8) + 56))(v29, 1);
    }

    v30 = *(v56 + 432);
    dispatch thunk of DialogAbstractMeasurement.Builder.withUnits(_:)();
    outlined destroy of SpeakableString?(v30);

    v31 = dispatch thunk of DialogAbstractMeasurement.Builder.build()();

    swift_beginAccess();
    *(v50 + 16) = v31;

    swift_endAccess();

    MEMORY[0x277D82BD8](v36);
  }

  v28 = *(v56 + 376);

  if (v28)
  {
    v27 = *(v56 + 424);
    String.toSpeakableString.getter();

    v8 = type metadata accessor for SpeakableString();
    (*(*(v8 - 8) + 56))(v27, 0, 1);
  }

  else
  {
    v15 = *(v56 + 424);
    v14 = type metadata accessor for SpeakableString();
    (*(*(v14 - 8) + 56))(v15, 1);
  }

  v18 = *(v56 + 424);
  v16 = *(v56 + 416);
  v21 = *(v56 + 408);
  v23 = *(v56 + 400);
  v20 = *(v56 + 392);
  v22 = *(v56 + 515);
  outlined init with copy of SpeakableString?(v18, v16);
  v17 = (v50 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_memo);
  swift_beginAccess();
  outlined assign with take of SpeakableString?(v16, v17);
  swift_endAccess();
  outlined destroy of SpeakableString?(v18);
  v19 = App.sirikitApp.getter();

  swift_beginAccess();
  *(v50 + 24) = v19;

  swift_endAccess();

  v26 = PaymentsDialogConcept.Builder.build()();
  *(v56 + 480) = v26;
  *(v56 + 296) = v26;
  *(v56 + 488) = *(v20 + 56);

  String.toSpeakableString.getter();
  v24 = type metadata accessor for SpeakableString();
  v25 = *(*(v24 - 8) + 56);
  v25(v21);

  Constants.IntentTypeCATCode.rawValue.getter(v22);
  String.toSpeakableString.getter();

  (v25)(v23, 0, 1, v24);
  v9 = swift_task_alloc();
  *(v56 + 496) = v9;
  *v9 = *(v56 + 248);
  v9[1] = PaymentsErrorTemplateProvider.errorWithCode(responseCode:intentType:intentPerson:currencyAmount:memo:app:);
  v10 = *(v56 + 408);
  v11 = *(v56 + 400);
  v12 = *(v56 + 328);

  return PaymentsBaseCATs.errorWithCode(errorCode:paymentsConcept:intentType:)(v12, v10, v26, v11);
}

{
  v5 = *v1;
  v5[31] = *v1;
  v5[63] = v0;

  if (v0)
  {
    v2 = PaymentsErrorTemplateProvider.errorWithCode(responseCode:intentType:intentPerson:currencyAmount:memo:app:);
  }

  else
  {
    v4 = v5[51];
    outlined destroy of SpeakableString?(v5[50]);

    outlined destroy of SpeakableString?(v4);

    v2 = PaymentsErrorTemplateProvider.errorWithCode(responseCode:intentType:intentPerson:currencyAmount:memo:app:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  *(v0 + 248) = v0;

  v1 = *(*(v0 + 248) + 8);

  return v1();
}

{
  v4 = v0[51];
  v1 = v0[50];
  v0[31] = v0;
  outlined destroy of SpeakableString?(v1);

  outlined destroy of SpeakableString?(v4);

  v2 = *(v0[31] + 8);

  return v2();
}

uint64_t PaymentsErrorTemplateProvider.searchForAccountErrorWithCode(responseCode:app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = v4;
  v5[10] = a4;
  v5[9] = a3;
  v5[8] = a2;
  v5[7] = a1;
  v5[4] = v5;
  v5[2] = 0;
  v5[3] = 0;
  v5[5] = 0;
  v5[6] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  v5[2] = a2;
  v5[3] = a3;
  v5[5] = a4;
  v5[6] = v4;

  return MEMORY[0x2822009F8](PaymentsErrorTemplateProvider.searchForAccountErrorWithCode(responseCode:app:), 0);
}

uint64_t PaymentsErrorTemplateProvider.searchForAccountErrorWithCode(responseCode:app:)()
{
  v43 = v0;
  v1 = v0[16];
  v26 = v0[15];
  v27 = v0[14];
  v29 = v0[9];
  v28 = v0[8];
  v0[4] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v26 + 16))(v1, v2, v27);

  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  *(v30 + 24) = v29;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();
  v32 = swift_allocObject();
  *(v32 + 16) = 32;
  v33 = swift_allocObject();
  *(v33 + 16) = 8;
  v31 = swift_allocObject();
  *(v31 + 16) = partial apply for implicit closure #1 in static Logger.logForCrash(_:);
  *(v31 + 24) = v30;
  v34 = swift_allocObject();
  *(v34 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v34 + 24) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v35 = v3;

  *v35 = partial apply for closure #1 in OSLogArguments.append(_:);
  v35[1] = v32;

  v35[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v35[3] = v33;

  v35[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v35[5] = v34;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v36, v37))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v23 = createStorage<A>(capacity:type:)(0, v21, v21);
    v24 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v38 = buf;
    v39 = v23;
    v40 = v24;
    serialize(_:at:)(2, &v38);
    serialize(_:at:)(1, &v38);
    v41 = partial apply for closure #1 in OSLogArguments.append(_:);
    v42 = v32;
    closure #1 in osLogInternal(_:log:type:)(&v41, &v38, &v39, &v40);
    v41 = partial apply for closure #1 in OSLogArguments.append(_:);
    v42 = v33;
    closure #1 in osLogInternal(_:log:type:)(&v41, &v38, &v39, &v40);
    v41 = partial apply for closure #1 in OSLogArguments.append(_:);
    v42 = v34;
    closure #1 in osLogInternal(_:log:type:)(&v41, &v38, &v39, &v40);
    _os_log_impl(&dword_2686B1000, v36, v37, "#PaymentsErrorTemplateProvider searchForAccountErrorWithCode code %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v23, 0, v21);
    destroyStorage<A>(_:count:)(v24, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v19 = v25[16];
  v20 = v25[14];
  v18 = v25[15];
  MEMORY[0x277D82BD8](v36);
  v4 = (*(v18 + 8))(v19, v20);
  if (App.isFirstParty.getter(v4))
  {
    v16 = v25[13];
    v25[17] = *(v25[11] + 64);

    String.toSpeakableString.getter();
    v5 = type metadata accessor for SpeakableString();
    (*(*(v5 - 8) + 56))(v16, 0, 1);
    v17 = App.sirikitApp.getter();
    v25[18] = v17;
    v6 = swift_task_alloc();
    v25[19] = v6;
    *v6 = v25[4];
    v6[1] = PaymentsErrorTemplateProvider.searchForAccountErrorWithCode(responseCode:app:);
    v7 = v25[13];
    v8 = v25[7];

    return SearchForAccountsCATs.errorWithCodeForApplePay(errorCode:app:)(v8, v7, v17);
  }

  else
  {
    v14 = v25[12];
    v25[21] = *(v25[11] + 64);

    String.toSpeakableString.getter();
    v10 = type metadata accessor for SpeakableString();
    (*(*(v10 - 8) + 56))(v14, 0, 1);
    v15 = App.sirikitApp.getter();
    v25[22] = v15;
    v11 = swift_task_alloc();
    v25[23] = v11;
    *v11 = v25[4];
    v11[1] = PaymentsErrorTemplateProvider.searchForAccountErrorWithCode(responseCode:app:);
    v12 = v25[12];
    v13 = v25[7];

    return SearchForAccountsCATs.errorWithCode(errorCode:app:)(v13, v12, v15);
  }
}

{
  v5 = *v1;
  v5[4] = *v1;
  v5[20] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](PaymentsErrorTemplateProvider.searchForAccountErrorWithCode(responseCode:app:), 0);
  }

  else
  {
    v4 = v5[13];

    outlined destroy of SpeakableString?(v4);

    v2 = *(v5[4] + 8);

    return v2();
  }
}

{
  v5 = *v1;
  v5[4] = *v1;
  v5[24] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](PaymentsErrorTemplateProvider.searchForAccountErrorWithCode(responseCode:app:), 0);
  }

  else
  {
    v4 = v5[12];

    outlined destroy of SpeakableString?(v4);

    v2 = *(v5[4] + 8);

    return v2();
  }
}

{
  v3 = *(v0 + 104);
  *(v0 + 32) = v0;

  outlined destroy of SpeakableString?(v3);

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

{
  v3 = *(v0 + 96);
  *(v0 + 32) = v0;

  outlined destroy of SpeakableString?(v3);

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t PaymentsErrorTemplateProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return v2;
}

uint64_t protocol witness for PaymentsErrorTemplateProviding.continueInAppError(intentType:app:) in conformance PaymentsErrorTemplateProvider<A, B>(uint64_t a1, char a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return PaymentsErrorTemplateProvider.continueInAppError(intentType:app:)(a1, a2, a3);
}

uint64_t protocol witness for PaymentsErrorTemplateProviding.errorWithCode(from:) in conformance PaymentsErrorTemplateProvider<A, B>(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return PaymentsErrorTemplateProvider.errorWithCode(from:)(a1, a2);
}

uint64_t protocol witness for PaymentsErrorTemplateProviding.unsupportedErrorWithCode(from:) in conformance PaymentsErrorTemplateProvider<A, B>(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return PaymentsErrorTemplateProvider.unsupportedErrorWithCode(from:)(a1, a2);
}

uint64_t protocol witness for PaymentsErrorTemplateProviding.errorWithCode(intent:intentResponse:app:) in conformance PaymentsErrorTemplateProvider<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return PaymentsErrorTemplateProvider.errorWithCode(intent:intentResponse:app:)(a1, a2, a3, a4);
}

uint64_t sub_26872E0B0()
{
  v2 = *(type metadata accessor for ParameterResolutionRecord() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 48) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #3 in PaymentsErrorTemplateProvider.unsupportedErrorWithCode(from:)()
{
  v4 = *(v0 + 16);
  v1 = type metadata accessor for ParameterResolutionRecord();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80));

  return implicit closure #1 in PaymentsErrorTemplateProvider.unsupportedErrorWithCode(from:)(v2, v4);
}

uint64_t sub_26872E308()
{
  v2 = *(type metadata accessor for ParameterResolutionRecord() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 48) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_26872E4BC()
{
  v2 = *(type metadata accessor for ParameterResolutionRecord() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 48) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_26872E670()
{
  v2 = *(type metadata accessor for ParameterResolutionRecord() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 48) & ~*(v2 + 80)));
  return swift_deallocObject();
}

void *outlined init with copy of SpeakableString?(const void *a1, void *a2)
{
  v6 = type metadata accessor for SpeakableString();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *outlined assign with take of SpeakableString?(const void *a1, void *a2)
{
  v7 = type metadata accessor for SpeakableString();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

unint64_t lazy protocol witness table accessor for type Constants.IntentTypeCATCode and conformance Constants.IntentTypeCATCode()
{
  v2 = lazy protocol witness table cache variable for type Constants.IntentTypeCATCode and conformance Constants.IntentTypeCATCode;
  if (!lazy protocol witness table cache variable for type Constants.IntentTypeCATCode and conformance Constants.IntentTypeCATCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Constants.IntentTypeCATCode and conformance Constants.IntentTypeCATCode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Constants.IntentTypeCATCode and conformance Constants.IntentTypeCATCode;
  if (!lazy protocol witness table cache variable for type Constants.IntentTypeCATCode and conformance Constants.IntentTypeCATCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Constants.IntentTypeCATCode and conformance Constants.IntentTypeCATCode);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata completion function for PaymentsErrorTemplateProvider(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t DIIdentifier.namespace.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}