void NavigationSplitCoordinator.makeNavigationControllers(splitController:environment:)(void *a1, uint64_t *a2)
{
  v3 = v2;
  v5 = a2[1];
  v23 = *a2;
  v6 = *(v2 + 264);
  v7 = *(v2 + 272);
  *&v27 = *(v2 + 256);
  *(&v27 + 1) = v6;
  v28 = v7;
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_1(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>, &type metadata for AnyNavigationSplitVisibility, MEMORY[0x1E6981948]);
  v9 = v8;

  MEMORY[0x18D00ACC0](&v25, v9);
  v10 = v25 >> 14;
  LODWORD(v22) = v10 >= 2 && (v10 == 2 || v25 != 49152);

LABEL_7:
  v11 = 0;
  if (v22)
  {
    v12 = 1;
  }

  else
  {
LABEL_29:
    v12 = 2;
  }

  v13 = 0;
  v14 = v11;
  while (1)
  {
    v24 = v14;
    v11 = v12;
    outlined init with copy of NavigationAuthority(v3 + 312, &v27);
    v15 = [objc_allocWithZone(type metadata accessor for UIKitNavigationController()) initWithRootViewController_];
    outlined init with copy of NavigationAuthority(&v27, &v25);
    v16 = OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_navigationAuthority;
    swift_beginAccess();
    v17 = v15;
    _s7SwiftUI15NavigationStateV12StackContentVSgWOdTm_0(&v25, v15 + v16, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
    swift_endAccess();
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_splitViewColumnGestureBehavior>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey>, &type metadata for EnvironmentValues.AllowsToolbarConversionKey, &protocol witness table for EnvironmentValues.AllowsToolbarConversionKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey>, &type metadata for EnvironmentValues.AllowsToolbarConversionKey, &protocol witness table for EnvironmentValues.AllowsToolbarConversionKey);
    if (v5)
    {
      swift_retain_n();
      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      PropertyList.subscript.getter();
    }

    if ((v25 & 1) == 0)
    {
      v18 = [v17 navigationBar];
      [v18 setPreferredBehavioralStyle_];
    }

    *(v17 + OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_isDataDriven) = 1;
    v19 = OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_isSecure;
    if (*(v17 + OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_isSecure) == 1)
    {

      outlined destroy of NavigationAuthority(&v27);
      v20 = 1;
    }

    else
    {
      HIDWORD(v22) = v13;
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_splitViewColumnGestureBehavior>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneAllowsSecureDrawingKey>, &type metadata for SceneAllowsSecureDrawingKey, &protocol witness table for SceneAllowsSecureDrawingKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneAllowsSecureDrawingKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneAllowsSecureDrawingKey>, &type metadata for SceneAllowsSecureDrawingKey, &protocol witness table for SceneAllowsSecureDrawingKey);
      if (v5)
      {
        PropertyList.Tracker.value<A>(_:for:)();
      }

      else
      {
        PropertyList.subscript.getter();
      }

      outlined destroy of NavigationAuthority(&v27);
      v20 = v25;
    }

    *(v17 + v19) = v20;

    swift_beginAccess();
    outlined init with copy of UINavigationPresentationAdaptor?(v3 + 336, &v25);
    if (v26)
    {
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v25, &v27);
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v27, &v25);
      v21 = OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_platformNavigationPresentationStrategy;
      swift_beginAccess();
      outlined assign with take of UIKitNavigationController.PlatformNavigationRequestStrategy(&v25, v17 + v21);
      swift_endAccess();
    }

    else
    {
      outlined destroy of UINavigationPresentationAdaptor?(&v25);
    }

    if ([a1 style])
    {
      [a1 setViewController:v17 forColumn:v24];
    }

    if (v13)
    {
      break;
    }

    v13 = 1;
    if (!v11)
    {
      goto LABEL_7;
    }

    v12 = 0;
    v14 = 2;
    if (v11 == 1)
    {
      goto LABEL_29;
    }
  }

  *&v27 = v23;
  *(&v27 + 1) = v5;
  NavigationSplitCoordinator.makeCompactController(splitController:environment:)(a1, &v27);
}

void NavigationSplitCoordinator.makeCompactController(splitController:environment:)(void *a1, uint64_t *a2)
{
  if (*(v2 + 208))
  {
    type metadata accessor for NavigationStackCoordinator<CollapsedSplitNavigationStrategy_Phone>(0, &lazy cache variable for type metadata for UIHostingController<PreparedCompactColumn>, lazy protocol witness table accessor for type PreparedCompactColumn and conformance PreparedCompactColumn, &type metadata for PreparedCompactColumn, type metadata accessor for UIHostingController);
    v5 = objc_allocWithZone(v4);
    v6 = swift_retain_n();
    v13 = specialized UIHostingController.init(rootView:)(v6);
    [a1 setViewController:v13 forColumn:3];
  }

  else
  {
    v8 = *a2;
    v7 = a2[1];
    outlined init with copy of NavigationAuthority(v2 + 312, v16);
    v9 = v2;
    v10 = [objc_allocWithZone(type metadata accessor for UIKitNavigationController()) initWithRootViewController_];
    outlined init with copy of NavigationAuthority(v16, &v14);
    v11 = OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_navigationAuthority;
    swift_beginAccess();
    _s7SwiftUI15NavigationStateV12StackContentVSgWOdTm_0(&v14, v10 + v11, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
    swift_endAccess();
    *&v14 = v8;
    *(&v14 + 1) = v7;
    UIKitNavigationController.configure(environment:)(&v14);
    outlined destroy of NavigationAuthority(v16);
    swift_beginAccess();
    outlined init with copy of UINavigationPresentationAdaptor?(v9 + 336, &v14);
    if (v15)
    {
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v14, v16);
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v16, &v14);
      v12 = OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_platformNavigationPresentationStrategy;
      swift_beginAccess();
      outlined assign with take of UIKitNavigationController.PlatformNavigationRequestStrategy(&v14, v10 + v12);
      swift_endAccess();
    }

    else
    {
      outlined destroy of UINavigationPresentationAdaptor?(&v14);
    }

    if ([a1 style])
    {
      [a1 setViewController:v10 forColumn:3];
    }
  }
}

void NavigationSplitRepresentable.updateUIViewController(_:context:)(void *a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *a2;
  v57 = a2[1];
  v54 = a2[3];
  v55 = a2[2];
  v56 = *(v2 + 280);
  v53 = specialized Environment.wrappedValue.getter(*(v2 + 336), *(v2 + 344));
  v52 = specialized Environment.wrappedValue.getter(*(v2 + 352), *(v2 + 360));
  v5 = *(v2 + 384);
  v85 = *(v2 + 368);
  v86 = v5;
  v87 = *(v2 + 400);
  v6 = specialized Environment.wrappedValue.getter();
  v8 = v7;
  v10 = v9;
  v11 = *(v3 + 240);
  v12 = *(v3 + 248);
  v13 = *(v3 + 192);
  v48 = *(v3 + 200);
  v49 = *(v3 + 216);
  v50 = v14;
  v46 = *(v3 + 224);
  v47 = *(v3 + 208);
  v51 = *(v3 + 225);
  v45 = *(v3 + 226);
  v15 = *(v3 + 288);
  *(v4 + 256) = *(v3 + 232);
  *(v4 + 264) = v11;
  *(v4 + 272) = v12;

  swift_beginAccess();
  outlined assign with copy of _VariadicView_Children(v3, v4 + 16);
  swift_endAccess();
  swift_beginAccess();
  outlined assign with copy of _VariadicView_Children(v3 + 64, v4 + 80);
  swift_endAccess();
  swift_beginAccess();
  outlined assign with copy of _VariadicView_Children(v3 + 128, v4 + 144);
  swift_endAccess();
  *(v4 + 208) = v13;

  v16 = *(v4 + 280);
  v17 = *(v4 + 288);
  v18 = *(v4 + 296);
  v19 = *(v4 + 304);
  *(v4 + 280) = v6;
  *(v4 + 288) = v8;
  *(v4 + 296) = v10;
  *(v4 + 304) = v50;
  outlined consume of NavigationEventHandlers?(v16, v17, v18, v19);
  v59 = v6;
  outlined copy of AppIntentExecutor?(v6, v8);
  v60 = v10;
  outlined copy of AppIntentExecutor?(v10, v50);
  static Semantics.v6_1.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    swift_beginAccess();
    *(v4 + 216) = v48;
    *(v4 + 224) = v47;
    *(v4 + 232) = v49;
    *(v4 + 240) = v46;
    *(v4 + 241) = v51;
    *(v4 + 242) = v45;
  }

  if (v15)
  {
    swift_getKeyPath();
    *&v68 = v15;
    lazy protocol witness table accessor for type UISplitViewControllerProxyStorage and conformance UISplitViewControllerProxyStorage();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *&v68 = *(v15 + 16);

    specialized NavigationSplitCoordinator.applyOverrides(from:to:)(&v68, a1);
  }

  swift_beginAccess();
  v20 = qword_18CE05380[*(v4 + 224)];
  if ([a1 preferredSplitBehavior] != v20)
  {
    [a1 setPreferredSplitBehavior_];
  }

  NavigationSplitCoordinator.width(for:)(0, &v75);
  if (v78[9])
  {
    static Semantics.v6.getter();
    if (isLinkedOnOrAfter(_:)())
    {
      UISplitViewController.resetPrimaryColumnWidth()();
    }
  }

  else
  {
    v21 = v75;
    v22 = v76;
    v23 = v78;
    v24 = MEMORY[0x1E69DE3C8];
    if (v78[8])
    {
      v23 = MEMORY[0x1E69DE3C8];
    }

    v25 = *v23;
    [a1 setPreferredPrimaryColumnWidth_];
    [a1 setMaximumPrimaryColumnWidth_];
    if (v22)
    {
      [a1 setMinimumPrimaryColumnWidth_];
    }

    else
    {
      [a1 setMinimumPrimaryColumnWidth_];
    }
  }

  NavigationSplitCoordinator.width(for:)(1, &v79);
  if (v84)
  {
    if ([a1 style] == 2)
    {
      static Semantics.v6.getter();
      if (isLinkedOnOrAfter(_:)())
      {
        UISplitViewController.resetSupplementaryColumnWidth()();
      }
    }
  }

  else
  {
    v27 = v79;
    v28 = v80;
    v29 = v83;
    v30 = v82;
    [a1 setPreferredSupplementaryColumnWidth_];
    if ((v29 & 1) == 0)
    {
      [a1 setMaximumSupplementaryColumnWidth_];
    }

    if ((v28 & 1) == 0)
    {
      [a1 setMinimumSupplementaryColumnWidth_];
    }
  }

  *&v68 = v55;
  *(&v68 + 1) = v54;
  v31 = NavigationSplitCoordinator.presentsWithGesture(environment:)(&v68, v26);
  if (v31 != 2)
  {
    v32 = v31 & 1;
    if ([a1 presentsWithGesture] != v32)
    {
      [a1 setPresentsWithGesture_];
    }
  }

  *&v68 = v55;
  *(&v68 + 1) = v54;
  EnvironmentValues.horizontalSizeClass.getter();
  v34 = (v62 & 1) == 0 && v62 != 2;
  UISplitViewController.updateBackground(isCollapsed:wantsTransparentBackgroundWhenCollapsed:containerWantsTransparentBackground:sidebarDimmingIgnoresSafeArea:)(v34, v53 & 1, v52 & 1, v51);
  *&v68 = v55;
  *(&v68 + 1) = v54;
  NavigationSplitCoordinator.updateStackCoordinators(isCollapsed:splitController:environment:transaction:seeds:wantsTransparentBackgroundWhenCollapsed:)(v34, a1, &v68, v57, v56, v53 & 1);
  v35 = Transaction.disablesAnimations.getter();
  Transaction.subscript.getter();
  if (v68 == 1)
  {
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v6, v8);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v60, v50);
  }

  else
  {
    v36 = *(v4 + 264);
    v37 = *(v4 + 272);
    v38 = *(v4 + 280);
    v39 = *(v4 + 288);
    v40 = *(v4 + 296);
    v41 = *(v4 + 304);
    *&v68 = *(v4 + 256);
    *(&v68 + 1) = v36;
    LODWORD(v69) = v37;
    v70 = 0;
    *&v71 = 0;
    BYTE8(v71) = 0;
    *&v72 = v38;
    *(&v72 + 1) = v39;
    *&v73 = v40;
    *(&v73 + 1) = v41;
    v74 = *(v4 + 224);
    v64 = v71;
    v65 = v72;
    v66 = v73;
    v67 = v74;
    v62 = v68;
    v63 = v69;

    outlined copy of NavigationEventHandlers?(v38, v39, v40, v41);
    UISplitViewControllerVisibilityEngine.visibility.getter(&v61);
    outlined destroy of UISplitViewControllerVisibilityEngine(&v68);
    LOBYTE(v62) = 17;
    v42 = swift_allocObject();
    swift_weakInit();
    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v44 = swift_allocObject();
    *(v44 + 16) = v42;
    *(v44 + 24) = v43;
    *(v44 + 32) = (v35 & 1) == 0;

    static Update.enqueueAction(reason:_:)();
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v59, v8);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v60, v50);
  }
}

uint64_t sub_18BED9AF0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18BED9B28()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18BED9B60()
{

  return swift_deallocObject();
}

void *specialized Environment.wrappedValue.getter()
{
  v1 = *v0;
  if (*(v0 + 32) == 1)
  {
    v3 = *(v0 + 16);
    v2 = *(v0 + 24);
    outlined copy of AppIntentExecutor?(v1, *(v0 + 8));
    outlined copy of AppIntentExecutor?(v3, v2);
  }

  else
  {

    v4 = static os_log_type_t.fault.getter();
    v5 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9 = v7;
      *v6 = 136315138;
      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x800000018CD3F9B0, &v9);
      _os_log_impl(&dword_18BD4A000, v5, v4, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x18D0110E0](v7, -1, -1);
      MEMORY[0x18D0110E0](v6, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined destroy of Environment<NavigationEventHandlers>(v0, &lazy cache variable for type metadata for Environment<NavigationEventHandlers>, &type metadata for NavigationEventHandlers);

    return v9;
  }

  return v1;
}

{
  v1 = *v0;
  if (*(v0 + 32) == 1)
  {
    outlined copy of Text?(v1, *(v0 + 8), *(v0 + 16), *(v0 + 24));
  }

  else
  {

    v2 = static os_log_type_t.fault.getter();
    v3 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v3, v2))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v7 = v5;
      *v4 = 136315138;
      *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6C616E6F6974704FLL, 0xEE003E747865543CLL, &v7);
      _os_log_impl(&dword_18BD4A000, v3, v2, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x18D0110E0](v5, -1, -1);
      MEMORY[0x18D0110E0](v4, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined destroy of Environment<ToolbarItemMetrics?>(v0, &lazy cache variable for type metadata for Environment<Text?>, &lazy cache variable for type metadata for Text?, MEMORY[0x1E6981148]);

    return v7;
  }

  return v1;
}

{
  v1 = *v0;
  if (*(v0 + 32) == 1)
  {
    outlined copy of Binding<String>?(v1, *(v0 + 8));
  }

  else
  {

    v2 = static os_log_type_t.fault.getter();
    v3 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v3, v2))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v7 = v5;
      *v4 = 136315138;
      *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000018CD3F3E0, &v7);
      _os_log_impl(&dword_18BD4A000, v3, v2, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x18D0110E0](v5, -1, -1);
      MEMORY[0x18D0110E0](v4, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined destroy of PlaybackButton.State(v0, type metadata accessor for Environment<Binding<String>?>);

    return v7;
  }

  return v1;
}

uint64_t NavigationSplitCoordinator.width(for:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = 0;
  if (result)
  {
    if (result != 1)
    {
      v14 = 0;
      v15 = 0;
      v9 = 0;
      v11 = 0;
      goto LABEL_13;
    }

    v4 = 1;
  }

  swift_beginAccess();
  v5 = *(v2 + 232);
  if (!*(v5 + 16) || (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v7 & 1) == 0))
  {
    result = swift_endAccess();
    v14 = 0;
    v15 = 0;
    v9 = 0;
    v11 = 0;
    LOBYTE(v4) = 0;
LABEL_13:
    v13 = 1;
    goto LABEL_14;
  }

  v8 = *(v5 + 56) + 40 * v6;
  v9 = *v8;
  v10 = *(v8 + 8);
  v12 = *(v8 + 16);
  v11 = *(v8 + 24);
  LODWORD(v4) = *(v8 + 32);
  swift_endAccess();
  if ((v4 & 0x80000000) != 0)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_splitViewColumnGestureBehavior>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v7>, MEMORY[0x1E697DF70], MEMORY[0x1E697DF68], MEMORY[0x1E697EC20]);
    lazy protocol witness table accessor for type _SemanticFeature<Semantics_v7> and conformance _SemanticFeature<A>();
    result = static SemanticFeature.isEnabled.getter();
    if (result)
    {
      v13 = 0;
      v15 = v10 & 1;
      LOBYTE(v4) = v4 & 1;
      v14 = v9;
      v9 = v12;
    }

    else
    {
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_splitViewColumnGestureBehavior>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]);
      lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
      result = static SemanticFeature.isEnabled.getter();
      v14 = 0;
      v13 = 0;
      if (v4)
      {
        v16 = v12;
      }

      else
      {
        v16 = v11;
      }

      if (result)
      {
        v11 = v16;
      }

      else
      {
        v11 = 0;
      }

      v15 = 1;
      LOBYTE(v4) = (result & 1) == 0;
      v9 = v12;
    }
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_splitViewColumnGestureBehavior>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]);
    lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
    result = static SemanticFeature.isEnabled.getter();
    v13 = 0;
    if (result)
    {
      v14 = v9;
    }

    else
    {
      v14 = 0;
    }

    v15 = (result ^ 1) & 1;
    LOBYTE(v4) = (result ^ 1) & 1;
    v11 = v14;
  }

LABEL_14:
  *a2 = v14;
  *(a2 + 8) = v15;
  *(a2 + 16) = v9;
  *(a2 + 24) = v11;
  *(a2 + 32) = v4;
  *(a2 + 33) = v13;
  return result;
}

id UISplitViewController.resetPrimaryColumnWidth()()
{
  [v0 minimumPrimaryColumnWidth];
  v1 = *MEMORY[0x1E69DE3C8];
  if (v2 != *MEMORY[0x1E69DE3C8])
  {
    [v0 setMinimumPrimaryColumnWidth_];
  }

  [v0 preferredPrimaryColumnWidth];
  if (v3 != v1)
  {
    [v0 setPreferredPrimaryColumnWidth_];
  }

  result = [v0 maximumPrimaryColumnWidth];
  if (v5 != v1)
  {

    return [v0 setMaximumPrimaryColumnWidth_];
  }

  return result;
}

void UISplitViewController.updateBackground(isCollapsed:wantsTransparentBackgroundWhenCollapsed:containerWantsTransparentBackground:sidebarDimmingIgnoresSafeArea:)(int a1, int a2, char a3, char a4)
{
  v5 = v4;
  v10 = [v5 traitCollection];
  v11 = [v10 userInterfaceIdiom];

  if (v11 == 6)
  {
    return;
  }

  v31 = a4;
  v12 = 0;
  LOBYTE(v13) = 0;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (v13)
        {
          if (v12 == 2)
          {
            v22 = 0;
            if ((a3 & 1) == 0 && (a1 & 1) == 0)
            {
              goto LABEL_29;
            }

            goto LABEL_31;
          }

          LOBYTE(v13) = 1;
          goto LABEL_3;
        }

        v14 = outlined read-only object #0 of UISplitViewController.updateBackground(isCollapsed:wantsTransparentBackgroundWhenCollapsed:containerWantsTransparentBackground:sidebarDimmingIgnoresSafeArea:)[v12 + 4];
        if ([v5 style])
        {
          v15 = [v5 viewControllerForColumn_];
          if (v15)
          {
            break;
          }
        }

LABEL_18:
        if (v12 == 2)
        {
          goto LABEL_27;
        }

        LOBYTE(v13) = 0;
        ++v12;
      }

      v16 = v15;
      objc_opt_self();
      v17 = swift_dynamicCastObjCClass();
      if (!v17)
      {

        goto LABEL_18;
      }

      v18 = [v17 viewControllers];

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
      v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v19 >> 62))
      {
        break;
      }

      if (__CocoaSet.count.getter() <= 0)
      {
        goto LABEL_21;
      }

LABEL_12:
      if ((v19 & 0xC000000000000001) == 0)
      {
        if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v20 = *(v19 + 32);
          goto LABEL_15;
        }

        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v20 = MEMORY[0x18D00E9C0](0, v19);
LABEL_15:
      v21 = v20;

      v13 = [v21 _wantsTransparentBackground];

      if (v12 == 2)
      {
        v22 = 0;
        if ((a3 & 1) == 0 && (a1 & (a2 | v13) & 1) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_31;
      }

LABEL_3:
      ++v12;
    }

    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
    {
      goto LABEL_12;
    }

LABEL_21:

    if (v12 == 2)
    {
      break;
    }

    LOBYTE(v13) = 0;
    ++v12;
  }

LABEL_27:
  v22 = 0;
  if ((a3 & 1) == 0 && (a1 & a2 & 1) == 0)
  {
LABEL_29:
    v23 = [v5 view];
    if (v23)
    {
      v24 = v23;
      v22 = [v23 backgroundColor];

      goto LABEL_31;
    }

LABEL_50:
    __break(1u);
    return;
  }

LABEL_31:
  v25 = [v5 view];
  if (!v25)
  {
    goto LABEL_48;
  }

  v26 = v25;
  v27 = [v25 backgroundColor];

  if (v22)
  {
    if (v27)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
      v32 = v22;
      v28 = static NSObject.== infix(_:_:)();

      if (v28)
      {
        goto LABEL_40;
      }
    }

LABEL_38:
    v29 = [v5 view];
    if (v29)
    {
      v30 = v29;
      [v29 setBackgroundColor_];

      v32 = v22;
      goto LABEL_40;
    }

LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v27)
  {

    goto LABEL_38;
  }

  v32 = 0;
LABEL_40:
  [v5 _setWantsFloatingSidebar_];
}

void NavigationSplitCoordinator.updateStackCoordinators(isCollapsed:splitController:environment:transaction:seeds:wantsTransparentBackgroundWhenCollapsed:)(char a1, id a2, uint64_t *a3, uint64_t a4, unint64_t a5, char a6)
{
  v9 = v6;
  v10 = a1;
  v114 = a3[1];
  v115 = *a3;
  v11 = *(v6 + 208);
  if (v11)
  {
    v12 = a2;
    if (a1)
    {
      if (*(v6 + 384))
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  swift_beginAccess();
  if (*(*(v6 + 376) + 16))
  {
LABEL_9:
    v10 = a1;
    if (a1)
    {
      v11 = *(v9 + 208);
      v12 = a2;
      if (*(v9 + 384))
      {
LABEL_4:
        if (!v11)
        {
LABEL_5:
          if ((*(v9 + 392) & 1) == 0)
          {
            swift_beginAccess();
            v7 = *(v9 + 376);
            v8 = *(v9 + 264);
            v13 = *(v9 + 272);
            *&v117 = *(v9 + 256);
            *(&v117 + 1) = v8;
            LOWORD(v118) = v13;
            _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_1(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>, &type metadata for AnyNavigationSplitVisibility, MEMORY[0x1E6981948]);
            v15 = v14;

            MEMORY[0x18D00ACC0](v148, v15);
            v16 = LOWORD(v148[0]) >> 14;
            v106 = v10;
            v111 = v16 >= 2 && (v16 == 2 || LOWORD(v148[0]) != 49152);

            if (*(v7 + 16))
            {
              v75 = 0;
              v76 = 0;
              v77 = MEMORY[0x1E69E7D40];
              v8 = &lazy cache variable for type metadata for NavigationState.StackContent?;
              do
              {
                if (v75)
                {
                  break;
                }

                if (v76)
                {
                  if (v76 != 1)
                  {
                    v78 = 0;
                    v75 = 1;
                    goto LABEL_82;
                  }
                }

                else if (v111)
                {
                  v75 = 0;
                  v78 = 1;
                  goto LABEL_82;
                }

                v75 = 0;
                v78 = 2;
LABEL_82:
                v79 = specialized __RawDictionaryStorage.find<A>(_:)(v76);
                if ((v80 & 1) == 0)
                {

                  v10 = v106;
                  v12 = a2;
                  goto LABEL_103;
                }

                v81 = *(*(v7 + 56) + 8 * v79);
                v143 = 0u;
                v144 = 0u;
                v141 = 0u;
                v142 = 0u;
                v139 = 0u;
                v140 = 0u;
                v137 = 0u;
                v138 = 0u;
                v135 = 0u;
                v136 = 0u;
                v133 = 0u;
                v134 = 0u;
                v131 = 0u;
                v132 = 0u;
                v129 = 0u;
                v130 = 0u;
                v127 = 0u;
                v128 = 0u;
                v125 = 0u;
                v126 = 0u;
                v123 = 0u;
                v124 = 0u;
                v121 = 0u;
                v122 = 0u;
                v119 = 0u;
                v120 = 0u;
                v117 = 0u;
                v118 = 0u;
                v145 = -1;
                v82 = *((*v77 & *v81) + 0xB0);
                swift_beginAccess();
                v83 = v81;
                _s7SwiftUI15NavigationStateV12StackContentVSgWOdTm_0(&v117, v81 + v82, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
                swift_endAccess();
                *(v83 + *((*v77 & *v83) + 0xA8)) = -1;

                v76 = v78;
                v12 = a2;
              }

              while (*(v7 + 16));
            }

            v10 = v106;
          }

LABEL_103:
          if (![v12 style])
          {
            goto LABEL_112;
          }

          v99 = [v12 viewControllerForColumn_];
          if (!v99)
          {
            goto LABEL_118;
          }

          v7 = v99;
          objc_opt_self();
          v100 = swift_dynamicCastObjCClass();
          if (!v100)
          {
            goto LABEL_117;
          }

          v101 = *(v9 + 384);
          if (!v101)
          {
            goto LABEL_119;
          }

          v102 = v100;

          v103 = v101;

          v104 = NavigationSplitCoordinator.allRoots.getter();
          specialized NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:)(v102, v115, v114, a4, a5, a6 & 1, v115, v114, v104);

LABEL_108:
          *(v9 + 392) = v10 & 1;
          return;
        }

LABEL_97:
        v93 = [v12 viewControllerForColumn_];
        v94 = v93;
        v95 = *(v9 + 208);
        if (v95)
        {
          if (!v93)
          {
            goto LABEL_108;
          }

          type metadata accessor for NavigationStackCoordinator<CollapsedSplitNavigationStrategy_Phone>(0, &lazy cache variable for type metadata for UIHostingController<PreparedCompactColumn>, lazy protocol witness table accessor for type PreparedCompactColumn and conformance PreparedCompactColumn, &type metadata for PreparedCompactColumn, type metadata accessor for UIHostingController);
          v96 = swift_dynamicCastClass();
          if (v96)
          {
            v97 = *(v96 + direct field offset for UIHostingController.host);

            v98 = v97;
            specialized _UIHostingView.setRootView(_:transaction:)(v95, a4);

            goto LABEL_108;
          }
        }

        goto LABEL_108;
      }

LABEL_11:
      if (!v11)
      {
        swift_beginAccess();
        v7 = *(v9 + 216);
        v8 = *(v9 + 256);
        v17 = *(v9 + 264);
        v18 = *(v9 + 272);
        *&v117 = v8;
        *(&v117 + 1) = v17;
        LOWORD(v118) = v18;
        _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_1(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>, &type metadata for AnyNavigationSplitVisibility, MEMORY[0x1E6981948]);
        v20 = v19;

        MEMORY[0x18D00ACC0](v149, v20);
        v21 = LOWORD(v149[0]) >> 14;
        if (v21 < 2 || v21 != 2 && LOWORD(v149[0]) == 49152)
        {
          v22 = 2;
        }

        else
        {
          v22 = 3;
        }

        outlined init with copy of NavigationAuthority(v9 + 312, &v117);
        type metadata accessor for NavigationStackCoordinator<CollapsedSplitNavigationStrategy_Phone>(0, &lazy cache variable for type metadata for NavigationStackCoordinator<CollapsedSplitNavigationStrategy_Phone>, lazy protocol witness table accessor for type CollapsedSplitNavigationStrategy_Phone and conformance CollapsedSplitNavigationStrategy_Phone, &type metadata for CollapsedSplitNavigationStrategy_Phone, type metadata accessor for NavigationStackCoordinator);
        v85 = objc_allocWithZone(v84);
        v86 = specialized NavigationStackCoordinator.init(context:navigationAuthority:)(v7, 4, v22, &v117);
        if (![v12 style])
        {
          goto LABEL_113;
        }

        v87 = [v12 viewControllerForColumn_];
        if (!v87)
        {
          goto LABEL_121;
        }

        v8 = v87;
        objc_opt_self();
        v88 = swift_dynamicCastObjCClass();
        if (!v88)
        {
          goto LABEL_120;
        }

        [v88 setDelegate_];

        v8 = a2;
        if (![a2 style])
        {
          goto LABEL_114;
        }

        v89 = [a2 viewControllerForColumn_];
        if (!v89)
        {
          goto LABEL_123;
        }

        v8 = v89;
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          goto LABEL_122;
        }

        type metadata accessor for UIKitNavigationController();
        v90 = swift_dynamicCastClass();
        v12 = a2;
        if (v90)
        {
          v91 = (v90 + OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_context);
          *v91 = v7;
          v91[1] = 4;
          v91[2] = v22;
        }

        v92 = *(v9 + 384);
        *(v9 + 384) = v86;

        if (!*(v9 + 208))
        {
          goto LABEL_5;
        }
      }

      goto LABEL_97;
    }

    v23 = a2;
    if (*(v9 + 392) == 1)
    {
      v24 = *(v9 + 384);
      if (v24)
      {
        v143 = 0u;
        v144 = 0u;
        v141 = 0u;
        v142 = 0u;
        v139 = 0u;
        v140 = 0u;
        v137 = 0u;
        v138 = 0u;
        v135 = 0u;
        v136 = 0u;
        v133 = 0u;
        v134 = 0u;
        v131 = 0u;
        v132 = 0u;
        v129 = 0u;
        v130 = 0u;
        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v145 = -1;
        v25 = MEMORY[0x1E69E7D40];
        v26 = *((*MEMORY[0x1E69E7D40] & *v24) + 0xB0);
        swift_beginAccess();
        v27 = v24;
        _s7SwiftUI15NavigationStateV12StackContentVSgWOdTm_0(&v117, v24 + v26, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
        swift_endAccess();
        *(v27 + *((*v25 & *v27) + 0xA8)) = -1;
      }
    }

    swift_beginAccess();
    v28 = *(v9 + 376);
    v7 = *(v9 + 256);
    v29 = *(v9 + 264);
    v30 = *(v9 + 272);
    v150[0] = v7;
    v150[1] = v29;
    v151 = v30;
    _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_1(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>, &type metadata for AnyNavigationSplitVisibility, MEMORY[0x1E6981948]);
    v32 = v31;

    MEMORY[0x18D00ACC0](v149, v32);
    v33 = LOWORD(v149[0]) >> 14;
    v105 = v33 >= 2 && (v33 == 2 || LOWORD(v149[0]) != 49152);

    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    if (!*(v28 + 16))
    {
LABEL_48:

      v10 = a1;
      goto LABEL_108;
    }

    v38 = 0;
    v39 = 0;
    while (1)
    {
      if (v38)
      {
        goto LABEL_48;
      }

      if (v39)
      {
        if (v39 != 1)
        {
          v8 = 0;
          v42 = 1;
          goto LABEL_36;
        }
      }

      else if (v105)
      {
        v42 = 0;
        v8 = 1;
        goto LABEL_36;
      }

      v42 = 0;
      v8 = 2;
LABEL_36:
      v43 = specialized __RawDictionaryStorage.find<A>(_:)(v39);
      if ((v44 & 1) == 0)
      {
        goto LABEL_48;
      }

      v45 = *(*(v28 + 56) + 8 * v43);
      if (![v23 style])
      {
        goto LABEL_111;
      }

      v46 = [v23 viewControllerForColumn_];
      if (!v46)
      {
        goto LABEL_116;
      }

      v7 = v46;
      v110 = v45;
      objc_opt_self();
      v47 = swift_dynamicCastObjCClass();
      if (!v47)
      {
        goto LABEL_115;
      }

      v48 = v47;
      v49 = [v47 traitCollection];
      *&v146 = v115;
      *(&v146 + 1) = v114;

      UITraitCollection.resolvedPreEnvironment(base:)(&v146, &v147);

      v146 = v147;

      UITraitCollection.coreResolvedBaseEnvironment(base:)();

      v146 = v147;

      UITraitCollection.coreResolvedGlassMaterialEnvironment(base:)();

      v50 = v147;
      v51 = [v23 traitCollection];
      v52 = [v51 userInterfaceIdiom];

      if (!v39 && v52 == 1)
      {
        static _GraphInputs.defaultInterfaceIdiom.getter();
        v41 = static Solarium.isEnabled(for:)();
        _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_VariadicView_Children>, MEMORY[0x1E697FFD0], MEMORY[0x1E69E6F90]);
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_18CD63400;
        v54 = v53 + 32;
LABEL_47:
        outlined init with copy of _VariadicView_Children(v9 + 16, v54);
        goto LABEL_28;
      }

      _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_VariadicView_Children>, MEMORY[0x1E697FFD0], MEMORY[0x1E69E6F90]);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_18CD63400;
      v54 = v53 + 32;
      if (v39 == 2)
      {
        v40 = v9 + 144;
      }

      else
      {
        if (v39 != 1)
        {
          v41 = 0;
          goto LABEL_47;
        }

        v40 = v9 + 80;
      }

      outlined init with copy of _VariadicView_Children(v40, v54);
      v41 = 0;
LABEL_28:

      specialized NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:)(v48, v50, *(&v50 + 1), a4, a5, v41 & 1, v50, *(&v50 + 1), v53);

      v23 = a2;
      v38 = v42;
      v39 = v8;
      if (!*(v28 + 16))
      {
        goto LABEL_48;
      }
    }
  }

  v34 = *(v6 + 264);
  v35 = *(v6 + 272);
  *&v117 = *(v6 + 256);
  *(&v117 + 1) = v34;
  LOWORD(v118) = v35;
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_1(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>, &type metadata for AnyNavigationSplitVisibility, MEMORY[0x1E6981948]);
  v8 = v36;

  MEMORY[0x18D00ACC0](v150, v8);
  v37 = LOWORD(v150[0]) >> 14;
  v112 = v37 >= 2 && (v37 == 2 || LOWORD(v150[0]) != 49152);

LABEL_53:
  v55 = 0;
  if (v112)
  {
    v56 = 1;
  }

  else
  {
LABEL_69:
    v56 = 2;
  }

  v57 = 0;
  v7 = v55;
  while (1)
  {
    v55 = v56;
    *&v117 = v115;
    *(&v117 + 1) = v114;
    v58 = NavigationSplitCoordinator.makeExpandedStackCoordinator(splitController:environment:uiColumn:)(a2, &v117, v7);
    swift_beginAccess();
    v59 = v58;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v150[0] = *(v9 + 376);
    v61 = v150[0];
    *(v9 + 376) = 0x8000000000000000;
    v62 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
    v64 = *(v61 + 16);
    v65 = (v63 & 1) == 0;
    v66 = __OFADD__(v64, v65);
    v67 = v64 + v65;
    if (v66)
    {
      break;
    }

    v8 = v63;
    if (*(v61 + 24) < v67)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v67, isUniquelyReferenced_nonNull_native);
      v62 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
      if ((v8 & 1) != (v68 & 1))
      {
        goto LABEL_124;
      }

LABEL_61:
      v69 = v150[0];
      if (v8)
      {
        goto LABEL_62;
      }

      goto LABEL_64;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_61;
    }

    v72 = v62;
    specialized _NativeDictionary.copy()();
    v62 = v72;
    v69 = v150[0];
    if (v8)
    {
LABEL_62:
      v70 = v69[7];
      v71 = *(v70 + 8 * v62);
      *(v70 + 8 * v62) = v59;

      goto LABEL_66;
    }

LABEL_64:
    v69[(v62 >> 6) + 8] |= 1 << v62;
    *(v69[6] + 8 * v62) = v7;
    *(v69[7] + 8 * v62) = v59;
    v73 = v69[2];
    v66 = __OFADD__(v73, 1);
    v74 = v73 + 1;
    if (v66)
    {
      goto LABEL_110;
    }

    v69[2] = v74;
LABEL_66:
    *(v9 + 376) = v69;
    swift_endAccess();

    if (v57)
    {
      goto LABEL_9;
    }

    v57 = 1;
    if (!v55)
    {
      goto LABEL_53;
    }

    v56 = 0;
    v7 = 2;
    if (v55 == 1)
    {
      goto LABEL_69;
    }
  }

  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:

LABEL_116:
  __break(1u);
LABEL_117:

LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:

LABEL_121:
  __break(1u);
LABEL_122:

LABEL_123:
  __break(1u);
LABEL_124:
  type metadata accessor for UISplitViewControllerColumn(0);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

id NavigationSplitCoordinator.makeExpandedStackCoordinator(splitController:environment:uiColumn:)(void *a1, uint64_t *a2, unint64_t a3)
{
  if (a3 >= 5)
  {
    goto LABEL_21;
  }

  v4 = v3;
  v8 = *a2;
  v7 = a2[1];
  v9 = 0x504020100uLL >> (8 * a3);
  swift_beginAccess();
  v37 = *(v3 + 216);
  v10 = *(v3 + 264);
  v11 = *(v3 + 272);
  *&v39 = *(v3 + 256);
  *(&v39 + 1) = v10;
  v40 = v11;
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_1(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>, &type metadata for AnyNavigationSplitVisibility, MEMORY[0x1E6981948]);
  v13 = v12;

  MEMORY[0x18D00ACC0](v38, v13);
  v14 = LOWORD(v38[0]) >> 14;
  if (v14 < 2 || v14 != 2 && LOWORD(v38[0]) == 49152)
  {
    v15 = 2;
  }

  else
  {
    v15 = 3;
  }

  outlined init with copy of NavigationAuthority(v3 + 312, &v39);
  type metadata accessor for NavigationStackCoordinator<CollapsedSplitNavigationStrategy_Phone>(0, &lazy cache variable for type metadata for NavigationStackCoordinator<SplitColumnNavigationStrategy>, lazy protocol witness table accessor for type SplitColumnNavigationStrategy and conformance SplitColumnNavigationStrategy, &type metadata for SplitColumnNavigationStrategy, type metadata accessor for NavigationStackCoordinator);
  v17 = objc_allocWithZone(v16);
  v18 = specialized NavigationStackCoordinator.init(context:navigationAuthority:)(v37, v9, v15, &v39);
  if (![a1 style])
  {
    __break(1u);
    goto LABEL_19;
  }

  v35 = v15;
  v36 = v9;
  v19 = [a1 viewControllerForColumn_];
  if (!v19)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v15 = v19;
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {
LABEL_19:

    goto LABEL_20;
  }

  v21 = v20;
  v22 = [(UINavigationController *)v20 traitCollection];
  v38[0] = v8;
  v38[1] = v7;
  UITraitCollection.resolvedEnvironment(base:)(v38, &v39);

  v23 = v39;
  v24 = specialized NavigationSplitCoordinator.transparentBackground(for:splitController:)(a3, a1);
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_VariadicView_Children>, MEMORY[0x1E697FFD0], MEMORY[0x1E69E6F90]);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_18CD63400;
  if (a3 == 2)
  {
    v26 = v4 + 144;
  }

  else if (a3 == 1)
  {
    v26 = v4 + 80;
  }

  else
  {
    v26 = v4 + 16;
  }

  swift_beginAccess();
  outlined init with copy of _VariadicView_Children(v26, v25 + 32);

  v28 = specialized NavigationStackCoordinator.makeRootHostingController(environment:transparentBackground:strategy:)(v27, *(&v23 + 1), v24 & 1, v23, *(&v23 + 1), v25);

  type metadata accessor for UIKitNavigationController();
  v29 = swift_dynamicCastClass();
  if (v29)
  {
    v30 = (v29 + OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_context);
    *v30 = v37;
    v30[1] = v36 & 7;
    v30[2] = v35;
  }

  [(UINavigationController *)v21 setDelegate:v18];
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_18CD69590;
  *(v31 + 32) = v28;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
  v32 = v28;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [(UINavigationController *)v21 _swiftui_setViewControllers:isa];

  specialized UIHostingController.prepareNavigationBar(in:navigationController:isRoot:)(v23, *(&v23 + 1), v21, 1);

  return v18;
}

unint64_t lazy protocol witness table accessor for type SplitColumnNavigationStrategy and conformance SplitColumnNavigationStrategy()
{
  result = lazy protocol witness table cache variable for type SplitColumnNavigationStrategy and conformance SplitColumnNavigationStrategy;
  if (!lazy protocol witness table cache variable for type SplitColumnNavigationStrategy and conformance SplitColumnNavigationStrategy)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SplitColumnNavigationStrategy, &type metadata for SplitColumnNavigationStrategy, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SplitColumnNavigationStrategy and conformance SplitColumnNavigationStrategy);
  }

  return result;
}

uint64_t specialized NavigationSplitCoordinator.transparentBackground(for:splitController:)(uint64_t a1, id a2)
{
  v3 = [a2 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  v5 = 0;
  if (!a1 && v4 == 1)
  {
    static _GraphInputs.defaultInterfaceIdiom.getter();
    v5 = static Solarium.isEnabled(for:)();
  }

  return v5 & 1;
}

char *specialized NavigationStackCoordinator.makeRootHostingController(environment:transparentBackground:strategy:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v74 = a3;
  *&v73 = a1;
  *(&v73 + 1) = a2;
  v98 = a4;
  v99 = a5;
  v100 = a6;
  v11 = MEMORY[0x1E69E7D40];
  v12 = (v7 + *((*MEMORY[0x1E69E7D40] & *v7) + 0x70));
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  *v12 = a4;
  v12[1] = a5;
  v12[2] = a6;

  outlined consume of NavigationStrategy_Phone?(v13, v14, v15);
  v16 = *((*v11 & *v7) + 0x68);
  Strong = swift_weakLoadStrong();
  if (Strong && (v18 = Strong, swift_beginAccess(), v19 = v18[8], v93 = v18[7], v94 = v19, v95[0] = v18[9], *(v95 + 10) = *(v18 + 154), v20 = v18[4], v90 = v18[3], v91 = v20, v21 = v18[6], *v92 = v18[5], *&v92[16] = v21, v22 = v18[2], v88 = v18[1], v89 = v22, outlined init with copy of NavigationState.StackContent?(&v88, v96, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState), , v82 = v93, v83 = v94, v84[0] = v95[0], *(v84 + 10) = *(v95 + 10), v79 = v90, v80 = v91, *v81 = *v92, *&v81[16] = *&v92[16], v77 = v88, v78 = v89, getEnumTag for AccessibilityActionCategory.Category(&v77) != 1))
  {
    v97[6] = v82;
    v97[7] = v83;
    v97[8] = v84[0];
    *(&v97[8] + 10) = *(v84 + 10);
    v97[2] = v79;
    v97[3] = v80;
    v97[4] = *v81;
    v97[5] = *&v81[16];
    v97[0] = v77;
    v97[1] = v78;
    v63 = v7 + *((*v11 & *v7) + 0x60);
    NavigationState.stackContent(for:)(*v63, v63[8], *(v63 + 2), v96);
    v75[6] = v97[6];
    v75[7] = v97[7];
    v76[0] = v97[8];
    *(v76 + 10) = *(&v97[8] + 10);
    v75[2] = v97[2];
    v75[3] = v97[3];
    v75[4] = v97[4];
    v75[5] = v97[5];
    v75[0] = v97[0];
    v75[1] = v97[1];
    outlined destroy of NavigationState(v75);
    if (LOBYTE(v96[28]) != 255)
    {
      memcpy(v97, v96, 0x1C1uLL);
      goto LABEL_7;
    }
  }

  else
  {
    memset(v96, 0, 448);
  }

  v23 = v7 + *((*v11 & *v7) + 0x60);
  v24 = *v23;
  v25 = v23[8];
  v26 = *(v23 + 2);
  if (v25 == 4)
  {
    LOBYTE(v25) = 0;
  }

  *&v97[0] = v24;
  BYTE8(v97[0]) = v25;
  *&v97[1] = v26;
  LOBYTE(v97[28]) = 0;
LABEL_7:
  outlined init with copy of NavigationState.StackContent(v97, v96);
  v27 = *((*v11 & *v7) + 0xB0);
  swift_beginAccess();
  outlined assign with take of NavigationState.StackContent?(v96, v7 + v27, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
  swift_endAccess();
  outlined init with copy of NavigationState.Base(v97, &v88);
  v29 = v98;
  v28 = v99;
  v30 = v100;
  outlined init with copy of NavigationState.Base(&v88, &v77);
  v31 = swift_allocObject();
  v31[2] = v29;
  v31[3] = v28;
  v31[4] = v30;
  v85 = partial apply for specialized implicit closure #2 in implicit closure #1 in NavigationState.StackContent.Views.sequence<A, B>(using:);
  v86 = v31;
  v87 = v30;
  outlined init with copy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(&v77, v96, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);

  swift_bridgeObjectRetain_n();

  specialized NavigationState.StackContent.Views.ViewsSequence.unusedRoots()();
  outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(&v77, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
  outlined destroy of NavigationState.StackContent.Views(&v88);
  v33 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
  v35 = v34;
  v37 = v36;
  v38 = v32;
  if ((v34 & 1) != 0 && v32 >= 2u)
  {
    result = outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v96, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
    __break(1u);
    goto LABEL_16;
  }

  specialized NavigationState.StackContent.Views.ViewsSequence.subscript.getter(v33, v35 & 1, v37, v38);
  outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v96, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
  v79 = v90;
  v80 = v91;
  *v81 = *v92;
  *&v81[9] = *&v92[9];
  v77 = v88;
  v78 = v89;
  outlined init with copy of NavigationAuthority(v7 + v16, v96);
  NavigationAuthority.controllerCache.getter();
  v39 = outlined destroy of NavigationAuthority(v96);
  MEMORY[0x1EEE9AC00](v39);
  v72 = &v77;
  MEMORY[0x1EEE9AC00](v40);
  v70 = &v98;
  v71 = &v77;
  MEMORY[0x1EEE9AC00](v41);
  v64[16] = v42;
  v65 = v43;
  v66 = closure #1 in NavigationStackCoordinator.makeRootHostingController(environment:transparentBackground:strategy:)partial apply;
  v67 = v44;
  v68 = partial apply for specialized closure #2 in NavigationStackCoordinator.makeRootHostingController(environment:transparentBackground:strategy:);
  v69 = v45;
  specialized NavigationHostingControllerCache_UIKit._viewControllers<A>(forEntering:isBorrowing:request:insert:)(0, closure #1 in NavigationHostingControllerCache_UIKit.unparentedHostingController(at:configureExisting:makeNew:)partial apply, v64, closure #2 in NavigationHostingControllerCache_UIKit.unparentedHostingController(at:configureExisting:makeNew:), 0);
  v47 = v46;

  specialized NavigationStackCoordinator.configureAsRoot(_:transparentBackground:)(v47, v74 & 1, v48);
  result = [v47 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v50 = result;
  [result setClipsToBounds_];

  v51 = direct field offset for UIHostingController.host;
  v52 = *&v47[direct field offset for UIHostingController.host];
  v75[0] = v29;
  type metadata accessor for MainActor();
  swift_retain_n();
  v53 = v52;
  v54 = static MainActor.shared.getter();
  v55 = swift_allocObject();
  v56 = MEMORY[0x1E69E85E0];
  *(v55 + 16) = v54;
  *(v55 + 24) = v56;
  *(v55 + 32) = 0;
  v57 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v58 = static MainActor.shared.getter();
  v59 = swift_allocObject();
  *(v59 + 16) = v58;
  *(v59 + 24) = v56;
  *(v59 + 32) = 0;
  *(v59 + 40) = v57;

  Binding.init(get:set:)();
  v88 = v96[0];
  LOBYTE(v89) = v96[1];
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentationModeKey>, &type metadata for PresentationModeKey, &protocol witness table for PresentationModeKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();

  v96[0] = v75[0];
  UIHostingViewBase.inheritedEnvironment.setter();

  v96[0] = v73;
  v60 = EnvironmentValues.preferenceBridge.getter();
  if (v60)
  {
    v61 = v60;
    v62 = *&v47[v51];
    specialized ViewRendererHost.setPreferenceBridge(_:)(v61);
  }

  outlined destroy of NavigationState.StackContent(v97);
  outlined destroy of NavigationState.StackContent.PositionedView(&v77);
  return v47;
}

unint64_t lazy protocol witness table accessor for type SourceInput<EnvironmentValues.SearchField> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<EnvironmentValues.SearchField> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<EnvironmentValues.SearchField> and conformance SourceInput<A>)
  {
    type metadata accessor for StyleContextWriter<SidebarListStyleContext>(255, &lazy cache variable for type metadata for SourceInput<EnvironmentValues.SearchField>, lazy protocol witness table accessor for type EnvironmentValues.SearchField and conformance EnvironmentValues.SearchField, &type metadata for EnvironmentValues.SearchField, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<EnvironmentValues.SearchField> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SidebarListStyle.HasSearchField and conformance SidebarListStyle.HasSearchField()
{
  result = lazy protocol witness table cache variable for type SidebarListStyle.HasSearchField and conformance SidebarListStyle.HasSearchField;
  if (!lazy protocol witness table cache variable for type SidebarListStyle.HasSearchField and conformance SidebarListStyle.HasSearchField)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SidebarListStyle.HasSearchField, &unk_1EFFA2C80, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SidebarListStyle.HasSearchField and conformance SidebarListStyle.HasSearchField);
  }

  return result;
}

void type metadata accessor for SidebarListStyle.BodyContent<ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for SidebarListStyle.BodyContent<ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>>>)
  {
    type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>>(255);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>> and conformance <> ModifiedContent<A, B>();
    v6 = type metadata accessor for SidebarListStyle.BodyContent(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for SidebarListStyle.BodyContent<ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>>)
  {
    type metadata accessor for StyleContextWriter<SidebarListStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<SidebarListStyleContext>, lazy protocol witness table accessor for type SidebarListStyleContext and conformance SidebarListStyleContext, &type metadata for SidebarListStyleContext, MEMORY[0x1E697F4C8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SidebarListStyleContext and conformance SidebarListStyleContext()
{
  result = lazy protocol witness table cache variable for type SidebarListStyleContext and conformance SidebarListStyleContext;
  if (!lazy protocol witness table cache variable for type SidebarListStyleContext and conformance SidebarListStyleContext)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SidebarListStyleContext, &type metadata for SidebarListStyleContext, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SidebarListStyleContext and conformance SidebarListStyleContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SidebarListStyleContext and conformance SidebarListStyleContext;
  if (!lazy protocol witness table cache variable for type SidebarListStyleContext and conformance SidebarListStyleContext)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SidebarListStyleContext, &type metadata for SidebarListStyleContext, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SidebarListStyleContext and conformance SidebarListStyleContext);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>>(255);
    v4 = v3;
    v5[0] = &protocol witness table for ListStyleContent;
    v5[1] = lazy protocol witness table accessor for type StyleContextWriter<SidebarListStyleContext> and conformance StyleContextWriter<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StyleContextWriter<SidebarListStyleContext> and conformance StyleContextWriter<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextWriter<SidebarListStyleContext> and conformance StyleContextWriter<A>;
  if (!lazy protocol witness table cache variable for type StyleContextWriter<SidebarListStyleContext> and conformance StyleContextWriter<A>)
  {
    type metadata accessor for StyleContextWriter<SidebarListStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<SidebarListStyleContext>, lazy protocol witness table accessor for type SidebarListStyleContext and conformance SidebarListStyleContext, &type metadata for SidebarListStyleContext, MEMORY[0x1E697F4C8]);
    result = swift_getWitnessTable(MEMORY[0x1E697F4D0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextWriter<SidebarListStyleContext> and conformance StyleContextWriter<A>);
  }

  return result;
}

uint64_t type metadata completion function for SidebarListStyle.BodyContent(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SidebarListStyle.BodyContent<ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>>> and conformance SidebarListStyle.BodyContent<A>()
{
  result = lazy protocol witness table cache variable for type SidebarListStyle.BodyContent<ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>>> and conformance SidebarListStyle.BodyContent<A>;
  if (!lazy protocol witness table cache variable for type SidebarListStyle.BodyContent<ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>>> and conformance SidebarListStyle.BodyContent<A>)
  {
    type metadata accessor for SidebarListStyle.BodyContent<ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>>>(255);
    result = swift_getWitnessTable(protocol conformance descriptor for SidebarListStyle.BodyContent<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SidebarListStyle.BodyContent<ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>>> and conformance SidebarListStyle.BodyContent<A>);
  }

  return result;
}

uint64_t type metadata completion function for SidebarListBody(uint64_t a1)
{
  type metadata accessor for Binding();
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

uint64_t type metadata completion function for SidebarListBody.CollectionViewBody(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    type metadata accessor for Binding();
    result = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for SidebarListBody.TableViewRoot(uint64_t a1)
{
  type metadata accessor for Binding();
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_18BEDC878(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  type metadata accessor for _SemanticFeature<Semantics_v4>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
  v14 = v1;
  v15 = v2;
  v16 = v4;
  v17 = v3;
  v5 = type metadata accessor for SidebarListBody.CollectionViewBody(255, &v14);
  v14 = v1;
  v15 = v2;
  v16 = v4;
  v17 = v3;
  v6 = type metadata accessor for SidebarListBody.TableViewRoot(255, &v14);
  v7 = type metadata accessor for _VariadicView.Tree();
  v8 = type metadata accessor for StaticIf();
  v9 = lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SidebarListBody<A, B>.CollectionViewBody, v5);
  v13[0] = swift_getWitnessTable(protocol conformance descriptor for SidebarListBody<A, B>.TableViewRoot, v6);
  v13[1] = v4;
  v12[0] = v9;
  v12[1] = WitnessTable;
  v12[2] = swift_getWitnessTable(MEMORY[0x1E697E308], v7, v13);
  return swift_getWitnessTable(MEMORY[0x1E6981CE8], v8, v12);
}

uint64_t sub_18BEDC9F8(_OWORD *a1)
{
  type metadata accessor for _SemanticFeature<Semantics_v4>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v7>, MEMORY[0x1E697DF70], MEMORY[0x1E697DF68], MEMORY[0x1E697EC20]);
  v2 = a1[1];
  v12[0] = *a1;
  v12[1] = v2;
  type metadata accessor for CollectionViewListRoot(255, v12);
  type metadata accessor for _DUIPreviewMode(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E6980A08]);
  v3 = type metadata accessor for ModifiedContent();
  v4 = type metadata accessor for StaticIf();
  v5 = type metadata accessor for ModifiedContent();
  v6 = lazy protocol witness table accessor for type _SemanticFeature<Semantics_v7> and conformance _SemanticFeature<A>();
  v11[0] = &protocol witness table for CollectionViewListRoot<A, B>;
  v11[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<AnyShapeStyle> and conformance _EnvironmentKeyWritingModifier<A>();
  v7 = MEMORY[0x1E697E858];
  v10[0] = v6;
  v10[1] = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v11);
  v10[2] = &protocol witness table for CollectionViewListRoot<A, B>;
  v9[0] = swift_getWitnessTable(MEMORY[0x1E6981CE8], v4, v10);
  v9[1] = &protocol witness table for AccessibilityAttachmentModifier;
  return swift_getWitnessTable(v7, v5, v9);
}

uint64_t closure #2 in static NavigableListModifier._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for NavigableListModifier(0, a2, a3, a4);
  v8 = *(v7 + 36);
  v13[2] = v7;
  type metadata accessor for SelectionManagerBox(255, a2, a3, v9);
  type metadata accessor for Binding();
  v14 = type metadata accessor for Optional();
  v10 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, partial apply for closure #1 in static PointerOffset.of(_:), v13, v14, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  return v15;
}

uint64_t storeEnumTagSinglePayload for ListPadding(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t type metadata completion function for SearchPrimitiveModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  result = type metadata accessor for SearchModifier(319, v4, v5, a4);
  if (v8 <= 0x3F)
  {
    result = type metadata accessor for SearchField(319, v4, v5, v7);
    if (v9 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisableListSections and conformance DisableListSections()
{
  result = lazy protocol witness table cache variable for type DisableListSections and conformance DisableListSections;
  if (!lazy protocol witness table cache variable for type DisableListSections and conformance DisableListSections)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisableListSections, &type metadata for DisableListSections, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisableListSections and conformance DisableListSections);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableListSections and conformance DisableListSections;
  if (!lazy protocol witness table cache variable for type DisableListSections and conformance DisableListSections)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisableListSections, &type metadata for DisableListSections, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisableListSections and conformance DisableListSections);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableListSections and conformance DisableListSections;
  if (!lazy protocol witness table cache variable for type DisableListSections and conformance DisableListSections)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisableListSections, &type metadata for DisableListSections, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisableListSections and conformance DisableListSections);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableListSections and conformance DisableListSections;
  if (!lazy protocol witness table cache variable for type DisableListSections and conformance DisableListSections)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisableListSections, &type metadata for DisableListSections, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisableListSections and conformance DisableListSections);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableListSections and conformance DisableListSections;
  if (!lazy protocol witness table cache variable for type DisableListSections and conformance DisableListSections)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisableListSections, &type metadata for DisableListSections, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisableListSections and conformance DisableListSections);
  }

  return result;
}

uint64_t closure #1 in static CollectionViewListRoot._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  v10[2] = type metadata accessor for CollectionViewListRoot(0, v11);
  v10[3] = a2;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v10, a2, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v11[0];
}

uint64_t sub_18BEDCF5C(uint64_t *a1)
{
  type metadata accessor for ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>>?(255);
  swift_getTupleTypeMetadata2();
  v1 = type metadata accessor for TupleView();
  v2 = MEMORY[0x1E6981F48];

  return swift_getWitnessTable(v2, v1);
}

void type metadata accessor for ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>>?)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>>(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>>?);
    }
  }
}

void type metadata accessor for ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>)
  {
    type metadata accessor for <<opaque return type of View.truePreference<A>(_:)>>.0();
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<ListRowInsetsTraitKey>, &type metadata for ListRowInsetsTraitKey, &protocol witness table for ListRowInsetsTraitKey, MEMORY[0x1E697FDB8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>>)
  {
    type metadata accessor for ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>(255);
    type metadata accessor for StyleContextWriter<SidebarListStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<SidebarListStyleContext>, lazy protocol witness table accessor for type SidebarListStyleContext and conformance SidebarListStyleContext, &type metadata for SidebarListStyleContext, MEMORY[0x1E697F4C8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>>);
    }
  }
}

void type metadata accessor for <<opaque return type of View.truePreference<A>(_:)>>.0()
{
  if (!lazy cache variable for type metadata for <<opaque return type of View.truePreference<A>(_:)>>.0)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of View.truePreference<A>(_:)>>.0);
    }
  }
}

void specialized closure #1 in _NavigationSplitReader.PreparedColumn.updateValue()(uint64_t *a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a3)
    {

      *a1 = 0;
      a1[1] = a3;
      *(a1 + 16) = a4 & 1;
    }
  }
}

double destroy for NavigableListModifier.EnsureNavigationAuthority(uint64_t a1)
{
  if (*(a1 + 32) != 1)
  {
    swift_weakDestroy();
  }

  return result;
}

void *type metadata accessor for AnyStyle()
{
  return &unk_1EFF91680;
}

{
  return &unk_1EFFDAFA0;
}

{
  return &unk_1EFFABBE8;
}

uint64_t type metadata accessor for StyleType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return __swift_instantiateGenericMetadata(a1, a2, a3, a4, &nominal type descriptor for StyleType);
}

{
  return __swift_instantiateGenericMetadata(a1, a2, a3, a4, &nominal type descriptor for StyleType);
}

{
  return __swift_instantiateGenericMetadata(a1, a2, a3, a4, &nominal type descriptor for StyleType);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance OnChangeOfSuggestionsModifier(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, _OWORD *))
{
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return a3(a1, v6);
}

uint64_t sub_18BEDD450(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = type metadata accessor for SearchModifier(255, *a1, v5, a4);
  swift_getWitnessTable(protocol conformance descriptor for SearchModifier<A>, v6);
  v7 = type metadata accessor for _ViewModifier_Content();
  v8 = type metadata accessor for ModifiedContent();
  type metadata accessor for SearchPrimitiveModifier(255, v4, v5, v9);
  v10 = type metadata accessor for ModifiedContent();
  type metadata accessor for SearchEnvironmentWritingModifier(255);
  v11 = type metadata accessor for ModifiedContent();
  type metadata accessor for SearchStateEnvironmentTransformModifier(255);
  v12 = type metadata accessor for ModifiedContent();
  v18[0] = swift_getWitnessTable(MEMORY[0x1E697FDF8], v7);
  v18[1] = lazy protocol witness table accessor for type SubmitScopeModifier and conformance SubmitScopeModifier();
  v13 = MEMORY[0x1E697E858];
  v17[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v18);
  v17[1] = &protocol witness table for SearchPrimitiveModifier<A>;
  v16[0] = swift_getWitnessTable(v13, v10, v17);
  v16[1] = &protocol witness table for SearchEnvironmentWritingModifier;
  v15[0] = swift_getWitnessTable(v13, v11, v16);
  v15[1] = &protocol witness table for SearchStateEnvironmentTransformModifier;
  return swift_getWitnessTable(v13, v12, v15);
}

uint64_t storeEnumTagSinglePayload for SearchFieldPlacement.Role(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 7;
  if (a3 + 7 >= 0xFFFF00)
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

  if (a3 < 0xF9)
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance SearchEnvironmentWritingModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type SearchFieldState and conformance SearchFieldState(&lazy protocol witness table cache variable for type SearchEnvironmentWritingModifier and conformance SearchEnvironmentWritingModifier, type metadata accessor for SearchEnvironmentWritingModifier, protocol conformance descriptor for SearchEnvironmentWritingModifier);

  return static EnvironmentModifier._makeInputs(modifier:inputs:)();
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ContentMarginModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(int *, _BYTE *, uint64_t, uint64_t))
{
  v12 = *a1;
  outlined init with copy of _ViewListInputs(a2, v16);
  v15 = v12;
  v13 = a8(&v15, v16, a5, a7);
  a3(v13, v16);
  return outlined destroy of _ViewListInputs(v16);
}

void type metadata completion function for SearchPrimitiveModifier.FocusStoreListFilter(uint64_t a1)
{
  type metadata accessor for SearchFieldState?(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t sub_18BEDD8B8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = type metadata accessor for SearchPrimitiveModifier.SearchConfigModifier(255, *a1, v5, a4);
  swift_getWitnessTable(protocol conformance descriptor for SearchPrimitiveModifier<A>.SearchConfigModifier, v6);
  v7 = type metadata accessor for _ViewModifier_Content();
  v9 = type metadata accessor for SearchField(255, v4, v5, v8);
  _s7SwiftUI5StateVySbGMaTm_2(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  v10 = type metadata accessor for ModifiedContent();
  type metadata accessor for _EnvironmentKeyWritingModifier<TriggerSubmitAction?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TriggerSubmitAction?>, &lazy cache variable for type metadata for TriggerSubmitAction?, &type metadata for TriggerSubmitAction, MEMORY[0x1E6980A08]);
  v11 = type metadata accessor for ModifiedContent();
  v12 = lazy protocol witness table accessor for type EnvironmentValues.SearchField and conformance EnvironmentValues.SearchField();
  v19[0] = swift_getWitnessTable(protocol conformance descriptor for SearchField<A>, v9);
  v19[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>();
  v13 = MEMORY[0x1E697E858];
  v18[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v10, v19);
  v18[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TriggerSubmitAction?> and conformance _EnvironmentKeyWritingModifier<A>();
  v17[0] = &type metadata for EnvironmentValues.SearchField;
  v17[1] = v11;
  v17[2] = v12;
  v17[3] = swift_getWitnessTable(v13, v11, v18);
  type metadata accessor for StaticSourceWriter(255, v17);
  v14 = type metadata accessor for ModifiedContent();
  v16[0] = swift_getWitnessTable(MEMORY[0x1E697FDF8], v7);
  v16[1] = &protocol witness table for StaticSourceWriter<A, B>;
  return swift_getWitnessTable(v13, v14, v16);
}

void type metadata accessor for _EnvironmentKeyWritingModifier<TriggerSubmitAction?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TriggerSubmitAction?>)
  {
    type metadata accessor for TriggerSubmitAction?();
    v1 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TriggerSubmitAction?>);
    }
  }
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ResetScrollEnvironmentModifier.AdditionalResetModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  outlined init with copy of _ViewListInputs(a2, v11);
  v10 = v7;
  v8 = protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance ResetScrollEnvironmentModifier.AdditionalResetModifier(&v10, v11, a5);
  a3(v8, v11);
  return outlined destroy of _ViewListInputs(v11);
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<OnSubmitModifier>, _EnvironmentKeyWritingModifier<TriggerSubmitAction?>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    type metadata accessor for _ViewModifier_Content<OnSubmitModifier>(255, a3, a4, a5);
    type metadata accessor for _EnvironmentKeyWritingModifier<TriggerSubmitAction?>(255);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_18BEDDC60(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 1) = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for AttributedString();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t outlined init with take of SearchFieldState?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t UpdateCollectionViewListCoordinator.init<A>(viewList:view:inputs:scrollGeometry:)@<X0>(int a1@<W0>, unsigned int *a2@<X1>, __int128 *a3@<X2>, int a4@<W3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v68 = a8;
  v66 = a6;
  HIDWORD(v61) = a4;
  v83 = *MEMORY[0x1E69E9840];
  v67 = *a2;
  v13 = a3[3];
  v76 = a3[2];
  v77 = v13;
  v78 = a3[4];
  v79 = *(a3 + 20);
  v14 = a3[1];
  v74 = *a3;
  v75 = v14;
  swift_unknownObjectWeakInit();
  updated = type metadata accessor for UpdateCollectionViewListCoordinator(0, a5, a7, v15);
  v17 = updated[28];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v65 = AssociatedTypeWitness;
  v20 = type metadata accessor for CollectionViewListDataSource(0, AssociatedTypeWitness, AssociatedConformanceWitness, v19);
  (*(*(v20 - 8) + 56))(a9 + v17, 1, 1, v20);
  *(a9 + updated[29]) = 0;
  v21 = AGSubgraphGetCurrent();
  if (!v21)
  {
    __break(1u);
  }

  v63 = &v61;
  *(a9 + updated[30]) = v21;
  *a9 = a1;
  MEMORY[0x1EEE9AC00](v21);
  v22 = v66;
  v60[2] = a5;
  v60[3] = v66;
  v23 = v68;
  v60[4] = a7;
  v60[5] = v68;
  LODWORD(v73[0]) = v67;
  *&v80 = v66;
  *(&v80 + 1) = a5;
  *&v81 = v68;
  *(&v81 + 1) = a7;
  type metadata accessor for CollectionViewListRoot(255, &v80);
  type metadata accessor for _GraphValue();
  type metadata accessor for Binding();
  type metadata accessor for Optional();
  _GraphValue.subscript.getter();
  type metadata accessor for _GraphValue();
  v24 = _GraphValue.value.getter();
  *(a9 + 4) = v24;
  MEMORY[0x1EEE9AC00](v24);
  v60[-4] = a5;
  v60[-3] = v22;
  v60[-2] = a7;
  v60[-1] = v23;
  v25 = v67;
  LODWORD(v80) = v67;
  v26 = _GraphValue.subscript.getter();
  *(a9 + 8) = v73[0];
  MEMORY[0x1EEE9AC00](v26);
  v60[-4] = a5;
  v60[-3] = v22;
  v60[-2] = a7;
  v60[-1] = v23;
  LODWORD(v80) = v25;
  v27 = _GraphValue.subscript.getter();
  *(a9 + 12) = v73[0];
  MEMORY[0x1EEE9AC00](v27);
  v60[-4] = a5;
  v60[-3] = v22;
  v60[-2] = a7;
  v60[-1] = v23;
  LODWORD(v80) = v25;
  v28 = _GraphValue.subscript.getter();
  v62 = v60;
  v80 = v74;
  v81 = v75;
  v82 = v76;
  v29 = HIDWORD(v75);
  *(a9 + 16) = v73[0];
  *(a9 + 20) = v29;
  MEMORY[0x1EEE9AC00](v28);
  v63 = a5;
  v60[-4] = a5;
  v60[-3] = v22;
  v60[-2] = a7;
  v60[-1] = v23;
  LODWORD(v73[0]) = v25;
  type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  _GraphValue.subscript.getter();
  *(a9 + 24) = v70;
  outlined init with copy of _GraphInputs(&v80, v73);
  v62 = a7;
  v30 = a9;
  v31 = v25;
  if (one-time initialization token for listStackBehavior != -1)
  {
    swift_once();
  }

  v32 = v81;
  *&v70 = static CachedEnvironment.ID.listStackBehavior;
  swift_beginAccess();
  v33 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v80);
  *(a9 + 28) = v33;
  outlined init with copy of _GraphInputs(&v80, v73);
  if (one-time initialization token for appIntentsDataSourcePayloadProvider != -1)
  {
    swift_once();
  }

  *&v70 = static CachedEnvironment.ID.appIntentsDataSourcePayloadProvider;
  swift_beginAccess();
  type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding?(0);
  v34 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v80);
  *(a9 + 92) = v34;
  outlined init with copy of _GraphInputs(&v80, v73);
  v35 = v63;
  if (one-time initialization token for editMode != -1)
  {
    swift_once();
  }

  *&v70 = static CachedEnvironment.ID.editMode;
  swift_beginAccess();
  type metadata accessor for Binding<EditMode>?(0);
  v36 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v80);
  *(a9 + 32) = v36;
  outlined init with copy of _GraphInputs(&v80, v73);
  if (one-time initialization token for listSectionSpacing != -1)
  {
    swift_once();
  }

  *&v70 = static CachedEnvironment.ID.listSectionSpacing;
  swift_beginAccess();
  _sSay7SwiftUI0A19UIAnySortComparatorVGMaTm_1(0, &lazy cache variable for type metadata for ListSectionSpacing?, &type metadata for ListSectionSpacing, MEMORY[0x1E69E6720]);
  v37 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v80);
  *(a9 + 36) = v37;
  outlined init with copy of _GraphInputs(&v80, v73);
  if (one-time initialization token for listRowSpacing != -1)
  {
    swift_once();
  }

  *&v70 = static CachedEnvironment.ID.listRowSpacing;
  swift_beginAccess();
  _sSay7SwiftUI0A19UIAnySortComparatorVGMaTm_1(0, &lazy cache variable for type metadata for CGFloat?, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
  v38 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v80);
  *(a9 + 40) = v38;
  outlined init with copy of _GraphInputs(&v80, v73);
  if (one-time initialization token for listSectionCornerRadius != -1)
  {
    swift_once();
  }

  *&v70 = static CachedEnvironment.ID.listSectionCornerRadius;
  swift_beginAccess();
  v39 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v80);
  *(a9 + 44) = v39;
  outlined init with copy of _GraphInputs(&v80, v73);
  if (one-time initialization token for menuOrder != -1)
  {
    swift_once();
  }

  *&v70 = static CachedEnvironment.ID.menuOrder;
  swift_beginAccess();
  v40 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v80);
  *(a9 + 48) = v40;
  v70 = v80;
  v71 = v81;
  v72 = v82;
  outlined init with copy of _GraphInputs(&v80, v73);
  v42 = AssociatedConformanceWitness;
  v41 = v65;
  v44 = _GraphInputs.selectionStorage<A>(forType:)(v65, v65, AssociatedConformanceWitness, v43);
  v46 = v45;
  v73[0] = v70;
  v73[1] = v71;
  v73[2] = v72;
  outlined destroy of _GraphInputs(v73);
  *(a9 + 52) = WeakSelectionBasedStorage.init(_:)(v44, v46, v41, v42);
  *(a9 + 60) = v47;
  *(a9 + 68) = v48;
  *(a9 + 76) = v49;
  outlined init with copy of _GraphInputs(&v80, &v70);
  if (one-time initialization token for listReorderControlVisibility != -1)
  {
    swift_once();
  }

  *&v69 = static CachedEnvironment.ID.listReorderControlVisibility;
  swift_beginAccess();
  v50 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v80);
  *(a9 + 84) = v50;
  outlined init with copy of _GraphInputs(&v80, &v70);
  v51 = v68;
  if (one-time initialization token for listDeleteControlVisibility != -1)
  {
    swift_once();
  }

  *&v69 = static CachedEnvironment.ID.listDeleteControlVisibility;
  swift_beginAccess();
  v52 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v80);
  v30[22] = v52;
  v30[24] = *(v32 + 16);
  type metadata accessor for SourceInput<ListRowHeightTemplateContent>(0);
  lazy protocol witness table accessor for type SourceInput<ListRowHeightTemplateContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<ListRowHeightTemplateContent> and conformance SourceInput<A>, type metadata accessor for SourceInput<ListRowHeightTemplateContent>, protocol conformance descriptor for SourceInput<A>);
  PropertyList.subscript.getter();
  if (v70)
  {

    Attribute = AGWeakAttributeGetAttribute();
    v54 = *MEMORY[0x1E698D3F8];
    v55 = Attribute;
    if (Attribute != *MEMORY[0x1E698D3F8])
    {
      closure #6 in UpdateCollectionViewListCoordinator.init<A>(viewList:view:inputs:scrollGeometry:)(v31, &v74, v35, v66, v62, v51);
      v69 = v70;
      v56 = _ViewOutputs.layoutComputer.getter();

      if ((v56 & 0x100000000) != 0)
      {
        v55 = v54;
      }

      else
      {
        v55 = v56;
      }

      Attribute = HIDWORD(v61);
    }
  }

  else
  {
    Attribute = *MEMORY[0x1E698D3F8];
    v55 = *MEMORY[0x1E698D3F8];
  }

  if (one-time initialization token for subviewsSizingOption != -1)
  {
    swift_once();
  }

  *&v69 = static CachedEnvironment.ID.subviewsSizingOption;
  swift_beginAccess();
  v57 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  *&v70 = __PAIR64__(v55, v57);
  DWORD2(v70) = Attribute;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type SubviewSizingHandlingForUniform and conformance SubviewSizingHandlingForUniform();
  v58 = Attribute.init<A>(body:value:flags:update:)();
  result = outlined destroy of _ViewInputs(&v74);
  v30[25] = v58;
  return result;
}

uint64_t implicit closure #2 in static SearchPrimitiveModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for SearchPrimitiveModifier.FocusStoreListFilter(0, a2, a3, a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SearchPrimitiveModifier<A>.FocusStoreListFilter, v9);
  _s7SwiftUI7BindingVy10Foundation16AttributedStringVGMaTm_0(0, &lazy cache variable for type metadata for Attribute<(_:)>, type metadata accessor for (_:), MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_22, &v8, v9, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return v11;
}

uint64_t closure #1 in UpdateCollectionViewListCoordinator.init<A>(viewList:view:inputs:scrollGeometry:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a3;
  v13[1] = a2;
  v13[2] = a5;
  v13[3] = a4;
  v6 = type metadata accessor for CollectionViewListRoot(0, v13);
  v7 = *(v6 + 64);
  v11[2] = v6;
  type metadata accessor for Binding();
  v12 = type metadata accessor for Optional();
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, closure #1 in static PointerOffset.of(_:)partial apply, v11, v12, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v13[0];
}

uint64_t closure #3 in UpdateCollectionViewListCoordinator.init<A>(viewList:view:inputs:scrollGeometry:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a3;
  v13[1] = a2;
  v13[2] = a5;
  v13[3] = a4;
  v6 = type metadata accessor for CollectionViewListRoot(0, v13);
  v7 = *(v6 + 56);
  v12[2] = v6;
  v8 = MEMORY[0x1E69E7DE0];
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, closure #1 in static PointerOffset.of(_:)partial apply, v12, v8, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13[0];
}

uint64_t sub_18BEDED14(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for SearchPrimitiveModifier.SearchConfigModifier(255, *a1, a1[1], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = lazy protocol witness table accessor for type SearchOverlayView and conformance SearchOverlayView();
  v7[1] = swift_getWitnessTable(protocol conformance descriptor for SearchPrimitiveModifier<A>.SearchConfigModifier, v4);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t closure #4 in UpdateCollectionViewListCoordinator.init<A>(viewList:view:inputs:scrollGeometry:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a3;
  v13[1] = a2;
  v13[2] = a5;
  v13[3] = a4;
  v6 = type metadata accessor for CollectionViewListRoot(0, v13);
  v7 = *(v6 + 60);
  v12[2] = v6;
  v8 = MEMORY[0x1E69E7DE0];
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, closure #1 in static PointerOffset.of(_:)partial apply, v12, v8, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13[0];
}

unint64_t lazy protocol witness table accessor for type SearchFieldConfiguration.Scopes and conformance SearchFieldConfiguration.Scopes()
{
  result = lazy protocol witness table cache variable for type SearchFieldConfiguration.Scopes and conformance SearchFieldConfiguration.Scopes;
  if (!lazy protocol witness table cache variable for type SearchFieldConfiguration.Scopes and conformance SearchFieldConfiguration.Scopes)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchFieldConfiguration.Scopes, &type metadata for SearchFieldConfiguration.Scopes, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SearchFieldConfiguration.Scopes and conformance SearchFieldConfiguration.Scopes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchFieldConfiguration.Scopes and conformance SearchFieldConfiguration.Scopes;
  if (!lazy protocol witness table cache variable for type SearchFieldConfiguration.Scopes and conformance SearchFieldConfiguration.Scopes)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchFieldConfiguration.Scopes, &type metadata for SearchFieldConfiguration.Scopes, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SearchFieldConfiguration.Scopes and conformance SearchFieldConfiguration.Scopes);
  }

  return result;
}

void type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding?)
  {
    type metadata accessor for CVarArg(255, &lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding, MEMORY[0x1E69DBD30]);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding?);
    }
  }
}

unint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance _GraphInputs.SelectionBasedStorageKey<A>@<X0>(uint64_t a2@<X8>)
{
  result = static _GraphInputs.SelectionBasedStorageKey.defaultValue.getter();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 12) = v5;
  return result;
}

uint64_t WeakSelectionBasedStorage.init(_:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E698D3F8];
  if (*MEMORY[0x1E698D3F8] == a1)
  {
    v9 = 0;
  }

  else
  {
    v9 = a1;
  }

  v37 = v9;
  v38 = v8 == a1;
  v35 = a3;
  v36 = a4;
  type metadata accessor for Set();
  swift_getFunctionTypeMetadata1();
  type metadata accessor for Attribute();
  type metadata accessor for Optional();
  v10 = type metadata accessor for WeakAttribute();
  v11 = MEMORY[0x1E69E73E0];
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in WeakSelectionBasedStorage.init(_:), v34, MEMORY[0x1E69E73E0], v10, v12, &v39);
  v13 = v39;
  if (v40)
  {
    v13 = 0;
  }

  v24 = v13;
  v14 = HIDWORD(a1);
  if (v8 == HIDWORD(a1))
  {
    LODWORD(v14) = 0;
  }

  v37 = v14;
  v38 = v8 == HIDWORD(a1);
  v32 = a3;
  v33 = a4;
  swift_getFunctionTypeMetadata1();
  type metadata accessor for Attribute();
  type metadata accessor for Optional();
  v15 = type metadata accessor for WeakAttribute();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #2 in WeakSelectionBasedStorage.init(_:), v31, v11, v15, v16, &v39);
  if (v8 == a2)
  {
    v17 = 0;
  }

  else
  {
    v17 = a2;
  }

  v37 = v17;
  v38 = v8 == a2;
  v29 = a3;
  v30 = a4;
  swift_getFunctionTypeMetadata1();
  type metadata accessor for Optional();
  type metadata accessor for Attribute();
  type metadata accessor for Optional();
  v18 = type metadata accessor for WeakAttribute();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #2 in WeakSelectionBasedStorage.init(_:), v28, v11, v18, v19, &v39);
  v20 = HIDWORD(a2);
  if (v8 == HIDWORD(a2))
  {
    LODWORD(v20) = 0;
  }

  v37 = v20;
  v38 = v8 == HIDWORD(a2);
  v26 = a3;
  v27 = a4;
  swift_getFunctionTypeMetadata1();
  type metadata accessor for Attribute();
  type metadata accessor for Optional();
  v21 = type metadata accessor for WeakAttribute();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #2 in WeakSelectionBasedStorage.init(_:), v25, v11, v21, v22, &v39);
  return v24;
}

uint64_t storeEnumTagSinglePayload for AccessibilityRelationshipScope.Relationship(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
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

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchScopeActivation.Role(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_19;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
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

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_19:
  v7 = *a1;
  if (v7 < 2)
  {
    return 0;
  }

  v8 = (v7 + 2147483646) & 0x7FFFFFFF;
  result = v8 - 2;
  if (v8 <= 2)
  {
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ListRowHeightTemplateContent and conformance ListRowHeightTemplateContent()
{
  result = lazy protocol witness table cache variable for type ListRowHeightTemplateContent and conformance ListRowHeightTemplateContent;
  if (!lazy protocol witness table cache variable for type ListRowHeightTemplateContent and conformance ListRowHeightTemplateContent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListRowHeightTemplateContent, &type metadata for ListRowHeightTemplateContent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListRowHeightTemplateContent and conformance ListRowHeightTemplateContent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListRowHeightTemplateContent and conformance ListRowHeightTemplateContent;
  if (!lazy protocol witness table cache variable for type ListRowHeightTemplateContent and conformance ListRowHeightTemplateContent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListRowHeightTemplateContent, &type metadata for ListRowHeightTemplateContent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListRowHeightTemplateContent and conformance ListRowHeightTemplateContent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TupleView<(ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?, ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>?)>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type TupleView<(ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?, ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>?)>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type TupleView<(ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?, ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>?)>? and conformance <A> A?)
  {
    v5[3] = v0;
    v5[4] = v1;
    type metadata accessor for TupleView<(ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?, ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>?)>(255, &lazy cache variable for type metadata for TupleView<(ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?, ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>?)>?, type metadata accessor for TupleView<(ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?, ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>?)>, MEMORY[0x1E69E6720]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type TupleView<(ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?, ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?, ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>?)> and conformance TupleView<A>, type metadata accessor for TupleView<(ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?, ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>?)>, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable(MEMORY[0x1E6982090], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?, ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>?)>? and conformance <A> A?);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ListRowHeightTemplateContent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ListRowHeightTemplateContent and conformance ListRowHeightTemplateContent();
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type SourceInput<ListRowHeightTemplateContent> and conformance SourceInput<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void type metadata accessor for (ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?, ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?, ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>?))
  {
    type metadata accessor for ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?(255);
    type metadata accessor for ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>?(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?, ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>?));
    }
  }
}

void type metadata accessor for ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>)
  {
    type metadata accessor for _ViewModifier_Content<NavigationCommonModifier>(255, &lazy cache variable for type metadata for SearchFieldStyleModifier<ToolbarSearchFieldStyle>, lazy protocol witness table accessor for type ToolbarSearchFieldStyle and conformance ToolbarSearchFieldStyle, &type metadata for ToolbarSearchFieldStyle, type metadata accessor for SearchFieldStyleModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SubviewSizingHandlingForUniform and conformance SubviewSizingHandlingForUniform()
{
  result = lazy protocol witness table cache variable for type SubviewSizingHandlingForUniform and conformance SubviewSizingHandlingForUniform;
  if (!lazy protocol witness table cache variable for type SubviewSizingHandlingForUniform and conformance SubviewSizingHandlingForUniform)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SubviewSizingHandlingForUniform, &type metadata for SubviewSizingHandlingForUniform, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SubviewSizingHandlingForUniform and conformance SubviewSizingHandlingForUniform);
  }

  return result;
}

void type metadata accessor for TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_4(255, &lazy cache variable for type metadata for SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>, &type metadata for SearchFieldConfiguration.Scopes, &protocol witness table for SearchFieldConfiguration.Scopes, type metadata accessor for SearchScopeToolbarContent);
    v5 = type metadata accessor for TupleToolbarContent(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>);
    }
  }
}

uint64_t instantiation function for generic protocol witness table for CollectionViewListDataSource<A>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable(protocol conformance descriptor for CollectionViewListDataSource<A>, a2);
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for CollectionViewListDataSource<A>, a2);
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>)
  {
    type metadata accessor for TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>(255);
    v3 = type metadata accessor for ToolbarModifier(a1, MEMORY[0x1E69E7CA8] + 8, v2, &protocol witness table for TupleToolbarContent<A>);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>);
    }
  }
}

void type metadata completion function for UICollectionViewListCoordinatorBase(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[12];
  v5 = *(*(a1[14] + 8) + 8);
  type metadata accessor for ShadowListUpdateRecorder(319, v4, v5, a4);
  if (v7 <= 0x3F)
  {
    type metadata accessor for ListCoreBatchUpdates(319, v4, v5, v6);
    if (v8 <= 0x3F)
    {
      type metadata accessor for Optional();
      if (v9 <= 0x3F)
      {
        _s10Foundation9IndexPathVSgMaTm_1(319, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
        if (v10 <= 0x3F)
        {
          type metadata accessor for Binding();
          type metadata accessor for Optional();
          if (v11 <= 0x3F)
          {
            type metadata accessor for Optional();
            if (v12 <= 0x3F)
            {
              swift_initClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t type metadata completion function for ListCoreBatchUpdates(uint64_t a1)
{
  result = type metadata accessor for IndexSet();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for IndexPath?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s10Foundation9IndexPathVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s10Foundation9IndexPathVSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s10Foundation9IndexPathVSgMaTm_2(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s10Foundation9IndexPathVSgMaTm_3(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata completion function for BridgedListState.ScrollTarget(uint64_t a1)
{
  result = type metadata accessor for IndexPath();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t outlined destroy of BridgedListState(uint64_t a1)
{
  v2 = type metadata accessor for BridgedListState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_UNKNOWN **base witness table accessor for View in ListRepresentable<A, B>()
{
  return &protocol witness table for ListRepresentable<A, B>;
}

{
  return &protocol witness table for ListRepresentable<A, B>;
}

uint64_t protocol witness for static CoreViewRepresentable.dynamicProperties.getter in conformance ListRepresentable<A, B>()
{
  return MEMORY[0x1EEDE15A0]();
}

{
  return MEMORY[0x1EEDE15A0]();
}

uint64_t outlined destroy of SearchFieldState(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI16SearchFieldStateVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI16SearchFieldStateVWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI16SearchFieldStateVWOhTm_2(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI16SearchFieldStateVWOhTm_3(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI16SearchFieldStateVWOhTm_4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t destroy for SearchFieldState(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 36);
  v4 = type metadata accessor for AttributedString();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1 + v3, v4);
}

uint64_t protocol witness for Projection.get(base:) in conformance StringToAttributedStringProjection(uint64_t *a1, double a2)
{
  v2 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v2 - 8);

  AttributeContainer.init()();
  return AttributedString.init(_:attributes:)();
}

uint64_t SearchModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v57 = a2;
  v49 = type metadata accessor for SearchStateEnvironmentTransformModifier(0);
  MEMORY[0x1EEE9AC00](v49);
  v56 = &v39[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v47 = type metadata accessor for SearchEnvironmentWritingModifier(0);
  MEMORY[0x1EEE9AC00](v47);
  v53 = &v39[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for SearchPrimitiveModifier(0, *(a1 + 16), *(a1 + 24), v5);
  v52 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v39[-v8];
  swift_getWitnessTable(protocol conformance descriptor for SearchModifier<A>, a1, v7);
  v10 = a1;
  v11 = type metadata accessor for _ViewModifier_Content();
  v12 = type metadata accessor for ModifiedContent();
  v13 = type metadata accessor for ModifiedContent();
  v50 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v43 = &v39[-v14];
  v48 = type metadata accessor for ModifiedContent();
  v54 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v44 = &v39[-v15];
  v45 = type metadata accessor for ModifiedContent();
  v55 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v46 = &v39[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v51 = &v39[-v18];
  KeyPath = swift_getKeyPath();
  v62[0] = 1;
  v63 = 4;
  v64 = KeyPath;
  v65 = 0;
  v66 = 0;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v11);
  MEMORY[0x18D00A570](v67, v62, v11, &type metadata for SubmitScopeModifier, WitnessTable);
  outlined consume of Environment<TriggerDeleteBackwardAction?>.Content(v64, v65, v66);
  v42 = v67[2];
  v41 = v67[3];
  v40 = v68;
  v21 = v10;
  SearchModifier.primitiveModifier.getter(v10, v22, v9);
  v23 = lazy protocol witness table accessor for type SubmitScopeModifier and conformance SubmitScopeModifier();
  v61[0] = WitnessTable;
  v61[1] = v23;
  v24 = MEMORY[0x1E697E858];
  v25 = swift_getWitnessTable(MEMORY[0x1E697E858], v12, v61);
  v26 = v43;
  MEMORY[0x18D00A570](v9, v12, v6, v25);
  (*(v52 + 8))(v9, v6);
  v27 = v53;
  SearchModifier.environmentModifier.getter(v21, v53);
  v60[0] = v25;
  v60[1] = &protocol witness table for SearchPrimitiveModifier<A>;
  v28 = swift_getWitnessTable(v24, v13, v60);
  v29 = v44;
  MEMORY[0x18D00A570](v27, v13, v47, v28);
  outlined destroy of SearchEnvironmentWritingModifier(v27, type metadata accessor for SearchEnvironmentWritingModifier);
  (*(v50 + 8))(v26, v13);
  v30 = v56;
  SearchModifier.environmentStorageTransform.getter(v21, v56);
  v59[0] = v28;
  v59[1] = &protocol witness table for SearchEnvironmentWritingModifier;
  v31 = v48;
  v32 = swift_getWitnessTable(v24, v48, v59);
  v33 = v46;
  MEMORY[0x18D00A570](v30, v31, v49, v32);
  outlined consume of Environment<TriggerDeleteBackwardAction?>.Content(v42, v41, v40);
  outlined destroy of SearchEnvironmentWritingModifier(v30, type metadata accessor for SearchStateEnvironmentTransformModifier);
  (*(v54 + 8))(v29, v31);
  v58[0] = v32;
  v58[1] = &protocol witness table for SearchStateEnvironmentTransformModifier;
  v34 = v24;
  v35 = v45;
  swift_getWitnessTable(v34, v45, v58);
  v36 = v51;
  static ViewBuilder.buildExpression<A>(_:)();
  v37 = *(v55 + 8);
  v37(v33, v35);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v37)(v36, v35);
}

uint64_t initializeWithCopy for SubmitScopeModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  outlined copy of Environment<AppIntentExecutor?>.Content(v3, v4, v5);
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  return a1;
}

double outlined consume of Environment<TriggerDeleteBackwardAction?>.Content(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    outlined consume of TriggerSubmitAction?(result, a2);
  }

  else
  {
  }

  return v3;
}

uint64_t outlined init with copy of SearchFieldState(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type ResolvedSearchFieldStyle and conformance ResolvedSearchFieldStyle(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void SearchField.init(state:isPresented:control:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v27 = a3;
  v15 = type metadata accessor for SearchFieldState(0);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v18 = 2;
  v18[1] = specialized static SearchSuggestionsPlacement.Role.initial.getter() & 1;
  *(v18 + 1) = 2;
  *(v18 + 1) = 0;
  v18[8] = 1;
  AttributedString.init()();
  v18[*(v16 + 48)] = 0;
  v19 = *(v16 + 52);
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v20 = &v18[v19];
  v21 = byte_1EAB095CC;
  *v20 = static SearchFocusUpdate.empty;
  v20[4] = v21;
  property wrapper backing initializer of SearchField.state(v18, a8);
  v23 = type metadata accessor for SearchField(0, a6, a7, v22);
  v24 = a8 + v23[9];
  *v24 = 0;
  *(v24 + 8) = 0;
  *(v24 + 16) = 0;
  *(a8 + v23[11]) = 0;
  outlined destroy of StateOrBinding<SearchFieldState>(a8, type metadata accessor for StateOrBinding<SearchFieldState>);
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGWObTm_0(a1, a8, type metadata accessor for Binding<SearchFieldState>);
  type metadata accessor for StateOrBinding<SearchFieldState>(0);
  swift_storeEnumTagMultiPayload();
  (*(*(a6 - 8) + 32))(a8 + v23[10], a5, a6);
  outlined consume of StateOrBinding<Bool>(*v24, *(v24 + 8), *(v24 + 16), *(v24 + 17));
  v25 = v27;
  *v24 = a2;
  *(v24 + 8) = v25;
  *(v24 + 16) = a4 & 1;
  *(v24 + 17) = 1;
}

uint64_t outlined init with take of Binding<SearchFieldState>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI7BindingVyAA16SearchFieldStateVGWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI7BindingVyAA16SearchFieldStateVGWObTm_1(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(0, a3, a4, a5);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t outlined destroy of Binding<SearchFieldState>?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t initializeWithCopy for SearchField(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = type metadata accessor for AttributedString();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = ((v7 + 9) & ~v7) + v8;
  v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL) + 9;
  v11 = (v9 & 0xFFFFFFFFFFFFFFF8) + 24;
  v12 = v7 | 3;
  if (v10 + ((v7 + 16) & ~(v7 | 3)) <= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v10 + ((v7 + 16) & ~(v7 | 3));
  }

  v14 = a2[v13];
  v15 = v14 - 2;
  if (v14 < 2)
  {
    goto LABEL_20;
  }

  if (v13 <= 3)
  {
    v16 = v13;
  }

  else
  {
    v16 = 4;
  }

  if (v16 <= 1)
  {
    if (!v16)
    {
      goto LABEL_20;
    }

    v17 = *a2;
    if (v13 < 4)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v16 == 2)
  {
    v17 = *a2;
    if (v13 >= 4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v16 == 3)
    {
      v17 = *a2 | (a2[2] << 16);
      if (v13 < 4)
      {
        goto LABEL_19;
      }

LABEL_17:
      v14 = v17 + 2;
      goto LABEL_20;
    }

    v17 = *a2;
    if (v13 >= 4)
    {
      goto LABEL_17;
    }
  }

LABEL_19:
  v14 = (v17 | (v15 << (8 * v13))) + 2;
LABEL_20:
  v18 = ~v7;
  if (v14 == 1)
  {
    *a1 = *a2;
    v19 = ~v12;
    v20 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    v21 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v20 = *v21;
    v22 = v20 + v12;
    v23 = v21 + v12;
    v24 = ((v22 + 8) & v19);
    v25 = ((v23 + 8) & v19);
    v26 = (v25 + 7);
    *v24 = *v25;
    v24[1] = v25[1];
    v24[2] = v25[2];
    v24[3] = v25[3];
    v27 = (v24 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v28 = v26 & 0xFFFFFFFFFFFFFFFCLL;
    LODWORD(v26) = *(v26 & 0xFFFFFFFFFFFFFFFCLL);
    *(v27 + 4) = *(v28 + 4);
    *v27 = v26;
    v29 = v7 + 5;
    v30 = (v29 + v27) & v18;
    v31 = (v29 + v28) & v18;
    v32 = *(v6 + 16);
    v33 = v5;

    v32(v30, v31, v33);
    *(v30 + v8) = *(v31 + v8);
    v34 = (v30 + v8) & 0xFFFFFFFFFFFFFFFCLL;
    v35 = (v31 + v8) & 0xFFFFFFFFFFFFFFFCLL;
    v36 = *(v35 + 4);
    *(v34 + 8) = *(v35 + 8);
    *(v34 + 4) = v36;
    v37 = 1;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 1) = a2[1];
    *(a1 + 2) = a2[2];
    *(a1 + 3) = a2[3];
    v38 = (a1 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v39 = (a2 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v40 = *v39;
    *(v38 + 4) = *(v39 + 4);
    *v38 = v40;
    v41 = (v38 + v7 + 5) & v18;
    v42 = (v39 + v7 + 5) & v18;
    (*(v6 + 16))(v41, v42, v5);
    *(v41 + v8) = *(v42 + v8);
    v43 = (v41 + v8) & 0xFFFFFFFFFFFFFFFCLL;
    v44 = (v42 + v8) & 0xFFFFFFFFFFFFFFFCLL;
    v45 = *(v44 + 4);
    *(v43 + 8) = *(v44 + 8);
    *(v43 + 4) = v45;
    *((a1 + 7 + v10) & 0xFFFFFFFFFFFFFFF8) = *(&a2[v10 + 7] & 0xFFFFFFFFFFFFFFF8);

    v37 = 0;
  }

  *(a1 + v13) = v37;
  v46 = (v13 + 8 + a1) & 0xFFFFFFFFFFFFFFF8;
  v47 = &a2[v13 + 8] & 0xFFFFFFFFFFFFFFF8;
  v48 = *(v47 + 17);
  if (v48 >= 2)
  {
    v48 = *v47 + 2;
  }

  if (v48 == 1)
  {
    *v46 = *v47;
    *(v46 + 8) = *(v47 + 8);
    *(v46 + 16) = *(v47 + 16);

    v49 = 1;
  }

  else
  {
    v49 = 0;
    *v46 = *v47;
    *(v46 + 8) = *(v47 + 8);
  }

  *(v46 + 17) = v49;
  v50 = *(*(a3 + 16) - 8);
  v51 = v50 + 16;
  v52 = *(v50 + 80);
  v53 = (v46 + v52 + 18) & ~v52;
  v54 = (v47 + v52 + 18) & ~v52;
  (*(v50 + 16))(v53, v54);
  *(v53 + *(v51 + 48)) = *(v54 + *(v51 + 48));
  return a1;
}

unint64_t lazy protocol witness table accessor for type SearchFieldConfiguration.Suggestions and conformance SearchFieldConfiguration.Suggestions()
{
  result = lazy protocol witness table cache variable for type SearchFieldConfiguration.Suggestions and conformance SearchFieldConfiguration.Suggestions;
  if (!lazy protocol witness table cache variable for type SearchFieldConfiguration.Suggestions and conformance SearchFieldConfiguration.Suggestions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchFieldConfiguration.Suggestions, &type metadata for SearchFieldConfiguration.Suggestions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SearchFieldConfiguration.Suggestions and conformance SearchFieldConfiguration.Suggestions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchFieldConfiguration.Suggestions and conformance SearchFieldConfiguration.Suggestions;
  if (!lazy protocol witness table cache variable for type SearchFieldConfiguration.Suggestions and conformance SearchFieldConfiguration.Suggestions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchFieldConfiguration.Suggestions, &type metadata for SearchFieldConfiguration.Suggestions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SearchFieldConfiguration.Suggestions and conformance SearchFieldConfiguration.Suggestions);
  }

  return result;
}

void type metadata completion function for SearchFieldConfigurationReader(uint64_t a1)
{
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(319, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

uint64_t static SearchFieldConfigurationReader._makeView(view:inputs:)(int *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a2[3];
  v11 = a2[1];
  v51 = a2[2];
  v52 = v10;
  v12 = a2[3];
  v53 = a2[4];
  v13 = a2[1];
  v49 = *a2;
  v50 = v13;
  v44 = v51;
  v45 = v12;
  v46 = a2[4];
  v14 = *a1;
  v54 = *(a2 + 20);
  v47 = *(a2 + 20);
  v42 = v49;
  v43 = v11;
  outlined init with copy of _ViewInputs(&v49, &v36);
  PreferenceKeys.add(_:)();
  v35 = v14;
  *&v36 = a3;
  *(&v36 + 1) = a4;
  *&v37 = a5;
  *(&v37 + 1) = a6;
  type metadata accessor for SearchFieldConfigurationReader(255, &v36);
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(a4 - 8) + 64))
  {
    closure #1 in static SearchFieldConfigurationReader._makeView(view:inputs:)(1, a3, a4, a5, a6);
  }

  AGGraphCreateOffsetAttribute2();
  _GraphValue.init(_:)();
  v33[2] = v44;
  v33[3] = v45;
  v33[4] = v46;
  v34 = v47;
  v33[0] = v42;
  v33[1] = v43;
  v30 = v45;
  v31 = v46;
  v32 = v47;
  v27 = v42;
  v28 = v43;
  v29 = v44;
  outlined init with copy of _ViewInputs(v33, &v36);
  static View.makeDebuggableView(view:inputs:)();
  v38 = v29;
  v39 = v30;
  v40 = v31;
  v41 = v32;
  v36 = v27;
  v37 = v28;
  outlined destroy of _ViewInputs(&v36);
  v25 = v19;
  v26 = DWORD2(v19);
  result = PreferencesOutputs.subscript.getter();
  if ((result & 0x100000000) != 0)
  {
    __break(1u);
  }

  else
  {

    v48[0] = v49;
    v48[1] = v50;
    v48[2] = v51;
    outlined init with copy of _GraphInputs(&v49, &v27);
    _s7SwiftUI12_GraphInputsV11isSourceNily09AttributeC008OptionalH0VySbGxmAA9ViewAliasRzlFAA24SearchFieldConfigurationV6ScopesV_TtB5();
    outlined destroy of _GraphInputs(&v49);
    LODWORD(v27) = v14;
    _GraphValue.value.getter();
    v16 = type metadata accessor for Optional();
    *&v27 = a3;
    *(&v27 + 1) = a4;
    *&v28 = a5;
    *(&v28 + 1) = a6;
    Content = type metadata accessor for SearchFieldConfigurationReader.MakeContent(0, &v27);
    swift_getWitnessTable(protocol conformance descriptor for SearchFieldConfigurationReader<A, B>.MakeContent, Content);
    _GraphValue.init<A>(_:)();
    v21 = v51;
    v22 = v52;
    v23 = v53;
    v24 = v54;
    v19 = v49;
    v20 = v50;
    v18 = a5;
    swift_getWitnessTable(MEMORY[0x1E6982090], v16, &v18);
    static View.makeDebuggableView(view:inputs:)();
    v30 = v45;
    v31 = v46;
    v32 = v47;
    v27 = v42;
    v28 = v43;
    v29 = v44;
    return outlined destroy of _ViewInputs(&v27);
  }

  return result;
}

double static PrimitiveSelectionContainerModifier._makeView(modifier:inputs:body:)@<D0>(__int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, double *a4@<X8>)
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a2[3];
  v31 = a2[2];
  v32 = v6;
  v33 = a2[4];
  v34 = *(a2 + 20);
  v7 = a2[1];
  v29 = *a2;
  v30 = v7;
  *&v37[0] = __PAIR64__(*MEMORY[0x1E698D3F8], AGGraphCreateOffsetAttribute2());
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type PrimitiveSelectionContainerModifier.MakeSelectionContext and conformance PrimitiveSelectionContainerModifier.MakeSelectionContext();
  v8 = Attribute.init<A>(body:value:flags:update:)();
  v25 = v31;
  v26 = v32;
  v27 = v33;
  v28 = v34;
  v23 = v29;
  v24 = v30;
  outlined init with copy of _ViewInputs(&v29, v37);
  PreferenceKeys.add(_:)();
  LODWORD(v37[0]) = v8;
  lazy protocol witness table accessor for type _GraphInputs.SelectionContextKey and conformance _GraphInputs.SelectionContextKey();
  PropertyList.subscript.setter();
  v35[2] = v25;
  v35[3] = v26;
  v35[4] = v27;
  v36 = v28;
  v35[0] = v23;
  v35[1] = v24;
  v19 = v25;
  v20 = v26;
  v21 = v27;
  v22 = v28;
  v17 = v23;
  v18 = v24;
  v9 = outlined init with copy of _ViewInputs(v35, v37);
  a3(&v15, v9, &v17);
  v37[2] = v19;
  v37[3] = v20;
  v37[4] = v21;
  v38 = v22;
  v37[0] = v17;
  v37[1] = v18;
  outlined destroy of _ViewInputs(v37);
  v10 = v15;
  *&v17 = v15;
  v14 = v16;
  DWORD2(v17) = LODWORD(v16);
  v11 = PreferencesOutputs.subscript.getter();
  if ((v11 & 0x100000000) == 0)
  {
    MEMORY[0x1EEE9AC00](v11);
    MEMORY[0x1EEE9AC00](v12);
    AGGraphMutateAttribute();
  }

  v19 = v25;
  v20 = v26;
  v21 = v27;
  v22 = v28;
  v17 = v23;
  v18 = v24;
  outlined destroy of _ViewInputs(&v17);
  *a4 = v10;
  result = v14;
  a4[1] = v14;
  return result;
}

unint64_t lazy protocol witness table accessor for type _GraphInputs.SelectionContextKey and conformance _GraphInputs.SelectionContextKey()
{
  result = lazy protocol witness table cache variable for type _GraphInputs.SelectionContextKey and conformance _GraphInputs.SelectionContextKey;
  if (!lazy protocol witness table cache variable for type _GraphInputs.SelectionContextKey and conformance _GraphInputs.SelectionContextKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _GraphInputs.SelectionContextKey, &type metadata for _GraphInputs.SelectionContextKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _GraphInputs.SelectionContextKey and conformance _GraphInputs.SelectionContextKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _GraphInputs.SelectionContextKey and conformance _GraphInputs.SelectionContextKey;
  if (!lazy protocol witness table cache variable for type _GraphInputs.SelectionContextKey and conformance _GraphInputs.SelectionContextKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _GraphInputs.SelectionContextKey, &type metadata for _GraphInputs.SelectionContextKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _GraphInputs.SelectionContextKey and conformance _GraphInputs.SelectionContextKey);
  }

  return result;
}

void *static NavigableListModifier._makeInputs(modifier:inputs:)(int *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v81 = *MEMORY[0x1E69E9840];
  type metadata accessor for SelectionManagerBox(255, a3, a4, a4);
  v8 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v72 = &v60 - v9;
  v11 = type metadata accessor for NavigableListModifier.BoundListSelectionDetector(0, a3, a4, v10);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v60 - v13;
  v15 = *a1;
  v16 = lazy protocol witness table accessor for type NavigationAuthority.ListKeyViewInputKey and conformance NavigationAuthority.ListKeyViewInputKey();
  PropertyList.subscript.getter();
  result = AGWeakAttributeGetAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    lazy protocol witness table accessor for type IsInNavigationV4Context and conformance IsInNavigationV4Context();
    result = PropertyList.subscript.getter();
    if (v75 == 1)
    {
      v67 = v11;
      v69 = v14;
      v70 = v16;
      v71 = v12;
      v62 = a2;
      MEMORY[0x1EEE9AC00](result);
      LODWORD(v75) = v15;
      type metadata accessor for NavigableListModifier(255, a3, a4, v18);
      type metadata accessor for _GraphValue();
      v19 = _GraphValue.subscript.getter();
      v68 = v73;
      MEMORY[0x1EEE9AC00](v19);
      LODWORD(v75) = v15;
      type metadata accessor for Binding();
      type metadata accessor for Optional();
      _GraphValue.subscript.getter();
      type metadata accessor for _GraphValue();
      v20 = _GraphValue.value.getter();
      v21 = v20;
      MEMORY[0x1EEE9AC00](v20);
      LODWORD(v75) = v15;
      type metadata accessor for NavigationStateHost();
      _GraphValue.subscript.getter();
      v65 = v73;
      lazy protocol witness table accessor for type IsExtractingNavigationDestinations and conformance IsExtractingNavigationDestinations();
      PropertyList.subscript.getter();
      v22 = v75;
      lazy protocol witness table accessor for type NavigationAuthority.StackKeyViewInputKey and conformance NavigationAuthority.StackKeyViewInputKey();
      v23 = PropertyList.subscript.getter();
      v76 = v68;
      v77 = v21;
      MEMORY[0x1EEE9AC00](v23);
      v25 = type metadata accessor for NavigableListModifier.ListKey(0, a3, a4, v24);
      swift_getWitnessTable(protocol conformance descriptor for NavigableListModifier<A>.ListKey, v25);
      v26 = MEMORY[0x1E698D388];
      type metadata accessor for Attribute<NavigationState.ListKey?>(0, &lazy cache variable for type metadata for Attribute<NavigationState.ListKey?>, &lazy cache variable for type metadata for NavigationState.ListKey?, &type metadata for NavigationState.ListKey, MEMORY[0x1E698D388]);
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v75, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_12, &v57, v25, MEMORY[0x1E69E73E0], v27, MEMORY[0x1E69E7410], v28);
      LODWORD(v25) = v73;
      v66 = lazy protocol witness table accessor for type NavigationAuthority.ViewInputKey and conformance NavigationAuthority.ViewInputKey();
      PropertyList.subscript.getter();
      v73 = xmmword_18CD633F0;
      v74 = 0;
      v76 = v65;
      v77 = v25;
      v68 = v21;
      v78 = v21;
      v65 = v22;
      v79 = v22;
      v29 = outlined init with take of NavigationAuthority?(&v73, v80);
      v80[24] = 0;
      MEMORY[0x1EEE9AC00](v29);
      v31 = type metadata accessor for NavigableListModifier.EnsureNavigationAuthority(0, a3, a4, v30);
      v58 = v31;
      WitnessTable = swift_getWitnessTable(protocol conformance descriptor for NavigableListModifier<A>.EnsureNavigationAuthority, v31);
      type metadata accessor for Attribute<NavigationState.ListKey?>(0, &lazy cache variable for type metadata for Attribute<NavigationAuthority?>, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, v26);
      v32 = v62;
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v75, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_12, &v57, v31, MEMORY[0x1E69E73E0], v33, MEMORY[0x1E69E7410], v34);
      (*(*(v31 - 8) + 8))(&v75, v31);
      v35 = v73;
      v64 = AGCreateWeakAttribute();
      v63 = HIDWORD(v64);
      if (one-time initialization token for editMode != -1)
      {
        swift_once();
      }

      *&v73 = static CachedEnvironment.ID.editMode;
      swift_beginAccess();
      type metadata accessor for Binding<EditMode>?(0);
      v36 = CachedEnvironment.attribute<A>(id:_:)();
      v37 = swift_endAccess();
      LODWORD(v75) = v36;
      MEMORY[0x1EEE9AC00](v37);
      IsEditing = type metadata accessor for NavigableListModifier.IsEditing(0, a3, a4, v38);
      v58 = IsEditing;
      WitnessTable = swift_getWitnessTable(protocol conformance descriptor for NavigableListModifier<A>.IsEditing, IsEditing);
      type metadata accessor for NavigationState.ListKey?(0, &lazy cache variable for type metadata for Attribute<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E698D388]);
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v75, closure #1 in Attribute.init<A>(_:)partial apply, &v57, IsEditing, MEMORY[0x1E69E73E0], v40, MEMORY[0x1E69E7410], v41);
      v60 = 0;
      v42 = v73;
      v43 = AGCreateWeakAttribute();
      v44 = *(v32 + 6);
      v45 = *(v32 + 7);
      v61 = v35;
      v46 = v67;
      if (one-time initialization token for selectionPopsSubsequentColumn != -1)
      {
        swift_once();
      }

      *&v73 = static CachedEnvironment.ID.selectionPopsSubsequentColumn;
      swift_beginAccess();
      v47 = CachedEnvironment.attribute<A>(id:_:)();
      swift_endAccess();
      default argument 2 of Observer.init(modifier:environment:cycleDetector:lastValue:)(&v75);
      *&v73 = v75;
      DWORD2(v73) = v76;
      BYTE12(v73) = v77;
      v49 = type metadata accessor for SelectionManagerBox(0, a3, a4, v48);
      v50 = v72;
      (*(*(v49 - 8) + 56))(v72, 1, 1, v49);
      v58 = a3;
      v57 = v50;
      v51 = v69;
      v52 = v64;
      v53 = NavigableListModifier.BoundListSelectionDetector.init(listKey:selection:isEditing:navigationAuthority:phase:transaction:selectionPopsSubsequentColumn:isExtractionPass:cycleDetector:lastResetSeed:lastSelection:wasEditing:)(v64, v68, v42, v43, v44, v45, v47, v65, v69, &v73, 0, v57, 0, v58, a4);
      v54 = MEMORY[0x1EEE9AC00](v53);
      v58 = v46;
      WitnessTable = swift_getWitnessTable(protocol conformance descriptor for NavigableListModifier<A>.BoundListSelectionDetector, v46, v54);
      type metadata accessor for NavigationState.ListKey?(0, &lazy cache variable for type metadata for Attribute<()>, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E698D388]);
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v51, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_7, &v57, v46, MEMORY[0x1E69E73E0], v55, MEMORY[0x1E69E7410], v56);
      (*(v71 + 8))(v51, v46);
      AGGraphSetFlags();
      v75 = __PAIR64__(v63, v52);
      PropertyList.subscript.setter();
      v75 = AGCreateWeakAttribute();
      return PropertyList.subscript.setter();
    }
  }

  return result;
}

uint64_t NavigableListModifier.BoundListSelectionDetector.init(listKey:selection:isEditing:navigationAuthority:phase:transaction:selectionPopsSubsequentColumn:isExtractionPass:cycleDetector:lastResetSeed:lastSelection:wasEditing:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, int a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15)
{
  v16 = *(a10 + 8);
  v17 = *(a10 + 12);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 12) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 28) = a6;
  *(a9 + 32) = a7;
  *(a9 + 36) = a8;
  *(a9 + 40) = *a10;
  *(a9 + 48) = v16;
  *(a9 + 52) = v17;
  *(a9 + 56) = a11;
  v18 = type metadata accessor for NavigableListModifier.BoundListSelectionDetector(0, a14, a15, a4);
  v19 = *(v18 + 72);
  type metadata accessor for SelectionManagerBox(255, a14, a15, v20);
  v21 = type metadata accessor for Optional();
  result = (*(*(v21 - 8) + 32))(a9 + v19, a12, v21);
  *(a9 + *(v18 + 76)) = a13;
  return result;
}

void *initializeWithCopy for NavigableListModifier.BoundListSelectionDetector(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 11;
  *a1 = v5;
  v6 = ((a1 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = (((v4 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v11 = ((v9 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  v12 = ((v10 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  *v11 = *v12;
  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v13 = *v14;
  v15 = (v13 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v16 = (v14 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v15 = *v16;
  *(v15 + 4) = *(v16 + 4);
  v17 = ((v13 + 15) & 0xFFFFFFFFFFFFFFFCLL);
  v18 = ((v14 + 15) & 0xFFFFFFFFFFFFFFFCLL);
  v19 = *v18;
  *(v17 + 5) = *(v18 + 5);
  *v17 = v19;
  v20 = ((v13 + 31) & 0xFFFFFFFFFFFFFFFCLL);
  v21 = ((v14 + 31) & 0xFFFFFFFFFFFFFFFCLL);
  *v20 = *v21;
  v22 = *(a3 + 16);
  v23 = *(v22 - 8);
  v24 = *(v23 + 80) & 0xF8;
  v25 = ~v24 & 0xFFFFFFFFFFFFFFF8;
  v24 += 11;
  v26 = v20 + v24;
  v27 = (v26 & v25);
  v28 = ((v21 + v24) & v25);
  v29 = *(v23 + 64);
  if (*(v23 + 84))
  {
    v30 = *(v23 + 64);
  }

  else
  {
    v30 = v29 + 1;
  }

  if (v30 > v29)
  {
    v29 = v30;
  }

  if (v29 <= 8)
  {
    v31 = 8;
  }

  else
  {
    v31 = v29;
  }

  v32 = *(v28 + v31);
  if (v32 <= 2)
  {
    if (v32 == 2)
    {
      (*(v23 + 16))(v26 & v25, v28, v22);
      v34 = 2;
    }

    else
    {
      if (v32 != 1)
      {
        *v27 = *v28;
        *(v27 + v31) = 0;

LABEL_20:
        v33 = v31 + 1;
        goto LABEL_21;
      }

      if ((*(v23 + 48))(v28, 1, v22))
      {
        memcpy(v27, v28, v30);
      }

      else
      {
        (*(v23 + 16))(v27, v28, v22);
        (*(v23 + 56))(v27, 0, 1, v22);
      }

      v34 = 1;
    }

    *(v27 + v31) = v34;
    goto LABEL_20;
  }

  v33 = v31 + 1;
  memcpy((v26 & v25), v28, v31 + 1);
LABEL_21:
  *(v27 + v33) = *(v28 + v33);
  return a1;
}

uint64_t specialized static TextFieldLabelDisplayModeModifier._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 8))(a2, a3);
  lazy protocol witness table accessor for type _GraphInputs.TextFieldLabelDisplayModeKey and conformance _GraphInputs.TextFieldLabelDisplayModeKey();
  return PropertyList.subscript.setter();
}

unint64_t lazy protocol witness table accessor for type ListPresentationSizingFlag and conformance ListPresentationSizingFlag()
{
  result = lazy protocol witness table cache variable for type ListPresentationSizingFlag and conformance ListPresentationSizingFlag;
  if (!lazy protocol witness table cache variable for type ListPresentationSizingFlag and conformance ListPresentationSizingFlag)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListPresentationSizingFlag, &unk_1EFFD9128, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListPresentationSizingFlag and conformance ListPresentationSizingFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListPresentationSizingFlag and conformance ListPresentationSizingFlag;
  if (!lazy protocol witness table cache variable for type ListPresentationSizingFlag and conformance ListPresentationSizingFlag)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListPresentationSizingFlag, &unk_1EFFD9128, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListPresentationSizingFlag and conformance ListPresentationSizingFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListPresentationSizingFlag and conformance ListPresentationSizingFlag;
  if (!lazy protocol witness table cache variable for type ListPresentationSizingFlag and conformance ListPresentationSizingFlag)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListPresentationSizingFlag, &unk_1EFFD9128, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListPresentationSizingFlag and conformance ListPresentationSizingFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListPresentationSizingFlag and conformance ListPresentationSizingFlag;
  if (!lazy protocol witness table cache variable for type ListPresentationSizingFlag and conformance ListPresentationSizingFlag)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListPresentationSizingFlag, &unk_1EFFD9128, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListPresentationSizingFlag and conformance ListPresentationSizingFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListPresentationSizingFlag and conformance ListPresentationSizingFlag;
  if (!lazy protocol witness table cache variable for type ListPresentationSizingFlag and conformance ListPresentationSizingFlag)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListPresentationSizingFlag, &unk_1EFFD9128, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListPresentationSizingFlag and conformance ListPresentationSizingFlag);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ListStyleInput and conformance ListStyleInput()
{
  result = lazy protocol witness table cache variable for type ListStyleInput and conformance ListStyleInput;
  if (!lazy protocol witness table cache variable for type ListStyleInput and conformance ListStyleInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListStyleInput, &unk_1EFF91598, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListStyleInput and conformance ListStyleInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListStyleInput and conformance ListStyleInput;
  if (!lazy protocol witness table cache variable for type ListStyleInput and conformance ListStyleInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListStyleInput, &unk_1EFF91598, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListStyleInput and conformance ListStyleInput);
  }

  return result;
}

uint64_t type metadata completion function for _ListValue(void *a1)
{
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v9 = *(result - 8) + 64;
    v5 = type metadata accessor for SelectionManagerBox(255, a1[3], a1[5], v3);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SelectionManagerBox<A>, v5, v9);
    result = type metadata accessor for _ListStyleConfiguration(319, v5, WitnessTable, v7);
    if (v8 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

void type metadata accessor for StyleContextWriter<SidebarListStyleContext>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t instantiation function for generic protocol witness table for EnvironmentValues.SearchField(uint64_t a1)
{
  result = lazy protocol witness table accessor for type EnvironmentValues.SearchField and conformance EnvironmentValues.SearchField();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentValues.SearchField and conformance EnvironmentValues.SearchField()
{
  result = lazy protocol witness table cache variable for type EnvironmentValues.SearchField and conformance EnvironmentValues.SearchField;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.SearchField and conformance EnvironmentValues.SearchField)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EnvironmentValues.SearchField, &type metadata for EnvironmentValues.SearchField, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.SearchField and conformance EnvironmentValues.SearchField);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EnvironmentValues.SearchField and conformance EnvironmentValues.SearchField;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.SearchField and conformance EnvironmentValues.SearchField)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EnvironmentValues.SearchField, &type metadata for EnvironmentValues.SearchField, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.SearchField and conformance EnvironmentValues.SearchField);
  }

  return result;
}

void type metadata completion function for SearchField(uint64_t a1)
{
  type metadata accessor for StateOrBinding<SearchFieldState>(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

void type metadata completion function for SearchEnvironmentWritingModifier(uint64_t a1)
{
  type metadata accessor for Binding<SearchFieldState>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Binding<AttributedString>(319);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

uint64_t type metadata completion function for CollectionViewListDataSource(uint64_t a1)
{
  result = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ListConcatenatesFooters and conformance ListConcatenatesFooters()
{
  result = lazy protocol witness table cache variable for type ListConcatenatesFooters and conformance ListConcatenatesFooters;
  if (!lazy protocol witness table cache variable for type ListConcatenatesFooters and conformance ListConcatenatesFooters)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListConcatenatesFooters, &type metadata for ListConcatenatesFooters, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListConcatenatesFooters and conformance ListConcatenatesFooters);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListConcatenatesFooters and conformance ListConcatenatesFooters;
  if (!lazy protocol witness table cache variable for type ListConcatenatesFooters and conformance ListConcatenatesFooters)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListConcatenatesFooters, &type metadata for ListConcatenatesFooters, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListConcatenatesFooters and conformance ListConcatenatesFooters);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListConcatenatesFooters and conformance ListConcatenatesFooters;
  if (!lazy protocol witness table cache variable for type ListConcatenatesFooters and conformance ListConcatenatesFooters)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListConcatenatesFooters, &type metadata for ListConcatenatesFooters, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListConcatenatesFooters and conformance ListConcatenatesFooters);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListConcatenatesFooters and conformance ListConcatenatesFooters;
  if (!lazy protocol witness table cache variable for type ListConcatenatesFooters and conformance ListConcatenatesFooters)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListConcatenatesFooters, &type metadata for ListConcatenatesFooters, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListConcatenatesFooters and conformance ListConcatenatesFooters);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListConcatenatesFooters and conformance ListConcatenatesFooters;
  if (!lazy protocol witness table cache variable for type ListConcatenatesFooters and conformance ListConcatenatesFooters)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListConcatenatesFooters, &type metadata for ListConcatenatesFooters, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListConcatenatesFooters and conformance ListConcatenatesFooters);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchFieldPlacement.Role(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_20;
  }

  v2 = a2 + 7;
  if (a2 + 7 >= 0xFFFF00)
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

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 7;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 7;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 7)
  {
    return v8 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t static SearchPrimitiveModifier._makeView(modifier:inputs:body:)@<X0>(_DWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v63[0] = a3;
  v63[1] = a4;
  v67 = a7;
  v123 = *MEMORY[0x1E69E9840];
  type metadata accessor for SearchFieldState?(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v65 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for SearchPrimitiveModifier.FocusStoreListFilter(0, a5, a6, v13);
  v66 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v69 = (v63 - v14);
  v15 = a2[3];
  v16 = a2[1];
  v110 = a2[2];
  v111 = v15;
  v17 = a2[3];
  v112 = a2[4];
  v18 = a2[1];
  v108 = *a2;
  v109 = v18;
  v104 = v110;
  v105 = v17;
  v106 = a2[4];
  LODWORD(v68) = *a1;
  v113 = *(a2 + 20);
  v107 = *(a2 + 20);
  v102 = v108;
  v103 = v16;
  LOBYTE(v115[0]) = 1;
  outlined init with copy of _ViewInputs(&v108, &v117);
  lazy protocol witness table accessor for type IsSearchAllowedInput and conformance IsSearchAllowedInput();
  PropertyList.subscript.setter();
  PreferenceKeys.add(_:)();
  PreferenceKeys.remove(_:)();
  _GraphInputs.pushStableIndex(_:)(0);
  v119 = v110;
  v120 = v111;
  v121 = v112;
  v122 = v113;
  v117 = v108;
  v118 = v109;
  v19 = _ViewInputs.isEnabled.getter();
  v114[0] = v108;
  v114[1] = v109;
  v114[2] = v110;
  outlined init with copy of _GraphInputs(v114, v115);
  if (one-time initialization token for triggerSubmission != -1)
  {
    swift_once();
  }

  *&v96 = static CachedEnvironment.ID.triggerSubmission;
  swift_beginAccess();
  _s7SwiftUI5StateVySbGMaTm_2(0, &lazy cache variable for type metadata for TriggerSubmitAction?, &type metadata for TriggerSubmitAction, MEMORY[0x1E69E6720]);
  v20 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  v21 = outlined destroy of _GraphInputs(v114);
  *&v117 = __PAIR64__(v20, v19);
  MEMORY[0x1EEE9AC00](v21);
  v63[-4] = type metadata accessor for SearchPrimitiveModifier.ForwardedEnvironment(0, a5, a6, v22);
  ForwardEnv = type metadata accessor for SearchPrimitiveModifier.MakeForwardEnv(0, a5, a6, v23);
  v63[-3] = ForwardEnv;
  v63[-2] = swift_getWitnessTable(protocol conformance descriptor for SearchPrimitiveModifier<A>.MakeForwardEnv, ForwardEnv);
  v25 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v117, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, &v63[-6], ForwardEnv, MEMORY[0x1E69E73E0], v25, MEMORY[0x1E69E7410], v26);
  v27 = v115[0];
  v28 = v68;
  LODWORD(v117) = v68;
  type metadata accessor for SearchPrimitiveModifier(255, a5, a6, v29);
  type metadata accessor for _GraphValue();
  LODWORD(ForwardEnv) = _GraphValue.value.getter();
  v31 = type metadata accessor for SearchPrimitiveModifier.SearchConfigModifier(0, a5, a6, v30);
  *&v117 = __PAIR64__(v27, ForwardEnv);
  v64 = v27;
  Modifier = type metadata accessor for SearchPrimitiveModifier.MakeModifier(0, a5, a6, v32);
  swift_getWitnessTable(protocol conformance descriptor for SearchPrimitiveModifier<A>.MakeModifier, Modifier);
  _GraphValue.init<A>(_:)();
  v115[2] = v104;
  v115[3] = v105;
  v115[4] = v106;
  v116 = v107;
  v115[0] = v102;
  v115[1] = v103;
  v98 = v104;
  v99 = v105;
  v100 = v106;
  v101 = v107;
  v96 = v102;
  v97 = v103;
  outlined init with copy of _ViewInputs(v115, &v117);
  swift_getWitnessTable(protocol conformance descriptor for SearchPrimitiveModifier<A>.SearchConfigModifier, v31);
  static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
  v119 = v98;
  v120 = v99;
  v121 = v100;
  v122 = v101;
  v117 = v96;
  v118 = v97;
  outlined destroy of _ViewInputs(&v117);
  LODWORD(v96) = v28;
  _GraphValue.value.getter();
  if (*(*(type metadata accessor for SearchField(0, a5, a6, v34) - 8) + 64))
  {
    closure #1 in static SearchPrimitiveModifier._makeView(modifier:inputs:body:)(1, a5, a6, v35);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v37 = OffsetAttribute2;
  v80 = v111;
  v81 = DWORD2(v111);
  *&v96 = v111;
  DWORD2(v96) = DWORD2(v111);
  MEMORY[0x1EEE9AC00](OffsetAttribute2);
  v63[-4] = a5;
  v63[-3] = a6;
  LODWORD(v63[-2]) = v38;
  outlined init with copy of PreferencesInputs(&v80, v94);
  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

  outlined init with copy of _GraphInputs(v114, &v96);
  if (one-time initialization token for searchFocusContext != -1)
  {
    swift_once();
  }

  *&v94[0] = static CachedEnvironment.ID.searchFocusContext;
  swift_beginAccess();
  _s7SwiftUI5StateVySbGMaTm_2(0, &lazy cache variable for type metadata for SearchFocusContext?, &type metadata for SearchFocusContext, MEMORY[0x1E69E6720]);
  v39 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(v114);
  outlined init with copy of _GraphInputs(v114, &v96);
  if (one-time initialization token for focusScopes != -1)
  {
    swift_once();
  }

  *&v94[0] = static CachedEnvironment.ID.focusScopes;
  swift_beginAccess();
  _s7SwiftUI5StateVySbGMaTm_2(0, &lazy cache variable for type metadata for [Namespace.ID], MEMORY[0x1E6981EA0], MEMORY[0x1E69E62F8]);
  v40 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(v114);
  v41 = type metadata accessor for SearchFieldState(0);
  v42 = v65;
  (*(*(v41 - 8) + 56))(v65, 1, 1, v41);
  v44 = v69;
  v43 = v70;
  *v69 = v37;
  v44[1] = v39;
  v44[2] = v40;
  v45 = outlined init with take of SearchFieldState?(v42, v44 + *(v43 + 44), type metadata accessor for SearchFieldState?);
  *&v96 = v80;
  DWORD2(v96) = v81;
  MEMORY[0x1EEE9AC00](v45);
  v63[-4] = a5;
  v63[-3] = a6;
  v63[-2] = v44;
  outlined init with copy of PreferencesInputs(&v80, v94);
  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();

  v98 = v110;
  v99 = v111;
  v100 = v112;
  v101 = v113;
  v96 = v108;
  v97 = v109;
  outlined init with copy of _ViewInputs(&v108, v94);
  _ViewInputs.implicitRootType.setter();
  _GraphInputs.pushStableIndex(_:)(1);
  *&v94[0] = v77;
  DWORD2(v94[0]) = v78;

  v46 = PreferencesOutputs.subscript.getter();

  if ((v46 & 0x100000000) != 0)
  {
    v47 = *MEMORY[0x1E698D3F8];
  }

  else
  {
    v47 = v46;
  }

  LODWORD(v94[0]) = v68;
  v48 = _GraphValue.value.getter();
  v50 = type metadata accessor for SearchPrimitiveModifier.BaseSearchImplementation(0, a5, a6, v49);
  *&v94[0] = __PAIR64__(v48, v47);
  DWORD2(v94[0]) = v64;
  BaseView = type metadata accessor for SearchPrimitiveModifier.MakeBaseView(0, a5, a6, v51);
  swift_getWitnessTable(protocol conformance descriptor for SearchPrimitiveModifier<A>.MakeBaseView, BaseView);
  _GraphValue.init<A>(_:)();
  v92[2] = v98;
  v92[3] = v99;
  v92[4] = v100;
  v93 = v101;
  v92[0] = v96;
  v92[1] = v97;
  v88 = v98;
  v89 = v99;
  v90 = v100;
  v91 = v101;
  v86 = v96;
  v87 = v97;
  outlined init with copy of _ViewInputs(v92, v94);
  swift_getWitnessTable(protocol conformance descriptor for SearchPrimitiveModifier<A>.BaseSearchImplementation, v50);
  static View.makeDebuggableView(view:inputs:)();
  v94[2] = v88;
  v94[3] = v89;
  v94[4] = v90;
  v95 = v91;
  v94[0] = v86;
  v94[1] = v87;
  outlined destroy of _ViewInputs(v94);
  v53 = v77;
  *&v86 = v77;
  DWORD2(v86) = v78;

  PairwisePreferenceCombinerVisitor.init(outputs:)();
  v75 = v80;
  v76 = 0;
  v54 = *(v80 + 16);
  if (v54)
  {
    v68 = v53;
    outlined init with copy of PreferencesInputs(&v80, &v86);
    lazy protocol witness table accessor for type PreferenceKeys and conformance PreferenceKeys();
    v55 = 1;
    do
    {
      v56 = protocol witness for Collection.subscript.read in conformance PreferenceKeys();
      v56(&v86, 0);
      v76 = v55;
      static PreferenceKey.visitKey<A>(_:)();
      ++v55;
    }

    while (v55 - v54 != 1);
  }

  else
  {
    outlined init with copy of PreferencesInputs(&v80, &v86);
  }

  v57 = v82;
  v58 = v83;

  v73 = v57;
  v74 = v58;
  v71 = v80;
  v72 = v81;
  MEMORY[0x1EEE9AC00](v59);
  v63[-2] = &v108;
  outlined init with copy of PreferencesInputs(&v80, &v86);
  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

  v84[2] = v98;
  v84[3] = v99;
  v84[4] = v100;
  v85 = v101;
  v84[0] = v96;
  v84[1] = v97;
  outlined destroy of _ViewInputs(v84);
  v88 = v104;
  v89 = v105;
  v90 = v106;
  v91 = v107;
  v86 = v102;
  v87 = v103;
  outlined destroy of _ViewInputs(&v86);
  v60 = v67;
  *(v67 + 12) = v79;
  v61 = v73;
  LODWORD(v57) = v74;

  *v60 = v61;
  *(v60 + 8) = v57;
  return (*(v66 + 8))(v69, v70);
}

uint64_t type metadata completion function for SearchPrimitiveModifier.SearchConfigModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for SearchField(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for TriggerSubmitAction?()
{
  if (!lazy cache variable for type metadata for TriggerSubmitAction?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TriggerSubmitAction?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<SubmitScopeModifier>, _EnvironmentKeyWritingModifier<TriggerSubmitAction?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<SubmitScopeModifier>, _EnvironmentKeyWritingModifier<TriggerSubmitAction?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<SubmitScopeModifier>, _EnvironmentKeyWritingModifier<TriggerSubmitAction?>> and conformance <> ModifiedContent<A, B>)
  {
    v5[6] = v0;
    v5[7] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<OnSubmitModifier>, _EnvironmentKeyWritingModifier<TriggerSubmitAction?>>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<SubmitScopeModifier>, _EnvironmentKeyWritingModifier<TriggerSubmitAction?>>, &lazy cache variable for type metadata for _ViewModifier_Content<SubmitScopeModifier>, lazy protocol witness table accessor for type SubmitScopeModifier and conformance SubmitScopeModifier, &type metadata for SubmitScopeModifier);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ViewModifier_Content<SubmitScopeModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<SubmitScopeModifier> and conformance _ViewModifier_Content<A>, &lazy cache variable for type metadata for _ViewModifier_Content<SubmitScopeModifier>, lazy protocol witness table accessor for type SubmitScopeModifier and conformance SubmitScopeModifier, &type metadata for SubmitScopeModifier);
    v5[1] = lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TriggerSubmitAction?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<TriggerSubmitAction?>, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<SubmitScopeModifier>, _EnvironmentKeyWritingModifier<TriggerSubmitAction?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for _ViewModifier_Content<OnSubmitModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = type metadata accessor for _ViewModifier_Content();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<SubmitScopeModifier> and conformance _ViewModifier_Content<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _ViewModifier_Content<OnSubmitModifier>(255, a2, a3, a4);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t closure #1 in static SearchPrimitiveModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SearchPrimitiveModifier(0, a2, a3, a4);
  v8 = *(v7 + 36);
  v13[2] = v7;
  v14 = type metadata accessor for SearchField(0, a2, a3, v9);
  v10 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, partial apply for closure #1 in static PointerOffset.of(_:), v13, v14, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  return v15;
}

uint64_t sub_18BEE41CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t initializeWithCopy for SearchPrimitiveModifier.FocusStoreListFilter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a3 + 44);
  v5 = (a1 + v4);
  v6 = (a2 + v4);
  v7 = type metadata accessor for SearchFieldState(0);
  v8 = *(v7 - 1);
  if ((*(v8 + 48))(v6, 1, v7))
  {
    type metadata accessor for SearchFieldState?(0);
    memcpy(v5, v6, *(*(v9 - 8) + 64));
  }

  else
  {
    *v5 = *v6;
    v5[1] = v6[1];
    *(v5 + 1) = *(v6 + 1);
    *(v5 + 1) = *(v6 + 1);
    v5[8] = v6[8];
    v10 = v7[9];
    v11 = type metadata accessor for AttributedString();
    (*(*(v11 - 8) + 16))(&v5[v10], &v6[v10], v11);
    v5[v7[10]] = v6[v7[10]];
    v12 = v7[11];
    v13 = &v5[v12];
    v14 = &v6[v12];
    v13[4] = v14[4];
    *v13 = *v14;
    (*(v8 + 56))(v5, 0, 1, v7);
  }

  return a1;
}

uint64_t closure #2 in UpdateCollectionViewListCoordinator.init<A>(viewList:view:inputs:scrollGeometry:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a3;
  v12[1] = a2;
  v12[2] = a5;
  v12[3] = a4;
  v6 = type metadata accessor for CollectionViewListRoot(0, v12);
  v7 = *(v6 + 68);
  v11[2] = v6;
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, closure #1 in static PointerOffset.of(_:)partial apply, v11, &type metadata for ListPadding, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v12[0];
}

uint64_t sub_18BEE44B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 1);
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for AttributedString();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t type metadata completion function for SearchPrimitiveModifier.BaseSearchImplementation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for SearchField(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t closure #5 in UpdateCollectionViewListCoordinator.init<A>(viewList:view:inputs:scrollGeometry:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[0] = a3;
  v15[1] = a2;
  v15[2] = a5;
  v15[3] = a4;
  v8 = type metadata accessor for CollectionViewListRoot(0, v15);
  v9 = *(v8 + 52);
  v14[2] = v8;
  v10 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v11 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v9, a6, v14, v10, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  return v15[0];
}

unint64_t instantiation function for generic protocol witness table for SearchFieldConfiguration.Scopes(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SearchFieldConfiguration.Scopes and conformance SearchFieldConfiguration.Scopes();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for SearchScopeToolbarContent(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t _GraphInputs.selectionStorage<A>(forType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for _GraphInputs.SelectionBasedStorageKey(0, a2, a3, a4);
  swift_getWitnessTable(protocol conformance descriptor for _GraphInputs.SelectionBasedStorageKey<A>, v4);
  _GraphInputs.subscript.getter();
  return v6;
}

void type metadata accessor for SourceInput<ListRowHeightTemplateContent>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for SourceInput<ListRowHeightTemplateContent>)
  {
    v2 = lazy protocol witness table accessor for type ListRowHeightTemplateContent and conformance ListRowHeightTemplateContent();
    v4 = type metadata accessor for SourceInput(a1, &type metadata for ListRowHeightTemplateContent, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for SourceInput<ListRowHeightTemplateContent>);
    }
  }
}

uint64_t partial apply for closure #1 in Attribute.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = *(v4 + 16);
  v8 = *(v4 + 24);
  v10 = a3(0);
  return a4(a1, v10, v9, v8, a2);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TATm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = *(v5 + 16);
  v9 = *(v5 + 24);
  type metadata accessor for NavigationState.ListKey?(0, a3, a4, MEMORY[0x1E69E6720]);
  return a5(a1, v11, v10, v9, a2);
}

unint64_t lazy protocol witness table accessor for type ToolbarSearchFieldStyle and conformance ToolbarSearchFieldStyle()
{
  result = lazy protocol witness table cache variable for type ToolbarSearchFieldStyle and conformance ToolbarSearchFieldStyle;
  if (!lazy protocol witness table cache variable for type ToolbarSearchFieldStyle and conformance ToolbarSearchFieldStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarSearchFieldStyle, &type metadata for ToolbarSearchFieldStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarSearchFieldStyle and conformance ToolbarSearchFieldStyle);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_4(255, &lazy cache variable for type metadata for _UnaryViewAdaptor<EmptyView>, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E697F378]);
    type metadata accessor for ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>);
    }
  }
}

uint64_t destroy for SearchPrimitiveModifier.FocusStoreListFilter(uint64_t a1, uint64_t a2)
{
  v2 = a1 + *(a2 + 44);
  v3 = type metadata accessor for SearchFieldState(0);
  result = (*(*(v3 - 8) + 48))(v2, 1, v3);
  if (!result)
  {
    v5 = *(v3 + 36);
    v6 = type metadata accessor for AttributedString();
    v7 = *(*(v6 - 8) + 8);

    return v7(v2 + v5, v6);
  }

  return result;
}

uint64_t initializeWithCopy for UpdateCollectionViewListCoordinator(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 100) = *(a2 + 100);
  swift_unknownObjectWeakCopyInit();
  v7 = a3[28];
  v8 = a1 + v7;
  v9 = a2 + v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for CollectionViewListDataSource(0, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  v14 = *(v13 - 1);
  if (!(*(v14 + 48))(v9, 1, v13))
  {
    v42 = v14;
    v43 = a3;
    v16 = *(v9 + 24);
    *(v8 + 24) = v16;
    (**(v16 - 8))(v8, v9);
    v17 = *(v9 + 48);
    *(v8 + 40) = *(v9 + 40);
    *(v8 + 48) = v17;
    v18 = *(v9 + 64);
    *(v8 + 56) = *(v9 + 56);
    *(v8 + 64) = v18;
    v19 = *(v9 + 80);
    *(v8 + 72) = *(v9 + 72);
    *(v8 + 80) = v19;
    v41 = v13[9];
    v20 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
    v40 = *(*(v20 - 8) + 16);
    v21 = v17;

    v40(v8 + v41, v9 + v41, v20);
    v22 = v13[10];
    v23 = v8 + v22;
    v24 = v9 + v22;
    v25 = *(v9 + v22 + 8);
    if (v25)
    {
      if (v25 == 1)
      {
        v26 = *(v24 + 48);
        *(v23 + 32) = *(v24 + 32);
        *(v23 + 48) = v26;
        *(v23 + 63) = *(v24 + 63);
        v27 = *(v24 + 16);
        *v23 = *v24;
        *(v23 + 16) = v27;
        v28 = v42;
LABEL_11:
        v31 = v13[11];
        v32 = (v8 + v31);
        v33 = (v9 + v31);
        v34 = v33[1];
        *v32 = *v33;
        v32[1] = v34;
        *(v8 + v13[12]) = *(v9 + v13[12]);
        *(v8 + v13[13]) = *(v9 + v13[13]);
        *(v8 + v13[14]) = *(v9 + v13[14]);
        v35 = *(v28 + 56);

        v35(v8, 0, 1, v13);
        a3 = v43;
        goto LABEL_12;
      }

      *v23 = *v24;
      *(v23 + 8) = v25;
      *(v23 + 16) = *(v24 + 16);

      v29 = *(v24 + 64);
      if ((v29 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      *v23 = *v24;
      *(v23 + 16) = *(v24 + 16);
      v29 = *(v24 + 64);
      if ((v29 & 1) == 0)
      {
LABEL_9:
        v30 = *(v24 + 48);
        *(v23 + 48) = v30;
        (**(v30 - 8))(v23 + 24, v24 + 24);
        goto LABEL_10;
      }
    }

    *(v23 + 24) = *(v24 + 24);

LABEL_10:
    v28 = v42;
    *(v23 + 64) = v29;
    *(v23 + 65) = *(v24 + 65);
    goto LABEL_11;
  }

  v15 = type metadata accessor for Optional();
  memcpy(v8, v9, *(*(v15 - 8) + 64));
LABEL_12:
  v36 = a3[30];
  *(a1 + a3[29]) = *(a2 + a3[29]);
  v37 = *(a2 + v36);
  *(a1 + v36) = v37;

  v38 = v37;
  return a1;
}

uint64_t sub_18BEE5304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

double static CollectionViewListUtilities.makeOutputs<A, B>(inputs:coordinator:coordinatorKind:scrollGeometry:)@<D0>(uint64_t a1@<X0>, unsigned int a2@<W1>, char a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, double *a9@<X8>)
{
  *&v74 = a7;
  *(&v74 + 1) = a8;
  *&v73 = a5;
  *(&v73 + 1) = a6;
  v70 = a4;
  v72 = a2;
  v71 = a9;
  v105 = *MEMORY[0x1E69E9840];
  _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_1(0, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v63 - v12;
  v14 = type metadata accessor for BridgedListState(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(a1 + 48);
  *&v101[16] = *(a1 + 32);
  v102 = v17;
  v103 = *(a1 + 64);
  v104 = *(a1 + 80);
  v18 = *(a1 + 16);
  v100 = *a1;
  *v101 = v18;
  v77 = 1;
  v83 = *(a1 + 48);
  v84 = *(a1 + 56);
  *&v85[0] = *(a1 + 48);
  DWORD2(v85[0]) = *(a1 + 56);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    static ScrollGeometry.zero.getter();
    v19 = 0;
    v75 = v85[1];
    v76 = v85[0];
    v66 = v86;
    v67 = v88;
    v68 = v87;
    v69 = v85[2];
    v20 = v89;
    v21 = v90;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v75 = 0u;
    v76 = 0u;
    v19 = v77;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
  }

  v22 = type metadata accessor for BridgedListState.ScrollTarget(0);
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_0(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, MEMORY[0x1E697DF20], MEMORY[0x1E697DF18], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>();
  v23 = static SemanticFeature.isEnabled.getter();
  v24 = 15.0;
  if (v23)
  {
    v24 = 16.0;
  }

  *v16 = v24;
  outlined init with take of BridgedListState.ScrollTarget?(v13, v16 + v14[5]);
  v25 = v16 + v14[6];
  v26 = v75;
  *v25 = v76;
  *(v25 + 1) = v26;
  v27 = v66;
  *(v25 + 2) = v69;
  *(v25 + 3) = v27;
  v28 = v67;
  *(v25 + 4) = v68;
  *(v25 + 5) = v28;
  *(v25 + 12) = v20;
  *(v25 + 13) = v21;
  v25[112] = v19;
  *(v16 + v14[7]) = 0;
  LODWORD(v76) = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of BridgedListState(v16);
  v85[0] = v100;
  *(&v85[1] + 8) = *&v101[8];
  *(&v85[2] + 1) = *&v101[24];
  *&v69 = *v101;
  *&v85[1] = *v101;
  v29 = _GraphInputs.scrollPhaseState.getter();
  LODWORD(v68) = *MEMORY[0x1E698D3F8];
  v65 = v29;
  if (v29 == v68)
  {
    default argument 1 of ScrollPhaseState.init(phase:velocity:)();
    ScrollPhaseState.init(phase:velocity:)();
    LOBYTE(v95[0]) = v85[0];
    *(v95 + 8) = *(v85 + 8);
    v29 = Attribute.init<A>(body:value:flags:update:)();
  }

  LODWORD(v85[0]) = v76;
  swift_unknownObjectWeakInit();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type UpdateBridgedState and conformance UpdateBridgedState();
  v30 = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of UpdateBridgedState(v85);
  AGGraphGetFlags();
  AGGraphSetFlags();
  swift_unknownObjectWeakInit();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for UIScrollView?(0);
  lazy protocol witness table accessor for type ListScrollViewProvider and conformance ListScrollViewProvider();
  v31 = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of ListScrollViewProvider(v85);
  *&v66 = type metadata accessor for Scrollable();
  v32 = Attribute.init<A>(body:value:flags:update:)();
  v33 = v32;
  LODWORD(v95[0]) = v72;
  BYTE4(v95[0]) = a3 & 1;
  *(&v95[0] + 1) = __PAIR64__(v29, v30);
  v64 = v29;
  LODWORD(v75) = v31;
  LODWORD(v95[1]) = v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = v73;
  v85[0] = v73;
  v35 = v74;
  v85[1] = v74;
  *(&v63 - 4) = type metadata accessor for ListRepresentable(0, v85);
  v85[0] = v34;
  v85[1] = v35;
  Representable = type metadata accessor for MakeRepresentable(0, v85);
  *(&v63 - 3) = Representable;
  *(&v63 - 2) = swift_getWitnessTable(protocol conformance descriptor for MakeRepresentable<A, B>, Representable);
  v37 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v95, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, (&v63 - 6), Representable, MEMORY[0x1E69E73E0], v37, MEMORY[0x1E69E7410], v38);
  v96 = *&v101[16];
  v97 = v102;
  v98 = v103;
  v99 = v104;
  v95[0] = v100;
  v95[1] = *v101;
  outlined init with copy of _ViewInputs(&v100, v85);
  LODWORD(v67) = v33;
  _ViewInputs.scrollable.setter();
  if (v65 == v68)
  {
    MEMORY[0x18D003C90](v64);
  }

  PreferenceKeys.remove(_:)();
  _GraphValue.init(_:)();
  v91[2] = v96;
  v91[3] = v97;
  v91[4] = v98;
  v92 = v99;
  v91[0] = v95[0];
  v91[1] = v95[1];
  v85[1] = v95[1];
  v85[2] = v96;
  v86 = v97;
  v87 = v98;
  LODWORD(v88) = v99;
  v85[0] = v95[0];
  outlined init with copy of _ViewInputs(v91, v93);
  static View.makeDebuggableView(view:inputs:)();
  v93[2] = v85[2];
  v93[3] = v86;
  v93[4] = v87;
  v94 = v88;
  v93[0] = v85[0];
  v93[1] = v85[1];
  outlined destroy of _ViewInputs(v93);
  v39 = AGCreateWeakAttribute();
  v40 = AGCreateWeakAttribute();
  v41 = AGCreateWeakAttribute();
  *&v85[0] = v81;
  DWORD2(v85[0]) = LODWORD(v82);
  PreferencesOutputs.subscript.getter();
  v42 = AGCreateWeakAttribute();
  v43 = v42;
  v44 = HIDWORD(v42);
  type metadata accessor for [ScrollGeometryState](0, &lazy cache variable for type metadata for MutableBox<UInt32>, MEMORY[0x1E69E7668], MEMORY[0x1E697DAC0]);
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  v85[0] = v73;
  v85[1] = v74;
  *(&v85[1] + 1) = type metadata accessor for CollectionViewListScrollable(0, v85);
  *&v85[2] = swift_getWitnessTable(protocol conformance descriptor for CollectionViewListScrollable<A, B>, *(&v85[1] + 1));
  v46 = swift_allocObject();
  *&v85[0] = v46;
  *(v46 + 16) = v39;
  *(v46 + 24) = v40;
  *(v46 + 32) = v41;
  *(v46 + 40) = v43;
  *(v46 + 44) = v44;
  *(v46 + 48) = v45;
  v47 = v67;
  AGGraphSetValue();
  __swift_destroy_boxed_opaque_existential_1(v85);
  *&v85[0] = v83;
  DWORD2(v85[0]) = v84;
  v48 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  *&v85[0] = v83;
  DWORD2(v85[0]) = v84;
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) != 0 || (v48)
  {
    LODWORD(v85[0]) = v47;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_1(0, &lazy cache variable for type metadata for [Scrollable], type metadata accessor for Scrollable, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type UnaryScrollablePreferenceProvider and conformance UnaryScrollablePreferenceProvider();
    v49 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v85[0]) = 0;
    PreferencesOutputs.subscript.setter();
    if (v48)
    {
      AccessibilityProperties.init()();
      LOBYTE(v85[0]) = 0;
      DWORD1(v85[0]) = v49;
      v50 = Attribute.init<A>(body:value:flags:update:)();
      outlined destroy of AccessibilityScrollableModifier(v85);
      _s7SwiftUI25AccessibilityViewModifierPAAE04makeC9Transform8modifier6inputs7outputs14AttributeGraph0K0VyAA0C8NodeListVGSgAA01_L5ValueVyxG_AA01_D6InputsVAA01_D7OutputsVtFZAA0c10ScrollableE0V_Tt2B5(v50, &v100, v81, SLODWORD(v82));
      PreferencesOutputs.subscript.setter();
    }
  }

  LODWORD(v85[0]) = v76;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ScrollGeometryProvider and conformance ScrollGeometryProvider();
  v51 = Attribute.init<A>(body:value:flags:update:)();
  v86 = v102;
  v87 = v103;
  LODWORD(v88) = v104;
  v85[0] = v100;
  v85[1] = *v101;
  v85[2] = *&v101[16];
  _ViewInputs.position.getter();
  ScrollGeometryTransformProvider.init(position:transform:)();
  *&v85[0] = v78;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ScrollGeometryTransformProvider and conformance ScrollGeometryTransformProvider();
  v52 = Attribute.init<A>(body:value:flags:update:)();
  LOBYTE(v85[0]) = 2;
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  LOBYTE(v78) = 0;
  v53 = GraphHost.intern<A>(_:for:id:)();

  *&v85[0] = __PAIR64__(v53, v51);
  DWORD2(v85[0]) = v52;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  v54 = MEMORY[0x1E69E62F8];
  type metadata accessor for [ScrollGeometryState](0, &lazy cache variable for type metadata for [ScrollGeometryState], MEMORY[0x1E697F7D0], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type ScrollGeometryStateProvider and conformance ScrollGeometryStateProvider();
  v55 = Attribute.init<A>(body:value:flags:update:)();
  *&v85[0] = v83;
  DWORD2(v85[0]) = v84;
  MEMORY[0x1EEE9AC00](v55);
  *(&v63 - 4) = v56;
  outlined init with copy of PreferencesInputs(&v83, &v78);
  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

  AGGraphSetIndirectAttribute();
  swift_beginAccess();
  v86 = v102;
  v87 = v103;
  v57 = DWORD2(v103);
  LODWORD(v88) = v104;
  v85[0] = v100;
  v85[1] = *v101;
  v85[2] = *&v101[16];
  _ViewInputs.position.getter();
  ResolvedSafeAreaInsets.init(regions:environment:size:position:transform:safeAreaInsets:)();
  *&v85[0] = v78;
  *(v85 + 8) = v79;
  DWORD2(v85[1]) = v80;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ResolvedSafeAreaInsets and conformance ResolvedSafeAreaInsets();
  v58 = Attribute.init<A>(body:value:flags:update:)();
  v86 = v102;
  v87 = v103;
  LODWORD(v88) = v104;
  v85[0] = v100;
  v85[1] = *v101;
  v85[2] = *&v101[16];
  *&v85[0] = __PAIR64__(_ViewInputs.position.getter(), v75);
  *(&v85[0] + 1) = __PAIR64__(v58, v57);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for [ScrollGeometryState](0, &lazy cache variable for type metadata for [ContentScrollViewBox], &type metadata for ContentScrollViewBox, v54);
  lazy protocol witness table accessor for type ScrollViewPreferenceProvider and conformance ScrollViewPreferenceProvider();
  v59 = Attribute.init<A>(body:value:flags:update:)();
  v78 = v83;
  LODWORD(v79) = v84;
  MEMORY[0x1EEE9AC00](v59);
  *(&v63 - 4) = v60;
  outlined init with copy of PreferencesInputs(&v83, v85);
  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

  v86 = v97;
  v87 = v98;
  LODWORD(v88) = v99;
  v85[0] = v95[0];
  v85[1] = v95[1];
  v85[2] = v96;
  outlined destroy of _ViewInputs(v85);
  v61 = v71;
  *v71 = v81;
  result = v82;
  v61[1] = v82;
  return result;
}

uint64_t sub_18BEE623C()
{

  return swift_deallocObject();
}

void type metadata accessor for BridgedListState.ScrollTarget?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_2(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ListRepresentable<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ListRepresentable<A, B>, a3);

  return MEMORY[0x1EEDE1580](a1, a2, a3, WitnessTable);
}

{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ListRepresentable<A, B>, a3);

  return MEMORY[0x1EEDE1580](a1, a2, a3, WitnessTable);
}

uint64_t *protocol witness for static CoreViewRepresentable.appendFeature(to:) in conformance ListRepresentable<A, B>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ListRepresentable<A, B>);

  return static PlatformViewRepresentable.appendFeature(to:)(a1, a2, WitnessTable);
}

{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ListRepresentable<A, B>);

  return static PlatformViewRepresentable.appendFeature(to:)(a1, a2, WitnessTable);
}

uint64_t instantiation function for generic protocol witness table for ListRepresentable<A, B>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable(protocol conformance descriptor for ListRepresentable<A, B>, a2);
  *(a1 + 8) = result;
  return result;
}

void type metadata completion function for UpdateCoalescingCollectionView(uint64_t a1)
{
  _s10Foundation9IndexPathVSgMaTm_2(319, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for [ScrollGeometryState](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type UnaryScrollablePreferenceProvider and conformance UnaryScrollablePreferenceProvider()
{
  result = lazy protocol witness table cache variable for type UnaryScrollablePreferenceProvider and conformance UnaryScrollablePreferenceProvider;
  if (!lazy protocol witness table cache variable for type UnaryScrollablePreferenceProvider and conformance UnaryScrollablePreferenceProvider)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6980B70], MEMORY[0x1E6980B78], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UnaryScrollablePreferenceProvider and conformance UnaryScrollablePreferenceProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollViewPreferenceProvider and conformance ScrollViewPreferenceProvider()
{
  result = lazy protocol witness table cache variable for type ScrollViewPreferenceProvider and conformance ScrollViewPreferenceProvider;
  if (!lazy protocol witness table cache variable for type ScrollViewPreferenceProvider and conformance ScrollViewPreferenceProvider)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewPreferenceProvider, &type metadata for ScrollViewPreferenceProvider, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewPreferenceProvider and conformance ScrollViewPreferenceProvider);
  }

  return result;
}

void destroy for UpdateCollectionViewListCoordinator(uint64_t a1, uint64_t a2)
{
  MEMORY[0x18D011290](a1 + 104);
  v4 = a1 + *(a2 + 112);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for CollectionViewListDataSource(0, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  if (!(*(*(v8 - 8) + 48))(v4, 1, v8))
  {
    __swift_destroy_boxed_opaque_existential_1(v4);

    v9 = *(v8 + 36);
    v10 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
    (*(*(v10 - 8) + 8))(v4 + v9, v10);
    v11 = v4 + *(v8 + 40);
    v12 = *(v11 + 8);
    if (v12)
    {
      if (v12 == 1)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    if (*(v11 + 64))
    {
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1((v11 + 24));
    }

    goto LABEL_8;
  }

LABEL_9:

  v13 = *(a1 + *(a2 + 120));
}

unint64_t lazy protocol witness table accessor for type StringToAttributedStringProjection and conformance StringToAttributedStringProjection()
{
  result = lazy protocol witness table cache variable for type StringToAttributedStringProjection and conformance StringToAttributedStringProjection;
  if (!lazy protocol witness table cache variable for type StringToAttributedStringProjection and conformance StringToAttributedStringProjection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StringToAttributedStringProjection, &type metadata for StringToAttributedStringProjection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type StringToAttributedStringProjection and conformance StringToAttributedStringProjection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StringToAttributedStringProjection and conformance StringToAttributedStringProjection;
  if (!lazy protocol witness table cache variable for type StringToAttributedStringProjection and conformance StringToAttributedStringProjection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StringToAttributedStringProjection, &type metadata for StringToAttributedStringProjection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type StringToAttributedStringProjection and conformance StringToAttributedStringProjection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StringToAttributedStringProjection and conformance StringToAttributedStringProjection;
  if (!lazy protocol witness table cache variable for type StringToAttributedStringProjection and conformance StringToAttributedStringProjection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StringToAttributedStringProjection, &type metadata for StringToAttributedStringProjection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type StringToAttributedStringProjection and conformance StringToAttributedStringProjection);
  }

  return result;
}

uint64_t outlined init with copy of Binding<AttributedString>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI7BindingVy10Foundation16AttributedStringVGWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t specialized static SearchSuggestionsPlacement.Role.initial.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 currentTraitCollection];
  v2 = [v1 horizontalSizeClass];

  v3 = [v0 currentTraitCollection];
  v4 = [v3 userInterfaceIdiom];

  type metadata accessor for _SemanticFeature<Semantics_v4>();
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>();
  if (static SemanticFeature.isEnabled.getter())
  {
    if (v4 == 5)
    {
      static Semantics.v4_4.getter();
      v5 = isLinkedOnOrAfter(_:)() ^ 1;
    }

    else
    {
      v5 = v2 != 2;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

uint64_t initializeWithCopy for SearchFieldState(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  v6 = a3[9];
  v7 = type metadata accessor for AttributedString();
  (*(*(v7 - 8) + 16))(a1 + v6, a2 + v6, v7);
  v8 = a3[11];
  *(a1 + a3[10]) = *(a2 + a3[10]);
  v9 = a1 + v8;
  v10 = a2 + v8;
  *v9 = *v10;
  *(v9 + 4) = *(v10 + 4);
  return a1;
}

void type metadata accessor for Binding<String>()
{
  if (!lazy cache variable for type metadata for Binding<String>)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<String>);
    }
  }
}

uint64_t outlined assign with take of Binding<TextSelection?>?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_2(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t initializeWithCopy for SearchModifier(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  v5 = a2 & 0xFFFFFFFFFFFFFFF8;
  v6 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  v7 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  v8 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  outlined copy of Text.Storage(v6, v7, v8);
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;
  *(v4 + 24) = v8;
  *(v4 + 32) = *(v5 + 32);
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 16);
  v12 = v10 + 16;
  v13 = *(v10 + 80);
  v14 = (v13 + 40 + v4) & ~v13;
  v15 = (v13 + 40 + v5) & ~v13;

  v11(v14, v15, v9);
  v16 = *(v12 + 48);
  v17 = type metadata accessor for AttributedString();
  v18 = *(v17 - 8);
  v19 = *(v18 + 16);
  v20 = v18 + 16;
  v21 = *(v18 + 80);
  v22 = v21 | 7;
  v23 = (v21 | 7) + v16;
  v24 = ((v23 + v14) & ~(v21 | 7));
  v25 = ((v23 + v15) & ~(v21 | 7));
  *v24 = *v25;
  v26 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
  v27 = ((v25 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v26 = *v27;
  v28 = v26 + v21 + 8;
  v29 = v27 + v21 + 8;

  v47 = v19;
  v48 = v17;
  v19(v28 & ~v21, v29 & ~v21, v17);
  v30 = *(v20 + 48);
  v31 = v30 + ((v21 + 16) & ~v21) + 7;
  v32 = (v24 + v31) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v25 + v31) & 0xFFFFFFFFFFFFFFF8;
  v34 = *(v33 + 17);
  if (v34 >= 2)
  {
    v34 = *v33 + 2;
  }

  v35 = ~v22;
  v36 = ~v21;
  if (v34 == 1)
  {
    *v32 = *v33;
    *(v32 + 8) = *(v33 + 8);
    *(v32 + 16) = *(v33 + 16);

    v37 = 1;
  }

  else
  {
    v37 = 0;
    *v32 = *v33;
    *(v32 + 8) = *(v33 + 8);
  }

  *(v32 + 17) = v37;
  v38 = (v22 + 18 + v32) & v35;
  v39 = (v22 + 18 + v33) & v35;
  *v38 = *v39;
  *(v38 + 1) = *(v39 + 1);
  *(v38 + 2) = *(v39 + 2);
  *(v38 + 3) = *(v39 + 3);
  v40 = *(v39 + 4);
  *(v38 + 8) = *(v39 + 8);
  *(v38 + 4) = v40;
  v41 = (v21 + 9 + v38) & v36;
  v42 = (v21 + 9 + v39) & v36;
  v47(v41, v42, v48);
  *(v41 + v30) = *(v42 + v30);
  v43 = (v41 + v30) & 0xFFFFFFFFFFFFFFFCLL;
  v44 = (v42 + v30) & 0xFFFFFFFFFFFFFFFCLL;
  v45 = *(v44 + 4);
  *(v43 + 8) = *(v44 + 8);
  *(v43 + 4) = v45;
  *((v30 + ((v21 + 9) & v36) + 16 + v38) & 0xFFFFFFFFFFFFFFF8) = *((v30 + ((v21 + 9) & v36) + 16 + v39) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t initializeWithCopy for TextField(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = a2[3];
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v5;
  *(a1 + 32) = *(a2 + 32);
  v6 = *(a3 + 16);
  v7 = *(*(v6 - 8) + 16);
  v8 = *(v6 - 8) + 16;
  v9 = *(*(v6 - 8) + 80);
  v10 = (v9 + 33 + a1) & ~v9;
  v11 = (a2 + v9 + 33) & ~v9;

  v7(v10, v11, v6);
  v12 = *(v8 + 48);
  v13 = v12 + v10;
  v14 = v12 + v11;
  *v13 = *v14;
  v15 = v13 & 0xFFFFFFFFFFFFFFF8;
  v16 = v14 & 0xFFFFFFFFFFFFFFF8;
  if (*((v14 & 0xFFFFFFFFFFFFFFF8) + 32) < 0xFFFFFFFFuLL)
  {
    v20 = *(v16 + 8);
    *(v15 + 24) = *(v16 + 24);
    *(v15 + 8) = v20;
  }

  else
  {
    v17 = *(v16 + 8);
    v18 = *(v16 + 16);
    v19 = *(v16 + 24);
    outlined copy of Text.Storage(v17, v18, v19);
    *(v15 + 8) = v17;
    *(v15 + 16) = v18;
    *(v15 + 24) = v19;
    *(v15 + 32) = *(v16 + 32);
  }

  v21 = (v15 + 47) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v16 + 47) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(v22 + 108);
  if (v23 >= 2)
  {
    v23 = *v22 + 2;
  }

  if (v23 == 1)
  {
    *v21 = *v22;
    *(v21 + 8) = *(v22 + 8);
    *(v21 + 16) = *(v22 + 16);
    *(v21 + 24) = *(v22 + 24);
    v24 = *(v22 + 32);

    if (v24)
    {
      v25 = *(v22 + 40);
      *(v21 + 32) = v24;
      *(v21 + 40) = v25;
      v26 = *(v22 + 56);
      *(v21 + 48) = *(v22 + 48);
      *(v21 + 56) = v26;
    }

    else
    {
      v30 = *(v22 + 48);
      *(v21 + 32) = *(v22 + 32);
      *(v21 + 48) = v30;
    }

    v31 = *(v22 + 64);
    if (v31)
    {
      v32 = *(v22 + 72);
      *(v21 + 64) = v31;
      *(v21 + 72) = v32;
      v33 = *(v22 + 88);
      *(v21 + 80) = *(v22 + 80);
      *(v21 + 88) = v33;
    }

    else
    {
      v38 = *(v22 + 80);
      *(v21 + 64) = *(v22 + 64);
      *(v21 + 80) = v38;
    }

    *(v21 + 96) = *(v22 + 96);
    v39 = *(v22 + 100);
    *(v21 + 104) = *(v22 + 104);
    *(v21 + 100) = v39;
    *(v21 + 105) = *(v22 + 105);
    *(v21 + 106) = *(v22 + 106);
    *(v21 + 107) = *(v22 + 107);
    *(v21 + 108) = 1;
  }

  else
  {
    *v21 = *v22;
    *(v21 + 8) = *(v22 + 8);
    v27 = *(v22 + 16);

    if (v27)
    {
      v28 = *(v22 + 24);
      *(v21 + 16) = v27;
      *(v21 + 24) = v28;
      v29 = *(v22 + 40);
      *(v21 + 32) = *(v22 + 32);
      *(v21 + 40) = v29;
    }

    else
    {
      v34 = *(v22 + 32);
      *(v21 + 16) = *(v22 + 16);
      *(v21 + 32) = v34;
    }

    v35 = *(v22 + 48);
    if (v35)
    {
      v36 = *(v22 + 56);
      *(v21 + 48) = v35;
      *(v21 + 56) = v36;
      v37 = *(v22 + 72);
      *(v21 + 64) = *(v22 + 64);
      *(v21 + 72) = v37;
    }

    else
    {
      v40 = *(v22 + 64);
      *(v21 + 48) = *(v22 + 48);
      *(v21 + 64) = v40;
    }

    *(v21 + 80) = *(v22 + 80);
    v41 = *(v22 + 84);
    *(v21 + 88) = *(v22 + 88);
    *(v21 + 84) = v41;
    *(v21 + 89) = *(v22 + 89);
    *(v21 + 90) = *(v22 + 90);
    *(v21 + 91) = *(v22 + 91);
    *(v21 + 96) = *(v22 + 96);
    *(v21 + 108) = 0;
  }

  type metadata accessor for TextField<Text>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
  v43 = *(v42 - 8);
  v44 = *(v43 + 80) & 0xF8 | 7;
  v45 = ~v44;
  v46 = ((v21 + v44 + 109) & ~v44);
  v47 = ((v22 + v44 + 109) & ~v44);
  if (*(v43 + 64) <= 0x10uLL)
  {
    v48 = 16;
  }

  else
  {
    v48 = *(v43 + 64);
  }

  v49 = ((v47 + 15) & 0xFFFFFFFFFFFFFFF8);
  if (*v49 < 0xFFFFFFFFuLL)
  {
    v56 = ((v44 + 16) & v45) + v48 + 2;
    v57 = ((v21 + v44 + 109) & ~v44);
LABEL_31:
    memcpy(v57, v47, v56);
    return a1;
  }

  v50 = v42;
  *v46 = *v47;
  v51 = ((v46 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v51 = *v49;
  v52 = v44 + 8;
  v53 = ((v51 + v52) & v45);
  v54 = ((v49 + v52) & v45);
  v55 = *(v54 + v48);

  if (v55 > 1)
  {
    v57 = v53;
    v47 = v54;
    v56 = v48 + 2;
    goto LABEL_31;
  }

  if (v55 == 1)
  {
    (*(v43 + 16))(v53, v54, v50);
    v58 = 1;
  }

  else
  {
    v58 = 0;
    *v53 = *v54;
  }

  *(v53 + v48) = v58;
  *(v53 + v48 + 1) = *(v54 + v48 + 1);
  return a1;
}

double destroy for SearchModifier(uint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Text.Storage(*((a1 & 0xFFFFFFFFFFFFFFF8) + 8), *(v3 + 16), *(v3 + 24));

  v4 = *(*(a2 + 16) - 8);
  v5 = v4 + 8;
  v6 = (v3 + *(v4 + 80) + 40) & ~*(v4 + 80);
  (*(v4 + 8))(v6);
  v7 = *(v5 + 56);
  v8 = type metadata accessor for AttributedString();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v6 + v7 + (v10 | 7)) & ~(v10 | 7);

  v12 = *(v9 + 8);
  v12((v10 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v10, v8);
  v13 = (((v10 + 16) & ~v10) + *(v9 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v13 + 17);
  if (v14 >= 2)
  {
    v14 = *v13 + 2;
  }

  if (v14 == 1)
  {
  }

  v12((v10 + 9 + (((v10 | 7) + v13 + 18) & ~(v10 | 7))) & ~v10, v8);

  return result;
}

void destroy for TextField(void *a1, uint64_t a2)
{

  v4 = *(*(a2 + 16) - 8);
  v5 = v4 + 8;
  v6 = (a1 + *(v4 + 80) + 33) & ~*(v4 + 80);
  (*(v4 + 8))(v6);
  v7 = (v6 + *(v5 + 56)) & 0xFFFFFFFFFFFFFFF8;
  if (*(v7 + 32) >= 0xFFFFFFFFuLL)
  {
    outlined consume of Text.Storage(*(v7 + 8), *(v7 + 16), *(v7 + 24));
  }

  v8 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 108);
  if (v9 >= 2)
  {
    v9 = *v8 + 2;
  }

  if (v9 != 1)
  {

    if (*(v8 + 16))
    {
    }

    if (!*(v8 + 48))
    {
      goto LABEL_15;
    }

LABEL_14:

LABEL_15:

    goto LABEL_16;
  }

  if (*(v8 + 32))
  {
  }

  if (*(v8 + 64))
  {
    goto LABEL_14;
  }

LABEL_16:
  type metadata accessor for TextField<Text>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80) & 0xF8 | 7;
  v13 = ((((v8 + v12 + 109) & ~v12) + 15) & 0xFFFFFFFFFFFFFFF8);
  if (*v13 >= 0xFFFFFFFFuLL)
  {
    v14 = *(v11 + 64) <= 0x10uLL ? 16 : *(v11 + 64);
    v16 = *(v10 - 8);

    if (*(((v13 + v12 + 8) & ~v12) + v14) == 1)
    {
      v15 = *(v16 + 8);

      v15();
    }
  }
}

uint64_t assignWithTake for SearchFieldState(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  v6 = a3[9];
  v7 = type metadata accessor for AttributedString();
  (*(*(v7 - 8) + 40))(a1 + v6, a2 + v6, v7);
  v8 = a3[11];
  *(a1 + a3[10]) = *(a2 + a3[10]);
  v9 = a1 + v8;
  v10 = a2 + v8;
  *v9 = *v10;
  *(v9 + 4) = *(v10 + 4);
  return a1;
}

uint64_t SearchModifier.primitiveModifier.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = type metadata accessor for SearchField(0, v6, v7, a2);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v3, a1, v12);
  SearchModifier.searchField.getter(a1, v10);
  return SearchPrimitiveModifier.init(base:searchField:)(v14, v10, v6, v7, a3);
}

void SearchModifier.searchField.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Binding<SearchFieldState>(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  SearchModifier.adjustedState.getter(a1, v12);
  v13 = v2 + *(a1 + 48);
  v14 = *v13;
  v15 = *(v13 + 8);
  if (*(v13 + 17))
  {
    v16 = *(v13 + 16);
  }

  else
  {
    v17[8] = v14 & 1;
    v18 = v15;
    _s7SwiftUI5StateVySbGMaTm_2(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    State.projectedValue.getter();
    v14 = v19;
    v15 = v20;
    v16 = v21;
  }

  (*(v7 + 16))(v9, v3 + *(a1 + 40), v6);
  SearchField.init(state:isPresented:control:)(v12, v14, v15, v16 & 1, v9, v6, *(a1 + 24), a2);
}

unint64_t lazy protocol witness table accessor for type SearchZipLocation and conformance SearchZipLocation()
{
  result = lazy protocol witness table cache variable for type SearchZipLocation and conformance SearchZipLocation;
  if (!lazy protocol witness table cache variable for type SearchZipLocation and conformance SearchZipLocation)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchZipLocation, &type metadata for SearchZipLocation, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SearchZipLocation and conformance SearchZipLocation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchZipLocation and conformance SearchZipLocation;
  if (!lazy protocol witness table cache variable for type SearchZipLocation and conformance SearchZipLocation)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchZipLocation, &type metadata for SearchZipLocation, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SearchZipLocation and conformance SearchZipLocation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchStateProjection and conformance SearchStateProjection()
{
  result = lazy protocol witness table cache variable for type SearchStateProjection and conformance SearchStateProjection;
  if (!lazy protocol witness table cache variable for type SearchStateProjection and conformance SearchStateProjection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchStateProjection, &type metadata for SearchStateProjection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SearchStateProjection and conformance SearchStateProjection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchStateProjection and conformance SearchStateProjection;
  if (!lazy protocol witness table cache variable for type SearchStateProjection and conformance SearchStateProjection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchStateProjection, &type metadata for SearchStateProjection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SearchStateProjection and conformance SearchStateProjection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchStateProjection and conformance SearchStateProjection;
  if (!lazy protocol witness table cache variable for type SearchStateProjection and conformance SearchStateProjection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchStateProjection, &type metadata for SearchStateProjection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SearchStateProjection and conformance SearchStateProjection);
  }

  return result;
}

uint64_t SearchPrimitiveModifier.MakeBaseView.value.getter@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v23[1] = a2;
  v7 = a1;
  v24 = a5;
  v8 = type metadata accessor for SearchField(0, a3, a4, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v23 - v10;
  v13 = type metadata accessor for SearchPrimitiveModifier(0, a3, a4, v12);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v23 - v15;
  if (*MEMORY[0x1E698D3F8] == v7)
  {
    v17 = 0;
  }

  else
  {
    v17 = *AGGraphGetValue();
  }

  SearchPrimitiveModifier.MakeBaseView.modifier.getter(a3, a4, v16);
  (*(v9 + 16))(v11, &v16[*(v13 + 36)], v8);
  (*(v14 + 8))(v16, v13);
  type metadata accessor for SearchPrimitiveModifier.ForwardedEnvironment(0, a3, a4, v18);
  Value = AGGraphGetValue();
  v20 = *(Value + 8);
  v21 = *(Value + 16);
  SearchPrimitiveModifier.BaseSearchImplementation.init(isSearchImplementedByChild:searchField:forwardEnv:)(v17, v11, *Value, v20, v21, a3, a4, v24);
  return outlined copy of AppIntentExecutor?(v20, v21);
}

__n128 initializeBufferWithCopyOfBuffer for SearchPrimitiveModifier.ForwardedEnvironment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = (a2 + 8);
  v2 = *(a2 + 8);
  if (v2)
  {
    v4 = *(a2 + 16);
    *(a1 + 8) = v2;
    *(a1 + 16) = v4;
  }

  else
  {
    result = *v3;
    *(a1 + 8) = *v3;
  }

  return result;
}

uint64_t SearchPrimitiveModifier.BaseSearchImplementation.init(isSearchImplementedByChild:searchField:forwardEnv:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  *a8 = a1;
  v15 = type metadata accessor for SearchPrimitiveModifier.BaseSearchImplementation(0, a6, a7, a4);
  v16 = v15[9];
  v18 = type metadata accessor for SearchField(0, a6, a7, v17);
  (*(*(v18 - 8) + 32))(&a8[v16], a2, v18);
  v19 = &a8[v15[10]];
  *v19 = a3;
  *(v19 + 1) = a4;
  *(v19 + 2) = a5;
  v20 = &a8[v15[11]];
  result = swift_getKeyPath();
  *v20 = result;
  v20[41] = 0;
  return result;
}

_BYTE *initializeWithCopy for SearchPrimitiveModifier.BaseSearchImplementation(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v5 = a1;
  *a1 = *a2;
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v71 = *(a3 + 16);
  v70 = *(v71 - 8);
  v9 = *(v70 + 80);
  v10 = v8 | v9 | 7;
  v11 = &v5[v10 + 1] & ~v10;
  v12 = &a2[v10 + 1] & ~v10;
  v13 = v8 + 9;
  v14 = (v8 + 9) & ~v8;
  v15 = *(v7 + 64);
  v16 = ((v15 + v14) & 0xFFFFFFFFFFFFFFFCLL) + 9;
  v17 = *(v7 + 80) & 0xFCLL ^ 0xFFFFFFFFFFFFFFFCLL;
  if (v16 + ((v8 + 16) & v17) <= ((v15 + v14) & 0xFFFFFFFFFFFFFFF8) + 24)
  {
    v18 = ((v15 + v14) & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  else
  {
    v18 = v16 + ((v8 + 16) & v17);
  }

  v19 = *(v12 + v18);
  v20 = v19 - 2;
  if (v19 < 2)
  {
    goto LABEL_18;
  }

  if (v18 <= 3)
  {
    v21 = v18;
  }

  else
  {
    v21 = 4;
  }

  if (v21 <= 1)
  {
    if (!v21)
    {
      goto LABEL_18;
    }

    v22 = *v12;
  }

  else if (v21 == 2)
  {
    v22 = *v12;
  }

  else if (v21 == 3)
  {
    v22 = *v12 | (*(v12 + 2) << 16);
  }

  else
  {
    v22 = *v12;
  }

  v23 = (v22 | (v20 << (8 * v18))) + 2;
  v19 = v22 + 2;
  if (v18 < 4)
  {
    v19 = v23;
  }

LABEL_18:
  v24 = ~v8;
  if (v19 == 1)
  {
    *v11 = *v12;
    v25 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
    v26 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v25 = *v26;
    v27 = ((v25 + v8 + 8) & v17);
    v28 = ((v26 + v8 + 8) & v17);
    v29 = (v28 + 7);
    *v27 = *v28;
    v27[1] = v28[1];
    v27[2] = v28[2];
    v27[3] = v28[3];
    v30 = (v27 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v29 &= 0xFFFFFFFFFFFFFFFCLL;
    LODWORD(v27) = *v29;
    *(v30 + 4) = *(v29 + 4);
    *v30 = v27;
    v31 = v8 + 5;
    v32 = (v31 + v30) & v24;
    v33 = (v31 + v29) & v24;
    v69 = v9;
    v34 = v5;
    v35 = *(v7 + 16);
    v36 = v18;
    v37 = v6;

    v38 = v37;
    v18 = v36;
    v35(v32, v33, v38);
    v5 = v34;
    v9 = v69;
    *(v32 + v15) = *(v33 + v15);
    v39 = (v32 + v15) & 0xFFFFFFFFFFFFFFFCLL;
    v40 = (v33 + v15) & 0xFFFFFFFFFFFFFFFCLL;
    v41 = *(v40 + 4);
    *(v39 + 8) = *(v40 + 8);
    *(v39 + 4) = v41;
    v42 = v11 | 7;
    v43 = v12 | 7;
    v44 = 1;
  }

  else
  {
    *v11 = *v12;
    *(v11 + 1) = *(v12 + 1);
    *(v11 + 2) = *(v12 + 2);
    *(v11 + 3) = *(v12 + 3);
    v45 = *(v12 + 4);
    *(v11 + 8) = *(v12 + 8);
    *(v11 + 4) = v45;
    v46 = (v13 + v11) & v24;
    v47 = (v13 + v12) & v24;
    (*(v7 + 16))(v46, v47, v6);
    *(v46 + v15) = *(v47 + v15);
    v48 = (v46 + v15) & 0xFFFFFFFFFFFFFFFCLL;
    v49 = (v47 + v15) & 0xFFFFFFFFFFFFFFFCLL;
    v50 = *(v49 + 4);
    *(v48 + 8) = *(v49 + 8);
    *(v48 + 4) = v50;
    v42 = v11 | 7;
    v43 = v12 | 7;
    *(((v11 | 7) + v16) & 0xFFFFFFFFFFFFFFF8) = *((v43 + v16) & 0xFFFFFFFFFFFFFFF8);

    v44 = 0;
  }

  *(v11 + v18) = v44;
  v51 = (v42 + v18 + 1) & 0xFFFFFFFFFFFFFFF8;
  v52 = (v43 + v18 + 1) & 0xFFFFFFFFFFFFFFF8;
  v53 = *(v52 + 17);
  if (v53 >= 2)
  {
    v53 = *v52 + 2;
  }

  if (v53 == 1)
  {
    *v51 = *v52;
    *(v51 + 8) = *(v52 + 8);
    *(v51 + 16) = *(v52 + 16);

    v54 = 1;
  }

  else
  {
    v54 = 0;
    *v51 = *v52;
    *(v51 + 8) = *(v52 + 8);
  }

  *(v51 + 17) = v54;
  v55 = (v9 + 18 + v51) & ~v9;
  v56 = (v9 + 18 + v52) & ~v9;
  (*(v70 + 16))(v55, v56, v71);
  v57 = *(v70 + 64);
  *(v57 + v55) = *(v57 + v56);
  v58 = ((v9 + (v18 & 0xFFFFFFFFFFFFFFF8) + 26) & ~v9) + v57 + 1;
  v59 = (v42 + v58) & 0xFFFFFFFFFFFFFFF8;
  v60 = (v43 + v58) & 0xFFFFFFFFFFFFFFF8;
  *v59 = *v60;
  v61 = *(v60 + 8);
  if (v61)
  {
    v62 = *(v60 + 16);
    *(v59 + 8) = v61;
    *(v59 + 16) = v62;
  }

  else
  {
    *(v59 + 8) = *(v60 + 8);
  }

  v63 = (v59 + 31) & 0xFFFFFFFFFFFFFFF8;
  v64 = (v60 + 31) & 0xFFFFFFFFFFFFFFF8;
  if (*(v64 + 41))
  {
    if (*(v64 + 40) == 1)
    {
      v65 = *(v64 + 24);
      *(v63 + 24) = v65;
      *(v63 + 32) = *(v64 + 32);
      (**(v65 - 8))(v63);
      *(v63 + 40) = 1;
    }

    else
    {
      v66 = *v64;
      v67 = *(v64 + 16);
      *(v63 + 25) = *(v64 + 25);
      *v63 = v66;
      *(v63 + 16) = v67;
    }

    *(v63 + 41) = 1;
  }

  else
  {
    *v63 = *v64;
    *(v63 + 41) = 0;
  }

  return v5;
}

uint64_t SearchPrimitiveModifier.BaseSearchImplementation.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v4 = v3;
  v38 = a2;
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v33 = type metadata accessor for SearchField(0, v6, v7, a3);
  v32 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v31 = &v31 - v8;
  v36 = v6;
  v35 = v7;
  v10 = type metadata accessor for SearchPrimitiveModifier.SearchConfigModifier(0, v6, v7, v9);
  v34 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  v13 = type metadata accessor for ModifiedContent();
  v37 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - v17;
  v19 = *v4;
  specialized Environment.wrappedValue.getter(v42);
  if (v42[40] == 255)
  {
    if (one-time initialization token for automatic != -1)
    {
      swift_once();
    }

    outlined init with copy of ToolbarItemPlacement(&static ToolbarItemPlacement.automatic, &v40);
  }

  else
  {
    v40 = *v42;
    v41[0] = *&v42[16];
    *(v41 + 9) = *&v42[25];
  }

  KeyPath = swift_getKeyPath();
  v21 = swift_getKeyPath();
  v22 = swift_getKeyPath();
  *&v42[8] = v40;
  v42[0] = v19;
  *&v42[24] = v41[0];
  *&v42[33] = *(v41 + 9);
  v43 = 0;
  v44 = 0;
  v45 = KeyPath;
  v46 = 0;
  v47 = v21;
  v48 = 0;
  v49 = v22;
  v50 = 0;
  v23 = v31;
  (*(v32 + 16))(v31, &v4[*(a1 + 36)], v33);
  v24 = &v4[*(a1 + 40)];
  v25 = *(v24 + 1);
  v26 = *(v24 + 2);
  SearchPrimitiveModifier.SearchConfigModifier.init(searchField:placement:forwardEnv:)(v23, 2, *v24, v25, v26, v36, v35, v12);
  outlined copy of AppIntentExecutor?(v25, v26);
  v27 = lazy protocol witness table accessor for type SearchOverlayView and conformance SearchOverlayView();
  MEMORY[0x18D00A570](v12, &type metadata for SearchOverlayView, v10, v27);
  (*(v34 + 8))(v12, v10);
  outlined destroy of SearchOverlayView(v42);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SearchPrimitiveModifier<A>.SearchConfigModifier, v10);
  v39[0] = v27;
  v39[1] = WitnessTable;
  swift_getWitnessTable(MEMORY[0x1E697E858], v13, v39);
  static ViewBuilder.buildExpression<A>(_:)();
  v29 = *(v37 + 8);
  v29(v15, v13);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v29)(v18, v13);
}

uint64_t initializeWithCopy for SearchPrimitiveModifier.SearchConfigModifier(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = type metadata accessor for AttributedString();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = ((v7 + 9) & ~v7) + v8;
  v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL) + 9;
  v11 = (v9 & 0xFFFFFFFFFFFFFFF8) + 24;
  v12 = v7 | 3;
  if (v10 + ((v7 + 16) & ~(v7 | 3)) <= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v10 + ((v7 + 16) & ~(v7 | 3));
  }

  v14 = a2[v13];
  v15 = v14 - 2;
  if (v14 < 2)
  {
    goto LABEL_20;
  }

  if (v13 <= 3)
  {
    v16 = v13;
  }

  else
  {
    v16 = 4;
  }

  if (v16 <= 1)
  {
    if (!v16)
    {
      goto LABEL_20;
    }

    v17 = *a2;
    if (v13 < 4)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v16 == 2)
  {
    v17 = *a2;
    if (v13 >= 4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v16 == 3)
    {
      v17 = *a2 | (a2[2] << 16);
      if (v13 < 4)
      {
        goto LABEL_19;
      }

LABEL_17:
      v14 = v17 + 2;
      goto LABEL_20;
    }

    v17 = *a2;
    if (v13 >= 4)
    {
      goto LABEL_17;
    }
  }

LABEL_19:
  v14 = (v17 | (v15 << (8 * v13))) + 2;
LABEL_20:
  v18 = ~v7;
  if (v14 == 1)
  {
    *a1 = *a2;
    v19 = ~v12;
    v20 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    v21 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v20 = *v21;
    v22 = v20 + v12;
    v23 = v21 + v12;
    v24 = ((v22 + 8) & v19);
    v25 = ((v23 + 8) & v19);
    v26 = (v25 + 7);
    *v24 = *v25;
    v24[1] = v25[1];
    v24[2] = v25[2];
    v24[3] = v25[3];
    v27 = (v24 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v28 = v26 & 0xFFFFFFFFFFFFFFFCLL;
    LODWORD(v26) = *(v26 & 0xFFFFFFFFFFFFFFFCLL);
    *(v27 + 4) = *(v28 + 4);
    *v27 = v26;
    v29 = v7 + 5;
    v30 = (v29 + v27) & v18;
    v31 = (v29 + v28) & v18;
    v32 = *(v6 + 16);
    v33 = v5;

    v32(v30, v31, v33);
    *(v30 + v8) = *(v31 + v8);
    v34 = (v30 + v8) & 0xFFFFFFFFFFFFFFFCLL;
    v35 = (v31 + v8) & 0xFFFFFFFFFFFFFFFCLL;
    v36 = *(v35 + 4);
    *(v34 + 8) = *(v35 + 8);
    *(v34 + 4) = v36;
    v37 = 1;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 1) = a2[1];
    *(a1 + 2) = a2[2];
    *(a1 + 3) = a2[3];
    v38 = (a1 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v39 = (a2 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v40 = *v39;
    *(v38 + 4) = *(v39 + 4);
    *v38 = v40;
    v41 = (v38 + v7 + 5) & v18;
    v42 = (v39 + v7 + 5) & v18;
    (*(v6 + 16))(v41, v42, v5);
    *(v41 + v8) = *(v42 + v8);
    v43 = (v41 + v8) & 0xFFFFFFFFFFFFFFFCLL;
    v44 = (v42 + v8) & 0xFFFFFFFFFFFFFFFCLL;
    v45 = *(v44 + 4);
    *(v43 + 8) = *(v44 + 8);
    *(v43 + 4) = v45;
    *((a1 + 7 + v10) & 0xFFFFFFFFFFFFFFF8) = *(&a2[v10 + 7] & 0xFFFFFFFFFFFFFFF8);

    v37 = 0;
  }

  *(a1 + v13) = v37;
  v46 = (v13 + 8 + a1) & 0xFFFFFFFFFFFFFFF8;
  v47 = &a2[v13 + 8] & 0xFFFFFFFFFFFFFFF8;
  v48 = *(v47 + 17);
  if (v48 >= 2)
  {
    v48 = *v47 + 2;
  }

  if (v48 == 1)
  {
    *v46 = *v47;
    *(v46 + 8) = *(v47 + 8);
    *(v46 + 16) = *(v47 + 16);

    v49 = 1;
  }

  else
  {
    v49 = 0;
    *v46 = *v47;
    *(v46 + 8) = *(v47 + 8);
  }

  *(v46 + 17) = v49;
  v50 = *(*(a3 + 16) - 8);
  v51 = v50 + 16;
  v52 = *(v50 + 80);
  (*(v50 + 16))((v46 + v52 + 18) & ~v52, (v47 + v52 + 18) & ~v52);
  v53 = *(v51 + 48);
  *(((v46 + v52 + 18) & ~v52) + v53) = *(((v47 + v52 + 18) & ~v52) + v53);
  v54 = v53 + (((v13 & 0xFFFFFFFFFFFFFFF8) + v52 + 26) & ~v52) + 1;
  v55 = &a2[v54];
  *(v54 + a1) = a2[v54];
  v56 = (v54 + a1) & 0xFFFFFFFFFFFFFFF8;
  v55 &= 0xFFFFFFFFFFFFFFF8;
  v57 = (v55 + 8);
  *(v56 + 8) = *(v55 + 8);
  v58 = v56 + 8;
  v61 = *(v55 + 16);
  v59 = (v55 + 16);
  v60 = v61;
  if (v61)
  {
    v62 = *(v57 + 2);
    *(v58 + 8) = v60;
    *(v58 + 16) = v62;
  }

  else
  {
    *(v58 + 8) = *v59;
  }

  return a1;
}

double SearchOverlayView.body.getter@<D0>(uint64_t a1@<X8>)
{
  if (*v1)
  {
    result = 0.0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    *(a1 + 48) = 0;
    *(a1 + 56) = 2;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
  }

  else
  {
    v4 = *(v1 + 72);
    v5 = *(v1 + 80);
    if (specialized Environment.wrappedValue.getter(v4, v5) == 7 || *(v1 + 50) != 1)
    {
      memset(v24, 0, 40);
      *&v24[40] = 512;
    }

    else
    {
      v6 = *(v1 + 49);
      outlined init with copy of ToolbarItemPlacement(v1 + 8, &v13);
      v14[25] = v6;
      *v24 = v13;
      *&v24[16] = *v14;
      *&v24[26] = *&v14[10];
    }

    if (*(v1 + 51) == 1)
    {
      specialized Environment.wrappedValue.getter(v4, v5);
    }

    outlined init with copy of ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?(v24, v12, type metadata accessor for ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?);
    outlined init with copy of ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?(v12, &v13, type metadata accessor for ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?);
    v22[0] = xmmword_18CD633F0;
    memset(&v22[1], 0, 96);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v15 = xmmword_18CD633F0;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    outlined init with copy of ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?(v22, v23, type metadata accessor for ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>?);
    outlined destroy of ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?(v24, type metadata accessor for ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?);
    v23[0] = xmmword_18CD633F0;
    memset(&v23[1], 0, 96);
    outlined destroy of ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?(v23, type metadata accessor for ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>?);
    outlined destroy of ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?(v12, type metadata accessor for ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?);
    v7 = v19;
    *(a1 + 96) = v18;
    *(a1 + 112) = v7;
    v8 = v21;
    *(a1 + 128) = v20;
    *(a1 + 144) = v8;
    v9 = v15;
    *(a1 + 32) = *&v14[16];
    *(a1 + 48) = v9;
    v10 = v17;
    *(a1 + 64) = v16;
    *(a1 + 80) = v10;
    result = *&v13;
    v11 = *v14;
    *a1 = v13;
    *(a1 + 16) = v11;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolbarSearchFieldStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 42))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 41);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance EnvironmentValues.SearchField(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<EnvironmentValues.SearchField>, lazy protocol witness table accessor for type EnvironmentValues.SearchField and conformance EnvironmentValues.SearchField, &type metadata for EnvironmentValues.SearchField, &lazy protocol witness table cache variable for type SourceInput<EnvironmentValues.SearchField> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type EnvironmentValues.SearchField and conformance EnvironmentValues.SearchField();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance TextFieldStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TextFieldStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t type metadata accessor for ResolvedTextFieldStyle(uint64_t a1)
{
  result = type metadata singleton initialization cache for ResolvedTextFieldStyle;
  if (!type metadata singleton initialization cache for ResolvedTextFieldStyle)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ResolvedTextFieldStyle(uint64_t a1)
{
  type metadata accessor for TextField<_TextFieldStyleLabel>(319, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void type metadata accessor for TextField<_TextFieldStyleLabel>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t instantiation function for generic protocol witness table for _TextFieldStyleLabel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _TextFieldStyleLabel and conformance _TextFieldStyleLabel();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for ViewInputFlagModifier<ProvidesEditMenuInteraction>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ViewInputFlagModifier<ProvidesEditMenuInteraction>)
  {
    lazy protocol witness table accessor for type ProvidesEditMenuInteraction and conformance ProvidesEditMenuInteraction();
    v1 = type metadata accessor for ViewInputFlagModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ViewInputFlagModifier<ProvidesEditMenuInteraction>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ProvidesEditMenuInteraction and conformance ProvidesEditMenuInteraction()
{
  result = lazy protocol witness table cache variable for type ProvidesEditMenuInteraction and conformance ProvidesEditMenuInteraction;
  if (!lazy protocol witness table cache variable for type ProvidesEditMenuInteraction and conformance ProvidesEditMenuInteraction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ProvidesEditMenuInteraction, &type metadata for ProvidesEditMenuInteraction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ProvidesEditMenuInteraction and conformance ProvidesEditMenuInteraction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProvidesEditMenuInteraction and conformance ProvidesEditMenuInteraction;
  if (!lazy protocol witness table cache variable for type ProvidesEditMenuInteraction and conformance ProvidesEditMenuInteraction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ProvidesEditMenuInteraction, &type metadata for ProvidesEditMenuInteraction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ProvidesEditMenuInteraction and conformance ProvidesEditMenuInteraction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProvidesEditMenuInteraction and conformance ProvidesEditMenuInteraction;
  if (!lazy protocol witness table cache variable for type ProvidesEditMenuInteraction and conformance ProvidesEditMenuInteraction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ProvidesEditMenuInteraction, &type metadata for ProvidesEditMenuInteraction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ProvidesEditMenuInteraction and conformance ProvidesEditMenuInteraction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProvidesEditMenuInteraction and conformance ProvidesEditMenuInteraction;
  if (!lazy protocol witness table cache variable for type ProvidesEditMenuInteraction and conformance ProvidesEditMenuInteraction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ProvidesEditMenuInteraction, &type metadata for ProvidesEditMenuInteraction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ProvidesEditMenuInteraction and conformance ProvidesEditMenuInteraction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProvidesEditMenuInteraction and conformance ProvidesEditMenuInteraction;
  if (!lazy protocol witness table cache variable for type ProvidesEditMenuInteraction and conformance ProvidesEditMenuInteraction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ProvidesEditMenuInteraction, &type metadata for ProvidesEditMenuInteraction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ProvidesEditMenuInteraction and conformance ProvidesEditMenuInteraction);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_UnaryViewAdaptor<EmptyView>, _PreferenceWritingModifier<SearchFieldConfiguration.Key>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_UnaryViewAdaptor<EmptyView>, _PreferenceWritingModifier<SearchFieldConfiguration.Key>>)
  {
    type metadata accessor for WritableKeyPath<TextFieldState, String>(255, &lazy cache variable for type metadata for _UnaryViewAdaptor<EmptyView>, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E697F378]);
    type metadata accessor for WritableKeyPath<TextFieldState, String>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<SearchFieldConfiguration.Key>, &type metadata for SearchFieldConfiguration.Key, &protocol witness table for SearchFieldConfiguration.Key, MEMORY[0x1E6980750]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_UnaryViewAdaptor<EmptyView>, _PreferenceWritingModifier<SearchFieldConfiguration.Key>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _UnaryViewAdaptor<EmptyView> and conformance _UnaryViewAdaptor<A>()
{
  result = lazy protocol witness table cache variable for type _UnaryViewAdaptor<EmptyView> and conformance _UnaryViewAdaptor<A>;
  if (!lazy protocol witness table cache variable for type _UnaryViewAdaptor<EmptyView> and conformance _UnaryViewAdaptor<A>)
  {
    type metadata accessor for WritableKeyPath<TextFieldState, String>(255, &lazy cache variable for type metadata for _UnaryViewAdaptor<EmptyView>, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E697F378]);
    result = swift_getWitnessTable(MEMORY[0x1E697F380], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UnaryViewAdaptor<EmptyView> and conformance _UnaryViewAdaptor<A>);
  }

  return result;
}

uint64_t _s7SwiftUI12_GraphInputsV11isSourceNily09AttributeC008OptionalH0VySbGxmAA9ViewAliasRzlFAA24SearchFieldConfigurationV6ScopesV_TtB5()
{

  return _s7SwiftUI12_GraphInputsV11isSourceNily09AttributeC008OptionalH0VySbGxmAA9ViewAliasRzlFAA17EnvironmentValuesV11SearchFieldV_TtB5Tm(&lazy cache variable for type metadata for SourceInput<SearchFieldConfiguration.Scopes>, lazy protocol witness table accessor for type SearchFieldConfiguration.Scopes and conformance SearchFieldConfiguration.Scopes, &type metadata for SearchFieldConfiguration.Scopes, lazy protocol witness table accessor for type SourceInput<SearchFieldConfiguration.Scopes> and conformance SourceInput<A>);
}

unint64_t lazy protocol witness table accessor for type SourceInput<SearchFieldConfiguration.Scopes> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<SearchFieldConfiguration.Scopes> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<SearchFieldConfiguration.Scopes> and conformance SourceInput<A>)
  {
    type metadata accessor for StyleContextWriter<SidebarListStyleContext>(255, &lazy cache variable for type metadata for SourceInput<SearchFieldConfiguration.Scopes>, lazy protocol witness table accessor for type SearchFieldConfiguration.Scopes and conformance SearchFieldConfiguration.Scopes, &type metadata for SearchFieldConfiguration.Scopes, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<SearchFieldConfiguration.Scopes> and conformance SourceInput<A>);
  }

  return result;
}

uint64_t SearchPrimitiveModifier.SearchConfigModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v26 = a2;
  swift_getWitnessTable(protocol conformance descriptor for SearchPrimitiveModifier<A>.SearchConfigModifier);
  v3 = type metadata accessor for _ViewModifier_Content();
  v4 = *(a1 + 24);
  v24 = *(a1 + 16);
  v6 = type metadata accessor for SearchField(255, v24, v4, v5);
  _s7SwiftUI5StateVySbGMaTm_2(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  v7 = type metadata accessor for ModifiedContent();
  type metadata accessor for _EnvironmentKeyWritingModifier<TriggerSubmitAction?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TriggerSubmitAction?>, &lazy cache variable for type metadata for TriggerSubmitAction?, &type metadata for TriggerSubmitAction, MEMORY[0x1E6980A08]);
  v8 = type metadata accessor for ModifiedContent();
  v9 = lazy protocol witness table accessor for type EnvironmentValues.SearchField and conformance EnvironmentValues.SearchField();
  v34[0] = swift_getWitnessTable(protocol conformance descriptor for SearchField<A>, v6);
  v34[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>();
  v10 = MEMORY[0x1E697E858];
  v33[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v7, v34);
  v33[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TriggerSubmitAction?> and conformance _EnvironmentKeyWritingModifier<A>();
  WitnessTable = swift_getWitnessTable(v10, v8, v33);
  v32[0] = &type metadata for EnvironmentValues.SearchField;
  v32[1] = v8;
  v32[2] = v9;
  v32[3] = WitnessTable;
  type metadata accessor for StaticSourceWriter(255, v32);
  v12 = type metadata accessor for ModifiedContent();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v23 - v18;
  v28 = v24;
  v29 = v4;
  v30 = v25;
  v20 = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v17);
  View.viewAlias<A, B>(_:_:)(&type metadata for EnvironmentValues.SearchField, partial apply for closure #1 in SearchPrimitiveModifier.SearchConfigModifier.body(content:), v27, v3, &type metadata for EnvironmentValues.SearchField, v8, v20);
  v31[0] = v20;
  v31[1] = &protocol witness table for StaticSourceWriter<A, B>;
  swift_getWitnessTable(v10, v12, v31);
  static ViewBuilder.buildExpression<A>(_:)();
  v21 = *(v13 + 8);
  v21(v15, v12);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v21)(v19, v12);
}

uint64_t closure #1 in SearchPrimitiveModifier.SearchConfigModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SearchField(255, a2, a3, a4);
  _s7SwiftUI5StateVySbGMaTm_2(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  v7 = type metadata accessor for ModifiedContent();
  type metadata accessor for _EnvironmentKeyWritingModifier<TriggerSubmitAction?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TriggerSubmitAction?>, &lazy cache variable for type metadata for TriggerSubmitAction?, &type metadata for TriggerSubmitAction, MEMORY[0x1E6980A08]);
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v27 - v13;
  v16 = type metadata accessor for SearchPrimitiveModifier.SearchConfigModifier(0, a2, a3, v15);
  SearchPrimitiveModifier.SearchConfigModifier.field.getter(v16, v17, v18, v19);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SearchField<A>, v6);
  v21 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>();
  v28[0] = WitnessTable;
  v28[1] = v21;
  v22 = MEMORY[0x1E697E858];
  v23 = swift_getWitnessTable(MEMORY[0x1E697E858], v7, v28);
  v24 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TriggerSubmitAction?> and conformance _EnvironmentKeyWritingModifier<A>();
  v27[0] = v23;
  v27[1] = v24;
  swift_getWitnessTable(v22, v8, v27);
  static ViewBuilder.buildExpression<A>(_:)();
  v25 = *(v9 + 8);
  v25(v11, v8);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v25)(v14, v8);
}

uint64_t SearchZipLocation.update()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a1;
  v32 = a2;
  v29 = a4;
  v30 = MEMORY[0x1E6968848];
  type metadata accessor for ((SearchFieldState, AttributedString), Bool)(0, &lazy cache variable for type metadata for (AttributedString, Bool), MEMORY[0x1E6968848]);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  type metadata accessor for ((SearchFieldState, AttributedString), Bool)(0, &lazy cache variable for type metadata for (SearchFieldState, Bool), type metadata accessor for SearchFieldState);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v27 - v18;
  v28 = v20;
  v21 = *(v20 + 48);
  v22 = dispatch thunk of AnyLocation.update()();
  v19[v21] = v22 & 1;
  v23 = *(v5 + 56);
  v10[v23] = dispatch thunk of AnyLocation.update()() & 1;
  outlined init with copy of (SearchFieldState, Bool)(v19, v16, &lazy cache variable for type metadata for (SearchFieldState, Bool), type metadata accessor for SearchFieldState);
  outlined init with take of (SearchFieldState, AttributedString)(v16, v31, type metadata accessor for SearchFieldState);
  outlined init with take of (SearchFieldState, Bool)(v10, v7, &lazy cache variable for type metadata for (AttributedString, Bool), v30);
  v24 = type metadata accessor for AttributedString();
  (*(*(v24 - 8) + 32))(v32, v7, v24);
  if (v22)
  {
    outlined destroy of (SearchFieldState, Bool)(v19, &lazy cache variable for type metadata for (SearchFieldState, Bool), type metadata accessor for SearchFieldState);
    return 1;
  }

  else
  {
    outlined init with take of (SearchFieldState, Bool)(v19, v13, &lazy cache variable for type metadata for (SearchFieldState, Bool), type metadata accessor for SearchFieldState);
    v25 = v13[*(v28 + 48)];
    _s7SwiftUI16SearchFieldStateVWOhTm_4(v13, type metadata accessor for SearchFieldState);
  }

  return v25;
}

uint64_t assignWithCopy for SearchFieldState(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  v6 = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 4) = v6;
  v7 = a3[9];
  v8 = type metadata accessor for AttributedString();
  (*(*(v8 - 8) + 24))(a1 + v7, a2 + v7, v8);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  v9 = a3[11];
  v10 = a1 + v9;
  v11 = a2 + v9;
  *v10 = *v11;
  *(v10 + 4) = *(v11 + 4);
  return a1;
}

uint64_t SearchField.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v58 = *(a1 - 8);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v57 = &v44[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Binding<SearchFieldState>(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v61 = &v44[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for ResolvedSearchFieldStyle(255);
  v6 = *(a1 + 16);
  type metadata accessor for TextFieldStyleModifier<SearchFieldConfigurationTextFieldStyle>(255, &lazy cache variable for type metadata for TextFieldStyleModifier<SearchFieldConfigurationTextFieldStyle>, lazy protocol witness table accessor for type SearchFieldConfigurationTextFieldStyle and conformance SearchFieldConfigurationTextFieldStyle, &type metadata for SearchFieldConfigurationTextFieldStyle, type metadata accessor for TextFieldStyleModifier);
  v55 = v6;
  v7 = type metadata accessor for ModifiedContent();
  type metadata accessor for TextFieldStyleModifier<SearchFieldConfigurationTextFieldStyle>(255, &lazy cache variable for type metadata for TokenFieldStyleModifier<SearchFieldConfigurationTokenFieldStyle>, lazy protocol witness table accessor for type SearchFieldConfigurationTokenFieldStyle and conformance SearchFieldConfigurationTokenFieldStyle, &type metadata for SearchFieldConfigurationTokenFieldStyle, type metadata accessor for TokenFieldStyleModifier);
  v8 = type metadata accessor for ModifiedContent();
  v9 = lazy protocol witness table accessor for type SearchFieldConfiguration.Control and conformance SearchFieldConfiguration.Control();
  v10 = *(a1 + 24);
  v73[0] = v10;
  v73[1] = &protocol witness table for TextFieldStyleModifier<A>;
  v54 = v10;
  v11 = MEMORY[0x1E697E858];
  v72[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v7, v73);
  v72[1] = &protocol witness table for TokenFieldStyleModifier<A>;
  WitnessTable = swift_getWitnessTable(v11, v8, v72);
  v68 = &type metadata for SearchFieldConfiguration.Control;
  v69 = v8;
  v51 = v8;
  v70 = v9;
  v71 = WitnessTable;
  v49 = WitnessTable;
  type metadata accessor for StaticSourceWriter(255, &v68);
  v13 = type metadata accessor for ModifiedContent();
  IsNotConfiguredFromStyle = type metadata accessor for SearchField.IsNotConfiguredFromStyle(255, v6, v10, v14);
  v16 = swift_getWitnessTable(protocol conformance descriptor for SearchField<A>.IsNotConfiguredFromStyle, IsNotConfiguredFromStyle);
  HasSuggestions = lazy protocol witness table accessor for type SearchHasSuggestions and conformance SearchHasSuggestions();
  v68 = IsNotConfiguredFromStyle;
  v69 = &type metadata for SearchHasSuggestions;
  v70 = v16;
  v71 = HasSuggestions;
  v18 = type metadata accessor for AndOperationViewInputPredicate();
  type metadata accessor for StaticSourceWriter<SearchFieldConfiguration.Suggestions, _UnaryViewAdaptor<ModifiedContent<TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>, DynamicHiddenModifier>?>>(255);
  v19 = type metadata accessor for StaticIf();
  v20 = type metadata accessor for ModifiedContent();
  v67[0] = lazy protocol witness table accessor for type SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment(&lazy protocol witness table cache variable for type ResolvedSearchFieldStyle and conformance ResolvedSearchFieldStyle, type metadata accessor for ResolvedSearchFieldStyle, protocol conformance descriptor for ResolvedSearchFieldStyle);
  v67[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v21 = swift_getWitnessTable(v11, v13, v67);
  v66[0] = swift_getWitnessTable(MEMORY[0x1E69809A0], v18);
  v66[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v66[2] = MEMORY[0x1E697E100];
  v22 = swift_getWitnessTable(MEMORY[0x1E6981CE0], v19, v66);
  v65[0] = v21;
  v65[1] = v22;
  v52 = v20;
  v50 = swift_getWitnessTable(v11, v20, v65);
  v68 = v20;
  v69 = v8;
  v70 = v50;
  v71 = WitnessTable;
  v23 = type metadata accessor for SearchFieldConfigurationReader(0, &v68);
  v53 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v44[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v26);
  v48 = &v44[-v27];
  v28 = v56;
  SearchField.$state.getter(v61);
  v29 = v28;
  v47 = SearchField.$isPresented.getter(a1);
  v46 = v30;
  v45 = v31;
  v32 = v58;
  v33 = v57;
  v34 = v28;
  v35 = a1;
  (*(v58 + 16))(v57, v34, a1);
  v36 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v37 = swift_allocObject();
  v38 = v55;
  v39 = v54;
  *(v37 + 16) = v55;
  *(v37 + 24) = v39;
  (*(v32 + 32))(v37 + v36, v33, v35);
  v62 = v38;
  v63 = v39;
  v64 = v29;
  *(&v43 + 1) = v51;
  *&v43 = v52;
  SearchFieldConfigurationReader.init(state:isPresented:content:source:)(v61, v47, v46, v45 & 1, partial apply for closure #1 in SearchField.body.getter, v37, partial apply for closure #2 in SearchField.body.getter, v25, v43, v50, v49);
  v40 = v48;
  static ViewBuilder.buildExpression<A>(_:)();
  v41 = *(v53 + 8);
  v41(v25, v23);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v41)(v40, v23);
}

uint64_t sub_18BEEAB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for SearchField(0, v5, *(v4 + 24), a4);
  v7 = v4 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80));
  type metadata accessor for StateOrBinding<SearchFieldState>(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    type metadata accessor for Binding<SearchFieldState>(0);
    v9 = *(v8 + 32);
    v10 = v9 + *(type metadata accessor for SearchFieldState(0) + 36);
    v11 = type metadata accessor for AttributedString();
    (*(*(v11 - 8) + 8))(v7 + v10, v11);
  }

  else
  {
    v12 = *(type metadata accessor for SearchFieldState(0) + 36);
    v13 = type metadata accessor for AttributedString();
    (*(*(v13 - 8) + 8))(v7 + v12, v13);
    type metadata accessor for State<SearchFieldState>(0);
  }

  v14 = outlined consume of StateOrBinding<Bool>(*(v7 + *(v6 + 36)), *(v7 + *(v6 + 36) + 8), *(v7 + *(v6 + 36) + 16), *(v7 + *(v6 + 36) + 17));
  (*(*(v5 - 8) + 8))(v7 + *(v6 + 40), v5, v14);

  return swift_deallocObject();
}

void type metadata accessor for _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t SearchField.$state.getter@<X0>(void *a1@<X8>)
{
  type metadata accessor for State<SearchFieldState>(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StateOrBinding<SearchFieldState>(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SearchBoundProperty<AttributedString>(v1, v8, type metadata accessor for StateOrBinding<SearchFieldState>);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return _s7SwiftUI7BindingVyAA16SearchFieldStateVGWObTm_0(v8, a1, type metadata accessor for Binding<SearchFieldState>);
  }

  _s7SwiftUI7BindingVyAA16SearchFieldStateVGWObTm_0(v8, v5, type metadata accessor for State<SearchFieldState>);
  State.projectedValue.getter();
  return outlined destroy of StateOrBinding<SearchFieldState>(v5, type metadata accessor for State<SearchFieldState>);
}

uint64_t SearchField.$isPresented.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  v3 = *v2;
  if (*(v2 + 17))
  {
  }

  else
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    State.projectedValue.getter();
    return v5;
  }

  return v3;
}

uint64_t SearchFieldConfigurationReader.init(state:isPresented:content:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void)@<X6>, uint64_t a8@<X8>, __int128 a9, uint64_t a10, uint64_t a11)
{
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGWObTm_1(a1, a8, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v18 = type metadata accessor for SearchFieldConfigurationReader(0, &v22);
  v19 = a8 + *(v18 + 52);
  *v19 = a2;
  *(v19 + 8) = a3;
  *(v19 + 16) = a4;
  v20 = (a8 + *(v18 + 56));
  *v20 = a5;
  v20[1] = a6;
  return a7();
}

uint64_t SearchField.resolvedControl.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for TextFieldStyleModifier<SearchFieldConfigurationTextFieldStyle>(255, &lazy cache variable for type metadata for TextFieldStyleModifier<SearchFieldConfigurationTextFieldStyle>, lazy protocol witness table accessor for type SearchFieldConfigurationTextFieldStyle and conformance SearchFieldConfigurationTextFieldStyle, &type metadata for SearchFieldConfigurationTextFieldStyle, type metadata accessor for TextFieldStyleModifier);
  v3 = type metadata accessor for ModifiedContent();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - v5;
  v7 = *(a1 + 24);
  v8 = lazy protocol witness table accessor for type SearchFieldConfigurationTextFieldStyle and conformance SearchFieldConfigurationTextFieldStyle();
  View.textFieldStyle<A>(_:)(v8, v2, &type metadata for SearchFieldConfigurationTextFieldStyle, v7);
  v12[0] = v7;
  v12[1] = &protocol witness table for TextFieldStyleModifier<A>;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v12);
  v10 = lazy protocol witness table accessor for type SearchFieldConfigurationTokenFieldStyle and conformance SearchFieldConfigurationTokenFieldStyle();
  View.tokenFieldStyle<A>(_:)(v10, v3, &type metadata for SearchFieldConfigurationTokenFieldStyle, WitnessTable);
  return (*(v4 + 8))(v6, v3);
}

uint64_t View.textFieldStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TextFieldStyleModifier(0, v11, v13, v12);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v20 - v17;
  (*(v8 + 16))(v10, a1, a3, v16);
  (*(v8 + 32))(v18, v10, a3);
  MEMORY[0x18D00A570](v18, a2, v14, a4);
  return (*(v15 + 8))(v18, v14);
}

uint64_t *initializeWithCopy for SearchFieldConfigurationReader(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 80) & 0xFC ^ 0xFFFFFFFFFFFFFFFCLL;
  v10 = ((v4 + v8 + 8) & v9);
  v11 = ((v5 + v8 + 8) & v9);
  *v10 = *v11;
  v10[1] = v11[1];
  v10[2] = v11[2];
  v10[3] = v11[3];
  v12 = (v10 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v13 = (v11 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  LOBYTE(v11) = *(v13 + 4);
  *v12 = *v13;
  *(v12 + 4) = v11;
  v14 = (v8 + 5 + v12) & ~v8;
  v15 = (v8 + 5 + v13) & ~v8;
  v17 = v7 + 16;
  v16 = *(v7 + 16);

  v16(v14, v15, v6);
  v18 = *(v17 + 48);
  *(v18 + v14) = *(v18 + v15);
  v19 = (v18 + v14) & 0xFFFFFFFFFFFFFFFCLL;
  v20 = (v18 + v15) & 0xFFFFFFFFFFFFFFFCLL;
  v21 = *(v20 + 8);
  *(v19 + 4) = *(v20 + 4);
  *(v19 + 8) = v21;
  v22 = ((v8 + 16) & v9) + ((v18 + ((v8 + 9) & ~v8)) & 0xFFFFFFFFFFFFFFFCLL) + 9;
  v23 = a1 + v22;
  v24 = a2 + v22;
  v25 = (v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v25 = *v26;
  *(v25 + 8) = *(v26 + 8);
  *(v25 + 16) = *(v26 + 16);
  v27 = ((v23 + 31) & 0xFFFFFFFFFFFFFFF8);
  v28 = ((v24 + 31) & 0xFFFFFFFFFFFFFFF8);
  v29 = v28[1];
  *v27 = *v28;
  v27[1] = v29;
  v30 = *(a3 + 24);
  v31 = *(*(v30 - 8) + 16);
  v32 = *(*(v30 - 8) + 80);
  v33 = v27 + v32 + 16;
  v34 = v28 + v32 + 16;

  v31(v33 & ~v32, v34 & ~v32, v30);
  return a1;
}

uint64_t destroy for SearchFieldConfigurationReader(void *a1, uint64_t a2)
{
  v4 = a1 + 15;

  v5 = type metadata accessor for AttributedString();
  v6 = *(v5 - 8);
  v7 = v6 + 8;
  v8 = *(v6 + 80);
  (*(v6 + 8))((v8 + (((((v4 & 0xFFFFFFFFFFFFFFF8) + (v8 | 3) + 8) & ~(v8 | 3)) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 5) & ~v8, v5);
  v9 = ((-17 - v8) | v8 | 3) - a1 + ((((-10 - v8) | v8) - *(v7 + 56)) | 3);

  v10 = *(*(a2 + 24) - 8);
  v11 = *(v10 + 8);
  v12 = (((38 - v9) & 0xFFFFFFFFFFFFFFF8) + *(v10 + 80) + 16) & ~*(v10 + 80);

  return v11(v12);
}

uint64_t initializeWithCopy for TextFieldState(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = (a2 + 16);
  v6 = *(a2 + 16);

  if (v6)
  {
    *(a1 + 16) = v6;
    v7 = *(a2 + 40);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = v7;
  }

  else
  {
    v8 = v5[1];
    *(a1 + 16) = *v5;
    *(a1 + 32) = v8;
  }

  v9 = *(a2 + 48);
  if (v9)
  {
    *(a1 + 48) = v9;
    v10 = *(a2 + 72);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = v10;
  }

  else
  {
    v11 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v11;
  }

  *(a1 + 80) = *(a2 + 80);
  v12 = *(a2 + 88);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = v12;
  return a1;
}

__n128 __swift_memcpy92_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

double destroy for TextFieldState(void *a1)
{

  if (a1[2])
  {
  }

  if (a1[6])
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextFieldState(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 92))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t TextField.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for ResolvedTextFieldStyle(0);
  MEMORY[0x1EEE9AC00](v29);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v31 = lazy protocol witness table accessor for type _TextFieldStyleLabel and conformance _TextFieldStyleLabel();
  v9 = *(a1 + 24);
  v42[0] = &type metadata for _TextFieldStyleLabel;
  v42[1] = v8;
  v42[2] = v31;
  v42[3] = v9;
  type metadata accessor for StaticSourceWriter(255, v42);
  v10 = type metadata accessor for ModifiedContent();
  v33 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  type metadata accessor for ViewInputFlagModifier<ProvidesEditMenuInteraction>(255);
  v13 = type metadata accessor for ModifiedContent();
  v34 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v32 = &v28 - v18;
  v19 = *(v3 + 16);
  v20 = v30;
  v19(v5, v30, a1, v17);
  TextField.init<A>(_:)(v5, v8, v9, v7);
  v37 = v8;
  v38 = v9;
  v39 = v20;
  v21 = lazy protocol witness table accessor for type ResolvedTextFieldStyle and conformance ResolvedTextFieldStyle(&lazy protocol witness table cache variable for type ResolvedTextFieldStyle and conformance ResolvedTextFieldStyle, type metadata accessor for ResolvedTextFieldStyle, "!6\rbTY\t");
  View.viewAlias<A, B>(_:_:)(&type metadata for _TextFieldStyleLabel, partial apply for closure #1 in TextField.body.getter, v36, v29, &type metadata for _TextFieldStyleLabel, v8, v21);
  outlined destroy of ResolvedTextFieldStyle(v7, type metadata accessor for ResolvedTextFieldStyle);
  v41[0] = v21;
  v41[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v22 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v10, v41);
  lazy protocol witness table accessor for type ProvidesEditMenuInteraction and conformance ProvidesEditMenuInteraction();
  View.input<A>(_:)();
  (*(v33 + 8))(v12, v10);
  v24 = lazy protocol witness table accessor for type ResolvedTextFieldStyle and conformance ResolvedTextFieldStyle(&lazy protocol witness table cache variable for type ViewInputFlagModifier<ProvidesEditMenuInteraction> and conformance ViewInputFlagModifier<A>, type metadata accessor for ViewInputFlagModifier<ProvidesEditMenuInteraction>, MEMORY[0x1E697FD30]);
  v40[0] = WitnessTable;
  v40[1] = v24;
  swift_getWitnessTable(v22, v13, v40);
  v25 = v32;
  static ViewBuilder.buildExpression<A>(_:)();
  v26 = *(v34 + 8);
  v26(v15, v13);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v26)(v25, v13);
}

uint64_t TextField.$text.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t outlined init with copy of State<TextFieldState>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void, uint64_t))
{
  type metadata accessor for Binding<String>(0, a3, &type metadata for TextFieldState, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s7SwiftUI5StateVyAA09TextFieldC0VGWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void, uint64_t))
{
  _s7SwiftUI7BindingVyAA14TextFieldStateVGMaTm_0(0, a3, &type metadata for TextFieldState, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s7SwiftUI5StateVyAA09TextFieldC0VGWOcTm_1(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void, uint64_t))
{
  _s14AttributeGraph0A0Vy7SwiftUI16PlatformItemListVGMaTm_2(0, a3, &type metadata for TextFieldState, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type TextFieldStateTextProjection and conformance TextFieldStateTextProjection()
{
  result = lazy protocol witness table cache variable for type TextFieldStateTextProjection and conformance TextFieldStateTextProjection;
  if (!lazy protocol witness table cache variable for type TextFieldStateTextProjection and conformance TextFieldStateTextProjection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextFieldStateTextProjection, &type metadata for TextFieldStateTextProjection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextFieldStateTextProjection and conformance TextFieldStateTextProjection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextFieldStateTextProjection and conformance TextFieldStateTextProjection;
  if (!lazy protocol witness table cache variable for type TextFieldStateTextProjection and conformance TextFieldStateTextProjection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextFieldStateTextProjection, &type metadata for TextFieldStateTextProjection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextFieldStateTextProjection and conformance TextFieldStateTextProjection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextFieldStateTextProjection and conformance TextFieldStateTextProjection;
  if (!lazy protocol witness table cache variable for type TextFieldStateTextProjection and conformance TextFieldStateTextProjection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextFieldStateTextProjection, &type metadata for TextFieldStateTextProjection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextFieldStateTextProjection and conformance TextFieldStateTextProjection);
  }

  return result;
}

uint64_t outlined destroy of ResolvedTextFieldStyle(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined assign with copy of Binding<TextSelection?>?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<TextSelection?>?(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t closure #1 in TextField.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TextField(0, v6, v7, v8);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v3 + 8))(v5, a2);
}

uint64_t destroy for ResolvedTextFieldStyle(uint64_t a1)
{

  if (*(a1 + 64))
  {
    outlined consume of Text.Storage(*(a1 + 40), *(a1 + 48), *(a1 + 56));
  }

  outlined consume of StateOrBinding<TextFieldState>(*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160), *(a1 + 168), *(a1 + 176), *(a1 + 180));
  type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v3 = a1 + *(v2 + 56);
  type metadata accessor for Binding<TextSelection?>(0);
  v5 = v4;
  result = (*(*(v4 - 8) + 48))(v3, 1, v4);
  if (!result)
  {

    v7 = *(v5 + 32);
    v8 = type metadata accessor for TextSelection(0);
    result = (*(*(v8 - 8) + 48))(v3 + v7, 1, v8);
    if (!result)
    {
      type metadata accessor for TextSelection.Indices(0);
      result = swift_getEnumCaseMultiPayload();
      if (result == 1)
      {
        type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        v10 = *(*(v9 - 8) + 8);

        return v10(v3 + v7, v9);
      }
    }
  }

  return result;
}

double outlined consume of StateOrBinding<TextFieldState>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15)
{
  if (a15)
  {

    outlined consume of TextFieldState.FormatActions?(a5, a6, a7, a8);
    return outlined consume of TextFieldState.FormatActions?(a9, a10, a11, a12);
  }

  else
  {

    outlined consume of TextFieldState.FormatActions?(a3, a4, a5, a6);
    outlined consume of TextFieldState.FormatActions?(a7, a8, a9, a10);
  }

  return result;
}

uint64_t SearchFieldConfigurationTextFieldStyle.value(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v4 - 8);
  type metadata accessor for Binding<AttributedString>(0);
  v32 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v30 - v8);
  v10 = *(a1 + 180);
  v11 = *(a1 + 120);
  v12 = *(a1 + 152);
  if (v10)
  {
    v54 = *(a1 + 136);
    v55[0] = v12;
    *(v55 + 12) = *(a1 + 164);
    v13 = *(a1 + 88);
    v50 = *(a1 + 72);
    v51 = v13;
    v52 = *(a1 + 104);
    v53 = v11;
    v43 = v50;
    v44 = v13;
    v45 = v52;
    v46 = v11;
    v47 = v54;
    *v48 = v12;
    *&v48[12] = *(v55 + 12);
    v49 = v10;
    outlined init with copy of Binding<TextFieldState>(&v43, v41, &lazy cache variable for type metadata for Binding<TextFieldState>, MEMORY[0x1E6981948]);
  }

  else
  {
    v38 = *(a1 + 136);
    v39 = v12;
    v40 = *(a1 + 168);
    v14 = *(a1 + 88);
    v34 = *(a1 + 72);
    v35 = v14;
    v36 = *(a1 + 104);
    v37 = v11;
    v47 = v38;
    *v48 = v12;
    *&v48[12] = *(a1 + 164);
    v43 = v34;
    v44 = v14;
    v45 = v36;
    v46 = v11;
    v49 = v10;
    v15 = MEMORY[0x1E6981790];
    outlined init with copy of Binding<TextFieldState>(&v43, &v50, &lazy cache variable for type metadata for State<TextFieldState>, MEMORY[0x1E6981790]);
    type metadata accessor for Binding<TextFieldState>(0, &lazy cache variable for type metadata for State<TextFieldState>, v15);
    State.projectedValue.getter();
    v41[4] = v38;
    v41[5] = v39;
    v42 = v40;
    v41[0] = v34;
    v41[1] = v35;
    v41[2] = v36;
    v41[3] = v37;
    outlined destroy of Binding<TextFieldState>(v41, &lazy cache variable for type metadata for State<TextFieldState>, v15);
  }

  v47 = v54;
  *v48 = v55[0];
  *&v48[12] = *(v55 + 12);
  v43 = v50;
  v44 = v51;
  v45 = v52;
  v46 = v53;
  *&v41[0] = swift_getKeyPath();
  type metadata accessor for WritableKeyPath<TextFieldState, String>(0, &lazy cache variable for type metadata for WritableKeyPath<TextFieldState, String>, &type metadata for TextFieldState, MEMORY[0x1E69E6158], MEMORY[0x1E69E6CE0]);
  lazy protocol witness table accessor for type WritableKeyPath<TextFieldState, String> and conformance WritableKeyPath<A, B>();

  dispatch thunk of AnyLocation.projecting<A>(_:)();

  v16 = v43;

  outlined destroy of Binding<TextFieldState>(&v43, &lazy cache variable for type metadata for Binding<TextFieldState>, MEMORY[0x1E6981948]);

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  lazy protocol witness table accessor for type StringToAttributedStringProjection and conformance StringToAttributedStringProjection();
  v17 = dispatch thunk of AnyLocation.projecting<A>(_:)();

  *v9 = v16;
  v9[1] = v17;
  v18 = v33;
  result = outlined init with copy of Binding<AttributedString>(v9, v33);
  v20 = *(a1 + 64);
  if (v20)
  {
    v21 = *(a1 + 56);
    v24 = a1 + 40;
    v23 = *(a1 + 40);
    v22 = *(v24 + 8);
    v25 = v21 & 1;
    outlined copy of Text.Storage(v23, v22, v21 & 1);

    outlined destroy of Binding<AttributedString>(v9);
    v26 = v31;
    outlined init with take of Binding<AttributedString>(v18, v31);
    v27 = type metadata accessor for SearchFieldConfiguration.Data(0);
    v28 = v26 + *(v27 + 20);
    *v28 = v23;
    *(v28 + 8) = v22;
    *(v28 + 16) = v25;
    *(v28 + 24) = v20;
    v29 = v26 + *(v27 + 24);
    *v29 = 0;
    *(v29 + 8) = -1;
    return (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WritableKeyPath<TextFieldState, String> and conformance WritableKeyPath<A, B>()
{
  result = lazy protocol witness table cache variable for type WritableKeyPath<TextFieldState, String> and conformance WritableKeyPath<A, B>;
  if (!lazy protocol witness table cache variable for type WritableKeyPath<TextFieldState, String> and conformance WritableKeyPath<A, B>)
  {
    type metadata accessor for WritableKeyPath<TextFieldState, String>(255, &lazy cache variable for type metadata for WritableKeyPath<TextFieldState, String>, &type metadata for TextFieldState, MEMORY[0x1E69E6158], MEMORY[0x1E69E6CE0]);
    result = swift_getWitnessTable(MEMORY[0x1E6982050], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type WritableKeyPath<TextFieldState, String> and conformance WritableKeyPath<A, B>);
  }

  return result;
}

uint64_t outlined destroy of Binding<TextFieldState>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  type metadata accessor for Binding<TextFieldState>(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of Binding<AttributedString>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<AttributedString>(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Binding<AttributedString>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<AttributedString>(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_18BEECB0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }
}

uint64_t destroy for SearchFieldConfiguration.Data(char *a1, uint64_t a2)
{

  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v5 = *(v4 + 32);
  v6 = type metadata accessor for AttributedString();
  (*(*(v6 - 8) + 8))(&a1[v5], v6);
  outlined consume of Text.Storage(*&a1[*(a2 + 20)], *&a1[*(a2 + 20) + 8], a1[*(a2 + 20) + 16]);

  v8 = &a1[*(a2 + 24)];
  v9 = v8[8];
  if (v9 != 255)
  {
    v10 = *v8;

    return outlined consume of PlatformItemCollection.Storage(v10, v9 & 1);
  }

  return result;
}

uint64_t outlined init with copy of SearchFieldConfiguration.Data?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

double closure #1 in SearchFieldConfigurationReader.MakeContent.config.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v51 = a8;
  v44 = a3;
  v45 = a5;
  v46 = a2;
  v50 = a1;
  v52[0] = a4;
  v52[1] = a5;
  v52[2] = a6;
  v52[3] = a7;
  v47 = type metadata accessor for SearchFieldConfigurationReader(0, v52);
  v12 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v14 = &v42 - v13;
  v49 = type metadata accessor for SearchFieldState;
  v48 = MEMORY[0x1E6981948];
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v53 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v42 - v18);
  SearchFieldConfigurationReader.MakeContent.reader.getter(a4, a5, a6, a7, v14);
  v20 = v47;
  v21 = &v14[*(v47 + 52)];
  v22 = *v21;
  v23 = *(v21 + 1);
  v43 = v21[16];
  v24 = *(v12 + 8);

  v24(v14, v20);
  v41 = a7;
  v25 = v50;
  LODWORD(v14) = v44;
  SearchFieldConfigurationReader.MakeContent.state(text:isPresented:)(v50, v22, v23, v43, v46, v44, a4, v45, v19, a6, v41);

  outlined init with copy of SearchFieldConfiguration.Data?(v19, v53, &lazy cache variable for type metadata for Binding<SearchFieldState>, v49, v48);
  v26 = type metadata accessor for SearchFieldConfiguration.Data(0);
  v27 = v25 + *(v26 + 24);
  v28 = *(v27 + 8);
  v49 = *v27;
  LODWORD(v48) = v28;
  outlined copy of PlatformItemCollection?(v49, v28);
  if (*MEMORY[0x1E698D3F8] == v14)
  {
    v29 = 2;
  }

  else
  {
    v29 = *AGGraphGetValue();
  }

  v30 = MEMORY[0x1E6981948];
  _s7SwiftUI24SearchFieldConfigurationV4DataVSgWOhTm_0(v19, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  LODWORD(v47) = (v29 == 2) | v29;
  v31 = v25 + *(v26 + 20);
  v32 = *v31;
  v33 = *(v31 + 8);
  v34 = *(v31 + 16);
  v50 = *(v31 + 24);
  v35 = type metadata accessor for SearchFieldConfiguration(0);
  v36 = v35[7];
  v37 = v51;
  v38 = v51 + v35[6];
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGWObTm_1(v53, v51, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, v30);
  *v38 = v49;
  *(v38 + 8) = v48;
  *(v37 + v36) = v47 & 1;
  v39 = v37 + v35[8];
  *v39 = v32;
  *(v39 + 8) = v33;
  *(v39 + 16) = v34;
  *(v39 + 24) = v50;
  outlined copy of Text.Storage(v32, v33, v34);

  return result;
}

uint64_t SearchFieldConfigurationReader.MakeContent.reader.getter@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  v7 = type metadata accessor for SearchFieldConfigurationReader(0, v10);
  Value = AGGraphGetValue();
  return (*(*(v7 - 8) + 16))(a6, Value, v7);
}

uint64_t SearchFieldConfigurationReader.MakeContent.state(text:isPresented:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v44 = a6;
  v49 = a4;
  v47 = a2;
  v48 = a3;
  v46 = a1;
  v50 = a9;
  v38 = a10;
  v39 = a11;
  v42 = type metadata accessor for SearchFieldState;
  v43 = a5;
  v13 = MEMORY[0x1E6981948];
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v45 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  v51 = a7;
  v52 = a8;
  v53 = a10;
  v54 = a11;
  v17 = type metadata accessor for SearchFieldConfigurationReader(0, &v51);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v37 - v19;
  v41 = type metadata accessor for (SearchFieldState, AttributedString);
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(0, &lazy cache variable for type metadata for Binding<(SearchFieldState, AttributedString)>, type metadata accessor for (SearchFieldState, AttributedString), v13);
  v40 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v37 - v22;
  type metadata accessor for Binding<((SearchFieldState, AttributedString), Bool)>(0);
  v25 = v24 - 8;
  MEMORY[0x1EEE9AC00](v24);
  v27 = (&v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  SearchFieldConfigurationReader.MakeContent.reader.getter(a7, a8, v38, v39, v20);
  v28 = v42;
  outlined init with copy of SearchFieldConfiguration.Data?(v20, v16, &lazy cache variable for type metadata for Binding<SearchFieldState>, v42, v13);
  (*(v18 + 8))(v20, v17);
  type metadata accessor for AttributedString();
  v29 = v45;
  Binding.zip<A>(with:)();
  _s7SwiftUI24SearchFieldConfigurationV4DataVSgWOhTm_0(v16, &lazy cache variable for type metadata for Binding<SearchFieldState>, v28, v13);
  v51 = v47;
  v52 = v48;
  LOBYTE(v53) = v49;
  Binding.zip<A>(with:)();
  _s7SwiftUI24SearchFieldConfigurationV4DataVSgWOhTm_0(v23, &lazy cache variable for type metadata for Binding<(SearchFieldState, AttributedString)>, v41, v13);
  v30 = v27 + *(v25 + 40);
  type metadata accessor for (SearchFieldState, AttributedString)(0);
  v32 = *(v31 + 48);
  type metadata accessor for ((SearchFieldState, AttributedString), Bool)(0, &lazy cache variable for type metadata for ((SearchFieldState, AttributedString), Bool), type metadata accessor for (SearchFieldState, AttributedString));
  v34 = v50;
  SearchStateProjection.get(base:)(v30, &v30[v32], v30[*(v33 + 48)], v50 + *(v29 + 32));
  lazy protocol witness table accessor for type SearchStateProjection and conformance SearchStateProjection();
  v35 = dispatch thunk of AnyLocation.projecting<A>(_:)();
  *v34 = *v27;
  v34[1] = v35;

  return _s7SwiftUI16SearchFieldStateVWOhTm_4(v27, type metadata accessor for Binding<((SearchFieldState, AttributedString), Bool)>);
}

uint64_t outlined destroy of SearchFieldConfiguration.Data?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for Binding<AttributedString>(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI24SearchFieldConfigurationV4DataVSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void *initializeWithCopy for SearchFieldConfiguration(void *a1, void *a2, int *a3)
{
  v5 = a2[1];
  *a1 = *a2;
  a1[1] = v5;
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v7 = *(v6 + 32);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *(a2 + v7);
  v8[1] = *(a2 + v7 + 1);
  *(v8 + 1) = *(a2 + v7 + 2);
  v8[8] = *(a2 + v7 + 8);
  *(v8 + 1) = *(a2 + v7 + 4);
  v10 = type metadata accessor for SearchFieldState(0);
  v11 = v10[9];
  v12 = type metadata accessor for AttributedString();
  v13 = *(*(v12 - 8) + 16);

  v13(&v8[v11], &v9[v11], v12);
  v8[v10[10]] = v9[v10[10]];
  v14 = v10[11];
  v15 = &v8[v14];
  v16 = &v9[v14];
  v15[4] = v16[4];
  *v15 = *v16;
  v17 = a3[6];
  v18 = a1 + v17;
  v19 = a2 + v17;
  v20 = v19[8];
  if (v20 == 255)
  {
    *v18 = *v19;
    v18[8] = v19[8];
  }

  else
  {
    v21 = *v19;
    v22 = v20 & 1;
    outlined copy of PlatformItemCollection.Storage(*v19, v20 & 1);
    *v18 = v21;
    v18[8] = v22;
  }

  v23 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = *(a2 + v23);
  v27 = *(v25 + 1);
  v28 = v25[16];
  outlined copy of Text.Storage(v26, v27, v28);
  *v24 = v26;
  *(v24 + 1) = v27;
  v24[16] = v28;
  *(v24 + 3) = *(v25 + 3);

  return a1;
}

double closure #1 in SearchFieldConfigurationReader.MakeContent.value.getter@<D0>(uint64_t a1@<X0>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v18 = a7;
  v19 = a1;
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = a5;
  v20[3] = a6;
  v11 = type metadata accessor for SearchFieldConfigurationReader(0, v20);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  SearchFieldConfigurationReader.MakeContent.reader.getter(a3, a4, a5, a6, &v18 - v13);
  v15 = *&v14[*(v11 + 56)];
  v16 = *(v12 + 8);

  v16(v14, v11);
  v15(v19);

  return result;
}

uint64_t partial apply for closure #1 in SearchField.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for SearchField(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return closure #1 in SearchField.body.getter(a1, v9, v6, v7, a3);
}

uint64_t static ResolvedList.makeViewList<A>(view:style:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v31 = a7;
  v32 = a2;
  v33 = a8;
  v34 = a3;
  v11 = a1;
  v12 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v16;
  v37 = v15;
  v38 = v18;
  v39 = v17;
  v19 = type metadata accessor for _ListValue.Init1(0, &v36);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v30 - v24;
  v35 = *v11;
  type metadata accessor for ResolvedList(255, a4, a6, v26);
  type metadata accessor for _GraphValue();
  LODWORD(v11) = _GraphValue.value.getter();
  (*(v12 + 16))(v14, v32, a5);
  *v25 = v11;
  v36 = a5;
  v37 = a4;
  v27 = v31;
  v38 = v31;
  v39 = a6;
  v28 = type metadata accessor for _ListValue.Init1(0, &v36);
  (*(v12 + 32))(&v25[*(v28 + 52)], v14, a5);
  (*(v20 + 16))(v22, v25, v19);
  v36 = a5;
  v37 = a4;
  v38 = v27;
  v39 = a6;
  type metadata accessor for _ListValue(0, &v36);
  swift_getWitnessTable(protocol conformance descriptor for _ListValue<A, B>.Init1, v19);
  _GraphValue.init<A>(_:)();
  (*(v27 + 16))(&v36, v34, a4, a6, a5, v27);
  return (*(v20 + 8))(v25, v19);
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ContentListStyleContext>, ListStyleWriter<InsetListStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ContentListStyleContext>, ListStyleWriter<InsetListStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ContentListStyleContext>, MEMORY[0x1E6980190]);
    _s7SwiftUI23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceD0VGMaTm_0(255, &lazy cache variable for type metadata for ListStyleWriter<InsetListStyle>, &type metadata for InsetListStyle, &protocol witness table for InsetListStyle, type metadata accessor for ListStyleWriter);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ContentListStyleContext>, ListStyleWriter<InsetListStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ContentListStyleContext>, ListStyleWriter<InsetListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ContentListStyleContext>, ListStyleWriter<InsetListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ContentListStyleContext>, ListStyleWriter<InsetListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ContentListStyleContext>, ListStyleWriter<InsetListStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<ContentListStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ContentListStyleContext>, MEMORY[0x1E6980190]);
    v5[1] = &protocol witness table for ListStyleWriter<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ContentListStyleContext>, ListStyleWriter<InsetListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t static StyleType.makeViewList<A>(view:style:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = a4;
  type metadata accessor for ResolvedList(255, a7, a9, a4);
  type metadata accessor for _GraphValue();
  v20 = _GraphValue.value.getter();
  v21 = v13;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  type metadata accessor for _ListValue(0, &v16);
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v14 = type metadata accessor for _ListValue.Init2(0, &v16);
  swift_getWitnessTable(protocol conformance descriptor for _ListValue<A, B>.Init2, v14);
  _GraphValue.init<A>(_:)();
  return (*(a8 + 16))(&v16, a5, a7, a9, a6, a8);
}

{
  v13 = a4;
  type metadata accessor for ResolvedPicker(255, a7, a9, a4);
  type metadata accessor for _GraphValue();
  v20 = _GraphValue.value.getter();
  v21 = v13;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  type metadata accessor for _PickerValue(0, &v16);
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v14 = type metadata accessor for _PickerValue.Init2(0, &v16);
  swift_getWitnessTable(protocol conformance descriptor for _PickerValue<A, B>.Init2, v14);
  _GraphValue.init<A>(_:)();
  return (*(a8 + 16))(&v16, a5, a7, a9, a6, a8);
}

{
  v13 = a4;
  type metadata accessor for ResolvedTabView(255, a7, a9, a4);
  type metadata accessor for _GraphValue();
  v20 = _GraphValue.value.getter();
  v21 = v13;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  type metadata accessor for _TabViewValue(0, &v16);
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v14 = type metadata accessor for _TabViewValue.Init2(0, &v16);
  swift_getWitnessTable(protocol conformance descriptor for _TabViewValue<A, B>.Init2, v14);
  _GraphValue.init<A>(_:)();
  return (*(a8 + 16))(&v16, a5, a7, a9, a6, a8);
}

uint64_t protocol witness for static AnyStyleType.makeViewList<A>(view:style:inputs:) in conformance StyleType<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return static StyleType.makeViewList<A>(view:style:inputs:)(a1, a2, a3, a4, a5, *(a8 + 16), a6, *(a8 + 24), a7);
}

{
  return static StyleType.makeViewList<A>(view:style:inputs:)(a1, a2, a3, a4, a5, *(a8 + 16), a6, *(a8 + 24), a7);
}

{
  return static StyleType.makeViewList<A>(view:style:inputs:)(a1, a2, a3, a4, a5, *(a8 + 16), a6, *(a8 + 24), a7);
}

uint64_t initializeWithCopy for ResolvedNavigationDestinations(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = a2[3];
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v4;
  v5 = a2[5];
  *(a1 + 32) = a2[4];
  *(a1 + 40) = v5;
  v6 = a2[7];
  *(a1 + 48) = a2[6];
  *(a1 + 56) = v6;
  v7 = *(a2 + 4);
  *(a1 + 80) = a2[10];
  *(a1 + 64) = v7;

  return a1;
}

uint64_t assignWithCopy for FetchRequest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(*a2, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  outlined consume of Environment<NSManagedObjectContext>.Content(v8, v9);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  outlined copy of StateObject<FetchController<(), A, FetchedResults<A>>>.Storage<A>(v10, v11, v12);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  *(a1 + 32) = v12;
  outlined consume of StateObject<FetchController<(), A, FetchedResults<A>>>.Storage<A>(v13, v14, v15);
  v18 = *(a1 + 40);
  v19 = *(a2 + 40);
  if (!v18)
  {
    if (v19)
    {
      *(a1 + 40) = v19;
      v24 = *(a2 + 48);
      *(a1 + 48) = v24;
      v25 = v19;
      v26 = v24;
      goto LABEL_8;
    }

LABEL_7:
    *(a1 + 40) = *(a2 + 40);
    goto LABEL_8;
  }

  if (!v19)
  {
    v27 = type metadata accessor for FetchedResults(0, *(a3 + 16), v16, v17);
    (*(*(v27 - 8) + 8))(a1 + 40, v27);
    goto LABEL_7;
  }

  *(a1 + 40) = v19;
  v20 = v19;

  v21 = *(a2 + 48);
  v22 = *(a1 + 48);
  *(a1 + 48) = v21;
  v23 = v21;

LABEL_8:
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  return a1;
}

id specialized FetchController.init(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = MEMORY[0x1E69E7D40];
  *&v3[*((*MEMORY[0x1E69E7D40] & *v3) + 0x70)] = 0;
  *&v3[*((*v7 & *v3) + 0x80)] = 0;
  v8 = *((*v7 & *v3) + 0x88);
  type metadata accessor for Optional();
  v9 = type metadata accessor for Binding();
  (*(*(v9 - 8) + 56))(&v3[v8], 1, 1, v9);
  v3[*((*v7 & *v3) + 0x90)] = 0;
  v10 = &v3[*((*v7 & *v3) + 0x68)];
  *v10 = a1;
  *(v10 + 1) = a2;
  type metadata accessor for KeyPath();
  type metadata accessor for Optional();
  type metadata accessor for MutableBox();
  v13 = 0;

  *&v3[*((*v7 & *v3) + 0x78)] = MEMORY[0x18D002830](&v13);
  v12.receiver = v3;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t getEnumTagSinglePayload for GlassButtonStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 41))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t getEnumTagSinglePayload for DefaultDragDropPreview(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t FetchRequest.controller.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for FetchedResults(255, v4, a3, a4);
  Controller = type metadata accessor for FetchController(0, MEMORY[0x1E69E7CA8] + 8, v4, v5);
  swift_getWitnessTable(protocol conformance descriptor for FetchController<A, B, C>, Controller);

  return StateObject.wrappedValue.getter();
}

void FetchRequest.update(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = specialized Environment.wrappedValue.getter(*v2, v5 & 1);
  v7 = [v6 persistentStoreCoordinator];

  if (v7)
  {

    v11 = FetchRequest.controller.getter(a2, v8, v9, v10);
    FetchRequest.$results.getter(a2, v12, v13, v14);
    type metadata accessor for FetchedResults(255, *(a2 + 16), v15, v16);
    type metadata accessor for Optional();
    type metadata accessor for Binding();
    Binding.transaction(_:)();

    outlined consume of FetchedResults<A>?<A>(v31, v32);
    v17 = (v11 + *((*MEMORY[0x1E69E7D40] & *v11) + 0x88));
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = v17[3];
    *v17 = v33;
    v17[1] = v34;
    *(v17 + 1) = v35;
    outlined consume of Binding<FetchedResults<A>?>?<A>(v18, v19, v20, v21);

    v25 = FetchRequest.controller.getter(a2, v22, v23, v24);
    v37.value.super.isa = specialized Environment.wrappedValue.getter(v4, v5 & 1);
    isa = v37.value.super.isa;
    FetchController.update(in:)(v37);
  }

  else
  {
    v27 = static os_log_type_t.fault.getter();
    v28 = static Log.runtimeIssuesLog.getter();
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_18CD63400;
    v30 = specialized Environment.wrappedValue.getter(v4, v5 & 1);
    *(v29 + 56) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSManagedObjectContext, 0x1E695D628);
    *(v29 + 64) = lazy protocol witness table accessor for type NSManagedObjectContext and conformance NSObject();
    *(v29 + 32) = v30;
    os_log(_:dso:log:_:_:)(v27, &dword_18BD4A000, v28, "Context in environment is not connected to a persistent store coordinator: %@", 77, 2, v29);
  }
}

id specialized Environment.wrappedValue.getter(void *a1, char a2)
{
  if (a2)
  {

    return a1;
  }

  else
  {
    v13[9] = v2;
    v13[10] = v3;

    v5 = static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13[0] = v8;
      *v7 = 136315138;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSManagedObjectContext, 0x1E695D628);
      v9 = _typeName(_:qualified:)();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v13);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_18BD4A000, v6, v5, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x18D0110E0](v8, -1, -1);
      MEMORY[0x18D0110E0](v7, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of ResolvableCLKTextProvider.FontStorage(a1, 0);

    return v13[2];
  }
}

void outlined consume of Binding<FetchedResults<A>?>?<A>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a2)
  {

    outlined consume of FetchedResults<A>?<A>(a3, a4);
  }
}

id DeferredFetchRequest.result.getter()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = v0;
    v4 = (*(v0 + 24))();
    v5 = *(v0 + 16);
    *(v3 + 16) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(listInputs:) in conformance ListPresentationPredicate(_OWORD *a1)
{
  v1 = a1[1];
  v9[0] = *a1;
  v9[1] = v1;
  v3 = *a1;
  v2 = a1[1];
  v9[2] = a1[2];
  v6 = v3;
  v7 = v2;
  v8 = a1[2];
  outlined init with copy of _GraphInputs(v9, v10);
  v4 = specialized static ListPresentationPredicate.evaluate(inputs:)(&v6);
  v10[0] = v6;
  v10[1] = v7;
  v10[2] = v8;
  outlined destroy of _GraphInputs(v10);
  return v4 & 1;
}

void protocol witness for static PropertyKey.defaultValue.getter in conformance ListStyleInput(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t type metadata completion function for _ListValue.Init1(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t static DefaultListStyle._makeViewList<A>(value:inputs:)(int *a1, uint64_t a2, ValueMetadata *a3, _UNKNOWN **a4)
{
  v6 = *a1;
  v25 = a3;
  v26 = &type metadata for ListStyleContent;
  v27 = a4;
  v28 = &protocol witness table for ListStyleContent;
  v7 = type metadata accessor for List(255, &v25);
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ListStyleWriter<MultimodalListStyle>, EmptyModifier>(255);
  v8 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ListStyleWriter<InlineListStyle>, EmptyModifier>(255);
  v9 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ListStyleWriter<SidebarListStyle>, EmptyModifier>(255);
  v10 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ContentListStyleContext>, ListStyleWriter<InsetListStyle>, EmptyModifier>(255);
  v11 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v3>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier>(255);
  v12 = type metadata accessor for ModifiedContent();
  _s7SwiftUI23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceD0VGMaTm_0(255, &lazy cache variable for type metadata for ListStyleWriter<PlainListStyle>, &type metadata for PlainListStyle, &protocol witness table for PlainListStyle, type metadata accessor for ListStyleWriter);
  v13 = type metadata accessor for ModifiedContent();
  v24 = v6;
  v25 = &type metadata for DefaultListStyle;
  v26 = a3;
  v27 = &protocol witness table for DefaultListStyle;
  v28 = a4;
  type metadata accessor for _ListValue(255, &v25);
  type metadata accessor for _GraphValue();
  LODWORD(v25) = _GraphValue.value.getter();
  v15 = type metadata accessor for DefaultListStyle.Body(0, a3, a4, v14);
  swift_getWitnessTable(protocol conformance descriptor for DefaultListStyle.Body<A>, v15);
  _GraphValue.init<A>(_:)();
  v23[0] = swift_getWitnessTable(protocol conformance descriptor for List<A, B>, v7);
  v23[1] = lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ListStyleWriter<MultimodalListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ListStyleWriter<MultimodalListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ListStyleWriter<MultimodalListStyle>, EmptyModifier>, lazy protocol witness table accessor for type InterfaceIdiomPredicate<ClarityUIInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>);
  v16 = MEMORY[0x1E697E858];
  v22[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v23);
  v22[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ListStyleWriter<InlineListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v21[0] = swift_getWitnessTable(v16, v9, v22);
  v21[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ListStyleWriter<SidebarListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v20[0] = swift_getWitnessTable(v16, v10, v21);
  v20[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ContentListStyleContext>, ListStyleWriter<InsetListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v19[0] = swift_getWitnessTable(v16, v11, v20);
  v19[1] = lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ListStyleWriter<MultimodalListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v3>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<_SemanticFeature<Semantics_v3>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier>, lazy protocol witness table accessor for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>);
  v18[0] = swift_getWitnessTable(v16, v12, v19);
  v18[1] = &protocol witness table for ListStyleWriter<A>;
  swift_getWitnessTable(v16, v13, v18);
  return static View.makeDebuggableViewList(view:inputs:)();
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ListStyleWriter<MultimodalListStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ListStyleWriter<MultimodalListStyle>, EmptyModifier>)
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceD0VGMaTm_0(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, MEMORY[0x1E6980158], MEMORY[0x1E6980150], MEMORY[0x1E69801E0]);
    _s7SwiftUI23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceD0VGMaTm_0(255, &lazy cache variable for type metadata for ListStyleWriter<MultimodalListStyle>, &type metadata for MultimodalListStyle, &protocol witness table for MultimodalListStyle, type metadata accessor for ListStyleWriter);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ListStyleWriter<MultimodalListStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ListStyleWriter<InlineListStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ListStyleWriter<InlineListStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>, &type metadata for GroupedFormStyleContext);
    _s7SwiftUI23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceD0VGMaTm_0(255, &lazy cache variable for type metadata for ListStyleWriter<InlineListStyle>, &type metadata for InlineListStyle, &protocol witness table for InlineListStyle, type metadata accessor for ListStyleWriter);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ListStyleWriter<InlineListStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ListStyleWriter<SidebarListStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ListStyleWriter<SidebarListStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SidebarStyleContext>, MEMORY[0x1E697F808]);
    _s7SwiftUI23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceD0VGMaTm_0(255, &lazy cache variable for type metadata for ListStyleWriter<SidebarListStyle>, &type metadata for SidebarListStyle, &protocol witness table for SidebarListStyle, type metadata accessor for ListStyleWriter);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ListStyleWriter<SidebarListStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ListStyleWriter<InlineListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ListStyleWriter<InlineListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ListStyleWriter<InlineListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ListStyleWriter<InlineListStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<GroupedFormStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>, &type metadata for GroupedFormStyleContext);
    v5[1] = &protocol witness table for ListStyleWriter<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ListStyleWriter<InlineListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ListStyleWriter<SidebarListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ListStyleWriter<SidebarListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ListStyleWriter<SidebarListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ListStyleWriter<SidebarListStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<SidebarStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SidebarStyleContext>, MEMORY[0x1E697F808]);
    v5[1] = &protocol witness table for ListStyleWriter<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ListStyleWriter<SidebarListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t closure #1 in static ListStyleWriter._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for ListStyleWriter(0, a2, a3, a4);
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t View.navigationTitle<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  (*(v11 + 16))(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  *&v16 = Text.init<A>(_:)();
  *(&v16 + 1) = v12;
  *&v17 = v13 & 1;
  *(&v17 + 1) = v14;
  *v18 = 1;
  v18[8] = 5;
  *&v18[16] = 0;
  v18[24] = 3;
  View.navigationTitlePreferenceTransform(adding:)(&v16, a2, a4, a6);
  v19[0] = v16;
  v19[1] = v17;
  v20[0] = *v18;
  *(v20 + 9) = *&v18[9];
  return outlined destroy of NavigationTitleStorage(v19);
}

unint64_t lazy protocol witness table accessor for type DefaultLayoutResponderFilter and conformance DefaultLayoutResponderFilter()
{
  result = lazy protocol witness table cache variable for type DefaultLayoutResponderFilter and conformance DefaultLayoutResponderFilter;
  if (!lazy protocol witness table cache variable for type DefaultLayoutResponderFilter and conformance DefaultLayoutResponderFilter)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6980898], MEMORY[0x1E69808A0], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultLayoutResponderFilter and conformance DefaultLayoutResponderFilter);
  }

  return result;
}

uint64_t type metadata completion function for FocusedValueModifier.Transform(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t ItemSheetPresentationModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v92 = a3;
  v91 = (a2 + 24);
  v5 = *(a2 + 32);
  v90 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v89 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 16);
  v81 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v66 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v68 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v65 = &v65 - v13;
  v79 = *(a2 - 8);
  v80 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v78 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = *(a2 + 56);
  v16 = v70;
  v18 = type metadata accessor for CoreSheetPresentationModifier(0, v5, v70, v17);
  v86 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v65 - v20;
  swift_getWitnessTable(protocol conformance descriptor for ItemSheetPresentationModifier<A, B, C>, a2, v19);
  v82 = type metadata accessor for _ViewModifier_Content();
  v88 = v18;
  v87 = type metadata accessor for ModifiedContent();
  v85 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v83 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v84 = &v65 - v24;
  v75 = v8;
  v25 = type metadata accessor for Optional();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v76 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v65 - v29;
  v74 = MEMORY[0x1E6981920];
  ItemSheetPresentationModifier.item.getter(a2, MEMORY[0x1E6981920]);
  *&v31 = v8;
  *(&v31 + 1) = *v91;
  v72 = v31;
  v91 = v5;
  *&v32 = v5;
  v67 = v12;
  *(&v32 + 1) = v12;
  v71 = v32;
  v94 = v31;
  v95 = v32;
  v96 = *(a2 + 48);
  v33 = v96;
  v97 = v16;
  v98 = v3;
  v34 = v3;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in ItemSheetPresentationModifier.body(content:), v93, MEMORY[0x1E69E73E0], MEMORY[0x1E6981910], v35, &v100);
  v36 = *(v26 + 8);
  v77 = v25;
  v37 = v36;
  v36(v30, v25);
  v73 = v100;
  v38 = v79;
  v39 = v78;
  (*(v79 + 16))(v78, v34, a2);
  v40 = v38;
  v41 = (*(v38 + 80) + 64) & ~*(v38 + 80);
  v42 = swift_allocObject();
  v43 = v71;
  *(v42 + 16) = v72;
  *(v42 + 32) = v43;
  *(v42 + 48) = v33;
  v44 = v34;
  *(v42 + 56) = v70;
  (*(v40 + 32))(v42 + v41, v39, a2);
  v45 = v76;
  v46 = *(a2 + 80);
  LODWORD(v80) = *(v34 + *(a2 + 76));
  LODWORD(v79) = *(v34 + v46);
  ItemSheetPresentationModifier.item.getter(a2, v74);
  v47 = v81;
  v48 = v75;
  if ((*(v81 + 48))(v45, 1))
  {
    v37(v45, v77);
    v102 = 0;
    v100 = 0u;
    v101 = 0u;
  }

  else
  {
    v49 = v66;
    (*(v47 + 16))(v66, v45, v48);
    v37(v45, v77);
    v50 = v65;
    dispatch thunk of Identifiable.id.getter();
    (*(v47 + 8))(v49, v48);
    v51 = AssociatedTypeWitness;
    swift_getAssociatedConformanceWitness();
    _convertToAnyHashable<A>(_:)();
    (*(v68 + 8))(v50, v51);
  }

  v52 = v90;
  v53 = v89;
  v54 = v91;
  (*(v90 + 16))(v89, v44 + *(a2 + 84), v91);
  v55 = v73;
  *v21 = 0;
  *(v21 + 1) = v55;
  v56 = v100;
  *(v21 + 56) = v101;
  *(v21 + 2) = partial apply for closure #2 in ItemSheetPresentationModifier.body(content:);
  *(v21 + 3) = v42;
  v21[32] = v80;
  v21[33] = v79;
  *(v21 + 9) = v102;
  *(v21 + 40) = v56;
  v57 = v88;
  (*(v52 + 32))(&v21[*(v88 + 56)], v53, v54);
  v21[*(v57 + 60)] = 2;
  v58 = v82;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v82);
  v60 = v83;
  MEMORY[0x18D00A570](v21, v58, v57, WitnessTable);
  (*(v86 + 8))(v21, v57);
  v99[0] = WitnessTable;
  v99[1] = &protocol witness table for CoreSheetPresentationModifier<A>;
  v61 = v87;
  swift_getWitnessTable(MEMORY[0x1E697E858], v87, v99);
  v62 = v84;
  static ViewBuilder.buildExpression<A>(_:)();
  v63 = *(v85 + 8);
  v63(v60, v61);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v63)(v62, v61);
}

uint64_t sub_18BEF0270()
{
  v7 = v0[2];
  v8[0] = v0[1];
  v6 = *&v8[0];
  v8[1] = v7;
  v8[2] = v0[3];
  v1 = type metadata accessor for ItemSheetPresentationModifier(0, v8);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 64) & ~*(*(v1 - 8) + 80));

  type metadata accessor for Optional();
  v3 = *(type metadata accessor for Binding() + 32);
  v4 = *(v6 - 8);
  if (!(*(v4 + 48))(&v2[v3], 1, v6))
  {
    (*(v4 + 8))(&v2[v3], v6);
  }

  if (*&v2[*(v1 + 68)])
  {
  }

  (*(*(v7 - 8) + 8))(&v2[*(v1 + 84)]);
  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<DialogTintColorKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogTintColorKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogTintColorKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for StyleContextWriter<DialogActionStyleContext>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogTintColorKey>, &type metadata for DialogTintColorKey, &protocol witness table for DialogTintColorKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogTintColorKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<Bool?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool?>)
  {
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370]);
    v1 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool?>);
    }
  }
}

uint64_t static ResolvedList._makeViewList(view:inputs:)@<X0>(int *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  lazy protocol witness table accessor for type ListStyleInput and conformance ListStyleInput();
  PropertyList.subscript.getter();
  if (v11[0])
  {
    LODWORD(v11[0]) = v9;
    return (*(v11[1] + 16))(v11);
  }

  else
  {
    LODWORD(v11[0]) = v9;
    return static ResolvedList.makeViewList<A>(view:style:inputs:)(v11, 0, a2, a3, &type metadata for DefaultListStyle, a4, &protocol witness table for DefaultListStyle, a5);
  }
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance CollectionViewListRoot<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for CollectionViewListRoot<A, B>, a3);

  return static UnaryView._makeViewList(view:inputs:)();
}

void storeEnumTagSinglePayload for TextInputSuggestions(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 1) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_44:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 1] & ~v9;

    v19(v20);
  }

  else
  {
    *a1 = a2 + 1;
  }
}