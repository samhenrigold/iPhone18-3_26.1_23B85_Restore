uint64_t CAFMultipleSelectImageSettingObservable.multipleSelectImageSettingService(_:didUpdateListUserVisibleValue:)(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_17_3();

  a4(v5);
}

double @objc CAFMultipleSelectImageSettingObservable.multipleSelectImageSettingService(_:didUpdateListUserVisibleValue:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a1;
  a6();

  return result;
}

uint64_t CAFMultipleSelectImageSettingObservable.automakerSettingService(_:didUpdateProminenceInfo:)(uint64_t a1, void *a2, void *a3, void (*a4)(void *))
{
  v6 = a2;

  a4(a2);
}

uint64_t CAFMultipleSelectImageSettingObservable.automakerSettingService(_:didUpdateSectionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  v4 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v4, v5);
}

uint64_t CAFMultipleSelectImageSettingObservable.automakerSettingService(_:didUpdateUserVisibleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3();

  v4 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v4, v5);
}

uint64_t CAFMultipleSelectImageSettingObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFMultipleSelectImageSettingObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFMultipleSelectImageSettingObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFMultipleSelectImageSetting.listUserVisibleValue : CAFMultipleSelectImageSetting(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *a3 = v5;
}

unint64_t lazy protocol witness table accessor for type CAFMultipleSelectImageSetting and conformance CAFMultipleSelectImageSetting()
{
  result = lazy protocol witness table cache variable for type CAFMultipleSelectImageSetting and conformance CAFMultipleSelectImageSetting;
  if (!lazy protocol witness table cache variable for type CAFMultipleSelectImageSetting and conformance CAFMultipleSelectImageSetting)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFMultipleSelectImageSetting, 0x277CF8538);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFMultipleSelectImageSetting and conformance CAFMultipleSelectImageSetting);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFMultipleSelectImageSettingObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFMultipleSelectImageSettingObservable and conformance CAFMultipleSelectImageSettingObservable(&lazy protocol witness table cache variable for type CAFMultipleSelectImageSettingObservable and conformance CAFMultipleSelectImageSettingObservable, &protocol conformance descriptor for CAFMultipleSelectImageSettingObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFMultipleSelectImageSettingObservable and conformance CAFMultipleSelectImageSettingObservable(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFMultipleSelectImageSettingObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double partial apply for closure #1 in CAFMultipleSelectImageSettingObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine39CAFMultipleSelectImageSettingObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFMultipleSelectSettingObservable.sectionIdentifier.getter()
{
  return CAFMultipleSelectSettingObservable.sectionIdentifier.getter();
}

{
  OUTLINED_FUNCTION_4_9();
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable_observed);

  OUTLINED_FUNCTION_232(v2);

  return v3;
}

uint64_t CAFMultipleSelectSettingObservable.sortOrder.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4 | (v5 << 8);
}

uint64_t CAFMultipleSelectSettingObservable.category.getter()
{
  OUTLINED_FUNCTION_7_4();

  v1 = v0;
  OUTLINED_FUNCTION_231(v1, v2, v3, v4, v5, v6, v7, v8, v10);

  return v11;
}

uint64_t CAFMultipleSelectSettingObservable.disabled.getter()
{
  return CAFMultipleSelectSettingObservable.disabled.getter();
}

{
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_7_4();

  v1 = v0;
  OUTLINED_FUNCTION_231(v1, v2, v3, v4, v5, v6, v7, v8, v10);

  return v11;
}

uint64_t CAFMultipleSelectSettingObservable.prominenceInfo.getter()
{
  return CAFMultipleSelectSettingObservable.prominenceInfo.getter();
}

{
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_7_4();

  v1 = v0;
  OUTLINED_FUNCTION_5_9(v1, v2, v3, v4, v5, v6, v7, v8, v10);

  return v11;
}

uint64_t CAFMultipleSelectSettingObservable.selectSettingEntryList.getter()
{
  OUTLINED_FUNCTION_7_4();

  v1 = v0;
  OUTLINED_FUNCTION_5_9(v1, v2, v3, v4, v5, v6, v7, v8, v10);

  return v11;
}

uint64_t key path getter for CAFMultipleSelectSettingObservable.selectedEntryIndices : CAFMultipleSelectSettingObservable@<X0>(uint64_t *a2@<X8>)
{
  result = CAFMultipleSelectSettingObservable.selectedEntryIndices.getter();
  *a2 = result;
  return result;
}

uint64_t CAFMultipleSelectSettingObservable.selectedEntryIndices.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__selectedEntryIndices, v8);
  v7 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable_observed);
  swift_retain_n();

  v1 = v7;
  v2 = swift_readAtKeyPath();
  v4 = *v3;

  v2(&v6, 0);

  return v4;
}

uint64_t CAFMultipleSelectSettingObservable.selectedEntryIndices.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = v10;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA34CAFMultipleSelectSettingObservableC_Says5UInt8VGTt3g5(a1, v14, KeyPath, v13, v15, v16, v17, v18, a9, a10);
}

void (*CAFMultipleSelectSettingObservable.selectedEntryIndices.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[9] = v1;
  v3[10] = swift_getKeyPath();
  v3[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__selectedEntryIndices, (v3 + 4));
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable_observed);
  v3[8] = v4;
  swift_retain_n();

  v5 = v4;
  v6 = swift_readAtKeyPath();
  v8 = *v7;

  v6(v3, 0);

  v3[7] = v8;
  return CAFMultipleSelectSettingObservable.selectedEntryIndices.modify;
}

void CAFMultipleSelectSettingObservable.selectedEntryIndices.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[7];
  v9 = (*a1)[9];
  v11 = v3[10];
  v10 = v3[11];
  if (a2)
  {

    _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA34CAFMultipleSelectSettingObservableC_Says5UInt8VGTt3g5(v12, v9, v11, v10, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA34CAFMultipleSelectSettingObservableC_Says5UInt8VGTt3g5(v4, v9, v3[10], v3[11], v5, v6, v7, v8, v17, v18);
  }

  free(v3);
}

uint64_t CAFMultipleSelectSettingObservable.$selectedEntryIndices.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__selectedEntryIndices, v4);

  specialized SafePublished.projectedValue.getter();
  v2 = v1;

  return v2;
}

uint64_t CAFMultipleSelectSettingObservable.$userVisibleLabel.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3();
  v4 = a2(v3);

  return v4;
}

uint64_t CAFMultipleSelectSettingObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable_observed);
  v2 = 0x73696765726E753CLL;
  v3 = 0xEE003E6465726574;
  if ([v1 registeredForSelectSettingEntryList])
  {
    v4 = CAFMultipleSelectSettingObservable.selectSettingEntryList.getter();
    v5 = [v4 description];
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = v6;
  }

  v7 = [v1 registeredForSelectedEntryIndices];
  v8 = 0x73696765726E753CLL;
  v9 = 0xEE003E6465726574;
  if (v7)
  {
    CAFMultipleSelectSettingObservable.selectedEntryIndices.getter();
    v8 = MEMORY[0x245D0A590]();
    v9 = v10;
  }

  v11 = 0x73696765726E753CLL;
  v12 = 0xEE003E6465726574;
  if ([v1 registeredForUserVisibleDetailedDescription])
  {
    CAFMultipleSelectSettingObservable.userVisibleDetailedDescription.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo33CAFUserVisibleDetailedDescriptionCSgMd, &_sSo33CAFUserVisibleDetailedDescriptionCSgMR);
    v11 = String.init<A>(describing:)();
    v12 = v13;
  }

  if ([v1 registeredForUserVisibleDescription])
  {
    CAFMultipleSelectSettingObservable.userVisibleDescription.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    String.init<A>(describing:)();
  }

  _StringGuts.grow(_:)(161);
  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  _print_unlocked<A, B>(_:_:)();
  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v16, v3);

  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530](0xD000000000000018);
  MEMORY[0x245D0A530](v8, v9);

  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v11, v12);

  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  v14 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v14);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFMultipleSelectSettingObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable_cachedDescription + 8))
  {
    v4 = *(v0 + v1);
  }

  else
  {
    *v3 = CAFMultipleSelectSettingObservable._description.getter();
    v3[1] = v5;

    v4 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v4 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFMultipleSelectSettingObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__userVisibleLabel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFMultipleSelectSettingObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFMultipleSelectSettingObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v9 = OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__sectionIdentifier;
  swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFMultipleSelectSettingObservableCSSSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFMultipleSelectSettingObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v10);
  OUTLINED_FUNCTION_0_7();
  *&v2[v9] = specialized SafePublished.init(observedValuekeypath:)();
  v11 = OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__sortOrder;
  swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFMultipleSelectSettingObservableCs5UInt8VSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFMultipleSelectSettingObservableCs5UInt8VSgGMR);
  OUTLINED_FUNCTION_225(v12);
  v13 = OUTLINED_FUNCTION_0_7();
  *&v2[v11] = specialized SafePublished.init(observedValuekeypath:)(v13);
  v14 = OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__category;
  swift_getKeyPath();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFMultipleSelectSettingObservableCSo19CAFSettingsCategoryVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFMultipleSelectSettingObservableCSo19CAFSettingsCategoryVGMR);
  OUTLINED_FUNCTION_225(v15);
  v16 = OUTLINED_FUNCTION_0_7();
  *&v2[v14] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v16);
  v17 = OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__identifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v17] = specialized SafePublished.init(observedValuekeypath:)();
  v18 = OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__disabled;
  swift_getKeyPath();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFMultipleSelectSettingObservableCSbSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFMultipleSelectSettingObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v19);
  OUTLINED_FUNCTION_0_7();
  *&v2[v18] = specialized SafePublished.init(observedValuekeypath:)();
  v20 = OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__limitableUIElement;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_0_7();
  *&v2[v20] = specialized SafePublished.init(observedValuekeypath:)();
  v21 = OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__hidden;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_0_7();
  *&v2[v21] = specialized SafePublished.init(observedValuekeypath:)();
  v22 = OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__showAudioBrandLogo;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_0_7();
  *&v2[v22] = specialized SafePublished.init(observedValuekeypath:)();
  v23 = OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__vehicleLayoutKey;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v23] = specialized SafePublished.init(observedValuekeypath:)();
  v24 = OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__symbolName;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v24] = specialized SafePublished.init(observedValuekeypath:)();
  v25 = OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__prominenceInfo;
  swift_getKeyPath();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFMultipleSelectSettingObservableCSo24CAFProminenceInformationCSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFMultipleSelectSettingObservableCSo24CAFProminenceInformationCSgGMR);
  OUTLINED_FUNCTION_225(v26);
  OUTLINED_FUNCTION_0_7();
  *&v2[v25] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v27 = OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__selectSettingEntryList;
  swift_getKeyPath();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFMultipleSelectSettingObservableCSo09CAFSelectH9EntryListCGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFMultipleSelectSettingObservableCSo09CAFSelectH9EntryListCGMR);
  OUTLINED_FUNCTION_225(v28);
  OUTLINED_FUNCTION_0_7();
  *&v2[v27] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v29 = OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__selectedEntryIndices;
  swift_getKeyPath();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA34CAFMultipleSelectSettingObservableCSays5UInt8VGGMd, _s10CAFCombine13SafePublishedCyAA34CAFMultipleSelectSettingObservableCSays5UInt8VGGMR);
  OUTLINED_FUNCTION_225(v30);
  OUTLINED_FUNCTION_0_7();
  *&v2[v29] = specialized SafePublished.init(observedValuekeypath:)();
  v31 = OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__userVisibleDetailedDescription;
  swift_getKeyPath();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFMultipleSelectSettingObservableCSo33CAFUserVisibleDetailedDescriptionCSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFMultipleSelectSettingObservableCSo33CAFUserVisibleDetailedDescriptionCSgGMR);
  OUTLINED_FUNCTION_225(v32);
  OUTLINED_FUNCTION_0_7();
  *&v2[v31] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v33 = OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__userVisibleDescription;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v33] = specialized SafePublished.init(observedValuekeypath:)();
  v34 = OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v34] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable_observed] = a1;
  v38.receiver = v2;
  v38.super_class = type metadata accessor for CAFMultipleSelectSettingObservable();
  v35 = a1;
  v36 = objc_msgSendSuper2(&v38, sel_init);
  [v35 registerObserver_];

  return v36;
}

uint64_t CAFMultipleSelectSettingObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFMultipleSelectSettingObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFMultipleSelectSettingObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFMultipleSelectSettingObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFMultipleSelectSettingObservable@<X0>(void *a1@<X8>)
{
  result = CAFMultipleSelectSettingObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFMultipleSelectSettingObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFMultipleSelectSettingObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFMultipleSelectSettingObservable.automakerSettingService(_:didUpdateSortOrder:)(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFMultipleSelectSettingObservable.automakerSettingService(_:didUpdateCategory:)(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2);
}

double @objc CAFMultipleSelectSettingObservable.automakerSettingService(_:didUpdateUserVisibleLabel:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFMultipleSelectSettingObservable.automakerSettingService(_:didUpdateDisabled:)(uint64_t a1, char a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2 & 1);
}

double @objc CAFMultipleSelectSettingObservable.automakerSettingService(_:didUpdateSectionIdentifier:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
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

uint64_t CAFMultipleSelectSettingObservable.multipleSelectSettingService(_:didUpdateSelectSettingEntryList:)(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_17_3();
  v3 = a2;
  specialized SafeReadOnlyPublished.value.setter(a2);
}

void CAFMultipleSelectSettingObservable.multipleSelectSettingService(_:didUpdateSelectedEntryIndices:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_234(v2 + OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable__selectedEntryIndices, v15);
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

uint64_t CAFMultipleSelectSettingObservable.automakerSettingService(_:didUpdateProminenceInfo:)(uint64_t a1, void *a2, void *a3, void (*a4)(void *))
{
  v6 = a2;

  a4(a2);
}

uint64_t CAFMultipleSelectSettingObservable.automakerSettingService(_:didUpdateSectionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  v4 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v4, v5);
}

uint64_t CAFMultipleSelectSettingObservable.automakerSettingService(_:didUpdateUserVisibleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3();

  v4 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v4, v5);
}

uint64_t CAFMultipleSelectSettingObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFMultipleSelectSettingObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFMultipleSelectSettingObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

id key path getter for CAFMultipleSelectSetting.selectSettingEntryList : CAFMultipleSelectSetting@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 selectSettingEntryList];
  *a2 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CAFMultipleSelectSetting and conformance CAFMultipleSelectSetting()
{
  result = lazy protocol witness table cache variable for type CAFMultipleSelectSetting and conformance CAFMultipleSelectSetting;
  if (!lazy protocol witness table cache variable for type CAFMultipleSelectSetting and conformance CAFMultipleSelectSetting)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFMultipleSelectSetting, 0x277CF8540);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFMultipleSelectSetting and conformance CAFMultipleSelectSetting);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFMultipleSelectSettingObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFMultipleSelectSettingObservable and conformance CAFMultipleSelectSettingObservable(&lazy protocol witness table cache variable for type CAFMultipleSelectSettingObservable and conformance CAFMultipleSelectSettingObservable, &protocol conformance descriptor for CAFMultipleSelectSettingObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFMultipleSelectSettingObservable and conformance CAFMultipleSelectSettingObservable(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFMultipleSelectSettingObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double partial apply for closure #1 in CAFMultipleSelectSettingObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine34CAFMultipleSelectSettingObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFSettingsSectionObservable.userVisibleSectionName.getter(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC10CAFCombine28CAFSettingsSectionObservable_observed);

  OUTLINED_FUNCTION_232(v3);

  return v4;
}

uint64_t CAFSettingsSectionObservable.sortOrder.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFSettingsSectionObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFSettingsSectionObservable.$identifier.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t CAFSettingsSectionObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFSettingsSectionObservable_observed);
  v2 = [v1 registeredForIdentifier];
  v3 = 0x73696765726E753CLL;
  v4 = 0xEE003E6465726574;
  if (v2)
  {
    v3 = CAFSettingsSectionObservable.identifier.getter();
    v4 = v5;
  }

  v6 = 0x73696765726E753CLL;
  v7 = 0xEE003E6465726574;
  if ([v1 registeredForUserVisibleSectionName])
  {
    CAFSettingsSectionObservable.userVisibleSectionName.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v6 = String.init<A>(describing:)();
    v7 = v8;
  }

  v9 = 0x73696765726E753CLL;
  v10 = 0xEE003E6465726574;
  if ([v1 registeredForUserVisibleFooter])
  {
    CAFSettingsSectionObservable.userVisibleFooter.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v9 = String.init<A>(describing:)();
    v10 = v11;
  }

  if ([v1 registeredForSortOrder])
  {
    CAFSettingsSectionObservable.sortOrder.getter();
    dispatch thunk of CustomStringConvertible.description.getter();
  }

  _StringGuts.grow(_:)(119);
  MEMORY[0x245D0A530](0xD00000000000001FLL, 0x800000024230D370);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x746E656469207B20, 0xEF203A7265696669);
  MEMORY[0x245D0A530](v14, v4);

  MEMORY[0x245D0A530](0xD00000000000001ALL, 0x800000024230D390);
  MEMORY[0x245D0A530](v6, v7);

  MEMORY[0x245D0A530](0xD000000000000015, 0x800000024230D3B0);
  MEMORY[0x245D0A530](v9, v10);

  MEMORY[0x245D0A530](0x724F74726F73202CLL, 0xED0000203A726564);
  v12 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v12);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFSettingsSectionObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine28CAFSettingsSectionObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFSettingsSectionObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine28CAFSettingsSectionObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine28CAFSettingsSectionObservable_cachedDescription + 8))
  {
    v4 = *(v0 + v1);
  }

  else
  {
    *v3 = CAFSettingsSectionObservable._description.getter();
    v3[1] = v5;

    v4 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v4 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFSettingsSectionObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine28CAFSettingsSectionObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine28CAFSettingsSectionObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine28CAFSettingsSectionObservable__identifier;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFSettingsSectionObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFSettingsSectionObservableCSSGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v8 = OBJC_IVAR____TtC10CAFCombine28CAFSettingsSectionObservable__userVisibleSectionName;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFSettingsSectionObservableCSSSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFSettingsSectionObservableCSSSgGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v8] = specialized SafePublished.init(observedValuekeypath:)();
  v9 = OBJC_IVAR____TtC10CAFCombine28CAFSettingsSectionObservable__userVisibleFooter;
  swift_getKeyPath();
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v9] = specialized SafePublished.init(observedValuekeypath:)();
  v10 = OBJC_IVAR____TtC10CAFCombine28CAFSettingsSectionObservable__sortOrder;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFSettingsSectionObservableCs5UInt8VGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFSettingsSectionObservableCs5UInt8VGMR);
  swift_allocObject();
  v11 = OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)(v11);
  v12 = OBJC_IVAR____TtC10CAFCombine28CAFSettingsSectionObservable__name;
  swift_getKeyPath();
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v12] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine28CAFSettingsSectionObservable_observed] = a1;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for CAFSettingsSectionObservable();
  v13 = a1;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  [v13 registerObserver_];

  return v14;
}

uint64_t CAFSettingsSectionObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFSettingsSectionObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFSettingsSectionObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine28CAFSettingsSectionObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFSettingsSectionObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFSettingsSectionObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFSettingsSectionObservable@<X0>(void *a1@<X8>)
{
  result = CAFSettingsSectionObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFSettingsSectionObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFSettingsSectionObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFSettingsSectionObservable.settingsSectionService(_:didUpdateUserVisibleSectionName:)()
{
  OUTLINED_FUNCTION_4_12();

  v0 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v0, v1);
}

double @objc CAFSettingsSectionObservable.settingsSectionService(_:didUpdateUserVisibleSectionName:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
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

uint64_t CAFSettingsSectionObservable.settingsSectionService(_:didUpdateSortOrder:)(uint64_t a1, unsigned __int8 a2)
{

  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFSettingsSectionObservable.settingsSectionService(_:didUpdateIdentifier:)()
{
  OUTLINED_FUNCTION_4_12();

  v0 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v0, v1);
}

double @objc CAFSettingsSectionObservable.settingsSectionService(_:didUpdateIdentifier:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFSettingsSectionObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFSettingsSectionObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFSettingsSectionObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFSettingsSection()
{
  result = lazy cache variable for type metadata for CAFSettingsSection;
  if (!lazy cache variable for type metadata for CAFSettingsSection)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFSettingsSection);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFSettingsSectionObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFSettingsSectionObservable and conformance CAFSettingsSectionObservable(&lazy protocol witness table cache variable for type CAFSettingsSectionObservable and conformance CAFSettingsSectionObservable, a2, type metadata accessor for CAFSettingsSectionObservable, &protocol conformance descriptor for CAFSettingsSectionObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFSettingsSectionObservable and conformance CAFSettingsSectionObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFSettingsSectionObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine28CAFSettingsSectionObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFSingleSelectImageSettingObservable.sectionIdentifier.getter()
{
  return CAFSingleSelectImageSettingObservable.sectionIdentifier.getter();
}

{
  OUTLINED_FUNCTION_4_9();
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable_observed);

  OUTLINED_FUNCTION_232(v2);

  return v3;
}

uint64_t CAFSingleSelectImageSettingObservable.sortOrder.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4 | (v5 << 8);
}

uint64_t CAFSingleSelectImageSettingObservable.category.getter()
{
  OUTLINED_FUNCTION_7_4();

  v1 = v0;
  OUTLINED_FUNCTION_231(v1, v2, v3, v4, v5, v6, v7, v8, v10);

  return v11;
}

uint64_t CAFSingleSelectImageSettingObservable.disabled.getter()
{
  return CAFSingleSelectImageSettingObservable.disabled.getter();
}

{
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_7_4();

  v1 = v0;
  OUTLINED_FUNCTION_231(v1, v2, v3, v4, v5, v6, v7, v8, v10);

  return v11;
}

uint64_t key path getter for CAFSingleSelectImageSettingObservable.currentUserVisibleValue : CAFSingleSelectImageSettingObservable@<X0>(_BYTE *a2@<X8>)
{
  result = CAFSingleSelectImageSettingObservable.currentUserVisibleValue.getter();
  *a2 = result;
  return result;
}

uint64_t CAFSingleSelectImageSettingObservable.currentUserVisibleValue.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__currentUserVisibleValue, v8);
  v7 = *(v0 + OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable_observed);

  v1 = v7;
  v2 = swift_readAtKeyPath();
  v4 = *v3;
  v2(&v6, 0);

  return v4;
}

uint64_t CAFSingleSelectImageSettingObservable.currentUserVisibleValue.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = v10;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA37CAFSingleSelectImageSettingObservableC_s5UInt8VTt3g5(a1, v14, KeyPath, v13, v15, v16, v17, v18, a9, a10);
}

void (*CAFSingleSelectImageSettingObservable.currentUserVisibleValue.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__currentUserVisibleValue, (v3 + 4));
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable_observed);
  v3[7] = v4;

  v5 = v4;
  v6 = swift_readAtKeyPath();
  v8 = *v7;
  v6(v3, 0);

  *(v3 + 88) = v8;
  return CAFSingleSelectImageSettingObservable.currentUserVisibleValue.modify;
}

void CAFSingleSelectImageSettingObservable.currentUserVisibleValue.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 72);
  v2 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 64);
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA37CAFSingleSelectImageSettingObservableC_s5UInt8VTt3g5(v4, v5, v3, v2, v6, v7, v8, v9, v10, v11);

  free(v1);
}

uint64_t CAFSingleSelectImageSettingObservable.$currentUserVisibleValue.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__currentUserVisibleValue, v4);

  specialized SafePublished.projectedValue.getter();
  v2 = v1;

  return v2;
}

uint64_t CAFSingleSelectImageSettingObservable.listUserVisibleValue.getter()
{
  return CAFSingleSelectImageSettingObservable.listUserVisibleValue.getter();
}

{
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_7_4();

  v1 = v0;
  OUTLINED_FUNCTION_5_9(v1, v2, v3, v4, v5, v6, v7, v8, v10);

  return v11;
}

uint64_t CAFSingleSelectImageSettingObservable.$userVisibleLabel.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3();
  v4 = a2(v3);

  return v4;
}

uint64_t CAFSingleSelectImageSettingObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable_observed);
  v2 = [v1 registeredForCurrentUserVisibleValue];
  v3 = 0x73696765726E753CLL;
  v4 = 0xEE003E6465726574;
  if (v2)
  {
    CAFSingleSelectImageSettingObservable.currentUserVisibleValue.getter();
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    v4 = v5;
  }

  v20 = v3;
  v6 = 0x73696765726E753CLL;
  v7 = 0xEE003E6465726574;
  if ([v1 registeredForListUserVisibleValue])
  {
    CAFSingleSelectImageSettingObservable.listUserVisibleValue.getter();
    v6 = MEMORY[0x245D0A590]();
    v7 = v8;
  }

  v19 = v6;
  v9 = 0x73696765726E753CLL;
  v10 = 0xEE003E6465726574;
  if ([v1 registeredForImageList])
  {
    CAFSingleSelectImageSettingObservable.images.getter();
    v9 = MEMORY[0x245D0A590]();
    v10 = v11;
  }

  v12 = [v1 registeredForUserVisibleDetailedDescription];
  v13 = 0x73696765726E753CLL;
  v14 = 0xEE003E6465726574;
  if (v12)
  {
    CAFSingleSelectImageSettingObservable.userVisibleDetailedDescription.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo33CAFUserVisibleDetailedDescriptionCSgMd, &_sSo33CAFUserVisibleDetailedDescriptionCSgMR);
    v13 = String.init<A>(describing:)();
    v14 = v15;
  }

  if ([v1 registeredForUserVisibleDescription])
  {
    CAFSingleSelectImageSettingObservable.userVisibleDescription.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    String.init<A>(describing:)();
  }

  _StringGuts.grow(_:)(177);
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  _print_unlocked<A, B>(_:_:)();
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v20, v4);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530](0xD000000000000018);
  MEMORY[0x245D0A530](v19, v7);

  MEMORY[0x245D0A530](0x736567616D69202CLL, 0xEA0000000000203ALL);
  MEMORY[0x245D0A530](v18, v10);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v13, v14);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  v16 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v16);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFSingleSelectImageSettingObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable_cachedDescription + 8))
  {
    v4 = *(v0 + v1);
  }

  else
  {
    *v3 = CAFSingleSelectImageSettingObservable._description.getter();
    v3[1] = v5;

    v4 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v4 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFSingleSelectImageSettingObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__userVisibleLabel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFSingleSelectImageSettingObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFSingleSelectImageSettingObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v9 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__sectionIdentifier;
  swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFSingleSelectImageSettingObservableCSSSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFSingleSelectImageSettingObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v10);
  OUTLINED_FUNCTION_0_7();
  *&v2[v9] = specialized SafePublished.init(observedValuekeypath:)();
  v11 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__sortOrder;
  swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFSingleSelectImageSettingObservableCs5UInt8VSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFSingleSelectImageSettingObservableCs5UInt8VSgGMR);
  OUTLINED_FUNCTION_225(v12);
  v13 = OUTLINED_FUNCTION_0_7();
  *&v2[v11] = specialized SafePublished.init(observedValuekeypath:)(v13);
  v14 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__category;
  swift_getKeyPath();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFSingleSelectImageSettingObservableCSo19CAFSettingsCategoryVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFSingleSelectImageSettingObservableCSo19CAFSettingsCategoryVGMR);
  OUTLINED_FUNCTION_225(v15);
  v16 = OUTLINED_FUNCTION_0_7();
  *&v2[v14] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v16);
  v17 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__identifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v17] = specialized SafePublished.init(observedValuekeypath:)();
  v18 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__disabled;
  swift_getKeyPath();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFSingleSelectImageSettingObservableCSbSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFSingleSelectImageSettingObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v19);
  OUTLINED_FUNCTION_0_7();
  *&v2[v18] = specialized SafePublished.init(observedValuekeypath:)();
  v20 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__limitableUIElement;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_0_7();
  *&v2[v20] = specialized SafePublished.init(observedValuekeypath:)();
  v21 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__hidden;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_0_7();
  *&v2[v21] = specialized SafePublished.init(observedValuekeypath:)();
  v22 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__showAudioBrandLogo;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_0_7();
  *&v2[v22] = specialized SafePublished.init(observedValuekeypath:)();
  v23 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__vehicleLayoutKey;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v23] = specialized SafePublished.init(observedValuekeypath:)();
  v24 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__symbolName;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v24] = specialized SafePublished.init(observedValuekeypath:)();
  v25 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__prominenceInfo;
  swift_getKeyPath();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFSingleSelectImageSettingObservableCSo24CAFProminenceInformationCSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFSingleSelectImageSettingObservableCSo24CAFProminenceInformationCSgGMR);
  OUTLINED_FUNCTION_225(v26);
  OUTLINED_FUNCTION_0_7();
  *&v2[v25] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v27 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__currentUserVisibleValue;
  swift_getKeyPath();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA37CAFSingleSelectImageSettingObservableCs5UInt8VGMd, _s10CAFCombine13SafePublishedCyAA37CAFSingleSelectImageSettingObservableCs5UInt8VGMR);
  OUTLINED_FUNCTION_225(v28);
  v29 = OUTLINED_FUNCTION_0_7();
  *&v2[v27] = specialized SafePublished.init(observedValuekeypath:)(v29);
  v30 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__listUserVisibleValue;
  swift_getKeyPath();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFSingleSelectImageSettingObservableCSaySSGGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFSingleSelectImageSettingObservableCSaySSGGMR);
  OUTLINED_FUNCTION_225(v31);
  OUTLINED_FUNCTION_0_7();
  *&v2[v30] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v32 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__images;
  swift_getKeyPath();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFSingleSelectImageSettingObservableCSay10Foundation4DataVGGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFSingleSelectImageSettingObservableCSay10Foundation4DataVGGMR);
  OUTLINED_FUNCTION_225(v33);
  OUTLINED_FUNCTION_0_7();
  *&v2[v32] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v34 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__userVisibleDetailedDescription;
  swift_getKeyPath();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFSingleSelectImageSettingObservableCSo33CAFUserVisibleDetailedDescriptionCSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA37CAFSingleSelectImageSettingObservableCSo33CAFUserVisibleDetailedDescriptionCSgGMR);
  OUTLINED_FUNCTION_225(v35);
  OUTLINED_FUNCTION_0_7();
  *&v2[v34] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v36 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__userVisibleDescription;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v36] = specialized SafePublished.init(observedValuekeypath:)();
  v37 = OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v37] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable_observed] = a1;
  v41.receiver = v2;
  v41.super_class = type metadata accessor for CAFSingleSelectImageSettingObservable();
  v38 = a1;
  v39 = objc_msgSendSuper2(&v41, sel_init);
  [v38 registerObserver_];

  return v39;
}

uint64_t CAFSingleSelectImageSettingObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFSingleSelectImageSettingObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFSingleSelectImageSettingObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFSingleSelectImageSettingObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFSingleSelectImageSettingObservable@<X0>(void *a1@<X8>)
{
  result = CAFSingleSelectImageSettingObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFSingleSelectImageSettingObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFSingleSelectImageSettingObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFSingleSelectImageSettingObservable.automakerSettingService(_:didUpdateSortOrder:)(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFSingleSelectImageSettingObservable.automakerSettingService(_:didUpdateCategory:)(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2);
}

double @objc CAFSingleSelectImageSettingObservable.automakerSettingService(_:didUpdateUserVisibleLabel:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFSingleSelectImageSettingObservable.automakerSettingService(_:didUpdateDisabled:)(uint64_t a1, char a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2 & 1);
}

double @objc CAFSingleSelectImageSettingObservable.automakerSettingService(_:didUpdateSectionIdentifier:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
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

uint64_t CAFSingleSelectImageSettingObservable.singleSelectImageSettingService(_:didUpdateCurrentUserVisibleValue:)(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_234(v2 + OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable__currentUserVisibleValue, v5);

  specialized SafePublished.value.setter(a2);
}

uint64_t CAFSingleSelectImageSettingObservable.singleSelectImageSettingService(_:didUpdateListUserVisibleValue:)(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_17_3();

  a4(v5);
}

double @objc CAFSingleSelectImageSettingObservable.singleSelectImageSettingService(_:didUpdateListUserVisibleValue:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a1;
  a6();

  return result;
}

uint64_t CAFSingleSelectImageSettingObservable.automakerSettingService(_:didUpdateProminenceInfo:)(uint64_t a1, void *a2, void *a3, void (*a4)(void *))
{
  v6 = a2;

  a4(a2);
}

uint64_t CAFSingleSelectImageSettingObservable.automakerSettingService(_:didUpdateSectionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  v4 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v4, v5);
}

uint64_t CAFSingleSelectImageSettingObservable.automakerSettingService(_:didUpdateUserVisibleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3();

  v4 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v4, v5);
}

uint64_t CAFSingleSelectImageSettingObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFSingleSelectImageSettingObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFSingleSelectImageSettingObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFSingleSelectImageSetting()
{
  result = lazy cache variable for type metadata for CAFSingleSelectImageSetting;
  if (!lazy cache variable for type metadata for CAFSingleSelectImageSetting)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFSingleSelectImageSetting);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFSingleSelectImageSettingObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFSingleSelectImageSettingObservable and conformance CAFSingleSelectImageSettingObservable(&lazy protocol witness table cache variable for type CAFSingleSelectImageSettingObservable and conformance CAFSingleSelectImageSettingObservable, a2, type metadata accessor for CAFSingleSelectImageSettingObservable, &protocol conformance descriptor for CAFSingleSelectImageSettingObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFSingleSelectImageSettingObservable and conformance CAFSingleSelectImageSettingObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFSingleSelectImageSettingObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine37CAFSingleSelectImageSettingObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFSingleSelectSettingObservable.sectionIdentifier.getter()
{
  return CAFSingleSelectSettingObservable.sectionIdentifier.getter();
}

{
  OUTLINED_FUNCTION_4_9();
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable_observed);

  OUTLINED_FUNCTION_232(v2);

  return v3;
}

uint64_t CAFSingleSelectSettingObservable.sortOrder.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4 | (v5 << 8);
}

uint64_t CAFSingleSelectSettingObservable.category.getter()
{
  OUTLINED_FUNCTION_7_4();

  v1 = v0;
  OUTLINED_FUNCTION_231(v1, v2, v3, v4, v5, v6, v7, v8, v10);

  return v11;
}

uint64_t CAFSingleSelectSettingObservable.disabled.getter()
{
  return CAFSingleSelectSettingObservable.disabled.getter();
}

{
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_7_4();

  v1 = v0;
  OUTLINED_FUNCTION_231(v1, v2, v3, v4, v5, v6, v7, v8, v10);

  return v11;
}

uint64_t CAFSingleSelectSettingObservable.prominenceInfo.getter()
{
  return CAFSingleSelectSettingObservable.prominenceInfo.getter();
}

{
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_7_4();

  v1 = v0;
  OUTLINED_FUNCTION_5_9(v1, v2, v3, v4, v5, v6, v7, v8, v10);

  return v11;
}

uint64_t CAFSingleSelectSettingObservable.selectSettingEntryList.getter()
{
  OUTLINED_FUNCTION_7_4();

  v1 = v0;
  OUTLINED_FUNCTION_5_9(v1, v2, v3, v4, v5, v6, v7, v8, v10);

  return v11;
}

uint64_t key path getter for CAFSingleSelectSettingObservable.selectedEntryIndex : CAFSingleSelectSettingObservable@<X0>(_BYTE *a2@<X8>)
{
  result = CAFSingleSelectSettingObservable.selectedEntryIndex.getter();
  *a2 = result;
  return result;
}

uint64_t CAFSingleSelectSettingObservable.selectedEntryIndex.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__selectedEntryIndex, v8);
  v7 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable_observed);

  v1 = v7;
  v2 = swift_readAtKeyPath();
  v4 = *v3;
  v2(&v6, 0);

  return v4;
}

uint64_t CAFSingleSelectSettingObservable.selectedEntryIndex.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = v10;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA32CAFSingleSelectSettingObservableC_s5UInt8VTt3g5(a1, v14, KeyPath, v13, v15, v16, v17, v18, a9, a10);
}

void (*CAFSingleSelectSettingObservable.selectedEntryIndex.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__selectedEntryIndex, (v3 + 4));
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable_observed);
  v3[7] = v4;

  v5 = v4;
  v6 = swift_readAtKeyPath();
  v8 = *v7;
  v6(v3, 0);

  *(v3 + 88) = v8;
  return CAFSingleSelectSettingObservable.selectedEntryIndex.modify;
}

void CAFSingleSelectSettingObservable.selectedEntryIndex.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 72);
  v2 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 64);
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA32CAFSingleSelectSettingObservableC_s5UInt8VTt3g5(v4, v5, v3, v2, v6, v7, v8, v9, v10, v11);

  free(v1);
}

uint64_t CAFSingleSelectSettingObservable.$selectedEntryIndex.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__selectedEntryIndex, v4);

  specialized SafePublished.projectedValue.getter();
  v2 = v1;

  return v2;
}

uint64_t CAFSingleSelectSettingObservable.$userVisibleLabel.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3();
  v4 = a2(v3);

  return v4;
}

uint64_t CAFSingleSelectSettingObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable_observed);
  v2 = 0x73696765726E753CLL;
  v3 = 0xEE003E6465726574;
  if ([v1 registeredForSelectSettingEntryList])
  {
    v4 = CAFSingleSelectSettingObservable.selectSettingEntryList.getter();
    v5 = [v4 description];
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = v6;
  }

  v7 = [v1 registeredForSelectedEntryIndex];
  v8 = 0x73696765726E753CLL;
  v9 = 0xEE003E6465726574;
  if (v7)
  {
    CAFSingleSelectSettingObservable.selectedEntryIndex.getter();
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = v10;
  }

  v21 = v8;
  v22 = v2;
  v11 = [v1 registeredForUserVisibleDetailedDescription];
  v12 = 0x73696765726E753CLL;
  v13 = 0xEE003E6465726574;
  if (v11)
  {
    CAFSingleSelectSettingObservable.userVisibleDetailedDescription.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo33CAFUserVisibleDetailedDescriptionCSgMd, &_sSo33CAFUserVisibleDetailedDescriptionCSgMR);
    v12 = String.init<A>(describing:)();
    v13 = v14;
  }

  v15 = 0x73696765726E753CLL;
  v16 = 0xEE003E6465726574;
  if ([v1 registeredForUserVisibleDescription])
  {
    CAFSingleSelectSettingObservable.userVisibleDescription.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v15 = String.init<A>(describing:)();
    v16 = v17;
  }

  if ([v1 registeredForSelectSettingEntryListNotificationInfo])
  {
    CAFSingleSelectSettingObservable.selectSettingEntryListNotificationInfo.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo37CAFSelectSettingNotificationEntryListCSgMd, &_sSo37CAFSelectSettingNotificationEntryListCSgMR);
    String.init<A>(describing:)();
  }

  _StringGuts.grow(_:)(201);
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  _print_unlocked<A, B>(_:_:)();
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v22, v3);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530](0xD000000000000016);
  MEMORY[0x245D0A530](v21, v9);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v20, v13);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v15, v16);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  v18 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v18);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFSingleSelectSettingObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable_cachedDescription + 8))
  {
    v4 = *(v0 + v1);
  }

  else
  {
    *v3 = CAFSingleSelectSettingObservable._description.getter();
    v3[1] = v5;

    v4 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v4 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFSingleSelectSettingObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__userVisibleLabel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFSingleSelectSettingObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFSingleSelectSettingObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v9 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__sectionIdentifier;
  swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFSingleSelectSettingObservableCSSSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFSingleSelectSettingObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v10);
  OUTLINED_FUNCTION_0_7();
  *&v2[v9] = specialized SafePublished.init(observedValuekeypath:)();
  v11 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__sortOrder;
  swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFSingleSelectSettingObservableCs5UInt8VSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFSingleSelectSettingObservableCs5UInt8VSgGMR);
  OUTLINED_FUNCTION_225(v12);
  v13 = OUTLINED_FUNCTION_0_7();
  *&v2[v11] = specialized SafePublished.init(observedValuekeypath:)(v13);
  v14 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__category;
  swift_getKeyPath();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFSingleSelectSettingObservableCSo19CAFSettingsCategoryVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFSingleSelectSettingObservableCSo19CAFSettingsCategoryVGMR);
  OUTLINED_FUNCTION_225(v15);
  v16 = OUTLINED_FUNCTION_0_7();
  *&v2[v14] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v16);
  v17 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__identifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v17] = specialized SafePublished.init(observedValuekeypath:)();
  v18 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__disabled;
  swift_getKeyPath();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFSingleSelectSettingObservableCSbSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFSingleSelectSettingObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v19);
  OUTLINED_FUNCTION_0_7();
  *&v2[v18] = specialized SafePublished.init(observedValuekeypath:)();
  v20 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__limitableUIElement;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_0_7();
  *&v2[v20] = specialized SafePublished.init(observedValuekeypath:)();
  v21 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__hidden;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_0_7();
  *&v2[v21] = specialized SafePublished.init(observedValuekeypath:)();
  v22 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__showAudioBrandLogo;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_0_7();
  *&v2[v22] = specialized SafePublished.init(observedValuekeypath:)();
  v23 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__vehicleLayoutKey;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v23] = specialized SafePublished.init(observedValuekeypath:)();
  v24 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__symbolName;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v24] = specialized SafePublished.init(observedValuekeypath:)();
  v25 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__prominenceInfo;
  swift_getKeyPath();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFSingleSelectSettingObservableCSo24CAFProminenceInformationCSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFSingleSelectSettingObservableCSo24CAFProminenceInformationCSgGMR);
  OUTLINED_FUNCTION_225(v26);
  OUTLINED_FUNCTION_0_7();
  *&v2[v25] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v27 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__selectSettingEntryList;
  swift_getKeyPath();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFSingleSelectSettingObservableCSo09CAFSelectH9EntryListCGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFSingleSelectSettingObservableCSo09CAFSelectH9EntryListCGMR);
  OUTLINED_FUNCTION_225(v28);
  OUTLINED_FUNCTION_0_7();
  *&v2[v27] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v29 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__selectedEntryIndex;
  swift_getKeyPath();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA32CAFSingleSelectSettingObservableCs5UInt8VGMd, _s10CAFCombine13SafePublishedCyAA32CAFSingleSelectSettingObservableCs5UInt8VGMR);
  OUTLINED_FUNCTION_225(v30);
  v31 = OUTLINED_FUNCTION_0_7();
  *&v2[v29] = specialized SafePublished.init(observedValuekeypath:)(v31);
  v32 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__userVisibleDetailedDescription;
  swift_getKeyPath();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFSingleSelectSettingObservableCSo33CAFUserVisibleDetailedDescriptionCSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFSingleSelectSettingObservableCSo33CAFUserVisibleDetailedDescriptionCSgGMR);
  OUTLINED_FUNCTION_225(v33);
  OUTLINED_FUNCTION_0_7();
  *&v2[v32] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v34 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__userVisibleDescription;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v34] = specialized SafePublished.init(observedValuekeypath:)();
  v35 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__selectSettingEntryListNotificationInfo;
  swift_getKeyPath();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFSingleSelectSettingObservableCSo09CAFSelectH21NotificationEntryListCSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFSingleSelectSettingObservableCSo09CAFSelectH21NotificationEntryListCSgGMR);
  OUTLINED_FUNCTION_225(v36);
  OUTLINED_FUNCTION_0_7();
  *&v2[v35] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v37 = OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v37] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable_observed] = a1;
  v41.receiver = v2;
  v41.super_class = type metadata accessor for CAFSingleSelectSettingObservable();
  v38 = a1;
  v39 = objc_msgSendSuper2(&v41, sel_init);
  [v38 registerObserver_];

  return v39;
}

uint64_t CAFSingleSelectSettingObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFSingleSelectSettingObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFSingleSelectSettingObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFSingleSelectSettingObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFSingleSelectSettingObservable@<X0>(void *a1@<X8>)
{
  result = CAFSingleSelectSettingObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFSingleSelectSettingObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFSingleSelectSettingObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFSingleSelectSettingObservable.automakerSettingService(_:didUpdateSortOrder:)(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFSingleSelectSettingObservable.automakerSettingService(_:didUpdateCategory:)(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2);
}

double @objc CAFSingleSelectSettingObservable.automakerSettingService(_:didUpdateUserVisibleLabel:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFSingleSelectSettingObservable.automakerSettingService(_:didUpdateDisabled:)(uint64_t a1, char a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2 & 1);
}

double @objc CAFSingleSelectSettingObservable.automakerSettingService(_:didUpdateSectionIdentifier:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
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

uint64_t CAFSingleSelectSettingObservable.singleSelectSettingService(_:didUpdateSelectSettingEntryList:)(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_17_3();
  v3 = a2;
  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFSingleSelectSettingObservable.singleSelectSettingService(_:didUpdateSelectedEntryIndex:)(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_234(v2 + OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable__selectedEntryIndex, v5);

  specialized SafePublished.value.setter(a2);
}

uint64_t CAFSingleSelectSettingObservable.automakerSettingService(_:didUpdateSectionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  v4 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v4, v5);
}

uint64_t CAFSingleSelectSettingObservable.automakerSettingService(_:didUpdateProminenceInfo:)(uint64_t a1, void *a2, void *a3, void (*a4)(void *))
{
  v6 = a2;

  a4(a2);
}

uint64_t CAFSingleSelectSettingObservable.automakerSettingService(_:didUpdateUserVisibleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3();

  v4 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v4, v5);
}

uint64_t CAFSingleSelectSettingObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFSingleSelectSettingObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFSingleSelectSettingObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

id key path getter for CAFSingleSelectSetting.selectSettingEntryListNotificationInfo : CAFSingleSelectSetting@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 selectSettingEntryListNotificationInfo];
  *a2 = result;
  return result;
}

unint64_t type metadata accessor for CAFSingleSelectSetting()
{
  result = lazy cache variable for type metadata for CAFSingleSelectSetting;
  if (!lazy cache variable for type metadata for CAFSingleSelectSetting)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFSingleSelectSetting);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFSingleSelectSettingObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFSingleSelectSettingObservable and conformance CAFSingleSelectSettingObservable(&lazy protocol witness table cache variable for type CAFSingleSelectSettingObservable and conformance CAFSingleSelectSettingObservable, a2, type metadata accessor for CAFSingleSelectSettingObservable, &protocol conformance descriptor for CAFSingleSelectSettingObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFSingleSelectSettingObservable and conformance CAFSingleSelectSettingObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFSingleSelectSettingObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine32CAFSingleSelectSettingObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFStaticSettingObservable.sectionIdentifier.getter()
{
  return CAFStaticSettingObservable.sectionIdentifier.getter();
}

{
  OUTLINED_FUNCTION_4_9();
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable_observed);

  OUTLINED_FUNCTION_232(v2);

  return v3;
}

uint64_t CAFStaticSettingObservable.sortOrder.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4 | (v5 << 8);
}

uint64_t CAFStaticSettingObservable.category.getter()
{
  OUTLINED_FUNCTION_7_4();

  v1 = v0;
  OUTLINED_FUNCTION_231(v1, v2, v3, v4, v5, v6, v7, v8, v10);

  return v11;
}

uint64_t CAFStaticSettingObservable.disabled.getter()
{
  return CAFStaticSettingObservable.disabled.getter();
}

{
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_7_4();

  v1 = v0;
  OUTLINED_FUNCTION_231(v1, v2, v3, v4, v5, v6, v7, v8, v10);

  return v11;
}

uint64_t CAFStaticSettingObservable.prominenceInfo.getter()
{
  return CAFStaticSettingObservable.prominenceInfo.getter();
}

{
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_7_4();

  v1 = v0;
  swift_getAtKeyPath();

  return v3;
}

uint64_t CAFStaticSettingObservable.$userVisibleLabel.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3();
  v4 = a2(v3);

  return v4;
}

uint64_t CAFStaticSettingObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable_observed);
  v2 = [v1 registeredForUserVisibleValue];
  v3 = 0x73696765726E753CLL;
  v4 = 0xEE003E6465726574;
  if (v2)
  {
    v3 = CAFStaticSettingObservable.userVisibleValue.getter();
    v4 = v5;
  }

  v6 = 0x73696765726E753CLL;
  v7 = 0xEE003E6465726574;
  if ([v1 registeredForChildrenSettingsIdentifiers])
  {
    CAFStaticSettingObservable.childrenSettingsIdentifiers.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGSgMd, &_sSaySSGSgMR);
    v6 = String.init<A>(describing:)();
    v7 = v8;
  }

  v9 = 0x73696765726E753CLL;
  v10 = 0xEE003E6465726574;
  if ([v1 registeredForUserVisibleDetailedDescription])
  {
    CAFStaticSettingObservable.userVisibleDetailedDescription.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo33CAFUserVisibleDetailedDescriptionCSgMd, &_sSo33CAFUserVisibleDetailedDescriptionCSgMR);
    v9 = String.init<A>(describing:)();
    v10 = v11;
  }

  if ([v1 registeredForUserVisibleDescription])
  {
    CAFStaticSettingObservable.userVisibleDescription.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    String.init<A>(describing:)();
  }

  _StringGuts.grow(_:)(154);
  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  _print_unlocked<A, B>(_:_:)();
  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530](0xD000000000000015);
  MEMORY[0x245D0A530](v14, v4);

  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
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

uint64_t CAFStaticSettingObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable_cachedDescription + 8))
  {
    v4 = *(v0 + v1);
  }

  else
  {
    *v3 = CAFStaticSettingObservable._description.getter();
    v3[1] = v5;

    v4 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v4 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFStaticSettingObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable__userVisibleLabel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFStaticSettingObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFStaticSettingObservableCSSGMR);
  OUTLINED_FUNCTION_225(v8);
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v9 = OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable__sectionIdentifier;
  swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFStaticSettingObservableCSSSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFStaticSettingObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v10);
  OUTLINED_FUNCTION_0_7();
  *&v2[v9] = specialized SafePublished.init(observedValuekeypath:)();
  v11 = OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable__sortOrder;
  swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFStaticSettingObservableCs5UInt8VSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFStaticSettingObservableCs5UInt8VSgGMR);
  OUTLINED_FUNCTION_225(v12);
  v13 = OUTLINED_FUNCTION_0_7();
  *&v2[v11] = specialized SafePublished.init(observedValuekeypath:)(v13);
  v14 = OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable__category;
  swift_getKeyPath();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFStaticSettingObservableCSo19CAFSettingsCategoryVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFStaticSettingObservableCSo19CAFSettingsCategoryVGMR);
  OUTLINED_FUNCTION_225(v15);
  v16 = OUTLINED_FUNCTION_0_7();
  *&v2[v14] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v16);
  v17 = OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable__identifier;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v17] = specialized SafePublished.init(observedValuekeypath:)();
  v18 = OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable__disabled;
  swift_getKeyPath();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFStaticSettingObservableCSbSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFStaticSettingObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v19);
  OUTLINED_FUNCTION_0_7();
  *&v2[v18] = specialized SafePublished.init(observedValuekeypath:)();
  v20 = OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable__limitableUIElement;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_0_7();
  *&v2[v20] = specialized SafePublished.init(observedValuekeypath:)();
  v21 = OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable__hidden;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_0_7();
  *&v2[v21] = specialized SafePublished.init(observedValuekeypath:)();
  v22 = OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable__showAudioBrandLogo;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_0_7();
  *&v2[v22] = specialized SafePublished.init(observedValuekeypath:)();
  v23 = OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable__vehicleLayoutKey;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v23] = specialized SafePublished.init(observedValuekeypath:)();
  v24 = OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable__symbolName;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v24] = specialized SafePublished.init(observedValuekeypath:)();
  v25 = OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable__prominenceInfo;
  swift_getKeyPath();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFStaticSettingObservableCSo24CAFProminenceInformationCSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFStaticSettingObservableCSo24CAFProminenceInformationCSgGMR);
  OUTLINED_FUNCTION_225(v26);
  OUTLINED_FUNCTION_0_7();
  *&v2[v25] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v27 = OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable__userVisibleValue;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v27] = specialized SafePublished.init(observedValuekeypath:)();
  v28 = OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable__childrenSettingsIdentifiers;
  swift_getKeyPath();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFStaticSettingObservableCSaySSGSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFStaticSettingObservableCSaySSGSgGMR);
  OUTLINED_FUNCTION_225(v29);
  OUTLINED_FUNCTION_0_7();
  *&v2[v28] = specialized SafePublished.init(observedValuekeypath:)();
  v30 = OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable__userVisibleDetailedDescription;
  swift_getKeyPath();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFStaticSettingObservableCSo33CAFUserVisibleDetailedDescriptionCSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFStaticSettingObservableCSo33CAFUserVisibleDetailedDescriptionCSgGMR);
  OUTLINED_FUNCTION_225(v31);
  OUTLINED_FUNCTION_0_7();
  *&v2[v30] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v32 = OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable__userVisibleDescription;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_0_7();
  *&v2[v32] = specialized SafePublished.init(observedValuekeypath:)();
  v33 = OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable__name;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v33] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable_observed] = a1;
  v37.receiver = v2;
  v37.super_class = type metadata accessor for CAFStaticSettingObservable();
  v34 = a1;
  v35 = objc_msgSendSuper2(&v37, sel_init);
  [v34 registerObserver_];

  return v35;
}

uint64_t CAFStaticSettingObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFStaticSettingObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFStaticSettingObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFStaticSettingObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFStaticSettingObservable@<X0>(void *a1@<X8>)
{
  result = CAFStaticSettingObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFStaticSettingObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFStaticSettingObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFStaticSettingObservable.automakerSettingService(_:didUpdateSortOrder:)(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFStaticSettingObservable.automakerSettingService(_:didUpdateCategory:)(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2);
}

double @objc CAFStaticSettingObservable.automakerSettingService(_:didUpdateUserVisibleLabel:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFStaticSettingObservable.automakerSettingService(_:didUpdateDisabled:)(uint64_t a1, char a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2 & 1);
}

double @objc CAFStaticSettingObservable.automakerSettingService(_:didUpdateSectionIdentifier:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
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

uint64_t CAFStaticSettingObservable.staticSettingService(_:didUpdateChildrenSettingsIdentifiers:)(uint64_t a1, uint64_t a2)
{

  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFStaticSettingObservable.automakerSettingService(_:didUpdateProminenceInfo:)(uint64_t a1, void *a2, void *a3, void (*a4)(void *))
{
  v6 = a2;

  a4(a2);
}

uint64_t CAFStaticSettingObservable.automakerSettingService(_:didUpdateSectionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  v4 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v4, v5);
}

uint64_t CAFStaticSettingObservable.automakerSettingService(_:didUpdateUserVisibleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3();

  v4 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v4, v5);
}

uint64_t CAFStaticSettingObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFStaticSettingObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFStaticSettingObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFStaticSetting.childrenSettingsIdentifiers : CAFStaticSetting(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 childrenSettingsIdentifiers];
  if (v3)
  {
    v4 = v3;
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

unint64_t type metadata accessor for CAFStaticSetting()
{
  result = lazy cache variable for type metadata for CAFStaticSetting;
  if (!lazy cache variable for type metadata for CAFStaticSetting)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFStaticSetting);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFStaticSettingObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFStaticSettingObservable and conformance CAFStaticSettingObservable(&lazy protocol witness table cache variable for type CAFStaticSettingObservable and conformance CAFStaticSettingObservable, a2, type metadata accessor for CAFStaticSettingObservable, &protocol conformance descriptor for CAFStaticSettingObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFStaticSettingObservable and conformance CAFStaticSettingObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFStaticSettingObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine26CAFStaticSettingObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFChargingRateObservable.power.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine25CAFChargingRateObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();
}

uint64_t CAFChargingRateObservable.$power.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t CAFChargingRateObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v13[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGSgMR);
  MEMORY[0x28223BE20](v13[0]);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, _s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - v5;
  v7 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFChargingRateObservable_observed);
  v8 = 0xEE003E6465726574;
  if ([v7 registeredForPower])
  {
    CAFChargingRateObservable.power.getter();
    lazy protocol witness table accessor for type Measurement<NSUnitPower> and conformance Measurement<A>();
    v2 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = v9;
    (*(v4 + 8))(v6, v3);
  }

  v10 = 0x73696765726E753CLL;
  if ([v7 registeredForChargingSpeed])
  {
    CAFChargingRateObservable.chargingSpeed.getter();
    v10 = String.init<A>(describing:)();
    v1 = v11;
  }

  v14 = 0;
  v15 = 0xE000000000000000;
  _StringGuts.grow(_:)(64);
  MEMORY[0x245D0A530](0xD00000000000001CLL, 0x800000024230D700);
  v13[1] = v0;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x7265776F70207B20, 0xEA0000000000203ALL);
  MEMORY[0x245D0A530](v2, v8);

  MEMORY[0x245D0A530](0xD000000000000011, 0x800000024230D720);
  MEMORY[0x245D0A530](v10, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return v14;
}

uint64_t CAFChargingRateObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine25CAFChargingRateObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFChargingRateObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine25CAFChargingRateObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine25CAFChargingRateObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFChargingRateObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

uint64_t CAFChargingRateObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFChargingRateObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFChargingRateObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine25CAFChargingRateObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFChargingRateObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFChargingRateObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFChargingRateObservable@<X0>(void *a1@<X8>)
{
  result = CAFChargingRateObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFChargingRateObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFChargingRateObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFChargingRateObservable.chargingRateService(_:didUpdatePower:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{

  a4(a2);
}

uint64_t CAFChargingRateObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFChargingRateObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFChargingRateObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFChargingRate.power : CAFChargingRate(id *a1)
{
  v1 = [*a1 power];
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitPower, 0x277CCAE30);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t key path getter for CAFChargingRate.chargingSpeed : CAFChargingRate@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 chargingSpeed];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitSpeed, 0x277CCAE40);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v6);
}

unint64_t lazy protocol witness table accessor for type CAFChargingRate and conformance CAFChargingRate()
{
  result = lazy protocol witness table cache variable for type CAFChargingRate and conformance CAFChargingRate;
  if (!lazy protocol witness table cache variable for type CAFChargingRate and conformance CAFChargingRate)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFChargingRate, 0x277CF83B8);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFChargingRate and conformance CAFChargingRate);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFChargingRateObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFChargingRateObservable and conformance CAFChargingRateObservable(&lazy protocol witness table cache variable for type CAFChargingRateObservable and conformance CAFChargingRateObservable, &protocol conformance descriptor for CAFChargingRateObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFChargingRateObservable and conformance CAFChargingRateObservable(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFChargingRateObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of Measurement<NSUnitSpeed>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double partial apply for closure #1 in CAFChargingRateObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine25CAFChargingRateObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

unint64_t lazy protocol witness table accessor for type Measurement<NSUnitPower> and conformance Measurement<A>()
{
  result = lazy protocol witness table cache variable for type Measurement<NSUnitPower> and conformance Measurement<A>;
  if (!lazy protocol witness table cache variable for type Measurement<NSUnitPower> and conformance Measurement<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, _s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Measurement<NSUnitPower> and conformance Measurement<A>);
  }

  return result;
}

uint64_t CAFChargingStatusObservable.chargingModeIdentifier.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFChargingStatusObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFChargingStatusObservable.chargingState.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine27CAFChargingStatusObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5 | (v6 << 8);
}

uint64_t CAFChargingStatusObservable.$chargingModeIdentifier.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

id CAFChargingStatusObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFChargingStatusObservable_observed);
  v4 = [v3 registeredForChargingModeIdentifier];
  v5 = 0x73696765726E753CLL;
  v6 = 0xEE003E6465726574;
  if (v4)
  {
    CAFChargingStatusObservable.chargingModeIdentifier.getter();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v5 = OUTLINED_FUNCTION_4_14(v7, v8, v9);
    v6 = v10;
  }

  v11 = 0x73696765726E753CLL;
  v12 = 0xEE003E6465726574;
  if ([v3 registeredForChargingState])
  {
    CAFChargingStatusObservable.chargingState.getter();
    OUTLINED_FUNCTION_1_28();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16CAFChargingStateVSgMd, _sSo16CAFChargingStateVSgMR);
    v11 = OUTLINED_FUNCTION_4_14(v13, v14, v15);
    v12 = v16;
  }

  v17 = 0x73696765726E753CLL;
  v18 = 0xEE003E6465726574;
  if ([v3 registeredForCableState])
  {
    CAFChargingStatusObservable.cableState.getter();
    OUTLINED_FUNCTION_1_28();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CAFCableStateVSgMd, &_sSo13CAFCableStateVSgMR);
    v17 = OUTLINED_FUNCTION_4_14(v19, v20, v21);
    v18 = v22;
  }

  if ([v3 registeredForPortSideIndicator])
  {
    CAFChargingStatusObservable.portSideIndicator.getter();
    OUTLINED_FUNCTION_1_28();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20CAFPortSideIndicatorVSgMd, &_sSo20CAFPortSideIndicatorVSgMR);
    v2 = OUTLINED_FUNCTION_4_14(v23, v24, v25);
    v1 = v26;
  }

  _StringGuts.grow(_:)(122);
  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  _print_unlocked<A, B>(_:_:)();
  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v28, v6);

  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530](0xD000000000000011);
  MEMORY[0x245D0A530](v11, v12);

  MEMORY[0x245D0A530](0x53656C626163202CLL, 0xEE00203A65746174);
  MEMORY[0x245D0A530](v17, v18);

  OUTLINED_FUNCTION_2_8();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

id CAFChargingStatusObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine27CAFChargingStatusObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFChargingStatusObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine27CAFChargingStatusObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine27CAFChargingStatusObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFChargingStatusObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFChargingStatusObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine27CAFChargingStatusObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine27CAFChargingStatusObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine27CAFChargingStatusObservable__chargingModeIdentifier;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFChargingStatusObservableCSSSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFChargingStatusObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v8);
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v9 = OBJC_IVAR____TtC10CAFCombine27CAFChargingStatusObservable__chargingState;
  swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFChargingStatusObservableCSo0F5StateVSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFChargingStatusObservableCSo0F5StateVSgGMR);
  OUTLINED_FUNCTION_225(v10);
  v11 = OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v11, v12, v13, v14, v15, v16, v17, v18, v45.receiver, v45.super_class, v46, v47, v48, v49, vars0, vars8);
  *&v2[v9] = v19;
  v20 = OBJC_IVAR____TtC10CAFCombine27CAFChargingStatusObservable__cableState;
  swift_getKeyPath();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFChargingStatusObservableCSo13CAFCableStateVSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFChargingStatusObservableCSo13CAFCableStateVSgGMR);
  OUTLINED_FUNCTION_225(v21);
  v22 = OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v22, v23, v24, v25, v26, v27, v28, v29, v45.receiver, v45.super_class, v46, v47, v48, v49, vars0, vars8);
  *&v2[v20] = v30;
  v31 = OBJC_IVAR____TtC10CAFCombine27CAFChargingStatusObservable__portSideIndicator;
  swift_getKeyPath();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFChargingStatusObservableCSo20CAFPortSideIndicatorVSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFChargingStatusObservableCSo20CAFPortSideIndicatorVSgGMR);
  OUTLINED_FUNCTION_225(v32);
  v33 = OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v33, v34, v35, v36, v37, v38, v39, v40, v45.receiver, v45.super_class, v46, v47, v48, v49, vars0, vars8);
  *&v2[v31] = v41;
  *&v2[OBJC_IVAR____TtC10CAFCombine27CAFChargingStatusObservable_observed] = a1;
  v45.receiver = v2;
  v45.super_class = type metadata accessor for CAFChargingStatusObservable();
  v42 = a1;
  v43 = objc_msgSendSuper2(&v45, sel_init);
  [v42 registerObserver_];

  return v43;
}

uint64_t CAFChargingStatusObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFChargingStatusObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFChargingStatusObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine27CAFChargingStatusObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFChargingStatusObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFChargingStatusObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFChargingStatusObservable@<X0>(void *a1@<X8>)
{
  result = CAFChargingStatusObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFChargingStatusObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFChargingStatusObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFChargingStatusObservable.chargingStatusService(_:didUpdateChargingModeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  specialized SafeReadOnlyPublished.value.setter(a2, a3);
}

uint64_t CAFChargingStatusObservable.chargingStatusService(_:didUpdateChargingState:)(uint64_t a1, unsigned __int8 a2, void *a3, void (*a4)(void))
{

  a4(a2);
}

uint64_t CAFChargingStatusObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFChargingStatusObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFChargingStatusObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFChargingStatus.chargingModeIdentifier : CAFChargingStatus(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 chargingModeIdentifier];
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

uint64_t key path getter for CAFChargingStatus.chargingStateBridged : CAFChargingStatus@<X0>(_BYTE *a1@<X8>)
{
  result = CAFChargingStatus.chargingStateBridged.getter();
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

uint64_t key path getter for CAFChargingStatus.cableStateBridged : CAFChargingStatus@<X0>(_BYTE *a1@<X8>)
{
  result = CAFChargingStatus.cableStateBridged.getter();
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

uint64_t key path getter for CAFChargingStatus.portSideIndicatorBridged : CAFChargingStatus@<X0>(_BYTE *a1@<X8>)
{
  result = CAFChargingStatus.portSideIndicatorBridged.getter();
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

unint64_t type metadata accessor for CAFChargingStatus()
{
  result = lazy cache variable for type metadata for CAFChargingStatus;
  if (!lazy cache variable for type metadata for CAFChargingStatus)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFChargingStatus);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFChargingStatusObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFChargingStatusObservable and conformance CAFChargingStatusObservable(&lazy protocol witness table cache variable for type CAFChargingStatusObservable and conformance CAFChargingStatusObservable, a2, type metadata accessor for CAFChargingStatusObservable, &protocol conformance descriptor for CAFChargingStatusObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFChargingStatusObservable and conformance CAFChargingStatusObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFChargingStatusObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine27CAFChargingStatusObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t OUTLINED_FUNCTION_4_14(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return String.init<A>(describing:)();
}

uint64_t CAFChargingTimeObservable.remainingTime.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFChargingTimeObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();
}

uint64_t CAFChargingTimeObservable.$remainingTime.getter()
{

  specialized SafeReadOnlyPublished.projectedValue.getter();
  v1 = v0;

  return v1;
}

uint64_t CAFChargingTimeObservable._description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - v3;
  if ([*(v0 + OBJC_IVAR____TtC10CAFCombine25CAFChargingTimeObservable_observed) registeredForRemainingTime])
  {
    CAFChargingTimeObservable.remainingTime.getter();
    lazy protocol witness table accessor for type Measurement<NSUnitDuration> and conformance Measurement<A>();
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    v7 = v6;
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v7 = 0xEE003E6465726574;
    v5 = 0x73696765726E753CLL;
  }

  v10 = 0;
  v11 = 0xE000000000000000;
  _StringGuts.grow(_:)(53);
  MEMORY[0x245D0A530](0xD00000000000001CLL, 0x800000024230D900);
  v9[1] = v0;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000012, 0x800000024230D920);
  MEMORY[0x245D0A530](v5, v7);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return v10;
}

uint64_t CAFChargingTimeObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine25CAFChargingTimeObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFChargingTimeObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine25CAFChargingTimeObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine25CAFChargingTimeObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFChargingTimeObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

uint64_t CAFChargingTimeObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFChargingTimeObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFChargingTimeObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine25CAFChargingTimeObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFChargingTimeObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFChargingTimeObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFChargingTimeObservable@<X0>(void *a1@<X8>)
{
  result = CAFChargingTimeObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFChargingTimeObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFChargingTimeObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFChargingTimeObservable.chargingTimeService(_:didUpdateRemainingTime:)()
{

  specialized SafeReadOnlyPublished.setValue(_:)();
}

uint64_t CAFChargingTimeObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFChargingTimeObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFChargingTimeObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFChargingTime.remainingTime : CAFChargingTime(id *a1)
{
  v1 = [*a1 remainingTime];
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
}

unint64_t lazy protocol witness table accessor for type CAFChargingTime and conformance CAFChargingTime()
{
  result = lazy protocol witness table cache variable for type CAFChargingTime and conformance CAFChargingTime;
  if (!lazy protocol witness table cache variable for type CAFChargingTime and conformance CAFChargingTime)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFChargingTime, 0x277CF83C8);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFChargingTime and conformance CAFChargingTime);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFChargingTimeObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFChargingTimeObservable and conformance CAFChargingTimeObservable(&lazy protocol witness table cache variable for type CAFChargingTimeObservable and conformance CAFChargingTimeObservable, &protocol conformance descriptor for CAFChargingTimeObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFChargingTimeObservable and conformance CAFChargingTimeObservable(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFChargingTimeObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double partial apply for closure #1 in CAFChargingTimeObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine25CAFChargingTimeObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t key path setter for CAFMinimumChargingLevelObservable.chargingLevel : CAFMinimumChargingLevelObservable(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3, a1);
  return CAFMinimumChargingLevelObservable.chargingLevel.setter(v4);
}

uint64_t CAFMinimumChargingLevelObservable.chargingLevel.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine33CAFMinimumChargingLevelObservable__chargingLevel, v11);
  v10 = *(v1 + OBJC_IVAR____TtC10CAFCombine33CAFMinimumChargingLevelObservable_observed);

  v3 = v10;
  v4 = swift_readAtKeyPath();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
  OUTLINED_FUNCTION_1_29();
  (*(v7 + 16))(a1, v6);
  v4(&v9, 0);
}

uint64_t CAFMinimumChargingLevelObservable.chargingLevel.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
  OUTLINED_FUNCTION_30();
  v5 = v4;
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v5 + 16))(v8, a1, v3);
  v9 = v1;
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA33CAFMinimumChargingLevelObservableC_10Foundation11MeasurementVySo14CAFUnitPercentCGTt3g5();
  return (*(v5 + 8))(a1, v3);
}

void (*CAFMinimumChargingLevelObservable.chargingLevel.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
  OUTLINED_FUNCTION_30();
  v5 = v4;
  v3[10] = v4;
  v7 = *(v6 + 64);
  v3[11] = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  v3[12] = v8;
  v3[13] = swift_getKeyPath();
  v3[14] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine33CAFMinimumChargingLevelObservable__chargingLevel, (v3 + 4));
  v9 = *(v1 + OBJC_IVAR____TtC10CAFCombine33CAFMinimumChargingLevelObservable_observed);
  v3[7] = v9;

  v10 = v9;
  v11 = swift_readAtKeyPath();
  v12 = *(v5 + 16);
  v3[15] = v12;
  v3[16] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v8);
  v11(v3, 0);

  return CAFMinimumChargingLevelObservable.chargingLevel.modify;
}

void CAFMinimumChargingLevelObservable.chargingLevel.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 88);
  v3 = *(*a1 + 96);
  if (a2)
  {
    v5 = *(v2 + 72);
    v6 = *(v2 + 80);
    v7 = *(v2 + 64);
    (*(v2 + 120))(*(v2 + 88), *(v2 + 96), v5);
    v8 = v7;
    _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA33CAFMinimumChargingLevelObservableC_10Foundation11MeasurementVySo14CAFUnitPercentCGTt3g5();
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    v9 = *(v2 + 64);
    _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA33CAFMinimumChargingLevelObservableC_10Foundation11MeasurementVySo14CAFUnitPercentCGTt3g5();
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t CAFMinimumChargingLevelObservable.$chargingLevel.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine33CAFMinimumChargingLevelObservable__chargingLevel, v4);

  specialized SafePublished.projectedValue.getter();
  v2 = v1;

  return v2;
}

uint64_t CAFMinimumChargingLevelObservable.distanceKM.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine33CAFMinimumChargingLevelObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();
}

uint64_t CAFMinimumChargingLevelObservable.$distanceKM.getter(void *a1)
{

  specialized SafeReadOnlyPublished.projectedValue.getter();
  v2 = v1;

  return v2;
}

uint64_t CAFMinimumChargingLevelObservable._description.getter()
{
  _StringGuts.grow(_:)(44);
  MEMORY[0x245D0A530](0xD000000000000024, 0x800000024230D9C0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x3E7D20207B20, 0xE600000000000000);
  return 0;
}

uint64_t CAFMinimumChargingLevelObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine33CAFMinimumChargingLevelObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine33CAFMinimumChargingLevelObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine33CAFMinimumChargingLevelObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine33CAFMinimumChargingLevelObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFMinimumChargingLevelObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFMinimumChargingLevelObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine33CAFMinimumChargingLevelObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine33CAFMinimumChargingLevelObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine33CAFMinimumChargingLevelObservable__chargingLevel;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA33CAFMinimumChargingLevelObservableC10Foundation11MeasurementVySo14CAFUnitPercentCGGMd, _s10CAFCombine13SafePublishedCyAA33CAFMinimumChargingLevelObservableC10Foundation11MeasurementVySo14CAFUnitPercentCGGMR);
  swift_allocObject();
  v8 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(v8, v9, v10, v11, v12, v13, v14, v15, v37.receiver, v37.super_class, v38, v39, v40, v41, v42, v43, vars0, vars8);
  v16 = OBJC_IVAR____TtC10CAFCombine33CAFMinimumChargingLevelObservable__distanceKM;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA33CAFMinimumChargingLevelObservableC10Foundation11MeasurementVySo12NSUnitLengthCGSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA33CAFMinimumChargingLevelObservableC10Foundation11MeasurementVySo12NSUnitLengthCGSgGMR);
  swift_allocObject();
  v17 = OUTLINED_FUNCTION_0_7();
  *&v2[v16] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v17, v18, v19, v20, v21, v22, v23, v24, v37.receiver, v37.super_class, v38, v39, v40, v41, v42, v43, vars0, vars8);
  v25 = OBJC_IVAR____TtC10CAFCombine33CAFMinimumChargingLevelObservable__distanceMiles;
  swift_getKeyPath();
  swift_allocObject();
  v26 = OUTLINED_FUNCTION_0_7();
  *&v2[v25] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v26, v27, v28, v29, v30, v31, v32, v33, v37.receiver, v37.super_class, v38, v39, v40, v41, v42, v43, vars0, vars8);
  *&v2[OBJC_IVAR____TtC10CAFCombine33CAFMinimumChargingLevelObservable_observed] = a1;
  v37.receiver = v2;
  v37.super_class = type metadata accessor for CAFMinimumChargingLevelObservable();
  v34 = a1;
  v35 = objc_msgSendSuper2(&v37, sel_init);
  [v34 registerObserver_];

  return v35;
}

uint64_t CAFMinimumChargingLevelObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine33CAFMinimumChargingLevelObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFMinimumChargingLevelObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine33CAFMinimumChargingLevelObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFMinimumChargingLevelObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFMinimumChargingLevelObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFMinimumChargingLevelObservable@<X0>(void *a1@<X8>)
{
  result = CAFMinimumChargingLevelObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFMinimumChargingLevelObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFMinimumChargingLevelObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFMinimumChargingLevelObservable.chargingLevelService(_:didUpdateChargingLevel:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_234(v2 + OBJC_IVAR____TtC10CAFCombine33CAFMinimumChargingLevelObservable__chargingLevel, v5);

  specialized SafePublished.setValue(_:)(a2, specialized SafePublished.value.setter);
}

uint64_t CAFMinimumChargingLevelObservable.chargingLevelService(_:didUpdateDistanceKM:)(uint64_t a1, uint64_t a2, void *a3)
{

  specialized SafeReadOnlyPublished.setValue(_:)();
}

uint64_t @objc CAFMinimumChargingLevelObservable.chargingLevelService(_:didUpdateDistanceKM:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  if (a4)
  {
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
    v13 = v11;
    v14 = 0;
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
    v13 = v11;
    v14 = 1;
  }

  __swift_storeEnumTagSinglePayload(v13, v14, 1, v12);
  v15 = a3;
  v16 = a1;
  a5();

  return outlined destroy of Measurement<NSUnitLength>?(v11);
}

uint64_t CAFMinimumChargingLevelObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFMinimumChargingLevelObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFMinimumChargingLevelObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t specialized SafePublished.setValue(_:)(uint64_t a1, uint64_t (*a2)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGSgMR);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
  OUTLINED_FUNCTION_1_29();
  (*(v8 + 16))(v6, a1, v7);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  return a2(v6);
}

void specialized SafePublished.setValue(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMR);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  OUTLINED_FUNCTION_1_29();
  (*(v6 + 16))(v4, a1, v5);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
  specialized SafePublished.value.setter();
}

void key path getter for CAFChargingLevel.chargingLevel : CAFMinimumChargingLevel(id *a1)
{
  v1 = [*a1 chargingLevel];
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFUnitPercent, 0x277CF8770);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
}

void key path setter for CAFChargingLevel.chargingLevel : CAFMinimumChargingLevel(uint64_t a1, void **a2)
{
  v2 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
  v5 = Measurement._bridgeToObjectiveC()();
  isa = v5.super.isa;
  [v2 setChargingLevel_];
}

uint64_t key path getter for CAFChargingLevel.distanceKM : CAFMinimumChargingLevel@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);

  return __swift_storeEnumTagSinglePayload(a3, v6, 1, v7);
}

unint64_t lazy protocol witness table accessor for type CAFMinimumChargingLevel and conformance CAFMinimumChargingLevel()
{
  result = lazy protocol witness table cache variable for type CAFMinimumChargingLevel and conformance CAFMinimumChargingLevel;
  if (!lazy protocol witness table cache variable for type CAFMinimumChargingLevel and conformance CAFMinimumChargingLevel)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFMinimumChargingLevel, 0x277CF8528);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFMinimumChargingLevel and conformance CAFMinimumChargingLevel);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFMinimumChargingLevelObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFMinimumChargingLevelObservable and conformance CAFMinimumChargingLevelObservable(&lazy protocol witness table cache variable for type CAFMinimumChargingLevelObservable and conformance CAFMinimumChargingLevelObservable, &protocol conformance descriptor for CAFMinimumChargingLevelObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFMinimumChargingLevelObservable and conformance CAFMinimumChargingLevelObservable(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFMinimumChargingLevelObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of Measurement<NSUnitLength>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double partial apply for closure #1 in CAFMinimumChargingLevelObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine33CAFMinimumChargingLevelObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t key path setter for CAFTargetChargingLevelObservable.chargingLevel : CAFTargetChargingLevelObservable(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3, a1);
  return CAFTargetChargingLevelObservable.chargingLevel.setter(v4);
}

uint64_t CAFTargetChargingLevelObservable.chargingLevel.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine32CAFTargetChargingLevelObservable__chargingLevel, v11);
  v10 = *(v1 + OBJC_IVAR____TtC10CAFCombine32CAFTargetChargingLevelObservable_observed);

  v3 = v10;
  v4 = swift_readAtKeyPath();
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
  (*(*(v7 - 8) + 16))(a1, v6, v7);
  v4(&v9, 0);
}

uint64_t CAFTargetChargingLevelObservable.chargingLevel.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
  OUTLINED_FUNCTION_30();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v5 + 16))(v8, a1, v3);
  v9 = v1;
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA32CAFTargetChargingLevelObservableC_10Foundation11MeasurementVySo14CAFUnitPercentCGTt3g5();
  return (*(v5 + 8))(a1, v3);
}

void (*CAFTargetChargingLevelObservable.chargingLevel.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14CAFUnitPercentCGMd, &_s10Foundation11MeasurementVySo14CAFUnitPercentCGMR);
  OUTLINED_FUNCTION_30();
  v5 = v4;
  v3[10] = v4;
  v7 = *(v6 + 64);
  v3[11] = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  v3[12] = v8;
  v3[13] = swift_getKeyPath();
  v3[14] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine32CAFTargetChargingLevelObservable__chargingLevel, (v3 + 4));
  v9 = *(v1 + OBJC_IVAR____TtC10CAFCombine32CAFTargetChargingLevelObservable_observed);
  v3[7] = v9;

  v10 = v9;
  v11 = swift_readAtKeyPath();
  v12 = *(v5 + 16);
  v3[15] = v12;
  v3[16] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v8);
  v11(v3, 0);

  return CAFTargetChargingLevelObservable.chargingLevel.modify;
}

void CAFTargetChargingLevelObservable.chargingLevel.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 88);
  v3 = *(*a1 + 96);
  if (a2)
  {
    v5 = *(v2 + 72);
    v6 = *(v2 + 80);
    v7 = *(v2 + 64);
    (*(v2 + 120))(*(v2 + 88), *(v2 + 96), v5);
    v8 = v7;
    _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA32CAFTargetChargingLevelObservableC_10Foundation11MeasurementVySo14CAFUnitPercentCGTt3g5();
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    v9 = *(v2 + 64);
    _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA32CAFTargetChargingLevelObservableC_10Foundation11MeasurementVySo14CAFUnitPercentCGTt3g5();
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t CAFTargetChargingLevelObservable.$chargingLevel.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine32CAFTargetChargingLevelObservable__chargingLevel, v4);

  specialized SafePublished.projectedValue.getter();
  v2 = v1;

  return v2;
}

uint64_t CAFTargetChargingLevelObservable.distanceKM.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine32CAFTargetChargingLevelObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();
}

uint64_t CAFTargetChargingLevelObservable._description.getter()
{
  _StringGuts.grow(_:)(43);
  MEMORY[0x245D0A530](0xD000000000000023, 0x800000024230DA60);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x3E7D20207B20, 0xE600000000000000);
  return 0;
}

uint64_t CAFTargetChargingLevelObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine32CAFTargetChargingLevelObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFTargetChargingLevelObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine32CAFTargetChargingLevelObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine32CAFTargetChargingLevelObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFTargetChargingLevelObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFTargetChargingLevelObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine32CAFTargetChargingLevelObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine32CAFTargetChargingLevelObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine32CAFTargetChargingLevelObservable__chargingLevel;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA32CAFTargetChargingLevelObservableC10Foundation11MeasurementVySo14CAFUnitPercentCGGMd, _s10CAFCombine13SafePublishedCyAA32CAFTargetChargingLevelObservableC10Foundation11MeasurementVySo14CAFUnitPercentCGGMR);
  swift_allocObject();
  v8 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(v8, v9, v10, v11, v12, v13, v14, v15, v37.receiver, v37.super_class, v38, v39, v40, v41, v42, v43, vars0, vars8);
  v16 = OBJC_IVAR____TtC10CAFCombine32CAFTargetChargingLevelObservable__distanceKM;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFTargetChargingLevelObservableC10Foundation11MeasurementVySo12NSUnitLengthCGSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFTargetChargingLevelObservableC10Foundation11MeasurementVySo12NSUnitLengthCGSgGMR);
  swift_allocObject();
  v17 = OUTLINED_FUNCTION_0_7();
  *&v2[v16] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v17, v18, v19, v20, v21, v22, v23, v24, v37.receiver, v37.super_class, v38, v39, v40, v41, v42, v43, vars0, vars8);
  v25 = OBJC_IVAR____TtC10CAFCombine32CAFTargetChargingLevelObservable__distanceMiles;
  swift_getKeyPath();
  swift_allocObject();
  v26 = OUTLINED_FUNCTION_0_7();
  *&v2[v25] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v26, v27, v28, v29, v30, v31, v32, v33, v37.receiver, v37.super_class, v38, v39, v40, v41, v42, v43, vars0, vars8);
  *&v2[OBJC_IVAR____TtC10CAFCombine32CAFTargetChargingLevelObservable_observed] = a1;
  v37.receiver = v2;
  v37.super_class = type metadata accessor for CAFTargetChargingLevelObservable();
  v34 = a1;
  v35 = objc_msgSendSuper2(&v37, sel_init);
  [v34 registerObserver_];

  return v35;
}

uint64_t CAFTargetChargingLevelObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFTargetChargingLevelObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFTargetChargingLevelObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine32CAFTargetChargingLevelObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFTargetChargingLevelObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFTargetChargingLevelObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFTargetChargingLevelObservable@<X0>(void *a1@<X8>)
{
  result = CAFTargetChargingLevelObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFTargetChargingLevelObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFTargetChargingLevelObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFTargetChargingLevelObservable.chargingLevelService(_:didUpdateChargingLevel:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_234(v2 + OBJC_IVAR____TtC10CAFCombine32CAFTargetChargingLevelObservable__chargingLevel, v5);

  specialized SafePublished.setValue(_:)(a2);
}

uint64_t CAFTargetChargingLevelObservable.chargingLevelService(_:didUpdateDistanceKM:)(uint64_t a1, uint64_t a2, void *a3)
{

  specialized SafeReadOnlyPublished.setValue(_:)();
}

uint64_t @objc CAFTargetChargingLevelObservable.chargingLevelService(_:didUpdateDistanceKM:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  if (a4)
  {
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
    v13 = v11;
    v14 = 0;
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
    v13 = v11;
    v14 = 1;
  }

  __swift_storeEnumTagSinglePayload(v13, v14, 1, v12);
  v15 = a3;
  v16 = a1;
  a5();

  return outlined destroy of Measurement<NSUnitLength>?(v11);
}

uint64_t CAFTargetChargingLevelObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFTargetChargingLevelObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFTargetChargingLevelObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CAFTargetChargingLevel and conformance CAFTargetChargingLevel()
{
  result = lazy protocol witness table cache variable for type CAFTargetChargingLevel and conformance CAFTargetChargingLevel;
  if (!lazy protocol witness table cache variable for type CAFTargetChargingLevel and conformance CAFTargetChargingLevel)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFTargetChargingLevel, 0x277CF86A0);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFTargetChargingLevel and conformance CAFTargetChargingLevel);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFTargetChargingLevelObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFTargetChargingLevelObservable and conformance CAFTargetChargingLevelObservable(&lazy protocol witness table cache variable for type CAFTargetChargingLevelObservable and conformance CAFTargetChargingLevelObservable, &protocol conformance descriptor for CAFTargetChargingLevelObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFTargetChargingLevelObservable and conformance CAFTargetChargingLevelObservable(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFTargetChargingLevelObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double partial apply for closure #1 in CAFTargetChargingLevelObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine32CAFTargetChargingLevelObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

id CAFAutoClimateControl.levelBridged.setter(__int16 a1)
{
  if ((a1 & 0x100) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  return [v1 setLevel_];
}

id CAFAutoClimateControl.intensityBridged.setter(__int16 a1)
{
  if ((a1 & 0x100) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  return [v1 setIntensity_];
}

uint64_t key path getter for CAFAutoClimateControlObservable.level : CAFAutoClimateControlObservable@<X0>(_BYTE *a1@<X8>)
{
  result = CAFAutoClimateControlObservable.level.getter();
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

void (*CAFAutoClimateControlObservable.level.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v5 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v5;
  v5[8] = v1;
  v5[9] = swift_getKeyPath();
  v5[10] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable__level, (v5 + 4));
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable_observed);

  v6 = v2;
  OUTLINED_FUNCTION_2_5();
  v7 = OUTLINED_FUNCTION_4_7();
  v8(v7);

  *(v5 + 88) = v1;
  *(v5 + 89) = v3;
  return CAFAutoClimateControlObservable.level.modify;
}

uint64_t key path getter for CAFAutoClimateControlObservable.intensity : CAFAutoClimateControlObservable@<X0>(_BYTE *a1@<X8>)
{
  result = CAFAutoClimateControlObservable.intensity.getter();
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

uint64_t CAFAutoClimateControlObservable.level.getter(uint64_t *a1)
{
  OUTLINED_FUNCTION_234(v1 + *a1, v10);
  v9 = *(v1 + OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable_observed);

  v2 = v9;
  v3 = swift_readAtKeyPath();
  v5 = *v4;
  v6 = v4[1];
  v3(v8, 0);

  return v5 | (v6 << 8);
}

uint64_t CAFAutoClimateControlObservable.level.setter(__int16 a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, id, uint64_t, uint64_t))
{
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  v8 = v4;

  return a4(a1 & 0x1FF, v8, KeyPath, v7);
}

void (*CAFAutoClimateControlObservable.intensity.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v5 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v5;
  v5[8] = v1;
  v5[9] = swift_getKeyPath();
  v5[10] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable__intensity, (v5 + 4));
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable_observed);

  v6 = v2;
  OUTLINED_FUNCTION_2_5();
  v7 = OUTLINED_FUNCTION_4_7();
  v8(v7);

  *(v5 + 88) = v1;
  *(v5 + 89) = v3;
  return CAFAutoClimateControlObservable.intensity.modify;
}

void CAFAutoClimateControlObservable.level.modify(uint64_t a1, uint64_t a2, void (*a3)(void, id, void, void))
{
  v3 = *a1;
  a3(*(*a1 + 88) | (*(*a1 + 89) << 8), *(*a1 + 64), v3[9], v3[10]);

  free(v3);
}

uint64_t CAFAutoClimateControlObservable.$level.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_234(v2 + *a1, v7);

  v5 = a2(v4);

  return v5;
}

uint64_t CAFAutoClimateControlObservable.vehicleLayoutKey.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable_observed);

  OUTLINED_FUNCTION_232(v2);

  return v3;
}

uint64_t CAFAutoClimateControlObservable.name.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable_observed);

  OUTLINED_FUNCTION_232(v2);

  return v3;
}

uint64_t CAFAutoClimateControlObservable.$vehicleLayoutKey.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t CAFAutoClimateControlObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable_observed);
  v2 = 0x73696765726E753CLL;
  v3 = 0xEE003E6465726574;
  if ([v1 registeredForAutoModeLevel])
  {
    CAFAutoClimateControlObservable.level.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5UInt8VSgMd, &_ss5UInt8VSgMR);
    v2 = String.init<A>(describing:)();
    v3 = v4;
  }

  v5 = 0x73696765726E753CLL;
  v6 = 0xEE003E6465726574;
  if ([v1 registeredForAutoModeIntensity])
  {
    CAFAutoClimateControlObservable.intensity.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20CAFAutoModeIntensityVSgMd, &_sSo20CAFAutoModeIntensityVSgMR);
    v5 = String.init<A>(describing:)();
    v6 = v7;
  }

  if ([v1 registeredForVehicleLayoutKey])
  {
    CAFAutoClimateControlObservable.vehicleLayoutKey.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    String.init<A>(describing:)();
  }

  _StringGuts.grow(_:)(88);
  MEMORY[0x245D0A530](0xD000000000000022, 0x800000024230DB10);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x6C6576656C207B20, 0xEA0000000000203ALL);
  MEMORY[0x245D0A530](v2, v3);

  MEMORY[0x245D0A530](0x736E65746E69202CLL, 0xED0000203A797469);
  MEMORY[0x245D0A530](v5, v6);

  MEMORY[0x245D0A530](0xD000000000000014, 0x800000024230DB40);
  v8 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v8);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFAutoClimateControlObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable_cachedDescription + 8))
  {
    v4 = *(v0 + v1);
  }

  else
  {
    *v3 = CAFAutoClimateControlObservable._description.getter();
    v3[1] = v5;

    v4 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v4 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFAutoClimateControlObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable__level;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFAutoClimateControlObservableCs5UInt8VSgGMd, &_s10CAFCombine13SafePublishedCyAA31CAFAutoClimateControlObservableCs5UInt8VSgGMR);
  OUTLINED_FUNCTION_225(v8);
  v9 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(v9);
  v10 = OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable__intensity;
  swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFAutoClimateControlObservableCSo0D13ModeIntensityVSgGMd, _s10CAFCombine13SafePublishedCyAA31CAFAutoClimateControlObservableCSo0D13ModeIntensityVSgGMR);
  OUTLINED_FUNCTION_225(v11);
  v12 = OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)(v12, v13, v14, v15, v16, v17, v18, v19, v28.receiver, v28.super_class, v29, v30, v31, v32, vars0, vars8);
  *&v2[v10] = v20;
  v21 = OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable__vehicleLayoutKey;
  swift_getKeyPath();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFAutoClimateControlObservableCSSSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFAutoClimateControlObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v22);
  OUTLINED_FUNCTION_0_7();
  *&v2[v21] = specialized SafePublished.init(observedValuekeypath:)();
  v23 = OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable__name;
  swift_getKeyPath();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFAutoClimateControlObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFAutoClimateControlObservableCSSGMR);
  OUTLINED_FUNCTION_225(v24);
  OUTLINED_FUNCTION_0_7();
  *&v2[v23] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable_observed] = a1;
  v28.receiver = v2;
  v28.super_class = type metadata accessor for CAFAutoClimateControlObservable();
  v25 = a1;
  v26 = objc_msgSendSuper2(&v28, sel_init);
  [v25 registerObserver_];

  return v26;
}

uint64_t CAFAutoClimateControlObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFAutoClimateControlObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFAutoClimateControlObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFAutoClimateControlObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFAutoClimateControlObservable@<X0>(void *a1@<X8>)
{
  result = CAFAutoClimateControlObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFAutoClimateControlObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFAutoClimateControlObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFAutoClimateControlObservable.autoClimateControlService(_:didUpdateLevel:)(uint64_t a1, unsigned __int8 a2, uint64_t *a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_234(v4 + *a3, v8);

  a4(a2);
}

uint64_t CAFAutoClimateControlObservable.autoClimateControlService(_:didUpdateVehicleLayoutKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v3, v4);
}

uint64_t CAFAutoClimateControlObservable.autoClimateControlService(_:didUpdateName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v3, v4);
}

uint64_t CAFAutoClimateControlObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFAutoClimateControlObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFAutoClimateControlObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t key path getter for CAFAutoClimateControl.levelBridged : CAFAutoClimateControl@<X0>(_BYTE *a1@<X8>)
{
  result = CAFAutoClimateControl.levelBridged.getter();
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

uint64_t key path getter for CAFAutoClimateControl.intensityBridged : CAFAutoClimateControl@<X0>(_BYTE *a1@<X8>)
{
  result = CAFAutoClimateControl.intensityBridged.getter();
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

void key path getter for CAFAutoClimateControl.vehicleLayoutKey : CAFAutoClimateControl(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 vehicleLayoutKey];
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

unint64_t type metadata accessor for CAFAutoClimateControl()
{
  result = lazy cache variable for type metadata for CAFAutoClimateControl;
  if (!lazy cache variable for type metadata for CAFAutoClimateControl)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFAutoClimateControl);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFAutoClimateControlObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFAutoClimateControlObservable and conformance CAFAutoClimateControlObservable(&lazy protocol witness table cache variable for type CAFAutoClimateControlObservable and conformance CAFAutoClimateControlObservable, a2, type metadata accessor for CAFAutoClimateControlObservable, &protocol conformance descriptor for CAFAutoClimateControlObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFAutoClimateControlObservable and conformance CAFAutoClimateControlObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFAutoClimateControlObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine31CAFAutoClimateControlObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t key path getter for CAFCabinObservable.maxACOn : CAFCabinObservable@<X0>(_BYTE *a2@<X8>)
{
  result = CAFCabinObservable.maxACOn.getter();
  *a2 = result;
  return result;
}

uint64_t CAFCabinObservable.maxACOn.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  return CAFCabinObservable.maxACOn.setter(a1, &unk_2422FE6F0, &unk_2422FE718, a4, a5, a6, a7, a8, a9, a10);
}

{
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = v10;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA18CAFCabinObservableC_SbSgTt3g5(a1, v14, KeyPath, v13, v15, v16, v17, v18, a9, a10);
}

uint64_t CAFCabinObservable.maxACOn.modify()
{
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine18CAFCabinObservable_observed);

  v5 = v2;
  OUTLINED_FUNCTION_2_5();
  v6 = OUTLINED_FUNCTION_4_6();
  v7(v6);

  *(v1 + 88) = v0;
  return OUTLINED_FUNCTION_23_2();
}

uint64_t key path getter for CAFCabinObservable.maxDefrostOn : CAFCabinObservable@<X0>(_BYTE *a2@<X8>)
{
  result = CAFCabinObservable.maxDefrostOn.getter();
  *a2 = result;
  return result;
}

uint64_t CAFCabinObservable.maxDefrostOn.modify()
{
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine18CAFCabinObservable_observed);

  v5 = v2;
  OUTLINED_FUNCTION_2_5();
  v6 = OUTLINED_FUNCTION_4_6();
  v7(v6);

  *(v1 + 88) = v0;
  return OUTLINED_FUNCTION_23_2();
}

uint64_t key path getter for CAFCabinObservable.hvacOn : CAFCabinObservable@<X0>(_BYTE *a2@<X8>)
{
  result = CAFCabinObservable.hvacOn.getter();
  *a2 = result;
  return result;
}

uint64_t CAFCabinObservable.hvacOn.modify()
{
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine18CAFCabinObservable_observed);

  v5 = v2;
  OUTLINED_FUNCTION_2_5();
  v6 = OUTLINED_FUNCTION_4_6();
  v7(v6);

  *(v1 + 88) = v0;
  return OUTLINED_FUNCTION_23_2();
}

uint64_t key path getter for CAFCabinObservable.compressorOn : CAFCabinObservable@<X0>(_BYTE *a2@<X8>)
{
  result = CAFCabinObservable.compressorOn.getter();
  *a2 = result;
  return result;
}

uint64_t CAFCabinObservable.maxACOn.getter(uint64_t *a1)
{
  swift_beginAccess();
  v8 = *(v1 + OBJC_IVAR____TtC10CAFCombine18CAFCabinObservable_observed);

  v2 = v8;
  v3 = swift_readAtKeyPath();
  v5 = *v4;
  v3(&v7, 0);

  return v5;
}

uint64_t CAFCabinObservable.compressorOn.modify()
{
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine18CAFCabinObservable_observed);

  v5 = v2;
  OUTLINED_FUNCTION_2_5();
  v6 = OUTLINED_FUNCTION_4_6();
  v7(v6);

  *(v1 + 88) = v0;
  return OUTLINED_FUNCTION_23_2();
}

void CAFCabinObservable.maxACOn.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 72);
  v2 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 64);
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA18CAFCabinObservableC_SbSgTt3g5(v4, v5, v3, v2, v6, v7, v8, v9, v10, v11);

  free(v1);
}

uint64_t CAFCabinObservable.$maxACOn.getter(uint64_t *a1)
{
  swift_beginAccess();

  specialized SafePublished.projectedValue.getter();
  v2 = v1;

  return v2;
}

uint64_t CAFCabinObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine18CAFCabinObservable_observed);
  v4 = [v3 registeredForMaxACOn];
  v5 = 0x73696765726E753CLL;
  v6 = 0xEE003E6465726574;
  if (v4)
  {
    CAFCabinObservable.maxACOn.getter();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v5 = OUTLINED_FUNCTION_4_14(v7, v8, v9);
    v6 = v10;
  }

  v11 = 0x73696765726E753CLL;
  v12 = 0xEE003E6465726574;
  if ([v3 registeredForMaxDefrostOn])
  {
    CAFCabinObservable.maxDefrostOn.getter();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v11 = OUTLINED_FUNCTION_4_14(v13, v14, v15);
    v12 = v16;
  }

  v17 = 0x73696765726E753CLL;
  v18 = 0xEE003E6465726574;
  if ([v3 registeredForHVACOn])
  {
    CAFCabinObservable.hvacOn.getter();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v17 = OUTLINED_FUNCTION_4_14(v19, v20, v21);
    v18 = v22;
  }

  if ([v3 registeredForACCompressorOn])
  {
    CAFCabinObservable.compressorOn.getter();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v2 = OUTLINED_FUNCTION_4_14(v23, v24, v25);
    v1 = v26;
  }

  _StringGuts.grow(_:)(88);
  MEMORY[0x245D0A530](0xD000000000000015, 0x800000024230DBE0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x434178616D207B20, 0xEC000000203A6E4FLL);
  MEMORY[0x245D0A530](v28, v6);

  OUTLINED_FUNCTION_9_4();
  MEMORY[0x245D0A530](v11, v12);

  MEMORY[0x245D0A530](0x6E4F63617668202CLL, 0xEA0000000000203ALL);
  MEMORY[0x245D0A530](v17, v18);

  OUTLINED_FUNCTION_9_4();
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFCabinObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine18CAFCabinObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine18CAFCabinObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine18CAFCabinObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine18CAFCabinObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFCabinObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFCabinObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine18CAFCabinObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine18CAFCabinObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine18CAFCabinObservable__maxACOn;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA18CAFCabinObservableCSbSgGMd, &_s10CAFCombine13SafePublishedCyAA18CAFCabinObservableCSbSgGMR);
  swift_allocObject();
  *&v2[v7] = OUTLINED_FUNCTION_8_2();
  v8 = OBJC_IVAR____TtC10CAFCombine18CAFCabinObservable__maxDefrostOn;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  *&v2[v8] = OUTLINED_FUNCTION_8_2();
  v9 = OBJC_IVAR____TtC10CAFCombine18CAFCabinObservable__hvacOn;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  *&v2[v9] = OUTLINED_FUNCTION_8_2();
  v10 = OBJC_IVAR____TtC10CAFCombine18CAFCabinObservable__compressorOn;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  *&v2[v10] = OUTLINED_FUNCTION_8_2();
  *&v2[OBJC_IVAR____TtC10CAFCombine18CAFCabinObservable_observed] = a1;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for CAFCabinObservable();
  v11 = a1;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  [v11 registerObserver_];

  return v12;
}

uint64_t CAFCabinObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine18CAFCabinObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFCabinObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine18CAFCabinObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFCabinObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFCabinObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFCabinObservable@<X0>(void *a1@<X8>)
{
  result = CAFCabinObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFCabinObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFCabinObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFCabinObservable.cabinService(_:didUpdateMaxACOn:)(uint64_t a1, char a2, uint64_t *a3)
{
  swift_beginAccess();

  specialized SafePublished.value.setter(a2 & 1);
}

uint64_t CAFCabinObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFCabinObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFCabinObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFCabin()
{
  result = lazy cache variable for type metadata for CAFCabin;
  if (!lazy cache variable for type metadata for CAFCabin)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFCabin);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFCabinObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFCabinObservable and conformance CAFCabinObservable(&lazy protocol witness table cache variable for type CAFCabinObservable and conformance CAFCabinObservable, a2, type metadata accessor for CAFCabinObservable, &protocol conformance descriptor for CAFCabinObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFCabinObservable and conformance CAFCabinObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFCabinObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine18CAFCabinObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t OUTLINED_FUNCTION_8_2()
{

  return specialized SafePublished.init(observedValuekeypath:)();
}

void OUTLINED_FUNCTION_9_4()
{

  JUMPOUT(0x245D0A530);
}

uint64_t key path getter for CAFClimateControlsLockedObservable.lockState : CAFClimateControlsLockedObservable@<X0>(_BYTE *a1@<X8>)
{
  result = CAFClimateControlsLockedObservable.lockState.getter();
  *a1 = result;
  return result;
}

uint64_t CAFClimateControlsLockedObservable.lockState.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable__lockState, v8);
  v7 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable_observed);

  v1 = v7;
  v2 = swift_readAtKeyPath();
  v4 = *v3;
  v2(&v6, 0);

  return v4;
}

uint64_t CAFClimateControlsLockedObservable.lockState.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = v10;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA34CAFClimateControlsLockedObservableC_So12CAFLockStateVTt3g5(a1, v14, KeyPath, v13, v15, v16, v17, v18, a9, a10);
}

void (*CAFClimateControlsLockedObservable.lockState.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable__lockState, (v3 + 4));
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable_observed);
  v3[7] = v4;

  v5 = v4;
  v6 = swift_readAtKeyPath();
  v8 = *v7;
  v6(v3, 0);

  *(v3 + 88) = v8;
  return CAFClimateControlsLockedObservable.lockState.modify;
}

void CAFClimateControlsLockedObservable.lockState.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 72);
  v2 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 64);
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA34CAFClimateControlsLockedObservableC_So12CAFLockStateVTt3g5(v4, v5, v3, v2, v6, v7, v8, v9, v10, v11);

  free(v1);
}

uint64_t CAFClimateControlsLockedObservable.$lockState.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable__lockState, v4);

  specialized SafePublished.projectedValue.getter();
  v2 = v1;

  return v2;
}

uint64_t CAFClimateControlsLockedObservable.vehicleLayoutKey.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable_observed);

  OUTLINED_FUNCTION_232(v2);

  return v3;
}

uint64_t CAFClimateControlsLockedObservable.name.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable_observed);

  OUTLINED_FUNCTION_232(v2);

  return v3;
}

uint64_t CAFClimateControlsLockedObservable.$vehicleLayoutKey.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t CAFClimateControlsLockedObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable_observed);
  v2 = 0x73696765726E753CLL;
  v3 = 0xEE003E6465726574;
  if ([v1 registeredForLockState])
  {
    CAFClimateControlsLockedObservable.lockState.getter();
    v4 = NSStringFromLockState();
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

  if ([v1 registeredForVehicleLayoutKey])
  {
    CAFClimateControlsLockedObservable.vehicleLayoutKey.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    String.init<A>(describing:)();
  }

  _StringGuts.grow(_:)(80);
  MEMORY[0x245D0A530](0xD000000000000025, 0x800000024230DCC0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x536B636F6C207B20, 0xEE00203A65746174);
  MEMORY[0x245D0A530](v2, v3);

  MEMORY[0x245D0A530](0xD000000000000014, 0x800000024230DB40);
  v7 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v7);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFClimateControlsLockedObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable_cachedDescription + 8))
  {
    v4 = *(v0 + v1);
  }

  else
  {
    *v3 = CAFClimateControlsLockedObservable._description.getter();
    v3[1] = v5;

    v4 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v4 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFClimateControlsLockedObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable__lockState;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA34CAFClimateControlsLockedObservableCSo12CAFLockStateVGMd, _s10CAFCombine13SafePublishedCyAA34CAFClimateControlsLockedObservableCSo12CAFLockStateVGMR);
  swift_allocObject();
  v8 = OUTLINED_FUNCTION_0_7();
  specialized SafePublished.init(observedValuekeypath:)(v8, v9, v10, v11, v12, v13, v14, v15, v22.receiver, v22.super_class, v23, v24, v25, v26, vars0, vars8);
  *&v2[v7] = v16;
  v17 = OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable__vehicleLayoutKey;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFClimateControlsLockedObservableCSSSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFClimateControlsLockedObservableCSSSgGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v17] = specialized SafePublished.init(observedValuekeypath:)();
  v18 = OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable__name;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFClimateControlsLockedObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA34CAFClimateControlsLockedObservableCSSGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v18] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable_observed] = a1;
  v22.receiver = v2;
  v22.super_class = type metadata accessor for CAFClimateControlsLockedObservable();
  v19 = a1;
  v20 = objc_msgSendSuper2(&v22, sel_init);
  [v19 registerObserver_];

  return v20;
}

uint64_t CAFClimateControlsLockedObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFClimateControlsLockedObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFClimateControlsLockedObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFClimateControlsLockedObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFClimateControlsLockedObservable@<X0>(void *a1@<X8>)
{
  result = CAFClimateControlsLockedObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFClimateControlsLockedObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFClimateControlsLockedObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFClimateControlsLockedObservable.climateControlsLockedService(_:didUpdateLockState:)(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_234(v2 + OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable__lockState, v5);

  specialized SafePublished.value.setter(a2);
}

uint64_t CAFClimateControlsLockedObservable.climateControlsLockedService(_:didUpdateVehicleLayoutKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v3, v4);
}

uint64_t CAFClimateControlsLockedObservable.climateControlsLockedService(_:didUpdateName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v3, v4);
}

uint64_t CAFClimateControlsLockedObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFClimateControlsLockedObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFClimateControlsLockedObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFClimateControlsLocked()
{
  result = lazy cache variable for type metadata for CAFClimateControlsLocked;
  if (!lazy cache variable for type metadata for CAFClimateControlsLocked)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFClimateControlsLocked);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFClimateControlsLockedObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFClimateControlsLockedObservable and conformance CAFClimateControlsLockedObservable(&lazy protocol witness table cache variable for type CAFClimateControlsLockedObservable and conformance CAFClimateControlsLockedObservable, a2, type metadata accessor for CAFClimateControlsLockedObservable, &protocol conformance descriptor for CAFClimateControlsLockedObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFClimateControlsLockedObservable and conformance CAFClimateControlsLockedObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFClimateControlsLockedObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine34CAFClimateControlsLockedObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFDefrostObservable.types.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t key path getter for CAFDefrostObservable.level : CAFDefrostObservable@<X0>(_BYTE *a1@<X8>)
{
  result = CAFDefrostObservable.level.getter();
  *a1 = result;
  return result;
}

uint64_t CAFDefrostObservable.level.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable__level, v8);
  v7 = *(v0 + OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable_observed);

  v1 = v7;
  v2 = swift_readAtKeyPath();
  v4 = *v3;
  v2(&v6, 0);

  return v4;
}

uint64_t CAFDefrostObservable.level.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = v10;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA20CAFDefrostObservableC_s5UInt8VTt3g5(a1, v14, KeyPath, v13, v15, v16, v17, v18, a9, a10);
}

void (*CAFDefrostObservable.level.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable__level, (v3 + 4));
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable_observed);
  v3[7] = v4;

  v5 = v4;
  v6 = swift_readAtKeyPath();
  v8 = *v7;
  v6(v3, 0);

  *(v3 + 88) = v8;
  return CAFDefrostObservable.level.modify;
}

void CAFDefrostObservable.level.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 72);
  v2 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 64);
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA20CAFDefrostObservableC_s5UInt8VTt3g5(v4, v5, v3, v2, v6, v7, v8, v9, v10, v11);

  free(v1);
}

uint64_t CAFDefrostObservable.$level.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable__level, v4);

  specialized SafePublished.projectedValue.getter();
  v2 = v1;

  return v2;
}

uint64_t CAFDefrostObservable.vehicleLayoutKey.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFDefrostObservable.$types.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t CAFDefrostObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable_observed);
  v4 = 0x73696765726E753CLL;
  v5 = 0xEE003E6465726574;
  if ([v3 registeredForDefrostTypes])
  {
    CAFDefrostObservable.types.getter();
    v6 = NSStringFromDefrostTypes();
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
  if ([v3 registeredForLevel])
  {
    CAFDefrostObservable.level.getter();
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v11;
  }

  if ([v3 registeredForVehicleLayoutKey])
  {
    v2 = CAFDefrostObservable.vehicleLayoutKey.getter();
    v1 = v12;
  }

  _StringGuts.grow(_:)(73);
  MEMORY[0x245D0A530](0xD000000000000017, 0x800000024230DD50);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x7365707974207B20, 0xEA0000000000203ALL);
  MEMORY[0x245D0A530](v4, v5);

  MEMORY[0x245D0A530](0x3A6C6576656C202CLL, 0xE900000000000020);
  MEMORY[0x245D0A530](v9, v10);

  MEMORY[0x245D0A530](0xD000000000000014, 0x800000024230DB40);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFDefrostObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFDefrostObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFDefrostObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable__types;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA20CAFDefrostObservableCSo0F5TypesVGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA20CAFDefrostObservableCSo0F5TypesVGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v8 = OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable__level;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA20CAFDefrostObservableCs5UInt8VGMd, _s10CAFCombine13SafePublishedCyAA20CAFDefrostObservableCs5UInt8VGMR);
  swift_allocObject();
  v9 = OUTLINED_FUNCTION_0_7();
  *&v2[v8] = specialized SafePublished.init(observedValuekeypath:)(v9);
  v10 = OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable__vehicleLayoutKey;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA20CAFDefrostObservableCSSGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA20CAFDefrostObservableCSSGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)();
  v11 = OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable__name;
  swift_getKeyPath();
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v11] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable_observed] = a1;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for CAFDefrostObservable();
  v12 = a1;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  [v12 registerObserver_];

  return v13;
}

uint64_t CAFDefrostObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFDefrostObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFDefrostObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFDefrostObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFDefrostObservable@<X0>(void *a1@<X8>)
{
  result = CAFDefrostObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFDefrostObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFDefrostObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFDefrostObservable.defrostService(_:didUpdateTypes:)(uint64_t a1, uint64_t a2)
{

  specialized SafeReadOnlyPublished.value.setter(a2, 0);
}

uint64_t CAFDefrostObservable.defrostService(_:didUpdateLevel:)(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_234(v2 + OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable__level, v5);

  specialized SafePublished.value.setter(a2);
}

uint64_t CAFDefrostObservable.defrostService(_:didUpdateVehicleLayoutKey:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  specialized SafeReadOnlyPublished.value.setter(a2, a3);
}

double @objc CAFDefrostObservable.defrostService(_:didUpdateVehicleLayoutKey:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFDefrostObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFDefrostObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFDefrostObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFDefrost()
{
  result = lazy cache variable for type metadata for CAFDefrost;
  if (!lazy cache variable for type metadata for CAFDefrost)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFDefrost);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFDefrostObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFDefrostObservable and conformance CAFDefrostObservable(&lazy protocol witness table cache variable for type CAFDefrostObservable and conformance CAFDefrostObservable, a2, type metadata accessor for CAFDefrostObservable, &protocol conformance descriptor for CAFDefrostObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFDefrostObservable and conformance CAFDefrostObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFDefrostObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine20CAFDefrostObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t key path getter for CAFFanObservable.fanLevel : CAFFanObservable@<X0>(_BYTE *a2@<X8>)
{
  result = CAFFanObservable.fanLevel.getter();
  *a2 = result;
  return result;
}

void (*CAFFanObservable.fanLevel.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v4 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v4;
  v4[8] = v1;
  v4[9] = swift_getKeyPath();
  v4[10] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine16CAFFanObservable_observed);

  v5 = v2;
  OUTLINED_FUNCTION_2_5();
  v6 = OUTLINED_FUNCTION_4_6();
  v7(v6);

  *(v4 + 88) = v1;
  return CAFFanObservable.fanLevel.modify;
}

uint64_t key path getter for CAFFanObservable.on : CAFFanObservable@<X0>(_BYTE *a2@<X8>)
{
  result = CAFFanObservable.on.getter();
  *a2 = result;
  return result;
}

uint64_t CAFFanObservable.fanLevel.getter(uint64_t *a1)
{
  swift_beginAccess();
  v8 = *(v1 + OBJC_IVAR____TtC10CAFCombine16CAFFanObservable_observed);

  v2 = v8;
  v3 = swift_readAtKeyPath();
  v5 = *v4;
  v3(&v7, 0);

  return v5;
}

uint64_t CAFFanObservable.fanLevel.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, id, uint64_t, uint64_t))
{
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  v8 = v4;

  return a4(a1, v8, KeyPath, v7);
}

void (*CAFFanObservable.on.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v4 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v4;
  v4[8] = v1;
  v4[9] = swift_getKeyPath();
  v4[10] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine16CAFFanObservable_observed);

  v5 = v2;
  OUTLINED_FUNCTION_2_5();
  v6 = OUTLINED_FUNCTION_4_6();
  v7(v6);

  *(v4 + 88) = v1;
  return CAFFanObservable.on.modify;
}

void CAFFanObservable.fanLevel.modify(uint64_t a1, uint64_t a2, void (*a3)(void, id, void, void))
{
  v3 = *a1;
  a3(*(*a1 + 88), *(*a1 + 64), *(*a1 + 72), *(*a1 + 80));

  free(v3);
}

uint64_t CAFFanObservable.$fanLevel.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_0_6(a1);

  v4 = a2(v3);

  return v4;
}

uint64_t CAFFanObservable.autoMode.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine16CAFFanObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFFanObservable.vehicleLayoutKey.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine16CAFFanObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFFanObservable.$autoMode.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t CAFFanObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine16CAFFanObservable_observed);
  v4 = [v3 registeredForFanLevel];
  v5 = 0x73696765726E753CLL;
  v6 = 0xEE003E6465726574;
  if (v4)
  {
    CAFFanObservable.fanLevel.getter();
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    v6 = v7;
  }

  v8 = 0x73696765726E753CLL;
  v9 = 0xEE003E6465726574;
  if ([v3 registeredForOn])
  {
    CAFFanObservable.on.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v8 = String.init<A>(describing:)();
    v9 = v10;
  }

  v11 = 0x73696765726E753CLL;
  v12 = 0xEE003E6465726574;
  if ([v3 registeredForAutoMode])
  {
    CAFFanObservable.autoMode.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v11 = String.init<A>(describing:)();
    v12 = v13;
  }

  if ([v3 registeredForVehicleLayoutKey])
  {
    v2 = CAFFanObservable.vehicleLayoutKey.getter();
    v1 = v14;
  }

  _StringGuts.grow(_:)(83);
  MEMORY[0x245D0A530](0xD000000000000013, 0x800000024230DDD0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x654C6E6166207B20, 0xED0000203A6C6576);
  MEMORY[0x245D0A530](v16, v6);

  MEMORY[0x245D0A530](0x203A6E6F202CLL, 0xE600000000000000);
  MEMORY[0x245D0A530](v8, v9);

  MEMORY[0x245D0A530](0x6F4D6F747561202CLL, 0xEC000000203A6564);
  MEMORY[0x245D0A530](v11, v12);

  MEMORY[0x245D0A530](0xD000000000000014, 0x800000024230DB40);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFFanObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine16CAFFanObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine16CAFFanObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine16CAFFanObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine16CAFFanObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFFanObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFFanObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine16CAFFanObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine16CAFFanObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine16CAFFanObservable__fanLevel;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA16CAFFanObservableCs5UInt8VGMd, &_s10CAFCombine13SafePublishedCyAA16CAFFanObservableCs5UInt8VGMR);
  OUTLINED_FUNCTION_225(v8);
  v9 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(v9);
  v10 = OBJC_IVAR____TtC10CAFCombine16CAFFanObservable__on;
  swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA16CAFFanObservableCSbSgGMd, &_s10CAFCombine13SafePublishedCyAA16CAFFanObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v11);
  OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)();
  v12 = OBJC_IVAR____TtC10CAFCombine16CAFFanObservable__autoMode;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA16CAFFanObservableCSbSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA16CAFFanObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v13);
  OUTLINED_FUNCTION_0_7();
  *&v2[v12] = specialized SafePublished.init(observedValuekeypath:)();
  v14 = OBJC_IVAR____TtC10CAFCombine16CAFFanObservable__vehicleLayoutKey;
  swift_getKeyPath();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA16CAFFanObservableCSSGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA16CAFFanObservableCSSGMR);
  OUTLINED_FUNCTION_225(v15);
  OUTLINED_FUNCTION_0_7();
  *&v2[v14] = specialized SafePublished.init(observedValuekeypath:)();
  v16 = OBJC_IVAR____TtC10CAFCombine16CAFFanObservable__name;
  swift_getKeyPath();
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v16] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine16CAFFanObservable_observed] = a1;
  v20.receiver = v2;
  v20.super_class = type metadata accessor for CAFFanObservable();
  v17 = a1;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  [v17 registerObserver_];

  return v18;
}

uint64_t CAFFanObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine16CAFFanObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFFanObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine16CAFFanObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFFanObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFFanObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFFanObservable@<X0>(void *a1@<X8>)
{
  result = CAFFanObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFFanObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFFanObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFFanObservable.fanService(_:didUpdateFanLevel:)(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_0_6(a1);

  specialized SafePublished.value.setter(a2);
}

uint64_t CAFFanObservable.fanService(_:didUpdateOn:)(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_0_6(a1);

  specialized SafePublished.value.setter(a2 & 1);
}

uint64_t CAFFanObservable.fanService(_:didUpdateAutoMode:)(uint64_t a1, char a2)
{

  specialized SafeReadOnlyPublished.value.setter(a2 & 1);
}

uint64_t CAFFanObservable.fanService(_:didUpdateVehicleLayoutKey:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  specialized SafeReadOnlyPublished.value.setter(a2, a3);
}

double @objc CAFFanObservable.fanService(_:didUpdateVehicleLayoutKey:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFFanObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFFanObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFFanObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFFan()
{
  result = lazy cache variable for type metadata for CAFFan;
  if (!lazy cache variable for type metadata for CAFFan)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFFan);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFFanObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFFanObservable and conformance CAFFanObservable(&lazy protocol witness table cache variable for type CAFFanObservable and conformance CAFFanObservable, a2, type metadata accessor for CAFFanObservable, &protocol conformance descriptor for CAFFanObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFFanObservable and conformance CAFFanObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFFanObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine16CAFFanObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFRecirculation.autoModeBridged.getter()
{
  if ([v0 hasAutoMode])
  {
    return [v0 autoMode];
  }

  else
  {
    return 2;
  }
}

uint64_t key path getter for CAFRecirculationObservable.on : CAFRecirculationObservable@<X0>(_BYTE *a1@<X8>)
{
  result = CAFRecirculationObservable.on.getter();
  *a1 = result & 1;
  return result;
}

uint64_t CAFRecirculationObservable.on.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine26CAFRecirculationObservable__on, v8);
  v7 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFRecirculationObservable_observed);

  v1 = v7;
  v2 = swift_readAtKeyPath();
  v4 = *v3;
  v2(&v6, 0);

  return v4;
}

uint64_t CAFRecirculationObservable.on.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = v10;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA26CAFRecirculationObservableC_SbTt3g5(a1, v14, KeyPath, v13, v15, v16, v17, v18, a9, a10);
}

void (*CAFRecirculationObservable.on.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine26CAFRecirculationObservable__on, (v3 + 4));
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine26CAFRecirculationObservable_observed);
  v3[7] = v4;

  v5 = v4;
  v6 = swift_readAtKeyPath();
  v8 = *v7;
  v6(v3, 0);

  *(v3 + 88) = v8;
  return CAFRecirculationObservable.on.modify;
}

void CAFRecirculationObservable.on.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 72);
  v2 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 64);
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA26CAFRecirculationObservableC_SbTt3g5(v4, v5, v3, v2, v6, v7, v8, v9, v10, v11);

  free(v1);
}

uint64_t CAFRecirculationObservable.$on.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine26CAFRecirculationObservable__on, v4);

  specialized SafePublished.projectedValue.getter();
  v2 = v1;

  return v2;
}

uint64_t CAFRecirculationObservable.autoMode.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFRecirculationObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFRecirculationObservable.$autoMode.getter()
{

  specialized SafePublished.projectedValue.getter();
  v1 = v0;

  return v1;
}

uint64_t CAFRecirculationObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFRecirculationObservable_observed);
  v4 = 0x73696765726E753CLL;
  v5 = 0xEE003E6465726574;
  if ([v3 registeredForOn])
  {
    v6 = CAFRecirculationObservable.on.getter();
    if (v6)
    {
      v4 = 1702195828;
    }

    else
    {
      v4 = 0x65736C6166;
    }

    if (v6)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  if ([v3 registeredForAutoMode])
  {
    CAFRecirculationObservable.autoMode.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v2 = String.init<A>(describing:)();
    v1 = v7;
  }

  _StringGuts.grow(_:)(57);
  MEMORY[0x245D0A530](0xD00000000000001DLL, 0x800000024230DE50);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x203A6E6F207B20, 0xE700000000000000);
  MEMORY[0x245D0A530](v4, v5);

  MEMORY[0x245D0A530](0x6F4D6F747561202CLL, 0xEC000000203A6564);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFRecirculationObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine26CAFRecirculationObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFRecirculationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine26CAFRecirculationObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine26CAFRecirculationObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFRecirculationObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFRecirculationObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine26CAFRecirculationObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine26CAFRecirculationObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine26CAFRecirculationObservable__on;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA26CAFRecirculationObservableCSbGMd, &_s10CAFCombine13SafePublishedCyAA26CAFRecirculationObservableCSbGMR);
  swift_allocObject();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v8 = OBJC_IVAR____TtC10CAFCombine26CAFRecirculationObservable__autoMode;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFRecirculationObservableCSbSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFRecirculationObservableCSbSgGMR);
  swift_allocObject();
  *&v2[v8] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine26CAFRecirculationObservable_observed] = a1;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for CAFRecirculationObservable();
  v9 = a1;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  [v9 registerObserver_];

  return v10;
}

uint64_t CAFRecirculationObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFRecirculationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFRecirculationObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine26CAFRecirculationObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFRecirculationObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFRecirculationObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFRecirculationObservable@<X0>(void *a1@<X8>)
{
  result = CAFRecirculationObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFRecirculationObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFRecirculationObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFRecirculationObservable.recirculationService(_:didUpdateOn:)(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_234(v2 + OBJC_IVAR____TtC10CAFCombine26CAFRecirculationObservable__on, v5);

  specialized SafePublished.value.setter(a2 & 1);
}

uint64_t CAFRecirculationObservable.recirculationService(_:didUpdateAutoMode:)(uint64_t a1, char a2)
{

  specialized SafeReadOnlyPublished.value.setter(a2 & 1);
}

uint64_t CAFRecirculationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFRecirculationObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFRecirculationObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFRecirculation()
{
  result = lazy cache variable for type metadata for CAFRecirculation;
  if (!lazy cache variable for type metadata for CAFRecirculation)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFRecirculation);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFRecirculationObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFRecirculationObservable and conformance CAFRecirculationObservable(&lazy protocol witness table cache variable for type CAFRecirculationObservable and conformance CAFRecirculationObservable, a2, type metadata accessor for CAFRecirculationObservable, &protocol conformance descriptor for CAFRecirculationObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFRecirculationObservable and conformance CAFRecirculationObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFRecirculationObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine26CAFRecirculationObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t key path getter for CAFSteeringWheelHeatingCoolingObservable.heatingCoolingLevel : CAFSteeringWheelHeatingCoolingObservable@<X0>(_DWORD *a1@<X8>)
{
  result = CAFSteeringWheelHeatingCoolingObservable.heatingCoolingLevel.getter();
  *a1 = result;
  return result;
}

uint64_t CAFSteeringWheelHeatingCoolingObservable.heatingCoolingLevel.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine40CAFSteeringWheelHeatingCoolingObservable__heatingCoolingLevel, v8);
  v7 = *(v0 + OBJC_IVAR____TtC10CAFCombine40CAFSteeringWheelHeatingCoolingObservable_observed);

  v1 = v7;
  v2 = swift_readAtKeyPath();
  v4 = *v3;
  v2(&v6, 0);

  return v4;
}

uint64_t CAFSteeringWheelHeatingCoolingObservable.heatingCoolingLevel.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = v10;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA40CAFSteeringWheelHeatingCoolingObservableC_s5Int32VTt3g5(a1, v14, KeyPath, v13, v15, v16, v17, v18, a9, a10);
}

void (*CAFSteeringWheelHeatingCoolingObservable.heatingCoolingLevel.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine40CAFSteeringWheelHeatingCoolingObservable__heatingCoolingLevel, (v3 + 4));
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine40CAFSteeringWheelHeatingCoolingObservable_observed);
  v3[7] = v4;

  v5 = v4;
  v6 = swift_readAtKeyPath();
  v8 = *v7;
  v6(v3, 0);

  *(v3 + 22) = v8;
  return CAFSteeringWheelHeatingCoolingObservable.heatingCoolingLevel.modify;
}

void CAFSteeringWheelHeatingCoolingObservable.heatingCoolingLevel.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 72);
  v2 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 64);
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA40CAFSteeringWheelHeatingCoolingObservableC_s5Int32VTt3g5(v4, v5, v3, v2, v6, v7, v8, v9, v10, v11);

  free(v1);
}

uint64_t CAFSteeringWheelHeatingCoolingObservable.$heatingCoolingLevel.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine40CAFSteeringWheelHeatingCoolingObservable__heatingCoolingLevel, v4);

  specialized SafePublished.projectedValue.getter();
  v2 = v1;

  return v2;
}

uint64_t CAFSteeringWheelHeatingCoolingObservable.autoMode.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine40CAFSteeringWheelHeatingCoolingObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFSteeringWheelHeatingCoolingObservable.$autoMode.getter()
{

  specialized SafePublished.projectedValue.getter();
  v1 = v0;

  return v1;
}

uint64_t CAFSteeringWheelHeatingCoolingObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine40CAFSteeringWheelHeatingCoolingObservable_observed);
  v4 = 0x73696765726E753CLL;
  v5 = 0xEE003E6465726574;
  if ([v3 registeredForHeatingCoolingLevel])
  {
    CAFSteeringWheelHeatingCoolingObservable.heatingCoolingLevel.getter();
    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    v5 = v6;
  }

  if ([v3 registeredForAutoMode])
  {
    CAFSteeringWheelHeatingCoolingObservable.autoMode.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v2 = String.init<A>(describing:)();
    v1 = v7;
  }

  _StringGuts.grow(_:)(88);
  MEMORY[0x245D0A530](0xD00000000000002BLL, 0x800000024230DF10);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000018, 0x800000024230DF40);
  MEMORY[0x245D0A530](v4, v5);

  MEMORY[0x245D0A530](0x6F4D6F747561202CLL, 0xEC000000203A6564);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFSteeringWheelHeatingCoolingObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine40CAFSteeringWheelHeatingCoolingObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine40CAFSteeringWheelHeatingCoolingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine40CAFSteeringWheelHeatingCoolingObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine40CAFSteeringWheelHeatingCoolingObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFSteeringWheelHeatingCoolingObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFSteeringWheelHeatingCoolingObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine40CAFSteeringWheelHeatingCoolingObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine40CAFSteeringWheelHeatingCoolingObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine40CAFSteeringWheelHeatingCoolingObservable__heatingCoolingLevel;
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA40CAFSteeringWheelHeatingCoolingObservableCs5Int32VGMd, &_s10CAFCombine13SafePublishedCyAA40CAFSteeringWheelHeatingCoolingObservableCs5Int32VGMR);
  swift_allocObject();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(KeyPath);
  v9 = OBJC_IVAR____TtC10CAFCombine40CAFSteeringWheelHeatingCoolingObservable__autoMode;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA40CAFSteeringWheelHeatingCoolingObservableCSbSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA40CAFSteeringWheelHeatingCoolingObservableCSbSgGMR);
  swift_allocObject();
  *&v2[v9] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine40CAFSteeringWheelHeatingCoolingObservable_observed] = a1;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for CAFSteeringWheelHeatingCoolingObservable();
  v10 = a1;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  [v10 registerObserver_];

  return v11;
}

uint64_t CAFSteeringWheelHeatingCoolingObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine40CAFSteeringWheelHeatingCoolingObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFSteeringWheelHeatingCoolingObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine40CAFSteeringWheelHeatingCoolingObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFSteeringWheelHeatingCoolingObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFSteeringWheelHeatingCoolingObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFSteeringWheelHeatingCoolingObservable@<X0>(void *a1@<X8>)
{
  result = CAFSteeringWheelHeatingCoolingObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFSteeringWheelHeatingCoolingObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFSteeringWheelHeatingCoolingObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFSteeringWheelHeatingCoolingObservable.steeringWheelHeatingCoolingService(_:didUpdateHeatingCoolingLevel:)(uint64_t a1, unsigned int a2)
{
  OUTLINED_FUNCTION_234(v2 + OBJC_IVAR____TtC10CAFCombine40CAFSteeringWheelHeatingCoolingObservable__heatingCoolingLevel, v5);

  specialized SafePublished.value.setter(a2);
}

uint64_t CAFSteeringWheelHeatingCoolingObservable.steeringWheelHeatingCoolingService(_:didUpdateAutoMode:)(uint64_t a1, char a2)
{

  specialized SafeReadOnlyPublished.value.setter(a2 & 1);
}

uint64_t CAFSteeringWheelHeatingCoolingObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFSteeringWheelHeatingCoolingObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFSteeringWheelHeatingCoolingObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFSteeringWheelHeatingCooling()
{
  result = lazy cache variable for type metadata for CAFSteeringWheelHeatingCooling;
  if (!lazy cache variable for type metadata for CAFSteeringWheelHeatingCooling)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFSteeringWheelHeatingCooling);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFSteeringWheelHeatingCoolingObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFSteeringWheelHeatingCoolingObservable and conformance CAFSteeringWheelHeatingCoolingObservable(&lazy protocol witness table cache variable for type CAFSteeringWheelHeatingCoolingObservable and conformance CAFSteeringWheelHeatingCoolingObservable, a2, type metadata accessor for CAFSteeringWheelHeatingCoolingObservable, &protocol conformance descriptor for CAFSteeringWheelHeatingCoolingObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFSteeringWheelHeatingCoolingObservable and conformance CAFSteeringWheelHeatingCoolingObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFSteeringWheelHeatingCoolingObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine40CAFSteeringWheelHeatingCoolingObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFTemperatureLevel.onBridged.getter()
{
  if ([v0 hasOn])
  {
    return [v0 on];
  }

  else
  {
    return 2;
  }
}

uint64_t key path getter for CAFTemperatureLevelObservable.heatingCoolingLevel : CAFTemperatureLevelObservable@<X0>(_DWORD *a1@<X8>)
{
  result = CAFTemperatureLevelObservable.heatingCoolingLevel.getter();
  *a1 = result;
  return result;
}

uint64_t CAFTemperatureLevelObservable.heatingCoolingLevel.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable__heatingCoolingLevel, v15);
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable_observed);

  v2 = v1;
  v10 = OUTLINED_FUNCTION_3_20(v2, v3, v4, v5, v6, v7, v8, v9, v14[0], v14[1], v14[2], v14[3], v1);
  v12 = *v11;
  v10(v14, 0);

  return v12;
}

uint64_t CAFTemperatureLevelObservable.heatingCoolingLevel.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v10;
  v12 = OUTLINED_FUNCTION_4_15();

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA29CAFTemperatureLevelObservableC_s5Int32VTt3g5(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

void (*CAFTemperatureLevelObservable.heatingCoolingLevel.modify(void *a1))(uint64_t a1)
{
  v4 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v4;
  v4[8] = v1;
  v4[9] = swift_getKeyPath();
  v4[10] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable__heatingCoolingLevel, (v4 + 4));
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable_observed);

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  v8 = *v7;
  v6(v4, 0);

  *(v4 + 22) = v8;
  return CAFTemperatureLevelObservable.heatingCoolingLevel.modify;
}

void CAFTemperatureLevelObservable.heatingCoolingLevel.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  v3 = OUTLINED_FUNCTION_5_12();
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA29CAFTemperatureLevelObservableC_s5Int32VTt3g5(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);

  free(v1);
}

uint64_t key path getter for CAFTemperatureLevelObservable.on : CAFTemperatureLevelObservable@<X0>(_BYTE *a1@<X8>)
{
  result = CAFTemperatureLevelObservable.on.getter();
  *a1 = result;
  return result;
}

uint64_t CAFTemperatureLevelObservable.on.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable__on, v15);
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable_observed);

  v2 = v1;
  v10 = OUTLINED_FUNCTION_3_20(v2, v3, v4, v5, v6, v7, v8, v9, v14[0], v14[1], v14[2], v14[3], v1);
  v12 = *v11;
  v10(v14, 0);

  return v12;
}

uint64_t CAFTemperatureLevelObservable.on.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v10;
  v12 = OUTLINED_FUNCTION_4_15();

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA29CAFTemperatureLevelObservableC_SbSgTt3g5(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

void (*CAFTemperatureLevelObservable.on.modify(void *a1))(uint64_t a1)
{
  v4 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v4;
  v4[8] = v1;
  v4[9] = swift_getKeyPath();
  v4[10] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable__on, (v4 + 4));
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable_observed);

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  v8 = *v7;
  v6(v4, 0);

  *(v4 + 88) = v8;
  return CAFTemperatureLevelObservable.on.modify;
}

void CAFTemperatureLevelObservable.on.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  v3 = OUTLINED_FUNCTION_5_12();
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA29CAFTemperatureLevelObservableC_SbSgTt3g5(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);

  free(v1);
}

uint64_t CAFTemperatureLevelObservable.$heatingCoolingLevel.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_0_6(a1);

  v4 = a2(v3);

  return v4;
}

uint64_t CAFTemperatureLevelObservable.vehicleLayoutKey.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFTemperatureLevelObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable_observed);
  v4 = 0x73696765726E753CLL;
  v5 = 0xEE003E6465726574;
  if ([v3 registeredForHeatingCoolingLevel])
  {
    CAFTemperatureLevelObservable.heatingCoolingLevel.getter();
    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    v5 = v6;
  }

  v7 = 0x73696765726E753CLL;
  v8 = 0xEE003E6465726574;
  if ([v3 registeredForOn])
  {
    CAFTemperatureLevelObservable.on.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v7 = String.init<A>(describing:)();
    v8 = v9;
  }

  if ([v3 registeredForVehicleLayoutKey])
  {
    v2 = CAFTemperatureLevelObservable.vehicleLayoutKey.getter();
    v1 = v10;
  }

  _StringGuts.grow(_:)(93);
  MEMORY[0x245D0A530](0xD000000000000020, 0x800000024230DFE0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000018, 0x800000024230DF40);
  MEMORY[0x245D0A530](v4, v5);

  MEMORY[0x245D0A530](0x203A6E6F202CLL, 0xE600000000000000);
  MEMORY[0x245D0A530](v7, v8);

  MEMORY[0x245D0A530](0xD000000000000014, 0x800000024230DB40);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFTemperatureLevelObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFTemperatureLevelObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFTemperatureLevelObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable__heatingCoolingLevel;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA29CAFTemperatureLevelObservableCs5Int32VGMd, &_s10CAFCombine13SafePublishedCyAA29CAFTemperatureLevelObservableCs5Int32VGMR);
  swift_allocObject();
  v8 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)(v8);
  v9 = OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable__on;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA29CAFTemperatureLevelObservableCSbSgGMd, _s10CAFCombine13SafePublishedCyAA29CAFTemperatureLevelObservableCSbSgGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v9] = specialized SafePublished.init(observedValuekeypath:)();
  v10 = OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable__vehicleLayoutKey;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA29CAFTemperatureLevelObservableCSSGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA29CAFTemperatureLevelObservableCSSGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)();
  v11 = OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable__name;
  swift_getKeyPath();
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v11] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable_observed] = a1;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for CAFTemperatureLevelObservable();
  v12 = a1;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  [v12 registerObserver_];

  return v13;
}

uint64_t CAFTemperatureLevelObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFTemperatureLevelObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFTemperatureLevelObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFTemperatureLevelObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFTemperatureLevelObservable@<X0>(void *a1@<X8>)
{
  result = CAFTemperatureLevelObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFTemperatureLevelObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFTemperatureLevelObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFTemperatureLevelObservable.temperatureLevelService(_:didUpdateHeatingCoolingLevel:)(uint64_t a1, unsigned int a2)
{
  OUTLINED_FUNCTION_0_6(a1);

  specialized SafePublished.value.setter(a2);
}

uint64_t CAFTemperatureLevelObservable.temperatureLevelService(_:didUpdateOn:)(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_0_6(a1);

  specialized SafePublished.value.setter(a2 & 1);
}

uint64_t CAFTemperatureLevelObservable.temperatureLevelService(_:didUpdateVehicleLayoutKey:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  specialized SafeReadOnlyPublished.value.setter(a2, a3);
}

double @objc CAFTemperatureLevelObservable.temperatureLevelService(_:didUpdateVehicleLayoutKey:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFTemperatureLevelObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFTemperatureLevelObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFTemperatureLevelObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFTemperatureLevel()
{
  result = lazy cache variable for type metadata for CAFTemperatureLevel;
  if (!lazy cache variable for type metadata for CAFTemperatureLevel)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFTemperatureLevel);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFTemperatureLevelObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFTemperatureLevelObservable and conformance CAFTemperatureLevelObservable(&lazy protocol witness table cache variable for type CAFTemperatureLevelObservable and conformance CAFTemperatureLevelObservable, a2, type metadata accessor for CAFTemperatureLevelObservable, &protocol conformance descriptor for CAFTemperatureLevelObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFTemperatureLevelObservable and conformance CAFTemperatureLevelObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFTemperatureLevelObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine29CAFTemperatureLevelObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t OUTLINED_FUNCTION_3_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{

  return swift_readAtKeyPath();
}

uint64_t CAFTemperatureObservable.currentTemperature.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();
}

uint64_t key path setter for CAFTemperatureObservable.targetTemperature : CAFTemperatureObservable(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3, a1);
  return CAFTemperatureObservable.targetTemperature.setter(v4);
}

uint64_t CAFTemperatureObservable.targetTemperature.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable__targetTemperature, v11);
  v10 = *(v1 + OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable_observed);

  v3 = v10;
  v4 = swift_readAtKeyPath();
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  (*(*(v7 - 8) + 16))(a1, v6, v7);
  v4(&v9, 0);
}

uint64_t CAFTemperatureObservable.targetTemperature.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  OUTLINED_FUNCTION_30();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v5 + 16))(v8, a1, v3);
  v9 = v1;
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA24CAFTemperatureObservableC_10Foundation11MeasurementVySo17NSUnitTemperatureCGTt3g5();
  return (*(v5 + 8))(a1, v3);
}

void (*CAFTemperatureObservable.targetTemperature.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  OUTLINED_FUNCTION_30();
  v5 = v4;
  v3[10] = v4;
  v7 = *(v6 + 64);
  v3[11] = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  v3[12] = v8;
  v3[13] = swift_getKeyPath();
  v3[14] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable__targetTemperature, (v3 + 4));
  v9 = *(v1 + OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable_observed);
  v3[7] = v9;

  v10 = v9;
  v11 = swift_readAtKeyPath();
  v12 = *(v5 + 16);
  v3[15] = v12;
  v3[16] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v8);
  v11(v3, 0);

  return CAFTemperatureObservable.targetTemperature.modify;
}

void CAFTemperatureObservable.targetTemperature.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 88);
  v3 = *(*a1 + 96);
  if (a2)
  {
    v5 = *(v2 + 72);
    v6 = *(v2 + 80);
    v7 = *(v2 + 64);
    (*(v2 + 120))(*(v2 + 88), *(v2 + 96), v5);
    v8 = v7;
    _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA24CAFTemperatureObservableC_10Foundation11MeasurementVySo17NSUnitTemperatureCGTt3g5();
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    v9 = *(v2 + 64);
    _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA24CAFTemperatureObservableC_10Foundation11MeasurementVySo17NSUnitTemperatureCGTt3g5();
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t key path getter for CAFTemperatureObservable.on : CAFTemperatureObservable@<X0>(_BYTE *a1@<X8>)
{
  result = CAFTemperatureObservable.on.getter();
  *a1 = result;
  return result;
}

uint64_t CAFTemperatureObservable.on.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable__on, v8);
  v7 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable_observed);

  v1 = v7;
  v2 = swift_readAtKeyPath();
  v4 = *v3;
  v2(&v6, 0);

  return v4;
}

uint64_t CAFTemperatureObservable.on.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = v10;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA24CAFTemperatureObservableC_SbSgTt3g5(a1, v14, KeyPath, v13, v15, v16, v17, v18, a9, a10);
}

void (*CAFTemperatureObservable.on.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable__on, (v3 + 4));
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable_observed);
  v3[7] = v4;

  v5 = v4;
  v6 = swift_readAtKeyPath();
  v8 = *v7;
  v6(v3, 0);

  *(v3 + 88) = v8;
  return CAFTemperatureObservable.on.modify;
}

void CAFTemperatureObservable.on.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 72);
  v2 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 64);
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA24CAFTemperatureObservableC_SbSgTt3g5(v4, v5, v3, v2, v6, v7, v8, v9, v10, v11);

  free(v1);
}

uint64_t CAFTemperatureObservable.$targetTemperature.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_0_6(a1);

  v4 = a2(v3);

  return v4;
}

uint64_t CAFTemperatureObservable.vehicleLayoutKey.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFTemperatureObservable.$currentTemperature.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t CAFTemperatureObservable._description.getter()
{
  v1 = v0;
  v2 = 0xEE003E6465726574;
  v3 = 0x73696765726E753CLL;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  OUTLINED_FUNCTION_30();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMR);
  MEMORY[0x28223BE20](v10);
  v11 = *(v1 + OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable_observed);
  v12 = [v11 registeredForCurrentTemperature];
  v25 = 0x73696765726E753CLL;
  v13 = 0xEE003E6465726574;
  if (v12)
  {
    CAFTemperatureObservable.currentTemperature.getter();
    v3 = String.init<A>(describing:)();
    v13 = v14;
  }

  v24 = v3;
  v15 = 0x73696765726E753CLL;
  v16 = 0xEE003E6465726574;
  if ([v11 registeredForTargetTemperature])
  {
    CAFTemperatureObservable.targetTemperature.getter(v9);
    lazy protocol witness table accessor for type Measurement<NSUnitTemperature> and conformance Measurement<A>();
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v17;
    (*(v6 + 8))(v9, v4);
  }

  v18 = 0x73696765726E753CLL;
  v19 = 0xEE003E6465726574;
  if ([v11 registeredForOn])
  {
    LOBYTE(v27) = CAFTemperatureObservable.on.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v18 = String.init<A>(describing:)();
    v19 = v20;
  }

  if ([v11 registeredForVehicleLayoutKey])
  {
    v25 = CAFTemperatureObservable.vehicleLayoutKey.getter();
    v2 = v21;
  }

  v27 = 0;
  v28 = 0xE000000000000000;
  _StringGuts.grow(_:)(110);
  MEMORY[0x245D0A530](0xD00000000000001BLL, 0x800000024230E0B0);
  v26 = v1;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000017, 0x800000024230E0D0);
  MEMORY[0x245D0A530](v24, v13);

  MEMORY[0x245D0A530](0xD000000000000015, 0x800000024230E0F0);
  MEMORY[0x245D0A530](v15, v16);

  MEMORY[0x245D0A530](0x203A6E6F202CLL, 0xE600000000000000);
  MEMORY[0x245D0A530](v18, v19);

  MEMORY[0x245D0A530](0xD000000000000014, 0x800000024230DB40);
  MEMORY[0x245D0A530](v25, v2);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return v27;
}

uint64_t CAFTemperatureObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFTemperatureObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFTemperatureObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable__currentTemperature;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFTemperatureObservableC10Foundation11MeasurementVySo17NSUnitTemperatureCGSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFTemperatureObservableC10Foundation11MeasurementVySo17NSUnitTemperatureCGSgGMR);
  OUTLINED_FUNCTION_225(v8);
  v9 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v9, v10, v11, v12, v13, v14, v15, v16, v35.receiver, v35.super_class, v36, v37, v38, v39, v40, v41, vars0, vars8);
  v17 = OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable__targetTemperature;
  swift_getKeyPath();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA24CAFTemperatureObservableC10Foundation11MeasurementVySo17NSUnitTemperatureCGGMd, &_s10CAFCombine13SafePublishedCyAA24CAFTemperatureObservableC10Foundation11MeasurementVySo17NSUnitTemperatureCGGMR);
  OUTLINED_FUNCTION_225(v18);
  v19 = OUTLINED_FUNCTION_0_7();
  *&v2[v17] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v19, v20, v21, v22, v23, v24, v25, v26, v35.receiver, v35.super_class, v36, v37, v38, v39, v40, v41, vars0, vars8);
  v27 = OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable__on;
  swift_getKeyPath();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA24CAFTemperatureObservableCSbSgGMd, _s10CAFCombine13SafePublishedCyAA24CAFTemperatureObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v28);
  OUTLINED_FUNCTION_0_7();
  *&v2[v27] = specialized SafePublished.init(observedValuekeypath:)();
  v29 = OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable__vehicleLayoutKey;
  swift_getKeyPath();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFTemperatureObservableCSSGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFTemperatureObservableCSSGMR);
  OUTLINED_FUNCTION_225(v30);
  OUTLINED_FUNCTION_0_7();
  *&v2[v29] = specialized SafePublished.init(observedValuekeypath:)();
  v31 = OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable__name;
  swift_getKeyPath();
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v31] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable_observed] = a1;
  v35.receiver = v2;
  v35.super_class = type metadata accessor for CAFTemperatureObservable();
  v32 = a1;
  v33 = objc_msgSendSuper2(&v35, sel_init);
  [v32 registerObserver_];

  return v33;
}

uint64_t CAFTemperatureObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFTemperatureObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFTemperatureObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFTemperatureObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFTemperatureObservable@<X0>(void *a1@<X8>)
{
  result = CAFTemperatureObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFTemperatureObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFTemperatureObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFTemperatureObservable.temperatureService(_:didUpdateCurrentTemperature:)()
{

  specialized SafeReadOnlyPublished.setValue(_:)();
}

uint64_t CAFTemperatureObservable.temperatureService(_:didUpdateTargetTemperature:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_6(a1);

  specialized SafePublished.setValue(_:)(a2);
}

uint64_t CAFTemperatureObservable.temperatureService(_:didUpdateOn:)(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_0_6(a1);

  specialized SafePublished.value.setter(a2 & 1);
}

uint64_t CAFTemperatureObservable.temperatureService(_:didUpdateVehicleLayoutKey:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  specialized SafeReadOnlyPublished.value.setter(a2, a3);
}

double @objc CAFTemperatureObservable.temperatureService(_:didUpdateVehicleLayoutKey:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFTemperatureObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFTemperatureObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFTemperatureObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t key path getter for CAFTemperature.currentTemperature : CAFTemperature@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 currentTemperature];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitTemperature, 0x277CCAE48);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v6);
}

void key path getter for CAFTemperature.targetTemperature : CAFTemperature(id *a1)
{
  v1 = [*a1 targetTemperature];
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitTemperature, 0x277CCAE48);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
}

void key path setter for CAFTemperature.targetTemperature : CAFTemperature(uint64_t a1, void **a2)
{
  v2 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  v5 = Measurement._bridgeToObjectiveC()();
  isa = v5.super.isa;
  [v2 setTargetTemperature_];
}

unint64_t lazy protocol witness table accessor for type CAFTemperature and conformance CAFTemperature()
{
  result = lazy protocol witness table cache variable for type CAFTemperature and conformance CAFTemperature;
  if (!lazy protocol witness table cache variable for type CAFTemperature and conformance CAFTemperature)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFTemperature, 0x277CF86B0);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFTemperature and conformance CAFTemperature);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFTemperatureObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFTemperatureObservable and conformance CAFTemperatureObservable(&lazy protocol witness table cache variable for type CAFTemperatureObservable and conformance CAFTemperatureObservable, &protocol conformance descriptor for CAFTemperatureObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFTemperatureObservable and conformance CAFTemperatureObservable(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFTemperatureObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of Measurement<NSUnitTemperature>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double partial apply for closure #1 in CAFTemperatureObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine24CAFTemperatureObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

char *CAFVent.combinationsBridged.getter()
{
  v1 = [v0 combinations];
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

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
      v10 = [v8 unsignedLongLongValue];

      v12 = *(v13 + 16);
      v11 = *(v13 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
      }

      ++v6;
      *(v13 + 16) = v12 + 1;
      *(v13 + 8 * v12 + 32) = v10;
    }

    while (v4 != v6);

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t CAFVentObservable.combinations.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine17CAFVentObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t key path getter for CAFVentObservable.currentIndex : CAFVentObservable@<X0>(_DWORD *a2@<X8>)
{
  result = CAFVentObservable.currentIndex.getter();
  *a2 = result;
  return result;
}

uint64_t CAFVentObservable.currentIndex.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine17CAFVentObservable__currentIndex, v15);
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine17CAFVentObservable_observed);

  v2 = v1;
  v10 = OUTLINED_FUNCTION_3_20(v2, v3, v4, v5, v6, v7, v8, v9, v14[0], v14[1], v14[2], v14[3], v1);
  v12 = *v11;
  v10(v14, 0);

  return v12;
}

uint64_t CAFVentObservable.currentIndex.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v10;
  v12 = OUTLINED_FUNCTION_4_15();

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA17CAFVentObservableC_s6UInt32VTt3g5(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

void (*CAFVentObservable.currentIndex.modify(void *a1))(uint64_t a1)
{
  v4 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v4;
  v4[8] = v1;
  v4[9] = swift_getKeyPath();
  v4[10] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine17CAFVentObservable__currentIndex, (v4 + 4));
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine17CAFVentObservable_observed);

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  v8 = *v7;
  v6(v4, 0);

  *(v4 + 22) = v8;
  return CAFVentObservable.currentIndex.modify;
}

void CAFVentObservable.currentIndex.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  v3 = OUTLINED_FUNCTION_5_12();
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA17CAFVentObservableC_s6UInt32VTt3g5(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);

  free(v1);
}

uint64_t CAFVentObservable.autoMode.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine17CAFVentObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t key path getter for CAFVentObservable.on : CAFVentObservable@<X0>(_BYTE *a2@<X8>)
{
  result = CAFVentObservable.on.getter();
  *a2 = result;
  return result;
}

uint64_t CAFVentObservable.on.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine17CAFVentObservable__on, v15);
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine17CAFVentObservable_observed);

  v2 = v1;
  v10 = OUTLINED_FUNCTION_3_20(v2, v3, v4, v5, v6, v7, v8, v9, v14[0], v14[1], v14[2], v14[3], v1);
  v12 = *v11;
  v10(v14, 0);

  return v12;
}

uint64_t CAFVentObservable.on.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v10;
  v12 = OUTLINED_FUNCTION_4_15();

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA17CAFVentObservableC_SbSgTt3g5(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

void (*CAFVentObservable.on.modify(void *a1))(uint64_t a1)
{
  v4 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v4;
  v4[8] = v1;
  v4[9] = swift_getKeyPath();
  v4[10] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine17CAFVentObservable__on, (v4 + 4));
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine17CAFVentObservable_observed);

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  v8 = *v7;
  v6(v4, 0);

  *(v4 + 88) = v8;
  return CAFVentObservable.on.modify;
}

void CAFVentObservable.on.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  v3 = OUTLINED_FUNCTION_5_12();
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA17CAFVentObservableC_SbSgTt3g5(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);

  free(v1);
}

uint64_t CAFVentObservable.$currentIndex.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_0_6(a1);

  v4 = a2(v3);

  return v4;
}

uint64_t CAFVentObservable.vehicleLayoutKey.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine17CAFVentObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFVentObservable.$combinations.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t CAFVentObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine17CAFVentObservable_observed);
  v4 = 0x73696765726E753CLL;
  v5 = 0xEE003E6465726574;
  if ([v3 registeredForVentCombinations])
  {
    v6 = CAFVentObservable.combinations.getter();
    type metadata accessor for CAFVentTypes(0);
    v4 = MEMORY[0x245D0A590](v6, v7);
    v5 = v8;
  }

  v24 = v4;
  v9 = [v3 registeredForCurrentIndex];
  v10 = 0x73696765726E753CLL;
  v11 = 0xEE003E6465726574;
  if (v9)
  {
    CAFVentObservable.currentIndex.getter();
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v12;
  }

  v23 = v10;
  v13 = [v3 registeredForAutoMode];
  v14 = 0x73696765726E753CLL;
  v15 = 0xEE003E6465726574;
  if (v13)
  {
    CAFVentObservable.autoMode.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v14 = String.init<A>(describing:)();
    v15 = v16;
  }

  v17 = 0x73696765726E753CLL;
  v18 = 0xEE003E6465726574;
  if ([v3 registeredForOn])
  {
    CAFVentObservable.on.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v17 = String.init<A>(describing:)();
    v18 = v19;
  }

  if ([v3 registeredForVehicleLayoutKey])
  {
    v2 = CAFVentObservable.vehicleLayoutKey.getter();
    v1 = v20;
  }

  _StringGuts.grow(_:)(106);
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530](0xD000000000000014);
  _print_unlocked<A, B>(_:_:)();
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v24, v5);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v23, v11);

  MEMORY[0x245D0A530](0x6F4D6F747561202CLL, 0xEC000000203A6564);
  MEMORY[0x245D0A530](v22, v15);

  MEMORY[0x245D0A530](0x203A6E6F202CLL, 0xE600000000000000);
  MEMORY[0x245D0A530](v17, v18);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530](0xD000000000000014);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFVentObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine17CAFVentObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine17CAFVentObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine17CAFVentObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine17CAFVentObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFVentObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFVentObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine17CAFVentObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine17CAFVentObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine17CAFVentObservable__combinations;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA17CAFVentObservableCSaySo0F5TypesVGGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA17CAFVentObservableCSaySo0F5TypesVGGMR);
  OUTLINED_FUNCTION_225(v8);
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v9 = OBJC_IVAR____TtC10CAFCombine17CAFVentObservable__currentIndex;
  swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA17CAFVentObservableCs6UInt32VGMd, &_s10CAFCombine13SafePublishedCyAA17CAFVentObservableCs6UInt32VGMR);
  OUTLINED_FUNCTION_225(v10);
  v11 = OUTLINED_FUNCTION_0_7();
  *&v2[v9] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v11);
  v12 = OBJC_IVAR____TtC10CAFCombine17CAFVentObservable__autoMode;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA17CAFVentObservableCSbSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA17CAFVentObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v13);
  OUTLINED_FUNCTION_0_7();
  *&v2[v12] = specialized SafePublished.init(observedValuekeypath:)();
  v14 = OBJC_IVAR____TtC10CAFCombine17CAFVentObservable__on;
  swift_getKeyPath();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA17CAFVentObservableCSbSgGMd, _s10CAFCombine13SafePublishedCyAA17CAFVentObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v15);
  OUTLINED_FUNCTION_0_7();
  *&v2[v14] = specialized SafePublished.init(observedValuekeypath:)();
  v16 = OBJC_IVAR____TtC10CAFCombine17CAFVentObservable__vehicleLayoutKey;
  swift_getKeyPath();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA17CAFVentObservableCSSGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA17CAFVentObservableCSSGMR);
  OUTLINED_FUNCTION_225(v17);
  OUTLINED_FUNCTION_0_7();
  *&v2[v16] = specialized SafePublished.init(observedValuekeypath:)();
  v18 = OBJC_IVAR____TtC10CAFCombine17CAFVentObservable__name;
  swift_getKeyPath();
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v18] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine17CAFVentObservable_observed] = a1;
  v22.receiver = v2;
  v22.super_class = type metadata accessor for CAFVentObservable();
  v19 = a1;
  v20 = objc_msgSendSuper2(&v22, sel_init);
  [v19 registerObserver_];

  return v20;
}

uint64_t CAFVentObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine17CAFVentObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFVentObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine17CAFVentObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFVentObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFVentObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFVentObservable@<X0>(void *a1@<X8>)
{
  result = CAFVentObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFVentObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFVentObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

char *CAFVentObservable.ventService(_:didUpdateCombinations:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC10CAFCombine17CAFVentObservable__combinations);
  v5 = specialized Array._getCount()();
  if (v5)
  {
    v6 = v5;
    v17 = MEMORY[0x277D84F90];
    v7 = v5 & ~(v5 >> 63);

    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v16 = v4;
    for (i = 0; i != v6; ++i)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x245D0A790](i, a2);
      }

      else
      {
        v10 = *(a2 + 8 * i + 32);
      }

      v11 = v10;
      v12 = [v10 unsignedLongLongValue];

      v14 = *(v17 + 16);
      v13 = *(v17 + 24);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      }

      *(v17 + 16) = v14 + 1;
      *(v17 + 8 * v14 + 32) = v12;
    }
  }

  else
  {
  }

  specialized SafeReadOnlyPublished.value.setter(v15);
}

uint64_t CAFVentObservable.ventService(_:didUpdateCurrentIndex:)(uint64_t a1, unsigned int a2)
{
  OUTLINED_FUNCTION_0_6(a1);

  specialized SafePublished.value.setter(a2);
}

uint64_t CAFVentObservable.ventService(_:didUpdateAutoMode:)(uint64_t a1, char a2)
{

  specialized SafeReadOnlyPublished.value.setter(a2 & 1);
}

uint64_t CAFVentObservable.ventService(_:didUpdateOn:)(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_0_6(a1);

  specialized SafePublished.value.setter(a2 & 1);
}

uint64_t CAFVentObservable.ventService(_:didUpdateVehicleLayoutKey:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  specialized SafeReadOnlyPublished.value.setter(a2, a3);
}

double @objc CAFVentObservable.ventService(_:didUpdateVehicleLayoutKey:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFVentObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFVentObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFVentObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CAFVent and conformance CAFVent()
{
  result = lazy protocol witness table cache variable for type CAFVent and conformance CAFVent;
  if (!lazy protocol witness table cache variable for type CAFVent and conformance CAFVent)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFVent, 0x277CF87A8);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFVent and conformance CAFVent);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFVentObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFVentObservable and conformance CAFVentObservable(&lazy protocol witness table cache variable for type CAFVentObservable and conformance CAFVentObservable, &protocol conformance descriptor for CAFVentObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFVentObservable and conformance CAFVentObservable(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFVentObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double partial apply for closure #1 in CAFVentObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine17CAFVentObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t key path getter for CAFZoneOnObservable.on : CAFZoneOnObservable@<X0>(_BYTE *a1@<X8>)
{
  result = CAFZoneOnObservable.on.getter();
  *a1 = result & 1;
  return result;
}

uint64_t CAFZoneOnObservable.on.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine19CAFZoneOnObservable__on, v8);
  v7 = *(v0 + OBJC_IVAR____TtC10CAFCombine19CAFZoneOnObservable_observed);

  v1 = v7;
  v2 = swift_readAtKeyPath();
  v4 = *v3;
  v2(&v6, 0);

  return v4;
}

uint64_t CAFZoneOnObservable.on.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = v10;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA19CAFZoneOnObservableC_SbTt3g5(a1, v14, KeyPath, v13, v15, v16, v17, v18, a9, a10);
}

void (*CAFZoneOnObservable.on.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine19CAFZoneOnObservable__on, (v3 + 4));
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine19CAFZoneOnObservable_observed);
  v3[7] = v4;

  v5 = v4;
  v6 = swift_readAtKeyPath();
  v8 = *v7;
  v6(v3, 0);

  *(v3 + 88) = v8;
  return CAFZoneOnObservable.on.modify;
}

void CAFZoneOnObservable.on.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 72);
  v2 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 64);
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA19CAFZoneOnObservableC_SbTt3g5(v4, v5, v3, v2, v6, v7, v8, v9, v10, v11);

  free(v1);
}

uint64_t CAFZoneOnObservable.$on.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine19CAFZoneOnObservable__on, v4);

  specialized SafePublished.projectedValue.getter();
  v2 = v1;

  return v2;
}

uint64_t CAFZoneOnObservable.vehicleLayoutKey.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine19CAFZoneOnObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFZoneOnObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine19CAFZoneOnObservable_observed);
  v4 = 0x73696765726E753CLL;
  v5 = 0xEE003E6465726574;
  if ([v3 registeredForOn])
  {
    v6 = CAFZoneOnObservable.on.getter();
    if (v6)
    {
      v4 = 1702195828;
    }

    else
    {
      v4 = 0x65736C6166;
    }

    if (v6)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  if ([v3 registeredForVehicleLayoutKey])
  {
    v2 = CAFZoneOnObservable.vehicleLayoutKey.getter();
    v1 = v7;
  }

  _StringGuts.grow(_:)(58);
  MEMORY[0x245D0A530](0xD000000000000016, 0x800000024230E240);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x203A6E6F207B20, 0xE700000000000000);
  MEMORY[0x245D0A530](v4, v5);

  MEMORY[0x245D0A530](0xD000000000000014, 0x800000024230DB40);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFZoneOnObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine19CAFZoneOnObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine19CAFZoneOnObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine19CAFZoneOnObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine19CAFZoneOnObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFZoneOnObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFZoneOnObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine19CAFZoneOnObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine19CAFZoneOnObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine19CAFZoneOnObservable__on;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA19CAFZoneOnObservableCSbGMd, _s10CAFCombine13SafePublishedCyAA19CAFZoneOnObservableCSbGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v8 = OBJC_IVAR____TtC10CAFCombine19CAFZoneOnObservable__vehicleLayoutKey;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA19CAFZoneOnObservableCSSGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA19CAFZoneOnObservableCSSGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v8] = specialized SafePublished.init(observedValuekeypath:)();
  v9 = OBJC_IVAR____TtC10CAFCombine19CAFZoneOnObservable__name;
  swift_getKeyPath();
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v9] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine19CAFZoneOnObservable_observed] = a1;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for CAFZoneOnObservable();
  v10 = a1;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  [v10 registerObserver_];

  return v11;
}

uint64_t CAFZoneOnObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine19CAFZoneOnObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFZoneOnObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine19CAFZoneOnObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFZoneOnObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFZoneOnObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFZoneOnObservable@<X0>(void *a1@<X8>)
{
  result = CAFZoneOnObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFZoneOnObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFZoneOnObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFZoneOnObservable.zoneOnService(_:didUpdateOn:)(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_234(v2 + OBJC_IVAR____TtC10CAFCombine19CAFZoneOnObservable__on, v5);

  specialized SafePublished.value.setter(a2 & 1);
}

uint64_t CAFZoneOnObservable.zoneOnService(_:didUpdateVehicleLayoutKey:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  specialized SafeReadOnlyPublished.value.setter(a2, a3);
}

double @objc CAFZoneOnObservable.zoneOnService(_:didUpdateVehicleLayoutKey:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFZoneOnObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFZoneOnObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFZoneOnObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFZoneOn()
{
  result = lazy cache variable for type metadata for CAFZoneOn;
  if (!lazy cache variable for type metadata for CAFZoneOn)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFZoneOn);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFZoneOnObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFZoneOnObservable and conformance CAFZoneOnObservable(&lazy protocol witness table cache variable for type CAFZoneOnObservable and conformance CAFZoneOnObservable, a2, type metadata accessor for CAFZoneOnObservable, &protocol conformance descriptor for CAFZoneOnObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFZoneOnObservable and conformance CAFZoneOnObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFZoneOnObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine19CAFZoneOnObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t key path getter for CAFZonesSyncedObservable.on : CAFZonesSyncedObservable@<X0>(_BYTE *a1@<X8>)
{
  result = CAFZonesSyncedObservable.on.getter();
  *a1 = result & 1;
  return result;
}

uint64_t CAFZonesSyncedObservable.on.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable__on, v8);
  v7 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable_observed);

  v1 = v7;
  v2 = swift_readAtKeyPath();
  v4 = *v3;
  v2(&v6, 0);

  return v4;
}

uint64_t CAFZonesSyncedObservable.on.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = v10;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA24CAFZonesSyncedObservableC_SbTt3g5(a1, v14, KeyPath, v13, v15, v16, v17, v18, a9, a10);
}

void (*CAFZonesSyncedObservable.on.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable__on, (v3 + 4));
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable_observed);
  v3[7] = v4;

  v5 = v4;
  v6 = swift_readAtKeyPath();
  v8 = *v7;
  v6(v3, 0);

  *(v3 + 88) = v8;
  return CAFZonesSyncedObservable.on.modify;
}

void CAFZonesSyncedObservable.on.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 72);
  v2 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 64);
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA24CAFZonesSyncedObservableC_SbTt3g5(v4, v5, v3, v2, v6, v7, v8, v9, v10, v11);

  free(v1);
}

uint64_t CAFZonesSyncedObservable.$on.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable__on, v4);

  specialized SafePublished.projectedValue.getter();
  v2 = v1;

  return v2;
}

uint64_t CAFZonesSyncedObservable.vehicleLayoutKey.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable_observed);

  OUTLINED_FUNCTION_232(v2);

  return v3;
}

uint64_t CAFZonesSyncedObservable.name.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable_observed);

  OUTLINED_FUNCTION_232(v2);

  return v3;
}

uint64_t CAFZonesSyncedObservable.$vehicleLayoutKey.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t CAFZonesSyncedObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable_observed);
  v2 = 0x73696765726E753CLL;
  v3 = 0xEE003E6465726574;
  if ([v1 registeredForOn])
  {
    v4 = CAFZonesSyncedObservable.on.getter();
    if (v4)
    {
      v2 = 1702195828;
    }

    else
    {
      v2 = 0x65736C6166;
    }

    if (v4)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE500000000000000;
    }
  }

  if ([v1 registeredForVehicleLayoutKey])
  {
    CAFZonesSyncedObservable.vehicleLayoutKey.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    String.init<A>(describing:)();
  }

  _StringGuts.grow(_:)(63);
  MEMORY[0x245D0A530](0xD00000000000001BLL, 0x800000024230E2C0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x203A6E6F207B20, 0xE700000000000000);
  MEMORY[0x245D0A530](v2, v3);

  MEMORY[0x245D0A530](0xD000000000000014, 0x800000024230DB40);
  v5 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v5);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFZonesSyncedObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable_cachedDescription + 8))
  {
    v4 = *(v0 + v1);
  }

  else
  {
    *v3 = CAFZonesSyncedObservable._description.getter();
    v3[1] = v5;

    v4 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v4 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFZonesSyncedObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable__on;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA24CAFZonesSyncedObservableCSbGMd, _s10CAFCombine13SafePublishedCyAA24CAFZonesSyncedObservableCSbGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v8 = OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable__vehicleLayoutKey;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFZonesSyncedObservableCSSSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFZonesSyncedObservableCSSSgGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v8] = specialized SafePublished.init(observedValuekeypath:)();
  v9 = OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable__name;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFZonesSyncedObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFZonesSyncedObservableCSSGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v9] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable_observed] = a1;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for CAFZonesSyncedObservable();
  v10 = a1;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  [v10 registerObserver_];

  return v11;
}

uint64_t CAFZonesSyncedObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFZonesSyncedObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFZonesSyncedObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFZonesSyncedObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFZonesSyncedObservable@<X0>(void *a1@<X8>)
{
  result = CAFZonesSyncedObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFZonesSyncedObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFZonesSyncedObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFZonesSyncedObservable.zonesSyncedService(_:didUpdateOn:)(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_234(v2 + OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable__on, v5);

  specialized SafePublished.value.setter(a2 & 1);
}

uint64_t CAFZonesSyncedObservable.zonesSyncedService(_:didUpdateVehicleLayoutKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v3, v4);
}

uint64_t CAFZonesSyncedObservable.zonesSyncedService(_:didUpdateName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v3, v4);
}

uint64_t CAFZonesSyncedObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFZonesSyncedObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFZonesSyncedObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFZonesSynced()
{
  result = lazy cache variable for type metadata for CAFZonesSynced;
  if (!lazy cache variable for type metadata for CAFZonesSynced)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFZonesSynced);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFZonesSyncedObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFZonesSyncedObservable and conformance CAFZonesSyncedObservable(&lazy protocol witness table cache variable for type CAFZonesSyncedObservable and conformance CAFZonesSyncedObservable, a2, type metadata accessor for CAFZonesSyncedObservable, &protocol conformance descriptor for CAFZonesSyncedObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFZonesSyncedObservable and conformance CAFZonesSyncedObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFZonesSyncedObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine24CAFZonesSyncedObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFClosureStateObservable.latchState.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFClosureStateObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFClosureStateObservable.vehicleLayoutKey.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine25CAFClosureStateObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFClosureStateObservable.$latchState.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t CAFClosureStateObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFClosureStateObservable_observed);
  v4 = 0x73696765726E753CLL;
  v5 = 0xEE003E6465726574;
  if ([v3 registeredForLatchState])
  {
    v6 = CAFClosureStateObservable.latchState.getter();
    if (v6)
    {
      v4 = 1702195828;
    }

    else
    {
      v4 = 0x65736C6166;
    }

    if (v6)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  if ([v3 registeredForVehicleLayoutKey])
  {
    v2 = CAFClosureStateObservable.vehicleLayoutKey.getter();
    v1 = v7;
  }

  _StringGuts.grow(_:)(72);
  MEMORY[0x245D0A530](0xD00000000000001CLL, 0x800000024230E360);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x686374616C207B20, 0xEF203A6574617453);
  MEMORY[0x245D0A530](v4, v5);

  MEMORY[0x245D0A530](0xD000000000000014, 0x800000024230DB40);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFClosureStateObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine25CAFClosureStateObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFClosureStateObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine25CAFClosureStateObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine25CAFClosureStateObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFClosureStateObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFClosureStateObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine25CAFClosureStateObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine25CAFClosureStateObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine25CAFClosureStateObservable__latchState;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFClosureStateObservableCSbGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFClosureStateObservableCSbGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v8 = OBJC_IVAR____TtC10CAFCombine25CAFClosureStateObservable__vehicleLayoutKey;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFClosureStateObservableCSSGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFClosureStateObservableCSSGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v8] = specialized SafePublished.init(observedValuekeypath:)();
  v9 = OBJC_IVAR____TtC10CAFCombine25CAFClosureStateObservable__name;
  swift_getKeyPath();
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v9] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine25CAFClosureStateObservable_observed] = a1;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for CAFClosureStateObservable();
  v10 = a1;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  [v10 registerObserver_];

  return v11;
}

uint64_t CAFClosureStateObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFClosureStateObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFClosureStateObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine25CAFClosureStateObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFClosureStateObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFClosureStateObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFClosureStateObservable@<X0>(void *a1@<X8>)
{
  result = CAFClosureStateObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFClosureStateObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFClosureStateObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFClosureStateObservable.closureStateService(_:didUpdateLatchState:)(uint64_t a1, char a2)
{

  specialized SafeReadOnlyPublished.value.setter(a2 & 1);
}

uint64_t CAFClosureStateObservable.closureStateService(_:didUpdateVehicleLayoutKey:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  specialized SafeReadOnlyPublished.value.setter(a2, a3);
}

double @objc CAFClosureStateObservable.closureStateService(_:didUpdateVehicleLayoutKey:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFClosureStateObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFClosureStateObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFClosureStateObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFClosureState()
{
  result = lazy cache variable for type metadata for CAFClosureState;
  if (!lazy cache variable for type metadata for CAFClosureState)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFClosureState);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFClosureStateObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFClosureStateObservable and conformance CAFClosureStateObservable(&lazy protocol witness table cache variable for type CAFClosureStateObservable and conformance CAFClosureStateObservable, a2, type metadata accessor for CAFClosureStateObservable, &protocol conformance descriptor for CAFClosureStateObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFClosureStateObservable and conformance CAFClosureStateObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFClosureStateObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine25CAFClosureStateObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFTargetSpeed.speedLimitedBridged.getter()
{
  if ([v0 hasSpeedLimited])
  {
    return [v0 speedLimited];
  }

  else
  {
    return 2;
  }
}

uint64_t CAFTargetSpeedObservable.targetSpeedState.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFTargetSpeedObservable_observed);

  v2 = v1;
  OUTLINED_FUNCTION_231(v2, v3, v4, v5, v6, v7, v8, v9, v1);

  return v11;
}

uint64_t CAFTargetSpeedObservable.speedKMH.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine24CAFTargetSpeedObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();
}

uint64_t CAFTargetSpeedObservable.speedLimited.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFTargetSpeedObservable_observed);

  v2 = v1;
  OUTLINED_FUNCTION_231(v2, v3, v4, v5, v6, v7, v8, v9, v1);

  return v11;
}

uint64_t CAFTargetSpeedObservable.$targetSpeedState.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3();
  v4 = a2(v3);

  return v4;
}

uint64_t CAFTargetSpeedObservable._description.getter()
{
  v1 = v0;
  v2 = 0xEE003E6465726574;
  v3 = 0x73696765726E753CLL;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  OUTLINED_FUNCTION_30();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFTargetSpeedObservable_observed);
  v11 = 0x73696765726E753CLL;
  v12 = 0xEE003E6465726574;
  if ([v10 registeredForTargetSpeedState])
  {
    CAFTargetSpeedObservable.targetSpeedState.getter();
    v13 = NSStringFromTargetSpeedState();
    if (v13)
    {
      v14 = v13;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v15;
    }

    else
    {
      v12 = 0xE900000000000029;
      v11 = 0x6E776F6E6B6E7528;
    }
  }

  v26 = v11;
  v27 = v12;
  v16 = 0x73696765726E753CLL;
  v17 = 0xEE003E6465726574;
  if ([v10 registeredForSpeedKMH])
  {
    CAFTargetSpeedObservable.speedKMH.getter();
    lazy protocol witness table accessor for type Measurement<NSUnitSpeed> and conformance Measurement<A>();
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v18;
    (*(v6 + 8))(v9, v4);
  }

  v19 = [v10 registeredForSpeedMPH];
  v20 = 0x73696765726E753CLL;
  v21 = 0xEE003E6465726574;
  if (v19)
  {
    CAFTargetSpeedObservable.speedMPH.getter();
    lazy protocol witness table accessor for type Measurement<NSUnitSpeed> and conformance Measurement<A>();
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v22;
    (*(v6 + 8))(v9, v4);
  }

  if ([v10 registeredForSpeedLimited])
  {
    LOBYTE(v29) = CAFTargetSpeedObservable.speedLimited.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v3 = String.init<A>(describing:)();
    v2 = v23;
  }

  v29 = 0;
  v30 = 0xE000000000000000;
  _StringGuts.grow(_:)(101);
  MEMORY[0x245D0A530](0xD00000000000001BLL, 0x800000024230E420);
  v28 = v1;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000015, 0x800000024230E440);
  MEMORY[0x245D0A530](v26, v27);

  MEMORY[0x245D0A530](0x4B6465657073202CLL, 0xEC000000203A484DLL);
  MEMORY[0x245D0A530](v25, v17);

  MEMORY[0x245D0A530](0x4D6465657073202CLL, 0xEC000000203A4850);
  MEMORY[0x245D0A530](v20, v21);

  MEMORY[0x245D0A530](0xD000000000000010, 0x800000024230E460);
  MEMORY[0x245D0A530](v3, v2);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return v29;
}

uint64_t CAFTargetSpeedObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine24CAFTargetSpeedObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFTargetSpeedObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine24CAFTargetSpeedObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine24CAFTargetSpeedObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFTargetSpeedObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFTargetSpeedObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine24CAFTargetSpeedObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine24CAFTargetSpeedObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine24CAFTargetSpeedObservable__targetSpeedState;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFTargetSpeedObservableCSo0fG5StateVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFTargetSpeedObservableCSo0fG5StateVGMR);
  swift_allocObject();
  v8 = OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v8, v9, v10, v11, v12, v13, v14, v15, v39.receiver, v39.super_class, v40, v41, v42, v43, v44, v45);
  *&v2[v7] = v16;
  v17 = OBJC_IVAR____TtC10CAFCombine24CAFTargetSpeedObservable__speedKMH;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFTargetSpeedObservableC10Foundation11MeasurementVySo06NSUnitG0CGGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFTargetSpeedObservableC10Foundation11MeasurementVySo06NSUnitG0CGGMR);
  swift_allocObject();
  v18 = OUTLINED_FUNCTION_0_7();
  *&v2[v17] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v18, v19, v20, v21, v22, v23, v24, v25, v39.receiver, v39.super_class, v40, v41, v42, v43, v44, v45, vars0, vars8);
  v26 = OBJC_IVAR____TtC10CAFCombine24CAFTargetSpeedObservable__speedMPH;
  swift_getKeyPath();
  swift_allocObject();
  v27 = OUTLINED_FUNCTION_0_7();
  *&v2[v26] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v27, v28, v29, v30, v31, v32, v33, v34, v39.receiver, v39.super_class, v40, v41, v42, v43, v44, v45, vars0, vars8);
  v35 = OBJC_IVAR____TtC10CAFCombine24CAFTargetSpeedObservable__speedLimited;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFTargetSpeedObservableCSbSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA24CAFTargetSpeedObservableCSbSgGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v35] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine24CAFTargetSpeedObservable_observed] = a1;
  v39.receiver = v2;
  v39.super_class = type metadata accessor for CAFTargetSpeedObservable();
  v36 = a1;
  v37 = objc_msgSendSuper2(&v39, sel_init);
  [v36 registerObserver_];

  return v37;
}

uint64_t CAFTargetSpeedObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine24CAFTargetSpeedObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFTargetSpeedObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine24CAFTargetSpeedObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFTargetSpeedObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFTargetSpeedObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFTargetSpeedObservable@<X0>(void *a1@<X8>)
{
  result = CAFTargetSpeedObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFTargetSpeedObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFTargetSpeedObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFTargetSpeedObservable.targetSpeedService(_:didUpdateTargetSpeedState:)(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFTargetSpeedObservable.targetSpeedService(_:didUpdateSpeedKMH:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.setValue(_:)();
}

uint64_t @objc CAFTargetSpeedObservable.targetSpeedService(_:didUpdateSpeedKMH:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  OUTLINED_FUNCTION_30();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitSpeed, 0x277CCAE40);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = a1;
  a5();

  return (*(v10 + 8))(v13, v8);
}

uint64_t CAFTargetSpeedObservable.targetSpeedService(_:didUpdateSpeedLimited:)(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2 & 1);
}

uint64_t CAFTargetSpeedObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFTargetSpeedObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFTargetSpeedObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFTargetSpeed.speedKMH : CAFTargetSpeed(id *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v4 = [*a1 *a4];
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitSpeed, 0x277CCAE40);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
}

unint64_t lazy protocol witness table accessor for type CAFTargetSpeed and conformance CAFTargetSpeed()
{
  result = lazy protocol witness table cache variable for type CAFTargetSpeed and conformance CAFTargetSpeed;
  if (!lazy protocol witness table cache variable for type CAFTargetSpeed and conformance CAFTargetSpeed)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFTargetSpeed, 0x277CF86A8);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFTargetSpeed and conformance CAFTargetSpeed);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFTargetSpeedObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFTargetSpeedObservable and conformance CAFTargetSpeedObservable(&lazy protocol witness table cache variable for type CAFTargetSpeedObservable and conformance CAFTargetSpeedObservable, &protocol conformance descriptor for CAFTargetSpeedObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFTargetSpeedObservable and conformance CAFTargetSpeedObservable(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFTargetSpeedObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double partial apply for closure #1 in CAFTargetSpeedObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine24CAFTargetSpeedObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

unint64_t lazy protocol witness table accessor for type Measurement<NSUnitSpeed> and conformance Measurement<A>()
{
  result = lazy protocol witness table cache variable for type Measurement<NSUnitSpeed> and conformance Measurement<A>;
  if (!lazy protocol witness table cache variable for type Measurement<NSUnitSpeed> and conformance Measurement<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Measurement<NSUnitSpeed> and conformance Measurement<A>);
  }

  return result;
}

unint64_t CAFDriveMode.defaultIndexBridged.getter()
{
  v1 = [v0 hasDefaultIndex];
  v2 = v1;
  if (v1)
  {
    v3 = [v0 defaultIndex];
  }

  else
  {
    v3 = 0;
  }

  return v3 | ((v2 ^ 1u) << 32);
}

uint64_t CAFDriveMode.hiddenBridged.getter()
{
  if ([v0 hasHidden])
  {
    return [v0 hidden];
  }

  else
  {
    return 2;
  }
}

uint64_t CAFDriveModeObservable.identifiers.getter()
{
  OUTLINED_FUNCTION_228();
  OUTLINED_FUNCTION_7_4();

  v1 = v0;
  swift_getAtKeyPath();

  return v3;
}

uint64_t CAFDriveModeObservable.currentIndex.getter()
{
  OUTLINED_FUNCTION_228();
  OUTLINED_FUNCTION_7_4();

  v1 = v0;
  swift_getAtKeyPath();

  return v3;
}

unint64_t CAFDriveModeObservable.defaultIndex.getter()
{
  OUTLINED_FUNCTION_228();
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine22CAFDriveModeObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4 | (v5 << 32);
}

uint64_t CAFDriveModeObservable.hidden.getter()
{
  OUTLINED_FUNCTION_228();
  OUTLINED_FUNCTION_7_4();

  v1 = v0;
  swift_getAtKeyPath();

  return v3;
}

uint64_t CAFDriveModeObservable.$identifiers.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3();
  v4 = a2(v3);

  return v4;
}

uint64_t CAFDriveModeObservable._description.getter()
{
  if ([*(v0 + OBJC_IVAR____TtC10CAFCombine22CAFDriveModeObservable_observed) registeredForHidden])
  {
    CAFDriveModeObservable.hidden.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v1 = String.init<A>(describing:)();
    v3 = v2;
  }

  else
  {
    v3 = 0xEE003E6465726574;
    v1 = 0x73696765726E753CLL;
  }

  _StringGuts.grow(_:)(43);
  MEMORY[0x245D0A530](0xD000000000000019, 0x800000024230E510);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x6564646968207B20, 0xEB00000000203A6ELL);
  MEMORY[0x245D0A530](v1, v3);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFDriveModeObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine22CAFDriveModeObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine22CAFDriveModeObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine22CAFDriveModeObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine22CAFDriveModeObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFDriveModeObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFDriveModeObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine22CAFDriveModeObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine22CAFDriveModeObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine22CAFDriveModeObservable__identifiers;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA22CAFDriveModeObservableCSaySSGGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA22CAFDriveModeObservableCSaySSGGMR);
  OUTLINED_FUNCTION_225(v8);
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  v9 = OBJC_IVAR____TtC10CAFCombine22CAFDriveModeObservable__currentIndex;
  swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA22CAFDriveModeObservableCs6UInt32VGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA22CAFDriveModeObservableCs6UInt32VGMR);
  OUTLINED_FUNCTION_225(v10);
  v11 = OUTLINED_FUNCTION_0_7();
  *&v2[v9] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v11);
  v12 = OBJC_IVAR____TtC10CAFCombine22CAFDriveModeObservable__defaultIndex;
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA22CAFDriveModeObservableCs6UInt32VSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA22CAFDriveModeObservableCs6UInt32VSgGMR);
  OUTLINED_FUNCTION_225(v13);
  v14 = OUTLINED_FUNCTION_0_7();
  *&v2[v12] = specialized SafePublished.init(observedValuekeypath:)(v14);
  v15 = OBJC_IVAR____TtC10CAFCombine22CAFDriveModeObservable__hidden;
  swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA22CAFDriveModeObservableCSbSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA22CAFDriveModeObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v16);
  OUTLINED_FUNCTION_0_7();
  *&v2[v15] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine22CAFDriveModeObservable_observed] = a1;
  v20.receiver = v2;
  v20.super_class = type metadata accessor for CAFDriveModeObservable();
  v17 = a1;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  [v17 registerObserver_];

  return v18;
}

uint64_t CAFDriveModeObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine22CAFDriveModeObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFDriveModeObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine22CAFDriveModeObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFDriveModeObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFDriveModeObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFDriveModeObservable@<X0>(void *a1@<X8>)
{
  result = CAFDriveModeObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFDriveModeObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFDriveModeObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFDriveModeObservable.modeItemsService(_:didUpdateIdentifiers:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_17_3();

  specialized SafeReadOnlyPublished.value.setter(v2);
}

uint64_t CAFDriveModeObservable.modeItemsService(_:didUpdateCurrentIndex:)(uint64_t a1, unsigned int a2)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFDriveModeObservable.modeItemsService(_:didUpdateDefaultIndex:)(uint64_t a1, unsigned int a2)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFDriveModeObservable.driveModeService(_:didUpdateHidden:)(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2 & 1);
}

uint64_t CAFDriveModeObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFDriveModeObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFDriveModeObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFModeItems.identifiers : CAFDriveMode(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifiers];
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *a2 = v4;
}

unint64_t key path getter for CAFDriveMode.defaultIndexBridged : CAFDriveMode@<X0>(uint64_t a1@<X8>)
{
  result = CAFDriveMode.defaultIndexBridged.getter();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t type metadata accessor for CAFDriveMode()
{
  result = lazy cache variable for type metadata for CAFDriveMode;
  if (!lazy cache variable for type metadata for CAFDriveMode)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFDriveMode);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFDriveModeObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFDriveModeObservable and conformance CAFDriveModeObservable(&lazy protocol witness table cache variable for type CAFDriveModeObservable and conformance CAFDriveModeObservable, a2, type metadata accessor for CAFDriveModeObservable, &protocol conformance descriptor for CAFDriveModeObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFDriveModeObservable and conformance CAFDriveModeObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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