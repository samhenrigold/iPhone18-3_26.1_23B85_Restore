void key path getter for CAFHistoricalNotification.userVisibleFullDescription : CAFHistoricalNotification(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 userVisibleFullDescription];
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

void key path getter for CAFHistoricalNotification.timestamp : CAFHistoricalNotification(id *a1)
{
  v1 = [*a1 timestamp];
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
}

void key path setter for CAFHistoricalNotification.symbolName : CAFHistoricalNotification(void *a1, void **a2)
{
  v2 = *a2;
  v3 = MEMORY[0x245D0A4C0](*a1, a1[1]);
  [v2 setSymbolName_];
}

id key path getter for CAFHistoricalNotification.historicalNotificationUserActions : CAFHistoricalNotification@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 historicalNotificationUserActions];
  *a2 = result;
  return result;
}

uint64_t key path getter for CAFHistoricalNotification.userActionBridged : CAFHistoricalNotification@<X0>(_BYTE *a1@<X8>)
{
  result = CAFHistoricalNotification.userActionBridged.getter();
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type CAFHistoricalNotification and conformance CAFHistoricalNotification()
{
  result = lazy protocol witness table cache variable for type CAFHistoricalNotification and conformance CAFHistoricalNotification;
  if (!lazy protocol witness table cache variable for type CAFHistoricalNotification and conformance CAFHistoricalNotification)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFHistoricalNotification, 0x277CF84D8);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFHistoricalNotification and conformance CAFHistoricalNotification);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFHistoricalNotificationObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFHistoricalNotificationObservable and conformance CAFHistoricalNotificationObservable(&lazy protocol witness table cache variable for type CAFHistoricalNotificationObservable and conformance CAFHistoricalNotificationObservable, &protocol conformance descriptor for CAFHistoricalNotificationObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFHistoricalNotificationObservable and conformance CAFHistoricalNotificationObservable(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFHistoricalNotificationObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double partial apply for closure #1 in CAFHistoricalNotificationObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine35CAFHistoricalNotificationObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

unint64_t lazy protocol witness table accessor for type Measurement<NSUnitDuration> and conformance Measurement<A>()
{
  result = lazy protocol witness table cache variable for type Measurement<NSUnitDuration> and conformance Measurement<A>;
  if (!lazy protocol witness table cache variable for type Measurement<NSUnitDuration> and conformance Measurement<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Measurement<NSUnitDuration> and conformance Measurement<A>);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_8()
{

  return outlined init with copy of Measurement<NSUnitSpeed>?(v0, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_15_3(uint64_t result)
{
  *v1 = result;
  *(result + 64) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_3(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_17_4()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_18_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_24_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{

  return swift_readAtKeyPath();
}

uint64_t OUTLINED_FUNCTION_25_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA35CAFHistoricalNotificationObservableC_SSTt3g5(v10, v11, v13, v14, v12, a6, a7, a8, a9, a10);
}

uint64_t key path getter for CAFActionRemoteNotificationObservable.trailingButtonState : CAFActionRemoteNotificationObservable@<X0>(_BYTE *a1@<X8>)
{
  result = CAFActionRemoteNotificationObservable.trailingButtonState.getter();
  *a1 = result;
  return result;
}

void (*CAFActionRemoteNotificationObservable.trailingButtonState.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v4 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v4;
  v4[8] = v1;
  v4[9] = swift_getKeyPath();
  v4[10] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable__trailingButtonState, (v4 + 4));
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable_observed);

  v5 = v2;
  OUTLINED_FUNCTION_2_5();
  v6 = OUTLINED_FUNCTION_4_6();
  v7(v6);

  *(v4 + 88) = v1;
  return CAFActionRemoteNotificationObservable.trailingButtonState.modify;
}

uint64_t CAFActionRemoteNotificationObservable.symbolNameAndColor.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t key path getter for CAFActionRemoteNotificationObservable.userAction : CAFActionRemoteNotificationObservable@<X0>(_BYTE *a1@<X8>)
{
  result = CAFActionRemoteNotificationObservable.userAction.getter();
  *a1 = result;
  return result;
}

uint64_t CAFActionRemoteNotificationObservable.trailingButtonState.getter(uint64_t *a1)
{
  OUTLINED_FUNCTION_234(v1 + *a1, v9);
  v8 = *(v1 + OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable_observed);

  v2 = v8;
  v3 = swift_readAtKeyPath();
  v5 = *v4;
  v3(&v7, 0);

  return v5;
}

uint64_t CAFActionRemoteNotificationObservable.trailingButtonState.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, id, uint64_t, uint64_t))
{
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  v8 = v4;

  return a4(a1, v8, KeyPath, v7);
}

void (*CAFActionRemoteNotificationObservable.userAction.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v4 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v4;
  v4[8] = v1;
  v4[9] = swift_getKeyPath();
  v4[10] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable__userAction, (v4 + 4));
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable_observed);

  v5 = v2;
  OUTLINED_FUNCTION_2_5();
  v6 = OUTLINED_FUNCTION_4_6();
  v7(v6);

  *(v4 + 88) = v1;
  return CAFActionRemoteNotificationObservable.userAction.modify;
}

void CAFActionRemoteNotificationObservable.trailingButtonState.modify(uint64_t a1, uint64_t a2, void (*a3)(void, id, void, void))
{
  v3 = *a1;
  a3(*(*a1 + 88), *(*a1 + 64), *(*a1 + 72), *(*a1 + 80));

  free(v3);
}

uint64_t CAFActionRemoteNotificationObservable.$trailingButtonState.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_234(v2 + *a1, v7);

  v5 = a2(v4);

  return v5;
}

uint64_t CAFActionRemoteNotificationObservable.showsPrimaryActionHighlight.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFActionRemoteNotificationObservable.userVisibleLabel.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFActionRemoteNotificationObservable.$userVisibleLabel.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3();
  v4 = a2(v3);

  return v4;
}

uint64_t CAFActionRemoteNotificationObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable_observed);
  [v3 registeredForUserVisibleLabel];
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    v5 = CAFActionRemoteNotificationObservable.userVisibleLabel.getter();
  }

  v57 = v5;
  v58 = v4;
  [v3 registeredForUserVisibleDescription];
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    v8 = CAFActionRemoteNotificationObservable.userVisibleDescription.getter();
  }

  v55 = v8;
  v56 = v7;
  [v3 registeredForIdentifier];
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    v11 = CAFActionRemoteNotificationObservable.identifier.getter();
  }

  v53 = v11;
  v54 = v10;
  v13 = 0x73696765726E753CLL;
  v14 = 0xEE003E6465726574;
  if ([v3 registeredForSymbolNameAndColor])
  {
    v15 = CAFActionRemoteNotificationObservable.symbolNameAndColor.getter();
    v16 = [v15 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v17;
  }

  v51 = v13;
  [v3 registeredForDisplayPanelIdentifier];
  OUTLINED_FUNCTION_9_2();
  if (v20)
  {
    v19 = CAFActionRemoteNotificationObservable.displayPanelIdentifier.getter();
  }

  v49 = v19;
  v50 = v18;
  v52 = v14;
  v21 = [v3 registeredForDisplayZoneIdentifier];
  v22 = 0x73696765726E753CLL;
  v23 = 0xEE003E6465726574;
  if (v21)
  {
    v22 = CAFActionRemoteNotificationObservable.displayZoneIdentifier.getter();
    v23 = v24;
  }

  v48 = v22;
  v25 = 0x73696765726E753CLL;
  v26 = 0xEE003E6465726574;
  if ([v3 registeredForTrailingButton])
  {
    v27 = CAFActionRemoteNotificationObservable.trailingButton.getter();
    v28 = [v27 description];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v29;
  }

  v47 = v25;
  v30 = 0x73696765726E753CLL;
  v31 = 0xEE003E6465726574;
  if ([v3 registeredForTrailingButtonState])
  {
    CAFActionRemoteNotificationObservable.trailingButtonState.getter();
    v32 = NSStringFromButtonAction();
    if (v32)
    {
      v33 = v32;
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v34;
    }

    else
    {
      v31 = 0xE900000000000029;
      v30 = 0x6E776F6E6B6E7528;
    }
  }

  v46 = v30;
  v59 = 0x73696765726E753CLL;
  v35 = 0xEE003E6465726574;
  if ([v3 registeredForSymbolNotificationUserActions])
  {
    v36 = CAFActionRemoteNotificationObservable.symbolNotificationUserActions.getter();
    v37 = [v36 description];
    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v38;
  }

  v39 = [v3 registeredForUserAction];
  v40 = 0x73696765726E753CLL;
  v41 = 0xEE003E6465726574;
  if (v39)
  {
    CAFActionRemoteNotificationObservable.userAction.getter();
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v42;
  }

  if ([v3 registeredForShowsPrimaryActionHighlight])
  {
    v43 = CAFActionRemoteNotificationObservable.showsPrimaryActionHighlight.getter();
    if (v43)
    {
      v2 = 1702195828;
    }

    else
    {
      v2 = 0x65736C6166;
    }

    if (v43)
    {
      v1 = 0xE400000000000000;
    }

    else
    {
      v1 = 0xE500000000000000;
    }
  }

  _StringGuts.grow(_:)(320);
  MEMORY[0x245D0A530](0xD000000000000028, 0x800000024230BFA0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000015, 0x800000024230BD90);
  MEMORY[0x245D0A530](v57, v58);

  OUTLINED_FUNCTION_10_4();
  MEMORY[0x245D0A530](v55, v56);

  MEMORY[0x245D0A530](0x69746E656469202CLL, 0xEE00203A72656966);
  MEMORY[0x245D0A530](v53, v54);

  MEMORY[0x245D0A530](0xD000000000000016, 0x800000024230BFD0);
  MEMORY[0x245D0A530](v51, v52);

  OUTLINED_FUNCTION_10_4();
  MEMORY[0x245D0A530](v49, v50);

  MEMORY[0x245D0A530](0xD000000000000019, 0x800000024230C010);
  MEMORY[0x245D0A530](v48, v23);

  MEMORY[0x245D0A530](0xD000000000000012, 0x800000024230C030);
  MEMORY[0x245D0A530](v47, v26);

  MEMORY[0x245D0A530](0xD000000000000017, 0x800000024230C050);
  MEMORY[0x245D0A530](v46, v31);

  MEMORY[0x245D0A530](0xD000000000000021, 0x800000024230C070);
  MEMORY[0x245D0A530](v59, v35);

  MEMORY[0x245D0A530](0x634172657375202CLL, 0xEE00203A6E6F6974);
  MEMORY[0x245D0A530](v45, v41);

  MEMORY[0x245D0A530](0xD00000000000001FLL, 0x800000024230C0A0);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFActionRemoteNotificationObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFActionRemoteNotificationObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFActionRemoteNotificationObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable__userVisibleLabel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFActionRemoteNotificationObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFActionRemoteNotificationObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v9 = OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable__userVisibleDescription;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v9] = specialized SafePublished.init(observedValuekeypath:)();
  v10 = OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable__identifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)();
  v11 = OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable__symbolNameAndColor;
  swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFActionRemoteNotificationObservableCSo23CAFSymbolImageWithColorCGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFActionRemoteNotificationObservableCSo23CAFSymbolImageWithColorCGMR);
  OUTLINED_FUNCTION_225(v12);
  OUTLINED_FUNCTION_0_7();
  *&v2[v11] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v13 = OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable__displayPanelIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v13] = specialized SafePublished.init(observedValuekeypath:)();
  v14 = OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable__displayZoneIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v14] = specialized SafePublished.init(observedValuekeypath:)();
  v15 = OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable__trailingButton;
  swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFActionRemoteNotificationObservableCSo17CAFTrailingButtonCGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFActionRemoteNotificationObservableCSo17CAFTrailingButtonCGMR);
  OUTLINED_FUNCTION_225(v16);
  OUTLINED_FUNCTION_0_7();
  *&v2[v15] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v17 = OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable__trailingButtonState;
  swift_getKeyPath();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA37CAFActionRemoteNotificationObservableCSo15CAFButtonActionVGMd, _s10CAFCombine13SafePublishedCyAA37CAFActionRemoteNotificationObservableCSo15CAFButtonActionVGMR);
  OUTLINED_FUNCTION_225(v18);
  v19 = OUTLINED_FUNCTION_0_7();
  *&v2[v17] = specialized SafePublished.init(observedValuekeypath:)(v19);
  v20 = OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable__symbolNotificationUserActions;
  swift_getKeyPath();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFActionRemoteNotificationObservableCSo09CAFSymbolH11UserActionsCGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFActionRemoteNotificationObservableCSo09CAFSymbolH11UserActionsCGMR);
  OUTLINED_FUNCTION_225(v21);
  OUTLINED_FUNCTION_0_7();
  *&v2[v20] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v22 = OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable__userAction;
  swift_getKeyPath();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA37CAFActionRemoteNotificationObservableCs5UInt8VGMd, _s10CAFCombine13SafePublishedCyAA37CAFActionRemoteNotificationObservableCs5UInt8VGMR);
  OUTLINED_FUNCTION_225(v23);
  v24 = OUTLINED_FUNCTION_0_7();
  *&v2[v22] = specialized SafePublished.init(observedValuekeypath:)(v24);
  v25 = OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable__showsPrimaryActionHighlight;
  swift_getKeyPath();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFActionRemoteNotificationObservableCSbGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFActionRemoteNotificationObservableCSbGMR);
  OUTLINED_FUNCTION_225(v26);
  OUTLINED_FUNCTION_0_7();
  *&v2[v25] = specialized SafePublished.init(observedValuekeypath:)();
  v27 = OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v27] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable_observed] = a1;
  v31.receiver = v2;
  v31.super_class = type metadata accessor for CAFActionRemoteNotificationObservable();
  v28 = a1;
  v29 = objc_msgSendSuper2(&v31, sel_init);
  [v28 registerObserver_];

  return v29;
}

uint64_t CAFActionRemoteNotificationObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFActionRemoteNotificationObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFActionRemoteNotificationObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFActionRemoteNotificationObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFActionRemoteNotificationObservable@<X0>(void *a1@<X8>)
{
  result = CAFActionRemoteNotificationObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFActionRemoteNotificationObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFActionRemoteNotificationObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

double @objc CAFActionRemoteNotificationObservable.actionRemoteNotificationService(_:didUpdateUserVisibleLabel:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFActionRemoteNotificationObservable.actionRemoteNotificationService(_:didUpdateSymbolNameAndColor:)(uint64_t a1, void *a2, uint64_t *a3, void (*a4)(void *))
{
  OUTLINED_FUNCTION_17_3();
  v6 = a2;
  a4(a2);
}

uint64_t CAFActionRemoteNotificationObservable.actionRemoteNotificationService(_:didUpdateTrailingButtonState:)(uint64_t a1, unsigned __int8 a2, uint64_t *a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_234(v4 + *a3, v8);

  a4(a2);
}

uint64_t CAFActionRemoteNotificationObservable.actionRemoteNotificationService(_:didUpdateShowsPrimaryActionHighlight:)(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2 & 1);
}

uint64_t CAFActionRemoteNotificationObservable.actionRemoteNotificationService(_:didUpdateUserVisibleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3();

  specialized SafeReadOnlyPublished.value.setter(a2, a3);
}

uint64_t CAFActionRemoteNotificationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFActionRemoteNotificationObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFActionRemoteNotificationObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

id key path getter for CAFActionRemoteNotification.symbolNameAndColor : CAFActionRemoteNotification@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 symbolNameAndColor];
  *a2 = result;
  return result;
}

id key path getter for CAFActionRemoteNotification.trailingButton : CAFActionRemoteNotification@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 trailingButton];
  *a2 = result;
  return result;
}

id key path getter for CAFActionRemoteNotification.symbolNotificationUserActions : CAFActionRemoteNotification@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 symbolNotificationUserActions];
  *a2 = result;
  return result;
}

void key path getter for CAFActionRemoteNotification.userVisibleLabel : CAFActionRemoteNotification(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_213(a1);
  v4 = [v2 *v3];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  *v1 = v5;
  v1[1] = v7;
}

unint64_t type metadata accessor for CAFActionRemoteNotification()
{
  result = lazy cache variable for type metadata for CAFActionRemoteNotification;
  if (!lazy cache variable for type metadata for CAFActionRemoteNotification)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFActionRemoteNotification);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFActionRemoteNotificationObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFActionRemoteNotificationObservable and conformance CAFActionRemoteNotificationObservable(&lazy protocol witness table cache variable for type CAFActionRemoteNotificationObservable and conformance CAFActionRemoteNotificationObservable, a2, type metadata accessor for CAFActionRemoteNotificationObservable, &protocol conformance descriptor for CAFActionRemoteNotificationObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFActionRemoteNotificationObservable and conformance CAFActionRemoteNotificationObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFActionRemoteNotificationObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine37CAFActionRemoteNotificationObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

void OUTLINED_FUNCTION_10_4()
{

  JUMPOUT(0x245D0A530);
}

uint64_t CAFAlertRemoteNotificationObservable.symbolNameAndColor.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t key path getter for CAFAlertRemoteNotificationObservable.userAction : CAFAlertRemoteNotificationObservable@<X0>(_BYTE *a1@<X8>)
{
  result = CAFAlertRemoteNotificationObservable.userAction.getter();
  *a1 = result;
  return result;
}

uint64_t CAFAlertRemoteNotificationObservable.userAction.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable__userAction, v8);
  v7 = *(v0 + OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable_observed);

  v1 = v7;
  v2 = swift_readAtKeyPath();
  v4 = *v3;
  v2(&v6, 0);

  return v4;
}

uint64_t CAFAlertRemoteNotificationObservable.userAction.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = v10;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA36CAFAlertRemoteNotificationObservableC_s5UInt8VTt3g5(a1, v14, KeyPath, v13, v15, v16, v17, v18, a9, a10);
}

void (*CAFAlertRemoteNotificationObservable.userAction.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable__userAction, (v3 + 4));
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable_observed);
  v3[7] = v4;

  v5 = v4;
  v6 = swift_readAtKeyPath();
  v8 = *v7;
  v6(v3, 0);

  *(v3 + 88) = v8;
  return CAFAlertRemoteNotificationObservable.userAction.modify;
}

void CAFAlertRemoteNotificationObservable.userAction.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 72);
  v2 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 64);
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA36CAFAlertRemoteNotificationObservableC_s5UInt8VTt3g5(v4, v5, v3, v2, v6, v7, v8, v9, v10, v11);

  free(v1);
}

uint64_t CAFAlertRemoteNotificationObservable.$userAction.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable__userAction, v4);

  specialized SafePublished.projectedValue.getter();
  v2 = v1;

  return v2;
}

uint64_t CAFAlertRemoteNotificationObservable.showsPrimaryActionHighlight.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFAlertRemoteNotificationObservable.userVisibleLabel.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFAlertRemoteNotificationObservable.$userVisibleLabel.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3();
  v4 = a2(v3);

  return v4;
}

uint64_t CAFAlertRemoteNotificationObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable_observed);
  v4 = [v3 registeredForUserVisibleLabel];
  v5 = 0x73696765726E753CLL;
  v6 = 0xEE003E6465726574;
  if (v4)
  {
    v5 = CAFAlertRemoteNotificationObservable.userVisibleLabel.getter();
  }

  v44 = v5;
  v45 = v6;
  v7 = [v3 registeredForUserVisibleDescription];
  v8 = 0x73696765726E753CLL;
  v9 = 0xEE003E6465726574;
  if (v7)
  {
    v8 = CAFAlertRemoteNotificationObservable.userVisibleDescription.getter();
  }

  v42 = v8;
  v43 = v9;
  v10 = [v3 registeredForIdentifier];
  v11 = 0x73696765726E753CLL;
  v12 = 0xEE003E6465726574;
  if (v10)
  {
    v11 = CAFAlertRemoteNotificationObservable.identifier.getter();
  }

  v40 = v11;
  v41 = v12;
  v13 = 0x73696765726E753CLL;
  v14 = 0xEE003E6465726574;
  if ([v3 registeredForSymbolNameAndColor])
  {
    v15 = CAFAlertRemoteNotificationObservable.symbolNameAndColor.getter();
    v16 = [v15 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v17;
  }

  v39 = v13;
  v18 = [v3 registeredForDisplayPanelIdentifier];
  v19 = 0x73696765726E753CLL;
  v20 = 0xEE003E6465726574;
  if (v18)
  {
    v19 = CAFAlertRemoteNotificationObservable.displayPanelIdentifier.getter();
    v20 = v21;
  }

  v38 = v19;
  v22 = [v3 registeredForDisplayZoneIdentifier];
  v23 = 0x73696765726E753CLL;
  v24 = 0xEE003E6465726574;
  if (v22)
  {
    v23 = CAFAlertRemoteNotificationObservable.displayZoneIdentifier.getter();
    v24 = v25;
  }

  v37 = v23;
  v46 = 0x73696765726E753CLL;
  v26 = 0xEE003E6465726574;
  if ([v3 registeredForNotificationUserActions])
  {
    v27 = CAFAlertRemoteNotificationObservable.notificationUserActions.getter();
    v28 = [v27 description];
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v29;
  }

  v30 = [v3 registeredForUserAction];
  v31 = 0x73696765726E753CLL;
  v32 = 0xEE003E6465726574;
  if (v30)
  {
    CAFAlertRemoteNotificationObservable.userAction.getter();
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v33;
  }

  if ([v3 registeredForShowsPrimaryActionHighlight])
  {
    v34 = CAFAlertRemoteNotificationObservable.showsPrimaryActionHighlight.getter();
    if (v34)
    {
      v2 = 1702195828;
    }

    else
    {
      v2 = 0x65736C6166;
    }

    if (v34)
    {
      v1 = 0xE400000000000000;
    }

    else
    {
      v1 = 0xE500000000000000;
    }
  }

  _StringGuts.grow(_:)(268);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  _print_unlocked<A, B>(_:_:)();
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v44, v45);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530](0xD00000000000001ALL);
  MEMORY[0x245D0A530](v42, v43);

  MEMORY[0x245D0A530](0x69746E656469202CLL, 0xEE00203A72656966);
  MEMORY[0x245D0A530](v40, v41);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v39, v14);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530](0xD00000000000001ALL);
  MEMORY[0x245D0A530](v38, v20);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v37, v24);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v46, v26);

  MEMORY[0x245D0A530](0x634172657375202CLL, 0xEE00203A6E6F6974);
  MEMORY[0x245D0A530](v36, v32);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFAlertRemoteNotificationObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFAlertRemoteNotificationObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFAlertRemoteNotificationObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable__userVisibleLabel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA36CAFAlertRemoteNotificationObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA36CAFAlertRemoteNotificationObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v9 = OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable__userVisibleDescription;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v9] = specialized SafePublished.init(observedValuekeypath:)();
  v10 = OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable__identifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)();
  v11 = OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable__symbolNameAndColor;
  swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA36CAFAlertRemoteNotificationObservableCSo23CAFSymbolImageWithColorCGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA36CAFAlertRemoteNotificationObservableCSo23CAFSymbolImageWithColorCGMR);
  OUTLINED_FUNCTION_225(v12);
  OUTLINED_FUNCTION_0_7();
  *&v2[v11] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v13 = OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable__displayPanelIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v13] = specialized SafePublished.init(observedValuekeypath:)();
  v14 = OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable__displayZoneIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v14] = specialized SafePublished.init(observedValuekeypath:)();
  v15 = OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable__notificationUserActions;
  swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA36CAFAlertRemoteNotificationObservableCSo26CAFNotificationUserActionsCGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA36CAFAlertRemoteNotificationObservableCSo26CAFNotificationUserActionsCGMR);
  OUTLINED_FUNCTION_225(v16);
  OUTLINED_FUNCTION_0_7();
  *&v2[v15] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v17 = OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable__userAction;
  swift_getKeyPath();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA36CAFAlertRemoteNotificationObservableCs5UInt8VGMd, _s10CAFCombine13SafePublishedCyAA36CAFAlertRemoteNotificationObservableCs5UInt8VGMR);
  OUTLINED_FUNCTION_225(v18);
  v19 = OUTLINED_FUNCTION_0_7();
  *&v2[v17] = specialized SafePublished.init(observedValuekeypath:)(v19);
  v20 = OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable__showsPrimaryActionHighlight;
  swift_getKeyPath();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA36CAFAlertRemoteNotificationObservableCSbGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA36CAFAlertRemoteNotificationObservableCSbGMR);
  OUTLINED_FUNCTION_225(v21);
  OUTLINED_FUNCTION_0_7();
  *&v2[v20] = specialized SafePublished.init(observedValuekeypath:)();
  v22 = OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v22] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable_observed] = a1;
  v26.receiver = v2;
  v26.super_class = type metadata accessor for CAFAlertRemoteNotificationObservable();
  v23 = a1;
  v24 = objc_msgSendSuper2(&v26, sel_init);
  [v23 registerObserver_];

  return v24;
}

uint64_t CAFAlertRemoteNotificationObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFAlertRemoteNotificationObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFAlertRemoteNotificationObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFAlertRemoteNotificationObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFAlertRemoteNotificationObservable@<X0>(void *a1@<X8>)
{
  result = CAFAlertRemoteNotificationObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFAlertRemoteNotificationObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFAlertRemoteNotificationObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

double @objc CAFAlertRemoteNotificationObservable.alertRemoteNotificationService(_:didUpdateUserVisibleLabel:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFAlertRemoteNotificationObservable.alertRemoteNotificationService(_:didUpdateSymbolNameAndColor:)(uint64_t a1, void *a2, uint64_t *a3, void (*a4)(void *))
{
  OUTLINED_FUNCTION_17_3();
  v6 = a2;
  a4(a2);
}

uint64_t CAFAlertRemoteNotificationObservable.alertRemoteNotificationService(_:didUpdateUserAction:)(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_234(v2 + OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable__userAction, v5);

  specialized SafePublished.value.setter(a2);
}

uint64_t CAFAlertRemoteNotificationObservable.alertRemoteNotificationService(_:didUpdateShowsPrimaryActionHighlight:)(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2 & 1);
}

uint64_t CAFAlertRemoteNotificationObservable.alertRemoteNotificationService(_:didUpdateUserVisibleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3();

  specialized SafeReadOnlyPublished.value.setter(a2, a3);
}

uint64_t CAFAlertRemoteNotificationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFAlertRemoteNotificationObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFAlertRemoteNotificationObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

id key path getter for CAFAlertRemoteNotification.notificationUserActions : CAFAlertRemoteNotification@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 notificationUserActions];
  *a2 = result;
  return result;
}

unint64_t type metadata accessor for CAFAlertRemoteNotification()
{
  result = lazy cache variable for type metadata for CAFAlertRemoteNotification;
  if (!lazy cache variable for type metadata for CAFAlertRemoteNotification)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFAlertRemoteNotification);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFAlertRemoteNotificationObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFAlertRemoteNotificationObservable and conformance CAFAlertRemoteNotificationObservable(&lazy protocol witness table cache variable for type CAFAlertRemoteNotificationObservable and conformance CAFAlertRemoteNotificationObservable, a2, type metadata accessor for CAFAlertRemoteNotificationObservable, &protocol conformance descriptor for CAFAlertRemoteNotificationObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFAlertRemoteNotificationObservable and conformance CAFAlertRemoteNotificationObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFAlertRemoteNotificationObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine36CAFAlertRemoteNotificationObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFAutomakerSettingsRemoteNotificationObservable.symbolNameAndColor.getter(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable_observed);

  v3 = v2;
  OUTLINED_FUNCTION_5_9(v3, v4, v5, v6, v7, v8, v9, v10, v2);

  return v12;
}

uint64_t key path getter for CAFAutomakerSettingsRemoteNotificationObservable.trailingButtonState : CAFAutomakerSettingsRemoteNotificationObservable@<X0>(_BYTE *a1@<X8>)
{
  result = CAFAutomakerSettingsRemoteNotificationObservable.trailingButtonState.getter();
  *a1 = result;
  return result;
}

uint64_t CAFAutomakerSettingsRemoteNotificationObservable.trailingButtonState.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable__trailingButtonState, v8);
  v7 = *(v0 + OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable_observed);

  v1 = v7;
  v2 = swift_readAtKeyPath();
  v4 = *v3;
  v2(&v6, 0);

  return v4;
}

uint64_t CAFAutomakerSettingsRemoteNotificationObservable.trailingButtonState.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = v10;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA48CAFAutomakerSettingsRemoteNotificationObservableC_So15CAFButtonActionVTt3g5(a1, v14, KeyPath, v13, v15, v16, v17, v18, a9, a10);
}

void (*CAFAutomakerSettingsRemoteNotificationObservable.trailingButtonState.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable__trailingButtonState, (v3 + 4));
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable_observed);
  v3[7] = v4;

  v5 = v4;
  v6 = swift_readAtKeyPath();
  v8 = *v7;
  v6(v3, 0);

  *(v3 + 88) = v8;
  return CAFAutomakerSettingsRemoteNotificationObservable.trailingButtonState.modify;
}

void CAFAutomakerSettingsRemoteNotificationObservable.trailingButtonState.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 72);
  v2 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 64);
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA48CAFAutomakerSettingsRemoteNotificationObservableC_So15CAFButtonActionVTt3g5(v4, v5, v3, v2, v6, v7, v8, v9, v10, v11);

  free(v1);
}

uint64_t CAFAutomakerSettingsRemoteNotificationObservable.$trailingButtonState.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable__trailingButtonState, v4);

  specialized SafePublished.projectedValue.getter();
  v2 = v1;

  return v2;
}

uint64_t CAFAutomakerSettingsRemoteNotificationObservable.automakerSettingsNotificationButtons.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable_observed);

  v2 = v1;
  OUTLINED_FUNCTION_5_9(v2, v3, v4, v5, v6, v7, v8, v9, v1);

  return v11;
}

uint64_t CAFAutomakerSettingsRemoteNotificationObservable.userVisibleLabel.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFAutomakerSettingsRemoteNotificationObservable.$userVisibleLabel.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3();
  v4 = a2(v3);

  return v4;
}

uint64_t CAFAutomakerSettingsRemoteNotificationObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable_observed);
  v4 = [v3 registeredForUserVisibleLabel];
  v5 = 0x73696765726E753CLL;
  v6 = 0xEE003E6465726574;
  if (v4)
  {
    v5 = CAFAutomakerSettingsRemoteNotificationObservable.userVisibleLabel.getter();
  }

  v43 = v5;
  v44 = v6;
  v7 = [v3 registeredForUserVisibleDescription];
  v8 = 0x73696765726E753CLL;
  v9 = 0xEE003E6465726574;
  if (v7)
  {
    v8 = CAFAutomakerSettingsRemoteNotificationObservable.userVisibleDescription.getter();
  }

  v41 = v8;
  v42 = v9;
  v10 = [v3 registeredForIdentifier];
  v11 = 0x73696765726E753CLL;
  v12 = 0xEE003E6465726574;
  if (v10)
  {
    v11 = CAFAutomakerSettingsRemoteNotificationObservable.identifier.getter();
  }

  v39 = v11;
  v40 = v12;
  v13 = 0x73696765726E753CLL;
  v14 = 0xEE003E6465726574;
  if ([v3 registeredForSymbolNameAndColor])
  {
    v15 = CAFAutomakerSettingsRemoteNotificationObservable.symbolNameAndColor.getter();
    v16 = [v15 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v17;
  }

  v38 = v13;
  v18 = [v3 registeredForDisplayPanelIdentifier];
  v19 = 0x73696765726E753CLL;
  v20 = 0xEE003E6465726574;
  if (v18)
  {
    v19 = CAFAutomakerSettingsRemoteNotificationObservable.displayPanelIdentifier.getter();
    v20 = v21;
  }

  v37 = v19;
  v22 = [v3 registeredForDisplayZoneIdentifier];
  v23 = 0x73696765726E753CLL;
  v24 = 0xEE003E6465726574;
  if (v22)
  {
    v23 = CAFAutomakerSettingsRemoteNotificationObservable.displayZoneIdentifier.getter();
    v24 = v25;
  }

  v46 = 0x73696765726E753CLL;
  v26 = 0xEE003E6465726574;
  if ([v3 registeredForTrailingButton])
  {
    v27 = CAFAutomakerSettingsRemoteNotificationObservable.trailingButton.getter();
    v28 = [v27 description];
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v29;
  }

  v45 = 0x73696765726E753CLL;
  v30 = 0xEE003E6465726574;
  if ([v3 registeredForTrailingButtonState])
  {
    CAFAutomakerSettingsRemoteNotificationObservable.trailingButtonState.getter();
    v31 = NSStringFromButtonAction();
    if (v31)
    {
      v32 = v31;
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v33;
    }

    else
    {
      v30 = 0xE900000000000029;
      v45 = 0x6E776F6E6B6E7528;
    }
  }

  if ([v3 registeredForAutomakerSettingsNotificationButtons])
  {
    CAFAutomakerSettingsRemoteNotificationObservable.automakerSettingsNotificationButtons.getter();
    v2 = MEMORY[0x245D0A590]();
    v1 = v34;
  }

  _StringGuts.grow(_:)(289);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  _print_unlocked<A, B>(_:_:)();
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v43, v44);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530](0xD00000000000001ALL);
  MEMORY[0x245D0A530](v41, v42);

  MEMORY[0x245D0A530](0x69746E656469202CLL, 0xEE00203A72656966);
  MEMORY[0x245D0A530](v39, v40);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v38, v14);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530](0xD00000000000001ALL);
  MEMORY[0x245D0A530](v37, v20);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v36, v24);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v46, v26);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v45, v30);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFAutomakerSettingsRemoteNotificationObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFAutomakerSettingsRemoteNotificationObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFAutomakerSettingsRemoteNotificationObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable__userVisibleLabel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA48CAFAutomakerSettingsRemoteNotificationObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA48CAFAutomakerSettingsRemoteNotificationObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v9 = OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable__userVisibleDescription;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v9] = specialized SafePublished.init(observedValuekeypath:)();
  v10 = OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable__identifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)();
  v11 = OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable__symbolNameAndColor;
  swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA48CAFAutomakerSettingsRemoteNotificationObservableCSo23CAFSymbolImageWithColorCGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA48CAFAutomakerSettingsRemoteNotificationObservableCSo23CAFSymbolImageWithColorCGMR);
  OUTLINED_FUNCTION_225(v12);
  OUTLINED_FUNCTION_0_7();
  *&v2[v11] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v13 = OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable__displayPanelIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v13] = specialized SafePublished.init(observedValuekeypath:)();
  v14 = OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable__displayZoneIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v14] = specialized SafePublished.init(observedValuekeypath:)();
  v15 = OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable__trailingButton;
  swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA48CAFAutomakerSettingsRemoteNotificationObservableCSo17CAFTrailingButtonCGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA48CAFAutomakerSettingsRemoteNotificationObservableCSo17CAFTrailingButtonCGMR);
  OUTLINED_FUNCTION_225(v16);
  OUTLINED_FUNCTION_0_7();
  *&v2[v15] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v17 = OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable__trailingButtonState;
  swift_getKeyPath();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA48CAFAutomakerSettingsRemoteNotificationObservableCSo15CAFButtonActionVGMd, _s10CAFCombine13SafePublishedCyAA48CAFAutomakerSettingsRemoteNotificationObservableCSo15CAFButtonActionVGMR);
  OUTLINED_FUNCTION_225(v18);
  v19 = OUTLINED_FUNCTION_0_7();
  *&v2[v17] = specialized SafePublished.init(observedValuekeypath:)(v19);
  v20 = OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable__automakerSettingsNotificationButtons;
  swift_getKeyPath();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA48CAFAutomakerSettingsRemoteNotificationObservableCSaySSGGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA48CAFAutomakerSettingsRemoteNotificationObservableCSaySSGGMR);
  OUTLINED_FUNCTION_225(v21);
  OUTLINED_FUNCTION_0_7();
  *&v2[v20] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v22 = OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v22] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable_observed] = a1;
  v26.receiver = v2;
  v26.super_class = type metadata accessor for CAFAutomakerSettingsRemoteNotificationObservable();
  v23 = a1;
  v24 = objc_msgSendSuper2(&v26, sel_init);
  [v23 registerObserver_];

  return v24;
}

uint64_t CAFAutomakerSettingsRemoteNotificationObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFAutomakerSettingsRemoteNotificationObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFAutomakerSettingsRemoteNotificationObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFAutomakerSettingsRemoteNotificationObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFAutomakerSettingsRemoteNotificationObservable@<X0>(void *a1@<X8>)
{
  result = CAFAutomakerSettingsRemoteNotificationObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFAutomakerSettingsRemoteNotificationObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFAutomakerSettingsRemoteNotificationObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

double @objc CAFAutomakerSettingsRemoteNotificationObservable.automakerSettingsRemoteNotificationService(_:didUpdateUserVisibleLabel:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFAutomakerSettingsRemoteNotificationObservable.automakerSettingsRemoteNotificationService(_:didUpdateSymbolNameAndColor:)(uint64_t a1, void *a2, uint64_t *a3, void (*a4)(void *))
{
  OUTLINED_FUNCTION_17_3();
  v6 = a2;
  a4(a2);
}

uint64_t CAFAutomakerSettingsRemoteNotificationObservable.automakerSettingsRemoteNotificationService(_:didUpdateTrailingButtonState:)(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_234(v2 + OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable__trailingButtonState, v5);

  specialized SafePublished.value.setter(a2);
}

uint64_t CAFAutomakerSettingsRemoteNotificationObservable.automakerSettingsRemoteNotificationService(_:didUpdateAutomakerSettingsNotificationButtons:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_17_3();

  specialized SafeReadOnlyPublished.value.setter(v2);
}

uint64_t CAFAutomakerSettingsRemoteNotificationObservable.automakerSettingsRemoteNotificationService(_:didUpdateUserVisibleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3();

  specialized SafeReadOnlyPublished.value.setter(a2, a3);
}

uint64_t CAFAutomakerSettingsRemoteNotificationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFAutomakerSettingsRemoteNotificationObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFAutomakerSettingsRemoteNotificationObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFAutomakerSettingsRemoteNotification.automakerSettingsNotificationButtons : CAFAutomakerSettingsRemoteNotification(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 automakerSettingsNotificationButtons];
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *a2 = v4;
}

unint64_t type metadata accessor for CAFAutomakerSettingsRemoteNotification()
{
  result = lazy cache variable for type metadata for CAFAutomakerSettingsRemoteNotification;
  if (!lazy cache variable for type metadata for CAFAutomakerSettingsRemoteNotification)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFAutomakerSettingsRemoteNotification);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFAutomakerSettingsRemoteNotificationObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFAutomakerSettingsRemoteNotificationObservable and conformance CAFAutomakerSettingsRemoteNotificationObservable(&lazy protocol witness table cache variable for type CAFAutomakerSettingsRemoteNotificationObservable and conformance CAFAutomakerSettingsRemoteNotificationObservable, a2, type metadata accessor for CAFAutomakerSettingsRemoteNotificationObservable, &protocol conformance descriptor for CAFAutomakerSettingsRemoteNotificationObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFAutomakerSettingsRemoteNotificationObservable and conformance CAFAutomakerSettingsRemoteNotificationObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFAutomakerSettingsRemoteNotificationObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t OUTLINED_FUNCTION_5_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_getAtKeyPath();
}

uint64_t CAFDynamicContentElementObservable.userDismissible.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFDynamicContentElementObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFDynamicContentElementObservable.dynamicContentURL.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine34CAFDynamicContentElementObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFDynamicContentElementObservable.$dynamicContentURL.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t CAFDynamicContentElementObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFDynamicContentElementObservable_observed);
  v4 = [v3 registeredForDynamicContentURL];
  v5 = 0x73696765726E753CLL;
  v6 = 0xEE003E6465726574;
  if (v4)
  {
    v5 = CAFDynamicContentElementObservable.dynamicContentURL.getter();
    v6 = v7;
  }

  v8 = 0x73696765726E753CLL;
  v9 = 0xEE003E6465726574;
  if ([v3 registeredForUserDismissible])
  {
    v10 = CAFDynamicContentElementObservable.userDismissible.getter();
    if (v10)
    {
      v8 = 1702195828;
    }

    else
    {
      v8 = 0x65736C6166;
    }

    if (v10)
    {
      v9 = 0xE400000000000000;
    }

    else
    {
      v9 = 0xE500000000000000;
    }
  }

  v11 = 0x73696765726E753CLL;
  v12 = 0xEE003E6465726574;
  if ([v3 registeredForDisplayPanelIdentifier])
  {
    v11 = CAFDynamicContentElementObservable.displayPanelIdentifier.getter();
    v12 = v13;
  }

  if ([v3 registeredForDisplayZoneIdentifier])
  {
    v2 = CAFDynamicContentElementObservable.displayZoneIdentifier.getter();
    v1 = v14;
  }

  _StringGuts.grow(_:)(142);
  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  _print_unlocked<A, B>(_:_:)();
  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v16, v6);

  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530](0xD000000000000013);
  MEMORY[0x245D0A530](v8, v9);

  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v11, v12);

  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFDynamicContentElementObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine34CAFDynamicContentElementObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFDynamicContentElementObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine34CAFDynamicContentElementObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine34CAFDynamicContentElementObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFDynamicContentElementObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFDynamicContentElementObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine34CAFDynamicContentElementObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine34CAFDynamicContentElementObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine34CAFDynamicContentElementObservable__dynamicContentURL;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFDynamicContentElementObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFDynamicContentElementObservableCSSGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v8 = OBJC_IVAR____TtC10CAFCombine34CAFDynamicContentElementObservable__userDismissible;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFDynamicContentElementObservableCSbGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFDynamicContentElementObservableCSbGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v8] = specialized SafePublished.init(observedValuekeypath:)();
  v9 = OBJC_IVAR____TtC10CAFCombine34CAFDynamicContentElementObservable__displayPanelIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v9] = specialized SafePublished.init(observedValuekeypath:)();
  v10 = OBJC_IVAR____TtC10CAFCombine34CAFDynamicContentElementObservable__displayZoneIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine34CAFDynamicContentElementObservable_observed] = a1;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for CAFDynamicContentElementObservable();
  v11 = a1;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  [v11 registerObserver_];

  return v12;
}

uint64_t CAFDynamicContentElementObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFDynamicContentElementObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFDynamicContentElementObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine34CAFDynamicContentElementObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFDynamicContentElementObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFDynamicContentElementObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFDynamicContentElementObservable@<X0>(void *a1@<X8>)
{
  result = CAFDynamicContentElementObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFDynamicContentElementObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFDynamicContentElementObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFDynamicContentElementObservable.dynamicContentElementService(_:didUpdateUserDismissible:)(uint64_t a1, char a2)
{

  specialized SafeReadOnlyPublished.value.setter(a2 & 1);
}

double @objc CAFDynamicContentElementObservable.dynamicContentElementService(_:didUpdateDynamicContentURL:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFDynamicContentElementObservable.dynamicContentElementService(_:didUpdateDynamicContentURL:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  specialized SafeReadOnlyPublished.value.setter(a2, a3);
}

uint64_t CAFDynamicContentElementObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFDynamicContentElementObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFDynamicContentElementObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFDynamicContentElement()
{
  result = lazy cache variable for type metadata for CAFDynamicContentElement;
  if (!lazy cache variable for type metadata for CAFDynamicContentElement)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFDynamicContentElement);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFDynamicContentElementObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFDynamicContentElementObservable and conformance CAFDynamicContentElementObservable(&lazy protocol witness table cache variable for type CAFDynamicContentElementObservable and conformance CAFDynamicContentElementObservable, a2, type metadata accessor for CAFDynamicContentElementObservable, &protocol conformance descriptor for CAFDynamicContentElementObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFDynamicContentElementObservable and conformance CAFDynamicContentElementObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFDynamicContentElementObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine34CAFDynamicContentElementObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFDynamicLocalNotificationObservable.userDismissible.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFDynamicLocalNotificationObservable.symbolNameAndColor.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFDynamicLocalNotificationObservable.identifier.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFDynamicLocalNotificationObservable.$identifier.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3();
  v4 = a2(v3);

  return v4;
}

uint64_t CAFDynamicLocalNotificationObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable_observed);
  v4 = [v3 registeredForIdentifier];
  v5 = 0x73696765726E753CLL;
  v6 = 0xEE003E6465726574;
  if (v4)
  {
    v5 = CAFDynamicLocalNotificationObservable.identifier.getter();
  }

  v36 = v5;
  v37 = v6;
  v7 = [v3 registeredForUserVisibleLabel];
  v8 = 0x73696765726E753CLL;
  v9 = 0xEE003E6465726574;
  if (v7)
  {
    v8 = CAFDynamicLocalNotificationObservable.userVisibleLabel.getter();
    v9 = v10;
  }

  v35 = v8;
  v11 = [v3 registeredForUserVisibleDescription];
  v12 = 0x73696765726E753CLL;
  v13 = 0xEE003E6465726574;
  if (v11)
  {
    v12 = CAFDynamicLocalNotificationObservable.userVisibleDescription.getter();
    v13 = v14;
  }

  v34 = v12;
  v15 = [v3 registeredForUserDismissible];
  v16 = 0x73696765726E753CLL;
  v17 = 0xEE003E6465726574;
  if (v15)
  {
    v18 = CAFDynamicLocalNotificationObservable.userDismissible.getter();
    if (v18)
    {
      v16 = 1702195828;
    }

    else
    {
      v16 = 0x65736C6166;
    }

    if (v18)
    {
      v17 = 0xE400000000000000;
    }

    else
    {
      v17 = 0xE500000000000000;
    }
  }

  v33 = v16;
  v19 = [v3 registeredForDisplayPanelIdentifier];
  v20 = 0x73696765726E753CLL;
  v21 = 0xEE003E6465726574;
  if (v19)
  {
    v20 = CAFDynamicLocalNotificationObservable.displayPanelIdentifier.getter();
    v21 = v22;
  }

  v32 = v20;
  v23 = [v3 registeredForDisplayZoneIdentifier];
  v24 = 0x73696765726E753CLL;
  v25 = 0xEE003E6465726574;
  if (v23)
  {
    v24 = CAFDynamicLocalNotificationObservable.displayZoneIdentifier.getter();
    v25 = v26;
  }

  if ([v3 registeredForSymbolNameAndColor])
  {
    v27 = CAFDynamicLocalNotificationObservable.symbolNameAndColor.getter();
    v28 = [v27 description];
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = v29;
  }

  _StringGuts.grow(_:)(212);
  OUTLINED_FUNCTION_3_9();
  MEMORY[0x245D0A530]();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x746E656469207B20, 0xEF203A7265696669);
  MEMORY[0x245D0A530](v36, v37);

  OUTLINED_FUNCTION_3_9();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v35, v9);

  OUTLINED_FUNCTION_3_9();
  MEMORY[0x245D0A530](0xD00000000000001ALL);
  MEMORY[0x245D0A530](v34, v13);

  OUTLINED_FUNCTION_3_9();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v33, v17);

  OUTLINED_FUNCTION_3_9();
  MEMORY[0x245D0A530](0xD00000000000001ALL);
  MEMORY[0x245D0A530](v32, v21);

  OUTLINED_FUNCTION_3_9();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v31, v25);

  OUTLINED_FUNCTION_3_9();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFDynamicLocalNotificationObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFDynamicLocalNotificationObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFDynamicLocalNotificationObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable__identifier;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFDynamicLocalNotificationObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFDynamicLocalNotificationObservableCSSGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v8 = OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable__userVisibleLabel;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v8] = specialized SafePublished.init(observedValuekeypath:)();
  v9 = OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable__userVisibleDescription;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v9] = specialized SafePublished.init(observedValuekeypath:)();
  v10 = OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable__userDismissible;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFDynamicLocalNotificationObservableCSbGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFDynamicLocalNotificationObservableCSbGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)();
  v11 = OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable__displayPanelIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v11] = specialized SafePublished.init(observedValuekeypath:)();
  v12 = OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable__displayZoneIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v12] = specialized SafePublished.init(observedValuekeypath:)();
  v13 = OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable__symbolNameAndColor;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFDynamicLocalNotificationObservableCSo23CAFSymbolImageWithColorCGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFDynamicLocalNotificationObservableCSo23CAFSymbolImageWithColorCGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v13] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v14 = OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v14] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable_observed] = a1;
  v18.receiver = v2;
  v18.super_class = type metadata accessor for CAFDynamicLocalNotificationObservable();
  v15 = a1;
  v16 = objc_msgSendSuper2(&v18, sel_init);
  [v15 registerObserver_];

  return v16;
}

uint64_t CAFDynamicLocalNotificationObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFDynamicLocalNotificationObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFDynamicLocalNotificationObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFDynamicLocalNotificationObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFDynamicLocalNotificationObservable@<X0>(void *a1@<X8>)
{
  result = CAFDynamicLocalNotificationObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFDynamicLocalNotificationObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFDynamicLocalNotificationObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

double @objc CAFDynamicLocalNotificationObservable.dynamicLocalNotificationService(_:didUpdateIdentifier:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFDynamicLocalNotificationObservable.dynamicLocalNotificationService(_:didUpdateUserDismissible:)(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2 & 1);
}

uint64_t CAFDynamicLocalNotificationObservable.dynamicLocalNotificationService(_:didUpdateSymbolNameAndColor:)(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_17_3();
  v3 = a2;
  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFDynamicLocalNotificationObservable.dynamicLocalNotificationService(_:didUpdateIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3();

  specialized SafeReadOnlyPublished.value.setter(a2, a3);
}

uint64_t CAFDynamicLocalNotificationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFDynamicLocalNotificationObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFDynamicLocalNotificationObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFDynamicLocalNotification()
{
  result = lazy cache variable for type metadata for CAFDynamicLocalNotification;
  if (!lazy cache variable for type metadata for CAFDynamicLocalNotification)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFDynamicLocalNotification);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFDynamicLocalNotificationObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFDynamicLocalNotificationObservable and conformance CAFDynamicLocalNotificationObservable(&lazy protocol witness table cache variable for type CAFDynamicLocalNotificationObservable and conformance CAFDynamicLocalNotificationObservable, a2, type metadata accessor for CAFDynamicLocalNotificationObservable, &protocol conformance descriptor for CAFDynamicLocalNotificationObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFDynamicLocalNotificationObservable and conformance CAFDynamicLocalNotificationObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFDynamicLocalNotificationObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine37CAFDynamicLocalNotificationObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFLocalNotificationObservable.identifier.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine30CAFLocalNotificationObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFLocalNotificationObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine30CAFLocalNotificationObservable_observed);
  v4 = 0x73696765726E753CLL;
  v5 = 0xEE003E6465726574;
  if ([v3 registeredForIdentifier])
  {
    v4 = CAFLocalNotificationObservable.identifier.getter();
    v5 = v6;
  }

  v7 = 0x73696765726E753CLL;
  v8 = 0xEE003E6465726574;
  if ([v3 registeredForDisplayPanelIdentifier])
  {
    v7 = CAFLocalNotificationObservable.displayPanelIdentifier.getter();
    v8 = v9;
  }

  if ([v3 registeredForDisplayZoneIdentifier])
  {
    v2 = CAFLocalNotificationObservable.displayZoneIdentifier.getter();
    v1 = v10;
  }

  _StringGuts.grow(_:)(110);
  MEMORY[0x245D0A530](0xD000000000000021, 0x800000024230C4F0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x746E656469207B20, 0xEF203A7265696669);
  MEMORY[0x245D0A530](v4, v5);

  MEMORY[0x245D0A530](0xD00000000000001ALL, 0x800000024230BFF0);
  MEMORY[0x245D0A530](v7, v8);

  MEMORY[0x245D0A530](0xD000000000000019, 0x800000024230C010);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFLocalNotificationObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine30CAFLocalNotificationObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine30CAFLocalNotificationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine30CAFLocalNotificationObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine30CAFLocalNotificationObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFLocalNotificationObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFLocalNotificationObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine30CAFLocalNotificationObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine30CAFLocalNotificationObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine30CAFLocalNotificationObservable__identifier;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA30CAFLocalNotificationObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA30CAFLocalNotificationObservableCSSGMR);
  swift_allocObject();
  *&v2[v7] = OUTLINED_FUNCTION_0_8();
  v8 = OBJC_IVAR____TtC10CAFCombine30CAFLocalNotificationObservable__displayPanelIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  *&v2[v8] = OUTLINED_FUNCTION_0_8();
  v9 = OBJC_IVAR____TtC10CAFCombine30CAFLocalNotificationObservable__displayZoneIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  *&v2[v9] = OUTLINED_FUNCTION_0_8();
  v10 = OBJC_IVAR____TtC10CAFCombine30CAFLocalNotificationObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  *&v2[v10] = OUTLINED_FUNCTION_0_8();
  *&v2[OBJC_IVAR____TtC10CAFCombine30CAFLocalNotificationObservable_observed] = a1;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for CAFLocalNotificationObservable();
  v11 = a1;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  [v11 registerObserver_];

  return v12;
}

uint64_t CAFLocalNotificationObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine30CAFLocalNotificationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFLocalNotificationObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine30CAFLocalNotificationObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFLocalNotificationObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFLocalNotificationObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFLocalNotificationObservable@<X0>(void *a1@<X8>)
{
  result = CAFLocalNotificationObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFLocalNotificationObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFLocalNotificationObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

double @objc CAFLocalNotificationObservable.localNotificationService(_:didUpdateIdentifier:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFLocalNotificationObservable.localNotificationService(_:didUpdateIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  specialized SafeReadOnlyPublished.value.setter(a2, a3);
}

uint64_t CAFLocalNotificationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFLocalNotificationObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFLocalNotificationObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFLocalNotification()
{
  result = lazy cache variable for type metadata for CAFLocalNotification;
  if (!lazy cache variable for type metadata for CAFLocalNotification)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFLocalNotification);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFLocalNotificationObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFLocalNotificationObservable and conformance CAFLocalNotificationObservable(&lazy protocol witness table cache variable for type CAFLocalNotificationObservable and conformance CAFLocalNotificationObservable, a2, type metadata accessor for CAFLocalNotificationObservable, &protocol conformance descriptor for CAFLocalNotificationObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFLocalNotificationObservable and conformance CAFLocalNotificationObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFLocalNotificationObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine30CAFLocalNotificationObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFMinimalRemoteNotificationObservable.symbolNameAndColor.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t key path getter for CAFMinimalRemoteNotificationObservable.trailingButtonState : CAFMinimalRemoteNotificationObservable@<X0>(_BYTE *a1@<X8>)
{
  result = CAFMinimalRemoteNotificationObservable.trailingButtonState.getter();
  *a1 = result;
  return result;
}

uint64_t CAFMinimalRemoteNotificationObservable.trailingButtonState.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable__trailingButtonState, v8);
  v7 = *(v0 + OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable_observed);

  v1 = v7;
  v2 = swift_readAtKeyPath();
  v4 = *v3;
  v2(&v6, 0);

  return v4;
}

uint64_t CAFMinimalRemoteNotificationObservable.trailingButtonState.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = v10;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA38CAFMinimalRemoteNotificationObservableC_So15CAFButtonActionVTt3g5(a1, v14, KeyPath, v13, v15, v16, v17, v18, a9, a10);
}

void (*CAFMinimalRemoteNotificationObservable.trailingButtonState.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable__trailingButtonState, (v3 + 4));
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable_observed);
  v3[7] = v4;

  v5 = v4;
  v6 = swift_readAtKeyPath();
  v8 = *v7;
  v6(v3, 0);

  *(v3 + 88) = v8;
  return CAFMinimalRemoteNotificationObservable.trailingButtonState.modify;
}

void CAFMinimalRemoteNotificationObservable.trailingButtonState.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 72);
  v2 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 64);
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA38CAFMinimalRemoteNotificationObservableC_So15CAFButtonActionVTt3g5(v4, v5, v3, v2, v6, v7, v8, v9, v10, v11);

  free(v1);
}

uint64_t CAFMinimalRemoteNotificationObservable.$trailingButtonState.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable__trailingButtonState, v4);

  specialized SafePublished.projectedValue.getter();
  v2 = v1;

  return v2;
}

uint64_t CAFMinimalRemoteNotificationObservable.userVisibleLabel.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFMinimalRemoteNotificationObservable.$userVisibleLabel.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t CAFMinimalRemoteNotificationObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable_observed);
  v4 = [v3 registeredForUserVisibleLabel];
  v5 = 0x73696765726E753CLL;
  v6 = 0xEE003E6465726574;
  if (v4)
  {
    v5 = CAFMinimalRemoteNotificationObservable.userVisibleLabel.getter();
  }

  v41 = v5;
  v42 = v6;
  v7 = [v3 registeredForUserVisibleDescription];
  v8 = 0x73696765726E753CLL;
  v9 = 0xEE003E6465726574;
  if (v7)
  {
    v8 = CAFMinimalRemoteNotificationObservable.userVisibleDescription.getter();
  }

  v39 = v8;
  v40 = v9;
  v10 = [v3 registeredForIdentifier];
  v11 = 0x73696765726E753CLL;
  v12 = 0xEE003E6465726574;
  if (v10)
  {
    v11 = CAFMinimalRemoteNotificationObservable.identifier.getter();
  }

  v37 = v11;
  v38 = v12;
  v13 = 0x73696765726E753CLL;
  v14 = 0xEE003E6465726574;
  if ([v3 registeredForSymbolNameAndColor])
  {
    v15 = CAFMinimalRemoteNotificationObservable.symbolNameAndColor.getter();
    v16 = [v15 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v17;
  }

  v36 = v13;
  v18 = [v3 registeredForDisplayPanelIdentifier];
  v19 = 0x73696765726E753CLL;
  v20 = 0xEE003E6465726574;
  if (v18)
  {
    v19 = CAFMinimalRemoteNotificationObservable.displayPanelIdentifier.getter();
    v20 = v21;
  }

  v35 = v19;
  v22 = [v3 registeredForDisplayZoneIdentifier];
  v23 = 0x73696765726E753CLL;
  v24 = 0xEE003E6465726574;
  if (v22)
  {
    v23 = CAFMinimalRemoteNotificationObservable.displayZoneIdentifier.getter();
    v24 = v25;
  }

  v34 = v23;
  v43 = 0x73696765726E753CLL;
  v26 = 0xEE003E6465726574;
  if ([v3 registeredForTrailingButton])
  {
    v27 = CAFMinimalRemoteNotificationObservable.trailingButton.getter();
    v28 = [v27 description];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v29;
  }

  if ([v3 registeredForTrailingButtonState])
  {
    CAFMinimalRemoteNotificationObservable.trailingButtonState.getter();
    v30 = NSStringFromButtonAction();
    if (v30)
    {
      v31 = v30;
      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v1 = v32;
    }

    else
    {
      v1 = 0xE900000000000029;
      v2 = 0x6E776F6E6B6E7528;
    }
  }

  _StringGuts.grow(_:)(237);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  _print_unlocked<A, B>(_:_:)();
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v41, v42);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530](0xD00000000000001ALL);
  MEMORY[0x245D0A530](v39, v40);

  MEMORY[0x245D0A530](0x69746E656469202CLL, 0xEE00203A72656966);
  MEMORY[0x245D0A530](v37, v38);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v36, v14);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530](0xD00000000000001ALL);
  MEMORY[0x245D0A530](v35, v20);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v34, v24);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v43, v26);

  OUTLINED_FUNCTION_3_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFMinimalRemoteNotificationObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFMinimalRemoteNotificationObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFMinimalRemoteNotificationObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable__userVisibleLabel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA38CAFMinimalRemoteNotificationObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA38CAFMinimalRemoteNotificationObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v9 = OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable__userVisibleDescription;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v9] = specialized SafePublished.init(observedValuekeypath:)();
  v10 = OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable__identifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)();
  v11 = OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable__symbolNameAndColor;
  swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA38CAFMinimalRemoteNotificationObservableCSo23CAFSymbolImageWithColorCGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA38CAFMinimalRemoteNotificationObservableCSo23CAFSymbolImageWithColorCGMR);
  OUTLINED_FUNCTION_225(v12);
  OUTLINED_FUNCTION_0_7();
  *&v2[v11] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v13 = OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable__displayPanelIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v13] = specialized SafePublished.init(observedValuekeypath:)();
  v14 = OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable__displayZoneIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v14] = specialized SafePublished.init(observedValuekeypath:)();
  v15 = OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable__trailingButton;
  swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA38CAFMinimalRemoteNotificationObservableCSo17CAFTrailingButtonCGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA38CAFMinimalRemoteNotificationObservableCSo17CAFTrailingButtonCGMR);
  OUTLINED_FUNCTION_225(v16);
  OUTLINED_FUNCTION_0_7();
  *&v2[v15] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v17 = OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable__trailingButtonState;
  swift_getKeyPath();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA38CAFMinimalRemoteNotificationObservableCSo15CAFButtonActionVGMd, &_s10CAFCombine13SafePublishedCyAA38CAFMinimalRemoteNotificationObservableCSo15CAFButtonActionVGMR);
  OUTLINED_FUNCTION_225(v18);
  v19 = OUTLINED_FUNCTION_0_7();
  *&v2[v17] = specialized SafePublished.init(observedValuekeypath:)(v19);
  v20 = OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v20] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable_observed] = a1;
  v24.receiver = v2;
  v24.super_class = type metadata accessor for CAFMinimalRemoteNotificationObservable();
  v21 = a1;
  v22 = objc_msgSendSuper2(&v24, sel_init);
  [v21 registerObserver_];

  return v22;
}

uint64_t CAFMinimalRemoteNotificationObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFMinimalRemoteNotificationObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFMinimalRemoteNotificationObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFMinimalRemoteNotificationObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFMinimalRemoteNotificationObservable@<X0>(void *a1@<X8>)
{
  result = CAFMinimalRemoteNotificationObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFMinimalRemoteNotificationObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFMinimalRemoteNotificationObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

double @objc CAFMinimalRemoteNotificationObservable.minimalRemoteNotificationService(_:didUpdateUserVisibleLabel:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFMinimalRemoteNotificationObservable.minimalRemoteNotificationService(_:didUpdateSymbolNameAndColor:)(uint64_t a1, void *a2, void *a3, void (*a4)(void *))
{

  v6 = a2;
  a4(a2);
}

uint64_t CAFMinimalRemoteNotificationObservable.minimalRemoteNotificationService(_:didUpdateTrailingButtonState:)(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_234(v2 + OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable__trailingButtonState, v5);

  specialized SafePublished.value.setter(a2);
}

uint64_t CAFMinimalRemoteNotificationObservable.minimalRemoteNotificationService(_:didUpdateUserVisibleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  specialized SafeReadOnlyPublished.value.setter(a2, a3);
}

uint64_t CAFMinimalRemoteNotificationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFMinimalRemoteNotificationObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFMinimalRemoteNotificationObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFMinimalRemoteNotification()
{
  result = lazy cache variable for type metadata for CAFMinimalRemoteNotification;
  if (!lazy cache variable for type metadata for CAFMinimalRemoteNotification)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFMinimalRemoteNotification);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFMinimalRemoteNotificationObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFMinimalRemoteNotificationObservable and conformance CAFMinimalRemoteNotificationObservable(&lazy protocol witness table cache variable for type CAFMinimalRemoteNotificationObservable and conformance CAFMinimalRemoteNotificationObservable, a2, type metadata accessor for CAFMinimalRemoteNotificationObservable, &protocol conformance descriptor for CAFMinimalRemoteNotificationObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFMinimalRemoteNotificationObservable and conformance CAFMinimalRemoteNotificationObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFMinimalRemoteNotificationObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine38CAFMinimalRemoteNotificationObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

void CAFMultiSelectRemoteNotification.selectedEntryIndicesBridged.getter()
{
  v1 = [v0 selectedEntryIndices];
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = specialized Array._getCount()();
  if (!v3)
  {
LABEL_10:

    return;
  }

  v4 = v3;
  v11 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x245D0A790](i, v2);
      }

      else
      {
        v6 = *(v2 + 8 * i + 32);
      }

      v7 = v6;
      v8 = [v6 unsignedCharValue];

      v10 = *(v11 + 16);
      v9 = *(v11 + 24);
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v9 > 1, v10 + 1, 1);
      }

      *(v11 + 16) = v10 + 1;
      *(v11 + v10 + 32) = v8;
    }

    goto LABEL_10;
  }

  __break(1u);
}

void CAFMultiSelectRemoteNotification.selectedEntryIndicesBridged.setter(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = 32;
    do
    {
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedChar_];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v4;
      --v3;
    }

    while (v3);
  }

  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setSelectedEntryIndices_];
}

uint64_t key path getter for CAFMultiSelectRemoteNotificationObservable.trailingButtonState : CAFMultiSelectRemoteNotificationObservable@<X0>(_BYTE *a1@<X8>)
{
  result = CAFMultiSelectRemoteNotificationObservable.trailingButtonState.getter();
  *a1 = result;
  return result;
}

uint64_t CAFMultiSelectRemoteNotificationObservable.trailingButtonState.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable__trailingButtonState, v8);
  v7 = *(v0 + OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable_observed);

  v1 = v7;
  v2 = swift_readAtKeyPath();
  v4 = *v3;
  v2(&v6, 0);

  return v4;
}

uint64_t CAFMultiSelectRemoteNotificationObservable.trailingButtonState.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = v10;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA42CAFMultiSelectRemoteNotificationObservableC_So15CAFButtonActionVTt3g5(a1, v14, KeyPath, v13, v15, v16, v17, v18, a9, a10);
}

void (*CAFMultiSelectRemoteNotificationObservable.trailingButtonState.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable__trailingButtonState, (v3 + 4));
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable_observed);
  v3[7] = v4;

  v5 = v4;
  v6 = OUTLINED_FUNCTION_2_5();
  v8 = *v7;
  v6(v3, 0);

  *(v3 + 88) = v8;
  return CAFMultiSelectRemoteNotificationObservable.trailingButtonState.modify;
}

void CAFMultiSelectRemoteNotificationObservable.trailingButtonState.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 72);
  v2 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 64);
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA42CAFMultiSelectRemoteNotificationObservableC_So15CAFButtonActionVTt3g5(v4, v5, v3, v2, v6, v7, v8, v9, v10, v11);

  free(v1);
}

uint64_t CAFMultiSelectRemoteNotificationObservable.symbolNameAndColor.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t key path getter for CAFMultiSelectRemoteNotificationObservable.selectedEntryIndices : CAFMultiSelectRemoteNotificationObservable@<X0>(uint64_t *a1@<X8>)
{
  result = CAFMultiSelectRemoteNotificationObservable.selectedEntryIndices.getter();
  *a1 = result;
  return result;
}

uint64_t CAFMultiSelectRemoteNotificationObservable.selectedEntryIndices.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable__selectedEntryIndices, v8);
  v7 = *(v0 + OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable_observed);
  swift_retain_n();

  v1 = v7;
  v2 = swift_readAtKeyPath();
  v4 = *v3;

  v2(&v6, 0);

  return v4;
}

uint64_t CAFMultiSelectRemoteNotificationObservable.selectedEntryIndices.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = v10;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA42CAFMultiSelectRemoteNotificationObservableC_Says5UInt8VGTt3g5(a1, v14, KeyPath, v13, v15, v16, v17, v18, a9, a10);
}

void (*CAFMultiSelectRemoteNotificationObservable.selectedEntryIndices.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[9] = v1;
  v3[10] = swift_getKeyPath();
  v3[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable__selectedEntryIndices, (v3 + 4));
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable_observed);
  v3[8] = v4;
  swift_retain_n();

  v5 = v4;
  v6 = OUTLINED_FUNCTION_2_5();
  v8 = *v7;

  v6(v3, 0);

  v3[7] = v8;
  return CAFMultiSelectRemoteNotificationObservable.selectedEntryIndices.modify;
}

void CAFMultiSelectRemoteNotificationObservable.selectedEntryIndices.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[7];
  v9 = (*a1)[9];
  v11 = v3[10];
  v10 = v3[11];
  if (a2)
  {

    _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA42CAFMultiSelectRemoteNotificationObservableC_Says5UInt8VGTt3g5(v12, v9, v11, v10, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA42CAFMultiSelectRemoteNotificationObservableC_Says5UInt8VGTt3g5(v4, v9, v3[10], v3[11], v5, v6, v7, v8, v17, v18);
  }

  free(v3);
}

uint64_t CAFMultiSelectRemoteNotificationObservable.$trailingButtonState.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_234(v2 + *a1, v7);

  v5 = a2(v4);

  return v5;
}

uint64_t CAFMultiSelectRemoteNotificationObservable.userVisibleLabel.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFMultiSelectRemoteNotificationObservable.$userVisibleLabel.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t CAFMultiSelectRemoteNotificationObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable_observed);
  [v3 registeredForUserVisibleLabel];
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    v5 = CAFMultiSelectRemoteNotificationObservable.userVisibleLabel.getter();
  }

  v52 = v5;
  v53 = v4;
  [v3 registeredForUserVisibleDescription];
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    v8 = CAFMultiSelectRemoteNotificationObservable.userVisibleDescription.getter();
  }

  v50 = v8;
  v51 = v7;
  [v3 registeredForIdentifier];
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    v11 = CAFMultiSelectRemoteNotificationObservable.identifier.getter();
  }

  v48 = v11;
  v49 = v10;
  v13 = 0x73696765726E753CLL;
  v14 = 0xEE003E6465726574;
  if ([v3 registeredForSymbolNameAndColor])
  {
    v15 = CAFMultiSelectRemoteNotificationObservable.symbolNameAndColor.getter();
    v16 = [v15 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v17;
  }

  v46 = v13;
  v47 = v14;
  [v3 registeredForDisplayPanelIdentifier];
  OUTLINED_FUNCTION_9_2();
  if (v20)
  {
    v19 = CAFMultiSelectRemoteNotificationObservable.displayPanelIdentifier.getter();
  }

  v44 = v19;
  v45 = v18;
  v21 = [v3 registeredForDisplayZoneIdentifier];
  v22 = 0x73696765726E753CLL;
  v23 = 0xEE003E6465726574;
  if (v21)
  {
    v22 = CAFMultiSelectRemoteNotificationObservable.displayZoneIdentifier.getter();
    v23 = v24;
  }

  v43 = v22;
  v25 = 0x73696765726E753CLL;
  v26 = 0xEE003E6465726574;
  if ([v3 registeredForTrailingButton])
  {
    v27 = CAFMultiSelectRemoteNotificationObservable.trailingButton.getter();
    v28 = [v27 description];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v29;
  }

  v42 = v25;
  v30 = 0x73696765726E753CLL;
  v31 = 0xEE003E6465726574;
  if ([v3 registeredForTrailingButtonState])
  {
    CAFMultiSelectRemoteNotificationObservable.trailingButtonState.getter();
    v32 = NSStringFromButtonAction();
    if (v32)
    {
      v33 = v32;
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v34;
    }

    else
    {
      v31 = 0xE900000000000029;
      v30 = 0x6E776F6E6B6E7528;
    }
  }

  v41 = v30;
  v54 = 0x73696765726E753CLL;
  v35 = 0xEE003E6465726574;
  if ([v3 registeredForSelectableNotificationEntries])
  {
    v36 = CAFMultiSelectRemoteNotificationObservable.selectableNotificationEntries.getter();
    v37 = [v36 description];
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v38;
  }

  if ([v3 registeredForSelectedEntryIndices])
  {
    CAFMultiSelectRemoteNotificationObservable.selectedEntryIndices.getter();
    v2 = MEMORY[0x245D0A590]();
    v1 = v39;
  }

  _StringGuts.grow(_:)(302);
  MEMORY[0x245D0A530](0xD00000000000002DLL, 0x800000024230C690);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000015, 0x800000024230BD90);
  MEMORY[0x245D0A530](v52, v53);

  OUTLINED_FUNCTION_10_4();
  MEMORY[0x245D0A530](v50, v51);

  MEMORY[0x245D0A530](0x69746E656469202CLL, 0xEE00203A72656966);
  MEMORY[0x245D0A530](v48, v49);

  MEMORY[0x245D0A530](0xD000000000000016, 0x800000024230BFD0);
  MEMORY[0x245D0A530](v46, v47);

  OUTLINED_FUNCTION_10_4();
  MEMORY[0x245D0A530](v44, v45);

  MEMORY[0x245D0A530](0xD000000000000019, 0x800000024230C010);
  MEMORY[0x245D0A530](v43, v23);

  MEMORY[0x245D0A530](0xD000000000000012, 0x800000024230C030);
  MEMORY[0x245D0A530](v42, v26);

  MEMORY[0x245D0A530](0xD000000000000017, 0x800000024230C050);
  MEMORY[0x245D0A530](v41, v31);

  MEMORY[0x245D0A530](0xD000000000000021, 0x800000024230C6C0);
  MEMORY[0x245D0A530](v54, v35);

  MEMORY[0x245D0A530](0xD000000000000018, 0x800000024230C6F0);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFMultiSelectRemoteNotificationObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFMultiSelectRemoteNotificationObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFMultiSelectRemoteNotificationObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable__userVisibleLabel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA42CAFMultiSelectRemoteNotificationObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA42CAFMultiSelectRemoteNotificationObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v9 = OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable__userVisibleDescription;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v9] = specialized SafePublished.init(observedValuekeypath:)();
  v10 = OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable__identifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)();
  v11 = OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable__symbolNameAndColor;
  swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA42CAFMultiSelectRemoteNotificationObservableCSo23CAFSymbolImageWithColorCGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA42CAFMultiSelectRemoteNotificationObservableCSo23CAFSymbolImageWithColorCGMR);
  OUTLINED_FUNCTION_225(v12);
  OUTLINED_FUNCTION_0_7();
  *&v2[v11] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v13 = OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable__displayPanelIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v13] = specialized SafePublished.init(observedValuekeypath:)();
  v14 = OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable__displayZoneIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v14] = specialized SafePublished.init(observedValuekeypath:)();
  v15 = OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable__trailingButton;
  swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA42CAFMultiSelectRemoteNotificationObservableCSo17CAFTrailingButtonCGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA42CAFMultiSelectRemoteNotificationObservableCSo17CAFTrailingButtonCGMR);
  OUTLINED_FUNCTION_225(v16);
  OUTLINED_FUNCTION_0_7();
  *&v2[v15] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v17 = OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable__trailingButtonState;
  swift_getKeyPath();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA42CAFMultiSelectRemoteNotificationObservableCSo15CAFButtonActionVGMd, _s10CAFCombine13SafePublishedCyAA42CAFMultiSelectRemoteNotificationObservableCSo15CAFButtonActionVGMR);
  OUTLINED_FUNCTION_225(v18);
  v19 = OUTLINED_FUNCTION_0_7();
  *&v2[v17] = specialized SafePublished.init(observedValuekeypath:)(v19);
  v20 = OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable__selectableNotificationEntries;
  swift_getKeyPath();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA42CAFMultiSelectRemoteNotificationObservableCSo013CAFSelectableI9EntryListCGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA42CAFMultiSelectRemoteNotificationObservableCSo013CAFSelectableI9EntryListCGMR);
  OUTLINED_FUNCTION_225(v21);
  OUTLINED_FUNCTION_0_7();
  *&v2[v20] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v22 = OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable__selectedEntryIndices;
  swift_getKeyPath();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA42CAFMultiSelectRemoteNotificationObservableCSays5UInt8VGGMd, &_s10CAFCombine13SafePublishedCyAA42CAFMultiSelectRemoteNotificationObservableCSays5UInt8VGGMR);
  OUTLINED_FUNCTION_225(v23);
  OUTLINED_FUNCTION_0_7();
  *&v2[v22] = specialized SafePublished.init(observedValuekeypath:)();
  v24 = OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v24] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable_observed] = a1;
  v28.receiver = v2;
  v28.super_class = type metadata accessor for CAFMultiSelectRemoteNotificationObservable();
  v25 = a1;
  v26 = objc_msgSendSuper2(&v28, sel_init);
  [v25 registerObserver_];

  return v26;
}

uint64_t CAFMultiSelectRemoteNotificationObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFMultiSelectRemoteNotificationObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFMultiSelectRemoteNotificationObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFMultiSelectRemoteNotificationObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFMultiSelectRemoteNotificationObservable@<X0>(void *a1@<X8>)
{
  result = CAFMultiSelectRemoteNotificationObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFMultiSelectRemoteNotificationObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFMultiSelectRemoteNotificationObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

double @objc CAFMultiSelectRemoteNotificationObservable.multiSelectRemoteNotificationService(_:didUpdateUserVisibleLabel:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFMultiSelectRemoteNotificationObservable.multiSelectRemoteNotificationService(_:didUpdateTrailingButtonState:)(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_234(v2 + OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable__trailingButtonState, v5);

  specialized SafePublished.value.setter(a2);
}

uint64_t CAFMultiSelectRemoteNotificationObservable.multiSelectRemoteNotificationService(_:didUpdateSymbolNameAndColor:)(uint64_t a1, void *a2, void *a3, void (*a4)(void *))
{

  v6 = a2;
  a4(a2);
}

void CAFMultiSelectRemoteNotificationObservable.multiSelectRemoteNotificationService(_:didUpdateSelectedEntryIndices:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_234(v2 + OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable__selectedEntryIndices, v15);
  v4 = specialized Array._getCount()();
  if (!v4)
  {

LABEL_12:

    specialized SafePublished.value.setter(v13);

    return;
  }

  v5 = v4;
  v14 = MEMORY[0x277D84F90];
  v6 = v4 & ~(v4 >> 63);

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    for (i = 0; i != v5; ++i)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x245D0A790](i, a2);
      }

      else
      {
        v8 = *(a2 + 8 * i + 32);
      }

      v9 = v8;
      v10 = [v8 unsignedCharValue];

      v12 = *(v14 + 16);
      v11 = *(v14 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v11 > 1, v12 + 1, 1);
      }

      *(v14 + 16) = v12 + 1;
      *(v14 + v12 + 32) = v10;
    }

    goto LABEL_12;
  }

  __break(1u);
}

uint64_t CAFMultiSelectRemoteNotificationObservable.multiSelectRemoteNotificationService(_:didUpdateUserVisibleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  specialized SafeReadOnlyPublished.value.setter(a2, a3);
}

uint64_t CAFMultiSelectRemoteNotificationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFMultiSelectRemoteNotificationObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFMultiSelectRemoteNotificationObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

id key path getter for CAFMultiSelectRemoteNotification.selectableNotificationEntries : CAFMultiSelectRemoteNotification@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 selectableNotificationEntries];
  *a2 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CAFMultiSelectRemoteNotification and conformance CAFMultiSelectRemoteNotification()
{
  result = lazy protocol witness table cache variable for type CAFMultiSelectRemoteNotification and conformance CAFMultiSelectRemoteNotification;
  if (!lazy protocol witness table cache variable for type CAFMultiSelectRemoteNotification and conformance CAFMultiSelectRemoteNotification)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFMultiSelectRemoteNotification, 0x277CF8530);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFMultiSelectRemoteNotification and conformance CAFMultiSelectRemoteNotification);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFMultiSelectRemoteNotificationObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFMultiSelectRemoteNotificationObservable and conformance CAFMultiSelectRemoteNotificationObservable(&lazy protocol witness table cache variable for type CAFMultiSelectRemoteNotificationObservable and conformance CAFMultiSelectRemoteNotificationObservable, &protocol conformance descriptor for CAFMultiSelectRemoteNotificationObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFMultiSelectRemoteNotificationObservable and conformance CAFMultiSelectRemoteNotificationObservable(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFMultiSelectRemoteNotificationObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double partial apply for closure #1 in CAFMultiSelectRemoteNotificationObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine42CAFMultiSelectRemoteNotificationObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFPickerObservable.entryList.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t key path getter for CAFPickerObservable.selectedEntryIndex : CAFPickerObservable@<X0>(_BYTE *a1@<X8>)
{
  result = CAFPickerObservable.selectedEntryIndex.getter();
  *a1 = result;
  return result;
}

uint64_t CAFPickerObservable.selectedEntryIndex.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable__selectedEntryIndex, v8);
  v7 = *(v0 + OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable_observed);

  v1 = v7;
  v2 = swift_readAtKeyPath();
  v4 = *v3;
  v2(&v6, 0);

  return v4;
}

uint64_t CAFPickerObservable.selectedEntryIndex.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = v10;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA19CAFPickerObservableC_s5UInt8VTt3g5(a1, v14, KeyPath, v13, v15, v16, v17, v18, a9, a10);
}

void (*CAFPickerObservable.selectedEntryIndex.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable__selectedEntryIndex, (v3 + 4));
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable_observed);
  v3[7] = v4;

  v5 = v4;
  v6 = swift_readAtKeyPath();
  v8 = *v7;
  v6(v3, 0);

  *(v3 + 88) = v8;
  return CAFPickerObservable.selectedEntryIndex.modify;
}

void CAFPickerObservable.selectedEntryIndex.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 72);
  v2 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 64);
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA19CAFPickerObservableC_s5UInt8VTt3g5(v4, v5, v3, v2, v6, v7, v8, v9, v10, v11);

  free(v1);
}

uint64_t CAFPickerObservable.$selectedEntryIndex.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable__selectedEntryIndex, v4);

  specialized SafePublished.projectedValue.getter();
  v2 = v1;

  return v2;
}

uint64_t CAFPickerObservable.userSelectionEnabled.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFPickerObservable.identifier.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFPickerObservable.$identifier.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3();
  v4 = a2(v3);

  return v4;
}

uint64_t CAFPickerObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable_observed);
  v4 = [v3 registeredForIdentifier];
  v5 = 0x73696765726E753CLL;
  v6 = 0xEE003E6465726574;
  if (v4)
  {
    v5 = CAFPickerObservable.identifier.getter();
    v6 = v7;
  }

  v31 = v5;
  v8 = 0x73696765726E753CLL;
  v9 = 0xEE003E6465726574;
  if ([v3 registeredForEntryList])
  {
    v10 = CAFPickerObservable.entryList.getter();
    v11 = [v10 description];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v12;
  }

  v30 = v8;
  v13 = [v3 registeredForSelectedEntryIndex];
  v14 = 0x73696765726E753CLL;
  v15 = 0xEE003E6465726574;
  if (v13)
  {
    CAFPickerObservable.selectedEntryIndex.getter();
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v16;
  }

  v29 = v14;
  v17 = [v3 registeredForUserSelectionEnabled];
  v18 = 0x73696765726E753CLL;
  v19 = 0xEE003E6465726574;
  if (v17)
  {
    v20 = CAFPickerObservable.userSelectionEnabled.getter();
    if (v20)
    {
      v18 = 1702195828;
    }

    else
    {
      v18 = 0x65736C6166;
    }

    if (v20)
    {
      v19 = 0xE400000000000000;
    }

    else
    {
      v19 = 0xE500000000000000;
    }
  }

  v28 = v18;
  v21 = [v3 registeredForDisplayPanelIdentifier];
  v22 = 0x73696765726E753CLL;
  v23 = 0xEE003E6465726574;
  if (v21)
  {
    v22 = CAFPickerObservable.displayPanelIdentifier.getter();
    v23 = v24;
  }

  if ([v3 registeredForDisplayZoneIdentifier])
  {
    v2 = CAFPickerObservable.displayZoneIdentifier.getter();
    v1 = v25;
  }

  _StringGuts.grow(_:)(164);
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x245D0A530](0xD000000000000016);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x746E656469207B20, 0xEF203A7265696669);
  MEMORY[0x245D0A530](v31, v6);

  MEMORY[0x245D0A530](0x4C7972746E65202CLL, 0xED0000203A747369);
  MEMORY[0x245D0A530](v30, v9);

  OUTLINED_FUNCTION_2_9();
  MEMORY[0x245D0A530](0xD000000000000016);
  MEMORY[0x245D0A530](v29, v15);

  OUTLINED_FUNCTION_2_9();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v28, v19);

  OUTLINED_FUNCTION_2_9();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v27, v23);

  OUTLINED_FUNCTION_2_9();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFPickerObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFPickerObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFPickerObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable__identifier;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA19CAFPickerObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA19CAFPickerObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v9 = OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable__entryList;
  swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA19CAFPickerObservableCSo12CAFEntryListCGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA19CAFPickerObservableCSo12CAFEntryListCGMR);
  OUTLINED_FUNCTION_225(v10);
  OUTLINED_FUNCTION_0_7();
  *&v2[v9] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v11 = OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable__selectedEntryIndex;
  swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA19CAFPickerObservableCs5UInt8VGMd, _s10CAFCombine13SafePublishedCyAA19CAFPickerObservableCs5UInt8VGMR);
  OUTLINED_FUNCTION_225(v12);
  v13 = OUTLINED_FUNCTION_0_7();
  *&v2[v11] = specialized SafePublished.init(observedValuekeypath:)(v13);
  v14 = OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable__userSelectionEnabled;
  swift_getKeyPath();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA19CAFPickerObservableCSbGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA19CAFPickerObservableCSbGMR);
  OUTLINED_FUNCTION_225(v15);
  OUTLINED_FUNCTION_0_7();
  *&v2[v14] = specialized SafePublished.init(observedValuekeypath:)();
  v16 = OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable__displayPanelIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v16] = specialized SafePublished.init(observedValuekeypath:)();
  v17 = OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable__displayZoneIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v17] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable_observed] = a1;
  v21.receiver = v2;
  v21.super_class = type metadata accessor for CAFPickerObservable();
  v18 = a1;
  v19 = objc_msgSendSuper2(&v21, sel_init);
  [v18 registerObserver_];

  return v19;
}

uint64_t CAFPickerObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFPickerObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFPickerObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFPickerObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFPickerObservable@<X0>(void *a1@<X8>)
{
  result = CAFPickerObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFPickerObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFPickerObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFPickerObservable.pickerService(_:didUpdateEntryList:)(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_17_3();
  v3 = a2;
  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFPickerObservable.pickerService(_:didUpdateSelectedEntryIndex:)(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_234(v2 + OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable__selectedEntryIndex, v5);

  specialized SafePublished.value.setter(a2);
}

uint64_t CAFPickerObservable.pickerService(_:didUpdateUserSelectionEnabled:)(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2 & 1);
}

double @objc CAFPickerObservable.pickerService(_:didUpdateIdentifier:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFPickerObservable.pickerService(_:didUpdateIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3();

  specialized SafeReadOnlyPublished.value.setter(a2, a3);
}

uint64_t CAFPickerObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFPickerObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFPickerObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

id key path getter for CAFPicker.entryList : CAFPicker@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 entryList];
  *a2 = result;
  return result;
}

unint64_t type metadata accessor for CAFPicker()
{
  result = lazy cache variable for type metadata for CAFPicker;
  if (!lazy cache variable for type metadata for CAFPicker)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFPicker);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFPickerObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFPickerObservable and conformance CAFPickerObservable(&lazy protocol witness table cache variable for type CAFPickerObservable and conformance CAFPickerObservable, a2, type metadata accessor for CAFPickerObservable, &protocol conformance descriptor for CAFPickerObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFPickerObservable and conformance CAFPickerObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFPickerObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine19CAFPickerObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFRemoteNotificationObservable.notificationUserActions.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable_observed);

  v2 = v1;
  OUTLINED_FUNCTION_5_9(v2, v3, v4, v5, v6, v7, v8, v9, v1);

  return v11;
}

uint64_t key path getter for CAFRemoteNotificationObservable.userAction : CAFRemoteNotificationObservable@<X0>(_BYTE *a1@<X8>)
{
  result = CAFRemoteNotificationObservable.userAction.getter();
  *a1 = result;
  return result;
}

uint64_t CAFRemoteNotificationObservable.userAction.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable__userAction, v8);
  v7 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable_observed);

  v1 = v7;
  v2 = swift_readAtKeyPath();
  v4 = *v3;
  v2(&v6, 0);

  return v4;
}

uint64_t CAFRemoteNotificationObservable.userAction.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = v10;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA31CAFRemoteNotificationObservableC_s5UInt8VTt3g5(a1, v14, KeyPath, v13, v15, v16, v17, v18, a9, a10);
}

void (*CAFRemoteNotificationObservable.userAction.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable__userAction, (v3 + 4));
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable_observed);
  v3[7] = v4;

  v5 = v4;
  v6 = swift_readAtKeyPath();
  v8 = *v7;
  v6(v3, 0);

  *(v3 + 88) = v8;
  return CAFRemoteNotificationObservable.userAction.modify;
}

void CAFRemoteNotificationObservable.userAction.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 72);
  v2 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 64);
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA31CAFRemoteNotificationObservableC_s5UInt8VTt3g5(v4, v5, v3, v2, v6, v7, v8, v9, v10, v11);

  free(v1);
}

uint64_t CAFRemoteNotificationObservable.$userAction.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable__userAction, v4);

  specialized SafePublished.projectedValue.getter();
  v2 = v1;

  return v2;
}

uint64_t CAFRemoteNotificationObservable.symbolNameAndColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable_observed);

  v2 = v1;
  OUTLINED_FUNCTION_5_9(v2, v3, v4, v5, v6, v7, v8, v9, v1);

  return v11;
}

uint64_t CAFRemoteNotificationObservable.userVisibleLabel.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFRemoteNotificationObservable.$userVisibleLabel.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t CAFRemoteNotificationObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable_observed);
  v4 = [v3 registeredForUserVisibleLabel];
  v5 = 0x73696765726E753CLL;
  v6 = 0xEE003E6465726574;
  if (v4)
  {
    v5 = CAFRemoteNotificationObservable.userVisibleLabel.getter();
  }

  v40 = v5;
  v41 = v6;
  v7 = [v3 registeredForUserVisibleDescription];
  v8 = 0x73696765726E753CLL;
  v9 = 0xEE003E6465726574;
  if (v7)
  {
    v8 = CAFRemoteNotificationObservable.userVisibleDescription.getter();
  }

  v38 = v8;
  v39 = v9;
  v10 = [v3 registeredForIdentifier];
  v11 = 0x73696765726E753CLL;
  v12 = 0xEE003E6465726574;
  if (v10)
  {
    v11 = CAFRemoteNotificationObservable.identifier.getter();
    v12 = v13;
  }

  v37 = v11;
  v14 = 0x73696765726E753CLL;
  v15 = 0xEE003E6465726574;
  if ([v3 registeredForNotificationUserActions])
  {
    v16 = CAFRemoteNotificationObservable.notificationUserActions.getter();
    v17 = [v16 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v18;
  }

  v19 = [v3 registeredForUserAction];
  v20 = 0x73696765726E753CLL;
  v21 = 0xEE003E6465726574;
  if (v19)
  {
    CAFRemoteNotificationObservable.userAction.getter();
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v22;
  }

  v35 = v20;
  v36 = v14;
  v23 = [v3 registeredForSymbolNameAndColor];
  v24 = 0x73696765726E753CLL;
  v25 = 0xEE003E6465726574;
  if (v23)
  {
    CAFRemoteNotificationObservable.symbolNameAndColor.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23CAFSymbolImageWithColorCSgMd, &_sSo23CAFSymbolImageWithColorCSgMR);
    v24 = String.init<A>(describing:)();
    v25 = v26;
  }

  v34 = v24;
  v27 = [v3 registeredForDisplayPanelIdentifier];
  v28 = 0x73696765726E753CLL;
  v29 = 0xEE003E6465726574;
  if (v27)
  {
    v28 = CAFRemoteNotificationObservable.displayPanelIdentifier.getter();
    v29 = v30;
  }

  if ([v3 registeredForDisplayZoneIdentifier])
  {
    v2 = CAFRemoteNotificationObservable.displayZoneIdentifier.getter();
    v1 = v31;
  }

  _StringGuts.grow(_:)(230);
  OUTLINED_FUNCTION_3_10();
  MEMORY[0x245D0A530]();
  _print_unlocked<A, B>(_:_:)();
  OUTLINED_FUNCTION_3_10();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v40, v41);

  OUTLINED_FUNCTION_3_10();
  MEMORY[0x245D0A530](0xD00000000000001ALL);
  MEMORY[0x245D0A530](v38, v39);

  MEMORY[0x245D0A530](0x69746E656469202CLL, 0xEE00203A72656966);
  MEMORY[0x245D0A530](v37, v12);

  OUTLINED_FUNCTION_3_10();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v36, v15);

  MEMORY[0x245D0A530](0x634172657375202CLL, 0xEE00203A6E6F6974);
  MEMORY[0x245D0A530](v35, v21);

  OUTLINED_FUNCTION_3_10();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v34, v25);

  OUTLINED_FUNCTION_3_10();
  MEMORY[0x245D0A530](0xD00000000000001ALL);
  MEMORY[0x245D0A530](v33, v29);

  OUTLINED_FUNCTION_3_10();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFRemoteNotificationObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFRemoteNotificationObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFRemoteNotificationObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable__userVisibleLabel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFRemoteNotificationObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFRemoteNotificationObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v9 = OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable__userVisibleDescription;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v9] = specialized SafePublished.init(observedValuekeypath:)();
  v10 = OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable__identifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)();
  v11 = OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable__notificationUserActions;
  swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFRemoteNotificationObservableCSo26CAFNotificationUserActionsCGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFRemoteNotificationObservableCSo26CAFNotificationUserActionsCGMR);
  OUTLINED_FUNCTION_225(v12);
  OUTLINED_FUNCTION_0_7();
  *&v2[v11] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v13 = OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable__userAction;
  swift_getKeyPath();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFRemoteNotificationObservableCs5UInt8VGMd, _s10CAFCombine13SafePublishedCyAA31CAFRemoteNotificationObservableCs5UInt8VGMR);
  OUTLINED_FUNCTION_225(v14);
  v15 = OUTLINED_FUNCTION_0_7();
  *&v2[v13] = specialized SafePublished.init(observedValuekeypath:)(v15);
  v16 = OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable__symbolNameAndColor;
  swift_getKeyPath();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFRemoteNotificationObservableCSo23CAFSymbolImageWithColorCSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFRemoteNotificationObservableCSo23CAFSymbolImageWithColorCSgGMR);
  OUTLINED_FUNCTION_225(v17);
  OUTLINED_FUNCTION_0_7();
  *&v2[v16] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v18 = OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable__displayPanelIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v18] = specialized SafePublished.init(observedValuekeypath:)();
  v19 = OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable__displayZoneIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v19] = specialized SafePublished.init(observedValuekeypath:)();
  v20 = OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v20] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable_observed] = a1;
  v24.receiver = v2;
  v24.super_class = type metadata accessor for CAFRemoteNotificationObservable();
  v21 = a1;
  v22 = objc_msgSendSuper2(&v24, sel_init);
  [v21 registerObserver_];

  return v22;
}

uint64_t CAFRemoteNotificationObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFRemoteNotificationObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFRemoteNotificationObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFRemoteNotificationObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFRemoteNotificationObservable@<X0>(void *a1@<X8>)
{
  result = CAFRemoteNotificationObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFRemoteNotificationObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFRemoteNotificationObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

double @objc CAFRemoteNotificationObservable.remoteNotificationService(_:didUpdateUserVisibleLabel:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFRemoteNotificationObservable.remoteNotificationService(_:didUpdateNotificationUserActions:)(uint64_t a1, void *a2)
{

  v3 = a2;
  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFRemoteNotificationObservable.remoteNotificationService(_:didUpdateUserAction:)(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_234(v2 + OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable__userAction, v5);

  specialized SafePublished.value.setter(a2);
}

uint64_t CAFRemoteNotificationObservable.remoteNotificationService(_:didUpdateSymbolNameAndColor:)(uint64_t a1, void *a2)
{
  v3 = a2;

  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFRemoteNotificationObservable.remoteNotificationService(_:didUpdateUserVisibleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  specialized SafeReadOnlyPublished.value.setter(a2, a3);
}

uint64_t CAFRemoteNotificationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFRemoteNotificationObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFRemoteNotificationObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFRemoteNotification()
{
  result = lazy cache variable for type metadata for CAFRemoteNotification;
  if (!lazy cache variable for type metadata for CAFRemoteNotification)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFRemoteNotification);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFRemoteNotificationObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFRemoteNotificationObservable and conformance CAFRemoteNotificationObservable(&lazy protocol witness table cache variable for type CAFRemoteNotificationObservable and conformance CAFRemoteNotificationObservable, a2, type metadata accessor for CAFRemoteNotificationObservable, &protocol conformance descriptor for CAFRemoteNotificationObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFRemoteNotificationObservable and conformance CAFRemoteNotificationObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFRemoteNotificationObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine31CAFRemoteNotificationObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t key path getter for CAFSingleSelectRemoteNotificationObservable.trailingButtonState : CAFSingleSelectRemoteNotificationObservable@<X0>(_BYTE *a1@<X8>)
{
  result = CAFSingleSelectRemoteNotificationObservable.trailingButtonState.getter();
  *a1 = result;
  return result;
}

void (*CAFSingleSelectRemoteNotificationObservable.trailingButtonState.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v4 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v4;
  v4[8] = v1;
  v4[9] = swift_getKeyPath();
  v4[10] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable__trailingButtonState, (v4 + 4));
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable_observed);

  v5 = v2;
  OUTLINED_FUNCTION_2_5();
  v6 = OUTLINED_FUNCTION_4_6();
  v7(v6);

  *(v4 + 88) = v1;
  return CAFSingleSelectRemoteNotificationObservable.trailingButtonState.modify;
}

uint64_t CAFSingleSelectRemoteNotificationObservable.symbolNameAndColor.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t key path getter for CAFSingleSelectRemoteNotificationObservable.selectedEntryIndex : CAFSingleSelectRemoteNotificationObservable@<X0>(_BYTE *a1@<X8>)
{
  result = CAFSingleSelectRemoteNotificationObservable.selectedEntryIndex.getter();
  *a1 = result;
  return result;
}

uint64_t CAFSingleSelectRemoteNotificationObservable.trailingButtonState.getter(uint64_t *a1)
{
  OUTLINED_FUNCTION_234(v1 + *a1, v9);
  v8 = *(v1 + OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable_observed);

  v2 = v8;
  v3 = swift_readAtKeyPath();
  v5 = *v4;
  v3(&v7, 0);

  return v5;
}

uint64_t CAFSingleSelectRemoteNotificationObservable.trailingButtonState.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, id, uint64_t, uint64_t))
{
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  v8 = v4;

  return a4(a1, v8, KeyPath, v7);
}

void (*CAFSingleSelectRemoteNotificationObservable.selectedEntryIndex.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v4 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v4;
  v4[8] = v1;
  v4[9] = swift_getKeyPath();
  v4[10] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable__selectedEntryIndex, (v4 + 4));
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable_observed);

  v5 = v2;
  OUTLINED_FUNCTION_2_5();
  v6 = OUTLINED_FUNCTION_4_6();
  v7(v6);

  *(v4 + 88) = v1;
  return CAFSingleSelectRemoteNotificationObservable.selectedEntryIndex.modify;
}

void CAFSingleSelectRemoteNotificationObservable.trailingButtonState.modify(uint64_t a1, uint64_t a2, void (*a3)(void, id, void, void))
{
  v3 = *a1;
  a3(*(*a1 + 88), *(*a1 + 64), *(*a1 + 72), *(*a1 + 80));

  free(v3);
}

uint64_t CAFSingleSelectRemoteNotificationObservable.$trailingButtonState.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_234(v2 + *a1, v7);

  v5 = a2(v4);

  return v5;
}

uint64_t CAFSingleSelectRemoteNotificationObservable.userVisibleLabel.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFSingleSelectRemoteNotificationObservable.$userVisibleLabel.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t CAFSingleSelectRemoteNotificationObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable_observed);
  [v3 registeredForUserVisibleLabel];
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    v5 = CAFSingleSelectRemoteNotificationObservable.userVisibleLabel.getter();
  }

  v52 = v5;
  v53 = v4;
  [v3 registeredForUserVisibleDescription];
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    v8 = CAFSingleSelectRemoteNotificationObservable.userVisibleDescription.getter();
  }

  v50 = v8;
  v51 = v7;
  [v3 registeredForIdentifier];
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    v11 = CAFSingleSelectRemoteNotificationObservable.identifier.getter();
  }

  v48 = v11;
  v49 = v10;
  v13 = 0x73696765726E753CLL;
  v14 = 0xEE003E6465726574;
  if ([v3 registeredForSymbolNameAndColor])
  {
    v15 = CAFSingleSelectRemoteNotificationObservable.symbolNameAndColor.getter();
    v16 = [v15 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v17;
  }

  v46 = v13;
  [v3 registeredForDisplayPanelIdentifier];
  OUTLINED_FUNCTION_9_2();
  if (v20)
  {
    v19 = CAFSingleSelectRemoteNotificationObservable.displayPanelIdentifier.getter();
  }

  v44 = v19;
  v45 = v18;
  v47 = v14;
  v21 = [v3 registeredForDisplayZoneIdentifier];
  v22 = 0x73696765726E753CLL;
  v23 = 0xEE003E6465726574;
  if (v21)
  {
    v22 = CAFSingleSelectRemoteNotificationObservable.displayZoneIdentifier.getter();
    v23 = v24;
  }

  v43 = v22;
  v25 = 0x73696765726E753CLL;
  v26 = 0xEE003E6465726574;
  if ([v3 registeredForTrailingButton])
  {
    v27 = CAFSingleSelectRemoteNotificationObservable.trailingButton.getter();
    v28 = [v27 description];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v29;
  }

  v42 = v25;
  v30 = 0x73696765726E753CLL;
  v31 = 0xEE003E6465726574;
  if ([v3 registeredForTrailingButtonState])
  {
    CAFSingleSelectRemoteNotificationObservable.trailingButtonState.getter();
    v32 = NSStringFromButtonAction();
    if (v32)
    {
      v33 = v32;
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v34;
    }

    else
    {
      v31 = 0xE900000000000029;
      v30 = 0x6E776F6E6B6E7528;
    }
  }

  v41 = v30;
  v54 = 0x73696765726E753CLL;
  v35 = 0xEE003E6465726574;
  if ([v3 registeredForSelectableNotificationEntries])
  {
    v36 = CAFSingleSelectRemoteNotificationObservable.selectableNotificationEntries.getter();
    v37 = [v36 description];
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v38;
  }

  if ([v3 registeredForSelectedEntryIndex])
  {
    CAFSingleSelectRemoteNotificationObservable.selectedEntryIndex.getter();
    v2 = dispatch thunk of CustomStringConvertible.description.getter();
    v1 = v39;
  }

  _StringGuts.grow(_:)(301);
  MEMORY[0x245D0A530](0xD00000000000002ELL, 0x800000024230C8F0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000015, 0x800000024230BD90);
  MEMORY[0x245D0A530](v52, v53);

  MEMORY[0x245D0A530](0xD00000000000001ALL, 0x800000024230BDB0);
  MEMORY[0x245D0A530](v50, v51);

  MEMORY[0x245D0A530](0x69746E656469202CLL, 0xEE00203A72656966);
  MEMORY[0x245D0A530](v48, v49);

  OUTLINED_FUNCTION_9_3();
  MEMORY[0x245D0A530](v46, v47);

  MEMORY[0x245D0A530](0xD00000000000001ALL, 0x800000024230BFF0);
  MEMORY[0x245D0A530](v44, v45);

  MEMORY[0x245D0A530](0xD000000000000019, 0x800000024230C010);
  MEMORY[0x245D0A530](v43, v23);

  MEMORY[0x245D0A530](0xD000000000000012, 0x800000024230C030);
  MEMORY[0x245D0A530](v42, v26);

  MEMORY[0x245D0A530](0xD000000000000017, 0x800000024230C050);
  MEMORY[0x245D0A530](v41, v31);

  MEMORY[0x245D0A530](0xD000000000000021, 0x800000024230C6C0);
  MEMORY[0x245D0A530](v54, v35);

  OUTLINED_FUNCTION_9_3();
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFSingleSelectRemoteNotificationObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFSingleSelectRemoteNotificationObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFSingleSelectRemoteNotificationObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable__userVisibleLabel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA43CAFSingleSelectRemoteNotificationObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA43CAFSingleSelectRemoteNotificationObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v9 = OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable__userVisibleDescription;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v9] = specialized SafePublished.init(observedValuekeypath:)();
  v10 = OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable__identifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)();
  v11 = OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable__symbolNameAndColor;
  swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA43CAFSingleSelectRemoteNotificationObservableCSo23CAFSymbolImageWithColorCGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA43CAFSingleSelectRemoteNotificationObservableCSo23CAFSymbolImageWithColorCGMR);
  OUTLINED_FUNCTION_225(v12);
  OUTLINED_FUNCTION_0_7();
  *&v2[v11] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v13 = OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable__displayPanelIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v13] = specialized SafePublished.init(observedValuekeypath:)();
  v14 = OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable__displayZoneIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v14] = specialized SafePublished.init(observedValuekeypath:)();
  v15 = OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable__trailingButton;
  swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA43CAFSingleSelectRemoteNotificationObservableCSo17CAFTrailingButtonCGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA43CAFSingleSelectRemoteNotificationObservableCSo17CAFTrailingButtonCGMR);
  OUTLINED_FUNCTION_225(v16);
  OUTLINED_FUNCTION_0_7();
  *&v2[v15] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v17 = OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable__trailingButtonState;
  swift_getKeyPath();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA43CAFSingleSelectRemoteNotificationObservableCSo15CAFButtonActionVGMd, _s10CAFCombine13SafePublishedCyAA43CAFSingleSelectRemoteNotificationObservableCSo15CAFButtonActionVGMR);
  OUTLINED_FUNCTION_225(v18);
  v19 = OUTLINED_FUNCTION_0_7();
  *&v2[v17] = specialized SafePublished.init(observedValuekeypath:)(v19);
  v20 = OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable__selectableNotificationEntries;
  swift_getKeyPath();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA43CAFSingleSelectRemoteNotificationObservableCSo013CAFSelectableI9EntryListCGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA43CAFSingleSelectRemoteNotificationObservableCSo013CAFSelectableI9EntryListCGMR);
  OUTLINED_FUNCTION_225(v21);
  OUTLINED_FUNCTION_0_7();
  *&v2[v20] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v22 = OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable__selectedEntryIndex;
  swift_getKeyPath();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA43CAFSingleSelectRemoteNotificationObservableCs5UInt8VGMd, &_s10CAFCombine13SafePublishedCyAA43CAFSingleSelectRemoteNotificationObservableCs5UInt8VGMR);
  OUTLINED_FUNCTION_225(v23);
  v24 = OUTLINED_FUNCTION_0_7();
  *&v2[v22] = specialized SafePublished.init(observedValuekeypath:)(v24);
  v25 = OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v25] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable_observed] = a1;
  v29.receiver = v2;
  v29.super_class = type metadata accessor for CAFSingleSelectRemoteNotificationObservable();
  v26 = a1;
  v27 = objc_msgSendSuper2(&v29, sel_init);
  [v26 registerObserver_];

  return v27;
}

uint64_t CAFSingleSelectRemoteNotificationObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFSingleSelectRemoteNotificationObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFSingleSelectRemoteNotificationObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFSingleSelectRemoteNotificationObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFSingleSelectRemoteNotificationObservable@<X0>(void *a1@<X8>)
{
  result = CAFSingleSelectRemoteNotificationObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFSingleSelectRemoteNotificationObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFSingleSelectRemoteNotificationObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

double @objc CAFSingleSelectRemoteNotificationObservable.singleSelectRemoteNotificationService(_:didUpdateUserVisibleLabel:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFSingleSelectRemoteNotificationObservable.singleSelectRemoteNotificationService(_:didUpdateSymbolNameAndColor:)(uint64_t a1, void *a2, void *a3, void (*a4)(void *))
{

  v6 = a2;
  a4(a2);
}

uint64_t CAFSingleSelectRemoteNotificationObservable.singleSelectRemoteNotificationService(_:didUpdateTrailingButtonState:)(uint64_t a1, unsigned __int8 a2, uint64_t *a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_234(v4 + *a3, v8);

  a4(a2);
}

uint64_t CAFSingleSelectRemoteNotificationObservable.singleSelectRemoteNotificationService(_:didUpdateUserVisibleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  specialized SafeReadOnlyPublished.value.setter(a2, a3);
}

uint64_t CAFSingleSelectRemoteNotificationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFSingleSelectRemoteNotificationObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFSingleSelectRemoteNotificationObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFSingleSelectRemoteNotification()
{
  result = lazy cache variable for type metadata for CAFSingleSelectRemoteNotification;
  if (!lazy cache variable for type metadata for CAFSingleSelectRemoteNotification)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFSingleSelectRemoteNotification);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFSingleSelectRemoteNotificationObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFSingleSelectRemoteNotificationObservable and conformance CAFSingleSelectRemoteNotificationObservable(&lazy protocol witness table cache variable for type CAFSingleSelectRemoteNotificationObservable and conformance CAFSingleSelectRemoteNotificationObservable, a2, type metadata accessor for CAFSingleSelectRemoteNotificationObservable, &protocol conformance descriptor for CAFSingleSelectRemoteNotificationObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFSingleSelectRemoteNotificationObservable and conformance CAFSingleSelectRemoteNotificationObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFSingleSelectRemoteNotificationObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine43CAFSingleSelectRemoteNotificationObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

void OUTLINED_FUNCTION_9_3()
{

  JUMPOUT(0x245D0A530);
}

uint64_t CAFOverlayViewObservable.on.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

float CAFOverlayViewObservable.originX.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFOverlayViewObservable.displayPanelIdentifier.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFOverlayViewObservable.$displayPanelIdentifier.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t CAFOverlayViewObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable_observed);
  v4 = [v3 registeredForDisplayPanelIdentifier];
  v5 = 0x73696765726E753CLL;
  v6 = 0xEE003E6465726574;
  if (v4)
  {
    v5 = CAFOverlayViewObservable.displayPanelIdentifier.getter();
  }

  v34 = v5;
  v35 = v6;
  v7 = [v3 registeredForIdentifier];
  v8 = 0x73696765726E753CLL;
  v9 = 0xEE003E6465726574;
  if (v7)
  {
    v8 = CAFOverlayViewObservable.identifier.getter();
    v9 = v10;
  }

  v33 = v8;
  v11 = [v3 registeredForOn];
  v12 = 0x73696765726E753CLL;
  v13 = 0xEE003E6465726574;
  if (v11)
  {
    v14 = CAFOverlayViewObservable.on.getter();
    if (v14)
    {
      v12 = 1702195828;
    }

    else
    {
      v12 = 0x65736C6166;
    }

    if (v14)
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE500000000000000;
    }
  }

  v32 = v12;
  v15 = [v3 registeredForOriginX];
  v16 = 0x73696765726E753CLL;
  v17 = 0xEE003E6465726574;
  if (v15)
  {
    CAFOverlayViewObservable.originX.getter();
    v16 = Float.description.getter();
    v17 = v18;
  }

  v31 = v16;
  v19 = [v3 registeredForOriginY];
  v20 = 0x73696765726E753CLL;
  v21 = 0xEE003E6465726574;
  if (v19)
  {
    CAFOverlayViewObservable.originY.getter();
    v20 = Float.description.getter();
    v21 = v22;
  }

  v30 = v20;
  v23 = [v3 registeredForWidth];
  v24 = 0x73696765726E753CLL;
  v25 = 0xEE003E6465726574;
  if (v23)
  {
    CAFOverlayViewObservable.width.getter();
    v24 = Float.description.getter();
    v25 = v26;
  }

  if ([v3 registeredForHeight])
  {
    CAFOverlayViewObservable.height.getter();
    v2 = Float.description.getter();
    v1 = v27;
  }

  _StringGuts.grow(_:)(134);
  OUTLINED_FUNCTION_5_10();
  _print_unlocked<A, B>(_:_:)();
  OUTLINED_FUNCTION_5_10();
  MEMORY[0x245D0A530](v34, v35);

  MEMORY[0x245D0A530](0x69746E656469202CLL, 0xEE00203A72656966);
  MEMORY[0x245D0A530](v33, v9);

  MEMORY[0x245D0A530](0x203A6E6F202CLL, 0xE600000000000000);
  MEMORY[0x245D0A530](v32, v13);

  MEMORY[0x245D0A530](0x6E696769726F202CLL, 0xEB00000000203A58);
  MEMORY[0x245D0A530](v31, v17);

  MEMORY[0x245D0A530](0x6E696769726F202CLL, 0xEB00000000203A59);
  MEMORY[0x245D0A530](v30, v21);

  MEMORY[0x245D0A530](0x3A6874646977202CLL, 0xE900000000000020);
  MEMORY[0x245D0A530](v29, v25);

  MEMORY[0x245D0A530](0x746867696568202CLL, 0xEA0000000000203ALL);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFOverlayViewObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFOverlayViewObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFOverlayViewObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable__displayPanelIdentifier;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFOverlayViewObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFOverlayViewObservableCSSGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v8 = OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable__identifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v8] = specialized SafePublished.init(observedValuekeypath:)();
  v9 = OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable__on;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFOverlayViewObservableCSbGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFOverlayViewObservableCSbGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v9] = specialized SafePublished.init(observedValuekeypath:)();
  v10 = OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable__originX;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFOverlayViewObservableCSfGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFOverlayViewObservableCSfGMR);
  swift_allocObject();
  v11 = OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v11);
  v12 = OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable__originY;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  v13 = OUTLINED_FUNCTION_0_7();
  *&v2[v12] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v13);
  v14 = OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable__width;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  v15 = OUTLINED_FUNCTION_0_7();
  *&v2[v14] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v15);
  v16 = OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable__height;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  v17 = OUTLINED_FUNCTION_0_7();
  *&v2[v16] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v17);
  v18 = OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v18] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable_observed] = a1;
  v22.receiver = v2;
  v22.super_class = type metadata accessor for CAFOverlayViewObservable();
  v19 = a1;
  v20 = objc_msgSendSuper2(&v22, sel_init);
  [v19 registerObserver_];

  return v20;
}

uint64_t CAFOverlayViewObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFOverlayViewObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFOverlayViewObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFOverlayViewObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFOverlayViewObservable@<X0>(void *a1@<X8>)
{
  result = CAFOverlayViewObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFOverlayViewObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFOverlayViewObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

double @objc CAFOverlayViewObservable.overlayViewService(_:didUpdateDisplayPanelIdentifier:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFOverlayViewObservable.overlayViewService(_:didUpdateOn:)(uint64_t a1, char a2)
{

  specialized SafeReadOnlyPublished.value.setter(a2 & 1);
}

uint64_t CAFOverlayViewObservable.overlayViewService(_:didUpdateOriginX:)(float a1, uint64_t a2, void *a3)
{
  v3 = LODWORD(a1);

  specialized SafeReadOnlyPublished.value.setter(v3);
}

uint64_t CAFOverlayViewObservable.overlayViewService(_:didUpdateDisplayPanelIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  specialized SafeReadOnlyPublished.value.setter(a2, a3);
}

uint64_t CAFOverlayViewObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFOverlayViewObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFOverlayViewObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFOverlayView()
{
  result = lazy cache variable for type metadata for CAFOverlayView;
  if (!lazy cache variable for type metadata for CAFOverlayView)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFOverlayView);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFOverlayViewObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFOverlayViewObservable and conformance CAFOverlayViewObservable(&lazy protocol witness table cache variable for type CAFOverlayViewObservable and conformance CAFOverlayViewObservable, a2, type metadata accessor for CAFOverlayViewObservable, &protocol conformance descriptor for CAFOverlayViewObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFOverlayViewObservable and conformance CAFOverlayViewObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFOverlayViewObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine24CAFOverlayViewObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

void OUTLINED_FUNCTION_5_10()
{

  JUMPOUT(0x245D0A530);
}

uint64_t key path getter for CAFRequestContentObservable.on : CAFRequestContentObservable@<X0>(_BYTE *a1@<X8>)
{
  result = CAFRequestContentObservable.on.getter();
  *a1 = result & 1;
  return result;
}

uint64_t CAFRequestContentObservable.on.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable__on, v8);
  v7 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable_observed);

  v1 = v7;
  v2 = swift_readAtKeyPath();
  v4 = *v3;
  v2(&v6, 0);

  return v4;
}

uint64_t CAFRequestContentObservable.on.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = v10;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA27CAFRequestContentObservableC_SbTt3g5(a1, v14, KeyPath, v13, v15, v16, v17, v18, a9, a10);
}

void (*CAFRequestContentObservable.on.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable__on, (v3 + 4));
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable_observed);
  v3[7] = v4;

  v5 = v4;
  v6 = swift_readAtKeyPath();
  v8 = *v7;
  v6(v3, 0);

  *(v3 + 88) = v8;
  return CAFRequestContentObservable.on.modify;
}

void CAFRequestContentObservable.on.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 72);
  v2 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 64);
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA27CAFRequestContentObservableC_SbTt3g5(v4, v5, v3, v2, v6, v7, v8, v9, v10, v11);

  free(v1);
}

uint64_t CAFRequestContentObservable.$on.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable__on, v4);

  specialized SafePublished.projectedValue.getter();
  v2 = v1;

  return v2;
}

uint64_t CAFRequestContentObservable.userDismissible.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFRequestContentObservable.contentURL.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFRequestContentObservable.$contentURL.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t CAFRequestContentObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable_observed);
  v4 = [v3 registeredForOn];
  v5 = 0x73696765726E753CLL;
  v6 = 0xEE003E6465726574;
  if (v4)
  {
    v7 = CAFRequestContentObservable.on.getter();
    if (v7)
    {
      v5 = 1702195828;
    }

    else
    {
      v5 = 0x65736C6166;
    }

    if (v7)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  v23 = v5;
  v8 = [v3 registeredForContentURL];
  v9 = 0x73696765726E753CLL;
  v10 = 0xEE003E6465726574;
  if (v8)
  {
    v9 = CAFRequestContentObservable.contentURL.getter();
    v10 = v11;
  }

  v22 = v9;
  v12 = [v3 registeredForUserDismissible];
  v13 = 0x73696765726E753CLL;
  v14 = 0xEE003E6465726574;
  if (v12)
  {
    v15 = CAFRequestContentObservable.userDismissible.getter();
    if (v15)
    {
      v13 = 1702195828;
    }

    else
    {
      v13 = 0x65736C6166;
    }

    if (v15)
    {
      v14 = 0xE400000000000000;
    }

    else
    {
      v14 = 0xE500000000000000;
    }
  }

  v16 = 0x73696765726E753CLL;
  v17 = 0xEE003E6465726574;
  if ([v3 registeredForDisplayPanelIdentifier])
  {
    v16 = CAFRequestContentObservable.displayPanelIdentifier.getter();
    v17 = v18;
  }

  if ([v3 registeredForDisplayZoneIdentifier])
  {
    v2 = CAFRequestContentObservable.displayZoneIdentifier.getter();
    v1 = v19;
  }

  _StringGuts.grow(_:)(136);
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x203A6E6F207B20, 0xE700000000000000);
  MEMORY[0x245D0A530](v23, v6);

  MEMORY[0x245D0A530](0x6E65746E6F63202CLL, 0xEE00203A4C525574);
  MEMORY[0x245D0A530](v22, v10);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530](0xD000000000000013);
  MEMORY[0x245D0A530](v21, v14);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v16, v17);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFRequestContentObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFRequestContentObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFRequestContentObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable__on;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA27CAFRequestContentObservableCSbGMd, _s10CAFCombine13SafePublishedCyAA27CAFRequestContentObservableCSbGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v8 = OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable__contentURL;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFRequestContentObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFRequestContentObservableCSSGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v8] = specialized SafePublished.init(observedValuekeypath:)();
  v9 = OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable__userDismissible;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFRequestContentObservableCSbGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFRequestContentObservableCSbGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v9] = specialized SafePublished.init(observedValuekeypath:)();
  v10 = OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable__displayPanelIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)();
  v11 = OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable__displayZoneIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v11] = specialized SafePublished.init(observedValuekeypath:)();
  v12 = OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v12] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable_observed] = a1;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for CAFRequestContentObservable();
  v13 = a1;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  [v13 registerObserver_];

  return v14;
}

uint64_t CAFRequestContentObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFRequestContentObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFRequestContentObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFRequestContentObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFRequestContentObservable@<X0>(void *a1@<X8>)
{
  result = CAFRequestContentObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFRequestContentObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFRequestContentObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFRequestContentObservable.requestContentService(_:didUpdateOn:)(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_234(v2 + OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable__on, v5);

  specialized SafePublished.value.setter(a2 & 1);
}

uint64_t CAFRequestContentObservable.requestContentService(_:didUpdateUserDismissible:)(uint64_t a1, char a2)
{

  specialized SafeReadOnlyPublished.value.setter(a2 & 1);
}

double @objc CAFRequestContentObservable.requestContentService(_:didUpdateContentURL:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFRequestContentObservable.requestContentService(_:didUpdateContentURL:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  specialized SafeReadOnlyPublished.value.setter(a2, a3);
}

uint64_t CAFRequestContentObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFRequestContentObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFRequestContentObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFRequestContent()
{
  result = lazy cache variable for type metadata for CAFRequestContent;
  if (!lazy cache variable for type metadata for CAFRequestContent)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFRequestContent);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFRequestContentObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFRequestContentObservable and conformance CAFRequestContentObservable(&lazy protocol witness table cache variable for type CAFRequestContentObservable and conformance CAFRequestContentObservable, a2, type metadata accessor for CAFRequestContentObservable, &protocol conformance descriptor for CAFRequestContentObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFRequestContentObservable and conformance CAFRequestContentObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFRequestContentObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine27CAFRequestContentObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t key path getter for CAFRequestTemporaryContentObservable.on : CAFRequestTemporaryContentObservable@<X0>(_BYTE *a1@<X8>)
{
  result = CAFRequestTemporaryContentObservable.on.getter();
  *a1 = result & 1;
  return result;
}

uint64_t CAFRequestTemporaryContentObservable.on.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable__on, v8);
  v7 = *(v0 + OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable_observed);

  v1 = v7;
  v2 = swift_readAtKeyPath();
  v4 = *v3;
  v2(&v6, 0);

  return v4;
}

uint64_t CAFRequestTemporaryContentObservable.on.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = v10;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA36CAFRequestTemporaryContentObservableC_SbTt3g5(a1, v14, KeyPath, v13, v15, v16, v17, v18, a9, a10);
}

void (*CAFRequestTemporaryContentObservable.on.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable__on, (v3 + 4));
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable_observed);
  v3[7] = v4;

  v5 = v4;
  v6 = OUTLINED_FUNCTION_2_5();
  v8 = *v7;
  v6(v3, 0);

  *(v3 + 88) = v8;
  return CAFRequestTemporaryContentObservable.on.modify;
}

void CAFRequestTemporaryContentObservable.on.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 72);
  v2 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 64);
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA36CAFRequestTemporaryContentObservableC_SbTt3g5(v4, v5, v3, v2, v6, v7, v8, v9, v10, v11);

  free(v1);
}

uint64_t key path getter for CAFRequestTemporaryContentObservable.temporaryContentURL : CAFRequestTemporaryContentObservable@<X0>(uint64_t *a1@<X8>)
{
  result = CAFRequestTemporaryContentObservable.temporaryContentURL.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t key path setter for CAFRequestTemporaryContentObservable.temporaryContentURL : CAFRequestTemporaryContentObservable(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return CAFRequestTemporaryContentObservable.temporaryContentURL.setter(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
}

uint64_t CAFRequestTemporaryContentObservable.temporaryContentURL.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable__temporaryContentURL, v8);
  v7 = *(v0 + OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable_observed);
  swift_retain_n();

  v1 = v7;
  v2 = swift_readAtKeyPath();
  v4 = *v3;

  v2(&v6, 0);

  return v4;
}

uint64_t CAFRequestTemporaryContentObservable.temporaryContentURL.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  KeyPath = swift_getKeyPath();
  v12 = swift_getKeyPath();
  v13 = v10;
  v14 = OUTLINED_FUNCTION_197();

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA36CAFRequestTemporaryContentObservableC_SSTt3g5(v14, v15, v16, KeyPath, v12, v17, v18, v19, a9, a10);
}

void (*CAFRequestTemporaryContentObservable.temporaryContentURL.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x68uLL);
  *a1 = v3;
  v3[10] = v1;
  v3[11] = swift_getKeyPath();
  v3[12] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable__temporaryContentURL, (v3 + 4));
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable_observed);
  v3[9] = v4;
  swift_retain_n();

  v5 = v4;
  v6 = OUTLINED_FUNCTION_2_5();
  v9 = *v7;
  v8 = v7[1];

  v6(v3, 0);

  v3[7] = v9;
  v3[8] = v8;
  return CAFRequestTemporaryContentObservable.temporaryContentURL.modify;
}

void CAFRequestTemporaryContentObservable.temporaryContentURL.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 80);
  if (a2)
  {

    OUTLINED_FUNCTION_3_12(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    OUTLINED_FUNCTION_3_12(v4, v5, v6, v7, v8, v9, v10, v11, v20, v21);
  }

  free(v3);
}

uint64_t CAFRequestTemporaryContentObservable.$on.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_234(v2 + *a1, v7);

  v5 = a2(v4);

  return v5;
}

uint64_t CAFRequestTemporaryContentObservable.displayPanelIdentifier.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFRequestTemporaryContentObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable_observed);
  v2 = [v1 registeredForOn];
  v3 = 0x73696765726E753CLL;
  v4 = 0xEE003E6465726574;
  if (v2)
  {
    v5 = CAFRequestTemporaryContentObservable.on.getter();
    if (v5)
    {
      v3 = 1702195828;
    }

    else
    {
      v3 = 0x65736C6166;
    }

    if (v5)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  v6 = 0x73696765726E753CLL;
  v7 = 0xEE003E6465726574;
  if ([v1 registeredForTemporaryContentURL])
  {
    v6 = CAFRequestTemporaryContentObservable.temporaryContentURL.getter();
    v7 = v8;
  }

  v9 = 0x73696765726E753CLL;
  v10 = 0xEE003E6465726574;
  if ([v1 registeredForDisplayPanelIdentifier])
  {
    v9 = CAFRequestTemporaryContentObservable.displayPanelIdentifier.getter();
    v10 = v11;
  }

  if ([v1 registeredForDisplayZoneIdentifier])
  {
    CAFRequestTemporaryContentObservable.displayZoneIdentifier.getter();
  }

  _StringGuts.grow(_:)(133);
  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x203A6E6F207B20, 0xE700000000000000);
  MEMORY[0x245D0A530](v14, v4);

  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530](0xD000000000000017);
  MEMORY[0x245D0A530](v6, v7);

  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v9, v10);

  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  v12 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v12);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFRequestTemporaryContentObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable_cachedDescription + 8))
  {
    v4 = *(v0 + v1);
  }

  else
  {
    *v3 = CAFRequestTemporaryContentObservable._description.getter();
    v3[1] = v5;

    v4 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v4 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFRequestTemporaryContentObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable__on;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA36CAFRequestTemporaryContentObservableCSbGMd, _s10CAFCombine13SafePublishedCyAA36CAFRequestTemporaryContentObservableCSbGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v8 = OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable__temporaryContentURL;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA36CAFRequestTemporaryContentObservableCSSGMd, _s10CAFCombine13SafePublishedCyAA36CAFRequestTemporaryContentObservableCSSGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v8] = specialized SafePublished.init(observedValuekeypath:)();
  v9 = OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable__displayPanelIdentifier;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA36CAFRequestTemporaryContentObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA36CAFRequestTemporaryContentObservableCSSGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v9] = specialized SafePublished.init(observedValuekeypath:)();
  v10 = OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable__displayZoneIdentifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)();
  v11 = OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v11] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable_observed] = a1;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for CAFRequestTemporaryContentObservable();
  v12 = a1;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  [v12 registerObserver_];

  return v13;
}

uint64_t CAFRequestTemporaryContentObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFRequestTemporaryContentObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFRequestTemporaryContentObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFRequestTemporaryContentObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFRequestTemporaryContentObservable@<X0>(void *a1@<X8>)
{
  result = CAFRequestTemporaryContentObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFRequestTemporaryContentObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFRequestTemporaryContentObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFRequestTemporaryContentObservable.requestTemporaryContentService(_:didUpdateOn:)(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_234(v2 + OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable__on, v5);

  specialized SafePublished.value.setter(a2 & 1);
}

uint64_t CAFRequestTemporaryContentObservable.requestTemporaryContentService(_:didUpdateTemporaryContentURL:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_234(v3 + OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable__temporaryContentURL, v7);

  v4 = OUTLINED_FUNCTION_197();
  specialized SafePublished.value.setter(v4, v5);
}

double @objc CAFRequestTemporaryContentObservable.requestTemporaryContentService(_:didUpdateTemporaryContentURL:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFRequestTemporaryContentObservable.requestTemporaryContentService(_:didUpdateDisplayPanelIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  v4 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v4, v5);
}

uint64_t CAFRequestTemporaryContentObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFRequestTemporaryContentObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFRequestTemporaryContentObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path setter for CAFRequestTemporaryContent.temporaryContentURL : CAFRequestTemporaryContent(void *a1, void **a2)
{
  v2 = *a2;
  v3 = MEMORY[0x245D0A4C0](*a1, a1[1]);
  [v2 setTemporaryContentURL_];
}

unint64_t type metadata accessor for CAFRequestTemporaryContent()
{
  result = lazy cache variable for type metadata for CAFRequestTemporaryContent;
  if (!lazy cache variable for type metadata for CAFRequestTemporaryContent)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFRequestTemporaryContent);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFRequestTemporaryContentObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFRequestTemporaryContentObservable and conformance CAFRequestTemporaryContentObservable(&lazy protocol witness table cache variable for type CAFRequestTemporaryContentObservable and conformance CAFRequestTemporaryContentObservable, a2, type metadata accessor for CAFRequestTemporaryContentObservable, &protocol conformance descriptor for CAFRequestTemporaryContentObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFRequestTemporaryContentObservable and conformance CAFRequestTemporaryContentObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFRequestTemporaryContentObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine36CAFRequestTemporaryContentObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t OUTLINED_FUNCTION_3_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA36CAFRequestTemporaryContentObservableC_SSTt3g5(v10, v11, v13, v14, v12, a6, a7, a8, a9, a10);
}

uint64_t CAFBooleanSetting.sortOrderBridged.getter()
{
  v1 = [v0 hasSortOrder];
  v2 = v1;
  if (v1)
  {
    v1 = [v0 sortOrder];
  }

  return v1 | ((v2 ^ 1) << 8);
}

uint64_t CAFBooleanSettingObservable.sectionIdentifier.getter()
{
  return CAFBooleanSettingObservable.sectionIdentifier.getter();
}

{
  OUTLINED_FUNCTION_4_9();
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable_observed);

  OUTLINED_FUNCTION_232(v2);

  return v3;
}

uint64_t CAFBooleanSettingObservable.sortOrder.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4 | (v5 << 8);
}

uint64_t CAFBooleanSettingObservable.category.getter()
{
  OUTLINED_FUNCTION_7_4();

  v1 = v0;
  OUTLINED_FUNCTION_231(v1, v2, v3, v4, v5, v6, v7, v8, v10);

  return v11;
}

uint64_t CAFBooleanSettingObservable.disabled.getter()
{
  return CAFBooleanSettingObservable.disabled.getter();
}

{
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_7_4();

  v1 = v0;
  OUTLINED_FUNCTION_231(v1, v2, v3, v4, v5, v6, v7, v8, v10);

  return v11;
}

uint64_t CAFBooleanSettingObservable.prominenceInfo.getter()
{
  return CAFBooleanSettingObservable.prominenceInfo.getter();
}

{
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_7_4();

  v1 = v0;
  swift_getAtKeyPath();

  return v3;
}

uint64_t key path getter for CAFBooleanSettingObservable.on : CAFBooleanSettingObservable@<X0>(_BYTE *a2@<X8>)
{
  result = CAFBooleanSettingObservable.on.getter();
  *a2 = result & 1;
  return result;
}

uint64_t CAFBooleanSettingObservable.on.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__on, v8);
  v7 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable_observed);

  v1 = v7;
  v2 = swift_readAtKeyPath();
  v4 = *v3;
  v2(&v6, 0);

  return v4;
}

uint64_t CAFBooleanSettingObservable.on.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = v10;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA27CAFBooleanSettingObservableC_SbTt3g5(a1, v14, KeyPath, v13, v15, v16, v17, v18, a9, a10);
}

void (*CAFBooleanSettingObservable.on.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__on, (v3 + 4));
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable_observed);
  v3[7] = v4;

  v5 = v4;
  v6 = swift_readAtKeyPath();
  v8 = *v7;
  v6(v3, 0);

  *(v3 + 88) = v8;
  return CAFBooleanSettingObservable.on.modify;
}

void CAFBooleanSettingObservable.on.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 72);
  v2 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 64);
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA27CAFBooleanSettingObservableC_SbTt3g5(v4, v5, v3, v2, v6, v7, v8, v9, v10, v11);

  free(v1);
}

uint64_t CAFBooleanSettingObservable.$on.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__on, v4);

  specialized SafePublished.projectedValue.getter();
  v2 = v1;

  return v2;
}

uint64_t CAFBooleanSettingObservable.$userVisibleLabel.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3();
  v4 = a2(v3);

  return v4;
}

uint64_t CAFBooleanSettingObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable_observed);
  v2 = [v1 registeredForOn];
  v3 = 0x73696765726E753CLL;
  v4 = 0xEE003E6465726574;
  if (v2)
  {
    v5 = CAFBooleanSettingObservable.on.getter();
    if (v5)
    {
      v3 = 1702195828;
    }

    else
    {
      v3 = 0x65736C6166;
    }

    if (v5)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  v6 = 0x73696765726E753CLL;
  v7 = 0xEE003E6465726574;
  if ([v1 registeredForUserVisibleDetailedDescription])
  {
    CAFBooleanSettingObservable.userVisibleDetailedDescription.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo33CAFUserVisibleDetailedDescriptionCSgMd, &_sSo33CAFUserVisibleDetailedDescriptionCSgMR);
    v6 = String.init<A>(describing:)();
    v7 = v8;
  }

  v9 = 0x73696765726E753CLL;
  v10 = 0xEE003E6465726574;
  if ([v1 registeredForUserVisibleDescription])
  {
    CAFBooleanSettingObservable.userVisibleDescription.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v9 = String.init<A>(describing:)();
    v10 = v11;
  }

  if ([v1 registeredForBooleanNotificationInfo])
  {
    CAFBooleanSettingObservable.BOOLeanNotificationInfo.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo34CAFBooleanSettingNotificationEntryCSgMd, &_sSo34CAFBooleanSettingNotificationEntryCSgMR);
    String.init<A>(describing:)();
  }

  _StringGuts.grow(_:)(137);
  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x203A6E6F207B20, 0xE700000000000000);
  MEMORY[0x245D0A530](v14, v4);

  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v6, v7);

  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530](0xD00000000000001ALL);
  MEMORY[0x245D0A530](v9, v10);

  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  v12 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v12);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFBooleanSettingObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable_cachedDescription + 8))
  {
    v4 = *(v0 + v1);
  }

  else
  {
    *v3 = CAFBooleanSettingObservable._description.getter();
    v3[1] = v5;

    v4 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v4 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFBooleanSettingObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__userVisibleLabel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFBooleanSettingObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFBooleanSettingObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v9 = OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__sectionIdentifier;
  swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFBooleanSettingObservableCSSSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFBooleanSettingObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v10);
  OUTLINED_FUNCTION_0_7();
  *&v2[v9] = specialized SafePublished.init(observedValuekeypath:)();
  v11 = OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__sortOrder;
  swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFBooleanSettingObservableCs5UInt8VSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFBooleanSettingObservableCs5UInt8VSgGMR);
  OUTLINED_FUNCTION_225(v12);
  v13 = OUTLINED_FUNCTION_0_7();
  *&v2[v11] = specialized SafePublished.init(observedValuekeypath:)(v13);
  v14 = OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__category;
  swift_getKeyPath();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFBooleanSettingObservableCSo19CAFSettingsCategoryVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFBooleanSettingObservableCSo19CAFSettingsCategoryVGMR);
  OUTLINED_FUNCTION_225(v15);
  v16 = OUTLINED_FUNCTION_0_7();
  *&v2[v14] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v16);
  v17 = OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__identifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v17] = specialized SafePublished.init(observedValuekeypath:)();
  v18 = OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__disabled;
  swift_getKeyPath();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFBooleanSettingObservableCSbSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFBooleanSettingObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v19);
  OUTLINED_FUNCTION_0_7();
  *&v2[v18] = specialized SafePublished.init(observedValuekeypath:)();
  v20 = OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__limitableUIElement;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_0_7();
  *&v2[v20] = specialized SafePublished.init(observedValuekeypath:)();
  v21 = OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__hidden;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_0_7();
  *&v2[v21] = specialized SafePublished.init(observedValuekeypath:)();
  v22 = OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__showAudioBrandLogo;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_0_7();
  *&v2[v22] = specialized SafePublished.init(observedValuekeypath:)();
  v23 = OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__vehicleLayoutKey;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v23] = specialized SafePublished.init(observedValuekeypath:)();
  v24 = OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__symbolName;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v24] = specialized SafePublished.init(observedValuekeypath:)();
  v25 = OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__prominenceInfo;
  swift_getKeyPath();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFBooleanSettingObservableCSo24CAFProminenceInformationCSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFBooleanSettingObservableCSo24CAFProminenceInformationCSgGMR);
  OUTLINED_FUNCTION_225(v26);
  OUTLINED_FUNCTION_0_7();
  *&v2[v25] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v27 = OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__on;
  swift_getKeyPath();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA27CAFBooleanSettingObservableCSbGMd, _s10CAFCombine13SafePublishedCyAA27CAFBooleanSettingObservableCSbGMR);
  OUTLINED_FUNCTION_225(v28);
  OUTLINED_FUNCTION_0_7();
  *&v2[v27] = specialized SafePublished.init(observedValuekeypath:)();
  v29 = OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__userVisibleDetailedDescription;
  swift_getKeyPath();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFBooleanSettingObservableCSo33CAFUserVisibleDetailedDescriptionCSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFBooleanSettingObservableCSo33CAFUserVisibleDetailedDescriptionCSgGMR);
  OUTLINED_FUNCTION_225(v30);
  OUTLINED_FUNCTION_0_7();
  *&v2[v29] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v31 = OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__userVisibleDescription;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v31] = specialized SafePublished.init(observedValuekeypath:)();
  v32 = OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__BOOLeanNotificationInfo;
  swift_getKeyPath();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFBooleanSettingObservableCSo0fG17NotificationEntryCSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFBooleanSettingObservableCSo0fG17NotificationEntryCSgGMR);
  OUTLINED_FUNCTION_225(v33);
  OUTLINED_FUNCTION_0_7();
  *&v2[v32] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v34 = OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v34] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable_observed] = a1;
  v38.receiver = v2;
  v38.super_class = type metadata accessor for CAFBooleanSettingObservable();
  v35 = a1;
  v36 = objc_msgSendSuper2(&v38, sel_init);
  [v35 registerObserver_];

  return v36;
}

uint64_t CAFBooleanSettingObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFBooleanSettingObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFBooleanSettingObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFBooleanSettingObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFBooleanSettingObservable@<X0>(void *a1@<X8>)
{
  result = CAFBooleanSettingObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFBooleanSettingObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFBooleanSettingObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFBooleanSettingObservable.automakerSettingService(_:didUpdateSortOrder:)(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFBooleanSettingObservable.automakerSettingService(_:didUpdateCategory:)(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2);
}

double @objc CAFBooleanSettingObservable.automakerSettingService(_:didUpdateUserVisibleLabel:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFBooleanSettingObservable.automakerSettingService(_:didUpdateDisabled:)(uint64_t a1, char a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2 & 1);
}

double @objc CAFBooleanSettingObservable.automakerSettingService(_:didUpdateSectionIdentifier:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
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

uint64_t CAFBooleanSettingObservable.BOOLeanSettingService(_:didUpdateOn:)(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_234(v2 + OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable__on, v5);

  specialized SafePublished.value.setter(a2 & 1);
}

uint64_t CAFBooleanSettingObservable.automakerSettingService(_:didUpdateSectionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  v4 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v4, v5);
}

uint64_t CAFBooleanSettingObservable.automakerSettingService(_:didUpdateProminenceInfo:)(uint64_t a1, void *a2, void *a3, void (*a4)(void *))
{
  v6 = a2;

  a4(a2);
}

uint64_t CAFBooleanSettingObservable.automakerSettingService(_:didUpdateUserVisibleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3();

  v4 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v4, v5);
}

uint64_t CAFBooleanSettingObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFBooleanSettingObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFBooleanSettingObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t key path getter for CAFBooleanSetting.sortOrderBridged : CAFBooleanSetting@<X0>(_BYTE *a1@<X8>)
{
  result = CAFBooleanSetting.sortOrderBridged.getter();
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

id key path getter for CAFAutomakerSetting.prominenceInfo : CAFBooleanSetting@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 prominenceInfo];
  *a2 = result;
  return result;
}

id key path getter for CAFBooleanSetting.userVisibleDetailedDescription : CAFBooleanSetting@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 userVisibleDetailedDescription];
  *a2 = result;
  return result;
}

void key path getter for CAFAutomakerSetting.sectionIdentifier : CAFBooleanSetting(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_213(a1);
  v4 = [v2 *v3];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *v1 = v6;
  v1[1] = v8;
}

id key path getter for CAFBooleanSetting.BOOLeanNotificationInfo : CAFBooleanSetting@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 BOOLeanNotificationInfo];
  *a2 = result;
  return result;
}

unint64_t type metadata accessor for CAFBooleanSetting()
{
  result = lazy cache variable for type metadata for CAFBooleanSetting;
  if (!lazy cache variable for type metadata for CAFBooleanSetting)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFBooleanSetting);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFBooleanSettingObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFBooleanSettingObservable and conformance CAFBooleanSettingObservable(&lazy protocol witness table cache variable for type CAFBooleanSettingObservable and conformance CAFBooleanSettingObservable, a2, type metadata accessor for CAFBooleanSettingObservable, &protocol conformance descriptor for CAFBooleanSettingObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFBooleanSettingObservable and conformance CAFBooleanSettingObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFBooleanSettingObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine27CAFBooleanSettingObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t OUTLINED_FUNCTION_6_4()
{

  return swift_allocObject();
}

uint64_t CAFButtonSettingObservable.sectionIdentifier.getter()
{
  return CAFButtonSettingObservable.sectionIdentifier.getter();
}

{
  OUTLINED_FUNCTION_4_9();
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable_observed);

  OUTLINED_FUNCTION_232(v2);

  return v3;
}

uint64_t CAFButtonSettingObservable.sortOrder.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4 | (v5 << 8);
}

uint64_t CAFButtonSettingObservable.category.getter()
{
  OUTLINED_FUNCTION_7_4();

  v1 = v0;
  OUTLINED_FUNCTION_231(v1, v2, v3, v4, v5, v6, v7, v8, v10);

  return v11;
}

uint64_t CAFButtonSettingObservable.disabled.getter()
{
  return CAFButtonSettingObservable.disabled.getter();
}

{
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_7_4();

  v1 = v0;
  OUTLINED_FUNCTION_231(v1, v2, v3, v4, v5, v6, v7, v8, v10);

  return v11;
}

uint64_t CAFButtonSettingObservable.prominenceInfo.getter()
{
  return CAFButtonSettingObservable.prominenceInfo.getter();
}

{
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_7_4();

  v1 = v0;
  swift_getAtKeyPath();

  return v3;
}

uint64_t key path getter for CAFButtonSettingObservable.buttonAction : CAFButtonSettingObservable@<X0>(_BYTE *a2@<X8>)
{
  result = CAFButtonSettingObservable.buttonAction.getter();
  *a2 = result;
  return result;
}

uint64_t CAFButtonSettingObservable.buttonAction.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable__buttonAction, v8);
  v7 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable_observed);

  v1 = v7;
  v2 = swift_readAtKeyPath();
  v4 = *v3;
  v2(&v6, 0);

  return v4;
}

uint64_t CAFButtonSettingObservable.buttonAction.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = v10;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA26CAFButtonSettingObservableC_So0L6ActionVTt3g5(a1, v14, KeyPath, v13, v15, v16, v17, v18, a9, a10);
}

void (*CAFButtonSettingObservable.buttonAction.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable__buttonAction, (v3 + 4));
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable_observed);
  v3[7] = v4;

  v5 = v4;
  v6 = swift_readAtKeyPath();
  v8 = *v7;
  v6(v3, 0);

  *(v3 + 88) = v8;
  return CAFButtonSettingObservable.buttonAction.modify;
}

void CAFButtonSettingObservable.buttonAction.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 72);
  v2 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 64);
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA26CAFButtonSettingObservableC_So0L6ActionVTt3g5(v4, v5, v3, v2, v6, v7, v8, v9, v10, v11);

  free(v1);
}

uint64_t CAFButtonSettingObservable.$buttonAction.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable__buttonAction, v4);

  specialized SafePublished.projectedValue.getter();
  v2 = v1;

  return v2;
}

uint64_t CAFButtonSettingObservable.$userVisibleLabel.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3();
  v4 = a2(v3);

  return v4;
}

uint64_t CAFButtonSettingObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable_observed);
  v2 = 0x73696765726E753CLL;
  v3 = 0xEE003E6465726574;
  if ([v1 registeredForButtonAction])
  {
    CAFButtonSettingObservable.buttonAction.getter();
    v4 = NSStringFromButtonAction();
    if (v4)
    {
      v5 = v4;
      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v3 = v6;
    }

    else
    {
      v3 = 0xE900000000000029;
      v2 = 0x6E776F6E6B6E7528;
    }
  }

  if ([v1 registeredForNotificationInfo])
  {
    CAFButtonSettingObservable.notificationInfo.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27CAFSettingNotificationEntryCSgMd, &_sSo27CAFSettingNotificationEntryCSgMR);
    String.init<A>(describing:)();
  }

  _StringGuts.grow(_:)(75);
  MEMORY[0x245D0A530](0xD00000000000001DLL, 0x800000024230CDC0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000011, 0x800000024230BA20);
  MEMORY[0x245D0A530](v2, v3);

  MEMORY[0x245D0A530](0xD000000000000014, 0x800000024230CDE0);
  v7 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v7);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFButtonSettingObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable_cachedDescription + 8))
  {
    v4 = *(v0 + v1);
  }

  else
  {
    *v3 = CAFButtonSettingObservable._description.getter();
    v3[1] = v5;

    v4 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v4 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFButtonSettingObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable__userVisibleLabel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFButtonSettingObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFButtonSettingObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v9 = OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable__sectionIdentifier;
  swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFButtonSettingObservableCSSSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFButtonSettingObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v10);
  OUTLINED_FUNCTION_0_7();
  *&v2[v9] = specialized SafePublished.init(observedValuekeypath:)();
  v11 = OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable__sortOrder;
  swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFButtonSettingObservableCs5UInt8VSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFButtonSettingObservableCs5UInt8VSgGMR);
  OUTLINED_FUNCTION_225(v12);
  v13 = OUTLINED_FUNCTION_0_7();
  *&v2[v11] = specialized SafePublished.init(observedValuekeypath:)(v13);
  v14 = OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable__category;
  swift_getKeyPath();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFButtonSettingObservableCSo19CAFSettingsCategoryVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFButtonSettingObservableCSo19CAFSettingsCategoryVGMR);
  OUTLINED_FUNCTION_225(v15);
  v16 = OUTLINED_FUNCTION_0_7();
  *&v2[v14] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v16);
  v17 = OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable__identifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v17] = specialized SafePublished.init(observedValuekeypath:)();
  v18 = OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable__disabled;
  swift_getKeyPath();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFButtonSettingObservableCSbSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFButtonSettingObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v19);
  OUTLINED_FUNCTION_0_7();
  *&v2[v18] = specialized SafePublished.init(observedValuekeypath:)();
  v20 = OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable__limitableUIElement;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_0_7();
  *&v2[v20] = specialized SafePublished.init(observedValuekeypath:)();
  v21 = OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable__hidden;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_0_7();
  *&v2[v21] = specialized SafePublished.init(observedValuekeypath:)();
  v22 = OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable__showAudioBrandLogo;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_0_7();
  *&v2[v22] = specialized SafePublished.init(observedValuekeypath:)();
  v23 = OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable__vehicleLayoutKey;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v23] = specialized SafePublished.init(observedValuekeypath:)();
  v24 = OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable__symbolName;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v24] = specialized SafePublished.init(observedValuekeypath:)();
  v25 = OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable__prominenceInfo;
  swift_getKeyPath();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFButtonSettingObservableCSo24CAFProminenceInformationCSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFButtonSettingObservableCSo24CAFProminenceInformationCSgGMR);
  OUTLINED_FUNCTION_225(v26);
  OUTLINED_FUNCTION_0_7();
  *&v2[v25] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v27 = OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable__buttonAction;
  swift_getKeyPath();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFButtonSettingObservableCSo0D6ActionVGMd, _s10CAFCombine13SafePublishedCyAA26CAFButtonSettingObservableCSo0D6ActionVGMR);
  OUTLINED_FUNCTION_225(v28);
  v29 = OUTLINED_FUNCTION_0_7();
  *&v2[v27] = specialized SafePublished.init(observedValuekeypath:)(v29);
  v30 = OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable__notificationInfo;
  swift_getKeyPath();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFButtonSettingObservableCSo27CAFSettingNotificationEntryCSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFButtonSettingObservableCSo27CAFSettingNotificationEntryCSgGMR);
  OUTLINED_FUNCTION_225(v31);
  OUTLINED_FUNCTION_0_7();
  *&v2[v30] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v32 = OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v32] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable_observed] = a1;
  v36.receiver = v2;
  v36.super_class = type metadata accessor for CAFButtonSettingObservable();
  v33 = a1;
  v34 = objc_msgSendSuper2(&v36, sel_init);
  [v33 registerObserver_];

  return v34;
}

uint64_t CAFButtonSettingObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFButtonSettingObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFButtonSettingObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFButtonSettingObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFButtonSettingObservable@<X0>(void *a1@<X8>)
{
  result = CAFButtonSettingObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFButtonSettingObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFButtonSettingObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFButtonSettingObservable.automakerSettingService(_:didUpdateSortOrder:)(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFButtonSettingObservable.automakerSettingService(_:didUpdateCategory:)(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2);
}

double @objc CAFButtonSettingObservable.automakerSettingService(_:didUpdateUserVisibleLabel:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFButtonSettingObservable.automakerSettingService(_:didUpdateDisabled:)(uint64_t a1, char a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2 & 1);
}

double @objc CAFButtonSettingObservable.automakerSettingService(_:didUpdateSectionIdentifier:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
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

uint64_t CAFButtonSettingObservable.automakerSettingService(_:didUpdateSectionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  v4 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v4, v5);
}

uint64_t CAFButtonSettingObservable.buttonSettingService(_:didUpdateButtonAction:)(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_234(v2 + OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable__buttonAction, v5);

  specialized SafePublished.value.setter(a2);
}

uint64_t CAFButtonSettingObservable.automakerSettingService(_:didUpdateProminenceInfo:)(uint64_t a1, void *a2, void *a3, void (*a4)(void *))
{
  v6 = a2;

  a4(a2);
}

uint64_t CAFButtonSettingObservable.automakerSettingService(_:didUpdateUserVisibleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3();

  v4 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v4, v5);
}

uint64_t CAFButtonSettingObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFButtonSettingObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFButtonSettingObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

id key path getter for CAFButtonSetting.notificationInfo : CAFButtonSetting@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 notificationInfo];
  *a2 = result;
  return result;
}

unint64_t type metadata accessor for CAFButtonSetting()
{
  result = lazy cache variable for type metadata for CAFButtonSetting;
  if (!lazy cache variable for type metadata for CAFButtonSetting)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFButtonSetting);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFButtonSettingObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFButtonSettingObservable and conformance CAFButtonSettingObservable(&lazy protocol witness table cache variable for type CAFButtonSettingObservable and conformance CAFButtonSettingObservable, a2, type metadata accessor for CAFButtonSettingObservable, &protocol conformance descriptor for CAFButtonSettingObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFButtonSettingObservable and conformance CAFButtonSettingObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFButtonSettingObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine26CAFButtonSettingObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFDeepLinkSettingObservable.sectionIdentifier.getter()
{
  return CAFDeepLinkSettingObservable.sectionIdentifier.getter();
}

{
  OUTLINED_FUNCTION_4_9();
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable_observed);

  OUTLINED_FUNCTION_232(v2);

  return v3;
}

uint64_t CAFDeepLinkSettingObservable.sortOrder.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4 | (v5 << 8);
}

uint64_t CAFDeepLinkSettingObservable.category.getter()
{
  OUTLINED_FUNCTION_7_4();

  v1 = v0;
  OUTLINED_FUNCTION_231(v1, v2, v3, v4, v5, v6, v7, v8, v10);

  return v11;
}

uint64_t CAFDeepLinkSettingObservable.disabled.getter()
{
  return CAFDeepLinkSettingObservable.disabled.getter();
}

{
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_7_4();

  v1 = v0;
  OUTLINED_FUNCTION_231(v1, v2, v3, v4, v5, v6, v7, v8, v10);

  return v11;
}

uint64_t CAFDeepLinkSettingObservable.prominenceInfo.getter()
{
  return CAFDeepLinkSettingObservable.prominenceInfo.getter();
}

{
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_7_4();

  v1 = v0;
  swift_getAtKeyPath();

  return v3;
}

uint64_t CAFDeepLinkSettingObservable.$userVisibleLabel.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3();
  v4 = a2(v3);

  return v4;
}

uint64_t CAFDeepLinkSettingObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable_observed);
  v2 = [v1 registeredForUserVisibleValue];
  v3 = 0x73696765726E753CLL;
  v4 = 0xEE003E6465726574;
  if (v2)
  {
    CAFDeepLinkSettingObservable.userVisibleValue.getter();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v3 = OUTLINED_FUNCTION_16_4(v5, v6, v7, v8, v9);
    v4 = v10;
  }

  v41 = v3;
  v11 = [v1 registeredForContentURLAction];
  v12 = 0x73696765726E753CLL;
  v13 = 0xEE003E6465726574;
  if (v11)
  {
    v12 = CAFDeepLinkSettingObservable.contentURLAction.getter();
    v13 = v14;
  }

  v40 = v12;
  v15 = [v1 registeredForUserVisibleDetailedDescription];
  v16 = 0x73696765726E753CLL;
  v17 = 0xEE003E6465726574;
  if (v15)
  {
    CAFDeepLinkSettingObservable.userVisibleDetailedDescription.getter();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo33CAFUserVisibleDetailedDescriptionCSgMd, &_sSo33CAFUserVisibleDetailedDescriptionCSgMR);
    v16 = OUTLINED_FUNCTION_16_4(v18, v19, v20, v21, v22);
    v17 = v23;
  }

  v24 = 0x73696765726E753CLL;
  v25 = 0xEE003E6465726574;
  if ([v1 registeredForUserVisibleDescription])
  {
    CAFDeepLinkSettingObservable.userVisibleDescription.getter();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v24 = OUTLINED_FUNCTION_16_4(v26, v27, v28, v29, v30);
    v25 = v31;
  }

  if ([v1 registeredForNotificationInfo])
  {
    CAFDeepLinkSettingObservable.notificationInfo.getter();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27CAFSettingNotificationEntryCSgMd, &_sSo27CAFSettingNotificationEntryCSgMR);
    OUTLINED_FUNCTION_16_4(v32, v33, v34, v35, v36);
  }

  _StringGuts.grow(_:)(167);
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  _print_unlocked<A, B>(_:_:)();
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v41, v4);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530](0xD000000000000014);
  MEMORY[0x245D0A530](v40, v13);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v39, v17);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v24, v25);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530](0xD000000000000014);
  v37 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v37);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFDeepLinkSettingObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable_cachedDescription + 8))
  {
    v4 = *(v0 + v1);
  }

  else
  {
    *v3 = CAFDeepLinkSettingObservable._description.getter();
    v3[1] = v5;

    v4 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v4 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFDeepLinkSettingObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable__userVisibleLabel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFDeepLinkSettingObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFDeepLinkSettingObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v9 = OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable__sectionIdentifier;
  swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFDeepLinkSettingObservableCSSSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFDeepLinkSettingObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v10);
  OUTLINED_FUNCTION_0_7();
  *&v2[v9] = specialized SafePublished.init(observedValuekeypath:)();
  v11 = OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable__sortOrder;
  swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFDeepLinkSettingObservableCs5UInt8VSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFDeepLinkSettingObservableCs5UInt8VSgGMR);
  OUTLINED_FUNCTION_225(v12);
  v13 = OUTLINED_FUNCTION_0_7();
  *&v2[v11] = specialized SafePublished.init(observedValuekeypath:)(v13);
  v14 = OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable__category;
  swift_getKeyPath();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFDeepLinkSettingObservableCSo19CAFSettingsCategoryVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFDeepLinkSettingObservableCSo19CAFSettingsCategoryVGMR);
  OUTLINED_FUNCTION_225(v15);
  v16 = OUTLINED_FUNCTION_0_7();
  *&v2[v14] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v16);
  v17 = OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable__identifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v17] = specialized SafePublished.init(observedValuekeypath:)();
  v18 = OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable__disabled;
  swift_getKeyPath();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFDeepLinkSettingObservableCSbSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFDeepLinkSettingObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v19);
  OUTLINED_FUNCTION_0_7();
  *&v2[v18] = specialized SafePublished.init(observedValuekeypath:)();
  v20 = OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable__limitableUIElement;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_0_7();
  *&v2[v20] = specialized SafePublished.init(observedValuekeypath:)();
  v21 = OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable__hidden;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_0_7();
  *&v2[v21] = specialized SafePublished.init(observedValuekeypath:)();
  v22 = OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable__showAudioBrandLogo;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_0_7();
  *&v2[v22] = specialized SafePublished.init(observedValuekeypath:)();
  v23 = OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable__vehicleLayoutKey;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v23] = specialized SafePublished.init(observedValuekeypath:)();
  v24 = OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable__symbolName;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v24] = specialized SafePublished.init(observedValuekeypath:)();
  v25 = OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable__prominenceInfo;
  swift_getKeyPath();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFDeepLinkSettingObservableCSo24CAFProminenceInformationCSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFDeepLinkSettingObservableCSo24CAFProminenceInformationCSgGMR);
  OUTLINED_FUNCTION_225(v26);
  OUTLINED_FUNCTION_0_7();
  *&v2[v25] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v27 = OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable__userVisibleValue;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v27] = specialized SafePublished.init(observedValuekeypath:)();
  v28 = OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable__contentURLAction;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v28] = specialized SafePublished.init(observedValuekeypath:)();
  v29 = OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable__userVisibleDetailedDescription;
  swift_getKeyPath();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFDeepLinkSettingObservableCSo33CAFUserVisibleDetailedDescriptionCSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFDeepLinkSettingObservableCSo33CAFUserVisibleDetailedDescriptionCSgGMR);
  OUTLINED_FUNCTION_225(v30);
  OUTLINED_FUNCTION_0_7();
  *&v2[v29] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v31 = OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable__userVisibleDescription;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v31] = specialized SafePublished.init(observedValuekeypath:)();
  v32 = OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable__notificationInfo;
  swift_getKeyPath();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFDeepLinkSettingObservableCSo27CAFSettingNotificationEntryCSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFDeepLinkSettingObservableCSo27CAFSettingNotificationEntryCSgGMR);
  OUTLINED_FUNCTION_225(v33);
  OUTLINED_FUNCTION_0_7();
  *&v2[v32] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v34 = OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v34] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable_observed] = a1;
  v38.receiver = v2;
  v38.super_class = type metadata accessor for CAFDeepLinkSettingObservable();
  v35 = a1;
  v36 = objc_msgSendSuper2(&v38, sel_init);
  [v35 registerObserver_];

  return v36;
}

uint64_t CAFDeepLinkSettingObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFDeepLinkSettingObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFDeepLinkSettingObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFDeepLinkSettingObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFDeepLinkSettingObservable@<X0>(void *a1@<X8>)
{
  result = CAFDeepLinkSettingObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFDeepLinkSettingObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFDeepLinkSettingObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFDeepLinkSettingObservable.automakerSettingService(_:didUpdateSortOrder:)(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFDeepLinkSettingObservable.automakerSettingService(_:didUpdateCategory:)(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2);
}

double @objc CAFDeepLinkSettingObservable.automakerSettingService(_:didUpdateUserVisibleLabel:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFDeepLinkSettingObservable.automakerSettingService(_:didUpdateDisabled:)(uint64_t a1, char a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2 & 1);
}

double @objc CAFDeepLinkSettingObservable.automakerSettingService(_:didUpdateSectionIdentifier:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
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

uint64_t CAFDeepLinkSettingObservable.automakerSettingService(_:didUpdateSectionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  v4 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v4, v5);
}

uint64_t CAFDeepLinkSettingObservable.automakerSettingService(_:didUpdateProminenceInfo:)(uint64_t a1, void *a2, void *a3, void (*a4)(void *))
{
  v6 = a2;

  a4(a2);
}

uint64_t CAFDeepLinkSettingObservable.automakerSettingService(_:didUpdateUserVisibleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3();

  v4 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v4, v5);
}

uint64_t CAFDeepLinkSettingObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFDeepLinkSettingObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFDeepLinkSettingObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFAutomakerSetting.sectionIdentifier : CAFDeepLinkSetting(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

unint64_t type metadata accessor for CAFDeepLinkSetting()
{
  result = lazy cache variable for type metadata for CAFDeepLinkSetting;
  if (!lazy cache variable for type metadata for CAFDeepLinkSetting)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFDeepLinkSetting);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFDeepLinkSettingObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFDeepLinkSettingObservable and conformance CAFDeepLinkSettingObservable(&lazy protocol witness table cache variable for type CAFDeepLinkSettingObservable and conformance CAFDeepLinkSettingObservable, a2, type metadata accessor for CAFDeepLinkSettingObservable, &protocol conformance descriptor for CAFDeepLinkSettingObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFDeepLinkSettingObservable and conformance CAFDeepLinkSettingObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFDeepLinkSettingObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine28CAFDeepLinkSettingObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t OUTLINED_FUNCTION_16_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return String.init<A>(describing:)();
}

uint64_t CAFFloatSettingObservable.sectionIdentifier.getter()
{
  return CAFFloatSettingObservable.sectionIdentifier.getter();
}

{
  OUTLINED_FUNCTION_228();
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable_observed);

  OUTLINED_FUNCTION_232(v2);

  return v3;
}

uint64_t CAFFloatSettingObservable.sortOrder.getter()
{
  OUTLINED_FUNCTION_228();
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4 | (v5 << 8);
}

uint64_t CAFFloatSettingObservable.category.getter()
{
  OUTLINED_FUNCTION_228();
  OUTLINED_FUNCTION_7_4();

  v1 = v0;
  OUTLINED_FUNCTION_231(v1, v2, v3, v4, v5, v6, v7, v8, v10);

  return v11;
}

uint64_t CAFFloatSettingObservable.disabled.getter()
{
  return CAFFloatSettingObservable.disabled.getter();
}

{
  OUTLINED_FUNCTION_228();
  OUTLINED_FUNCTION_7_4();

  v1 = v0;
  OUTLINED_FUNCTION_231(v1, v2, v3, v4, v5, v6, v7, v8, v10);

  return v11;
}

uint64_t CAFFloatSettingObservable.prominenceInfo.getter()
{
  OUTLINED_FUNCTION_228();
  OUTLINED_FUNCTION_7_4();

  v1 = v0;
  swift_getAtKeyPath();

  return v3;
}

float CAFFloatSettingObservable.value.getter()
{
  swift_beginAccess();
  v7 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable_observed);

  v1 = v7;
  v2 = swift_readAtKeyPath();
  v4 = *v3;
  v2(&v6, 0);

  return v4;
}

uint64_t CAFFloatSettingObservable.value.setter(float a1)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = v1;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA25CAFFloatSettingObservableC_SfTt3g5(v5, KeyPath, v4, a1);
}

void (*CAFFloatSettingObservable.value.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  swift_beginAccess();
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable_observed);
  v3[7] = v4;

  v5 = v4;
  v6 = swift_readAtKeyPath();
  v8 = *v7;
  v6(v3, 0);

  *(v3 + 22) = v8;
  return CAFFloatSettingObservable.value.modify;
}

void CAFFloatSettingObservable.value.modify(uint64_t a1)
{
  v1 = *a1;
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA25CAFFloatSettingObservableC_SfTt3g5(*(*a1 + 64), *(*a1 + 72), *(*a1 + 80), *(*a1 + 88));

  free(v1);
}

uint64_t CAFFloatSettingObservable.$value.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_17_5(a1);

  specialized SafePublished.projectedValue.getter();
  v2 = v1;

  return v2;
}

uint64_t CAFFloatSettingObservable.$userVisibleLabel.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3();
  v4 = a2(v3);

  return v4;
}

uint64_t CAFFloatSettingObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable_observed);
  v2 = 0x73696765726E753CLL;
  v3 = 0xEE003E6465726574;
  if ([v1 registeredForFloatValue])
  {
    CAFFloatSettingObservable.value.getter();
    v2 = Float.description.getter();
    v3 = v4;
  }

  v5 = 0x73696765726E753CLL;
  v6 = 0xEE003E6465726574;
  if ([v1 registeredForMaximumSymbolName])
  {
    CAFFloatSettingObservable.maximumSymbolName.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v5 = String.init<A>(describing:)();
    v6 = v7;
  }

  if ([v1 registeredForMinimumSymbolName])
  {
    CAFFloatSettingObservable.minimumSymbolName.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    String.init<A>(describing:)();
  }

  _StringGuts.grow(_:)(91);
  MEMORY[0x245D0A530](0xD00000000000001CLL, 0x800000024230CF70);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x65756C6176207B20, 0xEA0000000000203ALL);
  MEMORY[0x245D0A530](v2, v3);

  OUTLINED_FUNCTION_10_5();
  MEMORY[0x245D0A530](v5, v6);

  OUTLINED_FUNCTION_10_5();
  v8 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v8);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFFloatSettingObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable_cachedDescription + 8))
  {
    v4 = *(v0 + v1);
  }

  else
  {
    *v3 = CAFFloatSettingObservable._description.getter();
    v3[1] = v5;

    v4 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v4 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFFloatSettingObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable__userVisibleLabel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFFloatSettingObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFFloatSettingObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v9 = OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable__sectionIdentifier;
  swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFFloatSettingObservableCSSSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFFloatSettingObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v10);
  OUTLINED_FUNCTION_0_7();
  *&v2[v9] = specialized SafePublished.init(observedValuekeypath:)();
  v11 = OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable__sortOrder;
  swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFFloatSettingObservableCs5UInt8VSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFFloatSettingObservableCs5UInt8VSgGMR);
  OUTLINED_FUNCTION_225(v12);
  v13 = OUTLINED_FUNCTION_0_7();
  *&v2[v11] = specialized SafePublished.init(observedValuekeypath:)(v13);
  v14 = OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable__category;
  swift_getKeyPath();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFFloatSettingObservableCSo19CAFSettingsCategoryVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFFloatSettingObservableCSo19CAFSettingsCategoryVGMR);
  OUTLINED_FUNCTION_225(v15);
  v16 = OUTLINED_FUNCTION_0_7();
  *&v2[v14] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v16);
  v17 = OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable__identifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v17] = specialized SafePublished.init(observedValuekeypath:)();
  v18 = OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable__disabled;
  swift_getKeyPath();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFFloatSettingObservableCSbSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFFloatSettingObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v19);
  OUTLINED_FUNCTION_0_7();
  *&v2[v18] = specialized SafePublished.init(observedValuekeypath:)();
  v20 = OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable__limitableUIElement;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_0_7();
  *&v2[v20] = specialized SafePublished.init(observedValuekeypath:)();
  v21 = OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable__hidden;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_0_7();
  *&v2[v21] = specialized SafePublished.init(observedValuekeypath:)();
  v22 = OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable__showAudioBrandLogo;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_0_7();
  *&v2[v22] = specialized SafePublished.init(observedValuekeypath:)();
  v23 = OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable__vehicleLayoutKey;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v23] = specialized SafePublished.init(observedValuekeypath:)();
  v24 = OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable__symbolName;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v24] = specialized SafePublished.init(observedValuekeypath:)();
  v25 = OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable__prominenceInfo;
  swift_getKeyPath();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFFloatSettingObservableCSo24CAFProminenceInformationCSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFFloatSettingObservableCSo24CAFProminenceInformationCSgGMR);
  OUTLINED_FUNCTION_225(v26);
  OUTLINED_FUNCTION_0_7();
  *&v2[v25] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v27 = OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable__value;
  swift_getKeyPath();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA25CAFFloatSettingObservableCSfGMd, _s10CAFCombine13SafePublishedCyAA25CAFFloatSettingObservableCSfGMR);
  OUTLINED_FUNCTION_225(v28);
  v29 = OUTLINED_FUNCTION_0_7();
  *&v2[v27] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v29);
  v30 = OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable__maximumSymbolName;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v30] = specialized SafePublished.init(observedValuekeypath:)();
  v31 = OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable__minimumSymbolName;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v31] = specialized SafePublished.init(observedValuekeypath:)();
  v32 = OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v32] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable_observed] = a1;
  v36.receiver = v2;
  v36.super_class = type metadata accessor for CAFFloatSettingObservable();
  v33 = a1;
  v34 = objc_msgSendSuper2(&v36, sel_init);
  [v33 registerObserver_];

  return v34;
}

uint64_t CAFFloatSettingObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFFloatSettingObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFFloatSettingObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFFloatSettingObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFFloatSettingObservable@<X0>(void *a1@<X8>)
{
  result = CAFFloatSettingObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFFloatSettingObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFFloatSettingObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFFloatSettingObservable.automakerSettingService(_:didUpdateSortOrder:)(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFFloatSettingObservable.automakerSettingService(_:didUpdateCategory:)(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2);
}

double @objc CAFFloatSettingObservable.automakerSettingService(_:didUpdateUserVisibleLabel:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFFloatSettingObservable.automakerSettingService(_:didUpdateDisabled:)(uint64_t a1, char a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2 & 1);
}

double @objc CAFFloatSettingObservable.automakerSettingService(_:didUpdateSectionIdentifier:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
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

uint64_t CAFFloatSettingObservable.automakerSettingService(_:didUpdateProminenceInfo:)(uint64_t a1, void *a2)
{
  v3 = a2;

  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFFloatSettingObservable.floatSettingService(_:didUpdateValue:)(float a1, uint64_t a2)
{
  OUTLINED_FUNCTION_17_5(a2);

  specialized SafePublished.value.setter(LODWORD(a1));
}

uint64_t CAFFloatSettingObservable.automakerSettingService(_:didUpdateSectionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  v4 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v4, v5);
}

uint64_t CAFFloatSettingObservable.automakerSettingService(_:didUpdateUserVisibleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3();

  v4 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v4, v5);
}

uint64_t CAFFloatSettingObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFFloatSettingObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFFloatSettingObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFFloatSetting()
{
  result = lazy cache variable for type metadata for CAFFloatSetting;
  if (!lazy cache variable for type metadata for CAFFloatSetting)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFFloatSetting);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFFloatSettingObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFFloatSettingObservable and conformance CAFFloatSettingObservable(&lazy protocol witness table cache variable for type CAFFloatSettingObservable and conformance CAFFloatSettingObservable, a2, type metadata accessor for CAFFloatSettingObservable, &protocol conformance descriptor for CAFFloatSettingObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFFloatSettingObservable and conformance CAFFloatSettingObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFFloatSettingObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine25CAFFloatSettingObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

void OUTLINED_FUNCTION_10_5()
{

  JUMPOUT(0x245D0A530);
}

uint64_t OUTLINED_FUNCTION_17_5(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t CAFIntegerSettingObservable.sectionIdentifier.getter()
{
  return CAFIntegerSettingObservable.sectionIdentifier.getter();
}

{
  OUTLINED_FUNCTION_4_9();
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable_observed);

  OUTLINED_FUNCTION_232(v2);

  return v3;
}

uint64_t CAFIntegerSettingObservable.sortOrder.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4 | (v5 << 8);
}

uint64_t CAFIntegerSettingObservable.category.getter()
{
  OUTLINED_FUNCTION_7_4();

  v1 = v0;
  OUTLINED_FUNCTION_231(v1, v2, v3, v4, v5, v6, v7, v8, v10);

  return v11;
}

uint64_t CAFIntegerSettingObservable.disabled.getter()
{
  return CAFIntegerSettingObservable.disabled.getter();
}

{
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_7_4();

  v1 = v0;
  OUTLINED_FUNCTION_231(v1, v2, v3, v4, v5, v6, v7, v8, v10);

  return v11;
}

uint64_t CAFIntegerSettingObservable.prominenceInfo.getter()
{
  return CAFIntegerSettingObservable.prominenceInfo.getter();
}

{
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_7_4();

  v1 = v0;
  swift_getAtKeyPath();

  return v3;
}

uint64_t key path getter for CAFIntegerSettingObservable.value : CAFIntegerSettingObservable@<X0>(_DWORD *a2@<X8>)
{
  result = CAFIntegerSettingObservable.value.getter();
  *a2 = result;
  return result;
}

uint64_t CAFIntegerSettingObservable.value.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__value, v8);
  v7 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable_observed);

  v1 = v7;
  v2 = swift_readAtKeyPath();
  v4 = *v3;
  v2(&v6, 0);

  return v4;
}

uint64_t CAFIntegerSettingObservable.value.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = v10;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA27CAFIntegerSettingObservableC_s5Int32VTt3g5(a1, v14, KeyPath, v13, v15, v16, v17, v18, a9, a10);
}

void (*CAFIntegerSettingObservable.value.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__value, (v3 + 4));
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable_observed);
  v3[7] = v4;

  v5 = v4;
  v6 = swift_readAtKeyPath();
  v8 = *v7;
  v6(v3, 0);

  *(v3 + 22) = v8;
  return CAFIntegerSettingObservable.value.modify;
}

void CAFIntegerSettingObservable.value.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 72);
  v2 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 64);
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA27CAFIntegerSettingObservableC_s5Int32VTt3g5(v4, v5, v3, v2, v6, v7, v8, v9, v10, v11);

  free(v1);
}

uint64_t CAFIntegerSettingObservable.$value.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__value, v4);

  specialized SafePublished.projectedValue.getter();
  v2 = v1;

  return v2;
}

uint64_t CAFIntegerSettingObservable.$userVisibleLabel.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3();
  v4 = a2(v3);

  return v4;
}

uint64_t CAFIntegerSettingObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable_observed);
  v2 = [v1 registeredForInt32Value];
  v3 = 0x73696765726E753CLL;
  v4 = 0xEE003E6465726574;
  if (v2)
  {
    CAFIntegerSettingObservable.value.getter();
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
  }

  v79 = v3;
  v80 = v4;
  v5 = [v1 registeredForUserVisibleValue];
  v6 = 0x73696765726E753CLL;
  v7 = 0xEE003E6465726574;
  if (v5)
  {
    CAFIntegerSettingObservable.userVisibleValue.getter();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v6 = OUTLINED_FUNCTION_10_6(v8, v9, v10, v11, v12, v13, v14, v15, v73);
  }

  v77 = v6;
  v78 = v7;
  v16 = [v1 registeredForUserVisibleDescription];
  v17 = 0x73696765726E753CLL;
  v18 = 0xEE003E6465726574;
  if (v16)
  {
    CAFIntegerSettingObservable.userVisibleDescription.getter();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v17 = OUTLINED_FUNCTION_10_6(v19, v20, v21, v22, v23, v24, v25, v26, v73);
    v18 = v27;
  }

  v76 = v17;
  v28 = [v1 registeredForUserVisibleDetailedDescription];
  v29 = 0x73696765726E753CLL;
  v30 = 0xEE003E6465726574;
  if (v28)
  {
    CAFIntegerSettingObservable.userVisibleDetailedDescription.getter();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo33CAFUserVisibleDetailedDescriptionCSgMd, &_sSo33CAFUserVisibleDetailedDescriptionCSgMR);
    v29 = OUTLINED_FUNCTION_10_6(v31, v32, v33, v34, v35, v36, v37, v38, v73);
    v30 = v39;
  }

  v75 = v29;
  v40 = [v1 registeredForMaximumSymbolName];
  v41 = 0x73696765726E753CLL;
  v42 = 0xEE003E6465726574;
  if (v40)
  {
    CAFIntegerSettingObservable.maximumSymbolName.getter();
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v41 = OUTLINED_FUNCTION_10_6(v43, v44, v45, v46, v47, v48, v49, v50, v73);
    v42 = v51;
  }

  v52 = 0x73696765726E753CLL;
  v53 = 0xEE003E6465726574;
  if ([v1 registeredForMinimumSymbolName])
  {
    CAFIntegerSettingObservable.minimumSymbolName.getter();
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v52 = OUTLINED_FUNCTION_10_6(v54, v55, v56, v57, v58, v59, v60, v61, v74);
    v53 = v62;
  }

  if ([v1 registeredForStepperBarHidden])
  {
    CAFIntegerSettingObservable.stepperBarHidden.getter();
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    OUTLINED_FUNCTION_10_6(v63, v64, v65, v66, v67, v68, v69, v70, v74);
  }

  _StringGuts.grow(_:)(201);
  OUTLINED_FUNCTION_3_9();
  MEMORY[0x245D0A530]();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x65756C6176207B20, 0xEA0000000000203ALL);
  MEMORY[0x245D0A530](v79, v80);

  OUTLINED_FUNCTION_3_9();
  MEMORY[0x245D0A530](0xD000000000000014);
  MEMORY[0x245D0A530](v77, v78);

  OUTLINED_FUNCTION_3_9();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v76, v18);

  OUTLINED_FUNCTION_3_9();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v75, v30);

  OUTLINED_FUNCTION_3_9();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v74, v42);

  OUTLINED_FUNCTION_3_9();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v52, v53);

  OUTLINED_FUNCTION_3_9();
  MEMORY[0x245D0A530](0xD000000000000014);
  v71 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v71);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFIntegerSettingObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable_cachedDescription + 8))
  {
    v4 = *(v0 + v1);
  }

  else
  {
    *v3 = CAFIntegerSettingObservable._description.getter();
    v3[1] = v5;

    v4 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v4 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFIntegerSettingObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__userVisibleLabel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFIntegerSettingObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFIntegerSettingObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v9 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__sectionIdentifier;
  swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFIntegerSettingObservableCSSSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFIntegerSettingObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v10);
  OUTLINED_FUNCTION_0_7();
  *&v2[v9] = specialized SafePublished.init(observedValuekeypath:)();
  v11 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__sortOrder;
  swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFIntegerSettingObservableCs5UInt8VSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFIntegerSettingObservableCs5UInt8VSgGMR);
  OUTLINED_FUNCTION_225(v12);
  v13 = OUTLINED_FUNCTION_0_7();
  *&v2[v11] = specialized SafePublished.init(observedValuekeypath:)(v13);
  v14 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__category;
  swift_getKeyPath();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFIntegerSettingObservableCSo19CAFSettingsCategoryVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFIntegerSettingObservableCSo19CAFSettingsCategoryVGMR);
  OUTLINED_FUNCTION_225(v15);
  v16 = OUTLINED_FUNCTION_0_7();
  *&v2[v14] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v16);
  v17 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__identifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v17] = specialized SafePublished.init(observedValuekeypath:)();
  v18 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__disabled;
  swift_getKeyPath();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFIntegerSettingObservableCSbSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFIntegerSettingObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v19);
  OUTLINED_FUNCTION_0_7();
  *&v2[v18] = specialized SafePublished.init(observedValuekeypath:)();
  v20 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__limitableUIElement;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_0_7();
  *&v2[v20] = specialized SafePublished.init(observedValuekeypath:)();
  v21 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__hidden;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_0_7();
  *&v2[v21] = specialized SafePublished.init(observedValuekeypath:)();
  v22 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__showAudioBrandLogo;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_0_7();
  *&v2[v22] = specialized SafePublished.init(observedValuekeypath:)();
  v23 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__vehicleLayoutKey;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v23] = specialized SafePublished.init(observedValuekeypath:)();
  v24 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__symbolName;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v24] = specialized SafePublished.init(observedValuekeypath:)();
  v25 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__prominenceInfo;
  swift_getKeyPath();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFIntegerSettingObservableCSo24CAFProminenceInformationCSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFIntegerSettingObservableCSo24CAFProminenceInformationCSgGMR);
  OUTLINED_FUNCTION_225(v26);
  OUTLINED_FUNCTION_0_7();
  *&v2[v25] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v27 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__value;
  swift_getKeyPath();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA27CAFIntegerSettingObservableCs5Int32VGMd, _s10CAFCombine13SafePublishedCyAA27CAFIntegerSettingObservableCs5Int32VGMR);
  OUTLINED_FUNCTION_225(v28);
  v29 = OUTLINED_FUNCTION_0_7();
  *&v2[v27] = specialized SafePublished.init(observedValuekeypath:)(v29);
  v30 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__userVisibleValue;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v30] = specialized SafePublished.init(observedValuekeypath:)();
  v31 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__userVisibleDescription;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v31] = specialized SafePublished.init(observedValuekeypath:)();
  v32 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__userVisibleDetailedDescription;
  swift_getKeyPath();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFIntegerSettingObservableCSo33CAFUserVisibleDetailedDescriptionCSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFIntegerSettingObservableCSo33CAFUserVisibleDetailedDescriptionCSgGMR);
  OUTLINED_FUNCTION_225(v33);
  OUTLINED_FUNCTION_0_7();
  *&v2[v32] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v34 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__maximumSymbolName;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v34] = specialized SafePublished.init(observedValuekeypath:)();
  v35 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__minimumSymbolName;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v35] = specialized SafePublished.init(observedValuekeypath:)();
  v36 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__stepperBarHidden;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_0_7();
  *&v2[v36] = specialized SafePublished.init(observedValuekeypath:)();
  v37 = OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v37] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable_observed] = a1;
  v41.receiver = v2;
  v41.super_class = type metadata accessor for CAFIntegerSettingObservable();
  v38 = a1;
  v39 = objc_msgSendSuper2(&v41, sel_init);
  [v38 registerObserver_];

  return v39;
}

uint64_t CAFIntegerSettingObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFIntegerSettingObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFIntegerSettingObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFIntegerSettingObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFIntegerSettingObservable@<X0>(void *a1@<X8>)
{
  result = CAFIntegerSettingObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFIntegerSettingObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFIntegerSettingObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFIntegerSettingObservable.automakerSettingService(_:didUpdateSortOrder:)(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFIntegerSettingObservable.automakerSettingService(_:didUpdateCategory:)(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2);
}

double @objc CAFIntegerSettingObservable.automakerSettingService(_:didUpdateUserVisibleLabel:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

double @objc CAFIntegerSettingObservable.automakerSettingService(_:didUpdateSectionIdentifier:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
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

uint64_t CAFIntegerSettingObservable.integerSettingService(_:didUpdateValue:)(uint64_t a1, unsigned int a2)
{
  OUTLINED_FUNCTION_234(v2 + OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable__value, v5);

  specialized SafePublished.value.setter(a2);
}

uint64_t CAFIntegerSettingObservable.automakerSettingService(_:didUpdateProminenceInfo:)(uint64_t a1, void *a2, void *a3, void (*a4)(void *))
{
  v6 = a2;

  a4(a2);
}

uint64_t CAFIntegerSettingObservable.automakerSettingService(_:didUpdateSectionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  v4 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v4, v5);
}

uint64_t CAFIntegerSettingObservable.automakerSettingService(_:didUpdateDisabled:)(uint64_t a1, char a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2 & 1);
}

uint64_t CAFIntegerSettingObservable.automakerSettingService(_:didUpdateUserVisibleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3();

  v4 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v4, v5);
}

uint64_t CAFIntegerSettingObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFIntegerSettingObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFIntegerSettingObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFIntegerSetting()
{
  result = lazy cache variable for type metadata for CAFIntegerSetting;
  if (!lazy cache variable for type metadata for CAFIntegerSetting)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFIntegerSetting);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFIntegerSettingObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFIntegerSettingObservable and conformance CAFIntegerSettingObservable(&lazy protocol witness table cache variable for type CAFIntegerSettingObservable and conformance CAFIntegerSettingObservable, a2, type metadata accessor for CAFIntegerSettingObservable, &protocol conformance descriptor for CAFIntegerSettingObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFIntegerSettingObservable and conformance CAFIntegerSettingObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFIntegerSettingObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine27CAFIntegerSettingObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t OUTLINED_FUNCTION_10_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{

  return String.init<A>(describing:)();
}

void CAFMultipleSelectImageSetting.indicesUserVisibleValueBridged.getter()
{
  v1 = [v0 indicesUserVisibleValue];
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = specialized Array._getCount()();
  if (!v3)
  {
LABEL_10:

    return;
  }

  v4 = v3;
  v11 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x245D0A790](i, v2);
      }

      else
      {
        v6 = *(v2 + 8 * i + 32);
      }

      v7 = v6;
      v8 = [v6 unsignedCharValue];

      v10 = *(v11 + 16);
      v9 = *(v11 + 24);
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v9 > 1, v10 + 1, 1);
      }

      *(v11 + 16) = v10 + 1;
      *(v11 + v10 + 32) = v8;
    }

    goto LABEL_10;
  }

  __break(1u);
}

void CAFMultipleSelectImageSetting.indicesUserVisibleValueBridged.setter(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = 32;
    do
    {
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedChar_];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v4;
      --v3;
    }

    while (v3);
  }

  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setIndicesUserVisibleValue_];
}

uint64_t CAFMultipleSelectImageSettingObservable.sectionIdentifier.getter()
{
  return CAFMultipleSelectImageSettingObservable.sectionIdentifier.getter();
}

{
  OUTLINED_FUNCTION_4_9();
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable_observed);

  OUTLINED_FUNCTION_232(v2);

  return v3;
}

uint64_t CAFMultipleSelectImageSettingObservable.sortOrder.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4 | (v5 << 8);
}

uint64_t CAFMultipleSelectImageSettingObservable.category.getter()
{
  OUTLINED_FUNCTION_7_4();

  v1 = v0;
  OUTLINED_FUNCTION_231(v1, v2, v3, v4, v5, v6, v7, v8, v10);

  return v11;
}

uint64_t CAFMultipleSelectImageSettingObservable.disabled.getter()
{
  return CAFMultipleSelectImageSettingObservable.disabled.getter();
}

{
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_7_4();

  v1 = v0;
  OUTLINED_FUNCTION_231(v1, v2, v3, v4, v5, v6, v7, v8, v10);

  return v11;
}

uint64_t key path getter for CAFMultipleSelectImageSettingObservable.indicesUserVisibleValue : CAFMultipleSelectImageSettingObservable@<X0>(uint64_t *a2@<X8>)
{
  result = CAFMultipleSelectImageSettingObservable.indicesUserVisibleValue.getter();
  *a2 = result;
  return result;
}

uint64_t CAFMultipleSelectImageSettingObservable.indicesUserVisibleValue.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__indicesUserVisibleValue, v8);
  v7 = *(v0 + OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable_observed);
  swift_retain_n();

  v1 = v7;
  v2 = swift_readAtKeyPath();
  v4 = *v3;

  v2(&v6, 0);

  return v4;
}

uint64_t CAFMultipleSelectImageSettingObservable.indicesUserVisibleValue.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = v10;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA39CAFMultipleSelectImageSettingObservableC_Says5UInt8VGTt3g5(a1, v14, KeyPath, v13, v15, v16, v17, v18, a9, a10);
}

void (*CAFMultipleSelectImageSettingObservable.indicesUserVisibleValue.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[9] = v1;
  v3[10] = swift_getKeyPath();
  v3[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__indicesUserVisibleValue, (v3 + 4));
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable_observed);
  v3[8] = v4;
  swift_retain_n();

  v5 = v4;
  v6 = swift_readAtKeyPath();
  v8 = *v7;

  v6(v3, 0);

  v3[7] = v8;
  return CAFMultipleSelectImageSettingObservable.indicesUserVisibleValue.modify;
}

void CAFMultipleSelectImageSettingObservable.indicesUserVisibleValue.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[7];
  v9 = (*a1)[9];
  v11 = v3[10];
  v10 = v3[11];
  if (a2)
  {

    _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA39CAFMultipleSelectImageSettingObservableC_Says5UInt8VGTt3g5(v12, v9, v11, v10, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA39CAFMultipleSelectImageSettingObservableC_Says5UInt8VGTt3g5(v4, v9, v3[10], v3[11], v5, v6, v7, v8, v17, v18);
  }

  free(v3);
}

uint64_t CAFMultipleSelectImageSettingObservable.$indicesUserVisibleValue.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__indicesUserVisibleValue, v4);

  specialized SafePublished.projectedValue.getter();
  v2 = v1;

  return v2;
}

uint64_t CAFMultipleSelectImageSettingObservable.listUserVisibleValue.getter()
{
  return CAFMultipleSelectImageSettingObservable.listUserVisibleValue.getter();
}

{
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_7_4();

  v1 = v0;
  OUTLINED_FUNCTION_5_9(v1, v2, v3, v4, v5, v6, v7, v8, v10);

  return v11;
}

uint64_t CAFMultipleSelectImageSettingObservable.$userVisibleLabel.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3();
  v4 = a2(v3);

  return v4;
}

uint64_t CAFMultipleSelectImageSettingObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable_observed);
  v2 = 0x73696765726E753CLL;
  v3 = 0xEE003E6465726574;
  if ([v1 registeredForIndicesUserVisibleValue])
  {
    CAFMultipleSelectImageSettingObservable.indicesUserVisibleValue.getter();
    v2 = MEMORY[0x245D0A590]();
    v3 = v4;
  }

  v5 = 0x73696765726E753CLL;
  v6 = 0xEE003E6465726574;
  if ([v1 registeredForListUserVisibleValue])
  {
    CAFMultipleSelectImageSettingObservable.listUserVisibleValue.getter();
    v5 = MEMORY[0x245D0A590]();
    v6 = v7;
  }

  v18 = v5;
  v19 = v2;
  v8 = 0x73696765726E753CLL;
  v9 = 0xEE003E6465726574;
  if ([v1 registeredForImageList])
  {
    CAFMultipleSelectImageSettingObservable.images.getter();
    v8 = MEMORY[0x245D0A590]();
    v9 = v10;
  }

  v11 = [v1 registeredForUserVisibleDetailedDescription];
  v12 = 0x73696765726E753CLL;
  v13 = 0xEE003E6465726574;
  if (v11)
  {
    CAFMultipleSelectImageSettingObservable.userVisibleDetailedDescription.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo33CAFUserVisibleDetailedDescriptionCSgMd, &_sSo33CAFUserVisibleDetailedDescriptionCSgMR);
    v12 = String.init<A>(describing:)();
    v13 = v14;
  }

  if ([v1 registeredForUserVisibleDescription])
  {
    CAFMultipleSelectImageSettingObservable.userVisibleDescription.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    String.init<A>(describing:)();
  }

  _StringGuts.grow(_:)(179);
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  _print_unlocked<A, B>(_:_:)();
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v19, v3);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530](0xD000000000000018);
  MEMORY[0x245D0A530](v18, v6);

  MEMORY[0x245D0A530](0x736567616D69202CLL, 0xEA0000000000203ALL);
  MEMORY[0x245D0A530](v17, v9);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v12, v13);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  v15 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v15);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFMultipleSelectImageSettingObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable_cachedDescription + 8))
  {
    v4 = *(v0 + v1);
  }

  else
  {
    *v3 = CAFMultipleSelectImageSettingObservable._description.getter();
    v3[1] = v5;

    v4 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v4 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFMultipleSelectImageSettingObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__userVisibleLabel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA39CAFMultipleSelectImageSettingObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA39CAFMultipleSelectImageSettingObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v9 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__sectionIdentifier;
  swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA39CAFMultipleSelectImageSettingObservableCSSSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA39CAFMultipleSelectImageSettingObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v10);
  OUTLINED_FUNCTION_0_7();
  *&v2[v9] = specialized SafePublished.init(observedValuekeypath:)();
  v11 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__sortOrder;
  swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA39CAFMultipleSelectImageSettingObservableCs5UInt8VSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA39CAFMultipleSelectImageSettingObservableCs5UInt8VSgGMR);
  OUTLINED_FUNCTION_225(v12);
  v13 = OUTLINED_FUNCTION_0_7();
  *&v2[v11] = specialized SafePublished.init(observedValuekeypath:)(v13);
  v14 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__category;
  swift_getKeyPath();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA39CAFMultipleSelectImageSettingObservableCSo19CAFSettingsCategoryVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA39CAFMultipleSelectImageSettingObservableCSo19CAFSettingsCategoryVGMR);
  OUTLINED_FUNCTION_225(v15);
  v16 = OUTLINED_FUNCTION_0_7();
  *&v2[v14] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v16);
  v17 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__identifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v17] = specialized SafePublished.init(observedValuekeypath:)();
  v18 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__disabled;
  swift_getKeyPath();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA39CAFMultipleSelectImageSettingObservableCSbSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA39CAFMultipleSelectImageSettingObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v19);
  OUTLINED_FUNCTION_0_7();
  *&v2[v18] = specialized SafePublished.init(observedValuekeypath:)();
  v20 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__limitableUIElement;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_0_7();
  *&v2[v20] = specialized SafePublished.init(observedValuekeypath:)();
  v21 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__hidden;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_0_7();
  *&v2[v21] = specialized SafePublished.init(observedValuekeypath:)();
  v22 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__showAudioBrandLogo;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_0_7();
  *&v2[v22] = specialized SafePublished.init(observedValuekeypath:)();
  v23 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__vehicleLayoutKey;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v23] = specialized SafePublished.init(observedValuekeypath:)();
  v24 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__symbolName;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v24] = specialized SafePublished.init(observedValuekeypath:)();
  v25 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__prominenceInfo;
  swift_getKeyPath();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA39CAFMultipleSelectImageSettingObservableCSo24CAFProminenceInformationCSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA39CAFMultipleSelectImageSettingObservableCSo24CAFProminenceInformationCSgGMR);
  OUTLINED_FUNCTION_225(v26);
  OUTLINED_FUNCTION_0_7();
  *&v2[v25] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v27 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__indicesUserVisibleValue;
  swift_getKeyPath();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA39CAFMultipleSelectImageSettingObservableCSays5UInt8VGGMd, _s10CAFCombine13SafePublishedCyAA39CAFMultipleSelectImageSettingObservableCSays5UInt8VGGMR);
  OUTLINED_FUNCTION_225(v28);
  OUTLINED_FUNCTION_0_7();
  *&v2[v27] = specialized SafePublished.init(observedValuekeypath:)();
  v29 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__listUserVisibleValue;
  swift_getKeyPath();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA39CAFMultipleSelectImageSettingObservableCSaySSGGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA39CAFMultipleSelectImageSettingObservableCSaySSGGMR);
  OUTLINED_FUNCTION_225(v30);
  OUTLINED_FUNCTION_0_7();
  *&v2[v29] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v31 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__images;
  swift_getKeyPath();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA39CAFMultipleSelectImageSettingObservableCSay10Foundation4DataVGGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA39CAFMultipleSelectImageSettingObservableCSay10Foundation4DataVGGMR);
  OUTLINED_FUNCTION_225(v32);
  OUTLINED_FUNCTION_0_7();
  *&v2[v31] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v33 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__userVisibleDetailedDescription;
  swift_getKeyPath();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA39CAFMultipleSelectImageSettingObservableCSo33CAFUserVisibleDetailedDescriptionCSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA39CAFMultipleSelectImageSettingObservableCSo33CAFUserVisibleDetailedDescriptionCSgGMR);
  OUTLINED_FUNCTION_225(v34);
  OUTLINED_FUNCTION_0_7();
  *&v2[v33] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v35 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__userVisibleDescription;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v35] = specialized SafePublished.init(observedValuekeypath:)();
  v36 = OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v36] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable_observed] = a1;
  v40.receiver = v2;
  v40.super_class = type metadata accessor for CAFMultipleSelectImageSettingObservable();
  v37 = a1;
  v38 = objc_msgSendSuper2(&v40, sel_init);
  [v37 registerObserver_];

  return v38;
}

uint64_t CAFMultipleSelectImageSettingObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFMultipleSelectImageSettingObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFMultipleSelectImageSettingObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFMultipleSelectImageSettingObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFMultipleSelectImageSettingObservable@<X0>(void *a1@<X8>)
{
  result = CAFMultipleSelectImageSettingObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFMultipleSelectImageSettingObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFMultipleSelectImageSettingObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFMultipleSelectImageSettingObservable.automakerSettingService(_:didUpdateSortOrder:)(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFMultipleSelectImageSettingObservable.automakerSettingService(_:didUpdateCategory:)(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2);
}

double @objc CAFMultipleSelectImageSettingObservable.automakerSettingService(_:didUpdateUserVisibleLabel:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFMultipleSelectImageSettingObservable.automakerSettingService(_:didUpdateDisabled:)(uint64_t a1, char a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2 & 1);
}

double @objc CAFMultipleSelectImageSettingObservable.automakerSettingService(_:didUpdateSectionIdentifier:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
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

void CAFMultipleSelectImageSettingObservable.multipleSelectImageSettingService(_:didUpdateIndicesUserVisibleValue:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_234(v2 + OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable__indicesUserVisibleValue, v15);
  v4 = specialized Array._getCount()();
  if (!v4)
  {

LABEL_12:

    specialized SafePublished.value.setter(v13);

    return;
  }

  v5 = v4;
  v14 = MEMORY[0x277D84F90];
  v6 = v4 & ~(v4 >> 63);

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    for (i = 0; i != v5; ++i)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x245D0A790](i, a2);
      }

      else
      {
        v8 = *(a2 + 8 * i + 32);
      }

      v9 = v8;
      v10 = [v8 unsignedCharValue];

      v12 = *(v14 + 16);
      v11 = *(v14 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v11 > 1, v12 + 1, 1);
      }

      *(v14 + 16) = v12 + 1;
      *(v14 + v12 + 32) = v10;
    }

    goto LABEL_12;
  }

  __break(1u);
}