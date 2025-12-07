uint64_t UIKitBarButtonItem.item.didset()
{
  v1 = MEMORY[0x1E69E6720];
  type metadata accessor for ToolbarStorage.Item?(0, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13[-v3 - 8];
  v5 = type metadata accessor for ToolbarStorage.Item(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_item;
  swift_beginAccess();
  _s7SwiftUI16PlatformItemListV0D0VSgWOcTm_0(v0 + v9, v4, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, v1, type metadata accessor for ToolbarStorage.Item?);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(v4, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage.Item?);
  }

  _s7SwiftUI16PlatformItemListV0D0VWObTm_2(v4, v8, type metadata accessor for ToolbarStorage.Item);
  outlined init with copy of _ViewList_View((v8 + 184), v13);
  v11 = *(v0 + OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_edge);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v13[96] = v11;
  v13[97] = 0;
  UIKitBarButtonItem.updateHost(rootView:)(v13);
  outlined destroy of BarItemView(v13);
  return _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v8, type metadata accessor for ToolbarStorage.Item);
}

void UIKitBarButtonItem.updateHost(rootView:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for ToolbarStorage.Item?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20[-v5];
  v7 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_host;
  v8 = *&v2[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_host];
  outlined init with copy of BarItemView(a1, v22);
  outlined init with copy of BarItemView(v22, v21);
  v9 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x60);
  swift_beginAccess();
  v10 = v8;
  outlined assign with take of BarItemView(v21, v8 + v9);
  swift_endAccess();
  _s7SwiftUI16UIKitBarItemHostCyAA0dE4ViewVGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<BarItemView>, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for _UIHostingView);
  lazy protocol witness table accessor for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>();
  ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

  outlined destroy of BarItemView(v22);
  v11 = &v2[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_item];
  swift_beginAccess();
  v12 = type metadata accessor for ToolbarStorage.Item(0);
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    v13 = v11[170];
    if (v13 >= 2)
    {
      if (v13 != 2)
      {
        goto LABEL_7;
      }

      v14 = 1;
    }

    else
    {
      v14 = 0;
    }

    [v2 _setPrefersNoPlatter_];
  }

LABEL_7:
  v15 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_platformItem;
  swift_beginAccess();
  v16 = MEMORY[0x1E69E6720];
  _s7SwiftUI16PlatformItemListV0D0VSgWOcTm_0(&v2[v15], v6, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage.Item?);
  v17 = type metadata accessor for PlatformItemList.Item(0);
  LODWORD(v15) = (*(*(v17 - 8) + 48))(v6, 1, v17);
  _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(v6, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, v16, type metadata accessor for ToolbarStorage.Item?);
  if (v15 != 1)
  {
    v18 = UIKitBarButtonItem.allowsBridging()();
    UIKitBarButtonItem.updateStyleAndTint(isBridged:role:buttonTint:)(v18 & 1, v18 >> 8, 0);
  }

  v19 = [*&v2[v7] window];
  if (v19)
  {
  }

  else
  {
    MEMORY[0x1EEE9AC00](0);
    *&v20[-16] = v2;
    static Update.ensure<A>(_:)();
  }
}

uint64_t assignWithCopy for BarItemView(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  v4 = *(a1 + 88);
  v5 = *(a2 + 88);
  *(a1 + 88) = v5;
  v6 = v5;

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 97) = *(a2 + 97);
  swift_unknownObjectWeakCopyAssign();
  return a1;
}

_BYTE *assignWithCopy for BarItemModifier(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  swift_unknownObjectWeakCopyAssign();
  return a1;
}

void closure #1 in UIKitBarButtonItem.updateHost(rootView:)(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_host);
  _s7SwiftUI16UIKitBarItemHostCyAA0dE4ViewVGMaTm_0(0, &lazy cache variable for type metadata for UIKitBarItemHost<BarItemView>, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for UIKitBarItemHost);
  lazy protocol witness table accessor for type UIKitBarItemHost<BarItemView> and conformance _UIHostingView<A>();
  v2 = v1;
  ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)();
}

uint64_t outlined init with copy of PopoverPresentation?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for PopoverPresentation?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined assign with copy of PopoverPresentation?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PopoverPresentation?(0, &lazy cache variable for type metadata for PopoverPresentation?, &type metadata for PopoverPresentation, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

BOOL protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance PaletteSelectionEffectKey(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 >> 8 == 4)
  {
    return (v5 & 0xFF00) == 0x400;
  }

  if (v4 >> 8 == 5)
  {
    return (v5 & 0xFF00) == 0x500;
  }

  if (((v5 >> 8) & 0xFE) == 4)
  {
    return 0;
  }

  v9 = v2;
  v10 = v3;
  v8 = v4;
  v7 = v5;
  return MEMORY[0x18D004D70](&v8, &v7) & 1;
}

uint64_t specialized ButtonDisplayList.value.getter(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = HIDWORD(a3);
  type metadata accessor for CGPoint(0);
  AGGraphGetValue();
  AGGraphGetValue();
  Value = AGGraphGetValue();
  v6 = Value[1];
  v26 = *Value;
  v27 = v6;
  MEMORY[0x18D00B390]();
  v7 = type metadata accessor for HostingUIButton();
  [*AGGraphGetValue() alignmentRectInsets];
  AGGraphGetValue();
  CGRect.outset(by:)();
  v8 = swift_allocObject();
  v9 = *AGGraphGetValue();
  v8[5] = v7;
  v8[6] = lazy protocol witness table accessor for type ArchivableFactory<ArchivableAccessibilityViewModifier> and conformance ArchivableFactory<A>(&lazy protocol witness table cache variable for type HostingUIButton and conformance UIKitButtonBase, type metadata accessor for HostingUIButton, protocol conformance descriptor for UIKitButtonBase);
  v8[2] = v9;
  v10 = *MEMORY[0x1E698D3F8];
  v11 = v9;
  if (v10 == v4)
  {
    DisplayList.init()();
    v12 = v23;
    v13 = v24;
    v14 = v25;
  }

  else
  {
    v15 = AGGraphGetValue();
    v13 = *(v15 + 8);
    v14 = *(v15 + 12);
  }

  *&v19 = v8;
  *(&v19 + 1) = 0x300000000;
  *&v20 = v12;
  *(&v20 + 1) = v13 | (v14 << 32) | 0x40000000;
  DisplayList.Version.init(forUpdate:)();
  DisplayList.Item.init(_:frame:identity:version:)();
  LOBYTE(v19) = 0;
  DisplayList.Item.canonicalize(options:)();
  v17[2] = v28;
  v18[0] = v29[0];
  *(v18 + 12) = *(v29 + 12);
  v17[0] = v26;
  v17[1] = v27;
  outlined init with copy of DisplayList.Item(v17, &v19);
  DisplayList.init(_:)();
  v21 = v28;
  v22[0] = v29[0];
  *(v22 + 12) = *(v29 + 12);
  v19 = v26;
  v20 = v27;
  return outlined destroy of DisplayList.Item(&v19);
}

uint64_t sub_18C028EF4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

double UpdateUIButton.updateValue()()
{
  v1 = v0;
  v17[2] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for UIKitFlattenedButtonAdaptorStorage(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  v7 = v6;
  outlined init with copy of UIKitFlattenedButtonAdaptorStorage(Value, v4);
  AGGraphGetValue();
  if ((v7 & 1) != 0 || (v9 = v8, type metadata accessor for HostingUIButton(), !AGGraphGetOutputValue()))
  {

    v10 = 1;
    if (!*(v1 + 64))
    {
      goto LABEL_10;
    }
  }

  else if (v9)
  {

    swift_retain_n();
    v10 = PropertyList.Tracker.hasDifferentUsedValues(_:)();

    if (!*(v1 + 64))
    {
      goto LABEL_10;
    }
  }

  else
  {

    v10 = 0;
    if (!*(v1 + 64))
    {
LABEL_10:
      v11 = *(v4 + 1);
      v12 = *(v4 + 2);
      objc_allocWithZone(type metadata accessor for UIKitButtonAdaptorCoordinator());
      outlined copy of AppIntentExecutor?(v11, v12);
      v13 = UIKitButtonAdaptorCoordinator.init(action:)(v11, v12);

      *(v1 + 72) = v13;
      updated = UpdateUIButton.makeButton()();
      *(v1 + 64) = updated;
      v17[0] = updated;
      type metadata accessor for HostingUIButton();
      AGGraphSetOutputValue();
      if ((v10 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }
  }

  if ((v10 & 1) == 0)
  {
LABEL_11:
    outlined destroy of UIKitFlattenedButtonAdaptorStorage(v4, type metadata accessor for UIKitFlattenedButtonAdaptorStorage);

    goto LABEL_12;
  }

LABEL_8:
  PropertyList.Tracker.reset()();

  EnvironmentValues.init(_:tracker:)();
  UpdateUIButton.updateButton(environment:)(v17);

  outlined destroy of UIKitFlattenedButtonAdaptorStorage(v4, type metadata accessor for UIKitFlattenedButtonAdaptorStorage);

LABEL_12:

  return result;
}

uint64_t outlined init with copy of UIKitFlattenedButtonAdaptorStorage(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIKitFlattenedButtonAdaptorStorage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t initializeWithCopy for UIKitFlattenedButtonAdaptorStorage(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = *(a2 + 16);
    *(a1 + 8) = v6;
    *(a1 + 16) = v7;
  }

  else
  {
    *(a1 + 8) = *(a2 + 8);
  }

  v8 = *(a2 + 56);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 37) = *(a2 + 37);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  if (v8)
  {
    v9 = *(a2 + 64);
    *(a1 + 56) = v8;
    *(a1 + 64) = v9;
  }

  else
  {
    *(a1 + 56) = *(a2 + 56);
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  v10 = a3[7];
  v11 = type metadata accessor for UIButton.Configuration();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a2 + v10, 1, v11))
  {
    _sSo8UIButtonC5UIKitE13ConfigurationVSgMaTm_0(0, &lazy cache variable for type metadata for UIButton.Configuration?, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
    memcpy((a1 + v10), (a2 + v10), *(*(v13 - 8) + 64));
  }

  else
  {
    (*(v12 + 16))(a1 + v10, a2 + v10, v11);
    (*(v12 + 56))(a1 + v10, 0, 1, v11);
  }

  v14 = a3[8];
  v15 = a1 + v14;
  v16 = a2 + v14;
  v17 = *(v16 + 8);
  if (v17)
  {
    *v15 = *v16;
    *(v15 + 8) = v17;
    *(v15 + 16) = *(v16 + 16);
  }

  else
  {
    *v15 = *v16;
    *(v15 + 16) = *(v16 + 16);
  }

  v18 = a3[9];
  v19 = a1 + v18;
  v20 = a2 + v18;
  v21 = *(v20 + 8);
  if (v21)
  {
    *v19 = *v20;
    *(v19 + 8) = v21;
    *(v19 + 16) = *(v20 + 16);
  }

  else
  {
    *v19 = *v20;
    *(v19 + 16) = *(v20 + 16);
  }

  return a1;
}

id UIKitButtonAdaptorCoordinator.init(action:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_action];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v2[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_menuAttribute];
  *v7 = 0;
  v7[8] = 1;
  v8 = &v2[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_menuTitle];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v2[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_onMenuPresentationChanged];
  *v9 = 0;
  v9[1] = 0;
  v2[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_menuControlGroupSize] = 2;
  *&v2[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_effectiveLabelStyle] = 0;
  *&v2[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_menuChangeDetector] = 0;
  *&v2[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_sheetBridgeToken] = 0;
  *&v2[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_popoverBridgeToken] = 0;
  *v6 = a1;
  v6[1] = a2;
  v11.receiver = v2;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t UpdateUIButton.makeButton()()
{
  _sSo8UIButtonC5UIKitE13ConfigurationVSgMaTm_0(0, &lazy cache variable for type metadata for UIButton.Configuration?, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for UIButton.Configuration();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  AGGraphClearUpdate();
  Value = AGGraphGetValue();
  v15 = *Value;
  v16 = Value[1];

  AGGraphSetUpdate();
  v29 = v15;
  v30 = v16;
  v31 = v15;
  v32 = v16;
  UpdateUIButton.constants(environment:)(&v31, v33);
  v28 = UIKitButtonAdaptorConstants.resolvedOptions.getter();
  v17 = type metadata accessor for UIKitFlattenedButtonAdaptorStorage(0);
  v18 = AGGraphGetValue();
  outlined init with copy of UIButton.Configuration?(v18 + *(v17 + 28), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of UIButton.Configuration?(v6);
    type metadata accessor for HostingUIButton();
    v19 = *(AGGraphGetValue() + 96);
    v20 = [swift_getObjCClassFromMetadata() buttonWithType_];
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    type metadata accessor for HostingUIButton();
    (*(v8 + 16))(v10, v13, v7);
    v20 = UIButton.init(configuration:primaryAction:)();
    (*(v8 + 8))(v13, v7);
  }

  swift_unknownObjectWeakLoadStrong();
  *&v20[OBJC_IVAR____TtC7SwiftUI15HostingUIButton_host + 8] = *(v0 + 48);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v22 = v29;
  if ((v28 & 8) != 0)
  {
    LODWORD(v21) = 1132068864;
    [v20 setContentCompressionResistancePriority:0 forAxis:v21];
    v31 = v22;
    v32 = v30;
    v23 = v20;
    EnvironmentValues.hasGlassEffect.getter();
    UIKitButtonAdaptorConstants.resolvedConfiguration(hasGlassEffect:)();
    (*(v8 + 56))(v3, 0, 1, v7);
    UIButton.configuration.setter();
  }

  AGGraphGetValue();
  if ((Axis.Set.contains(_:)() & 1) == 0)
  {
    LODWORD(v24) = 1144750080;
    [v20 setContentHuggingPriority:0 forAxis:v24];
  }

  AGGraphGetValue();
  result = Axis.Set.contains(_:)();
  if ((result & 1) == 0)
  {
    LODWORD(v26) = 1144750080;
    result = [v20 setContentHuggingPriority:1 forAxis:v26];
  }

  v27 = *(v0 + 72);
  if (v27)
  {
    [v20 addTarget:v27 action:sel_primaryActionTriggered_ forControlEvents:0x2000];

    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 UpdateUIButton.constants(environment:)@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for UIKitFlattenedButtonAdaptorStorage(0);
  v6 = *(AGGraphGetValue() + 88);
  v7 = MEMORY[0x18D0064D0]();
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuIndicatorVisibilityKey>, &type metadata for MenuIndicatorVisibilityKey, &protocol witness table for MenuIndicatorVisibilityKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuIndicatorVisibilityKey>, &type metadata for MenuIndicatorVisibilityKey, &protocol witness table for MenuIndicatorVisibilityKey);
  if (v5)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v8 = EnvironmentValues.isHoverEffectEnabled.getter();
  a2->n128_u64[0] = v6;
  a2->n128_u8[8] = v7 & 1;
  a2->n128_u8[9] = v4;
  result = v2[1];
  a2[1] = result;
  a2[2].n128_u8[0] = v8 & 1;
  return result;
}

uint64_t UIKitButtonAdaptorConstants.resolvedOptions.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle();
  if (v2 == &type metadata for PlainButtonStyle)
  {
    if ((v1 & 2) != 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    v1 |= 2uLL;
    goto LABEL_8;
  }

  lazy protocol witness table accessor for type AnyButtonStyleType.Unknown and conformance AnyButtonStyleType.Unknown();
  if (v2 == &type metadata for AnyButtonStyleType.Unknown && (v1 & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  lazy protocol witness table accessor for type BorderedButtonStyle and conformance BorderedButtonStyle();
  if (v2 == &type metadata for BorderedButtonStyle)
  {
    v4 = v1 | 4;
  }

  else
  {
    v4 = v1;
  }

  if (*(v0 + 32))
  {
    return v4 | 0x400;
  }

  else
  {
    return v4;
  }
}

void UpdateUIButton.updateButton(environment:)(uint64_t *a1)
{
  v3 = type metadata accessor for PlatformItemList.Item(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v88[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for UIKitFlattenedButtonAdaptorStorage(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v88[-v11];
  v13 = *(v1 + 64);
  if (v13)
  {
    v14 = *(v1 + 72);
    if (v14)
    {
      v93 = v10;
      v94 = v9;
      v90 = v5;
      v15 = *a1;
      v16 = a1[1];
      v17 = v14;
      v18 = v13;
      v92 = v6;
      Value = AGGraphGetValue();
      outlined init with copy of UIKitFlattenedButtonAdaptorStorage(Value, v12);
      v100 = v15;
      v101 = v16;
      v95 = v1;
      UpdateUIButton.constants(environment:)(&v100, v104);
      v20 = UIKitButtonAdaptorConstants.resolvedOptions.getter();
      v21 = *(v12 + 1);
      v22 = *(v12 + 2);
      v98 = v17;
      v23 = &v17[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_action];
      v24 = v18;
      v25 = *v23;
      v26 = v23[1];
      *v23 = v21;
      v23[1] = v22;
      v91 = v21;
      outlined copy of AppIntentExecutor?(v21, v22);
      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v25, v26);
      v100 = v15;
      v101 = v16;
      UIView.adoptEnvironment(_:hostedSubview:)(&v100, v24);
      v99 = v15;
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuOrderKey>, &type metadata for MenuOrderKey, &protocol witness table for MenuOrderKey);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuOrderKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuOrderKey>, &type metadata for MenuOrderKey, &protocol witness table for MenuOrderKey);
      v27 = v24;
      if (v16)
      {

        PropertyList.Tracker.value<A>(_:for:)();
      }

      else
      {
        PropertyList.subscript.getter();
      }

      [v24 setPreferredMenuElementOrder_];
      if ((~v20 & 0x28) == 0)
      {
        v100 = v99;
        v101 = v16;
        v28 = EnvironmentValues.tintColor.getter();
        if (!v28)
        {
          v28 = static Color.secondary.getter();
        }

        v29 = v28;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
        v30 = UIColor.init(_:)(v29);
        [v24 setTintColor_];
      }

      v96 = v20;
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonKeyboardShortcutKey>, &type metadata for ButtonKeyboardShortcutKey, &protocol witness table for ButtonKeyboardShortcutKey);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonKeyboardShortcutKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonKeyboardShortcutKey>, &type metadata for ButtonKeyboardShortcutKey, &protocol witness table for ButtonKeyboardShortcutKey);
      if (v16)
      {

        PropertyList.Tracker.value<A>(_:for:)();
      }

      else
      {
        PropertyList.subscript.getter();
      }

      v32 = v100;
      v31 = v101;
      v33 = v102;
      v34 = v103;
      if (one-time initialization token for defaultAction != -1)
      {
        swift_once();
      }

      if (v31)
      {
        if (qword_1ED57A6B8)
        {
          v97 = v12;
          v35 = v98;
          v36 = qword_1ED57A6C0;
          v89 = byte_1ED57A6C8;
          if (v32 == static KeyboardShortcut.defaultAction && v31 == qword_1ED57A6B8 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v33 == v36)
          {

            v37 = v35;
            v12 = v97;
            if (v34 == v89)
            {
              v38 = 1;
              goto LABEL_35;
            }
          }

          else
          {

            swift_bridgeObjectRelease_n();
            v37 = v35;
            v12 = v97;
          }

          goto LABEL_27;
        }
      }

      else
      {
        if (!qword_1ED57A6B8)
        {

          v38 = 1;
          v37 = v98;
          goto LABEL_35;
        }
      }

      v37 = v98;

LABEL_27:
      v39 = *v12;
      if (v39 == 4)
      {
        v38 = 0;
      }

      else
      {
        v40 = 3;
        if (*v12)
        {
          v40 = 0;
        }

        if (v39 == 1)
        {
          v38 = 2;
        }

        else
        {
          v38 = v40;
        }
      }

LABEL_35:
      [v24 setRole_];
      v41 = v12[36];
      v42 = &v37[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_menuAttribute];
      *v42 = *(v12 + 28);
      LODWORD(v97) = v41;
      v42[8] = v41;
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuControlGroupSizeKey>, &type metadata for MenuControlGroupSizeKey, &protocol witness table for MenuControlGroupSizeKey);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuControlGroupSizeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuControlGroupSizeKey>, &type metadata for MenuControlGroupSizeKey, &protocol witness table for MenuControlGroupSizeKey);
      if (v16)
      {

        PropertyList.Tracker.value<A>(_:for:)();

        v37[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_menuControlGroupSize] = v100;
        type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EffectiveLabelStyleKey>, &type metadata for EffectiveLabelStyleKey, &protocol witness table for EffectiveLabelStyleKey);
        lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EffectiveLabelStyleKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EffectiveLabelStyleKey>, &type metadata for EffectiveLabelStyleKey, &protocol witness table for EffectiveLabelStyleKey);

        PropertyList.Tracker.value<A>(_:for:)();
      }

      else
      {
        PropertyList.subscript.getter();
        v37[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_menuControlGroupSize] = v100;
        type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EffectiveLabelStyleKey>, &type metadata for EffectiveLabelStyleKey, &protocol witness table for EffectiveLabelStyleKey);
        lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EffectiveLabelStyleKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EffectiveLabelStyleKey>, &type metadata for EffectiveLabelStyleKey, &protocol witness table for EffectiveLabelStyleKey);
        PropertyList.subscript.getter();
      }

      *&v37[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_effectiveLabelStyle] = v100;
      *&v24[OBJC_IVAR____TtC7SwiftUI15UIKitButtonBase_delegate + 8] = &protocol witness table for UIKitButtonAdaptorCoordinator;
      swift_unknownObjectWeakAssign();
      v43 = &v12[*(v92 + 32)];
      v44 = *v43;
      v45 = *(v43 + 1);
      v46 = &v24[OBJC_IVAR____TtC7SwiftUI15HostingUIButton_isPressed];
      v47 = *&v24[OBJC_IVAR____TtC7SwiftUI15HostingUIButton_isPressed];
      v48 = *&v24[OBJC_IVAR____TtC7SwiftUI15HostingUIButton_isPressed + 8];
      v49 = v43[16];
      *v46 = *v43;
      *(v46 + 1) = v45;
      v50 = v12;
      v51 = v37;
      v46[16] = v49;
      outlined copy of Binding<Int>?(v44, v45);
      outlined consume of Binding<NavigationSplitViewColumn>?(v47, v48);
      v52 = *(v50 + 56);
      v53 = *(v50 + 64);
      v54 = v50;
      v55 = v94;
      outlined init with copy of UIKitFlattenedButtonAdaptorStorage(v50, v94);
      v56 = (*(v93 + 80) + 16) & ~*(v93 + 80);
      v57 = (v7 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
      v58 = swift_allocObject();
      outlined init with take of UIKitFlattenedButtonAdaptorStorage(v55, v58 + v56);
      v59 = (v58 + v57);
      *v59 = v52;
      v59[1] = v53;
      v60 = &v51[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_onMenuPresentationChanged];
      v61 = *&v51[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_onMenuPresentationChanged];
      v62 = *&v51[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_onMenuPresentationChanged + 8];
      *v60 = partial apply for closure #1 in UpdateUIButton.updateButton(environment:);
      v60[1] = v58;
      outlined copy of AppIntentExecutor?(v52, v53);
      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v61, v62);
      v63 = (v91 == 0) & ~v97;
      v64 = v24;
      if (v63 != [v64 showsMenuAsPrimaryAction])
      {
        [v64 setShowsMenuAsPrimaryAction_];
      }

      v65 = v95;
      *&v64[OBJC_IVAR____TtC7SwiftUI15HostingUIButton_childLayoutComputer] = AGCreateWeakAttribute();
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_disableMenuSourcePresentation>, &type metadata for EnvironmentValues.__Key_disableMenuSourcePresentation, &protocol witness table for EnvironmentValues.__Key_disableMenuSourcePresentation);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_disableMenuSourcePresentation> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_disableMenuSourcePresentation>, &type metadata for EnvironmentValues.__Key_disableMenuSourcePresentation, &protocol witness table for EnvironmentValues.__Key_disableMenuSourcePresentation);
      if (v16)
      {

        PropertyList.Tracker.value<A>(_:for:)();
      }

      else
      {
        PropertyList.subscript.getter();
      }

      v66 = v54;
      [v64 setShowsMenuFromSource_];
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuOrderKey>, &type metadata for MenuOrderKey, &protocol witness table for MenuOrderKey);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuOrderKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuOrderKey>, &type metadata for MenuOrderKey, &protocol witness table for MenuOrderKey);
      if (v16)
      {

        PropertyList.Tracker.value<A>(_:for:)();
      }

      else
      {
        PropertyList.subscript.getter();
      }

      [v64 setPreferredMenuElementOrder_];
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarButtonHoverShapeKey>, &type metadata for EnvironmentValues.ToolbarButtonHoverShapeKey, &protocol witness table for EnvironmentValues.ToolbarButtonHoverShapeKey);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ToolbarButtonHoverShapeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarButtonHoverShapeKey>, &type metadata for EnvironmentValues.ToolbarButtonHoverShapeKey, &protocol witness table for EnvironmentValues.ToolbarButtonHoverShapeKey);
      if (v16)
      {

        PropertyList.Tracker.value<A>(_:for:)();
      }

      else
      {
        PropertyList.subscript.getter();
      }

      v67 = v100 | (BYTE2(v100) << 16);
      if ((v100 & 0xFF00) != 0x200)
      {
        v68 = swift_allocObject();
        v68[16] = v67;
        v68[17] = BYTE1(v67) & 1;
        v68[18] = BYTE2(v67) & 1;
      }

      UIButton.pointerStyleProvider.setter();
      if (*(v65 + 32) == 1)
      {
        type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SpringLoadingBehavior.Key>, &type metadata for SpringLoadingBehavior.Key, &protocol witness table for SpringLoadingBehavior.Key);
        lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SpringLoadingBehavior.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SpringLoadingBehavior.Key>, &type metadata for SpringLoadingBehavior.Key, &protocol witness table for SpringLoadingBehavior.Key);
        if (v16)
        {

          PropertyList.Tracker.value<A>(_:for:)();
        }

        else
        {
          PropertyList.subscript.getter();
        }

        [v64 setSpringLoaded_];
      }

      if (v97)
      {
        goto LABEL_68;
      }

      v69 = *MEMORY[0x1E698D3F8];
      if (v96)
      {
        AGGraphClearUpdate();
        if (*(v65 + 60) == v69)
        {
          v71 = 0;
          v72 = 0;
        }

        else
        {
          AGGraphGetValue();

          v74 = v90;
          PlatformItemList.mergedContentItem.getter(v73, v90);

          v75 = v74[112];
          if (v75 || (v75 = *v74) != 0)
          {
            v76 = [v75 string];
            v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v72 = v77;
          }

          else
          {
            v71 = 0;
            v72 = 0;
          }

          outlined destroy of UIKitFlattenedButtonAdaptorStorage(v74, type metadata accessor for PlatformItemList.Item);
        }

        AGGraphSetUpdate();
        v78 = &v98[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_menuTitle];
        *v78 = v71;
        v78[1] = v72;
      }

      else
      {
        v70 = &v98[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_menuTitle];
        *v70 = 0;
        *(v70 + 1) = 0;
      }

      v79 = [v64 menu];
      if (v79)
      {

LABEL_68:
        v80 = v98;
LABEL_69:
        [v64 setSelected_];

        outlined destroy of UIKitFlattenedButtonAdaptorStorage(v66, type metadata accessor for UIKitFlattenedButtonAdaptorStorage);
        return;
      }

      if ((v96 & 0x80) != 0)
      {
        UIKitButtonAdaptorCoordinator.makeMenu()(v96);
        v82 = v81;
        [v64 setMenu_];
        if (!v82)
        {
LABEL_78:
          [v64 setChangesSelectionAsPrimaryAction_];

          v80 = v98;
          [v64 addTarget:v98 action:sel_menuActionTriggered_ forControlEvents:0x4000];
          goto LABEL_69;
        }

        if ((*(v66 + 48) & 1) == 0)
        {
          Attribute = AGWeakAttributeGetAttribute();
          if (Attribute != v69)
          {
            MEMORY[0x1EEE9AC00](Attribute);
            MEMORY[0x1EEE9AC00](v84);
            AGGraphMutateAttribute();

            goto LABEL_78;
          }
        }
      }

      else
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu, 0x1E69DCC60);
        v85._countAndFlagsBits = 0;
        v85._object = 0xE000000000000000;
        v105.value.super.isa = 0;
        v105.is_nil = 0;
        UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(MEMORY[0x1E69E7CC0], v85, 0, v105, 0, 0xFFFFFFFFFFFFFFFFLL, MEMORY[0x1E69E7CC0], v87);
        v82 = v86;
        [v64 setMenu_];
      }

      goto LABEL_78;
    }
  }
}

uint64_t sub_18C02ACDC()
{
  v1 = type metadata accessor for UIKitFlattenedButtonAdaptorStorage(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  if (*(v0 + v2 + 8))
  {
  }

  if (*(v4 + 56))
  {
  }

  v5 = v3 + v2;
  v6 = v1[7];
  v7 = type metadata accessor for UIButton.Configuration();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  if (*(v4 + v1[8] + 8))
  {
  }

  if (*(v4 + v1[9] + 8))
  {
  }

  if (*(v0 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8)))
  {
  }

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuControlGroupSizeKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuControlGroupSizeKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuControlGroupSizeKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<MenuControlGroupSizeKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuControlGroupSizeKey>, &type metadata for MenuControlGroupSizeKey, &protocol witness table for MenuControlGroupSizeKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuControlGroupSizeKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<MenuControlGroupSizeKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EffectiveLabelStyleKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EffectiveLabelStyleKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EffectiveLabelStyleKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EffectiveLabelStyleKey>();
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EffectiveLabelStyleKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t outlined init with take of UIKitFlattenedButtonAdaptorStorage(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIKitFlattenedButtonAdaptorStorage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double destroy for UIKitFlattenedButtonAdaptorStorage(char *a1, int *a2)
{
  if (*(a1 + 1))
  {
  }

  if (*(a1 + 7))
  {
  }

  v4 = a2[7];
  v5 = type metadata accessor for UIButton.Configuration();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(&a1[v4], 1, v5))
  {
    (*(v6 + 8))(&a1[v4], v5);
  }

  if (*&a1[a2[8] + 8])
  {
  }

  if (*&a1[a2[9] + 8])
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UIKitButtonBase and conformance UIKitButtonBase()
{
  result = lazy protocol witness table cache variable for type UIKitButtonBase and conformance UIKitButtonBase;
  if (!lazy protocol witness table cache variable for type UIKitButtonBase and conformance UIKitButtonBase)
  {
    v3 = type metadata accessor for UIKitButtonBase();
    result = swift_getWitnessTable(protocol conformance descriptor for UIKitButtonBase, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitButtonBase and conformance UIKitButtonBase);
  }

  return result;
}

uint64_t partial apply for closure #1 in static ScrollViewUtilities.animationOffset(target:bounds:contentSize:contentInsets:layoutDirection:)()
{
  return closure #1 in static ScrollViewUtilities.animationOffset(target:bounds:contentSize:contentInsets:layoutDirection:)(*(v0 + 96), *(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 104), *(v0 + 112), *(v0 + 80), *(v0 + 88));
}

{
  return partial apply for closure #1 in static ScrollViewUtilities.animationOffset(target:bounds:contentSize:contentInsets:layoutDirection:)();
}

uint64_t closure #1 in static ScrollViewUtilities.animationOffset(target:bounds:contentSize:contentInsets:layoutDirection:)(uint64_t (*a1)(void *, char *), double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, char a11, double a12, double a13)
{
  ScrollGeometry.init(contentOffset:contentSize:contentInsets:containerSize:)();
  v17 = a11 & 1;
  return a1(v16, &v17);
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

id protocol witness for PlatformGroupFactory.platformGroupContainer(_:) in conformance UIKitButtonBase()
{
  v1 = [*v0 _effectiveContentView];

  return v1;
}

id outlined copy of OpenURLOptions?(id result, char a2)
{
  if (a2 != -1)
  {
    return result;
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance CaptureViewRespondersModifier(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v3, v7, a3);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance Switch(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA6Switch33_1246D37251EA3A918B392E2B95F8B7EFLLV_Tt2B5(v2, v6);
}

uint64_t _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA6Switch33_1246D37251EA3A918B392E2B95F8B7EFLLV_Tt2B5(uint64_t a1, uint64_t a2)
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (AGTypeID.isValueType.getter() & 1) == 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for PlatformViewRepresentableAdaptor<UIKitPasteControl>(0, &lazy cache variable for type metadata for PlatformViewRepresentableAdaptor<Switch>, &type metadata for Switch, &protocol witness table for Switch);
    Attribute.unsafeBitCast<A>(to:)();
    return static View.makeDebuggableView(view:inputs:)();
  }

  return result;
}

uint64_t protocol witness for ModifierKeySource.current.getter in conformance DefaultModifierKeySource()
{
  if (one-time initialization token for monitor != -1)
  {
    swift_once();
  }

  return *(static DefaultModifierKeySource.monitor + 24);
}

unint64_t one-time initialization function for monitor()
{
  type metadata accessor for ModifierKeyMonitor();
  v0 = swift_allocObject();
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_y7SwiftUI14EventModifiersVcTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = result;
  *(v0 + 24) = 0;
  static DefaultModifierKeySource.monitor = v0;
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_y7SwiftUI14EventModifiersVcTt0g5Tf4g_n(uint64_t a1)
{
  type metadata accessor for (CodingUserInfoKey, Sendable)(0, &lazy cache variable for type metadata for (UUID, ()), MEMORY[0x1E69695A8], type metadata accessor for ());
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    type metadata accessor for _DictionaryStorage<UUID, (_:)>(0);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      outlined init with copy of (CodingUserInfoKey, Sendable)(v10, v6, &lazy cache variable for type metadata for (UUID, ()), MEMORY[0x1E69695A8], type metadata accessor for ());
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 16 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void type metadata accessor for (CodingUserInfoKey, Sendable)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t EventModifiers.AsyncValues.makeAsyncIterator()@<X0>(uint64_t *a1@<X8>)
{
  outlined init with copy of _Benchmark(v1, v17);
  v3 = *(v1 + 40);
  v4 = v18;
  v5 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  (*(v5 + 24))(v14, v4, v5);
  v6 = __swift_project_boxed_opaque_existential_1(v14, v15);
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v9 + 16))(v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  a1[3] = swift_getAssociatedTypeWitness();
  a1[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(a1);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  __swift_destroy_boxed_opaque_existential_1(v14);
  if (one-time initialization token for _modifierKeySource != -1)
  {
    swift_once();
  }

  outlined init with copy of _Benchmark(&static EventModifiers._modifierKeySource, v14);
  v10 = v15;
  v11 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v12 = (*(v11 + 16))(v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v14);
  a1[5] = v12 & v3;
  a1[6] = v3;
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

void *protocol witness for UIViewRepresentable.makeCoordinator() in conformance Switch@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  v6 = type metadata accessor for PlatformSwitchCoordinator();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC7SwiftUIP33_1246D37251EA3A918B392E2B95F8B7EF25PlatformSwitchCoordinator__toggleState];
  *v8 = v3;
  *(v8 + 1) = v4;
  v8[16] = v5;
  v10.receiver = v7;
  v10.super_class = v6;

  result = objc_msgSendSuper2(&v10, sel_init);
  *a1 = result;
  return result;
}

uint64_t protocol witness for ModifierKeySource.values.getter in conformance DefaultModifierKeySource@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AsyncStream<EventModifiers>.Continuation.BufferingPolicy(0, &lazy cache variable for type metadata for AsyncStream<EventModifiers>.Continuation.BufferingPolicy, MEMORY[0x1E69E8658]);
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 104))(&v8 - v4, *MEMORY[0x1E69E8650], v3);
  type metadata accessor for AsyncStream<EventModifiers>.Continuation.BufferingPolicy(0, &lazy cache variable for type metadata for AsyncStream<EventModifiers>, MEMORY[0x1E69E8698]);
  a1[3] = v6;
  a1[4] = lazy protocol witness table accessor for type AsyncStream<EventModifiers> and conformance AsyncStream<A>();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return AsyncStream.init(_:bufferingPolicy:_:)();
}

id protocol witness for UIViewRepresentable.makeUIView(context:) in conformance Switch(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCFD0]) init];
  [v2 addTarget:v1 action:sel_toggleStateChanged_ forControlEvents:4096];
  return v2;
}

void type metadata accessor for AsyncStream<EventModifiers>.Continuation.BufferingPolicy(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E697E360]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AsyncStream<EventModifiers> and conformance AsyncStream<A>()
{
  result = lazy protocol witness table cache variable for type AsyncStream<EventModifiers> and conformance AsyncStream<A>;
  if (!lazy protocol witness table cache variable for type AsyncStream<EventModifiers> and conformance AsyncStream<A>)
  {
    type metadata accessor for AsyncStream<EventModifiers>.Continuation.BufferingPolicy(255, &lazy cache variable for type metadata for AsyncStream<EventModifiers>, MEMORY[0x1E69E8698]);
    result = swift_getWitnessTable(MEMORY[0x1E69E86A0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AsyncStream<EventModifiers> and conformance AsyncStream<A>);
  }

  return result;
}

void Switch.updateUIView(_:context:)(void *a1, __int128 *a2)
{
  v5 = a2[1];
  v37 = *a2;
  v38 = v5;
  v39 = a2[2];
  v6 = v2[1];
  v34 = *v2;
  v35 = v6;
  v36 = v2[2];
  LOBYTE(v26) = 17;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = v2[1];
  *(v7 + 24) = *v2;
  *(v7 + 40) = v8;
  *(v7 + 56) = v2[2];
  v9 = a2[1];
  *(v7 + 72) = *a2;
  *(v7 + 88) = v9;
  *(v7 + 104) = a2[2];
  v10 = a1;
  outlined init with copy of Switch(&v34, &v31);
  outlined init with copy of UIViewRepresentableContext<Switch>(&v37, &v31, &lazy cache variable for type metadata for UIViewRepresentableContext<Switch>, &protocol witness table for Switch, type metadata accessor for UIViewRepresentableContext, type metadata accessor for ModifiedContent<Switch, _FixedSizeLayout>);
  static Update.enqueueAction(reason:_:)();

  [v10 setPreferredStyle_];
  v11 = *(&v35 + 1);
  if (*(&v35 + 1))
  {
    v31 = v37;
    v32 = v38;
    v33 = v39;
    RepresentableContextValues.environment.getter();
    v31 = v26;
    dispatch thunk of AnyColorBox.resolve(in:)();

    Color.Resolved.kitColor.getter();
    objc_opt_self();
    v11 = swift_dynamicCastObjCClassUnconditional();
  }

  v12 = [v10 onTintColor];
  v13 = v12;
  if (!v11)
  {
    if (!v12)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!v12 || (type metadata accessor for UIColor(), v14 = v11, v15 = static NSObject.== infix(_:_:)(), v14, v13, (v15 & 1) == 0))
  {
LABEL_9:
    [v10 setOnTintColor_];
  }

LABEL_10:
  if (v36)
  {
    v29 = v36;
    v31 = v37;
    v32 = v38;
    v33 = v39;
    v27 = v38;
    LOBYTE(v28) = v39;

    RepresentableContextValues.environment.getter();
    v26 = v30;
    v16 = ShapeStyle.fallbackColor(in:level:)();

    if (v16)
    {
      v27 = v32;
      LOBYTE(v28) = v33;
      RepresentableContextValues.environment.getter();
      dispatch thunk of AnyColorBox.resolve(in:)();

      v17 = Color.Resolved.kitColor.getter();
      objc_opt_self();
      v18 = swift_dynamicCastObjCClassUnconditional();
      v19 = v17;
      v20 = [v10 thumbTintColor];
      if (v20 && (v21 = v20, type metadata accessor for UIColor(), v22 = v19, v23 = static NSObject.== infix(_:_:)(), v22, v21, (v23 & 1) != 0))
      {
      }

      else
      {
        [v10 setThumbTintColor_];
      }
    }

    else
    {
    }
  }

  LOBYTE(v27) = v35;
  v24 = v34;
  v26 = v34;
  v25 = *(&v39 + 1) + OBJC_IVAR____TtC7SwiftUIP33_1246D37251EA3A918B392E2B95F8B7EF25PlatformSwitchCoordinator__toggleState;
  *(v25 + 16) = v35;
  *v25 = v24;
  outlined init with copy of UIViewRepresentableContext<Switch>(&v26, &v30, &lazy cache variable for type metadata for Binding<ToggleState>, MEMORY[0x1E697DD58], MEMORY[0x1E6981948], _s7SwiftUI7BindingVyAA11ToggleStateOGMaTm_0);
}

uint64_t sub_18C02C3D4()
{

  outlined consume of RepresentableContextValues.EnvironmentStorage(*(v0 + 88), *(v0 + 96), *(v0 + 104));

  return swift_deallocObject();
}

uint64_t specialized closure #1 in ModifierKeySource.values.getter(uint64_t a1)
{
  type metadata accessor for AsyncStream<EventModifiers>.Continuation.BufferingPolicy(0, &lazy cache variable for type metadata for AsyncStream<EventModifiers>.Continuation, MEMORY[0x1E69E8660]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v21 = type metadata accessor for UUID();
  v7 = *(v21 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  if (one-time initialization token for monitor != -1)
  {
    swift_once();
  }

  (*(v4 + 16))(v6, a1, v3);
  v13 = *(v4 + 80);
  v20 = a1;
  v14 = (v13 + 16) & ~v13;
  v15 = swift_allocObject();
  (*(v4 + 32))(v15 + v14, v6, v3);
  ModifierKeyMonitor.addObserver(_:)(partial apply for closure #1 in closure #1 in ModifierKeySource.values.getter, v15, v12);

  v16 = v21;
  (*(v7 + 16))(v9, v12, v21);
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  (*(v7 + 32))(v18 + v17, v9, v16);
  AsyncStream.Continuation.onTermination.setter();
  return (*(v7 + 8))(v12, v16);
}

uint64_t sub_18C02C734()
{
  type metadata accessor for AsyncStream<EventModifiers>.Continuation.BufferingPolicy(0, &lazy cache variable for type metadata for AsyncStream<EventModifiers>.Continuation, MEMORY[0x1E69E8660]);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_18C02C7D8()
{
  v1 = type metadata accessor for UUID();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t ModifierKeyMonitor.addObserver(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  UUID.init()();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(v4 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(partial apply for thunk for @escaping @callee_guaranteed (@unowned EventModifiers) -> (), v8, a3, isUniquelyReferenced_nonNull_native);
  *(v4 + 16) = v9;
}

uint64_t sub_18C02C924()
{

  return swift_deallocObject();
}

uint64_t initializeWithCopy for UIViewRepresentableContext(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v5;
  v6 = a2[2];
  v7 = a2[3];
  v8 = *(a2 + 32);

  outlined copy of RepresentableContextValues.EnvironmentStorage(v6, v7, v8);
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  (*(v10 + 16))((*(v10 + 80) + 33 + a1) & ~*(v10 + 80), (a2 + *(v10 + 80) + 33) & ~*(v10 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), const char *a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      lazy protocol witness table accessor for type UUID and conformance UUID(v24, v25, v26);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

void type metadata accessor for _DictionaryStorage<UUID, (_:)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<UUID, (_:)>)
  {
    type metadata accessor for UUID();
    type metadata accessor for (_:)();
    lazy protocol witness table accessor for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<UUID, (_:)>);
    }
  }
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for UUID();
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

{
  v20 = &type metadata for KeyEvent;
  v21 = lazy protocol witness table accessor for type KeyEvent and conformance KeyEvent();
  v10 = swift_allocObject();
  *&v19 = v10;
  v11 = *(a4 + 80);
  *(v10 + 80) = *(a4 + 64);
  *(v10 + 96) = v11;
  *(v10 + 112) = *(a4 + 96);
  v12 = *(a4 + 16);
  *(v10 + 16) = *a4;
  *(v10 + 32) = v12;
  v13 = *(a4 + 48);
  *(v10 + 48) = *(a4 + 32);
  *(v10 + 64) = v13;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v14 = (a5[6] + 16 * a1);
  *v14 = a2;
  v14[1] = a3;
  result = outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v19, a5[7] + 40 * a1);
  v16 = a5[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v18;
  }

  return result;
}

{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  result = outlined init with take of HashableCommandGroupPlacementWrapper(a2, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for HashableCommandGroupPlacementWrapper);
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

id closure #1 in Switch.updateUIView(_:context:)(void *a1, __int128 *a2, uint64_t a3)
{
  v7 = *a2;
  LOBYTE(v8) = *(a2 + 16);
  _s7SwiftUI7BindingVyAA11ToggleStateOGMaTm_0(0, &lazy cache variable for type metadata for Binding<ToggleState>, MEMORY[0x1E697DD58], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v9);
  v4 = v9;

  v5 = Transaction.disablesAnimations.getter();

  return [a1 setOn:v4 != 1 animated:{(v5 & 1) == 0, v7, v8}];
}

Swift::Int protocol witness for Collection.formIndex(after:) in conformance ShadowRowCollection<A>(Swift::Int *a1)
{
  result = ShadowRowCollection.index(after:)(*a1);
  *a1 = result;
  return result;
}

Swift::Int __swiftcall ShadowRowCollection.index(after:)(Swift::Int after)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of Collection.index(after:)();
  return v2;
}

uint64_t ViewTraitCollection.listSelectionIdentityValue<A>(for:respectSelectionDisabled:)@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18[-v10 - 8];
  v12 = *v4;
  *&v27[0] = *v4;
  if (ViewTraitCollection.isAuxiliaryContent.getter())
  {
    return (*(*(a2 - 8) + 56))(a4, 1, 1, a2);
  }

  *&v27[0] = v12;
  v18[0] = 1;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  if (v23 & 1) == 0 && (a1)
  {
    return (*(*(a2 - 8) + 56))(a4, 1, 1, a2);
  }

  *&v27[0] = v12;
  ViewTraitCollection.tag<A>(for:)();
  v14 = *(a2 - 8);
  if ((*(v14 + 48))(v11, 1, a2) != 1)
  {
    (*(v14 + 32))(a4, v11, a2);
    return (*(v14 + 56))(a4, 0, 1, a2);
  }

  (*(v9 + 8))(v11, v8);
  v22 = v12;
  memset(v18, 0, sizeof(v18));
  v19 = 1;
  v20 = 0u;
  v21 = 0u;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  outlined destroy of AnyAccessibilityValue?(v18, &lazy cache variable for type metadata for NavigationLinkSelectionIdentifier?, &type metadata for NavigationLinkSelectionIdentifier);
  if (*(&v24 + 1) == 1)
  {
    v15 = &lazy cache variable for type metadata for NavigationLinkSelectionIdentifier?;
    v16 = &type metadata for NavigationLinkSelectionIdentifier;
  }

  else
  {
    v27[0] = v23;
    v27[1] = v24;
    v27[2] = v25;
    v27[3] = v26;
    outlined init with copy of AnyNavigationLinkPresentedValue?(v27, &v23);
    if (*(&v24 + 1))
    {
      AnyNavigationLinkPresentedValue.as<A>(_:)(a2, a2);
      outlined destroy of NavigationLinkSelectionIdentifier(v27);
      return outlined destroy of AnyNavigationLinkPresentedValue(&v23);
    }

    outlined destroy of NavigationLinkSelectionIdentifier(v27);
    v15 = &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?;
    v16 = &type metadata for AnyNavigationLinkPresentedValue;
  }

  outlined destroy of AnyAccessibilityValue?(&v23, v15, v16);
  return (*(v14 + 56))(a4, 1, 1, a2);
}

uint64_t SelectionManagerBox.isSelected(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v51 = a1;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v47 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = &v44 - v10;
  v50 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v48 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v44 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v44 - v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = (&v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23, v3, a2, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v35 = MEMORY[0x18D00D1E0](v51, *v23, v5, *(a2 + 24));

    return v35 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    (*(v6 + 32))(v8, v23, v5);
    v35 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v6 + 8))(v8, v5);
    return v35 & 1;
  }

  v44 = v8;
  v26 = v50;
  (*(v50 + 32))(v19, v23, v9);
  (*(v6 + 16))(v16, v51, v5);
  (*(v6 + 56))(v16, 0, 1, v5);
  v27 = v19;
  v28 = *(TupleTypeMetadata2 + 48);
  v29 = v6;
  v30 = *(v26 + 16);
  v46 = v27;
  v30(v11);
  v51 = v28;
  (v30)(&v11[v28], v16, v9);
  v45 = v29;
  v31 = v11;
  v32 = v11;
  v33 = *(v29 + 48);
  if (v33(v32, 1, v5) != 1)
  {
    (v30)(v48, v31, v9);
    v36 = v51;
    if (v33(&v31[v51], 1, v5) != 1)
    {
      v38 = v44;
      v39 = v45;
      (*(v45 + 32))(v44, &v31[v36], v5);
      v40 = v48;
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      v41 = *(v39 + 8);
      v41(v38, v5);
      v42 = *(v50 + 8);
      v42(v16, v9);
      v42(v46, v9);
      v41(v40, v5);
      v42(v31, v9);
      return v35 & 1;
    }

    v37 = *(v50 + 8);
    v37(v16, v9);
    v37(v46, v9);
    (*(v45 + 8))(v48, v5);
    goto LABEL_10;
  }

  v34 = *(v26 + 8);
  v34(v16, v9);
  v34(v46, v9);
  if (v33(&v31[v51], 1, v5) != 1)
  {
LABEL_10:
    (*(v47 + 8))(v31, TupleTypeMetadata2);
    v35 = 0;
    return v35 & 1;
  }

  v34(v31, v9);
  v35 = 1;
  return v35 & 1;
}

void closure #1 in HostingScrollView.updateContext(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    MEMORY[0x1EEE9AC00](Strong);
    v5 = v4;
    static Update.ensure<A>(_:)();
  }
}

uint64_t closure #1 in closure #1 in HostingScrollView.updateContext(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a1 + OBJC_IVAR____TtC7SwiftUI17HostingScrollView_animationTarget);
  v7 = *(a1 + OBJC_IVAR____TtC7SwiftUI17HostingScrollView_animationTarget);
  v8 = v6[1];
  *v6 = a2;
  v6[1] = a3;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v7, v8);
  v9 = (a1 + OBJC_IVAR____TtC7SwiftUI17HostingScrollView_animationOffset);
  *(a1 + OBJC_IVAR____TtC7SwiftUI17HostingScrollView_animationOffset) = vdupq_n_s64(0x7FF0000000000000uLL);

  HostingScrollView.updateAnimationTarget(_:)(a2, a3);
  *v9 = 0;
  v9[1] = 0;
  v10 = a1 + OBJC_IVAR____TtC7SwiftUI17HostingScrollView_animationTargetConfig;
  v11 = *(a1 + OBJC_IVAR____TtC7SwiftUI17HostingScrollView_animationTargetConfig);
  if (v11 != 1)
  {
    *v10 = 1;
    *(v10 + 8) = 0;
    outlined consume of ListItemTint?(v11);
  }

  v12 = *v6;
  v13 = v6[1];
  *v6 = 0;
  v6[1] = 0;
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v12, v13);
}

uint64_t HostingScrollView.updateAnimationTarget(_:)(uint64_t a1, uint64_t a2)
{
  *&result = COERCE_DOUBLE(HostingScrollView.offset(for:)(a1, a2));
  if ((v5 & 1) == 0)
  {
    v6 = *&result;
    v7 = v4;
    v8 = &v2[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_animationOffset];
    if (*&result - *&v2[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_animationOffset] != 0.0 || v4 - *(v8 + 1) != 0.0)
    {
      v9 = result;
      v10 = v4;
      [v2 adjustedContentInset];
      v12 = v6 - v11;
      v14 = v7 - v13;
      if (![v2 isScrollAnimating] || (v15 = &selRef__updateScrollAnimationForChangedTargetOffset_, (objc_msgSend(v2, sel_respondsToSelector_, sel__updateScrollAnimationForChangedTargetOffset_) & 1) == 0))
      {
        v15 = &selRef_setContentOffset_;
      }

      *&result = COERCE_DOUBLE([v2 *v15]);
      *v8 = v9;
      *(v8 + 1) = v10;
    }
  }

  return result;
}

uint64_t HostingScrollView.offset(for:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  [v2 adjustedContentInset];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v2 contentOffset];
  v56.receiver = v2;
  v56.super_class = ObjectType;
  objc_msgSendSuper2(&v56, sel_bounds);
  if (v12 - (v7 + v11) < 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v12 - (v7 + v11);
  }

  if (v13 - (v5 + v9) < 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v13 - (v5 + v9);
  }

  v16 = [v2 contentSize];
  if (v14 == 0.0 && v15 == 0.0)
  {
    return 0;
  }

  if (v17 == 0.0 && v18 == 0.0)
  {
    return 0;
  }

  v19 = MEMORY[0x1EEE9AC00](v16);
  v50 = v20;
  v51 = v21;
  v52 = v19;
  v53 = v22;
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for ScrollTarget?, MEMORY[0x1E697DF10]);
  static Update.ensure<A>(_:)();
  if (v55)
  {
    return 0;
  }

  ScrollTarget.rect.getter();
  v28 = v24;
  v29 = v25;
  v30 = v26;
  if (v54)
  {
    v31 = v50;
    v32 = v51;
    v57.origin.x = v51;
    v57.origin.y = v50;
    v57.size.width = v14;
    v33 = v27;
    v57.size.height = v15;
    v34 = v28;
    v35 = v29;
    v48 = v30;
    v49 = v33;
    if (!CGRectContainsRect(v57, *(&v30 - 2)))
    {
      v58.origin.x = v28;
      v58.origin.y = v29;
      v58.size.height = v49;
      v58.size.width = v48;
      MaxX = CGRectGetMaxX(v58);
      v59.origin.x = v51;
      v59.origin.y = v50;
      v59.size.width = v14;
      v59.size.height = v15;
      if (CGRectGetMaxX(v59) <= MaxX)
      {
        v64.origin.x = v28;
        v64.origin.y = v29;
        v64.size.width = v48;
        v64.size.height = v49;
        CGRectGetMaxX(v64);
        v65.origin.x = v51;
        v65.origin.y = v50;
        v65.size.width = v14;
        v65.size.height = v15;
        CGRectGetWidth(v65);
      }

      else
      {
        v60.origin.x = v28;
        v60.origin.y = v29;
        v60.size.width = v48;
        v60.size.height = v49;
        MinX = CGRectGetMinX(v60);
        v61.origin.x = v51;
        v61.origin.y = v50;
        v61.size.width = v14;
        v61.size.height = v15;
        if (MinX < CGRectGetMinX(v61))
        {
          v62.origin.x = v28;
          v62.origin.y = v29;
          v62.size.width = v48;
          v62.size.height = v49;
          CGRectGetMinX(v62);
        }
      }

      v66.size.width = v48;
      v66.origin.x = v28;
      v66.origin.y = v29;
      v66.size.height = v49;
      MaxY = CGRectGetMaxY(v66);
      v67.origin.x = v51;
      v67.origin.y = v50;
      v67.size.width = v14;
      v67.size.height = v15;
      if (CGRectGetMaxY(v67) <= MaxY)
      {
        v71.origin.x = v28;
        v71.origin.y = v29;
        v71.size.width = v48;
        v71.size.height = v49;
        CGRectGetMaxY(v71);
        v72.origin.x = v51;
        v72.origin.y = v50;
        v72.size.width = v14;
        v72.size.height = v15;
        CGRectGetHeight(v72);
      }

      else
      {
        v68.origin.x = v28;
        v68.origin.y = v29;
        v68.size.width = v48;
        v68.size.height = v49;
        MinY = CGRectGetMinY(v68);
        v69.origin.x = v51;
        v69.origin.y = v50;
        v69.size.width = v14;
        v69.size.height = v15;
        if (MinY < CGRectGetMinY(v69))
        {
          v70.origin.x = v28;
          v70.origin.y = v29;
          v70.size.width = v48;
          v70.size.height = v49;
          CGRectGetMinY(v70);
        }
      }
    }
  }

  else
  {
    UnitPoint.in(_:)(*&v24);
    UnitPoint.in(_:)(__PAIR128__(*&v15, *&v14));
    v31 = v50;
    v32 = v51;
  }

  v63.origin.x = v32;
  v63.origin.y = v31;
  v63.size.width = v14;
  v63.size.height = v15;
  v38 = v52 - CGRectGetWidth(v63);
  v39 = v31;
  if (v38 > 0.0)
  {
    v40 = v38;
  }

  else
  {
    v40 = 0.0;
  }

  v41 = v32;
  v42 = v14;
  v43 = v15;
  v44 = v53 - CGRectGetHeight(*(&v39 - 1));
  if (v44 > 0.0)
  {
    v45 = v44;
  }

  else
  {
    v45 = 0.0;
  }

  return *&CGPoint.clamp(min:max:)(0, __PAIR128__(*&v45, *&v40));
}

uint64_t assignWithCopy for GridRow(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *a1 = v4;
  v5 = *(*(a3 + 16) - 8);
  (*(v5 + 24))((*(v5 + 80) + 9 + a1) & ~*(v5 + 80), (a2 + *(v5 + 80) + 9) & ~*(v5 + 80));
  return a1;
}

void *assignWithCopy for Picker(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 24;
  v8 = *(v6 + 80);
  v9 = (a1 + v8 + 8) & ~v8;
  v10 = (a2 + v8 + 8) & ~v8;
  (*(v6 + 24))(v9, v10);
  v11 = *(v7 + 40);
  v12 = *(*(a3 + 32) - 8);
  v13 = v12 + 24;
  v14 = *(v12 + 80);
  v15 = v11 + v14;
  v16 = (v15 + v9) & ~v14;
  v17 = (v15 + v10) & ~v14;
  (*(v12 + 24))(v16, v17);
  *((*(v13 + 40) + 7 + v16) & 0xFFFFFFFFFFFFFFF8) = *((*(v13 + 40) + 7 + v17) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t assignWithCopy for PopoverAttachmentAnchor(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of Environment<CGFloat?>.Content(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  outlined consume of Environment<CGFloat?>.Content(v6, v7, v8);
  return a1;
}

void *assignWithCopy for MenuStyleConfiguration(void *a1, void *a2)
{
  v4 = *a2;
  if (*a1)
  {
    if (v4)
    {
      v5 = a2[1];
      *a1 = v4;
      a1[1] = v5;

      goto LABEL_8;
    }
  }

  else if (v4)
  {
    v6 = a2[1];
    *a1 = v4;
    a1[1] = v6;

    goto LABEL_8;
  }

  *a1 = *a2;
LABEL_8:
  v7 = a2[2];
  if (!a1[2])
  {
    if (v7)
    {
      v9 = a2[3];
      a1[2] = v7;
      a1[3] = v9;

      return a1;
    }

LABEL_14:
    *(a1 + 1) = *(a2 + 1);
    return a1;
  }

  if (!v7)
  {

    goto LABEL_14;
  }

  v8 = a2[3];
  a1[2] = v7;
  a1[3] = v8;

  return a1;
}

uint64_t assignWithCopy for PlatformItemListMenuStyle(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of Environment<Bool>.Content();
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);
  v8 = *(v2 + 24);
  LOBYTE(v2) = *(v2 + 32);
  outlined copy of Environment<Color?>.Content(v8);
  v9 = *(a1 + 24);
  *(a1 + 24) = v8;
  *(a1 + 32) = v2;
  outlined consume of Environment<Color?>.Content(v9);
  return a1;
}

uint64_t *assignWithCopy for WheelPicker(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = a2 + 15;
  *a1 = *a2;

  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v6;

  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  (*(v8 + 24))((v7 + v10 + 8) & ~v10, (v10 + 8 + v6) & ~v10);
  v11 = ((v10 + 16) & ~v10) + *(v9 + 40) + 7;
  v12 = (a1 + v11) & 0xFFFFFFFFFFFFFFF8;
  v13 = (a2 + v11) & 0xFFFFFFFFFFFFFFF8;
  *v12 = *v13;

  *(v12 + 8) = *(v13 + 8);
  return a1;
}

void *assignWithCopy for OptionalSourceWriter(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (!v8)
  {
    if (v9)
    {
      v13 = *(v6 + 8);
      v12 = v6 + 8;
      v13(a1, v5);
      v10 = *(v12 + 76);
      v11 = *(v12 + 56);
      goto LABEL_6;
    }

    (*(v6 + 24))(a1, a2, v5);
    return a1;
  }

  if (!v9)
  {
    (*(v6 + 16))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }

  v10 = *(v6 + 84);
  v11 = *(v6 + 64);
LABEL_6:
  if (v10)
  {
    v14 = v11;
  }

  else
  {
    v14 = v11 + 1;
  }

  return memcpy(a1, a2, v14);
}

uint64_t assignWithCopy for _PickerValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40);
  v8 = *(a3 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v10 | 7) + v7;
  v12 = ((v11 + a1) & ~(v10 | 7));
  v13 = ((v11 + a2) & ~(v10 | 7));
  *v12 = *v13;

  v14 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;

  (*(v9 + 24))((v14 + v10 + 8) & ~v10, (v15 + v10 + 8) & ~v10, v8);
  v16 = *(v9 + 64) + ((v10 + 16) & ~v10) + 7;
  v17 = (v12 + v16) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v13 + v16) & 0xFFFFFFFFFFFFFFF8;
  *v17 = *v18;

  *(v17 + 8) = *(v18 + 8);
  return a1;
}

uint64_t assignWithCopy for SectionPicker(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content();
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  outlined consume of Environment<Bool>.Content(v8, v9);
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v12 | 7) + 9;
  v14 = ((v13 + a1) & ~(v12 | 7));
  v15 = ((a2 + v13) & ~(v12 | 7));
  *v14 = *v15;

  v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;

  (*(v11 + 24))((v16 + v12 + 8) & ~v12, (v17 + v12 + 8) & ~v12, v10);
  v18 = *(v11 + 64) + ((v12 + 16) & ~v12) + 7;
  v19 = (v14 + v18) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v15 + v18) & 0xFFFFFFFFFFFFFFF8;
  *v19 = *v20;

  *(v19 + 8) = *(v20 + 8);
  v21 = (v18 & 0xFFFFFFFFFFFFFFF8) + 9;
  v22 = v14 + v21;
  v23 = v15 + v21;
  __swift_assign_boxed_opaque_existential_1((v22 + 7), (v15 + v21 + 7));
  v24 = *(v23 + 47);
  v25 = *(v22 + 47);
  *(v22 + 47) = v24;
  v26 = v24;

  *(v22 + 55) = *(v23 + 55);

  *(v22 + 63) = *(v23 + 63);
  return a1;
}

uint64_t assignWithCopy for PickerContentView(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content();
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);
  *(a1 + 16) = a2[2];

  __swift_assign_boxed_opaque_existential_1((a1 + 24), a2 + 3);
  v8 = a2[8];
  v9 = *(a1 + 64);
  *(a1 + 64) = v8;
  v10 = v8;

  *(a1 + 72) = a2[9];

  *(a1 + 80) = a2[10];
  return a1;
}

uint64_t assignWithCopy for CheckmarkToggleStyle(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  outlined copy of Environment<Selector?>.Content(v8, v9);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  outlined consume of Environment<Selector?>.Content(v10, v11);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  v15 = *(a2 + 56);
  v16 = *(a2 + 64);
  outlined copy of Environment<EdgeInsets>.Content(v12, v13, v14, v15, v16);
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v19 = *(a1 + 48);
  v20 = *(a1 + 56);
  v21 = *(a1 + 64);
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  *(a1 + 48) = v14;
  *(a1 + 56) = v15;
  *(a1 + 64) = v16;
  outlined consume of Environment<EdgeInsets>.Content(v17, v18, v19, v20, v21);
  v22 = *(a2 + 72);
  LOBYTE(v13) = *(a2 + 80);
  outlined copy of Environment<Selector?>.Content(v22, v13);
  v23 = *(a1 + 72);
  v24 = *(a1 + 80);
  *(a1 + 72) = v22;
  *(a1 + 80) = v13;
  outlined consume of Environment<Selector?>.Content(v23, v24);
  v25 = *(a2 + 88);
  LOBYTE(v13) = *(a2 + 96);
  outlined copy of Environment<Selector?>.Content(v25, v13);
  v26 = *(a1 + 88);
  v27 = *(a1 + 96);
  *(a1 + 88) = v25;
  *(a1 + 96) = v13;
  outlined consume of Environment<Selector?>.Content(v26, v27);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

void FocusStoreLocation.findEntry(with:)(uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *v3;
  if (*(v3[4] + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v3), (v6 & 1) != 0))
  {
    v7 = v5 + class metadata base offset for FocusStoreLocation;
    v8 = *(v5 + class metadata base offset for FocusStoreLocation);
    v9 = *(v7 + 8);
    v10 = type metadata accessor for FocusStore.Entry(0, v8, v9, a2);
    (*(*(v10 - 8) + 56))(a3, 1, 1, v10);
    v12 = type metadata accessor for FocusStore.Key(0, v8, v9, v11);
    MEMORY[0x1EEE9AC00](v12);

    swift_getWitnessTable(protocol conformance descriptor for FocusStore.Key<A>, v12);
    PropertyList.forEach<A>(keyType:_:)();
  }

  else
  {
    v13 = type metadata accessor for FocusStore.Entry(0, *(v5 + class metadata base offset for FocusStoreLocation), *(v5 + class metadata base offset for FocusStoreLocation + 8), a2);
    v14 = *(*(v13 - 8) + 56);

    v14(a3, 1, 1, v13);
  }
}

uint64_t closure #1 in FocusStoreLocation.findEntry(with:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a4;
  v28 = a3;
  v8 = type metadata accessor for FocusStore.Entry(255, a5, a6, a4);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - v11;
  v13 = *(v8 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - v16;
  (*(v10 + 16))(v12, a1, v9, v15);
  if ((*(v13 + 48))(v12, 1, v8) == 1)
  {
    return (*(v10 + 8))(v12, v9);
  }

  v26 = a2;
  v19 = v12;
  v20 = *(v13 + 32);
  v20(v17, v19, v8);
  if ((FocusStore.Entry.isValid.getter(v8, v21, v22, v23) & 1) == 0 || (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return (*(v13 + 8))(v17, v8);
  }

  v24 = v27;
  (*(v10 + 8))(v27, v9);
  v20(v24, v17, v8);
  result = (*(v13 + 56))(v24, 0, 1, v8);
  *v26 = 1;
  return result;
}

__n128 assignWithCopy for SectionStyleConfiguration(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  if (a1[1])
  {
    if (v3)
    {
      *a1 = *a2;

      a1[1] = a2[1];

      *(a1 + 16) = *(a2 + 16);
    }

    else
    {
      outlined destroy of Binding<Bool>(a1);
      v7 = *(a2 + 16);
      result = *a2;
      *a1 = *a2;
      *(a1 + 16) = v7;
    }
  }

  else if (v3)
  {
    *a1 = *a2;
    a1[1] = a2[1];
    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    result = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a1 = result;
  }

  return result;
}

uint64_t FocusStoreLocation.deferUpdate(_:)(uint64_t a1)
{
  v3 = *(*v1 + class metadata base offset for FocusStoreLocation);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = *(TupleTypeMetadata2 + 48);
  (*(*(v3 - 8) + 16))(&v13 - v8, a1, v3, v7);
  *&v9[v10] = *&v1[*(*v1 + class metadata base offset for FocusStoreLocation + 40)];
  (*(*(TupleTypeMetadata2 - 8) + 56))(v9, 0, 1, TupleTypeMetadata2);
  v11 = *(*v1 + class metadata base offset for FocusStoreLocation + 48);
  swift_beginAccess();
  (*(v6 + 40))(&v1[v11], v9, v5);
  return swift_endAccess();
}

uint64_t *assignWithCopy for ToggleStyleConfiguration(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  *(a1 + 16) = *(a2 + 16);
  a1[3] = a2[3];

  a1[4] = a2[4];

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  v4 = a2[9];
  if (a1[9])
  {
    if (v4)
    {
      v5 = a2[6];
      v6 = a2[7];
      v7 = *(a2 + 64);
      outlined copy of Environment<AppIntentExecutor?>.Content(v5, v6, v7);
      v8 = a1[6];
      v9 = a1[7];
      v10 = *(a1 + 64);
      a1[6] = v5;
      a1[7] = v6;
      *(a1 + 64) = v7;
      outlined consume of Environment<AppIntentExecutor?>.Content(v8, v9, v10);
      v11 = a2[9];
      v12 = a1[9];
      a1[9] = v11;
      v13 = v11;

      v14 = a2[11];
      a1[10] = a2[10];
      a1[11] = v14;
    }

    else
    {
      outlined destroy of AppIntentAction((a1 + 6));
      v23 = *(a2 + 4);
      v22 = *(a2 + 5);
      *(a1 + 3) = *(a2 + 3);
      *(a1 + 4) = v23;
      *(a1 + 5) = v22;
    }
  }

  else if (v4)
  {
    v15 = a2[6];
    v16 = a2[7];
    v17 = *(a2 + 64);
    outlined copy of Environment<AppIntentExecutor?>.Content(v15, v16, v17);
    a1[6] = v15;
    a1[7] = v16;
    *(a1 + 64) = v17;
    v18 = a2[9];
    a1[9] = v18;
    v19 = a2[10];
    v20 = a2[11];
    a1[10] = v19;
    a1[11] = v20;
    v21 = v18;
  }

  else
  {
    v24 = *(a2 + 3);
    v25 = *(a2 + 5);
    *(a1 + 4) = *(a2 + 4);
    *(a1 + 5) = v25;
    *(a1 + 3) = v24;
  }

  return a1;
}

uint64_t assignWithCopy for AccessibilityToggleModifier.RepresentationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 24);
  if (*(v7 + 24) < 0xFFFFFFFFuLL)
  {
    if (v9 >= 0xFFFFFFFF)
    {
      v20 = *v8;
      v21 = *(v8 + 8);
      v22 = *(v8 + 16);
      outlined copy of Environment<AppIntentExecutor?>.Content(*v8, v21, v22);
      *v7 = v20;
      *(v7 + 8) = v21;
      *(v7 + 16) = v22;
      v23 = *(v8 + 24);
      *(v7 + 24) = v23;
      v24 = *(v8 + 40);
      *(v7 + 32) = *(v8 + 32);
      *(v7 + 40) = v24;
      v25 = v23;

      return a1;
    }

LABEL_7:
    v26 = *v8;
    v27 = *(v8 + 32);
    *(v7 + 16) = *(v8 + 16);
    *(v7 + 32) = v27;
    *v7 = v26;
    return a1;
  }

  if (v9 < 0xFFFFFFFF)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*v7, *(v7 + 8), *(v7 + 16));

    goto LABEL_7;
  }

  v10 = *v8;
  v11 = *(v8 + 8);
  v12 = *(v8 + 16);
  outlined copy of Environment<AppIntentExecutor?>.Content(*v8, v11, v12);
  v13 = *v7;
  v14 = *(v7 + 8);
  v15 = *(v7 + 16);
  *v7 = v10;
  *(v7 + 8) = v11;
  *(v7 + 16) = v12;
  outlined consume of Environment<AppIntentExecutor?>.Content(v13, v14, v15);
  v16 = *(v8 + 24);
  v17 = *(v7 + 24);
  *(v7 + 24) = v16;
  v18 = v16;

  v19 = *(v8 + 40);
  *(v7 + 32) = *(v8 + 32);
  *(v7 + 40) = v19;

  return a1;
}

uint64_t assignWithCopy for ButtonToggleStyle(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Color?>.Content(*a2);
  v6 = *a1;
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Color?>.Content(v6);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for _SymbolEffectModifier(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 2);
  v5 = *(a2 + 3);
  v7 = (~*(a2 + 4) & 0xFFFFFFFE) == 0 && (*(a2 + 3) & 0xFEFELL) == 2;
  if ((~*(a1 + 16) & 0xFFFFFFFE) == 0 && (*(a1 + 24) & 0xFEFELL) == 2)
  {
    if (v7)
    {
      v11 = *a2;
      v12 = a2[1];
      *(a1 + 29) = *(a2 + 29);
      *a1 = v11;
      *(a1 + 16) = v12;
    }

    else
    {
      v21 = *a2;
      v22 = *(a2 + 1);
      outlined copy of _SymbolEffect.Storage(*a2, v22, v4, v5);
      *a1 = v21;
      *(a1 + 8) = v22;
      *(a1 + 16) = v4;
      *(a1 + 24) = v5;
      v23 = *(a2 + 28);
      *(a1 + 44) = *(a2 + 44);
      *(a1 + 28) = v23;
    }
  }

  else if (v7)
  {
    outlined destroy of SymbolEffect(a1);
    v9 = *(a2 + 29);
    v10 = a2[1];
    *a1 = *a2;
    *(a1 + 16) = v10;
    *(a1 + 29) = v9;
  }

  else
  {
    v13 = *a2;
    v14 = *(a2 + 1);
    outlined copy of _SymbolEffect.Storage(*a2, v14, v4, v5);
    v15 = *a1;
    v16 = *(a1 + 8);
    v17 = *(a1 + 16);
    *a1 = v13;
    *(a1 + 8) = v14;
    *(a1 + 16) = v4;
    v18 = *(a1 + 24);
    *(a1 + 24) = v5;
    outlined consume of _SymbolEffect.Storage(v15, v16, v17, v18);
    *(a1 + 28) = *(a2 + 7);
    v19 = *(a2 + 8);
    *(a1 + 36) = *(a2 + 36);
    *(a1 + 32) = v19;
    v20 = *(a2 + 10);
    *(a1 + 44) = *(a2 + 44);
    *(a1 + 40) = v20;
  }

  return a1;
}

uint64_t assignWithCopy for OnPlatformContainerSelectionModifier(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (!*a1)
  {
    if (v4)
    {
      v6 = a2[1];
      *a1 = v4;
      *(a1 + 8) = v6;

      goto LABEL_8;
    }

LABEL_7:
    *a1 = *a2;
    goto LABEL_8;
  }

  if (!v4)
  {

    goto LABEL_7;
  }

  v5 = a2[1];
  *a1 = v4;
  *(a1 + 8) = v5;

LABEL_8:
  *(a1 + 16) = *(a2 + 16);
  v7 = a2[3];
  v8 = *(a2 + 32);
  outlined copy of Environment<Selector?>.Content(v7, v8);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  outlined consume of Environment<Selector?>.Content(v9, v10);
  v11 = a2[5];
  v12 = a2[6];
  v13 = a2[7];
  v14 = *(a2 + 65);
  v15 = *(a2 + 64);
  outlined copy of Environment<KeyboardShortcut?>.Content(v11, v12, v13, v15, v14);
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v19 = *(a1 + 65);
  *(a1 + 40) = v11;
  *(a1 + 48) = v12;
  *(a1 + 56) = v13;
  v20 = *(a1 + 64);
  *(a1 + 64) = v15;
  *(a1 + 65) = v14;
  outlined consume of Environment<KeyboardShortcut?>.Content(v16, v17, v18, v20, v19);
  v21 = a2[9];
  v22 = *(a2 + 80);
  outlined copy of Environment<Selector?>.Content(v21, v22);
  v23 = *(a1 + 72);
  v24 = *(a1 + 80);
  *(a1 + 72) = v21;
  *(a1 + 80) = v22;
  outlined consume of Environment<Selector?>.Content(v23, v24);
  return a1;
}

__n128 assignWithCopy for OnDeleteTableRowModifier(__n128 *a1, __n128 *a2)
{
  v2 = a2->n128_u64[0];
  if (a1->n128_u64[0])
  {
    if (v2)
    {
      v3 = a2->n128_u64[1];
      a1->n128_u64[0] = v2;
      a1->n128_u64[1] = v3;
    }

    else
    {

      result = *a2;
      *a1 = *a2;
    }
  }

  else if (v2)
  {
    v5 = a2->n128_u64[1];
    a1->n128_u64[0] = v2;
    a1->n128_u64[1] = v5;
  }

  else
  {
    result = *a2;
    *a1 = *a2;
  }

  return result;
}

uint64_t getEnumTag for PaletteSelectionEffect.Guts(uint64_t a1)
{
  v1 = *(a1 + 1);
  if (v1 <= 3)
  {
    v2 = 3;
  }

  else
  {
    v2 = *(a1 + 1);
  }

  v3 = v2 - 3;
  if (v1 >= 3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for PaletteSelectionEffect.Guts(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFC)
  {
    *result = a2 - 253;
  }

  else if (a2)
  {
    *(result + 1) = a2 + 3;
  }

  return result;
}

double static RelationshipModifier._makeView(modifier:inputs:body:)@<D0>(int *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(uint64_t *__return_ptr)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, double *a6@<X8>, uint64_t a7@<X3>)
{
  v45 = a6;
  v62 = *MEMORY[0x1E69E9840];
  v41 = type metadata accessor for Transform.State(255, a4, a5, a7);
  v12 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v39[-v13];
  v44 = type metadata accessor for Transform(0, a4, a5, v15);
  v43 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v42 = &v39[-v16];
  v40 = *a1;
  v17 = *a2;
  v18 = *(a2 + 3);
  v51 = *(a2 + 1);
  v52 = v18;
  v19 = a2[6];
  v53 = a2[5];
  v20 = *(a2 + 14);
  v49 = *(a2 + 60);
  v50 = *(a2 + 76);
  v54 = v17;
  v55 = *(a2 + 1);
  v56 = *(a2 + 3);
  v57 = a2[5];
  v58 = v19;
  v59 = v20;
  v60 = *(a2 + 60);
  v61 = *(a2 + 76);
  a3(&v47);
  v54 = v19;
  LODWORD(v55) = v20;
  if ((PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) == 0)
  {
LABEL_5:
    v22 = v47;
    goto LABEL_6;
  }

  type metadata accessor for AccessibilityRelationshipScope();
  lazy protocol witness table accessor for type AccessibilityRelationshipScope and conformance AccessibilityRelationshipScope(&lazy protocol witness table cache variable for type AccessibilityRelationshipScope and conformance AccessibilityRelationshipScope, protocol conformance descriptor for AccessibilityRelationshipScope);
  PropertyList.subscript.getter();
  v21 = v54;
  v22 = v47;
  if (v54)
  {
    v54 = v47;
    LODWORD(v55) = LODWORD(v48);
    v23 = PreferencesOutputs.subscript.getter();
    if ((v23 & 0x100000000) != 0)
    {

      goto LABEL_6;
    }

    v25 = v23;
    v46 = v40;
    type metadata accessor for RelationshipModifier(255, a4, a5, v24);
    type metadata accessor for _GraphValue();
    v26 = _GraphValue.value.getter();
    v54 = v17;
    v55 = v51;
    v56 = v52;
    v57 = v53;
    v58 = v19;
    v59 = v20;
    v60 = v49;
    v61 = v50;
    v27 = _ViewInputs.accessibilityEnabled.getter();
    (*(*(v41 - 8) + 56))(v14, 1, 1);
    v37 = a5;
    v28 = v42;
    v29 = Transform.init(modifier:nodeList:accessibilityEnabled:selfAttribute:scope:state:isRemoved:)(v26, v25, v27, *MEMORY[0x1E698D3F8], v21, v14, 0, a4, v42, v37);
    v30 = MEMORY[0x1EEE9AC00](v29);
    v31 = v44;
    v37 = v44;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Transform<A>, v44, v30);
    type metadata accessor for Attribute<AccessibilityNodeList>(0, &lazy cache variable for type metadata for Attribute<AccessibilityNodeList>, &type metadata for AccessibilityNodeList, MEMORY[0x1E698D388]);
    v33 = v32;

    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v28, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, &v39[-32], v31, MEMORY[0x1E69E73E0], v33, MEMORY[0x1E69E7410], v34);
    (*(v43 + 8))(v28, v31);
    AGGraphSetFlags();
    LOBYTE(v54) = 0;
    PreferencesOutputs.subscript.setter();

    goto LABEL_5;
  }

LABEL_6:
  v35 = v45;
  *v45 = v22;
  result = v48;
  v35[1] = v48;
  return result;
}

uint64_t objectdestroy_31Tm()
{
  v1 = *(v0 + 40);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t type metadata completion function for Transform.State(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for RelationshipModifier(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for Transform(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Transform.State(255, *(a1 + 16), *(a1 + 24), a4);
  result = type metadata accessor for Optional();
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

double static BaseModifier._makeView(modifier:inputs:body:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NavigationLinkPresentedValue?(0, &lazy cache variable for type metadata for _GraphValue<BaseModifier>, &unk_1EFFC57C0, MEMORY[0x1E697DDB8]);
  v4 = MEMORY[0x1E69E6720];
  type metadata accessor for NavigationLinkPresentedValue?(0, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue, MEMORY[0x1E69E6720]);
  _GraphValue.subscript.getter();
  v5 = MEMORY[0x1E69E6370];
  _GraphValue.subscript.getter();
  lazy protocol witness table accessor for type NavigationAuthority.SeedInputs and conformance NavigationAuthority.SeedInputs();
  PropertyList.subscript.getter();
  lazy protocol witness table accessor for type NavigationAuthority.ViewInputKey and conformance NavigationAuthority.ViewInputKey();
  PropertyList.subscript.getter();
  lazy protocol witness table accessor for type NavigationAuthority.ListKeyViewInputKey and conformance NavigationAuthority.ListKeyViewInputKey();
  PropertyList.subscript.getter();
  lazy protocol witness table accessor for type NavigationSelectionTag and conformance NavigationSelectionTag();
  PropertyList.subscript.getter();
  type metadata accessor for NavigationLinkPresentedValue?(0, &lazy cache variable for type metadata for Bool?, v5, v4);
  Attribute.init<A>(body:value:flags:update:)();
  v6 = AGCreateWeakAttribute();
  LODWORD(v5) = v6;
  v7 = HIDWORD(v6);
  type metadata accessor for BaseModifier.SelectionStateBox();
  v8 = swift_allocObject();
  swift_weakInit();
  *(v8 + 32) = 2;
  *(v8 + 16) = v5;
  *(v8 + 20) = v7;
  type metadata accessor for ViewGraph();
  MEMORY[0x18D00B7D0]();
  swift_weakAssign();

  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type BaseModifier.SelectionObserver and conformance BaseModifier.SelectionObserver();

  Attribute.init<A>(body:value:flags:update:)();

  AGGraphSetFlags();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type BaseModifier.Child and conformance BaseModifier.Child();
  Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type PlatformItemNavigationSelectionStyleModifier and conformance PlatformItemNavigationSelectionStyleModifier();
  static ViewModifier.makeDebuggableView(modifier:inputs:body:)();

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationSelectionTag and conformance NavigationSelectionTag()
{
  result = lazy protocol witness table cache variable for type NavigationSelectionTag and conformance NavigationSelectionTag;
  if (!lazy protocol witness table cache variable for type NavigationSelectionTag and conformance NavigationSelectionTag)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationSelectionTag, &unk_1EFFC5A80, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSelectionTag and conformance NavigationSelectionTag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationSelectionTag and conformance NavigationSelectionTag;
  if (!lazy protocol witness table cache variable for type NavigationSelectionTag and conformance NavigationSelectionTag)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationSelectionTag, &unk_1EFFC5A80, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSelectionTag and conformance NavigationSelectionTag);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BaseModifier.SelectionObserver and conformance BaseModifier.SelectionObserver()
{
  result = lazy protocol witness table cache variable for type BaseModifier.SelectionObserver and conformance BaseModifier.SelectionObserver;
  if (!lazy protocol witness table cache variable for type BaseModifier.SelectionObserver and conformance BaseModifier.SelectionObserver)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BaseModifier.SelectionObserver, &unk_1EFFC5A48, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BaseModifier.SelectionObserver and conformance BaseModifier.SelectionObserver);
  }

  return result;
}

uint64_t initializeWithCopy for BaseModifier.SelectionObserver(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 1);
  *(a1 + 24) = a2[3];
  *(a1 + 32) = a2[4];

  return a1;
}

unint64_t lazy protocol witness table accessor for type BaseModifier.Child and conformance BaseModifier.Child()
{
  result = lazy protocol witness table cache variable for type BaseModifier.Child and conformance BaseModifier.Child;
  if (!lazy protocol witness table cache variable for type BaseModifier.Child and conformance BaseModifier.Child)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BaseModifier.Child, &unk_1EFFC5938, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BaseModifier.Child and conformance BaseModifier.Child);
  }

  return result;
}

__n128 __swift_memcpy40_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformItemNavigationSelectionStyleModifier and conformance PlatformItemNavigationSelectionStyleModifier()
{
  result = lazy protocol witness table cache variable for type PlatformItemNavigationSelectionStyleModifier and conformance PlatformItemNavigationSelectionStyleModifier;
  if (!lazy protocol witness table cache variable for type PlatformItemNavigationSelectionStyleModifier and conformance PlatformItemNavigationSelectionStyleModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlatformItemNavigationSelectionStyleModifier, &type metadata for PlatformItemNavigationSelectionStyleModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemNavigationSelectionStyleModifier and conformance PlatformItemNavigationSelectionStyleModifier);
  }

  return result;
}

uint64_t FocusStore.Entry.responder.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for FocusStore.Entry.Target(0, *(a1 + 16), *(a1 + 24), a4);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14[-v9 - 8];
  (*(v7 + 16))(&v14[-v9 - 8], v4 + *(a1 + 40), v6, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 8))(v10, v6);
    return 0;
  }

  else
  {
    outlined init with take of Binding<SearchFieldState>(v10, v14, type metadata accessor for WeakBox<FocusStateBindingResponder>);
    Strong = swift_weakLoadStrong();
    outlined destroy of SearchFieldState(v14, type metadata accessor for WeakBox<FocusStateBindingResponder>);
    outlined destroy of SearchFieldState((v10 + 8), type metadata accessor for WeakBox<FocusBridge>);
    return Strong;
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<PlatformItemNavigationSelectionStyleModifier>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<PlatformItemNavigationSelectionStyleModifier>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>)
  {
    type metadata accessor for _ViewModifier_Content<PlatformItemNavigationSelectionStyleModifier>(255);
    type metadata accessor for AnyNavigationLinkPresentedValueStorage<AnyHashable>(255, &lazy cache variable for type metadata for PlatformItemListTransformModifier<SelectionPlatformItemListFlags>, &type metadata for SelectionPlatformItemListFlags, &protocol witness table for SelectionPlatformItemListFlags, type metadata accessor for PlatformItemListTransformModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<PlatformItemNavigationSelectionStyleModifier>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<PlatformItemNavigationSelectionStyleModifier>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<PlatformItemNavigationSelectionStyleModifier>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<PlatformItemNavigationSelectionStyleModifier>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<PlatformItemNavigationSelectionStyleModifier>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ViewModifier_Content<PlatformItemNavigationSelectionStyleModifier> and conformance _ViewModifier_Content<A>();
    v5[1] = &protocol witness table for PlatformItemListTransformModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<PlatformItemNavigationSelectionStyleModifier>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of (offset: Int, element: WeakBox<ViewResponder>)?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<SearchFieldState>(0, &lazy cache variable for type metadata for (offset: Int, element: WeakBox<ViewResponder>)?, type metadata accessor for (offset: Int, element: WeakBox<ViewResponder>), MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata accessor for _ViewModifier_Content<PlatformItemNavigationSelectionStyleModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<PlatformItemNavigationSelectionStyleModifier>)
  {
    lazy protocol witness table accessor for type PlatformItemNavigationSelectionStyleModifier and conformance PlatformItemNavigationSelectionStyleModifier();
    v1 = type metadata accessor for _ViewModifier_Content();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ViewModifier_Content<PlatformItemNavigationSelectionStyleModifier>);
    }
  }
}

void type metadata accessor for (offset: Int, element: WeakBox<ViewResponder>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (offset: Int, element: WeakBox<ViewResponder>))
  {
    type metadata accessor for WeakBox<ViewResponder>(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (offset: Int, element: WeakBox<ViewResponder>));
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<PlatformItemNavigationSelectionStyleModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<PlatformItemNavigationSelectionStyleModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<PlatformItemNavigationSelectionStyleModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<PlatformItemNavigationSelectionStyleModifier>(255);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<PlatformItemNavigationSelectionStyleModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

void type metadata accessor for AnyNavigationLinkPresentedValueStorage<AnyHashable>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t partial apply for closure #2 in closure #1 in FocusStoreLocation.set(_:transaction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return partial apply for closure #2 in closure #1 in FocusStoreLocation.set(_:transaction:)(1, a2, a3, a4);
}

{
  v5 = a1;
  v6 = type metadata accessor for FocusStore.Entry(0, *(v4 + 16), *(v4 + 24), a4);
  return FocusStore.Entry.updateFocus(_:)(v5, v6);
}

uint64_t static PrimitiveNavigationLink._makeView(view:inputs:)(int *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  v12 = a2[3];
  v35 = a2[2];
  v36 = v12;
  v37 = a2[4];
  v38 = *(a2 + 20);
  v13 = a2[1];
  v33 = *a2;
  v34 = v13;
  outlined init with copy of _GraphInputs(&v33, &v21);
  v14 = static ShouldUseNavigationLinkV4.evaluate(inputs:)(a2, a4);
  v15 = a2[1];
  v39[0] = *a2;
  v39[1] = v15;
  v39[2] = a2[2];
  outlined destroy of _GraphInputs(v39);
  LODWORD(v24) = v11;
  v21 = v33;
  *v22 = v34;
  *&v22[16] = v35;
  outlined init with copy of _GraphInputs(&v33, &v28);
  if (v14)
  {
    static PrimitiveNavigationLink.makeNavigationLinkViewRule(view:inputs:)(&v24, a3, a4, a5, a6, &v31);
    v28 = v21;
    v29 = *v22;
    v30 = *&v22[16];
    outlined destroy of _GraphInputs(&v28);
    *&v21 = a3;
    *(&v21 + 1) = a4;
    *v22 = a5;
    *&v22[8] = a6;
    v16 = type metadata accessor for StyledNavigationLinkButton(0, &v21);
    v21 = v31;
    *v22 = *v32;
    *&v22[9] = *&v32[9];
    v24 = a3;
    v25 = a4;
    v26 = a5;
    v27 = a6;
    v17 = type metadata accessor for PrimitiveNavigationLink.NavigationLinkViewRule(0, &v24);
    swift_getWitnessTable(protocol conformance descriptor for PrimitiveNavigationLink<A, B>.NavigationLinkViewRule, v17);
    _GraphValue.init<A>(_:)();
    LODWORD(v23) = v38;
    swift_getWitnessTable(protocol conformance descriptor for StyledNavigationLinkButton<A, B>, v16, v33, v34, v35, v36, v37, v23);
  }

  else
  {
    static PrimitiveNavigationLink.makeLegacyNavigationLinkViewRule(view:inputs:)(&v24, a3, a4, a5, a6, &v31);
    v28 = v21;
    v29 = *v22;
    v30 = *&v22[16];
    outlined destroy of _GraphInputs(&v28);
    *&v21 = a3;
    *(&v21 + 1) = a4;
    *v22 = a5;
    *&v22[8] = a6;
    v18 = type metadata accessor for LegacyNavigationLinkButton(0, &v21);
    v21 = v31;
    *v22 = *v32;
    *&v22[16] = *&v32[16];
    v24 = a3;
    v25 = a4;
    v26 = a5;
    v27 = a6;
    v19 = type metadata accessor for PrimitiveNavigationLink.LegacyNavigationLinkViewRule(0, &v24);
    swift_getWitnessTable(protocol conformance descriptor for PrimitiveNavigationLink<A, B>.LegacyNavigationLinkViewRule, v19);
    _GraphValue.init<A>(_:)();
    LODWORD(v23) = v38;
    swift_getWitnessTable(protocol conformance descriptor for LegacyNavigationLinkButton<A, B>, v18, v33, v34, v35, v36, v37, v23);
  }

  return static View.makeView(view:inputs:)();
}

uint64_t FocusStore.Entry.updateFocus(_:)(char a1, uint64_t a2)
{
  v5 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<SearchFieldState>(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FocusStore.Entry.Target(0, *(a2 + 16), *(a2 + 24), v12);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - v15;
  (*(v17 + 16))(&v28 - v15, v2 + *(a2 + 40), v13, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of Binding<SearchFieldState>(v16, v11, type metadata accessor for Binding<SearchFieldState>);
    MEMORY[0x18D00ACC0](v9);
    ++static SearchFocusUpdate.nextSeed;
    v18 = &v7[*(v5 + 44)];
    *v18 = static SearchFocusUpdate.nextSeed;
    v18[4] = a1 & 1;
    if ((a1 & 1) != 0 && *v7 == 2)
    {
      v19 = v7[2];
      if (v19 == 2)
      {
        v19 = v7[3];
        if (v19 == 2)
        {
          LOBYTE(v19) = 0;
        }
      }

      *v7 = v19 & 1;
      v7[*(v5 + 40)] = 1;
    }

    dispatch thunk of AnyLocation.set(_:transaction:)();
    outlined destroy of SearchFieldState(v7, type metadata accessor for SearchFieldState);
    v20 = type metadata accessor for Binding<SearchFieldState>;
    v21 = v11;
  }

  else
  {
    outlined init with take of Binding<SearchFieldState>((v16 + 8), v30, type metadata accessor for WeakBox<FocusBridge>);
    if (a1)
    {
      FocusStore.Entry.defaultFocusItem.getter(a2, v22, v29);
      MEMORY[0x1EEE9AC00](v23);
      *(&v28 - 2) = v30;
      _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI9FocusItemV_s5NeverOytTg5(partial apply for closure #1 in FocusStore.Entry.updateFocus(_:));
      outlined destroy of FocusItem?(v29);
    }

    else if (swift_weakLoadStrong())
    {
      v24 = FocusBridge.host.getter();
      if (v24)
      {
        v25 = v24;
        v26 = [v24 firstResponder];
        [v26 resignFirstResponder];
      }
    }

    outlined destroy of SearchFieldState(v30, type metadata accessor for WeakBox<FocusBridge>);
    v20 = type metadata accessor for WeakBox<FocusStateBindingResponder>;
    v21 = v16;
  }

  return outlined destroy of SearchFieldState(v21, v20);
}

__n128 static PrimitiveNavigationLink.makeNavigationLinkViewRule(view:inputs:)@<Q0>(int *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *a1;
  v21 = *a1;
  v22[0] = a3;
  v22[1] = a4;
  v22[2] = a5;
  v22[3] = a6;
  type metadata accessor for PrimitiveNavigationLink(255, v22);
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  type metadata accessor for _GraphValue();
  v20 = _GraphValue.value.getter();
  LODWORD(v22[0]) = v9;
  type metadata accessor for NavigationDestinationPayload(0, a4, v10, v11);
  _GraphValue.subscript.getter();
  type metadata accessor for _GraphValue();
  v12 = _GraphValue.value.getter();
  lazy protocol witness table accessor for type NavigationAuthority.ListKeyViewInputKey and conformance NavigationAuthority.ListKeyViewInputKey();
  PropertyList.subscript.getter();
  v13.n128_u64[0] = v22[0];
  v19 = v13;
  LODWORD(v22[0]) = v9;
  type metadata accessor for Never?(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  _GraphValue.subscript.getter();
  lazy protocol witness table accessor for type NavigationAuthority.StackKeyViewInputKey and conformance NavigationAuthority.StackKeyViewInputKey();
  PropertyList.subscript.getter();
  v18 = v22[0];
  lazy protocol witness table accessor for type NavigationAuthority.ViewInputKey and conformance NavigationAuthority.ViewInputKey();
  PropertyList.subscript.getter();
  v14 = v22[0];
  if (one-time initialization token for selectionPopsSubsequentColumn != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  *a7 = v20;
  *(a7 + 4) = v12;
  *&v17 = v18;
  result = v19;
  *(&v17 + 1) = v19.n128_u64[0];
  *(a7 + 8) = v21;
  *(a7 + 12) = v17;
  *(a7 + 28) = v14;
  *(a7 + 36) = v15;
  *(a7 + 40) = 2;
  return result;
}

double FocusStore.Entry.defaultFocusItem.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X3>, _OWORD *a3@<X8>)
{
  v6 = type metadata accessor for FocusStore.Entry.Target(0, *(a1 + 16), *(a1 + 24), a2);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v12[-v9];
  (*(v7 + 16))(&v12[-v9], v3 + *(a1 + 40), v6, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a3 = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    a3[3] = xmmword_18CD6A6D0;
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    outlined init with take of Binding<SearchFieldState>(v10, v13, type metadata accessor for WeakBox<FocusStateBindingResponder>);
    outlined init with take of Binding<SearchFieldState>((v10 + 8), v12, type metadata accessor for WeakBox<FocusBridge>);
    if (swift_weakLoadStrong())
    {
      swift_weakLoadStrong();
      FocusStateBindingResponder.defaultFocusItem(in:)(a3);

      outlined destroy of SearchFieldState(v12, type metadata accessor for WeakBox<FocusBridge>);
      outlined destroy of SearchFieldState(v13, type metadata accessor for WeakBox<FocusStateBindingResponder>);
    }

    else
    {
      outlined destroy of SearchFieldState(v12, type metadata accessor for WeakBox<FocusBridge>);
      outlined destroy of SearchFieldState(v13, type metadata accessor for WeakBox<FocusStateBindingResponder>);
      result = 0.0;
      *a3 = 0u;
      a3[1] = 0u;
      a3[2] = 0u;
      a3[3] = xmmword_18CD6A6D0;
    }
  }

  return result;
}

uint64_t closure #1 in FocusStateBindingResponder.defaultFocusItem(in:)(uint64_t result)
{
  if (*(result + 220))
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for WeakBox<FocusBridge>(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
    result = AGGraphGetInputValue();
    if (v1)
    {

      return MultiViewResponder.children.setter();
    }
  }

  return result;
}

uint64_t closure #1 in static PrimitiveNavigationLink.makeNavigationLinkViewRule(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v12[2] = type metadata accessor for PrimitiveNavigationLink(0, v13);
  v12[3] = a2;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, a6, v12, a2, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13[0];
}

uint64_t ScrollViewResponder.updateValue()()
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 24);
  if (!v1)
  {
    v2 = *(v0 + 40);
    type metadata accessor for HostingScrollViewResponder(0);
    *(swift_allocObject() + 256) = v2;

    v1 = UIViewResponder.init()();
    swift_beginAccess();
    swift_weakLoadStrong();

    swift_weakAssign();

    *(v0 + 24) = v1;
  }

  type metadata accessor for HostingScrollView();

  v3 = *AGGraphGetValue();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v4 = v3;
  v5 = [v4 superview];
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  swift_weakAssign();
  Strong = swift_weakLoadStrong();
  if (Strong && (v7 = Strong, swift_beginAccess(), v8 = swift_unknownObjectWeakLoadStrong(), v9 = *(v7 + 208), , v8))
  {
    ObjectType = swift_getObjectType();
    v11 = type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for CurrentEventProvider, &protocol descriptor for CurrentEventProvider, 0);
    (*(v9 + 16))(&v22, v11, v11, ObjectType, v9);
    swift_unknownObjectRelease();
    v12 = v23;
  }

  else
  {
    v12 = 0;
  }

  v13 = [*AGGraphGetValue() superview];
  v21 = v12;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  swift_unknownObjectWeakInit();

  AGGraphGetValue();
  type metadata accessor for CGPoint(0);
  AGGraphGetValue();
  Value = AGGraphGetValue();
  v15 = *(Value + 8);
  v22 = *Value;
  v23 = v15;
  v16 = *(Value + 32);
  v24 = *(Value + 16);
  v25 = v16;
  swift_beginAccess();
  type metadata accessor for ContentResponderHelper<UIViewContentResponder>(0);

  ContentResponderHelper.update(data:size:position:transform:parent:)();
  swift_endAccess();

  _sSay7SwiftUI13ViewResponderCGMaTm_8(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
  AGGraphGetValue();
  if (v17)
  {

    dispatch thunk of MultiViewResponder.children.setter();
  }

  if (AGGraphGetOutputValue())
  {

    return outlined destroy of UIViewContentResponder(v20);
  }

  else
  {
    _s7SwiftUI10MutableBoxCys6UInt32VGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_18CD69590;
    *(v19 + 32) = v1;
    v22 = v19;
    AGGraphSetOutputValue();

    outlined destroy of UIViewContentResponder(v20);
  }
}

uint64_t closure #2 in static PrimitiveNavigationLink.makeNavigationLinkViewRule(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v9 = type metadata accessor for PrimitiveNavigationLink(0, v18);
  v10 = *(v9 + 52);
  v16[2] = v9;
  v17 = type metadata accessor for NavigationDestinationPayload(0, a3, v11, v12);
  v13 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v10, a6, v16, v17, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v14);
  return v18[0];
}

uint64_t type metadata accessor for HostingScrollViewResponder(uint64_t a1)
{
  result = type metadata singleton initialization cache for HostingScrollViewResponder;
  if (!type metadata singleton initialization cache for HostingScrollViewResponder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #3 in static PrimitiveNavigationLink.makeNavigationLinkViewRule(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  v6 = type metadata accessor for PrimitiveNavigationLink(0, v14);
  v7 = *(v6 + 56);
  v13[2] = v6;
  type metadata accessor for Never?(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  v9 = v8;
  v10 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_27, v13, v9, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  return v14[0];
}

uint64_t type metadata accessor for PlatformUnaryViewResponder(uint64_t a1)
{
  result = type metadata singleton initialization cache for PlatformUnaryViewResponder;
  if (!type metadata singleton initialization cache for PlatformUnaryViewResponder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata accessor for Never?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 __swift_memcpy41_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t initializeWithCopy for UIViewContentResponder(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = a4(a1, a2, a3);
  *(v7 + 8) = *(a2 + 8);
  (a4)(v7 + 16, a2 + 16);
  return a1;
}

uint64_t sub_18C0328F0(uint64_t *a1)
{
  v1 = a1[3];
  v18 = *a1;
  v19 = *(a1 + 1);
  v14 = v19;
  v20 = v1;
  v2 = type metadata accessor for InternalResolvedNavigationLink(255, &v18);
  v3 = type metadata accessor for ModifiedContent();
  type metadata accessor for PlatformItemListTransformModifier<SelectionPlatformItemListFlags>(255, v4, v5, v6);
  v7 = type metadata accessor for ModifiedContent();
  v10 = type metadata accessor for NavigationLinkDisabledModifier(255, v14, v8, v9);
  v11 = type metadata accessor for ModifiedContent();
  v17[0] = swift_getWitnessTable(protocol conformance descriptor for InternalResolvedNavigationLink<A, B>, v2);
  v17[1] = &protocol witness table for NavigationDisclosureEnvironmentModifier;
  v12 = MEMORY[0x1E697E858];
  v16[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v17);
  v16[1] = &protocol witness table for PlatformItemListTransformModifier<A>;
  v15[0] = swift_getWitnessTable(v12, v7, v16);
  v15[1] = swift_getWitnessTable(protocol conformance descriptor for NavigationLinkDisabledModifier<A>, v10);
  return swift_getWitnessTable(v12, v11, v15);
}

void destroy for UIViewContentResponder()
{
  MEMORY[0x18D011290]();

  JUMPOUT(0x18D011290);
}

uint64_t sub_18C032AC4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for NavigationLinkDisabledModifier(255, *a1, a3, a4);
  swift_getWitnessTable(protocol conformance descriptor for NavigationLinkDisabledModifier<A>, v4);
  v5 = type metadata accessor for _ViewModifier_Content();
  _s7SwiftUI19NavigationAuthorityVSgMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
  v6 = type metadata accessor for ModifiedContent();
  v8[0] = swift_getWitnessTable(MEMORY[0x1E697FDF8], v5);
  v8[1] = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v6, v8);
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyTransformModifier<Bool>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
    result = swift_getWitnessTable(MEMORY[0x1E6980B30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>);
  }

  return result;
}

uint64_t ViewResponderFilter.updateValue()(uint64_t a1)
{
  v2 = v1;
  v72 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v55 = &v54 - v6;
  v58 = v5;
  v61 = v4;
  v7 = type metadata accessor for ViewLeafView();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v54 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v54 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v54 - v16;
  v18 = *(v2 + 24);
  ViewResponderFilter.view.getter(&v54 - v16);
  v21 = *(v8 + 8);
  v20 = v8 + 8;
  v19 = v21;
  swift_unknownObjectRetain();
  v21(v17, v7);
  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (!v22)
  {
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v23 = v18;
  swift_unknownObjectWeakAssign();

  v63 = a1;
  ViewResponderFilter.view.getter(v14);
  swift_unknownObjectRetain();
  v24 = v14;
  v25 = v7;
  v60 = v20;
  v19(v24, v7);
  v58 = type metadata accessor for UIKitPlatformViewHost(0, v58, v61, v26);
  v27 = v19;
  if (swift_dynamicCastClass())
  {
    v28 = dispatch thunk of UICorePlatformViewHost.representedView.getter();
  }

  else
  {
    v28 = 0;
  }

  v29 = v62;
  swift_unknownObjectRelease();
  v30 = v23;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  Strong = swift_weakLoadStrong();
  v32 = v25;
  if (Strong)
  {
    v33 = Strong;
    swift_beginAccess();
    v34 = swift_unknownObjectWeakLoadStrong();
    v35 = *(v33 + 208);

    if (v34)
    {
      ObjectType = swift_getObjectType();
      v37 = type metadata accessor for CurrentEventProvider();
      (*(v35 + 16))(&v68, v37, v37, ObjectType, v35);
      swift_unknownObjectRelease();
      v38 = v69;
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    v38 = 0;
  }

  ViewResponderFilter.view.getter(v29);
  swift_unknownObjectRetain();
  v27(v29, v32);
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  v67 = v38;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  Value = AGGraphGetValue();
  v40 = Value[1];
  v64 = *Value;
  v65 = v40;
  type metadata accessor for CGPoint(0);
  AGGraphGetValue();
  v41 = AGGraphGetValue();
  v42 = *(v41 + 8);
  v68 = *v41;
  v69 = v42;
  v43 = *(v41 + 32);
  v70 = *(v41 + 16);
  v71 = v43;
  swift_beginAccess();
  type metadata accessor for ContentResponderHelper<UIViewContentResponder>(0);
  v61 = v27;
  v44 = v63;

  ContentResponderHelper.update(data:size:position:transform:parent:)();
  swift_endAccess();

  type metadata accessor for [KeyPress.Handler](0, &lazy cache variable for type metadata for [KeyPress.Handler], type metadata accessor for KeyPress.Handler, MEMORY[0x1E69E62F8]);
  *(v30 + 240) = *AGGraphGetValue();

  v45 = ViewResponderFilter.preferredFocusableView.getter(v44);
  if (v45 >= 2)
  {
    v47 = v62;
    v48 = v45;
    v49 = v46;
    ViewResponderFilter.view.getter(v62);
    v50 = v55;
    ViewLeafView.representedViewProvider.getter();
    v61(v47, v32);
    (v48)(v50);
    _sxSo6UIViewCSgRi_zRi0_zly20PlatformViewProviderQzIsegno_SgSg7SwiftUI04CoreC13RepresentableRzlWOe(v48, v49);
    (*(v56 + 8))(v50, AssociatedTypeWitness);
  }

  dispatch thunk of PlatformViewResponderBase.preferredFocusableView.setter();
  v51 = v59;
  ViewResponderFilter.view.getter(v59);
  swift_unknownObjectRetain();
  v61(v51, v32);
  if (swift_dynamicCastClass())
  {
    swift_weakAssign();
  }

  swift_unknownObjectRelease();
  type metadata accessor for [ViewResponder](0);
  if (AGGraphGetOutputValue())
  {
    return outlined destroy of UIViewContentResponder(v66);
  }

  _s7SwiftUI20FocusGroupIdentifierOSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_18CD69590;
  *(v53 + 32) = v30;
  v68 = v53;

  AGGraphSetOutputValue();
  outlined destroy of UIViewContentResponder(v66);
}

unint64_t type metadata accessor for CurrentEventProvider()
{
  result = lazy cache variable for type metadata for CurrentEventProvider;
  if (!lazy cache variable for type metadata for CurrentEventProvider)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CurrentEventProvider);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for NavigationLinkStyleConfiguration.Label(uint64_t a1)
{
  result = lazy protocol witness table accessor for type NavigationLinkStyleConfiguration.Label and conformance NavigationLinkStyleConfiguration.Label();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.KeyPressHandlersKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.KeyPressHandlersKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.KeyPressHandlersKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for _SetStorage<String>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.KeyPressHandlersKey>, &type metadata for EnvironmentValues.KeyPressHandlersKey, &protocol witness table for EnvironmentValues.KeyPressHandlersKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.KeyPressHandlersKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationLinkStyleConfiguration.Label and conformance NavigationLinkStyleConfiguration.Label()
{
  result = lazy protocol witness table cache variable for type NavigationLinkStyleConfiguration.Label and conformance NavigationLinkStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type NavigationLinkStyleConfiguration.Label and conformance NavigationLinkStyleConfiguration.Label)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationLinkStyleConfiguration.Label, &type metadata for NavigationLinkStyleConfiguration.Label, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationLinkStyleConfiguration.Label and conformance NavigationLinkStyleConfiguration.Label);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationLinkStyleConfiguration.Label and conformance NavigationLinkStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type NavigationLinkStyleConfiguration.Label and conformance NavigationLinkStyleConfiguration.Label)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationLinkStyleConfiguration.Label, &type metadata for NavigationLinkStyleConfiguration.Label, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationLinkStyleConfiguration.Label and conformance NavigationLinkStyleConfiguration.Label);
  }

  return result;
}

uint64_t (*ViewResponderFilter.preferredFocusableView.getter(uint64_t a1))()
{
  if (*(v1 + 44) == *MEMORY[0x1E698D3F8])
  {
    return 1;
  }

  type metadata accessor for UIView?(255);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getFunctionTypeMetadata1();
  type metadata accessor for Optional();
  Value = AGGraphGetValue();
  v7 = *Value;
  if (!*Value)
  {
    return 0;
  }

  v8 = Value[1];
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = v4;
  v9[4] = v7;
  v9[5] = v8;

  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.CoreViewRepresentable.PlatformViewProvider) -> (@out UIView?);
}

uint64_t sub_18C0336FC()
{

  return swift_deallocObject();
}

uint64_t type metadata completion function for UpdateViewDestinationViewModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void closure #1 in ResponderNode.visitBaseFocusResponders(applying:)(void (*a2)(uint64_t, uint64_t)@<X1>, _BYTE *a3@<X8>)
{
  v5 = swift_conformsToProtocol2();
  if (v5)
  {
    v6 = v5;

    a2(v7, v6);
  }

  else
  {
    *a3 = 0;
  }
}

uint64_t type metadata completion function for UpdateViewDestinationRequestProcessor(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t closure #2 in FocusStateBindingResponder.defaultFocusItem(in:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = swift_conformsToProtocol2();
  if (v8)
  {
    v9 = v8;
    v10 = *a1;
    v11 = *(v8 + 16);

    v11(v20, v10, v9);
    if (v23)
    {
      v12 = 0;
    }

    else
    {
      v12 = v24 == 1;
    }

    if (v12)
    {

      outlined destroy of FocusItem?(v20, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720]);
    }

    else
    {
      v13 = FocusItem.isFocusable.getter();
      outlined destroy of FocusItem(v20);
      if (v13)
      {
        v11(v20, v10, v9);

LABEL_14:
        outlined assign with take of FocusItem?(v20, a3);
        goto LABEL_16;
      }
    }
  }

  if (!(*(a2 + 8))(*a1, a2))
  {
    goto LABEL_16;
  }

  ObjectType = swift_getObjectType();
  v15 = swift_conformsToProtocol2();
  if (v15 && ((*(v15 + 24))(ObjectType, v15) & 1) != 0)
  {
    v24 = 0;
    swift_weakInit();
    v25 = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v21 = 1;
    v24 = 0;
    swift_weakAssign();
    v22 = 0;
    goto LABEL_14;
  }

  swift_unknownObjectRelease();
LABEL_16:
  v16 = MEMORY[0x1E69E6720];
  outlined init with copy of FocusItem?(a3, v20, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720]);
  if (v24 == 1 && v23 == 0)
  {
    v18 = 0;
  }

  else
  {
    v18 = 2;
  }

  result = outlined destroy of FocusItem?(v20, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, v16);
  *a4 = v18;
  return result;
}

uint64_t sub_18C033D50(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v14[0] = &type metadata for NavigationLinkStyleConfiguration.Label;
  v14[1] = v2;
  v14[2] = lazy protocol witness table accessor for type NavigationLinkStyleConfiguration.Label and conformance NavigationLinkStyleConfiguration.Label();
  v14[3] = v4;
  type metadata accessor for StaticSourceWriter(255, v14);
  v5 = type metadata accessor for ModifiedContent();
  type metadata accessor for UpdateViewDestinationViewModifier(255, v1, v3, v6);
  type metadata accessor for UpdateViewDestinationRequestProcessor(255, v1, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380]);
  v7 = type metadata accessor for ModifiedContent();
  v8 = type metadata accessor for ModifiedContent();
  v13[0] = lazy protocol witness table accessor for type ResolvedNavigationLink and conformance ResolvedNavigationLink();
  v13[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v9 = MEMORY[0x1E697E858];
  v12[0] = &protocol witness table for UpdateViewDestinationViewModifier<A>;
  v12[1] = &protocol witness table for UpdateViewDestinationRequestProcessor<A, B>;
  v11[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v13);
  v11[1] = swift_getWitnessTable(MEMORY[0x1E697E840], v7, v12);
  return swift_getWitnessTable(v9, v8, v11);
}

void type metadata accessor for UIKitContainerFocusResponderItem<FocusStateBindingResponder>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UIKitContainerFocusResponderItem<FocusStateBindingResponder>)
  {
    v2 = type metadata accessor for FocusStateBindingResponder(255);
    v4 = type metadata accessor for UIKitContainerFocusResponderItem(a1, v2, &protocol witness table for FocusStateBindingResponder, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for UIKitContainerFocusResponderItem<FocusStateBindingResponder>);
    }
  }
}

uint64_t specialized FocusStateBindingResponder.hostedItem.getter()
{
  result = *(v0 + 248);
  if (!result)
  {
    type metadata accessor for UIKitContainerFocusResponderItem<FocusStateBindingResponder>(0);
    v3 = v2;
    v4 = objc_allocWithZone(v2);
    swift_weakInit();
    swift_unknownObjectWeakInit();
    *&v4[direct field offset for UIKitContainerFocusResponderItem.frameAttr] = 0;
    v4[direct field offset for UIKitContainerFocusResponderItem.isEnabled] = 1;
    *&v4[direct field offset for UIKitContainerFocusResponderItem.cachedCoordinateSpace] = 0;
    swift_weakAssign();
    v7.receiver = v4;
    v7.super_class = v3;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    v6 = *(v0 + 248);
    *(v0 + 248) = v5;

    return *(v0 + 248);
  }

  return result;
}

uint64_t protocol witness for BaseFocusResponder.platformItem.getter in conformance FocusStateBindingResponder()
{
  specialized FocusStateBindingResponder.hostedItem.getter();

  return swift_unknownObjectRetain();
}

unint64_t lazy protocol witness table accessor for type ResolvedNavigationLink and conformance ResolvedNavigationLink()
{
  result = lazy protocol witness table cache variable for type ResolvedNavigationLink and conformance ResolvedNavigationLink;
  if (!lazy protocol witness table cache variable for type ResolvedNavigationLink and conformance ResolvedNavigationLink)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedNavigationLink, &type metadata for ResolvedNavigationLink, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedNavigationLink and conformance ResolvedNavigationLink);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedNavigationLink and conformance ResolvedNavigationLink;
  if (!lazy protocol witness table cache variable for type ResolvedNavigationLink and conformance ResolvedNavigationLink)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedNavigationLink, &type metadata for ResolvedNavigationLink, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedNavigationLink and conformance ResolvedNavigationLink);
  }

  return result;
}

uint64_t static UpdateViewDestinationRequestProcessor._makeView(modifier:inputs:body:)@<X0>(__int128 *a1@<X1>, void (*a2)(void *__return_ptr)@<X2>, void *a3@<X8>)
{
  v3 = a1[3];
  v4 = a1[1];
  v15 = a1[2];
  v16 = v3;
  v5 = a1[3];
  v17 = a1[4];
  v6 = a1[1];
  v13 = *a1;
  v14 = v6;
  v11[2] = v15;
  v11[3] = v5;
  v11[4] = a1[4];
  v18 = *(a1 + 20);
  v12 = *(a1 + 20);
  v11[0] = v13;
  v11[1] = v4;
  a2(a3);
  lazy protocol witness table accessor for type NavigationAuthority.SeedInputs and conformance NavigationAuthority.SeedInputs();
  PropertyList.subscript.getter();
  lazy protocol witness table accessor for type NavigationAuthority.ListSelectionCanonicalIDKey and conformance NavigationAuthority.ListSelectionCanonicalIDKey();
  PropertyList.subscript.getter();
  *&v11[0] = v16;
  DWORD2(v11[0]) = DWORD2(v16);
  v9 = v16;
  v10 = DWORD2(v16);
  outlined init with copy of PreferencesInputs(v11, v8);
  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
}

uint64_t static UpdateViewDestinationViewModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t *a2, void (*a3)(void))
{
  a3();
  lazy protocol witness table accessor for type NavigationAuthority.SeedInputs and conformance NavigationAuthority.SeedInputs();
  PropertyList.subscript.getter();
  if (AGWeakAttributeGetAttribute() != *MEMORY[0x1E698D3F8])
  {
    AGGraphCreateOffsetAttribute2();
  }

  lazy protocol witness table accessor for type NavigationAuthority.ListSelectionCanonicalIDKey and conformance NavigationAuthority.ListSelectionCanonicalIDKey();
  v3 = PropertyList.subscript.getter();
  MEMORY[0x1EEE9AC00](v3);

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
}

void PlatformUnaryViewResponder.visit(applying:)(void (*a1)(uint64_t *__return_ptr, uint64_t)@<X0>, _BYTE *a3@<X8>)
{
  a1(&v7, v3);
  v5 = v7;
  if (!v7)
  {

    MultiViewResponder.visit(applying:)();

    v5 = v6;
  }

  *a3 = v5;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedNavigationLink(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedNavigationLink and conformance ResolvedNavigationLink();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

double UIViewResponder.focusItem.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_17;
  }

  v5 = Strong;
  v6 = MEMORY[0x1E697DF70];
  v7 = MEMORY[0x1E697DF68];
  type metadata accessor for _SemanticFeature<Semantics_v2>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v7>, MEMORY[0x1E697DF70], MEMORY[0x1E697DF68]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v7> and conformance _SemanticFeature<A>, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v7>, v6, v7);
  if (static SemanticFeature.isEnabled.getter())
  {
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      v10 = [v8 isUserInteractionEnabled];

      if (!v10)
      {

LABEL_17:
        result = 0.0;
        *a1 = 0u;
        *(a1 + 16) = 0u;
        *(a1 + 32) = 0u;
        *(a1 + 48) = xmmword_18CD6A6D0;
        return result;
      }
    }
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFocusSystem, 0x1E69DCA38);
  v11 = v5;
  v12 = static UIFocusSystem.focusSystem(for:)();

  if (v12)
  {

    v13 = [v11 traitCollection];
    v14 = [v13 userInterfaceIdiom];

    v15 = dispatch thunk of PlatformViewResponderBase.preferredFocusableView.getter();
    if (v15 || (v20 = MEMORY[0x1E697DF50], v21 = MEMORY[0x1E697DF48], type metadata accessor for _SemanticFeature<Semantics_v2>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v5>, MEMORY[0x1E697DF50], MEMORY[0x1E697DF48]), lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v5>, v20, v21), (static SemanticFeature.isEnabled.getter() & 1) != 0) && (v15 = UIView.firstFocusableDescendant.getter()) != 0)
    {
      v16 = v15;

      v11 = v16;
    }

    *(a1 + 48) = 0;
    swift_weakInit();
    *(a1 + 56) = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();

    *(a1 + 32) = 1;
    *(a1 + 48) = &protocol witness table for UIViewResponder;
    swift_weakAssign();
    *(a1 + 33) = v14 == 3;
  }

  else if ((*(*v2 + class metadata base offset for UIViewResponder + 48))())
  {
    v17 = dispatch thunk of PlatformViewResponderBase.preferredFocusableView.getter();
    if (v17)
    {
      v18 = v17;

      v11 = v18;
    }

    *(a1 + 48) = 0;
    swift_weakInit();
    *(a1 + 56) = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();

    *(a1 + 32) = 2;
    *(a1 + 48) = &protocol witness table for UIViewResponder;
    swift_weakAssign();
    *(a1 + 33) = 0;
  }

  else
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = xmmword_18CD6A6D0;
  }

  return result;
}

uint64_t FocusResponder.platformItem.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v7, a1);
  if (v7[5])
  {
    v2 = 0;
  }

  else
  {
    v2 = v7[6] == 1;
  }

  if (v2)
  {
    _s7SwiftUI9FocusItemVSgWOhTm_0(v7, type metadata accessor for FocusItem?);
    return 0;
  }

  else
  {
    outlined init with copy of FocusItem.Base(v7, v5);
    if (v5[32] == 1)
    {
      outlined init with take of WeakBox<UIFocusItem>(v5, v6);
      Strong = swift_unknownObjectWeakLoadStrong();
      _s7SwiftUI9FocusItemVSgWOhTm_0(v6, type metadata accessor for WeakBox<UIFocusItem>);
    }

    else
    {
      outlined destroy of FocusItem.Base(v5);
      Strong = 0;
    }

    outlined destroy of FocusItem(v7);
  }

  return Strong;
}

uint64_t UIViewResponder.wantsSwiftUIFocusItem.getter()
{
  v0 = dispatch thunk of PlatformViewResponderBase.preferredFocusableView.getter();
  if (v0)
  {
    Strong = v0;
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return 0;
    }
  }

  v2 = MEMORY[0x1E697DF50];
  v3 = MEMORY[0x1E697DF48];
  type metadata accessor for _SemanticFeature<Semantics_v2>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v5>, MEMORY[0x1E697DF50], MEMORY[0x1E697DF48]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v5>, v2, v3);
  if ((static SemanticFeature.isEnabled.getter() & 1) == 0)
  {
    v5 = [Strong canBecomeFirstResponder];
    goto LABEL_8;
  }

  v4 = UIView.firstFocusableDescendant.getter();

  if (!v4)
  {
    return 0;
  }

  v5 = 1;
  Strong = v4;
LABEL_8:

  return v5;
}

uint64_t *UIView.firstFocusableDescendant.getter()
{
  type metadata accessor for _ContiguousArrayStorage<[UIView]>(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63400;
  type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18CD69590;
  *(v2 + 32) = v0;
  *(inited + 32) = v2;
  v3 = v0;
  for (i = PlatformSubtreeIterator.next()(); i; i = PlatformSubtreeIterator.next()())
  {
    if ([i canBecomeFirstResponder])
    {
      break;
    }
  }

  return i;
}

void type metadata accessor for _ContiguousArrayStorage<[UIView]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<[UIView]>)
  {
    type metadata accessor for WeakBox<UIGestureRecognizer>(255, &lazy cache variable for type metadata for [UIView], &lazy cache variable for type metadata for UIView, 0x1E69DD250, MEMORY[0x1E69E62F8]);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<[UIView]>);
    }
  }
}

void type metadata accessor for WeakBox<UIGestureRecognizer>(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for NSObject(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for NavigationLinkStyleModifier<AutomaticNavigationLinkStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for NavigationLinkStyleModifier<AutomaticNavigationLinkStyle>)
  {
    v2 = lazy protocol witness table accessor for type AutomaticNavigationLinkStyle and conformance AutomaticNavigationLinkStyle();
    v4 = type metadata accessor for NavigationLinkStyleModifier(a1, &type metadata for AutomaticNavigationLinkStyle, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for NavigationLinkStyleModifier<AutomaticNavigationLinkStyle>);
    }
  }
}

uint64_t *PlatformSubtreeIterator.next()()
{
  v2 = v0[1];
  if (v2 > 9)
  {
    return 0;
  }

  v3 = *v0;
  if (!*(*v0 + 16))
  {
    return 0;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = isUniquelyReferenced_nonNull_native;
    v5 = *(isUniquelyReferenced_nonNull_native + 16);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = v3[2];
  if (!v5)
  {
    goto LABEL_15;
  }

LABEL_5:
  v6 = v5 - 1;
  v7 = v3[v6 + 4];
  v3[2] = v6;
  v1 = v0;
  *v0 = v3;
  v23 = v7;
  specialized RangeReplaceableCollection.removeFirst()();
  v0 = v8;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      v0 = 0;
      *v1 = MEMORY[0x1E69E7CC0];
      v1[1] = v2 + 1;
      return v0;
    }
  }

  isUniquelyReferenced_nonNull_native = v23;
  if (v23 >> 62)
  {
LABEL_16:
    v11 = isUniquelyReferenced_nonNull_native;
    v12 = __CocoaSet.count.getter();
    isUniquelyReferenced_nonNull_native = v11;
    if (v12)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:
    v10 = v3[2];
    v9 = v3[3];
    if (v10 >= v9 >> 1)
    {
      v22 = isUniquelyReferenced_nonNull_native;
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v3);
      isUniquelyReferenced_nonNull_native = v22;
    }

    v3[2] = v10 + 1;
    v3[v10 + 4] = isUniquelyReferenced_nonNull_native;
    *v1 = v3;
    goto LABEL_18;
  }

LABEL_17:

LABEL_18:
  v13 = [v0 subviews];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v14 >> 62)
  {
    v15 = __CocoaSet.count.getter();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v15 && v3[2] <= 3uLL)
  {
    v16 = [v0 effectiveUserInterfaceLayoutDirection];
    v17 = [v0 subviews];
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v16 == 1)
    {
      v18 = specialized Sequence.reversed()(v18);
    }

    v20 = v3[2];
    v19 = v3[3];
    if (v20 >= v19 >> 1)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v3);
    }

    v3[2] = v20 + 1;
    v3[v20 + 4] = v18;
    *v1 = v3;
  }

  v1[1] = v2 + 1;
  return v0;
}

unint64_t lazy protocol witness table accessor for type NavigationLinkStyleModifier<AutomaticNavigationLinkStyle> and conformance NavigationLinkStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type NavigationLinkStyleModifier<AutomaticNavigationLinkStyle> and conformance NavigationLinkStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type NavigationLinkStyleModifier<AutomaticNavigationLinkStyle> and conformance NavigationLinkStyleModifier<A>)
  {
    type metadata accessor for NavigationLinkStyleModifier<AutomaticNavigationLinkStyle>(255);
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationLinkStyleModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationLinkStyleModifier<AutomaticNavigationLinkStyle> and conformance NavigationLinkStyleModifier<A>);
  }

  return result;
}

void specialized RangeReplaceableCollection.removeFirst()()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (__CocoaSet.count.getter())
  {
    if (__CocoaSet.count.getter())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        *(v1 + 32);
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x18D00E9C0](0, v1);
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = __CocoaSet.count.getter();
LABEL_13:
      if (v3)
      {
        specialized Array.replaceSubrange<A>(_:with:)(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = __CocoaSet.count.getter();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = __CocoaSet.count.getter();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);

  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v5, v3, 0);
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), 0, type metadata accessor for AccessibilityNode);
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), 0, type metadata accessor for UIKitAccessibilityLinkRotorBridge.LinkElement);
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

unint64_t lazy protocol witness table accessor for type AutomaticNavigationLinkStyle and conformance AutomaticNavigationLinkStyle()
{
  result = lazy protocol witness table cache variable for type AutomaticNavigationLinkStyle and conformance AutomaticNavigationLinkStyle;
  if (!lazy protocol witness table cache variable for type AutomaticNavigationLinkStyle and conformance AutomaticNavigationLinkStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AutomaticNavigationLinkStyle, &type metadata for AutomaticNavigationLinkStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AutomaticNavigationLinkStyle and conformance AutomaticNavigationLinkStyle);
  }

  return result;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = __CocoaSet.count.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t FocusItem.isFocusable.getter()
{
  outlined init with copy of FocusItem.Base(v0, v8);
  if (!v9)
  {
    LOBYTE(v2) = v8[4];

    return v2 & 1;
  }

  if (v9 == 1)
  {
    outlined init with take of WeakBox<UIFocusItem>(v8, &v7);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      LOBYTE(v2) = [Strong canBecomeFocused];
      swift_unknownObjectRelease();
      outlined destroy of WeakBox<UIFocusItem>(&v7, type metadata accessor for WeakBox<UIFocusItem>);
      return v2 & 1;
    }

    outlined destroy of WeakBox<UIFocusItem>(&v7, type metadata accessor for WeakBox<UIFocusItem>);
LABEL_16:
    LOBYTE(v2) = 0;
    return v2 & 1;
  }

  outlined init with take of WeakBox<UIView>(v8, &v7);
  if (swift_weakLoadStrong())
  {
    type metadata accessor for UIViewResponder(0);
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      LOBYTE(v2) = (*(*v3 + class metadata base offset for UIViewResponder + 48))();

LABEL_18:
      outlined destroy of WeakBox<UIView>(&v7);
      return v2 & 1;
    }
  }

  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {
    outlined destroy of WeakBox<UIView>(&v7);
    goto LABEL_16;
  }

  v5 = v4;
  type metadata accessor for _SemanticFeature<Semantics_v5>();
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>();
  if ((static SemanticFeature.isEnabled.getter() & 1) == 0)
  {
    LOBYTE(v2) = [v5 canBecomeFirstResponder];

    goto LABEL_18;
  }

  v2 = UIView.firstFocusableDescendant.getter();

  outlined destroy of WeakBox<UIView>(&v7);
  if (v2)
  {

    LOBYTE(v2) = 1;
  }

  return v2 & 1;
}

uint64_t initializeWithCopy for FocusItem.Base(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3 >= 3)
  {
    v3 = *a2 + 3;
  }

  if (v3 == 2)
  {
    swift_unknownObjectWeakCopyInit();
    v4 = 2;
  }

  else
  {
    if (v3 != 1)
    {
      *a1 = *a2;
      *(a1 + 4) = *(a2 + 4);
      v5 = *(a2 + 16);
      v6 = *(a2 + 24);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = v5;
      *(a1 + 24) = v6;
      *(a1 + 32) = 0;

      return a1;
    }

    swift_unknownObjectWeakCopyInit();
    v4 = 1;
  }

  *(a1 + 32) = v4;
  return a1;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance NavigationLinkStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for NavigationLinkStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t outlined init with take of WeakBox<UIView>(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI7WeakBoxVySo6UIViewCGMaTm_0(0, &lazy cache variable for type metadata for WeakBox<UIView>, MEMORY[0x1E6981A78]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18C035870(void *a1)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t outlined destroy of WeakBox<UIView>(uint64_t a1)
{
  type metadata accessor for WeakBox<UIView>(0, &lazy cache variable for type metadata for WeakBox<UIView>, &lazy cache variable for type metadata for UIView, 0x1E69DD250, MEMORY[0x1E6981A78]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t destroy for FocusItem(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 == 2 || v1 == 1)
  {
    MEMORY[0x18D011290](a1);
  }

  else if (!*(a1 + 32))
  {
  }

  return swift_weakDestroy();
}

void type metadata accessor for NavigationLinkStyleModifier<ButtonNavigationLinkStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for NavigationLinkStyleModifier<ButtonNavigationLinkStyle>)
  {
    v2 = lazy protocol witness table accessor for type ButtonNavigationLinkStyle and conformance ButtonNavigationLinkStyle();
    v4 = type metadata accessor for NavigationLinkStyleModifier(a1, &type metadata for ButtonNavigationLinkStyle, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for NavigationLinkStyleModifier<ButtonNavigationLinkStyle>);
    }
  }
}

void type metadata accessor for ModifiedContent<ResolvedNavigationLink, NavigationLinkStyleModifier<ButtonNavigationLinkStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ResolvedNavigationLink, NavigationLinkStyleModifier<ButtonNavigationLinkStyle>>)
  {
    type metadata accessor for NavigationLinkStyleModifier<ButtonNavigationLinkStyle>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ResolvedNavigationLink, NavigationLinkStyleModifier<ButtonNavigationLinkStyle>>);
    }
  }
}

uint64_t outlined assign with take of FocusItem?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FocusItem?(0, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t initializeWithTake for FocusItem(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4 == 2)
  {
    swift_unknownObjectWeakTakeInit();
    v5 = 2;
  }

  else if (v4 == 1)
  {
    swift_unknownObjectWeakTakeInit();
    v5 = 1;
  }

  else
  {
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    v5 = *(a2 + 32);
  }

  *(a1 + 32) = v5;
  *(a1 + 33) = *(a2 + 33);
  swift_weakTakeInit();
  v7 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v7;
  return a1;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ResolvedNavigationLink, NavigationLinkStyleModifier<ButtonNavigationLinkStyle>>, PrimitiveButtonStyleContainerModifier<NavigationLinkButtonStyle<Never>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ResolvedNavigationLink, NavigationLinkStyleModifier<ButtonNavigationLinkStyle>>, PrimitiveButtonStyleContainerModifier<NavigationLinkButtonStyle<Never>>>)
  {
    type metadata accessor for ModifiedContent<ResolvedNavigationLink, NavigationLinkStyleModifier<ButtonNavigationLinkStyle>>(255);
    type metadata accessor for PrimitiveButtonStyleContainerModifier<NavigationLinkButtonStyle<Never>>(255, v1, v2, v3);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ResolvedNavigationLink, NavigationLinkStyleModifier<ButtonNavigationLinkStyle>>, PrimitiveButtonStyleContainerModifier<NavigationLinkButtonStyle<Never>>>);
    }
  }
}

uint64_t storeEnumTagSinglePayload for FocusItem(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 48) = 1;
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ResolvedNavigationLink, NavigationLinkStyleModifier<ButtonNavigationLinkStyle>>, PrimitiveButtonStyleContainerModifier<NavigationLinkButtonStyle<Never>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ResolvedNavigationLink, NavigationLinkStyleModifier<ButtonNavigationLinkStyle>>, PrimitiveButtonStyleContainerModifier<NavigationLinkButtonStyle<Never>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ResolvedNavigationLink, NavigationLinkStyleModifier<ButtonNavigationLinkStyle>>, PrimitiveButtonStyleContainerModifier<NavigationLinkButtonStyle<Never>>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ResolvedNavigationLink, NavigationLinkStyleModifier<ButtonNavigationLinkStyle>>, PrimitiveButtonStyleContainerModifier<NavigationLinkButtonStyle<Never>>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ResolvedNavigationLink, NavigationLinkStyleModifier<ButtonNavigationLinkStyle>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type NavigationLinkButtonStyle<Never> and conformance NavigationLinkButtonStyle<A>(&lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<NavigationLinkButtonStyle<Never>> and conformance PrimitiveButtonStyleContainerModifier<A>, type metadata accessor for PrimitiveButtonStyleContainerModifier<NavigationLinkButtonStyle<Never>>, protocol conformance descriptor for PrimitiveButtonStyleContainerModifier<A>);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ResolvedNavigationLink, NavigationLinkStyleModifier<ButtonNavigationLinkStyle>>, PrimitiveButtonStyleContainerModifier<NavigationLinkButtonStyle<Never>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t initializeWithCopy for FocusItem(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4 == 2)
  {
    swift_unknownObjectWeakCopyInit();
    v5 = 2;
  }

  else
  {
    if (v4 != 1)
    {
      *a1 = *a2;
      *(a1 + 4) = *(a2 + 4);
      v6 = *(a2 + 16);
      v7 = *(a2 + 24);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = v6;
      *(a1 + 24) = v7;
      *(a1 + 32) = 0;

      goto LABEL_7;
    }

    swift_unknownObjectWeakCopyInit();
    v5 = 1;
  }

  *(a1 + 32) = v5;
LABEL_7:
  *(a1 + 33) = *(a2 + 33);
  swift_weakCopyInit();
  v8 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v8;
  return a1;
}

unint64_t lazy protocol witness table accessor for type ButtonNavigationLinkStyle and conformance ButtonNavigationLinkStyle()
{
  result = lazy protocol witness table cache variable for type ButtonNavigationLinkStyle and conformance ButtonNavigationLinkStyle;
  if (!lazy protocol witness table cache variable for type ButtonNavigationLinkStyle and conformance ButtonNavigationLinkStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonNavigationLinkStyle, &type metadata for ButtonNavigationLinkStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonNavigationLinkStyle and conformance ButtonNavigationLinkStyle);
  }

  return result;
}

void type metadata accessor for NavigationLinkButtonStyle<Never>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for NavigationLinkButtonStyle<Never>)
  {
    v4 = type metadata accessor for NavigationLinkButtonStyle(0, MEMORY[0x1E69E73E0], MEMORY[0x1E6982070], a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for NavigationLinkButtonStyle<Never>);
    }
  }
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI9FocusItemV_s5NeverOytTg5(void (*a1)(uint64_t *__return_ptr, _BYTE *))
{
  outlined init with copy of AnyAccessibilityValue?(v1, v8, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem);
  if (v9)
  {
    v4 = 0;
  }

  else
  {
    v4 = v10 == 1;
  }

  v5 = v4;
  if (v4)
  {
    return v5;
  }

  outlined init with take of FocusItem(v8, v7);
  a1(&v11, v7);
  if (!v2)
  {
    outlined destroy of FocusItem(v7);
    return v5;
  }

  result = outlined destroy of FocusItem(v7);
  __break(1u);
  return result;
}

void type metadata accessor for PrimitiveButtonStyleContainerModifier<NavigationLinkButtonStyle<Never>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<NavigationLinkButtonStyle<Never>>)
  {
    type metadata accessor for NavigationLinkButtonStyle<Never>(255, a2, a3, a4);
    v6 = v5;
    v7 = lazy protocol witness table accessor for type NavigationLinkButtonStyle<Never> and conformance NavigationLinkButtonStyle<A>(&lazy protocol witness table cache variable for type NavigationLinkButtonStyle<Never> and conformance NavigationLinkButtonStyle<A>, type metadata accessor for NavigationLinkButtonStyle<Never>, protocol conformance descriptor for NavigationLinkButtonStyle<A>);
    v9 = type metadata accessor for PrimitiveButtonStyleContainerModifier(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<NavigationLinkButtonStyle<Never>>);
    }
  }
}

void FocusBridge.moveFocus(to:designatedPlatformResponder:)(uint64_t a1, void *a2)
{
  v3 = v2;
  FocusBridge.focusedItem.getter(v25);
  outlined init with copy of FocusItem(a1, v24);
  v6 = specialized static FocusItem.isFocusChange(from:to:)(v25, v24);
  outlined destroy of FocusItem?(v24);
  outlined destroy of FocusItem?(v25);
  if (v6)
  {
    v7 = FocusBridge.host.getter();
    if (v7)
    {
      v10 = v7;
      v11 = v8;
      v12 = v9;
      FocusBridge.focusedItem.getter(v25);
      v14 = v30;
      v13 = v31;
      outlined destroy of FocusItem?(v25);
      if (!v14 && v13 == 1)
      {
        if (swift_weakLoadStrong())
        {

          v15 = v10;
          v16 = specialized static FocusBridge.representedFocusItem(_:in:)(a1, v15);

          if (v16)
          {
            if (swift_weakLoadStrong())
            {
              v31 = 0;
              swift_weakInit();
              v32 = 0;
              swift_unknownObjectWeakInit();
              swift_unknownObjectWeakAssign();
              v28 = 1;
              v31 = 0;
              swift_weakAssign();
              v29 = 0;
              FocusBridge.moveFocus(to:designatedPlatformResponder:)(v25, 0);

              swift_unknownObjectRelease();

              outlined destroy of FocusItem(v25);
            }

            else
            {

              swift_unknownObjectRelease();
            }

            return;
          }
        }
      }

      if ((FocusBridge.canAcceptFocus.getter() & 1) == 0)
      {
LABEL_29:

        return;
      }

      v17 = FocusItem.platformResponder.getter();
      if (v17)
      {
        if (FocusItem.isFocusable.getter())
        {
          _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_1(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v5>, MEMORY[0x1E697DF50], MEMORY[0x1E697DF48], MEMORY[0x1E697EC20]);
          lazy protocol witness table accessor for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>();
          if ((static SemanticFeature.isEnabled.getter() & 1) == 0)
          {
            goto LABEL_16;
          }

          v18 = UIView.firstFocusableDescendant.getter();
        }

        else
        {
          v18 = 0;
        }

        v17 = v18;
      }

LABEL_16:
      outlined init with copy of FocusItem.Base(a1, v25);
      v19 = v28;
      outlined destroy of FocusItem.Base(v25);
      if (v19)
      {
        if (!v17)
        {
          outlined init with copy of FocusItem.Base(a1, v25);
          if (v28 != 1)
          {

            outlined destroy of FocusItem.Base(v25);
            return;
          }

          outlined init with take of WeakBox<UIFocusItem>(v25, v24);
          Strong = swift_unknownObjectWeakLoadStrong();
          outlined destroy of WeakBox<FocusBridge>(v24, &lazy cache variable for type metadata for WeakBox<UIFocusItem>, 255, type metadata accessor for UIFocusItem, MEMORY[0x1E6981A78]);
          if (Strong)
          {
            *(v3 + 160) = Strong;
            swift_unknownObjectRetain();
            swift_unknownObjectRelease();
            [v10 setNeedsFocusUpdate];
            type metadata accessor for UIFocusSystem();
            swift_unknownObjectRetain();
            v21 = static UIFocusSystem.focusSystem(for:)();
            swift_unknownObjectRelease();
            if (v21)
            {
              [v21 requestFocusUpdateToEnvironment_];
              swift_unknownObjectRelease();

              return;
            }

            swift_unknownObjectRelease();
          }

          goto LABEL_29;
        }
      }

      else
      {
        outlined init with copy of FocusItem(a1, v25);
        FocusBridge.focusedItem.setter(v25);

        v17 = a2;
        if (!a2)
        {
          v17 = v10;
        }

        v22 = a2;
      }

      v23 = v17;
      v24[0] = 17;
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v26 = v11;
      v27 = v12;
      swift_unknownObjectWeakInit();

      static Update.enqueueAction(reason:_:)();

      outlined destroy of weak FallbackResponderProvider?(v25);
    }
  }
}

uint64_t sub_18C03647C()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t lazy protocol witness table accessor for type NavigationLinkButtonStyle<Never> and conformance NavigationLinkButtonStyle<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

double closure #1 in FocusStore.Entry.updateFocus(_:)(uint64_t a1, uint64_t a2)
{
  if (swift_weakLoadStrong())
  {
    FocusBridge.moveFocus(to:designatedPlatformResponder:)(a1, 0);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ResolvedNavigationLink, NavigationLinkStyleModifier<ButtonNavigationLinkStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ResolvedNavigationLink, NavigationLinkStyleModifier<ButtonNavigationLinkStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ResolvedNavigationLink, NavigationLinkStyleModifier<ButtonNavigationLinkStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ResolvedNavigationLink, NavigationLinkStyleModifier<ButtonNavigationLinkStyle>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ResolvedNavigationLink and conformance ResolvedNavigationLink();
    v5[1] = &protocol witness table for NavigationLinkStyleModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ResolvedNavigationLink, NavigationLinkStyleModifier<ButtonNavigationLinkStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t specialized static FocusItem.isFocusChange(from:to:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of FocusItem?(a1, v11);
  outlined init with copy of FocusItem?(a2, v14);
  if (v12)
  {
    v3 = 0;
  }

  else
  {
    v3 = v13 == 1;
  }

  if (v3)
  {
    if (v15)
    {
      v4 = 0;
    }

    else
    {
      v4 = v16 == 1;
    }

    if (v4)
    {
      outlined destroy of FocusItem?(v11);
      v5 = 0;
      return v5 & 1;
    }
  }

  else
  {
    outlined init with copy of FocusItem?(v11, v10);
    if (v15 || v16 != 1)
    {
      outlined init with take of FocusItem(v10, v9);
      outlined init with take of FocusItem(v14, v8);
      v6 = FocusItem.hasEqualIdentity(to:)(v8);
      outlined destroy of FocusItem(v8);
      outlined destroy of FocusItem(v9);
      v5 = !v6;
      outlined destroy of FocusItem?(v11);
      return v5 & 1;
    }

    outlined destroy of FocusItem(v10);
  }

  outlined destroy of WeakBox<UIFocusItem>(v11, type metadata accessor for (FocusItem?, FocusItem?));
  v5 = 1;
  return v5 & 1;
}

uint64_t outlined destroy of WeakBox<UIFocusItem>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI7WeakBoxVySo11UIFocusItem_pGWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  _s7SwiftUI7WeakBoxVySo6UIViewCGMaTm_2(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void type metadata accessor for (FocusItem?, FocusItem?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (FocusItem?, FocusItem?))
  {
    type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>(255, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (FocusItem?, FocusItem?));
    }
  }
}

uint64_t specialized static FocusBridge.representedFocusItem(_:in:)(uint64_t a1, void *a2)
{
  outlined init with copy of FocusItem.Base(a1, v12);
  if (v13)
  {
    outlined destroy of FocusItem.Base(v12);
    outlined init with copy of FocusItem.Base(a1, v12);
    if (v13 == 1)
    {
      outlined init with take of WeakBox<UIFocusItem>(v12, v11);
      Strong = swift_unknownObjectWeakLoadStrong();
      _s7SwiftUI7WeakBoxVySo11UIFocusItem_pGWOhTm_0(v11, &lazy cache variable for type metadata for WeakBox<UIFocusItem>, &lazy cache variable for type metadata for UIFocusItem, &protocolRef_UIFocusItem, type metadata accessor for _UISceneBSActionHandler);
      return Strong;
    }

    else
    {
      outlined destroy of FocusItem.Base(v12);
      return 0;
    }
  }

  else
  {

    type metadata accessor for ListTableViewCell(0);
    v6 = a2;
    v7 = v6;
    while (1)
    {
      result = swift_dynamicCastClass();
      if (result)
      {
        v9 = &OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_host;
        goto LABEL_13;
      }

      type metadata accessor for ListCollectionViewCell(0);
      result = swift_dynamicCastClass();
      if (result)
      {
        break;
      }

      v8 = [v7 parentFocusEnvironment];
      swift_unknownObjectRelease();
      if (!v8)
      {
        return 0;
      }

      v7 = swift_dynamicCastObjCProtocolConditional();
      if (!v7)
      {
        goto LABEL_15;
      }
    }

    v9 = &direct field offset for ListCollectionViewCellBase.host;
LABEL_13:
    v10 = *(result + *v9);
    if (!v10 || v10 != v6)
    {
LABEL_15:
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

void type metadata accessor for Button<NavigationLinkStyleConfiguration.Label>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<Button<NavigationLinkStyleConfiguration.Label>, StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<NavigationLinkButtonStyle<Never>>, EmptyModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Button<NavigationLinkStyleConfiguration.Label>, StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<NavigationLinkButtonStyle<Never>>, EmptyModifier>>)
  {
    type metadata accessor for Button<NavigationLinkStyleConfiguration.Label>(255, &lazy cache variable for type metadata for Button<NavigationLinkStyleConfiguration.Label>, &type metadata for NavigationLinkStyleConfiguration.Label, &protocol witness table for NavigationLinkStyleConfiguration.Label, type metadata accessor for Button);
    type metadata accessor for StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<NavigationLinkButtonStyle<Never>>, EmptyModifier>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<Button<NavigationLinkStyleConfiguration.Label>, StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<NavigationLinkButtonStyle<Never>>, EmptyModifier>>);
    }
  }
}

double destroy for FocusItem.Base(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 3)
  {
    v1 = *a1 + 3;
  }

  if (v1 == 2 || v1 == 1)
  {
    JUMPOUT(0x18D011290);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<NavigationLinkStyleConfiguration.Label>, StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<NavigationLinkButtonStyle<Never>>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<NavigationLinkStyleConfiguration.Label>, StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<NavigationLinkButtonStyle<Never>>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<NavigationLinkStyleConfiguration.Label>, StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<NavigationLinkButtonStyle<Never>>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<Button<NavigationLinkStyleConfiguration.Label>, StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<NavigationLinkButtonStyle<Never>>, EmptyModifier>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type Button<NavigationLinkStyleConfiguration.Label> and conformance Button<A>();
    v5[1] = lazy protocol witness table accessor for type StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<NavigationLinkButtonStyle<Never>>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<NavigationLinkStyleConfiguration.Label>, StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<NavigationLinkButtonStyle<Never>>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<NavigationLinkButtonStyle<Never>>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<NavigationLinkButtonStyle<Never>>, EmptyModifier>)
  {
    type metadata accessor for ButtonStylePredicate<DefaultButtonStyle>(255);
    type metadata accessor for ButtonStyleModifier<NavigationLinkButtonStyle<Never>>(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<NavigationLinkButtonStyle<Never>>, EmptyModifier>);
    }
  }
}

uint64_t FocusItem.platformResponder.getter()
{
  outlined init with copy of FocusItem.Base(v0, v4);
  if (v5 == 2)
  {
    outlined init with take of WeakBox<UIView>(v4, v6);
    Strong = swift_unknownObjectWeakLoadStrong();
    outlined destroy of WeakBox<UIView>(v6);
    return Strong;
  }

  outlined destroy of FocusItem.Base(v4);
  outlined init with copy of FocusItem.Base(v0, v4);
  if (v5 != 1)
  {
    outlined destroy of FocusItem.Base(v4);
    return 0;
  }

  outlined init with take of WeakBox<UIFocusItem>(v4, v6);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    outlined destroy of WeakBox<UIFocusItem>(v6, type metadata accessor for WeakBox<UIFocusItem>);
    return 0;
  }

  if (*(v0 + 33))
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFocusSystem, 0x1E69DCA38);
    v3 = static UIFocusSystem.focusSystem(for:)();
    outlined destroy of WeakBox<UIFocusItem>(v6, type metadata accessor for WeakBox<UIFocusItem>);
    if (v3)
    {
      swift_unknownObjectRelease();

      return 0;
    }
  }

  else
  {
    outlined destroy of WeakBox<UIFocusItem>(v6, type metadata accessor for WeakBox<UIFocusItem>);
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return result;
  }

  swift_unknownObjectRelease();
  return 0;
}

void type metadata accessor for ButtonStylePredicate<DefaultButtonStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ButtonStylePredicate<DefaultButtonStyle>)
  {
    v2 = lazy protocol witness table accessor for type DefaultButtonStyle and conformance DefaultButtonStyle();
    v4 = type metadata accessor for ButtonStylePredicate(a1, &type metadata for DefaultButtonStyle, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ButtonStylePredicate<DefaultButtonStyle>);
    }
  }
}

void type metadata accessor for ButtonStyleModifier<NavigationLinkButtonStyle<Never>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ButtonStyleModifier<NavigationLinkButtonStyle<Never>>)
  {
    type metadata accessor for Button<NavigationLinkStyleConfiguration.Label>(255, &lazy cache variable for type metadata for NavigationLinkButtonStyle<Never>, MEMORY[0x1E69E73E0], MEMORY[0x1E6982070], type metadata accessor for NavigationLinkButtonStyle);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type NavigationLinkButtonStyle<Never> and conformance NavigationLinkButtonStyle<A>();
    v6 = type metadata accessor for ButtonStyleModifier(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for ButtonStyleModifier<NavigationLinkButtonStyle<Never>>);
    }
  }
}

void closure #1 in FocusBridge.moveFocus(to:designatedPlatformResponder:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong becomeFirstResponder];
  }
}

unint64_t lazy protocol witness table accessor for type NavigationLinkButtonStyle<Never> and conformance NavigationLinkButtonStyle<A>()
{
  result = lazy protocol witness table cache variable for type NavigationLinkButtonStyle<Never> and conformance NavigationLinkButtonStyle<A>;
  if (!lazy protocol witness table cache variable for type NavigationLinkButtonStyle<Never> and conformance NavigationLinkButtonStyle<A>)
  {
    type metadata accessor for Button<NavigationLinkStyleConfiguration.Label>(255, &lazy cache variable for type metadata for NavigationLinkButtonStyle<Never>, MEMORY[0x1E69E73E0], MEMORY[0x1E6982070], type metadata accessor for NavigationLinkButtonStyle);
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationLinkButtonStyle<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationLinkButtonStyle<Never> and conformance NavigationLinkButtonStyle<A>);
  }

  return result;
}

void @objc _UIHostingView._didChange(toFirstResponder:)(void *a1, uint64_t a2, UIResponder_optional *a3)
{
  v5 = a3;
  v6 = a1;
  _UIHostingView._didChange(toFirstResponder:)(a3);
}

unint64_t lazy protocol witness table accessor for type Button<NavigationLinkStyleConfiguration.Label> and conformance Button<A>()
{
  result = lazy protocol witness table cache variable for type Button<NavigationLinkStyleConfiguration.Label> and conformance Button<A>;
  if (!lazy protocol witness table cache variable for type Button<NavigationLinkStyleConfiguration.Label> and conformance Button<A>)
  {
    type metadata accessor for Button<NavigationLinkStyleConfiguration.Label>(255, &lazy cache variable for type metadata for Button<NavigationLinkStyleConfiguration.Label>, &type metadata for NavigationLinkStyleConfiguration.Label, &protocol witness table for NavigationLinkStyleConfiguration.Label, type metadata accessor for Button);
    result = swift_getWitnessTable(protocol conformance descriptor for Button<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Button<NavigationLinkStyleConfiguration.Label> and conformance Button<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonStylePredicate<DefaultButtonStyle> and conformance ButtonStylePredicate<A>()
{
  result = lazy protocol witness table cache variable for type ButtonStylePredicate<DefaultButtonStyle> and conformance ButtonStylePredicate<A>;
  if (!lazy protocol witness table cache variable for type ButtonStylePredicate<DefaultButtonStyle> and conformance ButtonStylePredicate<A>)
  {
    type metadata accessor for ViewInputFlagModifier<IsToggleButton>(255, &lazy cache variable for type metadata for ButtonStylePredicate<DefaultButtonStyle>, lazy protocol witness table accessor for type DefaultButtonStyle and conformance DefaultButtonStyle, &type metadata for DefaultButtonStyle, type metadata accessor for ButtonStylePredicate);
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonStylePredicate<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonStylePredicate<DefaultButtonStyle> and conformance ButtonStylePredicate<A>);
  }

  return result;
}

Swift::Void __swiftcall _UIHostingView._didChange(toFirstResponder:)(UIResponder_optional *toFirstResponder)
{
  v4 = type metadata accessor for _UIHostingView(0, *((*MEMORY[0x1E69E7D40] & *v2) + 0x50), *((*MEMORY[0x1E69E7D40] & *v2) + 0x58), v1);
  v6.receiver = v2;
  v6.super_class = v4;
  [(UIResponder_optional *)&v6 _didChangeToFirstResponder:toFirstResponder];

  swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v4);
  v5 = ViewGraphRootValueUpdater.responderNode.getter();
  FocusBridge.firstResponderDidChange(to:rootResponder:)(toFirstResponder, v5);
}

unint64_t lazy protocol witness table accessor for type StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<NavigationLinkButtonStyle<Never>>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<NavigationLinkButtonStyle<Never>>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<NavigationLinkButtonStyle<Never>>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<NavigationLinkButtonStyle<Never>>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ButtonStylePredicate<DefaultButtonStyle> and conformance ButtonStylePredicate<A>();
    v5[1] = &protocol witness table for ButtonStyleModifier<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<NavigationLinkButtonStyle<Never>>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

void FocusBridge.firstResponderDidChange(to:rootResponder:)(void *a1, uint64_t a2)
{
  v4 = FocusBridge.host.getter();
  if (!v4)
  {
    return;
  }

  v24 = v4;
  v5 = FocusBridge.host.getter();
  if (!v5)
  {

    return;
  }

  if (!a1 || (objc_opt_self(), (v6 = swift_dynamicCastObjCClass()) == 0))
  {
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = xmmword_18CD6A6D0;
    FocusBridge.focusedItem.setter(&v32);

    return;
  }

  v7 = v6;
  v8 = a1;
  FocusBridge.focusedItem.getter(&v32);
  outlined init with copy of FocusItem?(&v32, v26);
  if (v29 || v30 != 1)
  {
    outlined init with take of FocusItem(v26, v25);
    v9 = FocusItem.platformResponder.getter();
    outlined destroy of FocusItem(v25);
    outlined destroy of FocusItem?(&v32);
    if (!v9)
    {
      v9 = v24;
    }

    if (v7 == v9)
    {
      goto LABEL_22;
    }
  }

  else
  {
    outlined destroy of FocusItem?(&v32);
  }

  if (v7 == v24)
  {
    specialized FocusBridge.hostDidBecomeFirstResponder(in:)();
LABEL_22:

    return;
  }

  v23 = v8;
  v10 = [v7 superview];
  if (v10)
  {
    v11 = v10;
    while (1)
    {
      ObjectType = swift_getObjectType();
      v13 = swift_conformsToProtocol2();
      if (v13)
      {
        break;
      }

      v14 = [v11 superview];

      v11 = v14;
      if (!v14)
      {
        goto LABEL_20;
      }
    }

    v16 = *(v13 + 8);
    v17 = v13;
    v18 = v11;
    v15 = v16(ObjectType, v17);
  }

  else
  {
LABEL_20:
    v15 = 0;
  }

  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = xmmword_18CD6A6D0;
  swift_getObjectType();
  v19 = swift_conformsToProtocol2();
  if (v19)
  {
    v20 = v19;
    v21 = swift_getObjectType();
    if ((*(v20 + 8))(v21, v20))
    {
      v22 = &protocol witness table for UIViewResponder;
    }

    else
    {
      v22 = 0;
    }

    v30 = 0;
    swift_weakInit();
    v31 = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v27 = 2;
    v30 = v22;
    swift_weakAssign();

    v28 = 0;
  }

  else
  {
    if (a2)
    {
      MEMORY[0x1EEE9AC00](0);
      MEMORY[0x1EEE9AC00](v24);
      dispatch thunk of ResponderNode.visit(applying:)();
    }

    outlined init with copy of FocusItem?(&v32, v26);
  }

  FocusBridge.focusedItem.setter(v26);

  outlined destroy of FocusItem?(&v32);
}

void type metadata accessor for ViewInputFlagModifier<IsToggleButton>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t UIKitPlatformViewHost.focusView.getter()
{
  v0 = dispatch thunk of UICorePlatformViewHost.representedView.getter();
  swift_getObjectType();
  v1 = swift_conformsToProtocol2();
  if (v1 && v0)
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    v4 = (*(v2 + 8))(ObjectType, v2);

    return v4;
  }

  else
  {

    return dispatch thunk of UICorePlatformViewHost.representedView.getter();
  }
}

void closure #1 in ResponderNode.visitFocusResponders(applying:)(void (*a2)(uint64_t, uint64_t)@<X1>, _BYTE *a3@<X8>)
{
  v5 = swift_conformsToProtocol2();
  if (v5)
  {
    v6 = v5;

    a2(v7, v6);
  }

  else
  {
    *a3 = 0;
  }
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance NavigationLinkStyleConfiguration.Label(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<NavigationLinkStyleConfiguration.Label>, lazy protocol witness table accessor for type NavigationLinkStyleConfiguration.Label and conformance NavigationLinkStyleConfiguration.Label, &type metadata for NavigationLinkStyleConfiguration.Label, &lazy protocol witness table cache variable for type SourceInput<NavigationLinkStyleConfiguration.Label> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type NavigationLinkStyleConfiguration.Label and conformance NavigationLinkStyleConfiguration.Label();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

void closure #2 in FocusBridge.firstResponderDidChange(to:rootResponder:)(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, id a4@<X5>, uint64_t a5@<X6>, void *a6@<X7>, _BYTE *a7@<X8>)
{
  (*(a2 + 16))(v20, *a1);
  if (v23)
  {
    v13 = 0;
  }

  else
  {
    v13 = v24 == 1;
  }

  if (v13)
  {
    outlined destroy of FocusItem?(v20);
  }

  else
  {
    outlined init with take of FocusItem(v20, v26);
    if (FocusItem.isFocusable.getter())
    {
      v14 = FocusItem.platformResponder.getter();
      if (!v14)
      {
        v14 = a3;
      }

      v15 = v14;

      if (v15 == a4)
      {
        outlined destroy of FocusItem?(a5);
        outlined init with take of FocusItem(v26, a5);
        *a7 = 2;
        return;
      }
    }

    v16 = FocusItem.platformResponder.getter();
    if (v16)
    {
      v17 = v16;
      if (a6)
      {
        v18 = a6;
        v19 = [v18 isDescendantOfView_];

        outlined destroy of FocusItem(v26);
        if (v19)
        {
          v24 = 0;
          swift_weakInit();
          v25 = 0;
          swift_unknownObjectWeakInit();
          swift_unknownObjectWeakAssign();
          v21 = 2;
          v24 = a2;
          swift_weakAssign();
          v22 = 0;
          outlined assign with take of FocusItem?(v20, a5);
          *a7 = 2;
          return;
        }
      }

      else
      {
        outlined destroy of FocusItem(v26);
      }
    }

    else
    {
      outlined destroy of FocusItem(v26);
    }
  }

  *a7 = 0;
}

uint64_t implicit closure #1 in static UpdateViewDestinationViewModifier._makeView(modifier:inputs:body:)(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = *MEMORY[0x1E69E9840];
  type metadata accessor for UpdateViewDestinationViewModifier(255, a4, a5, a4);
  type metadata accessor for _GraphValue();
  v17 = _GraphValue.value.getter();
  v18 = a2;
  v19 = AGCreateWeakAttribute();
  v20 = 0;
  v21 = 1;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = -1;
  updated = type metadata accessor for UpdateViewDestinationViewModifier.RequestWriter(0, a4, a5, v8);
  v15 = updated;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UpdateViewDestinationViewModifier<A>.RequestWriter, updated);
  type metadata accessor for Attribute<(_:)>(0);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v17, closure #1 in Attribute.init<A>(_:)partial apply, v14, updated, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  (*(*(updated - 8) + 8))(&v17, updated);
  return a1;
}

uint64_t @objc _UIHostingView.canBecomeFirstResponder.getter(void *a1)
{
  v1 = a1;
  v2 = _UIHostingView.canBecomeFirstResponder.getter();

  return v2 & 1;
}

uint64_t _UIHostingView.canBecomeFirstResponder.getter()
{

  v0 = FocusBridge.host.getter();
  if (!v0)
  {
LABEL_7:

    return 0;
  }

  v2 = v0;
  v3 = v1;
  if (FocusBridge.canAcceptFocus.getter())
  {
    ObjectType = swift_getObjectType();
    v5 = (*(*(v3 + 8) + 24))(ObjectType);
    if (v5)
    {
      MEMORY[0x1EEE9AC00](v5);
      MEMORY[0x1EEE9AC00](v6);
      dispatch thunk of ResponderNode.visit(applying:)();

      return 0;
    }

    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_18C0380EC(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, a1);

  return ViewGraphRootValueUpdater.responderNode.getter();
}

uint64_t FocusStateBindingResponderFilter.updateValue()()
{
  v1 = *v0;
  type metadata accessor for WeakBox<FocusBridge>(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
  AGGraphGetValue();
  if (v2)
  {

    MultiViewResponder.children.setter();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    type metadata accessor for FocusItem?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_18CD69590;
    *(v4 + 32) = v1;

    AGGraphSetOutputValue();
  }

  return result;
}

double ButtonFocusInteractionModifier.body(content:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, _OWORD *a5@<X8>)
{
  *(&v22 + 1) = &type metadata for FocusInteractions;
  *&v23 = &protocol witness table for FocusInteractions;
  *&v21 = 3;
  LOBYTE(v25[0]) = 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v21, v25 + 8);
  *&v27 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  *(&v27 + 1) = 0;
  v21 = v25[0];
  v22 = v25[1];
  v23 = v26;
  v24 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  v34 = 16;
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  lazy protocol witness table accessor for type PhysicalButtonPressGesture and conformance PhysicalButtonPressGesture();
  lazy protocol witness table accessor for type PhysicalButtonEvent.ButtonType and conformance PhysicalButtonEvent.ButtonType();

  Gesture<>.onChanged(_:)();

  v34 = *&v25[0];
  v35 = *(v25 + 8);
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = a4;
  type metadata accessor for _ChangedGesture<PhysicalButtonPressGesture>(0);
  lazy protocol witness table accessor for type ArchivableLinkModifier and conformance ArchivableLinkModifier(&lazy protocol witness table cache variable for type _ChangedGesture<PhysicalButtonPressGesture> and conformance _ChangedGesture<A>, type metadata accessor for _ChangedGesture<PhysicalButtonPressGesture>, MEMORY[0x1E697E8D0]);

  Gesture.onEnded(_:)();

  *v31 = v17;
  *&v31[8] = v18;
  *&v31[24] = v19;
  *v33 = 0;
  *&v33[8] = 0;
  v32 = v20;
  *&v33[16] = 3;
  v26 = v23;
  v27 = v24;
  v25[0] = v21;
  v25[1] = v22;
  *(v30 + 12) = *&v33[4];
  v29 = *&v31[16];
  v30[0] = v20;
  v28 = *v31;
  v34 = v17;
  v35 = v18;
  v36 = v19;
  v38 = 0;
  v39 = 0;
  v37 = v20;
  v40 = 3;
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_4(v31, v16, type metadata accessor for AddGestureModifier<_EndedGesture<_ChangedGesture<PhysicalButtonPressGesture>>, DefaultGestureCombiner>);
  outlined destroy of LinkDestination.Configuration(&v34, type metadata accessor for AddGestureModifier<_EndedGesture<_ChangedGesture<PhysicalButtonPressGesture>>, DefaultGestureCombiner>);
  v12 = v29;
  a5[4] = v28;
  a5[5] = v12;
  a5[6] = v30[0];
  *(a5 + 108) = *(v30 + 12);
  v13 = v25[1];
  *a5 = v25[0];
  a5[1] = v13;
  result = *&v26;
  v15 = v27;
  a5[2] = v26;
  a5[3] = v15;
  return result;
}

uint64_t initializeWithCopy for UpdateViewDestinationViewModifier.RequestWriter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  switch(*(a2 + 128))
  {
    case 0:
      v4 = *(a2 + 40);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = v4;
      *(a1 + 128) = 0;

      return a1;
    case 1:
      v15 = *(a2 + 40);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = v15;
      v16 = *(a2 + 56);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = v16;
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 128) = 1;

      goto LABEL_23;
    case 2:
      v19 = *(a2 + 40);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = v19;
      v20 = *(a2 + 72);
      *(a1 + 72) = v20;
      v21 = v20;
      v22 = **(v20 - 8);

      v22(a1 + 48, a2 + 48, v21);
      *(a1 + 88) = *(a2 + 88);
      v23 = 2;
      goto LABEL_58;
    case 3:
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 128) = 3;

      return a1;
    case 4:
      v12 = *(a2 + 40);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = v12;
      *(a1 + 48) = *(a2 + 48);
      v13 = 4;
      goto LABEL_21;
    case 5:
      v14 = *(a2 + 40);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = v14;
      *(a1 + 48) = *(a2 + 48);
      v13 = 5;
      goto LABEL_21;
    case 6:
      v33 = *(a2 + 40);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = v33;
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 128) = 6;

LABEL_23:

      return a1;
    case 0xA:
      v17 = *(a2 + 56);
      *(a1 + 56) = v17;
      (**(v17 - 8))(a1 + 32, a2 + 32);
      v18 = *(a2 + 80);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 80) = v18;
      *(a1 + 88) = *(a2 + 88);
      v13 = 10;
      goto LABEL_21;
    case 0xB:
      v34 = *(a2 + 56);
      *(a1 + 56) = v34;
      (**(v34 - 8))(a1 + 32, a2 + 32);
      v23 = 11;
      goto LABEL_58;
    case 0xC:
      *(a1 + 32) = *(a2 + 32);
      v10 = *(a2 + 64);

      if (v10)
      {
        v11 = *(a2 + 72);
        *(a1 + 64) = v10;
        *(a1 + 72) = v11;
        (**(v10 - 8))(a1 + 40, a2 + 40, v10);
      }

      else
      {
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 72) = *(a2 + 72);
      }

      v39 = *(a2 + 88);
      if (v39 == 1)
      {
        *(a1 + 80) = *(a2 + 80);
      }

      else
      {
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 88) = v39;
      }

      v40 = *(a2 + 104);
      v41 = *(a2 + 112);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 104) = v40;
      *(a1 + 112) = v41;
      v42 = 12;
      goto LABEL_52;
    case 0xD:
      *(a1 + 32) = *(a2 + 32);
      v24 = *(a2 + 64);

      if (v24)
      {
        v25 = *(a2 + 72);
        *(a1 + 64) = v24;
        *(a1 + 72) = v25;
        (**(v24 - 8))(a1 + 40, a2 + 40, v24);
      }

      else
      {
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 72) = *(a2 + 72);
      }

      v43 = *(a2 + 88);
      if (v43 == 1)
      {
        *(a1 + 80) = *(a2 + 80);
      }

      else
      {
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 88) = v43;
      }

      v44 = *(a2 + 104);
      v45 = *(a2 + 112);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 104) = v44;
      *(a1 + 112) = v45;
      *(a1 + 120) = *(a2 + 120);
      v42 = 13;
      goto LABEL_52;
    case 0xE:
      *(a1 + 32) = *(a2 + 32);
      v26 = *(a2 + 64);

      if (v26)
      {
        v27 = *(a2 + 72);
        *(a1 + 64) = v26;
        *(a1 + 72) = v27;
        (**(v26 - 8))(a1 + 40, a2 + 40, v26);
      }

      else
      {
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 72) = *(a2 + 72);
      }

      v46 = *(a2 + 88);
      if (v46 == 1)
      {
        *(a1 + 80) = *(a2 + 80);
      }

      else
      {
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 88) = v46;
      }

      *(a1 + 96) = *(a2 + 96);
      *(a1 + 104) = *(a2 + 104);
      v23 = 14;
      goto LABEL_58;
    case 0x11:
      v31 = *(a2 + 56);
      *(a1 + 56) = v31;
      (**(v31 - 8))(a1 + 32, a2 + 32);
      *(a1 + 72) = *(a2 + 72);
      v32 = *(a2 + 88);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = v32;
      *(a1 + 96) = *(a2 + 96);
      v13 = 17;
LABEL_21:
      *(a1 + 128) = v13;

      return a1;
    case 0x12:
      v28 = *(a2 + 40);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = v28;
      v29 = *(a2 + 72);

      if (v29)
      {
        v30 = *(a2 + 80);
        *(a1 + 72) = v29;
        *(a1 + 80) = v30;
        (**(v29 - 8))(a1 + 48, a2 + 48, v29);
      }

      else
      {
        v47 = *(a2 + 64);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 64) = v47;
        *(a1 + 80) = *(a2 + 80);
      }

      v48 = *(a2 + 96);
      if (v48 == 1)
      {
        *(a1 + 88) = *(a2 + 88);
      }

      else
      {
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 96) = v48;
      }

      v49 = *(a2 + 112);
      v50 = *(a2 + 120);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 112) = v49;
      *(a1 + 120) = v50;
      v42 = 18;
LABEL_52:
      *(a1 + 128) = v42;

      return a1;
    case 0x13:
      v8 = *(a2 + 56);
      if (v8)
      {
        v9 = *(a2 + 64);
        *(a1 + 56) = v8;
        *(a1 + 64) = v9;
        (**(v8 - 8))(a1 + 32, a2 + 32);
      }

      else
      {
        v37 = *(a2 + 48);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 48) = v37;
        *(a1 + 64) = *(a2 + 64);
      }

      v38 = *(a2 + 80);
      if (v38 == 1)
      {
        *(a1 + 72) = *(a2 + 72);
      }

      else
      {
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 80) = v38;
      }

      *(a1 + 88) = *(a2 + 88);
      v23 = 19;
      goto LABEL_58;
    case 0x15:
      v35 = *(a2 + 32);
      if (v35)
      {
        v36 = *(a2 + 40);
        *(a1 + 32) = v35;
        *(a1 + 40) = v36;
      }

      else
      {
        *(a1 + 32) = *(a2 + 32);
      }

      v51 = *(a2 + 48);
      if (v51)
      {
        v52 = *(a2 + 56);
        *(a1 + 48) = v51;
        *(a1 + 56) = v52;
      }

      else
      {
        *(a1 + 48) = *(a2 + 48);
      }

      v23 = 21;
LABEL_58:
      *(a1 + 128) = v23;
      break;
    default:
      v5 = *(a2 + 112);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = v5;
      *(a1 + 128) = *(a2 + 128);
      v6 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v6;
      v7 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v7;
      break;
  }

  return a1;
}

uint64_t initializeWithCopy for _FocusableModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  (**(v4 - 8))(a1 + 8, a2 + 8);
  v5 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;

  return a1;
}

double destroy for OnCommandModifier(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1((a1 + 8));

  return result;
}

void destroy for UpdateViewDestinationViewModifier.RequestWriter(uint64_t a1)
{
  switch(*(a1 + 128))
  {
    case 0:
      goto LABEL_31;
    case 1:

      goto LABEL_31;
    case 2:

      v2 = (a1 + 48);
      goto LABEL_36;
    case 3:

      return;
    case 4:
    case 5:

      goto LABEL_31;
    case 6:

      goto LABEL_31;
    case 0xA:
    case 0x11:
      __swift_destroy_boxed_opaque_existential_1((a1 + 32));

      goto LABEL_31;
    case 0xB:
      v2 = (a1 + 32);
LABEL_36:

      __swift_destroy_boxed_opaque_existential_1(v2);
      return;
    case 0xC:
    case 0xD:

      if (*(a1 + 64))
      {
        __swift_destroy_boxed_opaque_existential_1((a1 + 40));
      }

      if (*(a1 + 88) != 1)
      {
      }

      goto LABEL_31;
    case 0xE:

      if (*(a1 + 64))
      {
        __swift_destroy_boxed_opaque_existential_1((a1 + 40));
      }

      if (*(a1 + 88) == 1)
      {
        return;
      }

      goto LABEL_31;
    case 0x12:

      if (*(a1 + 72))
      {
        __swift_destroy_boxed_opaque_existential_1((a1 + 48));
      }

      if (*(a1 + 96) != 1)
      {
      }

      goto LABEL_31;
    case 0x13:
      if (*(a1 + 56))
      {
        __swift_destroy_boxed_opaque_existential_1((a1 + 32));
      }

      if (*(a1 + 80) == 1)
      {
        return;
      }

      goto LABEL_31;
    case 0x15:
      if (*(a1 + 32))
      {
      }

      if (*(a1 + 48))
      {
LABEL_31:
      }

      break;
    default:
      return;
  }
}

uint64_t implicit closure #1 in static UpdateViewDestinationRequestProcessor._makeView(modifier:inputs:body:)(unint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = *MEMORY[0x1E69E9840];
  type metadata accessor for UpdateViewDestinationRequestProcessor(255, a5, a6, a7);
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  UpdateViewDestinationRequestProcessor.PreferenceDebouncer.init(seeds:modifier:viewListID:phase:)(a1, a3, *(a4 + 24), a5, a6, a7, v18);
  updated = type metadata accessor for UpdateViewDestinationRequestProcessor.PreferenceDebouncer(0, a5, a6, a7);
  v20 = updated;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UpdateViewDestinationRequestProcessor<A, B>.PreferenceDebouncer, updated);
  type metadata accessor for Attribute<(_:)>(0);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v18, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_15, v19, updated, MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v15);
  return a2;
}

void TooltipModifier.TooltipResponderUpdater.updateValue()()
{
  v1 = *v0;

  *(v1 + 216) = AGCreateWeakAttribute();
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  v4 = v3;
  v5 = *Value;
  v6 = Value[1];
  AGGraphGetValue();
  v8 = v7;
  v9 = AGGraphGetValue();
  v12 = *v9;
  v11 = *(v9 + 8);
  v17 = *(v9 + 32);
  v18 = *(v9 + 16);
  if ((v4 & 1) != 0 || (v8 & 1) != 0 || (v10 & 1) != 0 || (type metadata accessor for [ViewResponder](0), !AGGraphGetOutputValue()))
  {
    *(v1 + 224) = v5;
    *(v1 + 232) = v6;

    *(v1 + 240) = MEMORY[0x18D00B390](v13);
    *(v1 + 248) = v14;
    *(v1 + 256) = v12;
    *(v1 + 264) = v11;
    *(v1 + 272) = v18;
    *(v1 + 288) = v17;
  }

  else
  {
  }

  type metadata accessor for [ViewResponder](0);
  AGGraphGetValue();
  if (v15)
  {

    MultiViewResponder.children.setter();
  }

  if (AGGraphGetOutputValue())
  {
  }

  else
  {
    type metadata accessor for SceneList.Item?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_18CD69590;
    *(v16 + 32) = v1;

    AGGraphSetOutputValue();
  }
}

double UpdateViewDestinationRequestProcessor.PreferenceDebouncer.init(seeds:modifier:viewListID:phase:)@<D0>(unint64_t a1@<X0>, unint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v11 = a3;
  v12 = a1;
  v14 = HIDWORD(a1);
  v19 = HIDWORD(a3);
  type metadata accessor for GraphHost();
  v15 = MEMORY[0x18D00B7D0]();
  swift_beginAccess();
  v16 = *(v15 + 64);

  type metadata accessor for Optional();
  LODWORD(v15) = AGGraphCreateOffsetAttribute2();
  type metadata accessor for UpdateViewDestinationRequestProcessor(0, a5, a6, a7);
  LODWORD(a5) = AGGraphCreateOffsetAttribute2();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  *a8 = v12;
  *(a8 + 4) = v14;
  *(a8 + 8) = v15;
  *(a8 + 12) = a5;
  *(a8 + 16) = OffsetAttribute2;
  *(a8 + 20) = a4;
  *(a8 + 24) = v11;
  *(a8 + 28) = v19;
  *(a8 + 32) = v16;
  *(a8 + 36) = 0xFFFFFFFFLL;
  *(a8 + 44) = 0;
  result = NAN;
  *(a8 + 48) = -1;
  *(a8 + 56) = 0;
  return result;
}

uint64_t closure #1 in FocusBridge.acceptsFirstResponder.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, _BYTE *a4@<X8>)
{
  (*(a2 + 16))(v10, *a1);
  if (v12)
  {
    v6 = 0;
  }

  else
  {
    v6 = v13 == 1;
  }

  if (v6)
  {
    result = outlined destroy of FocusItem?(v10);
  }

  else
  {
    outlined init with take of FocusItem(v10, v14);
    outlined init with copy of FocusItem.Base(v14, v10);
    v7 = v11;
    outlined destroy of FocusItem.Base(v10);
    if (v7)
    {
      result = outlined destroy of FocusItem(v14);
    }

    else
    {
      v9 = FocusItem.isFocusable.getter();
      result = outlined destroy of FocusItem(v14);
      if (v9)
      {
        *a3 = 1;
        *a4 = 2;
        return result;
      }
    }
  }

  *a4 = 0;
  return result;
}

__n128 __swift_memcpy60_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t FocusBridge.focusedItem.setter(uint64_t a1)
{
  FocusBridge.updatedFocusItem(_:)(a1, v6);
  swift_beginAccess();
  outlined init with copy of FocusItem?(v1 + 88, v5);
  swift_beginAccess();
  outlined assign with copy of FocusItem?(v6, v1 + 88);
  swift_endAccess();
  outlined init with copy of FocusItem?(v1 + 88, v4);
  FocusBridge.didChangeFocusItem(from:to:)(v5, v4);
  outlined destroy of FocusItem?(a1);
  outlined destroy of FocusItem?(v4);
  outlined destroy of FocusItem?(v5);
  return outlined destroy of FocusItem?(v6);
}

uint64_t Transform.init(modifier:nodeList:accessibilityEnabled:selfAttribute:scope:state:isRemoved:)@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 4) = a2;
  *(a9 + 8) = a3;
  *(a9 + 12) = a4;
  *(a9 + 16) = a5;
  v14 = type metadata accessor for Transform(0, a8, a10, a4);
  v15 = *(v14 + 52);
  type metadata accessor for Transform.State(255, a8, a10, v16);
  v17 = type metadata accessor for Optional();
  result = (*(*(v17 - 8) + 32))(a9 + v15, a6, v17);
  *(a9 + *(v14 + 56)) = a7;
  return result;
}

void storeEnumTagSinglePayload for Transform.State(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFB)
  {
    v7 = 251;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  v9 = *(v5 + 80);
  v10 = (*(*(*(a4 + 16) - 8) + 64) + ((v9 + 1) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v15 = 0;
    v16 = a2 - v8;
    if (a2 <= v8)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v12 = a3 - v8;
    if (((v10 + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = a2 - v8;
    if (a2 <= v8)
    {
LABEL_20:
      if (v15 > 1)
      {
        if (v15 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *&a1[v11] = 0;
      }

      else if (v15)
      {
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_36;
      }

      if (!a2)
      {
        return;
      }

LABEL_36:
      v20 = v10 + 8;
      if (v6 < 0x7FFFFFFF)
      {
        v23 = (&a1[v20 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v24 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v24 = a2 - 1;
        }

        *v23 = v24;
      }

      else if (v7 >= a2)
      {
        v25 = *(v5 + 56);
        v26 = &a1[v9 + 1] & ~v9;

        v25(v26);
      }

      else if (v10 != -8)
      {
        v21 = ~v7 + a2;
        v22 = a1;
        bzero(a1, v20);
        *v22 = v21;
      }

      return;
    }
  }

  if (((v10 + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1;
  }

  if (((v10 + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v18 = ~v8 + a2;
    v19 = a1;
    bzero(a1, ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    a1 = v19;
    *v19 = v18;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      *&a1[v11] = v17;
    }

    else
    {
      *&a1[v11] = v17;
    }
  }

  else if (v15)
  {
    a1[v11] = v17;
  }
}

uint64_t outlined assign with copy of FocusItem?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FocusItem?();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void FocusBridge.didChangeFocusItem(from:to:)(uint64_t a1, uint64_t a2)
{
  v4 = FocusBridge.host.getter();
  if (v4)
  {
    v7 = v4;
    if (specialized static FocusItem.isFocusChange(from:to:)(a1, a2))
    {
      outlined init with copy of FocusItem?(a1, v11);
      if (v12 || v13 != 1)
      {
        outlined init with copy of FocusItem.Base(v11, v8);
        if (v10)
        {
          outlined destroy of FocusItem.Base(v8);
        }

        else
        {
          v5 = v9;

          v5(0);
        }

        outlined destroy of FocusItem(v11);
      }

      else
      {
        outlined destroy of FocusItem?(v11);
      }

      outlined init with copy of FocusItem?(a2, v11);
      if (v12 || v13 != 1)
      {
        outlined init with copy of FocusItem.Base(v11, v8);
        if (v10)
        {
          outlined destroy of FocusItem.Base(v8);
        }

        else
        {
          v6 = v9;

          v6(1);
        }

        outlined destroy of FocusItem(v11);
      }

      else
      {
        outlined destroy of FocusItem?(v11);
      }

      swift_getObjectType();
      ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
    }

    else
    {
    }
  }
}

_DWORD *initializeWithCopy for Transform(_DWORD *a1, int *a2, uint64_t a3)
{
  v4 = *a2;
  v3 = a2 + 7;
  *a1 = v4;
  v5 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *(v3 & 0xFFFFFFFFFFFFFFFCLL);
  v6 = (((v3 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v6;
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v8;
  v10 = ((v9 + 11) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v8 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;
  v12 = *(a3 + 16);
  v13 = *(v12 - 8);
  v14 = *(v13 + 84);
  v15 = *(v13 + 80);
  v16 = *(v13 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v17 = ((v10 + v15 + 8) & v16);
  v18 = ((v11 + v15 + 8) & v16);
  v19 = ~v15;
  v20 = v15 + 1;
  v21 = *(v13 + 64) + 7;
  v22 = (v21 + ((v15 + 1) & ~v15)) & 0xFFFFFFFFFFFFFFF8;
  v23 = v22 + 8;
  v24 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;

  if (v14 < 0x7FFFFFFF)
  {
    v27 = *&v18[v23];
    if (v27 >= 0xFFFFFFFF)
    {
      LODWORD(v27) = -1;
    }

    v26 = v24 + 8;
    if (v27 != -1)
    {
      goto LABEL_3;
    }

LABEL_7:
    *v17 = *v18;
    v28 = &v17[v20] & v19;
    v29 = &v18[v20] & v19;
    (*(v13 + 16))(v28, v29, v12);
    *((v21 + v28) & 0xFFFFFFFFFFFFFFF8) = *((v21 + v29) & 0xFFFFFFFFFFFFFFF8);
    *&v17[v23] = *&v18[v23];

    goto LABEL_8;
  }

  v25 = (*(v13 + 48))(&v18[v20] & v19, v14, v12);
  v26 = v24 + 8;
  if (!v25)
  {
    goto LABEL_7;
  }

LABEL_3:
  memcpy(v17, v18, v26);
LABEL_8:
  v17[v26] = v18[v26];
  return a1;
}

uint64_t destroy for Transform(uint64_t a1, uint64_t a2)
{
  v3 = (((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8;

  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + (v6 | 7) + 8) & ~(v6 | 7);
  v8 = ~v6;
  v9 = v6 + 1;
  if (*(v5 + 84) >= 0x7FFFFFFFu)
  {
    result = (*(v5 + 48))((v9 + v7) & v8);
    if (result)
    {
      return result;
    }

    goto LABEL_7;
  }

  v11 = *(((*(*(v4 - 8) + 64) + ((v6 + 1) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8 + v7);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  result = (v11 + 1);
  if (v11 == -1)
  {
LABEL_7:
    (*(v5 + 8))((v9 + v7) & v8, v4);
  }

  return result;
}

void PrimitiveNavigationLink.NavigationLinkViewRule.updateValue()(uint64_t a1)
{
  v2 = v1;
  v96 = *MEMORY[0x1E69E9840];
  v73 = *(*(a1 + 16) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v75 = v5;
  v76 = &v68.i8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v6[1].i64[1];
  v8 = v6[2];
  v86.i64[0] = v5;
  v86.i64[1] = v7;
  v80 = v8;
  v87 = v8;
  v9 = type metadata accessor for StyledNavigationLinkButton(0, &v86);
  v78 = *(v9 - 8);
  v79 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v77 = v68.i64 - v10;
  v81 = v7;
  v13 = type metadata accessor for NavigationDestinationPayload(0, v7, v11, v12);
  v74 = *(v13 - 1);
  MEMORY[0x1EEE9AC00](v13);
  v72 = &v68.i8[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v68.i8[-v16];
  v18 = v2[1];
  v84[2] = *v2;
  v85[0] = v18;
  *(v85 + 9) = *(v2 + 25);
  PrimitiveNavigationLink.NavigationLinkViewRule.listKey.getter(&v86);
  v21.i64[0] = 2;
  v22.i64[0] = v89;
  v23 = vdupq_lane_s64(vmvnq_s8(vceqq_s64(v22, v21)).i64[0], 0);
  if (v89 == 2)
  {
    v24 = 1;
  }

  else
  {
    v24 = v89;
  }

  v68 = vandq_s8(v87, v23);
  v69 = vandq_s8(v86, v23);
  if (v89 == 2)
  {
    v25 = 0;
  }

  else
  {
    v25 = v88;
  }

  v26 = v2[1];
  v83[2] = *v2;
  v84[0] = v26;
  *(v84 + 9) = *(v2 + 25);
  v27 = v17;
  PrimitiveNavigationLink.NavigationLinkViewRule.payload.getter(a1, v19, v20, v17);
  v28 = v2[1];
  v82 = *v2;
  v83[0] = v28;
  *(v83 + 9) = *(v2 + 25);
  v29 = a1;
  PrimitiveNavigationLink.NavigationLinkViewRule.authority.getter(&v92);
  outlined init with copy of NavigationAuthority??(&v92, &v90);
  if (*(&v90 + 1) == 2)
  {
    outlined destroy of NavigationAuthority??(&v92);
    v94 = xmmword_18CD633F0;
    *&v95[0] = 0;
  }

  else
  {
    outlined init with take of NavigationAuthority?(&v90, &v94);
    outlined destroy of NavigationAuthority??(&v92);
  }

  outlined assign with take of NavigationAuthority?(&v94, &v27[v13[11]]);
  v30 = &v27[v13[12]];
  v31 = v27;
  v32 = v68;
  *v30 = v69;
  v30[1] = v32;
  v30[2].i64[0] = v25;
  v30[2].i64[1] = v24;
  v33 = v2[1];
  v94 = *v2;
  v95[0] = v33;
  *(v95 + 9) = *(v2 + 25);
  v34 = v29;
  v35 = PrimitiveNavigationLink.NavigationLinkViewRule.stackKey.getter();
  if (v36 == 7)
  {
    v39 = 0;
  }

  else
  {
    v39 = v35;
  }

  v40 = 6;
  if (v36 == 7)
  {
    v41 = 0;
  }

  else
  {
    v40 = v36;
    v41 = v37;
  }

  v42 = v13[13];
  v43 = v13;
  v70 = v31;
  v71 = v13;
  v44 = (v31 + v42);
  *v44 = v39;
  v44[1] = v40;
  v44[2] = v41;
  v45 = v2[1];
  v92 = *v2;
  v93[0] = v45;
  *(v93 + 9) = *(v2 + 25);
  v46 = v31;
  PrimitiveNavigationLink.NavigationLinkViewRule.deprecated_isActiveBindingSideEffect(payload:)(v31, v29, v37, v38);
  v47 = v75;
  Value = AGGraphGetValue();
  v49 = v76;
  (*(v73 + 16))(v76, Value, v47);
  v50 = v74;
  v51 = v72;
  (*(v74 + 16))(v72, v46, v43);
  v52 = swift_allocObject();
  *&v53 = v47;
  *(&v53 + 1) = v81;
  v54 = v81;
  v55 = v80;
  v52[1] = v53;
  v52[2] = v55;
  v56 = *v2;
  v57 = v2[1];
  v52[3] = *v2;
  v52[4] = v57;
  v58 = *(v2 + 25);
  *(v52 + 73) = v58;
  v90 = v56;
  v91[0] = v57;
  *(v91 + 9) = v58;
  v59 = PrimitiveNavigationLink.NavigationLinkViewRule.isPresentingViewDestinationView.getter();
  v69.i64[0] = v80.i64[1];
  v73 = v80.i64[0];
  v67[0] = v54;
  v61 = v77;
  v63 = StyledNavigationLinkButton.init(label:payload:presentHandlingLegacyLinks:isPresentingViewDestinationView:)(v49, v51, partial apply for implicit closure #5 in implicit closure #4 in PrimitiveNavigationLink.NavigationLinkViewRule.updateValue(), v52, v59, v62, v60 & 1, v47, v77, v67[0], v80.i64[0], v80.i64[1], type metadata accessor for StyledNavigationLinkButton);
  v64 = MEMORY[0x1EEE9AC00](v63);
  v67[2] = v34;
  v67[3] = swift_getWitnessTable(protocol conformance descriptor for PrimitiveNavigationLink<A, B>.NavigationLinkViewRule, v34, v64);
  v65 = v79;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v61, partial apply for closure #1 in StatefulRule.value.setter, v67, v79, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v66);
  (*(v78 + 8))(v61, v65);
  (*(v50 + 8))(v70, v71);
  $defer #1 <A, B>() in PrimitiveNavigationLink.NavigationLinkViewRule.updateValue()(v2, v47, v81, v73, v69.i64[0]);
}

BOOL FocusItem.isExpired.getter()
{
  outlined init with copy of FocusItem.Base(v0, v7);
  if (v8)
  {
    if (v8 == 1)
    {
      outlined init with take of WeakBox<UIFocusItem>(v7, &v6);
      Strong = swift_unknownObjectWeakLoadStrong();
      outlined destroy of WeakBox<UIFocusItem>(&v6, type metadata accessor for WeakBox<UIFocusItem>);
      v2 = Strong;
      v3 = Strong == 0;
      if (v2)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      outlined init with take of WeakBox<UIView>(v7, &v6);
      v4 = swift_unknownObjectWeakLoadStrong();
      outlined destroy of WeakBox<UIView>(&v6);
      v3 = v4 == 0;
      if (v4)
      {
      }
    }
  }

  else
  {
    outlined destroy of FocusItem.Base(v7);
    return 0;
  }

  return v3;
}

__int128 *PrimitiveNavigationLink.NavigationLinkViewRule.listKey.getter@<X0>(_OWORD *a1@<X8>)
{
  type metadata accessor for Never?(0, &lazy cache variable for type metadata for NavigationState.ListKey?, &type metadata for NavigationState.ListKey, MEMORY[0x1E69E6720]);
  result = AGGraphGetWeakValue();
  if (result)
  {
    v3 = *result;
    v4 = result[1];
    v5 = result[2];
  }

  else
  {
    v5 = xmmword_18CD874C0;
    v3 = 0uLL;
    v4 = 0uLL;
  }

  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t outlined init with copy of WeakBox<ViewResponder>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WeakBox<ViewResponder>(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PrimitiveNavigationLink.NavigationLinkViewRule.payload.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = type metadata accessor for NavigationDestinationPayload(0, *(a1 + 24), a2, a3);
  Value = AGGraphGetValue();
  v7 = *(*(v5 - 8) + 16);

  return v7(a4, Value, v5);
}

uint64_t initializeWithCopy for NavigationDestinationPayload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v9 = *(v5 + 48) + 7;
  v6 = (v9 + a1) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v9 + a2) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v7 + 24);
  LODWORD(v9) = -1;
  if (v8 < 0xFFFFFFFF)
  {
    v9 = *(v7 + 24);
  }

  v10 = v9 + 1;
  if (v8)
  {
    v11 = v10 > 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 || v10)
  {
    v12 = *v7;
    v13 = *(v7 + 16);
    *(v6 + 32) = *(v7 + 32);
    *v6 = v12;
    *(v6 + 16) = v13;
  }

  else
  {
    *(v6 + 24) = v8;
    *(v6 + 32) = *(v7 + 32);
    (**(v8 - 8))(v6, v7);
  }

  v14 = (v6 + 47) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  *v14 = *v15;
  *(v14 + 8) = *(v15 + 8);
  v16 = (v6 + 63) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v7 + 63) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v17 + 17);
  if (v18 >= 2)
  {
    v18 = *v17 + 2;
  }

  if (v18 == 1)
  {
    *v16 = *v17;
    *(v16 + 8) = *(v17 + 8);
    *(v16 + 16) = *(v17 + 16);

    v19 = 1;
  }

  else
  {
    v19 = 0;
    *v16 = *v17;
    *(v16 + 8) = *(v17 + 8);
  }

  *(v16 + 17) = v19;
  v20 = (v16 + 25) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v17 + 25) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v21 + 8);
  if (v22 >= 0xFFFFFFFF)
  {
    LODWORD(v22) = -1;
  }

  if (v22 - 1 < 0)
  {
    swift_weakCopyInit();
    *(v20 + 8) = *(v21 + 8);
    *(v20 + 16) = *(v21 + 16);
  }

  else
  {
    v23 = *v21;
    *(v20 + 16) = *(v21 + 16);
    *v20 = v23;
  }

  v24 = ((v20 + 31) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v21 + 31) & 0xFFFFFFFFFFFFFFF8);
  v26 = *v25;
  v27 = v25[2];
  v24[1] = v25[1];
  v24[2] = v27;
  *v24 = v26;
  v28 = (v24 + 55) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v25 + 55) & 0xFFFFFFFFFFFFFFF8;
  v30 = *v29;
  *(v28 + 16) = *(v29 + 16);
  *v28 = v30;
  return a1;
}

uint64_t assignWithTake for FocusStore.Entry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  v9 = type metadata accessor for AttributedString();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = v11 + 8;
  v13 = *(v10 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v14 = ((v7 + v11 + 8) & v13);
  v15 = ((v8 + v11 + 8) & v13);
  if (v14 == v15)
  {
    return a1;
  }

  v16 = v9;
  v17 = v11 & 0xFC ^ 0xFFFFFFFFFFFFFFFCLL;
  v18 = *(v10 + 64);
  v45 = v18;
  v46 = *(v9 - 8);
  if (((v11 + 16) & v17) + ((v18 + ((v11 + 9) & ~v11)) & 0xFFFFFFFFFFFFFFFCLL) + 9 <= 0x10)
  {
    v19 = 16;
  }

  else
  {
    v19 = ((v11 + 16) & v17) + ((v18 + ((v11 + 9) & ~v11)) & 0xFFFFFFFFFFFFFFFCLL) + 9;
  }

  v20 = v14[v19];
  v21 = v20 - 2;
  if (v20 >= 2)
  {
    if (v19 <= 3)
    {
      v22 = v19;
    }

    else
    {
      v22 = 4;
    }

    if (v22 <= 1)
    {
      if (!v22)
      {
        goto LABEL_19;
      }

      v23 = *v14;
    }

    else if (v22 == 2)
    {
      v23 = *v14;
    }

    else if (v22 == 3)
    {
      v23 = *v14 | (v14[2] << 16);
    }

    else
    {
      v23 = *v14;
    }

    v24 = (v23 | (v21 << (8 * v19))) + 2;
    v20 = v23 + 2;
    if (v19 < 4)
    {
      v20 = v24;
    }
  }

LABEL_19:
  if (v20 == 1)
  {

    v25 = ~v11;
    (*(v46 + 8))((v11 + ((((v12 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)) & v17) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 5) & ~v11, v16);
  }

  else
  {
    v25 = ~v11;
    swift_weakDestroy();
    swift_weakDestroy();
  }

  v26 = v15[v19];
  v27 = v26 - 2;
  if (v26 >= 2)
  {
    if (v19 <= 3)
    {
      v28 = v19;
    }

    else
    {
      v28 = 4;
    }

    if (v28 > 1)
    {
      if (v28 == 2)
      {
        v29 = *v15;
      }

      else if (v28 == 3)
      {
        v29 = *v15 | (v15[2] << 16);
      }

      else
      {
        v29 = *v15;
      }

LABEL_34:
      v30 = (v29 | (v27 << (8 * v19))) + 2;
      v26 = v29 + 2;
      if (v19 < 4)
      {
        v26 = v30;
      }

      goto LABEL_36;
    }

    if (v28)
    {
      v29 = *v15;
      goto LABEL_34;
    }
  }

LABEL_36:
  if (v26 == 1)
  {
    *v14 = *v15;
    v31 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
    v32 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v31 = *v32;
    v33 = ((v31 + v12) & v17);
    v34 = ((v32 + v12) & v17);
    *v33 = *v34;
    v33[1] = v34[1];
    v33[2] = v34[2];
    v33[3] = v34[3];
    v35 = (v33 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v36 = (v34 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v37 = *v36;
    *(v35 + 4) = *(v36 + 4);
    *v35 = v37;
    v38 = (v11 + 5 + v35) & v25;
    v39 = (v11 + 5 + v36) & v25;
    (*(v46 + 32))(v38, v39, v16);
    *(v45 + v38) = *(v45 + v39);
    v40 = (v45 + v38) & 0xFFFFFFFFFFFFFFFCLL;
    v41 = (v45 + v39) & 0xFFFFFFFFFFFFFFFCLL;
    v42 = *(v41 + 4);
    *(v40 + 8) = *(v41 + 8);
    *(v40 + 4) = v42;
    v43 = 1;
  }

  else
  {
    swift_weakTakeInit();
    swift_weakTakeInit();
    v43 = 0;
  }

  v14[v19] = v43;
  return a1;
}

double PrimitiveNavigationLink.NavigationLinkViewRule.authority.getter@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for Never?(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    _s7SwiftUI28NavigationLinkPresentedValueOSgWOcTm_0(WeakValue, a1, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  }

  else
  {
    result = 0.0;
    *a1 = xmmword_18CD874C0;
    *(a1 + 16) = 0;
  }

  return result;
}

uint64_t outlined init with copy of NavigationLinkPresentedValue?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for NavigationLinkPresentedValue?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s7SwiftUI28NavigationLinkPresentedValueOSgWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for Never?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

BOOL FocusItem.hasEqualIdentity(to:)(uint64_t a1)
{
  outlined init with copy of FocusItem.Base(v1, v12);
  outlined init with copy of FocusItem.Base(a1, v14);
  if (v13)
  {
    if (v13 == 1)
    {
      outlined init with copy of FocusItem.Base(v12, v11);
      if (v15 == 1)
      {
        outlined init with take of WeakBox<UIFocusItem>(v11, v10);
        outlined init with take of WeakBox<UIFocusItem>(v14, v9);
        Strong = swift_unknownObjectWeakLoadStrong();
        v4 = swift_unknownObjectWeakLoadStrong();
        outlined destroy of WeakBox<UIFocusItem>(v9, type metadata accessor for WeakBox<UIFocusItem>);
        outlined destroy of WeakBox<UIFocusItem>(v10, type metadata accessor for WeakBox<UIFocusItem>);
        if (Strong)
        {
          if (v4)
          {
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
LABEL_13:
            v5 = Strong == v4;
LABEL_26:
            outlined destroy of FocusItem.Base(v12);
            return v5;
          }

          goto LABEL_23;
        }

        if (v4)
        {
LABEL_23:
          swift_unknownObjectRelease();
          goto LABEL_25;
        }

LABEL_22:
        v5 = 1;
        goto LABEL_26;
      }

      outlined destroy of WeakBox<UIFocusItem>(v11, type metadata accessor for WeakBox<UIFocusItem>);
    }

    else
    {
      outlined init with copy of FocusItem.Base(v12, v11);
      if (v15 == 2)
      {
        outlined init with take of WeakBox<UIView>(v11, v10);
        outlined init with take of WeakBox<UIView>(v14, v9);
        Strong = swift_unknownObjectWeakLoadStrong();
        v4 = swift_unknownObjectWeakLoadStrong();
        outlined destroy of WeakBox<UIView>(v9);
        outlined destroy of WeakBox<UIView>(v10);
        if (Strong)
        {
          if (v4)
          {

            goto LABEL_13;
          }
        }

        else
        {
          if (!v4)
          {
            goto LABEL_22;
          }
        }

LABEL_25:
        v5 = 0;
        goto LABEL_26;
      }

      outlined destroy of WeakBox<UIView>(v11);
    }
  }

  else
  {
    outlined init with copy of FocusItem.Base(v12, v11);
    if (!v15)
    {
      v6 = v11[0];
      v7 = v14[0];

      v5 = v6 == v7;
      goto LABEL_26;
    }
  }

  outlined destroy of WeakBox<UIFocusItem>(v12, type metadata accessor for (FocusItem.Base, FocusItem.Base));
  return 0;
}

void type metadata accessor for NavigationAuthority??(uint64_t a1)
{
  if (!lazy cache variable for type metadata for NavigationAuthority??)
  {
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for NavigationAuthority??);
    }
  }
}

uint64_t outlined init with copy of NavigationAuthority??(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NavigationAuthority??(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PrimitiveNavigationLink.NavigationLinkViewRule.stackKey.getter()
{
  type metadata accessor for Never?(0, &lazy cache variable for type metadata for NavigationState.StackContent.Key?, &type metadata for NavigationState.StackContent.Key, MEMORY[0x1E69E6720]);
  result = AGGraphGetWeakValue();
  if (result)
  {
    return *result;
  }

  return result;
}

void PrimitiveNavigationLink.NavigationLinkViewRule.deprecated_isActiveBindingSideEffect(payload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = type metadata accessor for NavigationDestinationPayload(0, *(a2 + 24), a3, a4);
  v9 = NavigationDestinationPayload.deprecated_isActive.getter(v8);
  if (v10)
  {
    v19[0] = v9;
    v19[1] = v10;
    v20 = v11 & 1;
    type metadata accessor for Never?(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0](&v22);
    v12 = v22;

    v15 = *(v5 + 40);
    if (v15 == 2)
    {
      static Semantics.v7.getter();
      if ((isLinkedOnOrAfter(_:)() & v12 & 1) == 0)
      {
        return;
      }

LABEL_7:
      PrimitiveNavigationLink.NavigationLinkViewRule.present(_:)(a1, a2, v13, v14);
      return;
    }

    if (v12 == (v15 & 1))
    {
      return;
    }

    if (v12)
    {
      goto LABEL_7;
    }

    _s7SwiftUI28NavigationLinkPresentedValueOSgWOcTm_0(a1 + *(v8 + 28), v19, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue);
    v16 = v21;
    outlined destroy of NavigationLinkPresentedValue?(v19, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue);
    if (v16 == 1)
    {
      PrimitiveNavigationLink.NavigationLinkViewRule.dismiss(_:)(a1, a2, v17, v18);
    }
  }
}

uint64_t NavigationDestinationPayload.deprecated_isActive.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  if (*(v2 + 17) != 1)
  {
    return 0;
  }

  v3 = *v2;

  return v3;
}

uint64_t PrimitiveNavigationLink.NavigationLinkViewRule.isPresentingViewDestinationView.getter()
{
  type metadata accessor for Never?(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  v0 = *AGGraphGetValue();

  return v0;
}

uint64_t StyledNavigationLinkButton.init(label:payload:presentHandlingLegacyLinks:isPresentingViewDestinationView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t (*a13)(void, void *))
{
  (*(*(a8 - 8) + 32))(a9, a1, a8);
  v29[0] = a8;
  v29[1] = a10;
  v29[2] = a11;
  v29[3] = a12;
  v19 = a13(0, v29);
  v20 = v19[13];
  v23 = type metadata accessor for NavigationDestinationPayload(0, a10, v21, v22);
  result = (*(*(v23 - 8) + 32))(a9 + v20, a2, v23);
  v25 = (a9 + v19[14]);
  *v25 = a3;
  v25[1] = a4;
  v26 = a9 + v19[15];
  *v26 = a5;
  *(v26 + 8) = a6;
  *(v26 + 16) = a7;
  return result;
}

uint64_t initializeWithTake for NavigationDestinationPayload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v10 = *(v8 + 16);
  *(v7 + 32) = *(v8 + 32);
  *v7 = v9;
  *(v7 + 16) = v10;
  v11 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  *v11 = *v12;
  *(v11 + 8) = *(v12 + 8);
  v13 = (v7 + 63) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v8 + 63) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v14 + 17);
  if (v15 >= 2)
  {
    v15 = *v14 + 2;
  }

  if (v15 == 1)
  {
    v16 = *v14;
    *(v13 + 16) = *(v14 + 16);
    *v13 = v16;
    v17 = 1;
  }

  else
  {
    v17 = 0;
    *v13 = *v14;
  }

  *(v13 + 17) = v17;
  v18 = (v13 + 25) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v14 + 25) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v19 + 8);
  if (*(v19 + 8) >= 0xFFFFFFFFuLL)
  {
    v20 = -1;
  }

  if (v20 - 1 < 0)
  {
    v18 = swift_weakTakeInit();
    *(v18 + 8) = *(v19 + 8);
  }

  else
  {
    v21 = *v19;
    *(v18 + 16) = *(v19 + 16);
    *v18 = v21;
  }

  v22 = ((v18 + 31) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v19 + 31) & 0xFFFFFFFFFFFFFFF8);
  v24 = *v23;
  v25 = v23[2];
  v22[1] = v23[1];
  v22[2] = v25;
  *v22 = v24;
  v26 = (v22 + 55) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v23 + 55) & 0xFFFFFFFFFFFFFFF8;
  v28 = *v27;
  *(v26 + 16) = *(v27 + 16);
  *v26 = v28;
  return a1;
}

uint64_t initializeWithCopy for StyledNavigationLinkButton(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  v8 = *(v6 + 48);
  v9 = v7 + 16;
  v10 = *(v7 + 80) & 0xF8 | 7;
  v11 = v8 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v7 + 16))(v12, v13);
  v14 = *(v9 + 48) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v16 + 24);
  LODWORD(v18) = -1;
  if (v17 < 0xFFFFFFFF)
  {
    v18 = *(v16 + 24);
  }

  v19 = v18 + 1;
  if (v17)
  {
    v20 = v19 > 1;
  }

  else
  {
    v20 = 0;
  }

  if (v20 || v19)
  {
    v21 = *v16;
    v22 = *(v16 + 16);
    *(v15 + 32) = *(v16 + 32);
    *v15 = v21;
    *(v15 + 16) = v22;
  }

  else
  {
    *(v15 + 24) = v17;
    *(v15 + 32) = *(v16 + 32);
    (**(v17 - 8))((v14 + v12) & 0xFFFFFFFFFFFFFFF8, (v14 + v13) & 0xFFFFFFFFFFFFFFF8);
  }

  v23 = (v15 + 47) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v16 + 47) & 0xFFFFFFFFFFFFFFF8;
  *v23 = *v24;
  *(v23 + 8) = *(v24 + 8);
  v25 = (v15 + 63) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v16 + 63) & 0xFFFFFFFFFFFFFFF8;
  v27 = *(v26 + 17);
  if (v27 >= 2)
  {
    v27 = *v26 + 2;
  }

  if (v27 == 1)
  {
    *v25 = *v26;
    *(v25 + 8) = *(v26 + 8);
    *(v25 + 16) = *(v26 + 16);

    v28 = 1;
  }

  else
  {
    v28 = 0;
    *v25 = *v26;
    *(v25 + 8) = *(v26 + 8);
  }

  *(v25 + 17) = v28;
  v29 = (v25 + 25) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v26 + 25) & 0xFFFFFFFFFFFFFFF8;
  v31 = *(v30 + 8);
  if (v31 >= 0xFFFFFFFF)
  {
    LODWORD(v31) = -1;
  }

  if (v31 - 1 < 0)
  {
    swift_weakCopyInit();
    *(v29 + 8) = *(v30 + 8);
    *(v29 + 16) = *(v30 + 16);
  }

  else
  {
    v32 = *v30;
    *(v29 + 16) = *(v30 + 16);
    *v29 = v32;
  }

  v33 = ((v29 + 31) & 0xFFFFFFFFFFFFFFF8);
  v34 = ((v30 + 31) & 0xFFFFFFFFFFFFFFF8);
  v35 = *v34;
  v36 = v34[2];
  v33[1] = v34[1];
  v33[2] = v36;
  *v33 = v35;
  v37 = (v33 + 55) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v34 + 55) & 0xFFFFFFFFFFFFFFF8;
  v39 = *v38;
  *(v37 + 16) = *(v38 + 16);
  *v37 = v39;
  v40 = (((((((((v14 & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 24;
  v41 = (v40 + v12);
  v42 = (v40 + v13);
  v43 = v42[1];
  *v41 = *v42;
  v41[1] = v43;
  v44 = (v41 + 23) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v42 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v44 = *v45;
  *(v44 + 8) = *(v45 + 8);
  *(v44 + 16) = *(v45 + 16);

  return a1;
}

double destroy for StyledNavigationLinkButton(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56) + a1;
  v6 = *(*(a2 + 24) - 8);
  v7 = v6 + 8;
  v8 = *(v6 + 80) & 0xF8 | 7;
  v9 = (v5 + v8) & ~v8;
  (*(v6 + 8))(v9);
  v10 = *(v7 + 56) + 7;
  v11 = (v10 + v9) & 0xFFFFFFFFFFFFFFF8;
  if (*(v11 + 24) >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1(((v10 + v9) & 0xFFFFFFFFFFFFFFF8));
  }

  v12 = (v11 + 63) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v12 + 17);
  if (v13 >= 2)
  {
    v13 = *v12 + 2;
  }

  if (v13 == 1)
  {
  }

  v14 = *(((v12 + 25) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  if (v14 - 1 < 0)
  {
    swift_weakDestroy();
  }

  return result;
}

double destroy for NavigationDestinationPayload(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = ((a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v4[3] >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  v5 = (v4 + 63) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v5 + 17);
  if (v6 >= 2)
  {
    v6 = *v5 + 2;
  }

  if (v6 == 1)
  {
  }

  v8 = *(((v5 + 25) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v8 >= 0xFFFFFFFF)
  {
    LODWORD(v8) = -1;
  }

  if (v8 - 1 < 0)
  {
    swift_weakDestroy();
  }

  return result;
}

void $defer #1 <A, B>() in PrimitiveNavigationLink.NavigationLinkViewRule.updateValue()(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for NavigationDestinationPayload(0, a3, a3, a4);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - v12;
  v14 = a1[1];
  v30 = *a1;
  v31[0] = v14;
  *(v31 + 9) = *(a1 + 25);
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v15 = type metadata accessor for PrimitiveNavigationLink.NavigationLinkViewRule(0, &v26);
  PrimitiveNavigationLink.NavigationLinkViewRule.payload.getter(v15, v16, v17, v13);
  v18 = NavigationDestinationPayload.deprecated_isActive.getter(v10);
  v20 = v19;
  v22 = v21;
  (*(v11 + 8))(v13, v10);
  if (v20)
  {
    v26 = v18;
    v27 = v20;
    LOBYTE(v28) = v22 & 1;
    type metadata accessor for Never?(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0](&v25);
    v23 = v25;
  }

  else
  {
    v23 = 2;
  }

  *(a1 + 40) = v23;
}

uint64_t initializeWithTake for StyledNavigationLinkButton(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  v8 = *(v6 + 32);
  v9 = v7 + 32;
  v10 = *(v7 + 80) & 0xF8 | 7;
  v11 = v8 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v7 + 32))(v12, v13);
  v14 = *(v9 + 32) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  v17 = *v16;
  v18 = *(v16 + 16);
  *(v15 + 32) = *(v16 + 32);
  *v15 = v17;
  *(v15 + 16) = v18;
  v19 = (v15 + 47) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v16 + 47) & 0xFFFFFFFFFFFFFFF8;
  *v19 = *v20;
  *(v19 + 8) = *(v20 + 8);
  v21 = (v15 + 63) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v16 + 63) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(v22 + 17);
  if (v23 >= 2)
  {
    v23 = *v22 + 2;
  }

  if (v23 == 1)
  {
    v24 = *v22;
    *(v21 + 16) = *(v22 + 16);
    *v21 = v24;
    v25 = 1;
  }

  else
  {
    v25 = 0;
    *v21 = *v22;
  }

  *(v21 + 17) = v25;
  v26 = (v21 + 25) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v22 + 25) & 0xFFFFFFFFFFFFFFF8;
  v28 = *(v27 + 8);
  if (*(v27 + 8) >= 0xFFFFFFFFuLL)
  {
    v28 = -1;
  }

  if (v28 - 1 < 0)
  {
    v26 = swift_weakTakeInit();
    *(v26 + 8) = *(v27 + 8);
  }

  else
  {
    v29 = *v27;
    *(v26 + 16) = *(v27 + 16);
    *v26 = v29;
  }

  v30 = ((v26 + 31) & 0xFFFFFFFFFFFFFFF8);
  v31 = ((v27 + 31) & 0xFFFFFFFFFFFFFFF8);
  v32 = *v31;
  v33 = v31[2];
  v30[1] = v31[1];
  v30[2] = v33;
  *v30 = v32;
  v34 = (v30 + 55) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v31 + 55) & 0xFFFFFFFFFFFFFFF8;
  v36 = *v35;
  *(v34 + 16) = *(v35 + 16);
  *v34 = v36;
  v37 = (((((((((v14 & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 24;
  v38 = (v37 + v12);
  v39 = (v37 + v13);
  *v38 = *v39;
  v40 = (v38 + 23) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v39 + 23) & 0xFFFFFFFFFFFFFFF8;
  v42 = *v41;
  *(v40 + 16) = *(v41 + 16);
  *v40 = v42;
  return a1;
}

void StyledNavigationLinkButton.body.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v55 = *(a1 - 8);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v52 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v4 + 24);
  v64 = type metadata accessor for NavigationDestinationPayload(0, v5, v6, v7);
  v8 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v46 = &v39 - v9;
  v10 = *(a1 + 16);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = v10;
  v40 = v10;
  *(&v15 + 1) = v5;
  v63 = *(a1 + 32);
  v65[0] = v15;
  v65[1] = v63;
  v45 = type metadata accessor for InternalResolvedNavigationLink(0, v65);
  v48 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v43 = &v39 - v16;
  v17 = type metadata accessor for ModifiedContent();
  v18 = *(v17 - 8);
  v49 = v17;
  v50 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v42 = &v39 - v19;
  type metadata accessor for PlatformItemListTransformModifier<SelectionPlatformItemListFlags>(255, v20, v21, v22);
  v53 = type metadata accessor for ModifiedContent();
  v59 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v47 = &v39 - v23;
  v41 = v5;
  v54 = type metadata accessor for NavigationLinkDisabledModifier(255, v5, v24, v25);
  v58 = type metadata accessor for ModifiedContent();
  v60 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v51 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v57 = &v39 - v29;
  v30 = v62;
  (*(v11 + 16))(v14, v62, v10, v28);
  v44 = v30 + *(a1 + 52);
  v31 = v30;
  v32 = v46;
  (*(v8 + 16))(v46);
  v33 = *(a1 + 60);
  v34 = (v31 + *(a1 + 56));
  v36 = *v34;
  v35 = v34[1];
  v37 = *(v31 + v33);
  v38 = *(v31 + v33 + 8);
  LOBYTE(v31) = *(v31 + v33 + 16);

  StyledNavigationLinkButton.init(label:payload:presentHandlingLegacyLinks:isPresentingViewDestinationView:)(v14, v32, v36, v35, v37, v38, v31, v40, v43, v5, v63, *(&v63 + 1), type metadata accessor for InternalResolvedNavigationLink);

  swift_getWitnessTable(protocol conformance descriptor for InternalResolvedNavigationLink<A, B>, v45);
  View.addNavigationDisclosureEnvironment()();
}

uint64_t sub_18C03C86C()
{
  (*(*(v0 + 72) + 8))(v3, v2);
  v8 = *(v0 + 128);
  v9 = *(v0 + 104);
  (*(v8 + 16))(v9, *(v0 + 184), v6);
  v10 = v8;
  v11 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v4;
  *(v12 + 24) = *(v0 + 16);
  *(v12 + 32) = *(v0 + 192);
  (*(v10 + 32))(v12 + v11, v9, v6);
  *(v7 - 160) = v1;
  *(v7 - 152) = &protocol witness table for NavigationDisclosureEnvironmentModifier;
  v13 = MEMORY[0x1E697E858];
  v14 = *(v0 + 80);
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v14, v7 - 160);
  v16 = *(v0 + 64);
  View.transformPlatformItemSelectionBehavior(_:)(partial apply for closure #1 in StyledNavigationLinkButton.body.getter, v12, v14, WitnessTable);

  (*(*(v0 + 88) + 8))(v5, v14);
  v17 = *(v0 + 216);
  v18 = *(v0 + 40);
  _s7SwiftUI28NavigationLinkPresentedValueOSgWOcTm_0(v18 + v17[7], v0 + 280, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue);
  v19 = v17;
  v20 = v17[12];
  v21 = v18;
  v22 = (v18 + v17[13]);
  v23 = *v22;
  v24 = v22[1];
  v25 = v22[2];
  v26 = *(v21 + v20 + 32);
  *(v7 - 128) = *(v21 + v20 + 16);
  *(v7 - 112) = v26;
  *(v7 - 144) = *(v21 + v20);
  _s7SwiftUI28NavigationLinkPresentedValueOSgWOcTm_0(v21 + v19[11], v0 + 256, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  v27 = default argument 0 of NavigationLinkDisabledModifier.init(isNavigationEnabledInternal:presentedValue:stackKey:listKey:navigationAuthority:)();
  NavigationLinkDisabledModifier.init(isNavigationEnabledInternal:presentedValue:stackKey:listKey:navigationAuthority:)(v27, v28 & 1, v0 + 280, v23, v24, v25, (v7 - 144), v0 + 256, v0 + 320);
  *(v0 + 240) = WitnessTable;
  *(v0 + 248) = &protocol witness table for PlatformItemListTransformModifier<A>;
  v29 = *(v0 + 112);
  v30 = swift_getWitnessTable(v13, v29, v0 + 240);
  v31 = *(v0 + 96);
  v32 = *(v0 + 120);
  MEMORY[0x18D00A570](v0 + 320, v29, v32, v30);
  (*(*(v32 - 8) + 8))(v0 + 320, v32);
  (*(*(v0 + 160) + 8))(v16, v29);
  v33 = swift_getWitnessTable(protocol conformance descriptor for NavigationLinkDisabledModifier<A>, v32);
  *(v0 + 224) = v30;
  *(v0 + 232) = v33;
  v34 = *(v0 + 152);
  swift_getWitnessTable(v13, v34, v0 + 224);
  v35 = *(v0 + 144);
  static ViewBuilder.buildExpression<A>(_:)();
  v36 = *(*(v0 + 168) + 8);
  v36(v31, v34);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v36)(v35, v34);
}

double View.transformPlatformItemSelectionBehavior(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  View.transformPlatformItemList<A>(_:_:)(v9, partial apply for closure #1 in View.transformPlatformItemSelectionBehavior(_:), v8, a3, &type metadata for SelectionPlatformItemListFlags, a4, &protocol witness table for SelectionPlatformItemListFlags);

  return result;
}

uint64_t NavigationLinkDisabledModifier.init(isNavigationEnabledInternal:presentedValue:stackKey:listKey:navigationAuthority:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  KeyPath = swift_getKeyPath();
  v17 = *(a3 + 16);
  *(a9 + 40) = *a3;
  *(a9 + 56) = v17;
  v18 = a7[1];
  *(a9 + 136) = a7[2];
  v19 = *a7;
  *(a9 + 120) = v18;
  *(a9 + 16) = KeyPath;
  *(a9 + 24) = 0;
  *(a9 + 32) = 0;
  *(a9 + 72) = *(a3 + 32);
  *(a9 + 80) = a4;
  *(a9 + 88) = a5;
  *(a9 + 96) = a6;
  *(a9 + 104) = v19;

  return outlined init with take of NavigationAuthority?(a8, a9 + 152);
}

uint64_t initializeWithCopy for NavigationLinkDisabledModifier(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 33);
  v9 = *(a2 + 32);
  v10 = outlined copy of Environment<Binding<EditMode>?>.Content(v6, v7, v9, v8);
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 33) = v8;
  v11 = *(a2 + 64);
  if (v11 > 1)
  {
    v12 = *(a2 + 72);
    *(a1 + 64) = v11;
    *(a1 + 72) = v12;
    (**(v11 - 8))(a1 + 40, a2 + 40, v10);
  }

  else
  {
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
  }

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  if (*(a2 + 160) == 1)
  {
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
  }

  else
  {
    swift_weakCopyInit();
    v13 = *(a2 + 160);
    v14 = *(a2 + 168);
    *(a1 + 160) = v13;
    *(a1 + 168) = v14;
  }

  return a1;
}

double outlined copy of Environment<Binding<EditMode>?>.Content(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    outlined copy of Binding<Int>?(a1, a2);
  }

  else
  {
  }

  return result;
}

double destroy for NavigationLinkDisabledModifier(uint64_t a1)
{
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  result = outlined consume of Environment<Binding<Visibility>?>.Content(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 33));
  if (*(a1 + 64) >= 2uLL)
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 40));
  }

  if (*(a1 + 160) != 1)
  {
    swift_weakDestroy();
  }

  return result;
}

double outlined consume of Environment<Binding<Visibility>?>.Content(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    outlined consume of Binding<NavigationSplitViewColumn>?(result, a2);
  }

  else
  {
  }

  return v4;
}

__n128 initializeWithTake for NavigationLinkDisabledModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  v3 = (a2 + 160);
  v2 = *(a2 + 160);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = *(a2 + 120);
  v4 = *(a2 + 104);
  v5 = (a2 + 152);
  *(a1 + 104) = v4;
  if (v2 == 1)
  {
    result = *v5;
    *(a1 + 152) = *v5;
    *(a1 + 168) = v5[1].n128_u64[0];
  }

  else
  {
    swift_weakTakeInit();
    result = *v3;
    *(a1 + 160) = *v3;
  }

  return result;
}

uint64_t InternalResolvedNavigationLink.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = lazy protocol witness table accessor for type NavigationLinkStyleConfiguration.Label and conformance NavigationLinkStyleConfiguration.Label();
  v7 = *(a1 + 16);
  v56 = *(a1 + 32);
  *&v75 = &type metadata for NavigationLinkStyleConfiguration.Label;
  *(&v75 + 1) = v7;
  v76 = v57;
  v77 = v56;
  type metadata accessor for StaticSourceWriter(255, &v75);
  v8 = type metadata accessor for ModifiedContent();
  v63 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v54 - v9;
  v10 = *(a1 + 24);
  v11 = *(a1 + 40);
  type metadata accessor for UpdateViewDestinationViewModifier(255, v10, v11, v12);
  type metadata accessor for UpdateViewDestinationRequestProcessor(255, v10, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380]);
  v13 = type metadata accessor for ModifiedContent();
  v58 = v8;
  v61 = v13;
  v65 = type metadata accessor for ModifiedContent();
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v60 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v62 = &v54 - v17;
  (*(v4 + 16))(v6, v2, a1, v16);
  v18 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v19 = swift_allocObject();
  *&v20 = v7;
  *(&v20 + 1) = v10;
  v55 = v20;
  *&v21 = v56;
  v59 = v11;
  *(&v21 + 1) = v11;
  v54 = v21;
  *(v19 + 16) = v20;
  *(v19 + 32) = v21;
  (*(v4 + 32))(v19 + v18, v6, a1);
  *&v75 = partial apply for closure #1 in InternalResolvedNavigationLink.body.getter;
  *(&v75 + 1) = v19;
  v69 = v55;
  v70 = v54;
  v71 = v2;
  v22 = lazy protocol witness table accessor for type ResolvedNavigationLink and conformance ResolvedNavigationLink();
  View.viewAlias<A, B>(_:_:)(&type metadata for NavigationLinkStyleConfiguration.Label, partial apply for closure #2 in InternalResolvedNavigationLink.body.getter, v68, &type metadata for ResolvedNavigationLink, &type metadata for NavigationLinkStyleConfiguration.Label, v7, v22);

  v23 = v2 + *(a1 + 60);
  v24 = *v23;
  v25 = *(v23 + 8);
  LODWORD(v57) = *(v23 + 16);
  v26 = v2 + *(a1 + 52);
  v29 = type metadata accessor for NavigationDestinationPayload(0, v10, v27, v28);

  v30 = (v26 + v29[12]);
  v31 = v30[5];
  if (v31 == 1)
  {
    v32 = v26 + v29[13];
    v33 = *(v32 + 8);
    if (v33 == 6)
    {
      v34 = 0;
      v33 = 0;
      v35 = 0;
      v36 = 0;
      v31 = 0;
      v37 = 0x1FFFFFFFELL;
    }

    else
    {
      v36 = 0;
      v37 = 0;
      v31 = 0;
      v34 = *v32;
      v35 = *(v32 + 16);
    }
  }

  else
  {
    v36 = v30[3];
    v38 = v30[4];
    v33 = v30[1];
    v35 = v30[2];
    v34 = *v30;
    v37 = v38 & 1 | 0x4000000000000000;
  }

  *&v75 = v34;
  *(&v75 + 1) = v33;
  v76 = v35;
  v77 = v36;
  v78 = v37;
  v79 = v31;
  v39 = *(v26 + v29[8]);
  v40 = *(v26 + v29[9]);
  v41 = v26 + v29[11];
  v74[0] = v22;
  v74[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v42 = MEMORY[0x1E697E858];
  v43 = v58;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v58, v74);
  v53 = v41;
  v45 = v60;
  v46 = v39;
  v47 = v67;
  View.updateViewDestinations<A>(isPresented:destination:key:kind:id:shouldTargetSourceColumn:navigationAuthority:isExtractingDestinations:transaction:)(v24, v25, v57, v26, &v75, 0, 1, v46, v60, (v40 & 1) == 0, v53, 0, 1, v43, v10, WitnessTable, v59);

  (*(v63 + 8))(v47, v43);
  v73[0] = &protocol witness table for UpdateViewDestinationViewModifier<A>;
  v73[1] = &protocol witness table for UpdateViewDestinationRequestProcessor<A, B>;
  v48 = swift_getWitnessTable(MEMORY[0x1E697E840], v61, v73);
  v72[0] = WitnessTable;
  v72[1] = v48;
  v49 = v65;
  swift_getWitnessTable(v42, v65, v72);
  v50 = v62;
  static ViewBuilder.buildExpression<A>(_:)();
  v51 = *(v64 + 8);
  v51(v45, v49);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v51)(v50, v49);
}

uint64_t closure #2 in InternalResolvedNavigationLink.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v3 + 8))(v5, a2);
}

uint64_t View.updateViewDestinations<A>(isPresented:destination:key:kind:id:shouldTargetSourceColumn:navigationAuthority:isExtractingDestinations:transaction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v58 = a8;
  v51 = a7;
  v55 = a5;
  v56 = a6;
  v44 = a4;
  v46 = a3;
  v54 = a2;
  v63 = a9;
  v49 = a12;
  v50 = a10;
  v62 = a14;
  v45 = a11;
  v61 = a16;
  updated = type metadata accessor for UpdateViewDestinationRequestProcessor(0, a15, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380]);
  v60 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v59 = &v43 - v19;
  v20 = *(a15 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for UpdateViewDestinationViewModifier(0, a15, a17, v24);
  v57 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v26 = &v43 - v25;
  v27 = type metadata accessor for ModifiedContent();
  v28 = *(v27 - 8);
  v52 = v27;
  v53 = v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v43 - v30;
  v43 = *(v20 + 16);
  v43(v23, a4, a15, v29);
  _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(v45, v66, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  v32 = a1;
  v33 = a1;
  v34 = v54;
  v35 = v46;
  v36 = v58;
  UpdateViewDestinationViewModifier.init(isPresented:destination:key:kind:id:shouldTargetSourceColumn:navigationAuthority:isExtractingDestinations:transaction:)(v33, v54, v46, v23, v55, v56, v51 & 1, v58, v26, v50, v66, v49, a13, a15, a17);
  v66[0] = v32;
  v66[1] = v34;
  v67 = v35;

  outlined copy of Transaction?(a13);
  v37 = MEMORY[0x1E69E6370];
  type metadata accessor for NavigationAuthority?(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v65);
  v64 = v65;
  (v43)(v23, v44, a15);
  v38 = v59;
  UpdateViewDestinationRequestProcessor.init(presentationData:destination:linkID:)(&v64, v23, v36, a15, v37, MEMORY[0x1E69E6380], v59);
  v40 = updated;
  v39 = v48;
  MEMORY[0x18D003AC0](v38, v48, updated, &protocol witness table for UpdateViewDestinationViewModifier<A>);
  (*(v60 + 8))(v38, v40);
  (*(v57 + 8))(v26, v39);
  v41 = v52;
  MEMORY[0x18D00A570](v31, v62, v52, v61);
  return (*(v53 + 8))(v31, v41);
}

uint64_t outlined init with copy of NavigationAuthority?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for NavigationAuthority?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s7SwiftUI19NavigationAuthorityVSgWOcTm_1(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  _s7SwiftUI19NavigationAuthorityVSgMaTm_0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t UpdateViewDestinationViewModifier.init(isPresented:destination:key:kind:id:shouldTargetSourceColumn:navigationAuthority:isExtractingDestinations:transaction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  updated = type metadata accessor for UpdateViewDestinationViewModifier(0, a14, a15, a4);
  (*(*(a14 - 8) + 32))(a9 + updated[9], a4, a14);
  v22 = (a9 + updated[10]);
  v23 = a5[1];
  *v22 = *a5;
  v22[1] = v23;
  v22[2] = a5[2];
  v24 = a9 + updated[11];
  *v24 = a6;
  *(v24 + 8) = a7 & 1;
  *(a9 + updated[12]) = a8;
  *(a9 + updated[13]) = a10;
  result = outlined init with take of NavigationAuthority?(a11, a9 + updated[14], &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  *(a9 + updated[15]) = a12;
  *(a9 + updated[16]) = a13;
  return result;
}

uint64_t outlined init with take of NavigationAuthority?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for NavigationAuthority?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t UpdateViewDestinationRequestProcessor.init(presentationData:destination:linkID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for Optional();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  updated = type metadata accessor for UpdateViewDestinationRequestProcessor(0, a4, a5, a6);
  result = (*(*(a4 - 8) + 32))(a7 + *(updated + 44), a2, a4);
  *(a7 + *(updated + 48)) = a3;
  return result;
}

uint64_t initializeWithCopy for UpdateViewDestinationViewModifier(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 16);
  v7 = *(v5 - 8) + 16;
  v8 = *(*(v5 - 8) + 80);
  v9 = (v8 + 17 + a1) & ~v8;
  v10 = (a2 + v8 + 17) & ~v8;

  v6(v9, v10, v5);
  v11 = *(v7 + 48) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  v15 = v13[2];
  v12[1] = v13[1];
  v12[2] = v15;
  *v12 = v14;
  v16 = (v12 + 55) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v13 + 55) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v17 + 8);
  *v16 = *v17;
  *(v16 + 8) = v18;
  v19 = (v12 + 71) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v13 + 71) & 0xFFFFFFFFFFFFFFF8;
  *v19 = *v20;
  *(v19 + 8) = *(v20 + 8);
  v21 = (v12 + 87) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v13 + 87) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(v22 + 8);
  if (v23 >= 0xFFFFFFFF)
  {
    LODWORD(v23) = -1;
  }

  if (v23 - 1 < 0)
  {
    swift_weakCopyInit();
    *(v21 + 8) = *(v22 + 8);
    *(v21 + 16) = *(v22 + 16);
  }

  else
  {
    v24 = *v22;
    *(v21 + 16) = *(v22 + 16);
    *v21 = v24;
  }

  *(v21 + 24) = *(v22 + 24);
  v25 = *((v13 + 119) & 0xFFFFFFFFFFFFFFF8);
  LODWORD(v26) = -1;
  if (v25 < 0xFFFFFFFF)
  {
    v26 = *((v13 + 119) & 0xFFFFFFFFFFFFFFF8);
  }

  if (v26 - 1 < 0)
  {
  }

  *((v12 + 119) & 0xFFFFFFFFFFFFFFF8) = v25;
  return a1;
}

uint64_t initializeWithTake for UpdateViewDestinationViewModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 32;
  v6 = *(v4 + 80);
  v7 = (v6 + 17 + a1) & ~v6;
  v8 = (v6 + 17 + a2) & ~v6;
  (*(v4 + 32))(v7, v8);
  v9 = *(v5 + 32) + 7;
  v10 = ((v9 + v7) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v9 + v8) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = v11[2];
  v10[1] = v11[1];
  v10[2] = v13;
  *v10 = v12;
  v14 = (v10 + 55) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v11 + 55) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v15 + 8);
  *v14 = *v15;
  *(v14 + 8) = v16;
  v17 = (v10 + 71) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v11 + 71) & 0xFFFFFFFFFFFFFFF8;
  *v17 = *v18;
  *(v17 + 8) = *(v18 + 8);
  v19 = (v10 + 87) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v11 + 87) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v20 + 8);
  if (*(v20 + 8) >= 0xFFFFFFFFuLL)
  {
    v21 = -1;
  }

  if (v21 - 1 < 0)
  {
    v19 = swift_weakTakeInit();
    *(v19 + 8) = *(v20 + 8);
  }

  else
  {
    v22 = *v20;
    *(v19 + 16) = *(v20 + 16);
    *v19 = v22;
  }

  *(v19 + 24) = *(v20 + 24);
  *((v10 + 119) & 0xFFFFFFFFFFFFFFF8) = *((v11 + 119) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

BOOL specialized static FocusStoreList.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    v7 = *(a2 + 16);
    if (!v7)
    {
      return 1;
    }

    v4 = 0;
    goto LABEL_11;
  }

  v4 = 0;
  v5 = a1 + 32;
  do
  {
    outlined init with copy of FocusStoreList.Item(v5, v12);
    v6 = v12[0];
    outlined destroy of FocusStoreList.Item(v12);
    if (v6 > v4)
    {
      v4 = v6;
    }

    v5 += 72;
    --v3;
  }

  while (v3);
  v7 = *(a2 + 16);
  if (v7)
  {
LABEL_11:
    v8 = 0;
    v9 = a2 + 32;
    do
    {
      outlined init with copy of FocusStoreList.Item(v9, v12);
      v10 = v12[0];
      outlined destroy of FocusStoreList.Item(v12);
      if (v10 > v8)
      {
        v8 = v10;
      }

      v9 += 72;
      --v7;
    }

    while (v7);
    return v4 == v8;
  }

  return !v4;
}

double destroy for UpdateViewDestinationViewModifier(void *a1, uint64_t a2)
{

  v4 = *(*(a2 + 16) - 8);
  v5 = v4 + 8;
  v6 = (a1 + *(v4 + 80) + 17) & ~*(v4 + 80);
  (*(v4 + 8))(v6);
  v8 = (*(v5 + 56) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(((v8 + 87) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  if (v9 - 1 < 0)
  {
    swift_weakDestroy();
  }

  LODWORD(v10) = -1;
  if (*((v8 + 119) & 0xFFFFFFFFFFFFFFF8) < 0xFFFFFFFFuLL)
  {
    v10 = *((v8 + 119) & 0xFFFFFFFFFFFFFFF8);
  }

  if (v10 - 1 < 0)
  {
  }

  return result;
}