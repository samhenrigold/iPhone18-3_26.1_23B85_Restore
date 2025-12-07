id CAFBluetoothStatusObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine28CAFBluetoothStatusObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFBluetoothStatusObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine28CAFBluetoothStatusObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine28CAFBluetoothStatusObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFBluetoothStatusObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFBluetoothStatusObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine28CAFBluetoothStatusObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine28CAFBluetoothStatusObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine28CAFBluetoothStatusObservable__moduleStatus;
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFBluetoothStatusObservableCSo09CAFModuleG0VGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFBluetoothStatusObservableCSo09CAFModuleG0VGMR);
  swift_allocObject();
  *&v2[v7] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(KeyPath);
  v9 = OBJC_IVAR____TtC10CAFCombine28CAFBluetoothStatusObservable__contentURLAction;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFBluetoothStatusObservableCSSSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFBluetoothStatusObservableCSSSgGMR);
  swift_allocObject();
  *&v2[v9] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine28CAFBluetoothStatusObservable_observed] = a1;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for CAFBluetoothStatusObservable();
  v10 = a1;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  [v10 registerObserver_];

  return v11;
}

uint64_t CAFBluetoothStatusObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFBluetoothStatusObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFBluetoothStatusObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine28CAFBluetoothStatusObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFBluetoothStatusObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFBluetoothStatusObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFBluetoothStatusObservable@<X0>(void *a1@<X8>)
{
  result = CAFBluetoothStatusObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFBluetoothStatusObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFBluetoothStatusObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFBluetoothStatusObservable.bluetoothStatusService(_:didUpdateModuleStatus:)(uint64_t a1, unsigned __int8 a2)
{

  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFBluetoothStatusObservable.bluetoothStatusService(_:didUpdateContentURLAction:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  specialized SafeReadOnlyPublished.value.setter(a2, a3);
}

uint64_t CAFBluetoothStatusObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFBluetoothStatusObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFBluetoothStatusObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFBluetoothStatus()
{
  result = lazy cache variable for type metadata for CAFBluetoothStatus;
  if (!lazy cache variable for type metadata for CAFBluetoothStatus)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFBluetoothStatus);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFBluetoothStatusObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFBluetoothStatusObservable and conformance CAFBluetoothStatusObservable(&lazy protocol witness table cache variable for type CAFBluetoothStatusObservable and conformance CAFBluetoothStatusObservable, a2, type metadata accessor for CAFBluetoothStatusObservable, &protocol conformance descriptor for CAFBluetoothStatusObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFBluetoothStatusObservable and conformance CAFBluetoothStatusObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFBluetoothStatusObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine28CAFBluetoothStatusObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFCellularStatus.cellularTypeBridged.getter()
{
  v1 = [v0 hasCellularType];
  v2 = v1;
  if (v1)
  {
    v1 = [v0 cellularType];
  }

  return v1 | ((v2 ^ 1) << 8);
}

uint64_t CAFCellularStatusObservable.moduleStatus.getter()
{
  OUTLINED_FUNCTION_228();
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable_observed);

  v2 = v1;
  OUTLINED_FUNCTION_231(v2, v3, v4, v5, v6, v7, v8, v9, v1);

  return v11;
}

uint64_t CAFCellularStatusObservable.signalBars.getter()
{
  OUTLINED_FUNCTION_228();
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable_observed);

  v2 = v1;
  OUTLINED_FUNCTION_231(v2, v3, v4, v5, v6, v7, v8, v9, v1);

  return v11;
}

uint64_t CAFCellularStatusObservable.cellularType.getter()
{
  OUTLINED_FUNCTION_228();
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4 | (v5 << 8);
}

uint64_t CAFCellularStatusObservable.contentURLAction.getter()
{
  OUTLINED_FUNCTION_228();
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFCellularStatusObservable.$moduleStatus.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

id CAFCellularStatusObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable_observed);
  v4 = 0x73696765726E753CLL;
  v5 = 0xEE003E6465726574;
  if ([v3 registeredForModuleStatus])
  {
    CAFCellularStatusObservable.moduleStatus.getter();
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

  v9 = [v3 registeredForSignalBars];
  v10 = 0x73696765726E753CLL;
  v11 = 0xEE003E6465726574;
  if (v9)
  {
    CAFCellularStatusObservable.signalBars.getter();
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v12;
  }

  v13 = 0x73696765726E753CLL;
  v14 = 0xEE003E6465726574;
  if ([v3 registeredForCellularType])
  {
    CAFCellularStatusObservable.cellularType.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CAFCellularTypeVSgMd, &_sSo15CAFCellularTypeVSgMR);
    v13 = String.init<A>(describing:)();
    v14 = v15;
  }

  if ([v3 registeredForContentURLAction])
  {
    CAFCellularStatusObservable.contentURLAction.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v2 = String.init<A>(describing:)();
    v1 = v16;
  }

  _StringGuts.grow(_:)(110);
  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  _print_unlocked<A, B>(_:_:)();
  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v18, v5);

  MEMORY[0x245D0A530](0x6C616E676973202CLL, 0xEE00203A73726142);
  MEMORY[0x245D0A530](v10, v11);

  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530](0xD000000000000010);
  MEMORY[0x245D0A530](v13, v14);

  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

id CAFCellularStatusObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFCellularStatusObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFCellularStatusObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable__moduleStatus;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFCellularStatusObservableCSo09CAFModuleG0VGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFCellularStatusObservableCSo09CAFModuleG0VGMR);
  OUTLINED_FUNCTION_225(v8);
  v9 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v9);
  v10 = OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable__signalBars;
  swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFCellularStatusObservableCs5UInt8VGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFCellularStatusObservableCs5UInt8VGMR);
  OUTLINED_FUNCTION_225(v11);
  v12 = OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)(v12);
  v13 = OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable__cellularType;
  swift_getKeyPath();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFCellularStatusObservableCSo0F4TypeVSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFCellularStatusObservableCSo0F4TypeVSgGMR);
  OUTLINED_FUNCTION_225(v14);
  v15 = OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v15, v16, v17, v18, v19, v20, v21, v22, v29.receiver, v29.super_class, v30, v31, v32, v33, vars0, vars8);
  *&v2[v13] = v23;
  v24 = OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable__contentURLAction;
  swift_getKeyPath();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFCellularStatusObservableCSSSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFCellularStatusObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v25);
  OUTLINED_FUNCTION_0_7();
  *&v2[v24] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable_observed] = a1;
  v29.receiver = v2;
  v29.super_class = type metadata accessor for CAFCellularStatusObservable();
  v26 = a1;
  v27 = objc_msgSendSuper2(&v29, sel_init);
  [v26 registerObserver_];

  return v27;
}

uint64_t CAFCellularStatusObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFCellularStatusObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFCellularStatusObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFCellularStatusObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFCellularStatusObservable@<X0>(void *a1@<X8>)
{
  result = CAFCellularStatusObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFCellularStatusObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFCellularStatusObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFCellularStatusObservable.cellularStatusService(_:didUpdateModuleStatus:)(uint64_t a1, unsigned __int8 a2, void *a3, void (*a4)(void))
{

  a4(a2);
}

uint64_t CAFCellularStatusObservable.cellularStatusService(_:didUpdateCellularType:)(uint64_t a1, unsigned __int8 a2)
{

  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFCellularStatusObservable.cellularStatusService(_:didUpdateContentURLAction:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  specialized SafeReadOnlyPublished.value.setter(a2, a3);
}

uint64_t CAFCellularStatusObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFCellularStatusObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFCellularStatusObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t key path getter for CAFCellularStatus.cellularTypeBridged : CAFCellularStatus@<X0>(_BYTE *a1@<X8>)
{
  result = CAFCellularStatus.cellularTypeBridged.getter();
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

unint64_t type metadata accessor for CAFCellularStatus()
{
  result = lazy cache variable for type metadata for CAFCellularStatus;
  if (!lazy cache variable for type metadata for CAFCellularStatus)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFCellularStatus);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFCellularStatusObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFCellularStatusObservable and conformance CAFCellularStatusObservable(&lazy protocol witness table cache variable for type CAFCellularStatusObservable and conformance CAFCellularStatusObservable, a2, type metadata accessor for CAFCellularStatusObservable, &protocol conformance descriptor for CAFCellularStatusObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFCellularStatusObservable and conformance CAFCellularStatusObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFCellularStatusObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine27CAFCellularStatusObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFCurrentUserStatusObservable.image.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine30CAFCurrentUserStatusObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFCurrentUserStatusObservable.hidden.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine30CAFCurrentUserStatusObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFCurrentUserStatusObservable.$image.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t CAFCurrentUserStatusObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine30CAFCurrentUserStatusObservable_observed);
  v2 = [v1 registeredForImage];
  v3 = 0x73696765726E753CLL;
  v4 = 0xEE003E6465726574;
  if (v2)
  {
    CAFCurrentUserStatusObservable.image.getter();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, _s10Foundation4DataVSgMR);
    v3 = OUTLINED_FUNCTION_4_14(v5, v6, v7);
    v4 = v8;
  }

  v9 = 0x73696765726E753CLL;
  v10 = 0xEE003E6465726574;
  if ([v1 registeredForUserVisibleLabel])
  {
    CAFCurrentUserStatusObservable.userVisibleLabel.getter();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v9 = OUTLINED_FUNCTION_4_14(v11, v12, v13);
    v10 = v14;
  }

  v15 = 0x73696765726E753CLL;
  v16 = 0xEE003E6465726574;
  if ([v1 registeredForContentURLAction])
  {
    CAFCurrentUserStatusObservable.contentURLAction.getter();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v15 = OUTLINED_FUNCTION_4_14(v17, v18, v19);
    v16 = v20;
  }

  if ([v1 registeredForHidden])
  {
    CAFCurrentUserStatusObservable.hidden.getter();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    OUTLINED_FUNCTION_4_14(v21, v22, v23);
  }

  _StringGuts.grow(_:)(106);
  MEMORY[0x245D0A530](0xD000000000000021, 0x80000002423105C0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x6567616D69207B20, 0xEA0000000000203ALL);
  MEMORY[0x245D0A530](v26, v4);

  OUTLINED_FUNCTION_3_23();
  MEMORY[0x245D0A530](v9, v10);

  OUTLINED_FUNCTION_3_23();
  MEMORY[0x245D0A530](v15, v16);

  MEMORY[0x245D0A530](0x6E6564646968202CLL, 0xEA0000000000203ALL);
  v24 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v24);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFCurrentUserStatusObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine30CAFCurrentUserStatusObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine30CAFCurrentUserStatusObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine30CAFCurrentUserStatusObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine30CAFCurrentUserStatusObservable_cachedDescription + 8))
  {
    v4 = *(v0 + v1);
  }

  else
  {
    *v3 = CAFCurrentUserStatusObservable._description.getter();
    v3[1] = v5;

    v4 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v4 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFCurrentUserStatusObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine30CAFCurrentUserStatusObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine30CAFCurrentUserStatusObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine30CAFCurrentUserStatusObservable__image;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA30CAFCurrentUserStatusObservableC10Foundation4DataVSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA30CAFCurrentUserStatusObservableC10Foundation4DataVSgGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v8 = OBJC_IVAR____TtC10CAFCombine30CAFCurrentUserStatusObservable__userVisibleLabel;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA30CAFCurrentUserStatusObservableCSSSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA30CAFCurrentUserStatusObservableCSSSgGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v8] = specialized SafePublished.init(observedValuekeypath:)();
  v9 = OBJC_IVAR____TtC10CAFCombine30CAFCurrentUserStatusObservable__contentURLAction;
  swift_getKeyPath();
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v9] = specialized SafePublished.init(observedValuekeypath:)();
  v10 = OBJC_IVAR____TtC10CAFCombine30CAFCurrentUserStatusObservable__hidden;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA30CAFCurrentUserStatusObservableCSbSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA30CAFCurrentUserStatusObservableCSbSgGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine30CAFCurrentUserStatusObservable_observed] = a1;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for CAFCurrentUserStatusObservable();
  v11 = a1;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  [v11 registerObserver_];

  return v12;
}

uint64_t CAFCurrentUserStatusObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine30CAFCurrentUserStatusObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFCurrentUserStatusObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine30CAFCurrentUserStatusObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFCurrentUserStatusObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFCurrentUserStatusObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFCurrentUserStatusObservable@<X0>(void *a1@<X8>)
{
  result = CAFCurrentUserStatusObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFCurrentUserStatusObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFCurrentUserStatusObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFCurrentUserStatusObservable.currentUserStatusService(_:didUpdateImage:)()
{

  v0 = OUTLINED_FUNCTION_197();
  outlined copy of Data?(v0, v1);
  v2 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v2, v3);
}

uint64_t CAFCurrentUserStatusObservable.currentUserStatusService(_:didUpdateUserVisibleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  v4 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v4, v5);
}

double @objc CAFCurrentUserStatusObservable.currentUserStatusService(_:didUpdateUserVisibleLabel:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
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

uint64_t CAFCurrentUserStatusObservable.currentUserStatusService(_:didUpdateHidden:)(uint64_t a1, char a2)
{

  specialized SafeReadOnlyPublished.value.setter(a2 & 1);
}

uint64_t CAFCurrentUserStatusObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFCurrentUserStatusObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFCurrentUserStatusObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFCurrentUserStatus.image : CAFCurrentUserStatus(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 image];
  if (v3)
  {
    v4 = v3;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

unint64_t type metadata accessor for CAFCurrentUserStatus()
{
  result = lazy cache variable for type metadata for CAFCurrentUserStatus;
  if (!lazy cache variable for type metadata for CAFCurrentUserStatus)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFCurrentUserStatus);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFCurrentUserStatusObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFCurrentUserStatusObservable and conformance CAFCurrentUserStatusObservable(&lazy protocol witness table cache variable for type CAFCurrentUserStatusObservable and conformance CAFCurrentUserStatusObservable, a2, type metadata accessor for CAFCurrentUserStatusObservable, &protocol conformance descriptor for CAFCurrentUserStatusObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFCurrentUserStatusObservable and conformance CAFCurrentUserStatusObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

double partial apply for closure #1 in CAFCurrentUserStatusObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine30CAFCurrentUserStatusObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

void OUTLINED_FUNCTION_3_23()
{

  JUMPOUT(0x245D0A530);
}

uint64_t CAFDeepLinkStatusItemObservable.identifier.getter()
{
  return CAFDeepLinkStatusItemObservable.identifier.getter();
}

{
  OUTLINED_FUNCTION_228();
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable_observed);

  OUTLINED_FUNCTION_232(v2);

  return v3;
}

uint64_t CAFDeepLinkStatusItemObservable.userVisibleLabel.getter()
{
  OUTLINED_FUNCTION_228();
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable_observed);

  OUTLINED_FUNCTION_232(v2);

  return v3;
}

uint64_t CAFDeepLinkStatusItemObservable.sortOrder.getter()
{
  OUTLINED_FUNCTION_228();
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable_observed);

  v2 = v1;
  OUTLINED_FUNCTION_231(v2, v3, v4, v5, v6, v7, v8, v9, v1);

  return v11;
}

uint64_t CAFDeepLinkStatusItemObservable.disabled.getter()
{
  return CAFDeepLinkStatusItemObservable.disabled.getter();
}

{
  OUTLINED_FUNCTION_228();
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable_observed);

  v2 = v1;
  OUTLINED_FUNCTION_231(v2, v3, v4, v5, v6, v7, v8, v9, v1);

  return v11;
}

uint64_t CAFDeepLinkStatusItemObservable.$identifier.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3();
  v4 = a2(v3);

  return v4;
}

uint64_t CAFDeepLinkStatusItemObservable._description.getter()
{
  if ([*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable_observed) registeredForContentURLAction])
  {
    CAFDeepLinkStatusItemObservable.contentURLAction.getter();
  }

  _StringGuts.grow(_:)(62);
  MEMORY[0x245D0A530](0xD000000000000022, 0x8000000242310660);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000015, 0x8000000242310690);
  v1 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFDeepLinkStatusItemObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable_cachedDescription + 8))
  {
    v4 = *(v0 + v1);
  }

  else
  {
    *v3 = CAFDeepLinkStatusItemObservable._description.getter();
    v3[1] = v5;

    v4 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v4 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFDeepLinkStatusItemObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable__identifier;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFDeepLinkStatusItemObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFDeepLinkStatusItemObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v9 = OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable__userVisibleLabel;
  swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFDeepLinkStatusItemObservableCSSSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFDeepLinkStatusItemObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v10);
  OUTLINED_FUNCTION_0_7();
  *&v2[v9] = specialized SafePublished.init(observedValuekeypath:)();
  v11 = OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable__symbolName;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v11] = specialized SafePublished.init(observedValuekeypath:)();
  v12 = OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable__sortOrder;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFDeepLinkStatusItemObservableCs5UInt8VGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFDeepLinkStatusItemObservableCs5UInt8VGMR);
  OUTLINED_FUNCTION_225(v13);
  v14 = OUTLINED_FUNCTION_0_7();
  *&v2[v12] = specialized SafePublished.init(observedValuekeypath:)(v14);
  v15 = OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable__disabled;
  swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFDeepLinkStatusItemObservableCSbSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFDeepLinkStatusItemObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v16);
  OUTLINED_FUNCTION_0_7();
  *&v2[v15] = specialized SafePublished.init(observedValuekeypath:)();
  v17 = OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable__hidden;
  swift_getKeyPath();
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v17] = specialized SafePublished.init(observedValuekeypath:)();
  v18 = OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable__contentURLAction;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v18] = specialized SafePublished.init(observedValuekeypath:)();
  v19 = OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v19] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable_observed] = a1;
  v23.receiver = v2;
  v23.super_class = type metadata accessor for CAFDeepLinkStatusItemObservable();
  v20 = a1;
  v21 = objc_msgSendSuper2(&v23, sel_init);
  [v20 registerObserver_];

  return v21;
}

uint64_t CAFDeepLinkStatusItemObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFDeepLinkStatusItemObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFDeepLinkStatusItemObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFDeepLinkStatusItemObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFDeepLinkStatusItemObservable@<X0>(void *a1@<X8>)
{
  result = CAFDeepLinkStatusItemObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFDeepLinkStatusItemObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFDeepLinkStatusItemObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFDeepLinkStatusItemObservable.automakerStatusItemService(_:didUpdateUserVisibleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v3, v4);
}

double @objc CAFDeepLinkStatusItemObservable.automakerStatusItemService(_:didUpdateIdentifier:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFDeepLinkStatusItemObservable.automakerStatusItemService(_:didUpdateSortOrder:)(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFDeepLinkStatusItemObservable.automakerStatusItemService(_:didUpdateDisabled:)(uint64_t a1, char a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2 & 1);
}

uint64_t CAFDeepLinkStatusItemObservable.automakerStatusItemService(_:didUpdateIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3();

  v4 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v4, v5);
}

uint64_t CAFDeepLinkStatusItemObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFDeepLinkStatusItemObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFDeepLinkStatusItemObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFDeepLinkStatusItem()
{
  result = lazy cache variable for type metadata for CAFDeepLinkStatusItem;
  if (!lazy cache variable for type metadata for CAFDeepLinkStatusItem)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFDeepLinkStatusItem);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFDeepLinkStatusItemObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFDeepLinkStatusItemObservable and conformance CAFDeepLinkStatusItemObservable(&lazy protocol witness table cache variable for type CAFDeepLinkStatusItemObservable and conformance CAFDeepLinkStatusItemObservable, a2, type metadata accessor for CAFDeepLinkStatusItemObservable, &protocol conformance descriptor for CAFDeepLinkStatusItemObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFDeepLinkStatusItemObservable and conformance CAFDeepLinkStatusItemObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFDeepLinkStatusItemObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine31CAFDeepLinkStatusItemObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFStatusItemObservable.identifier.getter()
{
  return CAFStatusItemObservable.identifier.getter();
}

{
  OUTLINED_FUNCTION_228();
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable_observed);

  OUTLINED_FUNCTION_232(v2);

  return v3;
}

uint64_t CAFStatusItemObservable.userVisibleLabel.getter()
{
  OUTLINED_FUNCTION_228();
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable_observed);

  OUTLINED_FUNCTION_232(v2);

  return v3;
}

uint64_t CAFStatusItemObservable.sortOrder.getter()
{
  OUTLINED_FUNCTION_228();
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable_observed);

  v2 = v1;
  OUTLINED_FUNCTION_231(v2, v3, v4, v5, v6, v7, v8, v9, v1);

  return v11;
}

uint64_t CAFStatusItemObservable.disabled.getter()
{
  return CAFStatusItemObservable.disabled.getter();
}

{
  OUTLINED_FUNCTION_228();
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable_observed);

  v2 = v1;
  OUTLINED_FUNCTION_231(v2, v3, v4, v5, v6, v7, v8, v9, v1);

  return v11;
}

uint64_t CAFStatusItemObservable.$identifier.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3();
  v4 = a2(v3);

  return v4;
}

uint64_t CAFStatusItemObservable._description.getter()
{
  _StringGuts.grow(_:)(34);
  MEMORY[0x245D0A530](0xD00000000000001ALL, 0x8000000242310710);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x3E7D20207B20, 0xE600000000000000);
  return 0;
}

uint64_t CAFStatusItemObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFStatusItemObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFStatusItemObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable__identifier;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFStatusItemObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFStatusItemObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v9 = OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable__userVisibleLabel;
  swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFStatusItemObservableCSSSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFStatusItemObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v10);
  OUTLINED_FUNCTION_0_7();
  *&v2[v9] = specialized SafePublished.init(observedValuekeypath:)();
  v11 = OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable__symbolName;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v11] = specialized SafePublished.init(observedValuekeypath:)();
  v12 = OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable__sortOrder;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFStatusItemObservableCs5UInt8VGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFStatusItemObservableCs5UInt8VGMR);
  OUTLINED_FUNCTION_225(v13);
  v14 = OUTLINED_FUNCTION_0_7();
  *&v2[v12] = specialized SafePublished.init(observedValuekeypath:)(v14);
  v15 = OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable__disabled;
  swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFStatusItemObservableCSbSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFStatusItemObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v16);
  OUTLINED_FUNCTION_0_7();
  *&v2[v15] = specialized SafePublished.init(observedValuekeypath:)();
  v17 = OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable__hidden;
  swift_getKeyPath();
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v17] = specialized SafePublished.init(observedValuekeypath:)();
  v18 = OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v18] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable_observed] = a1;
  v22.receiver = v2;
  v22.super_class = type metadata accessor for CAFStatusItemObservable();
  v19 = a1;
  v20 = objc_msgSendSuper2(&v22, sel_init);
  [v19 registerObserver_];

  return v20;
}

uint64_t CAFStatusItemObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFStatusItemObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFStatusItemObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFStatusItemObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFStatusItemObservable@<X0>(void *a1@<X8>)
{
  result = CAFStatusItemObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFStatusItemObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFStatusItemObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFStatusItemObservable.automakerStatusItemService(_:didUpdateUserVisibleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  specialized SafeReadOnlyPublished.value.setter(a2, a3);
}

double @objc CAFStatusItemObservable.automakerStatusItemService(_:didUpdateIdentifier:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFStatusItemObservable.automakerStatusItemService(_:didUpdateSortOrder:)(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFStatusItemObservable.automakerStatusItemService(_:didUpdateDisabled:)(uint64_t a1, char a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2 & 1);
}

uint64_t CAFStatusItemObservable.automakerStatusItemService(_:didUpdateIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3();

  specialized SafeReadOnlyPublished.value.setter(a2, a3);
}

uint64_t CAFStatusItemObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFStatusItemObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFStatusItemObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFStatusItem()
{
  result = lazy cache variable for type metadata for CAFStatusItem;
  if (!lazy cache variable for type metadata for CAFStatusItem)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFStatusItem);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFStatusItemObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFStatusItemObservable and conformance CAFStatusItemObservable(&lazy protocol witness table cache variable for type CAFStatusItemObservable and conformance CAFStatusItemObservable, a2, type metadata accessor for CAFStatusItemObservable, &protocol conformance descriptor for CAFStatusItemObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFStatusItemObservable and conformance CAFStatusItemObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFStatusItemObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine23CAFStatusItemObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFWiFiStatusObservable.moduleStatus.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine23CAFWiFiStatusObservable_observed);

  v2 = v1;
  OUTLINED_FUNCTION_231(v2, v3, v4, v5, v6, v7, v8, v9, v1);

  return v11;
}

uint64_t CAFWiFiStatusObservable.signalBars.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine23CAFWiFiStatusObservable_observed);

  v2 = v1;
  OUTLINED_FUNCTION_231(v2, v3, v4, v5, v6, v7, v8, v9, v1);

  return v11;
}

uint64_t CAFWiFiStatusObservable.contentURLAction.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine23CAFWiFiStatusObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFWiFiStatusObservable.$moduleStatus.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

id CAFWiFiStatusObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine23CAFWiFiStatusObservable_observed);
  v4 = 0x73696765726E753CLL;
  v5 = 0xEE003E6465726574;
  if ([v3 registeredForModuleStatus])
  {
    CAFWiFiStatusObservable.moduleStatus.getter();
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

  v9 = 0x73696765726E753CLL;
  v10 = 0xEE003E6465726574;
  if ([v3 registeredForSignalBars])
  {
    CAFWiFiStatusObservable.signalBars.getter();
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v11;
  }

  if ([v3 registeredForContentURLAction])
  {
    CAFWiFiStatusObservable.contentURLAction.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v2 = String.init<A>(describing:)();
    v1 = v12;
  }

  _StringGuts.grow(_:)(88);
  MEMORY[0x245D0A530](0xD00000000000001ALL, 0x8000000242310790);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000011, 0x8000000242310470);
  MEMORY[0x245D0A530](v4, v5);

  MEMORY[0x245D0A530](0x6C616E676973202CLL, 0xEE00203A73726142);
  MEMORY[0x245D0A530](v9, v10);

  MEMORY[0x245D0A530](0xD000000000000014, 0x800000024230BA40);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

id CAFWiFiStatusObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine23CAFWiFiStatusObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine23CAFWiFiStatusObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine23CAFWiFiStatusObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine23CAFWiFiStatusObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFWiFiStatusObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFWiFiStatusObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine23CAFWiFiStatusObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine23CAFWiFiStatusObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine23CAFWiFiStatusObservable__moduleStatus;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFWiFiStatusObservableCSo09CAFModuleH0VGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFWiFiStatusObservableCSo09CAFModuleH0VGMR);
  swift_allocObject();
  v8 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v8);
  v9 = OBJC_IVAR____TtC10CAFCombine23CAFWiFiStatusObservable__signalBars;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFWiFiStatusObservableCs5UInt8VGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFWiFiStatusObservableCs5UInt8VGMR);
  swift_allocObject();
  v10 = OUTLINED_FUNCTION_0_7();
  *&v2[v9] = specialized SafePublished.init(observedValuekeypath:)(v10);
  v11 = OBJC_IVAR____TtC10CAFCombine23CAFWiFiStatusObservable__contentURLAction;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFWiFiStatusObservableCSSSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA23CAFWiFiStatusObservableCSSSgGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v11] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine23CAFWiFiStatusObservable_observed] = a1;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for CAFWiFiStatusObservable();
  v12 = a1;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  [v12 registerObserver_];

  return v13;
}

uint64_t CAFWiFiStatusObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine23CAFWiFiStatusObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFWiFiStatusObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine23CAFWiFiStatusObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFWiFiStatusObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFWiFiStatusObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFWiFiStatusObservable@<X0>(void *a1@<X8>)
{
  result = CAFWiFiStatusObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFWiFiStatusObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFWiFiStatusObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFWiFiStatusObservable.wiFiStatusService(_:didUpdateModuleStatus:)(uint64_t a1, unsigned __int8 a2, void *a3, void (*a4)(void))
{

  a4(a2);
}

uint64_t CAFWiFiStatusObservable.wiFiStatusService(_:didUpdateContentURLAction:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  specialized SafeReadOnlyPublished.value.setter(a2, a3);
}

uint64_t CAFWiFiStatusObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFWiFiStatusObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFWiFiStatusObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFWiFiStatus()
{
  result = lazy cache variable for type metadata for CAFWiFiStatus;
  if (!lazy cache variable for type metadata for CAFWiFiStatus)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFWiFiStatus);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFWiFiStatusObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFWiFiStatusObservable and conformance CAFWiFiStatusObservable(&lazy protocol witness table cache variable for type CAFWiFiStatusObservable and conformance CAFWiFiStatusObservable, a2, type metadata accessor for CAFWiFiStatusObservable, &protocol conformance descriptor for CAFWiFiStatusObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFWiFiStatusObservable and conformance CAFWiFiStatusObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFWiFiStatusObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine23CAFWiFiStatusObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t key path getter for CAFProtocolPerfTestObservable.testInt16 : CAFProtocolPerfTestObservable@<X0>(_WORD *a1@<X8>)
{
  result = CAFProtocolPerfTestObservable.testInt16.getter();
  *a1 = result;
  return result;
}

uint64_t CAFProtocolPerfTestObservable.testInt16.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable__testInt16, v8);
  v7 = *(v0 + OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable_observed);

  v1 = v7;
  v2 = swift_readAtKeyPath();
  v4 = *v3;
  v2(&v6, 0);

  return v4;
}

uint64_t CAFProtocolPerfTestObservable.testInt16.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = v10;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA29CAFProtocolPerfTestObservableC_s5Int16VTt3g5(a1, v14, KeyPath, v13, v15, v16, v17, v18, a9, a10);
}

void (*CAFProtocolPerfTestObservable.testInt16.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable__testInt16, (v3 + 4));
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable_observed);
  v3[7] = v4;

  v5 = v4;
  v6 = OUTLINED_FUNCTION_2_5();
  v8 = *v7;
  v6(v3, 0);

  *(v3 + 44) = v8;
  return CAFProtocolPerfTestObservable.testInt16.modify;
}

void CAFProtocolPerfTestObservable.testInt16.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 72);
  v2 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 64);
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA29CAFProtocolPerfTestObservableC_s5Int16VTt3g5(v4, v5, v3, v2, v6, v7, v8, v9, v10, v11);

  free(v1);
}

uint64_t CAFProtocolPerfTestObservable.testInt32.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFProtocolPerfTestObservable.testUInt16.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t key path getter for CAFProtocolPerfTestObservable.testString2 : CAFProtocolPerfTestObservable@<X0>(uint64_t *a1@<X8>)
{
  result = CAFProtocolPerfTestObservable.testString2.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t key path setter for CAFProtocolPerfTestObservable.testString2 : CAFProtocolPerfTestObservable(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return CAFProtocolPerfTestObservable.testString2.setter(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
}

uint64_t CAFProtocolPerfTestObservable.testString2.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable__testString2, v8);
  v7 = *(v0 + OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable_observed);
  swift_retain_n();

  v1 = v7;
  v2 = swift_readAtKeyPath();
  v4 = *v3;

  v2(&v6, 0);

  return v4;
}

uint64_t CAFProtocolPerfTestObservable.testString2.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  KeyPath = swift_getKeyPath();
  v12 = swift_getKeyPath();
  v13 = v10;
  v14 = OUTLINED_FUNCTION_197();

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA29CAFProtocolPerfTestObservableC_SSTt3g5(v14, v15, v16, KeyPath, v12, v17, v18, v19, a9, a10);
}

void (*CAFProtocolPerfTestObservable.testString2.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x68uLL);
  *a1 = v3;
  v3[10] = v1;
  v3[11] = swift_getKeyPath();
  v3[12] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable__testString2, (v3 + 4));
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable_observed);
  v3[9] = v4;
  swift_retain_n();

  v5 = v4;
  v6 = OUTLINED_FUNCTION_2_5();
  v9 = *v7;
  v8 = v7[1];

  v6(v3, 0);

  v3[7] = v9;
  v3[8] = v8;
  return CAFProtocolPerfTestObservable.testString2.modify;
}

void CAFProtocolPerfTestObservable.testString2.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 80);
  if (a2)
  {

    OUTLINED_FUNCTION_6_9(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    OUTLINED_FUNCTION_6_9(v4, v5, v6, v7, v8, v9, v10, v11, v20, v21);
  }

  free(v3);
}

uint64_t CAFProtocolPerfTestObservable.$testInt16.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_234(v2 + *a1, v7);

  v5 = a2(v4);

  return v5;
}

uint64_t CAFProtocolPerfTestObservable.testString.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFProtocolPerfTestObservable.$testInt32.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3();
  v4 = a2(v3);

  return v4;
}

uint64_t CAFProtocolPerfTestObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable_observed);
  v2 = [v1 registeredForTestInt32];
  v3 = 0x73696765726E753CLL;
  v4 = 0xEE003E6465726574;
  if (v2)
  {
    CAFProtocolPerfTestObservable.testInt32.getter();
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    v4 = v5;
  }

  v28 = v3;
  v6 = [v1 registeredForTestInt16];
  v7 = 0x73696765726E753CLL;
  v8 = 0xEE003E6465726574;
  if (v6)
  {
    CAFProtocolPerfTestObservable.testInt16.getter();
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = v9;
  }

  v27 = v7;
  v10 = [v1 registeredForTestUInt32];
  v11 = 0x73696765726E753CLL;
  v12 = 0xEE003E6465726574;
  if (v10)
  {
    CAFProtocolPerfTestObservable.testUInt32.getter();
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v13;
  }

  v26 = v11;
  v14 = [v1 registeredForTestUInt16];
  v15 = 0x73696765726E753CLL;
  v16 = 0xEE003E6465726574;
  if (v14)
  {
    CAFProtocolPerfTestObservable.testUInt16.getter();
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v17;
  }

  v25 = v15;
  v18 = [v1 registeredForTestString];
  v19 = 0x73696765726E753CLL;
  v20 = 0xEE003E6465726574;
  if (v18)
  {
    v19 = CAFProtocolPerfTestObservable.testString.getter();
    v20 = v21;
  }

  if ([v1 registeredForTestString2])
  {
    CAFProtocolPerfTestObservable.testString2.getter();
  }

  _StringGuts.grow(_:)(133);
  MEMORY[0x245D0A530](0xD000000000000020, 0x8000000242310880);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x4974736574207B20, 0xEE00203A3233746ELL);
  MEMORY[0x245D0A530](v28, v4);

  MEMORY[0x245D0A530](0x6E4974736574202CLL, 0xED0000203A363174);
  MEMORY[0x245D0A530](v27, v8);

  MEMORY[0x245D0A530](0x495574736574202CLL, 0xEE00203A3233746ELL);
  MEMORY[0x245D0A530](v26, v12);

  MEMORY[0x245D0A530](0x495574736574202CLL, 0xEE00203A3631746ELL);
  MEMORY[0x245D0A530](v25, v16);

  MEMORY[0x245D0A530](0x745374736574202CLL, 0xEE00203A676E6972);
  MEMORY[0x245D0A530](v24, v20);

  MEMORY[0x245D0A530](0x745374736574202CLL, 0xEF203A32676E6972);
  v22 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v22);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFProtocolPerfTestObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable_cachedDescription + 8))
  {
    v4 = *(v0 + v1);
  }

  else
  {
    *v3 = CAFProtocolPerfTestObservable._description.getter();
    v3[1] = v5;

    v4 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v4 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFProtocolPerfTestObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable__testInt32;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA29CAFProtocolPerfTestObservableCs5Int32VGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA29CAFProtocolPerfTestObservableCs5Int32VGMR);
  OUTLINED_FUNCTION_225(v8);
  v9 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(v9);
  v10 = OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable__testInt16;
  swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA29CAFProtocolPerfTestObservableCs5Int16VGMd, _s10CAFCombine13SafePublishedCyAA29CAFProtocolPerfTestObservableCs5Int16VGMR);
  OUTLINED_FUNCTION_225(v11);
  v12 = OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)(v12, v13, v14, v15, v16, v17, v18, v19, v43.receiver, v43.super_class, v44, v45, v46, v47, v48, v49);
  *&v2[v10] = v20;
  v21 = OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable__testUInt32;
  swift_getKeyPath();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA29CAFProtocolPerfTestObservableCs6UInt32VGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA29CAFProtocolPerfTestObservableCs6UInt32VGMR);
  OUTLINED_FUNCTION_225(v22);
  v23 = OUTLINED_FUNCTION_0_7();
  *&v2[v21] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v23);
  v24 = OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable__testUInt16;
  swift_getKeyPath();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA29CAFProtocolPerfTestObservableCs6UInt16VGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA29CAFProtocolPerfTestObservableCs6UInt16VGMR);
  OUTLINED_FUNCTION_225(v25);
  v26 = OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v26, v27, v28, v29, v30, v31, v32, v33, v43.receiver, v43.super_class, v44, v45, v46, v47, v48, v49);
  *&v2[v24] = v34;
  v35 = OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable__testString;
  swift_getKeyPath();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA29CAFProtocolPerfTestObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA29CAFProtocolPerfTestObservableCSSGMR);
  OUTLINED_FUNCTION_225(v36);
  OUTLINED_FUNCTION_0_7();
  *&v2[v35] = specialized SafePublished.init(observedValuekeypath:)();
  v37 = OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable__testString2;
  swift_getKeyPath();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA29CAFProtocolPerfTestObservableCSSGMd, &_s10CAFCombine13SafePublishedCyAA29CAFProtocolPerfTestObservableCSSGMR);
  OUTLINED_FUNCTION_225(v38);
  OUTLINED_FUNCTION_0_7();
  *&v2[v37] = specialized SafePublished.init(observedValuekeypath:)();
  v39 = OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable__name;
  swift_getKeyPath();
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v39] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable_observed] = a1;
  v43.receiver = v2;
  v43.super_class = type metadata accessor for CAFProtocolPerfTestObservable();
  v40 = a1;
  v41 = objc_msgSendSuper2(&v43, sel_init);
  [v40 registerObserver_];

  return v41;
}

uint64_t CAFProtocolPerfTestObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFProtocolPerfTestObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFProtocolPerfTestObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFProtocolPerfTestObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFProtocolPerfTestObservable@<X0>(void *a1@<X8>)
{
  result = CAFProtocolPerfTestObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFProtocolPerfTestObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFProtocolPerfTestObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFProtocolPerfTestObservable.protocolPerfTestService(_:didUpdateTestInt16:)(uint64_t a1, unsigned __int16 a2)
{
  OUTLINED_FUNCTION_234(v2 + OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable__testInt16, v5);

  specialized SafePublished.value.setter(a2);
}

uint64_t CAFProtocolPerfTestObservable.protocolPerfTestService(_:didUpdateTestInt32:)(uint64_t a1, unsigned int a2, uint64_t *a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_17_3();
  a4(a2);
}

uint64_t CAFProtocolPerfTestObservable.protocolPerfTestService(_:didUpdateTestUInt16:)(uint64_t a1, unsigned __int16 a2)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFProtocolPerfTestObservable.protocolPerfTestService(_:didUpdateTestString2:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_234(v3 + OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable__testString2, v7);

  v4 = OUTLINED_FUNCTION_197();
  specialized SafePublished.value.setter(v4, v5);
}

double @objc CAFProtocolPerfTestObservable.protocolPerfTestService(_:didUpdateTestString:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFProtocolPerfTestObservable.protocolPerfTestService(_:didUpdateTestString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3();

  v4 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v4, v5);
}

uint64_t CAFProtocolPerfTestObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFProtocolPerfTestObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFProtocolPerfTestObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path setter for CAFProtocolPerfTest.testString2 : CAFProtocolPerfTest(void *a1, void **a2)
{
  v2 = *a2;
  v3 = MEMORY[0x245D0A4C0](*a1, a1[1]);
  [v2 setTestString2_];
}

unint64_t type metadata accessor for CAFProtocolPerfTest()
{
  result = lazy cache variable for type metadata for CAFProtocolPerfTest;
  if (!lazy cache variable for type metadata for CAFProtocolPerfTest)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFProtocolPerfTest);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFProtocolPerfTestObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFProtocolPerfTestObservable and conformance CAFProtocolPerfTestObservable(&lazy protocol witness table cache variable for type CAFProtocolPerfTestObservable and conformance CAFProtocolPerfTestObservable, a2, type metadata accessor for CAFProtocolPerfTestObservable, &protocol conformance descriptor for CAFProtocolPerfTestObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFProtocolPerfTestObservable and conformance CAFProtocolPerfTestObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFProtocolPerfTestObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine29CAFProtocolPerfTestObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t OUTLINED_FUNCTION_6_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA29CAFProtocolPerfTestObservableC_SSTt3g5(v10, v11, v13, v14, v12, a6, a7, a8, a9, a10);
}

uint64_t CAFTestControlAsyncObservable._description.getter()
{
  _StringGuts.grow(_:)(40);
  MEMORY[0x245D0A530](0xD000000000000020, 0x8000000242310910);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x3E7D20207B20, 0xE600000000000000);
  return 0;
}

uint64_t CAFTestControlAsyncObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine29CAFTestControlAsyncObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine29CAFTestControlAsyncObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine29CAFTestControlAsyncObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine29CAFTestControlAsyncObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFTestControlAsyncObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFTestControlAsyncObservable.init(_:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC10CAFCombine29CAFTestControlAsyncObservable_cachedDescription];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC10CAFCombine29CAFTestControlAsyncObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *&v1[v4] = v5;
  *&v1[OBJC_IVAR____TtC10CAFCombine29CAFTestControlAsyncObservable_observed] = a1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for CAFTestControlAsyncObservable();
  v6 = a1;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  [v6 registerObserver_];

  return v7;
}

uint64_t CAFTestControlAsyncObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine29CAFTestControlAsyncObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFTestControlAsyncObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine29CAFTestControlAsyncObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFTestControlAsyncObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFTestControlAsyncObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFTestControlAsyncObservable@<X0>(void *a1@<X8>)
{
  result = CAFTestControlAsyncObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFTestControlAsyncObservable@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CAFTestControlAsyncObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t CAFTestControlAsyncObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFTestControlAsyncObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFTestControlAsyncObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFTestControlAsync()
{
  result = lazy cache variable for type metadata for CAFTestControlAsync;
  if (!lazy cache variable for type metadata for CAFTestControlAsync)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFTestControlAsync);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFTestControlAsyncObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFTestControlAsyncObservable and conformance CAFTestControlAsyncObservable(&lazy protocol witness table cache variable for type CAFTestControlAsyncObservable and conformance CAFTestControlAsyncObservable, a2, type metadata accessor for CAFTestControlAsyncObservable, &protocol conformance descriptor for CAFTestControlAsyncObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFTestControlAsyncObservable and conformance CAFTestControlAsyncObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFTestControlAsyncObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine29CAFTestControlAsyncObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFTestControlEventObservable._description.getter()
{
  _StringGuts.grow(_:)(40);
  MEMORY[0x245D0A530](0xD000000000000020, 0x80000002423109A0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x3E7D20207B20, 0xE600000000000000);
  return 0;
}

uint64_t CAFTestControlEventObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine29CAFTestControlEventObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine29CAFTestControlEventObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine29CAFTestControlEventObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine29CAFTestControlEventObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFTestControlEventObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFTestControlEventObservable.init(_:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC10CAFCombine29CAFTestControlEventObservable_cachedDescription];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC10CAFCombine29CAFTestControlEventObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *&v1[v4] = v5;
  *&v1[OBJC_IVAR____TtC10CAFCombine29CAFTestControlEventObservable_observed] = a1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for CAFTestControlEventObservable();
  v6 = a1;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  [v6 registerObserver_];

  return v7;
}

uint64_t CAFTestControlEventObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine29CAFTestControlEventObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFTestControlEventObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine29CAFTestControlEventObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFTestControlEventObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFTestControlEventObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFTestControlEventObservable@<X0>(void *a1@<X8>)
{
  result = CAFTestControlEventObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFTestControlEventObservable@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CAFTestControlEventObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t CAFTestControlEventObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFTestControlEventObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFTestControlEventObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFTestControlEvent()
{
  result = lazy cache variable for type metadata for CAFTestControlEvent;
  if (!lazy cache variable for type metadata for CAFTestControlEvent)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFTestControlEvent);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFTestControlEventObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFTestControlEventObservable and conformance CAFTestControlEventObservable(&lazy protocol witness table cache variable for type CAFTestControlEventObservable and conformance CAFTestControlEventObservable, a2, type metadata accessor for CAFTestControlEventObservable, &protocol conformance descriptor for CAFTestControlEventObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFTestControlEventObservable and conformance CAFTestControlEventObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFTestControlEventObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine29CAFTestControlEventObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFTestControlSyncObservable._description.getter()
{
  _StringGuts.grow(_:)(39);
  MEMORY[0x245D0A530](0xD00000000000001FLL, 0x8000000242310A30);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x3E7D20207B20, 0xE600000000000000);
  return 0;
}

uint64_t CAFTestControlSyncObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine28CAFTestControlSyncObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFTestControlSyncObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine28CAFTestControlSyncObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine28CAFTestControlSyncObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFTestControlSyncObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFTestControlSyncObservable.init(_:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC10CAFCombine28CAFTestControlSyncObservable_cachedDescription];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC10CAFCombine28CAFTestControlSyncObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *&v1[v4] = v5;
  *&v1[OBJC_IVAR____TtC10CAFCombine28CAFTestControlSyncObservable_observed] = a1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for CAFTestControlSyncObservable();
  v6 = a1;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  [v6 registerObserver_];

  return v7;
}

uint64_t CAFTestControlSyncObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFTestControlSyncObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFTestControlSyncObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine28CAFTestControlSyncObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFTestControlSyncObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFTestControlSyncObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFTestControlSyncObservable@<X0>(void *a1@<X8>)
{
  result = CAFTestControlSyncObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFTestControlSyncObservable@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CAFTestControlSyncObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t CAFTestControlSyncObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFTestControlSyncObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFTestControlSyncObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFTestControlSync()
{
  result = lazy cache variable for type metadata for CAFTestControlSync;
  if (!lazy cache variable for type metadata for CAFTestControlSync)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFTestControlSync);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFTestControlSyncObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFTestControlSyncObservable and conformance CAFTestControlSyncObservable(&lazy protocol witness table cache variable for type CAFTestControlSyncObservable and conformance CAFTestControlSyncObservable, a2, type metadata accessor for CAFTestControlSyncObservable, &protocol conformance descriptor for CAFTestControlSyncObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFTestControlSyncObservable and conformance CAFTestControlSyncObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFTestControlSyncObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine28CAFTestControlSyncObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

unint64_t CAFTypeTestIndexByPosition.testInt32Bridged.getter()
{
  v1 = [v0 hasTestInt32];
  v2 = v1;
  if (v1)
  {
    v3 = [v0 testInt32];
  }

  else
  {
    v3 = 0;
  }

  return v3 | ((v2 ^ 1u) << 32);
}

id CAFTypeTestIndexByPosition.testInt32Bridged.setter(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  return [v1 setTestInt32_];
}

unint64_t key path getter for CAFTypeTestIndexByPositionObservable.testInt32 : CAFTypeTestIndexByPositionObservable@<X0>(uint64_t a1@<X8>)
{
  result = CAFTypeTestIndexByPositionObservable.testInt32.getter();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t CAFTypeTestIndexByPositionObservable.testInt32.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine36CAFTypeTestIndexByPositionObservable__testInt32, v9);
  v8 = *(v0 + OBJC_IVAR____TtC10CAFCombine36CAFTypeTestIndexByPositionObservable_observed);

  v1 = v8;
  v2 = swift_readAtKeyPath();
  v4 = *v3;
  v5 = *(v3 + 4);
  v2(v7, 0);

  return v4 | (v5 << 32);
}

uint64_t CAFTypeTestIndexByPositionObservable.testInt32.setter(unint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = v1;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA36CAFTypeTestIndexByPositionObservableC_s5Int32VSgTt3g5(a1 | ((HIDWORD(a1) & 1) << 32), v5, KeyPath, v4);
}

void (*CAFTypeTestIndexByPositionObservable.testInt32.modify(void *a1))(uint64_t **a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine36CAFTypeTestIndexByPositionObservable__testInt32, (v3 + 4));
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine36CAFTypeTestIndexByPositionObservable_observed);
  v3[7] = v4;

  v5 = v4;
  v6 = swift_readAtKeyPath();
  v8 = *v7;
  v9 = *(v7 + 4);
  v6(v3, 0);

  *(v3 + 22) = v8;
  *(v3 + 92) = v9;
  return CAFTypeTestIndexByPositionObservable.testInt32.modify;
}

void CAFTypeTestIndexByPositionObservable.testInt32.modify(uint64_t **a1)
{
  v1 = *a1;
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA36CAFTypeTestIndexByPositionObservableC_s5Int32VSgTt3g5(*(*a1 + 22) | (*(*a1 + 92) << 32), (*a1)[8], v1[9], v1[10]);

  free(v1);
}

uint64_t CAFTypeTestIndexByPositionObservable.$testInt32.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine36CAFTypeTestIndexByPositionObservable__testInt32, v4);

  specialized SafePublished.projectedValue.getter();
  v2 = v1;

  return v2;
}

uint64_t CAFTypeTestIndexByPositionObservable.vehicleLayoutKey.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine36CAFTypeTestIndexByPositionObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFTypeTestIndexByPositionObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine36CAFTypeTestIndexByPositionObservable_observed);
  v4 = 0x73696765726E753CLL;
  v5 = 0xEE003E6465726574;
  if ([v3 registeredForVehicleLayoutKey])
  {
    v4 = CAFTypeTestIndexByPositionObservable.vehicleLayoutKey.getter();
    v5 = v6;
  }

  if ([v3 registeredForTestInt32])
  {
    CAFTypeTestIndexByPositionObservable.testInt32.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int32VSgMd, &_ss5Int32VSgMR);
    v2 = String.init<A>(describing:)();
    v1 = v7;
  }

  _StringGuts.grow(_:)(82);
  MEMORY[0x245D0A530](0xD000000000000027, 0x8000000242310AC0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000015, 0x8000000242310130);
  MEMORY[0x245D0A530](v4, v5);

  MEMORY[0x245D0A530](0x6E4974736574202CLL, 0xED0000203A323374);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFTypeTestIndexByPositionObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine36CAFTypeTestIndexByPositionObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine36CAFTypeTestIndexByPositionObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine36CAFTypeTestIndexByPositionObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine36CAFTypeTestIndexByPositionObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFTypeTestIndexByPositionObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFTypeTestIndexByPositionObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine36CAFTypeTestIndexByPositionObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine36CAFTypeTestIndexByPositionObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine36CAFTypeTestIndexByPositionObservable__vehicleLayoutKey;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA36CAFTypeTestIndexByPositionObservableCSSGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA36CAFTypeTestIndexByPositionObservableCSSGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v8 = OBJC_IVAR____TtC10CAFCombine36CAFTypeTestIndexByPositionObservable__testInt32;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA36CAFTypeTestIndexByPositionObservableCs5Int32VSgGMd, &_s10CAFCombine13SafePublishedCyAA36CAFTypeTestIndexByPositionObservableCs5Int32VSgGMR);
  swift_allocObject();
  v9 = OUTLINED_FUNCTION_0_7();
  *&v2[v8] = specialized SafePublished.init(observedValuekeypath:)(v9);
  v10 = OBJC_IVAR____TtC10CAFCombine36CAFTypeTestIndexByPositionObservable__name;
  swift_getKeyPath();
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine36CAFTypeTestIndexByPositionObservable_observed] = a1;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for CAFTypeTestIndexByPositionObservable();
  v11 = a1;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  [v11 registerObserver_];

  return v12;
}

uint64_t CAFTypeTestIndexByPositionObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine36CAFTypeTestIndexByPositionObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFTypeTestIndexByPositionObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine36CAFTypeTestIndexByPositionObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFTypeTestIndexByPositionObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFTypeTestIndexByPositionObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFTypeTestIndexByPositionObservable@<X0>(void *a1@<X8>)
{
  result = CAFTypeTestIndexByPositionObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFTypeTestIndexByPositionObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFTypeTestIndexByPositionObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFTypeTestIndexByPositionObservable.typeTestIndexByPositionService(_:didUpdateTestInt32:)(uint64_t a1, unsigned int a2)
{
  OUTLINED_FUNCTION_234(v2 + OBJC_IVAR____TtC10CAFCombine36CAFTypeTestIndexByPositionObservable__testInt32, v5);

  specialized SafePublished.value.setter(a2);
}

uint64_t CAFTypeTestIndexByPositionObservable.typeTestIndexByPositionService(_:didUpdateVehicleLayoutKey:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  specialized SafeReadOnlyPublished.value.setter(a2, a3);
}

double @objc CAFTypeTestIndexByPositionObservable.typeTestIndexByPositionService(_:didUpdateVehicleLayoutKey:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFTypeTestIndexByPositionObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFTypeTestIndexByPositionObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFTypeTestIndexByPositionObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t key path getter for CAFTypeTestIndexByPosition.testInt32Bridged : CAFTypeTestIndexByPosition@<X0>(uint64_t a1@<X8>)
{
  result = CAFTypeTestIndexByPosition.testInt32Bridged.getter();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t type metadata accessor for CAFTypeTestIndexByPosition()
{
  result = lazy cache variable for type metadata for CAFTypeTestIndexByPosition;
  if (!lazy cache variable for type metadata for CAFTypeTestIndexByPosition)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFTypeTestIndexByPosition);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFTypeTestIndexByPositionObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFTypeTestIndexByPositionObservable and conformance CAFTypeTestIndexByPositionObservable(&lazy protocol witness table cache variable for type CAFTypeTestIndexByPositionObservable and conformance CAFTypeTestIndexByPositionObservable, a2, type metadata accessor for CAFTypeTestIndexByPositionObservable, &protocol conformance descriptor for CAFTypeTestIndexByPositionObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFTypeTestIndexByPositionObservable and conformance CAFTypeTestIndexByPositionObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFTypeTestIndexByPositionObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine36CAFTypeTestIndexByPositionObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFTypeTestIndexByUnitObservable.distanceUnitRawValue.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

unint64_t key path getter for CAFTypeTestIndexByUnitObservable.testInt32 : CAFTypeTestIndexByUnitObservable@<X0>(uint64_t a1@<X8>)
{
  result = CAFTypeTestIndexByUnitObservable.testInt32.getter();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t CAFTypeTestIndexByUnitObservable.testInt32.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable__testInt32, v9);
  v8 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable_observed);

  v1 = v8;
  v2 = swift_readAtKeyPath();
  v4 = *v3;
  v5 = *(v3 + 4);
  v2(v7, 0);

  return v4 | (v5 << 32);
}

uint64_t CAFTypeTestIndexByUnitObservable.testInt32.setter(unint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = v1;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA32CAFTypeTestIndexByUnitObservableC_s5Int32VSgTt3g5(a1 | ((HIDWORD(a1) & 1) << 32), v5, KeyPath, v4);
}

void (*CAFTypeTestIndexByUnitObservable.testInt32.modify(void *a1))(uint64_t **a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable__testInt32, (v3 + 4));
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable_observed);
  v3[7] = v4;

  v5 = v4;
  v6 = swift_readAtKeyPath();
  v8 = *v7;
  v9 = *(v7 + 4);
  v6(v3, 0);

  *(v3 + 22) = v8;
  *(v3 + 92) = v9;
  return CAFTypeTestIndexByUnitObservable.testInt32.modify;
}

void CAFTypeTestIndexByUnitObservable.testInt32.modify(uint64_t **a1)
{
  v1 = *a1;
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA32CAFTypeTestIndexByUnitObservableC_s5Int32VSgTt3g5(*(*a1 + 22) | (*(*a1 + 92) << 32), (*a1)[8], v1[9], v1[10]);

  free(v1);
}

uint64_t CAFTypeTestIndexByUnitObservable.$testInt32.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable__testInt32, v4);

  specialized SafePublished.projectedValue.getter();
  v2 = v1;

  return v2;
}

uint64_t CAFTypeTestIndexByUnitObservable.name.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFTypeTestIndexByUnitObservable.$distanceUnitRawValue.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t CAFTypeTestIndexByUnitObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable_observed);
  v4 = 0x73696765726E753CLL;
  v5 = 0xEE003E6465726574;
  if ([v3 registeredForDistanceUnit])
  {
    CAFTypeTestIndexByUnitObservable.distanceUnitRawValue.getter();
    type metadata accessor for CAFUnitType(0);
    v4 = String.init<A>(describing:)();
    v5 = v6;
  }

  if ([v3 registeredForTestInt32])
  {
    CAFTypeTestIndexByUnitObservable.testInt32.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int32VSgMd, &_ss5Int32VSgMR);
    v2 = String.init<A>(describing:)();
    v1 = v7;
  }

  _StringGuts.grow(_:)(82);
  MEMORY[0x245D0A530](0xD000000000000023, 0x8000000242310B80);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000019, 0x8000000242310BB0);
  MEMORY[0x245D0A530](v4, v5);

  MEMORY[0x245D0A530](0x6E4974736574202CLL, 0xED0000203A323374);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFTypeTestIndexByUnitObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFTypeTestIndexByUnitObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFTypeTestIndexByUnitObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable__distanceUnitRawValue;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFTypeTestIndexByUnitObservableCSo11CAFUnitTypeVGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFTypeTestIndexByUnitObservableCSo11CAFUnitTypeVGMR);
  swift_allocObject();
  v8 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v8);
  v9 = OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable__testInt32;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA32CAFTypeTestIndexByUnitObservableCs5Int32VSgGMd, &_s10CAFCombine13SafePublishedCyAA32CAFTypeTestIndexByUnitObservableCs5Int32VSgGMR);
  swift_allocObject();
  v10 = OUTLINED_FUNCTION_0_7();
  *&v2[v9] = specialized SafePublished.init(observedValuekeypath:)(v10);
  v11 = OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable__name;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFTypeTestIndexByUnitObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFTypeTestIndexByUnitObservableCSSGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v11] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable_observed] = a1;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for CAFTypeTestIndexByUnitObservable();
  v12 = a1;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  [v12 registerObserver_];

  return v13;
}

uint64_t CAFTypeTestIndexByUnitObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFTypeTestIndexByUnitObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFTypeTestIndexByUnitObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFTypeTestIndexByUnitObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFTypeTestIndexByUnitObservable@<X0>(void *a1@<X8>)
{
  result = CAFTypeTestIndexByUnitObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFTypeTestIndexByUnitObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFTypeTestIndexByUnitObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFTypeTestIndexByUnitObservable.typeTestIndexByUnitService(_:didUpdateDistanceUnitRawValue:)(uint64_t a1, unsigned __int16 a2)
{

  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFTypeTestIndexByUnitObservable.typeTestIndexByUnitService(_:didUpdateTestInt32:)(uint64_t a1, unsigned int a2)
{
  OUTLINED_FUNCTION_234(v2 + OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable__testInt32, v5);

  specialized SafePublished.value.setter(a2);
}

uint64_t CAFTypeTestIndexByUnitObservable.typeTestIndexByUnitService(_:didUpdateName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  specialized SafeReadOnlyPublished.value.setter(a2, a3);
}

uint64_t CAFTypeTestIndexByUnitObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFTypeTestIndexByUnitObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFTypeTestIndexByUnitObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFTypeTestIndexByUnit()
{
  result = lazy cache variable for type metadata for CAFTypeTestIndexByUnit;
  if (!lazy cache variable for type metadata for CAFTypeTestIndexByUnit)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFTypeTestIndexByUnit);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFTypeTestIndexByUnitObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFTypeTestIndexByUnitObservable and conformance CAFTypeTestIndexByUnitObservable(&lazy protocol witness table cache variable for type CAFTypeTestIndexByUnitObservable and conformance CAFTypeTestIndexByUnitObservable, a2, type metadata accessor for CAFTypeTestIndexByUnitObservable, &protocol conformance descriptor for CAFTypeTestIndexByUnitObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFTypeTestIndexByUnitObservable and conformance CAFTypeTestIndexByUnitObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFTypeTestIndexByUnitObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine32CAFTypeTestIndexByUnitObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFTypeTestMulti.testBoolBridged.getter()
{
  if ([v0 hasTestBool])
  {
    return [v0 testBool];
  }

  else
  {
    return 2;
  }
}

id CAFTypeTestMulti.testUInt8Bridged.setter(__int16 a1)
{
  if ((a1 & 0x100) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  return [v1 setTestUInt8_];
}

id CAFTypeTestMulti.testUInt16Bridged.setter(int a1)
{
  if ((a1 & 0x10000) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  return [v1 setTestUInt16_];
}

id CAFTypeTestMulti.testUInt32Bridged.setter(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  return [v1 setTestUInt32_];
}

id CAFTypeTestMulti.testUInt64Bridged.setter(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = a1;
  }

  return [v2 setTestUInt64_];
}

uint64_t CAFTypeTestMulti.testInt8Bridged.getter()
{
  v1 = [v0 hasTestInt8];
  v2 = v1;
  if (v1)
  {
    LOBYTE(v1) = [v0 testInt8];
  }

  return v1 | ((v2 ^ 1) << 8);
}

id CAFTypeTestMulti.testInt8Bridged.setter(__int16 a1)
{
  if ((a1 & 0x100) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  return [v1 setTestInt8_];
}

uint64_t CAFTypeTestMulti.testInt16Bridged.getter()
{
  v1 = [v0 hasTestInt16];
  if (v1)
  {
    v2 = [v0 testInt16];
  }

  else
  {
    v2 = 0;
  }

  return v2 | ((v1 ^ 1) << 16);
}

id CAFTypeTestMulti.testInt16Bridged.setter(int a1)
{
  if ((a1 & 0x10000) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  return [v1 setTestInt16_];
}

unint64_t CAFTypeTestMulti.testUInt32Bridged.getter(const char **a1)
{
  v1 = OUTLINED_FUNCTION_48_0(a1);
  v2 = v1;
  if (v1)
  {
    v3 = OUTLINED_FUNCTION_85_0();
    v5 = [v3 v4];
  }

  else
  {
    v5 = 0;
  }

  return v5 | ((v2 ^ 1u) << 32);
}

id CAFTypeTestMulti.testUInt64Bridged.getter(const char **a1)
{
  if (!OUTLINED_FUNCTION_48_0(a1))
  {
    return 0;
  }

  v1 = OUTLINED_FUNCTION_85_0();
  return [v1 v2];
}

id CAFTypeTestMulti.testInt64Bridged.setter(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = a1;
  }

  return [v2 setTestInt64_];
}

unint64_t CAFTypeTestMulti.testFloatBridged.getter()
{
  v1 = [v0 hasTestFloat];
  v2 = v1;
  if (v1)
  {
    [v0 testFloat];
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 | ((v2 ^ 1u) << 32);
}

id CAFTypeTestMulti.testFloatBridged.setter(uint64_t a1, double a2)
{
  LODWORD(a2) = a1;
  if ((a1 & 0x100000000) != 0)
  {
    *&a2 = 0.0;
  }

  return [v2 setTestFloat_];
}

uint64_t CAFTypeTestMulti.testUInt8Bridged.getter(const char **a1)
{
  v1 = OUTLINED_FUNCTION_48_0(a1);
  v2 = v1;
  if (v1)
  {
    v3 = OUTLINED_FUNCTION_85_0();
    v1 = [v3 v4];
  }

  return v1 | ((v2 ^ 1) << 8);
}

id CAFTypeTestMulti.testEnumBridged.setter(__int16 a1)
{
  if ((a1 & 0x100) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  return [v1 setTestEnum_];
}

uint64_t CAFTypeTestMulti.testUInt16Bridged.getter(const char **a1)
{
  v1 = OUTLINED_FUNCTION_48_0(a1);
  v2 = v1;
  if (v1)
  {
    v3 = OUTLINED_FUNCTION_85_0();
    v1 = [v3 v4];
  }

  return v1 | ((v2 ^ 1) << 16);
}

id CAFTypeTestMulti.testDimensionUnitRawValueBridged.setter(int a1)
{
  if ((a1 & 0x10000) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  return [v1 setTestDimensionUnitRawValue_];
}

char *CAFTypeTestMulti.testArrayBoolBridged.getter()
{
  v1 = outlined bridged method (pb) of @objc CAFTypeTestMulti.testArrayBool.getter(v0, &selRef_testArrayBool);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = specialized Array._getCount()();
  if (!v3)
  {

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v13 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v13;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x245D0A790](v6, v2);
      }

      else
      {
        v8 = *(v2 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = [v8 BOOLValue];

      v12 = *(v13 + 16);
      v11 = *(v13 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
      }

      ++v6;
      *(v13 + 16) = v12 + 1;
      *(v13 + v12 + 32) = v10;
    }

    while (v4 != v6);

    return v7;
  }

  __break(1u);
  return result;
}

void CAFTypeTestMulti.testArrayBoolBridged.setter(uint64_t a1)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      v7 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v4 = 32;
      do
      {
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
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

    [v1 setTestArrayBool_];
  }

  else
  {
    [v1 setTestArrayBool_];
  }
}

void CAFTypeTestMulti.testArrayUInt8Bridged.getter()
{
  v1 = outlined bridged method (pb) of @objc CAFTypeTestMulti.testArrayBool.getter(v0, &selRef_testArrayUInt8);
  if (v1)
  {
    v2 = v1;
    v3 = specialized Array._getCount()();
    if (!v3)
    {
LABEL_11:

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

      goto LABEL_11;
    }

    __break(1u);
  }
}

void CAFTypeTestMulti.testArrayUInt8Bridged.setter(uint64_t a1)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      v7 = MEMORY[0x277D84F90];
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

    [v1 setTestArrayUInt8_];
  }

  else
  {
    [v1 setTestArrayUInt8_];
  }
}

void CAFTypeTestMulti.testArrayUInt16Bridged.getter()
{
  v1 = outlined bridged method (pb) of @objc CAFTypeTestMulti.testArrayBool.getter(v0, &selRef_testArrayUInt16);
  if (v1)
  {
    v2 = v1;
    v3 = specialized Array._getCount()();
    if (!v3)
    {
LABEL_11:

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
        v8 = [v6 unsignedShortValue];

        v10 = *(v11 + 16);
        v9 = *(v11 + 24);
        if (v10 >= v9 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v9 > 1, v10 + 1, 1);
        }

        *(v11 + 16) = v10 + 1;
        *(v11 + 2 * v10 + 32) = v8;
      }

      goto LABEL_11;
    }

    __break(1u);
  }
}

void CAFTypeTestMulti.testArrayUInt16Bridged.setter(uint64_t a1)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      v7 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v4 = 32;
      do
      {
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v4 += 2;
        --v3;
      }

      while (v3);
    }

    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v1 setTestArrayUInt16_];
  }

  else
  {
    [v1 setTestArrayUInt16_];
  }
}

void CAFTypeTestMulti.testArrayUInt32Bridged.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  CAFTypeTestMulti.testArrayUInt32Bridged.getter(&selRef_testArrayUInt32, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), &selRef_unsignedIntValue, a4, a5, a6, a7, a8, a9, a10);
}

{
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_46_0();
  v13 = OUTLINED_FUNCTION_23_0();
  v15 = outlined bridged method (pb) of @objc CAFTypeTestMulti.testArrayBool.getter(v13, v14);
  if (!v15)
  {
    goto LABEL_14;
  }

  v16 = v15;
  v17 = specialized Array._getCount()();
  if (!v17)
  {
LABEL_13:

LABEL_14:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v18 = v17;
  v19 = OUTLINED_FUNCTION_60_0();
  v11(v19);
  if ((v18 & 0x8000000000000000) == 0)
  {
    v20 = 0;
    v21 = a10;
    do
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x245D0A790](v20, v16);
      }

      else
      {
        v22 = *(v16 + 8 * v20 + 32);
      }

      v23 = v22;
      v24 = [v22 *v10];

      OUTLINED_FUNCTION_79_0();
      if (v26)
      {
        (v11)(v25 > 1, v23, 1);
        v21 = a10;
      }

      ++v20;
      *(v21 + 16) = v23;
      *(v21 + 4 * v12 + 32) = v24;
    }

    while (v18 != v20);
    goto LABEL_13;
  }

  __break(1u);
}

void CAFTypeTestMulti.testArrayUInt64Bridged.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  CAFTypeTestMulti.testArrayUInt64Bridged.getter(&selRef_testArrayUInt64, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), &selRef_unsignedLongLongValue, a4, a5, a6, a7, a8, a9, a10);
}

{
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_46_0();
  v13 = OUTLINED_FUNCTION_23_0();
  v15 = outlined bridged method (pb) of @objc CAFTypeTestMulti.testArrayBool.getter(v13, v14);
  if (!v15)
  {
    goto LABEL_14;
  }

  v16 = v15;
  v17 = specialized Array._getCount()();
  if (!v17)
  {
LABEL_13:

LABEL_14:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v18 = v17;
  v19 = OUTLINED_FUNCTION_60_0();
  v11(v19);
  if ((v18 & 0x8000000000000000) == 0)
  {
    v20 = 0;
    v21 = a10;
    do
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x245D0A790](v20, v16);
      }

      else
      {
        v22 = *(v16 + 8 * v20 + 32);
      }

      v23 = v22;
      v24 = [v22 *v10];

      OUTLINED_FUNCTION_79_0();
      if (v26)
      {
        (v11)(v25 > 1, v23, 1);
        v21 = a10;
      }

      ++v20;
      *(v21 + 16) = v23;
      *(v21 + 8 * v12 + 32) = v24;
    }

    while (v18 != v20);
    goto LABEL_13;
  }

  __break(1u);
}

void CAFTypeTestMulti.testArrayInt8Bridged.getter()
{
  v1 = outlined bridged method (pb) of @objc CAFTypeTestMulti.testArrayBool.getter(v0, &selRef_testArrayInt8);
  if (v1)
  {
    v2 = v1;
    v3 = specialized Array._getCount()();
    if (!v3)
    {
LABEL_11:

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
        v8 = [v6 charValue];

        v10 = *(v11 + 16);
        v9 = *(v11 + 24);
        if (v10 >= v9 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v9 > 1, v10 + 1, 1);
        }

        *(v11 + 16) = v10 + 1;
        *(v11 + v10 + 32) = v8;
      }

      goto LABEL_11;
    }

    __break(1u);
  }
}

void CAFTypeTestMulti.testArrayInt8Bridged.setter(uint64_t a1)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      v7 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v4 = 32;
      do
      {
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithChar_];
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

    [v1 setTestArrayInt8_];
  }

  else
  {
    [v1 setTestArrayInt8_];
  }
}

void CAFTypeTestMulti.testArrayInt16Bridged.getter()
{
  v1 = outlined bridged method (pb) of @objc CAFTypeTestMulti.testArrayBool.getter(v0, &selRef_testArrayInt16);
  if (v1)
  {
    v2 = v1;
    v3 = specialized Array._getCount()();
    if (!v3)
    {
LABEL_11:

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
        v8 = [v6 shortValue];

        v10 = *(v11 + 16);
        v9 = *(v11 + 24);
        if (v10 >= v9 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v9 > 1, v10 + 1, 1);
        }

        *(v11 + 16) = v10 + 1;
        *(v11 + 2 * v10 + 32) = v8;
      }

      goto LABEL_11;
    }

    __break(1u);
  }
}

void CAFTypeTestMulti.testArrayInt16Bridged.setter(uint64_t a1)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      v7 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v4 = 32;
      do
      {
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithShort_];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v4 += 2;
        --v3;
      }

      while (v3);
    }

    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v1 setTestArrayInt16_];
  }

  else
  {
    [v1 setTestArrayInt16_];
  }
}

void CAFTypeTestMulti.testArrayUInt32Bridged.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_57_0();
  v7 = v6;
  if (v4)
  {
    v8 = v4;
    v9 = *(v4 + 16);
    if (v9)
    {
      v10 = v5;
      specialized ContiguousArray.reserveCapacity(_:)();
      v11 = 32;
      do
      {
        [objc_allocWithZone(MEMORY[0x277CCABB0]) *v10];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        OUTLINED_FUNCTION_84_0();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        OUTLINED_FUNCTION_84_0();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v11 += 4;
        --v9;
      }

      while (v9);
    }

    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    OUTLINED_FUNCTION_23_0();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v3 *v7];
  OUTLINED_FUNCTION_30_0();
}

void CAFTypeTestMulti.testArrayUInt64Bridged.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_57_0();
  v7 = v6;
  if (v4)
  {
    v8 = v4;
    v9 = *(v4 + 16);
    if (v9)
    {
      v10 = v5;
      specialized ContiguousArray.reserveCapacity(_:)();
      v11 = 32;
      do
      {
        [objc_allocWithZone(MEMORY[0x277CCABB0]) *v10];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        OUTLINED_FUNCTION_84_0();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        OUTLINED_FUNCTION_84_0();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v11 += 8;
        --v9;
      }

      while (v9);
    }

    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    OUTLINED_FUNCTION_23_0();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v3 *v7];
  OUTLINED_FUNCTION_30_0();
}

char *CAFTypeTestMulti.testArrayFloatBridged.getter()
{
  v1 = outlined bridged method (pb) of @objc CAFTypeTestMulti.testArrayBool.getter(v0, &selRef_testArrayFloat);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = specialized Array._getCount()();
  if (!v3)
  {

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v14 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v14;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x245D0A790](v6, v2);
      }

      else
      {
        v8 = *(v2 + 8 * v6 + 32);
      }

      v9 = v8;
      [v8 floatValue];
      v11 = v10;

      v13 = *(v14 + 16);
      v12 = *(v14 + 24);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      }

      ++v6;
      *(v14 + 16) = v13 + 1;
      *(v14 + 4 * v13 + 32) = v11;
    }

    while (v4 != v6);

    return v7;
  }

  __break(1u);
  return result;
}

void CAFTypeTestMulti.testArrayFloatBridged.setter(uint64_t a1)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      v10 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v4 = 32;
      do
      {
        v5 = *(a1 + v4);
        v6 = objc_allocWithZone(MEMORY[0x277CCABB0]);
        LODWORD(v7) = v5;
        [v6 initWithFloat_];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v4 += 4;
        --v3;
      }

      while (v3);
    }

    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v1 setTestArrayFloat_];
  }

  else
  {
    [v1 setTestArrayFloat_];
  }
}

uint64_t key path getter for CAFTypeTestMultiObservable.testBool : CAFTypeTestMultiObservable@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestMultiObservable.testBool.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

uint64_t CAFTypeTestMultiObservable.testBool.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_18_3(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3();

  v6 = v5;
  v14 = OUTLINED_FUNCTION_24_2(v6, v7, v8, v9, v10, v11, v12, v13, v26, v28, v29, v30, v31);
  v16 = *v15;
  v23 = OUTLINED_FUNCTION_42_0(v14, v15, v17, v18, v19, v20, v21, v22, v27);
  v24(v23);

  return v16;
}

uint64_t CAFTypeTestMultiObservable.testBool.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = v10;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA26CAFTypeTestMultiObservableC_SbSgTt3g5(a1, v14, KeyPath, v13, v15, v16, v17, v18, a9, a10);
}

uint64_t CAFTypeTestMultiObservable.testBool.modify()
{
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v5 = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_29_2();
  v6 = OUTLINED_FUNCTION_7_5();
  v7(v6);

  *(v1 + 88) = v0;
  return OUTLINED_FUNCTION_23_2();
}

void CAFTypeTestMultiObservable.testBool.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 72);
  v2 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 64);
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA26CAFTypeTestMultiObservableC_SbSgTt3g5(v4, v5, v3, v2, v6, v7, v8, v9, v10, v11);

  free(v1);
}

uint64_t key path getter for CAFTypeTestMultiObservable.testUInt8 : CAFTypeTestMultiObservable@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>)
{
  result = CAFTypeTestMultiObservable.testUInt8.getter(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

void CAFTypeTestMultiObservable.testUInt8.modify()
{
  OUTLINED_FUNCTION_235();
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v5 = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_29_2();
  v7 = *(v6 + 1);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v1 + 88) = v0;
  *(v1 + 89) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

void CAFTypeTestMultiObservable.testUInt8.modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  CAFTypeTestMultiObservable.testUInt8.modify(a1, a2, _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA26CAFTypeTestMultiObservableC_s5UInt8VSgTt3g5, a4, a5, a6);
}

{
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_53_0();
  v6(*(v8 + 88) | (*(v7 + 89) << 8), *(v7 + 64), *(v7 + 72), *(v7 + 80));
  OUTLINED_FUNCTION_91_0();

  free(v9);
}

uint64_t key path getter for CAFTypeTestMultiObservable.testUInt16 : CAFTypeTestMultiObservable@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>)
{
  result = CAFTypeTestMultiObservable.testUInt16.getter(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  *(a1 + 2) = BYTE2(result) & 1;
  return result;
}

void CAFTypeTestMultiObservable.testUInt16.modify()
{
  OUTLINED_FUNCTION_235();
  v2 = OUTLINED_FUNCTION_26_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_15_3(v3);
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v4 = v1;
  OUTLINED_FUNCTION_2_5();
  v6 = *v5;
  v7 = *(v5 + 2);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v0 + 88) = v6;
  *(v0 + 90) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

void CAFTypeTestMultiObservable.testUInt16.modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  CAFTypeTestMultiObservable.testUInt16.modify(a1, a2, _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA26CAFTypeTestMultiObservableC_s6UInt16VSgTt3g5, a4, a5, a6);
}

{
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_53_0();
  v6(*(v8 + 88) | (*(v7 + 90) << 16), *(v7 + 64), *(v7 + 72), *(v7 + 80));
  OUTLINED_FUNCTION_91_0();

  free(v9);
}

unint64_t key path getter for CAFTypeTestMultiObservable.testUInt32 : CAFTypeTestMultiObservable@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestMultiObservable.testUInt32.getter(a2, a3, a4, a5, a6);
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

void CAFTypeTestMultiObservable.testUInt32.modify()
{
  OUTLINED_FUNCTION_235();
  v2 = OUTLINED_FUNCTION_26_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_15_3(v3);
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v4 = v1;
  OUTLINED_FUNCTION_2_5();
  v6 = *v5;
  v7 = *(v5 + 4);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v0 + 88) = v6;
  *(v0 + 92) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

void CAFTypeTestMultiObservable.testUInt32.modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  CAFTypeTestMultiObservable.testUInt32.modify(a1, a2, _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA26CAFTypeTestMultiObservableC_s6UInt32VSgTt3g5, a4, a5, a6);
}

{
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_53_0();
  v6(*(v8 + 88) | (*(v7 + 92) << 32), *(v7 + 64), *(v7 + 72), *(v7 + 80));
  OUTLINED_FUNCTION_91_0();

  free(v9);
}

uint64_t key path getter for CAFTypeTestMultiObservable.testUInt64 : CAFTypeTestMultiObservable@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestMultiObservable.testUInt64.getter(a2, a3, a4, a5, a6);
  *a1 = result;
  *(a1 + 8) = v8 & 1;
  return result;
}

uint64_t CAFTypeTestMultiObservable.testUInt64.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return CAFTypeTestMultiObservable.testUInt64.setter(a1, a2, &unk_242304EF0, &unk_242304F18, _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA26CAFTypeTestMultiObservableC_s6UInt64VSgTt3g5, a6, a7, a8, a9);
}

{
  OUTLINED_FUNCTION_90_0();
  v21 = v10;
  OUTLINED_FUNCTION_81_0();
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v9;
  OUTLINED_FUNCTION_91_0();

  return v17(v12, v13, v14, v15, v16, v17, v18, v19, a9, v21);
}

void CAFTypeTestMultiObservable.testUInt64.modify()
{
  OUTLINED_FUNCTION_235();
  v3 = OUTLINED_FUNCTION_77_0();
  v4 = __swift_coroFrameAllocStub(v3);
  *(OUTLINED_FUNCTION_13_4(v4) + 80) = v0;
  *(v1 + 88) = swift_getKeyPath();
  *(v1 + 96) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_20_4();
  *(v0 + 72) = v2;

  v5 = v2;
  OUTLINED_FUNCTION_2_5();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = OUTLINED_FUNCTION_7_5();
  v10(v9);

  *(v1 + 56) = v7;
  *(v1 + 64) = v8;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestMultiObservable.testInt8 : CAFTypeTestMultiObservable@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>)
{
  result = CAFTypeTestMultiObservable.testInt8.getter(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

void CAFTypeTestMultiObservable.testInt8.modify()
{
  OUTLINED_FUNCTION_235();
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v5 = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_29_2();
  v7 = *(v6 + 1);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v1 + 88) = v0;
  *(v1 + 89) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestMultiObservable.testInt16 : CAFTypeTestMultiObservable@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>)
{
  result = CAFTypeTestMultiObservable.testInt16.getter(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  *(a1 + 2) = BYTE2(result) & 1;
  return result;
}

void CAFTypeTestMultiObservable.testInt16.modify()
{
  OUTLINED_FUNCTION_235();
  v2 = OUTLINED_FUNCTION_26_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_15_3(v3);
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v4 = v1;
  OUTLINED_FUNCTION_2_5();
  v6 = *v5;
  v7 = *(v5 + 2);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v0 + 88) = v6;
  *(v0 + 90) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

unint64_t key path getter for CAFTypeTestMultiObservable.testInt32 : CAFTypeTestMultiObservable@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestMultiObservable.testInt32.getter(a2, a3, a4, a5, a6);
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

void CAFTypeTestMultiObservable.testInt32.modify()
{
  OUTLINED_FUNCTION_235();
  v2 = OUTLINED_FUNCTION_26_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_15_3(v3);
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v4 = v1;
  OUTLINED_FUNCTION_2_5();
  v6 = *v5;
  v7 = *(v5 + 4);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v0 + 88) = v6;
  *(v0 + 92) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestMultiObservable.testInt64 : CAFTypeTestMultiObservable@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestMultiObservable.testInt64.getter(a2, a3, a4, a5, a6);
  *a1 = result;
  *(a1 + 8) = v8 & 1;
  return result;
}

uint64_t CAFTypeTestMultiObservable.testUInt64.getter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_18_3(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3();

  v6 = v5;
  v14 = OUTLINED_FUNCTION_24_2(v6, v7, v8, v9, v10, v11, v12, v13, v26, v28, v29, v30, v31);
  v16 = *v15;
  v23 = OUTLINED_FUNCTION_42_0(v14, v15, v17, v18, v19, v20, v21, v22, v27);
  v24(v23);

  return v16;
}

void CAFTypeTestMultiObservable.testInt64.modify()
{
  OUTLINED_FUNCTION_235();
  v3 = OUTLINED_FUNCTION_77_0();
  v4 = __swift_coroFrameAllocStub(v3);
  *(OUTLINED_FUNCTION_13_4(v4) + 80) = v0;
  *(v1 + 88) = swift_getKeyPath();
  *(v1 + 96) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_20_4();
  *(v0 + 72) = v2;

  v5 = v2;
  OUTLINED_FUNCTION_2_5();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = OUTLINED_FUNCTION_7_5();
  v10(v9);

  *(v1 + 56) = v7;
  *(v1 + 64) = v8;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

void CAFTypeTestMultiObservable.testUInt64.modify(uint64_t a1, uint64_t a2, void (*a3)(void, void, id, void, void))
{
  v3 = *a1;
  a3(*(*a1 + 56), *(*a1 + 64), *(*a1 + 80), *(*a1 + 88), *(*a1 + 96));

  free(v3);
}

unint64_t key path getter for CAFTypeTestMultiObservable.testFloat : CAFTypeTestMultiObservable@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestMultiObservable.testFloat.getter(a2, a3, a4, a5, a6);
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t CAFTypeTestMultiObservable.testUInt32.getter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_18_3(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3();

  v6 = v5;
  v14 = OUTLINED_FUNCTION_24_2(v6, v7, v8, v9, v10, v11, v12, v13, v27, v29, v30, v31, v32);
  v16 = *v15;
  v17 = *(v15 + 4);
  v24 = OUTLINED_FUNCTION_42_0(v14, v15, v18, v19, v20, v21, v22, v23, v28);
  v25(v24);

  return v16 | (v17 << 32);
}

uint64_t CAFTypeTestMultiObservable.testUInt32.setter(unint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_89_0();
  v3 = v2;
  OUTLINED_FUNCTION_51_0();

  return v4();
}

void CAFTypeTestMultiObservable.testFloat.modify()
{
  OUTLINED_FUNCTION_235();
  v2 = OUTLINED_FUNCTION_26_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_15_3(v3);
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v4 = v1;
  OUTLINED_FUNCTION_2_5();
  v6 = *v5;
  v7 = *(v5 + 4);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v0 + 88) = v6;
  *(v0 + 92) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestMultiObservable.testString : CAFTypeTestMultiObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestMultiObservable.testString.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  a2[1] = v8;
  return result;
}

uint64_t key path setter for CAFTypeTestMultiObservable.testString : CAFTypeTestMultiObservable(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return CAFTypeTestMultiObservable.testString.setter(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t CAFTypeTestMultiObservable.testString.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_18_3(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3();
  swift_retain_n();

  v6 = v5;
  v14 = OUTLINED_FUNCTION_24_2(v6, v7, v8, v9, v10, v11, v12, v13, v27, v29, v30, v31, v32);
  v16 = *v15;

  v25 = OUTLINED_FUNCTION_42_0(v17, v18, v19, v20, v21, v22, v23, v24, v28);
  v14(v25);

  OUTLINED_FUNCTION_36_0();

  return v16;
}

uint64_t CAFTypeTestMultiObservable.testString.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return CAFTypeTestMultiObservable.testString.setter(a1, a2, &unk_2423050A0, &unk_2423050C8, _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA26CAFTypeTestMultiObservableC_SSSgTt3g5, a6, a7, a8, a9);
}

{
  OUTLINED_FUNCTION_90_0();
  v21 = v10;
  OUTLINED_FUNCTION_81_0();
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v9;
  OUTLINED_FUNCTION_91_0();

  return v17(v12, v13, v14, v15, v16, v17, v18, v19, a9, v21);
}

void CAFTypeTestMultiObservable.testString.modify()
{
  OUTLINED_FUNCTION_235();
  v3 = OUTLINED_FUNCTION_77_0();
  v4 = __swift_coroFrameAllocStub(v3);
  *(OUTLINED_FUNCTION_13_4(v4) + 80) = v0;
  v1[11] = swift_getKeyPath();
  v1[12] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_20_4();
  *(v0 + 72) = v2;
  OUTLINED_FUNCTION_11_3();
  swift_retain_n();

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  v9 = *v7;
  v8 = v7[1];

  v10 = OUTLINED_FUNCTION_7_5();
  v6(v10);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v9;
  v1[8] = v8;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

void CAFTypeTestMultiObservable.testString.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {

    v4 = v3;
    OUTLINED_FUNCTION_71_0(v4, v5, v6, v7, v8, v9, v10, v11, v20, v21);
  }

  else
  {
    v12 = v3;
    OUTLINED_FUNCTION_71_0(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
  }

  free(v2);
}

uint64_t key path getter for CAFTypeTestMultiObservable.testData : CAFTypeTestMultiObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestMultiObservable.testData.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  a2[1] = v8;
  return result;
}

uint64_t key path setter for CAFTypeTestMultiObservable.testData : CAFTypeTestMultiObservable(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  outlined copy of Data?(*a1, v2);
  return CAFTypeTestMultiObservable.testData.setter(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t CAFTypeTestMultiObservable.testData.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_18_3(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3();
  swift_retain_n();

  v6 = v5;
  v14 = OUTLINED_FUNCTION_24_2(v6, v7, v8, v9, v10, v11, v12, v13, v27, v29, v30, v31, v32);
  v16 = *v15;
  v17 = outlined copy of Data?(*v15, *(v15 + 8));
  v25 = OUTLINED_FUNCTION_42_0(v17, v18, v19, v20, v21, v22, v23, v24, v28);
  v14(v25);

  OUTLINED_FUNCTION_36_0();

  return v16;
}

void CAFTypeTestMultiObservable.testData.modify()
{
  OUTLINED_FUNCTION_235();
  v3 = OUTLINED_FUNCTION_77_0();
  v4 = __swift_coroFrameAllocStub(v3);
  *(OUTLINED_FUNCTION_13_4(v4) + 80) = v0;
  v1[11] = swift_getKeyPath();
  v1[12] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_20_4();
  *(v0 + 72) = v2;
  OUTLINED_FUNCTION_11_3();
  swift_retain_n();

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  v8 = *v7;
  v9 = v7[1];
  v1[7] = v8;
  v1[8] = v9;
  outlined copy of Data?(v8, v9);
  v10 = OUTLINED_FUNCTION_7_5();
  v6(v10);
  OUTLINED_FUNCTION_11_3();

  OUTLINED_FUNCTION_236();
}

uint64_t CAFTypeTestMultiObservable.testRawData.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  OUTLINED_FUNCTION_232(v2);

  return v3;
}

uint64_t key path getter for CAFTypeTestMultiObservable.testEnum : CAFTypeTestMultiObservable@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>)
{
  result = CAFTypeTestMultiObservable.testEnum.getter(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

uint64_t CAFTypeTestMultiObservable.testUInt8.getter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_68_0(a1, a2, a3, a4, a5, a6, a7, a8);
  OUTLINED_FUNCTION_27_2();
  v9 = *(v8 + OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);
  v18 = v9;

  v10 = v9;
  v12 = OUTLINED_FUNCTION_70_0(v10, v11);
  v14 = *v13;
  v15 = v13[1];
  v12(v17, 0);

  return v14 | (v15 << 8);
}

uint64_t CAFTypeTestMultiObservable.testUInt8.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_88_0(a1, a2);
  OUTLINED_FUNCTION_89_0();
  v3 = v2;
  OUTLINED_FUNCTION_51_0();

  return v4();
}

void CAFTypeTestMultiObservable.testEnum.modify()
{
  OUTLINED_FUNCTION_235();
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v5 = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_29_2();
  v7 = *(v6 + 1);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v1 + 88) = v0;
  *(v1 + 89) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestMultiObservable.testDimensionUnitRawValue : CAFTypeTestMultiObservable@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>)
{
  result = CAFTypeTestMultiObservable.testDimensionUnitRawValue.getter(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  *(a1 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t CAFTypeTestMultiObservable.testUInt16.getter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_68_0(a1, a2, a3, a4, a5, a6, a7, a8);
  OUTLINED_FUNCTION_27_2();
  v9 = *(v8 + OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);
  v18 = v9;

  v10 = v9;
  v12 = OUTLINED_FUNCTION_70_0(v10, v11);
  v14 = *v13;
  v15 = *(v13 + 2);
  v12(v17, 0);

  return v14 | (v15 << 16);
}

uint64_t CAFTypeTestMultiObservable.testUInt16.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_88_0(a1, a2);
  OUTLINED_FUNCTION_89_0();
  v3 = v2;
  OUTLINED_FUNCTION_51_0();

  return v4();
}

void CAFTypeTestMultiObservable.testDimensionUnitRawValue.modify()
{
  OUTLINED_FUNCTION_235();
  v2 = OUTLINED_FUNCTION_26_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_15_3(v3);
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v4 = v1;
  OUTLINED_FUNCTION_2_5();
  v6 = *v5;
  v7 = *(v5 + 2);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v0 + 88) = v6;
  *(v0 + 90) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

id key path getter for CAFTypeTestMultiObservable.testComplexItem : CAFTypeTestMultiObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestMultiObservable.testComplexItem.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestMultiObservable.testComplexItem : CAFTypeTestMultiObservable(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return CAFTypeTestMultiObservable.testComplexItem.setter(v1, v3, v4, v5);
}

void CAFTypeTestMultiObservable.testComplexItem.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v6 = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2();
  v7 = v3;
  v8 = OUTLINED_FUNCTION_7_5();
  v0(v8);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  OUTLINED_FUNCTION_235();
  OUTLINED_FUNCTION_47_0();
  if (v4)
  {
    v5 = v1;
    v6 = v3;
    v7 = OUTLINED_FUNCTION_26_2();
    v0(v7);
  }

  else
  {
    v8 = v3;
    v9 = OUTLINED_FUNCTION_26_2();
    v0(v9);
  }

  OUTLINED_FUNCTION_236();

  free(v10);
}

uint64_t key path getter for CAFTypeTestMultiObservable.testArrayBool : CAFTypeTestMultiObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestMultiObservable.testArrayBool.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

void CAFTypeTestMultiObservable.testArrayBool.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  OUTLINED_FUNCTION_235();
  OUTLINED_FUNCTION_47_0();
  if (v2)
  {

    v3 = v1;
    v4 = OUTLINED_FUNCTION_26_2();
    v0(v4);
  }

  else
  {
    v5 = v1;
    v6 = OUTLINED_FUNCTION_26_2();
    v0(v6);
  }

  OUTLINED_FUNCTION_236();

  free(v7);
}

uint64_t key path getter for CAFTypeTestMultiObservable.testArrayUInt8 : CAFTypeTestMultiObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestMultiObservable.testArrayUInt8.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

void CAFTypeTestMultiObservable.testArrayUInt8.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestMultiObservable.testArrayUInt16 : CAFTypeTestMultiObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestMultiObservable.testArrayUInt16.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

void CAFTypeTestMultiObservable.testArrayUInt16.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestMultiObservable.testArrayUInt32 : CAFTypeTestMultiObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestMultiObservable.testArrayUInt32.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

void CAFTypeTestMultiObservable.testArrayUInt32.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestMultiObservable.testArrayUInt64 : CAFTypeTestMultiObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestMultiObservable.testArrayUInt64.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

void CAFTypeTestMultiObservable.testArrayUInt64.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestMultiObservable.testArrayInt8 : CAFTypeTestMultiObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestMultiObservable.testArrayInt8.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

void CAFTypeTestMultiObservable.testArrayInt8.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestMultiObservable.testArrayInt16 : CAFTypeTestMultiObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestMultiObservable.testArrayInt16.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

void CAFTypeTestMultiObservable.testArrayInt16.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestMultiObservable.testArrayInt32 : CAFTypeTestMultiObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestMultiObservable.testArrayInt32.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

void CAFTypeTestMultiObservable.testArrayInt32.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestMultiObservable.testArrayInt64 : CAFTypeTestMultiObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestMultiObservable.testArrayInt64.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

void CAFTypeTestMultiObservable.testArrayInt64.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestMultiObservable.testArrayFloat : CAFTypeTestMultiObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestMultiObservable.testArrayFloat.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

void CAFTypeTestMultiObservable.testArrayFloat.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestMultiObservable.testArrayString : CAFTypeTestMultiObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestMultiObservable.testArrayString.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

void CAFTypeTestMultiObservable.testArrayString.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestMultiObservable.testArrayData : CAFTypeTestMultiObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestMultiObservable.testArrayData.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

uint64_t CAFTypeTestMultiObservable.testArrayBool.getter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_18_3(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3();
  swift_retain_n();

  v6 = v5;
  v14 = OUTLINED_FUNCTION_24_2(v6, v7, v8, v9, v10, v11, v12, v13, v27, v29, v30, v31, v32);
  v16 = *v15;

  v25 = OUTLINED_FUNCTION_42_0(v17, v18, v19, v20, v21, v22, v23, v24, v28);
  v14(v25);

  OUTLINED_FUNCTION_36_0();

  return v16;
}

void CAFTypeTestMultiObservable.testArrayData.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t CAFTypeTestMultiObservable.testArrayRawData.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

id key path getter for CAFTypeTestMultiObservable.testComplexItems : CAFTypeTestMultiObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestMultiObservable.testComplexItems.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestMultiObservable.testComplexItems : CAFTypeTestMultiObservable(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return CAFTypeTestMultiObservable.testComplexItems.setter(v1, v3, v4, v5);
}

void CAFTypeTestMultiObservable.testComplexItems.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v6 = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2();
  v7 = v3;
  v8 = OUTLINED_FUNCTION_7_5();
  v0(v8);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

id key path getter for CAFTypeTestMultiObservable.testComplexItemValue : CAFTypeTestMultiObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestMultiObservable.testComplexItemValue.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestMultiObservable.testComplexItemValue : CAFTypeTestMultiObservable(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return CAFTypeTestMultiObservable.testComplexItemValue.setter(v1, v3, v4, v5);
}

void CAFTypeTestMultiObservable.testComplexItemValue.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v6 = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2();
  v7 = v3;
  v8 = OUTLINED_FUNCTION_7_5();
  v0(v8);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

id key path getter for CAFTypeTestMultiObservable.testComplexItemList : CAFTypeTestMultiObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestMultiObservable.testComplexItemList.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestMultiObservable.testComplexItemList : CAFTypeTestMultiObservable(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return CAFTypeTestMultiObservable.testComplexItemList.setter(v1, v3, v4, v5);
}

id CAFTypeTestMultiObservable.testComplexItem.getter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_18_3(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3();
  swift_retain_n();

  v6 = v5;
  v14 = OUTLINED_FUNCTION_24_2(v6, v7, v8, v9, v10, v11, v12, v13, v27, v29, v30, v31, v32);
  v16 = *v15;
  v17 = *v15;
  v25 = OUTLINED_FUNCTION_42_0(v17, v18, v19, v20, v21, v22, v23, v24, v28);
  v14(v25);

  OUTLINED_FUNCTION_36_0();

  return v16;
}

uint64_t CAFTypeTestMultiObservable.testComplexItem.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, id, uint64_t, uint64_t))
{
  swift_getKeyPath();
  v7 = OUTLINED_FUNCTION_89_0();
  v8 = v4;

  return a4(a1, v8, v5, v7);
}

void CAFTypeTestMultiObservable.testComplexItemList.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  v6 = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2();
  v7 = v3;
  v8 = OUTLINED_FUNCTION_7_5();
  v0(v8);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t CAFTypeTestMultiObservable.$testBool.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_16_3(v2 + *a1, a2);

  v5 = a2(v4);

  return v5;
}

uint64_t CAFTypeTestMultiObservable.userVisibleLabel.getter(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);

  OUTLINED_FUNCTION_232(v3);

  return v4;
}

uint64_t CAFTypeTestMultiObservable.$userVisibleLabel.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t CAFTypeTestMultiObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed);
  [v1 registeredForUserVisibleLabel];
  OUTLINED_FUNCTION_9_2();
  if (v4)
  {
    v3 = CAFTypeTestMultiObservable.userVisibleLabel.getter();
  }

  v321 = v3;
  v322 = v2;
  [v1 registeredForTestBool];
  OUTLINED_FUNCTION_9_2();
  if (v5)
  {
    CAFTypeTestMultiObservable.testBool.getter(v5, v6, v7, v8, v9);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v10 = OUTLINED_FUNCTION_38_0(v11);
  }

  v319 = v10;
  v320 = v6;
  v12 = [v1 registeredForTestUInt8];
  v19 = 0x73696765726E753CLL;
  v20 = 0xEE003E6465726574;
  if (v12)
  {
    v21 = CAFTypeTestMultiObservable.testUInt8.getter(v12, 0xEE003E6465726574, v13, v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_52_0(v21);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5UInt8VSgMd, &_ss5UInt8VSgMR);
    v19 = OUTLINED_FUNCTION_38_0(v22);
  }

  v318 = v20;
  [v1 registeredForTestUInt16];
  OUTLINED_FUNCTION_9_2();
  if (v23)
  {
    v32 = CAFTypeTestMultiObservable.testUInt16.getter(v23, v24, v25, v26, v27, v28, v29, v30);
    OUTLINED_FUNCTION_50_0(v32);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt16VSgMd, &_ss6UInt16VSgMR);
    v31 = OUTLINED_FUNCTION_38_0(v33);
  }

  v316 = v31;
  v317 = v24;
  [v1 registeredForTestUInt32];
  OUTLINED_FUNCTION_9_2();
  if (v34)
  {
    v40 = CAFTypeTestMultiObservable.testUInt32.getter(v34, v35, v36, v37, v38);
    OUTLINED_FUNCTION_49_0(v40);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32VSgMd, &_ss6UInt32VSgMR);
    v39 = OUTLINED_FUNCTION_38_0(v41);
  }

  v314 = v39;
  v315 = v35;
  [v1 registeredForTestUInt64];
  OUTLINED_FUNCTION_9_2();
  if (v42)
  {
    CAFTypeTestMultiObservable.testUInt64.getter(v42, v43, v44, v45, v46);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64VSgMd, &_ss6UInt64VSgMR);
    v47 = OUTLINED_FUNCTION_38_0(v48);
  }

  v312 = v47;
  v313 = v43;
  [v1 registeredForTestInt8];
  OUTLINED_FUNCTION_9_2();
  if (v49)
  {
    v58 = CAFTypeTestMultiObservable.testInt8.getter(v49, v50, v51, v52, v53, v54, v55, v56);
    OUTLINED_FUNCTION_52_0(v58);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss4Int8VSgMd, &_ss4Int8VSgMR);
    v57 = OUTLINED_FUNCTION_38_0(v59);
  }

  v310 = v57;
  v311 = v50;
  [v1 registeredForTestInt16];
  OUTLINED_FUNCTION_9_2();
  if (v60)
  {
    v69 = CAFTypeTestMultiObservable.testInt16.getter(v60, v61, v62, v63, v64, v65, v66, v67);
    OUTLINED_FUNCTION_50_0(v69);
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int16VSgMd, &_ss5Int16VSgMR);
    v68 = OUTLINED_FUNCTION_38_0(v70);
  }

  v308 = v68;
  v309 = v61;
  [v1 registeredForTestInt32];
  OUTLINED_FUNCTION_9_2();
  if (v71)
  {
    v77 = CAFTypeTestMultiObservable.testInt32.getter(v71, v72, v73, v74, v75);
    OUTLINED_FUNCTION_49_0(v77);
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int32VSgMd, &_ss5Int32VSgMR);
    v76 = OUTLINED_FUNCTION_38_0(v78);
  }

  v306 = v76;
  v307 = v72;
  [v1 registeredForTestInt64];
  OUTLINED_FUNCTION_9_2();
  if (v79)
  {
    CAFTypeTestMultiObservable.testInt64.getter(v79, v80, v81, v82, v83);
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int64VSgMd, &_ss5Int64VSgMR);
    v84 = OUTLINED_FUNCTION_38_0(v85);
  }

  v304 = v84;
  v305 = v80;
  [v1 registeredForTestFloat];
  OUTLINED_FUNCTION_9_2();
  if (v86)
  {
    v92 = CAFTypeTestMultiObservable.testFloat.getter(v86, v87, v88, v89, v90);
    OUTLINED_FUNCTION_49_0(v92);
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfSgMd, &_sSfSgMR);
    v91 = OUTLINED_FUNCTION_38_0(v93);
  }

  v302 = v91;
  v303 = v87;
  [v1 registeredForTestString];
  OUTLINED_FUNCTION_9_2();
  if (v94)
  {
    CAFTypeTestMultiObservable.testString.getter(v94, v95, v96, v97, v98);
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v99 = OUTLINED_FUNCTION_38_0(v100);
  }

  v300 = v99;
  v301 = v95;
  [v1 registeredForTestData];
  OUTLINED_FUNCTION_9_2();
  if (v101)
  {
    CAFTypeTestMultiObservable.testData.getter(v101, v102, v103, v104, v105);
    v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, _s10Foundation4DataVSgMR);
    v106 = OUTLINED_FUNCTION_38_0(v107);
  }

  v298 = v106;
  v299 = v102;
  [v1 registeredForTestRawData];
  OUTLINED_FUNCTION_9_2();
  if (v110)
  {
    CAFTypeTestMultiObservable.testRawData.getter();
    v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, _s10Foundation4DataVSgMR);
    v109 = OUTLINED_FUNCTION_38_0(v111);
  }

  v296 = v109;
  v297 = v108;
  [v1 registeredForTestEnum];
  OUTLINED_FUNCTION_9_2();
  if (v112)
  {
    v121 = CAFTypeTestMultiObservable.testEnum.getter(v112, v113, v114, v115, v116, v117, v118, v119);
    OUTLINED_FUNCTION_52_0(v121);
    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CAFButtonActionVSgMd, &_sSo15CAFButtonActionVSgMR);
    v120 = OUTLINED_FUNCTION_38_0(v122);
  }

  v294 = v120;
  v295 = v113;
  [v1 registeredForTestDimensionUnit];
  OUTLINED_FUNCTION_9_2();
  if (v123)
  {
    v132 = CAFTypeTestMultiObservable.testDimensionUnitRawValue.getter(v123, v124, v125, v126, v127, v128, v129, v130);
    OUTLINED_FUNCTION_50_0(v132);
    v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CAFUnitTypeVSgMd, &_sSo11CAFUnitTypeVSgMR);
    v131 = OUTLINED_FUNCTION_38_0(v133);
  }

  v292 = v131;
  v293 = v124;
  [v1 registeredForTestComplexItem];
  OUTLINED_FUNCTION_9_2();
  if (v134)
  {
    CAFTypeTestMultiObservable.testComplexItem.getter(v134, v135, v136, v137, v138);
    v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18CAFTestComplexItemCSgMd, &_sSo18CAFTestComplexItemCSgMR);
    v139 = OUTLINED_FUNCTION_38_0(v140);
  }

  v290 = v139;
  v291 = v135;
  [v1 registeredForTestArrayBool];
  OUTLINED_FUNCTION_9_2();
  if (v141)
  {
    CAFTypeTestMultiObservable.testArrayBool.getter(v141, v142, v143, v144, v145);
    v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySbGSgMd, &_sSaySbGSgMR);
    v146 = OUTLINED_FUNCTION_38_0(v147);
  }

  v288 = v146;
  v289 = v142;
  [v1 registeredForTestArrayUInt8];
  OUTLINED_FUNCTION_9_2();
  if (v148)
  {
    CAFTypeTestMultiObservable.testArrayUInt8.getter(v148, v149, v150, v151, v152);
    v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGSgMd, &_sSays5UInt8VGSgMR);
    v153 = OUTLINED_FUNCTION_38_0(v154);
  }

  v286 = v153;
  v287 = v149;
  [v1 registeredForTestArrayUInt16];
  OUTLINED_FUNCTION_9_2();
  if (v155)
  {
    CAFTypeTestMultiObservable.testArrayUInt16.getter(v155, v156, v157, v158, v159);
    v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt16VGSgMd, &_sSays6UInt16VGSgMR);
    v160 = OUTLINED_FUNCTION_38_0(v161);
  }

  v284 = v160;
  v285 = v156;
  [v1 registeredForTestArrayUInt32];
  OUTLINED_FUNCTION_9_2();
  if (v162)
  {
    CAFTypeTestMultiObservable.testArrayUInt32.getter(v162, v163, v164, v165, v166);
    v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGSgMd, &_sSays6UInt32VGSgMR);
    v167 = OUTLINED_FUNCTION_38_0(v168);
  }

  v282 = v167;
  v283 = v163;
  [v1 registeredForTestArrayUInt64];
  OUTLINED_FUNCTION_9_2();
  if (v169)
  {
    CAFTypeTestMultiObservable.testArrayUInt64.getter(v169, v170, v171, v172, v173);
    v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt64VGSgMd, &_sSays6UInt64VGSgMR);
    v174 = OUTLINED_FUNCTION_38_0(v175);
  }

  v280 = v174;
  v281 = v170;
  [v1 registeredForTestArrayInt8];
  OUTLINED_FUNCTION_9_2();
  if (v176)
  {
    CAFTypeTestMultiObservable.testArrayInt8.getter(v176, v177, v178, v179, v180);
    v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays4Int8VGSgMd, &_sSays4Int8VGSgMR);
    v181 = OUTLINED_FUNCTION_38_0(v182);
  }

  v278 = v181;
  v279 = v177;
  [v1 registeredForTestArrayInt16];
  OUTLINED_FUNCTION_9_2();
  if (v183)
  {
    CAFTypeTestMultiObservable.testArrayInt16.getter(v183, v184, v185, v186, v187);
    v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5Int16VGSgMd, &_sSays5Int16VGSgMR);
    v188 = OUTLINED_FUNCTION_38_0(v189);
  }

  v276 = v188;
  v277 = v184;
  [v1 registeredForTestArrayInt32];
  OUTLINED_FUNCTION_9_2();
  if (v190)
  {
    CAFTypeTestMultiObservable.testArrayInt32.getter(v190, v191, v192, v193, v194);
    v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5Int32VGSgMd, &_sSays5Int32VGSgMR);
    v195 = OUTLINED_FUNCTION_38_0(v196);
  }

  v274 = v195;
  v275 = v191;
  [v1 registeredForTestArrayInt64];
  OUTLINED_FUNCTION_9_2();
  if (v197)
  {
    CAFTypeTestMultiObservable.testArrayInt64.getter(v197, v198, v199, v200, v201);
    v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5Int64VGSgMd, &_sSays5Int64VGSgMR);
    v202 = OUTLINED_FUNCTION_38_0(v203);
  }

  v272 = v202;
  v273 = v198;
  [v1 registeredForTestArrayFloat];
  OUTLINED_FUNCTION_9_2();
  if (v204)
  {
    CAFTypeTestMultiObservable.testArrayFloat.getter(v204, v205, v206, v207, v208);
    v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGSgMd, &_sSaySfGSgMR);
    v209 = OUTLINED_FUNCTION_38_0(v210);
  }

  v270 = v209;
  v271 = v205;
  [v1 registeredForTestArrayString];
  OUTLINED_FUNCTION_9_2();
  if (v211)
  {
    CAFTypeTestMultiObservable.testArrayString.getter(v211, v212, v213, v214, v215);
    v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGSgMd, &_sSaySSGSgMR);
    v216 = OUTLINED_FUNCTION_38_0(v217);
  }

  v268 = v216;
  v269 = v212;
  [v1 registeredForTestArrayData];
  OUTLINED_FUNCTION_9_2();
  if (v218)
  {
    CAFTypeTestMultiObservable.testArrayData.getter(v218, v219, v220, v221, v222);
    v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGSgMd, &_sSay10Foundation4DataVGSgMR);
    v223 = OUTLINED_FUNCTION_38_0(v224);
  }

  v266 = v223;
  v267 = v219;
  v225 = [v1 registeredForTestArrayRawData];
  v226 = 0x73696765726E753CLL;
  v227 = 0xEE003E6465726574;
  if (v225)
  {
    CAFTypeTestMultiObservable.testArrayRawData.getter();
    v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGSgMd, &_sSay10Foundation4DataVGSgMR);
    v226 = OUTLINED_FUNCTION_38_0(v228);
    v227 = v229;
  }

  v265 = v226;
  v230 = [v1 registeredForTestComplexItems];
  v235 = 0x73696765726E753CLL;
  v236 = 0xEE003E6465726574;
  if (v230)
  {
    CAFTypeTestMultiObservable.testComplexItems.getter(v230, v231, v232, v233, v234);
    v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19CAFTestComplexItemsCSgMd, &_sSo19CAFTestComplexItemsCSgMR);
    v235 = OUTLINED_FUNCTION_38_0(v237);
    v236 = v238;
  }

  v264 = v235;
  v239 = [v1 registeredForTestComplexItemValue];
  v244 = 0x73696765726E753CLL;
  v245 = 0xEE003E6465726574;
  if (v239)
  {
    CAFTypeTestMultiObservable.testComplexItemValue.getter(v239, v240, v241, v242, v243);
    v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18CAFTestComplexItemCSgMd, &_sSo18CAFTestComplexItemCSgMR);
    v244 = OUTLINED_FUNCTION_38_0(v246);
    v245 = v247;
  }

  v248 = [v1 registeredForTestComplexItemList];
  if (v248)
  {
    CAFTypeTestMultiObservable.testComplexItemList.getter(v248, v249, v250, v251, v252);
    v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19CAFTestComplexItemsCSgMd, &_sSo19CAFTestComplexItemsCSgMR);
    OUTLINED_FUNCTION_38_0(v253);
  }

  _StringGuts.grow(_:)(657);
  MEMORY[0x245D0A530](0xD00000000000001DLL, 0x8000000242310E50);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000015, 0x800000024230BD90);
  MEMORY[0x245D0A530](v321, v322);

  v254 = OUTLINED_FUNCTION_25_4();
  MEMORY[0x245D0A530](v254 & 0xFFFFFFFFFFFFLL | 0x6F42000000000000, 0xEC000000203A6C6FLL);
  MEMORY[0x245D0A530](v319, v320);

  OUTLINED_FUNCTION_45_0();
  MEMORY[0x245D0A530](v19, v318);

  OUTLINED_FUNCTION_74_0();
  MEMORY[0x245D0A530](v316, v317);

  OUTLINED_FUNCTION_74_0();
  MEMORY[0x245D0A530](v314, v315);

  OUTLINED_FUNCTION_74_0();
  MEMORY[0x245D0A530](v312, v313);

  MEMORY[0x245D0A530](0x6E4974736574202CLL, 0xEC000000203A3874);
  MEMORY[0x245D0A530](v310, v311);

  OUTLINED_FUNCTION_45_0();
  MEMORY[0x245D0A530](v308, v309);

  OUTLINED_FUNCTION_45_0();
  MEMORY[0x245D0A530](v306, v307);

  OUTLINED_FUNCTION_45_0();
  MEMORY[0x245D0A530](v304, v305);

  v255 = OUTLINED_FUNCTION_25_4();
  MEMORY[0x245D0A530](v255 & 0xFFFFFFFFFFFFLL | 0x6C46000000000000, 0xED0000203A74616FLL);
  MEMORY[0x245D0A530](v302, v303);

  v256 = OUTLINED_FUNCTION_25_4();
  MEMORY[0x245D0A530](v256 & 0xFFFFFFFFFFFFLL | 0x7453000000000000, 0xEE00203A676E6972);
  MEMORY[0x245D0A530](v300, v301);

  v257 = OUTLINED_FUNCTION_25_4();
  MEMORY[0x245D0A530](v257 & 0xFFFFFFFFFFFFLL | 0x6144000000000000, 0xEC000000203A6174);
  MEMORY[0x245D0A530](v298, v299);

  v258 = OUTLINED_FUNCTION_25_4();
  MEMORY[0x245D0A530](v258 & 0xFFFFFFFFFFFFLL | 0x6152000000000000, 0xEF203A6174614477);
  MEMORY[0x245D0A530](v296, v297);

  v259 = OUTLINED_FUNCTION_25_4();
  MEMORY[0x245D0A530](v259 & 0xFFFFFFFFFFFFLL | 0x6E45000000000000, v260 | 0xEC000000203A6174);
  MEMORY[0x245D0A530](v294, v295);

  MEMORY[0x245D0A530](0xD00000000000001DLL, 0x8000000242310E70);
  MEMORY[0x245D0A530](v292, v293);

  OUTLINED_FUNCTION_40_0();
  MEMORY[0x245D0A530](v290, v291);

  MEMORY[0x245D0A530](0xD000000000000011, 0x8000000242310EB0);
  MEMORY[0x245D0A530](v288, v289);

  OUTLINED_FUNCTION_2_26();
  MEMORY[0x245D0A530](v286, v287);

  OUTLINED_FUNCTION_40_0();
  MEMORY[0x245D0A530](v284, v285);

  OUTLINED_FUNCTION_40_0();
  MEMORY[0x245D0A530](v282, v283);

  OUTLINED_FUNCTION_40_0();
  MEMORY[0x245D0A530](v280, v281);

  MEMORY[0x245D0A530](0xD000000000000011, 0x8000000242310F50);
  MEMORY[0x245D0A530](v278, v279);

  OUTLINED_FUNCTION_2_26();
  MEMORY[0x245D0A530](v276, v277);

  OUTLINED_FUNCTION_2_26();
  MEMORY[0x245D0A530](v274, v275);

  OUTLINED_FUNCTION_2_26();
  MEMORY[0x245D0A530](v272, v273);

  OUTLINED_FUNCTION_2_26();
  MEMORY[0x245D0A530](v270, v271);

  OUTLINED_FUNCTION_40_0();
  MEMORY[0x245D0A530](v268, v269);

  MEMORY[0x245D0A530](0xD000000000000011, 0x8000000242311010);
  MEMORY[0x245D0A530](v266, v267);

  MEMORY[0x245D0A530](0xD000000000000014, 0x8000000242311030);
  MEMORY[0x245D0A530](v265, v227);

  MEMORY[0x245D0A530](0xD000000000000014, 0x8000000242311050);
  MEMORY[0x245D0A530](v264, v236);

  MEMORY[0x245D0A530](0xD000000000000018, 0x8000000242311070);
  MEMORY[0x245D0A530](v263, v245);

  MEMORY[0x245D0A530](0xD000000000000017, 0x8000000242311090);
  v261 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v261);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFTypeTestMultiObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_cachedDescription + 8))
  {
    v4 = *(v0 + v1);
  }

  else
  {
    *v3 = CAFTypeTestMultiObservable._description.getter();
    v3[1] = v5;

    v4 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v4 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFTypeTestMultiObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__userVisibleLabel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFTypeTestMultiObservableCSSGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFTypeTestMultiObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v9 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testBool;
  swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSbSgGMd, &_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v10);
  OUTLINED_FUNCTION_0_7();
  *&v2[v9] = specialized SafePublished.init(observedValuekeypath:)();
  v11 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testUInt8;
  swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCs5UInt8VSgGMd, &_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCs5UInt8VSgGMR);
  OUTLINED_FUNCTION_225(v12);
  v13 = OUTLINED_FUNCTION_0_7();
  *&v2[v11] = specialized SafePublished.init(observedValuekeypath:)(v13);
  v14 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testUInt16;
  swift_getKeyPath();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCs6UInt16VSgGMd, &_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCs6UInt16VSgGMR);
  OUTLINED_FUNCTION_225(v15);
  v16 = OUTLINED_FUNCTION_0_7();
  *&v2[v14] = specialized SafePublished.init(observedValuekeypath:)(v16);
  v17 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testUInt32;
  swift_getKeyPath();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCs6UInt32VSgGMd, &_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCs6UInt32VSgGMR);
  OUTLINED_FUNCTION_225(v18);
  v19 = OUTLINED_FUNCTION_0_7();
  *&v2[v17] = specialized SafePublished.init(observedValuekeypath:)(v19);
  v20 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testUInt64;
  swift_getKeyPath();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCs6UInt64VSgGMd, &_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCs6UInt64VSgGMR);
  OUTLINED_FUNCTION_225(v21);
  v22 = OUTLINED_FUNCTION_0_7();
  *&v2[v20] = specialized SafePublished.init(observedValuekeypath:)(v22);
  v23 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testInt8;
  swift_getKeyPath();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCs4Int8VSgGMd, &_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCs4Int8VSgGMR);
  OUTLINED_FUNCTION_225(v24);
  v25 = OUTLINED_FUNCTION_0_7();
  *&v2[v23] = specialized SafePublished.init(observedValuekeypath:)(v25);
  v26 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testInt16;
  swift_getKeyPath();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCs5Int16VSgGMd, &_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCs5Int16VSgGMR);
  OUTLINED_FUNCTION_225(v27);
  v28 = OUTLINED_FUNCTION_0_7();
  *&v2[v26] = specialized SafePublished.init(observedValuekeypath:)(v28);
  v29 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testInt32;
  swift_getKeyPath();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCs5Int32VSgGMd, &_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCs5Int32VSgGMR);
  OUTLINED_FUNCTION_225(v30);
  v31 = OUTLINED_FUNCTION_0_7();
  *&v2[v29] = specialized SafePublished.init(observedValuekeypath:)(v31);
  v32 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testInt64;
  swift_getKeyPath();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCs5Int64VSgGMd, &_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCs5Int64VSgGMR);
  OUTLINED_FUNCTION_225(v33);
  v34 = OUTLINED_FUNCTION_0_7();
  *&v2[v32] = specialized SafePublished.init(observedValuekeypath:)(v34);
  v35 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testFloat;
  swift_getKeyPath();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSfSgGMd, _s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSfSgGMR);
  OUTLINED_FUNCTION_225(v36);
  v37 = OUTLINED_FUNCTION_0_7();
  *&v2[v35] = specialized SafePublished.init(observedValuekeypath:)(v37);
  v38 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testString;
  swift_getKeyPath();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSSSgGMd, _s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v39);
  OUTLINED_FUNCTION_0_7();
  *&v2[v38] = specialized SafePublished.init(observedValuekeypath:)();
  v40 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testData;
  swift_getKeyPath();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableC10Foundation4DataVSgGMd, _s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableC10Foundation4DataVSgGMR);
  OUTLINED_FUNCTION_225(v41);
  OUTLINED_FUNCTION_0_7();
  *&v2[v40] = specialized SafePublished.init(observedValuekeypath:)();
  v42 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testRawData;
  swift_getKeyPath();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFTypeTestMultiObservableC10Foundation4DataVSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFTypeTestMultiObservableC10Foundation4DataVSgGMR);
  OUTLINED_FUNCTION_225(v43);
  OUTLINED_FUNCTION_0_7();
  *&v2[v42] = specialized SafePublished.init(observedValuekeypath:)();
  v44 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testEnum;
  swift_getKeyPath();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSo15CAFButtonActionVSgGMd, &_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSo15CAFButtonActionVSgGMR);
  OUTLINED_FUNCTION_225(v45);
  v46 = OUTLINED_FUNCTION_0_7();
  *&v2[v44] = specialized SafePublished.init(observedValuekeypath:)(v46);
  v47 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testDimensionUnitRawValue;
  swift_getKeyPath();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSo11CAFUnitTypeVSgGMd, _s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSo11CAFUnitTypeVSgGMR);
  OUTLINED_FUNCTION_225(v48);
  v49 = OUTLINED_FUNCTION_0_7();
  *&v2[v47] = specialized SafePublished.init(observedValuekeypath:)(v49);
  v50 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testComplexItem;
  swift_getKeyPath();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSo18CAFTestComplexItemCSgGMd, &_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSo18CAFTestComplexItemCSgGMR);
  OUTLINED_FUNCTION_225(v51);
  OUTLINED_FUNCTION_0_7();
  *&v2[v50] = specialized SafePublished.init(observedValuekeypath:)();
  v52 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testArrayBool;
  swift_getKeyPath();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSaySbGSgGMd, &_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSaySbGSgGMR);
  OUTLINED_FUNCTION_225(v53);
  OUTLINED_FUNCTION_0_7();
  *&v2[v52] = specialized SafePublished.init(observedValuekeypath:)();
  v54 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testArrayUInt8;
  swift_getKeyPath();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSays5UInt8VGSgGMd, &_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSays5UInt8VGSgGMR);
  OUTLINED_FUNCTION_225(v55);
  OUTLINED_FUNCTION_0_7();
  *&v2[v54] = specialized SafePublished.init(observedValuekeypath:)();
  v56 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testArrayUInt16;
  swift_getKeyPath();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSays6UInt16VGSgGMd, &_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSays6UInt16VGSgGMR);
  OUTLINED_FUNCTION_225(v57);
  OUTLINED_FUNCTION_0_7();
  *&v2[v56] = specialized SafePublished.init(observedValuekeypath:)();
  v58 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testArrayUInt32;
  swift_getKeyPath();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSays6UInt32VGSgGMd, &_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSays6UInt32VGSgGMR);
  OUTLINED_FUNCTION_225(v59);
  OUTLINED_FUNCTION_0_7();
  *&v2[v58] = specialized SafePublished.init(observedValuekeypath:)();
  v60 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testArrayUInt64;
  swift_getKeyPath();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSays6UInt64VGSgGMd, &_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSays6UInt64VGSgGMR);
  OUTLINED_FUNCTION_225(v61);
  OUTLINED_FUNCTION_0_7();
  *&v2[v60] = specialized SafePublished.init(observedValuekeypath:)();
  v62 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testArrayInt8;
  swift_getKeyPath();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSays4Int8VGSgGMd, &_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSays4Int8VGSgGMR);
  OUTLINED_FUNCTION_225(v63);
  OUTLINED_FUNCTION_0_7();
  *&v2[v62] = specialized SafePublished.init(observedValuekeypath:)();
  v64 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testArrayInt16;
  swift_getKeyPath();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSays5Int16VGSgGMd, &_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSays5Int16VGSgGMR);
  OUTLINED_FUNCTION_225(v65);
  OUTLINED_FUNCTION_0_7();
  *&v2[v64] = specialized SafePublished.init(observedValuekeypath:)();
  v66 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testArrayInt32;
  swift_getKeyPath();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSays5Int32VGSgGMd, &_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSays5Int32VGSgGMR);
  OUTLINED_FUNCTION_225(v67);
  OUTLINED_FUNCTION_0_7();
  *&v2[v66] = specialized SafePublished.init(observedValuekeypath:)();
  v68 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testArrayInt64;
  swift_getKeyPath();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSays5Int64VGSgGMd, &_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSays5Int64VGSgGMR);
  OUTLINED_FUNCTION_225(v69);
  OUTLINED_FUNCTION_0_7();
  *&v2[v68] = specialized SafePublished.init(observedValuekeypath:)();
  v70 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testArrayFloat;
  swift_getKeyPath();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSaySfGSgGMd, _s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSaySfGSgGMR);
  OUTLINED_FUNCTION_225(v71);
  OUTLINED_FUNCTION_0_7();
  *&v2[v70] = specialized SafePublished.init(observedValuekeypath:)();
  v72 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testArrayString;
  swift_getKeyPath();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSaySSGSgGMd, _s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSaySSGSgGMR);
  OUTLINED_FUNCTION_225(v73);
  OUTLINED_FUNCTION_0_7();
  *&v2[v72] = specialized SafePublished.init(observedValuekeypath:)();
  v74 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testArrayData;
  swift_getKeyPath();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSay10Foundation4DataVGSgGMd, _s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSay10Foundation4DataVGSgGMR);
  OUTLINED_FUNCTION_225(v75);
  OUTLINED_FUNCTION_0_7();
  *&v2[v74] = specialized SafePublished.init(observedValuekeypath:)();
  v76 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testArrayRawData;
  swift_getKeyPath();
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFTypeTestMultiObservableCSay10Foundation4DataVGSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFTypeTestMultiObservableCSay10Foundation4DataVGSgGMR);
  OUTLINED_FUNCTION_225(v77);
  OUTLINED_FUNCTION_0_7();
  *&v2[v76] = specialized SafePublished.init(observedValuekeypath:)();
  v78 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testComplexItems;
  swift_getKeyPath();
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSo19CAFTestComplexItemsCSgGMd, _s10CAFCombine13SafePublishedCyAA26CAFTypeTestMultiObservableCSo19CAFTestComplexItemsCSgGMR);
  OUTLINED_FUNCTION_225(v79);
  OUTLINED_FUNCTION_0_7();
  *&v2[v78] = specialized SafePublished.init(observedValuekeypath:)();
  v80 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testComplexItemValue;
  swift_getKeyPath();
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v80] = specialized SafePublished.init(observedValuekeypath:)();
  v81 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testComplexItemList;
  swift_getKeyPath();
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v81] = specialized SafePublished.init(observedValuekeypath:)();
  v82 = OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__name;
  swift_getKeyPath();
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v82] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed] = a1;
  v86.receiver = v2;
  v86.super_class = type metadata accessor for CAFTypeTestMultiObservable();
  v83 = a1;
  v84 = objc_msgSendSuper2(&v86, sel_init);
  [v83 registerObserver_];

  return v84;
}

uint64_t CAFTypeTestMultiObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFTypeTestMultiObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFTypeTestMultiObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFTypeTestMultiObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFTypeTestMultiObservable@<X0>(void *a1@<X8>)
{
  result = CAFTypeTestMultiObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFTypeTestMultiObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFTypeTestMultiObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestBool:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  OUTLINED_FUNCTION_16_3(v2 + OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testBool, a2);

  specialized SafePublished.value.setter(v3 & 1);
}

uint64_t CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestUInt32:)(uint64_t a1)
{
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_10_7(v3, v4, v5, v6);
  OUTLINED_FUNCTION_76_0();
  v1(v2);
}

uint64_t CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestUInt64:)(uint64_t a1)
{
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_10_7(v2, v3, v4, v5);
  OUTLINED_FUNCTION_76_0();
  v6 = OUTLINED_FUNCTION_7_5();
  v1(v6);
}

uint64_t CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestFloat:)(float a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_16_3(v3 + OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testFloat, a3);

  specialized SafePublished.value.setter(LODWORD(a1));
}

uint64_t CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestString:)(uint64_t a1)
{
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_15_4(v1);

  v2 = OUTLINED_FUNCTION_197();
  specialized SafePublished.value.setter(v2, v3);
}

uint64_t CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestData:)(uint64_t a1)
{
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_15_4(v1);
  OUTLINED_FUNCTION_76_0();
  v2 = OUTLINED_FUNCTION_197();
  outlined copy of Data?(v2, v3);
  v4 = OUTLINED_FUNCTION_197();
  specialized SafePublished.value.setter(v4, v5);
}

uint64_t CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestRawData:)(uint64_t a1)
{
  OUTLINED_FUNCTION_46_0();

  v1 = OUTLINED_FUNCTION_197();
  outlined copy of Data?(v1, v2);
  v3 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v3, v4);
}

void @objc CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestData:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_90_0();
  v21 = v20;
  v22 = v18;
  v35 = v23;
  if (v19)
  {
    v24 = v19;
    v25 = v18;
    v26 = v35;
    v27 = v24;
    v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
  }

  else
  {
    v31 = v18;
    v32 = v35;
    v28 = 0;
    v30 = 0xF000000000000000;
  }

  v21();
  outlined consume of Data?(v28, v30);

  OUTLINED_FUNCTION_91_0();
}

uint64_t CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestUInt8:)(uint64_t a1)
{
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_10_7(v3, v4, v5, v6);
  OUTLINED_FUNCTION_76_0();
  v1(v2);
}

uint64_t CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestUInt16:)(uint64_t a1)
{
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_10_7(v3, v4, v5, v6);
  OUTLINED_FUNCTION_76_0();
  v1(v2);
}

void CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestArrayBool:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_44_0();
  v13 = v12;
  OUTLINED_FUNCTION_32_3(v14, v12, v15);
  if (!v13 || (v16 = specialized Array._getCount()()) == 0)
  {

LABEL_14:

    specialized SafePublished.value.setter(v29);

    OUTLINED_FUNCTION_43_0();
    return;
  }

  v17 = v16;
  OUTLINED_FUNCTION_41_0();
  v18 = OUTLINED_FUNCTION_8_4();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18, v19, v20);
  if ((v17 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_7_10();
    do
    {
      if (v11)
      {
        OUTLINED_FUNCTION_72_0();
      }

      else
      {
        v21 = OUTLINED_FUNCTION_75_0();
      }

      v22 = v21;
      [v21 BOOLValue];

      OUTLINED_FUNCTION_12_3();
      if (v24)
      {
        v26 = OUTLINED_FUNCTION_5_17(v23);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26, v27, v28);
      }

      OUTLINED_FUNCTION_33_1();
    }

    while (!v25);
    goto LABEL_14;
  }

  __break(1u);
}

void CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestArrayUInt8:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_44_0();
  v13 = v12;
  OUTLINED_FUNCTION_32_3(v14, v12, v15);
  if (!v13 || (v16 = specialized Array._getCount()()) == 0)
  {

LABEL_14:

    specialized SafePublished.value.setter(v29);

    OUTLINED_FUNCTION_43_0();
    return;
  }

  v17 = v16;
  OUTLINED_FUNCTION_41_0();
  v18 = OUTLINED_FUNCTION_8_4();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18, v19, v20);
  if ((v17 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_7_10();
    do
    {
      if (v11)
      {
        OUTLINED_FUNCTION_72_0();
      }

      else
      {
        v21 = OUTLINED_FUNCTION_75_0();
      }

      v22 = v21;
      [v21 unsignedCharValue];

      OUTLINED_FUNCTION_12_3();
      if (v24)
      {
        v26 = OUTLINED_FUNCTION_5_17(v23);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26, v27, v28);
      }

      OUTLINED_FUNCTION_33_1();
    }

    while (!v25);
    goto LABEL_14;
  }

  __break(1u);
}

double @objc CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestArrayBool:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  if (a4)
  {
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

void CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestArrayUInt16:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_44_0();
  v13 = v12;
  OUTLINED_FUNCTION_32_3(v14, v12, v15);
  if (!v13 || (v16 = specialized Array._getCount()()) == 0)
  {

LABEL_14:

    specialized SafePublished.value.setter(v29);

    OUTLINED_FUNCTION_43_0();
    return;
  }

  v17 = v16;
  OUTLINED_FUNCTION_41_0();
  v18 = OUTLINED_FUNCTION_8_4();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18, v19, v20);
  if ((v17 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_7_10();
    do
    {
      if (v11)
      {
        OUTLINED_FUNCTION_72_0();
      }

      else
      {
        v21 = OUTLINED_FUNCTION_75_0();
      }

      v22 = v21;
      [v21 unsignedShortValue];

      OUTLINED_FUNCTION_12_3();
      if (v24)
      {
        v26 = OUTLINED_FUNCTION_5_17(v23);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26, v27, v28);
      }

      OUTLINED_FUNCTION_58_0();
    }

    while (!v25);
    goto LABEL_14;
  }

  __break(1u);
}

void CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestArrayInt8:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_44_0();
  v13 = v12;
  OUTLINED_FUNCTION_32_3(v14, v12, v15);
  if (!v13 || (v16 = specialized Array._getCount()()) == 0)
  {

LABEL_14:

    specialized SafePublished.value.setter(v29);

    OUTLINED_FUNCTION_43_0();
    return;
  }

  v17 = v16;
  OUTLINED_FUNCTION_41_0();
  v18 = OUTLINED_FUNCTION_8_4();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18, v19, v20);
  if ((v17 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_7_10();
    do
    {
      if (v11)
      {
        OUTLINED_FUNCTION_72_0();
      }

      else
      {
        v21 = OUTLINED_FUNCTION_75_0();
      }

      v22 = v21;
      [v21 charValue];

      OUTLINED_FUNCTION_12_3();
      if (v24)
      {
        v26 = OUTLINED_FUNCTION_5_17(v23);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26, v27, v28);
      }

      OUTLINED_FUNCTION_33_1();
    }

    while (!v25);
    goto LABEL_14;
  }

  __break(1u);
}

void CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestArrayInt16:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_44_0();
  v13 = v12;
  OUTLINED_FUNCTION_32_3(v14, v12, v15);
  if (!v13 || (v16 = specialized Array._getCount()()) == 0)
  {

LABEL_14:

    specialized SafePublished.value.setter(v29);

    OUTLINED_FUNCTION_43_0();
    return;
  }

  v17 = v16;
  OUTLINED_FUNCTION_41_0();
  v18 = OUTLINED_FUNCTION_8_4();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18, v19, v20);
  if ((v17 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_7_10();
    do
    {
      if (v11)
      {
        OUTLINED_FUNCTION_72_0();
      }

      else
      {
        v21 = OUTLINED_FUNCTION_75_0();
      }

      v22 = v21;
      [v21 shortValue];

      OUTLINED_FUNCTION_12_3();
      if (v24)
      {
        v26 = OUTLINED_FUNCTION_5_17(v23);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26, v27, v28);
      }

      OUTLINED_FUNCTION_58_0();
    }

    while (!v25);
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestArrayUInt32:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, SEL *a5, void (*a6)(uint64_t))
{
  v10 = a4;
  v12 = *a3;
  OUTLINED_FUNCTION_18_3(a1, a2, a3, a4, a5);
  v13 = *(v6 + v12);
  if (!a2 || (v14 = specialized Array._getCount()()) == 0)
  {

LABEL_13:

    a6(v24);
  }

  v15 = v14;
  v26 = MEMORY[0x277D84F90];
  v16 = v14 & ~(v14 >> 63);

  v17 = OUTLINED_FUNCTION_11_4();
  result = (v10)(v17);
  if ((v15 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_59_0();
    do
    {
      if (v13)
      {
        v19 = MEMORY[0x245D0A790](v7, a2);
      }

      else
      {
        v19 = *(a2 + 8 * v7 + 32);
      }

      v20 = v19;
      v21 = [v19 *a5];

      OUTLINED_FUNCTION_80_0();
      if (v22)
      {
        OUTLINED_FUNCTION_83_0();
        v23();
        v10 = v26;
      }

      ++v7;
      *(v10 + 16) = v16;
      *(v10 + 4 * a6 + 32) = v21;
    }

    while (v15 != v7);
    a6 = v25;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestArrayUInt64:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, SEL *a5, void (*a6)(uint64_t))
{
  v10 = a4;
  v12 = *a3;
  OUTLINED_FUNCTION_18_3(a1, a2, a3, a4, a5);
  v13 = *(v6 + v12);
  if (!a2 || (v14 = specialized Array._getCount()()) == 0)
  {

LABEL_13:

    a6(v24);
  }

  v15 = v14;
  v26 = MEMORY[0x277D84F90];
  v16 = v14 & ~(v14 >> 63);

  v17 = OUTLINED_FUNCTION_11_4();
  result = (v10)(v17);
  if ((v15 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_59_0();
    do
    {
      if (v13)
      {
        v19 = MEMORY[0x245D0A790](v7, a2);
      }

      else
      {
        v19 = *(a2 + 8 * v7 + 32);
      }

      v20 = v19;
      v21 = [v19 *a5];

      OUTLINED_FUNCTION_80_0();
      if (v22)
      {
        OUTLINED_FUNCTION_83_0();
        v23();
        v10 = v26;
      }

      ++v7;
      *(v10 + 16) = v16;
      *(v10 + 8 * a6 + 32) = v21;
    }

    while (v15 != v7);
    a6 = v25;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

char *CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestArrayFloat:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_16_3(v2 + OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable__testArrayFloat, a2);
  if (!a2 || (v4 = specialized Array._getCount()()) == 0)
  {

LABEL_13:

    specialized SafePublished.value.setter(v18);
  }

  v5 = v4;
  v19 = MEMORY[0x277D84F90];

  v6 = OUTLINED_FUNCTION_11_4();
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v6, v7, v8);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = v19;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_72_0();
      }

      else
      {
        v12 = OUTLINED_FUNCTION_75_0();
      }

      v13 = v12;
      [v12 floatValue];
      v15 = v14;

      v19 = v11;
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
      }

      ++v10;
      *(v11 + 16) = v17 + 1;
      *(v11 + 4 * v17 + 32) = v15;
    }

    while (v5 != v10);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestArrayString:)(uint64_t a1)
{
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_10_7(v3, v4, v5, v6);

  v1(v2);
}

double @objc CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestArrayString:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  if (a4)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = a3;
  v10 = a1;
  a6();

  return result;
}

uint64_t CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestArrayRawData:)(uint64_t a1, uint64_t a2)
{

  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateTestComplexItem:)(uint64_t a1)
{
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_10_7(v3, v4, v5, v6);
  v7 = v2;

  v1(v2);
}

uint64_t CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateUserVisibleLabel:)(uint64_t a1)
{
  OUTLINED_FUNCTION_46_0();

  v1 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v1, v2);
}

double @objc CAFTypeTestMultiObservable.typeTestMultiService(_:didUpdateUserVisibleLabel:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFTypeTestMultiObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFTypeTestMultiObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFTypeTestMultiObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t keypath_get_22Tm()
{
  OUTLINED_FUNCTION_15_0();
  result = v1();
  *v0 = result;
  *(v0 + 8) = v3 & 1;
  return result;
}

uint64_t key path getter for CAFTypeTestMulti.testUInt8Bridged : CAFTypeTestMulti@<X0>(_BYTE *a1@<X8>)
{
  result = CAFTypeTestMulti.testUInt8Bridged.getter();
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

uint64_t key path getter for CAFTypeTestMulti.testUInt16Bridged : CAFTypeTestMulti@<X0>(uint64_t a1@<X8>)
{
  result = CAFTypeTestMulti.testUInt16Bridged.getter();
  *a1 = result;
  *(a1 + 2) = BYTE2(result) & 1;
  return result;
}

unint64_t key path getter for CAFTypeTestMulti.testUInt32Bridged : CAFTypeTestMulti@<X0>(uint64_t a1@<X8>)
{
  result = CAFTypeTestMulti.testUInt32Bridged.getter();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t key path getter for CAFTypeTestMulti.testInt8Bridged : CAFTypeTestMulti@<X0>(_BYTE *a1@<X8>)
{
  result = CAFTypeTestMulti.testInt8Bridged.getter();
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

uint64_t key path getter for CAFTypeTestMulti.testInt16Bridged : CAFTypeTestMulti@<X0>(uint64_t a1@<X8>)
{
  result = CAFTypeTestMulti.testInt16Bridged.getter();
  *a1 = result;
  *(a1 + 2) = BYTE2(result) & 1;
  return result;
}

unint64_t key path getter for CAFTypeTestMulti.testInt32Bridged : CAFTypeTestMulti@<X0>(uint64_t a1@<X8>)
{
  result = CAFTypeTestMulti.testInt32Bridged.getter();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t keypath_get_199Tm()
{
  OUTLINED_FUNCTION_15_0();
  result = v1();
  *v0 = result;
  *(v0 + 8) = v3 & 1;
  return result;
}

unint64_t key path getter for CAFTypeTestMulti.testFloatBridged : CAFTypeTestMulti@<X0>(uint64_t a1@<X8>)
{
  result = CAFTypeTestMulti.testFloatBridged.getter();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

void key path getter for CAFTypeTestMulti.testString : CAFTypeTestMulti(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 testString];
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

void key path setter for CAFTypeTestMulti.testString : CAFTypeTestMulti(void *a1, void **a2)
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
  [v2 setTestString_];
}

void key path setter for CAFTypeTestMulti.testData : CAFTypeTestMulti(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8) >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v4 = isa;
  [v2 setTestData_];
}

void key path getter for CAFTypeTestMulti.testData : CAFTypeTestMulti(void **a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v5 = OUTLINED_FUNCTION_69_0(a1, a2, a3, a4);
  if (v5)
  {
    v6 = v5;
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xF000000000000000;
  }

  *v4 = v7;
  v4[1] = v9;
}

uint64_t key path getter for CAFTypeTestMulti.testEnumBridged : CAFTypeTestMulti@<X0>(_BYTE *a1@<X8>)
{
  result = CAFTypeTestMulti.testEnumBridged.getter();
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

uint64_t key path getter for CAFTypeTestMulti.testDimensionUnitRawValueBridged : CAFTypeTestMulti@<X0>(uint64_t a1@<X8>)
{
  result = CAFTypeTestMulti.testDimensionUnitRawValueBridged.getter();
  *a1 = result;
  *(a1 + 2) = BYTE2(result) & 1;
  return result;
}

id key path getter for CAFTypeTestMulti.testComplexItem : CAFTypeTestMulti@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 testComplexItem];
  *a2 = result;
  return result;
}

void key path setter for CAFTypeTestMulti.testArrayString : CAFTypeTestMulti(void *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v7 = *a2;
  if (*a1)
  {
    v8.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  isa = v8.super.isa;
  [v7 *a6];
}

void key path getter for CAFTypeTestMulti.testArrayString : CAFTypeTestMulti(void **a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v5 = OUTLINED_FUNCTION_69_0(a1, a2, a3, a4);
  if (v5)
  {
    v6 = v5;
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v7 = 0;
  }

  *v4 = v7;
}

id key path getter for CAFTypeTestMulti.testComplexItems : CAFTypeTestMulti@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 testComplexItems];
  *a2 = result;
  return result;
}

id key path getter for CAFTypeTestMulti.testComplexItemValue : CAFTypeTestMulti@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 testComplexItemValue];
  *a2 = result;
  return result;
}

id key path getter for CAFTypeTestMulti.testComplexItemList : CAFTypeTestMulti@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 testComplexItemList];
  *a2 = result;
  return result;
}

void key path getter for CAFTypeTestMulti.userVisibleLabel : CAFTypeTestMulti(void **a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v5 = OUTLINED_FUNCTION_69_0(a1, a2, a3, a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *v4 = v6;
  v4[1] = v8;
}

unint64_t lazy protocol witness table accessor for type CAFTypeTestMulti and conformance CAFTypeTestMulti()
{
  result = lazy protocol witness table cache variable for type CAFTypeTestMulti and conformance CAFTypeTestMulti;
  if (!lazy protocol witness table cache variable for type CAFTypeTestMulti and conformance CAFTypeTestMulti)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFTypeTestMulti, 0x277CF8728);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFTypeTestMulti and conformance CAFTypeTestMulti);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFTypeTestMultiObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFTypeTestMultiObservable and conformance CAFTypeTestMultiObservable(&lazy protocol witness table cache variable for type CAFTypeTestMultiObservable and conformance CAFTypeTestMultiObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFTypeTestMultiObservable and conformance CAFTypeTestMultiObservable(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFTypeTestMultiObservable();
    OUTLINED_FUNCTION_23_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double partial apply for closure #1 in CAFTypeTestMultiObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine26CAFTypeTestMultiObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t outlined bridged method (pb) of @objc CAFTypeTestMulti.testArrayBool.getter(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t OUTLINED_FUNCTION_2_36(uint64_t result)
{
  *v1 = result;
  *(result + 72) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_7(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_15_4(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_28_3(uint64_t a1, uint64_t *a2)
{
}

uint64_t OUTLINED_FUNCTION_32_3(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_38_0(uint64_t a1)
{

  return String.init<A>(describing:)();
}

void OUTLINED_FUNCTION_40_0()
{

  JUMPOUT(0x245D0A530);
}

uint64_t OUTLINED_FUNCTION_41_0()
{
}

void OUTLINED_FUNCTION_45_0()
{

  JUMPOUT(0x245D0A530);
}

id OUTLINED_FUNCTION_48_0(const char **a1)
{
  v3 = *a1;

  return [v1 v3];
}

uint64_t OUTLINED_FUNCTION_49_0(uint64_t result)
{
  *(v1 - 104) = result;
  *(v1 - 100) = BYTE4(result) & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_50_0(uint64_t result)
{
  *(v1 - 104) = result;
  *(v1 - 102) = BYTE2(result) & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_52_0(uint64_t result)
{
  *(v1 - 104) = result;
  *(v1 - 103) = BYTE1(result) & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_68_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_69_0(void **a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v5 = *a1;
  v6 = *a4;

  return [v5 v6];
}

uint64_t OUTLINED_FUNCTION_70_0(uint64_t a1, uint64_t a2, ...)
{

  return swift_readAtKeyPath();
}

uint64_t OUTLINED_FUNCTION_71_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA26CAFTypeTestMultiObservableC_SSSgTt3g5(v11, v12, a1, v13, v10, a6, a7, a8, a9, a10);
}

void OUTLINED_FUNCTION_72_0()
{

  JUMPOUT(0x245D0A790);
}

uint64_t OUTLINED_FUNCTION_73_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA26CAFTypeTestMultiObservableC_10Foundation4DataVSgTt3g5(v10, v11, v13, v14, v12, a6, a7, a8, a9, a10);
}

void OUTLINED_FUNCTION_74_0()
{

  JUMPOUT(0x245D0A530);
}

id OUTLINED_FUNCTION_75_0()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t OUTLINED_FUNCTION_76_0()
{
}

uint64_t OUTLINED_FUNCTION_88_0(uint64_t a1, uint64_t a2)
{

  return swift_getKeyPath();
}

uint64_t OUTLINED_FUNCTION_89_0()
{

  return swift_getKeyPath();
}

uint64_t key path getter for CAFTypeTestObservable.testBool : CAFTypeTestObservable@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestObservable.testBool.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

uint64_t CAFTypeTestObservable.testBool.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_18_3(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3();

  v6 = v5;
  v14 = OUTLINED_FUNCTION_24_2(v6, v7, v8, v9, v10, v11, v12, v13, v26, v28, v29, v30, v31);
  v16 = *v15;
  v23 = OUTLINED_FUNCTION_42_0(v14, v15, v17, v18, v19, v20, v21, v22, v27);
  v24(v23);

  return v16;
}

uint64_t CAFTypeTestObservable.testBool.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = v10;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA21CAFTypeTestObservableC_SbSgTt3g5(a1, v14, KeyPath, v13, v15, v16, v17, v18, a9, a10);
}

uint64_t CAFTypeTestObservable.testBool.modify()
{
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v5 = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_29_2();
  v6 = OUTLINED_FUNCTION_7_5();
  v7(v6);

  *(v1 + 88) = v0;
  return OUTLINED_FUNCTION_23_2();
}

void CAFTypeTestObservable.testBool.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 72);
  v2 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 64);
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA21CAFTypeTestObservableC_SbSgTt3g5(v4, v5, v3, v2, v6, v7, v8, v9, v10, v11);

  free(v1);
}

uint64_t key path getter for CAFTypeTestObservable.testUInt8 : CAFTypeTestObservable@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>)
{
  result = CAFTypeTestObservable.testUInt8.getter(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

void CAFTypeTestObservable.testUInt8.modify()
{
  OUTLINED_FUNCTION_235();
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v5 = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_29_2();
  v7 = *(v6 + 1);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v1 + 88) = v0;
  *(v1 + 89) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_53_0();
  v0(*(v2 + 88) | (*(v1 + 89) << 8), *(v1 + 64), *(v1 + 72), *(v1 + 80));
  OUTLINED_FUNCTION_91_0();

  free(v3);
}

uint64_t key path getter for CAFTypeTestObservable.testUInt16 : CAFTypeTestObservable@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>)
{
  result = CAFTypeTestObservable.testUInt16.getter(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  *(a1 + 2) = BYTE2(result) & 1;
  return result;
}

void CAFTypeTestObservable.testUInt16.modify()
{
  OUTLINED_FUNCTION_235();
  v2 = OUTLINED_FUNCTION_26_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_15_3(v3);
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v4 = v1;
  OUTLINED_FUNCTION_2_5();
  v6 = *v5;
  v7 = *(v5 + 2);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v0 + 88) = v6;
  *(v0 + 90) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_53_0();
  v0(*(v2 + 88) | (*(v1 + 90) << 16), *(v1 + 64), *(v1 + 72), *(v1 + 80));
  OUTLINED_FUNCTION_91_0();

  free(v3);
}

unint64_t key path getter for CAFTypeTestObservable.testUInt32 : CAFTypeTestObservable@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestObservable.testUInt32.getter(a2, a3, a4, a5, a6);
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

void CAFTypeTestObservable.testUInt32.modify()
{
  OUTLINED_FUNCTION_235();
  v2 = OUTLINED_FUNCTION_26_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_15_3(v3);
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v4 = v1;
  OUTLINED_FUNCTION_2_5();
  v6 = *v5;
  v7 = *(v5 + 4);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v0 + 88) = v6;
  *(v0 + 92) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_53_0();
  v0(*(v2 + 88) | (*(v1 + 92) << 32), *(v1 + 64), *(v1 + 72), *(v1 + 80));
  OUTLINED_FUNCTION_91_0();

  free(v3);
}

uint64_t key path getter for CAFTypeTestObservable.testUInt64 : CAFTypeTestObservable@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestObservable.testUInt64.getter(a2, a3, a4, a5, a6);
  *a1 = result;
  *(a1 + 8) = v8 & 1;
  return result;
}

uint64_t CAFTypeTestObservable.testUInt64.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return CAFTypeTestObservable.testUInt64.setter(a1, a2, &unk_242305FD0, &unk_242305FF8, _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA21CAFTypeTestObservableC_s6UInt64VSgTt3g5, a6, a7, a8, a9);
}

{
  OUTLINED_FUNCTION_90_0();
  v21 = v10;
  OUTLINED_FUNCTION_81_0();
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v9;
  OUTLINED_FUNCTION_91_0();

  return v17(v12, v13, v14, v15, v16, v17, v18, v19, a9, v21);
}

void CAFTypeTestObservable.testUInt64.modify()
{
  OUTLINED_FUNCTION_235();
  v3 = OUTLINED_FUNCTION_77_0();
  v4 = __swift_coroFrameAllocStub(v3);
  *(OUTLINED_FUNCTION_13_4(v4) + 80) = v0;
  *(v1 + 88) = swift_getKeyPath();
  *(v1 + 96) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_20_4();
  *(v0 + 72) = v2;

  v5 = v2;
  OUTLINED_FUNCTION_2_5();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = OUTLINED_FUNCTION_7_5();
  v10(v9);

  *(v1 + 56) = v7;
  *(v1 + 64) = v8;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestObservable.testInt8 : CAFTypeTestObservable@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>)
{
  result = CAFTypeTestObservable.testInt8.getter(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

void CAFTypeTestObservable.testInt8.modify()
{
  OUTLINED_FUNCTION_235();
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v5 = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_29_2();
  v7 = *(v6 + 1);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v1 + 88) = v0;
  *(v1 + 89) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestObservable.testInt16 : CAFTypeTestObservable@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>)
{
  result = CAFTypeTestObservable.testInt16.getter(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  *(a1 + 2) = BYTE2(result) & 1;
  return result;
}

void CAFTypeTestObservable.testInt16.modify()
{
  OUTLINED_FUNCTION_235();
  v2 = OUTLINED_FUNCTION_26_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_15_3(v3);
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v4 = v1;
  OUTLINED_FUNCTION_2_5();
  v6 = *v5;
  v7 = *(v5 + 2);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v0 + 88) = v6;
  *(v0 + 90) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

unint64_t key path getter for CAFTypeTestObservable.testInt32 : CAFTypeTestObservable@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestObservable.testInt32.getter(a2, a3, a4, a5, a6);
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

void CAFTypeTestObservable.testInt32.modify()
{
  OUTLINED_FUNCTION_235();
  v2 = OUTLINED_FUNCTION_26_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_15_3(v3);
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v4 = v1;
  OUTLINED_FUNCTION_2_5();
  v6 = *v5;
  v7 = *(v5 + 4);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v0 + 88) = v6;
  *(v0 + 92) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestObservable.testInt64 : CAFTypeTestObservable@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestObservable.testInt64.getter(a2, a3, a4, a5, a6);
  *a1 = result;
  *(a1 + 8) = v8 & 1;
  return result;
}

uint64_t CAFTypeTestObservable.testUInt64.getter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_18_3(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3();

  v6 = v5;
  v14 = OUTLINED_FUNCTION_24_2(v6, v7, v8, v9, v10, v11, v12, v13, v26, v28, v29, v30, v31);
  v16 = *v15;
  v23 = OUTLINED_FUNCTION_42_0(v14, v15, v17, v18, v19, v20, v21, v22, v27);
  v24(v23);

  return v16;
}

void CAFTypeTestObservable.testInt64.modify()
{
  OUTLINED_FUNCTION_235();
  v3 = OUTLINED_FUNCTION_77_0();
  v4 = __swift_coroFrameAllocStub(v3);
  *(OUTLINED_FUNCTION_13_4(v4) + 80) = v0;
  *(v1 + 88) = swift_getKeyPath();
  *(v1 + 96) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_20_4();
  *(v0 + 72) = v2;

  v5 = v2;
  OUTLINED_FUNCTION_2_5();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = OUTLINED_FUNCTION_7_5();
  v10(v9);

  *(v1 + 56) = v7;
  *(v1 + 64) = v8;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

void CAFTypeTestObservable.testUInt64.modify(uint64_t a1, uint64_t a2, void (*a3)(void, void, id, void, void))
{
  v3 = *a1;
  a3(*(*a1 + 56), *(*a1 + 64), *(*a1 + 80), *(*a1 + 88), *(*a1 + 96));

  free(v3);
}

unint64_t key path getter for CAFTypeTestObservable.testFloat : CAFTypeTestObservable@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestObservable.testFloat.getter(a2, a3, a4, a5, a6);
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t CAFTypeTestObservable.testUInt32.getter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_18_3(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3();

  v6 = v5;
  v14 = OUTLINED_FUNCTION_24_2(v6, v7, v8, v9, v10, v11, v12, v13, v27, v29, v30, v31, v32);
  v16 = *v15;
  v17 = *(v15 + 4);
  v24 = OUTLINED_FUNCTION_42_0(v14, v15, v18, v19, v20, v21, v22, v23, v28);
  v25(v24);

  return v16 | (v17 << 32);
}

uint64_t CAFTypeTestObservable.testUInt32.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_89_0();
  v3 = v2;
  OUTLINED_FUNCTION_51_0();

  return v4();
}

void CAFTypeTestObservable.testFloat.modify()
{
  OUTLINED_FUNCTION_235();
  v2 = OUTLINED_FUNCTION_26_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_15_3(v3);
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v4 = v1;
  OUTLINED_FUNCTION_2_5();
  v6 = *v5;
  v7 = *(v5 + 4);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v0 + 88) = v6;
  *(v0 + 92) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestObservable.testString : CAFTypeTestObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestObservable.testString.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  a2[1] = v8;
  return result;
}

uint64_t key path setter for CAFTypeTestObservable.testString : CAFTypeTestObservable(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return CAFTypeTestObservable.testString.setter(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t CAFTypeTestObservable.testString.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_18_3(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3();
  swift_retain_n();

  v6 = v5;
  v14 = OUTLINED_FUNCTION_24_2(v6, v7, v8, v9, v10, v11, v12, v13, v27, v29, v30, v31, v32);
  v16 = *v15;

  v25 = OUTLINED_FUNCTION_42_0(v17, v18, v19, v20, v21, v22, v23, v24, v28);
  v14(v25);

  OUTLINED_FUNCTION_36_0();

  return v16;
}

uint64_t CAFTypeTestObservable.testString.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return CAFTypeTestObservable.testString.setter(a1, a2, &unk_242306180, &unk_2423061A8, _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA21CAFTypeTestObservableC_SSSgTt3g5, a6, a7, a8, a9);
}

{
  OUTLINED_FUNCTION_90_0();
  v21 = v10;
  OUTLINED_FUNCTION_81_0();
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v9;
  OUTLINED_FUNCTION_91_0();

  return v17(v12, v13, v14, v15, v16, v17, v18, v19, a9, v21);
}

void CAFTypeTestObservable.testString.modify()
{
  OUTLINED_FUNCTION_235();
  v3 = OUTLINED_FUNCTION_77_0();
  v4 = __swift_coroFrameAllocStub(v3);
  *(OUTLINED_FUNCTION_13_4(v4) + 80) = v0;
  v1[11] = swift_getKeyPath();
  v1[12] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_20_4();
  *(v0 + 72) = v2;
  OUTLINED_FUNCTION_11_3();
  swift_retain_n();

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  v9 = *v7;
  v8 = v7[1];

  v10 = OUTLINED_FUNCTION_7_5();
  v6(v10);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v9;
  v1[8] = v8;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

void CAFTypeTestObservable.testString.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {

    v4 = v3;
    OUTLINED_FUNCTION_68_1(v4, v5, v6, v7, v8, v9, v10, v11, v20, v21);
  }

  else
  {
    v12 = v3;
    OUTLINED_FUNCTION_68_1(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
  }

  free(v2);
}

uint64_t key path getter for CAFTypeTestObservable.testData : CAFTypeTestObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestObservable.testData.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  a2[1] = v8;
  return result;
}

uint64_t key path setter for CAFTypeTestObservable.testData : CAFTypeTestObservable(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  outlined copy of Data?(*a1, v2);
  return CAFTypeTestObservable.testData.setter(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t CAFTypeTestObservable.testData.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_18_3(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3();
  swift_retain_n();

  v6 = v5;
  v14 = OUTLINED_FUNCTION_24_2(v6, v7, v8, v9, v10, v11, v12, v13, v27, v29, v30, v31, v32);
  v16 = *v15;
  v17 = outlined copy of Data?(*v15, *(v15 + 8));
  v25 = OUTLINED_FUNCTION_42_0(v17, v18, v19, v20, v21, v22, v23, v24, v28);
  v14(v25);

  OUTLINED_FUNCTION_36_0();

  return v16;
}

void CAFTypeTestObservable.testData.modify()
{
  OUTLINED_FUNCTION_235();
  v3 = OUTLINED_FUNCTION_77_0();
  v4 = __swift_coroFrameAllocStub(v3);
  *(OUTLINED_FUNCTION_13_4(v4) + 80) = v0;
  v1[11] = swift_getKeyPath();
  v1[12] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_20_4();
  *(v0 + 72) = v2;
  OUTLINED_FUNCTION_11_3();
  swift_retain_n();

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  v8 = *v7;
  v9 = v7[1];
  v1[7] = v8;
  v1[8] = v9;
  outlined copy of Data?(v8, v9);
  v10 = OUTLINED_FUNCTION_7_5();
  v6(v10);
  OUTLINED_FUNCTION_11_3();

  OUTLINED_FUNCTION_236();
}

uint64_t CAFTypeTestObservable.testRawData.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t key path getter for CAFTypeTestObservable.testEnum : CAFTypeTestObservable@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>)
{
  result = CAFTypeTestObservable.testEnum.getter(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

uint64_t CAFTypeTestObservable.testUInt8.getter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_68_0(a1, a2, a3, a4, a5, a6, a7, a8);
  OUTLINED_FUNCTION_27_2();
  v9 = *(v8 + OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);
  v18 = v9;

  v10 = v9;
  v12 = OUTLINED_FUNCTION_70_0(v10, v11);
  v14 = *v13;
  v15 = v13[1];
  v12(v17, 0);

  return v14 | (v15 << 8);
}

uint64_t CAFTypeTestObservable.testUInt8.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_88_0(a1, a2);
  OUTLINED_FUNCTION_89_0();
  v3 = v2;
  OUTLINED_FUNCTION_51_0();

  return v4();
}

void CAFTypeTestObservable.testEnum.modify()
{
  OUTLINED_FUNCTION_235();
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v5 = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_29_2();
  v7 = *(v6 + 1);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v1 + 88) = v0;
  *(v1 + 89) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestObservable.testDimensionUnitRawValue : CAFTypeTestObservable@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>)
{
  result = CAFTypeTestObservable.testDimensionUnitRawValue.getter(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  *(a1 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t CAFTypeTestObservable.testUInt16.getter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_68_0(a1, a2, a3, a4, a5, a6, a7, a8);
  OUTLINED_FUNCTION_27_2();
  v9 = *(v8 + OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);
  v18 = v9;

  v10 = v9;
  v12 = OUTLINED_FUNCTION_70_0(v10, v11);
  v14 = *v13;
  v15 = *(v13 + 2);
  v12(v17, 0);

  return v14 | (v15 << 16);
}

uint64_t CAFTypeTestObservable.testUInt16.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_88_0(a1, a2);
  OUTLINED_FUNCTION_89_0();
  v3 = v2;
  OUTLINED_FUNCTION_51_0();

  return v4();
}

void CAFTypeTestObservable.testDimensionUnitRawValue.modify()
{
  OUTLINED_FUNCTION_235();
  v2 = OUTLINED_FUNCTION_26_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_15_3(v3);
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v4 = v1;
  OUTLINED_FUNCTION_2_5();
  v6 = *v5;
  v7 = *(v5 + 2);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v0 + 88) = v6;
  *(v0 + 90) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

id key path getter for CAFTypeTestObservable.testComplexItem : CAFTypeTestObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestObservable.testComplexItem.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestObservable.testComplexItem : CAFTypeTestObservable(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return CAFTypeTestObservable.testComplexItem.setter(v1, v3, v4, v5);
}

void CAFTypeTestObservable.testComplexItem.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v6 = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2();
  v7 = v3;
  v8 = OUTLINED_FUNCTION_7_5();
  v0(v8);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  OUTLINED_FUNCTION_235();
  OUTLINED_FUNCTION_47_0();
  if (v4)
  {
    v5 = v1;
    v6 = v3;
    v7 = OUTLINED_FUNCTION_26_2();
    v0(v7);
  }

  else
  {
    v8 = v3;
    v9 = OUTLINED_FUNCTION_26_2();
    v0(v9);
  }

  OUTLINED_FUNCTION_236();

  free(v10);
}

uint64_t key path getter for CAFTypeTestObservable.testArrayBool : CAFTypeTestObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestObservable.testArrayBool.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

void CAFTypeTestObservable.testArrayBool.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v6 = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2();

  v7 = OUTLINED_FUNCTION_7_5();
  v0(v7);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  OUTLINED_FUNCTION_235();
  OUTLINED_FUNCTION_47_0();
  if (v2)
  {

    v3 = v1;
    v4 = OUTLINED_FUNCTION_26_2();
    v0(v4);
  }

  else
  {
    v5 = v1;
    v6 = OUTLINED_FUNCTION_26_2();
    v0(v6);
  }

  OUTLINED_FUNCTION_236();

  free(v7);
}

uint64_t key path getter for CAFTypeTestObservable.testArrayUInt8 : CAFTypeTestObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestObservable.testArrayUInt8.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

void CAFTypeTestObservable.testArrayUInt8.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v6 = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2();

  v7 = OUTLINED_FUNCTION_7_5();
  v0(v7);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestObservable.testArrayUInt16 : CAFTypeTestObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestObservable.testArrayUInt16.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

void CAFTypeTestObservable.testArrayUInt16.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v6 = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2();

  v7 = OUTLINED_FUNCTION_7_5();
  v0(v7);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestObservable.testArrayUInt32 : CAFTypeTestObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestObservable.testArrayUInt32.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

void CAFTypeTestObservable.testArrayUInt32.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v6 = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2();

  v7 = OUTLINED_FUNCTION_7_5();
  v0(v7);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestObservable.testArrayUInt64 : CAFTypeTestObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestObservable.testArrayUInt64.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

void CAFTypeTestObservable.testArrayUInt64.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v6 = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2();

  v7 = OUTLINED_FUNCTION_7_5();
  v0(v7);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestObservable.testArrayInt8 : CAFTypeTestObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestObservable.testArrayInt8.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

void CAFTypeTestObservable.testArrayInt8.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v6 = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2();

  v7 = OUTLINED_FUNCTION_7_5();
  v0(v7);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestObservable.testArrayInt16 : CAFTypeTestObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestObservable.testArrayInt16.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

void CAFTypeTestObservable.testArrayInt16.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v6 = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2();

  v7 = OUTLINED_FUNCTION_7_5();
  v0(v7);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestObservable.testArrayInt32 : CAFTypeTestObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestObservable.testArrayInt32.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

void CAFTypeTestObservable.testArrayInt32.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v6 = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2();

  v7 = OUTLINED_FUNCTION_7_5();
  v0(v7);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestObservable.testArrayInt64 : CAFTypeTestObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestObservable.testArrayInt64.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

void CAFTypeTestObservable.testArrayInt64.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v6 = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2();

  v7 = OUTLINED_FUNCTION_7_5();
  v0(v7);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestObservable.testArrayFloat : CAFTypeTestObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestObservable.testArrayFloat.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

void CAFTypeTestObservable.testArrayFloat.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v6 = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2();

  v7 = OUTLINED_FUNCTION_7_5();
  v0(v7);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestObservable.testArrayString : CAFTypeTestObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestObservable.testArrayString.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

void CAFTypeTestObservable.testArrayString.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v6 = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2();

  v7 = OUTLINED_FUNCTION_7_5();
  v0(v7);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestObservable.testArrayData : CAFTypeTestObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestObservable.testArrayData.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

uint64_t CAFTypeTestObservable.testArrayBool.getter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_18_3(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3();
  swift_retain_n();

  v6 = v5;
  v14 = OUTLINED_FUNCTION_24_2(v6, v7, v8, v9, v10, v11, v12, v13, v27, v29, v30, v31, v32);
  v16 = *v15;

  v25 = OUTLINED_FUNCTION_42_0(v17, v18, v19, v20, v21, v22, v23, v24, v28);
  v14(v25);

  OUTLINED_FUNCTION_36_0();

  return v16;
}

void CAFTypeTestObservable.testArrayData.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v6 = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2();

  v7 = OUTLINED_FUNCTION_7_5();
  v0(v7);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t CAFTypeTestObservable.testArrayRawData.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFTypeTestObservable.$testRawData.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

id key path getter for CAFTypeTestObservable.testComplexItems : CAFTypeTestObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestObservable.testComplexItems.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestObservable.testComplexItems : CAFTypeTestObservable(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return CAFTypeTestObservable.testComplexItems.setter(v1, v3, v4, v5);
}

void CAFTypeTestObservable.testComplexItems.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v6 = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2();
  v7 = v3;
  v8 = OUTLINED_FUNCTION_7_5();
  v0(v8);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

id key path getter for CAFTypeTestObservable.testComplexItemValue : CAFTypeTestObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestObservable.testComplexItemValue.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestObservable.testComplexItemValue : CAFTypeTestObservable(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return CAFTypeTestObservable.testComplexItemValue.setter(v1, v3, v4, v5);
}

void CAFTypeTestObservable.testComplexItemValue.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v6 = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2();
  v7 = v3;
  v8 = OUTLINED_FUNCTION_7_5();
  v0(v8);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

id key path getter for CAFTypeTestObservable.testComplexItemList : CAFTypeTestObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestObservable.testComplexItemList.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestObservable.testComplexItemList : CAFTypeTestObservable(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return CAFTypeTestObservable.testComplexItemList.setter(v1, v3, v4, v5);
}

void CAFTypeTestObservable.testComplexItemList.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v6 = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2();
  v7 = v3;
  v8 = OUTLINED_FUNCTION_7_5();
  v0(v8);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

id key path getter for CAFTypeTestObservable.testComplexArrayItemValue : CAFTypeTestObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestObservable.testComplexArrayItemValue.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestObservable.testComplexArrayItemValue : CAFTypeTestObservable(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return CAFTypeTestObservable.testComplexArrayItemValue.setter(v1);
}

void CAFTypeTestObservable.testComplexArrayItemValue.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v6 = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2();
  v7 = v3;
  v8 = OUTLINED_FUNCTION_7_5();
  v0(v8);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

id key path getter for CAFTypeTestObservable.testComplexNestedItemValue : CAFTypeTestObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestObservable.testComplexNestedItemValue.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestObservable.testComplexNestedItemValue : CAFTypeTestObservable(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return CAFTypeTestObservable.testComplexNestedItemValue.setter(v1);
}

void CAFTypeTestObservable.testComplexNestedItemValue.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v6 = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2();
  v7 = v3;
  v8 = OUTLINED_FUNCTION_7_5();
  v0(v8);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

id key path getter for CAFTypeTestObservable.testComplexNestedItemList : CAFTypeTestObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestObservable.testComplexNestedItemList.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestObservable.testComplexNestedItemList : CAFTypeTestObservable(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return CAFTypeTestObservable.testComplexNestedItemList.setter(v1);
}

void CAFTypeTestObservable.testComplexNestedItemList.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v6 = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2();
  v7 = v3;
  v8 = OUTLINED_FUNCTION_7_5();
  v0(v8);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

id key path getter for CAFTypeTestObservable.testComplexNestedListItemValue : CAFTypeTestObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestObservable.testComplexNestedListItemValue.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestObservable.testComplexNestedListItemValue : CAFTypeTestObservable(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return CAFTypeTestObservable.testComplexNestedListItemValue.setter(v1);
}

id CAFTypeTestObservable.testComplexItem.getter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_18_3(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3();
  swift_retain_n();

  v6 = v5;
  v14 = OUTLINED_FUNCTION_24_2(v6, v7, v8, v9, v10, v11, v12, v13, v27, v29, v30, v31, v32);
  v16 = *v15;
  v17 = *v15;
  v25 = OUTLINED_FUNCTION_42_0(v17, v18, v19, v20, v21, v22, v23, v24, v28);
  v14(v25);

  OUTLINED_FUNCTION_36_0();

  return v16;
}

uint64_t CAFTypeTestObservable.testComplexItem.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, id, uint64_t, uint64_t))
{
  swift_getKeyPath();
  v7 = OUTLINED_FUNCTION_89_0();
  v8 = v4;

  return a4(a1, v8, v5, v7);
}

void CAFTypeTestObservable.testComplexNestedListItemValue.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);

  v6 = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2();
  v7 = v3;
  v8 = OUTLINED_FUNCTION_7_5();
  v0(v8);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t CAFTypeTestObservable.$testBool.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_16_3(v2 + *a1, a2);

  v5 = a2(v4);

  return v5;
}

uint64_t CAFTypeTestObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed);
  [v1 registeredForTestBool];
  OUTLINED_FUNCTION_9_2();
  if (v2)
  {
    CAFTypeTestObservable.testBool.getter(v2, v3, v4, v5, v6);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v7 = OUTLINED_FUNCTION_38_0(v8);
  }

  v352 = v7;
  v353 = v3;
  v9 = [v1 registeredForTestUInt8];
  v16 = 0x73696765726E753CLL;
  v17 = 0xEE003E6465726574;
  if (v9)
  {
    v18 = CAFTypeTestObservable.testUInt8.getter(v9, 0xEE003E6465726574, v10, v11, v12, v13, v14, v15);
    OUTLINED_FUNCTION_52_0(v18);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5UInt8VSgMd, &_ss5UInt8VSgMR);
    v16 = OUTLINED_FUNCTION_38_0(v19);
  }

  v351 = v17;
  [v1 registeredForTestUInt16];
  OUTLINED_FUNCTION_9_2();
  if (v20)
  {
    v29 = CAFTypeTestObservable.testUInt16.getter(v20, v21, v22, v23, v24, v25, v26, v27);
    OUTLINED_FUNCTION_50_0(v29);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt16VSgMd, &_ss6UInt16VSgMR);
    v28 = OUTLINED_FUNCTION_38_0(v30);
  }

  v349 = v28;
  v350 = v21;
  [v1 registeredForTestUInt32];
  OUTLINED_FUNCTION_9_2();
  if (v31)
  {
    v37 = CAFTypeTestObservable.testUInt32.getter(v31, v32, v33, v34, v35);
    OUTLINED_FUNCTION_49_0(v37);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32VSgMd, &_ss6UInt32VSgMR);
    v36 = OUTLINED_FUNCTION_38_0(v38);
  }

  v347 = v36;
  v348 = v32;
  [v1 registeredForTestUInt64];
  OUTLINED_FUNCTION_9_2();
  if (v39)
  {
    CAFTypeTestObservable.testUInt64.getter(v39, v40, v41, v42, v43);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64VSgMd, &_ss6UInt64VSgMR);
    v44 = OUTLINED_FUNCTION_38_0(v45);
  }

  v345 = v44;
  v346 = v40;
  [v1 registeredForTestInt8];
  OUTLINED_FUNCTION_9_2();
  if (v46)
  {
    v55 = CAFTypeTestObservable.testInt8.getter(v46, v47, v48, v49, v50, v51, v52, v53);
    OUTLINED_FUNCTION_52_0(v55);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss4Int8VSgMd, &_ss4Int8VSgMR);
    v54 = OUTLINED_FUNCTION_38_0(v56);
  }

  v343 = v54;
  v344 = v47;
  [v1 registeredForTestInt16];
  OUTLINED_FUNCTION_9_2();
  if (v57)
  {
    v66 = CAFTypeTestObservable.testInt16.getter(v57, v58, v59, v60, v61, v62, v63, v64);
    OUTLINED_FUNCTION_50_0(v66);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int16VSgMd, &_ss5Int16VSgMR);
    v65 = OUTLINED_FUNCTION_38_0(v67);
  }

  v341 = v65;
  v342 = v58;
  [v1 registeredForTestInt32];
  OUTLINED_FUNCTION_9_2();
  if (v68)
  {
    v74 = CAFTypeTestObservable.testInt32.getter(v68, v69, v70, v71, v72);
    OUTLINED_FUNCTION_49_0(v74);
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int32VSgMd, &_ss5Int32VSgMR);
    v73 = OUTLINED_FUNCTION_38_0(v75);
  }

  v339 = v73;
  v340 = v69;
  [v1 registeredForTestInt64];
  OUTLINED_FUNCTION_9_2();
  if (v76)
  {
    CAFTypeTestObservable.testInt64.getter(v76, v77, v78, v79, v80);
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int64VSgMd, &_ss5Int64VSgMR);
    v81 = OUTLINED_FUNCTION_38_0(v82);
  }

  v337 = v81;
  v338 = v77;
  [v1 registeredForTestFloat];
  OUTLINED_FUNCTION_9_2();
  if (v83)
  {
    v89 = CAFTypeTestObservable.testFloat.getter(v83, v84, v85, v86, v87);
    OUTLINED_FUNCTION_49_0(v89);
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfSgMd, &_sSfSgMR);
    v88 = OUTLINED_FUNCTION_38_0(v90);
  }

  v335 = v88;
  v336 = v84;
  [v1 registeredForTestString];
  OUTLINED_FUNCTION_9_2();
  if (v91)
  {
    CAFTypeTestObservable.testString.getter(v91, v92, v93, v94, v95);
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v96 = OUTLINED_FUNCTION_38_0(v97);
  }

  v333 = v96;
  v334 = v92;
  [v1 registeredForTestData];
  OUTLINED_FUNCTION_9_2();
  if (v98)
  {
    CAFTypeTestObservable.testData.getter(v98, v99, v100, v101, v102);
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, _s10Foundation4DataVSgMR);
    v103 = OUTLINED_FUNCTION_38_0(v104);
  }

  v331 = v103;
  v332 = v99;
  [v1 registeredForTestRawData];
  OUTLINED_FUNCTION_9_2();
  if (v107)
  {
    CAFTypeTestObservable.testRawData.getter();
    v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, _s10Foundation4DataVSgMR);
    v106 = OUTLINED_FUNCTION_38_0(v108);
  }

  v329 = v106;
  v330 = v105;
  [v1 registeredForTestEnum];
  OUTLINED_FUNCTION_9_2();
  if (v109)
  {
    v118 = CAFTypeTestObservable.testEnum.getter(v109, v110, v111, v112, v113, v114, v115, v116);
    OUTLINED_FUNCTION_52_0(v118);
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CAFButtonActionVSgMd, &_sSo15CAFButtonActionVSgMR);
    v117 = OUTLINED_FUNCTION_38_0(v119);
  }

  v327 = v117;
  v328 = v110;
  [v1 registeredForTestDimensionUnit];
  OUTLINED_FUNCTION_9_2();
  if (v120)
  {
    v129 = CAFTypeTestObservable.testDimensionUnitRawValue.getter(v120, v121, v122, v123, v124, v125, v126, v127);
    OUTLINED_FUNCTION_50_0(v129);
    v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CAFUnitTypeVSgMd, &_sSo11CAFUnitTypeVSgMR);
    v128 = OUTLINED_FUNCTION_38_0(v130);
  }

  v325 = v128;
  v326 = v121;
  [v1 registeredForTestComplexItem];
  OUTLINED_FUNCTION_9_2();
  if (v131)
  {
    CAFTypeTestObservable.testComplexItem.getter(v131, v132, v133, v134, v135);
    v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18CAFTestComplexItemCSgMd, &_sSo18CAFTestComplexItemCSgMR);
    v136 = OUTLINED_FUNCTION_38_0(v137);
  }

  v323 = v136;
  v324 = v132;
  [v1 registeredForTestArrayBool];
  OUTLINED_FUNCTION_9_2();
  if (v138)
  {
    CAFTypeTestObservable.testArrayBool.getter(v138, v139, v140, v141, v142);
    v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySbGSgMd, &_sSaySbGSgMR);
    v143 = OUTLINED_FUNCTION_38_0(v144);
  }

  v321 = v143;
  v322 = v139;
  [v1 registeredForTestArrayUInt8];
  OUTLINED_FUNCTION_9_2();
  if (v145)
  {
    CAFTypeTestObservable.testArrayUInt8.getter(v145, v146, v147, v148, v149);
    v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGSgMd, &_sSays5UInt8VGSgMR);
    v150 = OUTLINED_FUNCTION_38_0(v151);
  }

  v319 = v150;
  v320 = v146;
  [v1 registeredForTestArrayUInt16];
  OUTLINED_FUNCTION_9_2();
  if (v152)
  {
    CAFTypeTestObservable.testArrayUInt16.getter(v152, v153, v154, v155, v156);
    v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt16VGSgMd, &_sSays6UInt16VGSgMR);
    v157 = OUTLINED_FUNCTION_38_0(v158);
  }

  v317 = v157;
  v318 = v153;
  [v1 registeredForTestArrayUInt32];
  OUTLINED_FUNCTION_9_2();
  if (v159)
  {
    CAFTypeTestObservable.testArrayUInt32.getter(v159, v160, v161, v162, v163);
    v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGSgMd, &_sSays6UInt32VGSgMR);
    v164 = OUTLINED_FUNCTION_38_0(v165);
  }

  v315 = v164;
  v316 = v160;
  [v1 registeredForTestArrayUInt64];
  OUTLINED_FUNCTION_9_2();
  if (v166)
  {
    CAFTypeTestObservable.testArrayUInt64.getter(v166, v167, v168, v169, v170);
    v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt64VGSgMd, &_sSays6UInt64VGSgMR);
    v171 = OUTLINED_FUNCTION_38_0(v172);
  }

  v313 = v171;
  v314 = v167;
  [v1 registeredForTestArrayInt8];
  OUTLINED_FUNCTION_9_2();
  if (v173)
  {
    CAFTypeTestObservable.testArrayInt8.getter(v173, v174, v175, v176, v177);
    v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays4Int8VGSgMd, &_sSays4Int8VGSgMR);
    v178 = OUTLINED_FUNCTION_38_0(v179);
  }

  v311 = v178;
  v312 = v174;
  [v1 registeredForTestArrayInt16];
  OUTLINED_FUNCTION_9_2();
  if (v180)
  {
    CAFTypeTestObservable.testArrayInt16.getter(v180, v181, v182, v183, v184);
    v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5Int16VGSgMd, &_sSays5Int16VGSgMR);
    v185 = OUTLINED_FUNCTION_38_0(v186);
  }

  v309 = v185;
  v310 = v181;
  [v1 registeredForTestArrayInt32];
  OUTLINED_FUNCTION_9_2();
  if (v187)
  {
    CAFTypeTestObservable.testArrayInt32.getter(v187, v188, v189, v190, v191);
    v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5Int32VGSgMd, &_sSays5Int32VGSgMR);
    v192 = OUTLINED_FUNCTION_38_0(v193);
  }

  v307 = v192;
  v308 = v188;
  [v1 registeredForTestArrayInt64];
  OUTLINED_FUNCTION_9_2();
  if (v194)
  {
    CAFTypeTestObservable.testArrayInt64.getter(v194, v195, v196, v197, v198);
    v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5Int64VGSgMd, &_sSays5Int64VGSgMR);
    v199 = OUTLINED_FUNCTION_38_0(v200);
  }

  v305 = v199;
  v306 = v195;
  [v1 registeredForTestArrayFloat];
  OUTLINED_FUNCTION_9_2();
  if (v201)
  {
    CAFTypeTestObservable.testArrayFloat.getter(v201, v202, v203, v204, v205);
    v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGSgMd, &_sSaySfGSgMR);
    v206 = OUTLINED_FUNCTION_38_0(v207);
  }

  v303 = v206;
  v304 = v202;
  [v1 registeredForTestArrayString];
  OUTLINED_FUNCTION_9_2();
  if (v208)
  {
    CAFTypeTestObservable.testArrayString.getter(v208, v209, v210, v211, v212);
    v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGSgMd, &_sSaySSGSgMR);
    v213 = OUTLINED_FUNCTION_38_0(v214);
  }

  v301 = v213;
  v302 = v209;
  [v1 registeredForTestArrayData];
  OUTLINED_FUNCTION_9_2();
  if (v215)
  {
    CAFTypeTestObservable.testArrayData.getter(v215, v216, v217, v218, v219);
    v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGSgMd, &_sSay10Foundation4DataVGSgMR);
    v220 = OUTLINED_FUNCTION_38_0(v221);
  }

  v299 = v220;
  v300 = v216;
  [v1 registeredForTestArrayRawData];
  OUTLINED_FUNCTION_9_2();
  if (v224)
  {
    CAFTypeTestObservable.testArrayRawData.getter();
    v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGSgMd, &_sSay10Foundation4DataVGSgMR);
    v223 = OUTLINED_FUNCTION_38_0(v225);
  }

  v297 = v223;
  v298 = v222;
  [v1 registeredForTestComplexItems];
  OUTLINED_FUNCTION_9_2();
  if (v226)
  {
    CAFTypeTestObservable.testComplexItems.getter(v226, v227, v228, v229, v230);
    v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19CAFTestComplexItemsCSgMd, &_sSo19CAFTestComplexItemsCSgMR);
    v231 = OUTLINED_FUNCTION_38_0(v232);
  }

  v295 = v231;
  v296 = v227;
  [v1 registeredForTestComplexItemValue];
  OUTLINED_FUNCTION_9_2();
  if (v233)
  {
    CAFTypeTestObservable.testComplexItemValue.getter(v233, v234, v235, v236, v237);
    v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18CAFTestComplexItemCSgMd, &_sSo18CAFTestComplexItemCSgMR);
    v238 = OUTLINED_FUNCTION_38_0(v239);
  }

  v293 = v238;
  v294 = v234;
  v240 = [v1 registeredForTestComplexItemList];
  v245 = 0x73696765726E753CLL;
  v246 = 0xEE003E6465726574;
  if (v240)
  {
    CAFTypeTestObservable.testComplexItemList.getter(v240, v241, v242, v243, v244);
    v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19CAFTestComplexItemsCSgMd, &_sSo19CAFTestComplexItemsCSgMR);
    v245 = OUTLINED_FUNCTION_38_0(v247);
    v246 = v248;
  }

  v292 = v245;
  v249 = [v1 registeredForTestComplexArrayItemValue];
  v254 = 0x73696765726E753CLL;
  v255 = 0xEE003E6465726574;
  if (v249)
  {
    CAFTypeTestObservable.testComplexArrayItemValue.getter(v249, v250, v251, v252, v253);
    v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23CAFTestComplexArrayItemCSgMd, &_sSo23CAFTestComplexArrayItemCSgMR);
    v254 = OUTLINED_FUNCTION_38_0(v256);
    v255 = v257;
  }

  v291 = v254;
  v258 = [v1 registeredForTestComplexNestedItemValue];
  v263 = 0x73696765726E753CLL;
  v264 = 0xEE003E6465726574;
  if (v258)
  {
    CAFTypeTestObservable.testComplexNestedItemValue.getter(v258, v259, v260, v261, v262);
    v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24CAFTestComplexNestedItemCSgMd, &_sSo24CAFTestComplexNestedItemCSgMR);
    v263 = OUTLINED_FUNCTION_38_0(v265);
    v264 = v266;
  }

  v290 = v263;
  v267 = [v1 registeredForTestComplexNestedItemList];
  v272 = 0x73696765726E753CLL;
  v273 = 0xEE003E6465726574;
  if (v267)
  {
    CAFTypeTestObservable.testComplexNestedItemList.getter(v267, v268, v269, v270, v271);
    v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25CAFTestComplexNestedItemsCSgMd, &_sSo25CAFTestComplexNestedItemsCSgMR);
    v272 = OUTLINED_FUNCTION_38_0(v274);
    v273 = v275;
  }

  v289 = v272;
  v276 = [v1 registeredForTestComplexNestedListItemValue];
  if (v276)
  {
    CAFTypeTestObservable.testComplexNestedListItemValue.getter(v276, v277, v278, v279, v280);
    v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28CAFTestComplexNestedListItemCSgMd, &_sSo28CAFTestComplexNestedListItemCSgMR);
    OUTLINED_FUNCTION_38_0(v281);
  }

  _StringGuts.grow(_:)(760);
  MEMORY[0x245D0A530](0xD000000000000018, 0x80000002423111C0);
  _print_unlocked<A, B>(_:_:)();
  OUTLINED_FUNCTION_45_1();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v352, v353);

  OUTLINED_FUNCTION_45_1();
  MEMORY[0x245D0A530](0x495574736574202CLL);
  MEMORY[0x245D0A530](v16, v351);

  OUTLINED_FUNCTION_71_1();
  MEMORY[0x245D0A530](v349, v350);

  OUTLINED_FUNCTION_71_1();
  MEMORY[0x245D0A530](v347, v348);

  OUTLINED_FUNCTION_71_1();
  MEMORY[0x245D0A530](v345, v346);

  MEMORY[0x245D0A530](0x6E4974736574202CLL, 0xEC000000203A3874);
  MEMORY[0x245D0A530](v343, v344);

  OUTLINED_FUNCTION_45_1();
  MEMORY[0x245D0A530](0x6E4974736574202CLL);
  MEMORY[0x245D0A530](v341, v342);

  OUTLINED_FUNCTION_45_1();
  MEMORY[0x245D0A530](0x6E4974736574202CLL);
  MEMORY[0x245D0A530](v339, v340);

  OUTLINED_FUNCTION_45_1();
  MEMORY[0x245D0A530](0x6E4974736574202CLL);
  MEMORY[0x245D0A530](v337, v338);

  OUTLINED_FUNCTION_25_4();
  OUTLINED_FUNCTION_45_1();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v335, v336);

  v282 = OUTLINED_FUNCTION_25_4();
  MEMORY[0x245D0A530](v282 & 0xFFFFFFFFFFFFLL | 0x7453000000000000, 0xEE00203A676E6972);
  MEMORY[0x245D0A530](v333, v334);

  v283 = OUTLINED_FUNCTION_25_4();
  MEMORY[0x245D0A530](v283 & 0xFFFFFFFFFFFFLL | 0x6144000000000000, 0xEC000000203A6174);
  MEMORY[0x245D0A530](v331, v332);

  v284 = OUTLINED_FUNCTION_25_4();
  MEMORY[0x245D0A530](v284 & 0xFFFFFFFFFFFFLL | 0x6152000000000000, 0xEF203A6174614477);
  MEMORY[0x245D0A530](v329, v330);

  v285 = OUTLINED_FUNCTION_25_4();
  MEMORY[0x245D0A530](v285 & 0xFFFFFFFFFFFFLL | 0x6E45000000000000, v286 | 0xEC000000203A6174);
  MEMORY[0x245D0A530](v327, v328);

  OUTLINED_FUNCTION_65_1();
  MEMORY[0x245D0A530](v325, v326);

  OUTLINED_FUNCTION_37_0();
  MEMORY[0x245D0A530](v323, v324);

  MEMORY[0x245D0A530](0xD000000000000011, 0x8000000242310EB0);
  MEMORY[0x245D0A530](v321, v322);

  OUTLINED_FUNCTION_2_26();
  MEMORY[0x245D0A530](v319, v320);

  OUTLINED_FUNCTION_37_0();
  MEMORY[0x245D0A530](v317, v318);

  OUTLINED_FUNCTION_37_0();
  MEMORY[0x245D0A530](v315, v316);

  OUTLINED_FUNCTION_37_0();
  MEMORY[0x245D0A530](v313, v314);

  MEMORY[0x245D0A530](0xD000000000000011, 0x8000000242310F50);
  MEMORY[0x245D0A530](v311, v312);

  OUTLINED_FUNCTION_2_26();
  MEMORY[0x245D0A530](v309, v310);

  OUTLINED_FUNCTION_2_26();
  MEMORY[0x245D0A530](v307, v308);

  OUTLINED_FUNCTION_2_26();
  MEMORY[0x245D0A530](v305, v306);

  OUTLINED_FUNCTION_2_26();
  MEMORY[0x245D0A530](v303, v304);

  OUTLINED_FUNCTION_37_0();
  MEMORY[0x245D0A530](v301, v302);

  MEMORY[0x245D0A530](0xD000000000000011, 0x8000000242311010);
  MEMORY[0x245D0A530](v299, v300);

  MEMORY[0x245D0A530](0xD000000000000014, 0x8000000242311030);
  MEMORY[0x245D0A530](v297, v298);

  MEMORY[0x245D0A530](0xD000000000000014, 0x8000000242311050);
  MEMORY[0x245D0A530](v295, v296);

  MEMORY[0x245D0A530](0xD000000000000018, 0x8000000242311070);
  MEMORY[0x245D0A530](v293, v294);

  MEMORY[0x245D0A530](0xD000000000000017, 0x8000000242311090);
  MEMORY[0x245D0A530](v292, v246);

  OUTLINED_FUNCTION_65_1();
  MEMORY[0x245D0A530](v291, v255);

  MEMORY[0x245D0A530](0xD00000000000001ELL, 0x8000000242311200);
  MEMORY[0x245D0A530](v290, v264);

  OUTLINED_FUNCTION_65_1();
  MEMORY[0x245D0A530](v289, v273);

  MEMORY[0x245D0A530](0xD000000000000022, 0x8000000242311240);
  v287 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v287);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFTypeTestObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_cachedDescription + 8))
  {
    v4 = *(v0 + v1);
  }

  else
  {
    *v3 = CAFTypeTestObservable._description.getter();
    v3[1] = v5;

    v4 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v4 + 4);

  return OUTLINED_FUNCTION_197();
}

void CAFTypeTestObservable.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_90_0();
  a16 = v18;
  a17 = v19;
  v20 = v17;
  v22 = v21;
  v23 = &v17[OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_cachedDescription];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *&v20[v24] = v25;
  v26 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testBool;
  swift_getKeyPath();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSbSgGMd, &_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v27);
  OUTLINED_FUNCTION_0_7();
  *&v20[v26] = specialized SafePublished.init(observedValuekeypath:)();
  v28 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testUInt8;
  swift_getKeyPath();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCs5UInt8VSgGMd, &_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCs5UInt8VSgGMR);
  OUTLINED_FUNCTION_225(v29);
  v30 = OUTLINED_FUNCTION_0_7();
  *&v20[v28] = specialized SafePublished.init(observedValuekeypath:)(v30);
  v31 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testUInt16;
  swift_getKeyPath();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCs6UInt16VSgGMd, &_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCs6UInt16VSgGMR);
  OUTLINED_FUNCTION_225(v32);
  v33 = OUTLINED_FUNCTION_0_7();
  *&v20[v31] = specialized SafePublished.init(observedValuekeypath:)(v33);
  v34 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testUInt32;
  swift_getKeyPath();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCs6UInt32VSgGMd, &_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCs6UInt32VSgGMR);
  OUTLINED_FUNCTION_225(v35);
  v36 = OUTLINED_FUNCTION_0_7();
  *&v20[v34] = specialized SafePublished.init(observedValuekeypath:)(v36);
  v37 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testUInt64;
  swift_getKeyPath();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCs6UInt64VSgGMd, &_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCs6UInt64VSgGMR);
  OUTLINED_FUNCTION_225(v38);
  v39 = OUTLINED_FUNCTION_0_7();
  *&v20[v37] = specialized SafePublished.init(observedValuekeypath:)(v39);
  v40 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testInt8;
  swift_getKeyPath();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCs4Int8VSgGMd, &_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCs4Int8VSgGMR);
  OUTLINED_FUNCTION_225(v41);
  v42 = OUTLINED_FUNCTION_0_7();
  *&v20[v40] = specialized SafePublished.init(observedValuekeypath:)(v42);
  v43 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testInt16;
  swift_getKeyPath();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCs5Int16VSgGMd, &_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCs5Int16VSgGMR);
  OUTLINED_FUNCTION_225(v44);
  v45 = OUTLINED_FUNCTION_0_7();
  *&v20[v43] = specialized SafePublished.init(observedValuekeypath:)(v45);
  v46 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testInt32;
  swift_getKeyPath();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCs5Int32VSgGMd, &_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCs5Int32VSgGMR);
  OUTLINED_FUNCTION_225(v47);
  v48 = OUTLINED_FUNCTION_0_7();
  *&v20[v46] = specialized SafePublished.init(observedValuekeypath:)(v48);
  v49 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testInt64;
  swift_getKeyPath();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCs5Int64VSgGMd, &_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCs5Int64VSgGMR);
  OUTLINED_FUNCTION_225(v50);
  v51 = OUTLINED_FUNCTION_0_7();
  *&v20[v49] = specialized SafePublished.init(observedValuekeypath:)(v51);
  v52 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testFloat;
  swift_getKeyPath();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSfSgGMd, _s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSfSgGMR);
  OUTLINED_FUNCTION_225(v53);
  v54 = OUTLINED_FUNCTION_0_7();
  *&v20[v52] = specialized SafePublished.init(observedValuekeypath:)(v54);
  v55 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testString;
  swift_getKeyPath();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSSSgGMd, _s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v56);
  OUTLINED_FUNCTION_0_7();
  *&v20[v55] = specialized SafePublished.init(observedValuekeypath:)();
  v57 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testData;
  swift_getKeyPath();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableC10Foundation4DataVSgGMd, _s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableC10Foundation4DataVSgGMR);
  OUTLINED_FUNCTION_225(v58);
  OUTLINED_FUNCTION_0_7();
  *&v20[v57] = specialized SafePublished.init(observedValuekeypath:)();
  v59 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testRawData;
  swift_getKeyPath();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA21CAFTypeTestObservableC10Foundation4DataVSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA21CAFTypeTestObservableC10Foundation4DataVSgGMR);
  OUTLINED_FUNCTION_225(v60);
  OUTLINED_FUNCTION_0_7();
  *&v20[v59] = specialized SafePublished.init(observedValuekeypath:)();
  v61 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testEnum;
  swift_getKeyPath();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSo15CAFButtonActionVSgGMd, &_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSo15CAFButtonActionVSgGMR);
  OUTLINED_FUNCTION_225(v62);
  v63 = OUTLINED_FUNCTION_0_7();
  *&v20[v61] = specialized SafePublished.init(observedValuekeypath:)(v63);
  v64 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testDimensionUnitRawValue;
  swift_getKeyPath();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSo11CAFUnitTypeVSgGMd, _s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSo11CAFUnitTypeVSgGMR);
  OUTLINED_FUNCTION_225(v65);
  v66 = OUTLINED_FUNCTION_0_7();
  *&v20[v64] = specialized SafePublished.init(observedValuekeypath:)(v66);
  v67 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testComplexItem;
  swift_getKeyPath();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSo18CAFTestComplexItemCSgGMd, &_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSo18CAFTestComplexItemCSgGMR);
  OUTLINED_FUNCTION_225(v68);
  OUTLINED_FUNCTION_0_7();
  *&v20[v67] = specialized SafePublished.init(observedValuekeypath:)();
  v69 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testArrayBool;
  swift_getKeyPath();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSaySbGSgGMd, &_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSaySbGSgGMR);
  OUTLINED_FUNCTION_225(v70);
  OUTLINED_FUNCTION_0_7();
  *&v20[v69] = specialized SafePublished.init(observedValuekeypath:)();
  v71 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testArrayUInt8;
  swift_getKeyPath();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSays5UInt8VGSgGMd, &_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSays5UInt8VGSgGMR);
  OUTLINED_FUNCTION_225(v72);
  OUTLINED_FUNCTION_0_7();
  *&v20[v71] = specialized SafePublished.init(observedValuekeypath:)();
  v73 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testArrayUInt16;
  swift_getKeyPath();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSays6UInt16VGSgGMd, &_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSays6UInt16VGSgGMR);
  OUTLINED_FUNCTION_225(v74);
  OUTLINED_FUNCTION_0_7();
  *&v20[v73] = specialized SafePublished.init(observedValuekeypath:)();
  v75 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testArrayUInt32;
  swift_getKeyPath();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSays6UInt32VGSgGMd, &_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSays6UInt32VGSgGMR);
  OUTLINED_FUNCTION_225(v76);
  OUTLINED_FUNCTION_0_7();
  *&v20[v75] = specialized SafePublished.init(observedValuekeypath:)();
  v77 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testArrayUInt64;
  swift_getKeyPath();
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSays6UInt64VGSgGMd, &_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSays6UInt64VGSgGMR);
  OUTLINED_FUNCTION_225(v78);
  OUTLINED_FUNCTION_0_7();
  *&v20[v77] = specialized SafePublished.init(observedValuekeypath:)();
  v79 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testArrayInt8;
  swift_getKeyPath();
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSays4Int8VGSgGMd, &_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSays4Int8VGSgGMR);
  OUTLINED_FUNCTION_225(v80);
  OUTLINED_FUNCTION_0_7();
  *&v20[v79] = specialized SafePublished.init(observedValuekeypath:)();
  v81 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testArrayInt16;
  swift_getKeyPath();
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSays5Int16VGSgGMd, &_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSays5Int16VGSgGMR);
  OUTLINED_FUNCTION_225(v82);
  OUTLINED_FUNCTION_0_7();
  *&v20[v81] = specialized SafePublished.init(observedValuekeypath:)();
  v83 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testArrayInt32;
  swift_getKeyPath();
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSays5Int32VGSgGMd, &_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSays5Int32VGSgGMR);
  OUTLINED_FUNCTION_225(v84);
  OUTLINED_FUNCTION_0_7();
  *&v20[v83] = specialized SafePublished.init(observedValuekeypath:)();
  v85 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testArrayInt64;
  swift_getKeyPath();
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSays5Int64VGSgGMd, &_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSays5Int64VGSgGMR);
  OUTLINED_FUNCTION_225(v86);
  OUTLINED_FUNCTION_0_7();
  *&v20[v85] = specialized SafePublished.init(observedValuekeypath:)();
  v87 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testArrayFloat;
  swift_getKeyPath();
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSaySfGSgGMd, _s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSaySfGSgGMR);
  OUTLINED_FUNCTION_225(v88);
  OUTLINED_FUNCTION_0_7();
  *&v20[v87] = specialized SafePublished.init(observedValuekeypath:)();
  v89 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testArrayString;
  swift_getKeyPath();
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSaySSGSgGMd, _s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSaySSGSgGMR);
  OUTLINED_FUNCTION_225(v90);
  OUTLINED_FUNCTION_0_7();
  *&v20[v89] = specialized SafePublished.init(observedValuekeypath:)();
  v91 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testArrayData;
  swift_getKeyPath();
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSay10Foundation4DataVGSgGMd, _s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSay10Foundation4DataVGSgGMR);
  OUTLINED_FUNCTION_225(v92);
  OUTLINED_FUNCTION_0_7();
  *&v20[v91] = specialized SafePublished.init(observedValuekeypath:)();
  v93 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testArrayRawData;
  swift_getKeyPath();
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA21CAFTypeTestObservableCSay10Foundation4DataVGSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA21CAFTypeTestObservableCSay10Foundation4DataVGSgGMR);
  OUTLINED_FUNCTION_225(v94);
  OUTLINED_FUNCTION_0_7();
  *&v20[v93] = specialized SafePublished.init(observedValuekeypath:)();
  v95 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testComplexItems;
  swift_getKeyPath();
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSo19CAFTestComplexItemsCSgGMd, _s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSo19CAFTestComplexItemsCSgGMR);
  OUTLINED_FUNCTION_225(v96);
  OUTLINED_FUNCTION_0_7();
  *&v20[v95] = specialized SafePublished.init(observedValuekeypath:)();
  v97 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testComplexItemValue;
  swift_getKeyPath();
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v20[v97] = specialized SafePublished.init(observedValuekeypath:)();
  v98 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testComplexItemList;
  swift_getKeyPath();
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v20[v98] = specialized SafePublished.init(observedValuekeypath:)();
  v99 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testComplexArrayItemValue;
  swift_getKeyPath();
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSo23CAFTestComplexArrayItemCSgGMd, _s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSo23CAFTestComplexArrayItemCSgGMR);
  OUTLINED_FUNCTION_225(v100);
  OUTLINED_FUNCTION_0_7();
  *&v20[v99] = specialized SafePublished.init(observedValuekeypath:)();
  v101 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testComplexNestedItemValue;
  swift_getKeyPath();
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSo24CAFTestComplexNestedItemCSgGMd, _s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSo24CAFTestComplexNestedItemCSgGMR);
  OUTLINED_FUNCTION_225(v102);
  OUTLINED_FUNCTION_0_7();
  *&v20[v101] = specialized SafePublished.init(observedValuekeypath:)();
  v103 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testComplexNestedItemList;
  swift_getKeyPath();
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSo25CAFTestComplexNestedItemsCSgGMd, _s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSo25CAFTestComplexNestedItemsCSgGMR);
  OUTLINED_FUNCTION_225(v104);
  OUTLINED_FUNCTION_0_7();
  *&v20[v103] = specialized SafePublished.init(observedValuekeypath:)();
  v105 = OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testComplexNestedListItemValue;
  swift_getKeyPath();
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSo28CAFTestComplexNestedListItemCSgGMd, &_s10CAFCombine13SafePublishedCyAA21CAFTypeTestObservableCSo28CAFTestComplexNestedListItemCSgGMR);
  OUTLINED_FUNCTION_225(v106);
  OUTLINED_FUNCTION_0_7();
  *&v20[v105] = specialized SafePublished.init(observedValuekeypath:)();
  *&v20[OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed] = v22;
  v107 = type metadata accessor for CAFTypeTestObservable();
  a9.receiver = v20;
  a9.super_class = v107;
  v108 = v22;
  v109 = objc_msgSendSuper2(&a9, sel_init);
  [v108 registerObserver_];

  OUTLINED_FUNCTION_91_0();
}