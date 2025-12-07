unint64_t lazy protocol witness table accessor for type _UIHostingView<AnyView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<AnyView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature;
  if (!lazy protocol witness table cache variable for type _UIHostingView<AnyView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<AnyView>.EnableVFDFeature, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView.EnableVFDFeature);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>.EnableVFDFeature, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<AnyView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature);
  }

  return result;
}

void *specialized _UIHostingView.base.getter(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t))
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x70);
  v5 = *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x68));
  if (*(v3 + v4) == 1)
  {
    *(v3 + v4) = 1;
    v6 = v5;
    return v5;
  }

  v10 = v5;
  v11 = UIHostingViewBase.uiView.getter();
  if (v11)
  {

    if (UIHostingViewBase.delegate.getter())
    {
      goto LABEL_5;
    }

LABEL_8:
    a1();
    swift_unknownObjectRetain();
    UIHostingViewBase.delegate.setter();
    if (UIHostingViewBase.updateDelegate.getter())
    {
      goto LABEL_6;
    }

LABEL_9:
    a2();
    swift_unknownObjectRetain();
    UIHostingViewBase.updateDelegate.setter();
    goto LABEL_10;
  }

  v12 = v3;
  UIHostingViewBase.uiView.setter();
  if (!UIHostingViewBase.delegate.getter())
  {
    goto LABEL_8;
  }

LABEL_5:
  swift_unknownObjectRelease();
  if (!UIHostingViewBase.updateDelegate.getter())
  {
    goto LABEL_9;
  }

LABEL_6:
  swift_unknownObjectRelease();
LABEL_10:
  UIHostingViewBase.viewGraph.getter();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    UIHostingViewBase.viewGraph.getter();

    a3(v14);
    swift_unknownObjectRetain();
    DisplayList.ViewRenderer.host.setter();
  }

  *(v3 + v4) = 1;
  return v5;
}

id specialized UIHostingController.init(_hostingView:)(void *a1)
{
  v2 = v1;
  *&v1[direct field offset for UIHostingController.allowedBehaviors] = 0;
  *&v1[direct field offset for UIHostingController.requiredBridges] = 0;
  v4 = &v1[direct field offset for UIHostingController.overrides];
  *v4 = xmmword_18CD874C0;
  *(v4 + 2) = 0;
  v4[24] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4[48] = 2;
  *&v2[direct field offset for UIHostingController.customTabItem] = 0;
  swift_unknownObjectWeakInit();
  *&v2[direct field offset for UIHostingController.toolbarBridge] = 0;
  *&v2[direct field offset for UIHostingController.inspectorBridgeV5] = 0;
  *&v2[direct field offset for UIHostingController.barAppearanceBridge] = 0;
  v5 = direct field offset for UIHostingController.dialogBridge;
  type metadata accessor for UIKitDialogBridge(0);
  swift_allocObject();
  *&v2[v5] = UIKitDialogBridge.init()();
  *&v2[direct field offset for UIHostingController.testBridge] = 0;
  *&v2[direct field offset for UIHostingController.contentScrollViewBridge] = 0;
  v6 = direct field offset for UIHostingController.modernNavigationBridge;
  type metadata accessor for ModernNavigationBridge();
  v7 = swift_allocObject();
  *(v7 + 16) = -1;
  *&v2[v6] = v7;
  *&v2[direct field offset for UIHostingController.alwaysOnBridge] = 0;
  v8 = direct field offset for UIHostingController.fileImportExportBridge;
  *&v2[v8] = [objc_allocWithZone(type metadata accessor for FileImportExportBridge(0)) init];
  *&v2[direct field offset for UIHostingController.deferredEdges] = 256;
  v9 = MEMORY[0x1E69E7CC0];
  *&v2[direct field offset for UIHostingController.screenEdgesSystemGestureSeedTracker] = MEMORY[0x1E69E7CC0];
  v2[direct field offset for UIHostingController.shouldDeferScreenEdgesSystemGestureToChildViewController] = 0;
  v10 = &v2[direct field offset for UIHostingController.persistentSystemOverlays];
  *v10 = 512;
  v10[2] = 3;
  *&v2[direct field offset for UIHostingController.persistentSystemOverlaysSeedTracker] = v9;
  v2[direct field offset for UIHostingController.shouldDeferPersistentSystemOverlaysToChildViewController] = 0;
  v11 = direct field offset for UIHostingController.backgroundBridge;
  type metadata accessor for ContainerBackgroundBridge();
  swift_allocObject();
  *&v2[v11] = ContainerBackgroundBridge.init()();
  *&v2[direct field offset for UIHostingController.navigationBridge] = 0;
  *&v2[direct field offset for UIHostingController.keyboardShortcutBridge] = 0;
  *&v2[direct field offset for UIHostingController.sizingOptions] = 0;
  *&v2[direct field offset for UIHostingController.host] = a1;
  _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_1(0, &lazy cache variable for type metadata for UIHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for UIHostingController);
  v16.receiver = v2;
  v16.super_class = v12;
  v13 = a1;
  v14 = objc_msgSendSuper2(&v16, sel_initWithNibName_bundle_, 0, 0);
  specialized UIHostingController._commonInit()();

  return v14;
}

{
  v2 = v1;
  *&v1[direct field offset for UIHostingController.allowedBehaviors] = 0;
  *&v1[direct field offset for UIHostingController.requiredBridges] = 0;
  v4 = &v1[direct field offset for UIHostingController.overrides];
  *v4 = xmmword_18CD874C0;
  *(v4 + 2) = 0;
  v4[24] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4[48] = 2;
  *&v2[direct field offset for UIHostingController.customTabItem] = 0;
  swift_unknownObjectWeakInit();
  *&v2[direct field offset for UIHostingController.toolbarBridge] = 0;
  *&v2[direct field offset for UIHostingController.inspectorBridgeV5] = 0;
  *&v2[direct field offset for UIHostingController.barAppearanceBridge] = 0;
  v5 = direct field offset for UIHostingController.dialogBridge;
  type metadata accessor for UIKitDialogBridge(0);
  swift_allocObject();
  *&v2[v5] = UIKitDialogBridge.init()();
  *&v2[direct field offset for UIHostingController.testBridge] = 0;
  *&v2[direct field offset for UIHostingController.contentScrollViewBridge] = 0;
  v6 = direct field offset for UIHostingController.modernNavigationBridge;
  type metadata accessor for ModernNavigationBridge();
  v7 = swift_allocObject();
  *(v7 + 16) = -1;
  *&v2[v6] = v7;
  *&v2[direct field offset for UIHostingController.alwaysOnBridge] = 0;
  v8 = direct field offset for UIHostingController.fileImportExportBridge;
  *&v2[v8] = [objc_allocWithZone(type metadata accessor for FileImportExportBridge(0)) init];
  *&v2[direct field offset for UIHostingController.deferredEdges] = 256;
  v9 = MEMORY[0x1E69E7CC0];
  *&v2[direct field offset for UIHostingController.screenEdgesSystemGestureSeedTracker] = MEMORY[0x1E69E7CC0];
  v2[direct field offset for UIHostingController.shouldDeferScreenEdgesSystemGestureToChildViewController] = 0;
  v10 = &v2[direct field offset for UIHostingController.persistentSystemOverlays];
  *v10 = 512;
  v10[2] = 3;
  *&v2[direct field offset for UIHostingController.persistentSystemOverlaysSeedTracker] = v9;
  v2[direct field offset for UIHostingController.shouldDeferPersistentSystemOverlaysToChildViewController] = 0;
  v11 = direct field offset for UIHostingController.backgroundBridge;
  type metadata accessor for ContainerBackgroundBridge();
  swift_allocObject();
  *&v2[v11] = ContainerBackgroundBridge.init()();
  *&v2[direct field offset for UIHostingController.navigationBridge] = 0;
  *&v2[direct field offset for UIHostingController.keyboardShortcutBridge] = 0;
  *&v2[direct field offset for UIHostingController.sizingOptions] = 0;
  *&v2[direct field offset for UIHostingController.host] = a1;
  _s7SwiftUI26ViewGraphGeometryObserversVyAA20SizeThatFitsMeasurerVGMaTm_0(0, &lazy cache variable for type metadata for UIHostingController<TabItem.RootView>, lazy protocol witness table accessor for type TabItem.RootView and conformance TabItem.RootView, &type metadata for TabItem.RootView, type metadata accessor for UIHostingController);
  v16.receiver = v2;
  v16.super_class = v12;
  v13 = a1;
  v14 = objc_msgSendSuper2(&v16, sel_initWithNibName_bundle_, 0, 0);
  specialized UIHostingController._commonInit()();

  return v14;
}

uint64_t specialized UIHostingController._commonInit()()
{
  return specialized UIHostingController._commonInit()(specialized _UIHostingView.updateBackgroundColor(), lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>);
}

{
  return specialized UIHostingController._commonInit()(&lazy cache variable for type metadata for _UIHostingView<TabItem.RootView>, lazy protocol witness table accessor for type TabItem.RootView and conformance TabItem.RootView, &type metadata for TabItem.RootView, lazy protocol witness table accessor for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>);
}

uint64_t specialized UIHostingController._commonInit()(void (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v5 = v2;
  v6 = direct field offset for UIHostingController.host;
  v7 = *(v2 + direct field offset for UIHostingController.host);
  v8 = MEMORY[0x1E69E7D40];
  swift_unknownObjectWeakAssign();
  v9 = v7;
  a1();

  MEMORY[0x18D00ABE0]();
  v10 = *(v5 + v6);
  UIHostingViewBase.viewGraph.getter();

  lazy protocol witness table accessor for type EditModeScopeFeature and conformance EditModeScopeFeature();
  ViewGraph.append<A>(feature:)();

  v11 = *(v5 + direct field offset for UIHostingController.dialogBridge);
  v12 = swift_unknownObjectWeakAssign();
  v13 = a2(v12);
  *(v11 + 32) = v13;
  swift_unknownObjectWeakAssign();
  v14 = *(v5 + v6);
  UIHostingViewBase.viewGraph.getter();

  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();

  v15 = *(v5 + v6);
  UIHostingViewBase.viewGraph.getter();

  GraphHost.addPreference<A>(_:)();

  v16 = direct field offset for UIHostingController.alwaysOnBridge;
  if (*(v5 + direct field offset for UIHostingController.alwaysOnBridge))
  {
    swift_unknownObjectWeakAssign();
    if (*(v5 + v16))
    {
      v17 = *(v5 + v6);
      UIHostingViewBase.viewGraph.getter();

      GraphHost.addPreference<A>(_:)();
    }
  }

  *(*(v5 + direct field offset for UIHostingController.fileImportExportBridge) + OBJC_IVAR____TtC7SwiftUI22FileImportExportBridge_host + 8) = v13;
  swift_unknownObjectWeakAssign();
  v18 = *(v5 + v6);
  UIHostingViewBase.viewGraph.getter();

  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();

  ObjectType = swift_getObjectType();
  if (((*(ObjectType + 1392))() & 1) == 0)
  {
    v20 = [objc_allocWithZone(type metadata accessor for UIKitPopoverBridge()) init];
    *&v20[OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_host + 8] = v13;
    swift_unknownObjectWeakAssign();
    v21 = *(v5 + v6);
    UIHostingViewBase.viewGraph.getter();

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();

    v22 = *(v5 + v6);
    v23 = *((*v8 & *v22) + 0x128);
    v24 = *(v22 + v23);
    *(v22 + v23) = v20;
  }

  v25 = *(v5 + v6);
  UIHostingViewBase.viewGraph.getter();

  GraphHost.addPreference<A>(_:)();
  v26 = direct field offset for UIHostingController.screenEdgesSystemGestureSeedTracker;
  swift_beginAccess();
  v27 = *(v5 + v26);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + v26) = v27;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
    *(v5 + v26) = v27;
  }

  v30 = *(v27 + 2);
  v29 = *(v27 + 3);
  if (v30 >= v29 >> 1)
  {
    v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v27);
  }

  *(v27 + 2) = v30 + 1;
  v31 = &v27[24 * v30];
  *(v31 + 4) = &type metadata for ScreenEdgesSystemGestureKey;
  *(v31 + 5) = &protocol witness table for ScreenEdgesSystemGestureKey;
  *(v31 + 12) = -1;
  *(v5 + v26) = v27;
  swift_endAccess();

  v32 = *(v5 + v6);
  UIHostingViewBase.viewGraph.getter();

  GraphHost.addPreference<A>(_:)();
  v33 = direct field offset for UIHostingController.persistentSystemOverlaysSeedTracker;
  swift_beginAccess();
  v34 = *(v5 + v33);
  v35 = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + v33) = v34;
  if ((v35 & 1) == 0)
  {
    v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 2) + 1, 1, v34);
    *(v5 + v33) = v34;
  }

  v37 = *(v34 + 2);
  v36 = *(v34 + 3);
  if (v37 >= v36 >> 1)
  {
    v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v34);
  }

  *(v34 + 2) = v37 + 1;
  v38 = &v34[24 * v37];
  *(v38 + 4) = &type metadata for PersistentSystemOverlaysKey;
  *(v38 + 5) = &protocol witness table for PersistentSystemOverlaysKey;
  *(v38 + 12) = -1;
  *(v5 + v33) = v34;
  swift_endAccess();

  if (one-time initialization token for isEnabled != -1)
  {
    swift_once();
  }

  if (static PPTFeature.isEnabled == 1)
  {
    type metadata accessor for PPTTestBridge();
    v39 = swift_allocObject();
    *(v39 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v39 + 32) = 0;
    *(v39 + 40) = 0u;
    *(v39 + 56) = 0u;
    *(v39 + 72) = 0;
    *(v5 + direct field offset for UIHostingController.testBridge) = v39;

    *(v39 + 24) = v13;
    swift_unknownObjectWeakAssign();
  }

  v40 = *(v5 + direct field offset for UIHostingController.backgroundBridge);
  swift_unknownObjectWeakAssign();
  *(v40 + 64) = v13;
  swift_unknownObjectWeakAssign();
  v41 = *(v5 + v6);
  v42 = UIHostingViewBase.viewGraph.getter();

  v43 = *(v42 + 88);

  if (*(v40 + 145) != 5)
  {
    ContainerBackgroundKind.Builtin.addPreference(to:)(v43);
  }

  type metadata accessor for SharingActivityPickerBridge();
  swift_allocObject();
  v44 = SharingActivityPickerBridge.init()();
  *(v44 + 24) = v13;
  swift_unknownObjectWeakAssign();
  v45 = *(v5 + v6);
  UIHostingViewBase.viewGraph.getter();

  GraphHost.addPreference<A>(_:)();

  v46 = *(v5 + v6);
  *(v46 + *((*v8 & *v46) + 0x140)) = v44;
  v47 = v46;

  type metadata accessor for ShareConfigurationBridge();
  v48 = swift_allocObject();
  *(v48 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v48 + 32) = -1;
  *(v48 + 24) = v13;
  swift_unknownObjectWeakAssign();
  v49 = *(v5 + v6);
  UIHostingViewBase.viewGraph.getter();

  GraphHost.addPreference<A>(_:)();

  v50 = *(v5 + v6);
  *(v50 + *((*v8 & *v50) + 0x148)) = v48;
  v51 = v50;

  v52 = *(v5 + v6);
  UIHostingViewBase.viewGraph.getter();

  GraphHost.addPreference<A>(_:)();

  return static Update.end()();
}

double protocol witness for static PreferenceKey.defaultValue.getter in conformance PositionedNavigationDestination.Key@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static PositionedNavigationDestination.Key.defaultValue;

  return result;
}

uint64_t ContainerBackgroundKind.Builtin.versionSeedTracker.getter()
{
  v1 = *v0;
  if (v1 <= 1)
  {
    v2 = &protocol witness table for ContainerBackgroundKeys.NavigationKey;
    v3 = &protocol witness table for ContainerBackgroundKeys.NavigationKey;
    v4 = &type metadata for ContainerBackgroundKeys.NavigationKey;
    if (*v0)
    {
      v4 = &type metadata for ContainerBackgroundKeys.NavigationSplitViewKey;
      v3 = &protocol witness table for ContainerBackgroundKeys.NavigationSplitViewKey;
      v2 = &protocol witness table for ContainerBackgroundKeys.NavigationSplitViewKey;
    }

    goto LABEL_7;
  }

  if (v1 == 3)
  {
    v2 = &protocol witness table for ContainerBackgroundKeys.PresentationKey;
    v3 = &protocol witness table for ContainerBackgroundKeys.PresentationKey;
    v4 = &type metadata for ContainerBackgroundKeys.PresentationKey;
LABEL_7:
    v12 = 0uLL;
    *&v13 = 0;
    *(&v13 + 1) = v4;
    *&v14 = v3;
    *(&v14 + 1) = v2;
    outlined init with take of MutableCollection & RangeReplaceableCollection(&v12, &v15);
    v5 = v16;
    v6 = v17;
    v7 = v18;
    v8 = __swift_project_boxed_opaque_existential_1(&v15, v16);
    MEMORY[0x1EEE9AC00](v8);
    v11[2] = v5;
    v11[3] = v6;
    v11[4] = v7;
    v11[5] = closure #1 in ContainerBackgroundKind.Builtin.versionSeedTracker.getter;
    v11[6] = 0;
    type metadata accessor for ContainerBackground.AnyVersionSeedTracker();
    static ContainerBackgroundKind.Builtin.apply<A, B>(key:_:)(v8, partial apply for thunk for @callee_guaranteed (@unowned @thick ContainerBackgroundPlacementKey & HostPreferenceKey.Type) -> (@owned ContainerBackground.AnyVersionSeedTracker), v11, v5);
    v9 = v12;
    __swift_destroy_boxed_opaque_existential_1(&v15);
    return v9;
  }

  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  outlined destroy of (ContainerBackgroundPlacementKey & HostPreferenceKey)?(&v12);
  *&v15 = 0;
  *(&v15 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  LOBYTE(v12) = v1;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x18D00C9B0](0xD00000000000001ALL, 0x800000018CD501D0);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

_OWORD *outlined init with take of MutableCollection & RangeReplaceableCollection(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t partial apply for thunk for @callee_guaranteed (@unowned @thick ContainerBackgroundPlacementKey & HostPreferenceKey.Type) -> (@owned ContainerBackground.AnyVersionSeedTracker)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 40))(a1, *(v2 + 24), *(v2 + 32));
  *a2 = result;
  return result;
}

uint64_t ContainerBackground.ConcreteVersionSeedTracker.__allocating_init()()
{
  v0 = swift_allocObject();
  VersionSeedTracker.init()((v0 + 16));
  return v0;
}

BOOL specialized static Toolbar.UpdateContext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 80);
  v5 = *(a2 + 80);
  if (v4 == 2)
  {
    if (v5 != 2)
    {
      goto LABEL_12;
    }
  }

  else if (v5 == 2 || ((v5 ^ v4) & 1) != 0)
  {
    goto LABEL_12;
  }

  v6 = *(a1 + 81);
  v7 = *(a2 + 81);
  if (v6 != 2)
  {
    if (v7 == 2 || ((v7 ^ v6) & 1) != 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    v8 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI7ToolbarO11BarLocationO_Tt1g5(*(a1 + 88), *(a2 + 88));
    goto LABEL_13;
  }

  if (v7 == 2)
  {
    goto LABEL_11;
  }

LABEL_12:
  v8 = 0;
LABEL_13:
  if (!specialized static HostingControllerOverrides.== infix(_:_:)(a1, a2))
  {
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!v10)
    {
      goto LABEL_19;
    }

LABEL_28:

    return 0;
  }

  if (!v10)
  {
    v10 = Strong;
    goto LABEL_28;
  }

  v11 = v10;

  if (Strong != v11)
  {
    return 0;
  }

LABEL_19:
  v12 = swift_unknownObjectWeakLoadStrong();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v12)
  {
    if (!v10)
    {
      return (v8 & 1) != 0;
    }

    goto LABEL_28;
  }

  if (!v10)
  {
    v10 = v12;
    goto LABEL_28;
  }

  v13 = v10;

  result = v12 == v13;
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  return result;
}

BOOL specialized static HostingControllerOverrides.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of PushTarget?(a1, v16);
  outlined init with copy of PushTarget?(a2, &v17);
  if (v16[8] == 2)
  {
    if (v18 == 2)
    {
      outlined destroy of (PushTarget?, PushTarget?)(v16, type metadata accessor for PushTarget?);
      goto LABEL_10;
    }

LABEL_6:
    outlined destroy of (PushTarget?, PushTarget?)(v16, type metadata accessor for (PushTarget?, PushTarget?));
    return 0;
  }

  outlined init with copy of PushTarget?(v16, v15);
  if (v18 == 2)
  {
    outlined destroy of PushTarget(v15);
    goto LABEL_6;
  }

  outlined init with take of PushTarget(&v17, v14);
  v6 = specialized static PushTarget.== infix(_:_:)(v15, v14);
  outlined destroy of PushTarget(v14);
  outlined destroy of PushTarget(v15);
  outlined destroy of (PushTarget?, PushTarget?)(v16, type metadata accessor for PushTarget?);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (!v8)
    {
      goto LABEL_19;
    }

    v9 = v8;

    if (Strong != v9)
    {
      return 0;
    }
  }

  else if (v8)
  {
    goto LABEL_21;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v8)
    {
      v10 = v8;

      if (Strong == v10)
      {
        goto LABEL_22;
      }

      return 0;
    }

LABEL_19:

    return 0;
  }

  if (v8)
  {
LABEL_21:

    return 0;
  }

LABEL_22:
  v11 = *(a1 + 48);
  v4 = v11 == 2;
  v12 = *(a2 + 48);
  if (v12 != 2)
  {
    v4 = 0;
  }

  if (v11 != 2)
  {
    v13 = v12 ^ v11 ^ 1;
    if (v12 != 2)
    {
      return v13;
    }
  }

  return v4;
}

uint64_t outlined init with copy of PushTarget?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PushTarget?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t specialized InferredToolbarState.init()()
{
  v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12VerticalEdgeO_SdTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0, isUniquelyReferenced_nonNull_native, 1.0);
  v2 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(1, v2, 1.0);
  return v0;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(char a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1 & 1);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a2 & 1) == 0)
  {
    if (v16 >= v14 && (a2 & 1) == 0)
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a2 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a1 & 1);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a3;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a1 & 1, v19, a3);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for _VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>(255, a3, a4);
    _s7SwiftUI24ReadDestinationsModifier33_EA42A490FE48784768DCEF705CD04CF4LLVyAA018ResolvedNavigationD0VGMaTm_0(255, &lazy cache variable for type metadata for ReadDestinationsModifier<ResolvedNavigationDestinations>, &type metadata for ResolvedNavigationDestinations, &protocol witness table for ResolvedNavigationDestinations, type metadata accessor for ReadDestinationsModifier);
    v5 = type metadata accessor for ModifiedContent();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1 & 1, v2);
}

{
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](a1 & 1);
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1 & 1, v2);
}

void type metadata accessor for _VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for _VariadicView.Tree();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type VerticalEdge and conformance VerticalEdge()
{
  result = lazy protocol witness table cache variable for type VerticalEdge and conformance VerticalEdge;
  if (!lazy protocol witness table cache variable for type VerticalEdge and conformance VerticalEdge)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697DFB0], MEMORY[0x1E697DFA8], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type VerticalEdge and conformance VerticalEdge);
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, char a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + result) = a2 & 1;
  *(a3[7] + 8 * result) = a4;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

uint64_t destroy for NavigationState.StackContent.Views.ViewsSequence(uint64_t a1)
{
  v2 = *(a1 + 448);
  if (v2 == 2)
  {

    v4 = *(a1 + 24);
    if (v4)
    {
      if (v4 == 1)
      {
        goto LABEL_35;
      }
    }

    if (*(a1 + 40))
    {
    }

    if (*(a1 + 64))
    {

LABEL_34:
    }
  }

  else if (v2 == 1)
  {
    if (*(a1 + 48))
    {
    }

    if (*(a1 + 104))
    {
    }

    v3 = *(a1 + 208);
    if (*(a1 + 240))
    {
      if (v3 != 255)
      {
        if (v3)
        {

          if (*(a1 + 152))
          {
            __swift_destroy_boxed_opaque_existential_1((a1 + 128));
          }

          if (*(a1 + 176) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1((a1 + 120));
        }
      }
    }

    else
    {
      if (v3 != 255)
      {
        if (v3)
        {

          if (*(a1 + 152))
          {
            __swift_destroy_boxed_opaque_existential_1((a1 + 128));
          }

          if (*(a1 + 176) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1((a1 + 120));
        }
      }
    }

    if (*(a1 + 360))
    {

      goto LABEL_34;
    }
  }

LABEL_35:
}

void NavigationAuthority.controllerCache.getter()
{
  v1 = v0;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ((*(Strong + 208) & 1) == 0)
    {
      v4 = *(v1 + 16);
      v6[0] = *(v1 + 8);
      v6[1] = v4;

      NavigationStateHost.createState(environment:)(v6);
    }

    if (*(v3 + 200))
    {
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    type metadata accessor for NavigationHostingControllerCache_UIKit();
    v5 = swift_allocObject();
    *(v5 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI33NavigationContentAbstractPositionV_AC0E22StackHostingControllerCyAC7AnyViewVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *(v5 + 24) = 0;
  }
}

void @objc NavigationStackHostingController.viewDidLoad()(void *a1)
{
  v1 = a1;
  NavigationStackHostingController.viewDidLoad()();
}

Swift::Void __swiftcall NavigationStackHostingController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  specialized UIHostingController.host.getter();
  specialized _UIHostingView.delegate.setter(v0, &protocol witness table for NavigationStackHostingController<A>);
}

void @objc _UIHostingView.clipsToBounds.setter(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = a1;
  _UIHostingView.clipsToBounds.setter(v3, v6, v4, v5);
}

void _UIHostingView.clipsToBounds.setter(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for _UIHostingView(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v10.receiver = v4;
  v10.super_class = v6;
  v7 = objc_msgSendSuper2(&v10, sel_clipsToBounds);
  v9.receiver = v4;
  v9.super_class = v6;
  objc_msgSendSuper2(&v9, sel_setClipsToBounds_, a1 & 1);
  v8 = _UIHostingView.base.getter();
  UIHostingViewBase.clipsToBoundsDidChange(oldValue:)(v7);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unsigned __int8 a1, uint64_t a2)
{
  v4 = a1;
  Hasher.init(_seed:)();
  if (v4 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x18D00F6F0](a1);
  }

  MEMORY[0x18D00F6F0](a2);
  v5 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v5);
}

void type metadata accessor for _DictionaryStorage<NavigationContentAbstractPosition, NavigationStackHostingController<AnyView>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<NavigationContentAbstractPosition, NavigationStackHostingController<AnyView>>)
  {
    type metadata accessor for _PreferenceTransformModifier<SceneBridge.ActivationConditionsPreferenceKey>(255, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for NavigationStackHostingController);
    lazy protocol witness table accessor for type NavigationContentAbstractPosition and conformance NavigationContentAbstractPosition();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<NavigationContentAbstractPosition, NavigationStackHostingController<AnyView>>);
    }
  }
}

void specialized UIHostingController.prepareNavigationBar(in:navigationController:isRoot:)(uint64_t a1, uint64_t a2, UINavigationController *a3, char a4)
{
  v5 = v4;
  v8 = a2;
  v9 = *&v4[direct field offset for UIHostingController.toolbarBridge];
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = *(v9 + direct field offset for ToolbarBridge.navigationAdaptor);
  v11 = *(v10 + 16);
  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = v10 + 32;

  v13 = 0;
  do
  {
    outlined init with copy of UINavigationItemAdaptorStorage.Adaptor(v12, &aBlock);
    v14 = v31;
    v15 = v32;
    __swift_project_boxed_opaque_existential_1(&aBlock, v31);
    (*(v15 + 1))(v28, v14, v15);
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    v13 |= LOBYTE(v28[0]);
    v12 += 48;
    --v11;
  }

  while (v11);

  v8 = a2;
  if ((v13 & 2) == 0)
  {
LABEL_6:
    v16 = ~a4;
    v17 = [(UINavigationController *)a3 splitViewController];
    aBlock = xmmword_18CD874C0;
    v30 = 0;
    LOBYTE(v31) = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();

    v34 = (a4 & 1) == 0;
    v18 = direct field offset for UIHostingController.overrides;
    swift_beginAccess();
    outlined assign with take of HostingControllerOverrides(&aBlock, &v5[v18]);
    swift_endAccess();
    v19 = *&v5[direct field offset for UIHostingController.host];
    v20 = specialized _UIHostingView.base.getter();

    UIHostingViewBase.viewGraph.getter();
    ViewGraphHost.updateRemovedState(isUnattached:isHiddenForReuse:)(0, 0);

    if (v16)
    {
      specialized UIHostingController.resolveRequiredBridges(_:allowedActions:)(0, 0, 0, 0, 3);
      specialized UIHostingController.updateIncomingBoundsIfNeeded(navigationController:)(a3);
      v21 = objc_opt_self();
      v22 = swift_allocObject();
      *(v22 + 16) = v5;
      v23 = swift_allocObject();
      *(v23 + 16) = partial apply for specialized closure #1 in UIHostingController.performRender();
      *(v23 + 24) = v22;
      v32 = partial apply for thunk for @callee_guaranteed () -> ();
      v33 = v23;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v30 = thunk for @escaping @callee_guaranteed () -> ();
      v31 = &block_descriptor_103;
      v24 = _Block_copy(&aBlock);
      v25 = v5;

      [v21 performWithoutAnimation_];
      _Block_release(v24);
      LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

      if (v21)
      {
        __break(1u);
        return;
      }
    }

    else
    {
      specialized UIHostingController.promoteTitle(in:)(a1, v8);
    }

    aBlock = xmmword_18CD874C0;
    v30 = 0;
    LOBYTE(v31) = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    v34 = 2;
    swift_beginAccess();
    outlined assign with take of HostingControllerOverrides(&aBlock, &v5[v18]);
    swift_endAccess();
  }
}

uint64_t sub_18BEA5324()
{

  return swift_deallocObject();
}

void specialized _NativeSet.copy()(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t, _OWORD *))
{
  v6 = v4;
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, a1, a2, a3);
  v7 = *v4;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || v10 >= v7 + 56 + 8 * v11)
    {
      memmove(v10, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_17:
        v22 = 40 * (v19 | (v13 << 6));
        a4(*(v7 + 48) + v22, v26);
        v23 = *(v9 + 48) + v22;
        v24 = v26[0];
        v25 = v26[1];
        *(v23 + 32) = v27;
        *v23 = v24;
        *(v23 + 16) = v25;
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_19;
      }

      v21 = *(v7 + 56 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v6 = v9;
  }
}

void specialized _NativeSet.copy()()
{
  specialized _NativeSet.copy()(&lazy cache variable for type metadata for _SetStorage<ToolbarPlacement.Role>, lazy protocol witness table accessor for type ToolbarPlacement.Role and conformance ToolbarPlacement.Role, &type metadata for ToolbarPlacement.Role, outlined init with copy of ToolbarPlacement.Role);
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for _SetStorage<AccessibilityRelationshipScope.Key>, lazy protocol witness table accessor for type AccessibilityRelationshipScope.Key and conformance AccessibilityRelationshipScope.Key, &type metadata for AccessibilityRelationshipScope.Key);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 48 * (v14 | (v8 << 6));
        outlined init with copy of AccessibilityRelationshipScope.Key(*(v2 + 48) + v17, v21);
        v18 = (*(v4 + 48) + v17);
        v19 = v21[0];
        v20 = v21[2];
        v18[1] = v21[1];
        v18[2] = v20;
        *v18 = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  specialized _NativeSet.copy()(&lazy cache variable for type metadata for _SetStorage<UniqueID>, lazy protocol witness table accessor for type UniqueID and conformance UniqueID, MEMORY[0x1E6981D00]);
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for _SetStorage<EventID>, lazy protocol witness table accessor for type EventID and conformance EventID, MEMORY[0x1E69819B0]);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; v21[1] = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = (*(v2 + 48) + v17);
      v20 = *v18;
      v19 = v18[1];
      v21 = (*(v4 + 48) + v17);
      *v21 = v20;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for _SetStorage<NavigationState.ListKey>, lazy protocol witness table accessor for type NavigationState.ListKey and conformance NavigationState.ListKey, &type metadata for NavigationState.ListKey);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v21 + 40) = v20)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 48 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *(v18 + 32);
      v20 = *(v18 + 40);
      v21 = *(v4 + 48) + v17;
      v22 = *(v18 + 16);
      *v21 = *v18;
      *(v21 + 16) = v22;
      *(v21 + 32) = v19;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for _SetStorage<ToolbarDefaultItemKind.Kind>, lazy protocol witness table accessor for type ToolbarDefaultItemKind.Kind and conformance ToolbarDefaultItemKind.Kind, &type metadata for ToolbarDefaultItemKind.Kind);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  specialized _NativeSet.copy()(&lazy cache variable for type metadata for _SetStorage<Toolbar.BarLocation>, lazy protocol witness table accessor for type Toolbar.BarLocation and conformance Toolbar.BarLocation, &type metadata for Toolbar.BarLocation, outlined init with copy of Toolbar.BarLocation);
}

{
  v1 = v0;
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_0(0, &lazy cache variable for type metadata for _SetStorage<String>, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  v2 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _SetStorage<HashableCommandGroupPlacementWrapper>(0);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v6 + 56 + 8 * v10)
    {
      memmove(v9, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        outlined init with copy of HashableCommandGroupPlacementWrapper(*(v6 + 48) + v21, v5);
        outlined init with take of HashableCommandGroupPlacementWrapper(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v8;
  }
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for _SetStorage<SceneRequestCache.Item>, lazy protocol witness table accessor for type SceneRequestCache.Item and conformance SceneRequestCache.Item, &type metadata for SceneRequestCache.Item);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 56 * (v14 | (v8 << 6));
        outlined init with copy of SceneRequestCache.Item(*(v2 + 48) + v17, v22);
        v18 = *(v4 + 48) + v17;
        v19 = v23;
        v20 = v22[2];
        v21 = v22[1];
        *v18 = v22[0];
        *(v18 + 16) = v21;
        *(v18 + 32) = v20;
        *(v18 + 48) = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<HashableWeakBox<Swift.AnyObject>>(0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        outlined init with copy of HashableWeakBox<Swift.AnyObject>(*(v2 + 48) + v17, v18);
        outlined init with take of HashableWeakBox<Swift.AnyObject>(v18, *(v4 + 48) + v17);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  specialized _NativeSet.copy()(&lazy cache variable for type metadata for _SetStorage<UIOpenURLContext>, &lazy cache variable for type metadata for UIOpenURLContext, 0x1E69DCD08, &lazy protocol witness table cache variable for type UIOpenURLContext and conformance NSObject);
}

{
  v1 = v0;
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_0(0, &lazy cache variable for type metadata for _SetStorage<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for _SetStorage<ArchivedViewState.ID>, lazy protocol witness table accessor for type ArchivedViewState.ID and conformance ArchivedViewState.ID, &type metadata for ArchivedViewState.ID);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v19 + 16) = v20)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 24 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *(v4 + 48) + v17;
      v20 = *(v18 + 16);
      *v19 = *v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for _SetStorage<ToolbarItemPlacement.Role>, lazy protocol witness table accessor for type ToolbarItemPlacement.Role and conformance ToolbarItemPlacement.Role, &type metadata for ToolbarItemPlacement.Role);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 48 * (v14 | (v8 << 6));
        outlined init with copy of ToolbarItemPlacement.Role(*(v2 + 48) + v17, &v21);
        v18 = (*(v4 + 48) + v17);
        v19 = v21;
        v20 = v22[0];
        *(v18 + 25) = *(v22 + 9);
        *v18 = v19;
        v18[1] = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<NavigationStackHostingController<AnyView>>(0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<UITextFormattingViewControllerComponentKey>(0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for _SetStorage<Color>, lazy protocol witness table accessor for type Color and conformance Color, MEMORY[0x1E69815C0]);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<UIColor?>(0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for _SetStorage<_ViewList_ID.Canonical>, lazy protocol witness table accessor for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical, MEMORY[0x1E697E088]);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<ObjectIdentifier>();
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

unint64_t lazy protocol witness table accessor for type HasContentToolbar and conformance HasContentToolbar()
{
  result = lazy protocol witness table cache variable for type HasContentToolbar and conformance HasContentToolbar;
  if (!lazy protocol witness table cache variable for type HasContentToolbar and conformance HasContentToolbar)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HasContentToolbar, &type metadata for HasContentToolbar, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HasContentToolbar and conformance HasContentToolbar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasContentToolbar and conformance HasContentToolbar;
  if (!lazy protocol witness table cache variable for type HasContentToolbar and conformance HasContentToolbar)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HasContentToolbar, &type metadata for HasContentToolbar, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HasContentToolbar and conformance HasContentToolbar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasContentToolbar and conformance HasContentToolbar;
  if (!lazy protocol witness table cache variable for type HasContentToolbar and conformance HasContentToolbar)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HasContentToolbar, &type metadata for HasContentToolbar, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HasContentToolbar and conformance HasContentToolbar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasContentToolbar and conformance HasContentToolbar;
  if (!lazy protocol witness table cache variable for type HasContentToolbar and conformance HasContentToolbar)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HasContentToolbar, &type metadata for HasContentToolbar, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HasContentToolbar and conformance HasContentToolbar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasContentToolbar and conformance HasContentToolbar;
  if (!lazy protocol witness table cache variable for type HasContentToolbar and conformance HasContentToolbar)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HasContentToolbar, &type metadata for HasContentToolbar, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HasContentToolbar and conformance HasContentToolbar);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationBackgroundReaderModifier>, _FlexFrameLayout>, _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationBackgroundReaderModifier>, _FlexFrameLayout>, _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationBackgroundReaderModifier>, _FlexFrameLayout>, _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationBackgroundReaderModifier>, _FlexFrameLayout>, _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<NavigationBackgroundReaderModifier>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>> and conformance _BackgroundPreferenceModifier<A, B>(&lazy protocol witness table cache variable for type _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>> and conformance _BackgroundPreferenceModifier<A, B>, type metadata accessor for _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>, MEMORY[0x1E6980968]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationBackgroundReaderModifier>, _FlexFrameLayout>, _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>)
  {
    type metadata accessor for _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>(255, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>, type metadata accessor for ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView> and conformance <> _ConditionalContent<A, B>();
    v1 = type metadata accessor for _BackgroundPreferenceModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>> and conformance _BackgroundPreferenceModifier<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t specialized static ViewModifier<>._makeView(modifier:inputs:body:)(uint64_t a1, __int128 *a2, void (*a3)(uint64_t, __int128 *))
{
  v4 = a2[3];
  v17 = a2[2];
  v18 = v4;
  v19 = a2[4];
  v20 = *(a2 + 20);
  v5 = a2[1];
  v15 = *a2;
  v16 = v5;
  outlined init with copy of _ViewInputs(a2, v25);
  AGGraphCreateOffsetAttribute2();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  *&v25[0] = AGCreateWeakAttribute();
  lazy protocol witness table accessor for type NavigationAuthority.StackKeyViewInputKey and conformance NavigationAuthority.StackKeyViewInputKey();
  PropertyList.subscript.setter();
  LODWORD(v25[0]) = OffsetAttribute2;
  lazy protocol witness table accessor for type NavigationAuthority.DepthKey and conformance NavigationAuthority.DepthKey();
  lazy protocol witness table accessor for type Attribute<Int> and conformance Attribute<A>();
  _GraphInputs.subscript.setter();
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = a2[3];
  v16 = a2[2];
  v17 = v4;
  v18 = a2[4];
  v19 = *(a2 + 20);
  v5 = a2[1];
  v14 = *a2;
  v15 = v5;
  outlined init with copy of _ViewInputs(a2, v24);
  AGGraphCreateOffsetAttribute2();
  _GraphInputs.scrollTargetRole.setter();
  _GraphInputs.scrollTargetRemovePreference.setter();
  DWORD1(v16) |= 0x800u;
  v20[3] = v17;
  v20[4] = v18;
  v21 = v19;
  v20[0] = v14;
  v20[1] = v15;
  v20[2] = v16;
  v10 = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v8 = v14;
  v9 = v15;
  v6 = outlined init with copy of _ViewInputs(v20, v24);
  a3(v6, &v8);
  v22[2] = v10;
  v22[3] = v11;
  v22[4] = v12;
  v23 = v13;
  v22[0] = v8;
  v22[1] = v9;
  outlined destroy of _ViewInputs(v22);
  v24[2] = v16;
  v24[3] = v17;
  v24[4] = v18;
  v25 = v19;
  v24[0] = v14;
  v24[1] = v15;
  return outlined destroy of _ViewInputs(v24);
}

{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[1];
  v20 = a2[2];
  v21 = v5;
  v8 = *(a2 + 2);
  v22 = v6;
  v23 = *(a2 + 20);
  v18 = *a2;
  v19 = v7;
  swift_beginAccess();
  LODWORD(v8) = *(v8 + 16);
  v26 = v18;
  v27 = v19;
  v28 = v20;
  outlined init with copy of _ViewInputs(a2, v32);
  _GraphInputs.interfaceIdiom.getter();
  v9 = AnyInterfaceIdiom.accepts<A>(_:)();
  LODWORD(v32[0]) = v8;
  BYTE4(v32[0]) = v9 & 1;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type TableShowsFirstColumnOnlyModifier.Child and conformance TableShowsFirstColumnOnlyModifier.Child();
  Attribute.init<A>(body:value:flags:update:)();
  _GraphInputs.environment.setter();
  v24[2] = v20;
  v24[3] = v21;
  v24[4] = v22;
  v25 = v23;
  v24[0] = v18;
  v24[1] = v19;
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v17 = v23;
  v12 = v18;
  v13 = v19;
  v10 = outlined init with copy of _ViewInputs(v24, v32);
  a3(v10, &v12);
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v26 = v12;
  v27 = v13;
  outlined destroy of _ViewInputs(&v26);
  v32[2] = v20;
  v32[3] = v21;
  v32[4] = v22;
  v33 = v23;
  v32[0] = v18;
  v32[1] = v19;
  return outlined destroy of _ViewInputs(v32);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance InjectKeyModifier(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
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

uint64_t outlined destroy of _UIHostingView<AnyView>.HostViewGraph(uint64_t a1)
{
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>.HostViewGraph, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView.HostViewGraph);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized _UIHostingView.updateBackgroundColor()()
{
  v1 = MEMORY[0x1E69E7D40];
  if (*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x1E8)) == 1 && (v2 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x1F0))) != 0)
  {
    type metadata accessor for UIHostingController<AnyView>(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
    v9.receiver = v0;
    v9.super_class = v3;
    objc_msgSendSuper2(&v9, sel_setBackgroundColor_, v2);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      if (*(v0 + *((*v1 & *v0) + 0xA0)))
      {
        type metadata accessor for UIHostingController<AnyView>(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
        v11.receiver = v0;
        v11.super_class = v5;
        objc_msgSendSuper2(&v11, sel_setBackgroundColor_, 0);
      }

      else
      {
        v6 = [objc_opt_self() systemBackgroundColor];
        if (*(v0 + *((*v1 & *v0) + 0x88)) == 1)
        {
        }

        else
        {
          v8 = v6;
          type metadata accessor for UIHostingController<AnyView>(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
          v10.receiver = v0;
          v10.super_class = v7;
          objc_msgSendSuper2(&v10, sel_setBackgroundColor_, v8);
        }
      }
    }
  }
}

{
  specialized _UIHostingView.updateBackgroundColor()(type metadata accessor for _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>);
}

{
  v1 = MEMORY[0x1E69E7D40];
  if (*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x1E8)) == 1 && (v2 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x1F0))) != 0)
  {
    type metadata accessor for UIHostingController<AnyView>(0, &lazy cache variable for type metadata for _UIHostingView<EmptyView>, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], type metadata accessor for _UIHostingView);
    v9.receiver = v0;
    v9.super_class = v3;
    objc_msgSendSuper2(&v9, sel_setBackgroundColor_, v2);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      if (*(v0 + *((*v1 & *v0) + 0xA0)))
      {
        type metadata accessor for UIHostingController<AnyView>(0, &lazy cache variable for type metadata for _UIHostingView<EmptyView>, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], type metadata accessor for _UIHostingView);
        v11.receiver = v0;
        v11.super_class = v5;
        objc_msgSendSuper2(&v11, sel_setBackgroundColor_, 0);
      }

      else
      {
        v6 = [objc_opt_self() systemBackgroundColor];
        if (*(v0 + *((*v1 & *v0) + 0x88)) == 1)
        {
        }

        else
        {
          v8 = v6;
          type metadata accessor for UIHostingController<AnyView>(0, &lazy cache variable for type metadata for _UIHostingView<EmptyView>, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], type metadata accessor for _UIHostingView);
          v10.receiver = v0;
          v10.super_class = v7;
          objc_msgSendSuper2(&v10, sel_setBackgroundColor_, v8);
        }
      }
    }
  }
}

{
  v1 = MEMORY[0x1E69E7D40];
  if (*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x1E8)) == 1 && (v2 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x1F0))) != 0)
  {
    type metadata accessor for UIHostingController<AnyView>(0, &lazy cache variable for type metadata for _UIHostingView<BoundInputsView>, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for _UIHostingView);
    v9.receiver = v0;
    v9.super_class = v3;
    objc_msgSendSuper2(&v9, sel_setBackgroundColor_, v2);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      if (*(v0 + *((*v1 & *v0) + 0xA0)))
      {
        type metadata accessor for UIHostingController<AnyView>(0, &lazy cache variable for type metadata for _UIHostingView<BoundInputsView>, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for _UIHostingView);
        v11.receiver = v0;
        v11.super_class = v5;
        objc_msgSendSuper2(&v11, sel_setBackgroundColor_, 0);
      }

      else
      {
        v6 = [objc_opt_self() systemBackgroundColor];
        if (*(v0 + *((*v1 & *v0) + 0x88)) == 1)
        {
        }

        else
        {
          v8 = v6;
          type metadata accessor for UIHostingController<AnyView>(0, &lazy cache variable for type metadata for _UIHostingView<BoundInputsView>, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for _UIHostingView);
          v10.receiver = v0;
          v10.super_class = v7;
          objc_msgSendSuper2(&v10, sel_setBackgroundColor_, v8);
        }
      }
    }
  }
}

{
  specialized _UIHostingView.updateBackgroundColor()(type metadata accessor for _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>>);
}

{
  specialized _UIHostingView.updateBackgroundColor()(type metadata accessor for _UIHostingView<ModifiedContent<AnyView, DocumentBaseModifier>>);
}

{
  specialized _UIHostingView.updateBackgroundColor()(&lazy cache variable for type metadata for _UIHostingView<BridgedNavigationView.RootView>, lazy protocol witness table accessor for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView, &type metadata for BridgedNavigationView.RootView);
}

void type metadata accessor for EnvironmentPropertyKey<HeaderFooterConfigurationKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<NavigationBackgroundReaderModifier>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<NavigationBackgroundReaderModifier>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<NavigationBackgroundReaderModifier>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<NavigationBackgroundReaderModifier>, _FlexFrameLayout>, type metadata accessor for _ViewModifier_Content<NavigationBackgroundReaderModifier>, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>> and conformance _BackgroundPreferenceModifier<A, B>(&lazy protocol witness table cache variable for type _ViewModifier_Content<NavigationBackgroundReaderModifier> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<NavigationBackgroundReaderModifier>, MEMORY[0x1E697FDF8]);
    v5[1] = MEMORY[0x1E697EBF8];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<NavigationBackgroundReaderModifier>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for NavigationState.ListKey?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t implicit closure #1 in static ReadDestinationsModifier._makeView(modifier:inputs:body:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  v12 = *(a1 + 4);
  Destinations = type metadata accessor for ReadDestinationsModifier.RequestsTransform(0, a2, a3, a4);
  v14 = Destinations;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ReadDestinationsModifier<A>.RequestsTransform, Destinations);
  (*(*(Destinations - 8) + 16))(v10, a1, Destinations);
  type metadata accessor for Attribute<(_:)>(0, &lazy cache variable for type metadata for Attribute<(_:)>, type metadata accessor for (_:), MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v11, closure #1 in Attribute.init<A>(_:)partial apply, v13, Destinations, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);

  return v10[0];
}

unint64_t lazy protocol witness table accessor for type NavigationAuthority.ListKeyViewInputKey and conformance NavigationAuthority.ListKeyViewInputKey()
{
  result = lazy protocol witness table cache variable for type NavigationAuthority.ListKeyViewInputKey and conformance NavigationAuthority.ListKeyViewInputKey;
  if (!lazy protocol witness table cache variable for type NavigationAuthority.ListKeyViewInputKey and conformance NavigationAuthority.ListKeyViewInputKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationAuthority.ListKeyViewInputKey, &type metadata for NavigationAuthority.ListKeyViewInputKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationAuthority.ListKeyViewInputKey and conformance NavigationAuthority.ListKeyViewInputKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationAuthority.ListKeyViewInputKey and conformance NavigationAuthority.ListKeyViewInputKey;
  if (!lazy protocol witness table cache variable for type NavigationAuthority.ListKeyViewInputKey and conformance NavigationAuthority.ListKeyViewInputKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationAuthority.ListKeyViewInputKey, &type metadata for NavigationAuthority.ListKeyViewInputKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationAuthority.ListKeyViewInputKey and conformance NavigationAuthority.ListKeyViewInputKey);
  }

  return result;
}

uint64_t type metadata completion function for SearchEnvironmentStorage(uint64_t a1)
{
  result = type metadata accessor for SearchEnvironmentStorage.BoundProperties(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>, &type metadata for EnvironmentValues.IsSearchingKey, &protocol witness table for EnvironmentValues.IsSearchingKey);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance NavigationAuthority.ViewInputKey(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for _EnvironmentKeyWritingModifier<NavigationEnabled>(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);

  return static WeakAttribute.== infix(_:_:)();
}

uint64_t TimelineView<>.init(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a4 - 8) + 32))(a8, a1, a4);
  v15 = swift_allocObject();
  *(v15 + 2) = a4;
  *(v15 + 3) = a5;
  *(v15 + 4) = a6;
  *(v15 + 5) = a7;
  *(v15 + 6) = a2;
  *(v15 + 7) = a3;
  result = type metadata accessor for TimelineView(0, a4, a5, a6);
  v17 = (a8 + *(result + 44));
  *v17 = partial apply for closure #1 in TimelineView<>.init(_:content:);
  v17[1] = v15;
  return result;
}

{
  v16 = *(a4 - 8);
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a1, v20, v17);
  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = a7;
  v21[6] = a2;
  v21[7] = a3;
  TimelineView<>.init(_:content:)(v19, partial apply for closure #1 in TimelineView<>.init(_:content:), v21, a4, a5, a6, a7, a8);
  return (*(v16 + 8))(a1, a4);
}

uint64_t sub_18BEA6518()
{

  return swift_deallocObject();
}

uint64_t TimelineView<>.UpdateFilter.updateValue()(uint64_t a1)
{
  v2 = v1;
  v233 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 24);
  v196 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v195 = &v177 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TimelineView<PeriodicTimelineSchedule, Never>.Context(0);
  v193 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v194 = &v177 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v206 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v188 = &v177 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 32);
  v221 = v4;
  v205 = type metadata accessor for TimelineView(0, v8, v4, v11);
  v187 = *(v205 - 8);
  MEMORY[0x1EEE9AC00](v205);
  v185 = &v177 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v186 = &v177 - v14;
  v203 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v217 = AssociatedTypeWitness;
  v228 = swift_getAssociatedTypeWitness();
  v223 = type metadata accessor for Optional();
  v209 = *(v223 - 8);
  MEMORY[0x1EEE9AC00](v223);
  v184 = &v177 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v189 = &v177 - v17;
  v230 = type metadata accessor for Date();
  v226 = *(v230 - 8);
  MEMORY[0x1EEE9AC00](v230);
  v192 = &v177 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v208 = &v177 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v210 = &v177 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v178 = &v177 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v180 = &v177 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v218 = &v177 - v28;
  type metadata accessor for BLSAlwaysOnFrameSpecifier?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v29);
  v211 = &v177 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v179 = &v177 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v183 = &v177 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v197 = &v177 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v222 = &v177 - v38;
  type metadata accessor for (value: Date?, changed: Bool)(0);
  v202 = v39;
  MEMORY[0x1EEE9AC00](v39);
  v201 = &v177 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v177 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v225 = &v177 - v45;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v199 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v220 = &v177 - v47;
  v48 = *(a1 - 8);
  v50 = MEMORY[0x1EEE9AC00](v49);
  v52 = &v177 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = *(a1 + 96);
  v53 = *(v2 + v229);
  v54 = *(v48 + 16);
  v214 = v48 + 16;
  v213 = v54;
  (v54)(v52, v2, a1, v50);
  LODWORD(AssociatedTypeWitness) = *AGGraphGetValue();
  v55 = *(v48 + 8);
  v215 = v52;
  v231 = a1;
  v224 = v48 + 8;
  v212 = v55;
  v55(v52, a1);
  if (*(v2 + 48) != AssociatedTypeWitness >> 1)
  {
    v56 = v215;
    v57 = v231;
    v213(v215, v2, v231);
    v58 = *AGGraphGetValue();
    v212(v56, v57);
    *(v2 + 48) = v58 >> 1;
    v59 = *(v57 + 92);
    (*(v209 + 8))(v2 + v59, v223);
    (*(*(v228 - 8) + 56))(v2 + v59, 1, 1);
    *(v2 + v229) = 0xFFF0000000000000;
    *(v2 + *(v57 + 100)) = 0x7FF0000000000000;
    *(v2 + 44) = 0;
  }

  v60 = *(TupleTypeMetadata2 + 48);
  Value = AGGraphGetValue();
  v63 = v62;
  v64 = *(v206 + 16);
  v65 = v220;
  v204 = v8;
  v182 = v206 + 16;
  v181 = v64;
  v64(v220, Value, v8);
  v190 = v60;
  v216 = v63 & 1;
  v65[v60] = v63 & 1;
  AGGraphGetValue();
  v198 = v66;
  if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
  {
    v67 = *(v202 + 48);
    v68 = v225;
    v69 = v226;
    (*(v226 + 56))(v225, 1, 1, v230);
    *(v68 + v67) = 0;
    v70 = v228;
  }

  else
  {
    v71 = *(v202 + 48);
    v72 = AGGraphGetValue();
    v74 = v73;
    outlined init with copy of Date?(v72, v43);
    v43[v71] = v74 & 1;
    outlined init with take of (value: Date?, changed: Bool)(v43, v225);
    v70 = v228;
    v69 = v226;
  }

  type metadata accessor for BLSAlwaysOnFrameSpecifier?(0, &lazy cache variable for type metadata for BLSAlwaysOnFrameSpecifier?, type metadata accessor for BLSAlwaysOnFrameSpecifier, MEMORY[0x1E69E6720]);
  v75 = AGGraphGetValue();
  v77 = v76;
  v78 = *v75;
  type metadata accessor for BLSUpdateFidelity(0);
  v219 = v78;
  v207 = v78;
  v79 = AGGraphGetValue();
  v81 = v80;
  v191 = *v79;
  if (((v77 & 1) != 0 || !AGGraphGetOutputValue()) && (v219 != 0) != *(v2 + 44))
  {
    v82 = v219 != 0;
    v83 = *(v231 + 92);
    (*(v209 + 8))(v2 + v83, v223);
    (*(*(v70 - 8) + 56))(v2 + v83, 1, 1, v70);
    *(v2 + 44) = v82;
  }

  v200 = TupleTypeMetadata2;
  if (v81)
  {
    LODWORD(v198) = 0;
    v216 = 1;
    v220[v190] = 1;
  }

  else
  {
    LODWORD(v198) = (v198 & 1) == 0;
  }

  v84 = v218;
  v85 = v229;
  v86 = v230;
  v87 = v201;
  outlined init with copy of TimelineView<EveryMinuteTimelineSchedule, Never>.Context(v225, v201, type metadata accessor for (value: Date?, changed: Bool));
  v88 = v87;
  v89 = v222;
  outlined init with take of Date?(v88, v222);
  v90 = v89;
  v91 = v197;
  outlined init with copy of Date?(v90, v197);
  v93 = v69 + 48;
  v92 = *(v69 + 48);
  if (v92(v91, 1, v86) == 1)
  {
    Date.init()();
    if (v92(v91, 1, v86) != 1)
    {
      outlined destroy of Date?(v91);
    }
  }

  else
  {
    (*(v69 + 32))(v84, v91, v86);
  }

  Date.timeIntervalSinceReferenceDate.getter();
  v95 = v94;
  v96 = v231;
  if ((v216 & 1) != 0 || (v97 = v209, v98 = v231, v99 = v93, v100 = v189, v101 = v223, (*(v209 + 16))(v189, v2 + *(v231 + 92), v223), v102 = (*(*(v70 - 8) + 48))(v100, 1, v70), v103 = v100, v93 = v99, v96 = v98, v85 = v229, (*(v97 + 8))(v103, v101), v102 == 1) || (v104 = v201, outlined init with copy of TimelineView<EveryMinuteTimelineSchedule, Never>.Context(v225, v201, type metadata accessor for (value: Date?, changed: Bool)), v105 = *(v104 + *(v202 + 48)), outlined destroy of Date?(v104), v105 == 1))
  {
    v106 = *(v96 + 100);
    *(v2 + v106) = 0x7FF0000000000000;
    if (v92(v222, 1, v86) != 1)
    {
      *(v2 + v85) = v95;
      goto LABEL_26;
    }

    v202 = v106;
    v216 = v92;
    v107 = v219 != 0;
    v108 = v215;
    v213(v215, v2, v96);
    v109 = v185;
    TimelineView<>.UpdateFilter.view.getter(v96, v185);
    v212(v108, v96);
    v110 = v188;
    v111 = v96;
    v112 = v204;
    v181(v188, v109, v204);
    (*(v187 + 8))(v109, v205);
    v232[0] = v107;
    (*(v203 + 24))(v218, v232, v112);
    (*(v206 + 8))(v110, v112);
    v113 = v184;
    dispatch thunk of Sequence.makeIterator()();
    v114 = *(v70 - 8);
    (*(v114 + 56))(v113, 0, 1, v70);
    v115 = *(v111 + 92);
    (*(v209 + 40))(v2 + v115, v113, v223);
    v116 = *(v114 + 48);
    if (v116(v2 + v115, 1, v70))
    {
      v117 = v183;
      (*(v226 + 56))(v183, 1, 1, v230);
LABEL_25:
      outlined destroy of Date?(v117);
      v92 = v216;
      v96 = v231;
      goto LABEL_26;
    }

    v118 = swift_getAssociatedConformanceWitness();
    v119 = v183;
    dispatch thunk of IteratorProtocol.next()();
    v117 = v119;
    v120 = v119;
    v121 = v230;
    if ((v216)(v120, 1, v230) == 1)
    {
      goto LABEL_25;
    }

    v223 = v118;
    v209 = v93;
    v134 = v226;
    v135 = v180;
    v206 = *(v226 + 32);
    (v206)(v180, v117, v121);
    Date.timeIntervalSinceReferenceDate.getter();
    *(v2 + v85) = v136;
    if (v116(v2 + v115, 1, v70))
    {
      v137 = v230;
      (*(v134 + 8))(v135, v230);
      v138 = v179;
      (*(v134 + 56))(v179, 1, 1, v137);
      v92 = v216;
    }

    else
    {
      v138 = v179;
      dispatch thunk of IteratorProtocol.next()();
      v172 = v230;
      v92 = v216;
      if ((v216)(v138, 1, v230) != 1)
      {
        v173 = v178;
        (v206)(v178, v138, v172);
        Date.timeIntervalSinceReferenceDate.getter();
        v175 = v174;
        v176 = *(v134 + 8);
        v176(v173, v172);
        v176(v180, v172);
        *(v2 + v202) = v175;
        goto LABEL_58;
      }

      (*(v134 + 8))(v180, v172);
    }

    outlined destroy of Date?(v138);
LABEL_58:
    v96 = v231;
    v70 = v228;
    v93 = v209;
  }

LABEL_26:
  v122 = *(v96 + 100);
  v223 = v122;
  if (v219)
  {
    v123 = v207;
    v124 = TimelineView<>.UpdateFilter.updateFromBacklightServices(frameSpecifier:)(v123, v96);

    if (v124)
    {
      v220[v190] = 1;
    }
  }

  else
  {
    v216 = v92;
    v209 = v93;
    v125 = *(v2 + v122);
    if (v125 <= v95)
    {
      v126 = *(v231 + 92);
      v127 = *(*(v70 - 8) + 48);
      v128 = (v226 + 32);
      v129 = (v226 + 8);
      while (!v127(v2 + v126, 1, v70))
      {
        swift_getAssociatedConformanceWitness();
        v130 = v211;
        dispatch thunk of IteratorProtocol.next()();
        v85 = v229;
        v131 = v230;
        if ((v216)(v130, 1, v230) == 1)
        {
          goto LABEL_38;
        }

        v132 = v210;
        (*v128)(v210, v130, v131);
        *(v2 + v85) = v125;
        Date.timeIntervalSinceReferenceDate.getter();
        v125 = v133;
        (*v129)(v132, v131);
        *(v2 + v223) = v125;
        v70 = v228;
        if (v95 < v125)
        {
          goto LABEL_39;
        }
      }

      v130 = v211;
      (*(v226 + 56))(v211, 1, 1, v230);
LABEL_38:
      outlined destroy of Date?(v130);
    }
  }

LABEL_39:
  v139 = *(v2 + v85);
  if ((*&v139 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    *(v2 + v85) = v95;
    v139 = v95;
  }

  v140 = v198;
  if (v139 != v53)
  {
    v140 = 0;
  }

  v141 = v230;
  v142 = v231;
  v143 = v226;
  if (v140 != 1 || (AGGraphCurrentAttributeWasModified() & 1) != 0 || !AGGraphGetOutputValue())
  {
    v144 = v208;
    Date.init(timeIntervalSinceReferenceDate:)();
    v145 = v192;
    (*(v143 + 16))(v192, v144, v141);
    v146 = 0x10202u >> (8 * v191);
    if (v191 >= 4)
    {
      v146 = 2;
    }

    LODWORD(v229) = v146;
    v147 = v215;
    v148 = v213;
    v213(v215, v2, v142);
    v149 = v193;
    v150 = *(v193 + 48);
    v151 = AGGraphGetValue();
    v152 = &v194[v150];
    v153 = v194;
    outlined init with copy of TimelineInvalidationAction(v151, v152);
    v154 = v212;
    v212(v147, v142);
    (*(v143 + 32))(v153, v145, v230);
    *(v153 + *(v149 + 44)) = v229;
    v155 = v148(v147, v2, v142);
    v156 = MEMORY[0x1EEE9AC00](v155);
    v157 = v221;
    *(&v177 - 6) = v204;
    *(&v177 - 5) = v157;
    v158 = *(v142 + 40);
    *(&v177 - 4) = v203;
    *(&v177 - 3) = v158;
    *(&v177 - 2) = v2;
    *(&v177 - 1) = v153;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TimelineView<A, B><>.UpdateFilter, v142, v156);
    MEMORY[0x18D000B40](v142, v157, WitnessTable);
    v160 = v195;
    StatefulRule.withObservation<A>(observationCenter:do:)();

    v161 = v154(v147, v231);
    MEMORY[0x1EEE9AC00](v161);
    *(&v177 - 2) = v231;
    *(&v177 - 1) = WitnessTable;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v160, partial apply for closure #1 in StatefulRule.value.setter, (&v177 - 4), v157, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v162);
    v163 = v160;
    v141 = v230;
    v142 = v231;
    v143 = v226;
    (*(v196 + 8))(v163, v157);
    (*(v143 + 8))(v208, v141);
    outlined destroy of TimelineView<EveryMinuteTimelineSchedule, Never>.Context(v153, type metadata accessor for TimelineView<PeriodicTimelineSchedule, Never>.Context);
  }

  v164 = *(v2 + v223);
  if (v164 == INFINITY)
  {

    (*(v143 + 8))(v218, v141);
    outlined destroy of TimelineView<EveryMinuteTimelineSchedule, Never>.Context(v225, type metadata accessor for (value: Date?, changed: Bool));
    (*(v199 + 8))(v220, v200);
  }

  else
  {
    v165 = v164 - v95;
    type metadata accessor for GraphHost();
    MEMORY[0x18D00B7D0]();
    type metadata accessor for ViewGraph();
    v166 = swift_dynamicCastClassUnconditional();
    v167 = v215;
    v213(v215, v2, v142);
    v168 = *AGGraphGetValue();

    v212(v167, v142);
    (*(v143 + 8))(v218, v141);
    outlined destroy of TimelineView<EveryMinuteTimelineSchedule, Never>.Context(v225, type metadata accessor for (value: Date?, changed: Bool));
    (*(v199 + 8))(v220, v200);
    v169 = v165 + v168;
    swift_beginAccess();
    v170 = *(v166 + 376);
    if (v169 < v170)
    {
      v170 = v169;
    }

    *(v166 + 376) = v170;
  }

  return outlined destroy of Date?(v222);
}

void type metadata accessor for TimelineView<PeriodicTimelineSchedule, Never>.Context(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TimelineView<PeriodicTimelineSchedule, Never>.Context)
  {
    v2 = type metadata accessor for PeriodicTimelineSchedule();
    v3 = _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type PeriodicTimelineSchedule and conformance PeriodicTimelineSchedule, MEMORY[0x1E69803F0], MEMORY[0x1E69803E8]);
    v4 = type metadata accessor for TimelineView.Context(a1, v2, MEMORY[0x1E69E73E0], v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TimelineView<PeriodicTimelineSchedule, Never>.Context);
    }
  }
}

void type metadata accessor for BLSAlwaysOnFrameSpecifier?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for (value: Date?, changed: Bool)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (value: Date?, changed: Bool))
  {
    type metadata accessor for BLSAlwaysOnFrameSpecifier?(255, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (value: Date?, changed: Bool));
    }
  }
}

_DWORD *initializeWithCopy for TimelineView<>.UpdateFilter(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *v7;
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v8 = *v9;
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v10 = *v11;
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  *v12 = *v13;
  v15 = ((v12 + 11) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v13 + 11) & 0xFFFFFFFFFFFFFFF8);
  v17 = v16 + 19;
  *v15 = *v16;
  v18 = v15 + 19;
  v15[1] = v16[1];
  v19 = (v15 + 11) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v16 + 11) & 0xFFFFFFFFFFFFFFF8;
  *v19 = *v20;
  *(v19 + 4) = *(v20 + 4);
  v21 = v18 & 0xFFFFFFFFFFFFFFF8;
  v22 = v17 & 0xFFFFFFFFFFFFFFF8;
  *(v18 & 0xFFFFFFFFFFFFFFF8) = *(v17 & 0xFFFFFFFFFFFFFFF8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  v25 = *(v24 + 80);
  v26 = ((v25 + v21 + 4) & ~v25);
  v27 = ((v25 + v22 + 4) & ~v25);
  v28 = *(v24 + 48);
  v29 = v14;
  if (v28(v27, 1, AssociatedTypeWitness))
  {
    v30 = *(v24 + 84);
    v31 = *(v24 + 64);
    if (v30)
    {
      v32 = v31;
    }

    else
    {
      v32 = v31 + 1;
    }

    memcpy(v26, v27, v32);
  }

  else
  {
    (*(v24 + 16))(v26, v27, AssociatedTypeWitness);
    v34 = *(v24 + 56);
    v33 = v24 + 56;
    v34(v26, 0, 1, AssociatedTypeWitness);
    v30 = *(v33 + 28);
    v31 = *(v33 + 8);
  }

  if (v30)
  {
    v35 = v31;
  }

  else
  {
    v35 = v31 + 1;
  }

  v36 = ((v26 + v35 + 7) & 0xFFFFFFFFFFFFFFF8);
  v37 = ((v27 + v35 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v36 = *v37;
  v38 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v38 = *v39;
  *(v38 + 8) = *(v39 + 8);
  return a1;
}

uint64_t sub_18BEA82E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18BEA8360(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t destroy for TimelineView<>.UpdateFilter(uint64_t a1, uint64_t a2)
{
  v2 = ((((((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 15) & 0xFFFFFFFFFFFFFFF8);

  v3 = (((v2 + 11) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  v7 = v6 + v3 + 4;
  v10 = v5;
  result = (*(v5 + 48))(v7 & ~v6, 1, AssociatedTypeWitness);
  if (!result)
  {
    v9 = *(v10 + 8);

    return v9(v7 & ~v6, AssociatedTypeWitness);
  }

  return result;
}

uint64_t outlined init with copy of TimelineView<EveryMinuteTimelineSchedule, Never>.Context(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of Date?(uint64_t a1, uint64_t a2)
{
  _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for Date?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s10Foundation4DateVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for DateComponents?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined destroy of Date?(uint64_t a1)
{
  type metadata accessor for Date?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t protocol witness for IteratorProtocol.next() in conformance AnimationTimelineSchedule.Entries@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + *(a1 + 20) + 8))
  {
    v4 = type metadata accessor for Date();
    v5 = *(*(v4 - 8) + 56);

    return v5(a2, 1, 1, v4);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a2, v2, v7);
    (*(v8 + 56))(a2, 0, 1, v7);

    return static Date.+= infix(_:_:)();
  }
}

uint64_t closure #1 in TimelineView<>.UpdateFilter.updateValue()(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10[0] = a3;
  v10[1] = a4;
  v10[2] = a5;
  v10[3] = a6;
  type metadata accessor for TimelineView<>.UpdateFilter(0, v10);
  type metadata accessor for TimelineView(0, a3, a4, a5);
  return Attribute.syncMainIfReferences<A>(do:)();
}

uint64_t partial apply for closure #1 in closure #1 in TimelineView<>.UpdateFilter.updateValue()(uint64_t a1)
{
  v3 = v1[6];
  v4 = type metadata accessor for TimelineView(0, v1[2], v1[3], v1[4]);
  return (*(a1 + *(v4 + 44)))(v3);
}

uint64_t partial apply for closure #1 in TimelineView<>.init(_:content:)(uint64_t a1)
{
  return partial apply for closure #1 in TimelineView<>.init(_:content:)(a1, closure #1 in TimelineView<>.init(_:content:));
}

{
  return partial apply for closure #1 in TimelineView<>.init(_:content:)(a1, closure #1 in TimelineView<>.init(_:content:));
}

uint64_t closure #1 in TimelineView<>.init(_:content:)(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a2;
  type metadata accessor for TimelineView<PeriodicTimelineSchedule, Never>.Context(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TimelineView.Context(0, a4, a5, a6);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v18 - v15;
  outlined init with copy of TimelineView<EveryMinuteTimelineSchedule, Never>.Context(a1, v12, type metadata accessor for TimelineView<PeriodicTimelineSchedule, Never>.Context);
  TimelineView.Context.init(_:)(v12, a4, a5, a6, v16);
  v19(v16);
  return (*(v14 + 8))(v16, v13);
}

uint64_t outlined destroy of TimelineView<PeriodicTimelineSchedule, Never>.Context(uint64_t a1)
{
  type metadata accessor for TimelineView<PeriodicTimelineSchedule, Never>.Context(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t initializeWithCopy for TimelineView.Context(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  *(a1 + *(a3 + 44)) = *(a2 + *(a3 + 44));
  swift_weakCopyInit();
  return a1;
}

uint64_t TimelineView.Context.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Date();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v14 + 16))(v13, a1, v11);
  type metadata accessor for TimelineView<PeriodicTimelineSchedule, Never>.Context(0);
  v16 = *(v15 + 48);
  v19 = *(a1 + *(v15 + 44));
  outlined init with copy of TimelineInvalidationAction(a1 + v16, v18);
  outlined destroy of TimelineView<PeriodicTimelineSchedule, Never>.Context(a1);
  return TimelineView.Context.init(date:cadence:invalidationAction:)(v13, &v19, v18, a2, a3, a4, a5);
}

uint64_t destroy for TimelineView.Context(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 8))(a1, v3);

  return swift_weakDestroy();
}

uint64_t TimelineView.Context.init(date:cadence:invalidationAction:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a2;
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  v15 = type metadata accessor for TimelineView.Context(0, a4, a5, a6);
  *(a7 + *(v15 + 44)) = v13;
  v16 = a7 + *(v15 + 48);

  return outlined init with take of TimelineInvalidationAction(a3, v16);
}

uint64_t TimelineView.Context.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t outlined destroy of TimelineView<EveryMinuteTimelineSchedule, Never>.Context(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t TimelineView<>.UpdateFilter.view.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for TimelineView(0, a1[2], a1[3], a1[4]);
  Value = AGGraphGetValue();
  v5 = *(*(v3 - 8) + 16);

  return v5(a2, Value, v3);
}

uint64_t protocol witness for TimelineSchedule.entries(from:mode:) in conformance AnimationTimelineSchedule@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 8) | *a2;
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v3;
  }

  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 16))(a3, a1, v8);
  result = type metadata accessor for AnimationTimelineSchedule.Entries(0);
  v10 = a3 + *(result + 20);
  *v10 = v7;
  *(v10 + 8) = v6 & 1;
  return result;
}

uint64_t outlined init with take of AnimationTimelineSchedule.Entries(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnimationTimelineSchedule.Entries(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for AnimationTimelineSchedule.Entries(uint64_t a1)
{
  result = type metadata singleton initialization cache for AnimationTimelineSchedule.Entries;
  if (!type metadata singleton initialization cache for AnimationTimelineSchedule.Entries)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id _UIHostingView.swiftui_addManagedInteraction(_:)(id result)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x200);
  v4 = *(v1 + v3);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(v1 + v3) = v6;
    result = [v1 addInteraction_];
    v7 = *((*v2 & *v1) + 0x200);
    v8 = *(v1 + v7);
    v5 = __OFSUB__(v8, 1);
    v9 = v8 - 1;
    if (!v5)
    {
      *(v1 + v7) = v9 & ~(v9 >> 63);
      return result;
    }
  }

  __break(1u);
  return result;
}

double protocol witness for static Rule.initialValue.getter in conformance ScrollViewAdjustedBehavior@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type MatchedTransitionSourceModifier and conformance MatchedTransitionSourceModifier()
{
  result = lazy protocol witness table cache variable for type MatchedTransitionSourceModifier and conformance MatchedTransitionSourceModifier;
  if (!lazy protocol witness table cache variable for type MatchedTransitionSourceModifier and conformance MatchedTransitionSourceModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MatchedTransitionSourceModifier, &type metadata for MatchedTransitionSourceModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MatchedTransitionSourceModifier and conformance MatchedTransitionSourceModifier);
  }

  return result;
}

void *View.matchedTransitionSource<A, B>(id:in:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9)
{
  v18 = a6;
  v16 = a7;
  v17 = a3;
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 0u;
  memset(v25, 0, 24);
  v23 = 0u;
  BYTE8(v25[1]) = 1;
  v14();
  (*(a9 + 8))(&v23, a5, a9);
  (*(v11 + 8))(v13, a5);
  _convertToAnyHashable<A>(_:)();
  v26[0] = v23;
  v26[1] = v24;
  v27[0] = v25[0];
  *(v27 + 9) = *(v25 + 9);
  v19 = a2;
  v20 = v23;
  v21 = v24;
  v22[0] = v25[0];
  *(v22 + 9) = *(v25 + 9);
  outlined init with copy of _ResolvedMatchedTransitionSourceConfiguration(v26, v28);
  MEMORY[0x18D00A570](&v19, v17, &type metadata for MatchedTransitionSourceModifier, v18);
  outlined destroy of MatchedTransitionSourceModifier(&v19);
  v28[0] = v23;
  v28[1] = v24;
  v29[0] = v25[0];
  *(v29 + 9) = *(v25 + 9);
  return outlined destroy of _ResolvedMatchedTransitionSourceConfiguration(v28);
}

uint64_t initializeWithCopy for _ResolvedMatchedTransitionSourceConfiguration(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = a2[4];
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

void *outlined destroy of _ResolvedMatchedTransitionSourceConfiguration(void *a1)
{

  return a1;
}

uint64_t type metadata completion function for ContextMenuModifierCore(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

_BYTE *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance MenuOrderPreferenceKey(_BYTE *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  v3 = *result;
  if (!*result)
  {
    result = a2(&v4);
    v3 = v4;
  }

  *v2 = v3;
  return result;
}

void @objc _UIHostingView.swiftui_addManagedInteraction(_:)(void *a1, uint64_t a2, void *a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  _UIHostingView.swiftui_addManagedInteraction(_:)(a3);
  swift_unknownObjectRelease();
}

uint64_t DragGesture.init<A>(minimumDistance:coordinateSpace:allowedDirections:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v9 = *a2;
  *(a5 + 49) = 15;
  *a5 = a6;
  (*(a4 + 8))(a3, a4);
  result = (*(*(a3 - 8) + 8))(a1, a3);
  *(a5 + 49) = v9;
  return result;
}

_DWORD *assignWithCopy for FeedbackGenerator(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  swift_weakCopyAssign();
  v6 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = (v6 + v10 + 16) & ~v10;
  v12 = (v7 + v10 + 16) & ~v10;
  (*(v8 + 24))(v11, v12);
  v13 = *(v9 + 40) + 7;
  v14 = ((v13 + v11) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + v12) & 0xFFFFFFFFFFFFFFF8);
  v16 = *v15;
  if (*v14 < 0xFFFFFFFFuLL)
  {
    if (v16 >= 0xFFFFFFFF)
    {
      v18 = v15[1];
      *v14 = v16;
      v14[1] = v18;

      goto LABEL_8;
    }
  }

  else
  {
    if (v16 >= 0xFFFFFFFF)
    {
      v17 = v15[1];
      *v14 = v16;
      v14[1] = v17;

      goto LABEL_8;
    }
  }

  *v14 = *v15;
LABEL_8:
  v19 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v20 + 24);
  if (!*(v19 + 24))
  {
    if (v21)
    {
      *(v19 + 24) = v21;
      *(v19 + 32) = *(v20 + 32);
      (**(v21 - 8))((v14 + 23) & 0xFFFFFFFFFFFFFFF8, v20);
      goto LABEL_15;
    }

LABEL_14:
    v23 = *v20;
    v24 = *(v20 + 16);
    *(v19 + 32) = *(v20 + 32);
    *v19 = v23;
    *(v19 + 16) = v24;
    goto LABEL_15;
  }

  v22 = ((v14 + 23) & 0xFFFFFFFFFFFFFFF8);
  if (!v21)
  {
    __swift_destroy_boxed_opaque_existential_1(v22);
    goto LABEL_14;
  }

  __swift_assign_boxed_opaque_existential_1(v22, v20);
LABEL_15:
  *(v19 + 40) = *(v20 + 40);

  return a1;
}

uint64_t assignWithCopy for MatchedTransitionSourceModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  __swift_assign_boxed_opaque_existential_1((a1 + 8), (a2 + 8));
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t initializeWithCopy for PopoverPresentationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  outlined copy of Environment<CGFloat?>.Content(*v8, v10, v11);
  *v7 = v9;
  *(v7 + 8) = v10;
  *(v7 + 16) = v11;
  *(v7 + 17) = *(v8 + 17);
  *(v7 + 19) = *(v8 + 19);
  *(v7 + 20) = *(v8 + 20);
  *(v7 + 21) = *(v8 + 21);
  return a1;
}

uint64_t PopoverPresentationModifier.resolve(in:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v34 = a3;
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v11 + 24);
  v13 = type metadata accessor for PopoverPresentationModifier.PopoverModifier(0, v7, v31, v12);
  v14 = *(v13 - 8);
  v32 = v13;
  v33 = v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - v16;
  v18 = *a1;
  v19 = a1[1];
  (*(v8 + 16))(v10, v4, v7, v15);
  v20 = *(a2 + 40);
  v21 = v4 + *(a2 + 36);
  v23 = *(v21 + 8);
  v24 = *(v21 + 16);
  v37[0] = *v21;
  v22 = v37[0];
  v37[1] = v23;
  v38 = v24;
  v25 = v4 + v20;
  LODWORD(v20) = *(v4 + v20);
  LODWORD(v25) = *(v25 + 1);
  v26 = *(v4 + *(a2 + 44));
  v27 = *(v4 + *(a2 + 48));
  v36[0] = v18;
  v36[1] = v19;
  v28 = *(v4 + *(a2 + 52));
  v35 = 0;
  PopoverPresentationModifier.PopoverModifier.init(viewID:provider:attachmentAnchor:arrowEdges:isDetachable:keyType:environment:attachmentBehavior:)(&v35, v10, v37, v20 | (v25 << 8), v26, v27, v36, v28, v17, v7, v31);
  outlined copy of Environment<CGFloat?>.Content(v22, v23, v24);

  v29 = v32;
  swift_getWitnessTable(protocol conformance descriptor for PopoverPresentationModifier<A>.PopoverModifier, v32);
  lazy protocol witness table accessor for type AllowPresentationPredicate and conformance AllowPresentationPredicate();
  ViewModifier.requiring<A>(_:)(&type metadata for AllowPresentationPredicate, v29, &type metadata for AllowPresentationPredicate);
  return (*(v33 + 8))(v17, v29);
}

uint64_t PopoverPresentationModifier.PopoverModifier.init(viewID:provider:attachmentAnchor:arrowEdges:isDetachable:keyType:environment:attachmentBehavior:)@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t *a7@<X6>, char a8@<W7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v11 = a4;
  v14 = *a3;
  v15 = a3[1];
  v16 = *(a3 + 16);
  v17 = *a7;
  v18 = a7[1];
  *a9 = *a1;
  v19 = type metadata accessor for PopoverPresentationModifier.PopoverModifier(0, a10, a11, a4);
  result = (*(*(a10 - 8) + 32))(&a9[v19[9]], a2, a10);
  v21 = &a9[v19[10]];
  *v21 = v14;
  *(v21 + 1) = v15;
  v21[16] = v16;
  v22 = &a9[v19[11]];
  *v22 = v11;
  v22[1] = HIBYTE(v11) & 1;
  a9[v19[12]] = a5;
  a9[v19[13]] = a6 & 1;
  v23 = &a9[v19[14]];
  *v23 = v17;
  *(v23 + 1) = v18;
  a9[v19[15]] = a8 & 1;
  return result;
}

_DWORD *initializeWithCopy for PopoverPresentationModifier.PopoverModifier(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 16;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 4) & ~v6;
  v8 = (a2 + v6 + 4) & ~v6;
  (*(v4 + 16))(v7, v8);
  v9 = *(v5 + 48) + 7;
  v10 = (v9 + v7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + v8) & 0xFFFFFFFFFFFFFFF8;
  v12 = *v11;
  v13 = *(v11 + 8);
  LOBYTE(v5) = *(v11 + 16);
  outlined copy of Environment<CGFloat?>.Content(*v11, v13, v5);
  *v10 = v12;
  *(v10 + 8) = v13;
  *(v10 + 16) = v5;
  *(v10 + 17) = *(v11 + 17);
  *(v10 + 19) = *(v11 + 19);
  *(v10 + 20) = *(v11 + 20);
  v14 = (v10 + 28) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v11 + 28) & 0xFFFFFFFFFFFFFFF8;
  *v14 = *v15;
  *(v14 + 8) = *(v15 + 8);
  *(v14 + 16) = *(v15 + 16);

  return a1;
}

double destroy for PopoverPresentationModifier.PopoverModifier(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = v2 + 8;
  v4 = (a1 + *(v2 + 80) + 4) & ~*(v2 + 80);
  (*(v2 + 8))(v4);
  v5 = (*(v3 + 56) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<CGFloat?>.Content(*v5, *(v5 + 8), *(v5 + 16));

  return result;
}

double destroy for ItemBoundNavigationDestinationModifier(void *a1, uint64_t a2)
{
  v3 = a1 + 15;

  v4 = v3 & 0xFFFFFFFFFFFFFFF8;

  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = v4 + v7 + 8;
  if (!(*(v6 + 48))(v8 & ~v7, 1, v5))
  {
    (*(v6 + 8))(v8 & ~v7, v5);
  }

  return result;
}

_DWORD *assignWithCopy for PopoverPresentationModifier.PopoverModifier(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 24;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 4) & ~v6;
  v8 = (a2 + v6 + 4) & ~v6;
  (*(v4 + 24))(v7, v8);
  v9 = *(v5 + 40) + 7;
  v10 = (v9 + v7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + v8) & 0xFFFFFFFFFFFFFFF8;
  v12 = *v11;
  v13 = *(v11 + 8);
  LOBYTE(v5) = *(v11 + 16);
  outlined copy of Environment<CGFloat?>.Content(*v11, v13, v5);
  v14 = *v10;
  v15 = *(v10 + 8);
  v16 = *(v10 + 16);
  *v10 = v12;
  *(v10 + 8) = v13;
  *(v10 + 16) = v5;
  outlined consume of Environment<CGFloat?>.Content(v14, v15, v16);
  *(v10 + 17) = *(v11 + 17);
  *(v10 + 19) = *(v11 + 19);
  *(v10 + 20) = *(v11 + 20);
  v17 = (v10 + 28) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v11 + 28) & 0xFFFFFFFFFFFFFFF8;
  *v17 = *v18;

  *(v17 + 8) = *(v18 + 8);

  *(v17 + 16) = *(v18 + 16);
  return a1;
}

uint64_t *assignWithCopy for PopoverItemStateProvider(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = a2 + 15;
  *a1 = *a2;
  v7 = a1 + 15;

  v8 = v7 & 0xFFFFFFFFFFFFFFF8;
  v6 &= 0xFFFFFFFFFFFFFFF8;
  *(v7 & 0xFFFFFFFFFFFFFFF8) = *v6;

  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = v11 + 8 + v8;
  v13 = v11 + 8 + v6;
  v14 = *(v10 + 48);
  LODWORD(v6) = v14(v12 & ~v11, 1, v9);
  v15 = v14(v13 & ~v11, 1, v9);
  if (v6)
  {
    if (v15)
    {
      v16 = *(v10 + 84);
      v17 = *(v10 + 64);
LABEL_6:
      if (v16)
      {
        v18 = v17;
      }

      else
      {
        v18 = v17 + 1;
      }

      memcpy((v12 & ~v11), (v13 & ~v11), v18);
      goto LABEL_12;
    }

    (*(v10 + 16))(v12 & ~v11, v13 & ~v11, v9);
    (*(v10 + 56))(v12 & ~v11, 0, 1, v9);
  }

  else
  {
    if (v15)
    {
      (*(v10 + 8))(v12 & ~v11, v9);
      v16 = *(v10 + 84);
      v17 = *(v10 + 64);
      goto LABEL_6;
    }

    (*(v10 + 24))(v12 & ~v11, v13 & ~v11, v9);
  }

LABEL_12:
  v19 = *(v10 + 64) + ((v11 + 16) & ~v11);
  if (!*(v10 + 84))
  {
    ++v19;
  }

  v20 = ((a1 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((a2 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);
  v22 = v21[1];
  *v20 = *v21;
  v20[1] = v22;

  return a1;
}

double destroy for PopoverPresentationModifier(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);

  return outlined consume of Environment<CGFloat?>.Content(v5, v6, v7);
}

uint64_t PopoverPresentationModifier.PopoverModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a3;
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v7 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable(protocol conformance descriptor for PopoverPresentationModifier<A>.PopoverModifier, v6);
  v8 = type metadata accessor for _ViewModifier_Content();
  type metadata accessor for TransactionalAnchorPreferenceTransformModifier<CGRect?, PopoverPresentation.Key>(255, &lazy cache variable for type metadata for TransactionalAnchorPreferenceTransformModifier<CGRect?, PopoverPresentation.Key>, &type metadata for PopoverPresentation.Key, &protocol witness table for PopoverPresentation.Key, type metadata accessor for TransactionalAnchorPreferenceTransformModifier);
  v9 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v8);
  v81[0] = WitnessTable;
  v81[1] = &protocol witness table for TransactionalAnchorPreferenceTransformModifier<A, B>;
  v11 = swift_getWitnessTable(MEMORY[0x1E697E858], v9, v81);
  v67 = v9;
  *&v78 = v9;
  *(&v78 + 1) = &type metadata for PopoverPresentation.Key;
  v64 = v11;
  v79 = v11;
  v80 = &protocol witness table for PopoverPresentation.Key;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v57 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v56 = v51 - v16;
  type metadata accessor for TransactionalAnchorPreferenceTransformModifier<CGRect?, PopoverPresentation.Key>(255, &lazy cache variable for type metadata for EmptyAnchorTraitTransformModifier<CGRect?, TabPopoverPresentationsKey>, &type metadata for TabPopoverPresentationsKey, &protocol witness table for TabPopoverPresentationsKey, type metadata accessor for EmptyAnchorTraitTransformModifier);
  v18 = v17;
  v19 = type metadata accessor for ModifiedContent();
  v59 = OpaqueTypeMetadata2;
  v20 = v66;
  v60 = v19;
  v63 = type metadata accessor for _ConditionalContent();
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v61 = v51 - v21;
  if (*(v20 + *(a2 + 52)) == 1)
  {
    v55 = v13;
    PopoverPresentationModifier.PopoverModifier.anchor.getter(a2);
    type metadata accessor for CGRect(0);
    v22 = Anchor.Source.init<A>(_:)();
    v54 = *(v4 + 16);
    v54(v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v20, a2);
    v58 = WitnessTable;
    v23 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v24 = swift_allocObject();
    v51[1] = v5;
    v25 = v24;
    v53 = *(a2 + 16);
    v52 = *(a2 + 24);
    v26 = v52;
    *(v24 + 16) = v53;
    *(v24 + 24) = v26;
    v51[0] = *(v4 + 32);
    (v51[0])(v24 + v23, v7, a2);
    type metadata accessor for CGRect?(0);
    View.transactionalAnchorPreferenceTransform<A, B>(key:value:transform:)(&type metadata for PopoverPresentation.Key, v22, partial apply for closure #1 in PopoverPresentationModifier.PopoverModifier.body(content:), v25, v8, v27, &type metadata for PopoverPresentation.Key, v58, &protocol witness table for PopoverPresentation.Key);

    v76 = v78;
    v77 = v79;
    v54(v7, v66, a2);
    WitnessTable = v58;
    v28 = swift_allocObject();
    v29 = v52;
    *(v28 + 16) = v53;
    *(v28 + 24) = v29;
    (v51[0])(v28 + v23, v7, a2);
    v30 = swift_checkMetadataState();
    v31 = v57;
    v32 = v64;
    View.transformAnchorGeometry<A>(key:transform:)();

    *&v78 = v30;
    *(&v78 + 1) = &type metadata for PopoverPresentation.Key;
    v79 = v32;
    v80 = &protocol witness table for PopoverPresentation.Key;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v34 = v56;
    v35 = v59;
    static ViewBuilder.buildExpression<A>(_:)();
    v36 = *(v55 + 8);
    v36(v31, v35);
    static ViewBuilder.buildExpression<A>(_:)();
    v68[0] = WitnessTable;
    v68[1] = &protocol witness table for EmptyAnchorTraitTransformModifier<A, B>;
    v37 = v60;
    v38 = swift_getWitnessTable(MEMORY[0x1E697E858], v60, v68);
    v39 = v61;
    static ViewBuilder.buildEither<A, B>(first:)(v31, v35, v37, OpaqueTypeConformance2, v38);
    v36(v31, v35);
    v36(v34, v35);
    v40 = v67;
  }

  else
  {
    PopoverPresentationModifier.PopoverModifier.anchor.getter(a2);
    v41 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    type metadata accessor for CGRect(0);
    v42 = Anchor.Source.init<A>(_:)();
    (*(v4 + 16))(v41, v20, a2);
    v43 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = *(a2 + 16);
    (*(v4 + 32))(v44 + v43, v41, a2);
    *&v76 = v42;
    *(&v76 + 1) = partial apply for closure #3 in PopoverPresentationModifier.PopoverModifier.body(content:);
    v77 = v44;
    MEMORY[0x18D00A570](&v78, &v76, v8, v18, WitnessTable);

    v74 = v78;
    v75 = v79;
    v73[0] = WitnessTable;
    v73[1] = &protocol witness table for EmptyAnchorTraitTransformModifier<A, B>;
    v37 = v60;
    v45 = swift_getWitnessTable(MEMORY[0x1E697E858], v60, v73);
    static ViewBuilder.buildExpression<A>(_:)();

    v66 = v76;
    v78 = v76;
    v79 = v77;
    static ViewBuilder.buildExpression<A>(_:)();

    v71 = v74;
    v72 = v75;

    v40 = v67;
    *&v78 = v67;
    *(&v78 + 1) = &type metadata for PopoverPresentation.Key;
    v32 = v64;
    v79 = v64;
    v80 = &protocol witness table for PopoverPresentation.Key;
    v46 = swift_getOpaqueTypeConformance2();
    v39 = v61;
    static ViewBuilder.buildEither<A, B>(second:)(&v71, v59, v37, v46, v45);
  }

  *&v78 = v40;
  *(&v78 + 1) = &type metadata for PopoverPresentation.Key;
  v79 = v32;
  v80 = &protocol witness table for PopoverPresentation.Key;
  v47 = swift_getOpaqueTypeConformance2();
  v70[0] = WitnessTable;
  v70[1] = &protocol witness table for EmptyAnchorTraitTransformModifier<A, B>;
  v48 = swift_getWitnessTable(MEMORY[0x1E697E858], v37, v70);
  v69[0] = v47;
  v69[1] = v48;
  v49 = v63;
  swift_getWitnessTable(MEMORY[0x1E697F968], v63, v69);
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v62 + 8))(v39, v49);
}

double PopoverPresentationModifier.PopoverModifier.anchor.getter(uint64_t a1)
{
  if ((*(*(a1 + 24) + 32))(*(a1 + 16)))
  {
    if (*(v1 + *(a1 + 40) + 16))
    {
      static Anchor.Source<A>.unitPoint(_:)();
    }

    else
    {
    }
  }

  return result;
}

BOOL PopoverItemStateProvider.isPresented.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  ItemSheetPresentationModifier.item.getter(a1, MEMORY[0x1E6981920]);
  v7 = (*(*(v2 - 8) + 48))(v6, 1, v2) != 1;
  (*(v4 + 8))(v6, v3);
  return v7;
}

uint64_t ItemSheetPresentationModifier.item.getter(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  type metadata accessor for Optional();
  v2 = type metadata accessor for Binding();

  return a2(v2);
}

void type metadata accessor for SceneStorage<TabSidebarCustomization>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance PopoverPresentationModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PopoverPresentationModifier<A>, a5);

  return MEMORY[0x1EEDE1620](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t View.popoverCore<A, B>(item:attachmentAnchor:arrowEdges:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v43 = a6;
  v38 = a4;
  v39 = a5;
  v40 = a3;
  v37 = a1;
  v41 = a9;
  v34 = a12;
  v35 = a8;
  v42 = a10;
  v32 = a7;
  v33 = a11;
  type metadata accessor for Optional();
  v36 = type metadata accessor for Binding();
  v15 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v17 = &WitnessTable - v16;
  v44 = a7;
  v45 = a8;
  v46 = a11;
  v47 = a12;
  v18 = type metadata accessor for PopoverItemStateProvider(0, &v44);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &WitnessTable - v20;
  WitnessTable = swift_getWitnessTable("HM\t", v18, v19);
  v23 = type metadata accessor for PopoverPresentationModifier(0, v18, WitnessTable, v22);
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &WitnessTable - v26;
  v28 = *a2;
  v29 = *(a2 + 8);
  LOBYTE(a2) = *(a2 + 16);
  (*(v15 + 16))(v17, v37, v36, v25);
  PopoverItemStateProvider.init(item:content:)(v17, v38, v39, v32, v35, v33, v34, v21);
  v44 = v28;
  v45 = v29;
  LOBYTE(v46) = a2;
  PopoverPresentationModifier.init(provider:attachmentAnchor:arrowEdges:isDetachable:keyType:attachmentBehavior:)(v21, &v44, v40 & 0x1FF, 0, 1, 0, v18, WitnessTable, v27);

  outlined copy of Environment<CGFloat?>.Content(v28, v29, a2);
  MEMORY[0x18D00A570](v27, v43, v23, v42);
  return (*(v24 + 8))(v27, v23);
}

uint64_t PopoverItemStateProvider.init(item:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  type metadata accessor for Optional();
  v16 = type metadata accessor for Binding();
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  v19[0] = a4;
  v19[1] = a5;
  v19[2] = a6;
  v19[3] = a7;
  result = type metadata accessor for PopoverItemStateProvider(0, v19);
  v18 = (a8 + *(result + 52));
  *v18 = a2;
  v18[1] = a3;
  return result;
}

int *PopoverPresentationModifier.init(provider:attachmentAnchor:arrowEdges:isDetachable:keyType:attachmentBehavior:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int16 a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v16 = *a2;
  v17 = a2[1];
  v18 = *(a2 + 16);
  (*(*(a7 - 8) + 32))(a9, a1, a7);
  result = type metadata accessor for PopoverPresentationModifier(0, a7, a8, v19);
  v21 = a9 + result[9];
  *v21 = v16;
  *(v21 + 8) = v17;
  *(v21 + 16) = v18;
  v22 = (a9 + result[10]);
  *v22 = a3;
  v22[1] = HIBYTE(a3) & 1;
  *(a9 + result[11]) = a4;
  *(a9 + result[12]) = a5 & 1;
  *(a9 + result[13]) = a6 & 1;
  return result;
}

double static _HoverRegionModifier._makeView(modifier:inputs:body:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, void *(*a3)(__int128 *__return_ptr)@<X2>, void *a4@<X8>)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a2[3];
  v6 = a2[1];
  v38 = a2[2];
  v39 = v5;
  v7 = a2[3];
  v40 = a2[4];
  v8 = a2[1];
  v36 = *a2;
  v37 = v8;
  v32 = v38;
  v33 = v7;
  v34 = a2[4];
  v9 = *a1;
  v41 = *(a2 + 20);
  v35 = *(a2 + 20);
  v30 = v36;
  v31 = v6;
  a3(&v19);
  if (specialized static EventBindingManager.current.getter())
  {
    *&v30 = v39;
    DWORD2(v30) = DWORD2(v39);
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
    {
      v32 = v38;
      v33 = v39;
      v34 = v40;
      v35 = v41;
      v30 = v36;
      v31 = v37;
      type metadata accessor for HoverResponder(0);
      swift_allocObject();
      outlined init with copy of _ViewInputs(&v36, v20);
      v18 = HoverResponder.init(inputs:)(&v30);
      LODWORD(v30) = v9;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type _HoverRegionModifier.Callback and conformance _HoverRegionModifier.Callback();

      v17 = Attribute.init<A>(body:value:flags:update:)();
      v30 = v19;

      v10 = _ViewOutputs.viewResponders()();

      v32 = v38;
      v33 = v39;
      v34 = v40;
      v35 = v41;
      v30 = v36;
      v31 = v37;
      v11 = _ViewInputs.animatedPosition()();
      v32 = v38;
      v33 = v39;
      v34 = v40;
      v12 = HIDWORD(v39);
      v35 = v41;
      v30 = v36;
      v31 = v37;
      swift_beginAccess();
      v13 = CachedEnvironment.animatedSize(for:)();
      swift_endAccess();
      v32 = v38;
      v33 = v39;
      v34 = v40;
      v35 = v41;
      v30 = v36;
      v31 = v37;
      v14 = _ViewInputs.isEnabled.getter();

      v21 = 0u;
      v22 = 0u;
      v23 = 2;
      v20[1] = 1;
      v20[0] = v18;
      v24 = v17;
      v25 = v10;
      v26 = v11;
      v27 = v12;
      v28 = v13;
      v29 = v14;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      _sSay7SwiftUI13ViewResponderCGMaTm_0(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
      lazy protocol witness table accessor for type HoverResponderChild and conformance HoverResponderChild();
      Attribute.init<A>(body:value:flags:update:)();
      outlined destroy of HoverResponderChild(v20);
      AGGraphGetFlags();
      AGGraphSetFlags();
      LOBYTE(v30) = 0;
      PreferencesOutputs.subscript.setter();
    }
  }

  lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
  v15 = PropertyList.subscript.getter();
  if (v30)
  {
    MEMORY[0x1EEE9AC00](v15);
    *&v30 = v39;
    DWORD2(v30) = DWORD2(v39);
    MEMORY[0x1EEE9AC00](v39);

    PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  }

  *a4 = v19;
  result = *(&v19 + 1);
  a4[1] = *(&v19 + 1);
  return result;
}

uint64_t specialized static EventBindingManager.current.getter()
{
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  type metadata accessor for ViewGraph();
  swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v2 = swift_conformsToProtocol2();
    if (v2)
    {
      v3 = v2;
      v4 = type metadata accessor for EventGraphHost();
      (*(*(*(v3 + 16) + 8) + 16))(v9, v4, v4, ObjectType);
      swift_unknownObjectRelease();
      if (v9[0])
      {
        v5 = v9[1];
        v6 = swift_getObjectType();
        v7 = (*(v5 + 8))(v6, v5);
        swift_unknownObjectRelease();
        return v7;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return 0;
}

unint64_t type metadata accessor for EventGraphHost()
{
  result = lazy cache variable for type metadata for EventGraphHost;
  if (!lazy cache variable for type metadata for EventGraphHost)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for EventGraphHost);
  }

  return result;
}

double protocol witness for EventGraphHost.eventBindingManager.getter in conformance _UIHostingView<A>()
{
  specialized _UIHostingView.eventBindingManager.getter();

  return result;
}

uint64_t type metadata accessor for HoverResponder(uint64_t a1)
{
  result = type metadata singleton initialization cache for HoverResponder;
  if (!type metadata singleton initialization cache for HoverResponder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HoverResponder.init(inputs:)(uint64_t a1)
{
  ContentResponderHelper.init()();
  *(v1 + 464) = 0;
  *(v1 + 472) = 0;
  *(v1 + 480) = 257;
  *(v1 + 216) = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  *(v1 + 224) = 0;
  *(v1 + 232) = 1;
  ViewTransform.init()();
  *(v1 + 240) = v5;
  *(v1 + 256) = v6;
  *(v1 + 272) = v7;
  static CGSize.invalidValue.getter();
  *(v1 + 288) = v2;
  *(v1 + 296) = v3;
  *(v1 + 304) = 1;
  *(v1 + 312) = 0u;
  *(v1 + 328) = 0u;
  *(v1 + 344) = 2;
  return DefaultLayoutViewResponder.init(inputs:)();
}

void destroy for HoverResponderChild(uint64_t a1)
{

  if ((*(a1 + 49) & 1) == 0 && !*(a1 + 48))
  {

    __swift_destroy_boxed_opaque_existential_1((a1 + 8));
  }
}

uint64_t *initializeWithCopy for PopoverItemStateProvider(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = v5 + v9 + 8;
  v11 = v6 + v9 + 8;
  v12 = *(v8 + 48);

  if (v12(v11 & ~v9, 1, v7))
  {
    v13 = *(v8 + 84);
    v14 = *(v8 + 64);
    if (v13)
    {
      v15 = *(v8 + 64);
    }

    else
    {
      v15 = v14 + 1;
    }

    memcpy((v10 & ~v9), (v11 & ~v9), v15);
  }

  else
  {
    (*(v8 + 16))(v10 & ~v9, v11 & ~v9, v7);
    v17 = *(v8 + 56);
    v16 = v8 + 56;
    v17(v10 & ~v9, 0, 1, v7);
    v13 = *(v16 + 28);
    v14 = *(v16 + 8);
  }

  v18 = v14 + ((v9 + 16) & ~v9);
  if (!v13)
  {
    ++v18;
  }

  v19 = a1 + v18 + 7;
  v20 = ((a2 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  v22 = *v20;
  v21 = v20[1];
  v23 = (v19 & 0xFFFFFFFFFFFFFFF8);
  *v23 = v22;
  v23[1] = v21;

  return a1;
}

unint64_t lazy protocol witness table accessor for type _HoverRegionModifier.Callback and conformance _HoverRegionModifier.Callback()
{
  result = lazy protocol witness table cache variable for type _HoverRegionModifier.Callback and conformance _HoverRegionModifier.Callback;
  if (!lazy protocol witness table cache variable for type _HoverRegionModifier.Callback and conformance _HoverRegionModifier.Callback)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _HoverRegionModifier.Callback, &type metadata for _HoverRegionModifier.Callback, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _HoverRegionModifier.Callback and conformance _HoverRegionModifier.Callback);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HoverResponderChild and conformance HoverResponderChild()
{
  result = lazy protocol witness table cache variable for type HoverResponderChild and conformance HoverResponderChild;
  if (!lazy protocol witness table cache variable for type HoverResponderChild and conformance HoverResponderChild)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HoverResponderChild, &type metadata for HoverResponderChild, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HoverResponderChild and conformance HoverResponderChild);
  }

  return result;
}

uint64_t initializeWithCopy for HoverResponderChild(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  v5 = *(a2 + 49);

  if (v5)
  {
    v6 = *(a2 + 3);
    *v4 = *(a2 + 1);
    *(a1 + 24) = v6;
    *(a1 + 34) = *(a2 + 34);
  }

  else if (*(a2 + 48))
  {
    v7 = *(a2 + 3);
    *v4 = *(a2 + 1);
    *(a1 + 24) = v7;
    *(a1 + 33) = *(a2 + 33);
    *(a1 + 49) = 0;
  }

  else
  {
    v8 = *(a2 + 2);
    *(a1 + 32) = v8;
    (**(v8 - 8))(a1 + 8, a2 + 1);
    *(a1 + 48) = 0;
  }

  *(a1 + 52) = *(a2 + 52);
  *(a1 + 68) = *(a2 + 68);
  return a1;
}

uint64_t sub_18BEAC59C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = type metadata accessor for ContextMenuModifier(255, *a1, v5, a4);
  swift_getWitnessTable(protocol conformance descriptor for ContextMenuModifier<A>, v6);
  v7 = type metadata accessor for _ViewModifier_Content();
  type metadata accessor for ContextMenuModifierCore(255, v4, v5, v8);
  v9 = type metadata accessor for ModifiedContent();
  type metadata accessor for _EnvironmentKeyWritingModifier<Bool>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  v10 = type metadata accessor for ModifiedContent();
  v11 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier>(255);
  v12 = type metadata accessor for ModifiedContent();
  v13 = type metadata accessor for StaticIf();
  type metadata accessor for StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>(255);
  v14 = type metadata accessor for ModifiedContent();
  v15 = lazy protocol witness table accessor for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction();
  v24[0] = swift_getWitnessTable(MEMORY[0x1E697FDF8], v7);
  v24[1] = &protocol witness table for ContextMenuModifierCore<A>;
  v16 = MEMORY[0x1E697E858];
  v23[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v9, v24);
  v23[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>();
  WitnessTable = swift_getWitnessTable(v16, v10, v23);
  v22[0] = WitnessTable;
  v22[1] = MEMORY[0x1E697FC98];
  v21[0] = swift_getWitnessTable(v16, v11, v22);
  v21[1] = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v20[0] = v15;
  v20[1] = WitnessTable;
  v20[2] = swift_getWitnessTable(v16, v12, v21);
  v19[0] = swift_getWitnessTable(MEMORY[0x1E6981CE8], v13, v20);
  v19[1] = lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  return swift_getWitnessTable(v16, v14, v19);
}

uint64_t type metadata completion function for PopoverPresentationModifier.PopoverModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_18BEAC910(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for PopoverPresentationModifier.PopoverModifier(255, *a1, a1[1], a4);
  v5 = type metadata accessor for StaticIf();
  v7[0] = lazy protocol witness table accessor for type AllowPresentationPredicate and conformance AllowPresentationPredicate();
  v7[1] = swift_getWitnessTable(protocol conformance descriptor for PopoverPresentationModifier<A>.PopoverModifier, v4);
  v7[2] = MEMORY[0x1E697E100];
  return swift_getWitnessTable(MEMORY[0x1E6981CE0], v5, v7);
}

uint64_t sub_18BEACA3C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for PopoverPresentationModifier.PopoverModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable(protocol conformance descriptor for PopoverPresentationModifier<A>.PopoverModifier, v4);
  v5 = type metadata accessor for _ViewModifier_Content();
  type metadata accessor for TransactionalAnchorPreferenceTransformModifier<CGRect?, PopoverPresentation.Key>(255, &lazy cache variable for type metadata for TransactionalAnchorPreferenceTransformModifier<CGRect?, PopoverPresentation.Key>, &type metadata for PopoverPresentation.Key, &protocol witness table for PopoverPresentation.Key, type metadata accessor for TransactionalAnchorPreferenceTransformModifier);
  v6 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v5);
  v15[0] = WitnessTable;
  v15[1] = &protocol witness table for TransactionalAnchorPreferenceTransformModifier<A, B>;
  v8 = MEMORY[0x1E697E858];
  v9 = swift_getWitnessTable(MEMORY[0x1E697E858], v6, v15);
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for TransactionalAnchorPreferenceTransformModifier<CGRect?, PopoverPresentation.Key>(255, &lazy cache variable for type metadata for EmptyAnchorTraitTransformModifier<CGRect?, TabPopoverPresentationsKey>, &type metadata for TabPopoverPresentationsKey, &protocol witness table for TabPopoverPresentationsKey, type metadata accessor for EmptyAnchorTraitTransformModifier);
  v10 = type metadata accessor for ModifiedContent();
  v11 = type metadata accessor for _ConditionalContent();
  v14[2] = v6;
  v14[3] = &type metadata for PopoverPresentation.Key;
  v14[4] = v9;
  v14[5] = &protocol witness table for PopoverPresentation.Key;
  v14[0] = WitnessTable;
  v14[1] = &protocol witness table for EmptyAnchorTraitTransformModifier<A, B>;
  v13[0] = swift_getOpaqueTypeConformance2();
  v13[1] = swift_getWitnessTable(v8, v10, v14);
  return swift_getWitnessTable(MEMORY[0x1E697F968], v11, v13);
}

uint64_t ModifiedContent<>.accessibilityValue<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 16))(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  ModifiedContent<>.accessibilityValue(_:)(v10, v11, v13 & 1, a2, x8_0);
  outlined consume of Text.Storage(v10, v12, v14 & 1);
}

uint64_t ModifiedContent<>.accessibilityValue(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  AccessibilityValueStorage.init(description:)();
  v9[8] = v9;
  ModifiedContent<>.update(isEnabled:body:)(1, partial apply for closure #1 in ModifiedContent<>.accessibilityValue(_:), a5, a6);
  return outlined destroy of AccessibilityValueStorage(v9);
}

uint64_t closure #1 in ModifiedContent<>.accessibilityValue(_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of AccessibilityValueStorage(a2, v9);
  outlined init with copy of AnyAccessibilityValue?(a1 + 64, &v5, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0]);
  if (*(&v6 + 1) != 1)
  {
    v4[0] = v5;
    v4[1] = v6;
    v4[2] = v7;
    closure #1 in closure #1 in ModifiedContent<>.accessibilityValue(_:isEnabled:)(v4, v9, &v8);
    outlined destroy of AccessibilityValueStorage(v4);
  }

  outlined destroy of AnyAccessibilityValue?(a1 + 64, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0]);
  outlined init with copy of AccessibilityValueStorage(v9, a1 + 64);
  return outlined destroy of AccessibilityValueStorage(v9);
}

void type metadata accessor for _ViewModifier_Content<MatchedTransitionSourceModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<MatchedTransitionSourceModifier>)
  {
    lazy protocol witness table accessor for type MatchedTransitionSourceModifier and conformance MatchedTransitionSourceModifier();
    v1 = type metadata accessor for _ViewModifier_Content();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ViewModifier_Content<MatchedTransitionSourceModifier>);
    }
  }
}

void type metadata accessor for EnvironmentReader<ModifiedContent<_ViewModifier_Content<MatchedTransitionSourceModifier>, MatchedTransitionSourceSourceMarkingEffect>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for EnvironmentReader<ModifiedContent<_ViewModifier_Content<MatchedTransitionSourceModifier>, MatchedTransitionSourceSourceMarkingEffect>>)
  {
    type metadata accessor for ModifiedContent<EnvironmentReader<ModifiedContent<_ViewModifier_Content<MatchedTransitionSourceModifier>, MatchedTransitionSourceSourceMarkingEffect>>, PreventsToolbarItemBridgingModifier>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<MatchedTransitionSourceModifier>, MatchedTransitionSourceSourceMarkingEffect>, type metadata accessor for _ViewModifier_Content<MatchedTransitionSourceModifier>);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<MatchedTransitionSourceModifier>, MatchedTransitionSourceSourceMarkingEffect> and conformance <> ModifiedContent<A, B>();
    v1 = type metadata accessor for EnvironmentReader();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for EnvironmentReader<ModifiedContent<_ViewModifier_Content<MatchedTransitionSourceModifier>, MatchedTransitionSourceSourceMarkingEffect>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<MatchedTransitionSourceModifier>, MatchedTransitionSourceSourceMarkingEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<MatchedTransitionSourceModifier>, MatchedTransitionSourceSourceMarkingEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<MatchedTransitionSourceModifier>, MatchedTransitionSourceSourceMarkingEffect> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<EnvironmentReader<ModifiedContent<_ViewModifier_Content<MatchedTransitionSourceModifier>, MatchedTransitionSourceSourceMarkingEffect>>, PreventsToolbarItemBridgingModifier>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<MatchedTransitionSourceModifier>, MatchedTransitionSourceSourceMarkingEffect>, type metadata accessor for _ViewModifier_Content<MatchedTransitionSourceModifier>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ViewModifier_Content<MatchedTransitionSourceModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<MatchedTransitionSourceModifier> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<MatchedTransitionSourceModifier>, MEMORY[0x1E697FDF8]);
    v5[1] = &protocol witness table for MatchedTransitionSourceSourceMarkingEffect;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<MatchedTransitionSourceModifier>, MatchedTransitionSourceSourceMarkingEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t static TimelineView<>._makeView(view:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v46 = a7;
  swift_getAssociatedTypeWitness();
  v13 = a6;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v41 = &v33[-v15];
  *&v52 = a3;
  *(&v52 + 1) = a4;
  *&v53 = a5;
  *(&v53 + 1) = a6;
  updated = type metadata accessor for TimelineView<>.UpdateFilter(0, &v52);
  v45 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v42 = &v33[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v44 = &v33[-v19];
  v20 = *a1;
  v21 = a2[3];
  v54 = a2[2];
  v55 = v21;
  v56 = a2[4];
  v57 = *(a2 + 20);
  v22 = a2[1];
  v52 = *a2;
  v53 = v22;
  v23 = [objc_allocWithZone(type metadata accessor for TimelineIdentifier()) init];
  v51 = v20;
  type metadata accessor for TimelineView(255, a3, a4, a5);
  type metadata accessor for _GraphValue();
  v39 = _GraphValue.value.getter();
  v43 = v20;
  v50 = v20;
  _GraphValue.value.getter();
  if (*(*(a3 - 8) + 64))
  {
    closure #1 in static TimelineView<>._makeView(view:inputs:)(1, a3, a4, a5);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v37 = DWORD2(v53);
  v36 = DWORD2(v52);
  PropertyList.subscript.getter();
  v35 = *&v47[0];
  v40 = v23;
  outlined init with copy of _GraphInputs(&v52, v47);
  if (one-time initialization token for alwaysOnFrameSpecifier != -1)
  {
    swift_once();
  }

  v49 = static CachedEnvironment.ID.alwaysOnFrameSpecifier;
  swift_beginAccess();
  type metadata accessor for BLSAlwaysOnFrameSpecifier?(0, &lazy cache variable for type metadata for BLSAlwaysOnFrameSpecifier?, type metadata accessor for BLSAlwaysOnFrameSpecifier, MEMORY[0x1E69E6720]);
  v34 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v52);
  outlined init with copy of _GraphInputs(&v52, v47);
  if (one-time initialization token for updateFidelity != -1)
  {
    swift_once();
  }

  v49 = static CachedEnvironment.ID.updateFidelity;
  swift_beginAccess();
  type metadata accessor for BLSUpdateFidelity(0);
  v24 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v52);
  outlined init with copy of _GraphInputs(&v52, v47);
  if (one-time initialization token for alwaysOnInvalidationHandler != -1)
  {
    swift_once();
  }

  v49 = static CachedEnvironment.ID.alwaysOnInvalidationHandler;
  swift_beginAccess();
  v25 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v52);
  v26 = v41;
  default argument 11 of TimelineView<>.UpdateFilter.init(view:schedule:phase:time:referenceDate:id:frameSpecifier:fidelity:invalidationHandler:hadFrameSpecifier:resetSeed:iterator:currentTime:nextTime:cadence:)(v41);
  LOBYTE(v47[0]) = 0;
  v32 = v13;
  v31 = v26;
  v27 = v44;
  v41 = a5;
  v28 = v40;
  TimelineView<>.UpdateFilter.init(view:schedule:phase:time:referenceDate:id:frameSpecifier:fidelity:invalidationHandler:hadFrameSpecifier:resetSeed:iterator:currentTime:nextTime:cadence:)(v39, OffsetAttribute2, v37, v36, v35, v40, v34, v24, v44, -INFINITY, INFINITY, v25, 0, 0, v31, v47, a3, a4, a5, v32);
  v29 = v45;
  (*(v45 + 16))(v42, v27, updated);
  swift_getWitnessTable(protocol conformance descriptor for TimelineView<A, B><>.UpdateFilter, updated);
  _GraphValue.init<A>(_:)();
  v47[2] = v54;
  v47[3] = v55;
  v47[4] = v56;
  v48 = v57;
  v47[0] = v52;
  v47[1] = v53;
  static View.makeDebuggableView(view:inputs:)();
  *&v47[0] = v55;
  DWORD2(v47[0]) = DWORD2(v55);
  MEMORY[0x1EEE9AC00](v55);

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();

  return (*(v29 + 8))(v27, updated);
}

uint64_t type metadata completion function for AnimationTimelineSchedule.Entries(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AnimationTimelineSchedule.Entries and conformance AnimationTimelineSchedule.Entries(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for AnimationTimelineSchedule.Entries(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata completion function for TimelineView<>.UpdateFilter(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t closure #1 in static TimelineView<>._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for TimelineView(0, a2, a3, a4);
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

unint64_t type metadata accessor for BLSAlwaysOnFrameSpecifier()
{
  result = lazy cache variable for type metadata for BLSAlwaysOnFrameSpecifier;
  if (!lazy cache variable for type metadata for BLSAlwaysOnFrameSpecifier)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for BLSAlwaysOnFrameSpecifier);
  }

  return result;
}

uint64_t default argument 11 of TimelineView<>.UpdateFilter.init(view:schedule:phase:time:referenceDate:id:frameSpecifier:fidelity:invalidationHandler:hadFrameSpecifier:resetSeed:iterator:currentTime:nextTime:cadence:)@<X0>(uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 56);

  return v5(a3, 1, 1, AssociatedTypeWitness);
}

uint64_t TimelineView<>.UpdateFilter.init(view:schedule:phase:time:referenceDate:id:frameSpecifier:fidelity:invalidationHandler:hadFrameSpecifier:resetSeed:iterator:currentTime:nextTime:cadence:)@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, int a12, char a13, int a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v23 = *a16;
  *a9 = a1;
  *(a9 + 4) = a2;
  *(a9 + 8) = a3;
  *(a9 + 12) = a4;
  *(a9 + 16) = a5;
  *(a9 + 24) = a6;
  *(a9 + 32) = a7;
  *(a9 + 36) = a8;
  *(a9 + 40) = a12;
  *(a9 + 44) = a13;
  *(a9 + 48) = a14;
  v28[0] = a17;
  v28[1] = a18;
  v28[2] = a19;
  v28[3] = a20;
  updated = type metadata accessor for TimelineView<>.UpdateFilter(0, v28);
  v25 = updated[23];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v26 = type metadata accessor for Optional();
  result = (*(*(v26 - 8) + 32))(a9 + v25, a15, v26);
  *(a9 + updated[24]) = a10;
  *(a9 + updated[25]) = a11;
  *(a9 + updated[26]) = v23;
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance TimelineView<A, B><>.UpdateFilter(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TimelineView<A, B><>.UpdateFilter, a1);

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t implicit closure #1 in static TimelineView<>._makeView(view:inputs:)(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24[4] = *MEMORY[0x1E69E9840];
  type metadata accessor for TimelineView(255, a3, a4, a5);
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  AGGraphCreateOffsetAttribute2();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  v12 = v11;
  v19 = v11;
  v20 = v13;
  v24[0] = a3;
  v24[1] = a4;
  v24[2] = a5;
  v24[3] = a6;
  v22 = type metadata accessor for TimelineView<>.AlwaysOnTimelinePreferenceWriter(0, v24);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TimelineView<A, B><>.AlwaysOnTimelinePreferenceWriter, v22);
  type metadata accessor for BLSAlwaysOnFrameSpecifier?(0, &lazy cache variable for type metadata for Attribute<(_:)>, type metadata accessor for (_:), MEMORY[0x1E698D388]);
  v15 = v14;
  v16 = a1;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v19, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_38, v21, v22, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v17);

  return LODWORD(v24[0]);
}

uint64_t View.accessibilityAdjustableAction(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v12 = 2;
  v10 = lazy protocol witness table accessor for type AccessibilityAdjustableAction and conformance AccessibilityAdjustableAction();
  return View.accessibilityAction<A>(_:label:image:_:)(&v12, 0, 0, 0, 0, 0, a1, a2, a5, a3, &type metadata for AccessibilityAdjustableAction, a4, v10);
}

unint64_t lazy protocol witness table accessor for type AccessibilityAdjustableAction and conformance AccessibilityAdjustableAction()
{
  result = lazy protocol witness table cache variable for type AccessibilityAdjustableAction and conformance AccessibilityAdjustableAction;
  if (!lazy protocol witness table cache variable for type AccessibilityAdjustableAction and conformance AccessibilityAdjustableAction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityAdjustableAction, &type metadata for AccessibilityAdjustableAction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityAdjustableAction and conformance AccessibilityAdjustableAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityAdjustableAction and conformance AccessibilityAdjustableAction;
  if (!lazy protocol witness table cache variable for type AccessibilityAdjustableAction and conformance AccessibilityAdjustableAction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityAdjustableAction, &type metadata for AccessibilityAdjustableAction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityAdjustableAction and conformance AccessibilityAdjustableAction);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AccessibilityAdjustableAction(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AccessibilityAdjustableAction and conformance AccessibilityAdjustableAction();
  *(a1 + 8) = result;
  return result;
}

uint64_t ModifiedContent<>.accessibilityAction(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *, void, void, void, void, void, uint64_t, uint64_t, __n128, uint64_t, ValueMetadata *, unint64_t))
{
  v11 = a1[1];
  v13 = a1[2];
  v12 = a1[3];
  v19 = *a1;
  v10 = v19;
  v20 = v11;
  v21 = v13;
  v22 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  outlined copy of AccessibilityActionKind.ActionKind(v10, v11, v13, v12);
  v15 = lazy protocol witness table accessor for type AccessibilityVoidAction and conformance AccessibilityVoidAction();

  (a7)(&v19, 0, 0, 0, 0, 0, a6, v14, a4, &type metadata for AccessibilityVoidAction, v15);

  return outlined consume of AccessibilityActionKind.ActionKind(v19, v20, v21, v22);
}

uint64_t sub_18BEAE618()
{

  return swift_deallocObject();
}

double ModifiedContent<>.accessibilityAction<A>(_:label:image:_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18 = swift_allocObject();
  v18[2] = *(a9 + 16);
  v18[3] = a10;
  v18[4] = a11;
  v18[5] = a7;
  v18[6] = a8;

  ModifiedContent<>.accessibilityAction<A>(_:label:image:_:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in ModifiedContent<>.accessibilityAction<A>(_:label:image:_:), v18, x8_0, a9, a10, a11);

  return result;
}

uint64_t sub_18BEAE73C()
{

  return swift_deallocObject();
}

uint64_t ModifiedContent<>.accessibilityAction<A>(_:label:image:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v28 = a7;
  v25 = a8;
  v26 = a9;
  v27 = a10;
  v18 = *(a11 - 8);
  v24 = a12;
  MEMORY[0x1EEE9AC00](a1);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI23AccessibilityAttachmentVSgMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyAccessibilityAction>, &type metadata for AnyAccessibilityAction, MEMORY[0x1E69E6F90]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_18CD63400;
  (*(v18 + 16))(v20, a1, a11);
  outlined copy of Text?(a2, a3, a4, a5);

  v22 = v25;

  AnyAccessibilityAction.init<A>(action:label:image:handler:bridged:)(v20, a2, a3, a4, a5, a6, v28, v22, v21 + 32, 0, a11, v24);
  ModifiedContent<>.accessibilityActions(_:)(v21, v27, v26);
}

uint64_t ModifiedContent<>.accessibilityActions(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = a1;
  v5 = lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
  v6 = lazy protocol witness table accessor for type [AnyAccessibilityAction] and conformance [A]();
  return ModifiedContent<>.update<A>(_:combining:isEnabled:)(&type metadata for AccessibilityProperties.ActionsKey, &v8, 1, a2, &type metadata for AccessibilityProperties.ActionsKey, v5, v6, a3);
}

unint64_t lazy protocol witness table accessor for type [AnyAccessibilityAction] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [AnyAccessibilityAction] and conformance [A];
  if (!lazy protocol witness table cache variable for type [AnyAccessibilityAction] and conformance [A])
  {
    type metadata accessor for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>(255, &lazy cache variable for type metadata for [AnyAccessibilityAction], &type metadata for AnyAccessibilityAction, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(MEMORY[0x1E6981FD0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type [AnyAccessibilityAction] and conformance [A]);
  }

  return result;
}

void *static ContentTransition.symbolEffect<A>(_:options:)@<X0>(uint64_t a1@<X1>, uint64_t a4@<X8>)
{
  v6 = type metadata accessor for SymbolEffectOptions();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SymbolEffectConfiguration();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of SymbolEffect.configuration.getter();
  (*(v7 + 16))(v9, a1, v6);
  result = _SymbolEffect.ReplaceConfiguration.init(_:options:)(v12, v9, &v15);
  if ((v15 & 0xFF00000000) == 0x200000000)
  {
    return static ContentTransition.default.getter();
  }

  v14 = v16;
  *a4 = v15 & 0x1FFFFFFFFLL;
  *(a4 + 12) = 0;
  *(a4 + 8) = v14;
  *(a4 + 13) = 2;
  return result;
}

uint64_t _SymbolEffect.ReplaceConfiguration.init(_:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v88 = a2;
  v90 = a3;
  v4 = type metadata accessor for ReplaceSymbolEffect.ReplaceStyle();
  v84 = *(v4 - 8);
  v85 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v76 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v75 = &v75 - v7;
  v8 = type metadata accessor for MagicReplaceSymbolEffect();
  v81 = *(v8 - 8);
  v82 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v79 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlaceholderContentView<SymbolEffectTransition>(0, &lazy cache variable for type metadata for ReplaceSymbolEffect.ReplaceStyle?, MEMORY[0x1E6982168], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v80 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v75 - v13;
  v87 = type metadata accessor for SymbolEffectOptions();
  v15 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v78 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v75 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v75 - v21;
  v83 = type metadata accessor for ReplaceSymbolEffect();
  v86 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v77 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v75 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v75 - v28;
  v30 = type metadata accessor for SymbolEffectConfiguration.Effect();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = a1;
  SymbolEffectConfiguration.effect.getter();
  v34 = (*(v31 + 88))(v33, v30);
  if (v34 == *MEMORY[0x1E69821C8] || v34 == *MEMORY[0x1E69821E0] || v34 == *MEMORY[0x1E69821C0] || v34 == *MEMORY[0x1E69821D0] || v34 == *MEMORY[0x1E69821D8] || v34 == *MEMORY[0x1E6982220])
  {
    goto LABEL_24;
  }

  if (v34 == *MEMORY[0x1E6982210])
  {
    (*(v31 + 96))(v33, v30);
    v35 = v86;
    v36 = v83;
    (*(v86 + 32))(v29, v33, v83);
    (*(v35 + 16))(v26, v29, v36);
    v38 = v87;
    v37 = v88;
    (*(v15 + 16))(v22, v88, v87);
    BreatheSymbolEffect.style.getter();
    LODWORD(v35) = (*(v84 + 48))(v14, 1, v85);
    outlined destroy of SymbolEffectOptions.RepeatOption?(v14, &lazy cache variable for type metadata for ReplaceSymbolEffect.ReplaceStyle?, MEMORY[0x1E6982168]);
    if (v35 == 1)
    {
      static Semantics.v6.getter();
      v39 = isLinkedOnOrAfter(_:)();
    }

    else
    {
      v39 = 0;
    }

    v50 = v90;
    v51 = _SymbolEffect.ReplaceConfiguration.init(_:options:allowMagic:)(v26, v22, v39 & 1, &v91);
    (*(v15 + 8))(v37, v38, v51);
    v52 = type metadata accessor for SymbolEffectConfiguration();
    (*(*(v52 - 8) + 8))(v89, v52);
    result = (*(v86 + 8))(v29, v36);
    v47 = v91;
    v49 = v92;
    v48 = v93;
    goto LABEL_14;
  }

  if (v34 != *MEMORY[0x1E6982218])
  {
    if (v34 != *MEMORY[0x1E69821F8] && v34 != *MEMORY[0x1E69821F0] && v34 != *MEMORY[0x1E6982200] && v34 == *MEMORY[0x1E69821B8])
    {
      (*(v31 + 96))(v33, v30);
      v55 = v81;
      v56 = v79;
      v57 = (*(v81 + 32))(v79, v33, v82);
      v58 = v77;
      MEMORY[0x18D00C190](v57);
      v59 = v78;
      v61 = v87;
      v60 = v88;
      (*(v15 + 16))(v78, v88, v87);
      v62 = ScaleSymbolEffect.isLayered.getter();
      v95 = (v62 == 2) | v62 & 1;
      SymbolEffectOptions.speed.getter();
      v64 = v63;
      v65 = v80;
      BreatheSymbolEffect.style.getter();
      v66 = *(v15 + 8);
      v66(v60, v61);
      v67 = type metadata accessor for SymbolEffectConfiguration();
      (*(*(v67 - 8) + 8))(v89, v67);
      v66(v59, v61);
      (*(v86 + 8))(v58, v83);
      (*(v55 + 8))(v56, v82);
      v69 = v84;
      v68 = v85;
      if ((*(v84 + 48))(v65, 1, v85) == 1)
      {
        result = outlined destroy of SymbolEffectOptions.RepeatOption?(v65, &lazy cache variable for type metadata for ReplaceSymbolEffect.ReplaceStyle?, MEMORY[0x1E6982168]);
        v47 = 0;
        v50 = v90;
      }

      else
      {
        v72 = *(v69 + 32);
        v73 = v75;
        v72(v75, v65, v68);
        v74 = v76;
        v72(v76, v73, v68);
        result = (*(v69 + 88))(v74, v68);
        if (result == *MEMORY[0x1E6982160])
        {
          v47 = 2;
          v50 = v90;
        }

        else
        {
          v50 = v90;
          if (result == *MEMORY[0x1E6982150])
          {
            v47 = 3;
          }

          else if (result == *MEMORY[0x1E6982158])
          {
            v47 = 4;
          }

          else
          {
            result = (*(v69 + 8))(v74, v68);
            v47 = 0;
          }
        }
      }

      v48 = v64;
      v49 = v95;
      goto LABEL_14;
    }

LABEL_24:
    (*(v15 + 8))(v88, v87);
    v70 = type metadata accessor for SymbolEffectConfiguration();
    (*(*(v70 - 8) + 8))(v89, v70);
    result = (*(v31 + 8))(v33, v30);
    v71 = v90;
    *v90 = 0x200000000;
    *(v71 + 2) = 0;
    return result;
  }

  (*(v31 + 8))(v33, v30);
  v41 = v87;
  v40 = v88;
  (*(v15 + 16))(v19, v88, v87);
  v94 = 1;
  SymbolEffectOptions.speed.getter();
  v43 = v42;
  v44 = *(v15 + 8);
  v44(v40, v41);
  v45 = type metadata accessor for SymbolEffectConfiguration();
  (*(*(v45 - 8) + 8))(v89, v45);
  result = (v44)(v19, v41);
  v47 = 0;
  v48 = v43;
  v49 = v94;
  v50 = v90;
LABEL_14:
  v53 = v49 == 0;
  v54 = 0x100000000;
  if (v53)
  {
    v54 = 0;
  }

  *v50 = v54 | v47;
  *(v50 + 2) = v48;
  return result;
}

void type metadata accessor for PlaceholderContentView<SymbolEffectTransition>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata completion function for TimelineView.Context(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<UpdateFidelityKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<UpdateFidelityKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UpdateFidelityKey>);
    }
  }
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance AlwaysOnInvalidationKey@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
    v2 = a1;
  }

  return outlined init with copy of TimelineInvalidationAction(&static AlwaysOnInvalidationKey.defaultValue, v2);
}

uint64_t FeedbackRequestContextWriter.ChildModifier.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  Value = AGGraphGetValue();
  (*(*(v4 - 8) + 16))(a2, Value, v4);
  v6 = AGCreateWeakAttribute();
  swift_weakLoadStrong();
  v8 = v6;
  swift_weakInit();

  return (*(*(a1 + 24) + 24))(&v8, v4);
}

void *assignWithTake for RemoteSheetContainerVCWriter(void *a1, void *a2)
{
  *a1 = *a2;
  swift_weakTakeAssign();
  return a1;
}

uint64_t closure #1 in FeedbackGenerator.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v24 = a4;
  v4 = type metadata accessor for FeedbackGenerator(255, a1, a2, a3);
  swift_getWitnessTable(protocol conformance descriptor for FeedbackGenerator<A>, v4);
  v5 = type metadata accessor for _ViewModifier_Content();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v5);
  v22 = lazy protocol witness table accessor for type SensoryFeedback and conformance SensoryFeedback();
  v27 = v5;
  v28 = &type metadata for SensoryFeedback;
  v29 = WitnessTable;
  v30 = v22;
  swift_getOpaqueTypeMetadata2();
  v6 = type metadata accessor for _ValueActionModifier2();
  v7 = type metadata accessor for ModifiedContent();
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  v15 = swift_checkMetadataState();
  FeedbackGenerator.contentConfiguredWithFeedback(content:)(v15, v11);
  v27 = v5;
  v28 = &type metadata for SensoryFeedback;
  v29 = WitnessTable;
  v30 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = swift_getWitnessTable(MEMORY[0x1E697FDE0], v6);
  v26[0] = OpaqueTypeConformance2;
  v26[1] = v17;
  v18 = MEMORY[0x1E697E858];
  v25[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v7, v26);
  v25[1] = MEMORY[0x1E69805D0];
  swift_getWitnessTable(v18, v8, v25);
  static ViewBuilder.buildExpression<A>(_:)();
  v19 = *(v9 + 8);
  v19(v11, v8);
  static ViewBuilder.buildExpression<A>(_:)();
  return v19(v14, v8);
}

uint64_t FeedbackGenerator.contentConfiguredWithFeedback(content:)@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v50 = a2;
  v4 = type metadata accessor for TaskPriority();
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v39 = v9;
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable(protocol conformance descriptor for FeedbackGenerator<A>, a1, v8);
  v11 = type metadata accessor for _ViewModifier_Content();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v11);
  v43 = WitnessTable;
  v42 = lazy protocol witness table accessor for type SensoryFeedback and conformance SensoryFeedback();
  *&v52 = v11;
  *(&v52 + 1) = &type metadata for SensoryFeedback;
  v53 = WitnessTable;
  v54 = v42;
  v45 = &_s7SwiftUI4ViewPAAE4task2id4name8priority4file4line_Qrqd___SSSgScPSSSiyyYaYAcntSQRd__lFQOMQ;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = *(OpaqueTypeMetadata2 - 8);
  v46 = OpaqueTypeMetadata2;
  v47 = v14;
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v51 = &v34 - v15;
  v52 = *(v2 + 16);
  v38 = "feedback implementation ";
  v16 = *(v6 + 16);
  v40 = v2;
  v41 = v16;
  v34 = v10;
  v16(v10, v2, a1);
  type metadata accessor for MainActor();
  v17 = static MainActor.shared.getter();
  v18 = *(v6 + 80);
  v19 = swift_allocObject();
  v20 = MEMORY[0x1E69E85E0];
  *(v19 + 2) = v17;
  *(v19 + 3) = v20;
  v21 = *(a1 + 16);
  v22 = *(a1 + 24);
  *(v19 + 4) = v21;
  *(v19 + 5) = v22;
  v23 = v21;
  v36 = *(v6 + 32);
  v37 = v22;
  v36(&v19[(v18 + 48) & ~v18], v10, a1);
  v24 = swift_checkMetadataState();
  v35 = v24;
  v25 = v44;
  static TaskPriority.userInitiated.getter();
  v26 = v42;
  v27 = v43;
  _s7SwiftUI4ViewPAAE4task2id4name8priority4file4line_Qrqd___SSSgScPSSSiyyYaYAcntSQRd__lF(&v52, 0, 0, v25, 0xD000000000000026, v38 | 0x8000000000000000, 185, &async function pointer to partial apply for closure #1 in FeedbackGenerator.contentConfiguredWithFeedback(content:), v51, v19, v24, &type metadata for SensoryFeedback, v43, v42);
  (*(v48 + 8))(v25, v49);
  v49 = *(a1 + 40);
  v28 = v34;
  v41(v34, v40, a1);
  v29 = swift_allocObject();
  *(v29 + 16) = v23;
  v30 = v36;
  *(v29 + 24) = v37;
  v30(v29 + ((v18 + 32) & ~v18), v28, a1);
  *&v52 = v35;
  *(&v52 + 1) = &type metadata for SensoryFeedback;
  v53 = v27;
  v54 = v26;
  swift_getOpaqueTypeConformance2();
  v31 = v46;
  v32 = v51;
  View.onChange<A>(of:initial:_:)();

  return (*(v47 + 8))(v32, v31);
}

uint64_t sub_18BEB0118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = type metadata accessor for FeedbackGenerator(0, v5, *(v4 + 40), a4);
  v7 = (*(*(v6 - 1) + 80) + 48) & ~*(*(v6 - 1) + 80);
  swift_unknownObjectRelease();
  swift_weakDestroy();
  (*(*(v5 - 8) + 8))(v4 + v7 + v6[10], v5);
  if (*(v4 + v7 + v6[11]))
  {
  }

  v8 = (v4 + v7 + v6[12]);
  if (v8[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  return swift_deallocObject();
}

uint64_t sub_18BEB024C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for FeedbackGenerator(0, v5, *(v4 + 24), a4);
  v7 = v4 + ((*(*(v6 - 1) + 80) + 32) & ~*(*(v6 - 1) + 80));
  swift_weakDestroy();
  (*(*(v5 - 8) + 8))(v7 + v6[10], v5);
  if (*(v7 + v6[11]))
  {
  }

  v8 = (v7 + v6[12]);
  if (v8[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  return swift_deallocObject();
}

Swift::Void __swiftcall MatchedTransitionSourceMarkingView.layoutSubviews()()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC7SwiftUI34MatchedTransitionSourceMarkingView_shadowView];
  [v0 bounds];
  [v1 setFrame_];
  v2 = *&v0[OBJC_IVAR____TtC7SwiftUI34MatchedTransitionSourceMarkingView_contentView];
  [v0 bounds];
  [v2 setFrame_];
  MatchedTransitionSourceMarkingView.updateLayerStyle(isZooming:)(v0[OBJC_IVAR____TtC7SwiftUI34MatchedTransitionSourceMarkingView_isPartOfActiveZoom]);
}

uint64_t ModifiedContent<>.accessibilityHidden(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  return ModifiedContent<>.update(isEnabled:body:)(1, partial apply for closure #1 in ModifiedContent<>.accessibilityVisibility(_:), a1, a2);
}

{
  return ModifiedContent<>.update(isEnabled:body:)(1, partial apply for closure #1 in ModifiedContent<>.accessibilityVisibility(_:), a1, a2);
}

uint64_t partial apply for closure #1 in ModifiedContent<>.accessibilityVisibility(_:)(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 20);
  if ((*(result + 120) & 1) == 0)
  {
    v4 = *(result + 112);
    v5 = v3 | ~HIDWORD(v4);
    v6 = v3 ^ 0xFFFFFFFFLL;
    v3 |= HIDWORD(v4);
    v2 = v5 & v2 | v6 & v4;
  }

  *(result + 112) = v2 | (v3 << 32);
  *(result + 120) = 0;
  return result;
}

ValueMetadata *type metadata accessor for MatchedTransitionSourceModifier()
{
  return &type metadata for MatchedTransitionSourceModifier;
}

{
  return &type metadata for MatchedTransitionSourceModifier;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance <> TimelineView<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  swift_getWitnessTable(protocol conformance descriptor for <> TimelineView<A, B>, a3, &v5);
  return static UnaryView._makeViewList(view:inputs:)();
}

uint64_t FeedbackGenerator.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v26 = a2;
  type metadata accessor for InterfaceIdiomPredicate<VisionInterfaceIdiom>();
  swift_getWitnessTable(protocol conformance descriptor for FeedbackGenerator<A>, a1);
  v3 = type metadata accessor for _ViewModifier_Content();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3);
  v23 = lazy protocol witness table accessor for type SensoryFeedback and conformance SensoryFeedback();
  v36 = v3;
  v37 = &type metadata for SensoryFeedback;
  v38 = WitnessTable;
  v39 = v23;
  v22[1] = &_s7SwiftUI4ViewPAAE4task2id4name8priority4file4line_Qrqd___SSSgScPSSSiyyYaYAcntSQRd__lFQOMQ;
  swift_getOpaqueTypeMetadata2();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for _ValueActionModifier2();
  v7 = type metadata accessor for ModifiedContent();
  v8 = type metadata accessor for ModifiedContent();
  v9 = type metadata accessor for StaticIf();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v22 - v14;
  v30 = v4;
  v31 = v5;
  v32 = v25;
  v27 = v4;
  v28 = v5;
  v29 = v25;
  v36 = v3;
  v37 = &type metadata for SensoryFeedback;
  v38 = WitnessTable;
  v39 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = swift_getWitnessTable(MEMORY[0x1E697FDE0], v6);
  v35[0] = OpaqueTypeConformance2;
  v35[1] = v17;
  v18 = MEMORY[0x1E697E858];
  v34[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v7, v35);
  v34[1] = MEMORY[0x1E69805D0];
  v21 = swift_getWitnessTable(v18, v8, v34);
  StaticIf<>.init<A>(idiom:then:else:)();
  v33[0] = lazy protocol witness table accessor for type InterfaceIdiomPredicate<VisionInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
  v33[1] = v21;
  v33[2] = v21;
  swift_getWitnessTable(MEMORY[0x1E6981CE8], v9, v33);
  static ViewBuilder.buildExpression<A>(_:)();
  v19 = *(v10 + 8);
  v19(v12, v9);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v19)(v15, v9);
}

uint64_t View.task<A>(id:priority:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v32 = a7;
  v30 = a9;
  v31 = a5;
  v28 = a3;
  v29 = a4;
  v26 = a1;
  v27 = a2;
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for _TaskValueModifier(0, a6, a8, v19);
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v26 - v23;
  (*(v15 + 16))(v18, v26, a6, v22);
  (*(v12 + 16))(v14, v27, v11);
  _TaskValueModifier.init(value:priority:action:)(v18, v14, v28, v29, a6, a8, v24);

  MEMORY[0x18D00A570](v24, v31, v20, v32);
  return (*(v21 + 8))(v24, v20);
}

uint64_t _TaskValueModifier.init(value:priority:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a3;
  *(a7 + 1) = a4;
  v11 = type metadata accessor for _TaskValueModifier(0, a5, a6, a4);
  v12 = *(v11 + 36);
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 32))(&a7[v12], a2, v13);
  v14 = *(*(a5 - 8) + 32);
  v15 = &a7[*(v11 + 40)];

  return v14(v15, a1, a5);
}

uint64_t (*FeedbackGenerator.implementation.modify(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x80uLL);
  }

  *a1 = v5;
  outlined init with copy of State<(feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?>(v2 + *(a2 + 48), v5, type metadata accessor for State<PlatformSensoryFeedback?>);
  type metadata accessor for State<PlatformSensoryFeedback?>(0);
  State.wrappedValue.getter();
  return FeedbackGenerator.implementation.modify;
}

void FeedbackGenerator.implementation.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    outlined init with copy of PlatformSensoryFeedback?((v2 + 6), (v2 + 11));
    if (v2[5])
    {
      dispatch thunk of AnyLocation.set(_:transaction:)();
    }

    outlined destroy of LocationBasedSensoryFeedback?((v2 + 11), &lazy cache variable for type metadata for PlatformSensoryFeedback?, &lazy cache variable for type metadata for PlatformSensoryFeedback, &protocol descriptor for PlatformSensoryFeedback);
    outlined destroy of (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)(v2, type metadata accessor for State<PlatformSensoryFeedback?>);
    outlined destroy of LocationBasedSensoryFeedback?((v2 + 6), &lazy cache variable for type metadata for PlatformSensoryFeedback?, &lazy cache variable for type metadata for PlatformSensoryFeedback, &protocol descriptor for PlatformSensoryFeedback);
  }

  else
  {
    if (v2[5])
    {
      dispatch thunk of AnyLocation.set(_:transaction:)();
    }

    outlined destroy of LocationBasedSensoryFeedback?((v2 + 6), &lazy cache variable for type metadata for PlatformSensoryFeedback?, &lazy cache variable for type metadata for PlatformSensoryFeedback, &protocol descriptor for PlatformSensoryFeedback);
    outlined destroy of (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)(v2, type metadata accessor for State<PlatformSensoryFeedback?>);
  }

  free(v2);
}

uint64_t outlined destroy of LocationBasedSensoryFeedback?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for IntelligenceSubelementProviding?(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t outlined init with copy of State<(feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for IntelligenceSubelementProviding?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for CVarArg(255, a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for State<PlatformSensoryFeedback?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for State<PlatformSensoryFeedback?>)
  {
    type metadata accessor for IntelligenceSubelementProviding?(255, &lazy cache variable for type metadata for PlatformSensoryFeedback?, &lazy cache variable for type metadata for PlatformSensoryFeedback, &protocol descriptor for PlatformSensoryFeedback);
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for State<PlatformSensoryFeedback?>);
    }
  }
}

uint64_t outlined destroy of (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *initializeWithCopy for FeedbackRequestContext(void *a1, void *a2)
{
  *a1 = *a2;
  swift_weakCopyInit();
  return a1;
}

uint64_t FeedbackRequestContext.implementation(type:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    UIKitSensoryFeedbackCache.implementation(type:)(a1, a2, &v10);
    if (v11)
    {
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v10, v12);
      Attribute = AGWeakAttributeGetAttribute();
      v8 = *MEMORY[0x1E698D3F8];

      if (Attribute != v8)
      {
        *(a3 + 24) = &type metadata for LocationBasedFeedbackAdaptor;
        *(a3 + 32) = &protocol witness table for LocationBasedFeedbackAdaptor;
        v9 = swift_allocObject();
        *a3 = v9;
        result = outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v12, v9 + 24);
        *(v9 + 16) = Attribute;
        return result;
      }

      result = __swift_destroy_boxed_opaque_existential_1(v12);
    }

    else
    {

      result = outlined destroy of LocationBasedSensoryFeedback?(&v10);
    }
  }

  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_18BEB11A8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocObject();
}

void UIKitSensoryFeedbackCache.implementation(type:)(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  if (!(a1 >> 62))
  {
    *(a3 + 24) = &type metadata for ImpactFeedbackImplementation;
    *(a3 + 32) = &protocol witness table for ImpactFeedbackImplementation;
    swift_beginAccess();
    v8 = *(v3 + 24);
    if (!*(v8 + 16) || (v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v11 & 1) == 0))
    {
      swift_endAccess();
      v20 = [objc_allocWithZone(MEMORY[0x1E69DCAE8]) initWithStyle_];
      swift_beginAccess();
      v21 = v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v78 = *(v4 + 24);
      *(v4 + 24) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v21, a1, a2, isUniquelyReferenced_nonNull_native);
      *(v4 + 24) = v78;
      swift_endAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v24 = Strong;
        [Strong swiftui:v21 addManagedInteraction:?];
      }

      goto LABEL_18;
    }

    goto LABEL_8;
  }

  if (a1 >> 62 == 1)
  {
    *(a3 + 24) = &type metadata for ImpactFeedbackImplementation;
    *(a3 + 32) = &protocol witness table for ImpactFeedbackImplementation;
    swift_beginAccess();
    v8 = *(v3 + 24);
    if (!*(v8 + 16) || (v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v10 & 1) == 0))
    {
      swift_endAccess();
      v15 = [objc_allocWithZone(MEMORY[0x1E69DCAE8]) initWithStyle_];
      swift_beginAccess();
      v16 = v15;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v77 = *(v4 + 24);
      *(v4 + 24) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, a1, a2, v17);
      *(v4 + 24) = v77;
      swift_endAccess();
      v18 = swift_unknownObjectWeakLoadStrong();
      if (v18)
      {
        v19 = v18;
        [v18 swiftui:v16 addManagedInteraction:?];
      }

      goto LABEL_18;
    }

LABEL_8:
    v12 = *(*(v8 + 56) + 8 * v9);
    swift_endAccess();
    v13 = v12;
LABEL_18:
    objc_opt_self();
    *a3 = swift_dynamicCastObjCClassUnconditional();
    *(a3 + 8) = a2;
    return;
  }

  if (__PAIR128__(2, 0x8000000000000001) >= __PAIR128__(a2, a1))
  {
    if (__PAIR128__(1, 0x8000000000000001) >= __PAIR128__(a2, a1))
    {
      if (a1 > 0x8000000000000002)
      {
        *(a3 + 24) = &type metadata for SelectionFeedbackImplementation;
        *(a3 + 32) = &protocol witness table for SelectionFeedbackImplementation;
        swift_beginAccess();
        v38 = *(v3 + 24);
        if (*(v38 + 16) && (v39 = specialized __RawDictionaryStorage.find<A>(_:)(0x8000000000000001, 1), (v40 & 1) != 0))
        {
          v41 = *(*(v38 + 56) + 8 * v39);
          swift_endAccess();
          objc_opt_self();
          v42 = swift_dynamicCastObjCClassUnconditional();
          v43 = v41;
          *a3 = v42;
        }

        else
        {
          swift_endAccess();
          v44 = [objc_allocWithZone(MEMORY[0x1E69DCF40]) init];
          swift_beginAccess();
          v45 = v44;
          v46 = swift_isUniquelyReferenced_nonNull_native();
          v79 = *(v4 + 24);
          *(v4 + 24) = 0x8000000000000000;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v45, 0x8000000000000001, 1, v46);
          *(v4 + 24) = v79;
          swift_endAccess();
          v47 = swift_unknownObjectWeakLoadStrong();
          if (v47)
          {
            v48 = v47;
            [v47 swiftui:v45 addManagedInteraction:?];
          }

          *a3 = v45;
        }
      }

      else if (a1 ^ 0x8000000000000000 | a2)
      {
        if (a1 ^ 0x8000000000000001 | a2)
        {
          *(a3 + 24) = &type metadata for NotificationFeedbackImplementation;
          *(a3 + 32) = &protocol witness table for NotificationFeedbackImplementation;
          swift_beginAccess();
          v59 = *(v3 + 24);
          if (*(v59 + 16) && (v60 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v61 & 1) != 0))
          {
            v62 = *(*(v59 + 56) + 8 * v60);
            swift_endAccess();
            objc_opt_self();
            v29 = swift_dynamicCastObjCClassUnconditional();
            v63 = v62;
          }

          else
          {
            swift_endAccess();
            v73 = [objc_allocWithZone(MEMORY[0x1E69DCCF0]) init];
            swift_beginAccess();
            v29 = v73;
            v74 = swift_isUniquelyReferenced_nonNull_native();
            v83 = *(v4 + 24);
            *(v4 + 24) = 0x8000000000000000;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, a1, a2, v74);
            *(v4 + 24) = v83;
            swift_endAccess();
            v75 = swift_unknownObjectWeakLoadStrong();
            if (v75)
            {
              v76 = v75;
              [v75 swiftui:v29 addManagedInteraction:?];
            }
          }

          v72 = 2;
        }

        else
        {
          *(a3 + 24) = &type metadata for NotificationFeedbackImplementation;
          *(a3 + 32) = &protocol witness table for NotificationFeedbackImplementation;
          swift_beginAccess();
          v25 = *(v3 + 24);
          if (*(v25 + 16) && (v26 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v27 & 1) != 0))
          {
            v28 = *(*(v25 + 56) + 8 * v26);
            swift_endAccess();
            objc_opt_self();
            v29 = swift_dynamicCastObjCClassUnconditional();
            v30 = v28;
          }

          else
          {
            swift_endAccess();
            v68 = [objc_allocWithZone(MEMORY[0x1E69DCCF0]) init];
            swift_beginAccess();
            v29 = v68;
            v69 = swift_isUniquelyReferenced_nonNull_native();
            v82 = *(v4 + 24);
            *(v4 + 24) = 0x8000000000000000;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, a1, a2, v69);
            *(v4 + 24) = v82;
            swift_endAccess();
            v70 = swift_unknownObjectWeakLoadStrong();
            if (v70)
            {
              v71 = v70;
              [v70 swiftui:v29 addManagedInteraction:?];
            }
          }

          v72 = 1;
        }

        *a3 = v29;
        *(a3 + 8) = v72;
      }

      else
      {
        *(a3 + 24) = &type metadata for NotificationFeedbackImplementation;
        *(a3 + 32) = &protocol witness table for NotificationFeedbackImplementation;
        swift_beginAccess();
        v53 = *(v3 + 24);
        if (*(v53 + 16) && (v54 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v55 & 1) != 0))
        {
          v56 = *(*(v53 + 56) + 8 * v54);
          swift_endAccess();
          objc_opt_self();
          v57 = swift_dynamicCastObjCClassUnconditional();
          v58 = v56;
        }

        else
        {
          swift_endAccess();
          v64 = [objc_allocWithZone(MEMORY[0x1E69DCCF0]) init];
          swift_beginAccess();
          v57 = v64;
          v65 = swift_isUniquelyReferenced_nonNull_native();
          v81 = *(v4 + 24);
          *(v4 + 24) = 0x8000000000000000;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v57, a1, a2, v65);
          *(v4 + 24) = v81;
          swift_endAccess();
          v66 = swift_unknownObjectWeakLoadStrong();
          if (v66)
          {
            v67 = v66;
            [v66 swiftui:v57 addManagedInteraction:?];
          }
        }

        *a3 = v57;
        *(a3 + 8) = 0;
      }

      return;
    }

    if (__PAIR128__(__CFADD__(a1, 0x8000000000000000) + a2 - 3, a1 + 0x8000000000000000) >= 2)
    {
      v14 = a2 == 1;
      goto LABEL_28;
    }

LABEL_36:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  if (__PAIR128__(4, 0x7FFFFFFFFFFFFFFFLL) < __PAIR128__(a2, a1) || __PAIR128__(__CFADD__(a1, 0x8000000000000000) + a2 - 4, a1 + 0x8000000000000000) < 4)
  {
    goto LABEL_36;
  }

  v14 = a2 == 2;
LABEL_28:
  if (!v14 || a1 != 0x8000000000000002)
  {
    goto LABEL_36;
  }

  *(a3 + 24) = &type metadata for CanvasFeedbackImplementation;
  *(a3 + 32) = &protocol witness table for CanvasFeedbackImplementation;
  swift_beginAccess();
  v32 = *(v3 + 24);
  if (*(v32 + 16) && (v33 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v34 & 1) != 0))
  {
    v35 = *(*(v32 + 56) + 8 * v33);
    swift_endAccess();
    objc_opt_self();
    v36 = swift_dynamicCastObjCClassUnconditional();
    v37 = v35;
  }

  else
  {
    swift_endAccess();
    v49 = [objc_allocWithZone(MEMORY[0x1E69DC778]) init];
    swift_beginAccess();
    v36 = v49;
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v80 = *(v4 + 24);
    *(v4 + 24) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v36, a1, a2, v50);
    *(v4 + 24) = v80;
    swift_endAccess();
    v51 = swift_unknownObjectWeakLoadStrong();
    if (v51)
    {
      v52 = v51;
      [v51 swiftui:v36 addManagedInteraction:?];
    }
  }

  *a3 = v36;
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  a3(v10, a1, a2);
  v7 = Hasher._finalize()();

  return a4(a1, a2, v7);
}

uint64_t SensoryFeedback.FeedbackType.hash(into:)(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = a2;
  if (!(a2 >> 62))
  {
    v5 = 10;
    goto LABEL_5;
  }

  if (a2 >> 62 == 1)
  {
    v5 = 11;
LABEL_5:
    MEMORY[0x18D00F6F0](v5);
    MEMORY[0x18D00F6F0](v4);
    if ((a3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = a3;
    }

    else
    {
      v6 = 0;
    }

    return MEMORY[0x18D00F730](v6);
  }

  if (__PAIR128__(2, 0x8000000000000001) >= __PAIR128__(a3, a2))
  {
    if (__PAIR128__(1, 0x8000000000000000) < __PAIR128__(a3, a2))
    {
      if (__PAIR128__(1, 0x8000000000000002) >= __PAIR128__(a3, a2))
      {
        if (a3 == 1 && a2 == 0x8000000000000001)
        {
          v18 = 5;
        }

        else
        {
          v18 = 6;
        }
      }

      else if (a3 == 1 && a2 == 0x8000000000000003)
      {
        v18 = 7;
      }

      else if (a3 == 2 && a2 == 0x8000000000000000)
      {
        v18 = 8;
      }

      else
      {
        v18 = 9;
      }
    }

    else if (a2 <= 0x8000000000000001)
    {
      v18 = (a2 ^ 0x8000000000000000 | a3) != 0;
    }

    else if (a2 ^ 0x8000000000000002 | a3)
    {
      if (a2 ^ 0x8000000000000003 | a3)
      {
        v18 = 4;
      }

      else
      {
        v18 = 3;
      }
    }

    else
    {
      v18 = 2;
    }
  }

  else if (__PAIR128__(3, 0x8000000000000002) >= __PAIR128__(a3, a2))
  {
    if (__PAIR128__(3, 0x7FFFFFFFFFFFFFFFLL) >= __PAIR128__(a3, a2))
    {
      if (a3 == 2 && a2 == 0x8000000000000002)
      {
        v18 = 12;
      }

      else
      {
        v18 = 13;
      }
    }

    else if (a3 == 3 && a2 == 0x8000000000000000)
    {
      v18 = 14;
    }

    else if (a3 == 3 && a2 == 0x8000000000000001)
    {
      v18 = 15;
    }

    else
    {
      v18 = 16;
    }
  }

  else if (__PAIR128__(4, 0x8000000000000001) < __PAIR128__(a3, a2))
  {
    if (a3 == 4 && a2 == 0x8000000000000002)
    {
      v18 = 20;
    }

    else if (a3 == 4 && a2 == 0x8000000000000003)
    {
      v18 = 21;
    }

    else
    {
      v18 = 22;
    }
  }

  else if (a3 == 3 && a2 == 0x8000000000000003)
  {
    v18 = 17;
  }

  else if (a3 == 4 && a2 == 0x8000000000000000)
  {
    v18 = 18;
  }

  else
  {
    v18 = 19;
  }

  return MEMORY[0x18D00F6F0](v18);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3 + 64;
  v6 = -1 << *(v3 + 32);
  result = a3 & ~v6;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v8 = ~v6;
    v9 = a1 & 0xC000000000000000;
    v10 = *(v3 + 48);
    v11 = a1 != 0x8000000000000003;
    v12 = a1 != 0x8000000000000000;
    v13 = a2 != 5 || a1 != 0x8000000000000000;
    v14 = a1 != 0x8000000000000001;
    v15 = a2 != 4 || a1 != 0x8000000000000003;
    v16 = a2 != 4 || a1 != 0x8000000000000002;
    v17 = a2 != 4 || a1 != 0x8000000000000001;
    v18 = a2 != 4 || a1 != 0x8000000000000000;
    v19 = a2 != 3 || a1 != 0x8000000000000003;
    v20 = a2 != 3 || a1 != 0x8000000000000002;
    if (a2 != 3)
    {
      v14 = 1;
      v12 = 1;
    }

    if (a2 == 2)
    {
      v21 = a1 != 0x8000000000000002;
    }

    else
    {
      v11 = 1;
      v21 = 1;
    }

    v22 = a2 == 2 && a1 == 0x8000000000000001;
    v64 = v22;
    v23 = a2 == 2 && a1 == 0x8000000000000000;
    v63 = v23;
    v24 = a2 == 1 && a1 == 0x8000000000000003;
    v62 = v24;
    v25 = a2 == 1 && a1 == 0x8000000000000002;
    v61 = v25;
    v26 = a2 == 1 && a1 == 0x8000000000000001;
    v60 = v26;
    v27 = a2 == 1 && a1 == 0x8000000000000000;
    v59 = v27;
    v28 = *&a2 == 0.0 && a1 == 0x8000000000000003;
    v58 = v28;
    v29 = *&a2 == 0.0 && a1 == 0x8000000000000002;
    v65 = v29;
    v30 = *&a2 == 0.0 && a1 == 0x8000000000000001;
    v31 = *&a2 == 0.0 && a1 == 0x8000000000000000;
    v56 = v31;
    v57 = v30;
    v33 = v9 != 0x8000000000000000 || v13;
    v34 = v9 != 0x8000000000000000 || v15;
    v54 = v34;
    v55 = v33;
    if (v9 == 0x8000000000000000)
    {
      v35 = v14;
    }

    else
    {
      v16 = 1;
      v17 = 1;
      v18 = 1;
      v19 = 1;
      v20 = 1;
      v35 = 1;
    }

    v36 = v9 != 0x8000000000000000 || v12;
    v37 = v9 != 0x8000000000000000 || v11;
    v38 = v9 != 0x8000000000000000 || v21;
    do
    {
      v40 = (v10 + 16 * result);
      v41 = *v40;
      v42 = *(v40 + 1);
      v43 = *v40 >> 62;
      if (v43)
      {
        if (v43 != 1)
        {
          if (__PAIR128__(2, 0x8000000000000001) >= __PAIR128__(*&v42, v41))
          {
            if (__PAIR128__(1, 0x8000000000000000) < __PAIR128__(*&v42, v41))
            {
              if (__PAIR128__(1, 0x8000000000000002) >= __PAIR128__(*&v42, v41))
              {
                if (*&v42 == 1 && v41 == 0x8000000000000001)
                {
                  if (v60)
                  {
                    return result;
                  }
                }

                else if (v61)
                {
                  return result;
                }
              }

              else if (*&v42 == 1 && v41 == 0x8000000000000003)
              {
                if (v62)
                {
                  return result;
                }
              }

              else if (*&v42 == 2 && v41 == 0x8000000000000000)
              {
                if (v63)
                {
                  return result;
                }
              }

              else if (v64)
              {
                return result;
              }
            }

            else if (v41 <= 0x8000000000000001)
            {
              if (v41 ^ 0x8000000000000000 | *&v42)
              {
                if (v57)
                {
                  return result;
                }
              }

              else if (v56)
              {
                return result;
              }
            }

            else if (v41 ^ 0x8000000000000002 | *&v42)
            {
              if (v41 ^ 0x8000000000000003 | *&v42)
              {
                if (v59)
                {
                  return result;
                }
              }

              else if (v58)
              {
                return result;
              }
            }

            else if (v65)
            {
              return result;
            }
          }

          else if (__PAIR128__(3, 0x8000000000000002) >= __PAIR128__(*&v42, v41))
          {
            if (__PAIR128__(3, 0x7FFFFFFFFFFFFFFFLL) >= __PAIR128__(*&v42, v41))
            {
              if (*&v42 == 2 && v41 == 0x8000000000000002)
              {
                if ((v38 & 1) == 0)
                {
                  return result;
                }
              }

              else if ((v37 & 1) == 0)
              {
                return result;
              }
            }

            else if (*&v42 == 3 && v41 == 0x8000000000000000)
            {
              if ((v36 & 1) == 0)
              {
                return result;
              }
            }

            else if (*&v42 == 3 && v41 == 0x8000000000000001)
            {
              if ((v35 & 1) == 0)
              {
                return result;
              }
            }

            else if (!v20)
            {
              return result;
            }
          }

          else if (__PAIR128__(4, 0x8000000000000001) < __PAIR128__(*&v42, v41))
          {
            if (*&v42 == 4 && v41 == 0x8000000000000002)
            {
              if (!v16)
              {
                return result;
              }
            }

            else if (*&v42 == 4 && v41 == 0x8000000000000003)
            {
              if ((v54 & 1) == 0)
              {
                return result;
              }
            }

            else if ((v55 & 1) == 0)
            {
              return result;
            }
          }

          else if (*&v42 == 3 && v41 == 0x8000000000000003)
          {
            if (!v19)
            {
              return result;
            }
          }

          else if (*&v42 == 4 && v41 == 0x8000000000000000)
          {
            if (!v18)
            {
              return result;
            }
          }

          else if (!v17)
          {
            return result;
          }

          goto LABEL_80;
        }

        if (v9 != 0x4000000000000000)
        {
          goto LABEL_80;
        }
      }

      else if (a1 >> 62)
      {
        goto LABEL_80;
      }

      if (v41 == a1 && v42 == *&a2)
      {
        return result;
      }

LABEL_80:
      result = (result + 1) & v8;
    }

    while (((*(v5 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<SensoryFeedback.FeedbackType, UIFeedbackGenerator>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<SensoryFeedback.FeedbackType, UIFeedbackGenerator>)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIFeedbackGenerator, 0x1E69DCA00);
    lazy protocol witness table accessor for type SensoryFeedback.FeedbackType and conformance SensoryFeedback.FeedbackType();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<SensoryFeedback.FeedbackType, UIFeedbackGenerator>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SensoryFeedback.FeedbackType and conformance SensoryFeedback.FeedbackType()
{
  result = lazy protocol witness table cache variable for type SensoryFeedback.FeedbackType and conformance SensoryFeedback.FeedbackType;
  if (!lazy protocol witness table cache variable for type SensoryFeedback.FeedbackType and conformance SensoryFeedback.FeedbackType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SensoryFeedback.FeedbackType, &type metadata for SensoryFeedback.FeedbackType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SensoryFeedback.FeedbackType and conformance SensoryFeedback.FeedbackType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SensoryFeedback.FeedbackType and conformance SensoryFeedback.FeedbackType;
  if (!lazy protocol witness table cache variable for type SensoryFeedback.FeedbackType and conformance SensoryFeedback.FeedbackType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SensoryFeedback.FeedbackType, &type metadata for SensoryFeedback.FeedbackType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SensoryFeedback.FeedbackType and conformance SensoryFeedback.FeedbackType);
  }

  return result;
}

uint64_t FeedbackGenerator.implementation.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + *(a2 + 48);
  outlined init with copy of PlatformSensoryFeedback?(a1, v6);
  if (*(v4 + 40))
  {
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  outlined destroy of LocationBasedSensoryFeedback?(a1, &lazy cache variable for type metadata for PlatformSensoryFeedback?, &lazy cache variable for type metadata for PlatformSensoryFeedback, &protocol descriptor for PlatformSensoryFeedback);
  return outlined destroy of LocationBasedSensoryFeedback?(v6, &lazy cache variable for type metadata for PlatformSensoryFeedback?, &lazy cache variable for type metadata for PlatformSensoryFeedback, &protocol descriptor for PlatformSensoryFeedback);
}

uint64_t outlined init with copy of PlatformSensoryFeedback?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for IntelligenceSubelementProviding?(0, &lazy cache variable for type metadata for PlatformSensoryFeedback?, &lazy cache variable for type metadata for PlatformSensoryFeedback, &protocol descriptor for PlatformSensoryFeedback);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t initializeWithCopy for LocationBasedFeedbackAdaptor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 32);
  *(a1 + 32) = v3;
  (**(v3 - 8))(a1 + 8, a2 + 8);
  return a1;
}

void *sub_18BEB28E0(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = v3;
  return a1;
}

uint64_t protocol witness for PlatformSensoryFeedback.setUp() in conformance LocationBasedFeedbackAdaptor()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 8, v1);
  return (*(*(v2 + 8) + 8))(v1);
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, SensoryFeedback.FeedbackType.hash(into:), specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, MEMORY[0x1E69E5ED0], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

double DividerShape.path(in:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*(a1 + 24) + 24))(v5, *(a1 + 16));
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

double protocol witness for Shape.path(in:) in conformance DividerShape<A>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  DividerShape.path(in:)(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

void type metadata accessor for CustomProgressView<EmptyView, EmptyView>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void *))
{
  if (!*a2)
  {
    v10[6] = v5;
    v10[7] = v6;
    v10[0] = a3;
    v10[1] = MEMORY[0x1E6981E70];
    v10[2] = a4;
    v10[3] = MEMORY[0x1E6981E60];
    v8 = a5(0, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t ProgressView<>.init<>()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E6981E70];
  v3 = MEMORY[0x1E6981E60];
  type metadata accessor for CustomProgressView<EmptyView, EmptyView>(0, &lazy cache variable for type metadata for CustomProgressView<EmptyView, EmptyView>, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], type metadata accessor for CustomProgressView);
  v5 = v4[13];
  v6 = v4[14];
  v7 = v4[15];
  *a1 = 0;
  *(a1 + 8) = 257;
  type metadata accessor for ProgressViewValue(0);
  swift_storeEnumTagMultiPayload();
  *(a1 + v5) = 1;
  *(a1 + v6) = 1;
  *(a1 + v7) = 0;
  type metadata accessor for CustomProgressView<EmptyView, EmptyView>(0, &lazy cache variable for type metadata for ProgressView<EmptyView, EmptyView>.Base, v2, v3, type metadata accessor for ProgressView.Base);

  return swift_storeEnumTagMultiPayload();
}

void *protocol witness for UIViewRepresentable.makeUIView(context:) in conformance CircularUIKitProgressView()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 168);
  type metadata accessor for CircularUIKitProgressView.SwiftUIActivityIndicatorView();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = v4;
  if (v3 == 1)
  {
    v6 = v4;
    v7 = 16;
  }

  else
  {
    v8 = v4;
    specialized Environment.wrappedValue.getter(v1, v2, &v11);
    v9 = 101;
    if (v11 - 3 >= 2)
    {
      v9 = 100;
    }

    if (v11 >= 2u)
    {
      v7 = v9;
    }

    else
    {
      v7 = 3;
    }
  }

  [v5 setActivityIndicatorViewStyle_];
  [v5 startAnimating];

  return v5;
}

id @objc LinearUIKitProgressView.Base.SwiftUIProgressView.init(frame:)(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t (*a7)(void))
{
  v12.receiver = a1;
  v12.super_class = (a7)(0, a6);
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a2, a3, a4, a5);
}

double partial apply for closure #1 in UIHostingContentView.updateViewGraphForDisplay(isHidden:)(uint64_t a1)
{
  _UIHostingView.viewGraph.getter(a1);
  GraphHost.incrementPhase()();

  return result;
}

uint64_t *assignWithCopy for LazyHGrid(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];
  v6 = a2[2];
  *(a1 + 24) = *(a2 + 24);
  a1[2] = v6;
  *(a1 + 7) = *(a2 + 7);
  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 24))((a1 + *(v7 + 80) + 32) & ~*(v7 + 80), (a2 + *(v7 + 80) + 32) & ~*(v7 + 80));
  return a1;
}

void destroy for GeometryTransform(uint64_t a1)
{
  v2 = *(a1 + 120);
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>)
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<WidgetInterfaceIdiom>, MEMORY[0x1E697FAD8], MEMORY[0x1E697FAD0], MEMORY[0x1E69801E0]);
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, lazy protocol witness table accessor for type WidgetBorderedButtonStyle and conformance WidgetBorderedButtonStyle, &type metadata for WidgetBorderedButtonStyle, type metadata accessor for ButtonStyleContainerModifier);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type WidgetBorderedButtonStyle and conformance WidgetBorderedButtonStyle()
{
  result = lazy protocol witness table cache variable for type WidgetBorderedButtonStyle and conformance WidgetBorderedButtonStyle;
  if (!lazy protocol witness table cache variable for type WidgetBorderedButtonStyle and conformance WidgetBorderedButtonStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WidgetBorderedButtonStyle, &type metadata for WidgetBorderedButtonStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetBorderedButtonStyle and conformance WidgetBorderedButtonStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BorderedButtonStyle_CarCatalyst and conformance BorderedButtonStyle_CarCatalyst()
{
  result = lazy protocol witness table cache variable for type BorderedButtonStyle_CarCatalyst and conformance BorderedButtonStyle_CarCatalyst;
  if (!lazy protocol witness table cache variable for type BorderedButtonStyle_CarCatalyst and conformance BorderedButtonStyle_CarCatalyst)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BorderedButtonStyle_CarCatalyst, &type metadata for BorderedButtonStyle_CarCatalyst, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BorderedButtonStyle_CarCatalyst and conformance BorderedButtonStyle_CarCatalyst);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonStyleContainerModifier<WidgetBorderedButtonStyle> and conformance ButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type ButtonStyleContainerModifier<WidgetBorderedButtonStyle> and conformance ButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type ButtonStyleContainerModifier<WidgetBorderedButtonStyle> and conformance ButtonStyleContainerModifier<A>)
  {
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, lazy protocol witness table accessor for type WidgetBorderedButtonStyle and conformance WidgetBorderedButtonStyle, &type metadata for WidgetBorderedButtonStyle, type metadata accessor for ButtonStyleContainerModifier);
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonStyleContainerModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonStyleContainerModifier<WidgetBorderedButtonStyle> and conformance ButtonStyleContainerModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst> and conformance PrimitiveButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst> and conformance PrimitiveButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst> and conformance PrimitiveButtonStyleContainerModifier<A>)
  {
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, lazy protocol witness table accessor for type BorderedButtonStyle_CarCatalyst and conformance BorderedButtonStyle_CarCatalyst, &type metadata for BorderedButtonStyle_CarCatalyst, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    result = swift_getWitnessTable(protocol conformance descriptor for PrimitiveButtonStyleContainerModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst> and conformance PrimitiveButtonStyleContainerModifier<A>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>)
  {
    type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>);
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, lazy protocol witness table accessor for type BorderedButtonStyle_CarCatalyst and conformance BorderedButtonStyle_CarCatalyst, &type metadata for BorderedButtonStyle_CarCatalyst);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>(255);
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, lazy protocol witness table accessor for type BorderedButtonStyle and conformance BorderedButtonStyle, &type metadata for BorderedButtonStyle);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>);
    }
  }
}

uint64_t objectdestroy_25Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for PopoverPresentationModifier.PopoverModifier(0, v5, *(v4 + 24), a4);
  v7 = v6 - 8;
  v8 = v4 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80));
  (*(*(v5 - 8) + 8))(v8 + *(v6 + 36), v5);
  outlined consume of Environment<CGFloat?>.Content(*(v8 + *(v7 + 48)), *(v8 + *(v7 + 48) + 8), *(v8 + *(v7 + 48) + 16));

  return swift_deallocObject();
}

void type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_accessibilityButtonBorderSpec>(255, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
    type metadata accessor for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, lazy protocol witness table accessor for type BorderlessButtonStyle and conformance BorderlessButtonStyle, &type metadata for BorderlessButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>);
    }
  }
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_accessibilityButtonBorderSpec>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t *assignWithCopy for BorderedButtonStyle_CarCatalyst(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t sub_18BEB34F4(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

void one-time initialization function for defaultAction()
{
  static KeyboardShortcut.defaultAction = 13;
  qword_1ED57A6B8 = 0xE100000000000000;
  qword_1ED57A6C0 = 0;
  byte_1ED57A6C8 = 0;
}

{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x1E69DDCD0];
  v2 = [v0 createDocumentActionWithIntent_];

  static _NewDocumentButton.defaultAction = v2;
}

uint64_t *assignWithTake for BorderedButtonStyle_Phone(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  if (a1[5] != 1)
  {
    v4 = a2[5];
    if (v4 != 1)
    {
      v6 = *(a2 + 32);
      v7 = a1[2];
      v8 = a1[3];
      *(a1 + 1) = *(a2 + 1);
      v9 = *(a1 + 32);
      *(a1 + 32) = v6;
      outlined consume of _Glass.Variant.Role(v7, v8, v9);
      *(a1 + 33) = *(a2 + 33);
      a1[5] = v4;

      a1[6] = a2[6];
      *(a1 + 56) = *(a2 + 56);
      goto LABEL_6;
    }

    outlined destroy of Glass((a1 + 2));
  }

  v5 = *(a2 + 2);
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = v5;
  *(a1 + 41) = *(a2 + 41);
LABEL_6:
  v10 = *(a2 + 72);
  v11 = a1[8];
  v12 = *(a1 + 72);
  a1[8] = a2[8];
  *(a1 + 72) = v10;
  outlined consume of Environment<Selector?>.Content(v11, v12);
  v13 = *(a2 + 88);
  v14 = a1[10];
  a1[10] = a2[10];
  *(a1 + 88) = v13;
  outlined consume of Environment<Color?>.Content(v14);
  return a1;
}

uint64_t assignWithCopy for ResolvedBorderedButton(uint64_t a1, uint64_t a2)
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
  v9 = *(a2 + 25);
  v10 = *(a2 + 24);
  outlined copy of Environment<CGFloat?>.Content(v8, v10, v9);
  v11 = *(a1 + 16);
  v12 = *(a1 + 25);
  *(a1 + 16) = v8;
  v13 = *(a1 + 24);
  *(a1 + 24) = v10;
  *(a1 + 25) = v9;
  outlined consume of Environment<CGFloat?>.Content(v11, v13, v12);
  v14 = *(a2 + 32);
  v15 = *(a2 + 40);
  v16 = *(a2 + 48);
  outlined copy of Environment<Material?>.Content(v14, v15, v16);
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v19 = *(a1 + 48);
  *(a1 + 32) = v14;
  *(a1 + 40) = v15;
  *(a1 + 48) = v16;
  outlined consume of Environment<Material?>.Content(v17, v18, v19);
  v20 = *(a2 + 56);
  LOBYTE(v15) = *(a2 + 64);
  outlined copy of Environment<Selector?>.Content(v20, v15);
  v21 = *(a1 + 56);
  v22 = *(a1 + 64);
  *(a1 + 56) = v20;
  *(a1 + 64) = v15;
  outlined consume of Environment<Selector?>.Content(v21, v22);
  v23 = *(a2 + 72);
  LOBYTE(v15) = *(a2 + 80);
  outlined copy of Environment<Selector?>.Content(v23, v15);
  v24 = *(a1 + 72);
  v25 = *(a1 + 80);
  *(a1 + 72) = v23;
  *(a1 + 80) = v15;
  outlined consume of Environment<Selector?>.Content(v24, v25);
  v26 = *(a2 + 88);
  LOBYTE(v15) = *(a2 + 96);
  outlined copy of Environment<Selector?>.Content(v26, v15);
  v27 = *(a1 + 88);
  v28 = *(a1 + 96);
  *(a1 + 88) = v26;
  *(a1 + 96) = v15;
  outlined consume of Environment<Selector?>.Content(v27, v28);
  v29 = *(a2 + 104);
  LOBYTE(v15) = *(a2 + 112);
  outlined copy of Environment<Selector?>.Content(v29, v15);
  v30 = *(a1 + 104);
  v31 = *(a1 + 112);
  *(a1 + 104) = v29;
  *(a1 + 112) = v15;
  outlined consume of Environment<Selector?>.Content(v30, v31);
  *(a1 + 113) = *(a2 + 113);
  *(a1 + 114) = *(a2 + 114);
  *(a1 + 120) = *(a2 + 120);

  *(a1 + 128) = *(a2 + 128);
  v32 = *(a2 + 160);
  if (*(a1 + 160) == 1)
  {
    if (v32 == 1)
    {
      v33 = *(a2 + 136);
      v34 = *(a2 + 152);
      *(a1 + 161) = *(a2 + 161);
      *(a1 + 152) = v34;
      *(a1 + 136) = v33;
    }

    else
    {
      v37 = *(a2 + 136);
      v38 = *(a2 + 144);
      v39 = *(a2 + 152);
      outlined copy of _Glass.Variant.Role(v37, v38, v39);
      *(a1 + 136) = v37;
      *(a1 + 144) = v38;
      *(a1 + 152) = v39;
      *(a1 + 153) = *(a2 + 153);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 176) = *(a2 + 176);
    }
  }

  else if (v32 == 1)
  {
    outlined destroy of Glass(a1 + 136);
    v35 = *(a2 + 161);
    v36 = *(a2 + 152);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = v36;
    *(a1 + 161) = v35;
  }

  else
  {
    v40 = *(a2 + 136);
    v41 = *(a2 + 144);
    v42 = *(a2 + 152);
    outlined copy of _Glass.Variant.Role(v40, v41, v42);
    v43 = *(a1 + 136);
    v44 = *(a1 + 144);
    *(a1 + 136) = v40;
    *(a1 + 144) = v41;
    v45 = *(a1 + 152);
    *(a1 + 152) = v42;
    outlined consume of _Glass.Variant.Role(v43, v44, v45);
    *(a1 + 153) = *(a2 + 153);
    *(a1 + 160) = *(a2 + 160);

    *(a1 + 168) = *(a2 + 168);
    *(a1 + 176) = *(a2 + 176);
  }

  v46 = *(a2 + 184);
  v47 = *(a2 + 192);
  outlined copy of Environment<Selector?>.Content(v46, v47);
  v48 = *(a1 + 184);
  v49 = *(a1 + 192);
  *(a1 + 184) = v46;
  *(a1 + 192) = v47;
  outlined consume of Environment<Selector?>.Content(v48, v49);
  v50 = *(a2 + 200);
  v51 = *(a2 + 208);
  outlined copy of Environment<Color?>.Content(v50);
  v52 = *(a1 + 200);
  *(a1 + 200) = v50;
  *(a1 + 208) = v51;
  outlined consume of Environment<Color?>.Content(v52);
  v53 = *(a2 + 216);
  v54 = *(a2 + 224);
  outlined copy of Environment<Selector?>.Content(v53, v54);
  v55 = *(a1 + 216);
  v56 = *(a1 + 224);
  *(a1 + 216) = v53;
  *(a1 + 224) = v54;
  outlined consume of Environment<Selector?>.Content(v55, v56);
  v57 = *(a2 + 232);
  v58 = *(a2 + 240);
  v59 = *(a2 + 248);
  v60 = *(a2 + 257);
  v61 = *(a2 + 256);
  outlined copy of Environment<KeyboardShortcut?>.Content(v57, v58, v59, v61, v60);
  v62 = *(a1 + 232);
  v63 = *(a1 + 240);
  v64 = *(a1 + 248);
  v65 = *(a1 + 257);
  *(a1 + 232) = v57;
  *(a1 + 240) = v58;
  *(a1 + 248) = v59;
  v66 = *(a1 + 256);
  *(a1 + 256) = v61;
  *(a1 + 257) = v60;
  outlined consume of Environment<KeyboardShortcut?>.Content(v62, v63, v64, v66, v65);
  v67 = *(a2 + 264);
  v68 = *(a2 + 272);
  outlined copy of Environment<Selector?>.Content(v67, v68);
  v69 = *(a1 + 264);
  v70 = *(a1 + 272);
  *(a1 + 264) = v67;
  *(a1 + 272) = v68;
  outlined consume of Environment<Selector?>.Content(v69, v70);
  return a1;
}

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
  outlined copy of Environment<Selector?>.Content(v12, v13);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  outlined consume of Environment<Selector?>.Content(v14, v15);
  v16 = *(a2 + 48);
  v17 = *(a2 + 56);
  outlined copy of Environment<Color?>.Content(v16);
  v18 = *(a1 + 48);
  *(a1 + 48) = v16;
  *(a1 + 56) = v17;
  outlined consume of Environment<Color?>.Content(v18);
  v19 = *(a2 + 64);
  v20 = *(a2 + 73);
  v21 = *(a2 + 72);
  outlined copy of Environment<CGFloat?>.Content(v19, v21, v20);
  v22 = *(a1 + 64);
  v23 = *(a1 + 73);
  *(a1 + 64) = v19;
  v24 = *(a1 + 72);
  *(a1 + 72) = v21;
  *(a1 + 73) = v20;
  outlined consume of Environment<CGFloat?>.Content(v22, v24, v23);
  v25 = *(a2 + 80);
  v26 = *(a2 + 88);
  outlined copy of Environment<Selector?>.Content(v25, v26);
  v27 = *(a1 + 80);
  v28 = *(a1 + 88);
  *(a1 + 80) = v25;
  *(a1 + 88) = v26;
  outlined consume of Environment<Selector?>.Content(v27, v28);
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 91) = *(a2 + 91);
  v29 = *(a2 + 96);
  v30 = *(a2 + 104);
  outlined copy of Environment<Selector?>.Content(v29, v30);
  v31 = *(a1 + 96);
  v32 = *(a1 + 104);
  *(a1 + 96) = v29;
  *(a1 + 104) = v30;
  outlined consume of Environment<Selector?>.Content(v31, v32);
  v33 = *(a2 + 112);
  v34 = *(a2 + 120);
  v35 = *(a2 + 128);
  v36 = *(a2 + 137);
  v37 = *(a2 + 136);
  outlined copy of Environment<KeyboardShortcut?>.Content(v33, v34, v35, v37, v36);
  v38 = *(a1 + 112);
  v39 = *(a1 + 120);
  v40 = *(a1 + 128);
  v41 = *(a1 + 137);
  *(a1 + 112) = v33;
  *(a1 + 120) = v34;
  *(a1 + 128) = v35;
  v42 = *(a1 + 136);
  *(a1 + 136) = v37;
  *(a1 + 137) = v36;
  outlined consume of Environment<KeyboardShortcut?>.Content(v38, v39, v40, v42, v41);
  v43 = *(a2 + 144);
  LOBYTE(v34) = *(a2 + 152);
  outlined copy of Environment<Selector?>.Content(v43, v34);
  v44 = *(a1 + 144);
  v45 = *(a1 + 152);
  *(a1 + 144) = v43;
  *(a1 + 152) = v34;
  outlined consume of Environment<Selector?>.Content(v44, v45);
  *(a1 + 160) = *(a2 + 160);

  return a1;
}

double outlined copy of Material?(uint64_t result, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return outlined copy of Material.ID(result, a2);
  }

  return v2;
}

uint64_t FillShapeStyle.Kind.resolve(in:)(uint64_t *a1, unsigned __int8 a2)
{
  if (a2 > 2u)
  {
    EnvironmentValues.colorScheme.getter();
    EnvironmentValues.colorSchemeContrast.getter();
    EnvironmentValues.colorScheme.getter();
  }

  else
  {
    EnvironmentValues.colorScheme.getter();
    EnvironmentValues.colorSchemeContrast.getter();
  }

  return Color.init(_:red:green:blue:opacity:)();
}

uint64_t View.contentMargins(_:_:for:)(uint64_t a1, uint64_t a2, char a3, char *a4, uint64_t a5, uint64_t a6)
{
  v8 = a1;
  v9 = *a4;
  OptionalEdgeInsets.init(_:edges:)();
  *&v17[48] = *(v20 + 9);
  *&v17[39] = v20[0];
  *&v17[23] = v19;
  *&v17[7] = v18;
  v12 = *v17;
  v13 = *&v17[16];
  v14 = *&v17[32];
  v11 = v8;
  v15 = *&v17[48];
  v16 = v9;
  return MEMORY[0x18D00A570](&v11, a5, &type metadata for ContentMarginModifier, a6);
}

__n128 __swift_memcpy66_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t assignWithCopy for KeyboardShortcut(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

void type metadata accessor for _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>, type metadata accessor for ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>();
    v1 = type metadata accessor for _BackgroundModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>);
    }
  }
}

double outlined consume of _ShapeStyle_Shape.Result(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
      }

      return result;
    }

LABEL_7:

    return result;
  }

  if (a2 == 2 || a2 == 3)
  {
    goto LABEL_7;
  }

  return result;
}

double outlined consume of Environment<Material?>.Content(uint64_t a1, unsigned __int8 a2, char a3)
{
  if (a3)
  {
    outlined consume of Material?(a1, a2);
  }

  else
  {
  }

  return result;
}

double BorderedButtonStyle.makeBody(configuration:)@<D0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *v2;
  v10 = *(v2 + 8);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(a1, v8, type metadata accessor for PrimitiveButtonStyleConfiguration);
  *a2 = *v8;
  v11 = *(v6 + 32);
  _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_6(0, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(&v8[v11], &a2[*(v12 + 36)], type metadata accessor for ButtonAction);
  outlined destroy of PrimitiveButtonStyleConfiguration(v8);
  type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>(0);
  a2[*(v13 + 36)] = v10;
  type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>);
  v15 = &a2[*(v14 + 36)];
  *v15 = v9;
  v15[8] = 0;

  KeyPath = swift_getKeyPath();
  v22 = 0;
  v17 = swift_getKeyPath();
  v21[0] = 0;

  outlined consume of Glass?(0, 0, 0, 1);
  LOBYTE(v6) = v22;
  LOBYTE(v8) = v21[0];
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>(0);
  v19 = &a2[*(v18 + 36)];
  *v19 = v9;
  v19[8] = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = 0;
  *(v19 + 2) = 0;
  *&result = 1;
  *(v19 + 40) = xmmword_18CD6A6D0;
  v19[56] = 0;
  *(v19 + 8) = KeyPath;
  v19[72] = v6;
  *(v19 + 10) = v17;
  v19[88] = v8;
  return result;
}

uint64_t *assignWithCopy for BorderedButtonStyle_Phone(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v4 = a2[5];
  if (a1[5] == 1)
  {
    if (v4 == 1)
    {
      v5 = *(a2 + 1);
      v6 = *(a2 + 2);
      *(a1 + 41) = *(a2 + 41);
      *(a1 + 1) = v5;
      *(a1 + 2) = v6;
    }

    else
    {
      v9 = a2[2];
      v10 = a2[3];
      v11 = *(a2 + 32);
      outlined copy of _Glass.Variant.Role(v9, v10, v11);
      a1[2] = v9;
      a1[3] = v10;
      *(a1 + 32) = v11;
      *(a1 + 33) = *(a2 + 33);
      a1[5] = a2[5];
      a1[6] = a2[6];
      *(a1 + 56) = *(a2 + 56);
    }
  }

  else if (v4 == 1)
  {
    outlined destroy of Glass((a1 + 2));
    v7 = *(a2 + 41);
    v8 = *(a2 + 2);
    *(a1 + 1) = *(a2 + 1);
    *(a1 + 2) = v8;
    *(a1 + 41) = v7;
  }

  else
  {
    v12 = a2[2];
    v13 = a2[3];
    v14 = *(a2 + 32);
    outlined copy of _Glass.Variant.Role(v12, v13, v14);
    v15 = a1[2];
    v16 = a1[3];
    a1[2] = v12;
    a1[3] = v13;
    v17 = *(a1 + 32);
    *(a1 + 32) = v14;
    outlined consume of _Glass.Variant.Role(v15, v16, v17);
    *(a1 + 33) = *(a2 + 33);
    a1[5] = a2[5];

    a1[6] = a2[6];
    *(a1 + 56) = *(a2 + 56);
  }

  v18 = a2[8];
  v19 = *(a2 + 72);
  outlined copy of Environment<Selector?>.Content(v18, v19);
  v20 = a1[8];
  v21 = *(a1 + 72);
  a1[8] = v18;
  *(a1 + 72) = v19;
  outlined consume of Environment<Selector?>.Content(v20, v21);
  v22 = a2[10];
  v23 = *(a2 + 88);
  outlined copy of Environment<Color?>.Content(v22);
  v24 = a1[10];
  a1[10] = v22;
  *(a1 + 88) = v23;
  outlined consume of Environment<Color?>.Content(v24);
  return a1;
}

uint64_t ResolvedBorderedButton.init(configuration:style:)@<X0>(char *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = swift_getKeyPath();
  *(a3 + 24) = 0;
  *(a3 + 32) = swift_getKeyPath();
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = swift_getKeyPath();
  *(a3 + 64) = 0;
  *(a3 + 72) = swift_getKeyPath();
  *(a3 + 80) = 0;
  *(a3 + 88) = swift_getKeyPath();
  *(a3 + 96) = 0;
  KeyPath = swift_getKeyPath();
  v8 = a2[3];
  *(a3 + 152) = a2[2];
  *(a3 + 168) = v8;
  *(a3 + 184) = a2[4];
  *(a3 + 193) = *(a2 + 73);
  v9 = a2[1];
  *(a3 + 120) = *a2;
  *(a3 + 104) = KeyPath;
  *(a3 + 112) = 0;
  *(a3 + 113) = v5;
  *(a3 + 114) = v6;
  *(a3 + 136) = v9;
  *(a3 + 216) = swift_getKeyPath();
  *(a3 + 224) = 0;
  v10 = swift_getKeyPath();
  *(a3 + 240) = 0;
  *(a3 + 248) = 0;
  *(a3 + 232) = v10;
  *(a3 + 256) = 0;
  result = swift_getKeyPath();
  *(a3 + 264) = result;
  *(a3 + 272) = 0;
  return result;
}

void *sub_18BEB43D0@<X0>(_BYTE *a2@<X8>)
{
  result = EnvironmentValues.buttonSizing.getter();
  *a2 = v4;
  return result;
}

double sub_18BEB4418@<D0>(_OWORD *a2@<X8>)
{
  EnvironmentValues.backgroundMaterial.getter();
  result = *&v4;
  *a2 = v4;
  return result;
}

void *sub_18BEB449C@<X0>(_BYTE *a2@<X8>)
{
  result = EnvironmentValues.colorScheme.getter();
  *a2 = v4;
  return result;
}

uint64_t sub_18BEB4520@<X0>(_BYTE *a2@<X8>)
{
  result = EnvironmentValues._accessibilityReduceTransparency.getter();
  *a2 = result & 1;
  return result;
}

double outlined copy of Environment<Material?>.Content(uint64_t result, unsigned __int8 a2, char a3)
{
  if (a3)
  {
    return outlined copy of Material?(result, a2);
  }

  return v3;
}

void *ResolvedBorderedButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  memcpy(__dst, v1, 0x111uLL);
  v3 = static VerticalAlignment.center.getter();
  specialized Environment.wrappedValue.getter(__dst[0], __dst[1], v52);
  static ButtonSizing.flexible.getter();
  static ButtonSizing.== infix(_:_:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v60[55] = v62[3];
  *&v60[71] = v62[4];
  *&v60[87] = v62[5];
  *&v60[103] = v62[6];
  *&v60[7] = v62[0];
  *&v60[23] = v62[1];
  v61 = 1;
  *&v60[39] = v62[2];
  KeyPath = swift_getKeyPath();
  v5 = __dst[27];
  v19 = __dst[28];
  *v52 = __dst[27];
  v52[8] = __dst[28];
  *&v52[9] = *(v1 + 225);
  *&v52[25] = *(v1 + 241);
  *&v52[41] = *(v1 + 257);
  v6 = BorderedButtonSpec.defaultFont.getter();
  v7 = swift_getKeyPath();
  v46[0] = v3;
  v46[1] = 0;
  v47[0] = 1;
  *&v47[65] = *&v60[64];
  *&v47[81] = *&v60[80];
  *&v47[97] = *&v60[96];
  *&v47[1] = *v60;
  *&v47[17] = *&v60[16];
  *&v47[33] = *&v60[32];
  *&v47[49] = *&v60[48];
  *&v47[112] = *&v60[111];
  *&v47[120] = KeyPath;
  *&v48 = v6;
  *(&v48 + 1) = v7;
  v42 = *&v47[112];
  v43 = v48;
  v38 = *&v47[48];
  v39 = *&v47[64];
  v40 = *&v47[80];
  v41 = *&v47[96];
  v34 = v3;
  v35 = *v47;
  v36 = *&v47[16];
  v37 = *&v47[32];
  v30 = *&v47[96];
  v31 = *&v47[112];
  v32 = v48;
  v27 = *&v47[48];
  v28 = *&v47[64];
  v29 = *&v47[80];
  v23 = v3;
  v24 = *v47;
  v49 = 1;
  v44 = 1;
  v33 = 1;
  v25 = *&v47[16];
  v26 = *&v47[32];
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>(v46, v52, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>(v46, v52, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>);
  closure #2 in ResolvedBorderedButton.body.getter(&v34, __dst, __src);
  closure #3 in ResolvedBorderedButton.body.getter(&v23, __dst, &__src[41]);
  v50[8] = v31;
  v50[9] = v32;
  v51 = v33;
  v50[4] = v27;
  v50[5] = v28;
  v50[6] = v29;
  v50[7] = v30;
  v50[0] = v23;
  v50[1] = v24;
  v50[2] = v25;
  v50[3] = v26;
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>(v50, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>);
  v57 = v42;
  v58 = v43;
  v59 = v44;
  v53 = v38;
  v54 = v39;
  v55 = v40;
  v56 = v41;
  *v52 = v34;
  *&v52[16] = v35;
  *&v52[32] = v36;
  *&v52[48] = v37;
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>(v52, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>);
  specialized Environment.wrappedValue.getter(v5, v19 & 1, &v22);
  LOBYTE(v5) = v22;
  specialized Environment.wrappedValue.getter(__dst[2], LOBYTE(__dst[3]) | (BYTE1(__dst[3]) << 8), &v20);
  v8 = v20;
  LOBYTE(KeyPath) = v21;
  static EdgeInsets.zero.getter();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>(v46, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>);
  v17 = swift_getKeyPath();
  result = memcpy(a1, __src, 0x430uLL);
  *(a1 + 1072) = v5;
  *(a1 + 1080) = v8;
  *(a1 + 1088) = KeyPath;
  *(a1 + 1096) = v10;
  *(a1 + 1104) = v12;
  *(a1 + 1112) = v14;
  *(a1 + 1120) = v16;
  *(a1 + 1128) = 0;
  *(a1 + 1136) = 9;
  *(a1 + 1144) = v17;
  *(a1 + 1152) = 0;
  return result;
}

BOOL BorderedButtonSpec.isDefault.getter()
{
  specialized Environment.wrappedValue.getter(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40) | (*(v0 + 41) << 8), v11);
  v1 = v11[0];
  v2 = v11[1];
  v3 = v11[2];
  v4 = v12;
  if (one-time initialization token for defaultAction != -1)
  {
    v10 = v11[0];
    swift_once();
    v1 = v10;
  }

  if (v2)
  {
    if (qword_1ED57A6B8)
    {
      v5 = qword_1ED57A6C0;
      v6 = byte_1ED57A6C8;
      if (v1 == static KeyboardShortcut.defaultAction && v2 == qword_1ED57A6B8)
      {
        if (v3 != qword_1ED57A6C0)
        {
          v8 = 0;
          goto LABEL_19;
        }
      }

      else
      {
        v8 = 0;
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v3 != v5)
        {
          goto LABEL_19;
        }
      }

      v8 = v4 == v6;
LABEL_19:

      swift_bridgeObjectRelease_n();
      return v8;
    }
  }

  else
  {
    if (!qword_1ED57A6B8)
    {

      return 1;
    }
  }

  return 0;
}

uint64_t BorderedButtonSpec.defaultFont.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  specialized Environment.wrappedValue.getter(*v0, v2 & 1, &v5);
  if (v5 < 2u)
  {
    v3 = 5;
  }

  else
  {
    v3 = 6;
  }

  v11 = v3;
  v10 = 4;
  v5 = v1;
  v6 = v2;
  v7 = *(v0 + 9);
  v8 = *(v0 + 25);
  v9 = *(v0 + 41);
  if (BorderedButtonSpec.isDefault.getter())
  {
    static Font.Weight.bold.getter();
  }

  else
  {
    static Font.Weight.regular.getter();
  }

  return static Font.system(_:design:weight:)();
}

__n128 ResolvedBorderedButton.colorSpec.getter@<Q0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 4);
  v3 = *(v1 + 5);
  v5 = *(v1 + 48);
  v6 = (v1 + 49);
  specialized Environment.wrappedValue.getter(v4, v3, v5 & 1, &v34);
  if (BYTE8(v34) == 0xFF)
  {
    v7 = v1[1];
    v34 = *v1;
    v35 = v7;
    v8 = *(v1 + 241);
    v52 = *(v1 + 257);
    v9 = *(v1 + 225);
    v49 = *(v1 + 209);
    v50 = v9;
    v51 = v8;
    v10 = *(v1 + 161);
    v45 = *(v1 + 145);
    v46 = v10;
    v11 = *(v1 + 193);
    v47 = *(v1 + 177);
    v48 = v11;
    v12 = *(v1 + 97);
    v41 = *(v1 + 81);
    v42 = v12;
    v13 = *(v1 + 129);
    v43 = *(v1 + 113);
    v44 = v13;
    v14 = *(v1 + 65);
    v39 = *v6;
    v36 = v4;
    v37 = v3;
    v38 = v5;
    v40 = v14;
    ResolvedBorderedButton.opaqueBackgroundSpec.getter(&v28);
  }

  else
  {
    outlined consume of Material?(v34, BYTE8(v34));
    v15 = v1[1];
    v34 = *v1;
    v35 = v15;
    v16 = *(v1 + 241);
    v52 = *(v1 + 257);
    v17 = *(v1 + 225);
    v49 = *(v1 + 209);
    v50 = v17;
    v51 = v16;
    v18 = *(v1 + 161);
    v45 = *(v1 + 145);
    v46 = v18;
    v19 = *(v1 + 193);
    v47 = *(v1 + 177);
    v48 = v19;
    v20 = *(v1 + 97);
    v41 = *(v1 + 81);
    v42 = v20;
    v21 = *(v1 + 129);
    v43 = *(v1 + 113);
    v44 = v21;
    v22 = *(v1 + 65);
    v39 = *v6;
    v36 = v4;
    v37 = v3;
    v38 = v5;
    v40 = v22;
    ResolvedBorderedButton.materialBackgroundSpec.getter(&v28);
  }

  result = v29;
  v24 = v30;
  v25 = v31;
  v26 = v32;
  v27 = v33;
  *a1 = v28;
  *(a1 + 8) = result;
  *(a1 + 24) = v24;
  *(a1 + 40) = v25;
  *(a1 + 48) = v26;
  *(a1 + 56) = v27;
  return result;
}

double specialized Environment.wrappedValue.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  if (a3)
  {
    *a4 = a1;
    a4[1] = a2;
    return outlined copy of Environment<AppIntentExecutor?>.Content(a1, a2, 1, outlined copy of Material?);
  }

  else
  {
    outlined copy of Environment<AppIntentExecutor?>.Content(a1, a2, 0, outlined copy of Material?);
    v7 = static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v8, v7))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x800000018CD3F760, &v11);
      _os_log_impl(&dword_18BD4A000, v8, v7, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x18D0110E0](v10, -1, -1);
      MEMORY[0x18D0110E0](v9, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<AppIntentExecutor?>.Content(a1, a2, 0, outlined consume of Material?);
  }

  return result;
}

{
  if (a3)
  {
    *a4 = a1;
    a4[1] = a2;

    return outlined copy of Environment<EnvironmentValues>.Content(a1, a2, 1);
  }

  else
  {
    v13[10] = v4;
    v13[11] = v5;
    outlined copy of Environment<EnvironmentValues>.Content(a1, a2, 0);
    v9 = static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v10, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000018CD3F710, v13);
      _os_log_impl(&dword_18BD4A000, v10, v9, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x18D0110E0](v12, -1, -1);
      MEMORY[0x18D0110E0](v11, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<EnvironmentValues>.Content(a1, a2, 0);
  }

  return result;
}

double outlined copy of Environment<AppIntentExecutor?>.Content(uint64_t a1, uint64_t a2, char a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    a4(a1, a2);
  }

  else
  {
  }

  return result;
}

double outlined copy of BorderedButtonColorSpec.LabelStyle(unint64_t a1)
{
  if (a1 >= 3)
  {
  }

  return result;
}

double destroy for BorderedButtonColorSpec(uint64_t a1)
{

  v3 = *(a1 + 32);
  if (v3 != 255)
  {
    outlined consume of Material.ID(*(a1 + 24), v3);
  }

  if (*(a1 + 48) >= 3uLL)
  {
  }

  return result;
}

double outlined copy of Material.ID(uint64_t a1, unsigned __int8 a2)
{
  if (a2 == 2)
  {
  }

  else if (a2 <= 1u)
  {
  }

  return result;
}

unint64_t *assignWithCopy for BorderedButtonColorSpec.LabelStyle(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 < 0xFFFFFFFF)
  {
    *a1 = v4;
    if (v4 >= 0xFFFFFFFF)
    {
    }
  }

  else if (v4 < 0xFFFFFFFF)
  {

    *a1 = *a2;
  }

  else
  {
    *a1 = v4;
  }

  return a1;
}

uint64_t protocol witness for DividerStyle.makeBody(configuration:) in conformance DefaultDividerStyle@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

__n128 PlainDividerStyle.makeBody(configuration:)@<Q0>(uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  specialized Environment.wrappedValue.getter(a2, a3 & 1);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v6[6] = v7;
  *&v6[22] = v8;
  *&v6[38] = v9;
  *(a4 + 2) = *v6;
  *a4 = 256;
  *(a4 + 18) = *&v6[16];
  result = *&v6[32];
  *(a4 + 34) = *&v6[32];
  *(a4 + 48) = *(&v9 + 1);
  return result;
}

double specialized Environment.wrappedValue.getter(uint64_t a1, char a2)
{
  if (a2)
  {
    return *&a1;
  }

  v10[9] = v2;
  v10[10] = v3;

  v6 = static os_log_type_t.fault.getter();
  v7 = static Log.runtimeIssuesLog.getter();
  if (os_log_type_enabled(v7, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x74616F6C464743, 0xE700000000000000, v10);
    _os_log_impl(&dword_18BD4A000, v7, v6, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x18D0110E0](v9, -1, -1);
    MEMORY[0x18D0110E0](v8, -1, -1);
  }

  EnvironmentValues.init()();
  swift_getAtKeyPath();
  outlined consume of Environment<Selector?>.Content(a1, 0);

  return *&v10[2];
}

double protocol witness for Shape.path(in:) in conformance ResolvedBorderShape@<D0>(uint64_t a1@<X8>)
{
  ResolvedBorderShape.path(in:)(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

__n128 ResolvedBorderShape.path(in:)@<Q0>(uint64_t a1@<X8>)
{
  v7 = *v5;
  v8 = *(v5 + 1);
  v9 = v5[16];
  CGRect.inset(by:)();
  if (v9 != 1)
  {
    goto LABEL_9;
  }

  if (v8 > 1)
  {
    if (v8 != 2)
    {
      Circle.path(in:)();
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!v8 && (v7 & 0xFE) == 2)
  {
    static _GraphInputs.defaultInterfaceIdiom.getter();
    if ((static Solarium.isEnabled(for:)() & 1) == 0)
    {
LABEL_9:
      RoundedRectangle.path(in:)();
      goto LABEL_10;
    }
  }

  Capsule.path(in:)();
LABEL_10:
  result = v12;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

void type metadata accessor for EnvironmentPropertyKey<ButtonBorderShapeKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonBorderShapeKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonBorderShapeKey>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonBorderShapeKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

double View.buttonBorderShape(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

uint64_t *assignWithTake for BorderedButtonStyle_CarCatalyst(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t initializeWithCopy for BorderedButtonStyle_Phone(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = a2[5];

  if (v4 == 1)
  {
    v5 = *(a2 + 2);
    *(a1 + 16) = *(a2 + 1);
    *(a1 + 32) = v5;
    *(a1 + 41) = *(a2 + 41);
  }

  else
  {
    v6 = a2[2];
    v7 = a2[3];
    v8 = *(a2 + 32);
    outlined copy of _Glass.Variant.Role(v6, v7, v8);
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
    *(a1 + 33) = *(a2 + 33);
    v9 = a2[6];
    *(a1 + 40) = v4;
    *(a1 + 48) = v9;
    *(a1 + 56) = *(a2 + 56);
  }

  v10 = a2[8];
  v11 = *(a2 + 72);
  outlined copy of Environment<Selector?>.Content(v10, v11);
  *(a1 + 64) = v10;
  *(a1 + 72) = v11;
  v12 = a2[10];
  v13 = *(a2 + 88);
  outlined copy of Environment<Color?>.Content(v12);
  *(a1 + 80) = v12;
  *(a1 + 88) = v13;
  return a1;
}

uint64_t destroy for BorderedButtonStyle_Phone(uint64_t a1)
{

  if (*(a1 + 40) != 1)
  {
    outlined consume of _Glass.Variant.Role(*(a1 + 16), *(a1 + 24), *(a1 + 32));
  }

  outlined consume of Environment<Selector?>.Content(*(a1 + 64), *(a1 + 72));
  v2 = *(a1 + 80);

  return outlined consume of Environment<Color?>.Content(v2);
}

void *BorderedButtonStyle_Phone.makeBody(configuration:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[3];
  v5 = v2[1];
  v19 = v2[2];
  v20 = v4;
  v6 = v2[3];
  *v21 = v2[4];
  *&v21[9] = *(v2 + 73);
  v7 = v2[1];
  v18[0] = *v2;
  v18[1] = v7;
  v15[2] = v19;
  v15[3] = v6;
  *v16 = v2[4];
  *&v16[9] = *(v2 + 73);
  v8 = a1[1];
  v17[0] = *a1;
  v17[1] = v8;
  v15[0] = v18[0];
  v15[1] = v5;
  ResolvedBorderedButton.init(configuration:style:)(v17, v15, __src);
  v9 = *v21;
  v10 = v21[8];
  outlined init with copy of BorderedButtonStyle_Phone(v18, v15);
  specialized Environment.wrappedValue.getter(v9, v10, v15);
  v11 = LOBYTE(v15[0]) < 7u;
  KeyPath = swift_getKeyPath();
  result = memcpy(a2, __src, 0x118uLL);
  *(a2 + 280) = KeyPath;
  *(a2 + 288) = v11;
  return result;
}

uint64_t destroy for ResolvedBorderedButton(uint64_t a1)
{
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  outlined consume of Environment<CGFloat?>.Content(*(a1 + 16), *(a1 + 24), *(a1 + 25));
  outlined consume of Environment<Material?>.Content(*(a1 + 32), *(a1 + 40), *(a1 + 48));
  outlined consume of Environment<Selector?>.Content(*(a1 + 56), *(a1 + 64));
  outlined consume of Environment<Selector?>.Content(*(a1 + 72), *(a1 + 80));
  outlined consume of Environment<Selector?>.Content(*(a1 + 88), *(a1 + 96));
  outlined consume of Environment<Selector?>.Content(*(a1 + 104), *(a1 + 112));

  if (*(a1 + 160) != 1)
  {
    outlined consume of _Glass.Variant.Role(*(a1 + 136), *(a1 + 144), *(a1 + 152));
  }

  outlined consume of Environment<Selector?>.Content(*(a1 + 184), *(a1 + 192));
  outlined consume of Environment<Color?>.Content(*(a1 + 200));
  outlined consume of Environment<Selector?>.Content(*(a1 + 216), *(a1 + 224));
  outlined consume of Environment<KeyboardShortcut?>.Content(*(a1 + 232), *(a1 + 240), *(a1 + 248), *(a1 + 256), *(a1 + 257));
  v2 = *(a1 + 264);
  v3 = *(a1 + 272);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

uint64_t initializeWithCopy for ResolvedBorderedButton(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(a2 + 16);
  v7 = *(a2 + 25);
  v8 = *(a2 + 24);
  outlined copy of Environment<CGFloat?>.Content(v6, v8, v7);
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 25) = v7;
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  outlined copy of Environment<Material?>.Content(v9, v10, v11);
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = v11;
  v12 = *(a2 + 56);
  LOBYTE(v10) = *(a2 + 64);
  outlined copy of Environment<Selector?>.Content(v12, v10);
  *(a1 + 56) = v12;
  *(a1 + 64) = v10;
  v13 = *(a2 + 72);
  LOBYTE(v10) = *(a2 + 80);
  outlined copy of Environment<Selector?>.Content(v13, v10);
  *(a1 + 72) = v13;
  *(a1 + 80) = v10;
  v14 = *(a2 + 88);
  LOBYTE(v10) = *(a2 + 96);
  outlined copy of Environment<Selector?>.Content(v14, v10);
  *(a1 + 88) = v14;
  *(a1 + 96) = v10;
  v15 = *(a2 + 104);
  LOBYTE(v10) = *(a2 + 112);
  outlined copy of Environment<Selector?>.Content(v15, v10);
  *(a1 + 104) = v15;
  *(a1 + 112) = v10;
  *(a1 + 113) = *(a2 + 113);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  v16 = *(a2 + 160);

  if (v16 == 1)
  {
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 161) = *(a2 + 161);
  }

  else
  {
    v17 = *(a2 + 136);
    v18 = *(a2 + 144);
    v19 = *(a2 + 152);
    outlined copy of _Glass.Variant.Role(v17, v18, v19);
    *(a1 + 136) = v17;
    *(a1 + 144) = v18;
    *(a1 + 152) = v19;
    *(a1 + 153) = *(a2 + 153);
    v20 = *(a2 + 168);
    *(a1 + 160) = v16;
    *(a1 + 168) = v20;
    *(a1 + 176) = *(a2 + 176);
  }

  v21 = *(a2 + 184);
  v22 = *(a2 + 192);
  outlined copy of Environment<Selector?>.Content(v21, v22);
  *(a1 + 184) = v21;
  *(a1 + 192) = v22;
  v23 = *(a2 + 200);
  v24 = *(a2 + 208);
  outlined copy of Environment<Color?>.Content(v23);
  *(a1 + 200) = v23;
  *(a1 + 208) = v24;
  v25 = *(a2 + 216);
  v26 = *(a2 + 224);
  outlined copy of Environment<Selector?>.Content(v25, v26);
  *(a1 + 216) = v25;
  *(a1 + 224) = v26;
  v27 = *(a2 + 232);
  v28 = *(a2 + 240);
  v29 = *(a2 + 248);
  v30 = *(a2 + 257);
  v31 = *(a2 + 256);
  outlined copy of Environment<KeyboardShortcut?>.Content(v27, v28, v29, v31, v30);
  *(a1 + 232) = v27;
  *(a1 + 240) = v28;
  *(a1 + 248) = v29;
  *(a1 + 256) = v31;
  *(a1 + 257) = v30;
  v32 = *(a2 + 264);
  v33 = *(a2 + 272);
  outlined copy of Environment<Selector?>.Content(v32, v33);
  *(a1 + 264) = v32;
  *(a1 + 272) = v33;
  return a1;
}

{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of Environment<Selector?>.Content(v6, v7);
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  outlined copy of Environment<Selector?>.Content(v8, v9);
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  outlined copy of Environment<Color?>.Content(v10);
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  v12 = *(a2 + 64);
  v13 = *(a2 + 73);
  v14 = *(a2 + 72);
  outlined copy of Environment<CGFloat?>.Content(v12, v14, v13);
  *(a1 + 64) = v12;
  *(a1 + 72) = v14;
  *(a1 + 73) = v13;
  v15 = *(a2 + 80);
  v16 = *(a2 + 88);
  outlined copy of Environment<Selector?>.Content(v15, v16);
  *(a1 + 80) = v15;
  *(a1 + 88) = v16;
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 91) = *(a2 + 91);
  v17 = *(a2 + 96);
  v18 = *(a2 + 104);
  outlined copy of Environment<Selector?>.Content(v17, v18);
  *(a1 + 96) = v17;
  *(a1 + 104) = v18;
  v19 = *(a2 + 112);
  v20 = *(a2 + 120);
  v21 = *(a2 + 128);
  v22 = *(a2 + 137);
  v23 = *(a2 + 136);
  outlined copy of Environment<KeyboardShortcut?>.Content(v19, v20, v21, v23, v22);
  *(a1 + 112) = v19;
  *(a1 + 120) = v20;
  *(a1 + 128) = v21;
  *(a1 + 136) = v23;
  *(a1 + 137) = v22;
  v24 = *(a2 + 144);
  LOBYTE(v20) = *(a2 + 152);
  outlined copy of Environment<Selector?>.Content(v24, v20);
  *(a1 + 144) = v24;
  *(a1 + 152) = v20;
  *(a1 + 160) = *(a2 + 160);

  return a1;
}

double specialized Environment.wrappedValue.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if ((a4 & 0x100) != 0)
  {
    *a5 = a1;
    *(a5 + 8) = a2;
    *(a5 + 16) = a3;
    *(a5 + 24) = a4;

    return outlined copy of Environment<KeyboardShortcut?>.Content(a1, a2, a3, a4, 1);
  }

  else
  {
    outlined copy of Environment<KeyboardShortcut?>.Content(a1, a2, a3, a4, 0);
    v10 = static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x800000018CD3F780, &v15);
      _os_log_impl(&dword_18BD4A000, v11, v10, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x18D0110E0](v13, -1, -1);
      MEMORY[0x18D0110E0](v12, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<KeyboardShortcut?>.Content(a1, a2, a3, a4, 0);
  }

  return result;
}

double ResolvedBorderedButton.opaqueBackgroundSpec.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  v6 = *(v1 + 113);
  v28 = *(v1 + 114);
  v7 = *(v1 + 120);
  v8 = *(v1 + 128);
  v9 = *(v1 + 200);
  v10 = *(v1 + 208);
  v27 = specialized Environment.wrappedValue.getter(*(v1 + 104), *(v1 + 112) & 1);
  v11 = specialized Environment.wrappedValue.getter(v4, v5 & 1);
  v12 = v7;
  if (v8)
  {
    if (v7 || (v12 = specialized Environment.wrappedValue.getter(v9, v10 & 1)) != 0)
    {
    }

    else if (v6)
    {
      v12 = static Color.accentColor.getter();
    }

    else
    {
      v12 = static Color.red.getter();
    }

    v12 |= 0x4000000000000000uLL;
    if (!v6)
    {
      goto LABEL_14;
    }

LABEL_10:
    v13 = static Color.accentColor.getter();
    goto LABEL_15;
  }

  if (v7 || (v12 = specialized Environment.wrappedValue.getter(v9, v10 & 1)) != 0)
  {

    if (v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = 0x8000000000000000;
    if (v6)
    {
      goto LABEL_10;
    }
  }

LABEL_14:
  v13 = static Color.red.getter();
LABEL_15:
  v14 = v13;
  specialized Environment.wrappedValue.getter(v2, v3 & 1, &v30);
  if ((v11 & 1) == 0)
  {
    v18 = static Color.secondarySystemFill.getter();

    v19 = 0.75;
    v17 = 1.0;
    v12 = 1;
    goto LABEL_24;
  }

  v15 = v30;
  if (!(v12 >> 62))
  {

    v21 = static Color.secondarySystemFill.getter();
    if ((v15 & 1) == 0)
    {
      if (v27 == 2 || (v27 & 1) != 0)
      {
        if (static Color.yellow.getter() != v12)
        {
          dispatch thunk of AnyShapeStyleBox.isEqual(to:)();
        }

        v25 = Color.opacity(_:)();

        v21 = v25;
      }

      if (v28)
      {
        v19 = 0.75;
      }

      else
      {
        v19 = 1.0;
      }

      if (v28)
      {
        v17 = 0.65;
      }

      else
      {
        v17 = 1.0;
      }

      v18 = v21;
      goto LABEL_24;
    }

    if (v27 != 2 && (v27 & 1) == 0)
    {

      v18 = v21;
      if (v28)
      {
        goto LABEL_50;
      }

      goto LABEL_61;
    }

    if (static Color.red.getter() == v12)
    {
      goto LABEL_48;
    }

    v22 = dispatch thunk of AnyShapeStyleBox.isEqual(to:)();

    if (v22)
    {
      goto LABEL_49;
    }

    if (static Color.pink.getter() == v12)
    {
LABEL_48:
    }

    else
    {
      dispatch thunk of AnyShapeStyleBox.isEqual(to:)();
    }

LABEL_49:
    v18 = Color.opacity(_:)();
    if (v28)
    {
LABEL_50:

      v19 = 1.0;
      Color.init(_:white:opacity:)();
      v24 = Color.over(_:)();

      v17 = 1.4;
      v12 = v24;
      goto LABEL_24;
    }

LABEL_61:

    v17 = 1.0;
    v19 = 1.0;
    goto LABEL_24;
  }

  if (v12 >> 62 == 1)
  {
    v16 = v12 & 0x3FFFFFFFFFFFFFFFLL;
    if (v27 == 2 || (v27 & 1) != 0)
    {
      v12 = 0;
      if (v28)
      {
        goto LABEL_21;
      }
    }

    else
    {

      v12 &= 0x3FFFFFFFFFFFFFFFuLL;
      if (v28)
      {
LABEL_21:
        if (v15)
        {

          outlined copy of BorderedButtonColorSpec.LabelStyle(v12);
          v17 = 1.0;
          Color.init(_:white:opacity:)();
          v18 = Color.over(_:)();

          outlined consume of BorderedButtonColorSpec.LabelStyle(v12);
        }

        else
        {

          v17 = 0.75;
          v18 = v16;
        }

        goto LABEL_47;
      }
    }

    v17 = 1.0;

    outlined copy of BorderedButtonColorSpec.LabelStyle(v12);
    v18 = Color.opacity(_:)();

    outlined consume of BorderedButtonColorSpec.LabelStyle(v12);

    v19 = 1.0;
  }

  else
  {
    v18 = static Color.secondarySystemFill.getter();
    if (v28)
    {
      if ((v15 & 1) == 0)
      {
        v17 = 0.75;
        v12 = v14;
LABEL_47:
        v19 = 0.75;
        goto LABEL_24;
      }

      v17 = 1.0;
      Color.init(_:white:opacity:)();
      v23 = Color.over(_:)();

      Color.init(_:white:opacity:)();
      v12 = Color.over(_:)();

      v18 = v23;
      v19 = 1.0;
    }

    else
    {
      if (v27 != 2 && (v27 & 1) != 0)
      {
        if (v14 != static Color.yellow.getter())
        {
          dispatch thunk of AnyShapeStyleBox.isEqual(to:)();
        }

        v26 = Color.opacity(_:)();

        v18 = v26;
      }

      v17 = 1.0;
      v12 = v14;
      v19 = 1.0;
    }
  }

LABEL_24:
  *a1 = v18;
  *(a1 + 8) = v17;
  *(a1 + 16) = 0x3FF0000000000000;
  result = 0.0;
  *(a1 + 24) = xmmword_18CD6E1E0;
  *(a1 + 40) = 0;
  *(a1 + 48) = v12;
  *(a1 + 56) = v19;
  *(a1 + 64) = 0x3FF0000000000000;
  return result;
}

void static BorderedButtonColorSpec.imageBackgroundSpec(isEnabled:isPressed:resolvedTint:defaultTint:colorScheme:)(char a1@<W0>, char a2@<W1>, unint64_t a3@<X2>, unint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a5;
  v12 = static Color.clear.getter();
  if (a1)
  {
    static Material.thick.getter();
    if (a3 >> 62)
    {
      if (a3 >> 62 != 1)
      {
        if (v11)
        {
          if (a2)
          {
            static Material.ultraThin.getter();
            outlined consume of Material.ID(v29, v30);
            v29 = v26;
            v30 = v27;
            v31 = v28;
            v16 = 1.0;
            Color.init(_:white:opacity:)();
            a3 = Color.over(_:)();
          }

          else
          {

            v16 = 1.0;
            a3 = a4;
          }

          v14 = 1.0;
        }

        else
        {
          v14 = 1.0;
          v16 = 1.0;
          if (a2)
          {
            static Material.thin.getter();
            outlined consume of Material.ID(v29, v30);
            v29 = v26;
            v30 = v27;
            v31 = v28;
            v16 = 0.75;
          }

          a3 = a4;
        }

        goto LABEL_34;
      }

      v13 = a3 & 0x3FFFFFFFFFFFFFFFLL;
      if (v11)
      {
        if (a2)
        {
          LOBYTE(v26) = 0;

          v14 = 1.0;
          Color.init(_:white:opacity:)();
          v15 = Color.over(_:)();

          static Material.ultraThin.getter();

          outlined consume of Material.ID(v29, v30);
          a3 = 0;
          v29 = v26;
          v30 = v27;
          v31 = v28;
          v16 = 0.75;
          v12 = v15;
LABEL_34:
          *a6 = v12;
          *(a6 + 8) = v14;
          *(a6 + 16) = 0x3FF0000000000000;
          *(a6 + 24) = v29;
          *(a6 + 32) = v30 | (v31 << 32);
          *(a6 + 40) = 0;
          *(a6 + 48) = a3;
          *(a6 + 56) = v16;
          *(a6 + 64) = 0x3FF0000000000000;
          return;
        }
      }

      else
      {

        if (a2)
        {
          static Material.ultraThin.getter();
          outlined consume of Material.ID(v29, v30);
          a3 = 0;
          v29 = v26;
          v30 = v27;
          v31 = v28;
          v16 = 0.75;
          v14 = 0.75;
LABEL_33:
          v12 = v13;
          goto LABEL_34;
        }
      }

      a3 = 0;
      v16 = 1.0;
LABEL_32:
      v14 = 1.0;
      goto LABEL_33;
    }

    if ((v11 & 1) == 0)
    {
      if (static Color.yellow.getter() != a3)
      {
        dispatch thunk of AnyShapeStyleBox.isEqual(to:)();
      }

      v13 = Color.opacity(_:)();

      v14 = 1.0;
      if (a2)
      {
        static Material.ultraThin.getter();
        outlined consume of Material.ID(v29, v30);
        v29 = v26;
        v30 = v27;
        v31 = v28;
        v16 = 0.75;
      }

      else
      {
        v16 = 1.0;
      }

      goto LABEL_33;
    }

    if (static Color.red.getter() == a3)
    {
      goto LABEL_29;
    }

    v24 = dispatch thunk of AnyShapeStyleBox.isEqual(to:)();

    if (v24)
    {
      goto LABEL_30;
    }

    if (static Color.pink.getter() == a3)
    {
LABEL_29:
    }

    else
    {
      dispatch thunk of AnyShapeStyleBox.isEqual(to:)();
    }

LABEL_30:
    v13 = Color.opacity(_:)();

    v16 = 1.0;
    if (a2)
    {
      static Material.ultraThin.getter();
      outlined consume of Material.ID(v29, v30);
      v29 = v26;
      v30 = v27;
      v31 = v28;
      Color.init(_:white:opacity:)();
      v25 = Color.over(_:)();

      a3 = v25;
    }

    goto LABEL_32;
  }

  static Material.ultraThin.getter();
  v17 = Color.init(_:white:opacity:)();
  *a6 = v12;
  if (v11)
  {
    __asm { FMOV            V0.2D, #1.0 }

    *(a6 + 8) = _Q0;
    *(a6 + 24) = v29;
    *(a6 + 32) = v30 | (v31 << 32);
    *(a6 + 40) = 0;
    *(a6 + 48) = v17;
    *(a6 + 56) = xmmword_18CDA7C90;
  }

  else
  {
    __asm { FMOV            V0.2D, #1.0 }

    *(a6 + 8) = _Q0;
    *(a6 + 24) = v29;
    *(a6 + 32) = v30 | (v31 << 32);
    *(a6 + 40) = 0;
    *(a6 + 48) = v17;
    *(a6 + 56) = xmmword_18CDA7C80;
  }
}

uint64_t ResolvedBorderedButton.resolvedBackground.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 2);
  v4 = *(v1 + 24);
  v5 = *(v1 + 25);
  v6 = *(v1 + 27);
  v7 = *(v1 + 224);
  specialized Environment.wrappedValue.getter(v6, v7 & 1, &v42);
  v21 = v42;
  specialized Environment.wrappedValue.getter(v3, v4 & 0xFFFFFEFF | ((v5 & 1) << 8), &v22);
  v20 = v22;
  v19 = BYTE8(v22);
  static EdgeInsets.zero.getter();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v22 = *v1;
  v23 = v3;
  v24 = v4;
  v25 = v5;
  v34 = *(v1 + 154);
  v35 = *(v1 + 170);
  *v36 = *(v1 + 186);
  *&v36[14] = *(v1 + 200);
  v30 = *(v1 + 90);
  v31 = *(v1 + 106);
  v32 = *(v1 + 122);
  v33 = *(v1 + 138);
  v26 = *(v1 + 26);
  v27 = *(v1 + 42);
  v28 = *(v1 + 58);
  v29 = *(v1 + 74);
  v37 = v6;
  v38 = v7;
  v41 = *(v1 + 257);
  v39 = *(v1 + 225);
  v40 = *(v1 + 241);
  ResolvedBorderedButton.colorSpec.getter(&v42);
  v16 = Color.opacity(_:)();
  outlined destroy of BorderedButtonColorSpec(&v42);
  ResolvedBorderedButton.colorSpec.getter(&v22);
  result = outlined destroy of BorderedButtonColorSpec(&v22);
  v18 = BYTE14(v26);
  *a1 = v21;
  *(a1 + 8) = v20;
  *(a1 + 16) = v19;
  *(a1 + 24) = v9;
  *(a1 + 32) = v11;
  *(a1 + 40) = v13;
  *(a1 + 48) = v15;
  *(a1 + 56) = v16;
  *(a1 + 64) = 256;
  *(a1 + 66) = v18;
  return result;
}