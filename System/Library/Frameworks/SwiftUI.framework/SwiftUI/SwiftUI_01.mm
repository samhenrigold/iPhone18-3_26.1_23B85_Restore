id _UIHostingView.next.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0xE0)) + 48);
  v6 = v5;
  if (!v5)
  {
    v6 = _UIHostingView.defaultNextResponder.getter(a1, a2, a3, a4);
  }

  v7 = v5;
  return v6;
}

id _UIHostingView.defaultNextResponder.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _UIHostingView(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v8.receiver = v4;
  v8.super_class = v5;
  v6 = objc_msgSendSuper2(&v8, sel_nextResponder);

  return v6;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<BadgesEnabledKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<BadgesEnabledKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<BadgesEnabledKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<BadgesEnabledKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<BadgesEnabledKey>, &type metadata for BadgesEnabledKey, &protocol witness table for BadgesEnabledKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<BadgesEnabledKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t outlined consume of Binding<NavigationSplitViewColumn>?(uint64_t result, uint64_t a2)
{
  if (a2)
  {
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DismissWindowActionKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DismissWindowActionKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DismissWindowActionKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DismissWindowActionKey>, &type metadata for EnvironmentValues.DismissWindowActionKey, &protocol witness table for EnvironmentValues.DismissWindowActionKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DismissWindowActionKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<PresentationModeKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentationModeKey>);
    }
  }
}

uint64_t FocusBridge.focusedItem.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  outlined init with copy of FocusItem?(v1 + 88, v7);
  if (*(&v8 + 1))
  {
    v3 = 0;
  }

  else
  {
    v3 = v9 == 1;
  }

  if (v3)
  {
    outlined destroy of FocusItem?(v7);
  }

  else
  {
    outlined init with take of FocusItem(v7, v10);
    if (FocusItem.isExpired.getter())
    {
      memset(v7, 0, sizeof(v7));
      v8 = 0u;
      v9 = xmmword_18CD6A6D0;
      outlined init with copy of FocusItem?(v1 + 88, v6);
      swift_beginAccess();
      outlined assign with copy of FocusItem?(v7, v1 + 88);
      swift_endAccess();
      outlined init with copy of FocusItem?(v1 + 88, v5);
      FocusBridge.didChangeFocusItem(from:to:)(v6, v5);
      outlined destroy of FocusItem?(v5);
      outlined destroy of FocusItem?(v6);
      outlined destroy of FocusItem?(v7);
    }

    outlined destroy of FocusItem(v10);
  }

  return outlined init with copy of FocusItem?(v1 + 88, a1);
}

Swift::Void __swiftcall _UIHostingView.updateFocusedItem()()
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = _UIHostingView.viewGraph.getter(v0);
  swift_beginAccess();
  v2 = *(v1 + 361);

  if ((v2 & 0x20) != 0)
  {
    v4 = _UIHostingView.viewGraph.getter(v3);
    _UIHostingView.focusedItem.getter(v8);
    swift_beginAccess();
    if (*(v4 + 361) & 0x20) != 0 && (lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph(), (v5 = ViewGraph.subscript.getter()) != 0) && *v5 != *MEMORY[0x1E698D3F8] && (_ss11AnyHashableVSgMaTm_2(0, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720]), (AGGraphSetValue()) && (swift_beginAccess(), swift_unknownObjectWeakLoadStrong()))
    {
      v6 = *(v4 + 208);
      ObjectType = swift_getObjectType();
      (*(*(v6 + 8) + 16))(ObjectType);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    _ss11AnyHashableVSgWOhTm_1(v8, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720]);
  }
}

uint64_t outlined init with copy of WeakBox<FocusBridge>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WeakBox<FocusBridge>(0, &lazy cache variable for type metadata for WeakBox<FocusBridge>, type metadata accessor for FocusBridge, MEMORY[0x1E6981A78]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall _UIHostingView.updateTransform()()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40] & *v0;
  v4 = _UIHostingView.base.getter();
  UIHostingViewBase._updateTransform()();

  v5 = specialized _UIHostingView.popoverBridge.getter();
  if (v5)
  {
    v6 = v5;
    UIKitPopoverBridge.updateAnchor()();
  }

  v7 = specialized _UIHostingView.editMenuBridge.getter();
  if (*(v7 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 40) != 1)
  {
    v8 = *(v7 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_interaction);
    if (v8)
    {
      [v8 updateVisibleMenuPositionAnimated_];
    }
  }

  v9 = _UIHostingView.viewController.getter();
  if (v9)
  {
    v10 = v9;

    UIKitDialogBridge.transformDidChange()();
  }

  if (specialized _UIHostingView.sharingActivityPickerBridge.getter())
  {

    SharingActivityPickerBridge.transformDidChange()();
  }

  if ((*(v1 + *((*v2 & *v1) + 0xB0) + 32) & 1) == 0)
  {
    v12 = type metadata accessor for _UIHostingView(0, *(v3 + 80), *(v3 + 88), v11);
    swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v12);

    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }
}

void type metadata accessor for WeakBox<FocusBridge>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void *FocusBridge.updateEnvironment(_:)(uint64_t *a1)
{
  v2 = v1;
  result = FocusBridge.host.getter();
  if (result)
  {
    v5 = result;
    v6 = a1[1];
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FocusBridgeKey>, &type metadata for FocusBridgeKey, &protocol witness table for FocusBridgeKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<FocusBridgeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<FocusBridgeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<FocusBridgeKey>, &type metadata for FocusBridgeKey, &protocol witness table for FocusBridgeKey);
    if (v6)
    {

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      PropertyList.subscript.getter();
    }

    swift_weakLoadStrong();
    outlined destroy of WeakBox<FocusBridge>(v26, &lazy cache variable for type metadata for WeakBox<FocusBridge>, v7, type metadata accessor for FocusBridge, MEMORY[0x1E6981A78]);
    swift_weakAssign();

    specialized EnvironmentValues.focusBridge.setter(v8);

    if (v6)
    {
      _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusedKey>, &type metadata for EnvironmentValues.IsFocusedKey, &protocol witness table for EnvironmentValues.IsFocusedKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<FocusBridgeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsFocusedKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusedKey>, &type metadata for EnvironmentValues.IsFocusedKey, &protocol witness table for EnvironmentValues.IsFocusedKey);

      PropertyList.Tracker.value<A>(_:for:)();

      if (v26[0])
      {
        goto LABEL_12;
      }
    }

    else
    {
      _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusedKey>, &type metadata for EnvironmentValues.IsFocusedKey, &protocol witness table for EnvironmentValues.IsFocusedKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<FocusBridgeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsFocusedKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusedKey>, &type metadata for EnvironmentValues.IsFocusedKey, &protocol witness table for EnvironmentValues.IsFocusedKey);
      PropertyList.subscript.getter();
      if (v26[0])
      {
        goto LABEL_12;
      }
    }

    LOBYTE(v26[0]) = FocusBridge.isHostContainedInFocusedItem.getter() & 1;
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusedKey>, &type metadata for EnvironmentValues.IsFocusedKey, &protocol witness table for EnvironmentValues.IsFocusedKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<FocusBridgeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsFocusedKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusedKey>, &type metadata for EnvironmentValues.IsFocusedKey, &protocol witness table for EnvironmentValues.IsFocusedKey);

    PropertyList.subscript.setter();
    if (v6)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }

LABEL_12:
    v9 = [v5 window];
    if (v9)
    {
      v10 = v9;
      type metadata accessor for UIFocusSystem();
      v11 = v10;
      v12 = static UIFocusSystem.focusSystem(for:)();

      LOBYTE(v26[0]) = v12 != 0;
      _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsPlatformFocusSystemEnabled>, &type metadata for EnvironmentValues.IsPlatformFocusSystemEnabled, &protocol witness table for EnvironmentValues.IsPlatformFocusSystemEnabled, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<FocusBridgeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsPlatformFocusSystemEnabled> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsPlatformFocusSystemEnabled>, &type metadata for EnvironmentValues.IsPlatformFocusSystemEnabled, &protocol witness table for EnvironmentValues.IsPlatformFocusSystemEnabled);

      PropertyList.subscript.setter();
      if (v6)
      {
        PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
      }
    }

    swift_beginAccess();
    v13 = EnvironmentValues.preferenceBridge.getter();
    swift_endAccess();
    if (v13)
    {

      if (EnvironmentValues.preferenceBridge.getter())
      {

LABEL_26:
        v24 = *a1;
        v25 = a1[1];
        swift_beginAccess();
        *(v2 + 72) = v24;
        *(v2 + 80) = v25;
      }

      v19 = FocusBridge.host.getter();
      if (!v19)
      {
LABEL_25:

        goto LABEL_26;
      }

      v21 = v19;
      v22 = v20;
      ObjectType = swift_getObjectType();
      (*(*(*(v22 + 8) + 8) + 8))(ObjectType);

      GraphHost.addPreference<A>(_:)();
      GraphHost.addPreference<A>(_:)();
    }

    else
    {
      if (!EnvironmentValues.preferenceBridge.getter())
      {
        goto LABEL_25;
      }

      v14 = FocusBridge.host.getter();
      if (!v14)
      {
        goto LABEL_25;
      }

      v16 = v14;
      v17 = v15;
      v18 = swift_getObjectType();
      (*(*(*(v17 + 8) + 8) + 8))(v18);

      GraphHost.removePreference<A>(_:)();
      GraphHost.removePreference<A>(_:)();
    }

    goto LABEL_25;
  }

  return result;
}

uint64_t specialized DeprecatedAlertBridge.update(environment:)(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x1E69E7D40];
  v6 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x80));
  *v6 = a1;
  v6[1] = a2;

  v7 = *((*v5 & *v2) + 0x88);
  swift_beginAccess();
  outlined init with copy of AnyShareConfiguration?(v2 + v7, __src, &lazy cache variable for type metadata for Alert.Presentation?, &type metadata for Alert.Presentation);
  if (!__src[3])
  {
    return _ss11AnyHashableVSgWOhTm_1(__src, &lazy cache variable for type metadata for Alert.Presentation?, &type metadata for Alert.Presentation, MEMORY[0x1E69E6720]);
  }

  memcpy(__dst, __src, sizeof(__dst));
  if ((*(v2 + *((*v5 & *v2) + 0x90)) & 1) == 0)
  {
    v8 = *(v2 + *((*v5 & *v2) + 0x78));
    if (v8)
    {
      v9 = v8;
      specialized PlatformAlertController.update<A>(for:with:environmentChanged:)(__dst, a1, a2, 1);
    }
  }

  return outlined destroy of Alert.Presentation(__dst);
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(255, a2, a3, a4);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v6);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for PresentationHostingController<AnyView>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E6981910], MEMORY[0x1E6981900]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<MultimodalListLayoutKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<MultimodalListLayoutKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<MultimodalListLayoutKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<MultimodalListLayoutKey>, &type metadata for MultimodalListLayoutKey, &protocol witness table for MultimodalListLayoutKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<MultimodalListLayoutKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<NavigationBarHostKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationBarHostKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationBarHostKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationBarHostKey>, &type metadata for NavigationBarHostKey, &protocol witness table for NavigationBarHostKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationBarHostKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void one-time initialization function for defaultValue()
{
  static EnvironmentValues.DismissWindowActionKey.defaultValue = 0;
  unk_1ED57E960 = 0;
  byte_1ED57E968 = 2;
  qword_1ED57E970 = 0;
  unk_1ED57E978 = 0;
  byte_1ED57E980 = 0;
}

{
  static BridgedEnvironmentKeysKey.defaultValue = MEMORY[0x1E69E7CC0];
}

{
  static AccessibilityNodesKey.defaultValue = MEMORY[0x1E69E7CC0];
}

{
  static SceneList.Key.defaultValue = MEMORY[0x1E69E7CC8];
}

{
  static BridgedPopUpButtonPreferenceKey.defaultValue = 0;
  byte_1ED5A72C0 = 1;
}

{
  static AccessibilityProperties.ActionsKey.defaultValue = MEMORY[0x1E69E7CC0];
}

{
  static AlertStorage.PreferenceKey.defaultValue = MEMORY[0x1E69E7CC8];
}

{
  static NavigationDestinationsKey.defaultValue = MEMORY[0x1E69E7CC8];
}

{
  static AlwaysOnTimelinesKey.defaultValue = MEMORY[0x1E69E7CC0];
}

{
  static SharingActivityPickerPresentation.Key.defaultValue = MEMORY[0x1E69E7CC0];
}

{
  static ConfirmationDialog.PreferenceKey.defaultValue = MEMORY[0x1E69E7CC8];
}

{
  static UpdateViewDestinationRequest.UpdateViewDestinationRequestKey.defaultValue = MEMORY[0x1E69E7CC8];
}

{
  static ContentScrollViewPreferenceKey.defaultValue = MEMORY[0x1E69E7CC0];
}

{
  static UINavigationItemAdaptorKey.defaultValue = MEMORY[0x1E69E7CC0];
}

{
  static InspectorAnchorPreferenceKey.defaultValue = MEMORY[0x1E69E7CC8];
}

{
  static InspectorStorage.PreferenceKey.defaultValue = MEMORY[0x1E69E7CC8];
}

{
  static PopoverPresentation.Key.defaultValue = MEMORY[0x1E69E7CC0];
}

{
  static _GraphInputs.NavigationPresentationAdaptorKey.defaultValue = *MEMORY[0x1E698D3F8];
}

{
  static UISplitViewControllerProxyKey.defaultValue = 0;
}

{
  static AlternateRepresentationKey.defaultValue = 0;
}

{
  static NavigationDestinationKey.defaultValue = MEMORY[0x1E69E7CC0];
}

{
  static GridMetadata.defaultValue = MEMORY[0x1E69E7CC0];
}

{
  JUMPOUT(0x18D007050);
}

{
  static PlatformItemList.Key.defaultValue = MEMORY[0x1E69E7CC0];
}

{
  static ResponderCommandsKey.defaultValue = MEMORY[0x1E69E7CC8];
}

{
  static EnvironmentValues.OpenWindowActionKey.defaultValue = 0;
  unk_1EAA1D600 = 0;
  byte_1EAA1D608 = 2;
  qword_1EAA1D610 = 0;
  byte_1EAA1D618 = 1;
}

{
  static NascentViewDestinationsExtractor.Key.defaultValue = MEMORY[0x1E69E7CC0];
}

{
  static ActiveContextMenuKey.defaultValue = 0;
  byte_1EAB09AF4 = 0;
}

{
  static MultimodalBadgeInfoKey.defaultValue = MEMORY[0x1E69E7CC0];
}

{
  static ArchivableMutationsKey.defaultValue = MEMORY[0x1E69E7CC0];
}

{
  static ToolbarContentInput.defaultValue = 0;
}

{
  static PinnedBarConfiguration.Input.defaultValue = *MEMORY[0x1E698D3F8];
}

{
  static InteractiveResizeInput.defaultValue = 0;
}

{
  static WindowSceneKey.defaultValue = 0;
  byte_1EA9FE298 = 1;
}

{
  static ConnectionOptionsKey.defaultValue = 0;
  byte_1EAA20160 = 1;
}

{
  static _GraphInputs.IsFocusSystemEnabledKey.defaultValue = *MEMORY[0x1E698D3F8];
}

{
  static SceneStorageValuesKey.defaultValue = 0;
  byte_1EAA23028 = 1;
}

{
  static EnvironmentValues.DocumentCommandsKey.defaultValue = MEMORY[0x1E69E7CC0];
}

{
  static AccessibilityPresentation.defaultValue = *MEMORY[0x1E698D3F8];
}

{
  static OrnamentPresentation.Key.defaultValue = MEMORY[0x1E69E7CC8];
}

{
  static GridBadgeInfoEnvironmentKey.defaultValue = MEMORY[0x1E69E7CC0];
}

{
  static TabPopoverPresentationsKey.defaultValue = MEMORY[0x1E69E7CC0];
}

{
  static SwipeActions.TraitKey.defaultValue = MEMORY[0x1E69E7CC0];
}

{
  static DigitalCrownViewKey.defaultValue = 0;
  unk_1EAB09F20 = 0;
  dword_1EAB09F28 = 0;
}

{
  static BarItemBridgedTint.defaultValue = *MEMORY[0x1E698D3F8];
}

{
  static UIKitHostContainerFocusItemInput.defaultValue = *MEMORY[0x1E698D3F8];
}

{
  static PrintAccessoryViewsKey.defaultValue = MEMORY[0x1E69E7CC0];
}

void type metadata accessor for EnvironmentPropertyKey<BadgesEnabledKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

Swift::Void __swiftcall _UIHostingView.requestUpdate(after:)(Swift::Double after)
{
  v2 = _UIHostingView.base.getter();
  UIHostingViewBase._requestUpdate(after:)(after);
}

id _UIHostingView.safeAreaInsets.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*MEMORY[0x1E69E7D40] & *v4);
  v9 = *(v4 + v5[21] + 32);
  if (v9)
  {
    v6 = type metadata accessor for _UIHostingView(0, v5[10], v5[11], a4);
    v8.receiver = v4;
    v8.super_class = v6;
    return objc_msgSendSuper2(&v8, sel_safeAreaInsets);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    return static Update.ensure<A>(_:)();
  }
}

double @objc _UIHostingView.safeAreaInsets.getter(void *a1)
{
  v1 = a1;
  _UIHostingView.safeAreaInsets.getter(v1, v2, v3, v4);
  v6 = v5;

  return v6;
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance BridgedEnvironmentKeysKey@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static BridgedEnvironmentKeysKey.defaultValue;
}

void DynamicTypeSize.init(uiSizeCategory:)(void *a1@<X0>, char *a2@<X8>)
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {

    goto LABEL_8;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {

    v10 = 1;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {

      v10 = 1;
    }

    else
    {
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
      if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v20)
      {

        v10 = 2;
      }

      else
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {

          v10 = 2;
        }

        else
        {
          v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v24 = v23;
          if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
          {

            v10 = 3;
          }

          else
          {
            v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v26)
            {

              v10 = 3;
            }

            else
            {
              v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v29 = v28;
              if (v27 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v29 == v30)
              {

                v10 = 4;
              }

              else
              {
                v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v31)
                {

                  v10 = 4;
                }

                else
                {
                  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v34 = v33;
                  if (v32 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v34 == v35)
                  {

                    v10 = 5;
                  }

                  else
                  {
                    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v36)
                    {

                      v10 = 5;
                    }

                    else
                    {
                      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v39 = v38;
                      if (v37 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v39 == v40)
                      {

                        v10 = 6;
                      }

                      else
                      {
                        v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

                        if (v41)
                        {

                          v10 = 6;
                        }

                        else
                        {
                          v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v44 = v43;
                          if (v42 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v44 == v45)
                          {

                            v10 = 7;
                          }

                          else
                          {
                            v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

                            if (v46)
                            {

                              v10 = 7;
                            }

                            else
                            {
                              v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                              v49 = v48;
                              if (v47 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v49 == v50)
                              {

                                v10 = 8;
                              }

                              else
                              {
                                v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v51)
                                {

                                  v10 = 8;
                                }

                                else
                                {
                                  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                  v54 = v53;
                                  if (v52 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v54 == v55)
                                  {

                                    v10 = 9;
                                  }

                                  else
                                  {
                                    v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                    if (v56)
                                    {

                                      v10 = 9;
                                    }

                                    else
                                    {
                                      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                      v59 = v58;
                                      if (v57 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v59 == v60)
                                      {

                                        v10 = 10;
                                      }

                                      else
                                      {
                                        v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                        if (v61)
                                        {

                                          v10 = 10;
                                        }

                                        else
                                        {
                                          v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                          v64 = v63;
                                          if (v62 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v64 == v65)
                                          {

                                            v10 = 11;
                                          }

                                          else
                                          {
                                            v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                            if (v66)
                                            {
                                              v10 = 11;
                                            }

                                            else
                                            {
                                              v10 = 12;
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_9:
  *a2 = v10;
}

Swift::Void __swiftcall _UIHostingView.updateEnvironment()()
{
  v1 = v0;
  v2 = *MEMORY[0x1E69E7D40] & *v0;
  v3 = _UIHostingView.base.getter();
  UIHostingViewBase._startUpdateEnvironment()();

  v4 = [v1 traitCollection];
  v95 = v95;

  UITraitCollection.resolvedEnvironment(base:)(&v95, &v106);

  v107.value.super.isa = [v1 traitCollection];
  isa = v107.value.super.isa;
  EnvironmentValues.configureForPlatform(traitCollection:)(v107);

  LODWORD(v95) = _UIHostingView.colorAppearanceSeed.getter();
  type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<InheritedColorSeedKey>, &type metadata for InheritedColorSeedKey, &protocol witness table for InheritedColorSeedKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<InheritedColorSeedKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(&v106 + 1))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  if (_UIHostingView.delegate.getter())
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    (*(v7 + 16))(v1, &v106, *(v2 + 80), *(v2 + 88), ObjectType, v7);
    swift_unknownObjectRelease();
  }

  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  v94 = v1;
  if ((static UserDefaultKeyedFeature.isEnabled.getter() & 1) == 0)
  {
    if (_UIHostingView.delegate.getter())
    {
      v10 = v9;
      v11 = v106;
      if (*(&v106 + 1))
      {
        type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey>, &type metadata for EnvironmentValues.BridgePropertiesEnvironmentKey, &protocol witness table for EnvironmentValues.BridgePropertiesEnvironmentKey, MEMORY[0x1E697FE38]);
        lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

        PropertyList.Tracker.value<A>(_:for:)();
      }

      else
      {
        type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey>, &type metadata for EnvironmentValues.BridgePropertiesEnvironmentKey, &protocol witness table for EnvironmentValues.BridgePropertiesEnvironmentKey, MEMORY[0x1E697FE38]);
        lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
        PropertyList.subscript.getter();
      }

      v12 = swift_getObjectType();
      (*(v10 + 32))(v1, &v95, *(v2 + 80), *(v2 + 88), v12, v10);
      swift_unknownObjectRelease();
      v102 = v95;
      v103 = v96;
      type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey>, &type metadata for EnvironmentValues.BridgePropertiesEnvironmentKey, &protocol witness table for EnvironmentValues.BridgePropertiesEnvironmentKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

      PropertyList.subscript.setter();
      if (*(&v11 + 1))
      {
        PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
      }
    }

    v13 = _UIHostingView.viewController.getter();
    if (v13)
    {
      v14 = v13;
      if (*(&v106 + 1))
      {
        type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey>, &type metadata for EnvironmentValues.BridgePropertiesEnvironmentKey, &protocol witness table for EnvironmentValues.BridgePropertiesEnvironmentKey, MEMORY[0x1E697FE38]);
        lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

        PropertyList.Tracker.value<A>(_:for:)();
      }

      else
      {
        type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey>, &type metadata for EnvironmentValues.BridgePropertiesEnvironmentKey, &protocol witness table for EnvironmentValues.BridgePropertiesEnvironmentKey, MEMORY[0x1E697FE38]);
        lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
        PropertyList.subscript.getter();
      }

      UIHostingController.resolveRequiredBridges(_:allowedActions:)(v95, *(&v95 + 1), v96, *(&v96 + 1), 3);
    }
  }

  v15 = _UIHostingView.base.getter();
  UIHostingViewBase._updateEnvironment(_:)();

  v16 = _UIHostingView.traitCollectionOverride.getter();
  if (!v16)
  {
    v16 = [v1 traitCollection];
  }

  v91 = v16;
  v17 = v106;
  v95 = v106;
  if (MEMORY[0x18D006480]())
  {
    LOBYTE(v95) = UIView.ancestorHasInvertFilterApplied.getter() & 1;
    type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IgnoreInvertColorsFilterActiveKey>, &type metadata for IgnoreInvertColorsFilterActiveKey, &protocol witness table for IgnoreInvertColorsFilterActiveKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<IgnoreInvertColorsFilterActiveKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.setter();
    if (*(&v17 + 1))
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }
  }

  v18 = [v1 window];
  if (v18)
  {

    v19 = [v1 _undimmedTintColor];
    if (v19)
    {
      v20 = v19;
      type metadata accessor for UIKitPlatformColorDefinition(0);
      v21 = v20;
      Color.init(_platformColor:definition:)();
      EnvironmentValues.accentColor.setter();
    }
  }

  if ([v1 tintAdjustmentMode] == 2)
  {
    static TintAdjustmentMode.desaturated.getter();
    LOBYTE(v102) = v95;
    EnvironmentValues.tintAdjustmentMode.setter();
  }

  if (_UIHostingView.accessibilityEnabled.getter())
  {
    EnvironmentValues.accessibilityEnabled.setter();
  }

  v22 = [v1 window];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 windowScene];

    if (v24)
    {
      v25 = [v24 _systemUserInterfaceStyle];

      if (v25 == 2)
      {
        v26 = 1;
      }

      else
      {
        if (v25 != 1)
        {
          goto LABEL_38;
        }

        v26 = 0;
      }

      LOBYTE(v95) = v26;
      EnvironmentValues.systemColorScheme.setter();
    }
  }

LABEL_38:
  v92 = v2;
  v27 = [v1 window];
  v28 = [v27 windowScene];

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  BYTE8(v95) = 0;
  outlined init with copy of WeakBox<UIWindowScene>?(&v95, &v102);
  type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowSceneKey>, &type metadata for WindowSceneKey, &protocol witness table for WindowSceneKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<WindowSceneKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  v29 = *(&v106 + 1);
  if (*(&v106 + 1))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined destroy of WeakBox<UIWindowScene>?(&v95, type metadata accessor for WeakBox<UIWindowScene>?);
  v30 = [v1 undoManager];
  *&v95 = v30;
  type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UndoManagerKey>, &type metadata for UndoManagerKey, &protocol witness table for UndoManagerKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<UndoManagerKey> and conformance EnvironmentPropertyKey<A>();

  v31 = v30;
  PropertyList.subscript.setter();
  if (v29)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  if (_UIHostingView.accessibilityEnabled.getter())
  {
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = swift_allocObject();
    v33[2] = *(v92 + 80);
    v33[3] = *(v92 + 88);
    v33[4] = v32;

    v34 = partial apply for closure #2 in _UIHostingView.updateEnvironment();
  }

  else
  {
    v34 = 0;
    v33 = 0;
  }

  *&v95 = v34;
  *(&v95 + 1) = v33;
  type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityRequestFocusKey>, &type metadata for AccessibilityRequestFocusKey, &protocol witness table for AccessibilityRequestFocusKey, MEMORY[0x1E697FE38]);

  outlined copy of AppIntentExecutor?(v34, v33);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityRequestFocusKey> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();
  if (v29)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v34, v33);

  v90 = v33;
  v35 = (_UIHostingView.isPresentedInModalViewController.getter() & 1) != 0 || _UIHostingView.isPresentedInNavigationController.getter();
  v36 = _UIHostingView.presentationModeLocation.getter();
  *&v95 = 0;
  *(&v95 + 1) = v36;
  LOBYTE(v96) = v35;
  type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentationModeKey>, &type metadata for PresentationModeKey, &protocol witness table for PresentationModeKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v29)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();

    type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DismissWindowActionKey>, &type metadata for EnvironmentValues.DismissWindowActionKey, &protocol witness table for EnvironmentValues.DismissWindowActionKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DismissWindowActionKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {

    type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DismissWindowActionKey>, &type metadata for EnvironmentValues.DismissWindowActionKey, &protocol witness table for EnvironmentValues.DismissWindowActionKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DismissWindowActionKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  v37 = [v1 window];
  v89 = v34;
  if (v37 && (v38 = v37, v39 = [v37 windowScene], v38, v39))
  {

    v40 = 1;
  }

  else
  {
    v40 = 0;
  }

  v41 = _UIHostingView.scenePresentationModeLocation.getter();
  outlined consume of Binding<NavigationSplitViewColumn>?(*(&v103 + 1), v104);
  *(&v103 + 1) = 0;
  v104 = v41;
  v105 = v40;
  v42 = v102;
  v43 = v103;
  v95 = v102;
  LOBYTE(v96) = v103;
  *(&v96 + 1) = 0;
  v97 = v41;
  LOBYTE(v98) = v40;
  type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DismissWindowActionKey>, &type metadata for EnvironmentValues.DismissWindowActionKey, &protocol witness table for EnvironmentValues.DismissWindowActionKey, MEMORY[0x1E697FE38]);

  outlined copy of SceneList.Namespace(v42, *(&v42 + 1), v43);
  outlined copy of Binding<Int>?(0, v41);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DismissWindowActionKey> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();
  if (v29)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  v44 = [v94 window];
  if (v44)
  {
    v45 = v44;
    v46 = [v44 windowScene];

    if (v46)
    {
      v47 = [v46 _FBSScene];

      v48 = [v47 settings];
      if (v48)
      {
        type metadata accessor for ClarityUIApplicationSceneSettings();
        if (swift_dynamicCastClass())
        {
          ClarityUIApplicationSceneSettings.navigationBarHost.getter(&v95);
          LOBYTE(v100) = v95;
          type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationBarHostKey>, &type metadata for NavigationBarHostKey, &protocol witness table for NavigationBarHostKey, MEMORY[0x1E697FE38]);
          lazy protocol witness table accessor for type EnvironmentPropertyKey<NavigationBarHostKey> and conformance EnvironmentPropertyKey<A>();

          PropertyList.subscript.setter();
          if (v29)
          {
            PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
          }

          ClarityUIApplicationSceneSettings.listLayout.getter(&v95);
          LOBYTE(v100) = v95;
          type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MultimodalListLayoutKey>, &type metadata for MultimodalListLayoutKey, &protocol witness table for MultimodalListLayoutKey, MEMORY[0x1E697FE38]);
          lazy protocol witness table accessor for type EnvironmentPropertyKey<MultimodalListLayoutKey> and conformance EnvironmentPropertyKey<A>();

          PropertyList.subscript.setter();
          if (v29)
          {
            PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
          }

          LOBYTE(v95) = ClarityUIApplicationSceneSettings.areBadgesEnabled.getter() & 1;
          type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BadgesEnabledKey>, &type metadata for BadgesEnabledKey, &protocol witness table for BadgesEnabledKey, MEMORY[0x1E697FE38]);
          lazy protocol witness table accessor for type EnvironmentPropertyKey<BadgesEnabledKey> and conformance EnvironmentPropertyKey<A>();

          PropertyList.subscript.setter();
          if (v29)
          {
            PropertyList.Tracker.invalidateValue<A>(for:from:to:)();

LABEL_76:
            type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey>, &type metadata for EnvironmentValues.BridgePropertiesEnvironmentKey, &protocol witness table for EnvironmentValues.BridgePropertiesEnvironmentKey, MEMORY[0x1E697FE38]);
            lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

            PropertyList.Tracker.value<A>(_:for:)();

            goto LABEL_79;
          }

          goto LABEL_78;
        }
      }
    }
  }

  LOBYTE(v95) = 0;
  type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationBarHostKey>, &type metadata for NavigationBarHostKey, &protocol witness table for NavigationBarHostKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<NavigationBarHostKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v29)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  LOBYTE(v95) = 0;
  type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MultimodalListLayoutKey>, &type metadata for MultimodalListLayoutKey, &protocol witness table for MultimodalListLayoutKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<MultimodalListLayoutKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v29)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  LOBYTE(v95) = 1;
  type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BadgesEnabledKey>, &type metadata for BadgesEnabledKey, &protocol witness table for BadgesEnabledKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<BadgesEnabledKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v29)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();

    goto LABEL_76;
  }

LABEL_78:
  type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey>, &type metadata for EnvironmentValues.BridgePropertiesEnvironmentKey, &protocol witness table for EnvironmentValues.BridgePropertiesEnvironmentKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.getter();
LABEL_79:
  v49 = MEMORY[0x1E69E7D40];
  v100 = v95;
  v101 = v96;
  v50 = _UIHostingView.viewController.getter();
  if (v50)
  {
    v51 = v50;
    (*((*v49 & *v50) + 0x358))(&v106);
  }

  if ((static UserDefaultKeyedFeature.isEnabled.getter() & 1) == 0)
  {
    v52 = _UIHostingView.viewController.getter();
    if (v52)
    {
      v53 = v52;
      UIHostingController.updateViewGraphBridges(_:)(&v100);
    }
  }

  v54 = specialized _UIHostingView.contextMenuBridge.getter();
  v55 = v54[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_presentedMenu + 4];
  LODWORD(v95) = *&v54[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_presentedMenu];
  BYTE4(v95) = v55;
  type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ActiveContextMenuKey>, &type metadata for ActiveContextMenuKey, &protocol witness table for ActiveContextMenuKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ActiveContextMenuKey> and conformance EnvironmentPropertyKey<A>();
  v56 = v54;

  PropertyList.subscript.setter();
  if (*(&v106 + 1))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();

    v57 = *(&v106 + 1);
  }

  else
  {

    v57 = 0;
  }

  v58 = v106;
  specialized DeprecatedAlertBridge.update(environment:)(v106, v57);
  v59 = specialized DeprecatedAlertBridge.update(environment:)(v58, v57);
  v61 = _UIHostingView.sheetBridge.getter(v59, v60);
  if (v61)
  {
    v62 = v61;
    _s7SwiftUI11SheetBridgeC6update11environmentyAA17EnvironmentValuesVz_tFAA0C10PreferenceV3KeyV_Tg5_0(&v106);
  }

  if ((static UserDefaultKeyedFeature.isEnabled.getter() & 1) == 0)
  {
    v63 = *(v94 + *((*v49 & *v94) + 0x110));
    if (v63)
    {
      (*((*v63 & *v49) + 0x220))(&v100);
    }
  }

  specialized _UIHostingView.focusBridge.getter();

  FocusBridge.updateEnvironment(_:)(&v106);

  v64 = specialized _UIHostingView.popoverBridge.getter();
  if (v64)
  {
    v65 = v64;
    if (v57)
    {
      type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScenePhaseKey>, &type metadata for ScenePhaseKey, &protocol witness table for ScenePhaseKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<ScenePhaseKey> and conformance EnvironmentPropertyKey<A>();
      v66 = v65;

      PropertyList.Tracker.value<A>(_:for:)();

      if (v95)
      {
        goto LABEL_95;
      }
    }

    else
    {
      type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScenePhaseKey>, &type metadata for ScenePhaseKey, &protocol witness table for ScenePhaseKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<ScenePhaseKey> and conformance EnvironmentPropertyKey<A>();
      v67 = v65;
      PropertyList.subscript.getter();
      if (v95)
      {
LABEL_95:
        if (*(v65 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_wasBackgrounded) == 1)
        {
          *(v65 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_wasBackgrounded) = 0;
          UIKitPopoverBridge.updateAnchor()();
        }

        goto LABEL_99;
      }
    }

    *(v65 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_wasBackgrounded) = 1;
LABEL_99:
  }

  v93 = specialized _UIHostingView.editMenuBridge.getter();
  v69 = *&v93[OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 8];
  v88 = v57;
  v71 = *&v93[OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 16];
  v70 = *&v93[OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 24];
  v72 = *&v93[OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 32];
  v73 = *&v93[OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 40];
  v74 = *&v93[OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu + 48];
  *&v95 = *&v93[OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu];
  v68 = v95;
  *(&v95 + 1) = v69;
  *&v96 = v71;
  *(&v96 + 1) = v70;
  v97 = v72;
  v98 = v73;
  v99 = v74;
  type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_activeEditMenu>, &type metadata for EnvironmentValues.__Key_activeEditMenu, &protocol witness table for EnvironmentValues.__Key_activeEditMenu, MEMORY[0x1E697FE38]);
  outlined copy of ActiveEditMenu?(v68, v69, v71, v70, v72, v73, v74);
  outlined copy of ActiveEditMenu?(v68, v69, v71, v70, v72, v73, v74);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_activeEditMenu> and conformance EnvironmentPropertyKey<A>();
  v87 = v93;

  PropertyList.subscript.setter();
  if (v88)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined consume of ActiveEditMenu?(v68, v69, v71, v70, v72, v73, v74);

  specialized _UIHostingView.pencilEventsBridge.getter();
  specialized PencilEventsBridge.updateEnvironment(_:)(&v106);
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {

    v75 = v92;
  }

  else
  {
    v95 = v100;
    v96 = v101;
    type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey>, &type metadata for EnvironmentValues.BridgePropertiesEnvironmentKey, &protocol witness table for EnvironmentValues.BridgePropertiesEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.setter();
    v75 = v92;
    if (v88)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }
  }

  v76 = _UIHostingView.delegate.getter();
  v78 = v106;
  if (v76)
  {
    v79 = v77;
    v80 = swift_getObjectType();
    v95 = v78;
    v81 = *(v79 + 24);
    v82 = *(v75 + 80);
    v83 = *(v75 + 88);

    v81(v94, &v95, v82, v83, v80, v79);
    swift_unknownObjectRelease();
  }

  v84 = _UIHostingView.base.getter();
  v95 = v78;

  UIHostingViewBase._endUpdateEnvironment(_:)();

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v89, v90);

  v85 = *(&v103 + 1);
  v86 = v104;
  outlined consume of SceneList.Namespace(v102, *(&v102 + 1), v103);
  outlined consume of Binding<NavigationSplitViewColumn>?(v85, v86);
}

uint64_t _s7SwiftUI11SheetBridgeC6update11environmentyAA17EnvironmentValuesVz_tFAA0C10PreferenceV3KeyV_Tg5_0(uint64_t *a1)
{
  v3 = (v1 + direct field offset for SheetBridge.lastEnvironment);
  if (*(v1 + direct field offset for SheetBridge.lastEnvironment + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentPresentation>, &type metadata for ContainerBackgroundKeys.TransparentPresentation, &protocol witness table for ContainerBackgroundKeys.TransparentPresentation, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentPresentation> and conformance EnvironmentPropertyKey<A>();

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentPresentation>, &type metadata for ContainerBackgroundKeys.TransparentPresentation, &protocol witness table for ContainerBackgroundKeys.TransparentPresentation, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentPresentation> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }

  if (!a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentPresentation>, &type metadata for ContainerBackgroundKeys.TransparentPresentation, &protocol witness table for ContainerBackgroundKeys.TransparentPresentation, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentPresentation> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
    if (v16 != v15)
    {
      v4 = PropertyList.subscript.getter();
      goto LABEL_9;
    }

LABEL_16:
    v12 = *a1;
    v13 = a1[1];
    *v3 = v12;
    v3[1] = v13;
  }

  type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentPresentation>, &type metadata for ContainerBackgroundKeys.TransparentPresentation, &protocol witness table for ContainerBackgroundKeys.TransparentPresentation, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentPresentation> and conformance EnvironmentPropertyKey<A>();

  PropertyList.Tracker.value<A>(_:for:)();

  if (v16 == v15)
  {
    goto LABEL_16;
  }

  PropertyList.Tracker.value<A>(_:for:)();

LABEL_9:
  if (v14 == 1 && ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x228))(v4) & 1) == 0)
  {
    v9 = v1 + direct field offset for SheetBridge.host;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v10 = *(v9 + 1);
      ObjectType = swift_getObjectType();
      (*(*(v10 + 8) + 8))(ObjectType);
      swift_unknownObjectRelease();
      GraphHost.removePreference<A>(_:)();
      goto LABEL_15;
    }
  }

  else
  {
    v5 = v1 + direct field offset for SheetBridge.host;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v7 = *(v5 + 1);
      v8 = swift_getObjectType();
      (*(*(v7 + 8) + 8))(v8);
      swift_unknownObjectRelease();
      GraphHost.addPreference<A>(_:)();
LABEL_15:

      goto LABEL_16;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_18BD5DE58()
{

  return swift_deallocObject();
}

double UITraitCollection.resolvedEnvironment(base:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  *&v6 = v4;
  *(&v6 + 1) = v3;

  UITraitCollection.resolvedPreEnvironment(base:)(&v6, &v7);

  v6 = v7;

  UITraitCollection.coreResolvedBaseEnvironment(base:)();

  v6 = v7;

  UITraitCollection.coreResolvedGlassMaterialEnvironment(base:)();

  result = *&v7;
  *a2 = v7;
  return result;
}

Swift::Void __swiftcall _UIHostingView.updateRootView()()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *(v1 - 8);
  (MEMORY[0x1EEE9AC00])();
  v4 = &v9[-v3];
  v6 = _UIHostingView.viewGraph.getter(v5);
  CoreCoordinator.dataSource.getter(v4);
  v7 = *(v6 + 236);
  v10 = v1;
  v11 = v7;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v4, partial apply for closure #1 in Attribute.setValue(_:), v9, v1, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v8);

  (*(v2 + 8))(v4, v1);
}

uint64_t CoreCoordinator.dataSource.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  swift_beginAccess();
  return (*(*(*((v4 & v3) + 0x50) - 8) + 16))(a1, &v1[v5]);
}

uint64_t _s14AttributeGraph0A0V8setValueySbxFSbSPyxGXEfU_TA_0@<X0>(_BYTE *a2@<X8>)
{
  result = AGGraphSetValue();
  *a2 = result;
  return result;
}

uint64_t closure #1 in Attribute.setValue(_:)@<X0>(_BYTE *a4@<X8>)
{
  result = AGGraphSetValue();
  *a4 = result;
  return result;
}

uint64_t outlined init with copy of WeakBox<UIWindowScene>?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WeakBox<UIWindowScene>?(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<WindowSceneKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<WindowSceneKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<WindowSceneKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowSceneKey>, &type metadata for WindowSceneKey, &protocol witness table for WindowSceneKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<WindowSceneKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

Swift::Void __swiftcall EnvironmentValues.configureForPlatform(traitCollection:)(UITraitCollection_optional traitCollection)
{
  v2 = *v1;
  if (one-time initialization token for configuredForPlatform != -1)
  {
    isa = traitCollection.value.super.isa;
    swift_once();
    traitCollection.value.super.isa = isa;
  }

  if (!v2)
  {
    if (static EnvironmentValues.configuredForPlatform)
    {
      goto LABEL_12;
    }

LABEL_9:
    if (!traitCollection.value.super.isa)
    {
      return;
    }

    v4 = traitCollection.value.super.isa;
    EnvironmentValues.plist.setter();
    traitCollection.value.super.isa = v4;
    goto LABEL_16;
  }

  if (static EnvironmentValues.configuredForPlatform)
  {
    v3 = v2 == static EnvironmentValues.configuredForPlatform;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    goto LABEL_9;
  }

LABEL_12:
  if (!(*v1 | traitCollection.value.super.isa))
  {

    EnvironmentValues.plist.setter();
    return;
  }

LABEL_16:

  EnvironmentValues._configureForPlatform(traitCollection:)(traitCollection.value.super.isa);
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<InheritedColorSeedKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<InheritedColorSeedKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<InheritedColorSeedKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<InheritedColorSeedKey>, &type metadata for InheritedColorSeedKey, &protocol witness table for InheritedColorSeedKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<InheritedColorSeedKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

id @objc _UIHostingView.next.getter(void *a1)
{
  v1 = a1;
  v5 = _UIHostingView.next.getter(v1, v2, v3, v4);

  return v5;
}

uint64_t outlined destroy of AnyAccessibilityValue?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for AnyAccessibilityValue?(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined destroy of Any?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t _sypSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for [TableColumnCustomizationID](0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sypSgWOhTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t _sypSgWOhTm_2(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _sypSgMaTm_2(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sypSgWOhTm_3(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _sypSgMaTm_4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sypSgWOhTm_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t _sypSgWOhTm_5(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for WidgetAuxiliaryViewMetadata.Gauge?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sypSgWOhTm_6(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _sypSgWOhTm_7(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for State<BarTransitionProgress>(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sypSgWOhTm_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = (a4)(0, a2, a3);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t _sypSgWOhTm_9(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Void __swiftcall _UIHostingView.updateBackgroundColor()()
{
  if (_UIHostingView.appliesContainerBackgroundColor.getter())
  {
    v1 = specialized _UIHostingView.containerBackgroundColor.getter();
    if (v1)
    {
      v2 = v1;
      v6 = v1;
      v3 = v2;
      v4 = 1;
LABEL_11:
      setBackground #1 <A>(_:canOverwriteClientValue:) in _UIHostingView.updateBackgroundColor()(v3, v4, v0);

      return;
    }
  }

  v5 = _UIHostingView.viewController.getter();
  if (!v5)
  {
    return;
  }

  if (!_UIHostingView.wantsTransparentBackground.getter())
  {
    v3 = [objc_opt_self() systemBackgroundColor];
    v6 = v3;
    v4 = 0;
    goto LABEL_11;
  }

  setBackground #1 <A>(_:canOverwriteClientValue:) in _UIHostingView.updateBackgroundColor()(0, 1, v0);
}

void @objc _UIHostingView.traitCollectionDidChange(_:)(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  _UIHostingView.traitCollectionDidChange(_:)(v9);
}

Swift::Void __swiftcall _UIHostingView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  _UIHostingView.updateBackgroundColor()();
  if (_UIHostingView.shouldDisableUIKitAnimations.getter())
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v3VGMaTm_1(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v3>, MEMORY[0x1E697DF30], MEMORY[0x1E697DF28], MEMORY[0x1E697EC20]);
    lazy protocol witness table accessor for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>();
    if (static SemanticFeature.isEnabled.getter())
    {
      v4 = static Transaction.currentUIViewTransaction(canDisableAnimations:)(1);
      if (v4 != 1)
      {
        v5 = v4;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v7 = Strong;
          v8 = specialized UIHostingController.alwaysOnBridge.getter();
          outlined copy of Transaction?(v5);

          if (v8)
          {
            AlwaysOnBridge.configureTransaction(_:)();
          }
        }

        else
        {
        }

        _UIHostingView.viewGraph.getter(v9);
        GraphHost.emptyTransaction(_:)();
        outlined consume of ListItemTint?(v5);
      }
    }
  }

  v10 = [v2 traitCollection];
  v11 = [v10 userInterfaceIdiom];

  if (!isa || v11 != [(objc_class *)isa userInterfaceIdiom])
  {
    _UIHostingView.updateEventBridge()();
  }

  v12 = [v2 traitCollection];
  v13 = [v12 hasDifferentColorAppearanceComparedToTraitCollection_];

  if (v13)
  {
    v14 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xF0);
    ++*(v2 + v14);
  }

  v15 = _UIHostingView.base.getter();
  v18.is_nil = v15;
  v16 = v15;
  v18.value.super.isa = isa;
  UIHostingViewBase.traitCollectionDidChange(_:)(v18);
}

uint64_t _UIHostingView.shouldDisableUIKitAnimations.getter()
{
  if (*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x80)) || (v1 = _UIHostingView.base.getter(), v2 = UIHostingViewBase.allowUIKitAnimationsForNextUpdate.getter(), v1, (v2 & 1) != 0) || (_UIHostingView.isInSizeTransition.getter() & 1) != 0 || (_UIHostingView.isResizingSheet.getter() & 1) != 0 || (v3 = _UIHostingView.isRotatingWindow.getter(), (v3 & 1) != 0))
  {
    v7 = 0;
  }

  else
  {
    v7 = _UIHostingView.isTabSidebarMorphing.getter(v3, v4, v5, v6) ^ 1;
  }

  return v7 & 1;
}

uint64_t _UIHostingView.isResizingSheet.getter()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  v2 = [v0 window];
  if (v2 && (v4 = v2, v5 = [v2 _rootSheetPresentationController], v4, v5))
  {
    v6 = [v5 _isGeneratingAnimations];
  }

  else
  {
    v6 = 0;
  }

  v7 = type metadata accessor for _UIHostingView(0, *(v1 + 80), *(v1 + 88), v3);
  swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v7);
  v8 = UICoreViewControllerProvider.containingViewController.getter();
  if (v8 && (v9 = v8, v10 = [v8 activePresentationController], v9, v10))
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = [v11 _isGeneratingAnimations];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return (v6 | v12) & 1;
}

id UICoreViewControllerProvider.containingViewController.getter()
{
  result = dispatch thunk of UICoreViewControllerProvider.coreUIViewController.getter();
  if (!result)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return [result _viewControllerForAncestor];
    }
  }

  return result;
}

uint64_t ViewGraphDelegate.uiViewController.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for UICoreViewControllerProvider, MEMORY[0x1E69DC170]);
  (*(a2 + 16))(&v7, v4, v4, a1, a2);
  if (!v7)
  {
    return 0;
  }

  swift_getObjectType();
  v5 = dispatch thunk of UICoreViewControllerProvider.coreUIViewController.getter();
  swift_unknownObjectRelease();
  return v5;
}

id _UIHostingView.isTabSidebarMorphing.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _UIHostingView(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v5);
  result = ViewGraphDelegate.uiViewController.getter(v5, WitnessTable);
  if (result)
  {
    v8 = result;
    v9 = [result tabBarController];

    if (v9)
    {
      v10 = [v9 _isInSidebarTransition];

      return v10;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t static Transaction.currentUIViewTransaction(canDisableAnimations:)(char a1)
{
  if ((a1 & 1) != 0 && ([objc_opt_self() areAnimationsEnabled] & 1) == 0)
  {
    Transaction.disablesAnimations.setter();
    return 0;
  }

  else
  {
    v1 = objc_opt_self();
    if ([v1 _isInAnimationBlockWithAnimationsEnabled] && (objc_msgSend(v1, sel__currentAnimationDuration), v3 = v2, v4 = objc_msgSend(v1, sel__currentAnimationCurve), v5.n128_u64[0] = v3, static Animation.uiViewAnimation(curve:duration:)(v4, v5)))
    {

      v6 = Transaction.init(animation:)();
      v7 = _CATransactionCompletionItem();
      if (v7)
      {
        v8 = v7;
        *(swift_allocObject() + 16) = v7;
        v9 = v8;
        Transaction.addAnimationListener(allFinished:)();
      }

      return v6;
    }

    else
    {
      return 1;
    }
  }
}

uint64_t sub_18BD5F400()
{

  return swift_deallocObject();
}

void @objc _UIHostingView.didMoveToWindow()(void *a1)
{
  v1 = a1;
  _UIHostingView.didMoveToWindow()();
}

Swift::Void __swiftcall _UIHostingView.didMoveToWindow()()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40] & *v0;
  MEMORY[0x18D00ABE0]();

  v4 = [v0 window];
  UIKitEventBindingBridge.hostingView<A>(_:didMoveToWindow:)(v0, v4);

  v5 = *v0;
  v6 = *v2;
  if (!*(v1 + *((*v2 & *v1) + 0x1C8)))
  {
    v7 = _UIHostingView.isWindowRoot.getter();
    v5 = *v0;
    v6 = *v2;
    if (v7)
    {
      v8 = v6 & v5;
      v9 = *(v0 + *(v8 + 456));
      if (!v9)
      {
        type metadata accessor for RootViewDelegate();
        v9 = swift_allocObject();
        *(v9 + 16) = -1;
        *(v9 + 32) = 0;
        swift_unknownObjectWeakInit();
        v8 = *v2 & *v0;
      }

      *(v0 + *(v8 + 456)) = v9;

      v10 = v0 + *((*v2 & *v0) + 0x1C0);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v11 = *(v0 + *((*v2 & *v0) + 0x1C8));
        if (v11)
        {
          *(v11 + 32) = *(v10 + 1);
          swift_unknownObjectWeakAssign();
        }

        swift_unknownObjectRelease();
      }

      v12 = &protocol witness table for RootViewDelegate;
      if (!*(v0 + *((*v2 & *v0) + 0x1C8)))
      {
        v12 = 0;
      }

      *(v0 + *((*v2 & *v0) + 0x1C0) + 8) = v12;
      swift_unknownObjectWeakAssign();
      v5 = *v0;
      v6 = *v2;
    }
  }

  v13 = v0 + *((v6 & v5) + 0x1C0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v13 + 1);
    ObjectType = swift_getObjectType();
    v16 = [v0 window];
    (*(v14 + 8))(v0, v16, *(v3 + 80), *(v3 + 88), ObjectType, v14);

    swift_unknownObjectRelease();
  }

  v17 = [v0 window];
  if (!v17)
  {
    v18 = *v2 & *v0;
    v19 = *(v0 + *(v18 + 0x188));
    v20 = *&v19[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_interaction];
    if (v20)
    {
      v21 = objc_opt_self();
      v22 = swift_allocObject();
      *(v22 + 16) = v20;
      v23 = swift_allocObject();
      *(v23 + 16) = partial apply for closure #1 in ContextMenuBridge.hostRemovedFromWindow();
      *(v23 + 24) = v22;
      v47 = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
      v48 = v23;
      v43 = MEMORY[0x1E69E9820];
      v44 = 1107296256;
      v45 = thunk for @escaping @callee_guaranteed () -> ();
      v46 = &block_descriptor_20_2;
      v24 = _Block_copy(&v43);
      v25 = v20;
      v26 = v19;

      [v21 performWithoutAnimation_];

      _Block_release(v24);
      LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

      if (v21)
      {
        goto LABEL_35;
      }

      v18 = *v2 & *v1;
    }

    v27 = *(v1 + *(v18 + 312));
    v28 = objc_opt_self();
    v29 = swift_allocObject();
    *(v29 + 16) = v27;
    v30 = swift_allocObject();
    *(v30 + 16) = partial apply for closure #1 in EditMenuBridge.hostRemovedFromWindow();
    *(v30 + 24) = v29;
    v47 = partial apply for thunk for @callee_guaranteed () -> ();
    v48 = v30;
    v43 = MEMORY[0x1E69E9820];
    v44 = 1107296256;
    v45 = thunk for @escaping @callee_guaranteed () -> ();
    v46 = &block_descriptor_84;
    v31 = _Block_copy(&v43);
    v32 = v27;

    [v28 performWithoutAnimation_];
    _Block_release(v31);
    LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

    if ((v28 & 1) == 0)
    {
      goto LABEL_20;
    }

    __break(1u);
LABEL_35:
    __break(1u);
    return;
  }

LABEL_20:
  v33 = [v1 window];
  if (v33)
  {
  }

  else
  {
    v42 = *(v1 + *((*v2 & *v1) + 0x140));
    if (v42)
    {
      memmove(&v43, (v42 + 64), 0x94uLL);
      if (_s7SwiftUI33SharingActivityPickerPresentation33_ED8966F32E79CAE8636A59B86DBA4A31LLVSgWOg(&v43) != 1)
      {
        swift_retain_n();
        onNextMainRunLoop(do:)();
      }
    }
  }

  v34 = [v1 window];
  if (v34)
  {

    _UIHostingView.updateEventBridge()();
  }

  _UIHostingView.updateWindowGeometryScene()();

  v35 = FocusBridge.host.getter();

  if (v35)
  {
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v38 = Strong;
    UIHostingController._viewDidMoveToWindow()();
  }

  v39 = _UIHostingView.sheetBridge.getter(Strong, v37);
  if (v39)
  {
    v40 = v39;
    specialized SheetBridge.didMoveToWindow()(partial apply for specialized closure #1 in SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:), &unk_1F000D080, &unk_1F000D0A8, partial apply for specialized closure #3 in SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:));
  }

  v41 = _UIHostingView.base.getter();
  UIHostingViewBase.didMoveToWindow()();

  static Update.end()();
}

uint64_t sub_18BD5FC08()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18BD5FC40()
{

  return swift_deallocObject();
}

void UIKitEventBindingBridge.hostingView<A>(_:didMoveToWindow:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_beginAccess();
    swift_weakLoadStrong();
    v3 = type metadata accessor for FallbackResponderProvider();
    _UIHostingView.as<A>(_:)(v3, v3, v13);
    v4 = v13[1];
    v5 = type metadata accessor for UIKitKeyPressResponder();
    v6 = objc_allocWithZone(v5);
    swift_weakInit();
    v7 = &v6[OBJC_IVAR____TtC7SwiftUI22UIKitKeyPressResponder_fallbackResponderProvider];
    *&v6[OBJC_IVAR____TtC7SwiftUI22UIKitKeyPressResponder_fallbackResponderProvider + 8] = 0;
    swift_unknownObjectWeakInit();
    v8 = OBJC_IVAR____TtC7SwiftUI22UIKitKeyPressResponder_tracker;
    *&v6[v8] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_7SwiftUI11DisplayListV7VersionVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    swift_weakAssign();
    *(v7 + 1) = v4;
    swift_unknownObjectWeakAssign();
    v12.receiver = v6;
    v12.super_class = v5;
    v9 = objc_msgSendSuper2(&v12, sel_init);

    swift_unknownObjectRelease();
    v10 = *(v2 + 48);
    *(v2 + 48) = v9;
  }

  else
  {
    v11 = *(v2 + 48);
    *(v2 + 48) = 0;
  }
}

unint64_t type metadata accessor for FallbackResponderProvider()
{
  result = lazy cache variable for type metadata for FallbackResponderProvider;
  if (!lazy cache variable for type metadata for FallbackResponderProvider)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for FallbackResponderProvider);
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_7SwiftUI11DisplayListV7VersionVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<AnyHashable, DisplayList.Version>();
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    v5 = MEMORY[0x1E69E69B8];
    v6 = MEMORY[0x1E697DC98];
    while (1)
    {
      outlined init with copy of (String, TabEntry)(v4, v15, &lazy cache variable for type metadata for (AnyHashable, DisplayList.Version), v5, v6, type metadata accessor for (Badge, Spacer));
      result = specialized __RawDictionaryStorage.find<A>(_:)(v15);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = v3[6] + 40 * result;
      v10 = v15[0];
      v11 = v15[1];
      *(v9 + 32) = v16;
      *v9 = v10;
      *(v9 + 16) = v11;
      *(v3[7] + 8 * result) = v17;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 48;
      if (!--v1)
      {

        return v3;
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

uint64_t ViewGraphDelegate.uiView.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIView();
  (*(a2 + 16))(&v6, v4, v4, a1, a2);
  return v6;
}

unint64_t type metadata accessor for UIView()
{
  result = lazy cache variable for type metadata for UIView;
  if (!lazy cache variable for type metadata for UIView)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIView);
  }

  return result;
}

uint64_t specialized _UIHostingView.baseSceneActivationStateDidChange(_:oldState:newState:)(uint64_t result, char a2)
{
  if ((a2 & 1) == 0 && !result)
  {
    result = specialized _UIHostingView.rootViewDelegate.getter();
    if (result)
    {
      v3 = result;
      v4 = swift_allocObject();
      *(v4 + 16) = v3;
      *(v4 + 24) = v2;
      swift_retain_n();
      v5 = v2;
      static Update.enqueueAction(reason:_:)();
    }
  }

  return result;
}

Swift::Void __swiftcall _UIHostingView.updateEventBridge()()
{
  v1 = specialized _UIHostingView.eventBridge.getter();

  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 3)
  {
    v4 = *(v1 + 32);
    if (v4)
    {
      _ss11AnyHashableVSgMaTm_2(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_18CD69590;
      v6 = v4;
      *(v5 + 32) = Int._bridgeToObjectiveC()();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v6 setAllowedTouchTypes_];
    }
  }
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  type metadata accessor for Any?(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void @objc UIHostingController.willMove(toParent:)(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  UIHostingController.willMove(toParent:)(a3, &selRef_willMoveToParentViewController_, UIHostingController._willMove(toParent:), v6);
}

uint64_t UIHostingController.willMove(toParent:)(uint64_t a1, SEL *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v8 = type metadata accessor for UIHostingController(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v10.receiver = v4;
  v10.super_class = v8;
  objc_msgSendSuper2(&v10, *a2, a1);
  return a3(a1);
}

Swift::Void __swiftcall UIHostingController._willMove(toParent:)(UIViewController_optional *toParent)
{
  if (toParent)
  {
    v4 = xmmword_18CD874C0;
    v5 = 0;
    v6 = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
  }

  else
  {
    v2 = [v1 navigationController];
    v3 = [v1 splitViewController];
    v4 = xmmword_18CD874C0;
    v5 = 0;
    v6 = 0;
    swift_unknownObjectWeakInit();

    swift_unknownObjectWeakInit();
  }

  v7 = 2;
  UIHostingController.overrides.setter(&v4);
}

uint64_t UIHostingController.overrides.setter(uint64_t a1)
{
  v3 = direct field offset for UIHostingController.overrides;
  swift_beginAccess();
  outlined assign with take of HostingControllerOverrides(a1, v1 + v3);
  return swift_endAccess();
}

unint64_t lazy protocol witness table accessor for type EditModeScopeFeature and conformance EditModeScopeFeature()
{
  result = lazy protocol witness table cache variable for type EditModeScopeFeature and conformance EditModeScopeFeature;
  if (!lazy protocol witness table cache variable for type EditModeScopeFeature and conformance EditModeScopeFeature)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EditModeScopeFeature, &type metadata for EditModeScopeFeature, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EditModeScopeFeature and conformance EditModeScopeFeature);
  }

  return result;
}

BOOL one-time initialization function for isEnabled()
{
  result = isAppleInternalBuild()();
  static PPTFeature.isEnabled = result;
  return result;
}

uint64_t SharingActivityPickerBridge.init()()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  _s7SwiftUI33SharingActivityPickerPresentation33_ED8966F32E79CAE8636A59B86DBA4A31LLVSgWOi0_(v6);
  v1 = v6[7];
  *(v0 + 160) = v6[6];
  *(v0 + 176) = v1;
  *(v0 + 192) = v6[8];
  *(v0 + 208) = v7;
  v2 = v6[3];
  *(v0 + 96) = v6[2];
  *(v0 + 112) = v2;
  v3 = v6[5];
  *(v0 + 128) = v6[4];
  *(v0 + 144) = v3;
  v4 = v6[1];
  *(v0 + 64) = v6[0];
  *(v0 + 80) = v4;
  *(v0 + 216) = 0;
  *(v0 + 224) = 0;
  *(v0 + 232) = 0;
  *(v0 + 240) = 0;
  return v0;
}

double _s7SwiftUI33SharingActivityPickerPresentation33_ED8966F32E79CAE8636A59B86DBA4A31LLVSgWOi0_(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

Swift::Void __swiftcall UIHostingController._commonInit()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = specialized UIHostingController.host.getter();
  v5 = v1;
  specialized _UIHostingView.viewController.setter(v1);

  MEMORY[0x18D00ABE0]();
  v6 = specialized UIHostingController.host.getter();
  _UIHostingView.viewGraph.getter(v6);

  lazy protocol witness table accessor for type EditModeScopeFeature and conformance EditModeScopeFeature();
  ViewGraph.append<A>(feature:)();

  v7 = *&v5[direct field offset for UIHostingController.dialogBridge];
  swift_unknownObjectWeakAssign();
  specialized UIHostingController.host.getter();
  v9 = type metadata accessor for _UIHostingView(255, *((v3 & v2) + 0x50), *((v3 & v2) + 0x58), v8);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v9);
  *(v7 + 32) = WitnessTable;
  swift_unknownObjectWeakAssign();
  v11 = specialized UIHostingController.host.getter();
  _UIHostingView.viewGraph.getter(v11);

  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();

  v12 = specialized UIHostingController.host.getter();
  _UIHostingView.viewGraph.getter(v12);

  GraphHost.addPreference<A>(_:)();

  if (specialized UIHostingController.alwaysOnBridge.getter())
  {
    swift_unknownObjectWeakAssign();
  }

  if (specialized UIHostingController.alwaysOnBridge.getter())
  {
    v13 = specialized UIHostingController.host.getter();

    v14 = v13;
    _UIHostingView.viewGraph.getter(v14);

    specialized AlwaysOnBridge.addPreferences(to:)();
  }

  v15 = *&v5[direct field offset for UIHostingController.fileImportExportBridge];
  specialized UIHostingController.host.getter();
  *(v15 + OBJC_IVAR____TtC7SwiftUI22FileImportExportBridge_host + 8) = WitnessTable;
  swift_unknownObjectWeakAssign();
  v16 = specialized UIHostingController.host.getter();
  _UIHostingView.viewGraph.getter(v16);

  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();

  specialized UIHostingController.host.getter();
  ObjectType = swift_getObjectType();
  if (((*(ObjectType + 1392))() & 1) == 0)
  {
    v18 = [objc_allocWithZone(type metadata accessor for UIKitPopoverBridge()) init];
    specialized UIHostingController.host.getter();
    *&v18[OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_host + 8] = WitnessTable;
    swift_unknownObjectWeakAssign();
    v19 = specialized UIHostingController.host.getter();
    _UIHostingView.viewGraph.getter(v19);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();

    v20 = specialized UIHostingController.host.getter();
    v21 = v18;
    _UIHostingView.popoverBridge.setter(v18);
  }

  v22 = specialized UIHostingController.host.getter();
  v23 = _UIHostingView.viewGraph.getter(v22);

  UIHostingController.addScreenEdgesSystemGesturePreferences(to:)(v23);

  v24 = specialized UIHostingController.host.getter();
  v25 = _UIHostingView.viewGraph.getter(v24);

  UIHostingController.addPersistentSystemOverlaysPreferences(to:)(v25);

  if (one-time initialization token for isEnabled != -1)
  {
    swift_once();
  }

  if (static PPTFeature.isEnabled == 1)
  {
    type metadata accessor for PPTTestBridge();
    v26 = swift_allocObject();
    *(v26 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v26 + 32) = 0;
    *(v26 + 40) = 0u;
    *(v26 + 56) = 0u;
    *(v26 + 72) = 0;
    UIHostingController.testBridge.setter(v26);
    v27 = specialized UIHostingController.testBridge.getter();
    if (v27)
    {
      v28 = v27;
      specialized UIHostingController.host.getter();
      *(v28 + 24) = WitnessTable;
      swift_unknownObjectWeakAssign();
    }
  }

  v29 = *&v5[direct field offset for UIHostingController.backgroundBridge];
  swift_unknownObjectWeakAssign();
  specialized UIHostingController.host.getter();
  *(v29 + 64) = WitnessTable;
  swift_unknownObjectWeakAssign();
  v30 = specialized UIHostingController.host.getter();
  v31 = _UIHostingView.viewGraph.getter(v30);

  if (*(v29 + 145) != 5)
  {
    ContainerBackgroundKind.Builtin.addPreference(to:)(v31);
  }

  type metadata accessor for SharingActivityPickerBridge();
  swift_allocObject();
  v32 = SharingActivityPickerBridge.init()();
  specialized UIHostingController.host.getter();
  *(v32 + 24) = WitnessTable;
  swift_unknownObjectWeakAssign();
  v33 = specialized UIHostingController.host.getter();
  _UIHostingView.viewGraph.getter(v33);

  GraphHost.addPreference<A>(_:)();

  v34 = specialized UIHostingController.host.getter();

  _UIHostingView.sharingActivityPickerBridge.setter(v35);

  type metadata accessor for ShareConfigurationBridge();
  v36 = swift_allocObject();
  *(v36 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v36 + 32) = -1;
  specialized UIHostingController.host.getter();
  *(v36 + 24) = WitnessTable;
  swift_unknownObjectWeakAssign();
  v37 = specialized UIHostingController.host.getter();
  _UIHostingView.viewGraph.getter(v37);

  GraphHost.addPreference<A>(_:)();

  v38 = specialized UIHostingController.host.getter();

  _UIHostingView.shareConfigurationBridge.setter(v39);

  v40 = specialized UIHostingController.host.getter();
  _UIHostingView.viewGraph.getter(v40);

  GraphHost.addPreference<A>(_:)();

  static Update.end()();
}

void specialized _UIHostingView.viewController.setter(uint64_t a1)
{
  swift_unknownObjectWeakAssign();

  _UIHostingView.updateBackgroundColor()();
}

uint64_t add #1 <A><A1>(preference:) in UIHostingController.addScreenEdgesSystemGesturePreferences(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  GraphHost.addPreference<A>(_:)();
  swift_beginAccess();
  VersionSeedSetTracker.addPreference<A>(_:)(a1, a4, a5);
  return swift_endAccess();
}

char *VersionSeedSetTracker.addPreference<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
    v6 = result;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
    v6 = result;
  }

  *(v6 + 2) = v9 + 1;
  v10 = &v6[24 * v9];
  *(v10 + 4) = a2;
  *(v10 + 5) = v5;
  *(v10 + 12) = -1;
  *v3 = v6;
  return result;
}

uint64_t add #1 <A><A1>(preference:) in UIHostingController.addPersistentSystemOverlaysPreferences(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  GraphHost.addPreference<A>(_:)();
  swift_beginAccess();
  VersionSeedSetTracker.addPreference<A>(_:)(a1, a4, a5);
  return swift_endAccess();
}

uint64_t outlined destroy of (ToolbarPlacement.Role, ToolbarPlacement.Role)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of (AccessibilityAttachment.Tree, AccessibilityAttachment.Tree)(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for (ToolbarPlacement.Role, ToolbarPlacement.Role)(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI16ToolbarPlacementV4RoleO_AEtWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI16ToolbarPlacementV4RoleO_AEtWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for (ToolbarPlacement.Role, ToolbarPlacement.Role)()
{
  if (!lazy cache variable for type metadata for (ToolbarPlacement.Role, ToolbarPlacement.Role))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ToolbarPlacement.Role, ToolbarPlacement.Role));
    }
  }
}

void @objc UIHostingController.loadView()(void *a1)
{
  v1 = a1;
  UIHostingController.loadView()();
}

void type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ViewGraphGeometryObservers<SizeThatFitsMeasurer>)
  {
    lazy protocol witness table accessor for type SizeThatFitsMeasurer and conformance SizeThatFitsMeasurer();
    v1 = type metadata accessor for ViewGraphGeometryObservers();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ViewGraphGeometryObservers<SizeThatFitsMeasurer>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SizeThatFitsMeasurer and conformance SizeThatFitsMeasurer()
{
  result = lazy protocol witness table cache variable for type SizeThatFitsMeasurer and conformance SizeThatFitsMeasurer;
  if (!lazy protocol witness table cache variable for type SizeThatFitsMeasurer and conformance SizeThatFitsMeasurer)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697FA68], MEMORY[0x1E697FA70], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SizeThatFitsMeasurer and conformance SizeThatFitsMeasurer);
  }

  return result;
}

void type metadata accessor for _SetStorage<ToolbarPlacement.Role>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = type metadata accessor for _SetStorage();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void _ss11_SetStorageCy7SwiftUI16ToolbarPlacementV4RoleOGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = type metadata accessor for _SetStorage();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ToolbarPlacement.Role and conformance ToolbarPlacement.Role()
{
  result = lazy protocol witness table cache variable for type ToolbarPlacement.Role and conformance ToolbarPlacement.Role;
  if (!lazy protocol witness table cache variable for type ToolbarPlacement.Role and conformance ToolbarPlacement.Role)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarPlacement.Role, &type metadata for ToolbarPlacement.Role, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarPlacement.Role and conformance ToolbarPlacement.Role);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolbarPlacement.Role and conformance ToolbarPlacement.Role;
  if (!lazy protocol witness table cache variable for type ToolbarPlacement.Role and conformance ToolbarPlacement.Role)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarPlacement.Role, &type metadata for ToolbarPlacement.Role, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarPlacement.Role and conformance ToolbarPlacement.Role);
  }

  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(__int128 *result, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        specialized _NativeSet.copy()(&lazy cache variable for type metadata for _SetStorage<ToolbarPlacement.Role>, lazy protocol witness table accessor for type ToolbarPlacement.Role and conformance ToolbarPlacement.Role, &type metadata for ToolbarPlacement.Role, outlined init with copy of ToolbarPlacement.Role);
        goto LABEL_38;
      }

      specialized _NativeSet.copyAndResize(capacity:)(v7 + 1);
    }

    v9 = *v3;
    Hasher.init(_seed:)();
    ToolbarPlacement.Role.hash(into:)(v24);
    v10 = Hasher._finalize()();
    v11 = -1 << *(v9 + 32);
    a2 = v10 & ~v11;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      do
      {
        outlined init with copy of ToolbarPlacement.Role(*(v9 + 48) + 40 * a2, v29);
        outlined init with copy of ToolbarPlacement.Role(v29, v24);
        outlined init with copy of ToolbarPlacement.Role(result, &v26);
        if (v25 <= 2)
        {
          switch(v25)
          {
            case 0:
              outlined destroy of ToolbarPlacement.Role(v29);
              if (!*(&v27 + 1))
              {
                goto LABEL_41;
              }

              goto LABEL_33;
            case 1:
              outlined destroy of ToolbarPlacement.Role(v29);
              if (*(&v27 + 1) == 1)
              {
                goto LABEL_41;
              }

              goto LABEL_33;
            case 2:
              outlined destroy of ToolbarPlacement.Role(v29);
              if (*(&v27 + 1) == 2)
              {
                goto LABEL_41;
              }

              goto LABEL_33;
          }
        }

        else
        {
          if (v25 <= 4)
          {
            if (v25 == 3)
            {
              outlined destroy of ToolbarPlacement.Role(v29);
              if (*(&v27 + 1) == 3)
              {
                goto LABEL_41;
              }
            }

            else
            {
              outlined destroy of ToolbarPlacement.Role(v29);
              if (*(&v27 + 1) == 4)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_33;
          }

          if (v25 == 5)
          {
            outlined destroy of ToolbarPlacement.Role(v29);
            if (*(&v27 + 1) == 5)
            {
              goto LABEL_41;
            }

            goto LABEL_33;
          }

          if (v25 == 6)
          {
            outlined destroy of ToolbarPlacement.Role(v29);
            if (*(&v27 + 1) == 6)
            {
              goto LABEL_41;
            }

            goto LABEL_33;
          }
        }

        outlined init with copy of ToolbarPlacement.Role(v24, v23);
        if (*(&v27 + 1) < 7uLL)
        {
          outlined destroy of ToolbarPlacement.Role(v29);
          outlined destroy of AnyHashable(v23);
LABEL_33:
          outlined destroy of (ToolbarPlacement.Role, ToolbarPlacement.Role)(v24, type metadata accessor for (ToolbarPlacement.Role, ToolbarPlacement.Role));
          goto LABEL_34;
        }

        v21[0] = v26;
        v21[1] = v27;
        v22 = v28;
        v13 = MEMORY[0x18D00E7E0](v23, v21);
        outlined destroy of AnyHashable(v21);
        outlined destroy of ToolbarPlacement.Role(v29);
        outlined destroy of AnyHashable(v23);
        if (v13)
        {
          goto LABEL_41;
        }

        outlined destroy of ToolbarPlacement.Role(v24);
LABEL_34:
        a2 = (a2 + 1) & v12;
      }

      while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_38:
  v14 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v15 = *(v14 + 48) + 40 * a2;
  v16 = *result;
  v17 = result[1];
  *(v15 + 32) = *(result + 4);
  *v15 = v16;
  *(v15 + 16) = v17;
  v18 = *(v14 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_41:
    outlined destroy of ToolbarPlacement.Role(v24);
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v20;
  }
}

void type metadata accessor for WeakBox<UIWindowScene>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for WeakBox<UIWindowScene>)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIWindowScene, 0x1E69DD2F0);
    v1 = type metadata accessor for WeakBox();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for WeakBox<UIWindowScene>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<ToolbarPlacement.Role>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7SwiftUI16ToolbarPlacementV4RoleO_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    _ss11_SetStorageCy7SwiftUI16ToolbarPlacementV4RoleOGMaTm_0(0, &lazy cache variable for type metadata for _SetStorage<ToolbarPlacement.Role>, lazy protocol witness table accessor for type ToolbarPlacement.Role and conformance ToolbarPlacement.Role, &type metadata for ToolbarPlacement.Role);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v20 = a1 + 32;
    while (1)
    {
      outlined init with copy of ToolbarPlacement.Role(v20 + 40 * v4, v33);
      Hasher.init(_seed:)();
      outlined init with copy of ToolbarPlacement.Role(v33, &v30);
      if (*(&v31 + 1) <= 2)
      {
        if (*(&v31 + 1))
        {
          if (*(&v31 + 1) == 1)
          {
            v6 = 1;
          }

          else
          {
            if (*(&v31 + 1) != 2)
            {
              goto LABEL_17;
            }

            v6 = 2;
          }
        }

        else
        {
          v6 = 0;
        }
      }

      else if (*(&v31 + 1) > 4)
      {
        if (*(&v31 + 1) == 5)
        {
          v6 = 5;
        }

        else
        {
          if (*(&v31 + 1) != 6)
          {
LABEL_17:
            v23[0] = v30;
            v23[1] = v31;
            v24 = v32;
            MEMORY[0x18D00F6F0](6);
            AnyHashable.hash(into:)();
            outlined destroy of AnyHashable(v23);
            goto LABEL_22;
          }

          v6 = 7;
        }
      }

      else if (*(&v31 + 1) == 3)
      {
        v6 = 3;
      }

      else
      {
        v6 = 4;
      }

      MEMORY[0x18D00F6F0](v6);
LABEL_22:
      result = Hasher._finalize()();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        do
        {
          outlined init with copy of ToolbarPlacement.Role(*(v3 + 48) + 40 * v9, &v30);
          outlined init with copy of ToolbarPlacement.Role(&v30, v25);
          outlined init with copy of ToolbarPlacement.Role(v33, &v27);
          if (v26 <= 2)
          {
            switch(v26)
            {
              case 0:
                outlined destroy of ToolbarPlacement.Role(&v30);
                if (!*(&v28 + 1))
                {
                  goto LABEL_3;
                }

                goto LABEL_46;
              case 1:
                outlined destroy of ToolbarPlacement.Role(&v30);
                if (*(&v28 + 1) == 1)
                {
                  goto LABEL_3;
                }

                goto LABEL_46;
              case 2:
                outlined destroy of ToolbarPlacement.Role(&v30);
                if (*(&v28 + 1) == 2)
                {
                  goto LABEL_3;
                }

                goto LABEL_46;
            }
          }

          else
          {
            if (v26 <= 4)
            {
              if (v26 == 3)
              {
                outlined destroy of ToolbarPlacement.Role(&v30);
                if (*(&v28 + 1) == 3)
                {
                  goto LABEL_3;
                }
              }

              else
              {
                outlined destroy of ToolbarPlacement.Role(&v30);
                if (*(&v28 + 1) == 4)
                {
                  goto LABEL_3;
                }
              }

              goto LABEL_46;
            }

            if (v26 == 5)
            {
              outlined destroy of ToolbarPlacement.Role(&v30);
              if (*(&v28 + 1) == 5)
              {
                goto LABEL_3;
              }

              goto LABEL_46;
            }

            if (v26 == 6)
            {
              outlined destroy of ToolbarPlacement.Role(&v30);
              if (*(&v28 + 1) == 6)
              {
                goto LABEL_3;
              }

              goto LABEL_46;
            }
          }

          outlined init with copy of ToolbarPlacement.Role(v25, v23);
          if (*(&v28 + 1) < 7uLL)
          {
            outlined destroy of ToolbarPlacement.Role(&v30);
            outlined destroy of AnyHashable(v23);
LABEL_46:
            result = outlined destroy of KeyPress.Handler.Subject(v25, type metadata accessor for (ToolbarPlacement.Role, ToolbarPlacement.Role));
            goto LABEL_47;
          }

          v21[0] = v27;
          v21[1] = v28;
          v22 = v29;
          v13 = MEMORY[0x18D00E7E0](v23, v21);
          outlined destroy of AnyHashable(v21);
          outlined destroy of ToolbarPlacement.Role(&v30);
          outlined destroy of AnyHashable(v23);
          if (v13)
          {
LABEL_3:
            outlined destroy of ToolbarPlacement.Role(v25);
            outlined destroy of ToolbarPlacement.Role(v33);
            goto LABEL_4;
          }

          result = outlined destroy of ToolbarPlacement.Role(v25);
LABEL_47:
          v9 = (v9 + 1) & v8;
          v10 = v9 >> 6;
          v11 = *(v5 + 8 * (v9 >> 6));
          v12 = 1 << v9;
        }

        while ((v11 & (1 << v9)) != 0);
      }

      *(v5 + 8 * v10) = v11 | v12;
      v14 = *(v3 + 48) + 40 * v9;
      v15 = v33[0];
      v16 = v33[1];
      *(v14 + 32) = v34;
      *v14 = v15;
      *(v14 + 16) = v16;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v19;
LABEL_4:
      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

__n128 initializeWithCopy for _PresentationTransitionOutputs.Content(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2 < 0xFFFFFFFF)
  {
    result = *a2;
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    *(a1 + 32) = *(a2 + 32);
  }

  else
  {
    v3 = *(a2 + 32);
    *(a1 + 24) = v2;
    *(a1 + 32) = v3;
    (**(v2 - 8))();
  }

  return result;
}

void *destroy for _PresentationTransitionOutputs.Content(void *a1)
{
  if (a1[3] >= 0xFFFFFFFFuLL)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  Hasher.init(_seed:)();
  ToolbarPlacement.Role.hash(into:)(v18);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_31:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    outlined init with copy of ToolbarPlacement.Role(a2, v18);
    v23[0] = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v23[0];
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }

  v10 = ~v8;
  while (1)
  {
    outlined init with copy of ToolbarPlacement.Role(*(v6 + 48) + 40 * v9, v23);
    outlined init with copy of ToolbarPlacement.Role(v23, v18);
    outlined init with copy of ToolbarPlacement.Role(a2, &v20);
    if (v19 <= 2)
    {
      switch(v19)
      {
        case 0:
          outlined destroy of ToolbarPlacement.Role(v23);
          if (!*(&v21 + 1))
          {
            goto LABEL_32;
          }

          goto LABEL_26;
        case 1:
          outlined destroy of ToolbarPlacement.Role(v23);
          if (*(&v21 + 1) == 1)
          {
            goto LABEL_32;
          }

          goto LABEL_26;
        case 2:
          outlined destroy of ToolbarPlacement.Role(v23);
          if (*(&v21 + 1) == 2)
          {
            goto LABEL_32;
          }

          goto LABEL_26;
      }
    }

    else
    {
      if (v19 <= 4)
      {
        if (v19 == 3)
        {
          outlined destroy of ToolbarPlacement.Role(v23);
          if (*(&v21 + 1) == 3)
          {
            goto LABEL_32;
          }
        }

        else
        {
          outlined destroy of ToolbarPlacement.Role(v23);
          if (*(&v21 + 1) == 4)
          {
            goto LABEL_32;
          }
        }

        goto LABEL_26;
      }

      if (v19 == 5)
      {
        outlined destroy of ToolbarPlacement.Role(v23);
        if (*(&v21 + 1) == 5)
        {
          goto LABEL_32;
        }

        goto LABEL_26;
      }

      if (v19 == 6)
      {
        outlined destroy of ToolbarPlacement.Role(v23);
        if (*(&v21 + 1) == 6)
        {
          goto LABEL_32;
        }

        goto LABEL_26;
      }
    }

    outlined init with copy of ToolbarPlacement.Role(v18, v17);
    if (*(&v21 + 1) >= 7uLL)
    {
      break;
    }

    outlined destroy of ToolbarPlacement.Role(v23);
    outlined destroy of AnyHashable(v17);
LABEL_26:
    outlined destroy of (ToolbarPlacement.Role, ToolbarPlacement.Role)(v18, type metadata accessor for (ToolbarPlacement.Role, ToolbarPlacement.Role));
LABEL_27:
    v9 = (v9 + 1) & v10;
    if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v15[0] = v20;
  v15[1] = v21;
  v16 = v22;
  v11 = MEMORY[0x18D00E7E0](v17, v15);
  outlined destroy of AnyHashable(v15);
  outlined destroy of ToolbarPlacement.Role(v23);
  outlined destroy of AnyHashable(v17);
  if ((v11 & 1) == 0)
  {
    outlined destroy of ToolbarPlacement.Role(v18);
    goto LABEL_27;
  }

LABEL_32:
  outlined destroy of ToolbarPlacement.Role(v18);
  outlined destroy of ToolbarPlacement.Role(a2);
  outlined init with copy of ToolbarPlacement.Role(*(v6 + 48) + 40 * v9, a1);
  return 0;
}

{
  v3 = v2;
  v6 = *v2;
  Hasher.init(_seed:)();
  Toolbar.BarLocation.hash(into:)(v16);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      outlined init with copy of Toolbar.BarLocation(*(v6 + 48) + 40 * v9, v16);
      v11 = specialized static Toolbar.BarLocation.== infix(_:_:)(v16, a2);
      outlined destroy of Toolbar.BarLocation(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    outlined destroy of Toolbar.BarLocation(a2);
    outlined init with copy of Toolbar.BarLocation(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    outlined init with copy of Toolbar.BarLocation(a2, v16);
    v15 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

{
  v5 = *v2;
  Hasher.init(_seed:)();
  v6 = *(a2 + 8);
  MEMORY[0x18D00F6F0](v6);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      outlined init with copy of HashableWeakBox<Swift.AnyObject>(*(v5 + 48) + 16 * v9, v15);
      v11 = v16;
      outlined destroy of HashableWeakBox<Swift.AnyObject>(v15);
      if (v11 == v6)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    outlined destroy of HashableWeakBox<Swift.AnyObject>(a2);
    outlined init with copy of HashableWeakBox<Swift.AnyObject>(*(v5 + 48) + 16 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    outlined init with copy of HashableWeakBox<Swift.AnyObject>(a2, v15);
    v14 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v15, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    outlined init with take of HashableWeakBox<Swift.AnyObject>(a2, a1);
    return 1;
  }
}

{
  v20 = a1;
  v4 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v2;
  v8 = *v2;
  Hasher.init(_seed:)();
  type metadata accessor for CommandGroupPlacement(0);
  v21 = a2;
  UUID.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v5 + 72);
    while (1)
    {
      outlined init with copy of HashableCommandGroupPlacementWrapper(*(v8 + 48) + v13 * v11, v7);
      v14 = static UUID.== infix(_:_:)();
      outlined destroy of (ToolbarPlacement.Role, ToolbarPlacement.Role)(v7, type metadata accessor for HashableCommandGroupPlacementWrapper);
      if (v14)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    outlined destroy of (ToolbarPlacement.Role, ToolbarPlacement.Role)(v21, type metadata accessor for HashableCommandGroupPlacementWrapper);
    outlined init with copy of HashableCommandGroupPlacementWrapper(*(v8 + 48) + v13 * v11, v20);
    return 0;
  }

  else
  {
LABEL_5:
    v15 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v21;
    outlined init with copy of HashableCommandGroupPlacementWrapper(v21, v7);
    v22 = *v15;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v7, v11, isUniquelyReferenced_nonNull_native);
    *v15 = v22;
    outlined init with take of HashableCommandGroupPlacementWrapper(v17, v20);
    return 1;
  }
}

uint64_t ToolbarPlacement.Role.hash(into:)(uint64_t a1)
{
  outlined init with copy of ToolbarPlacement.Role(v1, &v6);
  if (*(&v7 + 1) > 2)
  {
    if (*(&v7 + 1) <= 4)
    {
      if (*(&v7 + 1) == 3)
      {
        v2 = 3;
      }

      else
      {
        v2 = 4;
      }

      return MEMORY[0x18D00F6F0](v2);
    }

    if (*(&v7 + 1) == 5)
    {
      v2 = 5;
      return MEMORY[0x18D00F6F0](v2);
    }

    if (*(&v7 + 1) == 6)
    {
      v2 = 7;
      return MEMORY[0x18D00F6F0](v2);
    }

LABEL_13:
    v4[0] = v6;
    v4[1] = v7;
    v5 = v8;
    MEMORY[0x18D00F6F0](6);
    AnyHashable.hash(into:)();
    return outlined destroy of AnyHashable(v4);
  }

  if (!*(&v7 + 1))
  {
    v2 = 0;
    return MEMORY[0x18D00F6F0](v2);
  }

  if (*(&v7 + 1) == 1)
  {
    v2 = 1;
    return MEMORY[0x18D00F6F0](v2);
  }

  if (*(&v7 + 1) != 2)
  {
    goto LABEL_13;
  }

  v2 = 2;
  return MEMORY[0x18D00F6F0](v2);
}

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for _SetStorage<ToolbarPlacement.Role>, lazy protocol witness table accessor for type ToolbarPlacement.Role and conformance ToolbarPlacement.Role, &type metadata for ToolbarPlacement.Role);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (1)
    {
      if (!v10)
      {
        v18 = v6;
        while (1)
        {
          v6 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            __break(1u);
            goto LABEL_47;
          }

          if (v6 >= v11)
          {
            break;
          }

          v19 = v7[v6];
          ++v18;
          if (v19)
          {
            v17 = __clz(__rbit64(v19));
            v10 = (v19 - 1) & v19;
            goto LABEL_15;
          }
        }

        v31 = 1 << *(v3 + 32);
        if (v31 >= 64)
        {
          bzero((v3 + 56), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v7 = -1 << v31;
        }

        v2 = v1;
        *(v3 + 16) = 0;
        break;
      }

      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v20 = *(v3 + 48) + 40 * (v17 | (v6 << 6));
      v21 = *(v20 + 32);
      v22 = *(v20 + 16);
      v37 = *v20;
      v38 = v22;
      v39 = v21;
      Hasher.init(_seed:)();
      outlined init with copy of ToolbarPlacement.Role(&v37, &v34);
      if (*(&v35 + 1) <= 2)
      {
        if (*(&v35 + 1))
        {
          if (*(&v35 + 1) == 1)
          {
            v23 = 1;
          }

          else
          {
            if (*(&v35 + 1) != 2)
            {
              goto LABEL_27;
            }

            v23 = 2;
          }
        }

        else
        {
          v23 = 0;
        }
      }

      else if (*(&v35 + 1) > 4)
      {
        if (*(&v35 + 1) == 5)
        {
          v23 = 5;
        }

        else
        {
          if (*(&v35 + 1) != 6)
          {
LABEL_27:
            v32[0] = v34;
            v32[1] = v35;
            v33 = v36;
            MEMORY[0x18D00F6F0](6);
            AnyHashable.hash(into:)();
            outlined destroy of AnyHashable(v32);
            goto LABEL_32;
          }

          v23 = 7;
        }
      }

      else if (*(&v35 + 1) == 3)
      {
        v23 = 3;
      }

      else
      {
        v23 = 4;
      }

      MEMORY[0x18D00F6F0](v23);
LABEL_32:
      result = Hasher._finalize()();
      v24 = -1 << *(v5 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_47:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      v15 = v37;
      v16 = v38;
      *(v14 + 32) = v39;
      *v14 = v15;
      *(v14 + 16) = v16;
      ++*(v5 + 16);
    }
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for _SetStorage<Toolbar.BarLocation>, lazy protocol witness table accessor for type Toolbar.BarLocation and conformance Toolbar.BarLocation, &type metadata for Toolbar.BarLocation);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v16 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v19 = *(v3 + 48) + 40 * (v16 | (v6 << 6));
      v20 = *(v19 + 16);
      v30 = *v19;
      v31 = v20;
      v32 = *(v19 + 32);
      Hasher.init(_seed:)();
      Toolbar.BarLocation.hash(into:)(v29);
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      v15 = v31;
      *v14 = v30;
      *(v14 + 16) = v15;
      *(v14 + 32) = v32;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v18 = v7[v6];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v10 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t outlined init with copy of _Benchmark(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t initializeBufferWithCopyOfBuffer for UIHostingConfiguration(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(*(*(a3 + 24) - 8) + 80);
  v7 = *(*(type metadata accessor for UICellConfigurationState() - 8) + 80);
  v8 = *(v5 + 80);
  *a1 = *a2;
  v9 = ((v7 | v6) | v8) & 0xF8 | 7u;
  return  + ((v9 + 16) & ~v9);
}

uint64_t outlined assign with take of WeakBox<UIButton>?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

double UIHostingConfiguration.margins(_:_:)@<D0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, v4, a2);
  OptionalEdgeInsets.init(_:edges:)();
  OptionalEdgeInsets.adding(_:)();
  v7 = a3 + *(a2 + 56);
  *(v7 + 8) = v9;
  *(v7 + 24) = v10;
  *(v7 + 40) = *v11;
  result = *&v11[9];
  *(v7 + 49) = *&v11[9];
  return result;
}

uint64_t type metadata completion function for UIHostingConfiguration(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for UIHostingConfigurationStorage(319);
      if (v4 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

void type metadata completion function for UIHostingConfigurationStorage(uint64_t a1)
{
  type metadata accessor for UICellConfigurationState?(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t UIHostingConfiguration<>.init(content:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v13[0] = a2;
  v13[1] = MEMORY[0x1E6981E70];
  v13[2] = a3;
  v13[3] = MEMORY[0x1E6981E60];
  v6 = type metadata accessor for UIHostingConfiguration(0, v13);
  v7 = a4 + *(v6 + 56);
  *v7 = 1;
  MEMORY[0x18D007050]();
  *(v7 + 72) = 0;
  *(v7 + 80) = 1;
  *(v7 + 88) = 0;
  *(v7 + 96) = 1;
  *(v7 + 97) = 1;
  v8 = type metadata accessor for UIHostingConfigurationStorage(0);
  v9 = v8[9];
  v10 = type metadata accessor for UICellConfigurationState();
  (*(*(v10 - 8) + 56))(v7 + v9, 1, 1, v10);
  *(v7 + v8[10]) = 0;
  *(v7 + v8[11] + 8) = 0;
  v11 = swift_unknownObjectWeakInit();
  result = a1(v11);
  *(a4 + *(v6 + 56)) = 0;
  return result;
}

uint64_t outlined destroy of UIHostingConfigurationStorage(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void destroy for UIHostingConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(*(a2 + 24) - 8);
  v6 = v5 + 8;
  v7 = (*(v4 + 56) + a1 + *(v5 + 80)) & ~*(v5 + 80);
  (*(v5 + 8))(v7);
  v8 = *(v6 + 56);
  v9 = type metadata accessor for UICellConfigurationState();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + ((v7 + v8 + (*(v10 + 80) | 7)) & ~*(v10 + 80) & 0xFFFFFFFFFFFFFFF8) + 99) & ~*(v10 + 80);
  if (!(*(v10 + 48))(v11, 1, v9))
  {
    (*(v10 + 8))(v11, v9);
  }

  JUMPOUT(0x18D011290);
}

uint64_t initializeWithCopy for UIHostingConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  v8 = v7 + 16;
  v9 = *(v7 + 80);
  v10 = *(v6 + 48) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 16))(v11, v12);
  v13 = *(v8 + 48);
  v14 = type metadata accessor for UICellConfigurationState();
  v15 = *(v14 - 8);
  v16 = *(v15 + 80);
  v17 = (v16 | 7) + v13;
  v18 = (v17 + v11) & ~(v16 | 7);
  v19 = (v17 + v12) & ~(v16 | 7);
  *v18 = *v19;
  v20 = *(v19 + 0x31);
  v21 = *(v19 + 0x28);
  v22 = *(v19 + 0x18);
  *(v18 + 8) = *(v19 + 8);
  *(v18 + 24) = v22;
  *(v18 + 40) = v21;
  *(v18 + 49) = v20;
  v23 = *(v19 + 0x48);
  *(v18 + 81) = *(v19 + 0x51);
  *(v18 + 72) = v23;
  *(v18 + 97) = *(v19 + 0x61);
  *(v18 + 98) = *(v19 + 0x62);
  v24 = ((v16 + 99 + v18) & ~v16);
  v25 = ((v16 + 99 + v19) & ~v16);
  if ((*(v15 + 48))(v25, 1, v14))
  {
    v26 = *(v15 + 84);
    v27 = *(v15 + 64);
    if (v26)
    {
      v28 = v27;
    }

    else
    {
      v28 = v27 + 1;
    }

    memcpy(v24, v25, v28);
  }

  else
  {
    (*(v15 + 16))(v24, v25, v14);
    v30 = *(v15 + 56);
    v29 = v15 + 56;
    v30(v24, 0, 1, v14);
    v26 = *(v29 + 28);
    v27 = *(v29 + 8);
  }

  if (v26)
  {
    v31 = v27;
  }

  else
  {
    v31 = v27 + 1;
  }

  v32 = &v24[v31];
  v33 = &v25[v31];
  *v32 = *v33;
  v34 = v32 & 0xFFFFFFFFFFFFFFF8;
  v35 = v33 & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectWeakCopyInit();
  *(v34 + 16) = *(v35 + 16);
  return a1;
}

void type metadata accessor for UICellConfigurationState?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _s5UIKit24UICellConfigurationStateVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata completion function for HostingContentViewRootModifier(uint64_t a1)
{
  type metadata accessor for UICellConfigurationState?(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void *UIHostingConfiguration.makeContentView()(uint64_t a1)
{
  v2 = *(a1 + 24);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(v1 + *(a1 + 56) + 97) == 1)
  {
    v10 = *(a1 + 16);
    v11 = v2;
    v12 = v4;
    v13 = v3;
    v5 = type metadata accessor for UIHostingContentView(0, &v10);
    v6 = specialized UIHostingContentView.__allocating_init(configuration:)(v1);
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = v2;
    v12 = v4;
    v13 = v3;
    v5 = type metadata accessor for UIHostingContentViewWithoutInteractions(0, &v10);
    v7 = objc_allocWithZone(v5);
    v6 = specialized UIHostingContentView.init(configuration:)(v1);
  }

  v8 = v6;
  swift_getWitnessTable(protocol conformance descriptor for UIHostingContentView<A, B>, v5);
  return v8;
}

uint64_t type metadata completion function for UIHostingContentView(uint64_t a1)
{
  v5 = MEMORY[0x1E69E5D08] + 64;
  v1 = *(a1 + 1808);
  v4[0] = *(a1 + 1792);
  v4[1] = v1;
  result = type metadata accessor for UIHostingConfiguration(319, v4);
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    v7 = &unk_18CDAEAD8;
    v8 = &unk_18CDAEAF0;
    v9 = &unk_18CDAEAD8;
    v10 = &unk_18CDAEAD8;
    v11 = &unk_18CDAEB08;
    v12 = MEMORY[0x1E69E5D00] + 64;
    v13 = &unk_18CDAEB20;
    v14 = &unk_18CDAEB38;
    v15 = &unk_18CDAEB50;
    v16 = &unk_18CDAEAD8;
    return swift_initClassMetadata2();
  }

  return result;
}

void *specialized UIHostingContentView.__allocating_init(configuration:)(uint64_t a1)
{
  v3 = *(v1 + 1808);
  v6[0] = *(v1 + 1792);
  v6[1] = v3;
  v4 = objc_allocWithZone(type metadata accessor for UIHostingContentView(0, v6));
  return specialized UIHostingContentView.init(configuration:)(a1);
}

void *specialized UIHostingContentView.init(configuration:)(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *v1;
  v6 = *MEMORY[0x1E69E7D40];
  *&v57 = *MEMORY[0x1E69E7D40] & *v1;
  v58 = type metadata accessor for HostingContentViewRootModifier(0);
  MEMORY[0x1EEE9AC00](v58);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *((v6 & v5) + 0x700);
  v9 = v56;
  v10 = type metadata accessor for ModifiedContent();
  v60 = *(v10 - 8);
  v61 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v55 - v11;
  *&v1[*((v6 & v5) + 0x720)] = 1;
  v12 = &v1[*((*v4 & *v1) + 0x730)];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v1[*((*v4 & *v1) + 0x738)] = 0;
  v13 = &v1[*((*v4 & *v1) + 0x740)];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v1[*((*v4 & *v1) + 0x748)];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v1[*((*v4 & *v1) + 0x750)];
  *v15 = 0;
  v15[8] = 1;
  *&v1[*((*v4 & *v1) + 0x758)] = -1;
  v16 = &v1[*((*v4 & *v1) + 0x760)];
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  *v16 = 0;
  *(v16 + 12) = 256;
  v17 = &v1[*((*v4 & *v1) + 0x768)];
  *v17 = 0;
  *(v17 + 1) = 0;
  v17[16] = 1;
  v1[*((*v4 & *v1) + 0x770)] = 0;
  v18 = &v1[*((*v4 & *v1) + 0x778)];
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition(0);
  *v18 = 0;
  *(v18 + 1) = 0;
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformItemsDefinition.setDefinition(_:system:)();
  v19 = *((*v4 & *v1) + 0x728);
  v20 = *((v6 & v5) + 0x708);
  *&v64 = v9;
  *(&v64 + 1) = v20;
  v57 = *(v57 + 1808);
  v65 = v57;
  v21 = type metadata accessor for UIHostingConfiguration(0, &v64);
  (*(*(v21 - 8) + 16))(&v2[v19], a1, v21);
  static EdgeInsets.zero.getter();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = a1;
  v31 = a1 + *(v21 + 56);
  *&v66[9] = *(v31 + 49);
  v32 = *(v31 + 24);
  v64 = *(v31 + 8);
  v65 = v32;
  *v66 = *(v31 + 40);
  v33 = a1 + *(v21 + 56);
  v34 = *(v33 + 72);
  LOBYTE(v6) = *(v33 + 80);
  v35 = *(v33 + 88);
  LOBYTE(v33) = *(v33 + 96);
  v62[0] = v6;
  LOBYTE(v63[0]) = v33;
  LOBYTE(v4) = v33;
  v36 = v58;
  v37 = *(v58 + 32);
  v38 = type metadata accessor for UICellConfigurationState();
  (*(*(v38 - 8) + 56))(&v8[v37], 1, 1, v38);
  *v8 = v23;
  *(v8 + 1) = v25;
  *(v8 + 2) = v27;
  *(v8 + 3) = v29;
  *(v8 + 5) = 0;
  *(v8 + 6) = 0;
  *(v8 + 4) = 0;
  v8[56] = 0;
  *(v8 + 57) = v63[0];
  *(v8 + 15) = *(v63 + 3);
  *(v8 + 8) = 0x4024000000000000;
  *(v8 + 9) = 1;
  v8[80] = 0;
  v39 = v64;
  v40 = v65;
  v41 = *v66;
  *(v8 + 129) = *&v66[9];
  *(v8 + 120) = v41;
  *(v8 + 104) = v40;
  *(v8 + 88) = v39;
  *(v8 + 19) = v34;
  v8[160] = v6;
  *(v8 + 21) = v35;
  v8[176] = v4 & 1;
  v42 = v57;
  *(v8 + 23) = 1;
  v43 = v59;
  MEMORY[0x18D00A570](v8, v56, v36, v42);
  outlined destroy of UIHostingConfigurationStorage(v8, type metadata accessor for HostingContentViewRootModifier);
  v45 = specialized _UIHostingView.init(rootView:)(v43, v44);
  (*(v60 + 8))(v43, v61);
  v46 = v30 + *(v21 + 56);
  v47 = type metadata accessor for UIHostingConfigurationStorage(0);
  if (*(v46 + *(v47 + 40)) == 1)
  {
    v48 = _UIHostingView.viewGraph.getter(v47);
    swift_beginAccess();
    v49 = *(v48 + 361);
    *(v48 + 361) = v49 | 2;
    if ((v49 | 2) != v49)
    {
      GraphHost.uninstantiate(immediately:)(0);
    }
  }

  v50 = UIHostingContentView.updateHostedViews()();
  MEMORY[0x1EEE9AC00](v50);
  *(&v55 - 2) = v45;
  static Update.ensure<A>(_:)();
  specialized _UIHostingView.delegate.setter(v45, &protocol witness table for UIHostingContentView<A, B>);
  [v45 setPreservesSuperviewLayoutMargins_];
  _s5UIKit24UICellConfigurationStateVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UITraitDefinition.Type>, type metadata accessor for UITraitDefinition.Type, MEMORY[0x1E69E6F90]);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_18CD63400;
  v52 = type metadata accessor for UITraitUserInterfaceStyle();
  v53 = MEMORY[0x1E69DC0F8];
  *(v51 + 32) = v52;
  *(v51 + 40) = v53;
  MEMORY[0x18D00E060](v51, sel_setNeedsLayout);
  swift_unknownObjectRelease();

  return v45;
}

uint64_t initializeWithCopy for HostingContentViewRootModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  v7 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v7;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v9 = a2 + 72;
  v8 = *(a2 + 72);

  if (v8 == 1)
  {
    *(a1 + 72) = *v9;
    *(a1 + 80) = *(v9 + 8);
  }

  else
  {
    *(a1 + 72) = v8;
    *(a1 + 80) = *(a2 + 80);
  }

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 129) = *(a2 + 129);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 161) = *(a2 + 161);
  *(a1 + 184) = *(a2 + 184);
  v10 = *(a3 + 32);
  v11 = type metadata accessor for UICellConfigurationState();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a2 + v10, 1, v11))
  {
    type metadata accessor for UICellConfigurationState?(0);
    memcpy((a1 + v10), (a2 + v10), *(*(v13 - 8) + 64));
  }

  else
  {
    (*(v12 + 16))(a1 + v10, a2 + v10, v11);
    (*(v12 + 56))(a1 + v10, 0, 1, v11);
  }

  return a1;
}

uint64_t destroy for HostingContentViewRootModifier(char *a1, uint64_t a2)
{

  if (*(a1 + 9) != 1)
  {
  }

  v4 = *(a2 + 32);
  v5 = type metadata accessor for UICellConfigurationState();
  v8 = *(v5 - 8);
  result = (*(v8 + 48))(&a1[v4], 1, v5);
  if (!result)
  {
    v7 = *(v8 + 8);

    return v7(&a1[v4], v5);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t ColorScheme.init(_:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 2 * (result != 1);
  if (result == 2)
  {
    v2 = 1;
  }

  *a2 = v2;
  return result;
}

uint64_t Color.init(uiColor:)(uint64_t a1)
{
  type metadata accessor for UIKitPlatformColorDefinition(0);

  return Color.init(_platformColor:definition:)();
}

uint64_t UIHostingConfiguration.updated(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  type metadata accessor for UICellConfigurationState?(0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(*(a2 - 8) + 16))(a3, v4, a2, v9);
  outlined init with copy of _Benchmark(a1, v18);
  type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for UIConfigurationState, MEMORY[0x1E69DC058]);
  v12 = type metadata accessor for UICellConfigurationState();
  v13 = swift_dynamicCast();
  (*(*(v12 - 8) + 56))(v11, v13 ^ 1u, 1, v12);
  v14 = a3 + *(a2 + 56);
  v15 = type metadata accessor for UIHostingConfigurationStorage(0);
  return outlined assign with take of WeakBox<UIButton>?(v11, v14 + *(v15 + 36), type metadata accessor for UICellConfigurationState?);
}

uint64_t type metadata accessor for CVarArg(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t initializeWithTake for UIHostingConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  v8 = v7 + 32;
  v9 = *(v7 + 80);
  v10 = *(v6 + 32) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 32))(v11, v12);
  v13 = *(v8 + 32);
  v14 = type metadata accessor for UICellConfigurationState();
  v15 = *(v14 - 8);
  v16 = *(v15 + 80);
  v17 = (v16 | 7) + v13;
  v18 = (v17 + v11) & ~(v16 | 7);
  v19 = (v17 + v12) & ~(v16 | 7);
  *v18 = *v19;
  v20 = *(v19 + 0x31);
  v21 = *(v19 + 0x28);
  v22 = *(v19 + 0x18);
  *(v18 + 8) = *(v19 + 8);
  *(v18 + 24) = v22;
  *(v18 + 40) = v21;
  *(v18 + 49) = v20;
  v23 = *(v19 + 0x48);
  *(v18 + 81) = *(v19 + 0x51);
  *(v18 + 72) = v23;
  *(v18 + 97) = *(v19 + 0x61);
  *(v18 + 98) = *(v19 + 0x62);
  v24 = ((v16 + 99 + v18) & ~v16);
  v25 = ((v16 + 99 + v19) & ~v16);
  if ((*(v15 + 48))(v25, 1, v14))
  {
    v26 = *(v15 + 84);
    v27 = *(v15 + 64);
    if (v26)
    {
      v28 = v27;
    }

    else
    {
      v28 = v27 + 1;
    }

    memcpy(v24, v25, v28);
  }

  else
  {
    (*(v15 + 32))(v24, v25, v14);
    v30 = *(v15 + 56);
    v29 = v15 + 56;
    v30(v24, 0, 1, v14);
    v26 = *(v29 + 28);
    v27 = *(v29 + 8);
  }

  if (v26)
  {
    v31 = v27;
  }

  else
  {
    v31 = v27 + 1;
  }

  v32 = &v24[v31];
  v33 = &v25[v31];
  *v32 = *v33;
  v34 = v32 & 0xFFFFFFFFFFFFFFF8;
  v35 = v33 & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectWeakTakeInit();
  *(v34 + 16) = *(v35 + 16);
  return a1;
}

unint64_t instantiation function for generic protocol witness table for AccessibilityChildBehavior.Combine(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AccessibilityChildBehavior.Combine and conformance AccessibilityChildBehavior.Combine();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityChildBehavior.Combine and conformance AccessibilityChildBehavior.Combine()
{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehavior.Combine and conformance AccessibilityChildBehavior.Combine;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehavior.Combine and conformance AccessibilityChildBehavior.Combine)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityChildBehavior.Combine, &type metadata for AccessibilityChildBehavior.Combine, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehavior.Combine and conformance AccessibilityChildBehavior.Combine);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehavior.Combine and conformance AccessibilityChildBehavior.Combine;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehavior.Combine and conformance AccessibilityChildBehavior.Combine)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityChildBehavior.Combine, &type metadata for AccessibilityChildBehavior.Combine, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehavior.Combine and conformance AccessibilityChildBehavior.Combine);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehavior.Combine and conformance AccessibilityChildBehavior.Combine;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehavior.Combine and conformance AccessibilityChildBehavior.Combine)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityChildBehavior.Combine, &type metadata for AccessibilityChildBehavior.Combine, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehavior.Combine and conformance AccessibilityChildBehavior.Combine);
  }

  return result;
}

void type metadata accessor for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Combine>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void _s7SwiftUI29AccessibilityChildBehaviorBox33_F0D4BE429651399A5FAD2DF7DCDF699DLLCyAA0cdE0V7CombineVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void _s7SwiftUI29AccessibilityChildBehaviorBox33_F0D4BE429651399A5FAD2DF7DCDF699DLLCyAA0cdE0V7CombineVGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for AccessibilityChildBehaviorBox(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t type metadata completion function for DragContainerStorageBox(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id UIHostingContentView.frame.getter(SEL *a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x710);
  v6[0] = *((*MEMORY[0x1E69E7D40] & *v1) + 0x700);
  v6[1] = v3;
  v4 = type metadata accessor for UIHostingContentView(0, v6);
  v7.receiver = v1;
  v7.super_class = v4;
  return objc_msgSendSuper2(&v7, *a1);
}

uint64_t UIHostingContentView._configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = *(v3 + 0x728);
  swift_beginAccess();
  v5 = *(v3 + 1808);
  v8[0] = *(v3 + 1792);
  v8[1] = v5;
  v6 = type metadata accessor for UIHostingConfiguration(0, v8);
  return (*(*(v6 - 8) + 16))(a1, &v1[v4], v6);
}

uint64_t static HoverEffect.automatic.getter@<X0>(void *a1@<X0>, void *a2@<X1>, void *a4@<X8>)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a4;
    swift_once();
    a4 = v7;
    a2 = v6;
  }

  *a4 = *a2;
}

uint64_t specialized _UIHostingView.rootView.setter(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - v6;
  (*(v8 + 16))(&v12 - v6, v5);
  CoreCoordinator.dataSource.setter(v7);
  v10 = type metadata accessor for _UIHostingView(0, v4, *((v3 & v2) + 0x58), v9);
  swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v10);
  return ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
}

uint64_t CoreCoordinator.dataSource.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  swift_beginAccess();
  (*(*(*((v4 & v3) + 0x50) - 8) + 40))(&v1[v5], a1);
  return swift_endAccess();
}

void @objc UIHostingContentView.frame.setter(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  UIHostingContentView.frame.setter(a2, a3, a4, a5);
}

uint64_t outlined init with copy of UIHostingConfigurationStorage(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void UIHostingContentView.frame.setter(double a1, double a2, double a3, double a4)
{
  v9 = *MEMORY[0x1E69E7D40] & *v4;
  [v4 bounds];
  v11 = v10;
  v13 = v12;
  v14 = *(v9 + 1808);
  v20[0] = *(v9 + 1792);
  v20[1] = v14;
  v15 = type metadata accessor for UIHostingContentView(0, v20);
  v21.receiver = v4;
  v21.super_class = v15;
  objc_msgSendSuper2(&v21, sel_setFrame_, a1, a2, a3, a4);
  [v4 bounds];
  if (v11 != v17 || v13 != v16)
  {
    v19 = _UIHostingView.base.getter();
    UIHostingViewBase.allowUIKitAnimationsForNextUpdate.setter();
  }
}

double @objc UIHostingBackgroundView.frame.getter(void *a1, uint64_t a2, uint64_t a3, double (*a4)(uint64_t))
{
  v6 = a1;
  v7 = a4(a3);

  return v7;
}

uint64_t UIHostingContentView.updateHostedViews()()
{
  v1 = MEMORY[0x1E69E7D40];
  type metadata accessor for HostingContentViewRootModifier(255);
  v2 = type metadata accessor for ModifiedContent();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - v5;
  v7 = [v0 traitCollection];
  v8 = [v7 listEnvironment];

  v9 = *((*v1 & *v0) + 0x720);
  v10 = *(v0 + v9);
  *(v0 + v9) = v8;
  UIHostingContentView.listEnvironment.didset(v10);
  UIHostingContentView.makeRootView()(v6);
  specialized _UIHostingView.rootView.setter(v6);
  result = (*(v3 + 8))(v6, v2);
  v12 = (v0 + *((*v1 & *v0) + 0x730));
  v13 = *v12;
  if (*v12)
  {
    v14 = v12[1];
    outlined copy of AppIntentExecutor?(*v12, v14);
    UIHostingContentView.updateBackgroundHostIfNeeded(_:)(v13, v14);
    return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v13, v14);
  }

  return result;
}

uint64_t UIHostingContentView.listEnvironment.didset(uint64_t result)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x720);
  if (*(v1 + v2) != result)
  {
    v3 = v1;
    _UIHostingView.viewGraph.getter(result);
    lazy protocol witness table accessor for type HostingContentViewGraph and conformance HostingContentViewGraph();
    v4 = ViewGraph.subscript.getter();

    if (v4)
    {
      *v4 = *(v3 + v2);
    }

    v6 = _UIHostingView.viewGraph.getter(v5);
    swift_beginAccess();
    v7 = *(v6 + 128);

    if (v7 == 1)
    {
      MEMORY[0x1EEE9AC00](result);
      return static Update.ensure<A>(_:)();
    }
  }

  return result;
}

uint64_t UIHostingContentView.makeRootView()@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  v50 = type metadata accessor for HostingContentViewRootModifier(0);
  MEMORY[0x1EEE9AC00](v50);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *((v3 & v2) + 0x700);
  v49 = *(v43 - 8);
  v7 = v49;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - v9;
  v48 = &v43 - v9;
  v11 = *((v3 & v2) + 0x708);
  *&v56 = v12;
  *(&v56 + 1) = v11;
  v51 = *(v4 + 1808);
  v57 = v51;
  v13 = type metadata accessor for UIHostingConfiguration(0, &v56);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v43 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v43 - v24;
  UIHostingContentView._configuration.getter(&v43 - v24);
  v26 = v10;
  v27 = v43;
  (*(v7 + 16))(v26, v25, v43);
  v28 = *(v14 + 8);
  v28(v25, v13);
  UIHostingContentView.defaultStyling()(&v56);
  UIHostingContentView._configuration.getter(v22);
  v29 = &v22[*(v13 + 56)];
  v30 = *(v29 + 24);
  v53 = *(v29 + 8);
  v54 = v30;
  v55[0] = *(v29 + 40);
  *(v55 + 9) = *(v29 + 49);
  v28(v22, v13);
  UIHostingContentView._configuration.getter(v19);
  v31 = &v19[*(v13 + 56)];
  v47 = *(v31 + 9);
  v46 = v31[80];
  v45 = *(v31 + 11);
  v62 = v31[96];
  v44 = v62;
  v28(v19, v13);
  v32 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x720));
  UIHostingContentView._configuration.getter(v16);
  v33 = v50;
  v34 = *(v50 + 32);
  v35 = *(v13 + 56);
  v36 = type metadata accessor for UIHostingConfigurationStorage(0);
  outlined init with copy of UIHostingConfigurationStorage(&v16[v35 + *(v36 + 36)], &v6[v34], type metadata accessor for UICellConfigurationState?);
  v28(v16, v13);
  v37 = v59;
  *(v6 + 2) = v58;
  *(v6 + 3) = v37;
  *(v6 + 4) = v60;
  v38 = v57;
  *v6 = v56;
  *(v6 + 1) = v38;
  v39 = v54;
  *(v6 + 88) = v53;
  *(v6 + 129) = *(v55 + 9);
  *(v6 + 120) = v55[0];
  v6[80] = v61;
  *(v6 + 104) = v39;
  *(v6 + 19) = v47;
  v6[160] = v46;
  *(v6 + 21) = v45;
  v6[176] = v44 & 1;
  v40 = v51;
  *(v6 + 23) = v32;
  v41 = v48;
  MEMORY[0x18D00A570](v6, v27, v33, v40);
  outlined destroy of UIHostingConfigurationStorage(v6, type metadata accessor for HostingContentViewRootModifier);
  return (*(v49 + 8))(v41, v27);
}

void UIHostingContentView.defaultStyling()(uint64_t a2@<X8>)
{
  v3 = v2;
  static EdgeInsets.zero.getter();
  v5 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x740));
  v6 = *v5;
  if (*v5 && (v7 = v5[1], v8 = outlined copy of AppIntentExecutor?(*v5, v7), v9 = v6(v8), outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v6, v7), v9))
  {
    [v9 directionalLayoutMargins];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [v3 directionalLayoutMargins];
    if (v18 > v13)
    {
      v13 = v18;
    }

    if (v19 > v17)
    {
      v17 = v19;
    }

    v20 = [v9 textProperties];
    v21 = [v20 font];
    v22 = [v3 traitCollection];
    v23 = [v21 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection_];

    if (v23)
    {
      v24 = Font.init(_:)();
    }

    else
    {
      v24 = 0;
    }

    v35 = [v20 resolvedColor];
    type metadata accessor for UIKitPlatformColorDefinition(0);
    v29 = Color.init(_platformColor:definition:)();
    v36 = [v3 traitCollection];
    [v9 _minimumHeightForTraitCollection_];
    v33 = v37;

    v30 = [v20 transform] == 1;
    [v9 imageToTextPadding];
    v32 = v38;
    v39 = [v9 imageProperties];
    v40 = [v39 tintColor];

    if (v40)
    {
      v41 = v40;
      v34 = Color.init(_platformColor:definition:)();

      v31 = 1;
    }

    else
    {

      v31 = 0;
      v34 = 1;
    }

    outlined consume of ListItemTint?(1);
  }

  else
  {
    [v3 directionalLayoutMargins];
    v11 = v25;
    v13 = v26;
    v15 = v27;
    v17 = v28;
    v24 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 10.0;
    v33 = 0;
    v34 = 1;
  }

  static Semantics.v5.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && [v3 insetsLayoutMarginsFromSafeArea])
  {
    [v3 safeAreaInsets];
    v42 = [v3 traitCollection];
    [v42 layoutDirection];

    EdgeInsets.negatedInsets.getter();
    EdgeInsets.adding(_:)();
    v11 = v43;
    v13 = v44;
    v15 = v45;
    v17 = v46;
  }

  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15;
  *(a2 + 24) = v17;
  *(a2 + 32) = v33;
  *(a2 + 40) = v24;
  *(a2 + 48) = v29;
  *(a2 + 56) = v30;
  *(a2 + 64) = v32;
  *(a2 + 72) = v34;
  *(a2 + 80) = v31;
}

uint64_t assignWithTake for HostingContentViewRootModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  v7 = *(a2 + 72);
  v8 = *(a1 + 72);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  if (v8 == 1)
  {
    goto LABEL_4;
  }

  if (v7 == 1)
  {
    outlined destroy of ListItemTint(a1 + 72);
LABEL_4:
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 80) = *(a2 + 80);
    goto LABEL_6;
  }

  *(a1 + 72) = v7;

  *(a1 + 80) = *(a2 + 80);
LABEL_6:
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  v9 = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 152) = v9;
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  v10 = *(a3 + 32);
  v11 = type metadata accessor for UICellConfigurationState();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  v14 = v13(a1 + v10, 1, v11);
  v15 = v13(a2 + v10, 1, v11);
  if (!v14)
  {
    if (!v15)
    {
      (*(v12 + 40))(a1 + v10, a2 + v10, v11);
      return a1;
    }

    (*(v12 + 8))(a1 + v10, v11);
    goto LABEL_11;
  }

  if (v15)
  {
LABEL_11:
    type metadata accessor for UICellConfigurationState?(0);
    memcpy((a1 + v10), (a2 + v10), *(*(v16 - 8) + 64));
    return a1;
  }

  (*(v12 + 32))(a1 + v10, a2 + v10, v11);
  (*(v12 + 56))(a1 + v10, 0, 1, v11);
  return a1;
}

uint64_t UIHostingContentView.appendViewGraphFeatures()(uint64_t a1)
{
  _UIHostingView.viewGraph.getter(a1);
  lazy protocol witness table accessor for type HostingContentViewGraph and conformance HostingContentViewGraph();
  ViewGraph.append<A>(feature:)();
}

unint64_t lazy protocol witness table accessor for type HostingContentViewGraph and conformance HostingContentViewGraph()
{
  result = lazy protocol witness table cache variable for type HostingContentViewGraph and conformance HostingContentViewGraph;
  if (!lazy protocol witness table cache variable for type HostingContentViewGraph and conformance HostingContentViewGraph)
  {
    result = swift_getWitnessTable("Y", &unk_1EFFCE5C0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HostingContentViewGraph and conformance HostingContentViewGraph);
  }

  return result;
}

uint64_t closure #1 in UIHostingContentView.init(configuration:)(uint64_t a1)
{
  _UIHostingView.viewGraph.getter(a1);
  GraphHost.addPreference<A>(_:)();

  _UIHostingView.viewGraph.getter(v1);
  lazy protocol witness table accessor for type SwipeActions.Feature and conformance SwipeActions.Feature();
  ViewGraph.append<A>(feature:)();
}

unint64_t lazy protocol witness table accessor for type SwipeActions.Feature and conformance SwipeActions.Feature()
{
  result = lazy protocol witness table cache variable for type SwipeActions.Feature and conformance SwipeActions.Feature;
  if (!lazy protocol witness table cache variable for type SwipeActions.Feature and conformance SwipeActions.Feature)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SwipeActions.Feature, &type metadata for SwipeActions.Feature, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SwipeActions.Feature and conformance SwipeActions.Feature);
  }

  return result;
}

uint64_t initializeWithCopy for AccessibilityLargeContentViewModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  (*(v7 + 16))((*(v6 + 48) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 48) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t destroy for AccessibilityLargeContentViewModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(*(a2 + 24) - 8);
  v6 = *(v5 + 8);
  v7 = (*(v4 + 56) + a1 + *(v5 + 80)) & ~*(v5 + 80);

  return v6(v7);
}

uint64_t type metadata completion function for AccessibilityLargeContentViewModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t _s7SwiftUI21AnyAccessibilityValueVSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type GeometryTransform and conformance GeometryTransform()
{
  result = lazy protocol witness table cache variable for type GeometryTransform and conformance GeometryTransform;
  if (!lazy protocol witness table cache variable for type GeometryTransform and conformance GeometryTransform)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GeometryTransform, &unk_1EFF8BFE8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GeometryTransform and conformance GeometryTransform);
  }

  return result;
}

uint64_t initializeWithCopy for GeometryTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v3;
  *(a1 + 56) = *(a2 + 56);
  v4 = *(a2 + 64);
  *(a1 + 64) = v4;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 112) = *(a2 + 112);
  v5 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v5;
  v6 = *(a2 + 120);
  *(a1 + 120) = v6;
  v7 = v4;
  v8 = v6;
  return a1;
}

uint64_t View.accessibility(isEnabled:body:)(char a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  AccessibilityProperties.init()();
  if (a1)
  {
    a2(v11);
  }

  static AccessibilityAttachment.properties(_:)();
  View.accessibility(_:)(v10, a4, a5);
  outlined destroy of AccessibilityAttachment(v10);
  return outlined destroy of AccessibilityProperties(v11);
}

void type metadata accessor for MutableBox<AccessibilityAttachment>()
{
  if (!lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>)
  {
    v0 = type metadata accessor for MutableBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>);
    }
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t View.accessibilityIdentifier(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a1;
  v5[3] = a2;
  v6 = 0;
  return View.accessibility(isEnabled:body:)(1, partial apply for closure #1 in View.accessibilityIdentifier(_:placement:), v5, a3, a4);
}

uint64_t partial apply for closure #1 in View.accessibilityIdentifier(_:placement:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);

  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  return result;
}

uint64_t View.accessibility(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of AccessibilityAttachment(a1, __src);
  type metadata accessor for MutableBox<AccessibilityAttachment>();
  v5 = swift_allocObject();
  memcpy((v5 + 16), __src, 0x128uLL);
  __src[0] = v5;
  __src[1] = 0;
  MEMORY[0x18D00A570](__src, a2, &type metadata for AccessibilityAttachmentModifier, a3);
}

{
  static AccessibilityAttachment.properties(_:)();
  View.accessibility(_:)(v6, a2, a3);
  return outlined destroy of AccessibilityAttachment(v6);
}

uint64_t assignWithTake for HostingControllerOverrides(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 2)
  {
    if (v4 != 2)
    {
      swift_unknownObjectWeakTakeInit();
LABEL_8:
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      goto LABEL_9;
    }
  }

  else
  {
    if (v4 != 2)
    {
      swift_unknownObjectWeakTakeAssign();
      goto LABEL_8;
    }

    outlined destroy of PushTarget(a1);
  }

  *a1 = *a2;
  *(a1 + 9) = *(a2 + 9);
LABEL_9:
  swift_unknownObjectWeakTakeAssign();
  swift_unknownObjectWeakTakeAssign();
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t specialized static SwiftUIOpacityAccessibilityProvider.makeOpacity(effect:inputs:outputs:)(uint64_t (*a1)(void), uint64_t a2, __int128 *a3, uint64_t *a4)
{
  v61 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 2);
  v8 = *(a3 + 6);
  v9 = *(a3 + 28);
  v33 = *(a3 + 9);
  v10 = *(a3 + 6);
  v34 = *(a3 + 5);
  v11 = *(a3 + 14);
  v35 = *(a3 + 18);
  v36 = *(a3 + 15);
  v31 = *(a3 + 76);
  v32 = *(a3 + 8);
  *&v39 = v10;
  DWORD2(v39) = v11;
  result = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  if (result)
  {
    v30 = v8;
    v13 = a1();
    v28 = *a4;
    v29 = *(a4 + 2);
    *&v39 = v10;
    DWORD2(v39) = v11;
    v14 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
    if (v14)
    {
      result = AGSubgraphGetCurrent();
      if (!result)
      {
        __break(1u);
        return result;
      }

      v26 = result;
      v27 = v14;
      v15 = *MEMORY[0x1E698D3F8];
      *&v39 = v10;
      DWORD2(v39) = v11;
      v16 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
      v17 = v15;
      if (v16)
      {
        *&v39 = v28;
        DWORD2(v39) = v29;
        v18 = PreferencesOutputs.subscript.getter();
        if ((v18 & 0x100000000) != 0)
        {
          v17 = v15;
        }

        else
        {
          v17 = v18;
        }
      }

      v25 = v17;
      v39 = *a3;
      v40 = v7;
      *(&v41 + 4) = v9;
      LODWORD(v41) = v30;
      HIDWORD(v41) = v33;
      v42 = v34;
      v43 = v10;
      v44 = v11;
      v45 = v36;
      v46 = v32;
      LODWORD(v47) = v35;
      *(&v47 + 4) = v31;
      v24 = _ViewInputs.position.getter();
      _ViewInputs.scrapeableParentID.getter();
      _GraphInputs.interfaceIdiom.getter();
      swift_beginAccess();
      v19 = *(v7 + 16);
      *&v39 = v28;
      DWORD2(v39) = v29;
      v20 = PreferencesOutputs.subscript.getter();
      if ((v20 & 0x100000000) != 0)
      {
        v21 = v15;
      }

      else
      {
        v21 = v20;
      }

      type metadata accessor for AccessibilityContainerResolver<AccessibilityChildBehavior.Host>(0, &lazy cache variable for type metadata for AccessibilityViewModifierAccessor<AccessibilityOpacityModifier>, lazy protocol witness table accessor for type AccessibilityOpacityModifier and conformance AccessibilityOpacityModifier, &type metadata for AccessibilityOpacityModifier, type metadata accessor for AccessibilityViewModifierAccessor);
      *&v39 = v22;
      *(&v39 + 1) = v15;
      v41 = v37;
      LODWORD(v40) = v38;
      v42 = __PAIR64__(v35, v24);
      v43 = __PAIR64__(v19, v36);
      v44 = v30;
      v45 = v25;
      LODWORD(v46) = v21;
      *&v47 = v26;
      *(&v47 + 1) = v13;
      v48 = &type metadata for AccessibilityOpacityAttachment;
      v49 = &protocol witness table for AccessibilityOpacityAttachment;
      v57 = 0;
      v56 = 0u;
      v55 = 0u;
      v54 = 0u;
      v53 = 0u;
      v52 = 0u;
      v51 = 0u;
      v50 = 0u;
      v58 = (v33 & 0x20) == 0;
      v59 = 0;
      swift_unknownObjectWeakInit();
      v60 = 0;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type PropertiesTransform and conformance PropertiesTransform();
      v23 = v26;
      Attribute.init<A>(body:value:flags:update:)();
      outlined destroy of PropertiesTransform(&v39);
      AGGraphSetFlags();

      v14 = v27;
    }

    LOBYTE(v39) = (v14 & 1) == 0;
    return PreferencesOutputs.subscript.setter();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityOpacityModifier and conformance AccessibilityOpacityModifier()
{
  result = lazy protocol witness table cache variable for type AccessibilityOpacityModifier and conformance AccessibilityOpacityModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityOpacityModifier and conformance AccessibilityOpacityModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityOpacityModifier, &type metadata for AccessibilityOpacityModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityOpacityModifier and conformance AccessibilityOpacityModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityOpacityModifier and conformance AccessibilityOpacityModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityOpacityModifier and conformance AccessibilityOpacityModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityOpacityModifier, &type metadata for AccessibilityOpacityModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityOpacityModifier and conformance AccessibilityOpacityModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityOpacityModifier and conformance AccessibilityOpacityModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityOpacityModifier and conformance AccessibilityOpacityModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityOpacityModifier, &type metadata for AccessibilityOpacityModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityOpacityModifier and conformance AccessibilityOpacityModifier);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AccessibilityOpacityModifier(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type AccessibilityOpacityModifier and conformance AccessibilityOpacityModifier();
  result = lazy protocol witness table accessor for type AccessibilityOpacityModifier and conformance AccessibilityOpacityModifier();
  *(a1 + 16) = result;
  return result;
}

uint64_t View.viewAlias<A, B>(_:_:)(uint64_t a1, void (*a2)(double), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = a7;
  v10 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[0] = v13;
  v24[1] = v14;
  v24[2] = v15;
  v24[3] = v16;
  v17 = type metadata accessor for StaticSourceWriter(0, v24);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = v24 - v20;
  a2(v19);
  (*(v10 + 32))(v21, v12, a6);
  MEMORY[0x18D00A570](v21, a4, v17, v23);
  return (*(v18 + 8))(v21, v17);
}

uint64_t outlined consume of Environment<Selector?>.Content(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t outlined copy of Environment<Selector?>.Content(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t AnySource.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for SourceFormula(0, a2, a3, a4);
  AGCreateWeakAttribute();
  return v4;
}

uint64_t closure #1 in static StaticSourceWriter._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v11[2] = type metadata accessor for StaticSourceWriter(0, v12);
  v11[3] = a3;
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v11, a3, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v12[0];
}

unint64_t lazy protocol witness table accessor for type AnySource and conformance AnySource()
{
  result = lazy protocol witness table cache variable for type AnySource and conformance AnySource;
  if (!lazy protocol witness table cache variable for type AnySource and conformance AnySource)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnySource, &unk_1F0005790, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnySource and conformance AnySource);
  }

  return result;
}

__n128 __swift_memcpy29_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t static StaticSourceWriter._makeInputs(modifier:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = *a1;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  type metadata accessor for StaticSourceWriter(255, &v18);
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(a4 - 8) + 64))
  {
    closure #1 in static StaticSourceWriter._makeInputs(modifier:inputs:)(1, a3, a4, a5, a6, v10);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v18 = AnySource.init<A>(_:)(OffsetAttribute2, a4, a6, v12);
  v19 = v13;
  v20 = v14;
  LODWORD(v21) = v15;
  BYTE4(v21) = BYTE4(v15) & 1;
  v16 = type metadata accessor for SourceInput(0, a3, a5, v15);
  swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v16);
  lazy protocol witness table accessor for type AnySource and conformance AnySource();
  return _GraphInputs.append<A, B>(_:to:)();
}

void type metadata accessor for StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for StaticIf();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(uint64_t a1, __int128 *a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t))
{
  v11 = a2[3];
  v23 = a2[2];
  v24 = v11;
  v25 = a2[4];
  v26 = *(a2 + 20);
  v12 = a2[1];
  v21 = *a2;
  v22 = v12;
  outlined init with copy of _ViewInputs(a2, v31);
  a7(a5, a6);
  v27[2] = v23;
  v27[3] = v24;
  v27[4] = v25;
  v28 = v26;
  v27[0] = v21;
  v27[1] = v22;
  v17 = v23;
  v18 = v24;
  v19 = v25;
  v20 = v26;
  v15 = v21;
  v16 = v22;
  v13 = outlined init with copy of _ViewInputs(v27, v31);
  a3(v13, &v15);
  v29[2] = v17;
  v29[3] = v18;
  v29[4] = v19;
  v30 = v20;
  v29[0] = v15;
  v29[1] = v16;
  outlined destroy of _ViewInputs(v29);
  v31[2] = v23;
  v31[3] = v24;
  v31[4] = v25;
  v32 = v26;
  v31[0] = v21;
  v31[1] = v22;
  return outlined destroy of _ViewInputs(v31);
}

uint64_t type metadata completion function for PickerBuilder.Content(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IsInHostingConfiguration and conformance IsInHostingConfiguration()
{
  result = lazy protocol witness table cache variable for type IsInHostingConfiguration and conformance IsInHostingConfiguration;
  if (!lazy protocol witness table cache variable for type IsInHostingConfiguration and conformance IsInHostingConfiguration)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsInHostingConfiguration, &type metadata for IsInHostingConfiguration, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsInHostingConfiguration and conformance IsInHostingConfiguration);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInHostingConfiguration and conformance IsInHostingConfiguration;
  if (!lazy protocol witness table cache variable for type IsInHostingConfiguration and conformance IsInHostingConfiguration)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsInHostingConfiguration, &type metadata for IsInHostingConfiguration, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsInHostingConfiguration and conformance IsInHostingConfiguration);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInHostingConfiguration and conformance IsInHostingConfiguration;
  if (!lazy protocol witness table cache variable for type IsInHostingConfiguration and conformance IsInHostingConfiguration)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsInHostingConfiguration, &type metadata for IsInHostingConfiguration, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsInHostingConfiguration and conformance IsInHostingConfiguration);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInHostingConfiguration and conformance IsInHostingConfiguration;
  if (!lazy protocol witness table cache variable for type IsInHostingConfiguration and conformance IsInHostingConfiguration)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsInHostingConfiguration, &type metadata for IsInHostingConfiguration, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsInHostingConfiguration and conformance IsInHostingConfiguration);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInHostingConfiguration and conformance IsInHostingConfiguration;
  if (!lazy protocol witness table cache variable for type IsInHostingConfiguration and conformance IsInHostingConfiguration)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsInHostingConfiguration, &type metadata for IsInHostingConfiguration, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsInHostingConfiguration and conformance IsInHostingConfiguration);
  }

  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v26 = a5;
  v27 = a2;
  v29 = a4;
  v28 = a1;
  v25 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v6, v19);
  v23 = 1;
  if ((*(v14 + 48))(v21, 1, v13) != 1)
  {
    (*(v14 + 32))(v17, v21, v13);
    v28(v17, v11);
    (*(v14 + 8))(v17, v13);
    if (v7)
    {
      return (*(v25 + 32))(v26, v11, a3);
    }

    v23 = 0;
  }

  return (*(*(v29 - 8) + 56))(a6, v23, 1);
}

uint64_t outlined copy of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t outlined consume of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t getEnumTagSinglePayload for AccessibilityLargeContentViewBehavior(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlertTransformModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlertTransformModifier(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t destroy for OnChangeOfSuggestionsModifier(void *a1)
{
}

uint64_t *initializeBufferWithCopyOfBuffer for SymmetricallyScaledTextLayout(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t specialized static AccessibilityViewModifier._makeView(modifier:inputs:body:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void (*a3)(__int128 *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t *a4@<X8>)
{
  v6 = a1;
  v129 = *MEMORY[0x1E69E9840];
  v90 = *(a2 + 6);
  v91 = *(a2 + 14);
  *&v123 = *(a2 + 6);
  DWORD2(v123) = *(a2 + 14);
  outlined init with copy of PreferencesInputs(&v90, &v118);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    outlined destroy of PreferencesInputs(&v90);
    v8 = a2[3];
    v125 = a2[2];
    v126 = v8;
    v127 = a2[4];
    v128 = *(a2 + 20);
    v9 = a2[1];
    v123 = *a2;
    v124 = v9;
    outlined init with copy of _ViewInputs(a2, &v118);
    _s7SwiftUI25AccessibilityViewModifierPAAE26configureInputsForGeometryyyAA01_dG0VzFZAA0c5ImageE0V_Tt0g5Tm(&v123);
    v10 = *(a2 + 1);
    v78 = *(a2 + 2);
    v88 = *(a2 + 3);
    v11 = *(a2 + 9);
    v89 = *(a2 + 8);
    v75 = *a2;
    v77 = *(a2 + 5);
    if ((v11 & 0x10) != 0)
    {
      v12 = a2[3];
      v119[1] = a2[2];
      v120 = v12;
      v121 = a2[4];
      v122 = *(a2 + 20);
      v13 = a2[1];
      v118 = *a2;
      v119[0] = v13;
      _ViewInputs.animatedPosition()();
      _ViewInputs.containerPosition.setter();
    }

    v14 = a2[3];
    v119[1] = a2[2];
    v120 = v14;
    v121 = a2[4];
    v122 = *(a2 + 20);
    v15 = a2[1];
    v118 = *a2;
    v119[0] = v15;
    v83 = v6;
    if (_ViewInputs.isScrapeable.getter())
    {
      ScrapeableID.init()();
      v80 = v118;
      _ViewInputs.scrapeableParentID.setter();
    }

    else
    {
      v80 = 0;
    }

    v119[1] = v125;
    v120 = v126;
    v121 = v127;
    v122 = v128;
    v118 = v123;
    v119[0] = v124;
    v114 = v125;
    v115 = v126;
    v116 = v127;
    v117 = v128;
    v112 = v123;
    v113 = v124;
    v24 = outlined init with copy of _ViewInputs(&v118, v99);
    a3(v99, v24, &v112);
    v25 = v120;
    v26 = DWORD2(v120);
    *&v112 = v120;
    DWORD2(v112) = DWORD2(v120);
    if ((PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) == 0)
    {
      *&v112 = v25;
      DWORD2(v112) = v26;
      if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
      {
        *&v112 = *v99;
        DWORD2(v112) = *&v99[8];
        v27 = PreferencesOutputs.subscript.getter();
        if ((v27 & 0x100000000) != 0)
        {
          v28 = *MEMORY[0x1E698D3F8];
        }

        else
        {
          v28 = v27;
        }

        OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
        KeyPath = swift_getKeyPath();
        dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
        if (v31)
        {
          LODWORD(v112) = OffsetAttribute2;
          *(&v112 + 1) = KeyPath;
          protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
          type metadata accessor for Focus<MutableBox<AccessibilityAttachment>, AccessibilityAttachment>(0);
          _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type Focus<MutableBox<AccessibilityAttachment>, AccessibilityAttachment> and conformance Focus<A, B>, type metadata accessor for Focus<MutableBox<AccessibilityAttachment>, AccessibilityAttachment>, MEMORY[0x1E698D3B8]);

          v32 = Attribute.init<A>(body:value:flags:update:)();
        }

        else
        {
          v32 = AGGraphCreateOffsetAttribute2();
        }

        *&v112 = __PAIR64__(v32, v28);
        protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
        lazy protocol witness table accessor for type AccessibilityAttachment.DeferredTransform and conformance AccessibilityAttachment.DeferredTransform();
        Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v112) = 0;
        PreferencesOutputs.subscript.setter();
      }
    }

    outlined destroy of _ViewInputs(&v118);
    v41 = *v99;
    v110 = *v99;
    v111 = *&v99[8];
    if ((v11 & 0x10) != 0)
    {
      v79 = *&v99[8];
      v43 = v10;
      *&v112 = v90;
      DWORD2(v112) = v91;
      if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
      {
        *&v112 = v41;
        DWORD2(v112) = v79;
        v44 = PreferencesOutputs.subscript.getter();
        v45 = *MEMORY[0x1E698D3F8];
        if ((v44 & 0x100000000) != 0)
        {
          v46 = *MEMORY[0x1E698D3F8];
        }

        else
        {
          v46 = v44;
        }

        v74 = v46;
      }

      else
      {
        v45 = *MEMORY[0x1E698D3F8];
        v74 = *MEMORY[0x1E698D3F8];
      }

      _DisplayList_Identity.init()();
      v73 = v112;
      v47 = a2[3];
      v114 = a2[2];
      v115 = v47;
      v116 = a2[4];
      v117 = *(a2 + 20);
      v48 = a2[1];
      v112 = *a2;
      v113 = v48;
      *v99 = v73;
      _ViewInputs.pushIdentity(_:)();
      PropertyList.subscript.getter();
      v92 = v75;
      v93 = v43;
      v94 = v78;
      v95 = v88;
      v96 = v89;
      v97 = v11;
      v98 = v77;
      _GraphInputs.interfaceIdiom.getter();
      PropertyList.subscript.getter();
      v49 = a2[3];
      v114 = a2[2];
      v115 = v49;
      v116 = a2[4];
      v117 = *(a2 + 20);
      v50 = a2[1];
      v112 = *a2;
      v113 = v50;
      swift_beginAccess();
      v76 = CachedEnvironment.animatedSize(for:)();
      swift_endAccess();
      v51 = a2[3];
      v114 = a2[2];
      v115 = v51;
      v116 = a2[4];
      v117 = *(a2 + 20);
      v52 = a2[1];
      v112 = *a2;
      v113 = v52;
      v72 = _ViewInputs.animatedPosition()();
      v53 = a2[3];
      v114 = a2[2];
      v115 = v53;
      v116 = a2[4];
      v117 = *(a2 + 20);
      v54 = a2[1];
      v112 = *a2;
      v113 = v54;
      v55 = _ViewInputs.containerPosition.getter();
      v56 = *(v78 + 16);
      *v99 = v41;
      *&v99[8] = v79;
      v57 = PreferencesOutputs.subscript.getter();
      if ((v57 & 0x100000000) != 0)
      {
        v58 = v45;
      }

      else
      {
        v58 = v57;
      }

      *v99 = v41;
      *&v99[8] = v79;
      v59 = PreferencesOutputs.subscript.getter();
      if ((v59 & 0x100000000) != 0)
      {
        v60 = v45;
      }

      else
      {
        v60 = v59;
      }

      type metadata accessor for AccessibilityViewModifierAccessor<AccessibilityContainerModifier>(0, &lazy cache variable for type metadata for AccessibilityViewModifierAccessor<AccessibilityAttachmentModifier>, lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, &type metadata for AccessibilityAttachmentModifier, type metadata accessor for AccessibilityViewModifierAccessor);
      *v99 = v73;
      v99[4] = v85 & 1;
      *&v99[8] = v86;
      v100 = v84;
      v101 = v61;
      v42 = v83;
      v102 = v83;
      v103 = v76;
      v104 = v72;
      v105 = v55;
      v106 = v56;
      v107 = v58;
      v108 = v74;
      v109 = v60;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type DisplayListTransform and conformance DisplayListTransform();
      Attribute.init<A>(body:value:flags:update:)();
      v99[0] = 0;
      PreferencesOutputs.subscript.setter();
      v41 = v110;
    }

    else
    {
      v42 = v83;
    }

    _s7SwiftUI25AccessibilityViewModifierPAAE23makePropertiesTransform33_71F62EDC1DAE3BBC7A74521E45BA5A668modifier6inputs7outputs15includeGeometry010resolvableE012scrapeableID14AttributeGraph0Y0VyAA0C8NodeListVGSo11AGAttributea_AA01_D6InputsVAA01_D7OutputsVSbAA010ResolvableE0AELLVSgAA010ScrapeableX0VtFZAA0c10AttachmentE0V_Tt5B5(v42, a2, v41, v111, 1, 0, 0, 0, 0, v80);
    LOBYTE(v112) = 0;
    PreferencesOutputs.subscript.setter();
    v114 = v125;
    v115 = v126;
    v116 = v127;
    v117 = v128;
    v112 = v123;
    v113 = v124;
    result = outlined destroy of _ViewInputs(&v112);
    *a4 = v110;
    v63 = v111;
  }

  else
  {
    *&v123 = v90;
    DWORD2(v123) = v91;
    v82 = a3;
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) != 0 && (*&v123 = v90, DWORD2(v123) = v91, (PreferencesInputs.contains<A>(_:includeHostPreferences:)()))
    {
      lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
      PropertyList.subscript.getter();
      v16 = (v123 >> 4) & 1;
    }

    else
    {
      v16 = 0;
    }

    v17 = *a2;
    v18 = *(a2 + 1);
    v19 = *(a2 + 2);
    *v99 = *(a2 + 24);
    *&v99[16] = *(a2 + 5);
    v20 = a2[3];
    v21 = a2[4];
    v125 = a2[2];
    v126 = v20;
    v127 = v21;
    v128 = *(a2 + 20);
    v22 = a2[1];
    v123 = *a2;
    v124 = v22;
    v81 = v17;
    if (v16)
    {
      outlined init with copy of _ViewInputs(a2, &v118);
      lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
      PropertyList.subscript.getter();
      LODWORD(v118) = v118 & 0xFFFFFFEF;
      v23 = PropertyList.subscript.setter();
    }

    else
    {
      v23 = outlined init with copy of _ViewInputs(a2, &v118);
    }

    v33 = a2[3];
    v119[1] = a2[2];
    v120 = v33;
    v121 = a2[4];
    v122 = *(a2 + 20);
    v34 = a2[1];
    v118 = *a2;
    v119[0] = v34;
    v82(&v112, v23, &v118);
    *&v118 = v90;
    DWORD2(v118) = v91;
    if ((PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) == 0)
    {
      *&v118 = v90;
      DWORD2(v118) = v91;
      if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
      {
        *&v118 = v112;
        DWORD2(v118) = DWORD2(v112);
        v35 = PreferencesOutputs.subscript.getter();
        if ((v35 & 0x100000000) != 0)
        {
          v36 = *MEMORY[0x1E698D3F8];
        }

        else
        {
          v36 = v35;
        }

        v37 = AGGraphCreateOffsetAttribute2();
        v38 = swift_getKeyPath();
        dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
        if (v39)
        {
          LODWORD(v118) = v37;
          *(&v118 + 1) = v38;
          protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
          type metadata accessor for Focus<MutableBox<AccessibilityAttachment>, AccessibilityAttachment>(0);
          _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type Focus<MutableBox<AccessibilityAttachment>, AccessibilityAttachment> and conformance Focus<A, B>, type metadata accessor for Focus<MutableBox<AccessibilityAttachment>, AccessibilityAttachment>, MEMORY[0x1E698D3B8]);

          v40 = Attribute.init<A>(body:value:flags:update:)();
        }

        else
        {
          v40 = AGGraphCreateOffsetAttribute2();
        }

        *&v118 = __PAIR64__(v40, v36);
        protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
        lazy protocol witness table accessor for type AccessibilityAttachment.DeferredTransform and conformance AccessibilityAttachment.DeferredTransform();
        Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v118) = 0;
        PreferencesOutputs.subscript.setter();
      }
    }

    v87 = v112;
    if (v16)
    {
      *&v118 = v112;
      DWORD2(v118) = DWORD2(v112);
      PreferencesOutputs.subscript.getter();
      v64 = swift_beginAccess();
      MEMORY[0x1EEE9AC00](v64);
      *&v118 = v90;
      DWORD2(v118) = v91;
      MEMORY[0x1EEE9AC00](v65);
      PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
    }

    else
    {
      outlined destroy of PreferencesInputs(&v90);
    }

    v66 = a2[3];
    v119[1] = a2[2];
    v120 = v66;
    v121 = a2[4];
    v122 = *(a2 + 20);
    v67 = a2[1];
    v118 = *a2;
    v119[0] = v67;
    *&v112 = 1024;
    if (_ViewInputs.requestsPlatformItem(for:)())
    {
      *&v118 = v87;
      DWORD2(v118) = DWORD2(v87);
      PreferencesOutputs.subscript.getter();
      swift_beginAccess();
      v68 = *(v19 + 16);
      type metadata accessor for PropertyList.Tracker();
      swift_allocObject();
      v69 = PropertyList.Tracker.init()();
      LODWORD(v118) = v68;
      *(&v118 + 1) = v69;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type PlatformAccessibilityEnv and conformance PlatformAccessibilityEnv();
      Attribute.init<A>(body:value:flags:update:)();

      *&v118 = v81;
      *(&v118 + 1) = v18;
      *&v119[0] = v19;
      *(v119 + 8) = *v99;
      *(&v119[1] + 1) = *&v99[16];
      _GraphInputs.platformSystem.getter();
      v70 = a2[3];
      v114 = a2[2];
      v115 = v70;
      v116 = a2[4];
      v117 = *(a2 + 20);
      v71 = a2[1];
      v112 = *a2;
      v113 = v71;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type PlatformAccessibilityTransform and conformance PlatformAccessibilityTransform();
      Attribute.init<A>(body:value:flags:update:)();
      lazy protocol witness table accessor for type AccessibilityPlatformItemTransform and conformance AccessibilityPlatformItemTransform();
      static PlatformItemsModifier.transformPlatformItemsOutputs<A>(_:inputs:modifier:)();
    }

    v119[1] = v125;
    v120 = v126;
    v121 = v127;
    v122 = v128;
    v118 = v123;
    v119[0] = v124;
    result = outlined destroy of _ViewInputs(&v118);
    *a4 = v87;
    v63 = *(&v87 + 1);
  }

  a4[1] = v63;
  return result;
}

uint64_t sub_18BD689A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return outlined init with copy of AccessibilityAttachment(v3 + 16, a2);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance AccessibilityAttachmentModifier@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(__int128 *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t *a4@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static AccessibilityViewModifier._makeView(modifier:inputs:body:)(v4, v8, a3, a4);
}

unint64_t lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier()
{
  result = lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityAttachmentModifier, &type metadata for AccessibilityAttachmentModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityAttachmentModifier, &type metadata for AccessibilityAttachmentModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityAttachmentModifier, &type metadata for AccessibilityAttachmentModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AccessibilityAttachmentModifier(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier();
  result = lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier();
  *(a1 + 16) = result;
  return result;
}

void type metadata accessor for AccessibilityContainerResolver<AccessibilityChildBehavior.Host>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for Namespace.ID?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for ScrollViewBehavior.DecelerationState(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

unint64_t lazy protocol witness table accessor for type PropertiesTransform and conformance PropertiesTransform()
{
  result = lazy protocol witness table cache variable for type PropertiesTransform and conformance PropertiesTransform;
  if (!lazy protocol witness table cache variable for type PropertiesTransform and conformance PropertiesTransform)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PropertiesTransform, &type metadata for PropertiesTransform, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PropertiesTransform and conformance PropertiesTransform);
  }

  return result;
}

uint64_t outlined destroy of AccessibilityGeometryUpdater?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t _s7SwiftUI28AccessibilityGeometryUpdaterVSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _s7SwiftUI7BindingVySbGMaTm_11(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id _s7SwiftUI25AccessibilityViewModifierPAAE23makePropertiesTransform33_71F62EDC1DAE3BBC7A74521E45BA5A66LL8modifier6inputs7outputs15includeGeometry010resolvableE012scrapeableID14AttributeGraph0Y0VyAA0C8NodeListVGSo11AGAttributea_AA01_D6InputsVAA01_D7OutputsVSbAA010ResolvableE0AELLVSgAA010ScrapeableX0VtFZAA0c10AttachmentE0V_Tt5B5Tm(unsigned int a1, __int128 *a2, uint64_t a3, int a4, char a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, unint64_t *a11, uint64_t (*a12)(void), uint64_t a13)
{
  v91 = *MEMORY[0x1E69E9840];
  *&v66 = *(a2 + 6);
  DWORD2(v66) = *(a2 + 14);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    *&v66 = a3;
    DWORD2(v66) = a4;
    v21 = PreferencesOutputs.subscript.getter();
    v22 = *MEMORY[0x1E698D3F8];
    v61 = *MEMORY[0x1E698D3F8];
    if ((v21 & 0x100000000) == 0)
    {
      v22 = v21;
    }
  }

  else
  {
    v22 = *MEMORY[0x1E698D3F8];
    v61 = *MEMORY[0x1E698D3F8];
  }

  v54 = v22;
  v60 = *(a2 + 18);
  v23 = a2[3];
  *&v67[16] = a2[2];
  v68 = v23;
  v69 = a2[4];
  LODWORD(v70) = *(a2 + 20);
  v24 = a2[1];
  v66 = *a2;
  *v67 = v24;
  v58 = _ViewInputs.position.getter();
  v59 = *(a2 + 15);
  v57 = a1;
  v55 = a3;
  v56 = a4;
  if (a5)
  {
    v25 = *(a2 + 9);
    if ((v25 & 0x20) != 0)
    {
      lazy protocol witness table accessor for type AccessibilityCapturesViewResponders and conformance AccessibilityCapturesViewResponders();
      PropertyList.subscript.getter();
      if (v66 == 1)
      {
        *&v66 = a3;
        DWORD2(v66) = a4;
        v26 = PreferencesOutputs.subscript.getter();
        result = AGSubgraphGetCurrent();
        if (!result)
        {
          __break(1u);
          goto LABEL_27;
        }

        v28 = result;
        if ((v26 & 0x100000000) != 0)
        {
          v29 = v61;
        }

        else
        {
          v29 = v26;
        }

        v30 = v29 | (v61 << 32);
        LOBYTE(v66) = 1;
        v31 = 1;
        v53 = 255;
        if ((v25 & 0x40) != 0)
        {
LABEL_15:
          v32 = v30;
          UniqueID.init()();
          v33 = v66;
          result = AGSubgraphGetCurrent();
          if (result)
          {
            LOBYTE(v64[0]) = 1;
            v34 = 1;
            v35 = v60 | (v58 << 32);
            v36 = v59 | (v61 << 32);
            v37 = 255;
            v30 = v32;
LABEL_19:
            *&v87 = v35;
            *(&v87 + 1) = v36;
            *&v88 = 0;
            *(&v88 + 1) = v37;
            v89 = v33;
            *&v90 = v34;
            *(&v90 + 1) = result;
            v51 = v31;
            v52 = v28;
            v50 = v30;
            goto LABEL_20;
          }

LABEL_27:
          __break(1u);
          return result;
        }
      }

      else
      {
        v30 = 0;
        v31 = 0;
        v28 = 0;
        v53 = 0;
        if ((v25 & 0x40) != 0)
        {
          goto LABEL_15;
        }
      }

      v33 = 0;
      result = 0;
      v34 = 0;
      v37 = 0;
      v35 = 0;
      v36 = 0;
      goto LABEL_19;
    }
  }

  v50 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
LABEL_20:
  v38 = a2[3];
  v64[2] = a2[2];
  v64[3] = v38;
  v64[4] = a2[4];
  v65 = *(a2 + 20);
  v39 = a2[1];
  v64[0] = *a2;
  v64[1] = v39;
  _ViewInputs.scrapeableParentID.getter();
  v40 = *(a2 + 2);
  v41 = *(a2 + 6);
  v42 = *(a2 + 9);
  _GraphInputs.interfaceIdiom.getter();
  swift_beginAccess();
  v43 = *(v40 + 16);
  *&v66 = v55;
  DWORD2(v66) = v56;
  v44 = PreferencesOutputs.subscript.getter();
  if ((v44 & 0x100000000) != 0)
  {
    v45 = v61;
  }

  else
  {
    v45 = v44;
  }

  type metadata accessor for AccessibilityViewModifierAccessor<AccessibilityAttachmentModifier>(0, a11, a12, a13);
  *&v66 = v46;
  *(&v66 + 1) = __PAIR64__(a10, v57);
  *v67 = v63;
  *&v67[8] = v62;
  *&v67[24] = v58;
  *&v67[28] = v60;
  *&v68 = __PAIR64__(v43, v59);
  *(&v68 + 1) = __PAIR64__(v54, v41);
  LODWORD(v69) = v45;
  *(&v69 + 1) = a6;
  v70 = a7;
  v71 = a8;
  v72 = a9;
  v73 = v50;
  v74 = 0;
  v75 = v53;
  v76 = 0;
  v77 = 0;
  v78 = v51;
  v79 = v52;
  v80 = v87;
  v81 = v88;
  v82 = v89;
  v83 = v90;
  v84 = (v42 & 0x20) == 0;
  v85 = 0;
  swift_unknownObjectWeakInit();
  v86 = 0;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  v47 = v52;
  outlined init with copy of AccessibilityGeometryUpdater?(&v87, v64, &lazy cache variable for type metadata for AccessibilityGeometryUpdater?, &type metadata for AccessibilityGeometryUpdater, MEMORY[0x1E69E6720], type metadata accessor for Namespace.ID?);
  lazy protocol witness table accessor for type PropertiesTransform and conformance PropertiesTransform();
  v48 = a6;
  v49 = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of PropertiesTransform(&v66);
  AGGraphSetFlags();
  if (a10)
  {
    AGGraphGetFlags();
    AGGraphSetFlags();
  }

  outlined destroy of AccessibilityGeometryUpdater?(&v87, &lazy cache variable for type metadata for AccessibilityGeometryUpdater?, &type metadata for AccessibilityGeometryUpdater, MEMORY[0x1E69E6720], type metadata accessor for Namespace.ID?);

  return v49;
}

void type metadata accessor for AccessibilityViewModifierAccessor<AccessibilityAttachmentModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for AccessibilityViewModifierAccessor(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t initializeWithCopy for AccessibilityGeometryUpdater(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v3;
  *(a1 + 48) = *(a2 + 48);
  v4 = *(a2 + 56);
  *(a1 + 56) = v4;
  v5 = v4;
  return a1;
}

uint64_t storeEnumTagSinglePayload for ScrollViewBehavior.DecelerationState(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

uint64_t initializeWithCopy for PropertiesTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v4 = *(a2 + 72);
  *(a1 + 72) = v4;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  v5 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v5;
  *(a1 + 144) = *(a2 + 144);
  v6 = *(a2 + 152);
  *(a1 + 152) = v6;
  *(a1 + 160) = *(a2 + 160);
  v7 = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 176) = v7;
  *(a1 + 208) = *(a2 + 208);
  v8 = *(a2 + 200);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = v8;
  v9 = *(a2 + 216);
  *(a1 + 216) = v9;
  *(a1 + 224) = *(a2 + 224);
  v10 = *(a2 + 232);
  *(a1 + 232) = v10;
  v11 = v4;
  v12 = v6;
  v13 = v9;
  v14 = v10;
  swift_unknownObjectWeakCopyInit();
  *(a1 + 248) = *(a2 + 248);
  return a1;
}

void destroy for PropertiesTransform(id *a1)
{

  JUMPOUT(0x18D011290);
}

uint64_t outlined destroy of AccessibilityLargeContentViewItem?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  type metadata accessor for AccessibilityUIKitTraits?(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void type metadata accessor for AccessibilityUIKitTraits?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentPresentation> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentPresentation> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentPresentation> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentPresentation>, &type metadata for ContainerBackgroundKeys.TransparentPresentation, &protocol witness table for ContainerBackgroundKeys.TransparentPresentation, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentPresentation> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityChildBehavior.Host and conformance AccessibilityChildBehavior.Host()
{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehavior.Host and conformance AccessibilityChildBehavior.Host;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehavior.Host and conformance AccessibilityChildBehavior.Host)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityChildBehavior.Host, &type metadata for AccessibilityChildBehavior.Host, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehavior.Host and conformance AccessibilityChildBehavior.Host);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehavior.Host and conformance AccessibilityChildBehavior.Host;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehavior.Host and conformance AccessibilityChildBehavior.Host)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityChildBehavior.Host, &type metadata for AccessibilityChildBehavior.Host, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehavior.Host and conformance AccessibilityChildBehavior.Host);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehavior.Host and conformance AccessibilityChildBehavior.Host;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehavior.Host and conformance AccessibilityChildBehavior.Host)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityChildBehavior.Host, &type metadata for AccessibilityChildBehavior.Host, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehavior.Host and conformance AccessibilityChildBehavior.Host);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AccessibilityChildBehavior.Host(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AccessibilityChildBehavior.Host and conformance AccessibilityChildBehavior.Host();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for AccessibilityContainerModifier(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type AccessibilityContainerModifier and conformance AccessibilityContainerModifier();
  result = lazy protocol witness table accessor for type AccessibilityContainerModifier and conformance AccessibilityContainerModifier();
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityContainerModifier and conformance AccessibilityContainerModifier()
{
  result = lazy protocol witness table cache variable for type AccessibilityContainerModifier and conformance AccessibilityContainerModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityContainerModifier and conformance AccessibilityContainerModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityContainerModifier, &type metadata for AccessibilityContainerModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityContainerModifier and conformance AccessibilityContainerModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityContainerModifier and conformance AccessibilityContainerModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityContainerModifier and conformance AccessibilityContainerModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityContainerModifier, &type metadata for AccessibilityContainerModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityContainerModifier and conformance AccessibilityContainerModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityContainerModifier and conformance AccessibilityContainerModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityContainerModifier and conformance AccessibilityContainerModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityContainerModifier, &type metadata for AccessibilityContainerModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityContainerModifier and conformance AccessibilityContainerModifier);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_49(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_51(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_52(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_53(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_55(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_56(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_57(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_59(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_61(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_62(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_63(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_65(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_66(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_67(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_69(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_71(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_72(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_73(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_75(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_76(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_77(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_79(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_81(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_82(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_83(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_85(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_86(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_87(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_89(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_91(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_92(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void @objc _UIHostingView.layoutSubviews()(void *a1)
{
  v1 = a1;
  _UIHostingView.layoutSubviews()();
}

Swift::Void __swiftcall _UIHostingView.layoutSubviews()()
{
  v2 = type metadata accessor for _UIHostingView(0, *((*MEMORY[0x1E69E7D40] & *v1) + 0x50), *((*MEMORY[0x1E69E7D40] & *v1) + 0x58), v0);
  v4.receiver = v1;
  v4.super_class = v2;
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  v3 = _UIHostingView.base.getter();
  UIHostingViewBase.layoutSubviews()();
}

unint64_t type metadata accessor for UIFocusSystem()
{
  result = lazy cache variable for type metadata for UIFocusSystem;
  if (!lazy cache variable for type metadata for UIFocusSystem)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIFocusSystem);
  }

  return result;
}

uint64_t protocol witness for GraphDelegate.updateGraph<A>(body:) in conformance _UIHostingView<A1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, a4);

  return ViewGraphRootValueUpdater.updateGraph<A>(body:)();
}

double _UIHostingView.hostContainerSafeArea.getter()
{
  v0 = _UIHostingView.base.getter();
  UIHostingViewBase._containerSafeArea.getter();
  v2 = v1;

  return v2;
}

void _UIHostingView.hostKeyboardHeight.getter(uint64_t a1)
{
  static Semantics.v7.getter();
  v1 = isLinkedOnOrAfter(_:)();
  if (v1)
  {
    v2 = _UIHostingView.base.getter();
    UIHostingViewBase._keyboardSafeAreaHeight.getter();
  }

  else
  {

    _UIHostingView._legacyHostKeyboardHeight.getter(v1);
  }
}

void *assignWithCopy for FocusStore(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];

  return a1;
}

unint64_t lazy protocol witness table accessor for type UIKitHostContainerFocusItemInput and conformance UIKitHostContainerFocusItemInput()
{
  result = lazy protocol witness table cache variable for type UIKitHostContainerFocusItemInput and conformance UIKitHostContainerFocusItemInput;
  if (!lazy protocol witness table cache variable for type UIKitHostContainerFocusItemInput and conformance UIKitHostContainerFocusItemInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UIKitHostContainerFocusItemInput, &type metadata for UIKitHostContainerFocusItemInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitHostContainerFocusItemInput and conformance UIKitHostContainerFocusItemInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UIKitHostContainerFocusItemInput and conformance UIKitHostContainerFocusItemInput;
  if (!lazy protocol witness table cache variable for type UIKitHostContainerFocusItemInput and conformance UIKitHostContainerFocusItemInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UIKitHostContainerFocusItemInput, &type metadata for UIKitHostContainerFocusItemInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitHostContainerFocusItemInput and conformance UIKitHostContainerFocusItemInput);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SwiftUITextAlwaysOnProvider and conformance SwiftUITextAlwaysOnProvider()
{
  result = lazy protocol witness table cache variable for type SwiftUITextAlwaysOnProvider and conformance SwiftUITextAlwaysOnProvider;
  if (!lazy protocol witness table cache variable for type SwiftUITextAlwaysOnProvider and conformance SwiftUITextAlwaysOnProvider)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SwiftUITextAlwaysOnProvider, &type metadata for SwiftUITextAlwaysOnProvider, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftUITextAlwaysOnProvider and conformance SwiftUITextAlwaysOnProvider);
  }

  return result;
}

void *closure #1 in _UIHostingView.HostViewGraph.modifyViewInputs(inputs:graph:)(void *a1, void *a2)
{
  v2 = [a1 traitCollection];
  v3 = [v2 userInterfaceIdiom];

  result = PropertyList.subscript.getter();
  if (!v5)
  {
    UIUserInterfaceIdiom.idiom.getter(v3, &v5);
    return PropertyList.subscript.setter();
  }

  return result;
}

void type metadata accessor for WeakBox<UIView>(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void _s7SwiftUI7WeakBoxVySo6UIViewCGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void _s7SwiftUI7WeakBoxVySo6UIViewCGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void _s7SwiftUI7WeakBoxVySo6UIViewCGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = type metadata accessor for WeakBox();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ViewResponderGestureContainerFactory and conformance ViewResponderGestureContainerFactory()
{
  result = lazy protocol witness table cache variable for type ViewResponderGestureContainerFactory and conformance ViewResponderGestureContainerFactory;
  if (!lazy protocol witness table cache variable for type ViewResponderGestureContainerFactory and conformance ViewResponderGestureContainerFactory)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ViewResponderGestureContainerFactory, &type metadata for ViewResponderGestureContainerFactory, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ViewResponderGestureContainerFactory and conformance ViewResponderGestureContainerFactory);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UIKitResponderEventBindingBridge.Factory and conformance UIKitResponderEventBindingBridge.Factory()
{
  result = lazy protocol witness table cache variable for type UIKitResponderEventBindingBridge.Factory and conformance UIKitResponderEventBindingBridge.Factory;
  if (!lazy protocol witness table cache variable for type UIKitResponderEventBindingBridge.Factory and conformance UIKitResponderEventBindingBridge.Factory)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UIKitResponderEventBindingBridge.Factory, &type metadata for UIKitResponderEventBindingBridge.Factory, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitResponderEventBindingBridge.Factory and conformance UIKitResponderEventBindingBridge.Factory);
  }

  return result;
}

void specialized _UIHostingView.HostViewGraph.modifyViewInputs(inputs:graph:)(uint64_t *a1, uint64_t a2)
{
  v15[2] = *MEMORY[0x1E69E9840];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    lazy protocol witness table accessor for type UIKitResponderEventBindingBridge.Factory and conformance UIKitResponderEventBindingBridge.Factory();
    PropertyList.subscript.setter();
    v15[0] = &type metadata for ViewResponderGestureContainerFactory;
    v15[1] = lazy protocol witness table accessor for type ViewResponderGestureContainerFactory and conformance ViewResponderGestureContainerFactory();
    PropertyList.subscript.setter();
    type metadata accessor for SwiftUIPlatformProvidersDefinition(0);
    _GraphInputs.platformProvidersDefinition.setter();
    lazy protocol witness table accessor for type UIInteractionResponderProvider and conformance UIInteractionResponderProvider();
    _GraphInputs.coreInteractionResponderProvider.setter();
    if (one-time initialization token for defaultUseSetNeedsLayout != -1)
    {
      swift_once();
    }

    _GraphInputs.updateCycleUseSetNeedsLayout.setter();
    v6 = v5 + *((*MEMORY[0x1E69E7D40] & *v5) + 0x1C0);
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = *(v6 + 1);
      ObjectType = swift_getObjectType();
      (*(v8 + 56))(v5, a1, *(a2 + 16), *(a2 + 24), ObjectType, v8);
      v7 = swift_unknownObjectRelease();
    }

    v10 = MEMORY[0x1EEE9AC00](v7);
    MEMORY[0x18D00AC20](partial apply for closure #1 in _UIHostingView.HostViewGraph.modifyViewInputs(inputs:graph:), v10);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v11 = MEMORY[0x1E6981A78];
    _s7SwiftUI7WeakBoxVySo6UIViewCGMaTm_1(0, &lazy cache variable for type metadata for WeakBox<UIView>, MEMORY[0x1E6981A78]);
    v12 = Attribute.init<A>(body:value:flags:update:)();
    _sypSgWOhTm_8(v15, &lazy cache variable for type metadata for WeakBox<UIView>, v11, _s7SwiftUI7WeakBoxVySo6UIViewCGMaTm_1);
    LODWORD(v15[0]) = v12;
    lazy protocol witness table accessor for type UIKitHostContainerFocusItemInput and conformance UIKitHostContainerFocusItemInput();
    PropertyList.subscript.setter();
    lazy protocol witness table accessor for type SwiftUITextAlwaysOnProvider and conformance SwiftUITextAlwaysOnProvider();
    _ViewInputs.textAlwaysOnProvider.setter();
    v13 = _UIHostingView.navigationBridge.getter();
    if (v13)
    {
      v14 = v13;
      lazy protocol witness table accessor for type IsSearchAllowedInput and conformance IsSearchAllowedInput();
      PropertyList.subscript.getter();

      *(v14 + 160) = v15[0];
    }

    else
    {
    }
  }
}

uint64_t _UIHostingView.navigationBridge.getter()
{
  v0 = _UIHostingView.viewController.getter();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = specialized UIHostingController.navigationBridge.getter();

  return v2;
}

id specialized AccessibilityViewGraph.modifyViewOutputs(outputs:inputs:graph:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 48);
  v6 = *(a2 + 16);
  v28 = *(a2 + 32);
  v29 = v5;
  v7 = *(a2 + 48);
  v30 = *(a2 + 64);
  v8 = *(a2 + 16);
  v27[0] = *a2;
  v27[1] = v8;
  v21 = v28;
  v22 = v7;
  v23 = *(a2 + 64);
  v31 = *(a2 + 80);
  v24 = *(a2 + 80);
  v19 = v27[0];
  v20 = v6;
  LOBYTE(v17[0]) = 0;
  outlined init with copy of _ViewInputs(v27, v25);
  lazy protocol witness table accessor for type AccessibilityCapturesViewResponders and conformance AccessibilityCapturesViewResponders();
  PropertyList.subscript.setter();
  v25[2] = v21;
  v25[3] = v22;
  v25[4] = v23;
  v26 = v24;
  v25[0] = v19;
  v25[1] = v20;
  v9 = *a1;
  v10 = a1[1];
  *&v17[0] = v22;
  DWORD2(v17[0]) = DWORD2(v22);
  v11 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  v12 = *MEMORY[0x1E698D3F8];
  if ((v11 & 1) == 0)
  {
    goto LABEL_4;
  }

  result = AGSubgraphGetCurrent();
  if (result)
  {
    v14 = result;
    type metadata accessor for AccessibilityContainerResolver<AccessibilityChildBehavior.Host>(0, &lazy cache variable for type metadata for AccessibilityContainerResolver<AccessibilityChildBehavior.Host>, lazy protocol witness table accessor for type AccessibilityChildBehavior.Host and conformance AccessibilityChildBehavior.Host, &type metadata for AccessibilityChildBehavior.Host, type metadata accessor for AccessibilityContainerResolver);
    _s7SwiftUI25AccessibilityViewModifierPAAE23makePropertiesTransform33_71F62EDC1DAE3BBC7A74521E45BA5A668modifier6inputs7outputs15includeGeometry010resolvableE012scrapeableID14AttributeGraph0Y0VyAA0C8NodeListVGSo11AGAttributea_AA01_D6InputsVAA01_D7OutputsVSbAA010ResolvableE0AELLVSgAA010ScrapeableX0VtFZAA0c9ContainerE0V_Tt5B5(v12, v25, v9, v10, 1, v14, v12, v15, &protocol witness table for AccessibilityContainerResolver<A>, 0);

LABEL_4:
    PreferencesOutputs.subscript.setter();
    PreferencesOutputs.subscript.getter();
    *(v2 + 8) = AGCreateWeakAttribute();
    PreferencesOutputs.subscript.getter();
    v16 = AGCreateWeakAttribute();
    v17[2] = v21;
    v17[3] = v22;
    v17[4] = v23;
    v18 = v24;
    v17[0] = v19;
    v17[1] = v20;
    result = outlined destroy of _ViewInputs(v17);
    *(v3 + 28) = v16;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for ViewGraphFeature.modifyViewOutputs(outputs:inputs:graph:) in conformance PlatformItemListViewGraph()
{
  PreferencesOutputs.subscript.getter();
  result = AGCreateWeakAttribute();
  *v0 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type SwiftUIAllowsHitTestingAccessibilityProvider and conformance SwiftUIAllowsHitTestingAccessibilityProvider()
{
  result = lazy protocol witness table cache variable for type SwiftUIAllowsHitTestingAccessibilityProvider and conformance SwiftUIAllowsHitTestingAccessibilityProvider;
  if (!lazy protocol witness table cache variable for type SwiftUIAllowsHitTestingAccessibilityProvider and conformance SwiftUIAllowsHitTestingAccessibilityProvider)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SwiftUIAllowsHitTestingAccessibilityProvider, &type metadata for SwiftUIAllowsHitTestingAccessibilityProvider, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftUIAllowsHitTestingAccessibilityProvider and conformance SwiftUIAllowsHitTestingAccessibilityProvider);
  }

  return result;
}

uint64_t *assignWithCopy for FocusedValues(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  a1[2] = a2[2];
  a1[3] = a2[3];
  return a1;
}

uint64_t specialized FocusViewGraph.modifyViewInputs(inputs:graph:)()
{
  lazy protocol witness table accessor for type FocusedItemInputKey and conformance FocusedItemInputKey();
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type FocusedValuesInputKey and conformance FocusedValuesInputKey();
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type FocusStoreInputKey and conformance FocusStoreInputKey();
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type _GraphInputs.IsFocusSystemEnabledKey and conformance _GraphInputs.IsFocusSystemEnabledKey();
  return PropertyList.subscript.setter();
}

uint64_t ViewGraph.setFocusedValues(_:)(uint64_t *a1)
{
  result = swift_beginAccess();
  if ((*(v1 + 361) & 0x20) != 0)
  {
    lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
    result = ViewGraph.subscript.getter();
    if (result)
    {
      result = *(result + 4);
      if (result != *MEMORY[0x1E698D3F8])
      {
        result = AGGraphSetValue();
        if (result)
        {
          swift_beginAccess();
          result = swift_unknownObjectWeakLoadStrong();
          if (result)
          {
            v3 = *(v1 + 208);
            ObjectType = swift_getObjectType();
            (*(*(v3 + 8) + 16))(ObjectType);
            return swift_unknownObjectRelease();
          }
        }
      }
    }
  }

  return result;
}

uint64_t _UIHostingView.focusedValues.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x1D0);
  v3 = v2[8];
  *a1 = *v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v2 + 1);
}

unint64_t lazy protocol witness table accessor for type FocusedItemInputKey and conformance FocusedItemInputKey()
{
  result = lazy protocol witness table cache variable for type FocusedItemInputKey and conformance FocusedItemInputKey;
  if (!lazy protocol witness table cache variable for type FocusedItemInputKey and conformance FocusedItemInputKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FocusedItemInputKey, &type metadata for FocusedItemInputKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FocusedItemInputKey and conformance FocusedItemInputKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FocusedItemInputKey and conformance FocusedItemInputKey;
  if (!lazy protocol witness table cache variable for type FocusedItemInputKey and conformance FocusedItemInputKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FocusedItemInputKey, &type metadata for FocusedItemInputKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FocusedItemInputKey and conformance FocusedItemInputKey);
  }

  return result;
}

uint64_t AccessibilityViewGraph.modifyViewInputs(inputs:graph:)(uint64_t *a1, uint64_t a2)
{
  *(a1 + 9) |= 0x1000u;
  PreferenceKeys.add(_:)();
  lazy protocol witness table accessor for type SwiftUITextAccessibilityProvider and conformance SwiftUITextAccessibilityProvider();
  _ViewInputs.textAccessibilityProvider.setter();
  lazy protocol witness table accessor for type SwiftUIImageAccessibilityProvider and conformance SwiftUIImageAccessibilityProvider();
  _ViewInputs.imageAccessibilityProvider.setter();
  lazy protocol witness table accessor for type SwiftUIPrivacyReductionAccessibilityProvider and conformance SwiftUIPrivacyReductionAccessibilityProvider();
  _ViewInputs.privacyReductionAccessibilityProvider.setter();
  lazy protocol witness table accessor for type SwiftUILayoutAccessibilityProvider and conformance SwiftUILayoutAccessibilityProvider();
  _ViewInputs.layoutAccessibilityProvider.setter();
  lazy protocol witness table accessor for type SwiftUIGestureAccessibilityProvider and conformance SwiftUIGestureAccessibilityProvider();
  _ViewInputs.gestureAccessibilityProvider.setter();
  lazy protocol witness table accessor for type SwiftUIOpacityAccessibilityProvider and conformance SwiftUIOpacityAccessibilityProvider();
  _ViewInputs.opacityAccessibilityProvider.setter();
  lazy protocol witness table accessor for type SwiftUIContentShapeAccessibilityProvider and conformance SwiftUIContentShapeAccessibilityProvider();
  _ViewInputs.contentShapeAccessibilityProvider.setter();
  lazy protocol witness table accessor for type SwiftUIAllowsHitTestingAccessibilityProvider and conformance SwiftUIAllowsHitTestingAccessibilityProvider();
  _ViewInputs.allowsHitTestingAccessibilityProvider.setter();
  lazy protocol witness table accessor for type SwiftUIHiddenAccessibilityProvider and conformance SwiftUIHiddenAccessibilityProvider();
  _ViewInputs.hiddenAccessibilityProvider.setter();
  _ViewInputs.accessibilityPreferenceProvider.setter();
  swift_beginAccess();
  if ((*(a2 + 361) & 0x10) != 0)
  {
    *(a1 + 9) |= 0x40u;
    LOBYTE(v6) = 1;
    lazy protocol witness table accessor for type AccessibilityCapturesViewResponders and conformance AccessibilityCapturesViewResponders();
    PropertyList.subscript.setter();
  }

  _ViewInputs.makeRootAccessibilityRelationshipScope()();
  type metadata accessor for AccessibilityRelationshipScope();
  _s7SwiftUI30AccessibilityRelationshipScopeCAcA11PropertyKeyAAWlTm_0(&lazy protocol witness table cache variable for type AccessibilityRelationshipScope and conformance AccessibilityRelationshipScope, type metadata accessor for AccessibilityRelationshipScope, protocol conformance descriptor for AccessibilityRelationshipScope);
  PropertyList.subscript.getter();

  *v2 = v6;
  lazy protocol witness table accessor for type AccessibilityFocusStoreInputKey and conformance AccessibilityFocusStoreInputKey();
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type AccessibilityFocusInputKey and conformance AccessibilityFocusInputKey();
  result = PropertyList.subscript.setter();
  if ((*(a2 + 361) & 0x20) != 0 && *(v2 + 45) == 1)
  {
    result = ViewGraph.parentHost.getter();
    if (result)
    {

      result = GraphHost.removePreference<A>(_:)();
      *(v2 + 45) = 0;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _GraphInputs.IsFocusSystemEnabledKey and conformance _GraphInputs.IsFocusSystemEnabledKey()
{
  result = lazy protocol witness table cache variable for type _GraphInputs.IsFocusSystemEnabledKey and conformance _GraphInputs.IsFocusSystemEnabledKey;
  if (!lazy protocol witness table cache variable for type _GraphInputs.IsFocusSystemEnabledKey and conformance _GraphInputs.IsFocusSystemEnabledKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _GraphInputs.IsFocusSystemEnabledKey, &type metadata for _GraphInputs.IsFocusSystemEnabledKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _GraphInputs.IsFocusSystemEnabledKey and conformance _GraphInputs.IsFocusSystemEnabledKey);
  }

  return result;
}

Swift::Void __swiftcall _ViewInputs.makeRootAccessibilityRelationshipScope()()
{
  type metadata accessor for AccessibilityRelationshipScope();
  lazy protocol witness table accessor for type AccessibilityRelationshipScope and conformance AccessibilityRelationshipScope(&lazy protocol witness table cache variable for type AccessibilityRelationshipScope and conformance AccessibilityRelationshipScope, protocol conformance descriptor for AccessibilityRelationshipScope);
  PropertyList.subscript.getter();
  if (v2)
  {
  }

  else
  {
    v0 = swift_allocObject();
    v1 = MEMORY[0x1E69E7CC8];
    v0[2] = MEMORY[0x1E69E7CC8];
    v0[3] = v1;
    v0[4] = v1;
    PropertyList.subscript.setter();
  }
}

unint64_t lazy protocol witness table accessor for type SwiftUIImageAccessibilityProvider and conformance SwiftUIImageAccessibilityProvider()
{
  result = lazy protocol witness table cache variable for type SwiftUIImageAccessibilityProvider and conformance SwiftUIImageAccessibilityProvider;
  if (!lazy protocol witness table cache variable for type SwiftUIImageAccessibilityProvider and conformance SwiftUIImageAccessibilityProvider)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SwiftUIImageAccessibilityProvider, &type metadata for SwiftUIImageAccessibilityProvider, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftUIImageAccessibilityProvider and conformance SwiftUIImageAccessibilityProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SwiftUITextAccessibilityProvider and conformance SwiftUITextAccessibilityProvider()
{
  result = lazy protocol witness table cache variable for type SwiftUITextAccessibilityProvider and conformance SwiftUITextAccessibilityProvider;
  if (!lazy protocol witness table cache variable for type SwiftUITextAccessibilityProvider and conformance SwiftUITextAccessibilityProvider)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SwiftUITextAccessibilityProvider, &type metadata for SwiftUITextAccessibilityProvider, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftUITextAccessibilityProvider and conformance SwiftUITextAccessibilityProvider);
  }

  return result;
}

uint64_t protocol witness for ViewGraphFeature.modifyViewInputs(inputs:graph:) in conformance PlatformItemListViewGraph(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  if ((*(a2 + 361) & 2) != 0)
  {
    result = _s7SwiftUI11_ViewInputsV22addPlatformItemListKey5flags13editOperationyxm_AA0fgH8FlagsSetV04EditL0OSgtAA0fghM0RzlFAA03AllfghM0V_Ttg5(2u);
    *(v2 + 8) = 1;
  }

  return result;
}

uint64_t protocol witness for ViewGraphFeature.modifyViewInputs(inputs:graph:) in conformance _UIHostingView<A>.EnableVFDFeature(uint64_t result)
{
  v1 = *(result + 36);
  if ((v1 & 0x400) == 0)
  {
    *(result + 36) = v1 | 0x400;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SwiftUIOpacityAccessibilityProvider and conformance SwiftUIOpacityAccessibilityProvider()
{
  result = lazy protocol witness table cache variable for type SwiftUIOpacityAccessibilityProvider and conformance SwiftUIOpacityAccessibilityProvider;
  if (!lazy protocol witness table cache variable for type SwiftUIOpacityAccessibilityProvider and conformance SwiftUIOpacityAccessibilityProvider)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SwiftUIOpacityAccessibilityProvider, &type metadata for SwiftUIOpacityAccessibilityProvider, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftUIOpacityAccessibilityProvider and conformance SwiftUIOpacityAccessibilityProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SwiftUIContentShapeAccessibilityProvider and conformance SwiftUIContentShapeAccessibilityProvider()
{
  result = lazy protocol witness table cache variable for type SwiftUIContentShapeAccessibilityProvider and conformance SwiftUIContentShapeAccessibilityProvider;
  if (!lazy protocol witness table cache variable for type SwiftUIContentShapeAccessibilityProvider and conformance SwiftUIContentShapeAccessibilityProvider)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SwiftUIContentShapeAccessibilityProvider, &type metadata for SwiftUIContentShapeAccessibilityProvider, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftUIContentShapeAccessibilityProvider and conformance SwiftUIContentShapeAccessibilityProvider);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AccessibilityRelationshipScope and conformance AccessibilityRelationshipScope(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for AccessibilityRelationshipScope();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s7SwiftUI30AccessibilityRelationshipScopeCAcA11PropertyKeyAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t lazy protocol witness table accessor for type AccessibilityFocusStoreInputKey and conformance AccessibilityFocusStoreInputKey()
{
  result = lazy protocol witness table cache variable for type AccessibilityFocusStoreInputKey and conformance AccessibilityFocusStoreInputKey;
  if (!lazy protocol witness table cache variable for type AccessibilityFocusStoreInputKey and conformance AccessibilityFocusStoreInputKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityFocusStoreInputKey, &type metadata for AccessibilityFocusStoreInputKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityFocusStoreInputKey and conformance AccessibilityFocusStoreInputKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityFocusStoreInputKey and conformance AccessibilityFocusStoreInputKey;
  if (!lazy protocol witness table cache variable for type AccessibilityFocusStoreInputKey and conformance AccessibilityFocusStoreInputKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityFocusStoreInputKey, &type metadata for AccessibilityFocusStoreInputKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityFocusStoreInputKey and conformance AccessibilityFocusStoreInputKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SwiftUIGestureAccessibilityProvider and conformance SwiftUIGestureAccessibilityProvider()
{
  result = lazy protocol witness table cache variable for type SwiftUIGestureAccessibilityProvider and conformance SwiftUIGestureAccessibilityProvider;
  if (!lazy protocol witness table cache variable for type SwiftUIGestureAccessibilityProvider and conformance SwiftUIGestureAccessibilityProvider)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SwiftUIGestureAccessibilityProvider, &type metadata for SwiftUIGestureAccessibilityProvider, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftUIGestureAccessibilityProvider and conformance SwiftUIGestureAccessibilityProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SwiftUIPrivacyReductionAccessibilityProvider and conformance SwiftUIPrivacyReductionAccessibilityProvider()
{
  result = lazy protocol witness table cache variable for type SwiftUIPrivacyReductionAccessibilityProvider and conformance SwiftUIPrivacyReductionAccessibilityProvider;
  if (!lazy protocol witness table cache variable for type SwiftUIPrivacyReductionAccessibilityProvider and conformance SwiftUIPrivacyReductionAccessibilityProvider)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SwiftUIPrivacyReductionAccessibilityProvider, &type metadata for SwiftUIPrivacyReductionAccessibilityProvider, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftUIPrivacyReductionAccessibilityProvider and conformance SwiftUIPrivacyReductionAccessibilityProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SwiftUILayoutAccessibilityProvider and conformance SwiftUILayoutAccessibilityProvider()
{
  result = lazy protocol witness table cache variable for type SwiftUILayoutAccessibilityProvider and conformance SwiftUILayoutAccessibilityProvider;
  if (!lazy protocol witness table cache variable for type SwiftUILayoutAccessibilityProvider and conformance SwiftUILayoutAccessibilityProvider)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SwiftUILayoutAccessibilityProvider, &type metadata for SwiftUILayoutAccessibilityProvider, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftUILayoutAccessibilityProvider and conformance SwiftUILayoutAccessibilityProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityFocusInputKey and conformance AccessibilityFocusInputKey()
{
  result = lazy protocol witness table cache variable for type AccessibilityFocusInputKey and conformance AccessibilityFocusInputKey;
  if (!lazy protocol witness table cache variable for type AccessibilityFocusInputKey and conformance AccessibilityFocusInputKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityFocusInputKey, &type metadata for AccessibilityFocusInputKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityFocusInputKey and conformance AccessibilityFocusInputKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityFocusInputKey and conformance AccessibilityFocusInputKey;
  if (!lazy protocol witness table cache variable for type AccessibilityFocusInputKey and conformance AccessibilityFocusInputKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityFocusInputKey, &type metadata for AccessibilityFocusInputKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityFocusInputKey and conformance AccessibilityFocusInputKey);
  }

  return result;
}

uint64_t static UITraitBridgedEnvironmentPropertyKeyLookup.lookup(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8[7] = a1;
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a2;
  type metadata accessor for UITraitCollection?(0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for implicit closure #1 in static UITraitBridgedEnvironmentPropertyKeyLookup.lookup(in:), v8, MEMORY[0x1E69E73E0], AssociatedTypeWitness, v6, a4);
}

uint64_t EnvironmentValues.getBridgedValue<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v5 = type metadata accessor for UITraitBridgedEnvironmentPropertyKeyLookup(0, a2, a3, a4);
  swift_getWitnessTable(protocol conformance descriptor for UITraitBridgedEnvironmentPropertyKeyLookup<A>, v5, v7);
  return EnvironmentValues.valueWithSecondaryLookup<A>(_:)();
}

void type metadata accessor for UITraitCollection?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UITraitCollection?)
  {
    type metadata accessor for UITraitCollection();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for UITraitCollection?);
    }
  }
}

uint64_t static TypesettingConfigurationKey.read(from:)()
{
  v0 = type metadata accessor for TypesettingLanguage();
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  type metadata accessor for Locale.Language?(0, v1);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale.Language();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x18D00DA60](v7);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of Locale.Language?(v4, v10);
    v11 = static TypesettingLanguage.automatic.getter();
    MEMORY[0x18D008A60](&v16, v11);
    v14 = v16;
    v15 = v17;
    return TypesettingConfiguration.init(language:languageAwareLineHeightRatio:)();
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    v13 = static TypesettingLanguage.explicit(_:)();
    MEMORY[0x18D008A60](&v16, v13);
    v14 = v16;
    v15 = v17;
    TypesettingConfiguration.init(language:languageAwareLineHeightRatio:)();
    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t outlined destroy of Locale.Language?(uint64_t a1, double a2)
{
  type metadata accessor for Locale.Language?(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static UITraitBridgedEnvironmentResolver.read<A>(for:from:)(uint64_t a1, void *a2)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    v8 = result;
    v11 = a2;
    v9 = *a2;
    v10 = v11[1];
    v13[3] = swift_getAssociatedTypeWitness();
    __swift_allocate_boxed_opaque_existential_1(v13);
    v13[4] = v9;
    v13[5] = v10;
    EnvironmentValues.getBridgedValue<A>(for:)(a1, a1, v8, v12);
    swift_getAssociatedTypeWitness();
    return swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized static UIKitPlatformColorDefinition.resolvedHDRColor(_:environment:)(void *a1, void **a2)
{
  v3 = a2[1];
  v4 = objc_allocWithZone(type metadata accessor for ViewGraphHostEnvironmentWrapper());
  swift_unknownObjectRetain();
  v5 = [v4 init];
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<InheritedTraitCollectionKey>, &type metadata for InheritedTraitCollectionKey, &protocol witness table for InheritedTraitCollectionKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<InheritedTraitCollectionKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<InheritedTraitCollectionKey>, &type metadata for InheritedTraitCollectionKey, &protocol witness table for InheritedTraitCollectionKey);

  v6 = PropertyList.subscript.getter();
  if (v19)
  {
    v7 = v19;
  }

  else
  {
    v6 = [objc_opt_self() currentTraitCollection];
    v7 = v6;
  }

  MEMORY[0x1EEE9AC00](v6);
  v8 = v5;
  v9 = v19;
  v10 = UITraitCollection._modifyingTraits(environmentWrapper:mutations:)();

  UICoreTraitCollectionResolutionOptions.init(rawValue:)();
  v11 = UITraitCollection.coreResolvedBaseTraitCollection(environment:wrapper:options:)();

  v12 = v11;
  v13 = UITraitCollection.coreResolvedGlassMaterialTraitCollection(environment:wrapper:)();

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<InheritedColorSeedKey>, &type metadata for InheritedColorSeedKey, &protocol witness table for InheritedColorSeedKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<InheritedColorSeedKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<InheritedColorSeedKey>, &type metadata for InheritedColorSeedKey, &protocol witness table for InheritedColorSeedKey);
  if (v3)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v14 = [a1 resolvedColorWithTraitCollection_];
  v15 = Color.Resolved.init(platformColor:)();
  v17 = v16;

  swift_unknownObjectRelease();
  if (v17)
  {
    return 0;
  }

  else
  {
    return v15;
  }
}

uint64_t specialized static TypesettingConfigurationKey.write(to:value:)(uint64_t a1, uint64_t a2, double a3)
{
  type metadata accessor for Locale.Language?(0, a3);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale.Language();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TypesettingLanguage.Storage();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TypesettingLanguage();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TypesettingLanguage(a2, v17);
  outlined init with take of TypesettingLanguage.Storage(v17, v14, v18);
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0, v19);
  if ((*(*(v20 - 8) + 48))(v14, 2, v20))
  {
    (*(v9 + 56))(v7, 1, 1, v8);
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    return UIMutableTraits.typesettingLanguage.setter();
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    (*(v9 + 16))(v7, v11, v8);
    (*(v9 + 56))(v7, 0, 1, v8);
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    UIMutableTraits.typesettingLanguage.setter();
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t outlined init with take of TypesettingLanguage.Storage(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for TypesettingLanguage.Storage();
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of TypesettingLanguage(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypesettingLanguage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for Locale.Language?(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for Locale.Language?)
  {
    type metadata accessor for Locale.Language();
    v2 = type metadata accessor for Optional();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for Locale.Language?);
    }
  }
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags))
  {
    type metadata accessor for Locale.Language();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags));
    }
  }
}

uint64_t outlined consume of Material?(uint64_t a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return outlined consume of Material.ID(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of Material.ID(uint64_t result, unsigned __int8 a2)
{
  if (a2 == 2)
  {
  }

  if (a2 <= 1u)
  {
  }

  return v2;
}

Swift::Void __swiftcall _UIHostingView.beginTransaction()()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  v4[2] = *((v2 & v1) + 0x50);
  v4[3] = *((v2 & v1) + 0x58);
  v4[4] = v3;

  onMainThread(do:)();
}

uint64_t closure #1 in _UIHostingView.beginTransaction()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for defaultUseSetNeedsLayout != -1)
  {
    swift_once();
  }

  if (static UIKitUpdateCycle.defaultUseSetNeedsLayout == 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = _UIHostingView.base.getter();
      UIHostingViewBase._setNeedsUpdate()();
    }
  }

  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a1;

  if (_UIUpdateCycleEnabled())
  {
    MEMORY[0x18D001810](partial apply for closure #1 in closure #1 in _UIHostingView.beginTransaction(), v9);
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSRunLoop, 0x1E695DFD0);
  MEMORY[0x18D00E3D0](partial apply for closure #1 in closure #1 in _UIHostingView.beginTransaction(), v9);
}

uint64_t one-time initialization function for defaultUseSetNeedsLayout()
{
  result = closure #1 in variable initialization expression of static UIKitUpdateCycle.defaultUseSetNeedsLayout();
  static UIKitUpdateCycle.defaultUseSetNeedsLayout = result & 1;
  return result;
}

uint64_t closure #1 in variable initialization expression of static UIKitUpdateCycle.defaultUseSetNeedsLayout()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = MEMORY[0x18D00C850](0xD00000000000001BLL, 0x800000018CD43340);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v6, v7);
    outlined destroy of Any?(v7);
    v3 = MEMORY[0x18D00C850](0xD00000000000001BLL, 0x800000018CD43340);
    LOBYTE(v4) = [v0 BOOLForKey_];

    v0 = v3;
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    outlined destroy of Any?(v7);
    static Semantics.v7.getter();
    v4 = isLinkedOnOrAfter(_:)();
  }

  return v4 & 1;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<()>, type metadata accessor for ());
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityCoreNotification>, &lazy cache variable for type metadata for AccessibilityCoreNotification, &protocol descriptor for AccessibilityCoreNotification);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<(index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID)>, &lazy cache variable for type metadata for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID), type metadata accessor for TableColumnCollection.Entry);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<(_:)>, type metadata accessor for (_:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<(_:)>, type metadata accessor for (_:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<HitTestTrace<UIView>>, type metadata accessor for HitTestTrace<UIView>, type metadata accessor for HitTestTrace<UIView>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<HitTestTrace<ViewResponder>>, type metadata accessor for HitTestTrace<ViewResponder>, type metadata accessor for HitTestTrace<ViewResponder>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<(String?, String)>, type metadata accessor for (String?, String), type metadata accessor for (String?, String));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<(key: String?, value: String)>, type metadata accessor for (key: String?, value: String), type metadata accessor for (key: String?, value: String));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<EventBindingSource>, &lazy cache variable for type metadata for EventBindingSource, MEMORY[0x1E697F3D0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<NSAttributedStringKey>, type metadata accessor for NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<UITextFormattingViewControllerComponentKey>, type metadata accessor for UITextFormattingViewControllerComponentKey, type metadata accessor for UITextFormattingViewControllerComponentKey);
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

void _UIHostingView.safeAreaRegions.setter(uint64_t a1)
{
  v1 = _UIHostingView.base.getter();
  UIHostingViewBase.safeAreaRegions.setter();
}

void @objc _UIHostingView.tintColorDidChange()(void *a1)
{
  v1 = a1;
  _UIHostingView.tintColorDidChange()();
}

Swift::Void __swiftcall _UIHostingView.tintColorDidChange()()
{
  v0 = _UIHostingView.base.getter();
  UIHostingViewBase.tintColorDidChange()();
}

uint64_t outlined consume of ListItemTint?(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t static SwiftUIPlatformProvidersDefinition.updateProviders(_:)(void *a1)
{
  v2 = lazy protocol witness table accessor for type SwiftUIDefaultAccentColorProvider and conformance SwiftUIDefaultAccentColorProvider();
  *a1 = &type metadata for SwiftUIDefaultAccentColorProvider;
  a1[1] = v2;
  v3 = lazy protocol witness table accessor for type KitCoreUINamedColorProvider and conformance KitCoreUINamedColorProvider();
  a1[2] = &type metadata for KitCoreUINamedColorProvider;
  a1[3] = v3;
  v4 = lazy protocol witness table accessor for type SwiftUIAccessibilityTextResolver and conformance SwiftUIAccessibilityTextResolver();
  a1[6] = &type metadata for SwiftUIAccessibilityTextResolver;
  a1[7] = v4;
  v5 = lazy protocol witness table accessor for type UITraitBridgedEnvironmentResolver and conformance UITraitBridgedEnvironmentResolver();
  a1[8] = &type metadata for UITraitBridgedEnvironmentResolver;
  a1[9] = v5;
  v6 = lazy protocol witness table accessor for type SwiftUIResolvedTextProvider and conformance SwiftUIResolvedTextProvider();
  a1[4] = &type metadata for SwiftUIResolvedTextProvider;
  a1[5] = v6;
  v7 = lazy protocol witness table accessor for type SwiftUIGestureConstantsProvider and conformance SwiftUIGestureConstantsProvider();
  a1[14] = &type metadata for SwiftUIGestureConstantsProvider;
  a1[15] = v7;
  v8 = lazy protocol witness table accessor for type SwiftUILazyContainerInputsProvider and conformance SwiftUILazyContainerInputsProvider();
  a1[16] = &type metadata for SwiftUILazyContainerInputsProvider;
  a1[17] = v8;
  result = lazy protocol witness table accessor for type SwiftUILazyLayoutProvider and conformance SwiftUILazyLayoutProvider();
  a1[18] = &type metadata for SwiftUILazyLayoutProvider;
  a1[19] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type SwiftUIDefaultAccentColorProvider and conformance SwiftUIDefaultAccentColorProvider()
{
  result = lazy protocol witness table cache variable for type SwiftUIDefaultAccentColorProvider and conformance SwiftUIDefaultAccentColorProvider;
  if (!lazy protocol witness table cache variable for type SwiftUIDefaultAccentColorProvider and conformance SwiftUIDefaultAccentColorProvider)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SwiftUIDefaultAccentColorProvider, &type metadata for SwiftUIDefaultAccentColorProvider, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftUIDefaultAccentColorProvider and conformance SwiftUIDefaultAccentColorProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KitCoreUINamedColorProvider and conformance KitCoreUINamedColorProvider()
{
  result = lazy protocol witness table cache variable for type KitCoreUINamedColorProvider and conformance KitCoreUINamedColorProvider;
  if (!lazy protocol witness table cache variable for type KitCoreUINamedColorProvider and conformance KitCoreUINamedColorProvider)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for KitCoreUINamedColorProvider, &type metadata for KitCoreUINamedColorProvider, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type KitCoreUINamedColorProvider and conformance KitCoreUINamedColorProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SwiftUIAccessibilityTextResolver and conformance SwiftUIAccessibilityTextResolver()
{
  result = lazy protocol witness table cache variable for type SwiftUIAccessibilityTextResolver and conformance SwiftUIAccessibilityTextResolver;
  if (!lazy protocol witness table cache variable for type SwiftUIAccessibilityTextResolver and conformance SwiftUIAccessibilityTextResolver)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SwiftUIAccessibilityTextResolver, &type metadata for SwiftUIAccessibilityTextResolver, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftUIAccessibilityTextResolver and conformance SwiftUIAccessibilityTextResolver);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UITraitBridgedEnvironmentResolver and conformance UITraitBridgedEnvironmentResolver()
{
  result = lazy protocol witness table cache variable for type UITraitBridgedEnvironmentResolver and conformance UITraitBridgedEnvironmentResolver;
  if (!lazy protocol witness table cache variable for type UITraitBridgedEnvironmentResolver and conformance UITraitBridgedEnvironmentResolver)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UITraitBridgedEnvironmentResolver, &type metadata for UITraitBridgedEnvironmentResolver, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UITraitBridgedEnvironmentResolver and conformance UITraitBridgedEnvironmentResolver);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SwiftUIResolvedTextProvider and conformance SwiftUIResolvedTextProvider()
{
  result = lazy protocol witness table cache variable for type SwiftUIResolvedTextProvider and conformance SwiftUIResolvedTextProvider;
  if (!lazy protocol witness table cache variable for type SwiftUIResolvedTextProvider and conformance SwiftUIResolvedTextProvider)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SwiftUIResolvedTextProvider, &type metadata for SwiftUIResolvedTextProvider, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftUIResolvedTextProvider and conformance SwiftUIResolvedTextProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SwiftUIGestureConstantsProvider and conformance SwiftUIGestureConstantsProvider()
{
  result = lazy protocol witness table cache variable for type SwiftUIGestureConstantsProvider and conformance SwiftUIGestureConstantsProvider;
  if (!lazy protocol witness table cache variable for type SwiftUIGestureConstantsProvider and conformance SwiftUIGestureConstantsProvider)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SwiftUIGestureConstantsProvider, &type metadata for SwiftUIGestureConstantsProvider, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftUIGestureConstantsProvider and conformance SwiftUIGestureConstantsProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SwiftUILazyContainerInputsProvider and conformance SwiftUILazyContainerInputsProvider()
{
  result = lazy protocol witness table cache variable for type SwiftUILazyContainerInputsProvider and conformance SwiftUILazyContainerInputsProvider;
  if (!lazy protocol witness table cache variable for type SwiftUILazyContainerInputsProvider and conformance SwiftUILazyContainerInputsProvider)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SwiftUILazyContainerInputsProvider, &type metadata for SwiftUILazyContainerInputsProvider, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftUILazyContainerInputsProvider and conformance SwiftUILazyContainerInputsProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SwiftUILazyLayoutProvider and conformance SwiftUILazyLayoutProvider()
{
  result = lazy protocol witness table cache variable for type SwiftUILazyLayoutProvider and conformance SwiftUILazyLayoutProvider;
  if (!lazy protocol witness table cache variable for type SwiftUILazyLayoutProvider and conformance SwiftUILazyLayoutProvider)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SwiftUILazyLayoutProvider, &type metadata for SwiftUILazyLayoutProvider, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftUILazyLayoutProvider and conformance SwiftUILazyLayoutProvider);
  }

  return result;
}

unint64_t type metadata accessor for UITraitCollection()
{
  result = lazy cache variable for type metadata for UITraitCollection;
  if (!lazy cache variable for type metadata for UITraitCollection)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UITraitCollection);
  }

  return result;
}

uint64_t static UIKitPlatformColorDefinition.resolvedColor(_:environment:)(void *a1, __int128 *a2)
{
  v4 = *a2;
  result = specialized static UIKitPlatformColorDefinition.resolvedHDRColor(_:environment:)(a1, &v4);
  if ((v3 & 0x100000000) != 0)
  {
    return 0;
  }

  return result;
}

uint64_t @objc _UIHostingView._layoutHeightDependsOnWidth.getter(void *a1)
{
  v1 = a1;
  v2 = _UIHostingView._layoutHeightDependsOnWidth.getter();

  return v2 & 1;
}

uint64_t _UIHostingView._layoutHeightDependsOnWidth.getter()
{
  v0 = _UIHostingView.base.getter();
  v1 = UIHostingViewBase._layoutHeightDependsOnWidth.getter();

  return v1 & 1;
}

uint64_t initializeWithCopy for UIHostingConfigurationStorage(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 49) = *(a2 + 49);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 81) = *(a2 + 81);
  *(a1 + 97) = *(a2 + 97);
  v6 = a3[9];
  v7 = type metadata accessor for UICellConfigurationState();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a2 + v6, 1, v7))
  {
    type metadata accessor for UICellConfigurationState?(0);
    memcpy((a1 + v6), (a2 + v6), *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(a1 + v6, a2 + v6, v7);
    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  v10 = a3[11];
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(swift_unknownObjectWeakCopyInit() + 8) = *(a2 + v10 + 8);
  return a1;
}

void destroy for UIHostingConfigurationStorage(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 36);
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1 + v3, 1, v4))
  {
    (*(v5 + 8))(a1 + v3, v4);
  }

  JUMPOUT(0x18D011290);
}

uint64_t UIHostingConfiguration.delegate.getter(uint64_t a1)
{
  v3 = type metadata accessor for UIHostingConfigurationStorage(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of UIHostingConfigurationStorage(v1 + *(a1 + 56), v5, type metadata accessor for UIHostingConfigurationStorage);
  Strong = swift_unknownObjectWeakLoadStrong();
  outlined destroy of UIHostingConfigurationStorage(v5, type metadata accessor for UIHostingConfigurationStorage);
  return Strong;
}

uint64_t UIHostingContentView.hostingView<A>(_:willUpdate:)(void *a1, uint64_t a2)
{
  v5 = *a1 & *MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x710);
  v17[0] = *((*MEMORY[0x1E69E7D40] & *v2) + 0x700);
  v17[1] = v6;
  v7 = type metadata accessor for UIHostingConfiguration(0, v17);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - v9;
  specialized _UIHostingView.focusBridge.getter();

  v11 = _UIHostingView.isHiddenForReuse.getter();
  FocusBridge.canAcceptFocus.setter((v11 & 1) == 0);

  UIHostingContentView._configuration.getter(v10);
  v12 = UIHostingConfiguration.delegate.getter(v7);
  v14 = v13;
  result = (*(v8 + 8))(v10, v7);
  if (v12)
  {
    ObjectType = swift_getObjectType();
    (*(v14 + 16))(a1, a2, *(v5 + 80), *(v5 + 88), ObjectType, v14);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t UIHostingContentView.hostingView<A>(_:didUpdate:)(void *a1, uint64_t *a2)
{
  v5 = *a1 & *MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x710);
  v18[0] = *((*MEMORY[0x1E69E7D40] & *v2) + 0x700);
  v18[1] = v6;
  v7 = type metadata accessor for UIHostingConfiguration(0, v18);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - v9;
  v11 = *a2;
  v12 = a2[1];
  UIHostingContentView._configuration.getter(v18 - v9);
  v13 = UIHostingConfiguration.delegate.getter(v7);
  v15 = v14;
  result = (*(v8 + 8))(v10, v7);
  if (v13)
  {
    ObjectType = swift_getObjectType();
    *&v18[0] = v11;
    *(&v18[0] + 1) = v12;
    (*(v15 + 24))(a1, v18, *(v5 + 80), *(v5 + 88), ObjectType, v15);
    return swift_unknownObjectRelease();
  }

  return result;
}

void FocusBridge.canAcceptFocus.setter(char a1)
{
  v2 = *(v1 + 16);
  v3 = 2;
  if ((a1 & 1) == 0)
  {
    v3 = 0;
  }

  v4 = v2 & 0xFFFFFFFFFFFFFFFDLL | v3;
  if (v4 != v2)
  {
    *(v1 + 16) = v4;
    swift_beginAccess();
    DisplayList.Version.init(forUpdate:)();
    *(v1 + 48) = v7;
    swift_endAccess();
    v5 = FocusBridge.host.getter();
    if (v5)
    {
      v6 = v5;
      swift_getObjectType();
      ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
    }
  }
}

void UIHostingContentView.systemLayoutSizeFitting(_:withHorizontalFittingPriority:verticalFittingPriority:)(double a1, double a2, float a3, float a4)
{
  v7 = MEMORY[0x1E69E7D40];
  v8 = *MEMORY[0x1E69E7D40] & *v4;
  _ProposedSize.init(width:height:)();
  if (a3 == 1000.0)
  {
    _ProposedSize.width.setter();
  }

  if (a4 == 1000.0)
  {
    _ProposedSize.height.setter();
  }

  v9 = v25;
  v10 = v26;
  v11 = v27;
  v12 = v28;
  *&v19 = v25;
  BYTE8(v19) = v26;
  *&v20 = v27;
  BYTE8(v20) = v28;
  UIHostingContentView.setupSizeInvalidationHandler(_:)(&v19);
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v13 = *(v8 + 1808);
  v19 = *(v8 + 1792);
  v20 = v13;
  v14 = type metadata accessor for UIHostingContentView(0, &v19);
  swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v14);
  v15 = ViewRendererHost.sizeThatFits(_:)();
  UIHostingContentView.roundSize(_:)(v15);
  v16 = v4 + *((*v7 & *v4) + 0x768);
  *v16 = v17;
  *(v16 + 1) = v18;
  v16[16] = 0;
}

double @objc UIHostingContentView.systemLayoutSizeFitting(_:withHorizontalFittingPriority:verticalFittingPriority:)(void *a1, double a2, double a3, float a4, float a5)
{
  v9 = a1;
  UIHostingContentView.systemLayoutSizeFitting(_:withHorizontalFittingPriority:verticalFittingPriority:)(a2, a3, a4, a5);
  v11 = v10;

  return v11;
}

uint64_t UIHostingContentView.setupSizeInvalidationHandler(_:)(uint64_t result)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = v3;
  v5 = *result;
  v6 = *(result + 8);
  v7 = *(result + 16);
  v8 = *(result + 24);
  v9 = v1 + *(v3 + 0x760);
  if ((v9[25] & 1) == 0)
  {
    v10 = v9[24];
    v11 = *(v9 + 2);
    v19 = *v9;
    v20 = v11;
    v21 = v10;
    v22 = 0;
    v15 = v5;
    v16 = v6;
    v17 = v7;
    v18 = v8;
    result = MEMORY[0x18D004850](&v19, &v15);
    if (result)
    {
      return result;
    }

    v3 = *v2 & *v1;
  }

  v12 = v1 + *(v3 + 1888);
  *v12 = v5;
  *(v12 + 1) = v6;
  *(v12 + 2) = v7;
  v12[24] = v8;
  v12[25] = 0;
  _UIHostingView.viewGraph.getter(result);
  *&v19 = v5;
  BYTE8(v19) = v6;
  v20 = v7;
  v21 = v8;
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = *(v4 + 1792);
  *(v14 + 24) = *(v4 + 1800);
  *(v14 + 40) = *(v4 + 1816);
  *(v14 + 48) = v13;
  swift_beginAccess();
  type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>(0, &lazy cache variable for type metadata for ViewGraphGeometryObservers<SizeThatFitsMeasurer>, lazy protocol witness table accessor for type SizeThatFitsMeasurer and conformance SizeThatFitsMeasurer, MEMORY[0x1E697FA70], MEMORY[0x1E6980718]);
  ViewGraphGeometryObservers.addObserver(for:exclusive:callback:)();
  swift_endAccess();
}

uint64_t sub_18BD6E320()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18BD6E358()
{

  return swift_deallocObject();
}

uint64_t lazy protocol witness table accessor for type HostingContentViewRootModifier and conformance HostingContentViewRootModifier(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t __swift_memcpy9_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

unint64_t type metadata accessor for UITraitDefinition.Type()
{
  result = lazy cache variable for type metadata for UITraitDefinition.Type;
  if (!lazy cache variable for type metadata for UITraitDefinition.Type)
  {
    type metadata accessor for CVarArg(255, &lazy cache variable for type metadata for UITraitDefinition, MEMORY[0x1E69DC048]);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UITraitDefinition.Type);
  }

  return result;
}

uint64_t UIHostingContentView.hostingView<A>(_:didMoveTo:)(void *a1, uint64_t a2)
{
  v5 = *a1 & *MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x710);
  v16[0] = *((*MEMORY[0x1E69E7D40] & *v2) + 0x700);
  v16[1] = v6;
  v7 = type metadata accessor for UIHostingConfiguration(0, v16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v16 - v9;
  UIHostingContentView._configuration.getter(v16 - v9);
  v11 = UIHostingConfiguration.delegate.getter(v7);
  v13 = v12;
  result = (*(v8 + 8))(v10, v7);
  if (v11)
  {
    ObjectType = swift_getObjectType();
    (*(v13 + 8))(a1, a2, *(v5 + 80), *(v5 + 88), ObjectType, v13);
    return swift_unknownObjectRelease();
  }

  return result;
}

void type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void _s7SwiftUI26ViewGraphGeometryObserversVyAA20SizeThatFitsMeasurerVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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