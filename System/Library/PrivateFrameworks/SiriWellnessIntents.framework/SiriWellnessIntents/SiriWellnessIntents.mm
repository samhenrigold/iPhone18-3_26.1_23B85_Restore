id MatchedMedName.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = objc_allocWithZone(v6);
  if (a2)
  {
    v12 = MEMORY[0x26D6492A0](a1);

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v11 = MEMORY[0x26D6492A0](a3, a4);
  if (a6)
  {
    v9 = MEMORY[0x26D6492A0](a5);

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v8 = [v20 initWithIdentifier:v13 displayString:v11 pronunciationHint:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);

  MEMORY[0x277D82BD8](v13);
  return v8;
}

id MatchedMedName.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = 0;
  v24 = a1;
  v25 = a2;
  v22 = a3;
  v23 = a4;
  v20 = a5;
  v21 = a6;

  if (a2)
  {
    v11 = MEMORY[0x26D6492A0](a1);

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v10 = MEMORY[0x26D6492A0](a3, a4);

  if (a6)
  {
    v8 = MEMORY[0x26D6492A0](a5);

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v19.receiver = 0;
  v19.super_class = type metadata accessor for MatchedMedName();
  v7 = objc_msgSendSuper2(&v19, sel_initWithIdentifier_displayString_pronunciationHint_, v12, v10, v9);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BE0](v7);
  v26 = v7;

  MEMORY[0x277D82BD8](v26);
  return v7;
}

id MatchedMedName.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id MatchedMedName.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for MatchedMedName();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id MatchedMedName.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MatchedMedName();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static MatchedMedNameResolutionResult.success(with:)(uint64_t a1)
{
  v7 = a1;
  v6 = v1;
  v5.receiver = swift_getObjCClassFromMetadata();
  v5.super_class = &OBJC_METACLASS___MatchedMedNameResolutionResult;
  v2 = objc_msgSendSuper2(&v5, sel_successWithResolvedObject_, a1);

  return v2;
}

id static MatchedMedNameResolutionResult.disambiguation(with:)(uint64_t a1)
{
  v8 = a1;
  v7 = v1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  type metadata accessor for MatchedMedName();
  type metadata accessor for INObject();
  _arrayForceCast<A, B>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6.receiver = ObjCClassFromMetadata;
  v6.super_class = &OBJC_METACLASS___MatchedMedNameResolutionResult;
  v5 = objc_msgSendSuper2(&v6, sel_disambiguationWithObjectsToDisambiguate_, isa);
  MEMORY[0x277D82BD8](isa);
  return v5;
}

unint64_t type metadata accessor for INObject()
{
  v2 = lazy cache variable for type metadata for INObject;
  if (!lazy cache variable for type metadata for INObject)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for INObject);
    return ObjCClassMetadata;
  }

  return v2;
}

id static MatchedMedNameResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v10 = a1;
  v9 = v1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  MEMORY[0x277D82BE0](a1);
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = ObjCClassFromMetadata;
  v8.super_class = &OBJC_METACLASS___MatchedMedNameResolutionResult;
  v4 = objc_msgSendSuper2(&v8, sel_confirmationRequiredWithObjectToConfirm_, v5);
  MEMORY[0x277D82BD8](v3);
  return v4;
}

void static MatchedMedNameResolutionResult.success(with:)()
{
  implicit closure #1 in default argument 0 of fatalError(_:file:line:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_26991483C(void *a1)
{
  (MEMORY[0x277D82BD8])();

  return a1;
}

void static MatchedMedNameResolutionResult.disambiguation(with:)()
{
  implicit closure #1 in default argument 0 of fatalError(_:file:line:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_269914958(void *a1)
{

  (MEMORY[0x277D82BD8])();

  return a1;
}

void static MatchedMedNameResolutionResult.confirmationRequired(with:)()
{
  implicit closure #1 in default argument 0 of fatalError(_:file:line:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_269914A60(void *a1)
{
  (MEMORY[0x277D82BD8])();

  return a1;
}

id MatchedMedNameResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v7 = [v4 initWithJSONDictionary_forIntent_];
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](isa);

  return v7;
}

id MatchedMedNameResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v9 = a1;
  v8 = a2;

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7.receiver = 0;
  v7.super_class = type metadata accessor for MatchedMedNameResolutionResult();
  v6 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, isa, a2);
  MEMORY[0x277D82BD8](isa);
  if (v6)
  {
    MEMORY[0x277D82BE0](v6);
    v10 = v6;
    MEMORY[0x277D82BD8](a2);

    MEMORY[0x277D82BD8](v10);
    return v6;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a2);

    return 0;
  }
}

id MatchedMedNameResolutionResult.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MatchedMedNameResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void variable initialization expression of GetHealthQuantityIntentHandler.storage(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
}

uint64_t protocol witness for _BridgedStoredNSError.init(_nsError:) in conformance related decl e for HKErrorCode@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = related decl 'e' for HKErrorCode.init(_nsError:)(a2);
  *a1 = result;
  return result;
}

uint64_t related decl e for HKErrorCode.init(_nsError:)(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  MEMORY[0x277D82BD8](a1);
  return a1;
}

uint64_t protocol witness for SetAlgebra.init() in conformance HKStatisticsOptions(uint64_t a1)
{
  lazy protocol witness table accessor for type HKStatisticsOptions and conformance HKStatisticsOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.init()();
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance HKStatisticsOptions(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type HKStatisticsOptions and conformance HKStatisticsOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formUnion(_:)();
}

uint64_t protocol witness for SetAlgebra.formIntersection(_:) in conformance HKStatisticsOptions(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type HKStatisticsOptions and conformance HKStatisticsOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formIntersection(_:)();
}

uint64_t protocol witness for SetAlgebra.formSymmetricDifference(_:) in conformance HKStatisticsOptions(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type HKStatisticsOptions and conformance HKStatisticsOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formSymmetricDifference(_:)();
}

uint64_t protocol witness for SetAlgebra.init() in conformance HKQueryOptions(uint64_t a1)
{
  lazy protocol witness table accessor for type HKQueryOptions and conformance HKQueryOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.init()();
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance HKQueryOptions(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type HKQueryOptions and conformance HKQueryOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formUnion(_:)();
}

uint64_t protocol witness for SetAlgebra.formIntersection(_:) in conformance HKQueryOptions(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type HKQueryOptions and conformance HKQueryOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formIntersection(_:)();
}

uint64_t protocol witness for SetAlgebra.formSymmetricDifference(_:) in conformance HKQueryOptions(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type HKQueryOptions and conformance HKQueryOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formSymmetricDifference(_:)();
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance HKMedicationDoseEventStatus(uint64_t a2@<X8>)
{
  HKMedicationDoseEventStatus.init(rawValue:)();
  *a2 = v2;
  *(a2 + 8) = v3 & 1;
}

uint64_t protocol witness for SetAlgebra.init() in conformance HKSleepDaySummaryQueryOptions(uint64_t a1)
{
  lazy protocol witness table accessor for type HKSleepDaySummaryQueryOptions and conformance HKSleepDaySummaryQueryOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.init()();
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance HKSleepDaySummaryQueryOptions(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type HKSleepDaySummaryQueryOptions and conformance HKSleepDaySummaryQueryOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formUnion(_:)();
}

uint64_t protocol witness for SetAlgebra.formIntersection(_:) in conformance HKSleepDaySummaryQueryOptions(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type HKSleepDaySummaryQueryOptions and conformance HKSleepDaySummaryQueryOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formIntersection(_:)();
}

uint64_t protocol witness for SetAlgebra.formSymmetricDifference(_:) in conformance HKSleepDaySummaryQueryOptions(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type HKSleepDaySummaryQueryOptions and conformance HKSleepDaySummaryQueryOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formSymmetricDifference(_:)();
}

uint64_t protocol witness for SetAlgebra.init() in conformance HKDeleteObjectOptions(uint64_t a1)
{
  lazy protocol witness table accessor for type HKDeleteObjectOptions and conformance HKDeleteObjectOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.init()();
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance HKDeleteObjectOptions(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type HKDeleteObjectOptions and conformance HKDeleteObjectOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formUnion(_:)();
}

uint64_t protocol witness for SetAlgebra.formIntersection(_:) in conformance HKDeleteObjectOptions(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type HKDeleteObjectOptions and conformance HKDeleteObjectOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formIntersection(_:)();
}

uint64_t protocol witness for SetAlgebra.formSymmetricDifference(_:) in conformance HKDeleteObjectOptions(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type HKDeleteObjectOptions and conformance HKDeleteObjectOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formSymmetricDifference(_:)();
}

uint64_t static related decl e for HKErrorCode.errorDomain.getter()
{
  v1 = *MEMORY[0x277CCBDB0];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCBDB0]);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x277D82BD8](v1);
  return v2;
}

uint64_t protocol witness for _ObjectiveCBridgeableError.init(_bridgedNSError:) in conformance related decl e for HKErrorCode(uint64_t a1, uint64_t a2)
{
  MEMORY[0x277D82BE0](a1);
  lazy protocol witness table accessor for type related decl 'e' for HKErrorCode and conformance related decl 'e' for HKErrorCode();
  return _BridgedStoredNSError.init(_bridgedNSError:)();
}

uint64_t _BridgedStoredNSError.hashValue.getter()
{
  v1 = dispatch thunk of _BridgedStoredNSError._nsError.getter();
  v2 = NSObject.hashValue.getter();
  MEMORY[0x277D82BD8](v1);
  return v2;
}

__C::HKQueryOptions protocol witness for OptionSet.init(rawValue:) in conformance HKStatisticsOptions@<X0>(Swift::UInt *a1@<X0>, __C::HKQueryOptions *a2@<X8>)
{
  result.rawValue = HKQueryOptions.init(rawValue:)(*a1).rawValue;
  a2->rawValue = result.rawValue;
  return result;
}

__C::HKQueryOptions protocol witness for RawRepresentable.init(rawValue:) in conformance HKStatisticsOptions@<X0>(Swift::UInt *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = HKQueryOptions.init(rawValue:)(*a1).rawValue;
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

__C::HKQueryOptions protocol witness for RawRepresentable.rawValue.getter in conformance HKStatisticsOptions@<X0>(__C::HKQueryOptions *a1@<X8>)
{
  result.rawValue = HKQueryOptions.init(rawValue:)(*v1).rawValue;
  a1->rawValue = result.rawValue;
  return result;
}

unint64_t type metadata accessor for HKHealthStore()
{
  v2 = lazy cache variable for type metadata for HKHealthStore;
  if (!lazy cache variable for type metadata for HKHealthStore)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKHealthStore);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for HKDeleteObjectOptions(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for HKDeleteObjectOptions;
  if (!lazy cache variable for type metadata for HKDeleteObjectOptions)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for HKDeleteObjectOptions);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for HKMedicationDoseEventStatus(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for HKMedicationDoseEventStatus;
  if (!lazy cache variable for type metadata for HKMedicationDoseEventStatus)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for HKMedicationDoseEventStatus);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for HKWheelchairUse(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for HKWheelchairUse;
  if (!lazy cache variable for type metadata for HKWheelchairUse)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for HKWheelchairUse);
      return v2;
    }
  }

  return v5;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for HKDayIndexRange(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 16))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for HKDayIndexRange(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (a3)
    {
      *(result + 16) = 1;
    }
  }

  else if (a3)
  {
    *(result + 16) = 0;
  }

  return result;
}

unint64_t type metadata accessor for HKDayIndexRange(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for HKDayIndexRange;
  if (!lazy cache variable for type metadata for HKDayIndexRange)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for HKDayIndexRange);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for HKMedicationDoseEventLogOrigin(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for HKMedicationDoseEventLogOrigin;
  if (!lazy cache variable for type metadata for HKMedicationDoseEventLogOrigin)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for HKMedicationDoseEventLogOrigin);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for HKStatisticsOptions(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for HKStatisticsOptions;
  if (!lazy cache variable for type metadata for HKStatisticsOptions)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for HKStatisticsOptions);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for related decl e for HKErrorCode(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for related decl 'e' for HKErrorCode;
  if (!lazy cache variable for type metadata for related decl 'e' for HKErrorCode)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for related decl 'e' for HKErrorCode);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for HKManualEntryValidationResult(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for HKManualEntryValidationResult;
  if (!lazy cache variable for type metadata for HKManualEntryValidationResult)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for HKManualEntryValidationResult);
      return v2;
    }
  }

  return v5;
}

unint64_t lazy protocol witness table accessor for type related decl e for HKErrorCode and conformance related decl e for HKErrorCode()
{
  v2 = lazy protocol witness table cache variable for type related decl 'e' for HKErrorCode and conformance related decl 'e' for HKErrorCode;
  if (!lazy protocol witness table cache variable for type related decl 'e' for HKErrorCode and conformance related decl 'e' for HKErrorCode)
  {
    type metadata accessor for related decl 'e' for HKErrorCode(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type related decl 'e' for HKErrorCode and conformance related decl 'e' for HKErrorCode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type related decl 'e' for HKErrorCode and conformance related decl 'e' for HKErrorCode;
  if (!lazy protocol witness table cache variable for type related decl 'e' for HKErrorCode and conformance related decl 'e' for HKErrorCode)
  {
    type metadata accessor for related decl 'e' for HKErrorCode(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type related decl 'e' for HKErrorCode and conformance related decl 'e' for HKErrorCode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type related decl 'e' for HKErrorCode and conformance related decl 'e' for HKErrorCode;
  if (!lazy protocol witness table cache variable for type related decl 'e' for HKErrorCode and conformance related decl 'e' for HKErrorCode)
  {
    type metadata accessor for related decl 'e' for HKErrorCode(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type related decl 'e' for HKErrorCode and conformance related decl 'e' for HKErrorCode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type related decl 'e' for HKErrorCode and conformance related decl 'e' for HKErrorCode;
  if (!lazy protocol witness table cache variable for type related decl 'e' for HKErrorCode and conformance related decl 'e' for HKErrorCode)
  {
    type metadata accessor for related decl 'e' for HKErrorCode(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type related decl 'e' for HKErrorCode and conformance related decl 'e' for HKErrorCode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type related decl 'e' for HKErrorCode and conformance related decl 'e' for HKErrorCode;
  if (!lazy protocol witness table cache variable for type related decl 'e' for HKErrorCode and conformance related decl 'e' for HKErrorCode)
  {
    type metadata accessor for related decl 'e' for HKErrorCode(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type related decl 'e' for HKErrorCode and conformance related decl 'e' for HKErrorCode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type related decl 'e' for HKErrorCode and conformance related decl 'e' for HKErrorCode;
  if (!lazy protocol witness table cache variable for type related decl 'e' for HKErrorCode and conformance related decl 'e' for HKErrorCode)
  {
    type metadata accessor for related decl 'e' for HKErrorCode(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type related decl 'e' for HKErrorCode and conformance related decl 'e' for HKErrorCode);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HKStatisticsOptions and conformance HKStatisticsOptions()
{
  v2 = lazy protocol witness table cache variable for type HKStatisticsOptions and conformance HKStatisticsOptions;
  if (!lazy protocol witness table cache variable for type HKStatisticsOptions and conformance HKStatisticsOptions)
  {
    type metadata accessor for HKStatisticsOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKStatisticsOptions and conformance HKStatisticsOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKStatisticsOptions and conformance HKStatisticsOptions;
  if (!lazy protocol witness table cache variable for type HKStatisticsOptions and conformance HKStatisticsOptions)
  {
    type metadata accessor for HKStatisticsOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKStatisticsOptions and conformance HKStatisticsOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKStatisticsOptions and conformance HKStatisticsOptions;
  if (!lazy protocol witness table cache variable for type HKStatisticsOptions and conformance HKStatisticsOptions)
  {
    type metadata accessor for HKStatisticsOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKStatisticsOptions and conformance HKStatisticsOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKStatisticsOptions and conformance HKStatisticsOptions;
  if (!lazy protocol witness table cache variable for type HKStatisticsOptions and conformance HKStatisticsOptions)
  {
    type metadata accessor for HKStatisticsOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKStatisticsOptions and conformance HKStatisticsOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKStatisticsOptions and conformance HKStatisticsOptions;
  if (!lazy protocol witness table cache variable for type HKStatisticsOptions and conformance HKStatisticsOptions)
  {
    type metadata accessor for HKStatisticsOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKStatisticsOptions and conformance HKStatisticsOptions);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HKDeleteObjectOptions and conformance HKDeleteObjectOptions()
{
  v2 = lazy protocol witness table cache variable for type HKDeleteObjectOptions and conformance HKDeleteObjectOptions;
  if (!lazy protocol witness table cache variable for type HKDeleteObjectOptions and conformance HKDeleteObjectOptions)
  {
    type metadata accessor for HKDeleteObjectOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKDeleteObjectOptions and conformance HKDeleteObjectOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKDeleteObjectOptions and conformance HKDeleteObjectOptions;
  if (!lazy protocol witness table cache variable for type HKDeleteObjectOptions and conformance HKDeleteObjectOptions)
  {
    type metadata accessor for HKDeleteObjectOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKDeleteObjectOptions and conformance HKDeleteObjectOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKDeleteObjectOptions and conformance HKDeleteObjectOptions;
  if (!lazy protocol witness table cache variable for type HKDeleteObjectOptions and conformance HKDeleteObjectOptions)
  {
    type metadata accessor for HKDeleteObjectOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKDeleteObjectOptions and conformance HKDeleteObjectOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKDeleteObjectOptions and conformance HKDeleteObjectOptions;
  if (!lazy protocol witness table cache variable for type HKDeleteObjectOptions and conformance HKDeleteObjectOptions)
  {
    type metadata accessor for HKDeleteObjectOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKDeleteObjectOptions and conformance HKDeleteObjectOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKDeleteObjectOptions and conformance HKDeleteObjectOptions;
  if (!lazy protocol witness table cache variable for type HKDeleteObjectOptions and conformance HKDeleteObjectOptions)
  {
    type metadata accessor for HKDeleteObjectOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKDeleteObjectOptions and conformance HKDeleteObjectOptions);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HKErrorCode and conformance HKErrorCode()
{
  v2 = lazy protocol witness table cache variable for type HKErrorCode and conformance HKErrorCode;
  if (!lazy protocol witness table cache variable for type HKErrorCode and conformance HKErrorCode)
  {
    type metadata accessor for HKErrorCode(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKErrorCode and conformance HKErrorCode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKErrorCode and conformance HKErrorCode;
  if (!lazy protocol witness table cache variable for type HKErrorCode and conformance HKErrorCode)
  {
    type metadata accessor for HKErrorCode(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKErrorCode and conformance HKErrorCode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKErrorCode and conformance HKErrorCode;
  if (!lazy protocol witness table cache variable for type HKErrorCode and conformance HKErrorCode)
  {
    type metadata accessor for HKErrorCode(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKErrorCode and conformance HKErrorCode);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for HKErrorCode(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for HKErrorCode;
  if (!lazy cache variable for type metadata for HKErrorCode)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for HKErrorCode);
      return v2;
    }
  }

  return v5;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  v2 = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Int and conformance Int);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Int and conformance Int);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HKManualEntryValidationResult and conformance HKManualEntryValidationResult()
{
  v2 = lazy protocol witness table cache variable for type HKManualEntryValidationResult and conformance HKManualEntryValidationResult;
  if (!lazy protocol witness table cache variable for type HKManualEntryValidationResult and conformance HKManualEntryValidationResult)
  {
    type metadata accessor for HKManualEntryValidationResult(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKManualEntryValidationResult and conformance HKManualEntryValidationResult);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKManualEntryValidationResult and conformance HKManualEntryValidationResult;
  if (!lazy protocol witness table cache variable for type HKManualEntryValidationResult and conformance HKManualEntryValidationResult)
  {
    type metadata accessor for HKManualEntryValidationResult(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKManualEntryValidationResult and conformance HKManualEntryValidationResult);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type UInt and conformance UInt()
{
  v2 = lazy protocol witness table cache variable for type UInt and conformance UInt;
  if (!lazy protocol witness table cache variable for type UInt and conformance UInt)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UInt and conformance UInt);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HKMedicationDoseEventStatus and conformance HKMedicationDoseEventStatus()
{
  v2 = lazy protocol witness table cache variable for type HKMedicationDoseEventStatus and conformance HKMedicationDoseEventStatus;
  if (!lazy protocol witness table cache variable for type HKMedicationDoseEventStatus and conformance HKMedicationDoseEventStatus)
  {
    type metadata accessor for HKMedicationDoseEventStatus(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKMedicationDoseEventStatus and conformance HKMedicationDoseEventStatus);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKMedicationDoseEventStatus and conformance HKMedicationDoseEventStatus;
  if (!lazy protocol witness table cache variable for type HKMedicationDoseEventStatus and conformance HKMedicationDoseEventStatus)
  {
    type metadata accessor for HKMedicationDoseEventStatus(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKMedicationDoseEventStatus and conformance HKMedicationDoseEventStatus);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for HKSiriAuthorizationStatus(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for HKSiriAuthorizationStatus;
  if (!lazy cache variable for type metadata for HKSiriAuthorizationStatus)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for HKSiriAuthorizationStatus);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for HKSleepDaySummaryQueryOptions(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for HKSleepDaySummaryQueryOptions;
  if (!lazy cache variable for type metadata for HKSleepDaySummaryQueryOptions)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for HKSleepDaySummaryQueryOptions);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for HKQueryOptions(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for HKQueryOptions;
  if (!lazy cache variable for type metadata for HKQueryOptions)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for HKQueryOptions);
      return v2;
    }
  }

  return v5;
}

unint64_t lazy protocol witness table accessor for type HKQueryOptions and conformance HKQueryOptions()
{
  v2 = lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions;
  if (!lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions)
  {
    type metadata accessor for HKQueryOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions;
  if (!lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions)
  {
    type metadata accessor for HKQueryOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions;
  if (!lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions)
  {
    type metadata accessor for HKQueryOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions;
  if (!lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions)
  {
    type metadata accessor for HKQueryOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions;
  if (!lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions)
  {
    type metadata accessor for HKQueryOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HKSleepDaySummaryQueryOptions and conformance HKSleepDaySummaryQueryOptions()
{
  v2 = lazy protocol witness table cache variable for type HKSleepDaySummaryQueryOptions and conformance HKSleepDaySummaryQueryOptions;
  if (!lazy protocol witness table cache variable for type HKSleepDaySummaryQueryOptions and conformance HKSleepDaySummaryQueryOptions)
  {
    type metadata accessor for HKSleepDaySummaryQueryOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKSleepDaySummaryQueryOptions and conformance HKSleepDaySummaryQueryOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKSleepDaySummaryQueryOptions and conformance HKSleepDaySummaryQueryOptions;
  if (!lazy protocol witness table cache variable for type HKSleepDaySummaryQueryOptions and conformance HKSleepDaySummaryQueryOptions)
  {
    type metadata accessor for HKSleepDaySummaryQueryOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKSleepDaySummaryQueryOptions and conformance HKSleepDaySummaryQueryOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKSleepDaySummaryQueryOptions and conformance HKSleepDaySummaryQueryOptions;
  if (!lazy protocol witness table cache variable for type HKSleepDaySummaryQueryOptions and conformance HKSleepDaySummaryQueryOptions)
  {
    type metadata accessor for HKSleepDaySummaryQueryOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKSleepDaySummaryQueryOptions and conformance HKSleepDaySummaryQueryOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKSleepDaySummaryQueryOptions and conformance HKSleepDaySummaryQueryOptions;
  if (!lazy protocol witness table cache variable for type HKSleepDaySummaryQueryOptions and conformance HKSleepDaySummaryQueryOptions)
  {
    type metadata accessor for HKSleepDaySummaryQueryOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKSleepDaySummaryQueryOptions and conformance HKSleepDaySummaryQueryOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKSleepDaySummaryQueryOptions and conformance HKSleepDaySummaryQueryOptions;
  if (!lazy protocol witness table cache variable for type HKSleepDaySummaryQueryOptions and conformance HKSleepDaySummaryQueryOptions)
  {
    type metadata accessor for HKSleepDaySummaryQueryOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKSleepDaySummaryQueryOptions and conformance HKSleepDaySummaryQueryOptions);
    return WitnessTable;
  }

  return v2;
}

uint64_t getFormattedTimeString(time:)(uint64_t a1)
{
  v21 = a1;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v20 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2);
  v29 = &v11 - v20;
  v28 = type metadata accessor for Date();
  v26 = *(v28 - 8);
  v27 = v28 - 8;
  v22 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21, v29);
  v23 = &v11 - v22;
  v24 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4, v5);
  v25 = &v11 - v24;
  v32 = &v11 - v24;
  v31 = v6;
  outlined init with copy of Date?(v6, v7);
  if ((*(v26 + 48))(v29, 1, v28) == 1)
  {
    outlined destroy of Date?(v29);
    v18 = 0;
    v19 = 0;
  }

  else
  {
    (*(v26 + 32))(v25, v29, v28);
    type metadata accessor for NSDateFormatter();
    v33 = NSDateFormatter.__allocating_init()();
    v8 = v23;
    isa = v33.super.super.isa;
    v30 = v33.super.super.isa;
    [(objc_class *)v33.super.super.isa setTimeStyle:1, v33._counter];
    (*(v26 + 16))(v8, v25, v28);
    v11 = Date._bridgeToObjectiveC()().super.isa;
    v15 = *(v26 + 8);
    v14 = v26 + 8;
    v15(v23, v28);
    v12 = [(objc_class *)isa stringFromDate:v11];
    MEMORY[0x277D82BD8](v11);
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v9;
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](isa);
    v15(v25, v28);
    v18 = v16;
    v19 = v17;
  }

  return v18;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v5;
}

void *outlined init with copy of Date?(const void *a1, void *a2)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t outlined destroy of Date?(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t type metadata accessor for NSDateFormatter()
{
  v2 = lazy cache variable for type metadata for NSDateFormatter;
  if (!lazy cache variable for type metadata for NSDateFormatter)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSDateFormatter);
    return ObjCClassMetadata;
  }

  return v2;
}

NSDateFormatter __swiftcall NSDateFormatter.__allocating_init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = @nonobjc NSDateFormatter.init()();
  result._counter = v4;
  result._formatter = v3;
  result._attributes = v2;
  result.super.super.isa = v1;
  return result;
}

uint64_t Date.startOfDay.getter@<X0>(uint64_t a1@<X8>)
{
  v4[1] = a1;
  v9 = 0;
  v8 = type metadata accessor for Calendar();
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8, v1);
  v7 = v4 - v4[0];
  v9 = v2;
  static Calendar.current.getter();
  Calendar.startOfDay(for:)();
  return (*(v5 + 8))(v7, v8);
}

uint64_t Date.endOfDay.getter@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v38 = "Fatal error";
  v39 = "Unexpectedly found nil while unwrapping an Optional value";
  v40 = "SiriWellnessIntents/DateFormatter.swift";
  v74 = 0;
  v73 = 0;
  v51 = 0;
  v72 = type metadata accessor for Date();
  v68 = *(v72 - 8);
  v69 = v72 - 8;
  v41 = (*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v1);
  v57 = &v36 - v41;
  v67 = type metadata accessor for Calendar();
  v64 = *(v67 - 8);
  v65 = v67 - 8;
  v42 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v67, v2);
  v66 = &v36 - v42;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v43 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3, v4);
  v70 = &v36 - v43;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  v44 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, v6);
  v50 = &v36 - v44;
  v45 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51, v7);
  v49 = &v36 - v45;
  v61 = type metadata accessor for DateComponents();
  v58 = *(v61 - 8);
  v59 = v61 - 8;
  v47 = *(v58 + 64);
  v46 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v49, v8);
  v60 = &v36 - v46;
  v48 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v9, &v36 - v46);
  v56 = &v36 - v48;
  v74 = &v36 - v48;
  v73 = v55;
  v11 = *(v64 + 56);
  v71 = 1;
  v11(v10);
  v12 = type metadata accessor for TimeZone();
  (*(*(v12 - 8) + 56))(v50, v71);
  v52 = &v14;
  v14 = 0;
  v53 = 1;
  v15 = 1;
  v16 = 0;
  v17 = 1;
  v18 = 0;
  v19 = 1;
  v20 = 0;
  v21 = 1;
  v22 = 0;
  v23 = 1;
  v24 = 0;
  v25 = 1;
  v26 = 0;
  v27 = 1;
  v28 = 0;
  v29 = 1;
  v30 = 0;
  v31 = 1;
  v32 = 0;
  LOBYTE(v33) = 1;
  v34 = 0;
  v35 = 1;
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v54 = 0;
  DateComponents.day.setter();
  DateComponents.second.setter();
  static Calendar.current.getter();
  (*(v58 + 16))(v60, v56, v61);
  Date.startOfDay.getter(v57);
  default argument 2 of Calendar.date(byAdding:to:wrappingComponents:)();
  Calendar.date(byAdding:to:wrappingComponents:)();
  (*(v68 + 8))(v57, v72);
  v62 = *(v58 + 8);
  v63 = v58 + 8;
  v62(v60, v61);
  (*(v64 + 8))(v66, v67);
  if ((*(v68 + 48))(v70, v71, v72) == 1)
  {
    LOBYTE(v32) = 2;
    v33 = 27;
    LODWORD(v34) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  (*(v68 + 32))(v37, v70, v72);
  return (v62)(v56, v61);
}

id LogQuantityIntent.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for LogQuantityIntent();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id LogQuantityIntent.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id LogQuantityIntent.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for LogQuantityIntent();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id LogQuantityIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = MEMORY[0x26D6492A0](a1);

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v11 initWithIdentifier_backingStore_];
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v7);
  return v5;
}

id LogQuantityIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v12 = a1;
  v13 = a2;
  v11 = a3;

  if (a2)
  {
    v5 = MEMORY[0x26D6492A0](a1);

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v10.receiver = 0;
  v10.super_class = type metadata accessor for LogQuantityIntent();
  v4 = objc_msgSendSuper2(&v10, sel_initWithIdentifier_backingStore_, v6, a3);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BE0](v4);
  v14 = v4;
  MEMORY[0x277D82BD8](a3);

  MEMORY[0x277D82BD8](v14);
  return v4;
}

id LogQuantityIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = objc_allocWithZone(v5);
  v16 = MEMORY[0x26D6492A0](a1, a2);
  v18 = MEMORY[0x26D6492A0](a3, a4);
  if (a5)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v6 = [v13 initWithDomain:v16 verb:v18 parametersByName:isa];
  }

  else
  {
    v6 = [v13 initWithDomain:v16 verb:v18 parametersByName:0];
  }

  v9 = v6;
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v18);

  MEMORY[0x277D82BD8](v16);

  return v9;
}

id LogQuantityIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = 0;
  v20 = a1;
  v21 = a2;
  v18 = a3;
  v19 = a4;
  v17 = a5;

  v11 = MEMORY[0x26D6492A0](a1, a2);

  v14 = MEMORY[0x26D6492A0](a3, a4);

  if (a5)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v8 = isa;
  }

  else
  {
    v8 = 0;
  }

  v16.receiver = 0;
  v16.super_class = type metadata accessor for LogQuantityIntent();
  v6 = objc_msgSendSuper2(&v16, sel_initWithDomain_verb_parametersByName_, v11, v14, v8);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BE0](v6);
  v22 = v6;

  MEMORY[0x277D82BD8](v22);
  return v6;
}

id LogQuantityIntent.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LogQuantityIntent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t LogQuantityIntentResponseCode.init(rawValue:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
    case 6:
      return 6;
    case 100:
      return 100;
    case 101:
      return 101;
    case 102:
      return 102;
    case 103:
      return 103;
  }

  return 0;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LogQuantityIntentResponseCode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = LogQuantityIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t LogQuantityIntentResponse.code.getter()
{
  v2 = (v0 + OBJC_IVAR___LogQuantityIntentResponse_code);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t LogQuantityIntentResponse.code.setter(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___LogQuantityIntentResponse_code);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for LogQuantityIntentResponse.code : LogQuantityIntentResponse@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = LogQuantityIntentResponse.code.getter();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t key path setter for LogQuantityIntentResponse.code : LogQuantityIntentResponse(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  LogQuantityIntentResponse.code.setter(v4);
  return MEMORY[0x277D82BD8](v3);
}

char *LogQuantityIntentResponse.init(code:userActivity:)(uint64_t a1, uint64_t a2)
{
  v6 = [v7 init];
  MEMORY[0x277D82BE0](v6);
  v3 = &v6[OBJC_IVAR___LogQuantityIntentResponse_code];
  swift_beginAccess();
  *v3 = a1;
  swift_endAccess();
  MEMORY[0x277D82BE0](v6);
  [v6 setUserActivity_];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](v6);
  return v6;
}

id LogQuantityIntentResponse.init()()
{
  v3 = 0;
  *OBJC_IVAR___LogQuantityIntentResponse_code = 0;
  v2.receiver = v3;
  v2.super_class = type metadata accessor for LogQuantityIntentResponse();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id LogQuantityIntentResponse.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id LogQuantityIntentResponse.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___LogQuantityIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for LogQuantityIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id LogQuantityIntentResponse.__allocating_init(backingStore:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithBackingStore_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id LogQuantityIntentResponse.init(backingStore:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___LogQuantityIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for LogQuantityIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id LogQuantityIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  v8 = objc_allocWithZone(v1);
  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v2 = [v8 initWithPropertiesByName_];
  }

  else
  {
    v2 = [v8 initWithPropertiesByName_];
  }

  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

id LogQuantityIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  v9 = 0;
  v8 = a1;
  *OBJC_IVAR___LogQuantityIntentResponse_code = 0;

  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v5 = isa;
  }

  else
  {
    v5 = 0;
  }

  v7.receiver = v9;
  v7.super_class = type metadata accessor for LogQuantityIntentResponse();
  v3 = objc_msgSendSuper2(&v7, sel_initWithPropertiesByName_, v5);
  MEMORY[0x277D82BD8](v5);
  if (v3)
  {
    MEMORY[0x277D82BE0](v3);
    v9 = v3;

    MEMORY[0x277D82BD8](v9);
    return v3;
  }

  else
  {
    MEMORY[0x277D82BD8](0);

    return 0;
  }
}

id LogQuantityIntentResponse.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LogQuantityIntentResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type LogQuantityIntentResponseCode and conformance LogQuantityIntentResponseCode()
{
  v2 = lazy protocol witness table cache variable for type LogQuantityIntentResponseCode and conformance LogQuantityIntentResponseCode;
  if (!lazy protocol witness table cache variable for type LogQuantityIntentResponseCode and conformance LogQuantityIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type LogQuantityIntentResponseCode and conformance LogQuantityIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type LogQuantityIntentResponseCode and conformance LogQuantityIntentResponseCode;
  if (!lazy protocol witness table cache variable for type LogQuantityIntentResponseCode and conformance LogQuantityIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type LogQuantityIntentResponseCode and conformance LogQuantityIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined init with copy of QuantityPersisting(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

id LogQuantityIntentHandler.init(storage:)(void *a1)
{
  ObjectType = swift_getObjectType();
  __dst[5] = a1;
  v11 = v1;
  outlined init with copy of QuantityPersisting?(a1, v8);
  if (v9)
  {
    outlined init with take of QuantityPersisting(v8, __dst);
  }

  else
  {
    v2.store.super.isa = HealthKitPersistor.init()().store.super.isa;
    __dst[3] = &type metadata for HealthKitPersistor;
    __dst[4] = &protocol witness table for HealthKitPersistor;
    __dst[0] = v2.store.super.isa;
    if (v9)
    {
      outlined destroy of QuantityPersisting?(v8);
    }
  }

  outlined init with take of QuantityPersisting(__dst, &v1[OBJC_IVAR____TtC19SiriWellnessIntents24LogQuantityIntentHandler_storage]);
  v7.receiver = v11;
  v7.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v7, sel_init);
  MEMORY[0x277D82BE0](v4);
  v11 = v4;
  outlined destroy of QuantityPersisting?(a1);
  MEMORY[0x277D82BD8](v11);
  return v4;
}

void *outlined init with copy of QuantityPersisting?(void *a1, void *a2)
{
  if (a1[3])
  {
    v2 = a1[3];
    a2[3] = v2;
    a2[4] = a1[4];
    (**(v2 - 8))();
  }

  else
  {
    memcpy(a2, a1, 0x28uLL);
  }

  return a2;
}

SiriWellnessIntents::HealthKitPersistor __swiftcall HealthKitPersistor.init()()
{
  isa = 0;
  type metadata accessor for HKHealthStore();
  v1.store.super.isa = NSDateFormatter.__allocating_init()();
  MEMORY[0x277D82BE0](v1.store.super.isa);
  isa = v1.store.super.isa;
  outlined destroy of HealthKitPersistor(&isa);
  return v1;
}

void *outlined destroy of QuantityPersisting?(void *a1)
{
  if (a1[3])
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v2 = a1[3];
  if ((*(*(v2 - 8) + 80) & 0x20000) != 0)
  {
  }

  else
  {
    return (*(*(v2 - 8) + 8))(a1);
  }
}

uint64_t LogQuantityIntentHandler.handle(intent:)(uint64_t a1)
{
  v2[33] = v1;
  v2[32] = a1;
  v2[29] = v2;
  v2[30] = 0;
  v2[31] = 0;
  v2[27] = 0;
  v2[28] = 0;
  v3 = type metadata accessor for Logger();
  v2[34] = v3;
  v2[35] = *(v3 - 8);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v2[43] = v4;
  v6 = *(v4 - 8);
  v2[44] = v6;
  v2[45] = *(v6 + 64);
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[30] = a1;
  v2[31] = v1;

  return MEMORY[0x2822009F8](LogQuantityIntentHandler.handle(intent:), 0);
}

{
  v3 = *v1;
  *(v3 + 232) = *v1;
  *(v3 + 488) = a1;

  return MEMORY[0x2822009F8](LogQuantityIntentHandler.handle(intent:), 0);
}

uint64_t LogQuantityIntentHandler.handle(intent:)()
{
  v95 = v0;
  v1 = *(v0 + 256);
  *(v0 + 232) = v0;
  v84 = [v1 start];
  if (v84)
  {
    v80 = *(v83 + 376);
    v81 = *(v83 + 344);
    v82 = *(v83 + 336);
    v79 = *(v83 + 352);
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v79 + 32))(v82, v80, v81);
    (*(v79 + 56))(v82, 0, 1, v81);
    MEMORY[0x277D82BD8](v84);
  }

  else
  {
    (*(*(v83 + 352) + 56))(*(v83 + 336), 1, 1, *(v83 + 344));
  }

  v2 = (*(v83 + 352) + 48);
  v78 = *v2;
  if ((*v2)(*(v83 + 336), 1, *(v83 + 344)) == 1)
  {
    v77 = *(v83 + 344);
    v76 = *(v83 + 336);
    Date.init()();
    if (v78(v76, 1, v77) != 1)
    {
      outlined destroy of Date?(*(v83 + 336));
    }
  }

  else
  {
    (*(*(v83 + 352) + 32))(*(v83 + 384), *(v83 + 336), *(v83 + 344));
  }

  v75 = [*(v83 + 256) end];
  if (v75)
  {
    v72 = *(v83 + 376);
    v73 = *(v83 + 344);
    v74 = *(v83 + 328);
    v71 = *(v83 + 352);
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v71 + 32))(v74, v72, v73);
    (*(v71 + 56))(v74, 0, 1, v73);
    MEMORY[0x277D82BD8](v75);
  }

  else
  {
    (*(*(v83 + 352) + 56))(*(v83 + 328), 1, 1, *(v83 + 344));
  }

  if (v78(*(v83 + 328), 1, *(v83 + 344)) == 1)
  {
    v69 = *(v83 + 344);
    v70 = *(v83 + 328);
    (*(*(v83 + 352) + 16))(*(v83 + 368), *(v83 + 384));
    if (v78(v70, 1, v69) != 1)
    {
      outlined destroy of Date?(*(v83 + 328));
    }
  }

  else
  {
    (*(*(v83 + 352) + 32))(*(v83 + 368), *(v83 + 328), *(v83 + 344));
  }

  v68 = [*(v83 + 256) quantityIdentifier];
  if (v68)
  {
    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v3;
    MEMORY[0x277D82BD8](v68);
    v66 = v64;
    v67 = v65;
  }

  else
  {
    v66 = 0;
    v67 = 0;
  }

  *(v83 + 400) = v67;
  *(v83 + 392) = v66;
  if (v67)
  {
    v4 = *(v83 + 320);
    v55 = *(v83 + 272);
    v53 = *(v83 + 280);
    *(v83 + 216) = v66;
    *(v83 + 224) = v67;
    v54 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v5 = *(v53 + 16);
    *(v83 + 408) = v5;
    *(v83 + 416) = (v53 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v5(v4, v54, v55);
    swift_endAccess();

    v56 = swift_allocObject();
    *(v56 + 16) = v66;
    *(v56 + 24) = v67;
    oslog = Logger.logObject.getter();
    v63 = static os_log_type_t.debug.getter();
    v58 = swift_allocObject();
    *(v58 + 16) = 32;
    v59 = swift_allocObject();
    *(v59 + 16) = 8;
    v57 = swift_allocObject();
    *(v57 + 16) = partial apply for implicit closure #4 in LogQuantityIntentHandler.handle(intent:);
    *(v57 + 24) = v56;
    v60 = swift_allocObject();
    *(v60 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v60 + 24) = v57;
    *(v83 + 424) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    _allocateUninitializedArray<A>(_:)();
    v61 = v6;

    *v61 = partial apply for closure #1 in OSLogArguments.append(_:);
    v61[1] = v58;

    v61[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v61[3] = v59;

    v61[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v61[5] = v60;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v63))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v51 = createStorage<A>(capacity:type:)(0, v49, v49);
      v52 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v90 = buf;
      v91 = v51;
      v92 = v52;
      serialize(_:at:)(2, &v90);
      serialize(_:at:)(1, &v90);
      v93 = partial apply for closure #1 in OSLogArguments.append(_:);
      v94 = v58;
      closure #1 in osLogInternal(_:log:type:)(&v93, &v90, &v91, &v92);
      v93 = partial apply for closure #1 in OSLogArguments.append(_:);
      v94 = v59;
      closure #1 in osLogInternal(_:log:type:)(&v93, &v90, &v91, &v92);
      v93 = partial apply for closure #1 in OSLogArguments.append(_:);
      v94 = v60;
      closure #1 in osLogInternal(_:log:type:)(&v93, &v90, &v91, &v92);
      _os_log_impl(&dword_269912000, oslog, v63, "Checking authorization for %s...", buf, 0xCu);
      destroyStorage<A>(_:count:)(v51, 0, v49);
      destroyStorage<A>(_:count:)(v52, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    *(v83 + 432) = 0;
    v41 = *(v83 + 320);
    v42 = *(v83 + 272);
    v43 = *(v83 + 264);
    v40 = *(v83 + 280);
    MEMORY[0x277D82BD8](oslog);
    v7 = *(v40 + 8);
    *(v83 + 440) = v7;
    *(v83 + 448) = (v40 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v41, v42);
    outlined init with copy of QuantityPersisting(v43 + OBJC_IVAR____TtC19SiriWellnessIntents24LogQuantityIntentHandler_storage, v83 + 16);
    v45 = *(v83 + 40);
    v46 = *(v83 + 48);
    __swift_project_boxed_opaque_existential_1((v83 + 16), v45);
    _allocateUninitializedArray<A>(_:)();
    v44 = v8;

    *v44 = v66;
    v44[1] = v67;
    _finalizeUninitializedArray<A>(_:)();
    v48 = v9;
    *(v83 + 456) = v9;
    v47 = (*(v46 + 8) + **(v46 + 8));
    v10 = swift_task_alloc();
    *(v83 + 464) = v10;
    *v10 = *(v83 + 232);
    v10[1] = LogQuantityIntentHandler.handle(intent:);

    return v47(v48, v45, v46);
  }

  else
  {
    v12 = *(v83 + 288);
    v30 = *(v83 + 272);
    v31 = *(v83 + 256);
    v28 = *(v83 + 280);
    v29 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v28 + 16))(v12, v29, v30);
    swift_endAccess();
    MEMORY[0x277D82BE0](v31);
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    log = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    v34 = swift_allocObject();
    *(v34 + 16) = 64;
    v35 = swift_allocObject();
    *(v35 + 16) = 8;
    v33 = swift_allocObject();
    *(v33 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
    *(v33 + 24) = v32;
    v36 = swift_allocObject();
    *(v36 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v36 + 24) = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    _allocateUninitializedArray<A>(_:)();
    v37 = v13;

    *v37 = partial apply for closure #1 in OSLogArguments.append(_:);
    v37[1] = v34;

    v37[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v37[3] = v35;

    v37[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v37[5] = v36;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v39))
    {
      v25 = static UnsafeMutablePointer.allocate(capacity:)();
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v26 = createStorage<A>(capacity:type:)(1, v24, v24);
      v27 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v85 = v25;
      v86 = v26;
      v87 = v27;
      serialize(_:at:)(2, &v85);
      serialize(_:at:)(1, &v85);
      v88 = partial apply for closure #1 in OSLogArguments.append(_:);
      v89 = v34;
      closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
      v88 = partial apply for closure #1 in OSLogArguments.append(_:);
      v89 = v35;
      closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
      v88 = partial apply for closure #1 in OSLogArguments.append(_:);
      v89 = v36;
      closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
      _os_log_impl(&dword_269912000, log, v39, "Intent with missing slots! You must perform slot filling before handling the intent. Intent: %@", v25, 0xCu);
      destroyStorage<A>(_:count:)(v26, 1, v24);
      destroyStorage<A>(_:count:)(v27, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v25, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v20 = *(v83 + 384);
    v19 = *(v83 + 368);
    v21 = *(v83 + 344);
    v16 = *(v83 + 288);
    v17 = *(v83 + 272);
    v18 = *(v83 + 352);
    v15 = *(v83 + 280);
    MEMORY[0x277D82BD8](log);
    (*(v15 + 8))(v16, v17);
    type metadata accessor for LogQuantityIntentResponse();
    v23 = LogQuantityIntentResponse.__allocating_init(code:userActivity:)(5, 0);
    v22 = *(v18 + 8);
    v22(v19, v21);
    v22(v20, v21);

    v14 = *(*(v83 + 232) + 8);

    return v14(v23);
  }
}

{
  v142 = v0;
  v126 = *(v0 + 496);
  *(v0 + 232) = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v126)
  {
    v114 = v125[51];
    v115 = v125[49];
    v1 = v125[39];
    v113 = v125[34];
    v116 = v125[50];
    v112 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v114(v1, v112, v113);
    swift_endAccess();

    v117 = swift_allocObject();
    *(v117 + 16) = v115;
    *(v117 + 24) = v116;
    oslog = Logger.logObject.getter();
    v124 = static os_log_type_t.debug.getter();
    v119 = swift_allocObject();
    *(v119 + 16) = 32;
    v120 = swift_allocObject();
    *(v120 + 16) = 8;
    v118 = swift_allocObject();
    *(v118 + 16) = partial apply for implicit closure #4 in LogQuantityIntentHandler.handle(intent:);
    *(v118 + 24) = v117;
    v121 = swift_allocObject();
    *(v121 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v121 + 24) = v118;
    _allocateUninitializedArray<A>(_:)();
    v122 = v2;

    *v122 = partial apply for closure #1 in OSLogArguments.append(_:);
    v122[1] = v119;

    v122[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v122[3] = v120;

    v122[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v122[5] = v121;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v124))
    {
      v3 = v125[54];
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v110 = createStorage<A>(capacity:type:)(0, v108, v108);
      v111 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v137 = buf;
      v138 = v110;
      v139 = v111;
      serialize(_:at:)(2, &v137);
      serialize(_:at:)(1, &v137);
      v140 = partial apply for closure #1 in OSLogArguments.append(_:);
      v141 = v119;
      closure #1 in osLogInternal(_:log:type:)(&v140, &v137, &v138, &v139);
      if (v3)
      {
      }

      v140 = partial apply for closure #1 in OSLogArguments.append(_:);
      v141 = v120;
      closure #1 in osLogInternal(_:log:type:)(&v140, &v137, &v138, &v139);
      v140 = partial apply for closure #1 in OSLogArguments.append(_:);
      v141 = v121;
      closure #1 in osLogInternal(_:log:type:)(&v140, &v137, &v138, &v139);
      _os_log_impl(&dword_269912000, oslog, v124, "Authorization check successful for %s!", buf, 0xCu);
      destroyStorage<A>(_:count:)(v110, 0, v108);
      destroyStorage<A>(_:count:)(v111, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

      v107 = 0;
    }

    else
    {

      v107 = v125[54];
    }

    v62 = v125[55];
    v65 = v125[51];
    v66 = v125[49];
    v70 = v125[48];
    v75 = v125[47];
    v72 = v125[46];
    v76 = v125[43];
    v61 = v125[39];
    v5 = v125[38];
    v64 = v125[34];
    v68 = v125[32];
    v67 = v125[50];
    v69 = v125[44];
    MEMORY[0x277D82BD8](oslog);
    v62(v61, v64);
    v63 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v65(v5, v63, v64);
    swift_endAccess();

    v79 = swift_allocObject();
    *(v79 + 16) = v66;
    *(v79 + 24) = v67;
    MEMORY[0x277D82BE0](v68);
    v81 = swift_allocObject();
    *(v81 + 16) = v68;
    MEMORY[0x277D82BE0](v68);
    v83 = swift_allocObject();
    *(v83 + 16) = v68;
    v73 = *(v69 + 16);
    v73(v75, v70, v76);
    v74 = *(v69 + 80);
    v71 = swift_allocObject();
    v77 = *(v69 + 32);
    v77(v71 + ((v74 + 16) & ~v74), v75, v76);

    v85 = swift_allocObject();
    *(v85 + 16) = partial apply for implicit closure #10 in LogQuantityIntentHandler.handle(intent:);
    *(v85 + 24) = v71;

    v73(v75, v72, v76);
    v78 = swift_allocObject();
    v77(v78 + ((v74 + 16) & ~v74), v75, v76);

    v87 = swift_allocObject();
    *(v87 + 16) = partial apply for implicit closure #10 in LogQuantityIntentHandler.handle(intent:);
    *(v87 + 24) = v78;

    log = Logger.logObject.getter();
    v106 = static os_log_type_t.debug.getter();
    v89 = swift_allocObject();
    *(v89 + 16) = 32;
    v90 = swift_allocObject();
    *(v90 + 16) = 8;
    v80 = swift_allocObject();
    *(v80 + 16) = partial apply for implicit closure #4 in LogQuantityIntentHandler.handle(intent:);
    *(v80 + 24) = v79;
    v91 = swift_allocObject();
    *(v91 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v91 + 24) = v80;
    v92 = swift_allocObject();
    *(v92 + 16) = 0;
    v93 = swift_allocObject();
    *(v93 + 16) = 8;
    v82 = swift_allocObject();
    *(v82 + 16) = partial apply for implicit closure #8 in LogQuantityIntentHandler.handle(intent:);
    *(v82 + 24) = v81;
    v94 = swift_allocObject();
    *(v94 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:);
    *(v94 + 24) = v82;
    v95 = swift_allocObject();
    *(v95 + 16) = 32;
    v96 = swift_allocObject();
    *(v96 + 16) = 8;
    v84 = swift_allocObject();
    *(v84 + 16) = partial apply for implicit closure #9 in LogQuantityIntentHandler.handle(intent:);
    *(v84 + 24) = v83;
    v97 = swift_allocObject();
    *(v97 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v97 + 24) = v84;
    v98 = swift_allocObject();
    *(v98 + 16) = 32;
    v99 = swift_allocObject();
    *(v99 + 16) = 8;
    v86 = swift_allocObject();
    *(v86 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:);
    *(v86 + 24) = v85;
    v100 = swift_allocObject();
    *(v100 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v100 + 24) = v86;
    v101 = swift_allocObject();
    *(v101 + 16) = 32;
    v102 = swift_allocObject();
    *(v102 + 16) = 8;
    v88 = swift_allocObject();
    *(v88 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:);
    *(v88 + 24) = v87;
    v103 = swift_allocObject();
    *(v103 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v103 + 24) = v88;
    _allocateUninitializedArray<A>(_:)();
    v104 = v6;

    *v104 = partial apply for closure #1 in OSLogArguments.append(_:);
    v104[1] = v89;

    v104[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v104[3] = v90;

    v104[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v104[5] = v91;

    v104[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v104[7] = v92;

    v104[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v104[9] = v93;

    v104[10] = partial apply for closure #1 in OSLogArguments.append(_:);
    v104[11] = v94;

    v104[12] = partial apply for closure #1 in OSLogArguments.append(_:);
    v104[13] = v95;

    v104[14] = partial apply for closure #1 in OSLogArguments.append(_:);
    v104[15] = v96;

    v104[16] = partial apply for closure #1 in OSLogArguments.append(_:);
    v104[17] = v97;

    v104[18] = partial apply for closure #1 in OSLogArguments.append(_:);
    v104[19] = v98;

    v104[20] = partial apply for closure #1 in OSLogArguments.append(_:);
    v104[21] = v99;

    v104[22] = partial apply for closure #1 in OSLogArguments.append(_:);
    v104[23] = v100;

    v104[24] = partial apply for closure #1 in OSLogArguments.append(_:);
    v104[25] = v101;

    v104[26] = partial apply for closure #1 in OSLogArguments.append(_:);
    v104[27] = v102;

    v104[28] = partial apply for closure #1 in OSLogArguments.append(_:);
    v104[29] = v103;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v106))
    {
      v58 = static UnsafeMutablePointer.allocate(capacity:)();
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v59 = createStorage<A>(capacity:type:)(0, v57, v57);
      v60 = createStorage<A>(capacity:type:)(4, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v132 = v58;
      v133 = v59;
      v134 = v60;
      serialize(_:at:)(2, &v132);
      serialize(_:at:)(5, &v132);
      v135 = partial apply for closure #1 in OSLogArguments.append(_:);
      v136 = v89;
      closure #1 in osLogInternal(_:log:type:)(&v135, &v132, &v133, &v134);
      if (v107)
      {
      }

      v135 = partial apply for closure #1 in OSLogArguments.append(_:);
      v136 = v90;
      closure #1 in osLogInternal(_:log:type:)(&v135, &v132, &v133, &v134);
      v135 = partial apply for closure #1 in OSLogArguments.append(_:);
      v136 = v91;
      closure #1 in osLogInternal(_:log:type:)(&v135, &v132, &v133, &v134);
      v135 = partial apply for closure #1 in OSLogArguments.append(_:);
      v136 = v92;
      closure #1 in osLogInternal(_:log:type:)(&v135, &v132, &v133, &v134);
      v135 = partial apply for closure #1 in OSLogArguments.append(_:);
      v136 = v93;
      closure #1 in osLogInternal(_:log:type:)(&v135, &v132, &v133, &v134);
      v135 = partial apply for closure #1 in OSLogArguments.append(_:);
      v136 = v94;
      closure #1 in osLogInternal(_:log:type:)(&v135, &v132, &v133, &v134);
      v135 = partial apply for closure #1 in OSLogArguments.append(_:);
      v136 = v95;
      closure #1 in osLogInternal(_:log:type:)(&v135, &v132, &v133, &v134);
      v135 = partial apply for closure #1 in OSLogArguments.append(_:);
      v136 = v96;
      closure #1 in osLogInternal(_:log:type:)(&v135, &v132, &v133, &v134);
      v135 = partial apply for closure #1 in OSLogArguments.append(_:);
      v136 = v97;
      closure #1 in osLogInternal(_:log:type:)(&v135, &v132, &v133, &v134);
      v135 = partial apply for closure #1 in OSLogArguments.append(_:);
      v136 = v98;
      closure #1 in osLogInternal(_:log:type:)(&v135, &v132, &v133, &v134);
      v135 = partial apply for closure #1 in OSLogArguments.append(_:);
      v136 = v99;
      closure #1 in osLogInternal(_:log:type:)(&v135, &v132, &v133, &v134);
      v135 = partial apply for closure #1 in OSLogArguments.append(_:);
      v136 = v100;
      closure #1 in osLogInternal(_:log:type:)(&v135, &v132, &v133, &v134);
      v135 = partial apply for closure #1 in OSLogArguments.append(_:);
      v136 = v101;
      closure #1 in osLogInternal(_:log:type:)(&v135, &v132, &v133, &v134);
      v135 = partial apply for closure #1 in OSLogArguments.append(_:);
      v136 = v102;
      closure #1 in osLogInternal(_:log:type:)(&v135, &v132, &v133, &v134);
      v135 = partial apply for closure #1 in OSLogArguments.append(_:);
      v136 = v103;
      closure #1 in osLogInternal(_:log:type:)(&v135, &v132, &v133, &v134);
      _os_log_impl(&dword_269912000, log, v106, "Persisting sample...\n  identifier: %s\n  value: %f\n  unit: %s\n  start: %s\n  end: %s", v58, 0x34u);
      destroyStorage<A>(_:count:)(v59, 0, v57);
      destroyStorage<A>(_:count:)(v60, 4, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v58, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v50 = v125[55];
    v48 = v125[38];
    v49 = v125[34];
    v51 = v125[33];
    v54 = v125[32];
    MEMORY[0x277D82BD8](log);
    v50(v48, v49);
    outlined init with copy of QuantityPersisting(v51 + OBJC_IVAR____TtC19SiriWellnessIntents24LogQuantityIntentHandler_storage, (v125 + 7));
    v52 = v125[10];
    v53 = v125[11];
    __swift_project_boxed_opaque_existential_1(v125 + 7, v52);
    [v54 value];
    v55 = v7;
    v56 = [v54 units];
    if (v56)
    {
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v8;
      MEMORY[0x277D82BD8](v56);
      v46 = v44;
      v47 = v45;
    }

    else
    {
      v46 = 0;
      v47 = 0;
    }

    v125[59] = v47;
    v42 = v125[50];
    v43 = (*(v53 + 16) + **(v53 + 16));
    v9 = swift_task_alloc();
    v10.n128_u64[0] = v55;
    v125[60] = v9;
    *v9 = v125[29];
    v9[1] = LogQuantityIntentHandler.handle(intent:);
    v11 = v125[49];

    return v43(v11, v42, v46, v47, v52, v53, v10);
  }

  else
  {
    v31 = v125[51];
    v32 = v125[49];
    v12 = v125[37];
    v30 = v125[34];
    v33 = v125[50];
    v29 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v31(v12, v29, v30);
    swift_endAccess();

    v34 = swift_allocObject();
    *(v34 + 16) = v32;
    *(v34 + 24) = v33;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    v36 = swift_allocObject();
    *(v36 + 16) = 32;
    v37 = swift_allocObject();
    *(v37 + 16) = 8;
    v35 = swift_allocObject();
    *(v35 + 16) = partial apply for implicit closure #4 in LogQuantityIntentHandler.handle(intent:);
    *(v35 + 24) = v34;
    v38 = swift_allocObject();
    *(v38 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v38 + 24) = v35;
    _allocateUninitializedArray<A>(_:)();
    v39 = v13;

    *v39 = partial apply for closure #1 in OSLogArguments.append(_:);
    v39[1] = v36;

    v39[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v39[3] = v37;

    v39[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v39[5] = v38;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v40, v41))
    {
      v14 = v125[54];
      v26 = static UnsafeMutablePointer.allocate(capacity:)();
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v27 = createStorage<A>(capacity:type:)(0, v25, v25);
      v28 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v127 = v26;
      v128 = v27;
      v129 = v28;
      serialize(_:at:)(2, &v127);
      serialize(_:at:)(1, &v127);
      v130 = partial apply for closure #1 in OSLogArguments.append(_:);
      v131 = v36;
      closure #1 in osLogInternal(_:log:type:)(&v130, &v127, &v128, &v129);
      if (v14)
      {
      }

      v130 = partial apply for closure #1 in OSLogArguments.append(_:);
      v131 = v37;
      closure #1 in osLogInternal(_:log:type:)(&v130, &v127, &v128, &v129);
      v130 = partial apply for closure #1 in OSLogArguments.append(_:);
      v131 = v38;
      closure #1 in osLogInternal(_:log:type:)(&v130, &v127, &v128, &v129);
      _os_log_impl(&dword_269912000, v40, v41, "Not authorized to write to: %s", v26, 0xCu);
      destroyStorage<A>(_:count:)(v27, 0, v25);
      destroyStorage<A>(_:count:)(v28, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v26, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v18 = v125[55];
    v21 = v125[48];
    v20 = v125[46];
    v22 = v125[43];
    v16 = v125[37];
    v17 = v125[34];
    v19 = v125[44];
    MEMORY[0x277D82BD8](v40);
    v18(v16, v17);
    type metadata accessor for LogQuantityIntentResponse();
    v24 = LogQuantityIntentResponse.__allocating_init(code:userActivity:)(101, 0);

    v23 = *(v19 + 8);
    v23(v20, v22);
    v23(v21, v22);

    v15 = *(v125[29] + 8);

    return v15(v24);
  }
}

{
  v5 = v0[48];
  v4 = v0[46];
  v3 = v0[44];
  v6 = v0[43];
  v0[29] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  v7 = *(v3 + 8);
  v7(v4, v6);
  v7(v5, v6);
  v8 = v0[61];

  v1 = *(v0[29] + 8);

  return v1(v8);
}

uint64_t LogQuantityIntentHandler.handle(intent:)(char a1)
{
  v3 = *v1;
  *(v3 + 232) = *v1;
  *(v3 + 496) = a1;

  return MEMORY[0x2822009F8](LogQuantityIntentHandler.handle(intent:), 0);
}

uint64_t implicit closure #9 in LogQuantityIntentHandler.handle(intent:)(void *a1)
{
  v2 = [a1 units];
  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  lazy protocol witness table accessor for type String? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t @objc closure #1 in LogQuantityIntentHandler.handle(intent:)(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a1;
  v3[2] = v3;
  MEMORY[0x277D82BE0](a1);
  v3[5] = _Block_copy(a2);
  MEMORY[0x277D82BE0](a3);
  v5 = swift_task_alloc();
  *(v8 + 48) = v5;
  *v5 = *(v8 + 16);
  v5[1] = @objc closure #1 in LogQuantityIntentHandler.handle(intent:);

  return LogQuantityIntentHandler.handle(intent:)(a1);
}

uint64_t @objc closure #1 in LogQuantityIntentHandler.handle(intent:)(void *a1)
{
  v8 = *v1;
  aBlock = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(v8 + 16) = *v1;

  aBlock[2](aBlock, a1);
  _Block_release(aBlock);

  v2 = *(*(v8 + 16) + 8);

  return v2();
}

uint64_t _runTaskForBridgedAsyncMethod(_:)(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v19 = a2;
  v25 = &_sIeghH_IeAgH_TRTATu;
  v28 = &_sIeAgH_ytIeAgHr_TRTATu;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, "\u058B");
  v18 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2, v3);
  v27 = &v18 - v18;
  v26 = 0;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v27, 1);
  v21 = 48;
  v22 = 7;
  v5 = swift_allocObject();
  v6 = v19;
  v7 = v5;
  v8 = v20;
  v29 = v7;
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v8;
  v7[5] = v6;
  v23 = v7[2];
  v24 = v7[3];
  swift_unknownObjectRetain();
  v9 = swift_allocObject();
  v10 = v24;
  v11 = v25;
  v12 = v26;
  v13 = v27;
  v14 = v28;
  v15 = v9;
  v16 = v29;
  v15[2] = v23;
  v15[3] = v10;
  v15[4] = v11;
  v15[5] = v16;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(v12, v12, v13, v14, v15);
}

id LogQuantityIntentHandler.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t HealthKitPersistor.isLoggingAuthorized(for:)(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = a2;
  MEMORY[0x277D82BE0](a2);
  v3 = swift_task_alloc();
  *(v5 + 48) = v3;
  *v3 = *(v5 + 16);
  v3[1] = HealthKitPersistor.isLoggingAuthorized(for:);

  return isSiriAuthorizedToAccessHealthData(store:)(a2);
}

uint64_t HealthKitPersistor.isLoggingAuthorized(for:)(unsigned int a1)
{
  v5 = *v1;
  v4 = *(*v1 + 40);
  *(v5 + 16) = *v1;

  v2 = *(*(v5 + 16) + 8);

  return v2(a1);
}

id HealthKitPersistor.getHKUnit(from:)(uint64_t a1, uint64_t a2)
{
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mmol/L", 6uLL, 1)._countAndFlagsBits;
  v7 = MEMORY[0x26D649310](a1, a2, countAndFlagsBits);

  if (v7)
  {
    return [objc_opt_self() _millimolesBloodGlucosePerLiterUnit];
  }

  type metadata accessor for HKUnit();

  return @nonobjc HKUnit.__allocating_init(from:)(a1, a2);
}

id @nonobjc HKUnit.__allocating_init(from:)(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x26D6492A0](a1);
  v4 = [swift_getObjCClassFromMetadata() unitFromString_];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

uint64_t HealthKitPersistor.save(quantityIdentifier:value:units:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v6 + 912) = a5;
  *(v6 + 904) = a4;
  *(v6 + 896) = a3;
  *(v6 + 888) = a6;
  *(v6 + 880) = a2;
  *(v6 + 872) = a1;
  *(v6 + 480) = v6;
  *(v6 + 432) = 0;
  *(v6 + 440) = 0;
  *(v6 + 488) = 0;
  *(v6 + 448) = 0;
  *(v6 + 456) = 0;
  *(v6 + 496) = 0;
  *(v6 + 504) = 0;
  *(v6 + 512) = 0;
  *(v6 + 528) = 0;
  *(v6 + 568) = 0;
  *(v6 + 576) = 0;
  *(v6 + 584) = 0;
  *(v6 + 592) = 0;
  *(v6 + 600) = 0;
  *(v6 + 608) = 0;
  *(v6 + 616) = 0;
  *(v6 + 640) = 0;
  *(v6 + 464) = 0;
  *(v6 + 472) = 0;
  v7 = type metadata accessor for UUID();
  *(v6 + 920) = v7;
  *(v6 + 928) = *(v7 - 8);
  *(v6 + 936) = swift_task_alloc();
  v8 = type metadata accessor for Date();
  *(v6 + 944) = v8;
  *(v6 + 952) = *(v8 - 8);
  *(v6 + 960) = swift_task_alloc();
  *(v6 + 968) = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  *(v6 + 976) = v9;
  *(v6 + 984) = *(v9 - 8);
  *(v6 + 992) = swift_task_alloc();
  *(v6 + 1000) = swift_task_alloc();
  *(v6 + 1008) = swift_task_alloc();
  *(v6 + 1016) = swift_task_alloc();
  *(v6 + 1024) = swift_task_alloc();
  *(v6 + 1032) = swift_task_alloc();
  *(v6 + 1040) = swift_task_alloc();
  *(v6 + 1048) = swift_task_alloc();
  *(v6 + 1056) = swift_task_alloc();
  *(v6 + 1064) = swift_task_alloc();
  *(v6 + 1072) = swift_task_alloc();
  *(v6 + 1080) = swift_task_alloc();
  *(v6 + 432) = a1;
  *(v6 + 440) = a2;
  *(v6 + 488) = a6;
  *(v6 + 448) = a3;
  *(v6 + 456) = a4;
  *(v6 + 496) = a5;

  return MEMORY[0x2822009F8](HealthKitPersistor.save(quantityIdentifier:value:units:), 0);
}

uint64_t HealthKitPersistor.save(quantityIdentifier:value:units:)(uint64_t a1)
{
  v2 = v1[135];
  v21 = v1[123];
  v23 = v1[122];
  v1[60] = v1;
  v22 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = *(v21 + 16);
  v1[136] = v3;
  v1[137] = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v2, v22, v23);
  swift_endAccess();
  v25 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  v1[138] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v26 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v25, v24))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v17 = createStorage<A>(capacity:type:)(0, v15, v15);
    v18 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v20 + 840) = buf;
    *(v20 + 848) = v17;
    *(v20 + 856) = v18;
    serialize(_:at:)(0, (v20 + 840));
    serialize(_:at:)(0, (v20 + 840));
    *(v20 + 864) = v26;
    v19 = swift_task_alloc();
    v19[2] = v20 + 840;
    v19[3] = v20 + 848;
    v19[4] = v20 + 856;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v25, v24, "Starting to save quantity.", buf, 2u);
    destroyStorage<A>(_:count:)(v17, 0, v15);
    destroyStorage<A>(_:count:)(v18, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v8 = *(v20 + 1080);
  v9 = *(v20 + 976);
  v13 = *(v20 + 912);
  v11 = *(v20 + 880);
  v10 = *(v20 + 872);
  v7 = *(v20 + 984);
  MEMORY[0x277D82BD8](v25);
  v4 = *(v7 + 8);
  *(v20 + 1112) = v4;
  *(v20 + 1120) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v8, v9);

  v12 = MEMORY[0x26D6492A0](v10, v11);
  *(v20 + 1128) = v12;
  MEMORY[0x277D82BE0](v12);

  MEMORY[0x277D82BD8](v12);
  *(v20 + 504) = v12;
  type metadata accessor for HKQuantityType();
  MEMORY[0x277D82BE0](v12);
  v14 = MEMORY[0x26D649710](v12);
  *(v20 + 1136) = v14;
  *(v20 + 512) = v14;
  MEMORY[0x277D82BE0](v13);
  v5 = swift_task_alloc();
  *(v20 + 1144) = v5;
  *v5 = *(v20 + 480);
  v5[1] = HealthKitPersistor.save(quantityIdentifier:value:units:);

  return getPreferredUnit(for:store:)(v14, v13);
}

{
  v6 = *v2;
  v5 = *v2 + 16;
  v6[60] = *v2;
  v6[144] = a1;
  v6[145] = v1;

  if (v1)
  {
    v3 = HealthKitPersistor.save(quantityIdentifier:value:units:);
  }

  else
  {

    v3 = HealthKitPersistor.save(quantityIdentifier:value:units:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t HealthKitPersistor.save(quantityIdentifier:value:units:)()
{
  v212 = v0;
  v194 = v0[144];
  v0[60] = v0;
  v195 = v0[145];
  v0[146] = v194;
  v196 = v0[113];
  v0[66] = v194;

  if (v196)
  {
    v186 = *(v193 + 904);
    v189 = *(v193 + 1088);
    v1 = *(v193 + 1072);
    v188 = *(v193 + 976);
    *(v193 + 464) = *(v193 + 896);
    *(v193 + 472) = v186;
    v187 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v189(v1, v187, v188);
    swift_endAccess();
    oslog = Logger.logObject.getter();
    v190 = static os_log_type_t.debug.getter();
    v192 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v190))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v183 = createStorage<A>(capacity:type:)(0, v181, v181);
      v184 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v193 + 808) = buf;
      *(v193 + 816) = v183;
      *(v193 + 824) = v184;
      serialize(_:at:)(0, (v193 + 808));
      serialize(_:at:)(0, (v193 + 808));
      *(v193 + 832) = v192;
      v185 = swift_task_alloc();
      v185[2] = v193 + 808;
      v185[3] = v193 + 816;
      v185[4] = v193 + 824;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v195)
      {
      }

      _os_log_impl(&dword_269912000, oslog, v190, "Trying to convert unit to HKUnit.", buf, 2u);
      destroyStorage<A>(_:count:)(v183, 0, v181);
      destroyStorage<A>(_:count:)(v184, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

      v180 = 0;
    }

    else
    {

      v180 = v195;
    }

    v175 = *(v193 + 1112);
    v173 = *(v193 + 1072);
    v174 = *(v193 + 976);
    v176 = *(v193 + 896);
    MEMORY[0x277D82BD8](oslog);
    v175(v173, v174);
    v177 = HealthKitPersistor.getHKUnit(from:)(v176, v186);
    MEMORY[0x277D82BE0](v177);
    *(v193 + 520) = v177;

    v178 = v180;
    v179 = v177;
  }

  else
  {
    v169 = *(v193 + 1088);
    v2 = *(v193 + 1064);
    v168 = *(v193 + 976);
    v167 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v169(v2, v167, v168);
    swift_endAccess();
    log = Logger.logObject.getter();
    v170 = static os_log_type_t.debug.getter();
    v172 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v170))
    {
      v163 = static UnsafeMutablePointer.allocate(capacity:)();
      v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v164 = createStorage<A>(capacity:type:)(0, v162, v162);
      v165 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v193 + 776) = v163;
      *(v193 + 784) = v164;
      *(v193 + 792) = v165;
      serialize(_:at:)(0, (v193 + 776));
      serialize(_:at:)(0, (v193 + 776));
      *(v193 + 800) = v172;
      v166 = swift_task_alloc();
      v166[2] = v193 + 776;
      v166[3] = v193 + 784;
      v166[4] = v193 + 792;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v195)
      {
      }

      _os_log_impl(&dword_269912000, log, v170, "Using preferred unit.", v163, 2u);
      destroyStorage<A>(_:count:)(v164, 0, v162);
      destroyStorage<A>(_:count:)(v165, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v163, MEMORY[0x277D84B78]);

      v161 = 0;
    }

    else
    {

      v161 = v195;
    }

    v160 = *(v193 + 1112);
    v158 = *(v193 + 1064);
    v159 = *(v193 + 976);
    MEMORY[0x277D82BD8](log);
    v160(v158, v159);
    MEMORY[0x277D82BE0](v194);
    MEMORY[0x277D82BE0](v194);
    *(v193 + 520) = v194;
    v178 = v161;
    v179 = v194;
  }

  *(v193 + 1176) = v179;
  v154 = *(v193 + 1088);
  v3 = *(v193 + 1056);
  v153 = *(v193 + 976);
  v152 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v154(v3, v152, v153);
  swift_endAccess();
  v156 = Logger.logObject.getter();
  v155 = static os_log_type_t.debug.getter();
  v157 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v156, v155))
  {
    v148 = static UnsafeMutablePointer.allocate(capacity:)();
    v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v149 = createStorage<A>(capacity:type:)(0, v147, v147);
    v150 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v193 + 744) = v148;
    *(v193 + 752) = v149;
    *(v193 + 760) = v150;
    serialize(_:at:)(0, (v193 + 744));
    serialize(_:at:)(0, (v193 + 744));
    *(v193 + 768) = v157;
    v151 = swift_task_alloc();
    v151[2] = v193 + 744;
    v151[3] = v193 + 752;
    v151[4] = v193 + 760;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v178)
    {
    }

    _os_log_impl(&dword_269912000, v156, v155, "Starting to convert optional HKUnit to non-optional HKUnit.", v148, 2u);
    destroyStorage<A>(_:count:)(v149, 0, v147);
    destroyStorage<A>(_:count:)(v150, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v148, MEMORY[0x277D84B78]);

    v146 = 0;
  }

  else
  {

    v146 = v178;
  }

  v145 = *(v193 + 1112);
  v143 = *(v193 + 1056);
  v144 = *(v193 + 976);
  MEMORY[0x277D82BD8](v156);
  v145(v143, v144);
  if (!v179)
  {
    v28 = *(v193 + 1088);
    v13 = *(v193 + 1000);
    v27 = *(v193 + 976);
    v26 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v28(v13, v26, v27);
    swift_endAccess();
    v30 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    v31 = _allocateUninitializedArray<A>(_:)();
    if (!os_log_type_enabled(v30, v29))
    {

      goto LABEL_60;
    }

    v22 = static UnsafeMutablePointer.allocate(capacity:)();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v23 = createStorage<A>(capacity:type:)(0, v21, v21);
    v24 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v193 + 536) = v22;
    *(v193 + 544) = v23;
    *(v193 + 552) = v24;
    serialize(_:at:)(0, (v193 + 536));
    serialize(_:at:)(0, (v193 + 536));
    *(v193 + 560) = v31;
    v25 = swift_task_alloc();
    v25[2] = v193 + 536;
    v25[3] = v193 + 544;
    v25[4] = v193 + 552;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (!v146)
    {

      _os_log_impl(&dword_269912000, v30, v29, "Could not create an HKUnit.", v22, 2u);
      destroyStorage<A>(_:count:)(v23, 0, v21);
      destroyStorage<A>(_:count:)(v24, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v22, MEMORY[0x277D84B78]);

LABEL_60:
      v18 = *(v193 + 1136);
      v19 = *(v193 + 1128);
      v17 = *(v193 + 1112);
      v15 = *(v193 + 1000);
      v16 = *(v193 + 976);
      MEMORY[0x277D82BD8](v30);
      v17(v15, v16);
      type metadata accessor for LogQuantityIntentResponse();
      v20 = LogQuantityIntentResponse.__allocating_init(code:userActivity:)(5, 0);
      MEMORY[0x277D82BD8](v194);
      outlined destroy of HealthKitPersistor((v193 + 520));
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v19);
      v120 = v20;
LABEL_61:

      v14 = *(*(v193 + 480) + 8);

      return v14(v120);
    }
  }

  v4 = *(v193 + 1136);
  *(v193 + 568) = v179;
  if (([v4 isCompatibleWithUnit_] & 1) == 0)
  {
    v129 = *(v193 + 1136);
    v128 = *(v193 + 1088);
    v5 = *(v193 + 1048);
    v127 = *(v193 + 976);
    v126 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v128(v5, v126, v127);
    swift_endAccess();
    MEMORY[0x277D82BE0](v179);
    v130 = swift_allocObject();
    *(v130 + 16) = v179;
    MEMORY[0x277D82BE0](v129);
    v132 = swift_allocObject();
    *(v132 + 16) = v129;
    v141 = Logger.logObject.getter();
    v142 = static os_log_type_t.error.getter();
    v134 = swift_allocObject();
    *(v134 + 16) = 64;
    v135 = swift_allocObject();
    *(v135 + 16) = 8;
    v131 = swift_allocObject();
    *(v131 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
    *(v131 + 24) = v130;
    v136 = swift_allocObject();
    *(v136 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v136 + 24) = v131;
    v137 = swift_allocObject();
    *(v137 + 16) = 64;
    v138 = swift_allocObject();
    *(v138 + 16) = 8;
    v133 = swift_allocObject();
    *(v133 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
    *(v133 + 24) = v132;
    v139 = swift_allocObject();
    *(v139 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v139 + 24) = v133;
    _allocateUninitializedArray<A>(_:)();
    v140 = v6;

    *v140 = partial apply for closure #1 in OSLogArguments.append(_:);
    v140[1] = v134;

    v140[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v140[3] = v135;

    v140[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v140[5] = v136;

    v140[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v140[7] = v137;

    v140[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v140[9] = v138;

    v140[10] = partial apply for closure #1 in OSLogArguments.append(_:);
    v140[11] = v139;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v141, v142))
    {
      v123 = static UnsafeMutablePointer.allocate(capacity:)();
      v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v124 = createStorage<A>(capacity:type:)(2, v122, v122);
      v125 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v207 = v123;
      v208 = v124;
      v209 = v125;
      serialize(_:at:)(2, &v207);
      serialize(_:at:)(2, &v207);
      v210 = partial apply for closure #1 in OSLogArguments.append(_:);
      v211 = v134;
      closure #1 in osLogInternal(_:log:type:)(&v210, &v207, &v208, &v209);
      if (v146)
      {
      }

      v210 = partial apply for closure #1 in OSLogArguments.append(_:);
      v211 = v135;
      closure #1 in osLogInternal(_:log:type:)(&v210, &v207, &v208, &v209);
      v210 = partial apply for closure #1 in OSLogArguments.append(_:);
      v211 = v136;
      closure #1 in osLogInternal(_:log:type:)(&v210, &v207, &v208, &v209);
      v210 = partial apply for closure #1 in OSLogArguments.append(_:);
      v211 = v137;
      closure #1 in osLogInternal(_:log:type:)(&v210, &v207, &v208, &v209);
      v210 = partial apply for closure #1 in OSLogArguments.append(_:);
      v211 = v138;
      closure #1 in osLogInternal(_:log:type:)(&v210, &v207, &v208, &v209);
      v210 = partial apply for closure #1 in OSLogArguments.append(_:);
      v211 = v139;
      closure #1 in osLogInternal(_:log:type:)(&v210, &v207, &v208, &v209);
      _os_log_impl(&dword_269912000, v141, v142, "%@ is incompatible with %@.", v123, 0x16u);
      destroyStorage<A>(_:count:)(v124, 2, v122);
      destroyStorage<A>(_:count:)(v125, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v123, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v117 = *(v193 + 1136);
    v118 = *(v193 + 1128);
    v116 = *(v193 + 1112);
    v114 = *(v193 + 1048);
    v115 = *(v193 + 976);
    MEMORY[0x277D82BD8](v141);
    v116(v114, v115);
    type metadata accessor for LogQuantityIntentResponse();
    v119 = LogQuantityIntentResponse.__allocating_init(code:userActivity:)(102, 0);
    MEMORY[0x277D82BD8](v179);
    MEMORY[0x277D82BD8](v194);
    outlined destroy of HealthKitPersistor((v193 + 520));
    MEMORY[0x277D82BD8](v117);
    MEMORY[0x277D82BD8](v118);
    v120 = v119;
    goto LABEL_61;
  }

  *(v193 + 576) = *(v193 + 888);
  type metadata accessor for NSObject();
  v112 = [objc_opt_self() percentUnit];
  v113 = static NSObject.== infix(_:_:)();
  MEMORY[0x277D82BD8](v112);
  if (v113)
  {
    v8 = *(v193 + 888) / 100.0;
    *(v193 + 576) = v8;
    v111 = v8;
  }

  else
  {
    v111 = *(v193 + 888);
  }

  v101 = *(v193 + 1088);
  v98 = *(v193 + 1040);
  v100 = *(v193 + 976);
  type metadata accessor for HKQuantity();
  MEMORY[0x277D82BE0](v179);
  quantity = @nonobjc HKQuantity.__allocating_init(unit:doubleValue:)(v179, v111);
  *(v193 + 1184) = quantity;
  *(v193 + 584) = quantity;
  v99 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v101(v98, v99, v100);
  swift_endAccess();
  MEMORY[0x277D82BE0](quantity);
  v103 = swift_allocObject();
  *(v103 + 16) = quantity;
  v109 = Logger.logObject.getter();
  v110 = static os_log_type_t.debug.getter();
  v105 = swift_allocObject();
  *(v105 + 16) = 64;
  v106 = swift_allocObject();
  *(v106 + 16) = 8;
  v104 = swift_allocObject();
  *(v104 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
  *(v104 + 24) = v103;
  v107 = swift_allocObject();
  *(v107 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v107 + 24) = v104;
  _allocateUninitializedArray<A>(_:)();
  v108 = v9;

  *v108 = partial apply for closure #1 in OSLogArguments.append(_:);
  v108[1] = v105;

  v108[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v108[3] = v106;

  v108[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v108[5] = v107;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v109, v110))
  {
    v95 = static UnsafeMutablePointer.allocate(capacity:)();
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v96 = createStorage<A>(capacity:type:)(1, v94, v94);
    v97 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v202 = v95;
    v203 = v96;
    v204 = v97;
    serialize(_:at:)(2, &v202);
    serialize(_:at:)(1, &v202);
    v205 = partial apply for closure #1 in OSLogArguments.append(_:);
    v206 = v105;
    closure #1 in osLogInternal(_:log:type:)(&v205, &v202, &v203, &v204);
    if (v146)
    {
    }

    v205 = partial apply for closure #1 in OSLogArguments.append(_:);
    v206 = v106;
    closure #1 in osLogInternal(_:log:type:)(&v205, &v202, &v203, &v204);
    v205 = partial apply for closure #1 in OSLogArguments.append(_:);
    v206 = v107;
    closure #1 in osLogInternal(_:log:type:)(&v205, &v202, &v203, &v204);
    _os_log_impl(&dword_269912000, v109, v110, "Created HKQuantity: %@", v95, 0xCu);
    destroyStorage<A>(_:count:)(v96, 1, v94);
    destroyStorage<A>(_:count:)(v97, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v95, MEMORY[0x277D84B78]);

    v93 = 0;
  }

  else
  {

    v93 = v146;
  }

  identifier = *(v193 + 1128);
  v91 = *(v193 + 1112);
  v89 = *(v193 + 1040);
  v90 = *(v193 + 976);
  MEMORY[0x277D82BD8](v109);
  v91(v89, v90);
  if (!validateQuantity(identifier:quantity:)(identifier, quantity))
  {
    v85 = *(v193 + 1088);
    v10 = *(v193 + 1032);
    v84 = *(v193 + 976);
    v83 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v85(v10, v83, v84);
    swift_endAccess();
    v87 = Logger.logObject.getter();
    v86 = static os_log_type_t.error.getter();
    v88 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v87, v86))
    {
      v79 = static UnsafeMutablePointer.allocate(capacity:)();
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v80 = createStorage<A>(capacity:type:)(0, v78, v78);
      v81 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v193 + 712) = v79;
      *(v193 + 720) = v80;
      *(v193 + 728) = v81;
      serialize(_:at:)(0, (v193 + 712));
      serialize(_:at:)(0, (v193 + 712));
      *(v193 + 736) = v88;
      v82 = swift_task_alloc();
      v82[2] = v193 + 712;
      v82[3] = v193 + 720;
      v82[4] = v193 + 728;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v93)
      {
      }

      _os_log_impl(&dword_269912000, v87, v86, "Quantity validation failed - value outside valid bounds.", v79, 2u);
      destroyStorage<A>(_:count:)(v80, 0, v78);
      destroyStorage<A>(_:count:)(v81, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v79, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v75 = *(v193 + 1136);
    v76 = *(v193 + 1128);
    v74 = *(v193 + 1112);
    v72 = *(v193 + 1032);
    v73 = *(v193 + 976);
    MEMORY[0x277D82BD8](v87);
    v74(v72, v73);
    type metadata accessor for LogQuantityIntentResponse();
    v77 = LogQuantityIntentResponse.__allocating_init(code:userActivity:)(102, 0);
    MEMORY[0x277D82BD8](quantity);
    MEMORY[0x277D82BD8](v179);
    MEMORY[0x277D82BD8](v194);
    outlined destroy of HealthKitPersistor((v193 + 520));
    MEMORY[0x277D82BD8](v75);
    MEMORY[0x277D82BD8](v76);
    v120 = v77;
    goto LABEL_61;
  }

  v56 = *(v193 + 1136);
  v62 = *(v193 + 1088);
  v59 = *(v193 + 1024);
  v61 = *(v193 + 976);
  v57 = *(v193 + 968);
  v58 = *(v193 + 960);
  type metadata accessor for HKQuantitySample();
  MEMORY[0x277D82BE0](v56);
  MEMORY[0x277D82BE0](quantity);
  Date.init()();
  Date.init()();
  v63 = @nonobjc HKQuantitySample.__allocating_init(type:quantity:start:end:)(v56, quantity, v57, v58);
  *(v193 + 1192) = v63;
  *(v193 + 592) = v63;
  v60 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v62(v59, v60, v61);
  swift_endAccess();
  MEMORY[0x277D82BE0](v63);
  v64 = swift_allocObject();
  *(v64 + 16) = v63;
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.debug.getter();
  v66 = swift_allocObject();
  *(v66 + 16) = 64;
  v67 = swift_allocObject();
  *(v67 + 16) = 8;
  v65 = swift_allocObject();
  *(v65 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
  *(v65 + 24) = v64;
  v68 = swift_allocObject();
  *(v68 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v68 + 24) = v65;
  _allocateUninitializedArray<A>(_:)();
  v69 = v11;

  *v69 = partial apply for closure #1 in OSLogArguments.append(_:);
  v69[1] = v66;

  v69[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v69[3] = v67;

  v69[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v69[5] = v68;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v70, v71))
  {
    v53 = static UnsafeMutablePointer.allocate(capacity:)();
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v54 = createStorage<A>(capacity:type:)(1, v52, v52);
    v55 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v197 = v53;
    v198 = v54;
    v199 = v55;
    serialize(_:at:)(2, &v197);
    serialize(_:at:)(1, &v197);
    v200 = partial apply for closure #1 in OSLogArguments.append(_:);
    v201 = v66;
    closure #1 in osLogInternal(_:log:type:)(&v200, &v197, &v198, &v199);
    if (v93)
    {
    }

    v200 = partial apply for closure #1 in OSLogArguments.append(_:);
    v201 = v67;
    closure #1 in osLogInternal(_:log:type:)(&v200, &v197, &v198, &v199);
    v200 = partial apply for closure #1 in OSLogArguments.append(_:);
    v201 = v68;
    closure #1 in osLogInternal(_:log:type:)(&v200, &v197, &v198, &v199);
    _os_log_impl(&dword_269912000, v70, v71, "Created HKQuantitySample: %@", v53, 0xCu);
    destroyStorage<A>(_:count:)(v54, 1, v52);
    destroyStorage<A>(_:count:)(v55, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v53, MEMORY[0x277D84B78]);

    v51 = 0;
  }

  else
  {

    v51 = v93;
  }

  v44 = *(v193 + 1112);
  v47 = *(v193 + 1088);
  v43 = *(v193 + 1024);
  v12 = *(v193 + 1016);
  v46 = *(v193 + 976);
  MEMORY[0x277D82BD8](v70);
  v44(v43, v46);
  v45 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v47(v12, v45, v46);
  swift_endAccess();
  v49 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();
  v50 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v49, v48))
  {
    v39 = static UnsafeMutablePointer.allocate(capacity:)();
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v40 = createStorage<A>(capacity:type:)(0, v38, v38);
    v41 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v193 + 680) = v39;
    *(v193 + 688) = v40;
    *(v193 + 696) = v41;
    serialize(_:at:)(0, (v193 + 680));
    serialize(_:at:)(0, (v193 + 680));
    *(v193 + 704) = v50;
    v42 = swift_task_alloc();
    v42[2] = v193 + 680;
    v42[3] = v193 + 688;
    v42[4] = v193 + 696;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v51)
    {
    }

    _os_log_impl(&dword_269912000, v49, v48, "Trying to save to store.", v39, 2u);
    destroyStorage<A>(_:count:)(v40, 0, v38);
    destroyStorage<A>(_:count:)(v41, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v39, MEMORY[0x277D84B78]);

    v37 = 0;
  }

  else
  {

    v37 = v51;
  }

  *(v193 + 1200) = v37;
  v34 = *(v193 + 1112);
  v32 = *(v193 + 1016);
  v33 = *(v193 + 976);
  v36 = *(v193 + 912);
  MEMORY[0x277D82BD8](v49);
  v34(v32, v33);
  MEMORY[0x277D82BE0](v36);
  *(v193 + 16) = *(v193 + 480);
  *(v193 + 56) = v121;
  *(v193 + 24) = HealthKitPersistor.save(quantityIdentifier:value:units:);
  v35 = swift_continuation_init();
  *(v193 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  *(v193 + 112) = v35;
  *(v193 + 80) = MEMORY[0x277D85DD0];
  *(v193 + 88) = 1107296256;
  *(v193 + 92) = 0;
  *(v193 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type () zero on error;
  *(v193 + 104) = &block_descriptor;
  [v36 saveObject:v63 withCompletion:?];

  return MEMORY[0x282200938](v193 + 16);
}

{
  v4 = *v0;
  v5 = *v0;
  *(v5 + 480) = *v0;
  v1 = *(v4 + 48);
  *(v5 + 1208) = v1;
  if (v1)
  {
    v2 = HealthKitPersistor.save(quantityIdentifier:value:units:);
  }

  else
  {
    v2 = HealthKitPersistor.save(quantityIdentifier:value:units:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v59 = v0[136];
  v1 = v0[126];
  v58 = v0[122];
  v2 = v0[114];
  v0[60] = v0;
  MEMORY[0x277D82BD8](v2);
  v57 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v59(v1, v57, v58);
  swift_endAccess();
  v61 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();
  v62 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v61, v60))
  {
    v3 = *(v56 + 1200);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v53 = createStorage<A>(capacity:type:)(0, v51, v51);
    v54 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v56 + 648) = buf;
    *(v56 + 656) = v53;
    *(v56 + 664) = v54;
    serialize(_:at:)(0, (v56 + 648));
    serialize(_:at:)(0, (v56 + 648));
    *(v56 + 672) = v62;
    v55 = swift_task_alloc();
    v55[2] = v56 + 648;
    v55[3] = v56 + 656;
    v55[4] = v56 + 664;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v3)
    {
    }

    _os_log_impl(&dword_269912000, v61, v60, "Getting intent response.", buf, 2u);
    destroyStorage<A>(_:count:)(v53, 0, v51);
    destroyStorage<A>(_:count:)(v54, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v42 = *(v56 + 1192);
  v33 = *(v56 + 1112);
  v31 = *(v56 + 1008);
  v32 = *(v56 + 976);
  v37 = *(v56 + 968);
  v38 = *(v56 + 944);
  store = *(v56 + 912);
  v50.super.isa = *(v56 + 1176);
  v34 = *(v56 + 952);
  MEMORY[0x277D82BD8](v61);
  v33(v31, v32);
  type metadata accessor for LogQuantityIntentResponse();
  v47 = LogQuantityIntentResponse.__allocating_init(code:userActivity:)(4, 0);
  *(v56 + 608) = v47;
  MEMORY[0x277D82BE0](v42);
  v35 = [v42 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  isa = Date._bridgeToObjectiveC()().super.isa;
  MEMORY[0x277D82BD8](v42);
  v39 = *(v34 + 8);
  v39(v37, v38);
  MEMORY[0x277D82BD8](v35);
  [v47 setStart_];
  MEMORY[0x277D82BD8](isa);
  MEMORY[0x277D82BE0](v42);
  v40 = [v42 endDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = Date._bridgeToObjectiveC()().super.isa;
  MEMORY[0x277D82BD8](v42);
  v39(v37, v38);
  MEMORY[0x277D82BD8](v40);
  [v47 setEnd_];
  MEMORY[0x277D82BD8](v41);
  v43 = [v42 quantity];
  [v43 doubleValueForUnit_];
  v44 = v5;
  MEMORY[0x277D82BD8](v43);
  [v47 setDoubleValue_];
  [v47 doubleValue];
  value = v6;
  MEMORY[0x277D82BE0](store);
  v65.value = value;
  v64.is_nil = store;
  v65.is_nil = LOBYTE(value);
  v64.value.super.isa = 0;
  v7 = localizedUnitName(for:value:store:)(v50, v65, v64);
  MEMORY[0x277D82BD8](store);
  v48 = MEMORY[0x26D6492A0](v7._countAndFlagsBits, v7._object);

  [v47 setUnits_];
  MEMORY[0x277D82BD8](v48);
  type metadata accessor for HKUnit();
  _allocateUninitializedArray<A>(_:)();
  v49 = v8;
  *v8 = [objc_opt_self() countUnit];
  v49[1] = [objc_opt_self() _countPerMinuteUnit];
  v49[2] = [objc_opt_self() percentUnit];
  _finalizeUninitializedArray<A>(_:)();
  *(v56 + 616) = v9;
  *(v56 + 624) = v9;
  *(v56 + 632) = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo6HKUnitCGMd, &_sSaySo6HKUnitCGMR);
  lazy protocol witness table accessor for type [HKUnit] and conformance [A]();
  lazy protocol witness table accessor for type HKUnit and conformance NSObject();
  if (Sequence<>.contains(_:)())
  {
    v28 = *(v56 + 1136);
    v29 = *(v56 + 912);
    MEMORY[0x277D82BE0](v29);
    v30 = [v28 hk:v29 metadataValueDisplayTypeInStore:?];
    MEMORY[0x277D82BD8](v29);
    if (v30)
    {
      v10 = *(v56 + 912);
      v24 = v10;
      *(v56 + 640) = v30;
      MEMORY[0x277D82BE0](v10);
      v25 = localizedUnitName(for:store:)(v30, v24);
      v26 = v11;
      MEMORY[0x277D82BD8](v24);
      v27 = MEMORY[0x26D6492A0](v25, v26);

      [v47 setUnits_];
      MEMORY[0x277D82BD8](v27);
      MEMORY[0x277D82BD8](v30);
    }
  }

  v18 = *(v56 + 1192);
  v19 = *(v56 + 1184);
  v21 = *(v56 + 1168);
  v22 = *(v56 + 1136);
  v23 = *(v56 + 1128);
  v14 = *(v56 + 936);
  v15 = *(v56 + 920);
  v20 = *(v56 + 1176);
  v13 = *(v56 + 928);
  MEMORY[0x277D82BE0](v18);
  v16 = [v18 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = UUID._bridgeToObjectiveC()().super.isa;
  MEMORY[0x277D82BD8](v18);
  (*(v13 + 8))(v14, v15);
  MEMORY[0x277D82BD8](v16);
  [v47 setUuidOfLastSavedSample_];
  MEMORY[0x277D82BD8](v17);

  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  outlined destroy of HealthKitPersistor((v56 + 520));
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);

  v12 = *(*(v56 + 480) + 8);

  return v12(v47);
}

{
  v205 = v0;
  v188 = v0[145];
  v1 = v0[114];
  v0[60] = v0;
  MEMORY[0x277D82BD8](v1);

  v0[146] = 0;
  v189 = v0[113];
  v0[66] = 0;

  if (v189)
  {
    v180 = *(v187 + 904);
    v183 = *(v187 + 1088);
    v2 = *(v187 + 1072);
    v182 = *(v187 + 976);
    *(v187 + 464) = *(v187 + 896);
    *(v187 + 472) = v180;
    v181 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v183(v2, v181, v182);
    swift_endAccess();
    oslog = Logger.logObject.getter();
    v184 = static os_log_type_t.debug.getter();
    v186 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v184))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v177 = createStorage<A>(capacity:type:)(0, v175, v175);
      v178 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v187 + 808) = buf;
      *(v187 + 816) = v177;
      *(v187 + 824) = v178;
      serialize(_:at:)(0, (v187 + 808));
      serialize(_:at:)(0, (v187 + 808));
      *(v187 + 832) = v186;
      v179 = swift_task_alloc();
      v179[2] = v187 + 808;
      v179[3] = v187 + 816;
      v179[4] = v187 + 824;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, oslog, v184, "Trying to convert unit to HKUnit.", buf, 2u);
      destroyStorage<A>(_:count:)(v177, 0, v175);
      destroyStorage<A>(_:count:)(v178, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    v171 = *(v187 + 1112);
    v169 = *(v187 + 1072);
    v170 = *(v187 + 976);
    v172 = *(v187 + 896);
    MEMORY[0x277D82BD8](oslog);
    v171(v169, v170);
    v173 = HealthKitPersistor.getHKUnit(from:)(v172, v180);
    MEMORY[0x277D82BE0](v173);
    *(v187 + 520) = v173;

    v174 = v173;
  }

  else
  {
    v165 = *(v187 + 1088);
    v3 = *(v187 + 1064);
    v164 = *(v187 + 976);
    v163 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v165(v3, v163, v164);
    swift_endAccess();
    log = Logger.logObject.getter();
    v166 = static os_log_type_t.debug.getter();
    v168 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v166))
    {
      v159 = static UnsafeMutablePointer.allocate(capacity:)();
      v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v160 = createStorage<A>(capacity:type:)(0, v158, v158);
      v161 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v187 + 776) = v159;
      *(v187 + 784) = v160;
      *(v187 + 792) = v161;
      serialize(_:at:)(0, (v187 + 776));
      serialize(_:at:)(0, (v187 + 776));
      *(v187 + 800) = v168;
      v162 = swift_task_alloc();
      v162[2] = v187 + 776;
      v162[3] = v187 + 784;
      v162[4] = v187 + 792;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, log, v166, "Using preferred unit.", v159, 2u);
      destroyStorage<A>(_:count:)(v160, 0, v158);
      destroyStorage<A>(_:count:)(v161, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v159, MEMORY[0x277D84B78]);
    }

    v157 = *(v187 + 1112);
    v155 = *(v187 + 1064);
    v156 = *(v187 + 976);
    MEMORY[0x277D82BD8](log);
    v157(v155, v156);
    MEMORY[0x277D82BE0](0);
    MEMORY[0x277D82BE0](0);
    *(v187 + 520) = 0;
    v174 = 0;
  }

  *(v187 + 1176) = v174;
  v151 = *(v187 + 1088);
  v4 = *(v187 + 1056);
  v150 = *(v187 + 976);
  v149 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v151(v4, v149, v150);
  swift_endAccess();
  v153 = Logger.logObject.getter();
  v152 = static os_log_type_t.debug.getter();
  v154 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v153, v152))
  {
    v145 = static UnsafeMutablePointer.allocate(capacity:)();
    v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v146 = createStorage<A>(capacity:type:)(0, v144, v144);
    v147 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v187 + 744) = v145;
    *(v187 + 752) = v146;
    *(v187 + 760) = v147;
    serialize(_:at:)(0, (v187 + 744));
    serialize(_:at:)(0, (v187 + 744));
    *(v187 + 768) = v154;
    v148 = swift_task_alloc();
    v148[2] = v187 + 744;
    v148[3] = v187 + 752;
    v148[4] = v187 + 760;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v153, v152, "Starting to convert optional HKUnit to non-optional HKUnit.", v145, 2u);
    destroyStorage<A>(_:count:)(v146, 0, v144);
    destroyStorage<A>(_:count:)(v147, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v145, MEMORY[0x277D84B78]);
  }

  v143 = *(v187 + 1112);
  v141 = *(v187 + 1056);
  v142 = *(v187 + 976);
  MEMORY[0x277D82BD8](v153);
  v143(v141, v142);
  if (!v174)
  {
    v29 = *(v187 + 1088);
    v13 = *(v187 + 1000);
    v28 = *(v187 + 976);
    v27 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v29(v13, v27, v28);
    swift_endAccess();
    v31 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    v32 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v31, v30))
    {
      v23 = static UnsafeMutablePointer.allocate(capacity:)();
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v24 = createStorage<A>(capacity:type:)(0, v22, v22);
      v25 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v187 + 536) = v23;
      *(v187 + 544) = v24;
      *(v187 + 552) = v25;
      serialize(_:at:)(0, (v187 + 536));
      serialize(_:at:)(0, (v187 + 536));
      *(v187 + 560) = v32;
      v26 = swift_task_alloc();
      v26[2] = v187 + 536;
      v26[3] = v187 + 544;
      v26[4] = v187 + 552;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v31, v30, "Could not create an HKUnit.", v23, 2u);
      destroyStorage<A>(_:count:)(v24, 0, v22);
      destroyStorage<A>(_:count:)(v25, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v23, MEMORY[0x277D84B78]);
    }

    v19 = *(v187 + 1136);
    v20 = *(v187 + 1128);
    v18 = *(v187 + 1112);
    v16 = *(v187 + 1000);
    v17 = *(v187 + 976);
    MEMORY[0x277D82BD8](v31);
    v18(v16, v17);
    type metadata accessor for LogQuantityIntentResponse();
    v21 = LogQuantityIntentResponse.__allocating_init(code:userActivity:)(5, 0);
    MEMORY[0x277D82BD8](0);
    outlined destroy of HealthKitPersistor((v187 + 520));
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    v118 = v21;
    goto LABEL_37;
  }

  v5 = *(v187 + 1136);
  *(v187 + 568) = v174;
  if (([v5 isCompatibleWithUnit_] & 1) == 0)
  {
    v127 = *(v187 + 1136);
    v126 = *(v187 + 1088);
    v6 = *(v187 + 1048);
    v125 = *(v187 + 976);
    v124 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v126(v6, v124, v125);
    swift_endAccess();
    MEMORY[0x277D82BE0](v174);
    v128 = swift_allocObject();
    *(v128 + 16) = v174;
    MEMORY[0x277D82BE0](v127);
    v130 = swift_allocObject();
    *(v130 + 16) = v127;
    v139 = Logger.logObject.getter();
    v140 = static os_log_type_t.error.getter();
    v132 = swift_allocObject();
    *(v132 + 16) = 64;
    v133 = swift_allocObject();
    *(v133 + 16) = 8;
    v129 = swift_allocObject();
    *(v129 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
    *(v129 + 24) = v128;
    v134 = swift_allocObject();
    *(v134 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v134 + 24) = v129;
    v135 = swift_allocObject();
    *(v135 + 16) = 64;
    v136 = swift_allocObject();
    *(v136 + 16) = 8;
    v131 = swift_allocObject();
    *(v131 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
    *(v131 + 24) = v130;
    v137 = swift_allocObject();
    *(v137 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v137 + 24) = v131;
    _allocateUninitializedArray<A>(_:)();
    v138 = v7;

    *v138 = partial apply for closure #1 in OSLogArguments.append(_:);
    v138[1] = v132;

    v138[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v138[3] = v133;

    v138[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v138[5] = v134;

    v138[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v138[7] = v135;

    v138[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v138[9] = v136;

    v138[10] = partial apply for closure #1 in OSLogArguments.append(_:);
    v138[11] = v137;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v139, v140))
    {
      v121 = static UnsafeMutablePointer.allocate(capacity:)();
      v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v122 = createStorage<A>(capacity:type:)(2, v120, v120);
      v123 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v200 = v121;
      v201 = v122;
      v202 = v123;
      serialize(_:at:)(2, &v200);
      serialize(_:at:)(2, &v200);
      v203 = partial apply for closure #1 in OSLogArguments.append(_:);
      v204 = v132;
      closure #1 in osLogInternal(_:log:type:)(&v203, &v200, &v201, &v202);
      v203 = partial apply for closure #1 in OSLogArguments.append(_:);
      v204 = v133;
      closure #1 in osLogInternal(_:log:type:)(&v203, &v200, &v201, &v202);
      v203 = partial apply for closure #1 in OSLogArguments.append(_:);
      v204 = v134;
      closure #1 in osLogInternal(_:log:type:)(&v203, &v200, &v201, &v202);
      v203 = partial apply for closure #1 in OSLogArguments.append(_:);
      v204 = v135;
      closure #1 in osLogInternal(_:log:type:)(&v203, &v200, &v201, &v202);
      v203 = partial apply for closure #1 in OSLogArguments.append(_:);
      v204 = v136;
      closure #1 in osLogInternal(_:log:type:)(&v203, &v200, &v201, &v202);
      v203 = partial apply for closure #1 in OSLogArguments.append(_:);
      v204 = v137;
      closure #1 in osLogInternal(_:log:type:)(&v203, &v200, &v201, &v202);
      _os_log_impl(&dword_269912000, v139, v140, "%@ is incompatible with %@.", v121, 0x16u);
      destroyStorage<A>(_:count:)(v122, 2, v120);
      destroyStorage<A>(_:count:)(v123, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v121, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v115 = *(v187 + 1136);
    v116 = *(v187 + 1128);
    v114 = *(v187 + 1112);
    v112 = *(v187 + 1048);
    v113 = *(v187 + 976);
    MEMORY[0x277D82BD8](v139);
    v114(v112, v113);
    type metadata accessor for LogQuantityIntentResponse();
    v117 = LogQuantityIntentResponse.__allocating_init(code:userActivity:)(102, 0);
    MEMORY[0x277D82BD8](v174);
    MEMORY[0x277D82BD8](0);
    outlined destroy of HealthKitPersistor((v187 + 520));
    MEMORY[0x277D82BD8](v115);
    MEMORY[0x277D82BD8](v116);
    v118 = v117;
LABEL_37:

    v14 = *(*(v187 + 480) + 8);

    return v14(v118);
  }

  *(v187 + 576) = *(v187 + 888);
  type metadata accessor for NSObject();
  v110 = [objc_opt_self() percentUnit];
  v111 = static NSObject.== infix(_:_:)();
  MEMORY[0x277D82BD8](v110);
  if (v111)
  {
    v8 = *(v187 + 888) / 100.0;
    *(v187 + 576) = v8;
    v109 = v8;
  }

  else
  {
    v109 = *(v187 + 888);
  }

  v99 = *(v187 + 1088);
  v96 = *(v187 + 1040);
  v98 = *(v187 + 976);
  type metadata accessor for HKQuantity();
  MEMORY[0x277D82BE0](v174);
  quantity = @nonobjc HKQuantity.__allocating_init(unit:doubleValue:)(v174, v109);
  *(v187 + 1184) = quantity;
  *(v187 + 584) = quantity;
  v97 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v99(v96, v97, v98);
  swift_endAccess();
  MEMORY[0x277D82BE0](quantity);
  v101 = swift_allocObject();
  *(v101 + 16) = quantity;
  v107 = Logger.logObject.getter();
  v108 = static os_log_type_t.debug.getter();
  v103 = swift_allocObject();
  *(v103 + 16) = 64;
  v104 = swift_allocObject();
  *(v104 + 16) = 8;
  v102 = swift_allocObject();
  *(v102 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
  *(v102 + 24) = v101;
  v105 = swift_allocObject();
  *(v105 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v105 + 24) = v102;
  _allocateUninitializedArray<A>(_:)();
  v106 = v9;

  *v106 = partial apply for closure #1 in OSLogArguments.append(_:);
  v106[1] = v103;

  v106[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v106[3] = v104;

  v106[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v106[5] = v105;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v107, v108))
  {
    v93 = static UnsafeMutablePointer.allocate(capacity:)();
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v94 = createStorage<A>(capacity:type:)(1, v92, v92);
    v95 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v195 = v93;
    v196 = v94;
    v197 = v95;
    serialize(_:at:)(2, &v195);
    serialize(_:at:)(1, &v195);
    v198 = partial apply for closure #1 in OSLogArguments.append(_:);
    v199 = v103;
    closure #1 in osLogInternal(_:log:type:)(&v198, &v195, &v196, &v197);
    v198 = partial apply for closure #1 in OSLogArguments.append(_:);
    v199 = v104;
    closure #1 in osLogInternal(_:log:type:)(&v198, &v195, &v196, &v197);
    v198 = partial apply for closure #1 in OSLogArguments.append(_:);
    v199 = v105;
    closure #1 in osLogInternal(_:log:type:)(&v198, &v195, &v196, &v197);
    _os_log_impl(&dword_269912000, v107, v108, "Created HKQuantity: %@", v93, 0xCu);
    destroyStorage<A>(_:count:)(v94, 1, v92);
    destroyStorage<A>(_:count:)(v95, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v93, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  identifier = *(v187 + 1128);
  v90 = *(v187 + 1112);
  v88 = *(v187 + 1040);
  v89 = *(v187 + 976);
  MEMORY[0x277D82BD8](v107);
  v90(v88, v89);
  if (!validateQuantity(identifier:quantity:)(identifier, quantity))
  {
    v84 = *(v187 + 1088);
    v10 = *(v187 + 1032);
    v83 = *(v187 + 976);
    v82 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v84(v10, v82, v83);
    swift_endAccess();
    v86 = Logger.logObject.getter();
    v85 = static os_log_type_t.error.getter();
    v87 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v86, v85))
    {
      v78 = static UnsafeMutablePointer.allocate(capacity:)();
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v79 = createStorage<A>(capacity:type:)(0, v77, v77);
      v80 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v187 + 712) = v78;
      *(v187 + 720) = v79;
      *(v187 + 728) = v80;
      serialize(_:at:)(0, (v187 + 712));
      serialize(_:at:)(0, (v187 + 712));
      *(v187 + 736) = v87;
      v81 = swift_task_alloc();
      v81[2] = v187 + 712;
      v81[3] = v187 + 720;
      v81[4] = v187 + 728;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v86, v85, "Quantity validation failed - value outside valid bounds.", v78, 2u);
      destroyStorage<A>(_:count:)(v79, 0, v77);
      destroyStorage<A>(_:count:)(v80, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v78, MEMORY[0x277D84B78]);
    }

    v74 = *(v187 + 1136);
    v75 = *(v187 + 1128);
    v73 = *(v187 + 1112);
    v71 = *(v187 + 1032);
    v72 = *(v187 + 976);
    MEMORY[0x277D82BD8](v86);
    v73(v71, v72);
    type metadata accessor for LogQuantityIntentResponse();
    v76 = LogQuantityIntentResponse.__allocating_init(code:userActivity:)(102, 0);
    MEMORY[0x277D82BD8](quantity);
    MEMORY[0x277D82BD8](v174);
    MEMORY[0x277D82BD8](0);
    outlined destroy of HealthKitPersistor((v187 + 520));
    MEMORY[0x277D82BD8](v74);
    MEMORY[0x277D82BD8](v75);
    v118 = v76;
    goto LABEL_37;
  }

  v55 = *(v187 + 1136);
  v61 = *(v187 + 1088);
  v58 = *(v187 + 1024);
  v60 = *(v187 + 976);
  v56 = *(v187 + 968);
  v57 = *(v187 + 960);
  type metadata accessor for HKQuantitySample();
  MEMORY[0x277D82BE0](v55);
  MEMORY[0x277D82BE0](quantity);
  Date.init()();
  Date.init()();
  v62 = @nonobjc HKQuantitySample.__allocating_init(type:quantity:start:end:)(v55, quantity, v56, v57);
  *(v187 + 1192) = v62;
  *(v187 + 592) = v62;
  v59 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v61(v58, v59, v60);
  swift_endAccess();
  MEMORY[0x277D82BE0](v62);
  v63 = swift_allocObject();
  *(v63 + 16) = v62;
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.debug.getter();
  v65 = swift_allocObject();
  *(v65 + 16) = 64;
  v66 = swift_allocObject();
  *(v66 + 16) = 8;
  v64 = swift_allocObject();
  *(v64 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
  *(v64 + 24) = v63;
  v67 = swift_allocObject();
  *(v67 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v67 + 24) = v64;
  _allocateUninitializedArray<A>(_:)();
  v68 = v11;

  *v68 = partial apply for closure #1 in OSLogArguments.append(_:);
  v68[1] = v65;

  v68[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v68[3] = v66;

  v68[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v68[5] = v67;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v69, v70))
  {
    v52 = static UnsafeMutablePointer.allocate(capacity:)();
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v53 = createStorage<A>(capacity:type:)(1, v51, v51);
    v54 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v190 = v52;
    v191 = v53;
    v192 = v54;
    serialize(_:at:)(2, &v190);
    serialize(_:at:)(1, &v190);
    v193 = partial apply for closure #1 in OSLogArguments.append(_:);
    v194 = v65;
    closure #1 in osLogInternal(_:log:type:)(&v193, &v190, &v191, &v192);
    v193 = partial apply for closure #1 in OSLogArguments.append(_:);
    v194 = v66;
    closure #1 in osLogInternal(_:log:type:)(&v193, &v190, &v191, &v192);
    v193 = partial apply for closure #1 in OSLogArguments.append(_:);
    v194 = v67;
    closure #1 in osLogInternal(_:log:type:)(&v193, &v190, &v191, &v192);
    _os_log_impl(&dword_269912000, v69, v70, "Created HKQuantitySample: %@", v52, 0xCu);
    destroyStorage<A>(_:count:)(v53, 1, v51);
    destroyStorage<A>(_:count:)(v54, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v52, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v44 = *(v187 + 1112);
  v47 = *(v187 + 1088);
  v43 = *(v187 + 1024);
  v12 = *(v187 + 1016);
  v46 = *(v187 + 976);
  MEMORY[0x277D82BD8](v69);
  v44(v43, v46);
  v45 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v47(v12, v45, v46);
  swift_endAccess();
  v49 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();
  v50 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v49, v48))
  {
    v39 = static UnsafeMutablePointer.allocate(capacity:)();
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v40 = createStorage<A>(capacity:type:)(0, v38, v38);
    v41 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v187 + 680) = v39;
    *(v187 + 688) = v40;
    *(v187 + 696) = v41;
    serialize(_:at:)(0, (v187 + 680));
    serialize(_:at:)(0, (v187 + 680));
    *(v187 + 704) = v50;
    v42 = swift_task_alloc();
    v42[2] = v187 + 680;
    v42[3] = v187 + 688;
    v42[4] = v187 + 696;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v49, v48, "Trying to save to store.", v39, 2u);
    destroyStorage<A>(_:count:)(v40, 0, v38);
    destroyStorage<A>(_:count:)(v41, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v39, MEMORY[0x277D84B78]);
  }

  *(v187 + 1200) = 0;
  v35 = *(v187 + 1112);
  v33 = *(v187 + 1016);
  v34 = *(v187 + 976);
  v37 = *(v187 + 912);
  MEMORY[0x277D82BD8](v49);
  v35(v33, v34);
  MEMORY[0x277D82BE0](v37);
  *(v187 + 16) = *(v187 + 480);
  *(v187 + 56) = v119;
  *(v187 + 24) = HealthKitPersistor.save(quantityIdentifier:value:units:);
  v36 = swift_continuation_init();
  *(v187 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  *(v187 + 112) = v36;
  *(v187 + 80) = MEMORY[0x277D85DD0];
  *(v187 + 88) = 1107296256;
  *(v187 + 92) = 0;
  *(v187 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type () zero on error;
  *(v187 + 104) = &block_descriptor;
  [v37 saveObject:v62 withCompletion:?];

  return MEMORY[0x282200938](v187 + 16);
}

{
  v41 = v0;
  v27 = v0[151];
  v26 = v0[136];
  v22 = v0[124];
  v25 = v0[122];
  v23 = v0[114];
  v0[60] = v0;
  swift_willThrow();
  MEMORY[0x277D82BD8](v23);
  v1 = v27;
  v0[75] = v27;
  v24 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v26(v22, v24, v25);
  swift_endAccess();
  v2 = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  v30 = swift_allocObject();
  *(v30 + 16) = 32;
  v31 = swift_allocObject();
  *(v31 + 16) = 8;
  v29 = swift_allocObject();
  *(v29 + 16) = partial apply for implicit closure #5 in HealthKitPersistor.save(quantityIdentifier:value:units:);
  *(v29 + 24) = v28;
  v32 = swift_allocObject();
  *(v32 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v32 + 24) = v29;
  _allocateUninitializedArray<A>(_:)();
  v33 = v3;

  *v33 = partial apply for closure #1 in OSLogArguments.append(_:);
  v33[1] = v30;

  v33[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v33[3] = v31;

  v33[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v33[5] = v32;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v34, v35))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v19 = createStorage<A>(capacity:type:)(0, v17, v17);
    v20 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v36 = buf;
    v37 = v19;
    v38 = v20;
    serialize(_:at:)(2, &v36);
    serialize(_:at:)(1, &v36);
    v39 = partial apply for closure #1 in OSLogArguments.append(_:);
    v40 = v30;
    closure #1 in osLogInternal(_:log:type:)(&v39, &v36, &v37, &v38);
    v39 = partial apply for closure #1 in OSLogArguments.append(_:);
    v40 = v31;
    closure #1 in osLogInternal(_:log:type:)(&v39, &v36, &v37, &v38);
    v39 = partial apply for closure #1 in OSLogArguments.append(_:);
    v40 = v32;
    closure #1 in osLogInternal(_:log:type:)(&v39, &v36, &v37, &v38);
    _os_log_impl(&dword_269912000, v34, v35, "Failed to persist sample. Error: %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v19, 0, v17);
    destroyStorage<A>(_:count:)(v20, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v9 = v21[151];
  v10 = v21[149];
  v11 = v21[148];
  v13 = v21[146];
  v14 = v21[142];
  v15 = v21[141];
  v8 = v21[139];
  v6 = v21[124];
  v7 = v21[122];
  v12 = v21[147];
  MEMORY[0x277D82BD8](v34);
  v8(v6, v7);
  type metadata accessor for LogQuantityIntentResponse();
  v16 = LogQuantityIntentResponse.__allocating_init(code:userActivity:)(5, 0);

  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  outlined destroy of HealthKitPersistor(v21 + 65);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);

  v4 = *(v21[60] + 8);

  return v4(v16);
}

id @nonobjc HKQuantity.__allocating_init(unit:doubleValue:)(uint64_t a1, double a2)
{
  v4 = [swift_getObjCClassFromMetadata() quantityWithUnit:a1 doubleValue:a2];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id @nonobjc HKQuantitySample.__allocating_init(type:quantity:start:end:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  isa = Date._bridgeToObjectiveC()().super.isa;
  v5 = Date._bridgeToObjectiveC()().super.isa;
  v13 = [swift_getObjCClassFromMetadata() quantitySampleWithType:a1 quantity:a2 startDate:isa endDate:v5];
  MEMORY[0x277D82BD8](v5);
  v9 = type metadata accessor for Date();
  v10 = *(*(v9 - 8) + 8);
  v10(a4);
  MEMORY[0x277D82BD8](isa);
  (v10)(a3, v9);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  return v13;
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type () zero on error(uint64_t a1, int a2, void *a3)
{
  MEMORY[0x277D82BE0](a3);
  v10 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    _resumeUnsafeThrowingContinuation<A>(_:_:)(v10, v6, MEMORY[0x277D84F78] + 8);
  }

  else
  {
    if (a3)
    {
      v5 = a3;
    }

    else
    {
      _diagnoseUnexpectedNilOptional(_filenameStart:_filenameLength:_filenameIsASCII:_line:_isImplicitUnwrap:)("", 0, 1, 0, 1);
      __break(1u);
    }

    v4 = v5;
    _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(v10, v5, MEMORY[0x277D84F78] + 8);
  }

  return MEMORY[0x277D82BD8](a3);
}

uint64_t implicit closure #5 in HealthKitPersistor.save(quantityIdentifier:value:units:)(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  return String.init<A>(describing:)();
}

uint64_t protocol witness for QuantityPersisting.isLoggingAuthorized(for:) in conformance HealthKitPersistor(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *v1;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for QuantityPersisting.isLoggingAuthorized(for:) in conformance HealthKitPersistor;

  return HealthKitPersistor.isLoggingAuthorized(for:)(a1, v6);
}

uint64_t protocol witness for QuantityPersisting.isLoggingAuthorized(for:) in conformance HealthKitPersistor(unsigned int a1)
{
  v4 = *v1;
  *(v4 + 16) = *v1;

  v2 = *(*(v4 + 16) + 8);

  return v2(a1);
}

uint64_t protocol witness for QuantityPersisting.save(quantityIdentifier:value:units:) in conformance HealthKitPersistor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v9 = v6;
  *(v6 + 16) = v6;
  v14 = *v5;
  v7 = swift_task_alloc();
  *(v9 + 24) = v7;
  *v7 = *(v9 + 16);
  v7[1] = protocol witness for QuantityPersisting.save(quantityIdentifier:value:units:) in conformance HealthKitPersistor;

  return HealthKitPersistor.save(quantityIdentifier:value:units:)(a1, a2, a3, a4, v14, a5);
}

uint64_t protocol witness for QuantityPersisting.save(quantityIdentifier:value:units:) in conformance HealthKitPersistor(uint64_t a1)
{
  v4 = *v1;
  *(v4 + 16) = *v1;

  v2 = *(*(v4 + 16) + 8);

  return v2(a1);
}

uint64_t createStorage<A>(capacity:type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    return static UnsafeMutablePointer.allocate(capacity:)();
  }

  else
  {
    return 0;
  }
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t destroyStorage<A>(_:count:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (result)
  {
    UnsafeMutablePointer.deinitialize(count:)();
    return MEMORY[0x26D6497C0](v3, a3);
  }

  return result;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  v8[1] = a4;
  v9 = *(a3 - 8);
  v10 = a3 - 8;
  v8[0] = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](a1, a2);
  v11 = v8 - v8[0];
  v5(v4);
  v13 = dispatch thunk of CustomStringConvertible.description.getter();
  v14 = v6;
  (*(v9 + 8))(v11, v12);
  return v13;
}

uint64_t specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, unsigned int a3)
{
  if (a3 < 0x80uLL)
  {
    if (a3 > 0xFF)
    {
      goto LABEL_12;
    }

    v5 = (a3 + 1);
  }

  else
  {
    v7 = (a3 & 0x3F) << 8;
    if (a3 >> 6 < 0x20uLL)
    {
      v5 = (v7 | (a3 >> 6)) + 33217;
    }

    else
    {
      v6 = (v7 | (a3 >> 6) & 0x3F) << 8;
      if (a3 >> 12 < 0x10uLL)
      {
        v5 = (v6 | (a3 >> 12)) + 8487393;
      }

      else
      {
        v5 = ((a3 >> 18) | ((v6 | (a3 >> 12) & 0x3F) << 8)) - 2122219023;
      }
    }
  }

  v4 = 4 - (__clz(v5) >> 3);
  v9 = (v5 - 0x101010101010101) & ((1 << ((8 * v4) & 0x3F)) - 1);
  Int.init(bitPattern:)();
  if ((v4 & 0x8000000000000000) == 0)
  {
    return a1(&v9, v4);
  }

  _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
LABEL_12:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in _unimplementedInitializer(className:initName:file:line:column:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a10;
  v36 = 0;
  v38 = a6;
  v39 = a7;
  v40 = a1;
  v41 = a2;
  v42 = a8;
  v43 = a10;
  if (a5)
  {
    if (!HIDWORD(v31))
    {
      v26 = v31;
      if ((v31 >> 11 < 0x1B || v26 >> 13 > 6) && HIWORD(v26) <= 0x10u)
      {
        v10 = v36;
        v24 = v17;
        MEMORY[0x28223BE20](v17, a2);
        v15 = partial apply for closure #1 in closure #1 in closure #1 in _unimplementedInitializer(className:initName:file:line:column:);
        v16 = &v37;
        specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(partial apply for specialized closure #1 in StaticString.withUTF8Buffer<A>(_:), &v13, v11);
        return v10;
      }

      LODWORD(v15) = 0;
      v14 = 148;
      LOBYTE(v13) = 2;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 3053;
    LOBYTE(v13) = 2;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v31)
  {
    v23 = v31;
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v29)
      {
        v22 = v29;
      }

      else
      {
        LODWORD(v15) = 0;
        v14 = 268;
        LOBYTE(v13) = 2;
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      v21 = v22;
      if (v28 >= 0xFFFFFFFF80000000)
      {
        if (v28 <= 0x7FFFFFFF)
        {
          v20 = v28;
          if (v33)
          {
            v19 = v33;
          }

          else
          {
            LODWORD(v15) = 0;
            v14 = 269;
            LOBYTE(v13) = 2;
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          v18 = v19;
          if (v32 >= 0xFFFFFFFF80000000)
          {
            if (v32 <= 0x7FFFFFFF)
            {
              v17[5] = v32;
              if (v30 >= 0xFFFFFFFF80000000)
              {
                if (v30 <= 0x7FFFFFFF)
                {
                  v17[4] = v30;
                  if (!HIDWORD(v27))
                  {
                    v17[3] = v27;
                    if (!HIDWORD(v35))
                    {
                      LODWORD(v15) = 0;
                      _swift_stdlib_reportUnimplementedInitializerInFile();
                      return v36;
                    }

                    LODWORD(v15) = 0;
                    v14 = 3053;
                    LOBYTE(v13) = 2;
                    _assertionFailure(_:_:file:line:flags:)();
                    __break(1u);
                  }

                  LODWORD(v15) = 0;
                  v14 = 3053;
                  LOBYTE(v13) = 2;
                  _assertionFailure(_:_:file:line:flags:)();
                  __break(1u);
                }

                LODWORD(v15) = 0;
                v14 = 3268;
                LOBYTE(v13) = 2;
                _assertionFailure(_:_:file:line:flags:)();
                __break(1u);
              }

              LODWORD(v15) = 0;
              v14 = 3262;
              LOBYTE(v13) = 2;
              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
            }

            LODWORD(v15) = 0;
            v14 = 3268;
            LOBYTE(v13) = 2;
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          LODWORD(v15) = 0;
          v14 = 3262;
          LOBYTE(v13) = 2;
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        LODWORD(v15) = 0;
        v14 = 3268;
        LOBYTE(v13) = 2;
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      LODWORD(v15) = 0;
      v14 = 3262;
      LOBYTE(v13) = 2;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 1410;
    LOBYTE(v13) = 2;
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in _unimplementedInitializer(className:initName:file:line:column:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a4 >= 0xFFFFFFFF80000000)
  {
    if (a4 <= 0x7FFFFFFF)
    {
      if (!a5)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      if (a6 >= 0xFFFFFFFF80000000)
      {
        if (a6 <= 0x7FFFFFFF)
        {
          if (!a1)
          {
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          if (a2 >= 0xFFFFFFFF80000000)
          {
            if (a2 <= 0x7FFFFFFF)
            {
              if (a7 <= 0xFFFFFFFF)
              {
                if (a8 <= 0xFFFFFFFF)
                {
                  return _swift_stdlib_reportUnimplementedInitializerInFile();
                }

                _assertionFailure(_:_:file:line:flags:)();
                __break(1u);
              }

              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
            }

            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v7 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = _sIeghH_IeAgH_TRTQ0_;

  return v7();
}

uint64_t _sIeghH_IeAgH_TRTQ0_()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t _sIeAgH_ytIeAgHr_TR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v8 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = _sIeghH_IeAgH_TRTQ0_;

  return v8();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a1;
  v47 = a2;
  v55 = a3;
  v48 = a4;
  v49 = a5;
  v50 = &_sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA_299Tu;
  v51 = "Fatal error";
  v52 = "Unexpectedly found nil while unwrapping an Optional value";
  v53 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v54 = &_sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TATu;
  v56 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, "\u058B") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v55, v5);
  v57 = v17 - v56;
  outlined init with copy of TaskPriority?(v6, v17 - v56);
  v58 = type metadata accessor for TaskPriority();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  if ((*(v59 + 48))(v57, 1) == 1)
  {
    outlined destroy of TaskPriority?(v57);
    v45 = 0;
  }

  else
  {
    v44 = TaskPriority.rawValue.getter();
    (*(v59 + 8))(v57, v58);
    v45 = v44;
  }

  v41 = v45 | 0x1C00;
  v43 = *(v49 + 16);
  v42 = *(v49 + 24);
  swift_unknownObjectRetain();
  if (v43)
  {
    v39 = v43;
    v40 = v42;
    v33 = v42;
    v34 = v43;
    swift_getObjectType();
    v35 = dispatch thunk of Actor.unownedExecutor.getter();
    v36 = v7;
    swift_unknownObjectRelease();
    v37 = v35;
    v38 = v36;
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v31 = v38;
  v32 = v37;

  if (v47)
  {
    v29 = v46;
    v30 = v47;
    v23 = v47;
    v24 = String.utf8CString.getter();

    v25 = v24 + 32;

    v8 = swift_allocObject();
    v9 = v49;
    v10 = v32;
    v11 = v31;
    v26 = v8;
    *(v8 + 16) = v48;
    *(v8 + 24) = v9;
    v27 = 0;
    if (v10 != 0 || v11 != 0)
    {
      v64[0] = 0;
      v64[1] = 0;
      v64[2] = v32;
      v64[3] = v31;
      v27 = v64;
    }

    v61 = 7;
    v62 = v27;
    v63 = v25;
    v22 = swift_task_create();

    v28 = v22;
  }

  else
  {
    v28 = 0;
  }

  v21 = v28;
  if (v28)
  {
    v17[1] = v21;
    v17[0] = v21;
    outlined destroy of TaskPriority?(v55);

    return v17[0];
  }

  else
  {

    outlined destroy of TaskPriority?(v55);
    v12 = swift_allocObject();
    v13 = v49;
    v14 = v32;
    v15 = v31;
    v19 = v12;
    *(v12 + 16) = v48;
    *(v12 + 24) = v13;
    v20 = 0;
    if (v14 != 0 || v15 != 0)
    {
      v65[0] = 0;
      v65[1] = 0;
      v65[2] = v32;
      v65[3] = v31;
      v20 = v65;
    }

    return swift_task_create();
  }
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(uint64_t a1, int *a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TQ0_()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t closure #1 in OSLogArguments.append(_:)(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t **, uint64_t))
{
  v9 = a4(a1, a2, a3);
  v8 = *a1;
  MEMORY[0x277D82BE0](v9);
  UnsafeMutableRawBufferPointer.copyMemory(from:)();
  if (v9)
  {
    MEMORY[0x277D82BD8](v9);
  }

  *a1 = v8 + 8;
  v5 = *a2;
  if (!*a2)
  {
    return MEMORY[0x277D82BD8](v9);
  }

  MEMORY[0x277D82BE0](v9);
  *v5 = v9;
  result = MEMORY[0x277D82BD8](v9);
  *a2 = v5 + 1;
  return result;
}

void *closure #1 in OSLogArguments.append(_:)(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = (a4)(a1, a2);
  getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, a3);
  v8 = *a1;

  UnsafeMutableRawBufferPointer.copyMemory(from:)();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

uint64_t sub_26992AF64()
{
  v2 = *(type metadata accessor for Date() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #10 in LogQuantityIntentHandler.handle(intent:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return implicit closure #10 in LogQuantityIntentHandler.handle(intent:)(v3, a1);
}

uint64_t partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for Date();
  v1 = lazy protocol witness table accessor for type Date and conformance Date();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

unint64_t lazy protocol witness table accessor for type Date and conformance Date()
{
  v2 = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    type metadata accessor for Date();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Date and conformance Date);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    type metadata accessor for Date();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Date and conformance Date);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26992B1C0()
{
  v2 = *(type metadata accessor for Date() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  v14 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      outlined init with copy of Any(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v13[3] = MEMORY[0x277D840A0];
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      outlined init with copy of Any(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  return v11;
}

void *specialized _StringGuts._deconstructUTF8<A>(scratch:)(void *result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        _sSv16initializeMemory2as4from5countSpyxGxm_SPyxGSitlFs5UInt8V_Ttgq5(v22, v17, v16);
        UnsafeMutableRawBufferPointer.subscript.setter();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = _StringGuts._allocateForDeconstruct()(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = _StringObject.sharedUTF8.getter();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

char *_sSv16initializeMemory2as4from5countSpyxGxm_SPyxGSitlFs5UInt8V_Ttgq5(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, uint64_t a2)
{
  v7 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  inited = swift_initStackObject();
  _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs5UInt8V_Tt1gq5(inited, 1);
  *v3 = 0;
  specialized _finalizeUninitializedArray<A>(_:)();
  specialized Array.append<A>(contentsOf:)(v4);

  v8 = specialized Array.count.getter(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2)
{
  v17[2] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = String.UTF8View._foreignCount()();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return _ss15ContiguousArrayVAByxGycfCs5UInt8V_Ttgq5();
  }

  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    return _ss15ContiguousArrayVAByxGycfCs5UInt8V_Ttgq5();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        specialized UnsafeMutablePointer.initialize(from:count:)(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = _StringObject.sharedUTF8.getter();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      specialized UnsafeMutablePointer.initialize(from:count:)(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = _StringGuts._foreignCopyUTF8(into:)();
  if (v2)
  {
LABEL_29:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  outlined destroy of String.UTF8View(v17);
  return v10;
}

uint64_t _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v18 = specialized Array.count.getter(a1);
  v2 = specialized Array.count.getter(*v1);
  v19 = v2 + v18;
  if (__OFADD__(v2, v18))
  {
    goto LABEL_31;
  }

  v14 = *v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v19 > *(*v17 + 24) >> 1)
  {
    if (*(*v17 + 16) < v19)
    {
      v13 = v19;
    }

    else
    {
      v13 = *(*v17 + 16);
    }

    v12 = *v17;

    *v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v13, 1, v12);
  }

  v4 = *(*v17 + 16);
  v10 = (*v17 + 32 + v4);
  v5 = *(*v17 + 24) >> 1;
  v11 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
    goto LABEL_32;
  }

  if (v11 < 0)
  {
LABEL_30:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!specialized Array._getCount()(a1))
  {
LABEL_21:

    if (v18 <= 0)
    {
      goto LABEL_28;
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_30;
  }

  if (v11 < v18)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_21;
  }

  specialized UnsafeMutablePointer.initialize(from:count:)((a1 + 32), v18, v10);

  swift_unknownObjectRelease();
  if (v18 <= 0)
  {
    goto LABEL_28;
  }

  v7 = *(*v17 + 16);
  v9 = v7 + v18;
  if (!__OFADD__(v7, v18))
  {
    *(*v17 + 16) = v9;
LABEL_28:
    Array._endMutation()();
    return;
  }

LABEL_33:
  __break(1u);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = a2;
  }

  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v6 = swift_allocObject();

    if (_swift_stdlib_has_malloc_size())
    {
      v4 = _swift_stdlib_malloc_size(v6) - 32;
      v6[2] = a1;
      v6[3] = 2 * v4;
    }

    else
    {
      v6[2] = a1;
      v6[3] = 2 * v7;
    }

    return v6;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];

    return v3;
  }
}

void *specialized UnsafeMutablePointer.initialize(from:count:)(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = MEMORY[0x26D649340](15, v10, a2, a3);
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v5 = String.UTF16View.index(_:offsetBy:)();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

uint64_t _ss15ContiguousArrayVAByxGycfCs5UInt8V_Ttgq5()
{
  v1 = MEMORY[0x277D84F90];

  return v1;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v4, v6);
  if (v7)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v4, v5 + 32);

    *(a4 + 16) = 0;
  }

  else
  {

    specialized UnsafeMutablePointer.initialize(from:count:)((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

void *closure #1 in OSLogArguments.append(_:)(void *a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  (a4)(a1, a2, a3);
  v5 = *a1;
  UnsafeMutableRawBufferPointer.copyMemory(from:)();
  result = a1;
  *a1 = v5 + 8;
  return result;
}

uint64_t sub_26992D368()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  _Block_release(*(v0 + 24));
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t partial apply for @objc closure #1 in LogQuantityIntentHandler.handle(intent:)()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v7 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = _sIeghH_IeAgH_TRTQ0_;

  return @objc closure #1 in LogQuantityIntentHandler.handle(intent:)(v7, v5, v6);
}

unint64_t type metadata accessor for HKUnit()
{
  v2 = lazy cache variable for type metadata for HKUnit;
  if (!lazy cache variable for type metadata for HKUnit)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKUnit);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for HKQuantityType()
{
  v2 = lazy cache variable for type metadata for HKQuantityType;
  if (!lazy cache variable for type metadata for HKQuantityType)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKQuantityType);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A];
  if (!lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v5;
}

unint64_t type metadata accessor for NSObject()
{
  v2 = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSObject);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for HKQuantity()
{
  v2 = lazy cache variable for type metadata for HKQuantity;
  if (!lazy cache variable for type metadata for HKQuantity)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKQuantity);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for HKQuantitySample()
{
  v2 = lazy cache variable for type metadata for HKQuantitySample;
  if (!lazy cache variable for type metadata for HKQuantitySample)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKQuantitySample);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

unint64_t lazy protocol witness table accessor for type [HKUnit] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [HKUnit] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKUnit] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo6HKUnitCGMd, &_sSaySo6HKUnitCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKUnit] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HKUnit and conformance NSObject()
{
  v2 = lazy protocol witness table cache variable for type HKUnit and conformance NSObject;
  if (!lazy protocol witness table cache variable for type HKUnit and conformance NSObject)
  {
    type metadata accessor for HKUnit();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKUnit and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26992DFA4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t _sIeghH_IeAgH_TRTA()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v7 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = _sIeghH_IeAgH_TRTQ0_;

  return _sIeghH_IeAgH_TR(v7, v5, v6);
}

uint64_t sub_26992E0E4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t _sIeAgH_ytIeAgHr_TRTA(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = _sIeghH_IeAgH_TRTQ0_;

  return _sIeAgH_ytIeAgHr_TR(a1, v6, v7, v8);
}

void *outlined init with copy of TaskPriority?(const void *a1, void *a2)
{
  v6 = type metadata accessor for TaskPriority();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, "\u058B");
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v3 = type metadata accessor for TaskPriority();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = _sIeghH_IeAgH_TRTQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(a1, v6);
}

unint64_t lazy protocol witness table accessor for type String? and conformance A?()
{
  v2 = lazy protocol witness table cache variable for type String? and conformance A?;
  if (!lazy protocol witness table cache variable for type String? and conformance A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type String? and conformance A?);
    return WitnessTable;
  }

  return v2;
}

void *GetAmbiguousDistanceIntentHandler.init(provider:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v8 = a1;
  v9 = v1;
  outlined init with copy of QuantityPersisting(a1, v7);
  outlined init with take of QuantityPersisting(v7, &v1[OBJC_IVAR____TtC19SiriWellnessIntents33GetAmbiguousDistanceIntentHandler_provider]);
  v6.receiver = v9;
  v6.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v6, sel_init);
  MEMORY[0x277D82BE0](v5);
  v9 = v5;
  __swift_destroy_boxed_opaque_existential_1(a1);
  MEMORY[0x277D82BD8](v9);
  return v5;
}

uint64_t GetAmbiguousDistanceIntentHandler.handle(intent:)(uint64_t a1)
{
  v2[16] = v1;
  v2[15] = a1;
  v2[12] = v2;
  v2[13] = 0;
  v2[14] = 0;
  v3 = type metadata accessor for Date();
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[13] = a1;
  v2[14] = v1;

  return MEMORY[0x2822009F8](GetAmbiguousDistanceIntentHandler.handle(intent:), 0);
}

{
  v5 = *v1;
  v4 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  *(v5 + 96) = *v1;
  *(v5 + 192) = a1;

  outlined destroy of Date?(v3);
  outlined destroy of Date?(v4);

  return MEMORY[0x2822009F8](GetAmbiguousDistanceIntentHandler.handle(intent:), 0);
}

uint64_t GetAmbiguousDistanceIntentHandler.handle(intent:)()
{
  v1 = v0[16];
  v0[12] = v0;
  outlined init with copy of QuantityPersisting(v1 + OBJC_IVAR____TtC19SiriWellnessIntents33GetAmbiguousDistanceIntentHandler_provider, (v0 + 2));
  v8 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
  v6 = *(v4 + 8);
  v7 = (*(v6 + 8) + **(v6 + 8));
  v2 = swift_task_alloc();
  *(v5 + 176) = v2;
  *v2 = *(v5 + 96);
  v2[1] = GetAmbiguousDistanceIntentHandler.handle(intent:);

  return v7(v8, v6);
}

{
  v22 = *(v0 + 200);
  *(v0 + 96) = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v22)
  {
    v19 = *(v21 + 120);
    outlined init with copy of QuantityPersisting(*(v21 + 128) + OBJC_IVAR____TtC19SiriWellnessIntents33GetAmbiguousDistanceIntentHandler_provider, v21 + 56);
    v17 = *(v21 + 80);
    v18 = *(v21 + 88);
    __swift_project_boxed_opaque_existential_1((v21 + 56), v17);
    v20 = [v19 startDate];
    if (v20)
    {
      v16 = *(v21 + 168);
      v14 = *(v21 + 152);
      v15 = *(v21 + 136);
      v13 = *(v21 + 144);
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
      (*(v13 + 32))(v16, v14, v15);
      (*(v13 + 56))(v16, 0, 1, v15);
      MEMORY[0x277D82BD8](v20);
    }

    else
    {
      (*(*(v21 + 144) + 56))(*(v21 + 168), 1, 1, *(v21 + 136));
    }

    v12 = [*(v21 + 120) endDate];
    if (v12)
    {
      v11 = *(v21 + 160);
      v9 = *(v21 + 152);
      v10 = *(v21 + 136);
      v8 = *(v21 + 144);
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
      (*(v8 + 32))(v11, v9, v10);
      (*(v8 + 56))(v11, 0, 1, v10);
      MEMORY[0x277D82BD8](v12);
    }

    else
    {
      (*(*(v21 + 144) + 56))(*(v21 + 160), 1, 1, *(v21 + 136));
    }

    v7 = (*(v18 + 16) + **(v18 + 16));
    v1 = swift_task_alloc();
    *(v21 + 184) = v1;
    *v1 = *(v21 + 96);
    v1[1] = GetAmbiguousDistanceIntentHandler.handle(intent:);
    v2 = *(v21 + 168);
    v3 = *(v21 + 160);

    return v7(v2, v3, v17, v18);
  }

  else
  {
    type metadata accessor for GetAmbiguousDistanceIntentResponse();
    v6 = GetAmbiguousDistanceIntentResponse.__allocating_init(code:userActivity:)(101, 0);

    v5 = *(*(v21 + 96) + 8);

    return v5(v6);
  }
}

{
  v0[12] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v3 = v0[24];

  v1 = *(v0[12] + 8);

  return v1(v3);
}

uint64_t GetAmbiguousDistanceIntentHandler.handle(intent:)(char a1)
{
  v3 = *v1;
  *(v3 + 96) = *v1;
  *(v3 + 200) = a1;

  return MEMORY[0x2822009F8](GetAmbiguousDistanceIntentHandler.handle(intent:), 0);
}

uint64_t @objc closure #1 in GetAmbiguousDistanceIntentHandler.handle(intent:)(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a1;
  v3[2] = v3;
  MEMORY[0x277D82BE0](a1);
  v3[5] = _Block_copy(a2);
  MEMORY[0x277D82BE0](a3);
  v5 = swift_task_alloc();
  *(v8 + 48) = v5;
  *v5 = *(v8 + 16);
  v5[1] = @objc closure #1 in LogQuantityIntentHandler.handle(intent:);

  return GetAmbiguousDistanceIntentHandler.handle(intent:)(a1);
}

uint64_t sub_26992F3D0()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  _Block_release(*(v0 + 24));
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t partial apply for @objc closure #1 in GetAmbiguousDistanceIntentHandler.handle(intent:)()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v7 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = _sIeghH_IeAgH_TRTQ0_;

  return @objc closure #1 in GetAmbiguousDistanceIntentHandler.handle(intent:)(v7, v5, v6);
}

id GetAmbiguousDistanceIntentHandler.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t GetHealthQuantityIntentHandler.storage.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC19SiriWellnessIntents30GetHealthQuantityIntentHandler_storage);
  swift_beginAccess();
  outlined init with copy of QuantityPersisting?(v3, a1);
  return swift_endAccess();
}

void *GetHealthQuantityIntentHandler.storage.setter(void *a1)
{
  v5[5] = 0;
  v5[6] = a1;
  outlined init with copy of QuantityPersisting?(a1, v5);
  v3 = (v1 + OBJC_IVAR____TtC19SiriWellnessIntents30GetHealthQuantityIntentHandler_storage);
  swift_beginAccess();
  outlined assign with take of QuantityFetching?(v5, v3);
  swift_endAccess();
  return outlined destroy of QuantityPersisting?(a1);
}

void *outlined assign with take of QuantityFetching?(const void *a1, void *a2)
{
  if (a2[3])
  {
    __swift_destroy_boxed_opaque_existential_1(a2);
    memcpy(a2, a1, 0x28uLL);
  }

  else
  {
    memcpy(a2, a1, 0x28uLL);
  }

  return a2;
}

char *GetHealthQuantityIntentHandler.init(storage:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v10[5] = a1;
  v11 = v1;
  v2 = &v1[OBJC_IVAR____TtC19SiriWellnessIntents30GetHealthQuantityIntentHandler_storage];
  *v2 = 0;
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  *(v2 + 3) = 0;
  *(v2 + 4) = 0;
  v4 = v11;
  outlined init with copy of QuantityPersisting?(a1, v10);
  v5 = &v4[OBJC_IVAR____TtC19SiriWellnessIntents30GetHealthQuantityIntentHandler_storage];
  swift_beginAccess();
  outlined assign with take of QuantityFetching?(v10, v5);
  swift_endAccess();
  v9.receiver = v11;
  v9.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v9, sel_init);
  MEMORY[0x277D82BE0](v8);
  v11 = v8;
  outlined destroy of QuantityPersisting?(a1);
  MEMORY[0x277D82BD8](v11);
  return v8;
}

uint64_t GetHealthQuantityIntentHandler.handle(intent:)(uint64_t a1)
{
  v2[68] = v1;
  v2[67] = a1;
  v2[49] = v2;
  v2[50] = 0;
  v2[51] = 0;
  v2[47] = 0;
  v2[48] = 0;
  v2[56] = 0;
  v2[59] = 0;
  v2[66] = 0;
  v3 = type metadata accessor for Date();
  v2[69] = v3;
  v2[70] = *(v3 - 8);
  v2[71] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[74] = v4;
  v2[75] = *(v4 - 8);
  v2[76] = swift_task_alloc();
  v2[77] = swift_task_alloc();
  v2[78] = swift_task_alloc();
  v2[79] = swift_task_alloc();
  v2[80] = swift_task_alloc();
  v2[81] = swift_task_alloc();
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();
  v2[50] = a1;
  v2[51] = v1;

  return MEMORY[0x2822009F8](GetHealthQuantityIntentHandler.handle(intent:), 0);
}

{
  v7 = *v2;
  v6 = *v2 + 16;
  v7[49] = *v2;
  v7[96] = a1;
  v7[97] = v1;

  if (v1)
  {
    v3 = GetHealthQuantityIntentHandler.handle(intent:);
  }

  else
  {
    v5 = *(v6 + 568);
    outlined destroy of Date?(*(v6 + 560));
    outlined destroy of Date?(v5);
    v3 = GetHealthQuantityIntentHandler.handle(intent:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

{
  v33 = v1;
  v19 = v1[96];
  v18 = v1[87];
  v2 = v1[82];
  v17 = v1[74];
  v1[49] = v1;
  v1[66] = v19;
  v16 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v18(v2, v16, v17);
  swift_endAccess();
  MEMORY[0x277D82BE0](v19);
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  oslog = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  v22 = swift_allocObject();
  *(v22 + 16) = 64;
  v23 = swift_allocObject();
  *(v23 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
  *(v21 + 24) = v20;
  v24 = swift_allocObject();
  *(v24 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v24 + 24) = v21;
  _allocateUninitializedArray<A>(_:)();
  v25 = v3;

  *v25 = partial apply for closure #1 in OSLogArguments.append(_:);
  v25[1] = v22;

  v25[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v25[3] = v23;

  v25[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v25[5] = v24;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v27))
  {
    v4 = v15[97];
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v13 = createStorage<A>(capacity:type:)(1, v11, v11);
    v14 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v28 = buf;
    v29 = v13;
    v30 = v14;
    serialize(_:at:)(2, &v28);
    serialize(_:at:)(1, &v28);
    v31 = partial apply for closure #1 in OSLogArguments.append(_:);
    v32 = v22;
    closure #1 in osLogInternal(_:log:type:)(&v31, &v28, &v29, &v30);
    if (v4)
    {
    }

    v31 = partial apply for closure #1 in OSLogArguments.append(_:);
    v32 = v23;
    closure #1 in osLogInternal(_:log:type:)(&v31, &v28, &v29, &v30);
    v31 = partial apply for closure #1 in OSLogArguments.append(_:);
    v32 = v24;
    closure #1 in osLogInternal(_:log:type:)(&v31, &v28, &v29, &v30);
    _os_log_impl(&dword_269912000, oslog, v27, "Response from querying storage: %@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v13, 1, v11);
    destroyStorage<A>(_:count:)(v14, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v9 = v15[91];
  v7 = v15[82];
  v8 = v15[74];
  MEMORY[0x277D82BD8](oslog);
  v9(v7, v8);
  __swift_destroy_boxed_opaque_existential_1(v15 + 2);

  v10 = v15[96];

  v6 = *(v15[49] + 8);

  return v6(v10);
}

uint64_t GetHealthQuantityIntentHandler.handle(intent:)()
{
  v98 = v0;
  v1 = *(v0 + 536);
  *(v0 + 392) = v0;
  v87 = [v1 quantityIdentifier];
  if (v87)
  {
    v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v83 = v2;
    MEMORY[0x277D82BD8](v87);
    v84 = v82;
    v85 = v83;
  }

  else
  {
    v84 = 0;
    v85 = 0;
  }

  *(v86 + 688) = v85;
  *(v86 + 680) = v84;
  if (v85)
  {
    v3 = *(v86 + 544);
    *(v86 + 376) = v84;
    *(v86 + 384) = v85;
    v81 = (v3 + OBJC_IVAR____TtC19SiriWellnessIntents30GetHealthQuantityIntentHandler_storage);
    swift_beginAccess();
    outlined init with copy of QuantityPersisting?(v81, (v86 + 96));
    swift_endAccess();

    if (*(v86 + 120))
    {
      outlined init with take of QuantityPersisting((v86 + 96), (v86 + 56));
    }

    else
    {

      v77 = HealthKitFetcher.init(identifier:)(v84, v85);
      v78 = v4;
      v79 = v5;
      v80 = v6;
      if (v77)
      {
        *(v86 + 80) = &type metadata for HealthKitFetcher;
        *(v86 + 88) = &protocol witness table for HealthKitFetcher;
        v7 = swift_allocObject();
        *(v86 + 56) = v7;
        v7[2] = v77;
        v7[3] = v78;
        v7[4] = v79;
        v7[5] = v80;
      }

      else
      {
        *(v86 + 56) = 0;
        *(v86 + 64) = 0;
        *(v86 + 72) = 0;
        *(v86 + 80) = 0;
        *(v86 + 88) = 0;
      }

      if (*(v86 + 120))
      {
        outlined destroy of QuantityPersisting?((v86 + 96));
      }
    }

    if (*(v86 + 80))
    {
      v8 = *(v86 + 672);
      v68 = *(v86 + 592);
      v66 = *(v86 + 600);
      outlined init with take of QuantityPersisting((v86 + 56), (v86 + 16));
      v67 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      v9 = *(v66 + 16);
      *(v86 + 696) = v9;
      *(v86 + 704) = (v66 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v9(v8, v67, v68);
      swift_endAccess();

      v69 = swift_allocObject();
      *(v69 + 16) = v84;
      *(v69 + 24) = v85;
      oslog = Logger.logObject.getter();
      v76 = static os_log_type_t.debug.getter();
      v71 = swift_allocObject();
      *(v71 + 16) = 32;
      v72 = swift_allocObject();
      *(v72 + 16) = 8;
      v70 = swift_allocObject();
      *(v70 + 16) = partial apply for implicit closure #4 in LogQuantityIntentHandler.handle(intent:);
      *(v70 + 24) = v69;
      v73 = swift_allocObject();
      *(v73 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v73 + 24) = v70;
      *(v86 + 712) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      _allocateUninitializedArray<A>(_:)();
      v74 = v10;

      *v74 = partial apply for closure #1 in OSLogArguments.append(_:);
      v74[1] = v71;

      v74[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v74[3] = v72;

      v74[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v74[5] = v73;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(oslog, v76))
      {
        buf = static UnsafeMutablePointer.allocate(capacity:)();
        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v64 = createStorage<A>(capacity:type:)(0, v62, v62);
        v65 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v93 = buf;
        v94 = v64;
        v95 = v65;
        serialize(_:at:)(2, &v93);
        serialize(_:at:)(1, &v93);
        v96 = partial apply for closure #1 in OSLogArguments.append(_:);
        v97 = v71;
        closure #1 in osLogInternal(_:log:type:)(&v96, &v93, &v94, &v95);
        v96 = partial apply for closure #1 in OSLogArguments.append(_:);
        v97 = v72;
        closure #1 in osLogInternal(_:log:type:)(&v96, &v93, &v94, &v95);
        v96 = partial apply for closure #1 in OSLogArguments.append(_:);
        v97 = v73;
        closure #1 in osLogInternal(_:log:type:)(&v96, &v93, &v94, &v95);
        _os_log_impl(&dword_269912000, oslog, v76, "Checking authorization for %s...", buf, 0xCu);
        destroyStorage<A>(_:count:)(v64, 0, v62);
        destroyStorage<A>(_:count:)(v65, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      *(v86 + 720) = 0;
      v55 = *(v86 + 672);
      v56 = *(v86 + 592);
      v54 = *(v86 + 600);
      MEMORY[0x277D82BD8](oslog);
      v11 = *(v54 + 8);
      *(v86 + 728) = v11;
      *(v86 + 736) = (v54 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v11(v55, v56);
      v58 = *(v86 + 40);
      v59 = *(v86 + 48);
      __swift_project_boxed_opaque_existential_1((v86 + 16), v58);
      _allocateUninitializedArray<A>(_:)();
      v57 = v12;

      *v57 = v84;
      v57[1] = v85;
      _finalizeUninitializedArray<A>(_:)();
      v61 = v13;
      *(v86 + 744) = v13;
      v60 = (*(v59 + 8) + **(v59 + 8));
      v14 = swift_task_alloc();
      *(v86 + 752) = v14;
      *v14 = *(v86 + 392);
      v14[1] = GetHealthQuantityIntentHandler.handle(intent:);

      return v60(v61, v58, v59);
    }

    v16 = *(v86 + 640);
    v45 = *(v86 + 592);
    v43 = *(v86 + 600);
    outlined destroy of QuantityPersisting?((v86 + 56));
    v44 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v43 + 16))(v16, v44, v45);
    swift_endAccess();

    v46 = swift_allocObject();
    *(v46 + 16) = v84;
    *(v46 + 24) = v85;
    log = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    v48 = swift_allocObject();
    *(v48 + 16) = 32;
    v49 = swift_allocObject();
    *(v49 + 16) = 8;
    v47 = swift_allocObject();
    *(v47 + 16) = partial apply for implicit closure #4 in LogQuantityIntentHandler.handle(intent:);
    *(v47 + 24) = v46;
    v50 = swift_allocObject();
    *(v50 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v50 + 24) = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    _allocateUninitializedArray<A>(_:)();
    v51 = v17;

    *v51 = partial apply for closure #1 in OSLogArguments.append(_:);
    v51[1] = v48;

    v51[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v51[3] = v49;

    v51[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v51[5] = v50;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v53))
    {
      v40 = static UnsafeMutablePointer.allocate(capacity:)();
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v41 = createStorage<A>(capacity:type:)(0, v39, v39);
      v42 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v88 = v40;
      v89 = v41;
      v90 = v42;
      serialize(_:at:)(2, &v88);
      serialize(_:at:)(1, &v88);
      v91 = partial apply for closure #1 in OSLogArguments.append(_:);
      v92 = v48;
      closure #1 in osLogInternal(_:log:type:)(&v91, &v88, &v89, &v90);
      v91 = partial apply for closure #1 in OSLogArguments.append(_:);
      v92 = v49;
      closure #1 in osLogInternal(_:log:type:)(&v91, &v88, &v89, &v90);
      v91 = partial apply for closure #1 in OSLogArguments.append(_:);
      v92 = v50;
      closure #1 in osLogInternal(_:log:type:)(&v91, &v88, &v89, &v90);
      _os_log_impl(&dword_269912000, log, v53, "Could not correctly create storage wrapper because of incorrect HealthKit idnetifier: %s", v40, 0xCu);
      destroyStorage<A>(_:count:)(v41, 0, v39);
      destroyStorage<A>(_:count:)(v42, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v40, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v35 = *(v86 + 640);
    v36 = *(v86 + 592);
    v34 = *(v86 + 600);
    MEMORY[0x277D82BD8](log);
    (*(v34 + 8))(v35, v36);
    type metadata accessor for GetHealthQuantityIntentResponse();
    v37 = GetHealthQuantityIntentResponse.__allocating_init(code:userActivity:)(5, 0);

    v38 = v37;
  }

  else
  {
    v18 = *(v86 + 632);
    v30 = *(v86 + 592);
    v28 = *(v86 + 600);
    v29 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v28 + 16))(v18, v29, v30);
    swift_endAccess();
    v32 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v33 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v32, v31))
    {
      v24 = static UnsafeMutablePointer.allocate(capacity:)();
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v25 = createStorage<A>(capacity:type:)(0, v23, v23);
      v26 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v86 + 416) = v24;
      *(v86 + 424) = v25;
      *(v86 + 432) = v26;
      serialize(_:at:)(0, (v86 + 416));
      serialize(_:at:)(0, (v86 + 416));
      *(v86 + 440) = v33;
      v27 = swift_task_alloc();
      v27[2] = v86 + 416;
      v27[3] = v86 + 424;
      v27[4] = v86 + 432;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v32, v31, "Need to specify HealthKitQuantityIdentifier in your intent.", v24, 2u);
      destroyStorage<A>(_:count:)(v25, 0, v23);
      destroyStorage<A>(_:count:)(v26, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v24, MEMORY[0x277D84B78]);
    }

    v21 = *(v86 + 632);
    v22 = *(v86 + 592);
    v20 = *(v86 + 600);
    MEMORY[0x277D82BD8](v32);
    (*(v20 + 8))(v21, v22);
    type metadata accessor for GetHealthQuantityIntentResponse();
    v38 = GetHealthQuantityIntentResponse.__allocating_init(code:userActivity:)(5, 0);
  }

  v19 = *(*(v86 + 392) + 8);

  return v19(v38);
}

{
  v79 = v0;
  v1 = *(v0 + 784);
  *(v0 + 392) = v0;
  if (v1)
  {
    v57 = *(v68 + 696);
    v58 = *(v68 + 680);
    v2 = *(v68 + 664);
    v56 = *(v68 + 592);
    v59 = *(v68 + 688);
    v55 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v57(v2, v55, v56);
    swift_endAccess();

    v60 = swift_allocObject();
    *(v60 + 16) = v58;
    *(v60 + 24) = v59;
    oslog = Logger.logObject.getter();
    v67 = static os_log_type_t.debug.getter();
    v62 = swift_allocObject();
    *(v62 + 16) = 32;
    v63 = swift_allocObject();
    *(v63 + 16) = 8;
    v61 = swift_allocObject();
    *(v61 + 16) = partial apply for implicit closure #4 in LogQuantityIntentHandler.handle(intent:);
    *(v61 + 24) = v60;
    v64 = swift_allocObject();
    *(v64 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v64 + 24) = v61;
    _allocateUninitializedArray<A>(_:)();
    v65 = v3;

    *v65 = partial apply for closure #1 in OSLogArguments.append(_:);
    v65[1] = v62;

    v65[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v65[3] = v63;

    v65[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v65[5] = v64;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v67))
    {
      v4 = *(v68 + 720);
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v53 = createStorage<A>(capacity:type:)(0, v51, v51);
      v54 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v74 = buf;
      v75 = v53;
      v76 = v54;
      serialize(_:at:)(2, &v74);
      serialize(_:at:)(1, &v74);
      v77 = partial apply for closure #1 in OSLogArguments.append(_:);
      v78 = v62;
      closure #1 in osLogInternal(_:log:type:)(&v77, &v74, &v75, &v76);
      if (v4)
      {
      }

      v77 = partial apply for closure #1 in OSLogArguments.append(_:);
      v78 = v63;
      closure #1 in osLogInternal(_:log:type:)(&v77, &v74, &v75, &v76);
      v77 = partial apply for closure #1 in OSLogArguments.append(_:);
      v78 = v64;
      closure #1 in osLogInternal(_:log:type:)(&v77, &v74, &v75, &v76);
      _os_log_impl(&dword_269912000, oslog, v67, "Authorization check successful for %s!", buf, 0xCu);
      destroyStorage<A>(_:count:)(v53, 0, v51);
      destroyStorage<A>(_:count:)(v54, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v46 = *(v68 + 728);
    v44 = *(v68 + 664);
    v45 = *(v68 + 592);
    v49 = *(v68 + 536);
    MEMORY[0x277D82BD8](oslog);
    v46(v44, v45);
    v47 = *(v68 + 40);
    v48 = *(v68 + 48);
    __swift_project_boxed_opaque_existential_1((v68 + 16), v47);
    v50 = [v49 start];
    if (v50)
    {
      v43 = *(v68 + 584);
      v41 = *(v68 + 568);
      v42 = *(v68 + 552);
      v40 = *(v68 + 560);
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
      (*(v40 + 32))(v43, v41, v42);
      (*(v40 + 56))(v43, 0, 1, v42);
      MEMORY[0x277D82BD8](v50);
    }

    else
    {
      (*(*(v68 + 560) + 56))(*(v68 + 584), 1, 1, *(v68 + 552));
    }

    v39 = [*(v68 + 536) end];
    if (v39)
    {
      v38 = *(v68 + 576);
      v36 = *(v68 + 568);
      v37 = *(v68 + 552);
      v35 = *(v68 + 560);
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
      (*(v35 + 32))(v38, v36, v37);
      (*(v35 + 56))(v38, 0, 1, v37);
      MEMORY[0x277D82BD8](v39);
    }

    else
    {
      (*(*(v68 + 560) + 56))(*(v68 + 576), 1, 1, *(v68 + 552));
    }

    v34 = (*(v48 + 16) + **(v48 + 16));
    v6 = swift_task_alloc();
    *(v68 + 760) = v6;
    *v6 = *(v68 + 392);
    v6[1] = GetHealthQuantityIntentHandler.handle(intent:);
    v7 = *(v68 + 584);
    v8 = *(v68 + 576);

    return v34(v7, v8, v47, v48);
  }

  else
  {
    v23 = *(v68 + 696);
    v24 = *(v68 + 680);
    v9 = *(v68 + 648);
    v22 = *(v68 + 592);
    v25 = *(v68 + 688);
    v21 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v23(v9, v21, v22);
    swift_endAccess();

    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    *(v26 + 24) = v25;
    log = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    v28 = swift_allocObject();
    *(v28 + 16) = 32;
    v29 = swift_allocObject();
    *(v29 + 16) = 8;
    v27 = swift_allocObject();
    *(v27 + 16) = partial apply for implicit closure #4 in LogQuantityIntentHandler.handle(intent:);
    *(v27 + 24) = v26;
    v30 = swift_allocObject();
    *(v30 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v30 + 24) = v27;
    _allocateUninitializedArray<A>(_:)();
    v31 = v10;

    *v31 = partial apply for closure #1 in OSLogArguments.append(_:);
    v31[1] = v28;

    v31[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v31[3] = v29;

    v31[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v31[5] = v30;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v33))
    {
      v11 = *(v68 + 720);
      v18 = static UnsafeMutablePointer.allocate(capacity:)();
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v19 = createStorage<A>(capacity:type:)(0, v17, v17);
      v20 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v69 = v18;
      v70 = v19;
      v71 = v20;
      serialize(_:at:)(2, &v69);
      serialize(_:at:)(1, &v69);
      v72 = partial apply for closure #1 in OSLogArguments.append(_:);
      v73 = v28;
      closure #1 in osLogInternal(_:log:type:)(&v72, &v69, &v70, &v71);
      if (v11)
      {
      }

      v72 = partial apply for closure #1 in OSLogArguments.append(_:);
      v73 = v29;
      closure #1 in osLogInternal(_:log:type:)(&v72, &v69, &v70, &v71);
      v72 = partial apply for closure #1 in OSLogArguments.append(_:);
      v73 = v30;
      closure #1 in osLogInternal(_:log:type:)(&v72, &v69, &v70, &v71);
      _os_log_impl(&dword_269912000, log, v33, "Not authorized to read: %s", v18, 0xCu);
      destroyStorage<A>(_:count:)(v19, 0, v17);
      destroyStorage<A>(_:count:)(v20, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v18, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v15 = *(v68 + 728);
    v13 = *(v68 + 648);
    v14 = *(v68 + 592);
    MEMORY[0x277D82BD8](log);
    v15(v13, v14);
    type metadata accessor for GetHealthQuantityIntentResponse();
    v16 = GetHealthQuantityIntentResponse.__allocating_init(code:userActivity:)(101, 0);
    __swift_destroy_boxed_opaque_existential_1((v68 + 16));

    v12 = *(*(v68 + 392) + 8);

    return v12(v16);
  }
}

{
  v85 = v0;
  v74 = v0[97];
  v73 = v0[73];
  v1 = v0[72];
  v0[49] = v0;
  outlined destroy of Date?(v1);
  outlined destroy of Date?(v73);
  v2 = v74;
  v0[56] = v74;
  v3 = v74;
  v0[57] = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for related decl 'e' for HKErrorCode(0);
  if (swift_dynamicCast())
  {
    v70 = *(v72 + 464);
  }

  else
  {
    v70 = 0;
  }

  if (v70)
  {
    *(v72 + 472) = v70;
    *(v72 + 480) = v70;
    lazy protocol witness table accessor for type related decl 'e' for HKErrorCode and conformance related decl 'e' for HKErrorCode();
    _BridgedStoredNSError.code.getter();
    if (*(v72 + 488) == 6)
    {
      v66 = *(v72 + 696);
      v6 = *(v72 + 624);
      v65 = *(v72 + 592);
      v64 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      v66(v6, v64, v65);
      swift_endAccess();
      oslog = Logger.logObject.getter();
      v67 = static os_log_type_t.error.getter();
      v69 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(oslog, v67))
      {
        buf = static UnsafeMutablePointer.allocate(capacity:)();
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v61 = createStorage<A>(capacity:type:)(0, v59, v59);
        v62 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v72 + 496) = buf;
        *(v72 + 504) = v61;
        *(v72 + 512) = v62;
        serialize(_:at:)(0, (v72 + 496));
        serialize(_:at:)(0, (v72 + 496));
        *(v72 + 520) = v69;
        v63 = swift_task_alloc();
        v63[2] = v72 + 496;
        v63[3] = v72 + 504;
        v63[4] = v72 + 512;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_269912000, oslog, v67, "HealthKit database was inaccessible", buf, 2u);
        destroyStorage<A>(_:count:)(v61, 0, v59);
        destroyStorage<A>(_:count:)(v62, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
      }

      v57 = *(v72 + 776);
      v56 = *(v72 + 728);
      v54 = *(v72 + 624);
      v55 = *(v72 + 592);
      MEMORY[0x277D82BD8](oslog);
      v56(v54, v55);
      type metadata accessor for GetHealthQuantityIntentResponse();
      v58 = GetHealthQuantityIntentResponse.__allocating_init(code:userActivity:)(103, 0);
      MEMORY[0x277D82BD8](v70);

      __swift_destroy_boxed_opaque_existential_1((v72 + 16));

      v71 = v58;
    }

    else
    {
      v44 = *(v72 + 696);
      v7 = *(v72 + 616);
      v43 = *(v72 + 592);
      v42 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      v44(v7, v42, v43);
      swift_endAccess();
      MEMORY[0x277D82BE0](v70);
      v45 = swift_allocObject();
      *(v45 + 16) = v70;
      default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

      log = Logger.logObject.getter();
      v53 = static os_log_type_t.error.getter();
      v48 = swift_allocObject();
      *(v48 + 16) = 64;
      v49 = swift_allocObject();
      *(v49 + 16) = 8;
      v46 = swift_allocObject();
      *(v46 + 16) = partial apply for implicit closure #7 in GetHealthQuantityIntentHandler.handle(intent:);
      *(v46 + 24) = v45;
      v47 = swift_allocObject();
      *(v47 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
      *(v47 + 24) = v46;
      v50 = swift_allocObject();
      *(v50 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
      *(v50 + 24) = v47;
      _allocateUninitializedArray<A>(_:)();
      v51 = v8;

      *v51 = partial apply for closure #1 in OSLogArguments.append(_:);
      v51[1] = v48;

      v51[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v51[3] = v49;

      v51[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v51[5] = v50;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(log, v53))
      {
        v39 = static UnsafeMutablePointer.allocate(capacity:)();
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v40 = createStorage<A>(capacity:type:)(1, v38, v38);
        v41 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v80 = v39;
        v81 = v40;
        v82 = v41;
        serialize(_:at:)(2, &v80);
        serialize(_:at:)(1, &v80);
        v83 = partial apply for closure #1 in OSLogArguments.append(_:);
        v84 = v48;
        closure #1 in osLogInternal(_:log:type:)(&v83, &v80, &v81, &v82);
        v83 = partial apply for closure #1 in OSLogArguments.append(_:);
        v84 = v49;
        closure #1 in osLogInternal(_:log:type:)(&v83, &v80, &v81, &v82);
        v83 = partial apply for closure #1 in OSLogArguments.append(_:);
        v84 = v50;
        closure #1 in osLogInternal(_:log:type:)(&v83, &v80, &v81, &v82);
        _os_log_impl(&dword_269912000, log, v53, "HealthKit threw an error: %@", v39, 0xCu);
        destroyStorage<A>(_:count:)(v40, 1, v38);
        destroyStorage<A>(_:count:)(v41, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v39, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v36 = *(v72 + 776);
      v35 = *(v72 + 728);
      v33 = *(v72 + 616);
      v34 = *(v72 + 592);
      MEMORY[0x277D82BD8](log);
      v35(v33, v34);
      type metadata accessor for GetHealthQuantityIntentResponse();
      v37 = GetHealthQuantityIntentResponse.__allocating_init(code:userActivity:)(5, 0);
      MEMORY[0x277D82BD8](v70);

      __swift_destroy_boxed_opaque_existential_1((v72 + 16));

      v71 = v37;
    }
  }

  else
  {
    v24 = *(v72 + 776);
    v23 = *(v72 + 696);
    v9 = *(v72 + 608);
    v22 = *(v72 + 592);
    v21 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v23(v9, v21, v22);
    swift_endAccess();
    v10 = v24;
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    v27 = swift_allocObject();
    *(v27 + 16) = 32;
    v28 = swift_allocObject();
    *(v28 + 16) = 8;
    v26 = swift_allocObject();
    *(v26 + 16) = partial apply for implicit closure #5 in HealthKitPersistor.save(quantityIdentifier:value:units:);
    *(v26 + 24) = v25;
    v29 = swift_allocObject();
    *(v29 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v29 + 24) = v26;
    _allocateUninitializedArray<A>(_:)();
    v30 = v11;

    *v30 = partial apply for closure #1 in OSLogArguments.append(_:);
    v30[1] = v27;

    v30[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v30[3] = v28;

    v30[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v30[5] = v29;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v31, v32))
    {
      v18 = static UnsafeMutablePointer.allocate(capacity:)();
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v19 = createStorage<A>(capacity:type:)(0, v17, v17);
      v20 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v75 = v18;
      v76 = v19;
      v77 = v20;
      serialize(_:at:)(2, &v75);
      serialize(_:at:)(1, &v75);
      v78 = partial apply for closure #1 in OSLogArguments.append(_:);
      v79 = v27;
      closure #1 in osLogInternal(_:log:type:)(&v78, &v75, &v76, &v77);
      v78 = partial apply for closure #1 in OSLogArguments.append(_:);
      v79 = v28;
      closure #1 in osLogInternal(_:log:type:)(&v78, &v75, &v76, &v77);
      v78 = partial apply for closure #1 in OSLogArguments.append(_:);
      v79 = v29;
      closure #1 in osLogInternal(_:log:type:)(&v78, &v75, &v76, &v77);
      _os_log_impl(&dword_269912000, v31, v32, "Something went wrong while fetching data: %s", v18, 0xCu);
      destroyStorage<A>(_:count:)(v19, 0, v17);
      destroyStorage<A>(_:count:)(v20, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v18, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v15 = *(v72 + 776);
    v14 = *(v72 + 728);
    v12 = *(v72 + 608);
    v13 = *(v72 + 592);
    MEMORY[0x277D82BD8](v31);
    v14(v12, v13);
    type metadata accessor for GetHealthQuantityIntentResponse();
    v16 = GetHealthQuantityIntentResponse.__allocating_init(code:userActivity:)(5, 0);

    __swift_destroy_boxed_opaque_existential_1((v72 + 16));

    v71 = v16;
  }

  v4 = *(*(v72 + 392) + 8);

  return v4(v71);
}

uint64_t GetHealthQuantityIntentHandler.handle(intent:)(char a1)
{
  v3 = *v1;
  *(v3 + 392) = *v1;
  *(v3 + 784) = a1;

  return MEMORY[0x2822009F8](GetHealthQuantityIntentHandler.handle(intent:), 0);
}

uint64_t HealthKitFetcher.init(identifier:)(uint64_t a1, uint64_t a2)
{
  v73 = 0u;
  v74 = 0u;
  type metadata accessor for HKHealthStore();
  *&v73 = NSDateFormatter.__allocating_init()();
  type metadata accessor for HKQuantityType();
  _allocateUninitializedArray<A>(_:)();
  v69 = v2;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v71 = *MEMORY[0x277CCCC70];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCCC70]);
  v72 = [ObjCClassFromMetadata quantityTypeForIdentifier_];
  MEMORY[0x277D82BD8](v71);
  if (!v72)
  {
    goto LABEL_22;
  }

  *v69 = v72;
  v64 = swift_getObjCClassFromMetadata();
  v65 = *MEMORY[0x277CCC918];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCC918]);
  v66 = [v64 quantityTypeForIdentifier_];
  MEMORY[0x277D82BD8](v65);
  if (!v66)
  {
LABEL_21:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_22:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_23;
  }

  v69[1] = v66;
  v61 = swift_getObjCClassFromMetadata();
  v62 = *MEMORY[0x277CCCB70];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCCB70]);
  v63 = [v61 quantityTypeForIdentifier_];
  MEMORY[0x277D82BD8](v62);
  if (!v63)
  {
LABEL_20:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_21;
  }

  v69[2] = v63;
  v58 = swift_getObjCClassFromMetadata();
  v59 = *MEMORY[0x277CCCC10];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCCC10]);
  v60 = [v58 quantityTypeForIdentifier_];
  MEMORY[0x277D82BD8](v59);
  if (!v60)
  {
LABEL_19:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_20;
  }

  v69[3] = v60;
  v55 = swift_getObjCClassFromMetadata();
  v56 = *MEMORY[0x277CCC960];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCC960]);
  v57 = [v55 quantityTypeForIdentifier_];
  MEMORY[0x277D82BD8](v56);
  if (!v57)
  {
LABEL_18:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_19;
  }

  v69[4] = v57;
  v52 = swift_getObjCClassFromMetadata();
  v53 = *MEMORY[0x277CCCB40];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCCB40]);
  v54 = [v52 quantityTypeForIdentifier_];
  MEMORY[0x277D82BD8](v53);
  if (!v54)
  {
LABEL_17:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_18;
  }

  v69[5] = v54;
  v49 = swift_getObjCClassFromMetadata();
  v50 = *MEMORY[0x277CCC940];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCC940]);
  v51 = [v49 quantityTypeForIdentifier_];
  MEMORY[0x277D82BD8](v50);
  if (!v51)
  {
LABEL_16:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_17;
  }

  v69[6] = v51;
  v46 = swift_getObjCClassFromMetadata();
  v47 = *MEMORY[0x277CCCB48];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCCB48]);
  v48 = [v46 quantityTypeForIdentifier_];
  MEMORY[0x277D82BD8](v47);
  if (!v48)
  {
LABEL_15:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_16;
  }

  v69[7] = v48;
  v43 = swift_getObjCClassFromMetadata();
  v44 = *MEMORY[0x277CCC920];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCC920]);
  v45 = [v43 quantityTypeForIdentifier_];
  MEMORY[0x277D82BD8](v44);
  if (!v45)
  {
LABEL_14:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_15;
  }

  v69[8] = v45;
  v40 = swift_getObjCClassFromMetadata();
  v41 = *MEMORY[0x277CCCB10];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCCB10]);
  v42 = [v40 quantityTypeForIdentifier_];
  MEMORY[0x277D82BD8](v41);
  if (!v42)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_14;
  }

  v69[9] = v42;
  _finalizeUninitializedArray<A>(_:)();
  *&v74 = v3;
  _allocateUninitializedArray<A>(_:)();
  v36 = v4;
  v37 = swift_getObjCClassFromMetadata();
  v38 = *MEMORY[0x277CCC958];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCC958]);
  v39 = [v37 quantityTypeForIdentifier_];
  MEMORY[0x277D82BD8](v38);
  if (!v39)
  {
LABEL_41:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_42;
  }

  v35 = v39;
LABEL_23:
  *v36 = v35;
  v32 = swift_getObjCClassFromMetadata();
  v33 = *MEMORY[0x277CCC970];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCC970]);
  v34 = [v32 quantityTypeForIdentifier_];
  MEMORY[0x277D82BD8](v33);
  if (!v34)
  {
LABEL_40:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_41;
  }

  v36[1] = v34;
  v29 = swift_getObjCClassFromMetadata();
  v30 = *MEMORY[0x277CCC990];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCC990]);
  v31 = [v29 quantityTypeForIdentifier_];
  MEMORY[0x277D82BD8](v30);
  if (!v31)
  {
LABEL_39:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_40;
  }

  v36[2] = v31;
  v26 = swift_getObjCClassFromMetadata();
  v27 = *MEMORY[0x277CCC9A0];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCC9A0]);
  v28 = [v26 quantityTypeForIdentifier_];
  MEMORY[0x277D82BD8](v27);
  if (!v28)
  {
LABEL_38:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_39;
  }

  v36[3] = v28;
  v23 = swift_getObjCClassFromMetadata();
  v24 = *MEMORY[0x277CCCB90];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCCB90]);
  v25 = [v23 quantityTypeForIdentifier_];
  MEMORY[0x277D82BD8](v24);
  if (!v25)
  {
LABEL_37:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_38;
  }

  v36[4] = v25;
  v20 = swift_getObjCClassFromMetadata();
  v21 = *MEMORY[0x277CCCBA8];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCCBA8]);
  v22 = [v20 quantityTypeForIdentifier_];
  MEMORY[0x277D82BD8](v21);
  if (!v22)
  {
LABEL_36:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_37;
  }

  v36[5] = v22;
  v17 = swift_getObjCClassFromMetadata();
  v18 = *MEMORY[0x277CCCBE8];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCCBE8]);
  v19 = [v17 quantityTypeForIdentifier_];
  MEMORY[0x277D82BD8](v18);
  if (!v19)
  {
LABEL_35:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_36;
  }

  v36[6] = v19;
  v14 = swift_getObjCClassFromMetadata();
  v15 = *MEMORY[0x277CCCC18];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCCC18]);
  v16 = [v14 quantityTypeForIdentifier_];
  MEMORY[0x277D82BD8](v15);
  if (!v16)
  {
LABEL_34:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_35;
  }

  v36[7] = v16;
  v11 = swift_getObjCClassFromMetadata();
  v12 = *MEMORY[0x277CCCCB8];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCCCB8]);
  v13 = [v11 quantityTypeForIdentifier_];
  MEMORY[0x277D82BD8](v12);
  if (!v13)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_34;
  }

  v36[8] = v13;
  _finalizeUninitializedArray<A>(_:)();
  *(&v74 + 1) = v5;

  v9 = MEMORY[0x26D6492A0](a1, a2);
  MEMORY[0x277D82BE0](v9);

  MEMORY[0x277D82BD8](v9);
  v10 = [swift_getObjCClassFromMetadata() quantityTypeForIdentifier_];
  if (!v10)
  {
LABEL_42:
    MEMORY[0x277D82BD8](v9);

    MEMORY[0x277D82BD8](v73);
    outlined destroy of [HKQuantityType](&v74);
    outlined destroy of [HKQuantityType](&v74 + 1);
    return 0;
  }

  MEMORY[0x277D82BE0](v10);
  MEMORY[0x277D82BE0](v10);
  *(&v73 + 1) = v10;
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v9);
  v7 = v73;
  MEMORY[0x277D82BE0](v73);

  outlined destroy of HealthKitFetcher(&v73);
  return v7;
}

uint64_t implicit closure #7 in GetHealthQuantityIntentHandler.handle(intent:)(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  MEMORY[0x277D82BE0](a1);
  MEMORY[0x277D82BD8](a1);
  return a1;
}

uint64_t @objc closure #1 in GetHealthQuantityIntentHandler.handle(intent:)(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a1;
  v3[2] = v3;
  MEMORY[0x277D82BE0](a1);
  v3[5] = _Block_copy(a2);
  MEMORY[0x277D82BE0](a3);
  v5 = swift_task_alloc();
  *(v8 + 48) = v5;
  *v5 = *(v8 + 16);
  v5[1] = @objc closure #1 in LogQuantityIntentHandler.handle(intent:);

  return GetHealthQuantityIntentHandler.handle(intent:)(a1);
}

id GetHealthQuantityIntentHandler.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t HealthKitFetcher.predicate(start:end:)@<X0>(const void *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v26 = a7;
  v35 = a1;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v47 = 0;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  v43 = 0;
  v32 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v35, v27);
  v33 = &v18 - v32;
  v34 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8, v9);
  v37 = &v18 - v34;
  v47 = v10;
  v46 = v11;
  *&v44 = v12;
  *(&v44 + 1) = v13;
  *&v45 = v14;
  *(&v45 + 1) = v15;
  v36 = objc_opt_self();
  outlined init with copy of Date?(v35, v37);
  v38 = type metadata accessor for Date();
  v39 = *(v38 - 8);
  v40 = v38 - 8;
  v41 = *(v39 + 48);
  v42 = v39 + 48;
  if (v41(v37, 1) == 1)
  {
    v25 = 0;
  }

  else
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v39 + 8))(v37, v38);
    v25 = isa;
  }

  v23 = v25;
  outlined init with copy of Date?(v27, v33);
  if ((v41)(v33, 1, v38) == 1)
  {
    v22 = 0;
  }

  else
  {
    v21 = Date._bridgeToObjectiveC()().super.isa;
    (*(v39 + 8))(v33, v38);
    v22 = v21;
  }

  v19 = v22;
  v20 = [v36 predicateForSamplesWithStartDate:v23 endDate:? options:?];
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v23);
  v43 = v20;
  MEMORY[0x277D82BE0](v29);
  MEMORY[0x277D82BE0](v20);
  v16 = type metadata accessor for HKSample();
  MEMORY[0x26D649150](v29, v20, v16);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v29);
  return MEMORY[0x277D82BD8](v20);
}

uint64_t HealthKitFetcher.isReadingAuthorized(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a2;
  *(v5 + 48) = v5;
  *(v5 + 56) = 0;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 56) = a1;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  MEMORY[0x277D82BE0](a2);
  v6 = swift_task_alloc();
  *(v8 + 72) = v6;
  *v6 = *(v8 + 48);
  v6[1] = HealthKitFetcher.isReadingAuthorized(for:);

  return isSiriAuthorizedToAccessHealthData(store:)(a2);
}

uint64_t HealthKitFetcher.isReadingAuthorized(for:)(unsigned int a1)
{
  v5 = *v1;
  v4 = *(*v1 + 64);
  *(v5 + 48) = *v1;

  v2 = *(*(v5 + 48) + 8);

  return v2(a1);
}

uint64_t HealthKitFetcher.query(start:end:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 1056) = a6;
  *(v6 + 1048) = a5;
  *(v6 + 1040) = a4;
  *(v6 + 1032) = a3;
  *(v6 + 1024) = a2;
  *(v6 + 1016) = a1;
  *(v6 + 672) = v6;
  *(v6 + 680) = 0;
  *(v6 + 688) = 0;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 696) = 0;
  *(v6 + 704) = 0;
  *(v6 + 712) = 0;
  *(v6 + 816) = 0;
  *(v6 + 824) = 0;
  *(v6 + 832) = 0;
  *(v6 + 872) = 0;
  *(v6 + 880) = 0;
  *(v6 + 888) = 0;
  *(v6 + 896) = 0;
  *(v6 + 968) = 0;
  *(v6 + 976) = 0;
  v7 = type metadata accessor for Calendar();
  *(v6 + 1064) = v7;
  *(v6 + 1072) = *(v7 - 8);
  *(v6 + 1080) = swift_task_alloc();
  v8 = type metadata accessor for Date();
  *(v6 + 1088) = v8;
  v11 = *(v8 - 8);
  *(v6 + 1096) = v11;
  *(v6 + 1104) = *(v11 + 64);
  *(v6 + 1112) = swift_task_alloc();
  *(v6 + 1120) = swift_task_alloc();
  *(v6 + 1128) = swift_task_alloc();
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8);
  *(v6 + 1136) = v12;
  *(v6 + 1144) = *(v12 + 64);
  *(v6 + 1152) = swift_task_alloc();
  *(v6 + 1160) = swift_task_alloc();
  *(v6 + 1168) = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  *(v6 + 1176) = v9;
  *(v6 + 1184) = *(v9 - 8);
  *(v6 + 1192) = swift_task_alloc();
  *(v6 + 1200) = swift_task_alloc();
  *(v6 + 1208) = swift_task_alloc();
  *(v6 + 1216) = swift_task_alloc();
  *(v6 + 1224) = swift_task_alloc();
  *(v6 + 1232) = swift_task_alloc();
  *(v6 + 1240) = swift_task_alloc();
  *(v6 + 1248) = swift_task_alloc();
  *(v6 + 1256) = swift_task_alloc();
  *(v6 + 1264) = swift_task_alloc();
  *(v6 + 1272) = swift_task_alloc();
  *(v6 + 1280) = swift_task_alloc();
  *(v6 + 680) = a1;
  *(v6 + 688) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;

  return MEMORY[0x2822009F8](HealthKitFetcher.query(start:end:), 0);
}

uint64_t HealthKitFetcher.query(start:end:)(uint64_t a1)
{
  v54 = v1;
  v2 = v1[160];
  v19 = v1[148];
  v21 = v1[147];
  v30 = v1[146];
  v27 = v1[142];
  v25 = v1[132];
  v24 = v1[131];
  v23 = v1[130];
  v22 = v1[129];
  v28 = v1[128];
  v26 = v1[127];
  v1[84] = v1;
  v20 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = *(v19 + 16);
  v1[161] = v3;
  v1[162] = (v19 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v2, v20, v21);
  swift_endAccess();
  MEMORY[0x277D82BE0](v22);
  MEMORY[0x277D82BE0](v23);

  v31 = swift_allocObject();
  v31[2] = v22;
  v31[3] = v23;
  v31[4] = v24;
  v31[5] = v25;
  outlined init with copy of Date?(v26, v30);
  v29 = *(v27 + 80);
  v33 = swift_allocObject();
  outlined init with take of Date?(v30, (v33 + ((v29 + 16) & ~v29)));
  outlined init with copy of Date?(v28, v30);
  v35 = swift_allocObject();
  outlined init with take of Date?(v30, (v35 + ((v29 + 16) & ~v29)));
  oslog = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();
  v37 = swift_allocObject();
  *(v37 + 16) = 64;
  v38 = swift_allocObject();
  *(v38 + 16) = 8;
  v32 = swift_allocObject();
  *(v32 + 16) = partial apply for implicit closure #1 in HealthKitFetcher.query(start:end:);
  *(v32 + 24) = v31;
  v39 = swift_allocObject();
  *(v39 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v39 + 24) = v32;
  v40 = swift_allocObject();
  *(v40 + 16) = 32;
  v41 = swift_allocObject();
  *(v41 + 16) = 8;
  v34 = swift_allocObject();
  *(v34 + 16) = partial apply for implicit closure #2 in HealthKitFetcher.query(start:end:);
  *(v34 + 24) = v33;
  v42 = swift_allocObject();
  *(v42 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v42 + 24) = v34;
  v43 = swift_allocObject();
  *(v43 + 16) = 32;
  v44 = swift_allocObject();
  *(v44 + 16) = 8;
  v36 = swift_allocObject();
  *(v36 + 16) = partial apply for implicit closure #2 in HealthKitFetcher.query(start:end:);
  *(v36 + 24) = v35;
  v45 = swift_allocObject();
  *(v45 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v45 + 24) = v36;
  v1[163] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v46 = v4;

  *v46 = partial apply for closure #1 in OSLogArguments.append(_:);
  v46[1] = v37;

  v46[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v46[3] = v38;

  v46[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v46[5] = v39;

  v46[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v46[7] = v40;

  v46[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v46[9] = v41;

  v46[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v46[11] = v42;

  v46[12] = partial apply for closure #1 in OSLogArguments.append(_:);
  v46[13] = v43;

  v46[14] = partial apply for closure #1 in OSLogArguments.append(_:);
  v46[15] = v44;

  v46[16] = partial apply for closure #1 in OSLogArguments.append(_:);
  v46[17] = v45;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v48))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v16 = createStorage<A>(capacity:type:)(1, v14, v14);
    v17 = createStorage<A>(capacity:type:)(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v49 = buf;
    v50 = v16;
    v51 = v17;
    serialize(_:at:)(2, &v49);
    serialize(_:at:)(3, &v49);
    v52 = partial apply for closure #1 in OSLogArguments.append(_:);
    v53 = v37;
    closure #1 in osLogInternal(_:log:type:)(&v52, &v49, &v50, &v51);
    v52 = partial apply for closure #1 in OSLogArguments.append(_:);
    v53 = v38;
    closure #1 in osLogInternal(_:log:type:)(&v52, &v49, &v50, &v51);
    v52 = partial apply for closure #1 in OSLogArguments.append(_:);
    v53 = v39;
    closure #1 in osLogInternal(_:log:type:)(&v52, &v49, &v50, &v51);
    v52 = partial apply for closure #1 in OSLogArguments.append(_:);
    v53 = v40;
    closure #1 in osLogInternal(_:log:type:)(&v52, &v49, &v50, &v51);
    v52 = partial apply for closure #1 in OSLogArguments.append(_:);
    v53 = v41;
    closure #1 in osLogInternal(_:log:type:)(&v52, &v49, &v50, &v51);
    v52 = partial apply for closure #1 in OSLogArguments.append(_:);
    v53 = v42;
    closure #1 in osLogInternal(_:log:type:)(&v52, &v49, &v50, &v51);
    v52 = partial apply for closure #1 in OSLogArguments.append(_:);
    v53 = v43;
    closure #1 in osLogInternal(_:log:type:)(&v52, &v49, &v50, &v51);
    v52 = partial apply for closure #1 in OSLogArguments.append(_:);
    v53 = v44;
    closure #1 in osLogInternal(_:log:type:)(&v52, &v49, &v50, &v51);
    v52 = partial apply for closure #1 in OSLogArguments.append(_:);
    v53 = v45;
    closure #1 in osLogInternal(_:log:type:)(&v52, &v49, &v50, &v51);
    _os_log_impl(&dword_269912000, oslog, v48, "Executing HealthKit queries for %@ between dates %s - %s", buf, 0x20u);
    destroyStorage<A>(_:count:)(v16, 1, v14);
    destroyStorage<A>(_:count:)(v17, 2, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v10 = v18[160];
  v11 = v18[147];
  v13 = v18[130];
  v9 = v18[148];
  MEMORY[0x277D82BD8](oslog);
  v5 = *(v9 + 8);
  v18[164] = v5;
  v18[165] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v10, v11);
  v18[166] = type metadata accessor for GetHealthQuantityIntentResponse();
  v12 = GetHealthQuantityIntentResponse.__allocating_init(code:userActivity:)(4, 0);
  v18[167] = v12;
  MEMORY[0x277D82BE0](v12);
  v18[87] = v12;
  MEMORY[0x277D82BE0](v13);
  v6 = swift_task_alloc();
  v18[168] = v6;
  *v6 = v18[84];
  v6[1] = HealthKitFetcher.query(start:end:);
  v7 = v18[130];

  return localizedPreferredUnitName(for:value:store:)(v7, 0, 1, 0);
}

{
  v7 = *v2;
  v6 = *v2 + 16;
  v7[84] = *v2;
  v7[173] = a1;
  v7[174] = v1;

  if (v1)
  {
    v3 = HealthKitFetcher.query(start:end:);
  }

  else
  {
    v5 = *(v6 + 1024);

    v3 = HealthKitFetcher.query(start:end:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

{
  v5 = *v2;
  v5[84] = *v2;
  v5[180] = a1;
  v5[181] = v1;

  if (v1)
  {
    v3 = HealthKitFetcher.query(start:end:);
  }

  else
  {
    v3 = HealthKitFetcher.query(start:end:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

{
  v144 = v1;
  v2 = *(v1 + 1440);
  *(v1 + 672) = v1;
  if (!v2)
  {
LABEL_10:
    v115 = *(v138 + 1288);
    v5 = *(v138 + 1256);
    v114 = *(v138 + 1176);
    v113 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v115(v5, v113, v114);
    swift_endAccess();
    oslog = Logger.logObject.getter();
    v116 = static os_log_type_t.error.getter();
    v118 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v116))
    {
      v6 = *(v138 + 1448);
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v110 = createStorage<A>(capacity:type:)(0, v108, v108);
      v111 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v138 + 936) = buf;
      *(v138 + 944) = v110;
      *(v138 + 952) = v111;
      serialize(_:at:)(0, (v138 + 936));
      serialize(_:at:)(0, (v138 + 936));
      *(v138 + 960) = v118;
      v112 = swift_task_alloc();
      v112[2] = v138 + 936;
      v112[3] = v138 + 944;
      v112[4] = v138 + 952;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v6)
      {
      }

      _os_log_impl(&dword_269912000, oslog, v116, "Couldn't find the recent sample statistics returning .dataUnavailable", buf, 2u);
      destroyStorage<A>(_:count:)(v110, 0, v108);
      destroyStorage<A>(_:count:)(v111, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v105 = *(v138 + 1400);
    v104 = *(v138 + 1312);
    v102 = *(v138 + 1256);
    v103 = *(v138 + 1176);
    MEMORY[0x277D82BD8](oslog);
    v104(v102, v103);
    v106 = GetHealthQuantityIntentResponse.__allocating_init(code:userActivity:)(102, 0);
    MEMORY[0x277D82BD8](v105);
    MEMORY[0x277D82BD8](v105);
    MEMORY[0x277D82BD8](*(v138 + 696));
    v107 = v106;
LABEL_41:

    v29 = *(*(v138 + 672) + 8);

    return v29(v107);
  }

  v136 = *(v138 + 1440);
  *(v138 + 968) = v136;
  v3 = [v136 mostRecentQuantity];
  v137 = v3;
  if (v3)
  {
    [v3 doubleValueForUnit_];
    v133 = v4;
    MEMORY[0x277D82BD8](v137);
    v134 = v133;
    v135 = 0;
  }

  else
  {
    v134 = 0.0;
    v135 = 1;
  }

  if (v135)
  {
    MEMORY[0x277D82BD8](v136);
    goto LABEL_10;
  }

  v124 = *(v138 + 1128);
  v122 = *(v138 + 1088);
  v119 = *(v138 + 1096);
  *(v138 + 976) = v134;
  swift_beginAccess();
  v127 = *(v138 + 696);
  MEMORY[0x277D82BE0](v127);
  swift_endAccess();
  [v127 setMostRecent_];
  swift_beginAccess();
  swift_endAccess();
  v120 = [v136 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v123 = *(v119 + 8);
  v123(v124, v122);
  MEMORY[0x277D82BD8](v120);
  [v127 setSampleStartDate_];
  MEMORY[0x277D82BD8](isa);
  swift_beginAccess();
  swift_endAccess();
  v125 = [v136 endDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v126 = Date._bridgeToObjectiveC()().super.isa;
  v123(v124, v122);
  MEMORY[0x277D82BD8](v125);
  [v127 setSampleEndDate_];
  MEMORY[0x277D82BD8](v126);
  MEMORY[0x277D82BD8](v127);
  MEMORY[0x277D82BD8](v136);
  v128 = *(v138 + 1448);
  v131 = *(v138 + 1160);
  v130 = *(v138 + 1088);
  v129 = *(v138 + 1096);
  outlined init with copy of Date?(*(v138 + 1016), v131);
  v132 = *(v129 + 48);
  if (v132(v131, 1, v130) == 1)
  {
    outlined destroy of Date?(*(v138 + 1160));
LABEL_35:
    v42 = *(v138 + 1288);
    v28 = *(v138 + 1200);
    v41 = *(v138 + 1176);
    v40 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v42(v28, v40, v41);
    swift_endAccess();
    v44 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    v45 = _allocateUninitializedArray<A>(_:)();
    if (!os_log_type_enabled(v44, v43))
    {

      goto LABEL_40;
    }

    v36 = static UnsafeMutablePointer.allocate(capacity:)();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v37 = createStorage<A>(capacity:type:)(0, v35, v35);
    v38 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v138 + 736) = v36;
    *(v138 + 744) = v37;
    *(v138 + 752) = v38;
    serialize(_:at:)(0, (v138 + 736));
    serialize(_:at:)(0, (v138 + 736));
    *(v138 + 760) = v45;
    v39 = swift_task_alloc();
    v39[2] = v138 + 736;
    v39[3] = v138 + 744;
    v39[4] = v138 + 752;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (!v128)
    {

      _os_log_impl(&dword_269912000, v44, v43, "Stopping search because no dates range was specified", v36, 2u);
      destroyStorage<A>(_:count:)(v37, 0, v35);
      destroyStorage<A>(_:count:)(v38, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v36, MEMORY[0x277D84B78]);

LABEL_40:
      v33 = *(v138 + 1400);
      v32 = *(v138 + 1312);
      v30 = *(v138 + 1200);
      v31 = *(v138 + 1176);
      MEMORY[0x277D82BD8](v44);
      v32(v30, v31);
      swift_beginAccess();
      v34 = *(v138 + 696);
      MEMORY[0x277D82BE0](v34);
      swift_endAccess();
      MEMORY[0x277D82BD8](v33);
      MEMORY[0x277D82BD8](v33);
      MEMORY[0x277D82BD8](*(v138 + 696));
      v107 = v34;
      goto LABEL_41;
    }
  }

  v7 = *(v138 + 1160);
  v101 = *(v138 + 1152);
  v8 = *(v138 + 1120);
  v100 = *(v138 + 1088);
  v99 = *(v138 + 1024);
  v9 = *(v138 + 1096) + 32;
  v98 = *v9;
  *(v138 + 1456) = *v9;
  *(v138 + 1464) = v9 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v98(v8, v7);
  outlined init with copy of Date?(v99, v101);
  if (v132(v101, 1, v100) == 1)
  {
    v97 = *(v138 + 1120);
    v96 = *(v138 + 1088);
    v95 = *(v138 + 1096);
    outlined destroy of Date?(*(v138 + 1152));
    (*(v95 + 8))(v97, v96);
    goto LABEL_35;
  }

  v92 = *(v138 + 1048);
  v93 = *(v138 + 1040);
  (v98)(*(v138 + 1112), *(v138 + 1152), *(v138 + 1088));

  *(v138 + 768) = v92;
  MEMORY[0x277D82BE0](v93);
  *(v138 + 776) = v93;
  v94 = Sequence<>.contains(_:)();
  MEMORY[0x277D82BD8](*(v138 + 776));
  outlined destroy of [HKQuantityType]((v138 + 768));
  if (v94)
  {
    v55 = *(v138 + 1288);
    v19 = *(v138 + 1232);
    v54 = *(v138 + 1176);
    v62 = *(v138 + 1128);
    v57 = *(v138 + 1120);
    v59 = *(v138 + 1112);
    v63 = *(v138 + 1088);
    v56 = *(v138 + 1096);
    v53 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v55(v19, v53, v54);
    swift_endAccess();
    v60 = *(v56 + 16);
    *(v138 + 1496) = v60;
    *(v138 + 1504) = (v56 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v60(v62, v57, v63);
    v61 = *(v56 + 80);
    *(v138 + 1568) = v61;
    v58 = swift_allocObject();
    (v98)(v58 + ((v61 + 16) & ~v61), v62, v63);

    v65 = swift_allocObject();
    *(v65 + 16) = partial apply for implicit closure #10 in LogQuantityIntentHandler.handle(intent:);
    *(v65 + 24) = v58;

    v60(v62, v59, v63);
    v64 = swift_allocObject();
    (v98)(v64 + ((v61 + 16) & ~v61), v62, v63);

    v67 = swift_allocObject();
    *(v67 + 16) = partial apply for implicit closure #10 in LogQuantityIntentHandler.handle(intent:);
    *(v67 + 24) = v64;

    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.debug.getter();
    v69 = swift_allocObject();
    *(v69 + 16) = 32;
    v70 = swift_allocObject();
    *(v70 + 16) = 8;
    v66 = swift_allocObject();
    *(v66 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:);
    *(v66 + 24) = v65;
    v71 = swift_allocObject();
    *(v71 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v71 + 24) = v66;
    v72 = swift_allocObject();
    *(v72 + 16) = 32;
    v73 = swift_allocObject();
    *(v73 + 16) = 8;
    v68 = swift_allocObject();
    *(v68 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:);
    *(v68 + 24) = v67;
    v74 = swift_allocObject();
    *(v74 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v74 + 24) = v68;
    _allocateUninitializedArray<A>(_:)();
    v75 = v20;

    *v75 = partial apply for closure #1 in OSLogArguments.append(_:);
    v75[1] = v69;

    v75[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v75[3] = v70;

    v75[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v75[5] = v71;

    v75[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v75[7] = v72;

    v75[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v75[9] = v73;

    v75[10] = partial apply for closure #1 in OSLogArguments.append(_:);
    v75[11] = v74;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v76, v77))
    {
      v50 = static UnsafeMutablePointer.allocate(capacity:)();
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v51 = createStorage<A>(capacity:type:)(0, v49, v49);
      v52 = createStorage<A>(capacity:type:)(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v139 = v50;
      v140 = v51;
      v141 = v52;
      serialize(_:at:)(2, &v139);
      serialize(_:at:)(2, &v139);
      v142 = partial apply for closure #1 in OSLogArguments.append(_:);
      v143 = v69;
      closure #1 in osLogInternal(_:log:type:)(&v142, &v139, &v140, &v141);
      if (v128)
      {
      }

      v142 = partial apply for closure #1 in OSLogArguments.append(_:);
      v143 = v70;
      closure #1 in osLogInternal(_:log:type:)(&v142, &v139, &v140, &v141);
      v142 = partial apply for closure #1 in OSLogArguments.append(_:);
      v143 = v71;
      closure #1 in osLogInternal(_:log:type:)(&v142, &v139, &v140, &v141);
      v142 = partial apply for closure #1 in OSLogArguments.append(_:);
      v143 = v72;
      closure #1 in osLogInternal(_:log:type:)(&v142, &v139, &v140, &v141);
      v142 = partial apply for closure #1 in OSLogArguments.append(_:);
      v143 = v73;
      closure #1 in osLogInternal(_:log:type:)(&v142, &v139, &v140, &v141);
      v142 = partial apply for closure #1 in OSLogArguments.append(_:);
      v143 = v74;
      closure #1 in osLogInternal(_:log:type:)(&v142, &v139, &v140, &v141);
      _os_log_impl(&dword_269912000, v76, v77, "Searching for the total value for cumulative datatypes in %s - %s", v50, 0x16u);
      destroyStorage<A>(_:count:)(v51, 0, v49);
      destroyStorage<A>(_:count:)(v52, 2, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v50, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v48 = *(v138 + 1312);
    v46 = *(v138 + 1232);
    v47 = *(v138 + 1176);
    MEMORY[0x277D82BD8](v76);
    v48(v46, v47);
    v21 = swift_task_alloc();
    *(v138 + 1512) = v21;
    *v21 = *(v138 + 672);
    v21[1] = HealthKitFetcher.query(start:end:);
    v22 = *(v138 + 1120);
    v23 = *(v138 + 1112);
    v24 = *(v138 + 1056);
    v25 = *(v138 + 1048);
    v26 = *(v138 + 1040);
    v27 = *(v138 + 1032);

    return HealthKitFetcher.getCumulativeTotal(startDate:endDate:)(v22, v23, v27, v26, v25, v24);
  }

  else
  {
    v88 = *(v138 + 1288);
    v10 = *(v138 + 1248);
    v87 = *(v138 + 1176);
    v86 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v88(v10, v86, v87);
    swift_endAccess();
    log = Logger.logObject.getter();
    v89 = static os_log_type_t.debug.getter();
    v91 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v89))
    {
      v82 = static UnsafeMutablePointer.allocate(capacity:)();
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v83 = createStorage<A>(capacity:type:)(0, v81, v81);
      v84 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v138 + 904) = v82;
      *(v138 + 912) = v83;
      *(v138 + 920) = v84;
      serialize(_:at:)(0, (v138 + 904));
      serialize(_:at:)(0, (v138 + 904));
      *(v138 + 928) = v91;
      v85 = swift_task_alloc();
      v85[2] = v138 + 904;
      v85[3] = v138 + 912;
      v85[4] = v138 + 920;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v128)
      {
      }

      _os_log_impl(&dword_269912000, log, v89, "Searching for discrete min, max and average for data", v82, 2u);
      destroyStorage<A>(_:count:)(v83, 0, v81);
      destroyStorage<A>(_:count:)(v84, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v82, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v80 = *(v138 + 1312);
    v78 = *(v138 + 1248);
    v79 = *(v138 + 1176);
    MEMORY[0x277D82BD8](log);
    v80(v78, v79);
    v11 = swift_task_alloc();
    *(v138 + 1472) = v11;
    *v11 = *(v138 + 672);
    v11[1] = HealthKitFetcher.query(start:end:);
    v12 = *(v138 + 1120);
    v13 = *(v138 + 1112);
    v14 = *(v138 + 1056);
    v15 = *(v138 + 1048);
    v16 = *(v138 + 1040);
    v17 = *(v138 + 1032);

    return HealthKitFetcher.getDiscreteStats(startDate:endDate:)(v12, v13, v17, v16, v15, v14);
  }
}

{
  v5 = *v2;
  v5[84] = *v2;
  v5[185] = a1;
  v5[186] = v1;

  if (v1)
  {
    v3 = HealthKitFetcher.query(start:end:);
  }

  else
  {
    v3 = HealthKitFetcher.query(start:end:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

{
  v90 = v1;
  v2 = *(v1 + 1480);
  *(v1 + 672) = v1;
  if (!v2)
  {
    goto LABEL_20;
  }

  v82 = *(v84 + 1480);
  *(v84 + 872) = v82;
  v3 = [v82 minimumQuantity];
  v83 = v3;
  if (v3)
  {
    [v3 doubleValueForUnit_];
    v79 = v4;
    MEMORY[0x277D82BD8](v83);
    v80 = v79;
    v81 = 0;
  }

  else
  {
    v80 = 0.0;
    v81 = 1;
  }

  if (v81 & 1) != 0 || ((*(v84 + 880) = v80, v5 = [v82 maximumQuantity], (v78 = v5) == 0) ? (v76 = 0.0, v77 = 1) : (objc_msgSend(v5, sel_doubleValueForUnit_, *(v84 + 1400)), v75 = v6, MEMORY[0x277D82BD8](v78), v76 = v75, v77 = 0), (v77 & 1) != 0 || ((*(v84 + 888) = v76, v7 = objc_msgSend(v82, sel_averageQuantity), (v74 = v7) == 0) ? (v72 = 0.0, v73 = 1) : (objc_msgSend(v7, sel_doubleValueForUnit_, *(v84 + 1400)), v71 = v8, MEMORY[0x277D82BD8](v74), v72 = v71, v73 = 0), (v73)))
  {
    MEMORY[0x277D82BD8](v82);
LABEL_20:
    v46 = *(v84 + 1288);
    v11 = *(v84 + 1240);
    v45 = *(v84 + 1176);
    v44 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v46(v11, v44, v45);
    swift_endAccess();
    log = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    v49 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v47))
    {
      v12 = *(v84 + 1488);
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v41 = createStorage<A>(capacity:type:)(0, v39, v39);
      v42 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v84 + 840) = buf;
      *(v84 + 848) = v41;
      *(v84 + 856) = v42;
      serialize(_:at:)(0, (v84 + 840));
      serialize(_:at:)(0, (v84 + 840));
      *(v84 + 864) = v49;
      v43 = swift_task_alloc();
      v43[2] = v84 + 840;
      v43[3] = v84 + 848;
      v43[4] = v84 + 856;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v12)
      {
      }

      _os_log_impl(&dword_269912000, log, v47, "Couldn't find the correct statistics returning .dataUnavailable", buf, 2u);
      destroyStorage<A>(_:count:)(v41, 0, v39);
      destroyStorage<A>(_:count:)(v42, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v36 = *(v84 + 1400);
    v30 = *(v84 + 1312);
    v28 = *(v84 + 1240);
    v29 = *(v84 + 1176);
    v33 = *(v84 + 1120);
    v32 = *(v84 + 1112);
    v34 = *(v84 + 1088);
    v31 = *(v84 + 1096);
    MEMORY[0x277D82BD8](log);
    v30(v28, v29);
    v37 = GetHealthQuantityIntentResponse.__allocating_init(code:userActivity:)(102, 0);
    v35 = *(v31 + 8);
    v35(v32, v34);
    v35(v33, v34);
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](*(v84 + 696));
    v38 = v37;
    goto LABEL_30;
  }

  v55 = *(v84 + 1128);
  v53 = *(v84 + 1088);
  v50 = *(v84 + 1096);
  *(v84 + 896) = v72;
  swift_beginAccess();
  v62 = *(v84 + 696);
  MEMORY[0x277D82BE0](v62);
  swift_endAccess();
  [v62 setMinimum_];
  swift_beginAccess();
  swift_endAccess();
  [v62 setMaximum_];
  swift_beginAccess();
  swift_endAccess();
  [v62 setAverage_];
  swift_beginAccess();
  swift_endAccess();
  v51 = [v82 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v54 = *(v50 + 8);
  v54(v55, v53);
  MEMORY[0x277D82BD8](v51);
  [v62 setSampleStartDate_];
  MEMORY[0x277D82BD8](isa);
  swift_beginAccess();
  swift_endAccess();
  v56 = [v82 endDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = Date._bridgeToObjectiveC()().super.isa;
  v54(v55, v53);
  MEMORY[0x277D82BD8](v56);
  [v62 setSampleEndDate_];
  MEMORY[0x277D82BD8](v57);
  MEMORY[0x277D82BD8](v82);
  v58 = *(v84 + 1488);
  v61 = *(v84 + 1288);
  v9 = *(v84 + 1208);
  v60 = *(v84 + 1176);
  v59 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v61(v9, v59, v60);
  swift_endAccess();
  MEMORY[0x277D82BE0](v62);
  v63 = swift_allocObject();
  *(v63 + 16) = v62;
  oslog = Logger.logObject.getter();
  v70 = static os_log_type_t.debug.getter();
  v65 = swift_allocObject();
  *(v65 + 16) = 32;
  v66 = swift_allocObject();
  *(v66 + 16) = 8;
  v64 = swift_allocObject();
  *(v64 + 16) = partial apply for specialized implicit closure #12 in HealthKitFetcher.query(start:end:);
  *(v64 + 24) = v63;
  v67 = swift_allocObject();
  *(v67 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v67 + 24) = v64;
  _allocateUninitializedArray<A>(_:)();
  v68 = v10;

  *v68 = partial apply for closure #1 in OSLogArguments.append(_:);
  v68[1] = v65;

  v68[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v68[3] = v66;

  v68[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v68[5] = v67;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v70))
  {
    v25 = static UnsafeMutablePointer.allocate(capacity:)();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v26 = createStorage<A>(capacity:type:)(0, v24, v24);
    v27 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v85 = v25;
    v86 = v26;
    v87 = v27;
    serialize(_:at:)(2, &v85);
    serialize(_:at:)(1, &v85);
    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v65;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    if (v58)
    {
    }

    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v66;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v67;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    _os_log_impl(&dword_269912000, oslog, v70, "Returning response: %s", v25, 0xCu);
    destroyStorage<A>(_:count:)(v26, 0, v24);
    destroyStorage<A>(_:count:)(v27, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v25, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v23 = *(v84 + 1400);
  v17 = *(v84 + 1312);
  v15 = *(v84 + 1208);
  v16 = *(v84 + 1176);
  v20 = *(v84 + 1120);
  v19 = *(v84 + 1112);
  v21 = *(v84 + 1088);
  v18 = *(v84 + 1096);
  MEMORY[0x277D82BD8](oslog);
  v17(v15, v16);
  swift_beginAccess();
  swift_endAccess();
  v22 = *(v18 + 8);
  v22(v19, v21);
  v22(v20, v21);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](*(v84 + 696));
  v38 = v62;
LABEL_30:

  v14 = *(*(v84 + 672) + 8);

  return v14(v38);
}

{
  v5 = *v2;
  v5[84] = *v2;
  v5[190] = a1;
  v5[191] = v1;

  if (v1)
  {
    v3 = HealthKitFetcher.query(start:end:);
  }

  else
  {
    v3 = HealthKitFetcher.query(start:end:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

{
  v138 = v1;
  v2 = *(v1 + 1520);
  *(v1 + 672) = v1;
  if (!v2)
  {
    goto LABEL_19;
  }

  v125 = *(v127 + 1520);
  *(v127 + 816) = v125;
  v3 = [v125 sumQuantity];
  v126 = v3;
  if (v3)
  {
    [v3 doubleValueForUnit_];
    v122 = v4;
    MEMORY[0x277D82BD8](v126);
    v123 = v122;
    v124 = 0;
  }

  else
  {
    v123 = 0.0;
    v124 = 1;
  }

  if (v124)
  {
    MEMORY[0x277D82BD8](v125);
LABEL_19:
    v53 = *(v127 + 1288);
    v19 = *(v127 + 1216);
    v52 = *(v127 + 1176);
    v51 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v53(v19, v51, v52);
    swift_endAccess();
    log = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    v56 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v54))
    {
      v20 = *(v127 + 1528);
      v47 = static UnsafeMutablePointer.allocate(capacity:)();
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v48 = createStorage<A>(capacity:type:)(0, v46, v46);
      v49 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v127 + 784) = v47;
      *(v127 + 792) = v48;
      *(v127 + 800) = v49;
      serialize(_:at:)(0, (v127 + 784));
      serialize(_:at:)(0, (v127 + 784));
      *(v127 + 808) = v56;
      v50 = swift_task_alloc();
      v50[2] = v127 + 784;
      v50[3] = v127 + 792;
      v50[4] = v127 + 800;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v20)
      {
      }

      _os_log_impl(&dword_269912000, log, v54, "Couldn't find the total statistics returning .dataUnavailable", v47, 2u);
      destroyStorage<A>(_:count:)(v48, 0, v46);
      destroyStorage<A>(_:count:)(v49, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v47, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v43 = *(v127 + 1400);
    v37 = *(v127 + 1312);
    v35 = *(v127 + 1216);
    v36 = *(v127 + 1176);
    v40 = *(v127 + 1120);
    v39 = *(v127 + 1112);
    v41 = *(v127 + 1088);
    v38 = *(v127 + 1096);
    MEMORY[0x277D82BD8](log);
    v37(v35, v36);
    v44 = GetHealthQuantityIntentResponse.__allocating_init(code:userActivity:)(102, 0);
    v42 = *(v38 + 8);
    v42(v39, v41);
    v42(v40, v41);
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](*(v127 + 696));
    v45 = v44;
    goto LABEL_29;
  }

  v99 = *(v127 + 1568);
  v98 = *(v127 + 1496);
  v102 = *(v127 + 1456);
  v94 = *(v127 + 1288);
  v5 = *(v127 + 1224);
  v93 = *(v127 + 1176);
  v100 = *(v127 + 1128);
  v95 = *(v127 + 1120);
  v97 = *(v127 + 1112);
  v101 = *(v127 + 1088);
  *(v127 + 824) = v123;
  v92 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v94(v5, v92, v93);
  swift_endAccess();
  v98(v100, v95, v101);
  v96 = swift_allocObject();
  v102(v96 + ((v99 + 16) & ~v99), v100, v101);

  v104 = swift_allocObject();
  *(v104 + 16) = partial apply for implicit closure #10 in LogQuantityIntentHandler.handle(intent:);
  *(v104 + 24) = v96;

  v98(v100, v97, v101);
  v103 = swift_allocObject();
  v102(v103 + ((v99 + 16) & ~v99), v100, v101);

  v106 = swift_allocObject();
  *(v106 + 16) = partial apply for implicit closure #10 in LogQuantityIntentHandler.handle(intent:);
  *(v106 + 24) = v103;

  v108 = swift_allocObject();
  *(v108 + 16) = v123;
  oslog = Logger.logObject.getter();
  v121 = static os_log_type_t.debug.getter();
  v110 = swift_allocObject();
  *(v110 + 16) = 32;
  v111 = swift_allocObject();
  *(v111 + 16) = 8;
  v105 = swift_allocObject();
  *(v105 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:);
  *(v105 + 24) = v104;
  v112 = swift_allocObject();
  *(v112 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v112 + 24) = v105;
  v113 = swift_allocObject();
  *(v113 + 16) = 32;
  v114 = swift_allocObject();
  *(v114 + 16) = 8;
  v107 = swift_allocObject();
  *(v107 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:);
  *(v107 + 24) = v106;
  v115 = swift_allocObject();
  *(v115 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v115 + 24) = v107;
  v116 = swift_allocObject();
  *(v116 + 16) = 0;
  v117 = swift_allocObject();
  *(v117 + 16) = 8;
  v109 = swift_allocObject();
  *(v109 + 16) = partial apply for implicit closure #11 in HealthKitFetcher.query(start:end:);
  *(v109 + 24) = v108;
  v118 = swift_allocObject();
  *(v118 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:);
  *(v118 + 24) = v109;
  _allocateUninitializedArray<A>(_:)();
  v119 = v6;

  *v119 = partial apply for closure #1 in OSLogArguments.append(_:);
  v119[1] = v110;

  v119[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v119[3] = v111;

  v119[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v119[5] = v112;

  v119[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v119[7] = v113;

  v119[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v119[9] = v114;

  v119[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v119[11] = v115;

  v119[12] = partial apply for closure #1 in OSLogArguments.append(_:);
  v119[13] = v116;

  v119[14] = partial apply for closure #1 in OSLogArguments.append(_:);
  v119[15] = v117;

  v119[16] = partial apply for closure #1 in OSLogArguments.append(_:);
  v119[17] = v118;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v121))
  {
    v7 = *(v127 + 1528);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v90 = createStorage<A>(capacity:type:)(0, v88, v88);
    v91 = createStorage<A>(capacity:type:)(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v133 = buf;
    v134 = v90;
    v135 = v91;
    serialize(_:at:)(2, &v133);
    serialize(_:at:)(3, &v133);
    v136 = partial apply for closure #1 in OSLogArguments.append(_:);
    v137 = v110;
    closure #1 in osLogInternal(_:log:type:)(&v136, &v133, &v134, &v135);
    if (v7)
    {
    }

    v136 = partial apply for closure #1 in OSLogArguments.append(_:);
    v137 = v111;
    closure #1 in osLogInternal(_:log:type:)(&v136, &v133, &v134, &v135);
    v136 = partial apply for closure #1 in OSLogArguments.append(_:);
    v137 = v112;
    closure #1 in osLogInternal(_:log:type:)(&v136, &v133, &v134, &v135);
    v136 = partial apply for closure #1 in OSLogArguments.append(_:);
    v137 = v113;
    closure #1 in osLogInternal(_:log:type:)(&v136, &v133, &v134, &v135);
    v136 = partial apply for closure #1 in OSLogArguments.append(_:);
    v137 = v114;
    closure #1 in osLogInternal(_:log:type:)(&v136, &v133, &v134, &v135);
    v136 = partial apply for closure #1 in OSLogArguments.append(_:);
    v137 = v115;
    closure #1 in osLogInternal(_:log:type:)(&v136, &v133, &v134, &v135);
    v136 = partial apply for closure #1 in OSLogArguments.append(_:);
    v137 = v116;
    closure #1 in osLogInternal(_:log:type:)(&v136, &v133, &v134, &v135);
    v136 = partial apply for closure #1 in OSLogArguments.append(_:);
    v137 = v117;
    closure #1 in osLogInternal(_:log:type:)(&v136, &v133, &v134, &v135);
    v136 = partial apply for closure #1 in OSLogArguments.append(_:);
    v137 = v118;
    closure #1 in osLogInternal(_:log:type:)(&v136, &v133, &v134, &v135);
    _os_log_impl(&dword_269912000, oslog, v121, "Got total value in %s - %s: %f", buf, 0x20u);
    destroyStorage<A>(_:count:)(v90, 0, v88);
    destroyStorage<A>(_:count:)(v91, 2, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

    v87 = 0;
  }

  else
  {

    v87 = *(v127 + 1528);
  }

  v81 = *(v127 + 1312);
  v79 = *(v127 + 1224);
  v80 = *(v127 + 1176);
  v85 = *(v127 + 1080);
  v84 = *(v127 + 1064);
  v83 = *(v127 + 1072);
  MEMORY[0x277D82BD8](oslog);
  v81(v79, v80);
  swift_beginAccess();
  v82 = *(v127 + 696);
  MEMORY[0x277D82BE0](v82);
  swift_endAccess();
  [v82 setTotal_];
  MEMORY[0x277D82BD8](v82);
  static Calendar.current.getter();
  v86 = Calendar.numberOfDaysBetween(_:and:)();
  (*(v83 + 8))(v85, v84);
  *(v127 + 832) = v86;
  if (v86 > 1.0)
  {
    v78 = *(v127 + 1400);
    swift_beginAccess();
    v9 = *(v127 + 696);
    *(v127 + 1536) = v9;
    MEMORY[0x277D82BE0](v9);
    swift_endAccess();
    v10 = swift_task_alloc();
    *(v127 + 1544) = v10;
    *v10 = *(v127 + 672);
    v10[1] = HealthKitFetcher.query(start:end:);
    v11 = *(v127 + 1120);
    v12 = *(v127 + 1112);
    v13 = *(v127 + 1056);
    v14 = *(v127 + 1048);
    v15 = *(v127 + 1040);
    v16 = *(v127 + 1032);

    return HealthKitFetcher.getCumulativeAverage(startDate:endDate:unit:)(v11, v12, v78, v16, v15, v14, v13);
  }

  v62 = *(v127 + 1128);
  v60 = *(v127 + 1088);
  v65 = *(v127 + 1520);
  v57 = *(v127 + 1096);
  swift_beginAccess();
  v69 = *(v127 + 696);
  MEMORY[0x277D82BE0](v69);
  swift_endAccess();
  v58 = [v65 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v61 = *(v57 + 8);
  v61(v62, v60);
  MEMORY[0x277D82BD8](v58);
  [v69 setSampleStartDate_];
  MEMORY[0x277D82BD8](isa);
  swift_beginAccess();
  swift_endAccess();
  v63 = [v65 endDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v64 = Date._bridgeToObjectiveC()().super.isa;
  v61(v62, v60);
  MEMORY[0x277D82BD8](v63);
  [v69 setSampleEndDate_];
  MEMORY[0x277D82BD8](v64);
  MEMORY[0x277D82BD8](v65);
  v68 = *(v127 + 1288);
  v17 = *(v127 + 1208);
  v67 = *(v127 + 1176);
  v66 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v68(v17, v66, v67);
  swift_endAccess();
  MEMORY[0x277D82BE0](v69);
  v70 = swift_allocObject();
  *(v70 + 16) = v69;
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.debug.getter();
  v72 = swift_allocObject();
  *(v72 + 16) = 32;
  v73 = swift_allocObject();
  *(v73 + 16) = 8;
  v71 = swift_allocObject();
  *(v71 + 16) = partial apply for specialized implicit closure #12 in HealthKitFetcher.query(start:end:);
  *(v71 + 24) = v70;
  v74 = swift_allocObject();
  *(v74 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v74 + 24) = v71;
  _allocateUninitializedArray<A>(_:)();
  v75 = v18;

  *v75 = partial apply for closure #1 in OSLogArguments.append(_:);
  v75[1] = v72;

  v75[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v75[3] = v73;

  v75[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v75[5] = v74;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v76, v77))
  {
    v32 = static UnsafeMutablePointer.allocate(capacity:)();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v33 = createStorage<A>(capacity:type:)(0, v31, v31);
    v34 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v128 = v32;
    v129 = v33;
    v130 = v34;
    serialize(_:at:)(2, &v128);
    serialize(_:at:)(1, &v128);
    v131 = partial apply for closure #1 in OSLogArguments.append(_:);
    v132 = v72;
    closure #1 in osLogInternal(_:log:type:)(&v131, &v128, &v129, &v130);
    if (v87)
    {
    }

    v131 = partial apply for closure #1 in OSLogArguments.append(_:);
    v132 = v73;
    closure #1 in osLogInternal(_:log:type:)(&v131, &v128, &v129, &v130);
    v131 = partial apply for closure #1 in OSLogArguments.append(_:);
    v132 = v74;
    closure #1 in osLogInternal(_:log:type:)(&v131, &v128, &v129, &v130);
    _os_log_impl(&dword_269912000, v76, v77, "Returning response: %s", v32, 0xCu);
    destroyStorage<A>(_:count:)(v33, 0, v31);
    destroyStorage<A>(_:count:)(v34, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v32, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v30 = *(v127 + 1400);
  v24 = *(v127 + 1312);
  v22 = *(v127 + 1208);
  v23 = *(v127 + 1176);
  v27 = *(v127 + 1120);
  v26 = *(v127 + 1112);
  v28 = *(v127 + 1088);
  v25 = *(v127 + 1096);
  MEMORY[0x277D82BD8](v76);
  v24(v22, v23);
  swift_beginAccess();
  swift_endAccess();
  v29 = *(v25 + 8);
  v29(v26, v28);
  v29(v27, v28);
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](*(v127 + 696));
  v45 = v69;
LABEL_29:

  v21 = *(*(v127 + 672) + 8);

  return v21(v45);
}

uint64_t HealthKitFetcher.query(start:end:)(uint64_t a1, uint64_t a2)
{
  v7 = *v3;
  v6 = *v3 + 16;
  v7[84] = *v3;
  v7[169] = v2;
  v7[170] = a1;
  v7[171] = a2;

  if (v2)
  {
    v4 = HealthKitFetcher.query(start:end:);
  }

  else
  {

    v4 = HealthKitFetcher.query(start:end:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

uint64_t HealthKitFetcher.query(start:end:)()
{
  v1 = v0[170];
  v6 = v0[167];
  v7 = v0[130];
  v9 = v0[129];
  v0[84] = v0;
  v5 = MEMORY[0x26D6492A0](v1);

  [v6 setUnit_];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BE0](v7);
  MEMORY[0x277D82BE0](v9);
  v2 = swift_task_alloc();
  v8[172] = v2;
  *v2 = v8[84];
  v2[1] = HealthKitFetcher.query(start:end:);
  v3 = v8[130];

  return getPreferredUnit(for:store:)(v3, v9);
}

{
  v196 = v0;
  v180 = v0[173];
  v0[84] = v0;
  v179 = v0[174];
  v0[175] = v180;
  v0[88] = v180;
  MEMORY[0x277D82BE0](v180);
  if (!v180)
  {
    v46 = *(v178 + 1288);
    v33 = *(v178 + 1192);
    v45 = *(v178 + 1176);
    v50 = *(v178 + 1056);
    v49 = *(v178 + 1048);
    v48 = *(v178 + 1040);
    v47 = *(v178 + 1032);
    v44 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v46(v33, v44, v45);
    swift_endAccess();
    MEMORY[0x277D82BE0](v47);
    MEMORY[0x277D82BE0](v48);

    v51 = swift_allocObject();
    v51[2] = v47;
    v51[3] = v48;
    v51[4] = v49;
    v51[5] = v50;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    v53 = swift_allocObject();
    *(v53 + 16) = 64;
    v54 = swift_allocObject();
    *(v54 + 16) = 8;
    v52 = swift_allocObject();
    *(v52 + 16) = partial apply for implicit closure #1 in HealthKitFetcher.query(start:end:);
    *(v52 + 24) = v51;
    v55 = swift_allocObject();
    *(v55 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v55 + 24) = v52;
    _allocateUninitializedArray<A>(_:)();
    v56 = v34;

    *v56 = partial apply for closure #1 in OSLogArguments.append(_:);
    v56[1] = v53;

    v56[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v56[3] = v54;

    v56[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v56[5] = v55;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v57, v58))
    {
      v41 = static UnsafeMutablePointer.allocate(capacity:)();
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v42 = createStorage<A>(capacity:type:)(1, v40, v40);
      v43 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v181 = v41;
      v182 = v42;
      v183 = v43;
      serialize(_:at:)(2, &v181);
      serialize(_:at:)(1, &v181);
      v184 = partial apply for closure #1 in OSLogArguments.append(_:);
      v185 = v53;
      closure #1 in osLogInternal(_:log:type:)(&v184, &v181, &v182, &v183);
      if (v179)
      {
      }

      v184 = partial apply for closure #1 in OSLogArguments.append(_:);
      v185 = v54;
      closure #1 in osLogInternal(_:log:type:)(&v184, &v181, &v182, &v183);
      v184 = partial apply for closure #1 in OSLogArguments.append(_:);
      v185 = v55;
      closure #1 in osLogInternal(_:log:type:)(&v184, &v181, &v182, &v183);
      _os_log_impl(&dword_269912000, v57, v58, "Failed to get units for %@", v41, 0xCu);
      destroyStorage<A>(_:count:)(v42, 1, v40);
      destroyStorage<A>(_:count:)(v43, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v41, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v38 = *(v178 + 1312);
    v36 = *(v178 + 1192);
    v37 = *(v178 + 1176);
    MEMORY[0x277D82BD8](v57);
    v38(v36, v37);
    v39 = GetHealthQuantityIntentResponse.__allocating_init(code:userActivity:)(5, 0);
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](*(v178 + 696));
    v64 = v39;
LABEL_49:

    v35 = *(*(v178 + 672) + 8);

    return v35(v64);
  }

  v163 = *(v178 + 1288);
  v1 = *(v178 + 1272);
  v162 = *(v178 + 1176);
  *(v178 + 712) = v180;
  v161 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v163(v1, v161, v162);
  swift_endAccess();
  v164 = *(v178 + 696);
  MEMORY[0x277D82BE0](v164);
  v165 = swift_allocObject();
  *(v165 + 16) = v164;
  MEMORY[0x277D82BE0](v180);
  v167 = swift_allocObject();
  *(v167 + 16) = v180;
  oslog = Logger.logObject.getter();
  v177 = static os_log_type_t.debug.getter();
  v169 = swift_allocObject();
  *(v169 + 16) = 32;
  v170 = swift_allocObject();
  *(v170 + 16) = 8;
  v166 = swift_allocObject();
  *(v166 + 16) = partial apply for specialized implicit closure #5 in HealthKitFetcher.query(start:end:);
  *(v166 + 24) = v165;
  v171 = swift_allocObject();
  *(v171 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v171 + 24) = v166;
  v172 = swift_allocObject();
  *(v172 + 16) = 64;
  v173 = swift_allocObject();
  *(v173 + 16) = 8;
  v168 = swift_allocObject();
  *(v168 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
  *(v168 + 24) = v167;
  v174 = swift_allocObject();
  *(v174 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v174 + 24) = v168;
  _allocateUninitializedArray<A>(_:)();
  v175 = v2;

  *v175 = partial apply for closure #1 in OSLogArguments.append(_:);
  v175[1] = v169;

  v175[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v175[3] = v170;

  v175[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v175[5] = v171;

  v175[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v175[7] = v172;

  v175[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v175[9] = v173;

  v175[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v175[11] = v174;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v177))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v159 = createStorage<A>(capacity:type:)(1, v157, v157);
    v160 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v191 = buf;
    v192 = v159;
    v193 = v160;
    serialize(_:at:)(2, &v191);
    serialize(_:at:)(2, &v191);
    v194 = partial apply for closure #1 in OSLogArguments.append(_:);
    v195 = v169;
    closure #1 in osLogInternal(_:log:type:)(&v194, &v191, &v192, &v193);
    if (v179)
    {
    }

    v194 = partial apply for closure #1 in OSLogArguments.append(_:);
    v195 = v170;
    closure #1 in osLogInternal(_:log:type:)(&v194, &v191, &v192, &v193);
    v194 = partial apply for closure #1 in OSLogArguments.append(_:);
    v195 = v171;
    closure #1 in osLogInternal(_:log:type:)(&v194, &v191, &v192, &v193);
    v194 = partial apply for closure #1 in OSLogArguments.append(_:);
    v195 = v172;
    closure #1 in osLogInternal(_:log:type:)(&v194, &v191, &v192, &v193);
    v194 = partial apply for closure #1 in OSLogArguments.append(_:);
    v195 = v173;
    closure #1 in osLogInternal(_:log:type:)(&v194, &v191, &v192, &v193);
    v194 = partial apply for closure #1 in OSLogArguments.append(_:);
    v195 = v174;
    closure #1 in osLogInternal(_:log:type:)(&v194, &v191, &v192, &v193);
    _os_log_impl(&dword_269912000, oslog, v177, "Localized unit -> %s <- found for %@", buf, 0x16u);
    destroyStorage<A>(_:count:)(v159, 1, v157);
    destroyStorage<A>(_:count:)(v160, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

    v156 = 0;
  }

  else
  {

    v156 = v179;
  }

  v152 = *(v178 + 1312);
  v150 = *(v178 + 1272);
  v151 = *(v178 + 1176);
  v153 = *(v178 + 1056);
  v154 = *(v178 + 1040);
  MEMORY[0x277D82BD8](oslog);
  v152(v150, v151);

  *(v178 + 720) = v153;
  MEMORY[0x277D82BE0](v154);
  *(v178 + 728) = v154;
  *(v178 + 1408) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14HKQuantityTypeCGMd, &_sSaySo14HKQuantityTypeCGMR);
  *(v178 + 1416) = lazy protocol witness table accessor for type [HKQuantityType] and conformance [A]();
  *(v178 + 1424) = lazy protocol witness table accessor for type HKQuantityType and conformance NSObject();
  v155 = Sequence<>.contains(_:)();
  MEMORY[0x277D82BD8](*(v178 + 728));
  outlined destroy of [HKQuantityType]((v178 + 720));
  if (v155)
  {
    v146 = *(v178 + 1288);
    v4 = *(v178 + 1264);
    v145 = *(v178 + 1176);
    v144 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v146(v4, v144, v145);
    swift_endAccess();
    log = Logger.logObject.getter();
    v147 = static os_log_type_t.debug.getter();
    v149 = _allocateUninitializedArray<A>(_:)();
    if (!os_log_type_enabled(log, v147))
    {

      goto LABEL_13;
    }

    v140 = static UnsafeMutablePointer.allocate(capacity:)();
    v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v141 = createStorage<A>(capacity:type:)(0, v139, v139);
    v142 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v178 + 984) = v140;
    *(v178 + 992) = v141;
    *(v178 + 1000) = v142;
    serialize(_:at:)(0, (v178 + 984));
    serialize(_:at:)(0, (v178 + 984));
    *(v178 + 1008) = v149;
    v143 = swift_task_alloc();
    v143[2] = v178 + 984;
    v143[3] = v178 + 992;
    v143[4] = v178 + 1000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (!v156)
    {

      _os_log_impl(&dword_269912000, log, v147, "Searching for most recent sample", v140, 2u);
      destroyStorage<A>(_:count:)(v141, 0, v139);
      destroyStorage<A>(_:count:)(v142, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v140, MEMORY[0x277D84B78]);

LABEL_13:
      v138 = *(v178 + 1312);
      v136 = *(v178 + 1264);
      v137 = *(v178 + 1176);
      MEMORY[0x277D82BD8](log);
      v138(v136, v137);
      v5 = swift_task_alloc();
      *(v178 + 1432) = v5;
      *v5 = *(v178 + 672);
      v5[1] = HealthKitFetcher.query(start:end:);
      v6 = *(v178 + 1056);
      v7 = *(v178 + 1048);
      v8 = *(v178 + 1040);
      v9 = *(v178 + 1032);
      v10 = *(v178 + 1024);
      v11 = *(v178 + 1016);

      return HealthKitFetcher.getMostRecent(startDate:endDate:)(v11, v10, v9, v8, v7, v6);
    }
  }

  v134 = *(v178 + 1160);
  v133 = *(v178 + 1088);
  v132 = *(v178 + 1096);
  outlined init with copy of Date?(*(v178 + 1016), v134);
  v135 = *(v132 + 48);
  if (v135(v134, 1, v133) == 1)
  {
    outlined destroy of Date?(*(v178 + 1160));
LABEL_37:
    v72 = *(v178 + 1288);
    v32 = *(v178 + 1200);
    v71 = *(v178 + 1176);
    v70 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v72(v32, v70, v71);
    swift_endAccess();
    v74 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();
    v75 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v74, v73))
    {
      v66 = static UnsafeMutablePointer.allocate(capacity:)();
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v67 = createStorage<A>(capacity:type:)(0, v65, v65);
      v68 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v178 + 736) = v66;
      *(v178 + 744) = v67;
      *(v178 + 752) = v68;
      serialize(_:at:)(0, (v178 + 736));
      serialize(_:at:)(0, (v178 + 736));
      *(v178 + 760) = v75;
      v69 = swift_task_alloc();
      v69[2] = v178 + 736;
      v69[3] = v178 + 744;
      v69[4] = v178 + 752;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v156)
      {
      }

      _os_log_impl(&dword_269912000, v74, v73, "Stopping search because no dates range was specified", v66, 2u);
      destroyStorage<A>(_:count:)(v67, 0, v65);
      destroyStorage<A>(_:count:)(v68, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v66, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v62 = *(v178 + 1400);
    v61 = *(v178 + 1312);
    v59 = *(v178 + 1200);
    v60 = *(v178 + 1176);
    MEMORY[0x277D82BD8](v74);
    v61(v59, v60);
    swift_beginAccess();
    v63 = *(v178 + 696);
    MEMORY[0x277D82BE0](v63);
    swift_endAccess();
    MEMORY[0x277D82BD8](v62);
    MEMORY[0x277D82BD8](v62);
    MEMORY[0x277D82BD8](*(v178 + 696));
    v64 = v63;
    goto LABEL_49;
  }

  v12 = *(v178 + 1160);
  v131 = *(v178 + 1152);
  v13 = *(v178 + 1120);
  v130 = *(v178 + 1088);
  v129 = *(v178 + 1024);
  v14 = *(v178 + 1096) + 32;
  v128 = *v14;
  *(v178 + 1456) = *v14;
  *(v178 + 1464) = v14 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v128(v13, v12);
  outlined init with copy of Date?(v129, v131);
  if (v135(v131, 1, v130) == 1)
  {
    v127 = *(v178 + 1120);
    v126 = *(v178 + 1088);
    v125 = *(v178 + 1096);
    outlined destroy of Date?(*(v178 + 1152));
    (*(v125 + 8))(v127, v126);
    goto LABEL_37;
  }

  v122 = *(v178 + 1048);
  v123 = *(v178 + 1040);
  (v128)(*(v178 + 1112), *(v178 + 1152), *(v178 + 1088));

  *(v178 + 768) = v122;
  MEMORY[0x277D82BE0](v123);
  *(v178 + 776) = v123;
  v124 = Sequence<>.contains(_:)();
  MEMORY[0x277D82BD8](*(v178 + 776));
  outlined destroy of [HKQuantityType]((v178 + 768));
  if (v124)
  {
    v85 = *(v178 + 1288);
    v23 = *(v178 + 1232);
    v84 = *(v178 + 1176);
    v92 = *(v178 + 1128);
    v87 = *(v178 + 1120);
    v89 = *(v178 + 1112);
    v93 = *(v178 + 1088);
    v86 = *(v178 + 1096);
    v83 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v85(v23, v83, v84);
    swift_endAccess();
    v90 = *(v86 + 16);
    *(v178 + 1496) = v90;
    *(v178 + 1504) = (v86 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v90(v92, v87, v93);
    v91 = *(v86 + 80);
    *(v178 + 1568) = v91;
    v88 = swift_allocObject();
    (v128)(v88 + ((v91 + 16) & ~v91), v92, v93);

    v95 = swift_allocObject();
    *(v95 + 16) = partial apply for implicit closure #10 in LogQuantityIntentHandler.handle(intent:);
    *(v95 + 24) = v88;

    v90(v92, v89, v93);
    v94 = swift_allocObject();
    (v128)(v94 + ((v91 + 16) & ~v91), v92, v93);

    v97 = swift_allocObject();
    *(v97 + 16) = partial apply for implicit closure #10 in LogQuantityIntentHandler.handle(intent:);
    *(v97 + 24) = v94;

    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.debug.getter();
    v99 = swift_allocObject();
    *(v99 + 16) = 32;
    v100 = swift_allocObject();
    *(v100 + 16) = 8;
    v96 = swift_allocObject();
    *(v96 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:);
    *(v96 + 24) = v95;
    v101 = swift_allocObject();
    *(v101 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v101 + 24) = v96;
    v102 = swift_allocObject();
    *(v102 + 16) = 32;
    v103 = swift_allocObject();
    *(v103 + 16) = 8;
    v98 = swift_allocObject();
    *(v98 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:);
    *(v98 + 24) = v97;
    v104 = swift_allocObject();
    *(v104 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v104 + 24) = v98;
    _allocateUninitializedArray<A>(_:)();
    v105 = v24;

    *v105 = partial apply for closure #1 in OSLogArguments.append(_:);
    v105[1] = v99;

    v105[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v105[3] = v100;

    v105[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v105[5] = v101;

    v105[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v105[7] = v102;

    v105[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v105[9] = v103;

    v105[10] = partial apply for closure #1 in OSLogArguments.append(_:);
    v105[11] = v104;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v106, v107))
    {
      v80 = static UnsafeMutablePointer.allocate(capacity:)();
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v81 = createStorage<A>(capacity:type:)(0, v79, v79);
      v82 = createStorage<A>(capacity:type:)(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v186 = v80;
      v187 = v81;
      v188 = v82;
      serialize(_:at:)(2, &v186);
      serialize(_:at:)(2, &v186);
      v189 = partial apply for closure #1 in OSLogArguments.append(_:);
      v190 = v99;
      closure #1 in osLogInternal(_:log:type:)(&v189, &v186, &v187, &v188);
      if (v156)
      {
      }

      v189 = partial apply for closure #1 in OSLogArguments.append(_:);
      v190 = v100;
      closure #1 in osLogInternal(_:log:type:)(&v189, &v186, &v187, &v188);
      v189 = partial apply for closure #1 in OSLogArguments.append(_:);
      v190 = v101;
      closure #1 in osLogInternal(_:log:type:)(&v189, &v186, &v187, &v188);
      v189 = partial apply for closure #1 in OSLogArguments.append(_:);
      v190 = v102;
      closure #1 in osLogInternal(_:log:type:)(&v189, &v186, &v187, &v188);
      v189 = partial apply for closure #1 in OSLogArguments.append(_:);
      v190 = v103;
      closure #1 in osLogInternal(_:log:type:)(&v189, &v186, &v187, &v188);
      v189 = partial apply for closure #1 in OSLogArguments.append(_:);
      v190 = v104;
      closure #1 in osLogInternal(_:log:type:)(&v189, &v186, &v187, &v188);
      _os_log_impl(&dword_269912000, v106, v107, "Searching for the total value for cumulative datatypes in %s - %s", v80, 0x16u);
      destroyStorage<A>(_:count:)(v81, 0, v79);
      destroyStorage<A>(_:count:)(v82, 2, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v80, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v78 = *(v178 + 1312);
    v76 = *(v178 + 1232);
    v77 = *(v178 + 1176);
    MEMORY[0x277D82BD8](v106);
    v78(v76, v77);
    v25 = swift_task_alloc();
    *(v178 + 1512) = v25;
    *v25 = *(v178 + 672);
    v25[1] = HealthKitFetcher.query(start:end:);
    v26 = *(v178 + 1120);
    v27 = *(v178 + 1112);
    v28 = *(v178 + 1056);
    v29 = *(v178 + 1048);
    v30 = *(v178 + 1040);
    v31 = *(v178 + 1032);

    return HealthKitFetcher.getCumulativeTotal(startDate:endDate:)(v26, v27, v31, v30, v29, v28);
  }

  else
  {
    v118 = *(v178 + 1288);
    v15 = *(v178 + 1248);
    v117 = *(v178 + 1176);
    v116 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v118(v15, v116, v117);
    swift_endAccess();
    v120 = Logger.logObject.getter();
    v119 = static os_log_type_t.debug.getter();
    v121 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v120, v119))
    {
      v112 = static UnsafeMutablePointer.allocate(capacity:)();
      v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v113 = createStorage<A>(capacity:type:)(0, v111, v111);
      v114 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v178 + 904) = v112;
      *(v178 + 912) = v113;
      *(v178 + 920) = v114;
      serialize(_:at:)(0, (v178 + 904));
      serialize(_:at:)(0, (v178 + 904));
      *(v178 + 928) = v121;
      v115 = swift_task_alloc();
      v115[2] = v178 + 904;
      v115[3] = v178 + 912;
      v115[4] = v178 + 920;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v156)
      {
      }

      _os_log_impl(&dword_269912000, v120, v119, "Searching for discrete min, max and average for data", v112, 2u);
      destroyStorage<A>(_:count:)(v113, 0, v111);
      destroyStorage<A>(_:count:)(v114, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v112, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v110 = *(v178 + 1312);
    v108 = *(v178 + 1248);
    v109 = *(v178 + 1176);
    MEMORY[0x277D82BD8](v120);
    v110(v108, v109);
    v16 = swift_task_alloc();
    *(v178 + 1472) = v16;
    *v16 = *(v178 + 672);
    v16[1] = HealthKitFetcher.query(start:end:);
    v17 = *(v178 + 1120);
    v18 = *(v178 + 1112);
    v19 = *(v178 + 1056);
    v20 = *(v178 + 1048);
    v21 = *(v178 + 1040);
    v22 = *(v178 + 1032);

    return HealthKitFetcher.getDiscreteStats(startDate:endDate:)(v17, v18, v22, v21, v20, v19);
  }
}

{
  v49 = v0;
  v1 = v0[194];
  v2 = *(v0 + 192);
  v21 = v2;
  *(v0 + 84) = v0;
  [v2 setAverage_];
  MEMORY[0x277D82BD8](v21);
  v22 = *(v0 + 195);
  v31 = *(v0 + 190);
  v28 = *(v0 + 141);
  v23 = *(v0 + 137);
  v26 = *(v0 + 136);
  swift_beginAccess();
  v35 = *(v0 + 87);
  MEMORY[0x277D82BE0](v35);
  swift_endAccess();
  v24 = [v31 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v27 = *(v23 + 8);
  v27(v28, v26);
  MEMORY[0x277D82BD8](v24);
  [v35 setSampleStartDate_];
  MEMORY[0x277D82BD8](isa);
  swift_beginAccess();
  swift_endAccess();
  v29 = [v31 endDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = Date._bridgeToObjectiveC()().super.isa;
  v27(v28, v26);
  MEMORY[0x277D82BD8](v29);
  [v35 setSampleEndDate_];
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v31);
  v34 = *(v0 + 161);
  v3 = *(v0 + 151);
  v33 = *(v0 + 147);
  v32 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v34(v3, v32, v33);
  swift_endAccess();
  MEMORY[0x277D82BE0](v35);
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  oslog = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();
  v38 = swift_allocObject();
  *(v38 + 16) = 32;
  v39 = swift_allocObject();
  *(v39 + 16) = 8;
  v37 = swift_allocObject();
  *(v37 + 16) = partial apply for specialized implicit closure #12 in HealthKitFetcher.query(start:end:);
  *(v37 + 24) = v36;
  v40 = swift_allocObject();
  *(v40 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v40 + 24) = v37;
  _allocateUninitializedArray<A>(_:)();
  v41 = v4;

  *v41 = partial apply for closure #1 in OSLogArguments.append(_:);
  v41[1] = v38;

  v41[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v41[3] = v39;

  v41[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v41[5] = v40;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v43))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v18 = createStorage<A>(capacity:type:)(0, v16, v16);
    v19 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v44 = buf;
    v45 = v18;
    v46 = v19;
    serialize(_:at:)(2, &v44);
    serialize(_:at:)(1, &v44);
    v47 = partial apply for closure #1 in OSLogArguments.append(_:);
    v48 = v38;
    closure #1 in osLogInternal(_:log:type:)(&v47, &v44, &v45, &v46);
    if (v22)
    {
    }

    v47 = partial apply for closure #1 in OSLogArguments.append(_:);
    v48 = v39;
    closure #1 in osLogInternal(_:log:type:)(&v47, &v44, &v45, &v46);
    v47 = partial apply for closure #1 in OSLogArguments.append(_:);
    v48 = v40;
    closure #1 in osLogInternal(_:log:type:)(&v47, &v44, &v45, &v46);
    _os_log_impl(&dword_269912000, oslog, v43, "Returning response: %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v18, 0, v16);
    destroyStorage<A>(_:count:)(v19, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v15 = v20[175];
  v9 = v20[164];
  v7 = v20[151];
  v8 = v20[147];
  v12 = v20[140];
  v11 = v20[139];
  v13 = v20[136];
  v10 = v20[137];
  MEMORY[0x277D82BD8](oslog);
  v9(v7, v8);
  swift_beginAccess();
  swift_endAccess();
  v14 = *(v10 + 8);
  v14(v11, v13);
  v14(v12, v13);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v20[87]);

  v6 = *(v20[84] + 8);

  return v6(v35);
}

{
  v4 = v0[167];
  v1 = v0[130];
  v0[84] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v0[87]);

  v2 = *(v0[84] + 8);

  return v2();
}

{
  v37 = v0;
  v31 = v0[174];
  v30 = v0[130];
  v1 = v0[129];
  v0[84] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v30);

  v0[175] = 0;
  v0[88] = 0;
  MEMORY[0x277D82BE0](0);
  v16 = v29[161];
  v2 = v29[149];
  v15 = v29[147];
  v20 = v29[132];
  v19 = v29[131];
  v18 = v29[130];
  v17 = v29[129];
  v14 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v16(v2, v14, v15);
  swift_endAccess();
  MEMORY[0x277D82BE0](v17);
  MEMORY[0x277D82BE0](v18);

  v21 = swift_allocObject();
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v21[5] = v20;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  v23 = swift_allocObject();
  *(v23 + 16) = 64;
  v24 = swift_allocObject();
  *(v24 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = partial apply for implicit closure #1 in HealthKitFetcher.query(start:end:);
  *(v22 + 24) = v21;
  v25 = swift_allocObject();
  *(v25 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v25 + 24) = v22;
  _allocateUninitializedArray<A>(_:)();
  v26 = v3;

  *v26 = partial apply for closure #1 in OSLogArguments.append(_:);
  v26[1] = v23;

  v26[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v26[3] = v24;

  v26[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v26[5] = v25;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v27, v28))
  {
    v11 = static UnsafeMutablePointer.allocate(capacity:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = createStorage<A>(capacity:type:)(1, v10, v10);
    v13 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v32 = v11;
    v33 = v12;
    v34 = v13;
    serialize(_:at:)(2, &v32);
    serialize(_:at:)(1, &v32);
    v35 = partial apply for closure #1 in OSLogArguments.append(_:);
    v36 = v23;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    v35 = partial apply for closure #1 in OSLogArguments.append(_:);
    v36 = v24;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    v35 = partial apply for closure #1 in OSLogArguments.append(_:);
    v36 = v25;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    _os_log_impl(&dword_269912000, v27, v28, "Failed to get units for %@", v11, 0xCu);
    destroyStorage<A>(_:count:)(v12, 1, v10);
    destroyStorage<A>(_:count:)(v13, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v11, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v8 = v29[164];
  v6 = v29[149];
  v7 = v29[147];
  MEMORY[0x277D82BD8](v27);
  v8(v6, v7);
  v9 = GetHealthQuantityIntentResponse.__allocating_init(code:userActivity:)(5, 0);
  MEMORY[0x277D82BD8](0);
  MEMORY[0x277D82BD8](v29[87]);

  v4 = *(v29[84] + 8);

  return v4(v9);
}

{
  v3 = v0[175];
  v0[84] = v0;
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v0[87]);

  v1 = *(v0[84] + 8);

  return v1();
}

{
  v8 = v0[175];
  v5 = v0[140];
  v1 = v0[139];
  v2 = v0[137];
  v6 = v0[136];
  v0[84] = v0;
  v7 = *(v2 + 8);
  v7(v1);
  (v7)(v5, v6);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v0[87]);

  v3 = *(v0[84] + 8);

  return v3();
}

{
  v8 = v0[175];
  v5 = v0[140];
  v1 = v0[139];
  v2 = v0[137];
  v6 = v0[136];
  v0[84] = v0;
  v7 = *(v2 + 8);
  v7(v1);
  (v7)(v5, v6);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v0[87]);

  v3 = *(v0[84] + 8);

  return v3();
}

{
  v1 = v0[192];
  v4 = v0[190];
  v10 = v0[175];
  v7 = v0[140];
  v6 = v0[139];
  v5 = v0[137];
  v8 = v0[136];
  v0[84] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v4);
  v9 = *(v5 + 8);
  v9(v6, v8);
  v9(v7, v8);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v0[87]);

  v2 = *(v0[84] + 8);

  return v2();
}