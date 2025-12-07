double partial apply for closure #1 in CAFDriveModeObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine22CAFDriveModeObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFGearRecommendationObservable.gearShiftRecommendation.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFGearRecommendationObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFGearRecommendationObservable.$gearShiftRecommendation.getter()
{

  specialized SafePublished.projectedValue.getter();
  v1 = v0;

  return v1;
}

uint64_t CAFGearRecommendationObservable._description.getter()
{
  if ([*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFGearRecommendationObservable_observed) registeredForGearShiftRecommendation])
  {
    CAFGearRecommendationObservable.gearShiftRecommendation.getter();
    v1 = dispatch thunk of CustomStringConvertible.description.getter();
    v3 = v2;
  }

  else
  {
    v3 = 0xEE003E6465726574;
    v1 = 0x73696765726E753CLL;
  }

  _StringGuts.grow(_:)(69);
  MEMORY[0x245D0A530](0xD000000000000022, 0x800000024230E5C0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD00000000000001CLL, 0x800000024230E5F0);
  MEMORY[0x245D0A530](v1, v3);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFGearRecommendationObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine31CAFGearRecommendationObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFGearRecommendationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine31CAFGearRecommendationObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFGearRecommendationObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFGearRecommendationObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFGearRecommendationObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine31CAFGearRecommendationObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine31CAFGearRecommendationObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine31CAFGearRecommendationObservable__gearShiftRecommendation;
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFGearRecommendationObservableCs4Int8VGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFGearRecommendationObservableCs4Int8VGMR);
  swift_allocObject();
  *&v2[v7] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(KeyPath);
  *&v2[OBJC_IVAR____TtC10CAFCombine31CAFGearRecommendationObservable_observed] = a1;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for CAFGearRecommendationObservable();
  v9 = a1;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  [v9 registerObserver_];

  return v10;
}

uint64_t CAFGearRecommendationObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFGearRecommendationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFGearRecommendationObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine31CAFGearRecommendationObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFGearRecommendationObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFGearRecommendationObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFGearRecommendationObservable@<X0>(void *a1@<X8>)
{
  result = CAFGearRecommendationObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFGearRecommendationObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFGearRecommendationObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFGearRecommendationObservable.gearRecommendationService(_:didUpdateGearShiftRecommendation:)(uint64_t a1, unsigned __int8 a2)
{

  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFGearRecommendationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFGearRecommendationObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFGearRecommendationObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFGearRecommendation()
{
  result = lazy cache variable for type metadata for CAFGearRecommendation;
  if (!lazy cache variable for type metadata for CAFGearRecommendation)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFGearRecommendation);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFGearRecommendationObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFGearRecommendationObservable and conformance CAFGearRecommendationObservable(&lazy protocol witness table cache variable for type CAFGearRecommendationObservable and conformance CAFGearRecommendationObservable, a2, type metadata accessor for CAFGearRecommendationObservable, &protocol conformance descriptor for CAFGearRecommendationObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFGearRecommendationObservable and conformance CAFGearRecommendationObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFGearRecommendationObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine31CAFGearRecommendationObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFTransmissionStatusObservable.transmissionMode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFTransmissionStatusObservable_observed);

  v2 = v1;
  OUTLINED_FUNCTION_231(v2, v3, v4, v5, v6, v7, v8, v9, v1);

  return v11;
}

uint64_t CAFTransmissionStatusObservable.gearPosition.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFTransmissionStatusObservable_observed);

  v2 = v1;
  OUTLINED_FUNCTION_231(v2, v3, v4, v5, v6, v7, v8, v9, v1);

  return v11;
}

uint64_t CAFTransmissionStatusObservable.$transmissionMode.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t CAFTransmissionStatusObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFTransmissionStatusObservable_observed);
  v4 = 0x73696765726E753CLL;
  v5 = 0xEE003E6465726574;
  if ([v3 registeredForTransmissionMode])
  {
    CAFTransmissionStatusObservable.transmissionMode.getter();
    v6 = NSStringFromTransmissionMode();
    if (v6)
    {
      v7 = v6;
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v8;
    }

    else
    {
      v5 = 0xE900000000000029;
      v4 = 0x6E776F6E6B6E7528;
    }
  }

  if ([v3 registeredForGearPosition])
  {
    CAFTransmissionStatusObservable.gearPosition.getter();
    v2 = dispatch thunk of CustomStringConvertible.description.getter();
    v1 = v9;
  }

  _StringGuts.grow(_:)(80);
  MEMORY[0x245D0A530](0xD000000000000022, 0x800000024230E6A0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000015, 0x800000024230E6D0);
  MEMORY[0x245D0A530](v4, v5);

  MEMORY[0x245D0A530](0xD000000000000010, 0x800000024230E6F0);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFTransmissionStatusObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine31CAFTransmissionStatusObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFTransmissionStatusObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine31CAFTransmissionStatusObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFTransmissionStatusObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFTransmissionStatusObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFTransmissionStatusObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine31CAFTransmissionStatusObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine31CAFTransmissionStatusObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine31CAFTransmissionStatusObservable__transmissionMode;
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFTransmissionStatusObservableCSo0F4ModeVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFTransmissionStatusObservableCSo0F4ModeVGMR);
  v9 = swift_allocObject();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)(KeyPath, v9, v10, v11, v12, v13, v14, v15, v22.receiver, v22.super_class, v23, v24, v25, v26, vars0, vars8);
  *&v2[v7] = v16;
  v17 = OBJC_IVAR____TtC10CAFCombine31CAFTransmissionStatusObservable__gearPosition;
  v18 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFTransmissionStatusObservableCs5UInt8VGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFTransmissionStatusObservableCs5UInt8VGMR);
  swift_allocObject();
  *&v2[v17] = specialized SafePublished.init(observedValuekeypath:)(v18);
  *&v2[OBJC_IVAR____TtC10CAFCombine31CAFTransmissionStatusObservable_observed] = a1;
  v22.receiver = v2;
  v22.super_class = type metadata accessor for CAFTransmissionStatusObservable();
  v19 = a1;
  v20 = objc_msgSendSuper2(&v22, sel_init);
  [v19 registerObserver_];

  return v20;
}

uint64_t CAFTransmissionStatusObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFTransmissionStatusObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFTransmissionStatusObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine31CAFTransmissionStatusObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFTransmissionStatusObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFTransmissionStatusObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFTransmissionStatusObservable@<X0>(void *a1@<X8>)
{
  result = CAFTransmissionStatusObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFTransmissionStatusObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFTransmissionStatusObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFTransmissionStatusObservable.transmissionStatusService(_:didUpdateTransmissionMode:)(uint64_t a1, unsigned __int8 a2, void *a3, void (*a4)(void))
{

  a4(a2);
}

uint64_t CAFTransmissionStatusObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFTransmissionStatusObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFTransmissionStatusObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFTransmissionStatus()
{
  result = lazy cache variable for type metadata for CAFTransmissionStatus;
  if (!lazy cache variable for type metadata for CAFTransmissionStatus)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFTransmissionStatus);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFTransmissionStatusObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFTransmissionStatusObservable and conformance CAFTransmissionStatusObservable(&lazy protocol witness table cache variable for type CAFTransmissionStatusObservable and conformance CAFTransmissionStatusObservable, a2, type metadata accessor for CAFTransmissionStatusObservable, &protocol conformance descriptor for CAFTransmissionStatusObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFTransmissionStatusObservable and conformance CAFTransmissionStatusObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFTransmissionStatusObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine31CAFTransmissionStatusObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFEnginePowerLevel.powerStateBridged.getter()
{
  v1 = [v0 hasPowerState];
  v2 = v1;
  if (v1)
  {
    v1 = [v0 powerState];
  }

  return v1 | ((v2 ^ 1) << 8);
}

uint64_t CAFEnginePowerLevelObservable.powerLevel.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine29CAFEnginePowerLevelObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();
}

uint64_t CAFEnginePowerLevelObservable.powerState.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine29CAFEnginePowerLevelObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4 | (v5 << 8);
}

uint64_t CAFEnginePowerLevelObservable.$powerLevel.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t CAFEnginePowerLevelObservable._description.getter()
{
  v1 = v0;
  v2 = 0xEE003E6465726574;
  v3 = 0x73696765726E753CLL;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgMR);
  MEMORY[0x28223BE20](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC10CAFCombine29CAFEnginePowerLevelObservable_observed);
  v10 = [v9 registeredForPowerLevel];
  v25 = 0x73696765726E753CLL;
  v11 = 0xEE003E6465726574;
  if (v10)
  {
    CAFEnginePowerLevelObservable.powerLevel.getter();
    lazy protocol witness table accessor for type Measurement<CAFUnitPercent> and conformance Measurement<A>();
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v12;
    (*(v6 + 8))(v8, v5);
  }

  v24 = v11;
  v13 = 0x73696765726E753CLL;
  v14 = 0xEE003E6465726574;
  if ([v9 registeredForPowerLevelMarkerAvailableMin])
  {
    CAFEnginePowerLevelObservable.powerLevelMarkerAvailableMin.getter();
    v13 = String.init<A>(describing:)();
    v14 = v15;
  }

  v16 = [v9 registeredForPowerLevelMarkerAvailableMax];
  v17 = 0x73696765726E753CLL;
  v18 = 0xEE003E6465726574;
  if (v16)
  {
    CAFEnginePowerLevelObservable.powerLevelMarkerAvailableMax.getter();
    v17 = String.init<A>(describing:)();
    v18 = v19;
  }

  v20 = v17;
  if ([v9 registeredForPowerState])
  {
    LOWORD(v27) = CAFEnginePowerLevelObservable.powerState.getter() & 0x1FF;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CAFPowerStateVSgMd, &_sSo13CAFPowerStateVSgMR);
    v3 = String.init<A>(describing:)();
    v2 = v21;
  }

  v27 = 0;
  v28 = 0xE000000000000000;
  _StringGuts.grow(_:)(138);
  OUTLINED_FUNCTION_1_33();
  v26 = v1;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x7265776F70207B20, 0xEF203A6C6576654CLL);
  MEMORY[0x245D0A530](v25, v24);

  OUTLINED_FUNCTION_1_33();
  MEMORY[0x245D0A530](v13, v14);

  OUTLINED_FUNCTION_1_33();
  MEMORY[0x245D0A530](v20, v18);

  MEMORY[0x245D0A530](0x537265776F70202CLL, 0xEE00203A65746174);
  MEMORY[0x245D0A530](v3, v2);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return v27;
}

uint64_t CAFEnginePowerLevelObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine29CAFEnginePowerLevelObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine29CAFEnginePowerLevelObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine29CAFEnginePowerLevelObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine29CAFEnginePowerLevelObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFEnginePowerLevelObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFEnginePowerLevelObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine29CAFEnginePowerLevelObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine29CAFEnginePowerLevelObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine29CAFEnginePowerLevelObservable__powerLevel;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA29CAFEnginePowerLevelObservableC10Foundation11MeasurementVySo14CAFUnitPercentCGGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA29CAFEnginePowerLevelObservableC10Foundation11MeasurementVySo14CAFUnitPercentCGGMR);
  swift_allocObject();
  v8 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(v8, v9, v10, v11, v12, v13, v14, v15, v39.receiver, v39.super_class, v40, v41, v42, v43, v44, v45, vars0, vars8);
  v16 = OBJC_IVAR____TtC10CAFCombine29CAFEnginePowerLevelObservable__powerLevelMarkerAvailableMin;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA29CAFEnginePowerLevelObservableC10Foundation11MeasurementVySo14CAFUnitPercentCGSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA29CAFEnginePowerLevelObservableC10Foundation11MeasurementVySo14CAFUnitPercentCGSgGMR);
  swift_allocObject();
  v17 = OUTLINED_FUNCTION_0_7();
  *&v2[v16] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v17, v18, v19, v20, v21, v22, v23, v24, v39.receiver, v39.super_class, v40, v41, v42, v43, v44, v45, vars0, vars8);
  v25 = OBJC_IVAR____TtC10CAFCombine29CAFEnginePowerLevelObservable__powerLevelMarkerAvailableMax;
  swift_getKeyPath();
  swift_allocObject();
  v26 = OUTLINED_FUNCTION_0_7();
  *&v2[v25] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v26, v27, v28, v29, v30, v31, v32, v33, v39.receiver, v39.super_class, v40, v41, v42, v43, v44, v45, vars0, vars8);
  v34 = OBJC_IVAR____TtC10CAFCombine29CAFEnginePowerLevelObservable__powerState;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA29CAFEnginePowerLevelObservableCSo13CAFPowerStateVSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA29CAFEnginePowerLevelObservableCSo13CAFPowerStateVSgGMR);
  swift_allocObject();
  v35 = OUTLINED_FUNCTION_0_7();
  *&v2[v34] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v35);
  *&v2[OBJC_IVAR____TtC10CAFCombine29CAFEnginePowerLevelObservable_observed] = a1;
  v39.receiver = v2;
  v39.super_class = type metadata accessor for CAFEnginePowerLevelObservable();
  v36 = a1;
  v37 = objc_msgSendSuper2(&v39, sel_init);
  [v36 registerObserver_];

  return v37;
}

uint64_t CAFEnginePowerLevelObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine29CAFEnginePowerLevelObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFEnginePowerLevelObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine29CAFEnginePowerLevelObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFEnginePowerLevelObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFEnginePowerLevelObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFEnginePowerLevelObservable@<X0>(void *a1@<X8>)
{
  result = CAFEnginePowerLevelObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFEnginePowerLevelObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFEnginePowerLevelObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFEnginePowerLevelObservable.enginePowerLevelService(_:didUpdatePowerLevel:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{

  a4(a2);
}

uint64_t @objc CAFEnginePowerLevelObservable.enginePowerLevelService(_:didUpdatePowerLevelMarkerAvailableMin:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  if (a4)
  {
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFUnitPercent, 0x277CF8770);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
    v13 = v11;
    v14 = 0;
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
    v13 = v11;
    v14 = 1;
  }

  __swift_storeEnumTagSinglePayload(v13, v14, 1, v12);
  v15 = a3;
  v16 = a1;
  a5();

  return outlined destroy of Measurement<CAFUnitPercent>?(v11);
}

uint64_t CAFEnginePowerLevelObservable.enginePowerLevelService(_:didUpdatePowerState:)(uint64_t a1, unsigned __int8 a2)
{

  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFEnginePowerLevelObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFEnginePowerLevelObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFEnginePowerLevelObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFEnginePowerLevel.powerLevel : CAFEnginePowerLevel(id *a1)
{
  v1 = [*a1 powerLevel];
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFUnitPercent, 0x277CF8770);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t key path getter for CAFEnginePowerLevel.powerLevelMarkerAvailableMin : CAFEnginePowerLevel@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFUnitPercent, 0x277CF8770);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);

  return __swift_storeEnumTagSinglePayload(a3, v6, 1, v7);
}

uint64_t key path getter for CAFEnginePowerLevel.powerStateBridged : CAFEnginePowerLevel@<X0>(_BYTE *a1@<X8>)
{
  result = CAFEnginePowerLevel.powerStateBridged.getter();
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type CAFEnginePowerLevel and conformance CAFEnginePowerLevel()
{
  result = lazy protocol witness table cache variable for type CAFEnginePowerLevel and conformance CAFEnginePowerLevel;
  if (!lazy protocol witness table cache variable for type CAFEnginePowerLevel and conformance CAFEnginePowerLevel)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFEnginePowerLevel, 0x277CF8468);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFEnginePowerLevel and conformance CAFEnginePowerLevel);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFEnginePowerLevelObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFEnginePowerLevelObservable and conformance CAFEnginePowerLevelObservable(&lazy protocol witness table cache variable for type CAFEnginePowerLevelObservable and conformance CAFEnginePowerLevelObservable, &protocol conformance descriptor for CAFEnginePowerLevelObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFEnginePowerLevelObservable and conformance CAFEnginePowerLevelObservable(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFEnginePowerLevelObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of Measurement<CAFUnitPercent>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double partial apply for closure #1 in CAFEnginePowerLevelObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine29CAFEnginePowerLevelObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

unint64_t lazy protocol witness table accessor for type Measurement<CAFUnitPercent> and conformance Measurement<A>()
{
  result = lazy protocol witness table cache variable for type Measurement<CAFUnitPercent> and conformance Measurement<A>;
  if (!lazy protocol witness table cache variable for type Measurement<CAFUnitPercent> and conformance Measurement<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Measurement<CAFUnitPercent> and conformance Measurement<A>);
  }

  return result;
}

void OUTLINED_FUNCTION_1_33()
{

  JUMPOUT(0x245D0A530);
}

uint64_t CAFEnginePowerObservable.power.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine24CAFEnginePowerObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();
}

uint64_t CAFEnginePowerObservable.powerState.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFEnginePowerObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4 | (v5 << 8);
}

uint64_t CAFEnginePowerObservable.$power.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t CAFEnginePowerObservable._description.getter()
{
  v1 = v0;
  v2 = 0xEE003E6465726574;
  v3 = 0x73696765726E753CLL;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, _s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  OUTLINED_FUNCTION_30();
  v7 = v6;
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  v11 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFEnginePowerObservable_observed);
  v12 = 0xEE003E6465726574;
  if ([v11 registeredForPower])
  {
    v12 = v1;
    CAFEnginePowerObservable.power.getter();
    v13 = lazy protocol witness table accessor for type Measurement<NSUnitPower> and conformance Measurement<A>();
    OUTLINED_FUNCTION_8_3(v13);
    v14 = OUTLINED_FUNCTION_5_13();
    v15(v14);
  }

  v39 = 0x73696765726E753CLL;
  v40 = v12;
  v16 = 0xEE003E6465726574;
  if ([v11 registeredForPowerMin])
  {
    v16 = v1;
    CAFEnginePowerObservable.powerMin.getter();
    v17 = lazy protocol witness table accessor for type Measurement<NSUnitPower> and conformance Measurement<A>();
    OUTLINED_FUNCTION_8_3(v17);
    v18 = OUTLINED_FUNCTION_5_13();
    v19(v18);
  }

  v37 = 0x73696765726E753CLL;
  v38 = v16;
  v20 = 0x73696765726E753CLL;
  v21 = 0xEE003E6465726574;
  if ([v11 registeredForPowerMax])
  {
    CAFEnginePowerObservable.powerMax.getter();
    v22 = lazy protocol witness table accessor for type Measurement<NSUnitPower> and conformance Measurement<A>();
    v20 = OUTLINED_FUNCTION_8_3(v22);
    v21 = v23;
    (*(v7 + 8))(v10, v5);
  }

  v35 = v20;
  v24 = [v11 registeredForPowerMarkerAvailableMin];
  v25 = 0x73696765726E753CLL;
  v26 = 0xEE003E6465726574;
  if (v24)
  {
    CAFEnginePowerObservable.powerMarkerAvailableMin.getter();
    v25 = String.init<A>(describing:)();
    v26 = v27;
  }

  v28 = [v11 registeredForPowerMarkerAvailableMax];
  v29 = 0x73696765726E753CLL;
  v30 = 0xEE003E6465726574;
  if (v28)
  {
    CAFEnginePowerObservable.powerMarkerAvailableMax.getter();
    v29 = String.init<A>(describing:)();
    v30 = v31;
  }

  v36 = v29;
  if ([v11 registeredForPowerState])
  {
    LOWORD(v42) = CAFEnginePowerObservable.powerState.getter() & 0x1FF;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CAFPowerStateVSgMd, &_sSo13CAFPowerStateVSgMR);
    v3 = String.init<A>(describing:)();
    v2 = v32;
  }

  v42 = 0;
  v43 = 0xE000000000000000;
  _StringGuts.grow(_:)(146);
  OUTLINED_FUNCTION_4_18();
  v41 = v1;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x7265776F70207B20, 0xEA0000000000203ALL);
  MEMORY[0x245D0A530](v39, v40);

  MEMORY[0x245D0A530](0x4D7265776F70202CLL, 0xEC000000203A6E69);
  MEMORY[0x245D0A530](v37, v38);

  MEMORY[0x245D0A530](0x4D7265776F70202CLL, 0xEC000000203A7861);
  MEMORY[0x245D0A530](v35, v21);

  OUTLINED_FUNCTION_4_18();
  MEMORY[0x245D0A530](v34, v26);

  OUTLINED_FUNCTION_4_18();
  MEMORY[0x245D0A530](v36, v30);

  MEMORY[0x245D0A530](0x537265776F70202CLL, 0xEE00203A65746174);
  MEMORY[0x245D0A530](v3, v2);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return v42;
}

uint64_t CAFEnginePowerObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine24CAFEnginePowerObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFEnginePowerObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine24CAFEnginePowerObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine24CAFEnginePowerObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFEnginePowerObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFEnginePowerObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine24CAFEnginePowerObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine24CAFEnginePowerObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine24CAFEnginePowerObservable__power;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFEnginePowerObservableC10Foundation11MeasurementVySo06NSUnitG0CGGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFEnginePowerObservableC10Foundation11MeasurementVySo06NSUnitG0CGGMR);
  swift_allocObject();
  v8 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v8, v9, v10, v11, v12, v13, v14, v15, v43.receiver, v43.super_class, v44, v45, v46, v47, v48, v49, vars0, vars8);
  v16 = OBJC_IVAR____TtC10CAFCombine24CAFEnginePowerObservable__powerMin;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v17 = OUTLINED_FUNCTION_0_7();
  *&v2[v16] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v17, v18, v19, v20, v21, v22, v23, v24, v43.receiver, v43.super_class, v44, v45, v46, v47, v48, v49, vars0, vars8);
  v25 = OBJC_IVAR____TtC10CAFCombine24CAFEnginePowerObservable__powerMax;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v26 = OUTLINED_FUNCTION_0_7();
  *&v2[v25] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v26, v27, v28, v29, v30, v31, v32, v33, v43.receiver, v43.super_class, v44, v45, v46, v47, v48, v49, vars0, vars8);
  v34 = OBJC_IVAR____TtC10CAFCombine24CAFEnginePowerObservable__powerMarkerAvailableMin;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFEnginePowerObservableC10Foundation11MeasurementVySo06NSUnitG0CGSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFEnginePowerObservableC10Foundation11MeasurementVySo06NSUnitG0CGSgGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v34] = v35;
  v36 = OBJC_IVAR____TtC10CAFCombine24CAFEnginePowerObservable__powerMarkerAvailableMax;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v36] = v37;
  v38 = OBJC_IVAR____TtC10CAFCombine24CAFEnginePowerObservable__powerState;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFEnginePowerObservableCSo13CAFPowerStateVSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFEnginePowerObservableCSo13CAFPowerStateVSgGMR);
  swift_allocObject();
  v39 = OUTLINED_FUNCTION_0_7();
  *&v2[v38] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v39);
  *&v2[OBJC_IVAR____TtC10CAFCombine24CAFEnginePowerObservable_observed] = a1;
  v43.receiver = v2;
  v43.super_class = type metadata accessor for CAFEnginePowerObservable();
  v40 = a1;
  v41 = objc_msgSendSuper2(&v43, sel_init);
  [v40 registerObserver_];

  return v41;
}

uint64_t CAFEnginePowerObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFEnginePowerObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFEnginePowerObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine24CAFEnginePowerObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFEnginePowerObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFEnginePowerObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFEnginePowerObservable@<X0>(void *a1@<X8>)
{
  result = CAFEnginePowerObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFEnginePowerObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFEnginePowerObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t @objc CAFEnginePowerObservable.enginePowerService(_:didUpdatePower:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, _s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  OUTLINED_FUNCTION_30();
  v10 = v9;
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitPower, 0x277CCAE30);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = a1;
  a5();

  return (*(v10 + 8))(v13, v8);
}

uint64_t CAFEnginePowerObservable.enginePowerService(_:didUpdatePower:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{

  a4(a2);
}

uint64_t @objc CAFEnginePowerObservable.enginePowerService(_:didUpdatePowerMarkerAvailableMin:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  if (a4)
  {
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitPower, 0x277CCAE30);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, _s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
    v13 = v11;
    v14 = 0;
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, _s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
    v13 = v11;
    v14 = 1;
  }

  __swift_storeEnumTagSinglePayload(v13, v14, 1, v12);
  v15 = a3;
  v16 = a1;
  a5();

  return outlined destroy of Measurement<NSUnitPower>?(v11);
}

uint64_t CAFEnginePowerObservable.enginePowerService(_:didUpdatePowerState:)(uint64_t a1, unsigned __int8 a2)
{

  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFEnginePowerObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFEnginePowerObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFEnginePowerObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFEnginePower.power : CAFEnginePower(id *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v4 = [*a1 *a4];
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitPower, 0x277CCAE30);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t key path getter for CAFEnginePower.powerMarkerAvailableMin : CAFEnginePower@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitPower, 0x277CCAE30);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, _s10Foundation11MeasurementVySo11NSUnitPowerCGMR);

  return __swift_storeEnumTagSinglePayload(a3, v6, 1, v7);
}

unint64_t lazy protocol witness table accessor for type CAFEnginePower and conformance CAFEnginePower()
{
  result = lazy protocol witness table cache variable for type CAFEnginePower and conformance CAFEnginePower;
  if (!lazy protocol witness table cache variable for type CAFEnginePower and conformance CAFEnginePower)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFEnginePower, 0x277CF8460);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFEnginePower and conformance CAFEnginePower);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFEnginePowerObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFEnginePowerObservable and conformance CAFEnginePowerObservable(&lazy protocol witness table cache variable for type CAFEnginePowerObservable and conformance CAFEnginePowerObservable, &protocol conformance descriptor for CAFEnginePowerObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFEnginePowerObservable and conformance CAFEnginePowerObservable(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFEnginePowerObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of Measurement<NSUnitPower>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double partial apply for closure #1 in CAFEnginePowerObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine24CAFEnginePowerObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

void OUTLINED_FUNCTION_4_18()
{

  JUMPOUT(0x245D0A530);
}

uint64_t OUTLINED_FUNCTION_8_3(uint64_t a1)
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t CAFExteriorConditions.icyConditionsBridged.getter()
{
  v1 = [v0 hasIcyConditions];
  v2 = v1;
  if (v1)
  {
    v1 = [v0 icyConditions];
  }

  return v1 | ((v2 ^ 1) << 8);
}

uint64_t CAFExteriorConditionsObservable.icyConditions.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFExteriorConditionsObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4 | (v5 << 8);
}

uint64_t CAFExteriorConditionsObservable.temperature.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine31CAFExteriorConditionsObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();
}

uint64_t CAFExteriorConditionsObservable.$temperature.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t CAFExteriorConditionsObservable._description.getter()
{
  v1 = v0;
  v2 = 0xEE003E6465726574;
  v3 = 0x73696765726E753CLL;
  v17[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17CAFUnitAirQualityCGSgMd, &_s10Foundation11MeasurementVySo17CAFUnitAirQualityCGSgMR);
  MEMORY[0x28223BE20](v17[0]);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFExteriorConditionsObservable_observed);
  v9 = 0x73696765726E753CLL;
  v10 = 0xEE003E6465726574;
  if ([v8 registeredForTemperature])
  {
    CAFExteriorConditionsObservable.temperature.getter();
    lazy protocol witness table accessor for type Measurement<NSUnitTemperature> and conformance Measurement<A>();
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v11;
    (*(v5 + 8))(v7, v4);
  }

  v12 = 0x73696765726E753CLL;
  v13 = 0xEE003E6465726574;
  if ([v8 registeredForIcyConditions])
  {
    LOWORD(v18) = CAFExteriorConditionsObservable.icyConditions.getter() & 0x1FF;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16CAFIcyConditionsVSgMd, &_sSo16CAFIcyConditionsVSgMR);
    v12 = String.init<A>(describing:)();
    v13 = v14;
  }

  if ([v8 registeredForAQI])
  {
    CAFExteriorConditionsObservable.aqi.getter();
    v3 = String.init<A>(describing:)();
    v2 = v15;
  }

  v18 = 0;
  v19 = 0xE000000000000000;
  _StringGuts.grow(_:)(85);
  MEMORY[0x245D0A530](0xD000000000000022, 0x800000024230EA20);
  v17[1] = v1;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000010, 0x800000024230EA50);
  MEMORY[0x245D0A530](v9, v10);

  MEMORY[0x245D0A530](0xD000000000000011, 0x800000024230EA70);
  MEMORY[0x245D0A530](v12, v13);

  MEMORY[0x245D0A530](0x203A697161202CLL, 0xE700000000000000);
  MEMORY[0x245D0A530](v3, v2);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return v18;
}

uint64_t CAFExteriorConditionsObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine31CAFExteriorConditionsObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFExteriorConditionsObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine31CAFExteriorConditionsObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFExteriorConditionsObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFExteriorConditionsObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

uint64_t CAFExteriorConditionsObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFExteriorConditionsObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFExteriorConditionsObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine31CAFExteriorConditionsObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFExteriorConditionsObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFExteriorConditionsObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFExteriorConditionsObservable@<X0>(void *a1@<X8>)
{
  result = CAFExteriorConditionsObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFExteriorConditionsObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFExteriorConditionsObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFExteriorConditionsObservable.exteriorConditionsService(_:didUpdateIcyConditions:)(uint64_t a1, unsigned __int8 a2)
{

  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFExteriorConditionsObservable.exteriorConditionsService(_:didUpdateTemperature:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{

  a4(a2);
}

uint64_t CAFExteriorConditionsObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFExteriorConditionsObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFExteriorConditionsObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFExteriorConditions.temperature : CAFExteriorConditions(id *a1)
{
  v1 = [*a1 temperature];
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitTemperature, 0x277CCAE48);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t key path getter for CAFExteriorConditions.icyConditionsBridged : CAFExteriorConditions@<X0>(_BYTE *a1@<X8>)
{
  result = CAFExteriorConditions.icyConditionsBridged.getter();
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

uint64_t key path getter for CAFExteriorConditions.aqi : CAFExteriorConditions@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 aqi];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFUnitAirQuality, 0x277CF8760);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17CAFUnitAirQualityCGMd, _s10Foundation11MeasurementVySo17CAFUnitAirQualityCGMR);

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v6);
}

unint64_t lazy protocol witness table accessor for type CAFExteriorConditions and conformance CAFExteriorConditions()
{
  result = lazy protocol witness table cache variable for type CAFExteriorConditions and conformance CAFExteriorConditions;
  if (!lazy protocol witness table cache variable for type CAFExteriorConditions and conformance CAFExteriorConditions)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFExteriorConditions, 0x277CF8498);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFExteriorConditions and conformance CAFExteriorConditions);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFExteriorConditionsObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFExteriorConditionsObservable and conformance CAFExteriorConditionsObservable(&lazy protocol witness table cache variable for type CAFExteriorConditionsObservable and conformance CAFExteriorConditionsObservable, &protocol conformance descriptor for CAFExteriorConditionsObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFExteriorConditionsObservable and conformance CAFExteriorConditionsObservable(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFExteriorConditionsObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of Measurement<CAFUnitAirQuality>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17CAFUnitAirQualityCGSgMd, &_s10Foundation11MeasurementVySo17CAFUnitAirQualityCGSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double partial apply for closure #1 in CAFExteriorConditionsObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine31CAFExteriorConditionsObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFInteriorConditionsObservable.aqi.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFInteriorConditionsObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();
}

uint64_t CAFInteriorConditionsObservable.$aqi.getter()
{

  specialized SafeReadOnlyPublished.projectedValue.getter();
  v1 = v0;

  return v1;
}

uint64_t CAFInteriorConditionsObservable._description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17CAFUnitAirQualityCGSgMd, &_s10Foundation11MeasurementVySo17CAFUnitAirQualityCGSgMR);
  MEMORY[0x28223BE20](v1);
  if ([*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFInteriorConditionsObservable_observed) registeredForAQI])
  {
    CAFInteriorConditionsObservable.aqi.getter();
    v2 = String.init<A>(describing:)();
    v4 = v3;
  }

  else
  {
    v4 = 0xEE003E6465726574;
    v2 = 0x73696765726E753CLL;
  }

  _StringGuts.grow(_:)(49);
  MEMORY[0x245D0A530](0xD000000000000022, 0x800000024230EB00);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x203A697161207B20, 0xE800000000000000);
  MEMORY[0x245D0A530](v2, v4);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFInteriorConditionsObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine31CAFInteriorConditionsObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFInteriorConditionsObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine31CAFInteriorConditionsObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFInteriorConditionsObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFInteriorConditionsObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

uint64_t CAFInteriorConditionsObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFInteriorConditionsObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFInteriorConditionsObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine31CAFInteriorConditionsObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFInteriorConditionsObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFInteriorConditionsObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFInteriorConditionsObservable@<X0>(void *a1@<X8>)
{
  result = CAFInteriorConditionsObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFInteriorConditionsObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFInteriorConditionsObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFInteriorConditionsObservable.interiorConditionsService(_:didUpdateAqi:)()
{

  specialized SafeReadOnlyPublished.setValue(_:)();
}

uint64_t CAFInteriorConditionsObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFInteriorConditionsObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFInteriorConditionsObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CAFInteriorConditions and conformance CAFInteriorConditions()
{
  result = lazy protocol witness table cache variable for type CAFInteriorConditions and conformance CAFInteriorConditions;
  if (!lazy protocol witness table cache variable for type CAFInteriorConditions and conformance CAFInteriorConditions)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFInteriorConditions, 0x277CF84F0);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFInteriorConditions and conformance CAFInteriorConditions);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFInteriorConditionsObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFInteriorConditionsObservable and conformance CAFInteriorConditionsObservable(&lazy protocol witness table cache variable for type CAFInteriorConditionsObservable and conformance CAFInteriorConditionsObservable, &protocol conformance descriptor for CAFInteriorConditionsObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFInteriorConditionsObservable and conformance CAFInteriorConditionsObservable(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFInteriorConditionsObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double partial apply for closure #1 in CAFInteriorConditionsObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine31CAFInteriorConditionsObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFFuelConsumptionObservable.fuelEfficiency.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine28CAFFuelConsumptionObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();
}

uint64_t CAFFuelConsumptionObservable.$fuelEfficiency.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t CAFFuelConsumptionObservable._description.getter()
{
  v1 = v0;
  v2 = 0xEE003E6465726574;
  v3 = 0x73696765726E753CLL;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGSgMd, _s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGSgMR);
  MEMORY[0x28223BE20](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGMd, &_s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - v7;
  v9 = *(v1 + OBJC_IVAR____TtC10CAFCombine28CAFFuelConsumptionObservable_observed);
  v10 = 0xEE003E6465726574;
  if ([v9 registeredForFuelEfficiency])
  {
    CAFFuelConsumptionObservable.fuelEfficiency.getter();
    lazy protocol witness table accessor for type Measurement<NSUnitFuelEfficiency> and conformance Measurement<A>();
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v11;
    (*(v6 + 8))(v8, v5);
  }

  v12 = 0x73696765726E753CLL;
  v13 = 0x73696765726E753CLL;
  v14 = 0xEE003E6465726574;
  if ([v9 registeredForAverageFuelEfficiency])
  {
    CAFFuelConsumptionObservable.averageFuelEfficiency.getter();
    v13 = String.init<A>(describing:)();
    v14 = v15;
  }

  if ([v9 registeredForFuelEfficiencyMax])
  {
    CAFFuelConsumptionObservable.fuelEfficiencyMax.getter();
    v12 = String.init<A>(describing:)();
    v2 = v16;
  }

  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(107);
  MEMORY[0x245D0A530](0xD00000000000001FLL, 0x800000024230EBF0);
  v18[1] = v1;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000013, 0x800000024230EC10);
  MEMORY[0x245D0A530](v18[0], v10);

  MEMORY[0x245D0A530](0xD000000000000019, 0x800000024230EC30);
  MEMORY[0x245D0A530](v13, v14);

  MEMORY[0x245D0A530](0xD000000000000015, 0x800000024230EC50);
  MEMORY[0x245D0A530](v12, v2);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return v19;
}

uint64_t CAFFuelConsumptionObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine28CAFFuelConsumptionObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFFuelConsumptionObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine28CAFFuelConsumptionObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine28CAFFuelConsumptionObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFFuelConsumptionObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFFuelConsumptionObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine28CAFFuelConsumptionObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine28CAFFuelConsumptionObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine28CAFFuelConsumptionObservable__fuelEfficiency;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFFuelConsumptionObservableC10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFFuelConsumptionObservableC10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v7] = v8;
  v9 = OBJC_IVAR____TtC10CAFCombine28CAFFuelConsumptionObservable__averageFuelEfficiency;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFFuelConsumptionObservableC10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFFuelConsumptionObservableC10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGSgGMR);
  swift_allocObject();
  v10 = OUTLINED_FUNCTION_0_7();
  *&v2[v9] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v10, v11, v12, v13, v14, v15, v16, v17, v30.receiver, v30.super_class, v31, v32, v33, v34, v35, v36, vars0, vars8);
  v18 = OBJC_IVAR____TtC10CAFCombine28CAFFuelConsumptionObservable__fuelEfficiencyMax;
  swift_getKeyPath();
  swift_allocObject();
  v19 = OUTLINED_FUNCTION_0_7();
  *&v2[v18] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v19, v20, v21, v22, v23, v24, v25, v26, v30.receiver, v30.super_class, v31, v32, v33, v34, v35, v36, vars0, vars8);
  *&v2[OBJC_IVAR____TtC10CAFCombine28CAFFuelConsumptionObservable_observed] = a1;
  v30.receiver = v2;
  v30.super_class = type metadata accessor for CAFFuelConsumptionObservable();
  v27 = a1;
  v28 = objc_msgSendSuper2(&v30, sel_init);
  [v27 registerObserver_];

  return v28;
}

uint64_t CAFFuelConsumptionObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFFuelConsumptionObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFFuelConsumptionObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine28CAFFuelConsumptionObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFFuelConsumptionObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFFuelConsumptionObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFFuelConsumptionObservable@<X0>(void *a1@<X8>)
{
  result = CAFFuelConsumptionObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFFuelConsumptionObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFFuelConsumptionObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFFuelConsumptionObservable.fuelConsumptionService(_:didUpdateFuelEfficiency:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{

  a4(a2);
}

uint64_t @objc CAFFuelConsumptionObservable.fuelConsumptionService(_:didUpdateAverageFuelEfficiency:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGSgMd, _s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  if (a4)
  {
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitFuelEfficiency, 0x277CCAE08);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGMd, &_s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGMR);
    v13 = v11;
    v14 = 0;
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGMd, &_s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGMR);
    v13 = v11;
    v14 = 1;
  }

  __swift_storeEnumTagSinglePayload(v13, v14, 1, v12);
  v15 = a3;
  v16 = a1;
  a5();

  return outlined destroy of Measurement<NSUnitFuelEfficiency>?(v11);
}

uint64_t CAFFuelConsumptionObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFFuelConsumptionObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFFuelConsumptionObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFFuelConsumption.fuelEfficiency : CAFFuelConsumption(id *a1)
{
  v1 = [*a1 fuelEfficiency];
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitFuelEfficiency, 0x277CCAE08);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t key path getter for CAFFuelConsumption.averageFuelEfficiency : CAFFuelConsumption@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitFuelEfficiency, 0x277CCAE08);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGMd, &_s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGMR);

  return __swift_storeEnumTagSinglePayload(a3, v6, 1, v7);
}

unint64_t lazy protocol witness table accessor for type CAFFuelConsumption and conformance CAFFuelConsumption()
{
  result = lazy protocol witness table cache variable for type CAFFuelConsumption and conformance CAFFuelConsumption;
  if (!lazy protocol witness table cache variable for type CAFFuelConsumption and conformance CAFFuelConsumption)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFFuelConsumption, 0x277CF84B8);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFFuelConsumption and conformance CAFFuelConsumption);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFFuelConsumptionObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFFuelConsumptionObservable and conformance CAFFuelConsumptionObservable(&lazy protocol witness table cache variable for type CAFFuelConsumptionObservable and conformance CAFFuelConsumptionObservable, &protocol conformance descriptor for CAFFuelConsumptionObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFFuelConsumptionObservable and conformance CAFFuelConsumptionObservable(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFFuelConsumptionObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of Measurement<NSUnitFuelEfficiency>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGSgMd, _s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double partial apply for closure #1 in CAFFuelConsumptionObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine28CAFFuelConsumptionObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

unint64_t lazy protocol witness table accessor for type Measurement<NSUnitFuelEfficiency> and conformance Measurement<A>()
{
  result = lazy protocol witness table cache variable for type Measurement<NSUnitFuelEfficiency> and conformance Measurement<A>;
  if (!lazy protocol witness table cache variable for type Measurement<NSUnitFuelEfficiency> and conformance Measurement<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGMd, &_s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Measurement<NSUnitFuelEfficiency> and conformance Measurement<A>);
  }

  return result;
}

uint64_t CAFFuelLevelObservable.fuelLevel.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine22CAFFuelLevelObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();
}

uint64_t CAFFuelLevelObservable.fuelLevelState.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine22CAFFuelLevelObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFFuelLevelObservable.$fuelLevel.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t CAFFuelLevelObservable._description.getter()
{
  v1 = v0;
  v2 = 0xEE003E6465726574;
  v3 = 0x73696765726E753CLL;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgMR);
  MEMORY[0x28223BE20](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC10CAFCombine22CAFFuelLevelObservable_observed);
  v10 = [v9 registeredForFuelLevel];
  v33 = 0x73696765726E753CLL;
  v11 = 0xEE003E6465726574;
  if (v10)
  {
    CAFFuelLevelObservable.fuelLevel.getter();
    lazy protocol witness table accessor for type Measurement<CAFUnitPercent> and conformance Measurement<A>();
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v12;
    (*(v6 + 8))(v8, v5);
  }

  v32 = v11;
  v13 = 0x73696765726E753CLL;
  v14 = 0xEE003E6465726574;
  if ([v9 registeredForFuelLevelState])
  {
    CAFFuelLevelObservable.fuelLevelState.getter();
    v15 = NSStringFromFuelLevelState();
    if (v15)
    {
      v16 = v15;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v17;
    }

    else
    {
      v13 = 0x6E776F6E6B6E7528;
      v14 = 0xE900000000000029;
    }
  }

  v18 = [v9 registeredForFuelLevelMarkerLow];
  v19 = 0x73696765726E753CLL;
  v20 = 0xEE003E6465726574;
  if (v18)
  {
    CAFFuelLevelObservable.fuelLevelMarkerLow.getter();
    v19 = String.init<A>(describing:)();
    v20 = v21;
  }

  v22 = 0x73696765726E753CLL;
  v23 = 0xEE003E6465726574;
  if ([v9 registeredForFillLevelLabel])
  {
    CAFFuelLevelObservable.fillLevelLabel.getter();
    v24 = NSStringFromFillLevelLabel();
    if (v24)
    {
      v25 = v24;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v26;
    }

    else
    {
      v22 = 0x6E776F6E6B6E7528;
      v23 = 0xE900000000000029;
    }
  }

  if ([v9 registeredForPortSideIndicator])
  {
    CAFFuelLevelObservable.portSideIndicator.getter();
    v27 = NSStringFromPortSideIndicator();
    if (v27)
    {
      v28 = v27;
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v2 = v29;
    }

    else
    {
      v3 = 0x6E776F6E6B6E7528;
      v2 = 0xE900000000000029;
    }
  }

  v35 = 0;
  v36 = 0xE000000000000000;
  _StringGuts.grow(_:)(133);
  MEMORY[0x245D0A530](0xD000000000000019, 0x800000024230ED30);
  v34 = v1;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x4C6C657566207B20, 0xEE00203A6C657665);
  MEMORY[0x245D0A530](v33, v32);

  OUTLINED_FUNCTION_2_26();
  MEMORY[0x245D0A530](v31, v14);

  MEMORY[0x245D0A530](0xD000000000000016, 0x800000024230ED70);
  MEMORY[0x245D0A530](v19, v20);

  OUTLINED_FUNCTION_2_26();
  MEMORY[0x245D0A530](v22, v23);

  MEMORY[0x245D0A530](0xD000000000000015, 0x800000024230D860);
  MEMORY[0x245D0A530](v3, v2);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return v35;
}

uint64_t CAFFuelLevelObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine22CAFFuelLevelObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine22CAFFuelLevelObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine22CAFFuelLevelObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine22CAFFuelLevelObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFFuelLevelObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

uint64_t CAFFuelLevelObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine22CAFFuelLevelObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFFuelLevelObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine22CAFFuelLevelObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFFuelLevelObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFFuelLevelObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFFuelLevelObservable@<X0>(void *a1@<X8>)
{
  result = CAFFuelLevelObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFFuelLevelObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFFuelLevelObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFFuelLevelObservable.fuelLevelService(_:didUpdateFuelLevel:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{

  a4(a2);
}

uint64_t CAFFuelLevelObservable.fuelLevelService(_:didUpdateFuelLevelState:)(uint64_t a1, unsigned __int8 a2, void *a3, void (*a4)(void))
{

  a4(a2);
}

uint64_t CAFFuelLevelObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFFuelLevelObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFFuelLevelObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFFuelLevel.fuelLevel : CAFFuelLevel(id *a1)
{
  v1 = [*a1 fuelLevel];
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFUnitPercent, 0x277CF8770);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t key path getter for CAFFuelLevel.fuelLevelMarkerLow : CAFFuelLevel@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 fuelLevelMarkerLow];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFUnitPercent, 0x277CF8770);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v6);
}

unint64_t lazy protocol witness table accessor for type CAFFuelLevel and conformance CAFFuelLevel()
{
  result = lazy protocol witness table cache variable for type CAFFuelLevel and conformance CAFFuelLevel;
  if (!lazy protocol witness table cache variable for type CAFFuelLevel and conformance CAFFuelLevel)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFFuelLevel, 0x277CF84C0);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFFuelLevel and conformance CAFFuelLevel);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFFuelLevelObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFFuelLevelObservable and conformance CAFFuelLevelObservable(&lazy protocol witness table cache variable for type CAFFuelLevelObservable and conformance CAFFuelLevelObservable, &protocol conformance descriptor for CAFFuelLevelObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFFuelLevelObservable and conformance CAFFuelLevelObservable(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFFuelLevelObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double partial apply for closure #1 in CAFFuelLevelObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine22CAFFuelLevelObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

void OUTLINED_FUNCTION_2_26()
{

  JUMPOUT(0x245D0A530);
}

uint64_t CAFFuelRemainingRangeObservable.distanceKM.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine31CAFFuelRemainingRangeObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();
}

uint64_t CAFFuelRemainingRangeObservable.hidden.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFFuelRemainingRangeObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFFuelRemainingRangeObservable.$distanceKM.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t CAFFuelRemainingRangeObservable._description.getter()
{
  if ([*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFFuelRemainingRangeObservable_observed) registeredForHidden])
  {
    CAFFuelRemainingRangeObservable.hidden.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v1 = String.init<A>(describing:)();
    v3 = v2;
  }

  else
  {
    v3 = 0xEE003E6465726574;
    v1 = 0x73696765726E753CLL;
  }

  _StringGuts.grow(_:)(52);
  MEMORY[0x245D0A530](0xD000000000000022, 0x800000024230EE40);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x6564646968207B20, 0xEB00000000203A6ELL);
  MEMORY[0x245D0A530](v1, v3);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFFuelRemainingRangeObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine31CAFFuelRemainingRangeObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFFuelRemainingRangeObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine31CAFFuelRemainingRangeObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFFuelRemainingRangeObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFFuelRemainingRangeObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFFuelRemainingRangeObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine31CAFFuelRemainingRangeObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine31CAFFuelRemainingRangeObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine31CAFFuelRemainingRangeObservable__distanceKM;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFFuelRemainingRangeObservableC10Foundation11MeasurementVySo12NSUnitLengthCGGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFFuelRemainingRangeObservableC10Foundation11MeasurementVySo12NSUnitLengthCGGMR);
  swift_allocObject();
  v8 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v8, v9, v10, v11, v12, v13, v14, v15, v29.receiver, v29.super_class, v30, v31, v32, v33, v34, v35, vars0, vars8);
  v16 = OBJC_IVAR____TtC10CAFCombine31CAFFuelRemainingRangeObservable__distanceMiles;
  swift_getKeyPath();
  swift_allocObject();
  v17 = OUTLINED_FUNCTION_0_7();
  *&v2[v16] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v17, v18, v19, v20, v21, v22, v23, v24, v29.receiver, v29.super_class, v30, v31, v32, v33, v34, v35, vars0, vars8);
  v25 = OBJC_IVAR____TtC10CAFCombine31CAFFuelRemainingRangeObservable__hidden;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFFuelRemainingRangeObservableCSbSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFFuelRemainingRangeObservableCSbSgGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v25] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine31CAFFuelRemainingRangeObservable_observed] = a1;
  v29.receiver = v2;
  v29.super_class = type metadata accessor for CAFFuelRemainingRangeObservable();
  v26 = a1;
  v27 = objc_msgSendSuper2(&v29, sel_init);
  [v26 registerObserver_];

  return v27;
}

uint64_t CAFFuelRemainingRangeObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFFuelRemainingRangeObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFFuelRemainingRangeObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine31CAFFuelRemainingRangeObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFFuelRemainingRangeObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFFuelRemainingRangeObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFFuelRemainingRangeObservable@<X0>(void *a1@<X8>)
{
  result = CAFFuelRemainingRangeObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFFuelRemainingRangeObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFFuelRemainingRangeObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFFuelRemainingRangeObservable.distanceDisplayService(_:didUpdateDistanceKM:)(uint64_t a1, uint64_t a2, void *a3)
{

  specialized SafeReadOnlyPublished.setValue(_:)();
}

uint64_t @objc CAFFuelRemainingRangeObservable.distanceDisplayService(_:didUpdateDistanceKM:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  a5();

  return (*(v9 + 8))(v11, v8);
}

uint64_t CAFFuelRemainingRangeObservable.fuelRemainingRangeService(_:didUpdateHidden:)(uint64_t a1, char a2)
{

  specialized SafeReadOnlyPublished.value.setter(a2 & 1);
}

uint64_t CAFFuelRemainingRangeObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFFuelRemainingRangeObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFFuelRemainingRangeObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFDistanceDisplay.distanceKM : CAFFuelRemainingRange(id *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v4 = [*a1 *a4];
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
}

unint64_t lazy protocol witness table accessor for type CAFFuelRemainingRange and conformance CAFFuelRemainingRange()
{
  result = lazy protocol witness table cache variable for type CAFFuelRemainingRange and conformance CAFFuelRemainingRange;
  if (!lazy protocol witness table cache variable for type CAFFuelRemainingRange and conformance CAFFuelRemainingRange)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFFuelRemainingRange, 0x277CF84C8);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFFuelRemainingRange and conformance CAFFuelRemainingRange);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFFuelRemainingRangeObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFFuelRemainingRangeObservable and conformance CAFFuelRemainingRangeObservable(&lazy protocol witness table cache variable for type CAFFuelRemainingRangeObservable and conformance CAFFuelRemainingRangeObservable, &protocol conformance descriptor for CAFFuelRemainingRangeObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFFuelRemainingRangeObservable and conformance CAFFuelRemainingRangeObservable(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFFuelRemainingRangeObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double partial apply for closure #1 in CAFFuelRemainingRangeObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine31CAFFuelRemainingRangeObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFBatteryConditioningObservable.batteryConditioningState.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFBatteryConditioningObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFBatteryConditioningObservable.$batteryConditioningState.getter()
{

  specialized SafeReadOnlyPublished.projectedValue.getter();
  v1 = v0;

  return v1;
}

uint64_t CAFBatteryConditioningObservable._description.getter()
{
  if ([*(v0 + OBJC_IVAR____TtC10CAFCombine32CAFBatteryConditioningObservable_observed) registeredForBatteryConditioningState])
  {
    CAFBatteryConditioningObservable.batteryConditioningState.getter();
    v1 = NSStringFromBatteryConditioningState();
    if (v1)
    {
      v2 = v1;
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v4;
    }

    else
    {
      v5 = 0xE900000000000029;
      v3 = 0x6E776F6E6B6E7528;
    }
  }

  else
  {
    v5 = 0xEE003E6465726574;
    v3 = 0x73696765726E753CLL;
  }

  _StringGuts.grow(_:)(71);
  MEMORY[0x245D0A530](0xD000000000000023, 0x800000024230EF00);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD00000000000001DLL, 0x800000024230EF30);
  MEMORY[0x245D0A530](v3, v5);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFBatteryConditioningObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine32CAFBatteryConditioningObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFBatteryConditioningObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine32CAFBatteryConditioningObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine32CAFBatteryConditioningObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFBatteryConditioningObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFBatteryConditioningObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine32CAFBatteryConditioningObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine32CAFBatteryConditioningObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine32CAFBatteryConditioningObservable__batteryConditioningState;
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFBatteryConditioningObservableCSo0fG5StateVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFBatteryConditioningObservableCSo0fG5StateVGMR);
  v9 = swift_allocObject();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)(KeyPath, v9, v10, v11, v12, v13, v14, v15, v20.receiver, v20.super_class, v21, v22, v23, v24, vars0, vars8);
  *&v2[v7] = v16;
  *&v2[OBJC_IVAR____TtC10CAFCombine32CAFBatteryConditioningObservable_observed] = a1;
  v20.receiver = v2;
  v20.super_class = type metadata accessor for CAFBatteryConditioningObservable();
  v17 = a1;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  [v17 registerObserver_];

  return v18;
}

uint64_t CAFBatteryConditioningObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFBatteryConditioningObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFBatteryConditioningObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine32CAFBatteryConditioningObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFBatteryConditioningObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFBatteryConditioningObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFBatteryConditioningObservable@<X0>(void *a1@<X8>)
{
  result = CAFBatteryConditioningObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFBatteryConditioningObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFBatteryConditioningObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFBatteryConditioningObservable.batteryConditioningService(_:didUpdateBatteryConditioningState:)(uint64_t a1, unsigned __int8 a2)
{

  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFBatteryConditioningObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFBatteryConditioningObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFBatteryConditioningObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFBatteryConditioning()
{
  result = lazy cache variable for type metadata for CAFBatteryConditioning;
  if (!lazy cache variable for type metadata for CAFBatteryConditioning)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFBatteryConditioning);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFBatteryConditioningObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFBatteryConditioningObservable and conformance CAFBatteryConditioningObservable(&lazy protocol witness table cache variable for type CAFBatteryConditioningObservable and conformance CAFBatteryConditioningObservable, a2, type metadata accessor for CAFBatteryConditioningObservable, &protocol conformance descriptor for CAFBatteryConditioningObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFBatteryConditioningObservable and conformance CAFBatteryConditioningObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFBatteryConditioningObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine32CAFBatteryConditioningObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFBatteryLevelObservable.batteryLevelState.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFBatteryLevelObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFBatteryLevelObservable.batteryLevel.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine25CAFBatteryLevelObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();
}

uint64_t CAFBatteryLevelObservable.$batteryLevel.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t CAFBatteryLevelObservable._description.getter()
{
  v1 = v0;
  v2 = 0xEE003E6465726574;
  v3 = 0x73696765726E753CLL;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgMR);
  MEMORY[0x28223BE20](v23);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFBatteryLevelObservable_observed);
  v9 = [v8 registeredForBatteryLevel];
  v24 = 0x73696765726E753CLL;
  v10 = 0xEE003E6465726574;
  if (v9)
  {
    CAFBatteryLevelObservable.batteryLevel.getter();
    lazy protocol witness table accessor for type Measurement<CAFUnitPercent> and conformance Measurement<A>();
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v11;
    (*(v5 + 8))(v7, v4);
  }

  v12 = 0x73696765726E753CLL;
  v13 = 0xEE003E6465726574;
  if ([v8 registeredForBatteryLevelState])
  {
    CAFBatteryLevelObservable.batteryLevelState.getter();
    v14 = NSStringFromBatteryLevelState();
    if (v14)
    {
      v15 = v14;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v16;
    }

    else
    {
      v13 = 0xE900000000000029;
      v12 = 0x6E776F6E6B6E7528;
    }
  }

  v17 = 0x73696765726E753CLL;
  v18 = 0xEE003E6465726574;
  if ([v8 registeredForBatteryLevelMarkerLow])
  {
    CAFBatteryLevelObservable.batteryLevelMarkerLow.getter();
    v17 = String.init<A>(describing:)();
    v18 = v19;
  }

  if ([v8 registeredForBatteryLevelMarkerCriticalLow])
  {
    CAFBatteryLevelObservable.batteryLevelMarkerCriticalLow.getter();
    v3 = String.init<A>(describing:)();
    v2 = v20;
  }

  v26 = 0;
  v27 = 0xE000000000000000;
  _StringGuts.grow(_:)(137);
  MEMORY[0x245D0A530](0xD00000000000001CLL, 0x800000024230F030);
  v25 = v1;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000011, 0x800000024230F050);
  MEMORY[0x245D0A530](v24, v10);

  MEMORY[0x245D0A530](0xD000000000000015, 0x800000024230F070);
  MEMORY[0x245D0A530](v22, v13);

  MEMORY[0x245D0A530](0xD000000000000019, 0x800000024230F090);
  MEMORY[0x245D0A530](v17, v18);

  MEMORY[0x245D0A530](0xD000000000000021, 0x800000024230F0B0);
  MEMORY[0x245D0A530](v3, v2);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return v26;
}

uint64_t CAFBatteryLevelObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine25CAFBatteryLevelObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFBatteryLevelObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine25CAFBatteryLevelObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine25CAFBatteryLevelObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFBatteryLevelObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFBatteryLevelObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine25CAFBatteryLevelObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine25CAFBatteryLevelObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine25CAFBatteryLevelObservable__batteryLevel;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFBatteryLevelObservableC10Foundation11MeasurementVySo14CAFUnitPercentCGGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFBatteryLevelObservableC10Foundation11MeasurementVySo14CAFUnitPercentCGGMR);
  swift_allocObject();
  v8 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(v8, v9, v10, v11, v12, v13, v14, v15, v47.receiver, v47.super_class, v48, v49, v50, v51, v52, v53, vars0, vars8);
  v16 = OBJC_IVAR____TtC10CAFCombine25CAFBatteryLevelObservable__batteryLevelState;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFBatteryLevelObservableCSo0fG5StateVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFBatteryLevelObservableCSo0fG5StateVGMR);
  swift_allocObject();
  v17 = OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v17, v18, v19, v20, v21, v22, v23, v24, v47.receiver, v47.super_class, v48, v49, v50, v51, v52, v53);
  *&v2[v16] = v25;
  v26 = OBJC_IVAR____TtC10CAFCombine25CAFBatteryLevelObservable__batteryLevelMarkerLow;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFBatteryLevelObservableC10Foundation11MeasurementVySo14CAFUnitPercentCGSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFBatteryLevelObservableC10Foundation11MeasurementVySo14CAFUnitPercentCGSgGMR);
  swift_allocObject();
  v27 = OUTLINED_FUNCTION_0_7();
  *&v2[v26] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v27, v28, v29, v30, v31, v32, v33, v34, v47.receiver, v47.super_class, v48, v49, v50, v51, v52, v53, vars0, vars8);
  v35 = OBJC_IVAR____TtC10CAFCombine25CAFBatteryLevelObservable__batteryLevelMarkerCriticalLow;
  swift_getKeyPath();
  swift_allocObject();
  v36 = OUTLINED_FUNCTION_0_7();
  *&v2[v35] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v36, v37, v38, v39, v40, v41, v42, v43, v47.receiver, v47.super_class, v48, v49, v50, v51, v52, v53, vars0, vars8);
  *&v2[OBJC_IVAR____TtC10CAFCombine25CAFBatteryLevelObservable_observed] = a1;
  v47.receiver = v2;
  v47.super_class = type metadata accessor for CAFBatteryLevelObservable();
  v44 = a1;
  v45 = objc_msgSendSuper2(&v47, sel_init);
  [v44 registerObserver_];

  return v45;
}

uint64_t CAFBatteryLevelObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFBatteryLevelObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFBatteryLevelObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine25CAFBatteryLevelObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFBatteryLevelObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFBatteryLevelObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFBatteryLevelObservable@<X0>(void *a1@<X8>)
{
  result = CAFBatteryLevelObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFBatteryLevelObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFBatteryLevelObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFBatteryLevelObservable.batteryLevelService(_:didUpdateBatteryLevelState:)(uint64_t a1, unsigned __int8 a2)
{

  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFBatteryLevelObservable.batteryLevelService(_:didUpdateBatteryLevel:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{

  a4(a2);
}

uint64_t @objc CAFBatteryLevelObservable.batteryLevelService(_:didUpdateBatteryLevelMarkerLow:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  if (a4)
  {
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFUnitPercent, 0x277CF8770);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
    v13 = v11;
    v14 = 0;
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
    v13 = v11;
    v14 = 1;
  }

  __swift_storeEnumTagSinglePayload(v13, v14, 1, v12);
  v15 = a3;
  v16 = a1;
  a5();

  return outlined destroy of Measurement<CAFUnitPercent>?(v11);
}

uint64_t CAFBatteryLevelObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFBatteryLevelObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFBatteryLevelObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFBatteryLevel.batteryLevel : CAFBatteryLevel(id *a1)
{
  v1 = [*a1 batteryLevel];
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFUnitPercent, 0x277CF8770);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
}

unint64_t lazy protocol witness table accessor for type CAFBatteryLevel and conformance CAFBatteryLevel()
{
  result = lazy protocol witness table cache variable for type CAFBatteryLevel and conformance CAFBatteryLevel;
  if (!lazy protocol witness table cache variable for type CAFBatteryLevel and conformance CAFBatteryLevel)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFBatteryLevel, 0x277CF8348);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFBatteryLevel and conformance CAFBatteryLevel);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFBatteryLevelObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFBatteryLevelObservable and conformance CAFBatteryLevelObservable(&lazy protocol witness table cache variable for type CAFBatteryLevelObservable and conformance CAFBatteryLevelObservable, &protocol conformance descriptor for CAFBatteryLevelObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFBatteryLevelObservable and conformance CAFBatteryLevelObservable(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFBatteryLevelObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double partial apply for closure #1 in CAFBatteryLevelObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine25CAFBatteryLevelObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFBatteryRemainingRangeObservable.distanceKM.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine34CAFBatteryRemainingRangeObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();
}

uint64_t CAFBatteryRemainingRangeObservable.hidden.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFBatteryRemainingRangeObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFBatteryRemainingRangeObservable.$distanceKM.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t CAFBatteryRemainingRangeObservable._description.getter()
{
  if ([*(v0 + OBJC_IVAR____TtC10CAFCombine34CAFBatteryRemainingRangeObservable_observed) registeredForHidden])
  {
    CAFBatteryRemainingRangeObservable.hidden.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v1 = String.init<A>(describing:)();
    v3 = v2;
  }

  else
  {
    v3 = 0xEE003E6465726574;
    v1 = 0x73696765726E753CLL;
  }

  _StringGuts.grow(_:)(55);
  MEMORY[0x245D0A530](0xD000000000000025, 0x800000024230F150);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x6564646968207B20, 0xEB00000000203A6ELL);
  MEMORY[0x245D0A530](v1, v3);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFBatteryRemainingRangeObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine34CAFBatteryRemainingRangeObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFBatteryRemainingRangeObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine34CAFBatteryRemainingRangeObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine34CAFBatteryRemainingRangeObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFBatteryRemainingRangeObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFBatteryRemainingRangeObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine34CAFBatteryRemainingRangeObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine34CAFBatteryRemainingRangeObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine34CAFBatteryRemainingRangeObservable__distanceKM;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFBatteryRemainingRangeObservableC10Foundation11MeasurementVySo12NSUnitLengthCGGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFBatteryRemainingRangeObservableC10Foundation11MeasurementVySo12NSUnitLengthCGGMR);
  swift_allocObject();
  v8 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v8, v9, v10, v11, v12, v13, v14, v15, v29.receiver, v29.super_class, v30, v31, v32, v33, v34, v35, vars0, vars8);
  v16 = OBJC_IVAR____TtC10CAFCombine34CAFBatteryRemainingRangeObservable__distanceMiles;
  swift_getKeyPath();
  swift_allocObject();
  v17 = OUTLINED_FUNCTION_0_7();
  *&v2[v16] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v17, v18, v19, v20, v21, v22, v23, v24, v29.receiver, v29.super_class, v30, v31, v32, v33, v34, v35, vars0, vars8);
  v25 = OBJC_IVAR____TtC10CAFCombine34CAFBatteryRemainingRangeObservable__hidden;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFBatteryRemainingRangeObservableCSbSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFBatteryRemainingRangeObservableCSbSgGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v25] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine34CAFBatteryRemainingRangeObservable_observed] = a1;
  v29.receiver = v2;
  v29.super_class = type metadata accessor for CAFBatteryRemainingRangeObservable();
  v26 = a1;
  v27 = objc_msgSendSuper2(&v29, sel_init);
  [v26 registerObserver_];

  return v27;
}

uint64_t CAFBatteryRemainingRangeObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFBatteryRemainingRangeObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFBatteryRemainingRangeObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine34CAFBatteryRemainingRangeObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFBatteryRemainingRangeObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFBatteryRemainingRangeObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFBatteryRemainingRangeObservable@<X0>(void *a1@<X8>)
{
  result = CAFBatteryRemainingRangeObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFBatteryRemainingRangeObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFBatteryRemainingRangeObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFBatteryRemainingRangeObservable.distanceDisplayService(_:didUpdateDistanceKM:)(uint64_t a1, uint64_t a2, void *a3)
{

  specialized SafeReadOnlyPublished.setValue(_:)();
}

uint64_t @objc CAFBatteryRemainingRangeObservable.distanceDisplayService(_:didUpdateDistanceKM:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  a5();

  return (*(v9 + 8))(v11, v8);
}

uint64_t CAFBatteryRemainingRangeObservable.batteryRemainingRangeService(_:didUpdateHidden:)(uint64_t a1, char a2)
{

  specialized SafeReadOnlyPublished.value.setter(a2 & 1);
}

uint64_t CAFBatteryRemainingRangeObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFBatteryRemainingRangeObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFBatteryRemainingRangeObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CAFBatteryRemainingRange and conformance CAFBatteryRemainingRange()
{
  result = lazy protocol witness table cache variable for type CAFBatteryRemainingRange and conformance CAFBatteryRemainingRange;
  if (!lazy protocol witness table cache variable for type CAFBatteryRemainingRange and conformance CAFBatteryRemainingRange)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFBatteryRemainingRange, 0x277CF8350);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFBatteryRemainingRange and conformance CAFBatteryRemainingRange);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFBatteryRemainingRangeObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFBatteryRemainingRangeObservable and conformance CAFBatteryRemainingRangeObservable(&lazy protocol witness table cache variable for type CAFBatteryRemainingRangeObservable and conformance CAFBatteryRemainingRangeObservable, &protocol conformance descriptor for CAFBatteryRemainingRangeObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFBatteryRemainingRangeObservable and conformance CAFBatteryRemainingRangeObservable(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFBatteryRemainingRangeObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double partial apply for closure #1 in CAFBatteryRemainingRangeObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine34CAFBatteryRemainingRangeObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFBatteryTemperatureObservable.temperatureState.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFBatteryTemperatureObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFBatteryTemperatureObservable.temperature.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine31CAFBatteryTemperatureObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();
}

uint64_t CAFBatteryTemperatureObservable.$temperature.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t CAFBatteryTemperatureObservable._description.getter()
{
  v1 = v0;
  v2 = 0xEE003E6465726574;
  v3 = 0x73696765726E753CLL;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMR);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v4);
  v37 = &v35 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v6);
  v7 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFBatteryTemperatureObservable_observed);
  v8 = 0x73696765726E753CLL;
  v9 = 0xEE003E6465726574;
  if ([v7 registeredForTemperature])
  {
    CAFBatteryTemperatureObservable.temperature.getter();
    v10 = lazy protocol witness table accessor for type Measurement<NSUnitTemperature> and conformance Measurement<A>();
    v8 = OUTLINED_FUNCTION_6_6(v10);
    v9 = v11;
    v12 = OUTLINED_FUNCTION_7_7();
    v13(v12);
  }

  v39 = v9;
  v14 = [v7 registeredForTemperatureState];
  v41 = 0x73696765726E753CLL;
  v15 = 0xEE003E6465726574;
  if (v14)
  {
    CAFBatteryTemperatureObservable.temperatureState.getter();
    v16 = NSStringFromTemperatureState();
    if (v16)
    {
      v17 = v16;
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v18;
    }

    else
    {
      v15 = 0xE900000000000029;
      v41 = 0x6E776F6E6B6E7528;
    }
  }

  v36 = v15;
  v38 = v8;
  v19 = 0x73696765726E753CLL;
  v20 = 0xEE003E6465726574;
  if ([v7 registeredForTemperatureMin])
  {
    CAFBatteryTemperatureObservable.temperatureMin.getter();
    v21 = lazy protocol witness table accessor for type Measurement<NSUnitTemperature> and conformance Measurement<A>();
    v19 = OUTLINED_FUNCTION_6_6(v21);
    v20 = v22;
    v23 = OUTLINED_FUNCTION_7_7();
    v24(v23);
  }

  v25 = [v7 registeredForTemperatureMax];
  v26 = 0x73696765726E753CLL;
  v27 = 0xEE003E6465726574;
  if (v25)
  {
    CAFBatteryTemperatureObservable.temperatureMax.getter();
    v28 = lazy protocol witness table accessor for type Measurement<NSUnitTemperature> and conformance Measurement<A>();
    v26 = OUTLINED_FUNCTION_6_6(v28);
    v27 = v29;
    v30 = OUTLINED_FUNCTION_7_7();
    v31(v30);
  }

  if ([v7 registeredForTemperatureMarkerCold])
  {
    CAFBatteryTemperatureObservable.temperatureMarkerCold.getter();
    String.init<A>(describing:)();
  }

  if ([v7 registeredForTemperatureMarkerHot])
  {
    CAFBatteryTemperatureObservable.temperatureMarkerHot.getter();
    v3 = String.init<A>(describing:)();
    v2 = v32;
  }

  v43 = 0;
  v44 = 0xE000000000000000;
  _StringGuts.grow(_:)(172);
  MEMORY[0x245D0A530](0xD000000000000022, 0x800000024230F270);
  v42 = v1;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000010, 0x800000024230EA50);
  MEMORY[0x245D0A530](v38, v39);

  MEMORY[0x245D0A530](0xD000000000000014, 0x800000024230F2A0);
  MEMORY[0x245D0A530](v41, v36);

  OUTLINED_FUNCTION_2_26();
  MEMORY[0x245D0A530](v35, v20);

  OUTLINED_FUNCTION_2_26();
  MEMORY[0x245D0A530](v26, v27);

  MEMORY[0x245D0A530](0xD000000000000019, 0x800000024230F300);
  v33 = OUTLINED_FUNCTION_7_7();
  MEMORY[0x245D0A530](v33);

  MEMORY[0x245D0A530](0xD000000000000018, 0x800000024230F320);
  MEMORY[0x245D0A530](v3, v2);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return v43;
}

uint64_t CAFBatteryTemperatureObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine31CAFBatteryTemperatureObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFBatteryTemperatureObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine31CAFBatteryTemperatureObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFBatteryTemperatureObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFBatteryTemperatureObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFBatteryTemperatureObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine31CAFBatteryTemperatureObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine31CAFBatteryTemperatureObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine31CAFBatteryTemperatureObservable__temperature;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFBatteryTemperatureObservableC10Foundation11MeasurementVySo06NSUnitG0CGGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFBatteryTemperatureObservableC10Foundation11MeasurementVySo06NSUnitG0CGGMR);
  swift_allocObject();
  v8 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v8, v9, v10, v11, v12, v13, v14, v15, v57.receiver, v57.super_class, v58, v59, v60, v61, v62, v63, vars0, vars8);
  v16 = OBJC_IVAR____TtC10CAFCombine31CAFBatteryTemperatureObservable__temperatureState;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFBatteryTemperatureObservableCSo19CAFTemperatureStateVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFBatteryTemperatureObservableCSo19CAFTemperatureStateVGMR);
  swift_allocObject();
  v17 = OUTLINED_FUNCTION_0_7();
  *&v2[v16] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v17);
  v18 = OBJC_IVAR____TtC10CAFCombine31CAFBatteryTemperatureObservable__temperatureMin;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v19 = OUTLINED_FUNCTION_0_7();
  *&v2[v18] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v19, v20, v21, v22, v23, v24, v25, v26, v57.receiver, v57.super_class, v58, v59, v60, v61, v62, v63, vars0, vars8);
  v27 = OBJC_IVAR____TtC10CAFCombine31CAFBatteryTemperatureObservable__temperatureMax;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v28 = OUTLINED_FUNCTION_0_7();
  *&v2[v27] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v28, v29, v30, v31, v32, v33, v34, v35, v57.receiver, v57.super_class, v58, v59, v60, v61, v62, v63, vars0, vars8);
  v36 = OBJC_IVAR____TtC10CAFCombine31CAFBatteryTemperatureObservable__temperatureMarkerCold;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFBatteryTemperatureObservableC10Foundation11MeasurementVySo06NSUnitG0CGSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFBatteryTemperatureObservableC10Foundation11MeasurementVySo06NSUnitG0CGSgGMR);
  swift_allocObject();
  v37 = OUTLINED_FUNCTION_0_7();
  *&v2[v36] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v37, v38, v39, v40, v41, v42, v43, v44, v57.receiver, v57.super_class, v58, v59, v60, v61, v62, v63, vars0, vars8);
  v45 = OBJC_IVAR____TtC10CAFCombine31CAFBatteryTemperatureObservable__temperatureMarkerHot;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v46 = OUTLINED_FUNCTION_0_7();
  *&v2[v45] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v46, v47, v48, v49, v50, v51, v52, v53, v57.receiver, v57.super_class, v58, v59, v60, v61, v62, v63, vars0, vars8);
  *&v2[OBJC_IVAR____TtC10CAFCombine31CAFBatteryTemperatureObservable_observed] = a1;
  v57.receiver = v2;
  v57.super_class = type metadata accessor for CAFBatteryTemperatureObservable();
  v54 = a1;
  v55 = objc_msgSendSuper2(&v57, sel_init);
  [v54 registerObserver_];

  return v55;
}

uint64_t CAFBatteryTemperatureObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFBatteryTemperatureObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFBatteryTemperatureObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine31CAFBatteryTemperatureObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFBatteryTemperatureObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFBatteryTemperatureObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFBatteryTemperatureObservable@<X0>(void *a1@<X8>)
{
  result = CAFBatteryTemperatureObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFBatteryTemperatureObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFBatteryTemperatureObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFBatteryTemperatureObservable.batteryTemperatureService(_:didUpdateTemperatureState:)(uint64_t a1, unsigned __int8 a2)
{

  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t @objc CAFBatteryTemperatureObservable.batteryTemperatureService(_:didUpdateTemperature:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  OUTLINED_FUNCTION_30();
  v10 = v9;
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitTemperature, 0x277CCAE48);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = a1;
  a5();

  return (*(v10 + 8))(v13, v8);
}

uint64_t CAFBatteryTemperatureObservable.batteryTemperatureService(_:didUpdateTemperature:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{

  a4(a2);
}

uint64_t @objc CAFBatteryTemperatureObservable.batteryTemperatureService(_:didUpdateTemperatureMarkerCold:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMR);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  if (a4)
  {
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitTemperature, 0x277CCAE48);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
    v13 = v11;
    v14 = 0;
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
    v13 = v11;
    v14 = 1;
  }

  __swift_storeEnumTagSinglePayload(v13, v14, 1, v12);
  v15 = a3;
  v16 = a1;
  a5();

  return outlined destroy of Measurement<NSUnitTemperature>?(v11);
}

uint64_t CAFBatteryTemperatureObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFBatteryTemperatureObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFBatteryTemperatureObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFBatteryTemperature.temperature : CAFBatteryTemperature(id *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v4 = [*a1 *a4];
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitTemperature, 0x277CCAE48);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t key path getter for CAFBatteryTemperature.temperatureMarkerCold : CAFBatteryTemperature@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitTemperature, 0x277CCAE48);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);

  return __swift_storeEnumTagSinglePayload(a3, v6, 1, v7);
}

unint64_t lazy protocol witness table accessor for type CAFBatteryTemperature and conformance CAFBatteryTemperature()
{
  result = lazy protocol witness table cache variable for type CAFBatteryTemperature and conformance CAFBatteryTemperature;
  if (!lazy protocol witness table cache variable for type CAFBatteryTemperature and conformance CAFBatteryTemperature)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFBatteryTemperature, 0x277CF8358);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFBatteryTemperature and conformance CAFBatteryTemperature);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFBatteryTemperatureObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFBatteryTemperatureObservable and conformance CAFBatteryTemperatureObservable(&lazy protocol witness table cache variable for type CAFBatteryTemperatureObservable and conformance CAFBatteryTemperatureObservable, &protocol conformance descriptor for CAFBatteryTemperatureObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFBatteryTemperatureObservable and conformance CAFBatteryTemperatureObservable(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFBatteryTemperatureObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double partial apply for closure #1 in CAFBatteryTemperatureObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine31CAFBatteryTemperatureObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t OUTLINED_FUNCTION_6_6(uint64_t a1)
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t CAFEnergyConsumptionObservable.energyEfficiency.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine30CAFEnergyConsumptionObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();
}

uint64_t CAFEnergyConsumptionObservable.$energyEfficiency.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t CAFEnergyConsumptionObservable._description.getter()
{
  v1 = v0;
  v2 = 0xEE003E6465726574;
  v3 = 0x73696765726E753CLL;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGSgMd, &_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGSgMR);
  MEMORY[0x28223BE20](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGMd, &_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - v7;
  v9 = *(v1 + OBJC_IVAR____TtC10CAFCombine30CAFEnergyConsumptionObservable_observed);
  v10 = 0xEE003E6465726574;
  if ([v9 registeredForEnergyEfficiency])
  {
    CAFEnergyConsumptionObservable.energyEfficiency.getter();
    lazy protocol witness table accessor for type Measurement<CAFUnitEnergyEfficiency> and conformance Measurement<A>();
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v11;
    (*(v6 + 8))(v8, v5);
  }

  v12 = 0x73696765726E753CLL;
  v13 = 0x73696765726E753CLL;
  v14 = 0xEE003E6465726574;
  if ([v9 registeredForAverageEnergyEfficiency])
  {
    CAFEnergyConsumptionObservable.averageEnergyEfficiency.getter();
    v13 = String.init<A>(describing:)();
    v14 = v15;
  }

  if ([v9 registeredForEnergyEfficiencyMax])
  {
    CAFEnergyConsumptionObservable.energyEfficiencyMax.getter();
    v12 = String.init<A>(describing:)();
    v2 = v16;
  }

  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(115);
  MEMORY[0x245D0A530](0xD000000000000021, 0x800000024230F410);
  v18[1] = v1;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000015, 0x800000024230F440);
  MEMORY[0x245D0A530](v18[0], v10);

  MEMORY[0x245D0A530](0xD00000000000001BLL, 0x800000024230F460);
  MEMORY[0x245D0A530](v13, v14);

  MEMORY[0x245D0A530](0xD000000000000017, 0x800000024230F480);
  MEMORY[0x245D0A530](v12, v2);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return v19;
}

uint64_t CAFEnergyConsumptionObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine30CAFEnergyConsumptionObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine30CAFEnergyConsumptionObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine30CAFEnergyConsumptionObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine30CAFEnergyConsumptionObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFEnergyConsumptionObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFEnergyConsumptionObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine30CAFEnergyConsumptionObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine30CAFEnergyConsumptionObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine30CAFEnergyConsumptionObservable__energyEfficiency;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA30CAFEnergyConsumptionObservableC10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA30CAFEnergyConsumptionObservableC10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v7] = v8;
  v9 = OBJC_IVAR____TtC10CAFCombine30CAFEnergyConsumptionObservable__averageEnergyEfficiency;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA30CAFEnergyConsumptionObservableC10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA30CAFEnergyConsumptionObservableC10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGSgGMR);
  swift_allocObject();
  v10 = OUTLINED_FUNCTION_0_7();
  *&v2[v9] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v10, v11, v12, v13, v14, v15, v16, v17, v30.receiver, v30.super_class, v31, v32, v33, v34, v35, v36, vars0, vars8);
  v18 = OBJC_IVAR____TtC10CAFCombine30CAFEnergyConsumptionObservable__energyEfficiencyMax;
  swift_getKeyPath();
  swift_allocObject();
  v19 = OUTLINED_FUNCTION_0_7();
  *&v2[v18] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v19, v20, v21, v22, v23, v24, v25, v26, v30.receiver, v30.super_class, v31, v32, v33, v34, v35, v36, vars0, vars8);
  *&v2[OBJC_IVAR____TtC10CAFCombine30CAFEnergyConsumptionObservable_observed] = a1;
  v30.receiver = v2;
  v30.super_class = type metadata accessor for CAFEnergyConsumptionObservable();
  v27 = a1;
  v28 = objc_msgSendSuper2(&v30, sel_init);
  [v27 registerObserver_];

  return v28;
}

uint64_t CAFEnergyConsumptionObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine30CAFEnergyConsumptionObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFEnergyConsumptionObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine30CAFEnergyConsumptionObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFEnergyConsumptionObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFEnergyConsumptionObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFEnergyConsumptionObservable@<X0>(void *a1@<X8>)
{
  result = CAFEnergyConsumptionObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFEnergyConsumptionObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFEnergyConsumptionObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFEnergyConsumptionObservable.energyConsumptionService(_:didUpdateEnergyEfficiency:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{

  a4(a2);
}

uint64_t @objc CAFEnergyConsumptionObservable.energyConsumptionService(_:didUpdateAverageEnergyEfficiency:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGSgMd, &_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  if (a4)
  {
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFUnitEnergyEfficiency, 0x277CF8768);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGMd, &_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGMR);
    v13 = v11;
    v14 = 0;
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGMd, &_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGMR);
    v13 = v11;
    v14 = 1;
  }

  __swift_storeEnumTagSinglePayload(v13, v14, 1, v12);
  v15 = a3;
  v16 = a1;
  a5();

  return outlined destroy of Measurement<CAFUnitEnergyEfficiency>?(v11);
}

uint64_t CAFEnergyConsumptionObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFEnergyConsumptionObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFEnergyConsumptionObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFEnergyConsumption.energyEfficiency : CAFEnergyConsumption(id *a1)
{
  v1 = [*a1 energyEfficiency];
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFUnitEnergyEfficiency, 0x277CF8768);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t key path getter for CAFEnergyConsumption.averageEnergyEfficiency : CAFEnergyConsumption@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFUnitEnergyEfficiency, 0x277CF8768);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGMd, &_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGMR);

  return __swift_storeEnumTagSinglePayload(a3, v6, 1, v7);
}

unint64_t lazy protocol witness table accessor for type CAFEnergyConsumption and conformance CAFEnergyConsumption()
{
  result = lazy protocol witness table cache variable for type CAFEnergyConsumption and conformance CAFEnergyConsumption;
  if (!lazy protocol witness table cache variable for type CAFEnergyConsumption and conformance CAFEnergyConsumption)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFEnergyConsumption, 0x277CF8450);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFEnergyConsumption and conformance CAFEnergyConsumption);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFEnergyConsumptionObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFEnergyConsumptionObservable and conformance CAFEnergyConsumptionObservable(&lazy protocol witness table cache variable for type CAFEnergyConsumptionObservable and conformance CAFEnergyConsumptionObservable, &protocol conformance descriptor for CAFEnergyConsumptionObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFEnergyConsumptionObservable and conformance CAFEnergyConsumptionObservable(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFEnergyConsumptionObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of Measurement<CAFUnitEnergyEfficiency>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGSgMd, &_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double partial apply for closure #1 in CAFEnergyConsumptionObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine30CAFEnergyConsumptionObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

unint64_t lazy protocol witness table accessor for type Measurement<CAFUnitEnergyEfficiency> and conformance Measurement<A>()
{
  result = lazy protocol witness table cache variable for type Measurement<CAFUnitEnergyEfficiency> and conformance Measurement<A>;
  if (!lazy protocol witness table cache variable for type Measurement<CAFUnitEnergyEfficiency> and conformance Measurement<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGMd, &_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Measurement<CAFUnitEnergyEfficiency> and conformance Measurement<A>);
  }

  return result;
}

uint64_t CAFProximityAlertsObservable.proximityAlertRearLeft.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine28CAFProximityAlertsObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5 | (v6 << 8);
}

uint64_t CAFProximityAlertsObservable.$proximityAlertRearLeft.getter(void *a1)
{

  specialized SafeReadOnlyPublished.projectedValue.getter();
  v2 = v1;

  return v2;
}

uint64_t CAFProximityAlertsObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFProximityAlertsObservable_observed);
  v4 = 0x73696765726E753CLL;
  v5 = 0xEE003E6465726574;
  if ([v3 registeredForProximityAlertRearLeft])
  {
    CAFProximityAlertsObservable.proximityAlertRearLeft.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17CAFProximityAlertVSgMd, &_sSo17CAFProximityAlertVSgMR);
    v4 = String.init<A>(describing:)();
    v5 = v6;
  }

  if ([v3 registeredForProximityAlertRearRight])
  {
    CAFProximityAlertsObservable.proximityAlertRearRight.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17CAFProximityAlertVSgMd, &_sSo17CAFProximityAlertVSgMR);
    v2 = String.init<A>(describing:)();
    v1 = v7;
  }

  _StringGuts.grow(_:)(94);
  MEMORY[0x245D0A530](0xD00000000000001FLL, 0x800000024230F540);
  _print_unlocked<A, B>(_:_:)();
  OUTLINED_FUNCTION_0_18();
  MEMORY[0x245D0A530](v4, v5);

  OUTLINED_FUNCTION_0_18();
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFProximityAlertsObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine28CAFProximityAlertsObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFProximityAlertsObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine28CAFProximityAlertsObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine28CAFProximityAlertsObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFProximityAlertsObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFProximityAlertsObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine28CAFProximityAlertsObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine28CAFProximityAlertsObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine28CAFProximityAlertsObservable__proximityAlertRearLeft;
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFProximityAlertsObservableCSo0F5AlertVSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFProximityAlertsObservableCSo0F5AlertVSgGMR);
  v9 = swift_allocObject();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)(KeyPath, v9, v10, v11, v12, v13, v14, v15, v30.receiver, v30.super_class, v31, v32, v33, v34, v35, v36);
  *&v2[v7] = v16;
  v17 = OBJC_IVAR____TtC10CAFCombine28CAFProximityAlertsObservable__proximityAlertRearRight;
  v18 = swift_getKeyPath();
  v19 = swift_allocObject();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v18, v19, v20, v21, v22, v23, v24, v25, v30.receiver, v30.super_class, v31, v32, v33, v34, v35, v36);
  *&v2[v17] = v26;
  *&v2[OBJC_IVAR____TtC10CAFCombine28CAFProximityAlertsObservable_observed] = a1;
  v30.receiver = v2;
  v30.super_class = type metadata accessor for CAFProximityAlertsObservable();
  v27 = a1;
  v28 = objc_msgSendSuper2(&v30, sel_init);
  [v27 registerObserver_];

  return v28;
}

uint64_t CAFProximityAlertsObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFProximityAlertsObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFProximityAlertsObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine28CAFProximityAlertsObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFProximityAlertsObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFProximityAlertsObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFProximityAlertsObservable@<X0>(void *a1@<X8>)
{
  result = CAFProximityAlertsObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFProximityAlertsObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFProximityAlertsObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFProximityAlertsObservable.proximityAlertsService(_:didUpdateProximityAlertRearLeft:)(uint64_t a1, unsigned __int8 a2, void *a3)
{

  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFProximityAlertsObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFProximityAlertsObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFProximityAlertsObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t key path getter for CAFProximityAlerts.proximityAlertRearLeftBridged : CAFProximityAlerts@<X0>(_BYTE *a1@<X8>)
{
  result = CAFProximityAlerts.proximityAlertRearLeftBridged.getter();
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

uint64_t key path getter for CAFProximityAlerts.proximityAlertRearRightBridged : CAFProximityAlerts@<X0>(_BYTE *a1@<X8>)
{
  result = CAFProximityAlerts.proximityAlertRearRightBridged.getter();
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

unint64_t type metadata accessor for CAFProximityAlerts()
{
  result = lazy cache variable for type metadata for CAFProximityAlerts;
  if (!lazy cache variable for type metadata for CAFProximityAlerts)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFProximityAlerts);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFProximityAlertsObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFProximityAlertsObservable and conformance CAFProximityAlertsObservable(&lazy protocol witness table cache variable for type CAFProximityAlertsObservable and conformance CAFProximityAlertsObservable, a2, type metadata accessor for CAFProximityAlertsObservable, &protocol conformance descriptor for CAFProximityAlertsObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFProximityAlertsObservable and conformance CAFProximityAlertsObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFProximityAlertsObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine28CAFProximityAlertsObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

void OUTLINED_FUNCTION_0_18()
{

  JUMPOUT(0x245D0A530);
}

uint64_t CAFTurnSignalsObservable.turnSignalLeft.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine24CAFTurnSignalsObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFTurnSignalsObservable.$turnSignalLeft.getter(void *a1)
{

  specialized SafeReadOnlyPublished.projectedValue.getter();
  v2 = v1;

  return v2;
}

uint64_t CAFTurnSignalsObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFTurnSignalsObservable_observed);
  v4 = 0x73696765726E753CLL;
  v5 = 0xEE003E6465726574;
  if ([v3 registeredForTurnSignalLeft])
  {
    CAFTurnSignalsObservable.turnSignalLeft.getter();
    v6 = NSStringFromTurnSignal();
    if (v6)
    {
      v7 = v6;
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v8;
    }

    else
    {
      v4 = 0x6E776F6E6B6E7528;
      v5 = 0xE900000000000029;
    }
  }

  if ([v3 registeredForTurnSignalRight])
  {
    CAFTurnSignalsObservable.turnSignalRight.getter();
    v9 = NSStringFromTurnSignal();
    if (v9)
    {
      v10 = v9;
      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v1 = v11;
    }

    else
    {
      v2 = 0x6E776F6E6B6E7528;
      v1 = 0xE900000000000029;
    }
  }

  _StringGuts.grow(_:)(74);
  MEMORY[0x245D0A530](0xD00000000000001BLL, 0x800000024230F640);
  _print_unlocked<A, B>(_:_:)();
  OUTLINED_FUNCTION_0_19();
  MEMORY[0x245D0A530](v4, v5);

  OUTLINED_FUNCTION_0_19();
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFTurnSignalsObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine24CAFTurnSignalsObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFTurnSignalsObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine24CAFTurnSignalsObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine24CAFTurnSignalsObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFTurnSignalsObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFTurnSignalsObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine24CAFTurnSignalsObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine24CAFTurnSignalsObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine24CAFTurnSignalsObservable__turnSignalLeft;
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFTurnSignalsObservableCSo0F6SignalVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFTurnSignalsObservableCSo0F6SignalVGMR);
  v9 = swift_allocObject();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)(KeyPath, v9, v10, v11, v12, v13, v14, v15, v30.receiver, v30.super_class, v31, v32, v33, v34, v35, v36);
  *&v2[v7] = v16;
  v17 = OBJC_IVAR____TtC10CAFCombine24CAFTurnSignalsObservable__turnSignalRight;
  v18 = swift_getKeyPath();
  v19 = swift_allocObject();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v18, v19, v20, v21, v22, v23, v24, v25, v30.receiver, v30.super_class, v31, v32, v33, v34, v35, v36);
  *&v2[v17] = v26;
  *&v2[OBJC_IVAR____TtC10CAFCombine24CAFTurnSignalsObservable_observed] = a1;
  v30.receiver = v2;
  v30.super_class = type metadata accessor for CAFTurnSignalsObservable();
  v27 = a1;
  v28 = objc_msgSendSuper2(&v30, sel_init);
  [v27 registerObserver_];

  return v28;
}

uint64_t CAFTurnSignalsObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFTurnSignalsObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFTurnSignalsObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine24CAFTurnSignalsObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFTurnSignalsObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFTurnSignalsObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFTurnSignalsObservable@<X0>(void *a1@<X8>)
{
  result = CAFTurnSignalsObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFTurnSignalsObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFTurnSignalsObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFTurnSignalsObservable.turnSignalsService(_:didUpdateTurnSignalLeft:)(uint64_t a1, unsigned __int8 a2, void *a3)
{

  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFTurnSignalsObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFTurnSignalsObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFTurnSignalsObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFTurnSignals()
{
  result = lazy cache variable for type metadata for CAFTurnSignals;
  if (!lazy cache variable for type metadata for CAFTurnSignals)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFTurnSignals);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFTurnSignalsObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFTurnSignalsObservable and conformance CAFTurnSignalsObservable(&lazy protocol witness table cache variable for type CAFTurnSignalsObservable and conformance CAFTurnSignalsObservable, a2, type metadata accessor for CAFTurnSignalsObservable, &protocol conformance descriptor for CAFTurnSignalsObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFTurnSignalsObservable and conformance CAFTurnSignalsObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFTurnSignalsObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine24CAFTurnSignalsObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

void OUTLINED_FUNCTION_0_19()
{

  JUMPOUT(0x245D0A530);
}

uint64_t CAFEngineRPM.rotationalSpeedStateBridged.getter()
{
  v1 = [v0 hasRotationalSpeedState];
  v2 = v1;
  if (v1)
  {
    v1 = [v0 rotationalSpeedState];
  }

  return v1 | ((v2 ^ 1) << 8);
}

uint64_t CAFEngineRPMObservable.rotationalSpeedState.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine22CAFEngineRPMObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4 | (v5 << 8);
}

uint64_t CAFEngineRPMObservable.rotationalSpeed.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine22CAFEngineRPMObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();
}

uint64_t CAFEngineRPMObservable.$rotationalSpeed.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t CAFEngineRPMObservable._description.getter()
{
  v1 = v0;
  v2 = 0xEE003E6465726574;
  v3 = 0x73696765726E753CLL;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGSgMd, &_s10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGSgMR);
  MEMORY[0x28223BE20](v25);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGMd, &_s10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGMR);
  OUTLINED_FUNCTION_30();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = *(v0 + OBJC_IVAR____TtC10CAFCombine22CAFEngineRPMObservable_observed);
  v11 = 0x73696765726E753CLL;
  v12 = 0xEE003E6465726574;
  if ([v10 registeredForRotationalSpeed])
  {
    CAFEngineRPMObservable.rotationalSpeed.getter();
    lazy protocol witness table accessor for type Measurement<CAFUnitRotationalSpeed> and conformance Measurement<A>();
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v13;
    (*(v6 + 8))(v9, v4);
  }

  v27 = v11;
  v28 = v12;
  v14 = [v10 registeredForRotationalSpeedState];
  v15 = 0x73696765726E753CLL;
  v16 = 0xEE003E6465726574;
  if (v14)
  {
    LOWORD(v30) = CAFEngineRPMObservable.rotationalSpeedState.getter() & 0x1FF;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23CAFRotationalSpeedStateVSgMd, &_sSo23CAFRotationalSpeedStateVSgMR);
    v15 = String.init<A>(describing:)();
    v16 = v17;
  }

  v26 = v15;
  v18 = [v10 registeredForRotationalSpeedMarkerRedline];
  v19 = 0x73696765726E753CLL;
  v20 = 0xEE003E6465726574;
  if (v18)
  {
    CAFEngineRPMObservable.rotationalSpeedMarkerRedline.getter();
    v19 = String.init<A>(describing:)();
    v20 = v21;
  }

  v25 = v19;
  if ([v10 registeredForRotationalSpeedMax])
  {
    CAFEngineRPMObservable.rotationalSpeedMax.getter();
    lazy protocol witness table accessor for type Measurement<CAFUnitRotationalSpeed> and conformance Measurement<A>();
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    v2 = v22;
    (*(v24 + 8))(v9, v4);
  }

  v30 = 0;
  v31 = 0xE000000000000000;
  _StringGuts.grow(_:)(136);
  MEMORY[0x245D0A530](0xD000000000000019, 0x800000024230F780);
  v29 = v1;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000014, 0x800000024230F7A0);
  MEMORY[0x245D0A530](v27, v28);

  MEMORY[0x245D0A530](0xD000000000000018, 0x800000024230F7C0);
  MEMORY[0x245D0A530](v26, v16);

  MEMORY[0x245D0A530](0xD000000000000020, 0x800000024230F7E0);
  MEMORY[0x245D0A530](v25, v20);

  MEMORY[0x245D0A530](0xD000000000000016, 0x800000024230F810);
  MEMORY[0x245D0A530](v3, v2);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return v30;
}

uint64_t CAFEngineRPMObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine22CAFEngineRPMObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine22CAFEngineRPMObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine22CAFEngineRPMObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine22CAFEngineRPMObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFEngineRPMObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFEngineRPMObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine22CAFEngineRPMObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine22CAFEngineRPMObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine22CAFEngineRPMObservable__rotationalSpeed;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA22CAFEngineRPMObservableC10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA22CAFEngineRPMObservableC10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v7] = v8;
  v9 = OBJC_IVAR____TtC10CAFCombine22CAFEngineRPMObservable__rotationalSpeedState;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA22CAFEngineRPMObservableCSo23CAFRotationalSpeedStateVSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA22CAFEngineRPMObservableCSo23CAFRotationalSpeedStateVSgGMR);
  swift_allocObject();
  v10 = OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v10, v11, v12, v13, v14, v15, v16, v17, v26.receiver, v26.super_class, v27, v28, v29, v30, v31, v32);
  *&v2[v9] = v18;
  v19 = OBJC_IVAR____TtC10CAFCombine22CAFEngineRPMObservable__rotationalSpeedMarkerRedline;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA22CAFEngineRPMObservableC10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA22CAFEngineRPMObservableC10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGSgGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v19] = v20;
  v21 = OBJC_IVAR____TtC10CAFCombine22CAFEngineRPMObservable__rotationalSpeedMax;
  swift_getKeyPath();
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v21] = v22;
  *&v2[OBJC_IVAR____TtC10CAFCombine22CAFEngineRPMObservable_observed] = a1;
  v26.receiver = v2;
  v26.super_class = type metadata accessor for CAFEngineRPMObservable();
  v23 = a1;
  v24 = objc_msgSendSuper2(&v26, sel_init);
  [v23 registerObserver_];

  return v24;
}

uint64_t CAFEngineRPMObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine22CAFEngineRPMObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFEngineRPMObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine22CAFEngineRPMObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFEngineRPMObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFEngineRPMObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFEngineRPMObservable@<X0>(void *a1@<X8>)
{
  result = CAFEngineRPMObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFEngineRPMObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFEngineRPMObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFEngineRPMObservable.engineRPMService(_:didUpdateRotationalSpeedState:)(uint64_t a1, unsigned __int8 a2)
{

  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFEngineRPMObservable.engineRPMService(_:didUpdateRotationalSpeed:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{

  a4(a2);
}

uint64_t @objc CAFEngineRPMObservable.engineRPMService(_:didUpdateRotationalSpeed:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGMd, &_s10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGMR);
  OUTLINED_FUNCTION_30();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFUnitRotationalSpeed, 0x277CF8778);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = a1;
  a5();

  return (*(v10 + 8))(v13, v8);
}

uint64_t CAFEngineRPMObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFEngineRPMObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFEngineRPMObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t key path getter for CAFEngineRPM.rotationalSpeedStateBridged : CAFEngineRPM@<X0>(_BYTE *a1@<X8>)
{
  result = CAFEngineRPM.rotationalSpeedStateBridged.getter();
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

uint64_t key path getter for CAFEngineRPM.rotationalSpeedMarkerRedline : CAFEngineRPM@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 rotationalSpeedMarkerRedline];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFUnitRotationalSpeed, 0x277CF8778);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGMd, &_s10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGMR);

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v6);
}

void key path getter for CAFEngineRPM.rotationalSpeed : CAFEngineRPM(id *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v4 = [*a1 *a4];
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFUnitRotationalSpeed, 0x277CF8778);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
}

unint64_t lazy protocol witness table accessor for type CAFEngineRPM and conformance CAFEngineRPM()
{
  result = lazy protocol witness table cache variable for type CAFEngineRPM and conformance CAFEngineRPM;
  if (!lazy protocol witness table cache variable for type CAFEngineRPM and conformance CAFEngineRPM)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFEngineRPM, 0x277CF8470);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFEngineRPM and conformance CAFEngineRPM);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFEngineRPMObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFEngineRPMObservable and conformance CAFEngineRPMObservable(&lazy protocol witness table cache variable for type CAFEngineRPMObservable and conformance CAFEngineRPMObservable, &protocol conformance descriptor for CAFEngineRPMObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFEngineRPMObservable and conformance CAFEngineRPMObservable(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFEngineRPMObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of Measurement<CAFUnitRotationalSpeed>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGSgMd, &_s10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double partial apply for closure #1 in CAFEngineRPMObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine22CAFEngineRPMObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

unint64_t lazy protocol witness table accessor for type Measurement<CAFUnitRotationalSpeed> and conformance Measurement<A>()
{
  result = lazy protocol witness table cache variable for type Measurement<CAFUnitRotationalSpeed> and conformance Measurement<A>;
  if (!lazy protocol witness table cache variable for type Measurement<CAFUnitRotationalSpeed> and conformance Measurement<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGMd, &_s10Foundation11MeasurementVySo22CAFUnitRotationalSpeedCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Measurement<CAFUnitRotationalSpeed> and conformance Measurement<A>);
  }

  return result;
}

uint64_t CAFEngineTemperatureObservable.temperatureState.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine30CAFEngineTemperatureObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFEngineTemperatureObservable.temperature.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine30CAFEngineTemperatureObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();
}

uint64_t CAFEngineTemperatureObservable.$temperature.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t CAFEngineTemperatureObservable._description.getter()
{
  v1 = v0;
  v2 = 0xEE003E6465726574;
  v3 = 0x73696765726E753CLL;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMR);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v4);
  v37 = &v35 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v6);
  v7 = *(v0 + OBJC_IVAR____TtC10CAFCombine30CAFEngineTemperatureObservable_observed);
  v8 = 0x73696765726E753CLL;
  v9 = 0xEE003E6465726574;
  if ([v7 registeredForTemperature])
  {
    CAFEngineTemperatureObservable.temperature.getter();
    v10 = lazy protocol witness table accessor for type Measurement<NSUnitTemperature> and conformance Measurement<A>();
    v8 = OUTLINED_FUNCTION_6_6(v10);
    v9 = v11;
    v12 = OUTLINED_FUNCTION_7_7();
    v13(v12);
  }

  v39 = v9;
  v14 = [v7 registeredForTemperatureState];
  v41 = 0x73696765726E753CLL;
  v15 = 0xEE003E6465726574;
  if (v14)
  {
    CAFEngineTemperatureObservable.temperatureState.getter();
    v16 = NSStringFromTemperatureState();
    if (v16)
    {
      v17 = v16;
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v18;
    }

    else
    {
      v15 = 0xE900000000000029;
      v41 = 0x6E776F6E6B6E7528;
    }
  }

  v36 = v15;
  v38 = v8;
  v19 = 0x73696765726E753CLL;
  v20 = 0xEE003E6465726574;
  if ([v7 registeredForTemperatureMin])
  {
    CAFEngineTemperatureObservable.temperatureMin.getter();
    v21 = lazy protocol witness table accessor for type Measurement<NSUnitTemperature> and conformance Measurement<A>();
    v19 = OUTLINED_FUNCTION_6_6(v21);
    v20 = v22;
    v23 = OUTLINED_FUNCTION_7_7();
    v24(v23);
  }

  v25 = [v7 registeredForTemperatureMax];
  v26 = 0x73696765726E753CLL;
  v27 = 0xEE003E6465726574;
  if (v25)
  {
    CAFEngineTemperatureObservable.temperatureMax.getter();
    v28 = lazy protocol witness table accessor for type Measurement<NSUnitTemperature> and conformance Measurement<A>();
    v26 = OUTLINED_FUNCTION_6_6(v28);
    v27 = v29;
    v30 = OUTLINED_FUNCTION_7_7();
    v31(v30);
  }

  if ([v7 registeredForTemperatureMarkerCold])
  {
    CAFEngineTemperatureObservable.temperatureMarkerCold.getter();
    String.init<A>(describing:)();
  }

  if ([v7 registeredForTemperatureMarkerHot])
  {
    CAFEngineTemperatureObservable.temperatureMarkerHot.getter();
    v3 = String.init<A>(describing:)();
    v2 = v32;
  }

  v43 = 0;
  v44 = 0xE000000000000000;
  _StringGuts.grow(_:)(171);
  MEMORY[0x245D0A530](0xD000000000000021, 0x800000024230F8A0);
  v42 = v1;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000010, 0x800000024230EA50);
  MEMORY[0x245D0A530](v38, v39);

  MEMORY[0x245D0A530](0xD000000000000014, 0x800000024230F2A0);
  MEMORY[0x245D0A530](v41, v36);

  OUTLINED_FUNCTION_2_26();
  MEMORY[0x245D0A530](v35, v20);

  OUTLINED_FUNCTION_2_26();
  MEMORY[0x245D0A530](v26, v27);

  MEMORY[0x245D0A530](0xD000000000000019, 0x800000024230F300);
  v33 = OUTLINED_FUNCTION_7_7();
  MEMORY[0x245D0A530](v33);

  MEMORY[0x245D0A530](0xD000000000000018, 0x800000024230F320);
  MEMORY[0x245D0A530](v3, v2);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return v43;
}

uint64_t CAFEngineTemperatureObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine30CAFEngineTemperatureObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine30CAFEngineTemperatureObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine30CAFEngineTemperatureObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine30CAFEngineTemperatureObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFEngineTemperatureObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFEngineTemperatureObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine30CAFEngineTemperatureObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine30CAFEngineTemperatureObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine30CAFEngineTemperatureObservable__temperature;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA30CAFEngineTemperatureObservableC10Foundation11MeasurementVySo06NSUnitG0CGGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA30CAFEngineTemperatureObservableC10Foundation11MeasurementVySo06NSUnitG0CGGMR);
  swift_allocObject();
  v8 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v8, v9, v10, v11, v12, v13, v14, v15, v57.receiver, v57.super_class, v58, v59, v60, v61, v62, v63, vars0, vars8);
  v16 = OBJC_IVAR____TtC10CAFCombine30CAFEngineTemperatureObservable__temperatureState;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA30CAFEngineTemperatureObservableCSo19CAFTemperatureStateVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA30CAFEngineTemperatureObservableCSo19CAFTemperatureStateVGMR);
  swift_allocObject();
  v17 = OUTLINED_FUNCTION_0_7();
  *&v2[v16] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v17);
  v18 = OBJC_IVAR____TtC10CAFCombine30CAFEngineTemperatureObservable__temperatureMin;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v19 = OUTLINED_FUNCTION_0_7();
  *&v2[v18] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v19, v20, v21, v22, v23, v24, v25, v26, v57.receiver, v57.super_class, v58, v59, v60, v61, v62, v63, vars0, vars8);
  v27 = OBJC_IVAR____TtC10CAFCombine30CAFEngineTemperatureObservable__temperatureMax;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v28 = OUTLINED_FUNCTION_0_7();
  *&v2[v27] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v28, v29, v30, v31, v32, v33, v34, v35, v57.receiver, v57.super_class, v58, v59, v60, v61, v62, v63, vars0, vars8);
  v36 = OBJC_IVAR____TtC10CAFCombine30CAFEngineTemperatureObservable__temperatureMarkerCold;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA30CAFEngineTemperatureObservableC10Foundation11MeasurementVySo06NSUnitG0CGSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA30CAFEngineTemperatureObservableC10Foundation11MeasurementVySo06NSUnitG0CGSgGMR);
  swift_allocObject();
  v37 = OUTLINED_FUNCTION_0_7();
  *&v2[v36] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v37, v38, v39, v40, v41, v42, v43, v44, v57.receiver, v57.super_class, v58, v59, v60, v61, v62, v63, vars0, vars8);
  v45 = OBJC_IVAR____TtC10CAFCombine30CAFEngineTemperatureObservable__temperatureMarkerHot;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v46 = OUTLINED_FUNCTION_0_7();
  *&v2[v45] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v46, v47, v48, v49, v50, v51, v52, v53, v57.receiver, v57.super_class, v58, v59, v60, v61, v62, v63, vars0, vars8);
  *&v2[OBJC_IVAR____TtC10CAFCombine30CAFEngineTemperatureObservable_observed] = a1;
  v57.receiver = v2;
  v57.super_class = type metadata accessor for CAFEngineTemperatureObservable();
  v54 = a1;
  v55 = objc_msgSendSuper2(&v57, sel_init);
  [v54 registerObserver_];

  return v55;
}

uint64_t CAFEngineTemperatureObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine30CAFEngineTemperatureObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFEngineTemperatureObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine30CAFEngineTemperatureObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFEngineTemperatureObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFEngineTemperatureObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFEngineTemperatureObservable@<X0>(void *a1@<X8>)
{
  result = CAFEngineTemperatureObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFEngineTemperatureObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFEngineTemperatureObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFEngineTemperatureObservable.engineTemperatureService(_:didUpdateTemperatureState:)(uint64_t a1, unsigned __int8 a2)
{

  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t @objc CAFEngineTemperatureObservable.engineTemperatureService(_:didUpdateTemperature:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  OUTLINED_FUNCTION_30();
  v10 = v9;
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitTemperature, 0x277CCAE48);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = a1;
  a5();

  return (*(v10 + 8))(v13, v8);
}

uint64_t CAFEngineTemperatureObservable.engineTemperatureService(_:didUpdateTemperature:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{

  a4(a2);
}

uint64_t @objc CAFEngineTemperatureObservable.engineTemperatureService(_:didUpdateTemperatureMarkerCold:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMR);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  if (a4)
  {
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitTemperature, 0x277CCAE48);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
    v13 = v11;
    v14 = 0;
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
    v13 = v11;
    v14 = 1;
  }

  __swift_storeEnumTagSinglePayload(v13, v14, 1, v12);
  v15 = a3;
  v16 = a1;
  a5();

  return outlined destroy of Measurement<NSUnitTemperature>?(v11);
}

uint64_t CAFEngineTemperatureObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFEngineTemperatureObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFEngineTemperatureObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CAFEngineTemperature and conformance CAFEngineTemperature()
{
  result = lazy protocol witness table cache variable for type CAFEngineTemperature and conformance CAFEngineTemperature;
  if (!lazy protocol witness table cache variable for type CAFEngineTemperature and conformance CAFEngineTemperature)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFEngineTemperature, 0x277CF8478);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFEngineTemperature and conformance CAFEngineTemperature);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFEngineTemperatureObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFEngineTemperatureObservable and conformance CAFEngineTemperatureObservable(&lazy protocol witness table cache variable for type CAFEngineTemperatureObservable and conformance CAFEngineTemperatureObservable, &protocol conformance descriptor for CAFEngineTemperatureObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFEngineTemperatureObservable and conformance CAFEngineTemperatureObservable(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFEngineTemperatureObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double partial apply for closure #1 in CAFEngineTemperatureObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine30CAFEngineTemperatureObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

unint64_t CAFInteriorAmbientLights.brightnessBridged.getter()
{
  v1 = [v0 hasBrightness];
  v2 = v1;
  if (v1)
  {
    v3 = [v0 brightness];
  }

  else
  {
    v3 = 0;
  }

  return v3 | ((v2 ^ 1u) << 32);
}

id CAFInteriorAmbientLights.brightnessBridged.setter(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  return [v1 setBrightness_];
}

uint64_t key path getter for CAFInteriorAmbientLightsObservable.primaryColor : CAFInteriorAmbientLightsObservable@<X0>(uint64_t *a1@<X8>)
{
  result = CAFInteriorAmbientLightsObservable.primaryColor.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t key path setter for CAFInteriorAmbientLightsObservable.primaryColor : CAFInteriorAmbientLightsObservable(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return CAFInteriorAmbientLightsObservable.primaryColor.setter(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
}

uint64_t CAFInteriorAmbientLightsObservable.primaryColor.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable__primaryColor, v8);
  v7 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable_observed);
  swift_retain_n();

  v1 = v7;
  v2 = swift_readAtKeyPath();
  v4 = *v3;

  v2(&v6, 0);

  return v4;
}

uint64_t CAFInteriorAmbientLightsObservable.primaryColor.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  KeyPath = swift_getKeyPath();
  v12 = swift_getKeyPath();
  v13 = v10;
  v14 = OUTLINED_FUNCTION_197();

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA34CAFInteriorAmbientLightsObservableC_SSTt3g5(v14, v15, v16, KeyPath, v12, v17, v18, v19, a9, a10);
}

void (*CAFInteriorAmbientLightsObservable.primaryColor.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x68uLL);
  *a1 = v3;
  v3[10] = v1;
  v3[11] = swift_getKeyPath();
  v3[12] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable__primaryColor, (v3 + 4));
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable_observed);
  v3[9] = v4;
  swift_retain_n();

  v5 = v4;
  v6 = OUTLINED_FUNCTION_2_5();
  v9 = *v7;
  v8 = v7[1];

  v6(v3, 0);

  v3[7] = v9;
  v3[8] = v8;
  return CAFInteriorAmbientLightsObservable.primaryColor.modify;
}

void CAFInteriorAmbientLightsObservable.primaryColor.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 80);
  if (a2)
  {

    OUTLINED_FUNCTION_2_32(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    OUTLINED_FUNCTION_2_32(v4, v5, v6, v7, v8, v9, v10, v11, v20, v21);
  }

  free(v3);
}

unint64_t key path getter for CAFInteriorAmbientLightsObservable.brightness : CAFInteriorAmbientLightsObservable@<X0>(uint64_t a1@<X8>)
{
  result = CAFInteriorAmbientLightsObservable.brightness.getter();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t CAFInteriorAmbientLightsObservable.brightness.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable__brightness, v9);
  v8 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable_observed);

  v1 = v8;
  v2 = swift_readAtKeyPath();
  v4 = *v3;
  v5 = *(v3 + 4);
  v2(v7, 0);

  return v4 | (v5 << 32);
}

uint64_t CAFInteriorAmbientLightsObservable.brightness.setter(unint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = v1;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA34CAFInteriorAmbientLightsObservableC_s6UInt32VSgTt3g5(a1 | ((HIDWORD(a1) & 1) << 32), v5, KeyPath, v4);
}

void (*CAFInteriorAmbientLightsObservable.brightness.modify(void *a1))(uint64_t **a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable__brightness, (v3 + 4));
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable_observed);
  v3[7] = v4;

  v5 = v4;
  v6 = OUTLINED_FUNCTION_2_5();
  v8 = *v7;
  v9 = *(v7 + 4);
  v6(v3, 0);

  *(v3 + 22) = v8;
  *(v3 + 92) = v9;
  return CAFInteriorAmbientLightsObservable.brightness.modify;
}

void CAFInteriorAmbientLightsObservable.brightness.modify(uint64_t **a1)
{
  v1 = *a1;
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA34CAFInteriorAmbientLightsObservableC_s6UInt32VSgTt3g5(*(*a1 + 22) | (*(*a1 + 92) << 32), (*a1)[8], v1[9], v1[10]);

  free(v1);
}

uint64_t CAFInteriorAmbientLightsObservable.$primaryColor.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_234(v2 + *a1, v7);

  v5 = a2(v4);

  return v5;
}

uint64_t CAFInteriorAmbientLightsObservable.supportedColors.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFInteriorAmbientLightsObservable.$supportedColors.getter()
{

  specialized SafeReadOnlyPublished.projectedValue.getter();
  v1 = v0;

  return v1;
}

uint64_t CAFInteriorAmbientLightsObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable_observed);
  v2 = 0x73696765726E753CLL;
  v3 = 0xEE003E6465726574;
  if ([v1 registeredForPrimaryColor])
  {
    v2 = CAFInteriorAmbientLightsObservable.primaryColor.getter();
    v3 = v4;
  }

  v5 = 0x73696765726E753CLL;
  v6 = 0xEE003E6465726574;
  if ([v1 registeredForBrightness])
  {
    CAFInteriorAmbientLightsObservable.brightness.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32VSgMd, &_ss6UInt32VSgMR);
    v5 = String.init<A>(describing:)();
    v6 = v7;
  }

  if ([v1 registeredForSupportedColors])
  {
    CAFInteriorAmbientLightsObservable.supportedColors.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18CAFSupportedColorsCSgMd, &_sSo18CAFSupportedColorsCSgMR);
    String.init<A>(describing:)();
  }

  _StringGuts.grow(_:)(98);
  MEMORY[0x245D0A530](0xD000000000000025, 0x800000024230F970);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000011, 0x800000024230F9A0);
  MEMORY[0x245D0A530](v2, v3);

  MEMORY[0x245D0A530](0x746867697262202CLL, 0xEE00203A7373656ELL);
  MEMORY[0x245D0A530](v5, v6);

  MEMORY[0x245D0A530](0xD000000000000013, 0x800000024230F9C0);
  v8 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v8);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFInteriorAmbientLightsObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable_cachedDescription + 8))
  {
    v4 = *(v0 + v1);
  }

  else
  {
    *v3 = CAFInteriorAmbientLightsObservable._description.getter();
    v3[1] = v5;

    v4 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v4 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFInteriorAmbientLightsObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable__primaryColor;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA34CAFInteriorAmbientLightsObservableCSSGMd, &_s10CAFCombine13SafePublishedCyAA34CAFInteriorAmbientLightsObservableCSSGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v8 = OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable__brightness;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA34CAFInteriorAmbientLightsObservableCs6UInt32VSgGMd, _s10CAFCombine13SafePublishedCyAA34CAFInteriorAmbientLightsObservableCs6UInt32VSgGMR);
  swift_allocObject();
  v9 = OUTLINED_FUNCTION_0_7();
  *&v2[v8] = specialized SafePublished.init(observedValuekeypath:)(v9);
  v10 = OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable__supportedColors;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFInteriorAmbientLightsObservableCSo18CAFSupportedColorsCSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFInteriorAmbientLightsObservableCSo18CAFSupportedColorsCSgGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable_observed] = a1;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for CAFInteriorAmbientLightsObservable();
  v11 = a1;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  [v11 registerObserver_];

  return v12;
}

uint64_t CAFInteriorAmbientLightsObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFInteriorAmbientLightsObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFInteriorAmbientLightsObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFInteriorAmbientLightsObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFInteriorAmbientLightsObservable@<X0>(void *a1@<X8>)
{
  result = CAFInteriorAmbientLightsObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFInteriorAmbientLightsObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFInteriorAmbientLightsObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFInteriorAmbientLightsObservable.interiorAmbientLightsService(_:didUpdatePrimaryColor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_234(v3 + OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable__primaryColor, v7);

  v4 = OUTLINED_FUNCTION_197();
  specialized SafePublished.value.setter(v4, v5);
}

uint64_t CAFInteriorAmbientLightsObservable.interiorAmbientLightsService(_:didUpdateBrightness:)(uint64_t a1, unsigned int a2)
{
  OUTLINED_FUNCTION_234(v2 + OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable__brightness, v5);

  specialized SafePublished.value.setter(a2);
}

uint64_t CAFInteriorAmbientLightsObservable.interiorAmbientLightsService(_:didUpdateSupportedColors:)(uint64_t a1, void *a2)
{
  v3 = a2;

  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFInteriorAmbientLightsObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFInteriorAmbientLightsObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFInteriorAmbientLightsObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFInteriorAmbientLights.primaryColor : CAFInteriorAmbientLights(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 primaryColor];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void key path setter for CAFInteriorAmbientLights.primaryColor : CAFInteriorAmbientLights(void *a1, void **a2)
{
  v2 = *a2;
  v3 = MEMORY[0x245D0A4C0](*a1, a1[1]);
  [v2 setPrimaryColor_];
}

unint64_t key path getter for CAFInteriorAmbientLights.brightnessBridged : CAFInteriorAmbientLights@<X0>(uint64_t a1@<X8>)
{
  result = CAFInteriorAmbientLights.brightnessBridged.getter();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

id key path getter for CAFInteriorAmbientLights.supportedColors : CAFInteriorAmbientLights@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 supportedColors];
  *a2 = result;
  return result;
}

unint64_t type metadata accessor for CAFInteriorAmbientLights()
{
  result = lazy cache variable for type metadata for CAFInteriorAmbientLights;
  if (!lazy cache variable for type metadata for CAFInteriorAmbientLights)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFInteriorAmbientLights);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFInteriorAmbientLightsObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFInteriorAmbientLightsObservable and conformance CAFInteriorAmbientLightsObservable(&lazy protocol witness table cache variable for type CAFInteriorAmbientLightsObservable and conformance CAFInteriorAmbientLightsObservable, a2, type metadata accessor for CAFInteriorAmbientLightsObservable, &protocol conformance descriptor for CAFInteriorAmbientLightsObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFInteriorAmbientLightsObservable and conformance CAFInteriorAmbientLightsObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFInteriorAmbientLightsObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine34CAFInteriorAmbientLightsObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t OUTLINED_FUNCTION_2_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA34CAFInteriorAmbientLightsObservableC_SSTt3g5(v10, v11, v13, v14, v12, a6, a7, a8, a9, a10);
}

unint64_t CAFMediaSource.currentFrequencyBridged.getter()
{
  v1 = [v0 hasCurrentFrequency];
  v2 = v1;
  if (v1)
  {
    v3 = [v0 currentFrequency];
  }

  else
  {
    v3 = 0;
  }

  return v3 | ((v2 ^ 1u) << 32);
}

unint64_t CAFMediaSourceObservable.currentFrequency.getter()
{
  OUTLINED_FUNCTION_228();
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4 | (v5 << 32);
}

uint64_t CAFMediaSourceObservable.currentMediaItemIdentifier.getter()
{
  return CAFMediaSourceObservable.currentMediaItemIdentifier.getter();
}

{
  OUTLINED_FUNCTION_228();
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable_observed);

  OUTLINED_FUNCTION_232(v2);

  return v3;
}

uint64_t CAFMediaSourceObservable.mediaItems.getter()
{
  return CAFMediaSourceObservable.mediaItems.getter();
}

{
  OUTLINED_FUNCTION_228();
  OUTLINED_FUNCTION_7_4();

  v1 = v0;
  swift_getAtKeyPath();

  return v3;
}

uint64_t CAFMediaSourceObservable.mediaSourceSemanticType.getter()
{
  OUTLINED_FUNCTION_228();
  OUTLINED_FUNCTION_7_4();

  v1 = v0;
  OUTLINED_FUNCTION_231(v1, v2, v3, v4, v5, v6, v7, v8, v10);

  return v11;
}

uint64_t CAFMediaSourceObservable.disabled.getter()
{
  OUTLINED_FUNCTION_228();
  OUTLINED_FUNCTION_7_4();

  v1 = v0;
  OUTLINED_FUNCTION_231(v1, v2, v3, v4, v5, v6, v7, v8, v10);

  return v11;
}

uint64_t CAFMediaSourceObservable.$currentFrequency.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3();
  v4 = a2(v3);

  return v4;
}

uint64_t CAFMediaSourceObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable_observed);
  v2 = [v1 registeredForCurrentFrequency];
  v3 = 0x73696765726E753CLL;
  v4 = 0xEE003E6465726574;
  if (v2)
  {
    CAFMediaSourceObservable.currentFrequency.getter();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32VSgMd, &_ss6UInt32VSgMR);
    v3 = OUTLINED_FUNCTION_7_8(v5, v6, v7, v8, v9, v10, v11, v12, v71, v73, v75);
  }

  v81 = v3;
  v82 = v4;
  v13 = [v1 registeredForCurrentMediaItemIdentifier];
  v14 = 0x73696765726E753CLL;
  v15 = 0xEE003E6465726574;
  if (v13)
  {
    CAFMediaSourceObservable.currentMediaItemIdentifier.getter();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v14 = OUTLINED_FUNCTION_7_8(v16, v17, v18, v19, v20, v21, v22, v23, v71, v73, v75);
  }

  v79 = v14;
  v80 = v15;
  v24 = [v1 registeredForMediaItems];
  v25 = 0x73696765726E753CLL;
  v26 = 0xEE003E6465726574;
  if (v24)
  {
    CAFMediaSourceObservable.mediaItems.getter();
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CAFMediaItemsCSgMd, &_sSo13CAFMediaItemsCSgMR);
    v25 = OUTLINED_FUNCTION_7_8(v27, v28, v29, v30, v31, v32, v33, v34, v71, v73, v75);
    v26 = v35;
  }

  v78 = v25;
  v36 = [v1 registeredForUserVisibleLabel];
  v37 = 0x73696765726E753CLL;
  v38 = 0xEE003E6465726574;
  if (v36)
  {
    CAFMediaSourceObservable.userVisibleLabel.getter();
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v37 = OUTLINED_FUNCTION_7_8(v39, v40, v41, v42, v43, v44, v45, v46, v71, v73, v75);
    v38 = v47;
  }

  v77 = v37;
  v48 = [v1 registeredForIdentifier];
  v49 = 0x73696765726E753CLL;
  v50 = 0xEE003E6465726574;
  if (v48)
  {
    v49 = CAFMediaSourceObservable.identifier.getter();
    v50 = v51;
  }

  v76 = v49;
  v52 = 0x73696765726E753CLL;
  v53 = 0xEE003E6465726574;
  if ([v1 registeredForMediaSourceSemanticType])
  {
    CAFMediaSourceObservable.mediaSourceSemanticType.getter();
    v54 = NSStringFromMediaSourceSemanticType();
    if (v54)
    {
      v55 = v54;
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v56;
    }

    else
    {
      v53 = 0xE900000000000029;
      v52 = 0x6E776F6E6B6E7528;
    }
  }

  v74 = v52;
  v57 = [v1 registeredForDisabled];
  v58 = 0x73696765726E753CLL;
  v59 = 0xEE003E6465726574;
  if (v57)
  {
    v60 = CAFMediaSourceObservable.disabled.getter();
    if (v60)
    {
      v58 = 1702195828;
    }

    else
    {
      v58 = 0x65736C6166;
    }

    if (v60)
    {
      v59 = 0xE400000000000000;
    }

    else
    {
      v59 = 0xE500000000000000;
    }
  }

  if ([v1 registeredForMediaItemImages])
  {
    CAFMediaSourceObservable.mediaItemImages.getter();
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18CAFMediaItemImagesCSgMd, &_sSo18CAFMediaItemImagesCSgMR);
    OUTLINED_FUNCTION_7_8(v61, v62, v63, v64, v65, v66, v67, v68, v72, v74, v76);
  }

  _StringGuts.grow(_:)(205);
  OUTLINED_FUNCTION_3_10();
  MEMORY[0x245D0A530](0xD00000000000001BLL);
  _print_unlocked<A, B>(_:_:)();
  OUTLINED_FUNCTION_3_10();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v81, v82);

  OUTLINED_FUNCTION_3_10();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v79, v80);

  MEMORY[0x245D0A530](0x49616964656D202CLL, 0xEE00203A736D6574);
  MEMORY[0x245D0A530](v78, v26);

  OUTLINED_FUNCTION_3_10();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v77, v38);

  MEMORY[0x245D0A530](0x69746E656469202CLL, 0xEE00203A72656966);
  MEMORY[0x245D0A530](v76, v50);

  OUTLINED_FUNCTION_3_10();
  MEMORY[0x245D0A530](0xD00000000000001BLL);
  MEMORY[0x245D0A530](v74, v53);

  MEMORY[0x245D0A530](0x6C6261736964202CLL, 0xEC000000203A6465);
  MEMORY[0x245D0A530](v72, v59);

  OUTLINED_FUNCTION_3_10();
  MEMORY[0x245D0A530]();
  v69 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v69);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFMediaSourceObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable_cachedDescription + 8))
  {
    v4 = *(v0 + v1);
  }

  else
  {
    *v3 = CAFMediaSourceObservable._description.getter();
    v3[1] = v5;

    v4 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v4 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFMediaSourceObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable__currentFrequency;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFMediaSourceObservableCs6UInt32VSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFMediaSourceObservableCs6UInt32VSgGMR);
  OUTLINED_FUNCTION_225(v8);
  v9 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(v9);
  v10 = OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable__currentMediaItemIdentifier;
  swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFMediaSourceObservableCSSSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFMediaSourceObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v11);
  OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)();
  v12 = OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable__mediaItems;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFMediaSourceObservableCSo0F5ItemsCSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFMediaSourceObservableCSo0F5ItemsCSgGMR);
  OUTLINED_FUNCTION_225(v13);
  OUTLINED_FUNCTION_0_7();
  *&v2[v12] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v14 = OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable__userVisibleLabel;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v14] = specialized SafePublished.init(observedValuekeypath:)();
  v15 = OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable__identifier;
  swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFMediaSourceObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFMediaSourceObservableCSSGMR);
  OUTLINED_FUNCTION_225(v16);
  OUTLINED_FUNCTION_0_7();
  *&v2[v15] = specialized SafePublished.init(observedValuekeypath:)();
  v17 = OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable__mediaSourceSemanticType;
  swift_getKeyPath();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFMediaSourceObservableCSo0fG12SemanticTypeVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFMediaSourceObservableCSo0fG12SemanticTypeVGMR);
  OUTLINED_FUNCTION_225(v18);
  v19 = OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v19, v20, v21, v22, v23, v24, v25, v26, v36.receiver, v36.super_class, v37, v38, v39, v40, v41, v42);
  *&v2[v17] = v27;
  v28 = OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable__disabled;
  swift_getKeyPath();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFMediaSourceObservableCSbGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFMediaSourceObservableCSbGMR);
  OUTLINED_FUNCTION_225(v29);
  OUTLINED_FUNCTION_0_7();
  *&v2[v28] = specialized SafePublished.init(observedValuekeypath:)();
  v30 = OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable__mediaItemImages;
  swift_getKeyPath();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFMediaSourceObservableCSo0F10ItemImagesCSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFMediaSourceObservableCSo0F10ItemImagesCSgGMR);
  OUTLINED_FUNCTION_225(v31);
  OUTLINED_FUNCTION_0_7();
  *&v2[v30] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v32 = OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v32] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable_observed] = a1;
  v36.receiver = v2;
  v36.super_class = type metadata accessor for CAFMediaSourceObservable();
  v33 = a1;
  v34 = objc_msgSendSuper2(&v36, sel_init);
  [v33 registerObserver_];

  return v34;
}

uint64_t CAFMediaSourceObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFMediaSourceObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFMediaSourceObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFMediaSourceObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFMediaSourceObservable@<X0>(void *a1@<X8>)
{
  result = CAFMediaSourceObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFMediaSourceObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFMediaSourceObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFMediaSourceObservable.mediaSourceService(_:didUpdateCurrentFrequency:)(uint64_t a1, unsigned int a2)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFMediaSourceObservable.mediaSourceService(_:didUpdateCurrentMediaItemIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  v4 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v4, v5);
}

double @objc CAFMediaSourceObservable.mediaSourceService(_:didUpdateCurrentMediaItemIdentifier:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFMediaSourceObservable.mediaSourceService(_:didUpdateMediaSourceSemanticType:)(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFMediaSourceObservable.mediaSourceService(_:didUpdateDisabled:)(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2 & 1);
}

uint64_t CAFMediaSourceObservable.mediaSourceService(_:didUpdateMediaItems:)(uint64_t a1, void *a2, void *a3, void (*a4)(void *))
{
  v6 = a2;

  a4(a2);
}

uint64_t CAFMediaSourceObservable.mediaSourceService(_:didUpdateIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3();

  v4 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v4, v5);
}

double @objc CAFMediaSourceObservable.mediaSourceService(_:didUpdateIdentifier:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFMediaSourceObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFMediaSourceObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFMediaSourceObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t key path getter for CAFMediaSource.currentFrequencyBridged : CAFMediaSource@<X0>(uint64_t a1@<X8>)
{
  result = CAFMediaSource.currentFrequencyBridged.getter();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

id key path getter for CAFMediaSource.mediaItems : CAFMediaSource@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mediaItems];
  *a2 = result;
  return result;
}

id key path getter for CAFMediaSource.mediaItemImages : CAFMediaSource@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mediaItemImages];
  *a2 = result;
  return result;
}

unint64_t type metadata accessor for CAFMediaSource()
{
  result = lazy cache variable for type metadata for CAFMediaSource;
  if (!lazy cache variable for type metadata for CAFMediaSource)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFMediaSource);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFMediaSourceObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFMediaSourceObservable and conformance CAFMediaSourceObservable(&lazy protocol witness table cache variable for type CAFMediaSourceObservable and conformance CAFMediaSourceObservable, a2, type metadata accessor for CAFMediaSourceObservable, &protocol conformance descriptor for CAFMediaSourceObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFMediaSourceObservable and conformance CAFMediaSourceObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFMediaSourceObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine24CAFMediaSourceObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t OUTLINED_FUNCTION_7_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{

  return String.init<A>(describing:)();
}

uint64_t key path getter for CAFRouteObservable.routeState : CAFRouteObservable@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFRouteObservable.routeState.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

uint64_t CAFRouteObservable.routeState.modify()
{
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable_observed);

  v5 = v2;
  OUTLINED_FUNCTION_2_5();
  v6 = OUTLINED_FUNCTION_4_6();
  v7(v6);

  *(v1 + 88) = v0;
  return OUTLINED_FUNCTION_23_2();
}

uint64_t key path getter for CAFRouteObservable.userVisibleApplicationName : CAFRouteObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFRouteObservable.userVisibleApplicationName.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  a2[1] = v8;
  return result;
}

uint64_t key path setter for CAFRouteObservable.userVisibleApplicationName : CAFRouteObservable(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return CAFRouteObservable.userVisibleApplicationName.setter(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
}

uint64_t CAFRouteObservable.userVisibleApplicationName.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_18_3(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3();
  swift_retain_n();

  v6 = v5;
  v14 = OUTLINED_FUNCTION_24_2(v6, v7, v8, v9, v10, v11, v12, v13, v18[0], v18[1], v18[2], v18[3], v19);
  v16 = *v15;

  v14(v18, 0);

  return v16;
}

uint64_t CAFRouteObservable.userVisibleApplicationName.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  KeyPath = swift_getKeyPath();
  v12 = swift_getKeyPath();
  v13 = v10;
  v14 = OUTLINED_FUNCTION_197();

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA18CAFRouteObservableC_SSSgTt3g5(v14, v15, v16, KeyPath, v12, v17, v18, v19, a9, a10);
}

uint64_t CAFRouteObservable.userVisibleApplicationName.modify()
{
  v2 = __swift_coroFrameAllocStub(0x68uLL);
  *(OUTLINED_FUNCTION_13_4(v2) + 80) = v0;
  v1[11] = swift_getKeyPath();
  v1[12] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable_observed);
  v1[9] = v3;
  OUTLINED_FUNCTION_11_3();
  swift_retain_n();

  v4 = v3;
  v5 = OUTLINED_FUNCTION_2_5();
  v8 = *v6;
  v7 = v6[1];

  v9 = OUTLINED_FUNCTION_7_5();
  v5(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v8;
  v1[8] = v7;
  return OUTLINED_FUNCTION_23_2();
}

void CAFRouteObservable.userVisibleApplicationName.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {

    v4 = v3;
    OUTLINED_FUNCTION_25_3(v4, v5, v6, v7, v8, v9, v10, v11, v20, v21);
  }

  else
  {
    v12 = v3;
    OUTLINED_FUNCTION_25_3(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
  }

  free(v2);
}

uint64_t key path getter for CAFRouteObservable.applicationEnabled : CAFRouteObservable@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFRouteObservable.applicationEnabled.getter(a1, a3, a4, a5, a6);
  *a2 = result & 1;
  return result;
}

uint64_t CAFRouteObservable.applicationEnabled.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  return CAFRouteObservable.applicationEnabled.setter(a1, &unk_242302700, &unk_242302728, a4, a5, a6, a7, a8, a9, a10);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v10;
  v12 = OUTLINED_FUNCTION_27_3();

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA18CAFRouteObservableC_SbTt3g5(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t CAFRouteObservable.applicationEnabled.modify()
{
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable_observed);

  v5 = v2;
  OUTLINED_FUNCTION_2_5();
  v6 = OUTLINED_FUNCTION_4_6();
  v7(v6);

  *(v1 + 88) = v0;
  return OUTLINED_FUNCTION_23_2();
}

uint64_t key path getter for CAFRouteObservable.userEnabled : CAFRouteObservable@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFRouteObservable.userEnabled.getter(a1, a3, a4, a5, a6);
  *a2 = result & 1;
  return result;
}

uint64_t CAFRouteObservable.applicationEnabled.getter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_18_3(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3();

  v7 = v5;
  OUTLINED_FUNCTION_24_2(v7, v8, v9, v10, v11, v12, v13, v14, v17, v18, v19, v20, v21);
  OUTLINED_FUNCTION_28_2();
  v15();

  return v6;
}

uint64_t CAFRouteObservable.userEnabled.modify()
{
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable_observed);

  v5 = v2;
  OUTLINED_FUNCTION_2_5();
  v6 = OUTLINED_FUNCTION_4_6();
  v7(v6);

  *(v1 + 88) = v0;
  return OUTLINED_FUNCTION_23_2();
}

void CAFRouteObservable.applicationEnabled.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 72);
  v2 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 64);
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA18CAFRouteObservableC_SbTt3g5(v4, v5, v3, v2, v6, v7, v8, v9, v10, v11);

  free(v1);
}

uint64_t CAFRouteObservable.vehicleEnabled.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFRouteObservable.$vehicleEnabled.getter()
{

  specialized SafePublished.projectedValue.getter();
  v1 = v0;

  return v1;
}

uint64_t key path getter for CAFRouteObservable.geodeticSystem : CAFRouteObservable@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFRouteObservable.geodeticSystem.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

uint64_t CAFRouteObservable.routeState.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_27_3();

  return a4(v6);
}

uint64_t CAFRouteObservable.geodeticSystem.modify()
{
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable_observed);

  v5 = v2;
  OUTLINED_FUNCTION_2_5();
  v6 = OUTLINED_FUNCTION_4_6();
  v7(v6);

  *(v1 + 88) = v0;
  return OUTLINED_FUNCTION_23_2();
}

void CAFRouteObservable.routeState.modify(uint64_t a1, uint64_t a2, void (*a3)(void, id, void, void))
{
  v3 = *a1;
  a3(*(*a1 + 88), *(*a1 + 64), *(*a1 + 72), *(*a1 + 80));

  free(v3);
}

id key path getter for CAFRouteObservable.origin : CAFRouteObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFRouteObservable.origin.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFRouteObservable.origin : CAFRouteObservable(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return CAFRouteObservable.origin.setter(v1, v3, v4, v5);
}

uint64_t CAFRouteObservable.origin.modify()
{
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  *(OUTLINED_FUNCTION_13_4(v4) + 72) = v0;
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable_observed);

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  v8 = *v7;
  v9 = *v7;
  v10 = OUTLINED_FUNCTION_7_5();
  v6(v10);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v8;
  return OUTLINED_FUNCTION_23_2();
}

id key path getter for CAFRouteObservable.destination : CAFRouteObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFRouteObservable.destination.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFRouteObservable.destination : CAFRouteObservable(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return CAFRouteObservable.destination.setter(v1, v3, v4, v5);
}

uint64_t CAFRouteObservable.destination.modify()
{
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  *(OUTLINED_FUNCTION_13_4(v4) + 72) = v0;
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable_observed);

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  v8 = *v7;
  v9 = *v7;
  v10 = OUTLINED_FUNCTION_7_5();
  v6(v10);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v8;
  return OUTLINED_FUNCTION_23_2();
}

id key path getter for CAFRouteObservable.legs : CAFRouteObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFRouteObservable.legs.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFRouteObservable.legs : CAFRouteObservable(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return CAFRouteObservable.legs.setter(v1);
}

id CAFRouteObservable.origin.getter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_18_3(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3();
  swift_retain_n();

  v6 = v5;
  v14 = OUTLINED_FUNCTION_24_2(v6, v7, v8, v9, v10, v11, v12, v13, v19[0], v19[1], v19[2], v19[3], v20);
  v16 = *v15;
  v17 = *v15;
  v14(v19, 0);

  return v16;
}

uint64_t CAFRouteObservable.origin.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, id, uint64_t, uint64_t))
{
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  v8 = v4;

  return a4(a1, v8, KeyPath, v7);
}

uint64_t CAFRouteObservable.legs.modify()
{
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  *(OUTLINED_FUNCTION_13_4(v4) + 72) = v0;
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable_observed);

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  v8 = *v7;
  v9 = *v7;
  v10 = OUTLINED_FUNCTION_7_5();
  v6(v10);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v8;
  return OUTLINED_FUNCTION_23_2();
}

void CAFRouteObservable.origin.modify(uint64_t a1, char a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = (*a1 + 56);
  v6 = *(*a1 + 72);
  if (a2)
  {
    v7 = *(*a1 + 56);
    v8 = v6;
    v9 = OUTLINED_FUNCTION_26_2();
    a3(v9);
  }

  else
  {
    v10 = v6;
    v11 = OUTLINED_FUNCTION_26_2();
    a3(v11);
  }

  free(v4);
}

uint64_t CAFRouteObservable.$routeState.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_16_3(v2 + *a1, a2);

  v5 = a2(v4);

  return v5;
}

uint64_t CAFRouteObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable_observed);
  v2 = [v1 registeredForRouteState];
  v7 = 0x73696765726E753CLL;
  v8 = 0xEE003E6465726574;
  if (v2)
  {
    CAFRouteObservable.routeState.getter(v2, v3, v4, v5, v6);
    v9 = NSStringFromRouteState();
    if (v9)
    {
      v10 = v9;
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v11;
    }

    else
    {
      v7 = 0x6E776F6E6B6E7528;
      v8 = 0xE900000000000029;
    }
  }

  v118 = v8;
  v12 = [v1 registeredForUserVisibleApplicationName];
  v16 = 0x73696765726E753CLL;
  v17 = 0xEE003E6465726574;
  if (v12)
  {
    CAFRouteObservable.userVisibleApplicationName.getter(v12, 0xEE003E6465726574, v13, v14, v15);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v16 = OUTLINED_FUNCTION_32_2(v18, v19, v20, v21, v22, v23, v24, v25, v103, v105, v107, v109, v111);
  }

  v115 = v16;
  v116 = v17;
  v26 = [v1 registeredForApplicationEnabled];
  v31 = 0x73696765726E753CLL;
  v32 = 0xEE003E6465726574;
  if (v26)
  {
    v33 = CAFRouteObservable.applicationEnabled.getter(v26, v27, v28, v29, v30);
    v31 = (v33 & 1) != 0 ? 1702195828 : 0x65736C6166;
    v32 = 0xE500000000000000;
    if (v33)
    {
      v32 = 0xE400000000000000;
    }
  }

  v113 = v32;
  v114 = v31;
  v117 = v7;
  v34 = [v1 registeredForUserEnabled];
  v39 = 0x73696765726E753CLL;
  v40 = 0xEE003E6465726574;
  if (v34)
  {
    v41 = CAFRouteObservable.userEnabled.getter(v34, v35, v36, v37, v38);
    if (v41)
    {
      v39 = 1702195828;
    }

    else
    {
      v39 = 0x65736C6166;
    }

    if (v41)
    {
      v40 = 0xE400000000000000;
    }

    else
    {
      v40 = 0xE500000000000000;
    }
  }

  v112 = v39;
  v42 = [v1 registeredForVehicleEnabled];
  v43 = 0x73696765726E753CLL;
  v44 = 0xEE003E6465726574;
  if (v42)
  {
    v45 = CAFRouteObservable.vehicleEnabled.getter();
    if (v45)
    {
      v43 = 1702195828;
    }

    else
    {
      v43 = 0x65736C6166;
    }

    if (v45)
    {
      v44 = 0xE400000000000000;
    }

    else
    {
      v44 = 0xE500000000000000;
    }
  }

  v110 = v43;
  v46 = [v1 registeredForGeodeticSystem];
  v51 = 0x73696765726E753CLL;
  v52 = 0xEE003E6465726574;
  if (v46)
  {
    CAFRouteObservable.geodeticSystem.getter(v46, v47, v48, v49, v50);
    v53 = NSStringFromGeodeticSystem();
    if (v53)
    {
      v54 = v53;
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v55;
    }

    else
    {
      v51 = 0x6E776F6E6B6E7528;
      v52 = 0xE900000000000029;
    }
  }

  v108 = v51;
  v56 = [v1 registeredForOrigin];
  v61 = 0x73696765726E753CLL;
  v62 = 0xEE003E6465726574;
  if (v56)
  {
    CAFRouteObservable.origin.getter(v56, v57, v58, v59, v60);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18CAFPointOfInterestCSgMd, _sSo18CAFPointOfInterestCSgMR);
    v61 = OUTLINED_FUNCTION_32_2(v63, v64, v65, v66, v67, v68, v69, v70, v103, v105, v51, v110, v112);
    v62 = v71;
  }

  v106 = v61;
  v72 = [v1 registeredForDestination];
  v77 = 0x73696765726E753CLL;
  v78 = 0xEE003E6465726574;
  if (v72)
  {
    CAFRouteObservable.destination.getter(v72, v73, v74, v75, v76);
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18CAFPointOfInterestCSgMd, _sSo18CAFPointOfInterestCSgMR);
    v77 = OUTLINED_FUNCTION_32_2(v79, v80, v81, v82, v83, v84, v85, v86, v103, v106, v108, v110, v112);
    v78 = v87;
  }

  v88 = [v1 registeredForLegs];
  if (v88)
  {
    CAFRouteObservable.legs.getter(v88, v89, v90, v91, v92);
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12CAFRouteLegsCSgMd, &_sSo12CAFRouteLegsCSgMR);
    OUTLINED_FUNCTION_32_2(v93, v94, v95, v96, v97, v98, v99, v100, v104, v106, v108, v110, v112);
  }

  _StringGuts.grow(_:)(195);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x6574756F72207B20, 0xEF203A6574617453);
  MEMORY[0x245D0A530](v117, v118);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v115, v116);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v114, v113);

  MEMORY[0x245D0A530](0x6E4572657375202CLL, 0xEF203A64656C6261);
  MEMORY[0x245D0A530](v112, v40);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530](0xD000000000000012);
  MEMORY[0x245D0A530](v110, v44);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530](0xD000000000000012);
  MEMORY[0x245D0A530](v108, v52);

  MEMORY[0x245D0A530](0x6E696769726F202CLL, 0xEA0000000000203ALL);
  MEMORY[0x245D0A530](v106, v62);

  MEMORY[0x245D0A530](0x6E6974736564202CLL, 0xEF203A6E6F697461);
  MEMORY[0x245D0A530](v104, v78);

  MEMORY[0x245D0A530](0x203A7367656C202CLL, 0xE800000000000000);
  v101 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v101);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFRouteObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable_cachedDescription + 8))
  {
    v4 = *(v0 + v1);
  }

  else
  {
    *v3 = CAFRouteObservable._description.getter();
    v3[1] = v5;

    v4 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v4 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFRouteObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable__routeState;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA18CAFRouteObservableCSo0D5StateVGMd, _s10CAFCombine13SafePublishedCyAA18CAFRouteObservableCSo0D5StateVGMR);
  OUTLINED_FUNCTION_225(v8);
  v9 = OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)(v9, v10, v11, v12, v13, v14, v15, v16, v44.receiver, v44.super_class, v45, v46, v47, v48, v49, v50);
  *&v2[v7] = v17;
  v18 = OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable__userVisibleApplicationName;
  swift_getKeyPath();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA18CAFRouteObservableCSSSgGMd, _s10CAFCombine13SafePublishedCyAA18CAFRouteObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v19);
  OUTLINED_FUNCTION_0_7();
  *&v2[v18] = specialized SafePublished.init(observedValuekeypath:)();
  v20 = OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable__applicationEnabled;
  swift_getKeyPath();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA18CAFRouteObservableCSbGMd, _s10CAFCombine13SafePublishedCyAA18CAFRouteObservableCSbGMR);
  OUTLINED_FUNCTION_225(v21);
  OUTLINED_FUNCTION_0_7();
  *&v2[v20] = specialized SafePublished.init(observedValuekeypath:)();
  v22 = OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable__userEnabled;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v22] = specialized SafePublished.init(observedValuekeypath:)();
  v23 = OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable__vehicleEnabled;
  swift_getKeyPath();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA18CAFRouteObservableCSbGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA18CAFRouteObservableCSbGMR);
  OUTLINED_FUNCTION_225(v24);
  OUTLINED_FUNCTION_0_7();
  *&v2[v23] = specialized SafePublished.init(observedValuekeypath:)();
  v25 = OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable__geodeticSystem;
  swift_getKeyPath();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA18CAFRouteObservableCSo17CAFGeodeticSystemVGMd, &_s10CAFCombine13SafePublishedCyAA18CAFRouteObservableCSo17CAFGeodeticSystemVGMR);
  OUTLINED_FUNCTION_225(v26);
  v27 = OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)(v27, v28, v29, v30, v31, v32, v33, v34, v44.receiver, v44.super_class, v45, v46, v47, v48, v49, v50);
  *&v2[v25] = v35;
  v36 = OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable__origin;
  swift_getKeyPath();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA18CAFRouteObservableCSo18CAFPointOfInterestCSgGMd, _s10CAFCombine13SafePublishedCyAA18CAFRouteObservableCSo18CAFPointOfInterestCSgGMR);
  OUTLINED_FUNCTION_225(v37);
  OUTLINED_FUNCTION_0_7();
  *&v2[v36] = specialized SafePublished.init(observedValuekeypath:)();
  v38 = OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable__destination;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v38] = specialized SafePublished.init(observedValuekeypath:)();
  v39 = OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable__legs;
  swift_getKeyPath();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA18CAFRouteObservableCSo0D4LegsCSgGMd, &_s10CAFCombine13SafePublishedCyAA18CAFRouteObservableCSo0D4LegsCSgGMR);
  OUTLINED_FUNCTION_225(v40);
  OUTLINED_FUNCTION_0_7();
  *&v2[v39] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable_observed] = a1;
  v44.receiver = v2;
  v44.super_class = type metadata accessor for CAFRouteObservable();
  v41 = a1;
  v42 = objc_msgSendSuper2(&v44, sel_init);
  [v41 registerObserver_];

  return v42;
}

uint64_t CAFRouteObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFRouteObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFRouteObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFRouteObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFRouteObservable@<X0>(void *a1@<X8>)
{
  result = CAFRouteObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFRouteObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFRouteObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFRouteObservable.routeService(_:didUpdateUserVisibleApplicationName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_16_3(v3 + OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable__userVisibleApplicationName, a2);

  v4 = OUTLINED_FUNCTION_197();
  specialized SafePublished.value.setter(v4, v5);
}

uint64_t CAFRouteObservable.routeService(_:didUpdateApplicationEnabled:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a2;
  OUTLINED_FUNCTION_16_3(v3 + *a3, a2);

  specialized SafePublished.value.setter(v4 & 1);
}

uint64_t CAFRouteObservable.routeService(_:didUpdateVehicleEnabled:)(uint64_t a1, char a2)
{

  specialized SafeReadOnlyPublished.value.setter(a2 & 1);
}

uint64_t CAFRouteObservable.routeService(_:didUpdateRouteState:)(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(void))
{
  v6 = a2;
  OUTLINED_FUNCTION_16_3(v4 + *a3, a2);

  a4(v6);
}

uint64_t CAFRouteObservable.routeService(_:didUpdateOrigin:)(uint64_t a1, void *a2, uint64_t *a3, void (*a4)(void *))
{
  OUTLINED_FUNCTION_16_3(v4 + *a3, a2);
  v7 = a2;

  a4(a2);
}

uint64_t CAFRouteObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFRouteObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFRouteObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFRoute.userVisibleApplicationName : CAFRoute(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 userVisibleApplicationName];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void key path setter for CAFRoute.userVisibleApplicationName : CAFRoute(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = MEMORY[0x245D0A4C0](*a1);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setUserVisibleApplicationName_];
}

id key path getter for CAFRoute.origin : CAFRoute@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 origin];
  *a2 = result;
  return result;
}

id key path getter for CAFRoute.destination : CAFRoute@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 destination];
  *a2 = result;
  return result;
}

id key path getter for CAFRoute.legs : CAFRoute@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 legs];
  *a2 = result;
  return result;
}

unint64_t type metadata accessor for CAFRoute()
{
  result = lazy cache variable for type metadata for CAFRoute;
  if (!lazy cache variable for type metadata for CAFRoute)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFRoute);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFRouteObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFRouteObservable and conformance CAFRouteObservable(&lazy protocol witness table cache variable for type CAFRouteObservable and conformance CAFRouteObservable, a2, type metadata accessor for CAFRouteObservable, &protocol conformance descriptor for CAFRouteObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFRouteObservable and conformance CAFRouteObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFRouteObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine18CAFRouteObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t OUTLINED_FUNCTION_6_7@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 64) = *(v1 + a1);

  return swift_retain_n();
}

uint64_t OUTLINED_FUNCTION_25_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA18CAFRouteObservableC_SSSgTt3g5(v11, v12, a1, v13, v10, a6, a7, a8, a9, a10);
}

uint64_t OUTLINED_FUNCTION_32_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{

  return String.init<A>(describing:)();
}

uint64_t CAFNowPlayingObservable.currentMediaSourceIdentifier.getter()
{
  return CAFNowPlayingObservable.currentMediaSourceIdentifier.getter();
}

{
  OUTLINED_FUNCTION_228();
  OUTLINED_FUNCTION_7_9();

  OUTLINED_FUNCTION_232(v0);

  return v2;
}

uint64_t CAFNowPlayingObservable.userVisibleDescription.getter()
{
  OUTLINED_FUNCTION_228();
  OUTLINED_FUNCTION_7_9();

  OUTLINED_FUNCTION_232(v0);

  return v2;
}

uint64_t CAFNowPlayingObservable.artwork.getter()
{
  OUTLINED_FUNCTION_228();
  OUTLINED_FUNCTION_7_9();

  OUTLINED_FUNCTION_232(v0);

  return v2;
}

uint64_t CAFNowPlayingObservable.jumpBackwardInterval.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();
}

uint64_t CAFNowPlayingObservable.playbackState.getter()
{
  return CAFNowPlayingObservable.playbackState.getter();
}

{
  OUTLINED_FUNCTION_228();
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4 | (v5 << 8);
}

uint64_t CAFNowPlayingObservable.$currentMediaSourceIdentifier.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3();
  v4 = a2(v3);

  return v4;
}

uint64_t CAFNowPlayingObservable._description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  MEMORY[0x28223BE20](v1);
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable_observed);
  [v2 registeredForCurrentMediaSourceIdentifier];
  OUTLINED_FUNCTION_9_2();
  if (v5)
  {
    v4 = CAFNowPlayingObservable.currentMediaSourceIdentifier.getter();
  }

  v48 = v4;
  v49 = v3;
  [v2 registeredForTitle];
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    v7 = CAFNowPlayingObservable.title.getter();
  }

  v46 = v7;
  v47 = v6;
  [v2 registeredForArtist];
  OUTLINED_FUNCTION_9_2();
  if (v11)
  {
    v10 = CAFNowPlayingObservable.artist.getter();
  }

  v44 = v10;
  v45 = v9;
  [v2 registeredForAlbum];
  OUTLINED_FUNCTION_9_2();
  if (v14)
  {
    v13 = CAFNowPlayingObservable.album.getter();
  }

  v42 = v13;
  v43 = v12;
  [v2 registeredForUserVisibleDescription];
  OUTLINED_FUNCTION_9_2();
  if (v17)
  {
    CAFNowPlayingObservable.userVisibleDescription.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v16 = String.init<A>(describing:)();
  }

  v40 = v16;
  v41 = v15;
  v18 = 0x73696765726E753CLL;
  v19 = 0xEE003E6465726574;
  if ([v2 registeredForArtwork])
  {
    v20 = CAFNowPlayingObservable.artwork.getter();
    v22 = v21;
    v18 = Data.description.getter();
    v19 = v23;
    outlined consume of Data._Representation(v20, v22);
  }

  v39 = v18;
  v24 = [v2 registeredForJumpBackwardInterval];
  v25 = 0x73696765726E753CLL;
  v26 = 0xEE003E6465726574;
  if (v24)
  {
    CAFNowPlayingObservable.jumpBackwardInterval.getter();
    v25 = String.init<A>(describing:)();
    v26 = v27;
  }

  v38 = v25;
  v28 = [v2 registeredForJumpForwardInterval];
  v29 = 0x73696765726E753CLL;
  v30 = 0xEE003E6465726574;
  if (v28)
  {
    CAFNowPlayingObservable.jumpForwardInterval.getter();
    v29 = String.init<A>(describing:)();
    v30 = v31;
  }

  v32 = 0x73696765726E753CLL;
  v33 = 0xEE003E6465726574;
  if ([v2 registeredForPlaybackState])
  {
    CAFNowPlayingObservable.playbackState.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16CAFPlaybackStateVSgMd, &_sSo16CAFPlaybackStateVSgMR);
    v32 = String.init<A>(describing:)();
    v33 = v34;
  }

  if ([v2 registeredForAudioContentBadge])
  {
    CAFNowPlayingObservable.audioContentBadge.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20CAFAudioContentBadgeVSgMd, &_sSo20CAFAudioContentBadgeVSgMR);
    String.init<A>(describing:)();
  }

  _StringGuts.grow(_:)(234);
  MEMORY[0x245D0A530](0xD00000000000001ALL, 0x800000024230FE10);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000021, 0x800000024230FE30);
  MEMORY[0x245D0A530](v48, v49);

  MEMORY[0x245D0A530](0x3A656C746974202CLL, 0xE900000000000020);
  MEMORY[0x245D0A530](v46, v47);

  MEMORY[0x245D0A530](0x747369747261202CLL, 0xEA0000000000203ALL);
  MEMORY[0x245D0A530](v44, v45);

  MEMORY[0x245D0A530](0x3A6D75626C61202CLL, 0xE900000000000020);
  MEMORY[0x245D0A530](v42, v43);

  MEMORY[0x245D0A530](0xD00000000000001ALL, 0x800000024230BDB0);
  MEMORY[0x245D0A530](v40, v41);

  MEMORY[0x245D0A530](0x726F77747261202CLL, 0xEB00000000203A6BLL);
  MEMORY[0x245D0A530](v39, v19);

  MEMORY[0x245D0A530](0xD000000000000018, 0x800000024230FE60);
  MEMORY[0x245D0A530](v38, v26);

  MEMORY[0x245D0A530](0xD000000000000017, 0x800000024230FE80);
  MEMORY[0x245D0A530](v37, v30);

  MEMORY[0x245D0A530](0xD000000000000011, 0x800000024230FEA0);
  MEMORY[0x245D0A530](v32, v33);

  MEMORY[0x245D0A530](0xD000000000000015, 0x800000024230FEC0);
  v35 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v35);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFNowPlayingObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable_cachedDescription + 8))
  {
    v4 = *(v0 + v1);
  }

  else
  {
    *v3 = CAFNowPlayingObservable._description.getter();
    v3[1] = v5;

    v4 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v4 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFNowPlayingObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable__currentMediaSourceIdentifier;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFNowPlayingObservableCSSGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFNowPlayingObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v9 = OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable__title;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v9] = specialized SafePublished.init(observedValuekeypath:)();
  v10 = OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable__artist;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)();
  v11 = OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable__album;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v11] = specialized SafePublished.init(observedValuekeypath:)();
  v12 = OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable__userVisibleDescription;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFNowPlayingObservableCSSSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFNowPlayingObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v13);
  OUTLINED_FUNCTION_0_7();
  *&v2[v12] = specialized SafePublished.init(observedValuekeypath:)();
  v14 = OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable__artwork;
  swift_getKeyPath();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFNowPlayingObservableC10Foundation4DataVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFNowPlayingObservableC10Foundation4DataVGMR);
  OUTLINED_FUNCTION_225(v15);
  OUTLINED_FUNCTION_0_7();
  *&v2[v14] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v16 = OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable__jumpBackwardInterval;
  swift_getKeyPath();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFNowPlayingObservableC10Foundation11MeasurementVySo14NSUnitDurationCGSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFNowPlayingObservableC10Foundation11MeasurementVySo14NSUnitDurationCGSgGMR);
  OUTLINED_FUNCTION_225(v17);
  v18 = OUTLINED_FUNCTION_0_7();
  *&v2[v16] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v18, v19, v20, v21, v22, v23, v24, v25, v60.receiver, v60.super_class, v61, v62, v63, v64, v65, v66, vars0, vars8);
  v26 = OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable__jumpForwardInterval;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v27 = OUTLINED_FUNCTION_0_7();
  *&v2[v26] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v27, v28, v29, v30, v31, v32, v33, v34, v60.receiver, v60.super_class, v61, v62, v63, v64, v65, v66, vars0, vars8);
  v35 = OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable__playbackState;
  swift_getKeyPath();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFNowPlayingObservableCSo16CAFPlaybackStateVSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFNowPlayingObservableCSo16CAFPlaybackStateVSgGMR);
  OUTLINED_FUNCTION_225(v36);
  v37 = OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v37, v38, v39, v40, v41, v42, v43, v44, v60.receiver, v60.super_class, v61, v62, v63, v64, v65, v66);
  *&v2[v35] = v45;
  v46 = OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable__audioContentBadge;
  swift_getKeyPath();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFNowPlayingObservableCSo20CAFAudioContentBadgeVSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFNowPlayingObservableCSo20CAFAudioContentBadgeVSgGMR);
  OUTLINED_FUNCTION_225(v47);
  v48 = OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v48, v49, v50, v51, v52, v53, v54, v55, v60.receiver, v60.super_class, v61, v62, v63, v64, v65, v66);
  *&v2[v46] = v56;
  *&v2[OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable_observed] = a1;
  v60.receiver = v2;
  v60.super_class = type metadata accessor for CAFNowPlayingObservable();
  v57 = a1;
  v58 = objc_msgSendSuper2(&v60, sel_init);
  [v57 registerObserver_];

  return v58;
}

uint64_t CAFNowPlayingObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFNowPlayingObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFNowPlayingObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFNowPlayingObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFNowPlayingObservable@<X0>(void *a1@<X8>)
{
  result = CAFNowPlayingObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFNowPlayingObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFNowPlayingObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

double @objc CAFNowPlayingObservable.nowPlayingService(_:didUpdateCurrentMediaSourceIdentifier:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFNowPlayingObservable.nowPlayingService(_:didUpdateCurrentMediaSourceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3();

  v4 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v4, v5);
}

uint64_t CAFNowPlayingObservable.nowPlayingService(_:didUpdateUserVisibleDescription:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v3, v4);
}

uint64_t CAFNowPlayingObservable.nowPlayingService(_:didUpdateArtwork:)()
{
  OUTLINED_FUNCTION_17_3();
  v0 = OUTLINED_FUNCTION_197();
  outlined copy of Data._Representation(v0, v1);
  v2 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v2, v3);
}

uint64_t CAFNowPlayingObservable.nowPlayingService(_:didUpdateJumpBackwardInterval:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.setValue(_:)();
}

uint64_t @objc CAFNowPlayingObservable.nowPlayingService(_:didUpdateJumpBackwardInterval:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  if (a4)
  {
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
    v13 = v11;
    v14 = 0;
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
    v13 = v11;
    v14 = 1;
  }

  __swift_storeEnumTagSinglePayload(v13, v14, 1, v12);
  v15 = a3;
  v16 = a1;
  a5();

  return outlined destroy of Measurement<NSUnitDuration>?(v11);
}

uint64_t CAFNowPlayingObservable.nowPlayingService(_:didUpdatePlaybackState:)(uint64_t a1, unsigned __int8 a2, uint64_t *a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_17_3();
  a4(a2);
}

uint64_t CAFNowPlayingObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFNowPlayingObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFNowPlayingObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFNowPlaying.userVisibleDescription : CAFNowPlaying(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 userVisibleDescription];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void key path getter for CAFNowPlaying.artwork : CAFNowPlaying(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 artwork];
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t key path getter for CAFNowPlaying.jumpBackwardInterval : CAFNowPlaying@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);

  return __swift_storeEnumTagSinglePayload(a3, v6, 1, v7);
}

uint64_t key path getter for CAFNowPlaying.playbackStateBridged : CAFNowPlaying@<X0>(_BYTE *a1@<X8>)
{
  result = CAFNowPlaying.playbackStateBridged.getter();
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

uint64_t key path getter for CAFNowPlaying.audioContentBadgeBridged : CAFNowPlaying@<X0>(_BYTE *a1@<X8>)
{
  result = CAFNowPlaying.audioContentBadgeBridged.getter();
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type CAFNowPlaying and conformance CAFNowPlaying()
{
  result = lazy protocol witness table cache variable for type CAFNowPlaying and conformance CAFNowPlaying;
  if (!lazy protocol witness table cache variable for type CAFNowPlaying and conformance CAFNowPlaying)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFNowPlaying, 0x277CF8558);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFNowPlaying and conformance CAFNowPlaying);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFNowPlayingObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFNowPlayingObservable and conformance CAFNowPlayingObservable(&lazy protocol witness table cache variable for type CAFNowPlayingObservable and conformance CAFNowPlayingObservable, &protocol conformance descriptor for CAFNowPlayingObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFNowPlayingObservable and conformance CAFNowPlayingObservable(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFNowPlayingObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of Measurement<NSUnitDuration>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

double partial apply for closure #1 in CAFNowPlayingObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine23CAFNowPlayingObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t OUTLINED_FUNCTION_7_9()
{
}

uint64_t CAFPairedDevicesActionObservable._description.getter()
{
  _StringGuts.grow(_:)(43);
  MEMORY[0x245D0A530](0xD000000000000023, 0x800000024230FF50);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x3E7D20207B20, 0xE600000000000000);
  return 0;
}

uint64_t CAFPairedDevicesActionObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine32CAFPairedDevicesActionObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFPairedDevicesActionObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine32CAFPairedDevicesActionObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine32CAFPairedDevicesActionObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFPairedDevicesActionObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFPairedDevicesActionObservable.init(_:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC10CAFCombine32CAFPairedDevicesActionObservable_cachedDescription];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC10CAFCombine32CAFPairedDevicesActionObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *&v1[v4] = v5;
  *&v1[OBJC_IVAR____TtC10CAFCombine32CAFPairedDevicesActionObservable_observed] = a1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for CAFPairedDevicesActionObservable();
  v6 = a1;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  [v6 registerObserver_];

  return v7;
}

uint64_t CAFPairedDevicesActionObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFPairedDevicesActionObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFPairedDevicesActionObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine32CAFPairedDevicesActionObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFPairedDevicesActionObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFPairedDevicesActionObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFPairedDevicesActionObservable@<X0>(void *a1@<X8>)
{
  result = CAFPairedDevicesActionObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFPairedDevicesActionObservable@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CAFPairedDevicesActionObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t CAFPairedDevicesActionObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFPairedDevicesActionObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFPairedDevicesActionObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFPairedDevicesAction()
{
  result = lazy cache variable for type metadata for CAFPairedDevicesAction;
  if (!lazy cache variable for type metadata for CAFPairedDevicesAction)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFPairedDevicesAction);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFPairedDevicesActionObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFPairedDevicesActionObservable and conformance CAFPairedDevicesActionObservable(&lazy protocol witness table cache variable for type CAFPairedDevicesActionObservable and conformance CAFPairedDevicesActionObservable, a2, type metadata accessor for CAFPairedDevicesActionObservable, &protocol conformance descriptor for CAFPairedDevicesActionObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFPairedDevicesActionObservable and conformance CAFPairedDevicesActionObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFPairedDevicesActionObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine32CAFPairedDevicesActionObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFPairedDevicesInformationObservable.pairedDeviceList.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine37CAFPairedDevicesInformationObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFPairedDevicesInformationObservable.$pairedDeviceList.getter()
{

  specialized SafeReadOnlyPublished.projectedValue.getter();
  v1 = v0;

  return v1;
}

uint64_t CAFPairedDevicesInformationObservable._description.getter()
{
  if ([*(v0 + OBJC_IVAR____TtC10CAFCombine37CAFPairedDevicesInformationObservable_observed) registeredForPairedDeviceList])
  {
    v1 = CAFPairedDevicesInformationObservable.pairedDeviceList.getter();
    v2 = [v1 description];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v5 = 0xEE003E6465726574;
    v3 = 0x73696765726E753CLL;
  }

  _StringGuts.grow(_:)(68);
  MEMORY[0x245D0A530](0xD000000000000028, 0x8000000242310020);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000015, 0x8000000242310050);
  MEMORY[0x245D0A530](v3, v5);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFPairedDevicesInformationObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine37CAFPairedDevicesInformationObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine37CAFPairedDevicesInformationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine37CAFPairedDevicesInformationObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine37CAFPairedDevicesInformationObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFPairedDevicesInformationObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFPairedDevicesInformationObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine37CAFPairedDevicesInformationObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine37CAFPairedDevicesInformationObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine37CAFPairedDevicesInformationObservable__pairedDeviceList;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFPairedDevicesInformationObservableCSo0F10DeviceListCGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFPairedDevicesInformationObservableCSo0F10DeviceListCGMR);
  swift_allocObject();
  *&v2[v7] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine37CAFPairedDevicesInformationObservable_observed] = a1;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for CAFPairedDevicesInformationObservable();
  v8 = a1;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  [v8 registerObserver_];

  return v9;
}

uint64_t CAFPairedDevicesInformationObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine37CAFPairedDevicesInformationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFPairedDevicesInformationObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine37CAFPairedDevicesInformationObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFPairedDevicesInformationObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFPairedDevicesInformationObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFPairedDevicesInformationObservable@<X0>(void *a1@<X8>)
{
  result = CAFPairedDevicesInformationObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFPairedDevicesInformationObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFPairedDevicesInformationObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFPairedDevicesInformationObservable.pairedDevicesInformationService(_:didUpdatePairedDeviceList:)(uint64_t a1, void *a2)
{

  v3 = a2;
  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFPairedDevicesInformationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFPairedDevicesInformationObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFPairedDevicesInformationObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

id key path getter for CAFPairedDevicesInformation.pairedDeviceList : CAFPairedDevicesInformation@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 pairedDeviceList];
  *a2 = result;
  return result;
}

unint64_t type metadata accessor for CAFPairedDevicesInformation()
{
  result = lazy cache variable for type metadata for CAFPairedDevicesInformation;
  if (!lazy cache variable for type metadata for CAFPairedDevicesInformation)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFPairedDevicesInformation);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFPairedDevicesInformationObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFPairedDevicesInformationObservable and conformance CAFPairedDevicesInformationObservable(&lazy protocol witness table cache variable for type CAFPairedDevicesInformationObservable and conformance CAFPairedDevicesInformationObservable, a2, type metadata accessor for CAFPairedDevicesInformationObservable, &protocol conformance descriptor for CAFPairedDevicesInformationObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFPairedDevicesInformationObservable and conformance CAFPairedDevicesInformationObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFPairedDevicesInformationObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine37CAFPairedDevicesInformationObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFSeatBeltObservable.seatOccupancy.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine21CAFSeatBeltObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5 | (v6 << 8);
}

uint64_t CAFSeatBeltObservable.seatBeltIndicator.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine21CAFSeatBeltObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFSeatBeltObservable.vehicleLayoutKey.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine21CAFSeatBeltObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFSeatBeltObservable.$vehicleLayoutKey.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3();
  v4 = a2(v3);

  return v4;
}

uint64_t CAFSeatBeltObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine21CAFSeatBeltObservable_observed);
  v4 = [v3 registeredForVehicleLayoutKey];
  v5 = 0x73696765726E753CLL;
  v6 = 0xEE003E6465726574;
  if (v4)
  {
    v5 = CAFSeatBeltObservable.vehicleLayoutKey.getter();
    v6 = v7;
  }

  v8 = 0x73696765726E753CLL;
  v9 = 0xEE003E6465726574;
  if ([v3 registeredForSeatOccupancy])
  {
    CAFSeatBeltObservable.seatOccupancy.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16CAFSeatOccupancyVSgMd, &_sSo16CAFSeatOccupancyVSgMR);
    v8 = String.init<A>(describing:)();
    v9 = v10;
  }

  v11 = 0x73696765726E753CLL;
  v12 = 0xEE003E6465726574;
  if ([v3 registeredForBuckleState])
  {
    CAFSeatBeltObservable.buckleState.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12CAFLockStateVSgMd, &_sSo12CAFLockStateVSgMR);
    v11 = String.init<A>(describing:)();
    v12 = v13;
  }

  if ([v3 registeredForSeatBeltIndicator])
  {
    CAFSeatBeltObservable.seatBeltIndicator.getter();
    v14 = NSStringFromSeatBeltIndicator();
    if (v14)
    {
      v15 = v14;
      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v1 = v16;
    }

    else
    {
      v1 = 0xE900000000000029;
      v2 = 0x6E776F6E6B6E7528;
    }
  }

  _StringGuts.grow(_:)(111);
  MEMORY[0x245D0A530](0xD000000000000018, 0x8000000242310110);
  _print_unlocked<A, B>(_:_:)();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x245D0A530](v18, v6);

  MEMORY[0x245D0A530](0xD000000000000011, 0x8000000242310150);
  MEMORY[0x245D0A530](v8, v9);

  MEMORY[0x245D0A530](0x656C6B637562202CLL, 0xEF203A6574617453);
  MEMORY[0x245D0A530](v11, v12);

  OUTLINED_FUNCTION_10_5();
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFSeatBeltObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine21CAFSeatBeltObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine21CAFSeatBeltObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine21CAFSeatBeltObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine21CAFSeatBeltObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFSeatBeltObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFSeatBeltObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine21CAFSeatBeltObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine21CAFSeatBeltObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine21CAFSeatBeltObservable__vehicleLayoutKey;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA21CAFSeatBeltObservableCSSGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA21CAFSeatBeltObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v9 = OBJC_IVAR____TtC10CAFCombine21CAFSeatBeltObservable__seatOccupancy;
  swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA21CAFSeatBeltObservableCSo0F9OccupancyVSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA21CAFSeatBeltObservableCSo0F9OccupancyVSgGMR);
  OUTLINED_FUNCTION_225(v10);
  v11 = OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v11, v12, v13, v14, v15, v16, v17, v18, v46.receiver, v46.super_class, v47, v48, v49, v50, v51, v52);
  *&v2[v9] = v19;
  v20 = OBJC_IVAR____TtC10CAFCombine21CAFSeatBeltObservable__buckleState;
  swift_getKeyPath();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA21CAFSeatBeltObservableCSo12CAFLockStateVSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA21CAFSeatBeltObservableCSo12CAFLockStateVSgGMR);
  OUTLINED_FUNCTION_225(v21);
  v22 = OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v22, v23, v24, v25, v26, v27, v28, v29, v46.receiver, v46.super_class, v47, v48, v49, v50, v51, v52);
  *&v2[v20] = v30;
  v31 = OBJC_IVAR____TtC10CAFCombine21CAFSeatBeltObservable__seatBeltIndicator;
  swift_getKeyPath();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA21CAFSeatBeltObservableCSo0fG9IndicatorVGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA21CAFSeatBeltObservableCSo0fG9IndicatorVGMR);
  OUTLINED_FUNCTION_225(v32);
  v33 = OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v33, v34, v35, v36, v37, v38, v39, v40, v46.receiver, v46.super_class, v47, v48, v49, v50, v51, v52);
  *&v2[v31] = v41;
  v42 = OBJC_IVAR____TtC10CAFCombine21CAFSeatBeltObservable__name;
  swift_getKeyPath();
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v42] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine21CAFSeatBeltObservable_observed] = a1;
  v46.receiver = v2;
  v46.super_class = type metadata accessor for CAFSeatBeltObservable();
  v43 = a1;
  v44 = objc_msgSendSuper2(&v46, sel_init);
  [v43 registerObserver_];

  return v44;
}

uint64_t CAFSeatBeltObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine21CAFSeatBeltObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFSeatBeltObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine21CAFSeatBeltObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFSeatBeltObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFSeatBeltObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFSeatBeltObservable@<X0>(void *a1@<X8>)
{
  result = CAFSeatBeltObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFSeatBeltObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFSeatBeltObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFSeatBeltObservable.seatBeltService(_:didUpdateSeatOccupancy:)(uint64_t a1, unsigned __int8 a2, uint64_t *a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_17_3();
  a4(a2);
}

uint64_t CAFSeatBeltObservable.seatBeltService(_:didUpdateSeatBeltIndicator:)(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFSeatBeltObservable.seatBeltService(_:didUpdateVehicleLayoutKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3();

  specialized SafeReadOnlyPublished.value.setter(a2, a3);
}

double @objc CAFSeatBeltObservable.seatBeltService(_:didUpdateVehicleLayoutKey:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFSeatBeltObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFSeatBeltObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFSeatBeltObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t key path getter for CAFSeatBelt.seatOccupancyBridged : CAFSeatBelt@<X0>(_BYTE *a1@<X8>)
{
  result = CAFSeatBelt.seatOccupancyBridged.getter();
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

uint64_t key path getter for CAFSeatBelt.buckleStateBridged : CAFSeatBelt@<X0>(_BYTE *a1@<X8>)
{
  result = CAFSeatBelt.buckleStateBridged.getter();
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

unint64_t type metadata accessor for CAFSeatBelt()
{
  result = lazy cache variable for type metadata for CAFSeatBelt;
  if (!lazy cache variable for type metadata for CAFSeatBelt)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFSeatBelt);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFSeatBeltObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFSeatBeltObservable and conformance CAFSeatBeltObservable(&lazy protocol witness table cache variable for type CAFSeatBeltObservable and conformance CAFSeatBeltObservable, a2, type metadata accessor for CAFSeatBeltObservable, &protocol conformance descriptor for CAFSeatBeltObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFSeatBeltObservable and conformance CAFSeatBeltObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFSeatBeltObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine21CAFSeatBeltObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t key path getter for CAFSeatFanObservable.on : CAFSeatFanObservable@<X0>(_BYTE *a2@<X8>)
{
  result = CAFSeatFanObservable.on.getter();
  *a2 = result;
  return result;
}

void (*CAFSeatFanObservable.on.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v4 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v4;
  v4[8] = v1;
  v4[9] = swift_getKeyPath();
  v4[10] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable_observed);

  v5 = v2;
  OUTLINED_FUNCTION_2_5();
  v6 = OUTLINED_FUNCTION_4_6();
  v7(v6);

  *(v4 + 88) = v1;
  return CAFSeatFanObservable.on.modify;
}

uint64_t key path getter for CAFSeatFanObservable.fanLevel : CAFSeatFanObservable@<X0>(_BYTE *a2@<X8>)
{
  result = CAFSeatFanObservable.fanLevel.getter();
  *a2 = result;
  return result;
}

uint64_t CAFSeatFanObservable.on.getter(uint64_t *a1)
{
  swift_beginAccess();
  v8 = *(v1 + OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable_observed);

  v2 = v8;
  v3 = swift_readAtKeyPath();
  v5 = *v4;
  v3(&v7, 0);

  return v5;
}

uint64_t CAFSeatFanObservable.on.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, id, uint64_t, uint64_t))
{
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  v8 = v4;

  return a4(a1, v8, KeyPath, v7);
}

void (*CAFSeatFanObservable.fanLevel.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v4 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v4;
  v4[8] = v1;
  v4[9] = swift_getKeyPath();
  v4[10] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable_observed);

  v5 = v2;
  OUTLINED_FUNCTION_2_5();
  v6 = OUTLINED_FUNCTION_4_6();
  v7(v6);

  *(v4 + 88) = v1;
  return CAFSeatFanObservable.fanLevel.modify;
}

void CAFSeatFanObservable.on.modify(uint64_t a1, uint64_t a2, void (*a3)(void, id, void, void))
{
  v3 = *a1;
  a3(*(*a1 + 88), *(*a1 + 64), *(*a1 + 72), *(*a1 + 80));

  free(v3);
}

uint64_t CAFSeatFanObservable.$on.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_0_6(a1);

  v4 = a2(v3);

  return v4;
}

uint64_t CAFSeatFanObservable.autoMode.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFSeatFanObservable.vehicleLayoutKey.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFSeatFanObservable.$autoMode.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t CAFSeatFanObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable_observed);
  v4 = [v3 registeredForOn];
  v5 = 0x73696765726E753CLL;
  v6 = 0xEE003E6465726574;
  if (v4)
  {
    CAFSeatFanObservable.on.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v5 = String.init<A>(describing:)();
    v6 = v7;
  }

  v8 = 0x73696765726E753CLL;
  v9 = 0xEE003E6465726574;
  if ([v3 registeredForFanLevel])
  {
    CAFSeatFanObservable.fanLevel.getter();
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = v10;
  }

  v11 = 0x73696765726E753CLL;
  v12 = 0xEE003E6465726574;
  if ([v3 registeredForAutoMode])
  {
    CAFSeatFanObservable.autoMode.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v11 = String.init<A>(describing:)();
    v12 = v13;
  }

  if ([v3 registeredForVehicleLayoutKey])
  {
    v2 = CAFSeatFanObservable.vehicleLayoutKey.getter();
    v1 = v14;
  }

  _StringGuts.grow(_:)(87);
  MEMORY[0x245D0A530](0xD000000000000017, 0x80000002423101E0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x203A6E6F207B20, 0xE700000000000000);
  MEMORY[0x245D0A530](v16, v6);

  MEMORY[0x245D0A530](0x76654C6E6166202CLL, 0xEC000000203A6C65);
  MEMORY[0x245D0A530](v8, v9);

  MEMORY[0x245D0A530](0x6F4D6F747561202CLL, 0xEC000000203A6564);
  MEMORY[0x245D0A530](v11, v12);

  MEMORY[0x245D0A530](0xD000000000000014, 0x800000024230DB40);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFSeatFanObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFSeatFanObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFSeatFanObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable__on;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA20CAFSeatFanObservableCSbSgGMd, _s10CAFCombine13SafePublishedCyAA20CAFSeatFanObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v8);
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v9 = OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable__fanLevel;
  swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA20CAFSeatFanObservableCs5UInt8VGMd, &_s10CAFCombine13SafePublishedCyAA20CAFSeatFanObservableCs5UInt8VGMR);
  OUTLINED_FUNCTION_225(v10);
  v11 = OUTLINED_FUNCTION_0_7();
  *&v2[v9] = specialized SafePublished.init(observedValuekeypath:)(v11);
  v12 = OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable__autoMode;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA20CAFSeatFanObservableCSbSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA20CAFSeatFanObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v13);
  OUTLINED_FUNCTION_0_7();
  *&v2[v12] = specialized SafePublished.init(observedValuekeypath:)();
  v14 = OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable__vehicleLayoutKey;
  swift_getKeyPath();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA20CAFSeatFanObservableCSSGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA20CAFSeatFanObservableCSSGMR);
  OUTLINED_FUNCTION_225(v15);
  OUTLINED_FUNCTION_0_7();
  *&v2[v14] = specialized SafePublished.init(observedValuekeypath:)();
  v16 = OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable__name;
  swift_getKeyPath();
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v16] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable_observed] = a1;
  v20.receiver = v2;
  v20.super_class = type metadata accessor for CAFSeatFanObservable();
  v17 = a1;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  [v17 registerObserver_];

  return v18;
}

uint64_t CAFSeatFanObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFSeatFanObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFSeatFanObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFSeatFanObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFSeatFanObservable@<X0>(void *a1@<X8>)
{
  result = CAFSeatFanObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFSeatFanObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFSeatFanObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFSeatFanObservable.fanService(_:didUpdateOn:)(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_0_6(a1);

  specialized SafePublished.value.setter(a2 & 1);
}

uint64_t CAFSeatFanObservable.fanService(_:didUpdateFanLevel:)(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_0_6(a1);

  specialized SafePublished.value.setter(a2);
}

uint64_t CAFSeatFanObservable.fanService(_:didUpdateAutoMode:)(uint64_t a1, char a2)
{

  specialized SafeReadOnlyPublished.value.setter(a2 & 1);
}

uint64_t CAFSeatFanObservable.fanService(_:didUpdateVehicleLayoutKey:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  specialized SafeReadOnlyPublished.value.setter(a2, a3);
}

double @objc CAFSeatFanObservable.fanService(_:didUpdateVehicleLayoutKey:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFSeatFanObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFSeatFanObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFSeatFanObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFSeatFan()
{
  result = lazy cache variable for type metadata for CAFSeatFan;
  if (!lazy cache variable for type metadata for CAFSeatFan)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFSeatFan);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFSeatFanObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFSeatFanObservable and conformance CAFSeatFanObservable(&lazy protocol witness table cache variable for type CAFSeatFanObservable and conformance CAFSeatFanObservable, a2, type metadata accessor for CAFSeatFanObservable, &protocol conformance descriptor for CAFSeatFanObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFSeatFanObservable and conformance CAFSeatFanObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFSeatFanObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine20CAFSeatFanObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t key path getter for CAFSeatHeatingCoolingObservable.on : CAFSeatHeatingCoolingObservable@<X0>(_BYTE *a2@<X8>)
{
  result = CAFSeatHeatingCoolingObservable.on.getter();
  *a2 = result;
  return result;
}

uint64_t CAFSeatHeatingCoolingObservable.on.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable__on, v15);
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable_observed);

  v2 = v1;
  v10 = OUTLINED_FUNCTION_3_20(v2, v3, v4, v5, v6, v7, v8, v9, v14[0], v14[1], v14[2], v14[3], v1);
  v12 = *v11;
  v10(v14, 0);

  return v12;
}

uint64_t CAFSeatHeatingCoolingObservable.on.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v10;
  v12 = OUTLINED_FUNCTION_4_15();

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA31CAFSeatHeatingCoolingObservableC_SbSgTt3g5(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

void (*CAFSeatHeatingCoolingObservable.on.modify(void *a1))(uint64_t a1)
{
  v4 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v4;
  v4[8] = v1;
  v4[9] = swift_getKeyPath();
  v4[10] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable__on, (v4 + 4));
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable_observed);

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  v8 = *v7;
  v6(v4, 0);

  *(v4 + 88) = v8;
  return CAFSeatHeatingCoolingObservable.on.modify;
}

void CAFSeatHeatingCoolingObservable.on.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  v3 = OUTLINED_FUNCTION_5_12();
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA31CAFSeatHeatingCoolingObservableC_SbSgTt3g5(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);

  free(v1);
}

uint64_t key path getter for CAFSeatHeatingCoolingObservable.heatingCoolingLevel : CAFSeatHeatingCoolingObservable@<X0>(_DWORD *a2@<X8>)
{
  result = CAFSeatHeatingCoolingObservable.heatingCoolingLevel.getter();
  *a2 = result;
  return result;
}

uint64_t CAFSeatHeatingCoolingObservable.heatingCoolingLevel.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable__heatingCoolingLevel, v15);
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable_observed);

  v2 = v1;
  v10 = OUTLINED_FUNCTION_3_20(v2, v3, v4, v5, v6, v7, v8, v9, v14[0], v14[1], v14[2], v14[3], v1);
  v12 = *v11;
  v10(v14, 0);

  return v12;
}

uint64_t CAFSeatHeatingCoolingObservable.heatingCoolingLevel.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v10;
  v12 = OUTLINED_FUNCTION_4_15();

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA31CAFSeatHeatingCoolingObservableC_s5Int32VTt3g5(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

void (*CAFSeatHeatingCoolingObservable.heatingCoolingLevel.modify(void *a1))(uint64_t a1)
{
  v4 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v4;
  v4[8] = v1;
  v4[9] = swift_getKeyPath();
  v4[10] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable__heatingCoolingLevel, (v4 + 4));
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable_observed);

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  v8 = *v7;
  v6(v4, 0);

  *(v4 + 22) = v8;
  return CAFSeatHeatingCoolingObservable.heatingCoolingLevel.modify;
}

void CAFSeatHeatingCoolingObservable.heatingCoolingLevel.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  v3 = OUTLINED_FUNCTION_5_12();
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA31CAFSeatHeatingCoolingObservableC_s5Int32VTt3g5(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);

  free(v1);
}

uint64_t CAFSeatHeatingCoolingObservable.$on.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_0_6(a1);

  v4 = a2(v3);

  return v4;
}

uint64_t CAFSeatHeatingCoolingObservable.autoMode.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFSeatHeatingCoolingObservable.vehicleLayoutKey.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFSeatHeatingCoolingObservable.$autoMode.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t CAFSeatHeatingCoolingObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable_observed);
  v4 = [v3 registeredForOn];
  v5 = 0x73696765726E753CLL;
  v6 = 0xEE003E6465726574;
  if (v4)
  {
    CAFSeatHeatingCoolingObservable.on.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v5 = String.init<A>(describing:)();
    v6 = v7;
  }

  v8 = 0x73696765726E753CLL;
  v9 = 0xEE003E6465726574;
  if ([v3 registeredForHeatingCoolingLevel])
  {
    CAFSeatHeatingCoolingObservable.heatingCoolingLevel.getter();
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = v10;
  }

  v11 = 0x73696765726E753CLL;
  v12 = 0xEE003E6465726574;
  if ([v3 registeredForAutoMode])
  {
    CAFSeatHeatingCoolingObservable.autoMode.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v11 = String.init<A>(describing:)();
    v12 = v13;
  }

  if ([v3 registeredForVehicleLayoutKey])
  {
    v2 = CAFSeatHeatingCoolingObservable.vehicleLayoutKey.getter();
    v1 = v14;
  }

  _StringGuts.grow(_:)(109);
  MEMORY[0x245D0A530](0xD000000000000022, 0x8000000242310270);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x203A6E6F207B20, 0xE700000000000000);
  MEMORY[0x245D0A530](v16, v6);

  MEMORY[0x245D0A530](0xD000000000000017, 0x80000002423102A0);
  MEMORY[0x245D0A530](v8, v9);

  MEMORY[0x245D0A530](0x6F4D6F747561202CLL, 0xEC000000203A6564);
  MEMORY[0x245D0A530](v11, v12);

  MEMORY[0x245D0A530](0xD000000000000014, 0x800000024230DB40);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFSeatHeatingCoolingObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFSeatHeatingCoolingObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFSeatHeatingCoolingObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable__on;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFSeatHeatingCoolingObservableCSbSgGMd, _s10CAFCombine13SafePublishedCyAA31CAFSeatHeatingCoolingObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v8);
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v9 = OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable__heatingCoolingLevel;
  swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFSeatHeatingCoolingObservableCs5Int32VGMd, &_s10CAFCombine13SafePublishedCyAA31CAFSeatHeatingCoolingObservableCs5Int32VGMR);
  OUTLINED_FUNCTION_225(v10);
  v11 = OUTLINED_FUNCTION_0_7();
  *&v2[v9] = specialized SafePublished.init(observedValuekeypath:)(v11);
  v12 = OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable__autoMode;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFSeatHeatingCoolingObservableCSbSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFSeatHeatingCoolingObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v13);
  OUTLINED_FUNCTION_0_7();
  *&v2[v12] = specialized SafePublished.init(observedValuekeypath:)();
  v14 = OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable__vehicleLayoutKey;
  swift_getKeyPath();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFSeatHeatingCoolingObservableCSSGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFSeatHeatingCoolingObservableCSSGMR);
  OUTLINED_FUNCTION_225(v15);
  OUTLINED_FUNCTION_0_7();
  *&v2[v14] = specialized SafePublished.init(observedValuekeypath:)();
  v16 = OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable__name;
  swift_getKeyPath();
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v16] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable_observed] = a1;
  v20.receiver = v2;
  v20.super_class = type metadata accessor for CAFSeatHeatingCoolingObservable();
  v17 = a1;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  [v17 registerObserver_];

  return v18;
}

uint64_t CAFSeatHeatingCoolingObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFSeatHeatingCoolingObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFSeatHeatingCoolingObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFSeatHeatingCoolingObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFSeatHeatingCoolingObservable@<X0>(void *a1@<X8>)
{
  result = CAFSeatHeatingCoolingObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFSeatHeatingCoolingObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFSeatHeatingCoolingObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFSeatHeatingCoolingObservable.heatingCoolingService(_:didUpdateOn:)(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_0_6(a1);

  specialized SafePublished.value.setter(a2 & 1);
}

uint64_t CAFSeatHeatingCoolingObservable.heatingCoolingService(_:didUpdateHeatingCoolingLevel:)(uint64_t a1, unsigned int a2)
{
  OUTLINED_FUNCTION_0_6(a1);

  specialized SafePublished.value.setter(a2);
}

uint64_t CAFSeatHeatingCoolingObservable.heatingCoolingService(_:didUpdateAutoMode:)(uint64_t a1, char a2)
{

  specialized SafeReadOnlyPublished.value.setter(a2 & 1);
}

uint64_t CAFSeatHeatingCoolingObservable.heatingCoolingService(_:didUpdateVehicleLayoutKey:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  specialized SafeReadOnlyPublished.value.setter(a2, a3);
}

double @objc CAFSeatHeatingCoolingObservable.heatingCoolingService(_:didUpdateVehicleLayoutKey:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFSeatHeatingCoolingObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFSeatHeatingCoolingObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFSeatHeatingCoolingObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFSeatHeatingCooling()
{
  result = lazy cache variable for type metadata for CAFSeatHeatingCooling;
  if (!lazy cache variable for type metadata for CAFSeatHeatingCooling)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFSeatHeatingCooling);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFSeatHeatingCoolingObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFSeatHeatingCoolingObservable and conformance CAFSeatHeatingCoolingObservable(&lazy protocol witness table cache variable for type CAFSeatHeatingCoolingObservable and conformance CAFSeatHeatingCoolingObservable, a2, type metadata accessor for CAFSeatHeatingCoolingObservable, &protocol conformance descriptor for CAFSeatHeatingCoolingObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFSeatHeatingCoolingObservable and conformance CAFSeatHeatingCoolingObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFSeatHeatingCoolingObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine31CAFSeatHeatingCoolingObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFActivityIndicatorObservable.cameraActive.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine30CAFActivityIndicatorObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFActivityIndicatorObservable.$cameraActive.getter(void *a1)
{

  specialized SafePublished.projectedValue.getter();
  v2 = v1;

  return v2;
}

uint64_t CAFActivityIndicatorObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine30CAFActivityIndicatorObservable_observed);
  v4 = 0x73696765726E753CLL;
  v5 = 0xEE003E6465726574;
  if ([v3 registeredForCameraActive])
  {
    CAFActivityIndicatorObservable.cameraActive.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v4 = String.init<A>(describing:)();
    v5 = v6;
  }

  if ([v3 registeredForMicrophoneActive])
  {
    CAFActivityIndicatorObservable.microphoneActive.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v2 = String.init<A>(describing:)();
    v1 = v7;
  }

  _StringGuts.grow(_:)(79);
  MEMORY[0x245D0A530](0xD000000000000021, 0x8000000242310360);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000011, 0x8000000242310390);
  MEMORY[0x245D0A530](v4, v5);

  MEMORY[0x245D0A530](0xD000000000000014, 0x80000002423103B0);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFActivityIndicatorObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine30CAFActivityIndicatorObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine30CAFActivityIndicatorObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine30CAFActivityIndicatorObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine30CAFActivityIndicatorObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFActivityIndicatorObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFActivityIndicatorObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine30CAFActivityIndicatorObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine30CAFActivityIndicatorObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine30CAFActivityIndicatorObservable__cameraActive;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA30CAFActivityIndicatorObservableCSbSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA30CAFActivityIndicatorObservableCSbSgGMR);
  swift_allocObject();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v8 = OBJC_IVAR____TtC10CAFCombine30CAFActivityIndicatorObservable__microphoneActive;
  swift_getKeyPath();
  swift_allocObject();
  *&v2[v8] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine30CAFActivityIndicatorObservable_observed] = a1;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for CAFActivityIndicatorObservable();
  v9 = a1;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  [v9 registerObserver_];

  return v10;
}

uint64_t CAFActivityIndicatorObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine30CAFActivityIndicatorObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFActivityIndicatorObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine30CAFActivityIndicatorObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFActivityIndicatorObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFActivityIndicatorObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFActivityIndicatorObservable@<X0>(void *a1@<X8>)
{
  result = CAFActivityIndicatorObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFActivityIndicatorObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFActivityIndicatorObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFActivityIndicatorObservable.activityIndicatorService(_:didUpdateCameraActive:)(uint64_t a1, char a2, void *a3)
{

  specialized SafeReadOnlyPublished.value.setter(a2 & 1);
}

uint64_t CAFActivityIndicatorObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFActivityIndicatorObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFActivityIndicatorObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFActivityIndicator()
{
  result = lazy cache variable for type metadata for CAFActivityIndicator;
  if (!lazy cache variable for type metadata for CAFActivityIndicator)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFActivityIndicator);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFActivityIndicatorObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFActivityIndicatorObservable and conformance CAFActivityIndicatorObservable(&lazy protocol witness table cache variable for type CAFActivityIndicatorObservable and conformance CAFActivityIndicatorObservable, a2, type metadata accessor for CAFActivityIndicatorObservable, &protocol conformance descriptor for CAFActivityIndicatorObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFActivityIndicatorObservable and conformance CAFActivityIndicatorObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFActivityIndicatorObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine30CAFActivityIndicatorObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFBluetoothStatusObservable.moduleStatus.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFBluetoothStatusObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFBluetoothStatusObservable.contentURLAction.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFBluetoothStatusObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFBluetoothStatusObservable.$moduleStatus.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

id CAFBluetoothStatusObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFBluetoothStatusObservable_observed);
  v4 = 0x73696765726E753CLL;
  v5 = 0xEE003E6465726574;
  if ([v3 registeredForModuleStatus])
  {
    CAFBluetoothStatusObservable.moduleStatus.getter();
    v6 = NSStringFromModuleStatus();
    if (v6)
    {
      v7 = v6;
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v8;
    }

    else
    {
      v5 = 0xE900000000000029;
      v4 = 0x6E776F6E6B6E7528;
    }
  }

  if ([v3 registeredForContentURLAction])
  {
    CAFBluetoothStatusObservable.contentURLAction.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v2 = String.init<A>(describing:)();
    v1 = v9;
  }

  _StringGuts.grow(_:)(77);
  MEMORY[0x245D0A530](0xD00000000000001FLL, 0x8000000242310450);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000011, 0x8000000242310470);
  MEMORY[0x245D0A530](v4, v5);

  MEMORY[0x245D0A530](0xD000000000000014, 0x800000024230BA40);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}