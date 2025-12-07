void closure #1 in UIKitPopoverBridge.updateExistingInspector(_:values:)(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  outlined init with copy of PopoverPresentation?(a1, &v11, &lazy cache variable for type metadata for InspectorStorage?, &type metadata for InspectorStorage);
  v3 = v12;
  if (v12 == 1)
  {
    outlined destroy of PopoverPresentation?(&v11, &lazy cache variable for type metadata for InspectorStorage?, &type metadata for InspectorStorage, MEMORY[0x1E69E6720]);
  }

  else
  {
    v4 = v11;
    v5 = v13;
    outlined copy of Binding<Int>?(v11, v12);
    outlined destroy of InspectorStorage(&v11);
    if (v3)
    {
      v8 = v4;
      v9 = v3;
      v10 = v5 & 1;
      type metadata accessor for PopoverPresentation?(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
      MEMORY[0x18D00ACC0](&v7);
      v6 = v7;

      *a2 = v6;
      return;
    }
  }

  *a2 = 2;
}

double closure #2 in UIKitPopoverBridge.updateExistingInspector(_:values:)(uint64_t a1, char a2)
{
  outlined init with copy of PopoverPresentation?(a1, &v4, &lazy cache variable for type metadata for InspectorStorage?, &type metadata for InspectorStorage);
  v2 = v5;
  if (v5 == 1)
  {
    outlined destroy of PopoverPresentation?(&v4, &lazy cache variable for type metadata for InspectorStorage?, &type metadata for InspectorStorage, MEMORY[0x1E69E6720]);
  }

  else
  {
    outlined copy of Binding<Int>?(v4, v5);
    outlined destroy of InspectorStorage(&v4);
    if (v2)
    {
      dispatch thunk of AnyLocation.set(_:transaction:)();
    }
  }

  return result;
}

void closure #1 in UIKitPopoverBridge.dismissAndReset(viewController:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    UIKitPopoverBridge.reset()();
  }
}

uint64_t UIKitPopoverBridge.popoverSource(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SearchEnvironmentStorage.BoundProperties(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_lastPopoverPresentation;
  swift_beginAccess();
  outlined init with copy of PopoverPresentation?(v2 + v7, &v31, &lazy cache variable for type metadata for PopoverPresentation?, &type metadata for PopoverPresentation);
  if (!v31)
  {
    result = outlined destroy of PopoverPresentation?(&v31, &lazy cache variable for type metadata for PopoverPresentation?, &type metadata for PopoverPresentation, MEMORY[0x1E69E6720]);
    goto LABEL_8;
  }

  v37[4] = v33;
  *v38 = v34;
  *&v38[16] = v35;
  v39 = v36;
  v37[0] = v31;
  v37[1] = v32[0];
  v8 = v2 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_host;
  v37[2] = v32[1];
  v37[3] = v32[2];
  if (!swift_unknownObjectWeakLoadStrong() || (v9 = *(v8 + 8), ObjectType = swift_getObjectType(), v11 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v9 + 16) + 8)), swift_unknownObjectRelease(), !v11))
  {
    result = outlined destroy of PopoverPresentation(v37);
LABEL_8:
    *(a1 + 80) = 0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return result;
  }

  if (*(v2 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_overrideArrowDirections + 8))
  {
    v12 = BYTE8(v37[0]);
    v27[0] = v4;
    v13 = v6;
    v14 = v11;
    v15 = BYTE9(v37[0]);
    v31 = *&v38[8];
    EnvironmentValues.layoutDirection.getter();
    LOBYTE(v28[0]) = v30;
    v16 = v12 | (v15 << 8);
    v11 = v14;
    v6 = v13;
    v4 = v27[0];
    v17 = specialized UIPopoverArrowDirection.init(edges:layoutDirection:)(v16, v28);
  }

  else
  {
    v17 = *(v2 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_overrideArrowDirections);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    *a1 = v11;
    swift_unknownObjectWeakInit();

    swift_unknownObjectWeakInit();
  }

  else
  {
    if (!swift_unknownObjectWeakLoadStrong())
    {
      if (BYTE5(v39) != 1)
      {
        *&v31 = v11;
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakInit();
        *&v33 = 0;
        BYTE8(v33) = 1;
        *&v34 = v17;
        v21 = swift_unknownObjectWeakLoadStrong();
        if (v21)
        {
          MEMORY[0x1EEE9AC00](v21);
          v27[-2] = v22;
          v27[-1] = v23;
          static Update.ensure<A>(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          ViewTransform.init()();
        }

        _sSo6CGRectVSgMaTm_0(0, &lazy cache variable for type metadata for CGRect?, type metadata accessor for CGRect);
        Anchor.convert(to:)();

        *(v32 + 8) = v28[0];
        *(&v32[1] + 8) = v28[1];
        BYTE8(v32[2]) = v29;
        outlined init with take of PopoverPresentationDelegate.PopoverSource(&v31, a1);
        return outlined destroy of PopoverPresentation(v37);
      }

      v27[0] = *&v38[8];
      if (*&v38[16])
      {
        _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV02__E14_searchStorage33_01524358DA8FEB8BCC0A94C08F00494ALLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage, MEMORY[0x1E697FE38]);
        lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage);

        PropertyList.Tracker.value<A>(_:for:)();
      }

      else
      {
        _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV02__E14_searchStorage33_01524358DA8FEB8BCC0A94C08F00494ALLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage, MEMORY[0x1E697FE38]);
        lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage);
        PropertyList.subscript.getter();
      }

      v24 = v31;
      if (v31)
      {
        swift_getKeyPath();
        *&v31 = v24;
        lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type SearchEnvironmentStorage and conformance SearchEnvironmentStorage, type metadata accessor for SearchEnvironmentStorage, protocol conformance descriptor for SearchEnvironmentStorage);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v25 = OBJC_IVAR____TtC7SwiftUI24SearchEnvironmentStorage__boundProperties;
        swift_beginAccess();
        outlined init with copy of (key: ViewIdentity, value: InspectorStorage)(v24 + v25, v6, type metadata accessor for SearchEnvironmentStorage.BoundProperties);

        v26 = &v6[*(v4 + 28)];
        if (*(v26 + 8))
        {
          outlined init with copy of (key: ViewIdentity, value: InspectorStorage)(v26, &v31, type metadata accessor for SearchBoundProperty<PlatformSearchPopoverAnchor?>);
          outlined destroy of SearchEnvironmentStorage.BoundProperties(v6, type metadata accessor for SearchEnvironmentStorage.BoundProperties);
          type metadata accessor for Binding<PlatformSearchPopoverAnchor?>(0);
          MEMORY[0x18D00ACC0](v28);
          outlined destroy of SearchEnvironmentStorage.BoundProperties(&v31, type metadata accessor for SearchBoundProperty<PlatformSearchPopoverAnchor?>);
          if (BYTE8(v28[0]) == 1)
          {
            outlined destroy of PopoverPresentation?(v28, &lazy cache variable for type metadata for PlatformSearchPopoverAnchor?, &type metadata for PlatformSearchPopoverAnchor, MEMORY[0x1E69E6720]);
          }

          else
          {
            swift_unknownObjectWeakLoadStrong();
            outlined destroy of PlatformSearchPopoverAnchor(v28);
          }
        }

        else
        {
          outlined destroy of SearchEnvironmentStorage.BoundProperties(v6, type metadata accessor for SearchEnvironmentStorage.BoundProperties);
        }
      }
    }

    *a1 = v11;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
  }

  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = v17;
  return outlined destroy of PopoverPresentation(v37);
}

double closure #1 in UIKitPopoverBridge.popoverHostTransform(for:)(void x0_0, uint64_t a1)
{
  ObjectType = swift_getObjectType();
  (*(*(a1 + 8) + 8))(ObjectType);
  ViewGraph.transform.getter();

  return result;
}

uint64_t protocol witness for PopoverPresentationDelegateDelegate.popoverWillDismiss(for:) in conformance UIKitPopoverBridge()
{
  v1 = (v0 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_lastPopoverPresentation);
  swift_beginAccess();
  if (*v1)
  {
    v2 = v1[3];
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  v4 = (v0 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_pendingDismissAction);
  v6 = *(v0 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_pendingDismissAction);
  v5 = *(v0 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_pendingDismissAction + 8);
  *v4 = v2;
  v4[1] = v3;
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v6, v5);
}

void UIKitPopoverBridge.hostingView<A>(_:didChangePreferences:)(uint64_t a1, uint64_t *a2)
{
  v6 = *a2;
  PreferenceValues.subscript.getter();
  if (v5 != 2)
  {
    v4 = v5 & 1;
    closure #1 in UIKitPopoverBridge.hostingView<A>(_:didChangePreferences:)(&v4, a1, v2);
  }
}

void closure #1 in UIKitPopoverBridge.hostingView<A>(_:didChangePreferences:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UITraitOverrides();
  MEMORY[0x1EEE9AC00](v5);
  v6 = *a1;
  _UIHostingView.colorScheme.getter(&v19);
  if (v19 == 2 || ((v6 ^ v19) & 1) != 0)
  {
    v7 = *(a3 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_presentedVC);
    if (v7)
    {
      v8 = *&v7[direct field offset for UIHostingController.host];
      v9 = *((*MEMORY[0x1E69E7D40] & *v8) + 0xF8);
      v10 = *(v8 + v9);
      *(v8 + v9) = v6;
      v11 = v8;
      v12 = v7;
      specialized _UIHostingView.didChangeColorScheme(from:)(v10);

      v13 = [v12 presentationController];
      if (v13)
      {
        v14 = v13;
        objc_opt_self();
        v15 = swift_dynamicCastObjCClass();
        if (v15)
        {
          v16 = v15;
LABEL_10:
          UIPresentationController.traitOverrides.getter();
          UIMutableTraits.userInterfaceStyle.setter();
          UIPresentationController.traitOverrides.setter();

LABEL_11:
          return;
        }
      }

      v17 = [v12 popoverPresentationController];
      if (!v17)
      {
        goto LABEL_11;
      }

      v18 = v17;
      v16 = [v17 adaptiveSheetPresentationController];

      if (!v16)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }
}

double UIKitPopoverBridge.hostingView<A>(_:willUpdate:)(uint64_t a1, void *a2)
{
  _UIHostingView.colorScheme.getter(v5);
  EnvironmentValues.explicitPreferredColorScheme.setter();
  v5[0] = UIKitPopoverBridge.defaultPopoverSize.getter();
  v5[1] = v3;
  v6 = 0;
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV02__E14_searchStorage33_01524358DA8FEB8BCC0A94C08F00494ALLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize>, &type metadata for EnvironmentValues.__Key_defaultPresentationSize, &protocol witness table for EnvironmentValues.__Key_defaultPresentationSize, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize>, &type metadata for EnvironmentValues.__Key_defaultPresentationSize, &protocol witness table for EnvironmentValues.__Key_defaultPresentationSize);

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

double UIKitPopoverBridge.defaultPopoverSize.getter()
{
  v0 = [objc_opt_self() defaultPopoverMetrics];
  v1 = UIKitPopoverBridge.presenter.getter();
  if (v1 && (v2 = v1, v3 = [v1 viewIfLoaded], v2, v3) && (v4 = objc_msgSend(v3, sel_window), v3, v4) && (objc_msgSend(v4, sel_bounds), v6 = v5, v8 = v7, v10 = v9, v12 = v11, v4, v17.origin.x = v6, v17.origin.y = v8, v17.size.width = v10, v17.size.height = v12, CGRectGetWidth(v17) >= 1024.0))
  {
    v13 = &selRef_defaultPreferredLargeContentSize;
  }

  else
  {
    v13 = &selRef_defaultPreferredSmallContentSize;
  }

  [v0 *v13];
  v15 = v14;

  return v15;
}

uint64_t closure #1 in PopoverPresentationDelegate.popoverPresentationController(_:willRepositionPopoverTo:in:)(uint64_t a1, _OWORD *a2)
{
  v4 = a1 + OBJC_IVAR____TtC7SwiftUI27PopoverPresentationDelegate_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(v11, a1, ObjectType, v6);
    swift_unknownObjectRelease();
    if (v11[0])
    {
      v9 = v12;
      v10 = v13;
      v8 = v14;
      result = outlined destroy of PopoverPresentationDelegate.PopoverSource(v11);
      if ((v8 & 1) == 0)
      {
        *a2 = v9;
        a2[1] = v10;
      }
    }

    else
    {
      return outlined destroy of PopoverPresentation?(v11, &lazy cache variable for type metadata for PopoverPresentationDelegate.PopoverSource?, &type metadata for PopoverPresentationDelegate.PopoverSource, MEMORY[0x1E69E6720]);
    }
  }

  return result;
}

UIModalPresentationStyle __swiftcall PopoverPresentationDelegate.adaptivePresentationStyle(for:traitCollection:)(UIPresentationController a1, UITraitCollection traitCollection)
{
  v5 = v2 + OBJC_IVAR____TtC7SwiftUI27PopoverPresentationDelegate_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    v8 = (*(v6 + 16))(v2, ObjectType, v6);
    swift_unknownObjectRelease();
    if (v8)
    {
      v9 = [(objc_class *)a1.super.isa presentedViewController];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV02__E14_searchStorage33_01524358DA8FEB8BCC0A94C08F00494ALLVGMaTm_0(0, &lazy cache variable for type metadata for PresentationHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PresentationHostingController);
      if (swift_dynamicCastClass())
      {
        v10 = specialized PresentationHostingController.adaptivePresentationStyle(traitCollection:kind:)(traitCollection.super.isa, 1);

        return v10;
      }
    }
  }

  if ([(objc_class *)traitCollection.super.isa horizontalSizeClass]== 1)
  {
    return 2;
  }

  if ([(objc_class *)traitCollection.super.isa verticalSizeClass]== 1)
  {
    return 2;
  }

  return -1;
}

void *destroy for UIKitPopoverBridge.PresentationKind(void *a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 3)
  {
    v1 = *a1 + 3;
  }

  if (!v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

__n128 initializeWithCopy for UIKitPopoverBridge.PresentationKind(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (v2 >= 3)
  {
    v2 = *a2 + 3;
  }

  if (v2 == 2)
  {
    *a1 = *a2;
    *(a1 + 40) = 2;
  }

  else if (v2 == 1)
  {
    *a1 = *a2;
    *(a1 + 40) = 1;
  }

  else if (v2)
  {
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    result = *(a2 + 25);
    *(a1 + 25) = result;
  }

  else
  {
    v3 = *(a2 + 24);
    *(a1 + 24) = v3;
    (**(v3 - 8))();
    *(a1 + 40) = 0;
  }

  return result;
}

__n128 assignWithCopy for UIKitPopoverBridge.PresentationKind(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = *(a1 + 40);
    if (v2 >= 3)
    {
      v2 = *a1 + 3;
    }

    if (!v2)
    {
      v3 = a1;
      v4 = a2;
      __swift_destroy_boxed_opaque_existential_1(a1);
      a2 = v4;
      a1 = v3;
    }

    v6 = *(a2 + 40);
    if (v6 >= 3)
    {
      v6 = *a2 + 3;
    }

    if (v6 == 2)
    {
      *a1 = *a2;
      *(a1 + 40) = 2;
    }

    else if (v6 == 1)
    {
      *a1 = *a2;
      *(a1 + 40) = 1;
    }

    else if (v6)
    {
      result = *a2;
      v9 = *(a2 + 16);
      *(a1 + 25) = *(a2 + 25);
      *a1 = result;
      *(a1 + 16) = v9;
    }

    else
    {
      v7 = *(a2 + 24);
      *(a1 + 24) = v7;
      *(a1 + 32) = *(a2 + 32);
      v8 = a1;
      (**(v7 - 8))();
      *(v8 + 40) = 0;
    }
  }

  return result;
}

__n128 assignWithTake for UIKitPopoverBridge.PresentationKind(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = *(a1 + 40);
    if (v2 >= 3)
    {
      v2 = *a1 + 3;
    }

    if (!v2)
    {
      v3 = a1;
      v4 = a2;
      __swift_destroy_boxed_opaque_existential_1(a1);
      a2 = v4;
      a1 = v3;
    }

    v6 = *(a2 + 40);
    if (v6 >= 3)
    {
      v6 = *a2 + 3;
    }

    if (v6 == 2)
    {
      *a1 = *a2;
      *(a1 + 40) = 2;
    }

    else if (v6 == 1)
    {
      *a1 = *a2;
      *(a1 + 40) = 1;
    }

    else if (v6)
    {
      v8 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v8;
      result = *(a2 + 25);
      *(a1 + 25) = result;
    }

    else
    {
      result = *a2;
      v7 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v7;
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UIKitPopoverBridge.PresentationKind(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UIKitPopoverBridge.PresentationKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for UIKitPopoverBridge.PresentationKind(uint64_t a1)
{
  result = *(a1 + 40);
  if (result >= 3)
  {
    return (*a1 + 3);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for UIKitPopoverBridge.PresentationKind(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type DismissingReason and conformance DismissingReason()
{
  result = lazy protocol witness table cache variable for type DismissingReason and conformance DismissingReason;
  if (!lazy protocol witness table cache variable for type DismissingReason and conformance DismissingReason)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DismissingReason, &unk_1EFFF4FA0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DismissingReason and conformance DismissingReason);
  }

  return result;
}

uint64_t one-time initialization function for willPresent()
{
  result = MEMORY[0x18D00C850](0xD000000000000018, 0x800000018CD55A10);
  static SheetPopoverBridgeNotifications.willPresent = result;
  return result;
}

uint64_t specialized static UIKitPopoverBridge.PresentationKind.== infix(_:_:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  outlined init with copy of UIKitPopoverBridge.PresentationKind(a1, v10);
  outlined init with copy of UIKitPopoverBridge.PresentationKind(a2, v12);
  if (v11 <= 1u)
  {
    if (!v11)
    {
      outlined init with copy of UIKitPopoverBridge.PresentationKind(v10, v9);
      if (v13)
      {
        outlined destroy of AnyHashable(v9);
        goto LABEL_12;
      }

      v7[0] = *v12;
      v7[1] = *&v12[16];
      v8 = *&v12[32];
      v4 = MEMORY[0x18D00E7E0](v9, v7);
      outlined destroy of AnyHashable(v7);
      outlined destroy of AnyHashable(v9);
LABEL_14:
      outlined destroy of UIKitPopoverBridge.PresentationKind(v10);
      return v4 & 1;
    }

    outlined init with copy of UIKitPopoverBridge.PresentationKind(v10, v9);
    if (v13 != 1)
    {
      goto LABEL_12;
    }

LABEL_9:
    v4 = v9[0] == *v12;
    goto LABEL_14;
  }

  if (v11 != 2)
  {
    if (v13 == 3)
    {
      v5 = vorrq_s8(*&v12[8], *&v12[24]);
      if (!(*&vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL)) | *v12))
      {
        outlined destroy of UIKitPopoverBridge.PresentationKind(v10);
        v4 = 1;
        return v4 & 1;
      }
    }

    goto LABEL_12;
  }

  outlined init with copy of UIKitPopoverBridge.PresentationKind(v10, v9);
  if (v13 == 2)
  {
    goto LABEL_9;
  }

LABEL_12:
  outlined destroy of SearchEnvironmentStorage.BoundProperties(v10, type metadata accessor for (UIKitPopoverBridge.PresentationKind, UIKitPopoverBridge.PresentationKind));
  v4 = 0;
  return v4 & 1;
}

uint64_t specialized UIPopoverArrowDirection.init(edges:layoutDirection:)(__int16 a1, _BYTE *a2)
{
  if ((a1 & 0x100) != 0)
  {
    return 15;
  }

  v2 = a1;
  if ((a1 & 1) == 0)
  {
    if ((a1 & 2) == 0)
    {
      result = 0;
      if ((v2 & 4) == 0)
      {
        if ((v2 & 8) != 0)
        {
          v4 = 8;
          if (*a2)
          {
            return 4;
          }

          return v4;
        }

        return result;
      }

      goto LABEL_22;
    }

    v5 = 0;
    goto LABEL_16;
  }

  if ((a1 & 2) != 0)
  {
    v5 = 1;
LABEL_16:
    v6 = 4;
    if (*a2)
    {
      v6 = 8;
    }

    result = v5 | v6;
    if ((v2 & 4) == 0)
    {
      if ((v2 & 8) == 0)
      {
        return result;
      }

LABEL_23:
      if (*a2)
      {
        if ((result & 4) == 0)
        {
          return result | 4;
        }
      }

      else if ((result & 8) == 0)
      {
        return result | 8;
      }

      return result;
    }

LABEL_22:
    result |= 2uLL;
    if ((v2 & 8) == 0)
    {
      return result;
    }

    goto LABEL_23;
  }

  if ((a1 & 4) != 0)
  {
    result = 1;
    goto LABEL_22;
  }

  if ((a1 & 8) == 0)
  {
    return 1;
  }

  v7 = 8;
  if (*a2)
  {
    v7 = 4;
  }

  return v7 | 1;
}

id *specialized PopoverPresentationDelegate.updateAnchor(_:presentationController:)(void *a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtC7SwiftUI27PopoverPresentationDelegate_delegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    return outlined destroy of PopoverPresentation?(v16, &lazy cache variable for type metadata for PopoverPresentationDelegate.PopoverSource?, &type metadata for PopoverPresentationDelegate.PopoverSource, MEMORY[0x1E69E6720]);
  }

  v5 = *(v4 + 8);
  ObjectType = swift_getObjectType();
  (*(v5 + 8))(v16, v1, ObjectType, v5);
  swift_unknownObjectRelease();
  if (!*&v16[0])
  {
    return outlined destroy of PopoverPresentation?(v16, &lazy cache variable for type metadata for PopoverPresentationDelegate.PopoverSource?, &type metadata for PopoverPresentationDelegate.PopoverSource, MEMORY[0x1E69E6720]);
  }

  outlined init with take of PopoverPresentationDelegate.PopoverSource(v16, v18);
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v20;
    v9 = a1;
    [v7 setPermittedArrowDirections_];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    [a1 setBarButtonItem_];

LABEL_7:
LABEL_15:

    return outlined destroy of PopoverPresentationDelegate.PopoverSource(v18);
  }

  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    swift_unknownObjectRetain();
    [a1 setSourceItem_];
    swift_unknownObjectRelease_n();
    goto LABEL_15;
  }

  [a1 setSourceView_];
  if (v19)
  {
    goto LABEL_15;
  }

  [a1 setSourceRect_];
  if (v7)
  {
    if (*(v2 + OBJC_IVAR____TtC7SwiftUI27PopoverPresentationDelegate_isLayoutPreventionActive))
    {
      goto LABEL_15;
    }

    v7 = v7;
    v15 = [v7 containerView];
    [v15 setNeedsLayout];

    v11 = [v7 containerView];
    [v11 layoutIfNeeded];
    goto LABEL_7;
  }

  return outlined destroy of PopoverPresentationDelegate.PopoverSource(v18);
}

BOOL specialized UIKitPopoverBridge.sourceViewVisibleInScrollView(anchor:transform:percentVisibilityRequired:)(uint64_t a1, uint64_t *a2, double a3)
{
  _sSo6CGRectVSgMaTm_0(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - v6;
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  v13 = a2[5];
  v29 = *a2;
  v30 = v9;
  v31 = v10;
  v32 = v11;
  v33 = v12;
  v34 = v13;
  _sSo6CGRectVSgMaTm_0(0, &lazy cache variable for type metadata for CGRect?, type metadata accessor for CGRect);
  Anchor.convert(to:)();
  if (v24)
  {
    static Log.presentation.getter();
    v14 = type metadata accessor for Logger();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v7, 1, v14) == 1)
    {
      outlined destroy of (key: ViewIdentity, value: InspectorStorage)?(v7, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
    }

    else
    {
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_18BD4A000, v19, v20, "Couldn't find popover source view size. Not going to compute whether\nto dismiss.", v21, 2u);
        MEMORY[0x18D0110E0](v21, -1, -1);
      }

      (*(v15 + 8))(v7, v14);
    }

    return 1;
  }

  else
  {
    v16 = v23;
    v26 = 0;
    v27 = 0;
    v28 = v23;
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    v25 = 2;
    v29 = v8;
    v30 = v9;
    v31 = v10;
    v32 = v11;
    v33 = v12;
    v34 = v13;
    CGRect.convertAndClipToScrollView(to:transform:)();
    outlined destroy of CoordinateSpace(&v22);
    v17 = *&v28 / *&v16;
    if (*&v28 / *&v16 >= *(&v28 + 1) / *(&v16 + 1))
    {
      v17 = *(&v28 + 1) / *(&v16 + 1);
    }

    return v17 >= a3;
  }
}

BOOL specialized UIKitPopoverBridge.popoverCanPresent(popover:)(uint64_t a1)
{
  _sSo6CGRectVSgMaTm_0(0, &lazy cache variable for type metadata for SearchEnvironmentStorage.BoundProperties?, type metadata accessor for SearchEnvironmentStorage.BoundProperties);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v15 - v3);
  v5 = *(a1 + 96);
  if (*(a1 + 117) == 1)
  {
    v15 = *(a1 + 88);
    v16 = v5;
    EnvironmentValues.searchBoundProperties.getter(v4);
    v6 = type metadata accessor for SearchEnvironmentStorage.BoundProperties(0);
    if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
    {
      v7 = &lazy cache variable for type metadata for SearchEnvironmentStorage.BoundProperties?;
      v8 = type metadata accessor for SearchEnvironmentStorage.BoundProperties;
      v9 = v4;
LABEL_8:
      outlined destroy of (key: ViewIdentity, value: InspectorStorage)?(v9, v7, v8);
      return 0;
    }

    outlined init with copy of SearchBoundProperty<PlatformSearchPopoverAnchor?>?(v4 + *(v6 + 28), v19);
    outlined destroy of SearchEnvironmentStorage.BoundProperties(v4, type metadata accessor for SearchEnvironmentStorage.BoundProperties);
    if (!v19[1])
    {
      v7 = &lazy cache variable for type metadata for SearchBoundProperty<PlatformSearchPopoverAnchor?>?;
      v8 = type metadata accessor for SearchBoundProperty<PlatformSearchPopoverAnchor?>;
      v9 = v19;
      goto LABEL_8;
    }

    type metadata accessor for Binding<PlatformSearchPopoverAnchor?>(0);
    MEMORY[0x18D00ACC0](&v17);
    outlined destroy of SearchEnvironmentStorage.BoundProperties(v19, type metadata accessor for SearchBoundProperty<PlatformSearchPopoverAnchor?>);
    if (v18 == 1)
    {
      outlined destroy of PopoverPresentation?(&v17, &lazy cache variable for type metadata for PlatformSearchPopoverAnchor?, &type metadata for PlatformSearchPopoverAnchor, MEMORY[0x1E69E6720]);
      return 0;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    outlined destroy of PlatformSearchPopoverAnchor(&v17);
    if (!Strong)
    {
      return 0;
    }
  }

  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV02__E14_searchStorage33_01524358DA8FEB8BCC0A94C08F00494ALLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>, &type metadata for EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView, &protocol witness table for EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>, &type metadata for EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView, &protocol witness table for EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView);
  if (v5)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  if (LOBYTE(v19[0]) == 2 || (v19[0] & 1) == 0 || (*(a1 + 116) & 1) != 0)
  {
    return 1;
  }

  else
  {
    v13 = *(a1 + 112);
    v14 = *(a1 + 104);
    AGGraphClearUpdate();
    v15 = v14;
    LODWORD(v16) = v13;
    AnchorGeometry.transform.getter();
    AGGraphSetUpdate();
    v10 = specialized UIKitPopoverBridge.sourceViewVisibleInScrollView(anchor:transform:percentVisibilityRequired:)(*(a1 + 16), v19, 0.5);
  }

  return v10;
}

uint64_t specialized UIKitPopoverBridge.popoverShouldAdapt(for:)()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_host;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v5 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v3 + 16) + 8));
    swift_unknownObjectRelease();
    if (v5)
    {
      v6 = [v5 traitCollection];

      v7 = [v6 userInterfaceIdiom];
      if (v7 == 6)
      {
        return 0;
      }
    }
  }

  v8 = OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_activePresentation;
  swift_beginAccess();
  outlined init with copy of UIKitPopoverBridge.PresentationKind(v1 + v8, v10);
  if (v11 - 2 < 2)
  {
    return 0;
  }

  if (!v11)
  {
    outlined destroy of UIKitPopoverBridge.PresentationKind(v10);
  }

  return 1;
}

uint64_t outlined destroy of UIKitPopoverBridge.PresentationKind(uint64_t result)
{
  if (*(result + 40) < 3u)
  {
    if (*(result + 40))
    {
      return result;
    }

LABEL_5:
    v1 = result;
    __swift_destroy_boxed_opaque_existential_1(result);
    return v1;
  }

  if (*result == -3)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t outlined init with take of PopoverPresentationDelegate.PopoverSource(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  swift_unknownObjectWeakTakeInit();
  swift_unknownObjectWeakTakeInit();
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v5;
  *(a2 + 24) = v4;
  v6 = *(a1 + 64);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 64) = v6;
  *(a2 + 80) = *(a1 + 80);
  return a2;
}

uint64_t lazy protocol witness table accessor for type CGRect and conformance CGRect(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t outlined init with copy of (key: ViewIdentity, value: InspectorStorage)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t specialized UIKitPopoverBridge.didDismissViewController(_:wasPreempted:modifierRemoved:)(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_activePresentation;
  swift_beginAccess();
  result = outlined init with copy of UIKitPopoverBridge.PresentationKind(v2 + v4, v26);
  *&v19[9] = *(&v26[1] + 9);
  v18 = v26[0];
  *v19 = v26[1];
  if (BYTE8(v26[2]) > 1u)
  {
    if (BYTE8(v26[2]) != 2)
    {
      goto LABEL_8;
    }

    outlined init with copy of UIKitPopoverBridge.PresentationKind(v2 + v4, &v18);
    *(&v26[1] + 9) = *&v19[9];
    v26[0] = v18;
    v26[1] = *v19;
    if (v19[24] > 1u)
    {
      if (v19[24] != 2)
      {
        goto LABEL_18;
      }
    }

    else if (!v19[24])
    {
      outlined destroy of UIKitPopoverBridge.PresentationKind(v26);
LABEL_18:
      v10 = 0;
      goto LABEL_19;
    }

    v10 = LODWORD(v26[0]);
LABEL_19:
    v11 = OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_lastInspectorValues;
    swift_beginAccess();
    v12 = *(v2 + v11);
    if (*(v12 + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v14 & 1) != 0))
    {
      outlined init with copy of InspectorStorage(*(v12 + 56) + 120 * v13, v26);
      if (*(&v26[0] + 1) >= 2uLL)
      {

        outlined destroy of PopoverPresentation?(v26, &lazy cache variable for type metadata for InspectorStorage?, &type metadata for InspectorStorage, MEMORY[0x1E69E6720]);
        swift_endAccess();
        v25 = 0;
        dispatch thunk of AnyLocation.set(_:transaction:)();

        return UIKitPopoverBridge.reset()();
      }
    }

    else
    {
      v26[0] = xmmword_18CD633F0;
      memset(&v26[1], 0, 32);
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      *&v31 = 0;
    }

    outlined destroy of PopoverPresentation?(v26, &lazy cache variable for type metadata for InspectorStorage?, &type metadata for InspectorStorage, MEMORY[0x1E69E6720]);
    swift_endAccess();
    return UIKitPopoverBridge.reset()();
  }

  if (!BYTE8(v26[2]))
  {
    result = outlined destroy of UIKitPopoverBridge.PresentationKind(&v18);
  }

LABEL_8:
  if (a1)
  {
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV02__E14_searchStorage33_01524358DA8FEB8BCC0A94C08F00494ALLVGMaTm_0(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]);
    lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
    result = static SemanticFeature.isEnabled.getter();
    if (result)
    {
      return UIKitPopoverBridge.reset()();
    }
  }

  v6 = *(v2 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_dismissingReason);
  if (v6 == 2 || (v6 & 1) != 0)
  {
    v8 = OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_lastPopoverPresentation;
    swift_beginAccess();
    v9 = outlined init with copy of PopoverPresentation?(v2 + v8, &v18, &lazy cache variable for type metadata for PopoverPresentation?, &type metadata for PopoverPresentation);
    if (v18)
    {
      v28 = v21;
      v29 = v22;
      v30 = v23;
      v31 = v24;
      v26[0] = v18;
      v26[1] = *v19;
      v26[2] = *&v19[16];
      v27 = v20;
      (*&v19[8])(v9);
      outlined destroy of PopoverPresentation(v26);
    }

    else
    {
      outlined destroy of PopoverPresentation?(&v18, &lazy cache variable for type metadata for PopoverPresentation?, &type metadata for PopoverPresentation, MEMORY[0x1E69E6720]);
      v15 = *(v2 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_pendingDismissAction);
      if (v15)
      {
        v16 = *(v2 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_pendingDismissAction + 8);

        v15(v17);
        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v15, v16);
      }
    }

    return UIKitPopoverBridge.reset()();
  }

  return result;
}

uint64_t outlined assign with take of PopoverPresentation?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PopoverPresentation?(0, &lazy cache variable for type metadata for PopoverPresentation?, &type metadata for PopoverPresentation, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void type metadata accessor for (UIKitPopoverBridge.PresentationKind, UIKitPopoverBridge.PresentationKind)()
{
  if (!lazy cache variable for type metadata for (UIKitPopoverBridge.PresentationKind, UIKitPopoverBridge.PresentationKind))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (UIKitPopoverBridge.PresentationKind, UIKitPopoverBridge.PresentationKind));
    }
  }
}

id *outlined destroy of PopoverPresentationDelegate.PopoverSource(id *a1)
{
  v2 = a1 + 2;

  MEMORY[0x18D011290](a1 + 1);
  MEMORY[0x18D011290](v2);
  return a1;
}

void specialized PopoverPresentationDelegate.presentationControllerDidAttemptToDismiss(_:)(void *a1)
{
  v7 = [a1 presentedViewController];
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV02__E14_searchStorage33_01524358DA8FEB8BCC0A94C08F00494ALLVGMaTm_0(0, &lazy cache variable for type metadata for PresentationHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PresentationHostingController);
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = *(v1 + direct field offset for UIHostingController.host);
    v4 = specialized _UIHostingView.sheetBridge.getter(v2, v3);

    if (v4)
    {
      v5 = *&v4[direct field offset for SheetBridge.interactiveDismissHandler];
      v6 = *&v4[direct field offset for SheetBridge.interactiveDismissHandler + 8];
      outlined copy of AppIntentExecutor?(v5, v6);

      if (v5)
      {
        v5();
        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v5, v6);
      }
    }
  }
}

unint64_t lazy protocol witness table accessor for type PresentationKind and conformance PresentationKind()
{
  result = lazy protocol witness table cache variable for type PresentationKind and conformance PresentationKind;
  if (!lazy protocol witness table cache variable for type PresentationKind and conformance PresentationKind)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PresentationKind, &type metadata for PresentationKind, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationKind and conformance PresentationKind);
  }

  return result;
}

uint64_t outlined init with copy of SearchBoundProperty<PlatformSearchPopoverAnchor?>?(uint64_t a1, uint64_t a2)
{
  _sSo6CGRectVSgMaTm_0(0, &lazy cache variable for type metadata for SearchBoundProperty<PlatformSearchPopoverAnchor?>?, type metadata accessor for SearchBoundProperty<PlatformSearchPopoverAnchor?>);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of (key: ViewIdentity, value: InspectorStorage)?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  _sSo6CGRectVSgMaTm_0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type CGRect? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type CGRect? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type CGRect? and conformance <A> A?)
  {
    v5[3] = v0;
    v5[4] = v1;
    _sSo6CGRectVSgMaTm_0(255, &lazy cache variable for type metadata for CGRect?, type metadata accessor for CGRect);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, MEMORY[0x1E695EF78]);
    result = swift_getWitnessTable(MEMORY[0x1E69E7C80], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type CGRect? and conformance <A> A?);
  }

  return result;
}

void type metadata accessor for (key: ViewIdentity, value: InspectorStorage)()
{
  if (!lazy cache variable for type metadata for (key: ViewIdentity, value: InspectorStorage))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (key: ViewIdentity, value: InspectorStorage));
    }
  }
}

uint64_t outlined destroy of SearchEnvironmentStorage.BoundProperties(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void destroy for PopoverPresentationDelegate.PopoverSource(id *a1)
{
  MEMORY[0x18D011290](a1 + 1);

  JUMPOUT(0x18D011290);
}

uint64_t initializeWithCopy for PopoverPresentationDelegate.PopoverSource(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  v5 = v4;
  swift_unknownObjectWeakCopyInit();
  swift_unknownObjectWeakCopyInit();
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t assignWithCopy for PopoverPresentationDelegate.PopoverSource(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  swift_unknownObjectWeakCopyAssign();
  swift_unknownObjectWeakCopyAssign();
  v7 = *(a2 + 24);
  v8 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v8;
  *(a1 + 24) = v7;
  v9 = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 64) = v9;
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t initializeWithTake for PopoverPresentationDelegate.PopoverSource(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_unknownObjectWeakTakeInit();
  swift_unknownObjectWeakTakeInit();
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t assignWithTake for PopoverPresentationDelegate.PopoverSource(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  swift_unknownObjectWeakTakeAssign();
  swift_unknownObjectWeakTakeAssign();
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t static EventModifiersGesture._makeGesture(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(void *__return_ptr, __int128 *)@<X2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = a2[5];
  v30 = a2[4];
  *v31 = v7;
  *&v31[12] = *(a2 + 92);
  v8 = a2[1];
  v26 = *a2;
  v27 = v8;
  v9 = a2[3];
  v28 = a2[2];
  v29 = v9;
  v11 = *(a2 + 28);
  v12 = *(a2 + 116);
  v32 = *(a2 + 27);
  v10 = v32;
  v33 = v11;
  v34 = v12;
  a3(a5, &v26);
  LODWORD(v26) = v6;
  type metadata accessor for EventModifiersGesture(255, a4, v13, v14);
  type metadata accessor for _GraphValue();
  v15 = _GraphValue.value.getter();
  type metadata accessor for _GestureOutputs();
  v16 = _GestureOutputs.phase.getter();
  *&v26 = __PAIR64__(v10, v15);
  *(&v26 + 1) = __PAIR64__(v16, v11);
  LODWORD(v27) = 0;
  BYTE4(v27) = 0;
  v23 = type metadata accessor for GesturePhase();
  v24 = type metadata accessor for EventModifiersGesturePhase(0, a4, v17, v18);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for EventModifiersGesturePhase<A>, v24);
  v19 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v26, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v22, v24, MEMORY[0x1E69E73E0], v19, MEMORY[0x1E69E7410], v20);
  return _GestureOutputs.phase.setter();
}

uint64_t EventModifiersGesturePhase.phase.getter@<X0>(uint64_t a3@<X8>)
{
  v4 = type metadata accessor for GesturePhase();
  Value = AGGraphGetValue();
  v6 = *(*(v4 - 8) + 16);

  return v6(a3, Value, v4);
}

uint64_t EventModifiersGesturePhase.updateValue()(uint64_t a1)
{
  v2 = v1;
  v57 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  v5 = type metadata accessor for GesturePhase();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v41 - v11;
  swift_getWitnessTable(protocol conformance descriptor for EventModifiersGesturePhase<A>, a1, v10);
  result = ResettableGestureRule.resetIfNeeded()();
  if ((result & 1) == 0)
  {
    return result;
  }

  v14 = *(v1 + 20);
  v46 = v5;
  if (v14)
  {
LABEL_19:
    v32 = EventModifiersGesturePhase.phase.getter(v8);
    v33 = MEMORY[0x1EEE9AC00](v32);
    v41[-2] = a1;
    v41[-1] = swift_getWitnessTable(protocol conformance descriptor for EventModifiersGesturePhase<A>, a1, v33);
    v34 = v46;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v8, partial apply for closure #1 in StatefulRule.value.setter, &v41[-4], v46, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v35);
    return (*(v6 + 8))(v8, v34);
  }

  v44 = v8;
  EventModifiersGesturePhase.phase.getter(v12);
  if (swift_getEnumCaseMultiPayload() > 2)
  {
LABEL_18:
    v8 = v44;
    goto LABEL_19;
  }

  v15 = *(v6 + 8);
  v41[1] = v6 + 8;
  v41[0] = v15;
  v15(v12, v5);
  type metadata accessor for EventModifiersGesture(0, v4, v16, v17);
  v43 = *AGGraphGetValue();
  type metadata accessor for [EventID : EventType](0);
  v18 = *AGGraphGetValue();
  v19 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v18 + 64);
  v23 = (v20 + 63) >> 6;
  v45 = v18;

  v24 = 0;
  v42 = v6;
  if (!v22)
  {
    while (1)
    {
LABEL_8:
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
      }

      if (v25 >= v23)
      {
        break;
      }

      v22 = *(v19 + 8 * v25);
      ++v24;
      if (v22)
      {
        goto LABEL_11;
      }
    }

    *(v2 + 20) = 1;
    goto LABEL_18;
  }

  while (1)
  {
    v25 = v24;
LABEL_11:
    outlined init with copy of _Benchmark(*(v45 + 56) + 40 * (__clz(__rbit64(v22)) | (v25 << 6)), &v56);
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v56, v53);
    v26 = v54;
    v27 = v55;
    __swift_project_boxed_opaque_existential_1(v53, v54);
    (*(v27 + 8))(v50, v26, v27);
    if (LOBYTE(v50[0]))
    {
      break;
    }

    outlined init with copy of _Benchmark(v53, v49);
    type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for EventType, MEMORY[0x1E6981E78]);
    type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for ModifiersEventType, MEMORY[0x1E697F420]);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v48 = 0;
      memset(v47, 0, sizeof(v47));
      outlined destroy of ModifiersEventType?(v47);
      break;
    }

    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v47, v50);
    v28 = v51;
    v29 = v52;
    __swift_project_boxed_opaque_existential_1(v50, v51);
    v30 = (*(v29 + 16))(v28, v29);
    v31 = v43 & ~v30;
    __swift_destroy_boxed_opaque_existential_1(v50);
    if (v31)
    {
      break;
    }

    v22 &= v22 - 1;
    __swift_destroy_boxed_opaque_existential_1(v53);
    v24 = v25;
    v6 = v42;
    if (!v22)
    {
      goto LABEL_8;
    }
  }

  v36 = v44;
  v37 = v46;
  v38 = swift_storeEnumTagMultiPayload();
  v39 = MEMORY[0x1EEE9AC00](v38);
  v41[-2] = a1;
  v41[-1] = swift_getWitnessTable(protocol conformance descriptor for EventModifiersGesturePhase<A>, a1, v39);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v36, closure #1 in StatefulRule.value.setterpartial apply, &v41[-4], v37, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v40);

  (v41[0])(v36, v37);
  return __swift_destroy_boxed_opaque_existential_1(v53);
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance EventModifiersGesturePhase<A>@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for GesturePhase();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t type metadata completion function for _ModifiersGesture(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for EventModifiersGesture(255, AssociatedTypeWitness, v2, v3);
  swift_getWitnessTable(protocol conformance descriptor for EventModifiersGesture<A>, v6);
  result = type metadata accessor for ModifierGesture();
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EventModifiersGesturePhase(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 21))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 20);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for EventModifiersGesturePhase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 20) = a2 + 1;
    }
  }

  return result;
}

uint64_t outlined destroy of ModifiersEventType?(uint64_t a1)
{
  type metadata accessor for ModifiersEventType?(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for ModifiersEventType?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiersEventType?)
  {
    type metadata accessor for CVarArg(255, &lazy cache variable for type metadata for ModifiersEventType, MEMORY[0x1E697F420]);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiersEventType?);
    }
  }
}

void SceneNavigationStrategy_Phone.sceneListItem<A>(namespace:presenting:where:)(uint64_t *__return_ptr a1@<X8>, uint64_t a2@<X0>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t a4@<X5>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (static AppGraph.shared)
  {
    MEMORY[0x1EEE9AC00](a2);

    static Update.ensure<A>(_:)();
    closure #1 in SceneNavigationStrategy_Phone.sceneListItem<A>(namespace:presenting:where:)(&v11, a3, a4, a5, a1);
  }

  else
  {

    bzero(a1, 0x231uLL);
  }
}

void SceneNavigationStrategy_Phone.sceneListItem<A>(namespace:id:presenting:where:)(uint64_t *__return_ptr a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t (*a5)(uint64_t)@<X6>, uint64_t a6@<X7>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (static AppGraph.shared)
  {
    MEMORY[0x1EEE9AC00](a2);

    static Update.ensure<A>(_:)();
    closure #1 in SceneNavigationStrategy_Phone.sceneListItem<A>(namespace:id:presenting:where:)(&v17, a3, a4, a5, a6, a9, a1, a12);
  }

  else
  {

    bzero(a1, 0x231uLL);
  }
}

uint64_t UISceneSession.matchesSceneID(_:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = [v3 userInfo];
  if (v7)
  {
    v8 = v7;
    v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000019, 0x800000018CD3D380), (v11 & 1) != 0))
    {
      outlined init with copy of Any(*(v9 + 56) + 32 * v10, &v20);

      if (swift_dynamicCast())
      {
        v13 = v18;
        v12 = v19;
        if ((a3 & 1) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  v13 = 0;
  v12 = 0;
  if ((a3 & 1) == 0)
  {
LABEL_6:
    outlined copy of SceneID(a1, a2, 0);
    if (v12)
    {
      goto LABEL_7;
    }

LABEL_13:
    v14 = 0;
    goto LABEL_16;
  }

LABEL_12:
  v20 = _typeName(_:qualified:)();
  v21 = v15;
  MEMORY[0x18D00C9B0](45, 0xE100000000000000);
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v16);

  a1 = v20;
  a2 = v21;
  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (v13 == a1 && v12 == a2)
  {
    v14 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

LABEL_16:

  return v14 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SceneRequestCache.Item()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  AnyHashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SceneRequestCache.Item(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  AnyHashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SceneRequestCache.Item(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (v2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    JUMPOUT(0x18D00E7E0);
  }

  return 0;
}

uint64_t SceneRequestCache.requestInCacheAddIfNotPresent<A>(id:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v13 = a1;
  v14 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  if (v17)
  {
    v26 = _typeName(_:qualified:)();
    v27 = v18;
    MEMORY[0x18D00C9B0](45, 0xE100000000000000);
    v25[0] = a2;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v19);

    v13 = v26;
    a2 = v27;
  }

  else
  {
  }

  (*(v14 + 16))(v16, a4, a5);
  AnyHashable.init<A>(_:)();
  v26 = v13;
  v27 = a2;
  swift_beginAccess();
  v20 = *(v9 + 16);

  v21 = specialized Set.contains(_:)(&v26, v20);

  if ((v21 & 1) == 0)
  {
    outlined init with copy of SceneRequestCache.Item(&v26, v24);
    swift_beginAccess();
    specialized Set._Variant.insert(_:)(v25, v24);
    outlined destroy of SceneRequestCache.Item(v25);
    swift_endAccess();
  }

  outlined destroy of SceneRequestCache.Item(&v26);
  return v21 & 1;
}

uint64_t initializeWithCopy for SceneRequestCache.Item(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 40);
  *(a1 + 40) = v5;
  v6 = v5;
  v7 = **(v5 - 8);

  v7(a1 + 16, a2 + 16, v6);
  return a1;
}

void *assignWithCopy for SceneRequestCache.Item(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  __swift_assign_boxed_opaque_existential_1(a1 + 2, a2 + 2);
  return a1;
}

uint64_t assignWithTake for SceneRequestCache.Item(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  __swift_destroy_boxed_opaque_existential_1((a1 + 16));
  v5 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v5;
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t closure #1 in SceneNavigationStrategy_Phone.withSceneList<A>(namespace:do:)@<X0>(uint64_t Value@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if ((*(Value + 208) & 1) == 0)
  {
    type metadata accessor for [SceneList.Namespace : SceneList](0);
    v9 = AGGraphGetValue();
    v10 = *v9;
    if (*(*v9 + 16))
    {

      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4);
      if (v12)
      {
        v13 = (*(v10 + 56) + 24 * v11);
        v14 = *v13;
        v15 = v13[1];
        v16 = v13[2];

        *a5 = v14;
        a5[1] = v15;
        a5[2] = v16;
        return result;
      }
    }
  }

  result = EnvironmentValues.init()();
  *a5 = MEMORY[0x1E69E7CC0];
  return result;
}

void SceneNavigationStrategy_Phone.dismissWindow<A>(namespace:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = [objc_opt_self() sharedApplication];
  v15 = [v14 supportsMultipleScenes];

  if (v15)
  {
    SceneNavigationStrategy_Phone.sceneListItem<A>(namespace:presenting:where:)(__src, a1, closure #1 in SceneNavigationStrategy_Phone.openWindow<A>(namespace:id:presenting:withBehavior:), 0, a7, a8, a9, a10);
    if (__src[68])
    {
      memcpy(__dst, __src, 0x231uLL);
      outlined init with copy of SceneList.Item.Value(__dst, __src);
      if (LOBYTE(__src[16]))
      {
        v16 = static os_log_type_t.fault.getter();
        v17 = static Log.runtimeIssuesLog.getter();
        type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_18CD63400;
        v19 = _typeName(_:qualified:)();
        v21 = v20;
        *(v18 + 56) = MEMORY[0x1E69E6158];
        *(v18 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v18 + 32) = v19;
        *(v18 + 40) = v21;
        os_log(_:dso:log:_:_:)(v16, &dword_18BD4A000, v17, "Unable to dismiss a window for type '%s'", v29);

        outlined destroy of SceneList.Item(__dst);
        outlined destroy of SceneList.Item.Value(__src);
      }

      else
      {
        outlined destroy of SceneList.Item.Value(__src);
        specialized SceneNavigationStrategy_Phone.handleSceneDestruction<A>(id:value:)(__dst[17], __dst[18], __dst[19], a4, a7, a8, a9, a10);
        outlined destroy of SceneList.Item(__dst);
      }
    }

    else
    {
      _s7SwiftUI9SceneListV4ItemVSgWOhTm_0(__src, type metadata accessor for SceneList.Item?);
      v23 = static os_log_type_t.fault.getter();
      v24 = static Log.runtimeIssuesLog.getter();
      type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_18CD63400;
      v26 = _typeName(_:qualified:)();
      v28 = v27;
      *(v25 + 56) = MEMORY[0x1E69E6158];
      *(v25 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v25 + 32) = v26;
      *(v25 + 40) = v28;
      os_log(_:dso:log:_:_:)(v23, &dword_18BD4A000, v24, "No Scene presenting type '%s' is defined", v29);
    }
  }

  else
  {
    v22 = static os_log_type_t.fault.getter();
    v30 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v22, &dword_18BD4A000, v30, "Unable to dismiss a window when the app does not support multiple scenes.", 73, 2, MEMORY[0x1E69E7CC0]);
  }
}

void SceneNavigationStrategy_Phone.dismissWindow<A>(namespace:id:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = [objc_opt_self() sharedApplication];
  v16 = [v15 supportsMultipleScenes];

  if (v16)
  {
    LOBYTE(v34) = 0;
    SceneNavigationStrategy_Phone.sceneListItem<A>(namespace:id:presenting:where:)(__src, a1, a4, a5, closure #1 in SceneNavigationStrategy_Phone.openWindow<A>(namespace:id:presenting:withBehavior:), 0, v34, v36, a9, a10, a11, a12);
    v17 = a5;
    if (__src[68])
    {
      memcpy(__dst, __src, 0x231uLL);
      outlined init with copy of SceneList.Item.Value(__dst, __src);
      if (LOBYTE(__src[16]))
      {
        v18 = static os_log_type_t.fault.getter();
        v19 = static Log.runtimeIssuesLog.getter();
        type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_18CD63410;
        v21 = _typeName(_:qualified:)();
        v23 = v22;
        v24 = MEMORY[0x1E69E6158];
        *(v20 + 56) = MEMORY[0x1E69E6158];
        v25 = lazy protocol witness table accessor for type String and conformance String();
        *(v20 + 32) = v21;
        *(v20 + 40) = v23;
        *(v20 + 96) = v24;
        *(v20 + 104) = v25;
        *(v20 + 64) = v25;
        *(v20 + 72) = a4;
        *(v20 + 80) = v17;

        os_log(_:dso:log:_:_:)(v18, &dword_18BD4A000, v19, "Unable to dismiss a window for type '%s' and id '%s'", v35, v37);

        outlined destroy of SceneList.Item(__dst);
        outlined destroy of SceneList.Item.Value(__src);
      }

      else
      {
        outlined destroy of SceneList.Item.Value(__src);
        specialized SceneNavigationStrategy_Phone.handleSceneDestruction<A>(id:value:)(__dst[17], __dst[18], __dst[19], a6, a9, a10, a11, a12);
        outlined destroy of SceneList.Item(__dst);
      }
    }

    else
    {
      _s7SwiftUI9SceneListV4ItemVSgWOhTm_0(__src, type metadata accessor for SceneList.Item?);
      v27 = static os_log_type_t.fault.getter();
      v28 = static Log.runtimeIssuesLog.getter();
      type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_18CD63410;
      v30 = MEMORY[0x1E69E6158];
      *(v29 + 56) = MEMORY[0x1E69E6158];
      v31 = lazy protocol witness table accessor for type String and conformance String();
      *(v29 + 64) = v31;
      *(v29 + 32) = a4;
      *(v29 + 40) = v17;

      v32 = _typeName(_:qualified:)();
      *(v29 + 96) = v30;
      *(v29 + 104) = v31;
      *(v29 + 72) = v32;
      *(v29 + 80) = v33;
      os_log(_:dso:log:_:_:)(v27, &dword_18BD4A000, v28, "No Scene with id '%s' and presenting type '%s' is defined", v35, v37);
    }
  }

  else
  {
    v26 = static os_log_type_t.fault.getter();
    v39 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v26, &dword_18BD4A000, v39, "Unable to dismiss a window when the app does not support multiple scenes", 72, 2, MEMORY[0x1E69E7CC0]);
  }
}

void closure #1 in SceneNavigationStrategy_Phone.sceneListItem<A>(namespace:presenting:where:)(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a8@<X8>)
{
  v8 = *a1;
  v9 = *(*a1 + 16);
  if (v9)
  {
    v13 = 0;
    v14 = v8 + 32;
    while (v13 < *(v8 + 16))
    {
      outlined init with copy of SceneList.Item(v14, __src);
      if (closure #1 in closure #1 in SceneNavigationStrategy_Phone.sceneListItem<A>(namespace:presenting:where:)(__src, a2, a3, a4))
      {
        memcpy(a8, __src, 0x231uLL);
        return;
      }

      ++v13;
      outlined destroy of SceneList.Item(__src);
      v14 += 568;
      if (v9 == v13)
      {
        goto LABEL_6;
      }
    }

    __break(1u);

    outlined destroy of SceneList.Item(__src);
    __break(1u);
  }

  else
  {
LABEL_6:
    bzero(a8, 0x231uLL);
  }
}

uint64_t closure #1 in closure #1 in SceneNavigationStrategy_Phone.sceneListItem<A>(namespace:presenting:where:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  outlined init with copy of SceneList.Item.Value(a1, v17);
  if (v23)
  {
    outlined destroy of SceneList.Item.Value(v17);
    v7 = 0;
  }

  else
  {
    v24 = a4;
    v16 = a2;
    v8 = v17[1];
    v9 = v17[2];
    v10 = v18;
    v12 = v19;
    v11 = v20;
    v13 = v21;
    v14 = v22;

    outlined consume of Text?(v8, v9, v10, v12);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v13, v14);
    v7 = 0;
    if (v11 && v11 == v24)
    {
      v7 = v16(a1);
    }
  }

  return v7 & 1;
}

void closure #1 in SceneNavigationStrategy_Phone.sceneListItem<A>(namespace:id:presenting:where:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a9@<X8>, uint64_t a10)
{
  v10 = *a1;
  v11 = *(*a1 + 16);
  if (v11)
  {
    v16 = 0;
    v17 = v10 + 32;
    while (v16 < *(v10 + 16))
    {
      outlined init with copy of SceneList.Item(v17, __src);
      if (closure #1 in closure #1 in SceneNavigationStrategy_Phone.sceneListItem<A>(namespace:id:presenting:where:)(__src, a2, a3, a4, a5, a6))
      {
        memcpy(a9, __src, 0x231uLL);
        return;
      }

      ++v16;
      outlined destroy of SceneList.Item(__src);
      v17 += 568;
      if (v11 == v16)
      {
        goto LABEL_6;
      }
    }

    __break(1u);

    outlined destroy of SceneList.Item(__src);
    __break(1u);
  }

  else
  {
LABEL_6:
    bzero(a9, 0x231uLL);
  }
}

uint64_t closure #1 in closure #1 in SceneNavigationStrategy_Phone.sceneListItem<A>(namespace:id:presenting:where:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v11 = *(a1 + 136);
  v12 = *(a1 + 144);
  if (*(a1 + 152))
  {
    v28 = _typeName(_:qualified:)();
    v29 = v13;
    MEMORY[0x18D00C9B0](45, 0xE100000000000000);
    v37 = v12;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v14);

    if (v28 == a2 && v29 == a3)
    {
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0)
      {
LABEL_14:
        v17 = 0;
        return v17 & 1;
      }
    }
  }

  else
  {
    v15 = v11 == a2 && v12 == a3;
    if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  outlined init with copy of SceneList.Item.Value(a1, &v28);
  if (v36)
  {
    outlined destroy of SceneList.Item.Value(&v28);
    goto LABEL_14;
  }

  v26 = a4;
  v27 = a6;
  v19 = v29;
  v20 = v30;
  v21 = v31;
  v23 = v32;
  v22 = v33;
  v24 = v34;
  v25 = v35;

  outlined consume of Text?(v19, v20, v21, v23);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v24, v25);
  v17 = 0;
  if (v22 && v22 == v27)
  {
    v17 = v26(a1);
  }

  return v17 & 1;
}

uint64_t UISceneSession.matchesPresentationValue<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = type metadata accessor for Optional();
  v43 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  v13 = *(a2 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [v6 userInfo];
  if (!v18)
  {
    goto LABEL_12;
  }

  v40 = a5;
  v41 = a1;
  v42 = v13;
  v19 = v18;
  v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v20 + 16))
  {
    goto LABEL_11;
  }

  v21 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001BLL, 0x800000018CD41390);
  if ((v22 & 1) == 0)
  {
    goto LABEL_11;
  }

  outlined init with copy of Any(*(v20 + 56) + 32 * v21, &v46);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v23 = *(&v44 + 1);
  v39 = v44;
  v24 = [v6 userInfo];
  if (!v24)
  {
LABEL_11:

    goto LABEL_12;
  }

  v25 = v23;
  v26 = v24;
  v27 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v27 + 16) || (v28 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001CLL, 0x800000018CD41370), (v29 & 1) == 0))
  {

    goto LABEL_11;
  }

  outlined init with copy of Any(*(v27 + 56) + 32 * v28, &v46);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v30 = v44;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v33 = v42;
  (*(v42 + 56))(v12, 0, 1, a2);
  (*(v33 + 32))(v17, v12, a2);
  makeStableTypeData(_:)();
  v44 = v46;
  v45 = v47;
  v34 = StrongHash.description.getter();
  if (v34 == v39 && v35 == v25)
  {

LABEL_19:
    v31 = dispatch thunk of static Equatable.== infix(_:_:)();

    v37 = outlined consume of Data._Representation(v30, *(&v30 + 1));
    (*(v33 + 8))(v17, a2, v37);
    return v31 & 1;
  }

  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v36)
  {
    goto LABEL_19;
  }

  (*(v33 + 8))(v17, a2);

  outlined consume of Data._Representation(v30, *(&v30 + 1));
LABEL_12:
  v31 = 0;
  return v31 & 1;
}

uint64_t SceneNavigationStrategy_Phone.sceneSessionActivationRequest(for:sceneConfiguration:userActivity:options:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v58 = a4;
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v52 - v13;
  if (a1)
  {
    v57 = a5;
    v15 = a1;
    static Log.scenes.getter();
    v16 = type metadata accessor for Logger();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v14, 1, v16) == 1)
    {
      _s7SwiftUI9SceneListV4ItemVSgWOhTm_0(v14, type metadata accessor for Logger?);
      v18 = v58;
      v19 = a3;
    }

    else
    {
      v18 = v58;
      v24 = v15;
      v56 = a3;
      v19 = a3;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();

      v53 = v24;
      v54 = v26;
      v55 = v25;
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v52[1] = v15;
        v29 = v28;
        *v27 = 138543874;
        v30 = v53;
        *(v27 + 4) = v53;
        *(v27 + 12) = 2114;
        *(v27 + 14) = v19;
        v31 = v56;
        *v28 = a1;
        v28[1] = v31;
        *(v27 + 22) = 2114;
        *(v27 + 24) = v18;
        v28[2] = v58;
        v32 = v30;
        v33 = v19;
        v34 = v18;
        _os_log_impl(&dword_18BD4A000, v55, v54, "Creating scene session activation request for existing session: %{public}@ userActivity: %{public}@ options: %{public}@", v27, 0x20u);
        type metadata accessor for NSObject?(0);
        swift_arrayDestroy();
        MEMORY[0x18D0110E0](v29, -1, -1);
        MEMORY[0x18D0110E0](v27, -1, -1);
      }

      (*(v17 + 8))(v14, v16);
    }

    v35 = v19;
    v36 = v18;
    return UISceneSessionActivationRequest.init(session:userActivity:options:)();
  }

  else
  {
    static Log.scenes.getter();
    v20 = type metadata accessor for Logger();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v11, 1, v20) == 1)
    {
      _s7SwiftUI9SceneListV4ItemVSgWOhTm_0(v11, type metadata accessor for Logger?);
      v22 = v58;
      v23 = a3;
    }

    else
    {
      v57 = a5;
      v22 = v58;
      v38 = a2;
      v23 = a3;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();

      v55 = v39;
      if (os_log_type_enabled(v39, v40))
      {
        v41 = v40;
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v56 = a3;
        v44 = v43;
        *v42 = 138543874;
        *(v42 + 4) = v38;
        *(v42 + 12) = 2114;
        *(v42 + 14) = v23;
        v45 = v56;
        *v43 = v38;
        v43[1] = v45;
        *(v42 + 22) = 2114;
        *(v42 + 24) = v22;
        v43[2] = v58;
        v46 = v23;
        v47 = v22;
        v48 = v38;
        _os_log_impl(&dword_18BD4A000, v55, v41, "Creating scene session activation request for new configuration: %{public}@ userActivity: %{public}@ options: %{public}@", v42, 0x20u);
        type metadata accessor for NSObject?(0);
        swift_arrayDestroy();
        MEMORY[0x18D0110E0](v44, -1, -1);
        MEMORY[0x18D0110E0](v42, -1, -1);
      }

      (*(v21 + 8))(v11, v20);
    }

    v49 = v23;
    v50 = v22;
    v51 = a2;
    return UISceneSessionActivationRequest.init(configuration:userActivity:options:)();
  }
}

void closure #1 in closure #1 in SceneNavigationStrategy_Phone.performSceneActivation(item:activity:matchingSession:activationBehavior:errorHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.scenes.getter();
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    _s7SwiftUI9SceneListV4ItemVSgWOhTm_0(v10, type metadata accessor for Logger?);
  }

  else
  {
    v32 = a3;
    outlined init with copy of SceneList.Item(a1, v35);
    outlined init with copy of SceneList.Item(a1, v34);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v30 = a4;
      v16 = v15;
      v29 = swift_slowAlloc();
      v33 = v29;
      *v16 = 136446466;
      v17 = SceneList.Item.sceneTypeDescription.getter();
      v31 = a2;
      v19 = v18;
      outlined destroy of SceneList.Item(v35);
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v33);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2082;
      v21 = SceneList.Item.identifyingDescription.getter();
      v23 = v22;
      outlined destroy of SceneList.Item(v34);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v33);

      *(v16 + 14) = v24;
      _os_log_impl(&dword_18BD4A000, v13, v14, "Sending scene activation request for item %{public}s: %{public}s", v16, 0x16u);
      v25 = v29;
      swift_arrayDestroy();
      MEMORY[0x18D0110E0](v25, -1, -1);
      v26 = v16;
      a4 = v30;
      MEMORY[0x18D0110E0](v26, -1, -1);
    }

    else
    {

      outlined destroy of SceneList.Item(v34);
      outlined destroy of SceneList.Item(v35);
    }

    (*(v12 + 8))(v10, v11);
    a3 = v32;
  }

  v27 = [objc_opt_self() sharedApplication];
  outlined init with copy of SceneList.Item(a1, v35);
  v28 = swift_allocObject();
  memcpy(v28 + 2, v35, 0x231uLL);
  v28[73] = a3;
  v28[74] = a4;
  outlined copy of AppIntentExecutor?(a3, a4);
  UIApplication.activateSceneSession(for:errorHandler:)();
}

void closure #1 in closure #1 in closure #1 in SceneNavigationStrategy_Phone.performSceneActivation(item:activity:matchingSession:activationBehavior:errorHandler:)(char *a1, uint64_t a2, void (*a3)(void), const char *a4)
{
  v6 = static os_log_type_t.fault.getter();
  v7 = static Log.runtimeIssuesLog.getter();
  type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_18CDD3F30;
  v9 = SceneList.Item.sceneTypeDescription.getter();
  v11 = v10;
  v12 = MEMORY[0x1E69E6158];
  *(v8 + 56) = MEMORY[0x1E69E6158];
  v13 = lazy protocol witness table accessor for type String and conformance String();
  *(v8 + 64) = v13;
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  v14 = SceneList.Item.identifyingDescription.getter();
  *(v8 + 96) = v12;
  *(v8 + 104) = v13;
  *(v8 + 72) = v14;
  *(v8 + 80) = v15;
  v16 = a1;
  type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for Error, MEMORY[0x1E69E7280]);
  v17 = String.init<A>(describing:)();
  *(v8 + 136) = v12;
  *(v8 + 144) = v13;
  *(v8 + 112) = v17;
  *(v8 + 120) = v18;
  os_log(_:dso:log:_:_:)(v6, &dword_18BD4A000, v7, "Unable to present a %s (%s): %s", a4, a1, v21);

  if (a3)
  {
    v19 = _convertErrorToNSError(_:)();
    a3();
  }
}

uint64_t one-time initialization function for userActivityTypeOpenWindowByID()
{
  _StringGuts.grow(_:)(17);
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
  }

  else
  {
    v4 = 0x800000018CD55C00;
    v2 = 0xD000000000000011;
  }

  MEMORY[0x18D00C9B0](v2, v4);

  result = MEMORY[0x18D00C9B0](0x6E69576E65706F2ELL, 0xEF44497942776F64);
  static NSUserActivity.userActivityTypeOpenWindowByID = 0;
  *algn_1EAB09078 = 0xE000000000000000;
  return result;
}

id specialized SceneNavigationStrategy_Phone.userActivityForOpeningWindow(id:)(uint64_t a1, uint64_t a2, char a3)
{
  if (one-time initialization token for userActivityTypeOpenWindowByID != -1)
  {
    swift_once();
  }

  v6 = static NSUserActivity.userActivityTypeOpenWindowByID;
  v7 = *algn_1EAB09078;
  v8 = objc_allocWithZone(MEMORY[0x1E696B090]);
  v9 = MEMORY[0x18D00C850](v6, v7);
  v10 = [v8 initWithActivityType_];

  *&v20 = 0xD000000000000019;
  *(&v20 + 1) = 0x800000018CD3D380;
  v11 = MEMORY[0x1E69E6158];
  AnyHashable.init<A>(_:)();
  if (a3)
  {
    *&v20 = _typeName(_:qualified:)();
    *(&v20 + 1) = v12;
    MEMORY[0x18D00C9B0](45, 0xE100000000000000);
    LOBYTE(v19[0]) = a2;
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v13);

    a2 = *(&v20 + 1);
    a1 = v20;
  }

  else
  {
  }

  v21 = v11;
  *&v20 = a1;
  *(&v20 + 1) = a2;
  outlined init with take of Any(&v20, v19);
  v14 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v19, v22, isUniquelyReferenced_nonNull_native);
  outlined destroy of AnyHashable(v22);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v10 setUserInfo_];

  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of SceneNavigationStrategy_Phone.userActivityForOpeningWindow(id:));
  outlined destroy of String(&unk_1EFF8C8D8);
  v17 = Set._bridgeToObjectiveC()().super.isa;

  [v10 setRequiredUserInfoKeys_];

  [v10 setEligibleForHandoff_];
  return v10;
}

id specialized SceneNavigationStrategy_Phone.userActivityForOpeningWindow<A>(id:value:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v10 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v12 = v11;
  v13 = specialized SceneNavigationStrategy_Phone.userActivityForOpeningWindow(id:)(a1, a2, a3 & 1);
  AnyHashable.init<A>(_:)();
  v24 = MEMORY[0x1E6969080];
  *&v23 = v10;
  *(&v23 + 1) = v12;
  result = [v13 userInfo];
  if (!result)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v15 = result;
  v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  outlined init with take of Any(&v23, v22);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, &v25, isUniquelyReferenced_nonNull_native);
  outlined destroy of AnyHashable(&v25);
  if (v16)
  {
    v18.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v18.super.isa = 0;
  }

  [v13 setUserInfo_];

  result = [v13 requiredUserInfoKeys];
  if (!result)
  {
    goto LABEL_11;
  }

  v19 = result;
  v20 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  *&v23 = v20;
  specialized Set._Variant.insert(_:)(&v25, 0xD00000000000001CLL, 0x800000018CD41370);

  if (v23)
  {
    v21.super.isa = Set._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v21.super.isa = 0;
  }

  [v13 setRequiredUserInfoKeys_];
  outlined consume of Data._Representation(v10, v12);

  return v13;
}

void type metadata accessor for SceneList.Item?()
{
  if (!lazy cache variable for type metadata for SceneList.Item?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SceneList.Item?);
    }
  }
}

uint64_t specialized SceneNavigationStrategy_Phone.existingSession<A>(id:value:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = [objc_opt_self() sharedApplication];
  v17 = [v16 openSessions];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UISceneSession, 0x1E69DCEA8);
  lazy protocol witness table accessor for type UISceneSession and conformance NSObject();
  v18 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v22[2] = a5;
  v22[3] = a6;
  v22[4] = a7;
  v22[5] = a8;
  v22[6] = a1;
  v22[7] = a2;
  v23 = a3 & 1;
  v24 = a4;
  specialized Sequence.first(where:)(partial apply for closure #1 in SceneNavigationStrategy_Phone.existingSession<A>(id:value:), v22, v18);
  v20 = v19;

  return v20;
}

uint64_t specialized SceneNavigationStrategy_Phone.performSceneActivation(item:activity:matchingSession:activationBehavior:errorHandler:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v42 = a2;
  v43 = a7;
  v41 = a6;
  v45 = a4;
  v40 = a3;
  v9 = type metadata accessor for UISceneSessionActivationRequest();
  v44 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v35[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Log.scenes.getter();
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    _s7SwiftUI9SceneListV4ItemVSgWOhTm_0(v14, type metadata accessor for Logger?);
  }

  else
  {
    v39 = a5;
    outlined init with copy of SceneList.Item(a1, v48);
    outlined init with copy of SceneList.Item(a1, v47);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v38 = v9;
      v20 = v19;
      v37 = swift_slowAlloc();
      v46 = v37;
      *v20 = 136446466;
      v36 = v18;
      v21 = SceneList.Item.sceneTypeDescription.getter();
      v23 = v22;
      outlined destroy of SceneList.Item(v48);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v46);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      v25 = SceneList.Item.identifyingDescription.getter();
      v27 = v26;
      outlined destroy of SceneList.Item(v47);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v46);

      *(v20 + 14) = v28;
      _os_log_impl(&dword_18BD4A000, v17, v36, "Performing scene activation for item %{public}s: %{public}s", v20, 0x16u);
      v29 = v37;
      swift_arrayDestroy();
      MEMORY[0x18D0110E0](v29, -1, -1);
      v30 = v20;
      v9 = v38;
      MEMORY[0x18D0110E0](v30, -1, -1);
    }

    else
    {

      outlined destroy of SceneList.Item(v47);
      outlined destroy of SceneList.Item(v48);
    }

    (*(v16 + 8))(v14, v15);
    a5 = v39;
  }

  v31 = SceneList.Item.sceneSessionRole.getter();
  if (!v31)
  {
    v31 = *MEMORY[0x1E69DE808];
  }

  v32 = v31;
  v33 = [objc_allocWithZone(MEMORY[0x1E69DCE88]) initWithName:0 sessionRole:v31];

  type metadata accessor for AppSceneDelegate();
  [v33 setDelegateClass_];
  SceneNavigationStrategy_Phone.sceneSessionActivationRequest(for:sceneConfiguration:userActivity:options:)(v40, v33, v42, 0, v11);
  closure #1 in closure #1 in SceneNavigationStrategy_Phone.performSceneActivation(item:activity:matchingSession:activationBehavior:errorHandler:)(a1, v11, v45, a5);

  return (*(v44 + 8))(v11, v9);
}

void specialized SceneNavigationStrategy_Phone.handleSceneActivation<A>(item:value:activationBehavior:errorHandler:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = *(a1 + 136);
  v15 = *(a1 + 144);
  v17 = *(a1 + 152);
  v18 = specialized SceneNavigationStrategy_Phone.userActivityForOpeningWindow<A>(id:value:)(v16, v15, v17, a2, a7, a8, a9);
  if (v18)
  {
    v32 = v18;
    v19 = specialized SceneNavigationStrategy_Phone.existingSession<A>(id:value:)(v16, v15, v17, a2, a7, a8, a9, a10);
    v29 = v19;
    if (v19 || (v20 = SceneRequestCache.requestInCacheAddIfNotPresent<A>(id:value:)(v16, v15, v17, a2, a7, a8, a9, a10), v19 = 0, (v20 & 1) == 0))
    {
      specialized SceneNavigationStrategy_Phone.performSceneActivation(item:activity:matchingSession:activationBehavior:errorHandler:)(a1, v32, v19, a3, a4, a5 & 1, a6);

      v21 = v29;
    }

    else
    {
      if (a3)
      {
        a3(1);
      }

      v21 = v32;
    }
  }

  else
  {
    v22 = static os_log_type_t.fault.getter();
    v23 = static Log.runtimeIssuesLog.getter();
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_18CD63400;
    v25 = _typeName(_:qualified:)();
    v27 = v26;
    *(v24 + 56) = MEMORY[0x1E69E6158];
    *(v24 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v24 + 32) = v25;
    *(v24 + 40) = v27;
    os_log(_:dso:log:_:_:)(v22, &dword_18BD4A000, v23, "Unable to present a window for type '%s'", v28);

    if (a3)
    {
      a3(0);
    }
  }
}

void specialized SceneNavigationStrategy_Phone.openWindow<A>(namespace:presenting:withBehavior:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = [objc_opt_self() sharedApplication];
  v15 = [v14 supportsMultipleScenes];

  if (v15)
  {
    SceneNavigationStrategy_Phone.sceneListItem<A>(namespace:presenting:where:)(__src, a1, closure #1 in SceneNavigationStrategy_Phone.openWindow<A>(namespace:id:presenting:withBehavior:), 0, a7, a8, a9, a10);
    if (__src[68])
    {
      memcpy(__dst, __src, 0x231uLL);
      outlined init with copy of SceneList.Item.Value(__dst, __src);
      if (LOBYTE(__src[16]))
      {
        v16 = static os_log_type_t.fault.getter();
        v17 = static Log.runtimeIssuesLog.getter();
        type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_18CD63400;
        v19 = _typeName(_:qualified:)();
        v21 = v20;
        *(v18 + 56) = MEMORY[0x1E69E6158];
        *(v18 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v18 + 32) = v19;
        *(v18 + 40) = v21;
        os_log(_:dso:log:_:_:)(v16, &dword_18BD4A000, v17, "Unable to present a window for type '%s'", v29);

        outlined destroy of SceneList.Item(__dst);
        outlined destroy of SceneList.Item.Value(__src);
      }

      else
      {
        outlined destroy of SceneList.Item.Value(__src);
        specialized SceneNavigationStrategy_Phone.handleSceneActivation<A>(item:value:activationBehavior:errorHandler:)(__dst, a4, 0, 0, a5 & 1, a6, a7, a8, a9, a10);
        outlined destroy of SceneList.Item(__dst);
      }
    }

    else
    {
      _s7SwiftUI9SceneListV4ItemVSgWOhTm_0(__src, type metadata accessor for SceneList.Item?);
      v23 = static os_log_type_t.fault.getter();
      v24 = static Log.runtimeIssuesLog.getter();
      type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_18CD63400;
      v26 = _typeName(_:qualified:)();
      v28 = v27;
      *(v25 + 56) = MEMORY[0x1E69E6158];
      *(v25 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v25 + 32) = v26;
      *(v25 + 40) = v28;
      os_log(_:dso:log:_:_:)(v23, &dword_18BD4A000, v24, "No Scene presenting type '%s' is defined", v29);
    }
  }

  else
  {
    v22 = static os_log_type_t.fault.getter();
    v32 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v22, &dword_18BD4A000, v32, "Unable to open a window when the app does not support multiple scenes", 69, 2, MEMORY[0x1E69E7CC0]);
  }
}

void specialized SceneNavigationStrategy_Phone.openWindow(namespace:id:withBehavior:)(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, char a6, uint64_t a7)
{
  v68 = objc_opt_self();
  v11 = [v68 sharedApplication];
  v12 = [v11 supportsMultipleScenes];

  if (!v12)
  {
    v29 = static os_log_type_t.fault.getter();
    v69 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v29, &dword_18BD4A000, v69, "Unable to open a window when the app does not support multiple scenes", 69, 2, MEMORY[0x1E69E7CC0]);

    return;
  }

  if (!static AppGraph.shared)
  {
LABEL_44:
    v30 = static os_log_type_t.fault.getter();
    v31 = static Log.runtimeIssuesLog.getter();
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_18CD63400;
    *(v32 + 56) = MEMORY[0x1E69E6158];
    *(v32 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v32 + 32) = a4;
    *(v32 + 40) = a5;

    os_log(_:dso:log:_:_:)(v30, &dword_18BD4A000, v31, "No Scene with id '%s' is defined", v62);

    return;
  }

  v65 = a7;
  MEMORY[0x1EEE9AC00](static AppGraph.shared);
  v67 = v13;

  static Update.ensure<A>(_:)();
  v14 = v79[0];
  v15 = *(v79[0] + 16);
  if (!v15)
  {
LABEL_43:

    goto LABEL_44;
  }

  v16 = 0;
  v17 = v79[0] + 32;
  v66 = a6;
  while (1)
  {
    if (v16 >= *(v14 + 16))
    {
      __break(1u);
LABEL_83:
      a6 = v66;
      v37 = v67;
LABEL_79:
      outlined consume of Set<UIPress>.Iterator._Variant(v37);

      v33 = v65;
      goto LABEL_80;
    }

    outlined init with copy of SceneList.Item(v17, v79);
    v18 = v79[18];
    if (v79[19])
    {
      v73 = _typeName(_:qualified:)();
      v74 = v19;
      MEMORY[0x18D00C9B0](45, 0xE100000000000000);
      LOBYTE(v71) = v18;
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v20);

      if (v73 == a4 && v74 == a5)
      {
      }

      else
      {
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v22 & 1) == 0)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      v21 = v79[17] == a4 && v79[18] == a5;
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    outlined init with copy of SceneList.Item.Value(v79, &v73);
    if (v78 <= 4u)
    {
      if (v78 <= 1u)
      {
        if (v78 != 1)
        {
          goto LABEL_46;
        }
      }

      else if (v78 != 2 && v78 != 3)
      {
        goto LABEL_87;
      }

LABEL_30:
      outlined destroy of SceneList.Item.Value(&v73);
      goto LABEL_31;
    }

    if (v78 != 5)
    {
      goto LABEL_30;
    }

    v23 = v77;
    if (v77 > 2)
    {
      v25 = v76;
      outlined consume of SceneID(v73, v74, v75);
      v26 = v25;
      a6 = v66;
      outlined consume of UISceneAdaptorConfiguration.Kind(v26, v23);
    }

    else
    {
      outlined consume of SceneID(v73, v74, v75);
    }

LABEL_31:
    outlined init with copy of SceneList.Item.Value(v79, &v73);
    if (v78 > 3u && v78 <= 6u)
    {
      break;
    }

    outlined destroy of SceneList.Item.Value(&v73);
LABEL_7:
    ++v16;
    outlined destroy of SceneList.Item(v79);
    v17 += 568;
    if (v15 == v16)
    {
      goto LABEL_43;
    }
  }

  if (v78 == 5)
  {
    v24 = v77;
    if (v77 > 2)
    {
      v27 = v76;
      outlined consume of SceneID(v73, v74, v75);
      v28 = v27;
      a6 = v66;
      outlined consume of UISceneAdaptorConfiguration.Kind(v28, v24);
    }

    else
    {
      outlined consume of SceneID(v73, v74, v75);
    }

    goto LABEL_7;
  }

  if (v78 != 6)
  {
    goto LABEL_87;
  }

LABEL_46:
  outlined destroy of SceneList.Item.Value(&v73);

  v33 = v65;
  memcpy(v80, v79, 0x231uLL);
  outlined init with copy of SceneList.Item.Value(v80, v79);
  if (LOBYTE(v79[16]) && LOBYTE(v79[16]) != 6)
  {
    v42 = static os_log_type_t.fault.getter();
    v43 = static Log.runtimeIssuesLog.getter();
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_18CD63400;
    *(v44 + 56) = MEMORY[0x1E69E6158];
    *(v44 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v44 + 32) = a4;
    *(v44 + 40) = a5;

    os_log(_:dso:log:_:_:)(v42, &dword_18BD4A000, v43, "Unable to present a window for Scene id '%s'", v62);

    outlined destroy of SceneList.Item(v80);
    outlined destroy of SceneList.Item.Value(v79);
    return;
  }

  outlined destroy of SceneList.Item.Value(v79);
  outlined init with copy of SceneList.Item.Value(v80, v79);
  v34 = LOBYTE(v79[16]);
  outlined destroy of SceneList.Item.Value(v79);
  if (v34 != 6)
  {
LABEL_80:
    v61 = specialized SceneNavigationStrategy_Phone.userActivityForOpeningWindow(id:)(v80[17], v80[18], v80[19]);
    specialized SceneNavigationStrategy_Phone.performSceneActivation(item:activity:matchingSession:activationBehavior:errorHandler:)(v80, v61, 0, 0, 0, a6 & 1, v33);
LABEL_81:

    outlined destroy of SceneList.Item(v80);
    return;
  }

  v35 = [v68 sharedApplication];
  v36 = [v35 openSessions];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UISceneSession, 0x1E69DCEA8);
  lazy protocol witness table accessor for type UISceneSession and conformance NSObject();
  v37 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v64 = v37;
  if ((v37 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v37 = v79[0];
    v38 = v79[1];
    v39 = v79[2];
    v40 = v79[3];
    v41 = v79[4];
  }

  else
  {
    v45 = -1 << *(v37 + 32);
    v38 = v37 + 56;
    v39 = ~v45;
    v46 = -v45;
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    else
    {
      v47 = -1;
    }

    v41 = v47 & *(v37 + 56);

    v40 = 0;
  }

  v63 = v39;
  v48 = (v39 + 64) >> 6;
  v67 = v37;
  while (v37 < 0)
  {
    v54 = __CocoaSet.Iterator.next()();
    if (!v54)
    {
      goto LABEL_79;
    }

    v71 = v54;
    swift_dynamicCast();
    v53 = v73;
    v51 = v40;
    v52 = v41;
LABEL_67:
    if (!v53)
    {
      goto LABEL_83;
    }

    v55 = [v53 userInfo];
    if (v55)
    {
      v56 = v55;
      v70 = v52;
      v57 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v57 + 16) && (v58 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000019, 0x800000018CD3D380), (v59 & 1) != 0))
      {
        outlined init with copy of Any(*(v57 + 56) + 32 * v58, &v73);

        if (swift_dynamicCast())
        {
          if (v71 == a4 && v72 == a5)
          {

LABEL_85:
            outlined consume of Set<UIPress>.Iterator._Variant(v67);

            v61 = specialized SceneNavigationStrategy_Phone.userActivityForOpeningWindow(id:)(v80[17], v80[18], v80[19]);
            specialized SceneNavigationStrategy_Phone.performSceneActivation(item:activity:matchingSession:activationBehavior:errorHandler:)(v80, v61, v53, 0, 0, v66 & 1, v65);

            goto LABEL_81;
          }

          v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v60)
          {
            goto LABEL_85;
          }
        }
      }

      else
      {
      }

      v40 = v51;
      v41 = v70;
    }

    else
    {

      v40 = v51;
      v41 = v52;
    }

    a6 = v66;
    v37 = v67;
  }

  v49 = v40;
  v50 = v41;
  v51 = v40;
  if (v41)
  {
LABEL_64:
    v52 = (v50 - 1) & v50;
    v53 = *(*(v37 + 48) + ((v51 << 9) | (8 * __clz(__rbit64(v50)))));
    goto LABEL_67;
  }

  while (1)
  {
    v51 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if (v51 >= v48)
    {
      a6 = v66;
      goto LABEL_79;
    }

    v50 = *(v38 + 8 * v51);
    ++v49;
    if (v50)
    {
      goto LABEL_64;
    }
  }

  __break(1u);
LABEL_87:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

void specialized SceneNavigationStrategy_Phone.openWindow<A>(namespace:id:presenting:withBehavior:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = [objc_opt_self() sharedApplication];
  v16 = [v15 supportsMultipleScenes];

  if (v16)
  {
    LOBYTE(v33) = 0;
    SceneNavigationStrategy_Phone.sceneListItem<A>(namespace:id:presenting:where:)(__src, a1, a4, a5, closure #1 in SceneNavigationStrategy_Phone.openWindow<A>(namespace:id:presenting:withBehavior:), 0, v33, v35, a9, a10, a11, a12);
    if (__src[68])
    {
      memcpy(__dst, __src, 0x231uLL);
      outlined init with copy of SceneList.Item.Value(__dst, __src);
      if (LOBYTE(__src[16]))
      {
        v17 = static os_log_type_t.fault.getter();
        v18 = static Log.runtimeIssuesLog.getter();
        type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_18CD63410;
        v20 = _typeName(_:qualified:)();
        v22 = v21;
        v23 = MEMORY[0x1E69E6158];
        *(v19 + 56) = MEMORY[0x1E69E6158];
        v24 = lazy protocol witness table accessor for type String and conformance String();
        *(v19 + 32) = v20;
        *(v19 + 40) = v22;
        *(v19 + 96) = v23;
        *(v19 + 104) = v24;
        *(v19 + 64) = v24;
        *(v19 + 72) = a4;
        *(v19 + 80) = a5;

        os_log(_:dso:log:_:_:)(v17, &dword_18BD4A000, v18, "Unable to present a window for type '%s' and id '%s'", v34, v36);

        outlined destroy of SceneList.Item(__dst);
        outlined destroy of SceneList.Item.Value(__src);
      }

      else
      {
        outlined destroy of SceneList.Item.Value(__src);
        specialized SceneNavigationStrategy_Phone.handleSceneActivation<A>(item:value:activationBehavior:errorHandler:)(__dst, a6, 0, 0, a7 & 1, a8, a9, a10, a11, a12);
        outlined destroy of SceneList.Item(__dst);
      }
    }

    else
    {
      _s7SwiftUI9SceneListV4ItemVSgWOhTm_0(__src, type metadata accessor for SceneList.Item?);
      v26 = static os_log_type_t.fault.getter();
      v27 = static Log.runtimeIssuesLog.getter();
      type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_18CD63410;
      v29 = MEMORY[0x1E69E6158];
      *(v28 + 56) = MEMORY[0x1E69E6158];
      v30 = lazy protocol witness table accessor for type String and conformance String();
      *(v28 + 64) = v30;
      *(v28 + 32) = a4;
      *(v28 + 40) = a5;

      v31 = _typeName(_:qualified:)();
      *(v28 + 96) = v29;
      *(v28 + 104) = v30;
      *(v28 + 72) = v31;
      *(v28 + 80) = v32;
      os_log(_:dso:log:_:_:)(v26, &dword_18BD4A000, v27, "No Scene with id '%s' and presenting type '%s' is defined", v34, v36);
    }
  }

  else
  {
    v25 = static os_log_type_t.fault.getter();
    v40 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v25, &dword_18BD4A000, v40, "Unable to open a window when the app does not support multiple scenes", 69, 2, MEMORY[0x1E69E7CC0]);
  }
}

void specialized SceneNavigationStrategy_Phone.existingSessions(with:)(uint64_t a1, uint64_t a2, char a3)
{
  v3 = [objc_opt_self() sharedApplication];
  v4 = [v3 openSessions];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UISceneSession, 0x1E69DCEA8);
  lazy protocol witness table accessor for type UISceneSession and conformance NSObject();
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v41 = MEMORY[0x1E69E7CC0];
  if ((v5 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v5 = v42;
    v6 = v43;
    v7 = v44;
    v8 = v45;
    v9 = v46;
  }

  else
  {
    v8 = 0;
    v10 = -1 << *(v5 + 32);
    v6 = v5 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v5 + 56);
  }

  v13 = (v7 + 64) >> 6;
  v33 = v7;
  while (v5 < 0)
  {
    v19 = __CocoaSet.Iterator.next()();
    if (!v19 || (v37 = v19, swift_dynamicCast(), v18 = v39, v16 = v8, v17 = v9, !v39))
    {
LABEL_40:
      outlined consume of Set<UIPress>.Iterator._Variant(v5);
      return;
    }

LABEL_20:
    v20 = [v18 userInfo];
    if (!v20)
    {
      goto LABEL_33;
    }

    v21 = v20;
    v22 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (!*(v22 + 16) || (v23 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000019, 0x800000018CD3D380), (v24 & 1) == 0))
    {

LABEL_33:
      v26 = 0;
      v27 = 0;
      if ((a3 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_34;
    }

    outlined init with copy of Any(*(v22 + 56) + 32 * v23, &v39);

    v25 = swift_dynamicCast();
    if (v25)
    {
      v26 = v37;
    }

    else
    {
      v26 = 0;
    }

    if (v25)
    {
      v27 = v38;
    }

    else
    {
      v27 = 0;
    }

    if ((a3 & 1) == 0)
    {
LABEL_30:
      v28 = a2;

      v29 = a1;
      if (!v27)
      {
        goto LABEL_8;
      }

      goto LABEL_35;
    }

LABEL_34:
    v39 = _typeName(_:qualified:)();
    v40 = v30;
    MEMORY[0x18D00C9B0](45, 0xE100000000000000);
    LOBYTE(v37) = a2;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v31);

    v29 = v39;
    v28 = v40;
    if (!v27)
    {
LABEL_8:

LABEL_9:

      goto LABEL_10;
    }

LABEL_35:
    if (v26 == v29 && v27 == v28)
    {
    }

    else
    {
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v32 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
LABEL_10:
    v8 = v16;
    v9 = v17;
  }

  v14 = v8;
  v15 = v9;
  v16 = v8;
  if (v9)
  {
LABEL_16:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
      goto LABEL_40;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_40;
    }

    v15 = *(v6 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void specialized SceneNavigationStrategy_Phone.handleSceneDestruction(id:)(uint64_t a1, unint64_t a2, char a3)
{
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v51 - v10;
  static Log.scenes.getter();
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v56 = *(v13 + 6);
  v14 = v56(v11, 1, v12);
  v55 = v13 + 48;
  if (v14 == 1)
  {
    _s7SwiftUI9SceneListV4ItemVSgWOhTm_0(v11, type metadata accessor for Logger?);
  }

  else
  {
    outlined copy of SceneID(a1, a2, a3 & 1);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    outlined consume of SceneID(a1, a2, a3 & 1);
    if (os_log_type_enabled(v15, v16))
    {
      LODWORD(v53) = v16;
      v57 = v13;
      v54 = v12;
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v61 = v18;
      *v17 = 136446210;
      if (a3)
      {
        v59 = _typeName(_:qualified:)();
        v60 = v19;
        MEMORY[0x18D00C9B0](45, 0xE100000000000000);
        v58 = a2;
        v20 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x18D00C9B0](v20);

        v21 = v59;
        v22 = v60;
      }

      else
      {

        v21 = a1;
        v22 = a2;
      }

      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v61);

      *(v17 + 4) = v23;
      _os_log_impl(&dword_18BD4A000, v15, v53, "Attempting to dismiss scene with id: %{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x18D0110E0](v18, -1, -1);
      MEMORY[0x18D0110E0](v17, -1, -1);

      v12 = v54;
      v13 = v57;
    }

    else
    {
    }

    (*(v13 + 1))(v11, v12);
  }

  v57 = [objc_opt_self() sharedApplication];
  specialized SceneNavigationStrategy_Phone.existingSessions(with:)(a1, a2, a3 & 1);
  v25 = v24;
  if (v24 >> 62)
  {
    v26 = __CocoaSet.count.getter();
  }

  else
  {
    v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = [v57 openSessions];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UISceneSession, 0x1E69DCEA8);
  lazy protocol witness table accessor for type UISceneSession and conformance NSObject();
  v28 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = v13;
  if ((v28 & 0xC000000000000001) != 0)
  {
    v30 = __CocoaSet.count.getter();
  }

  else
  {
    v30 = *(v28 + 16);
  }

  v51[1] = specialized BidirectionalCollection.dropLast(_:)(v26 == v30, v25, &lazy cache variable for type metadata for UISceneSession, 0x1E69DCEA8);
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v38 = (v36 >> 1) - v34;
  if (v36 >> 1 == v34)
  {
    goto LABEL_16;
  }

  if ((v36 >> 1) > v34)
  {
    v53 = (v29 + 8);
    v39 = (v32 + 8 * v34);
    v40 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
    *&v37 = 138543362;
    v52 = v37;
    v54 = v12;
    do
    {
      v41 = *v39;
      static Log.scenes.getter();
      if (v56(v8, 1, v12) == 1)
      {
        _s7SwiftUI9SceneListV4ItemVSgWOhTm_0(v8, type metadata accessor for Logger?);
      }

      else
      {
        v42 = v41;
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = v8;
          v47 = v40;
          v48 = swift_slowAlloc();
          *v45 = v52;
          *(v45 + 4) = v42;
          *v48 = v42;
          v49 = v42;
          _os_log_impl(&dword_18BD4A000, v43, v44, "Requesting scene session destruction for session: %{public}@", v45, 0xCu);
          _s7SwiftUI9SceneListV4ItemVSgWOhTm_0(v48, type metadata accessor for NSObject?);
          v50 = v48;
          v40 = v47;
          v8 = v46;
          MEMORY[0x18D0110E0](v50, -1, -1);
          MEMORY[0x18D0110E0](v45, -1, -1);
        }

        v12 = v54;
        (*v53)(v8, v54);
      }

      [v57 v40[340]];

      ++v39;
      --v38;
    }

    while (v38);
LABEL_16:
    swift_unknownObjectRelease();

    return;
  }

  __break(1u);
}

void specialized SceneNavigationStrategy_Phone.dismissWindow(namespace:id:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v7 = [objc_opt_self() sharedApplication];
  v8 = [v7 supportsMultipleScenes];

  if (v8)
  {
    v10 = static AppGraph.shared;
    if (static AppGraph.shared)
    {
      MEMORY[0x1EEE9AC00](v9);

      static Update.ensure<A>(_:)();
      v11 = v40[0];
      v12 = *(v40[0] + 16);
      if (v12)
      {
        v13 = 0;
        v14 = v40[0] + 32;
        v31 = v10;
        while (1)
        {
          if (v13 >= *(v11 + 16))
          {
            __break(1u);
            goto LABEL_51;
          }

          outlined init with copy of SceneList.Item(v14, v40);
          v15 = v40[18];
          if (v40[19])
          {
            v33 = _typeName(_:qualified:)();
            v34 = v16;
            MEMORY[0x18D00C9B0](45, 0xE100000000000000);
            v39 = v15;
            v17 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v17);

            if (v33 == a4 && v34 == a5)
            {
            }

            else
            {
              v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v19 & 1) == 0)
              {
                goto LABEL_7;
              }
            }
          }

          else
          {
            v18 = v40[17] == a4 && v40[18] == a5;
            if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          outlined init with copy of SceneList.Item.Value(v40, &v33);
          if (v38 <= 4u)
          {
            break;
          }

          if (v38 != 5)
          {
            goto LABEL_30;
          }

          v20 = v37;
          if (v37 > 2)
          {
            v22 = v36;
            outlined consume of SceneID(v33, v34, v35);
            outlined consume of UISceneAdaptorConfiguration.Kind(v22, v20);
          }

          else
          {
            outlined consume of SceneID(v33, v34, v35);
          }

LABEL_31:
          outlined init with copy of SceneList.Item.Value(v40, &v33);
          if (v38 > 3u && v38 <= 6u)
          {
            if (v38 != 5)
            {
              if (v38 == 6)
              {
LABEL_46:
                outlined destroy of SceneList.Item.Value(&v33);

                memcpy(v41, v40, 0x231uLL);
                outlined init with copy of SceneList.Item.Value(v41, v40);
                if (LOBYTE(v40[16]) && LOBYTE(v40[16]) != 6)
                {
                  v28 = static os_log_type_t.fault.getter();
                  v29 = static Log.runtimeIssuesLog.getter();
                  type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
                  v30 = swift_allocObject();
                  *(v30 + 16) = xmmword_18CD63400;
                  *(v30 + 56) = MEMORY[0x1E69E6158];
                  *(v30 + 64) = lazy protocol witness table accessor for type String and conformance String();
                  *(v30 + 32) = a4;
                  *(v30 + 40) = a5;

                  os_log(_:dso:log:_:_:)(v28, &dword_18BD4A000, v29, "Unable to dismiss a window with id '%s'", v31);

                  outlined destroy of SceneList.Item(v41);
                  outlined destroy of SceneList.Item.Value(v40);
                }

                else
                {
                  outlined destroy of SceneList.Item.Value(v40);
                  specialized SceneNavigationStrategy_Phone.handleSceneDestruction(id:)(v41[17], v41[18], v41[19]);
                  outlined destroy of SceneList.Item(v41);
                }

                return;
              }

LABEL_51:
              _diagnoseUnexpectedEnumCase<A>(type:)();
              __break(1u);
              return;
            }

            v21 = v37;
            if (v37 > 2)
            {
              v23 = v36;
              outlined consume of SceneID(v33, v34, v35);
              outlined consume of UISceneAdaptorConfiguration.Kind(v23, v21);
            }

            else
            {
              outlined consume of SceneID(v33, v34, v35);
            }
          }

          else
          {
            outlined destroy of SceneList.Item.Value(&v33);
          }

LABEL_7:
          ++v13;
          outlined destroy of SceneList.Item(v40);
          v14 += 568;
          if (v12 == v13)
          {
            goto LABEL_43;
          }
        }

        if (v38 <= 1u)
        {
          if (v38 != 1)
          {
            goto LABEL_46;
          }
        }

        else if (v38 != 2 && v38 != 3)
        {
          goto LABEL_51;
        }

LABEL_30:
        outlined destroy of SceneList.Item.Value(&v33);
        goto LABEL_31;
      }

LABEL_43:
    }

    v25 = static os_log_type_t.fault.getter();
    v26 = static Log.runtimeIssuesLog.getter();
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_18CD63400;
    *(v27 + 56) = MEMORY[0x1E69E6158];
    *(v27 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v27 + 32) = a4;
    *(v27 + 40) = a5;

    os_log(_:dso:log:_:_:)(v25, &dword_18BD4A000, v26, "No Scene with id '%s' is defined", v31);

    return;
  }

  v24 = static os_log_type_t.fault.getter();
  v32 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)(v24, &dword_18BD4A000, v32, "Unable to dismiss a window when the app does not support multiple scenes", 72, 2, MEMORY[0x1E69E7CC0]);
}

void specialized SceneNavigationStrategy_Phone.handleSceneDestruction<A>(id:value:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v70 = a6;
  v71 = a7;
  v67 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v63 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v55 - v16;
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v66 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v55 - v21;
  static Log.scenes.getter();
  v23 = type metadata accessor for Logger();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  v64 = v24 + 48;
  v65 = v25;
  v26 = v25(v22, 1, v23);
  v68 = a1;
  v69 = a2;
  if (v26 == 1)
  {
    _s7SwiftUI9SceneListV4ItemVSgWOhTm_0(v22, type metadata accessor for Logger?);
  }

  else
  {
    v61 = a8;
    v62 = v23;
    v59 = *(v67 + 16);
    v60 = a4;
    v59(v17, a4, a5);
    outlined copy of SceneID(a1, a2, a3 & 1);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    outlined consume of SceneID(a1, a2, a3 & 1);
    if (os_log_type_enabled(v27, v28))
    {
      v56 = v28;
      v57 = v27;
      v58 = v24;
      v29 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v75[0] = v55;
      *v29 = 136446466;
      if (a3)
      {
        v73 = _typeName(_:qualified:)();
        v74 = v30;
        MEMORY[0x18D00C9B0](45, 0xE100000000000000);
        v72 = a2;
        v31 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x18D00C9B0](v31);

        v32 = v73;
        a2 = v74;
      }

      else
      {

        v32 = a1;
      }

      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, a2, v75);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2082;
      v59(v63, v17, a5);
      v34 = String.init<A>(describing:)();
      v36 = v35;
      (*(v67 + 8))(v17, a5);
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, v75);

      *(v29 + 14) = v37;
      v38 = v57;
      _os_log_impl(&dword_18BD4A000, v57, v56, "Attempting to dismiss scene with id: %{public}s and value: %{public}s", v29, 0x16u);
      v39 = v55;
      swift_arrayDestroy();
      MEMORY[0x18D0110E0](v39, -1, -1);
      MEMORY[0x18D0110E0](v29, -1, -1);

      v24 = v58;
    }

    else
    {

      (*(v67 + 8))(v17, a5);
    }

    v23 = v62;
    (*(v24 + 8))(v22, v62);
    a4 = v60;
    a8 = v61;
  }

  v40 = [objc_opt_self() sharedApplication];
  v41 = specialized SceneNavigationStrategy_Phone.existingSession<A>(id:value:)(v68, v69, a3 & 1, a4, a5, v70, v71, a8);
  if (v41)
  {
    v42 = v41;
    v43 = v24;
    v44 = [v40 openSessions];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UISceneSession, 0x1E69DCEA8);
    lazy protocol witness table accessor for type UISceneSession and conformance NSObject();
    v45 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v45 & 0xC000000000000001) != 0)
    {
      v46 = __CocoaSet.count.getter();
    }

    else
    {
      v46 = *(v45 + 16);
    }

    if (v46 >= 2)
    {
      v47 = v66;
      static Log.scenes.getter();
      if (v65(v47, 1, v23) == 1)
      {
        _s7SwiftUI9SceneListV4ItemVSgWOhTm_0(v47, type metadata accessor for Logger?);
      }

      else
      {
        v48 = v23;
        v49 = v42;
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          *v52 = 138543362;
          *(v52 + 4) = v49;
          *v53 = v42;
          v54 = v49;
          _os_log_impl(&dword_18BD4A000, v50, v51, "Requesting scene session destruction for session: %{public}@", v52, 0xCu);
          _s7SwiftUI9SceneListV4ItemVSgWOhTm_0(v53, type metadata accessor for NSObject?);
          MEMORY[0x18D0110E0](v53, -1, -1);
          MEMORY[0x18D0110E0](v52, -1, -1);
        }

        (*(v43 + 8))(v66, v48);
      }

      [v40 requestSceneSessionDestruction:v42 options:0 errorHandler:{0, v55}];
    }
  }
}

uint64_t _s7SwiftUI9SceneListV4ItemVSgWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in SceneNavigationStrategy_Phone.existingSession<A>(id:value:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 72);
  if (UISceneSession.matchesSceneID(_:)(*(v0 + 48), *(v0 + 56), *(v0 + 64)))
  {
    return UISceneSession.matchesPresentationValue<A>(_:)(v5, v1, v2, v3, v4) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t specialized BidirectionalCollection.dropLast(_:)(uint64_t result, unint64_t a2, unint64_t *a3, void *a4)
{
  if (result < 0)
  {
    __break(1u);
LABEL_23:
    v15 = result;
    v9 = __CocoaSet.count.getter();
    result = v15;
    v10 = -v9;
    if (!__OFSUB__(0, v9))
    {
      goto LABEL_4;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v6 = a4;
  v7 = a3;
  v5 = a2;
  v8 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_23;
  }

  v9 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v10 = -v9;
  if (__OFSUB__(0, v9))
  {
    goto LABEL_25;
  }

LABEL_4:
  v11 = -result;
  if (v10 > 0 || v10 <= v11)
  {
    v12 = v9 - result;
    if (__OFADD__(v9, v11))
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v12 < 0)
    {
LABEL_29:
      __break(1u);
      return result;
    }

    if (!v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v12 = 0;
    if (!v8)
    {
LABEL_7:
      result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_13;
    }
  }

  result = __CocoaSet.count.getter();
  if (result < 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  result = __CocoaSet.count.getter();
LABEL_13:
  if (result < v12)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if ((v5 & 0xC000000000000001) != 0 && v12)
  {
    type metadata accessor for NSObject(0, v7, v6);

    v13 = 0;
    do
    {
      v14 = v13 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v13);
      v13 = v14;
    }

    while (v12 != v14);
    if (!v8)
    {
      return v5 & 0xFFFFFFFFFFFFFF8;
    }
  }

  else
  {

    if (!v8)
    {
      return v5 & 0xFFFFFFFFFFFFFF8;
    }
  }

  return _CocoaArrayWrapper.subscript.getter();
}

void CardColorScheme.init(fill:focusedFill:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

uint64_t outlined destroy of (Color, Color?)(uint64_t a1)
{
  type metadata accessor for (Color, Color?)(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (Color, Color?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (Color, Color?))
  {
    type metadata accessor for Color?();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Color, Color?));
    }
  }
}

double destroy for CardColorScheme(void *a1)
{
  if (*a1 >= 2uLL)
  {
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for CardColorScheme(void *result, uint64_t *a2)
{
  if (*a2 >= 2)
  {
    v2 = a2[1];
    *result = *a2;
    result[1] = v2;
    v3 = result;

    return v3;
  }

  else
  {
    *result = *a2;
  }

  return result;
}

unint64_t *assignWithCopy for CardColorScheme(unint64_t *a1, unint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 >= 2)
  {
    if (v5 >= 2)
    {
      *a1 = v5;

      a1[1] = a2[1];

      return a1;
    }

    outlined destroy of (Color, Color?)(a1);
    goto LABEL_6;
  }

  if (v5 < 2)
  {
LABEL_6:
    *a1 = *a2;
    return a1;
  }

  *a1 = v5;
  a1[1] = a2[1];

  return a1;
}

void *assignWithTake for CardColorScheme(void *result, void *a2)
{
  if (*result >= 2uLL)
  {
    if (*a2 >= 2uLL)
    {
      *result = *a2;
      v3 = result;

      v3[1] = a2[1];
    }

    else
    {
      v3 = result;
      outlined destroy of (Color, Color?)(result);
      *v3 = *a2;
    }

    return v3;
  }

  else
  {
    *result = *a2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CardColorScheme(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CardColorScheme(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = a2 - 2147483646;
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

double destroy for CardColorScheme.Kind(void *a1)
{
  if (*a1 >= 0xFFFFFFFFuLL)
  {
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for CardColorScheme.Kind(__n128 *a1, __n128 *a2)
{
  if (a2->n128_u64[0] < 0xFFFFFFFF)
  {
    result = *a2;
    *a1 = *a2;
  }

  else
  {
    v2 = a2->n128_u64[1];
    a1->n128_u64[0] = a2->n128_u64[0];
    a1->n128_u64[1] = v2;
  }

  return result;
}

unint64_t *assignWithCopy for CardColorScheme.Kind(unint64_t *a1, unint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 < 0xFFFFFFFF)
  {
    if (v5 >= 0xFFFFFFFF)
    {
      *a1 = v5;
      a1[1] = a2[1];

      return a1;
    }

LABEL_7:
    *a1 = *a2;
    return a1;
  }

  if (v5 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  *a1 = v5;

  a1[1] = a2[1];

  return a1;
}

_OWORD *assignWithTake for CardColorScheme.Kind(_OWORD *result, uint64_t a2)
{
  if (*result < 0xFFFFFFFFuLL)
  {
    *result = *a2;
  }

  else
  {
    if (*a2 < 0xFFFFFFFFuLL)
    {
      v3 = result;

      *v3 = *a2;
    }

    else
    {
      *result = *a2;
      v3 = result;

      *(v3 + 1) = *(a2 + 8);
    }

    return v3;
  }

  return result;
}

void *NavigationCommonModifier.body(content:)@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>(0);
  type metadata accessor for _ViewModifier_Content<NavigationCommonModifier>(0, &lazy cache variable for type metadata for InvertedViewInputPredicate<DisableNavigationSemantics>, lazy protocol witness table accessor for type DisableNavigationSemantics and conformance DisableNavigationSemantics, &type metadata for DisableNavigationSemantics, MEMORY[0x1E6980680]);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>, IsSearchImplementedModifier>(0);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type InvertedViewInputPredicate<DisableNavigationSemantics> and conformance InvertedViewInputPredicate<A>();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>, IsSearchImplementedModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>, IsSearchImplementedModifier>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties> and conformance <> ModifiedContent<A, B>, &protocol witness table for IsSearchImplementedModifier);
  result = View.staticIf<A, B>(_:then:)();
  *a1 = v3;
  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>)
  {
    type metadata accessor for _ViewModifier_Content<NavigationCommonModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<NavigationCommonModifier>, lazy protocol witness table accessor for type NavigationCommonModifier and conformance NavigationCommonModifier, &type metadata for NavigationCommonModifier, MEMORY[0x1E697FDE8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ViewModifier_Content<NavigationCommonModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<NavigationCommonModifier> and conformance _ViewModifier_Content<A>, &lazy cache variable for type metadata for _ViewModifier_Content<NavigationCommonModifier>, lazy protocol witness table accessor for type NavigationCommonModifier and conformance NavigationCommonModifier, &type metadata for NavigationCommonModifier);
    v5[1] = &protocol witness table for UpdateBridgesToAllowedBehaviors;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance NavigationCommonTransformBridgeProperties(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v4 = *(a2 + 48);
  v5 = *(a2 + 16);
  v24 = *(a2 + 32);
  v25 = v4;
  v6 = *(a2 + 48);
  v26 = *(a2 + 64);
  v7 = *(a2 + 16);
  v23[0] = *a2;
  v23[1] = v7;
  v19 = v24;
  v20 = v6;
  v21 = *(a2 + 64);
  v8 = *a1;
  v27 = *(a2 + 80);
  v22 = *(a2 + 80);
  v17 = v23[0];
  v18 = v5;
  outlined init with copy of _ViewInputs(v23, v32);
  _s7SwiftUI33ViewGraphBridgePropertiesModifierPAAE11_makeInputs8modifier6inputsyAA01_D5ValueVyxG_AA01_dI0VztFZAA025NavigationCommonTransformeF0V_Tt1B5(v8, &v17);
  v28[2] = v19;
  v28[3] = v20;
  v28[4] = v21;
  v29 = v22;
  v28[0] = v17;
  v28[1] = v18;
  v13 = v19;
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v11 = v17;
  v12 = v18;
  v9 = outlined init with copy of _ViewInputs(v28, v32);
  a3(v9, &v11);
  v30[2] = v13;
  v30[3] = v14;
  v30[4] = v15;
  v31 = v16;
  v30[0] = v11;
  v30[1] = v12;
  outlined destroy of _ViewInputs(v30);
  v32[2] = v19;
  v32[3] = v20;
  v32[4] = v21;
  v33 = v22;
  v32[0] = v17;
  v32[1] = v18;
  return outlined destroy of _ViewInputs(v32);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance NavigationCommonTransformBridgeProperties(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t *))
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v7);
  Inputs8modifier6inputsyAA01_D5ValueVyxG_AA01_dI0VztFZAA025NavigationCommonTransformeF0V_Tt1B5 = _s7SwiftUI33ViewGraphBridgePropertiesModifierPAAE11_makeInputs8modifier6inputsyAA01_D5ValueVyxG_AA01_dI0VztFZAA025NavigationCommonTransformeF0V_Tt1B5(v4, v7);
  a3(Inputs8modifier6inputsyAA01_D5ValueVyxG_AA01_dI0VztFZAA025NavigationCommonTransformeF0V_Tt1B5, v7);
  return outlined destroy of _ViewListInputs(v7);
}

double closure #1 in NavigationSearchColumnModifier.body(content:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (one-time initialization token for automatic != -1)
  {
    swift_once();
  }

  outlined init with copy of ToolbarItemPlacement(&static ToolbarItemPlacement.automatic, &v10);
  v4 = static Alignment.center.getter();
  v6 = v5;
  v7 = swift_allocObject();
  v8 = v11[0];
  *(v7 + 16) = v10;
  *(v7 + 32) = v8;
  result = *(v11 + 9);
  *(v7 + 41) = *(v11 + 9);
  *(v7 + 57) = 0;
  *a2 = partial apply for closure #1 in View.toolbarSearchOverlay(placement:isEmpty:);
  *(a2 + 8) = v7;
  *(a2 + 16) = v4;
  *(a2 + 24) = v6;
  *(a2 + 32) = a1;
  return result;
}

__n128 protocol witness for ViewModifier.body(content:) in conformance NavigationSearchColumnModifier@<Q0>(uint64_t a1@<X8>)
{
  closure #1 in NavigationSearchColumnModifier.body(content:)(*v1, v5);
  v3 = v6;
  result = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t closure #1 in View.toolbarSearchOverlay(placement:isEmpty:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  outlined init with copy of ToolbarItemPlacement(a2, a4 + 8);
  KeyPath = swift_getKeyPath();
  v8 = swift_getKeyPath();
  result = swift_getKeyPath();
  *a4 = v6;
  *(a4 + 49) = a3;
  *(a4 + 50) = 0;
  *(a4 + 56) = KeyPath;
  *(a4 + 64) = 0;
  *(a4 + 72) = v8;
  *(a4 + 80) = 0;
  *(a4 + 88) = result;
  *(a4 + 96) = 0;
  return result;
}

__n128 static SearchNavigationSplitViewModifier._makeView(modifier:inputs:body:)@<Q0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a2[2];
  v7 = a2[4];
  v30 = a2[3];
  v31 = v7;
  v8 = a2[1];
  v29[0] = *a2;
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v29[1] = v8;
  v29[2] = v11;
  v25 = v6;
  v26 = v30;
  v27 = a2[4];
  v12 = *a1;
  v32 = *(a2 + 20);
  v28 = *(a2 + 20);
  v23 = v9;
  v24 = v10;
  outlined init with copy of _ViewInputs(v29, &v37);
  PreferenceKeys.add(_:)();
  LOBYTE(v37) = 3;
  type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>(0, &lazy cache variable for type metadata for NavigationSplitViewColumn?, &type metadata for NavigationSplitViewColumn, MEMORY[0x1E69E6720]);
  v13 = Attribute.init<A>(body:value:flags:update:)();
  *&v37 = __PAIR64__(v13, v12);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type SearchNavigationSplitViewModifier.ResolvedSearchInput and conformance SearchNavigationSplitViewModifier.ResolvedSearchInput();
  LODWORD(v37) = Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type SearchSplitViewResolvedColumnInput and conformance SearchSplitViewResolvedColumnInput();
  PropertyList.subscript.setter();
  *&v37 = 0;
  BYTE8(v37) = 1;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_4(0, &lazy cache variable for type metadata for PreferenceValueAttribute<SearchNavigationSplitViewCandidateKey>, &type metadata for SearchNavigationSplitViewCandidateKey, &protocol witness table for SearchNavigationSplitViewCandidateKey, MEMORY[0x1E69803F8]);
  lazy protocol witness table accessor for type PreferenceValueAttribute<SearchNavigationSplitViewCandidateKey> and conformance PreferenceValueAttribute<A>();
  v14 = Attribute.init<A>(body:value:flags:update:)();
  type metadata accessor for ViewGraph();
  v15 = MEMORY[0x18D00B7D0]();
  *&v37 = __PAIR64__(v13, v14);
  *(&v37 + 1) = v15;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type SearchNavigationSplitViewModifier.SearchInputMutator and conformance SearchNavigationSplitViewModifier.SearchInputMutator();
  Attribute.init<A>(body:value:flags:update:)();

  AGGraphAddInput();
  AGGraphSetFlags();
  v33[2] = v25;
  v33[3] = v26;
  v33[4] = v27;
  v34 = v28;
  v33[0] = v23;
  v33[1] = v24;
  v39 = v25;
  v40 = v26;
  v41 = v27;
  v42 = v28;
  v37 = v23;
  v38 = v24;
  v16 = outlined init with copy of _ViewInputs(v33, v35);
  a3(&v21, v16, &v37);
  v35[2] = v39;
  v35[3] = v40;
  v35[4] = v41;
  v36 = v42;
  v35[0] = v37;
  v35[1] = v38;
  outlined destroy of _ViewInputs(v35);
  v17 = v21;
  v18.n128_u64[0] = v22;
  v20 = v18;
  *&v37 = v21;
  DWORD2(v37) = v22;
  PreferencesOutputs.subscript.getter();
  static PreferenceValueAttribute.setSource(_:of:)();
  v39 = v25;
  v40 = v26;
  v41 = v27;
  v42 = v28;
  v37 = v23;
  v38 = v24;
  outlined destroy of _ViewInputs(&v37);
  *a4 = v17;
  result = v20;
  a4[1] = v20.n128_u64[0];
  return result;
}

void *SearchNavigationSplitViewModifier.ResolvedSearchInput.value.getter@<X0>(_BYTE *a2@<X8>)
{
  type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>(0, &lazy cache variable for type metadata for NavigationSplitViewColumn?, &type metadata for NavigationSplitViewColumn, MEMORY[0x1E69E6720]);
  result = AGGraphGetValue();
  v4 = *result;
  if (v4 == 3)
  {
    result = AGGraphGetValue();
    LOBYTE(v4) = *result != 2;
  }

  *a2 = v4;
  return result;
}

Swift::Void __swiftcall SearchNavigationSplitViewModifier.SearchInputMutator.updateValue()()
{
  type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>(0, &lazy cache variable for type metadata for NavigationSplitViewColumn?, &type metadata for NavigationSplitViewColumn, MEMORY[0x1E69E6720]);
  v0 = *AGGraphGetValue();
  v1 = *AGGraphGetValue();
  if (v0 == 3)
  {
    if (v1 == 3)
    {
      return;
    }

LABEL_8:
    AGCreateWeakAttribute();
    AGGraphGetValue();
    default argument 1 of GraphHost.asyncTransaction<A>(_:id:invalidating:style:mayDeferUpdate:)();
    type metadata accessor for AssignmentGraphMutation<NavigationSplitViewColumn?>(0);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?, ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type AssignmentGraphMutation<NavigationSplitViewColumn?> and conformance AssignmentGraphMutation<A>, type metadata accessor for AssignmentGraphMutation<NavigationSplitViewColumn?>, MEMORY[0x1E6980148]);
    GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)();
    return;
  }

  if (v1 == 3 || v0 != v1)
  {
    goto LABEL_8;
  }
}

uint64_t static SearchNavigationSplitViewColumnModifier._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = a2[3];
  v29 = a2[2];
  v30 = v9;
  v31 = a2[4];
  v32 = *(a2 + 20);
  v10 = a2[1];
  v27 = *a2;
  v28 = v10;
  lazy protocol witness table accessor for type SearchSplitViewResolvedColumnInput and conformance SearchSplitViewResolvedColumnInput();
  PropertyList.subscript.getter();
  v11 = v35[0];
  v23 = v29;
  v24 = v30;
  v25 = v31;
  v26 = v32;
  v21 = v27;
  v22 = v28;
  outlined init with copy of _ViewInputs(&v27, v35);
  PreferenceKeys.add(_:)();
  PreferenceKeys.remove(_:)();
  LODWORD(v35[0]) = *MEMORY[0x1E698D3F8];
  PropertyList.subscript.setter();
  LOBYTE(v35[0]) = 1;
  lazy protocol witness table accessor for type IsGlobalSearchAllowedInput and conformance IsGlobalSearchAllowedInput();
  PropertyList.subscript.setter();
  *&v35[0] = __PAIR64__(v11, v8);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type SearchNavigationSplitViewColumnModifier.ResolvedModifier and conformance SearchNavigationSplitViewColumnModifier.ResolvedModifier();
  Attribute.init<A>(body:value:flags:update:)();
  v33[2] = v23;
  v33[3] = v24;
  v33[4] = v25;
  v34 = v26;
  v33[0] = v21;
  v33[1] = v22;
  v17 = v23;
  v18 = v24;
  v19 = v25;
  v20 = v26;
  v15 = v21;
  v16 = v22;
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;

  outlined init with copy of _ViewInputs(v33, v35);
  lazy protocol witness table accessor for type NavigationSearchColumnModifier and conformance NavigationSearchColumnModifier();
  static ViewModifier.makeDebuggableView(modifier:inputs:body:)();

  v35[2] = v17;
  v35[3] = v18;
  v35[4] = v19;
  v36 = v20;
  v35[0] = v15;
  v35[1] = v16;
  outlined destroy of _ViewInputs(v35);
  v13 = *(a5 + 8);
  *&v15 = *a5;
  DWORD2(v15) = v13;
  PreferencesOutputs.subscript.getter();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>(0, &lazy cache variable for type metadata for NavigationSplitViewColumn?, &type metadata for NavigationSplitViewColumn, MEMORY[0x1E69E6720]);
  lazy protocol witness table accessor for type SearchNavigationSplitViewColumnModifier.MakeSearchCandidate and conformance SearchNavigationSplitViewColumnModifier.MakeSearchCandidate();
  Attribute.init<A>(body:value:flags:update:)();

  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

  v17 = v23;
  v18 = v24;
  v19 = v25;
  v20 = v26;
  v15 = v21;
  v16 = v22;
  return outlined destroy of _ViewInputs(&v15);
}

uint64_t closure #1 in static SearchNavigationSplitViewColumnModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v4 = *(a2 + 48);
  v5 = *(a2 + 16);
  v23 = *(a2 + 32);
  v24 = v4;
  v6 = *(a2 + 48);
  v25 = *(a2 + 64);
  v7 = *(a2 + 16);
  v22[0] = *a2;
  v22[1] = v7;
  v18 = v23;
  v19 = v6;
  v20 = *(a2 + 64);
  v26 = *(a2 + 80);
  v21 = *(a2 + 80);
  v16 = v22[0];
  v17 = v5;
  LOBYTE(v29[0]) = 0;
  outlined init with copy of _ViewInputs(v22, v31);
  lazy protocol witness table accessor for type IsGlobalSearchAllowedInput and conformance IsGlobalSearchAllowedInput();
  PropertyList.subscript.setter();
  v27[2] = v18;
  v27[3] = v19;
  v27[4] = v20;
  v28 = v21;
  v27[0] = v16;
  v27[1] = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v15 = v21;
  v10 = v16;
  v11 = v17;
  v8 = outlined init with copy of _ViewInputs(v27, v31);
  a3(v8, &v10);
  v29[2] = v12;
  v29[3] = v13;
  v29[4] = v14;
  v30 = v15;
  v29[0] = v10;
  v29[1] = v11;
  outlined destroy of _ViewInputs(v29);
  v31[2] = v18;
  v31[3] = v19;
  v31[4] = v20;
  v32 = v21;
  v31[0] = v16;
  v31[1] = v17;
  return outlined destroy of _ViewInputs(v31);
}

_BYTE *SearchNavigationSplitViewColumnModifier.ResolvedModifier.value.getter@<X0>(unint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = HIDWORD(a1);
  result = AGGraphGetValue();
  v5 = *result;
  if (*MEMORY[0x1E698D3F8] == v3)
  {
    if (v5 == 3)
    {
LABEL_3:
      v6 = 2;
      goto LABEL_11;
    }

LABEL_6:
    v6 = 1;
    goto LABEL_11;
  }

  result = AGGraphGetValue();
  if (v5 == 3)
  {
    if (*result == 3)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  v6 = 1;
  if (*result != 3)
  {
    if (v5 == *result)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }
  }

LABEL_11:
  *a2 = v6;
  return result;
}

char *SearchNavigationSplitViewColumnModifier.MakeSearchCandidate.value.getter@<X0>(unint64_t a1@<X0>, char *a2@<X8>)
{
  result = HIDWORD(a1);
  if (*MEMORY[0x1E698D3F8] == result || (result = AGGraphGetValue(), *result != 1))
  {
    v4 = 3;
  }

  else
  {
    result = AGGraphGetValue();
    v4 = *result;
  }

  *a2 = v4;
  return result;
}

void *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance SearchNavigationSplitViewCandidateKey(char *a1, void *(*a2)(uint64_t *__return_ptr))
{
  v3 = *a1;
  result = a2(&v7);
  v5 = v7;
  if (v3 != 3)
  {
    if (v7 == 3)
    {
      return result;
    }

    if (v7 - 1 >= 2)
    {
      v6 = 0;
    }

    else
    {
      v6 = v7;
    }

    if (v7 == 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    if (v3 != 1)
    {
      v5 = v3;
    }

    if (!v3)
    {
      v5 = v6;
    }

    goto LABEL_15;
  }

  if (v7 != 3)
  {
LABEL_15:
    *a1 = v5;
  }

  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance IsGlobalSearchAllowedInput(uint64_t *a1, uint64_t a2)
{
  lazy protocol witness table accessor for type IsGlobalSearchAllowedInput and conformance IsGlobalSearchAllowedInput();
  PropertyList.subscript.getter();
  return v3;
}

uint64_t specialized static NavigationCommonTransformBridgeProperties.makeBridgeProperties(properties:)(void *a1)
{
  if ((*a1 & 0x95) != 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFF6ALL;
  }

  type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ToolbarPlacement.Role>, &type metadata for ToolbarPlacement.Role, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  inited[1] = xmmword_18CD63410;
  inited[3] = 0u;
  inited[4] = 0u;
  inited[2] = 0u;
  inited[5] = 0u;
  inited[6] = xmmword_18CD7DD20;
  v3 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7SwiftUI16ToolbarPlacementV4RoleO_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  swift_arrayDestroy();

  a1[2] = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<StaticIf<InvertedViewInputPredicate<DisableNavigationSemantics>, ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>, IsSearchImplementedModifier>, ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<StaticIf<InvertedViewInputPredicate<DisableNavigationSemantics>, ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>, IsSearchImplementedModifier>, ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<StaticIf<InvertedViewInputPredicate<DisableNavigationSemantics>, ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>, IsSearchImplementedModifier>, ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<StaticIf<InvertedViewInputPredicate<DisableNavigationSemantics>, ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>, IsSearchImplementedModifier>, ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<StaticIf<InvertedViewInputPredicate<DisableNavigationSemantics>, ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>, IsSearchImplementedModifier>, ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>, type metadata accessor for StaticIf<InvertedViewInputPredicate<DisableNavigationSemantics>, ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>, IsSearchImplementedModifier>, ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>>, type metadata accessor for StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<DisableNavigationSemantics>, ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>, IsSearchImplementedModifier>, ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>> and conformance <> StaticIf<A, B, C>();
    v5[1] = lazy protocol witness table accessor for type StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<StaticIf<InvertedViewInputPredicate<DisableNavigationSemantics>, ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>, IsSearchImplementedModifier>, ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for StaticIf<InvertedViewInputPredicate<DisableNavigationSemantics>, ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>, IsSearchImplementedModifier>, ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<DisableNavigationSemantics>, ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>, IsSearchImplementedModifier>, ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>>)
  {
    type metadata accessor for _ViewModifier_Content<NavigationCommonModifier>(255, &lazy cache variable for type metadata for InvertedViewInputPredicate<DisableNavigationSemantics>, lazy protocol witness table accessor for type DisableNavigationSemantics and conformance DisableNavigationSemantics, &type metadata for DisableNavigationSemantics, MEMORY[0x1E6980680]);
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>, IsSearchImplementedModifier>(255);
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<DisableNavigationSemantics>, ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>, IsSearchImplementedModifier>, ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<DisableNavigationSemantics>, ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>, IsSearchImplementedModifier>, ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<DisableNavigationSemantics>, ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>, IsSearchImplementedModifier>, ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<DisableNavigationSemantics>, ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>, IsSearchImplementedModifier>, ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>> and conformance <> StaticIf<A, B, C>)
  {
    v5[7] = v0;
    v5[8] = v1;
    type metadata accessor for StaticIf<InvertedViewInputPredicate<DisableNavigationSemantics>, ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>, IsSearchImplementedModifier>, ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type InvertedViewInputPredicate<DisableNavigationSemantics> and conformance InvertedViewInputPredicate<A>();
    v5[1] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>, IsSearchImplementedModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>, IsSearchImplementedModifier>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties> and conformance <> ModifiedContent<A, B>, &protocol witness table for IsSearchImplementedModifier);
    v5[2] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable(MEMORY[0x1E6981CE8], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<DisableNavigationSemantics>, ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>, IsSearchImplementedModifier>, ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchNavigationSplitViewModifier.ResolvedSearchInput and conformance SearchNavigationSplitViewModifier.ResolvedSearchInput()
{
  result = lazy protocol witness table cache variable for type SearchNavigationSplitViewModifier.ResolvedSearchInput and conformance SearchNavigationSplitViewModifier.ResolvedSearchInput;
  if (!lazy protocol witness table cache variable for type SearchNavigationSplitViewModifier.ResolvedSearchInput and conformance SearchNavigationSplitViewModifier.ResolvedSearchInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchNavigationSplitViewModifier.ResolvedSearchInput, &type metadata for SearchNavigationSplitViewModifier.ResolvedSearchInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SearchNavigationSplitViewModifier.ResolvedSearchInput and conformance SearchNavigationSplitViewModifier.ResolvedSearchInput);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchSplitViewResolvedColumnInput and conformance SearchSplitViewResolvedColumnInput()
{
  result = lazy protocol witness table cache variable for type SearchSplitViewResolvedColumnInput and conformance SearchSplitViewResolvedColumnInput;
  if (!lazy protocol witness table cache variable for type SearchSplitViewResolvedColumnInput and conformance SearchSplitViewResolvedColumnInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchSplitViewResolvedColumnInput, &type metadata for SearchSplitViewResolvedColumnInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SearchSplitViewResolvedColumnInput and conformance SearchSplitViewResolvedColumnInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchSplitViewResolvedColumnInput and conformance SearchSplitViewResolvedColumnInput;
  if (!lazy protocol witness table cache variable for type SearchSplitViewResolvedColumnInput and conformance SearchSplitViewResolvedColumnInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchSplitViewResolvedColumnInput, &type metadata for SearchSplitViewResolvedColumnInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SearchSplitViewResolvedColumnInput and conformance SearchSplitViewResolvedColumnInput);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PreferenceValueAttribute<SearchNavigationSplitViewCandidateKey> and conformance PreferenceValueAttribute<A>()
{
  result = lazy protocol witness table cache variable for type PreferenceValueAttribute<SearchNavigationSplitViewCandidateKey> and conformance PreferenceValueAttribute<A>;
  if (!lazy protocol witness table cache variable for type PreferenceValueAttribute<SearchNavigationSplitViewCandidateKey> and conformance PreferenceValueAttribute<A>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_4(255, &lazy cache variable for type metadata for PreferenceValueAttribute<SearchNavigationSplitViewCandidateKey>, &type metadata for SearchNavigationSplitViewCandidateKey, &protocol witness table for SearchNavigationSplitViewCandidateKey, MEMORY[0x1E69803F8]);
    result = swift_getWitnessTable(MEMORY[0x1E6980400], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PreferenceValueAttribute<SearchNavigationSplitViewCandidateKey> and conformance PreferenceValueAttribute<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchNavigationSplitViewModifier.SearchInputMutator and conformance SearchNavigationSplitViewModifier.SearchInputMutator()
{
  result = lazy protocol witness table cache variable for type SearchNavigationSplitViewModifier.SearchInputMutator and conformance SearchNavigationSplitViewModifier.SearchInputMutator;
  if (!lazy protocol witness table cache variable for type SearchNavigationSplitViewModifier.SearchInputMutator and conformance SearchNavigationSplitViewModifier.SearchInputMutator)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchNavigationSplitViewModifier.SearchInputMutator, &type metadata for SearchNavigationSplitViewModifier.SearchInputMutator, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SearchNavigationSplitViewModifier.SearchInputMutator and conformance SearchNavigationSplitViewModifier.SearchInputMutator);
  }

  return result;
}

void type metadata accessor for AssignmentGraphMutation<NavigationSplitViewColumn?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AssignmentGraphMutation<NavigationSplitViewColumn?>)
  {
    type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>(255, &lazy cache variable for type metadata for NavigationSplitViewColumn?, &type metadata for NavigationSplitViewColumn, MEMORY[0x1E69E6720]);
    v1 = type metadata accessor for AssignmentGraphMutation();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AssignmentGraphMutation<NavigationSplitViewColumn?>);
    }
  }
}

uint64_t assignWithTake for SearchOverlayView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 != a2)
  {
    outlined destroy of ToolbarItemPlacement.Role(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 33) = *(a2 + 33);
  }

  *(a1 + 49) = *(a2 + 49);
  *(a1 + 50) = *(a2 + 50);
  *(a1 + 51) = *(a2 + 51);
  v4 = *(a2 + 64);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v4;
  outlined consume of Environment<Selector?>.Content(v5, v6);
  v7 = *(a2 + 80);
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v7;
  outlined consume of Environment<Selector?>.Content(v8, v9);
  v10 = *(a2 + 96);
  v11 = *(a1 + 88);
  v12 = *(a1 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v10;
  outlined consume of Environment<Selector?>.Content(v11, v12);
  return a1;
}

unint64_t lazy protocol witness table accessor for type StaticIf<IsSearchAllowedPredicate, ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationSearchColumnModifier>, NavigationSearchDisabledAdjustmentModifier>, StaticIf<IsSearchAllowedPredicate, _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>, EmptyModifier>>, NavigationSearchAdjustmentModifier>, _ViewModifier_Content<NavigationSearchColumnModifier>> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<IsSearchAllowedPredicate, ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationSearchColumnModifier>, NavigationSearchDisabledAdjustmentModifier>, StaticIf<IsSearchAllowedPredicate, _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>, EmptyModifier>>, NavigationSearchAdjustmentModifier>, _ViewModifier_Content<NavigationSearchColumnModifier>> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<IsSearchAllowedPredicate, ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationSearchColumnModifier>, NavigationSearchDisabledAdjustmentModifier>, StaticIf<IsSearchAllowedPredicate, _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>, EmptyModifier>>, NavigationSearchAdjustmentModifier>, _ViewModifier_Content<NavigationSearchColumnModifier>> and conformance <> StaticIf<A, B, C>)
  {
    v5[7] = v0;
    v5[8] = v1;
    type metadata accessor for StaticIf<IsSearchAllowedPredicate, ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationSearchColumnModifier>, NavigationSearchDisabledAdjustmentModifier>, StaticIf<IsSearchAllowedPredicate, _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>, EmptyModifier>>, NavigationSearchAdjustmentModifier>, _ViewModifier_Content<NavigationSearchColumnModifier>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type IsSearchAllowedPredicate and conformance IsSearchAllowedPredicate();
    v5[1] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationSearchColumnModifier>, NavigationSearchDisabledAdjustmentModifier>, StaticIf<IsSearchAllowedPredicate, _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>, EmptyModifier>>, NavigationSearchAdjustmentModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationSearchColumnModifier>, NavigationSearchDisabledAdjustmentModifier>, StaticIf<IsSearchAllowedPredicate, _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>, EmptyModifier>>, NavigationSearchAdjustmentModifier>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationSearchColumnModifier>, NavigationSearchDisabledAdjustmentModifier>, StaticIf<IsSearchAllowedPredicate, _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>, EmptyModifier>> and conformance <> ModifiedContent<A, B>, &protocol witness table for NavigationSearchAdjustmentModifier);
    v5[2] = lazy protocol witness table accessor for type _ViewModifier_Content<NavigationCommonModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<NavigationSearchColumnModifier> and conformance _ViewModifier_Content<A>, &lazy cache variable for type metadata for _ViewModifier_Content<NavigationSearchColumnModifier>, lazy protocol witness table accessor for type NavigationSearchColumnModifier and conformance NavigationSearchColumnModifier, &type metadata for NavigationSearchColumnModifier);
    result = swift_getWitnessTable(MEMORY[0x1E6981CE8], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<IsSearchAllowedPredicate, ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationSearchColumnModifier>, NavigationSearchDisabledAdjustmentModifier>, StaticIf<IsSearchAllowedPredicate, _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>, EmptyModifier>>, NavigationSearchAdjustmentModifier>, _ViewModifier_Content<NavigationSearchColumnModifier>> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

void type metadata accessor for StaticIf<IsSearchAllowedPredicate, ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationSearchColumnModifier>, NavigationSearchDisabledAdjustmentModifier>, StaticIf<IsSearchAllowedPredicate, _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>, EmptyModifier>>, NavigationSearchAdjustmentModifier>, _ViewModifier_Content<NavigationSearchColumnModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<IsSearchAllowedPredicate, ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationSearchColumnModifier>, NavigationSearchDisabledAdjustmentModifier>, StaticIf<IsSearchAllowedPredicate, _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>, EmptyModifier>>, NavigationSearchAdjustmentModifier>, _ViewModifier_Content<NavigationSearchColumnModifier>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationSearchColumnModifier>, NavigationSearchDisabledAdjustmentModifier>, StaticIf<IsSearchAllowedPredicate, _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>, EmptyModifier>>, NavigationSearchAdjustmentModifier>(255);
    type metadata accessor for _ViewModifier_Content<NavigationCommonModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<NavigationSearchColumnModifier>, lazy protocol witness table accessor for type NavigationSearchColumnModifier and conformance NavigationSearchColumnModifier, &type metadata for NavigationSearchColumnModifier, MEMORY[0x1E697FDE8]);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<IsSearchAllowedPredicate, ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationSearchColumnModifier>, NavigationSearchDisabledAdjustmentModifier>, StaticIf<IsSearchAllowedPredicate, _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>, EmptyModifier>>, NavigationSearchAdjustmentModifier>, _ViewModifier_Content<NavigationSearchColumnModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationSearchColumnModifier>, NavigationSearchDisabledAdjustmentModifier>, StaticIf<IsSearchAllowedPredicate, _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>, EmptyModifier>>, NavigationSearchAdjustmentModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationSearchColumnModifier>, NavigationSearchDisabledAdjustmentModifier>, StaticIf<IsSearchAllowedPredicate, _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>, EmptyModifier>>, NavigationSearchAdjustmentModifier>)
  {
    type metadata accessor for ModifiedContent<StaticIf<InvertedViewInputPredicate<DisableNavigationSemantics>, ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>, IsSearchImplementedModifier>, ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationSearchColumnModifier>, NavigationSearchDisabledAdjustmentModifier>, StaticIf<IsSearchAllowedPredicate, _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>, EmptyModifier>>, type metadata accessor for ModifiedContent<_ViewModifier_Content<NavigationSearchColumnModifier>, NavigationSearchDisabledAdjustmentModifier>, type metadata accessor for StaticIf<IsSearchAllowedPredicate, _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>, EmptyModifier>);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationSearchColumnModifier>, NavigationSearchDisabledAdjustmentModifier>, StaticIf<IsSearchAllowedPredicate, _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>, EmptyModifier>>, NavigationSearchAdjustmentModifier>);
    }
  }
}

void type metadata accessor for ModifiedContent<StaticIf<InvertedViewInputPredicate<DisableNavigationSemantics>, ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>, IsSearchImplementedModifier>, ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<NavigationSearchColumnModifier>, NavigationSearchDisabledAdjustmentModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<NavigationSearchColumnModifier>, NavigationSearchDisabledAdjustmentModifier>)
  {
    type metadata accessor for _ViewModifier_Content<NavigationCommonModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<NavigationSearchColumnModifier>, lazy protocol witness table accessor for type NavigationSearchColumnModifier and conformance NavigationSearchColumnModifier, &type metadata for NavigationSearchColumnModifier, MEMORY[0x1E697FDE8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<NavigationSearchColumnModifier>, NavigationSearchDisabledAdjustmentModifier>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationSearchColumnModifier>, NavigationSearchDisabledAdjustmentModifier>, StaticIf<IsSearchAllowedPredicate, _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationSearchColumnModifier>, NavigationSearchDisabledAdjustmentModifier>, StaticIf<IsSearchAllowedPredicate, _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationSearchColumnModifier>, NavigationSearchDisabledAdjustmentModifier>, StaticIf<IsSearchAllowedPredicate, _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<StaticIf<InvertedViewInputPredicate<DisableNavigationSemantics>, ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>, IsSearchImplementedModifier>, ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationCommonModifier>, UpdateBridgesToAllowedBehaviors>, NavigationCommonTransformBridgeProperties>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationSearchColumnModifier>, NavigationSearchDisabledAdjustmentModifier>, StaticIf<IsSearchAllowedPredicate, _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>, EmptyModifier>>, type metadata accessor for ModifiedContent<_ViewModifier_Content<NavigationSearchColumnModifier>, NavigationSearchDisabledAdjustmentModifier>, type metadata accessor for StaticIf<IsSearchAllowedPredicate, _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>, EmptyModifier>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<NavigationSearchColumnModifier>, NavigationSearchDisabledAdjustmentModifier> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type StaticIf<IsSearchAllowedPredicate, _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationSearchColumnModifier>, NavigationSearchDisabledAdjustmentModifier>, StaticIf<IsSearchAllowedPredicate, _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<NavigationSearchColumnModifier>, NavigationSearchDisabledAdjustmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<NavigationSearchColumnModifier>, NavigationSearchDisabledAdjustmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<NavigationSearchColumnModifier>, NavigationSearchDisabledAdjustmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<NavigationSearchColumnModifier>, NavigationSearchDisabledAdjustmentModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ViewModifier_Content<NavigationCommonModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<NavigationSearchColumnModifier> and conformance _ViewModifier_Content<A>, &lazy cache variable for type metadata for _ViewModifier_Content<NavigationSearchColumnModifier>, lazy protocol witness table accessor for type NavigationSearchColumnModifier and conformance NavigationSearchColumnModifier, &type metadata for NavigationSearchColumnModifier);
    v5[1] = &protocol witness table for NavigationSearchDisabledAdjustmentModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<NavigationSearchColumnModifier>, NavigationSearchDisabledAdjustmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<NavigationColumnModifier>, UpdateBridgesToAllowedBehaviors> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<NavigationColumnModifier>, UpdateBridgesToAllowedBehaviors> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<NavigationColumnModifier>, UpdateBridgesToAllowedBehaviors> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<NavigationColumnModifier>, UpdateBridgesToAllowedBehaviors>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ViewModifier_Content<NavigationCommonModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<NavigationColumnModifier> and conformance _ViewModifier_Content<A>, &lazy cache variable for type metadata for _ViewModifier_Content<NavigationColumnModifier>, lazy protocol witness table accessor for type NavigationColumnModifier and conformance NavigationColumnModifier, &type metadata for NavigationColumnModifier);
    v5[1] = &protocol witness table for UpdateBridgesToAllowedBehaviors;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<NavigationColumnModifier>, UpdateBridgesToAllowedBehaviors> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<NavigationColumnModifier>, UpdateBridgesToAllowedBehaviors>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<NavigationColumnModifier>, UpdateBridgesToAllowedBehaviors>)
  {
    type metadata accessor for _ViewModifier_Content<NavigationCommonModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<NavigationColumnModifier>, lazy protocol witness table accessor for type NavigationColumnModifier and conformance NavigationColumnModifier, &type metadata for NavigationColumnModifier, MEMORY[0x1E697FDE8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<NavigationColumnModifier>, UpdateBridgesToAllowedBehaviors>);
    }
  }
}

void _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type SearchNavigationSplitViewColumnModifier.ResolvedModifier and conformance SearchNavigationSplitViewColumnModifier.ResolvedModifier()
{
  result = lazy protocol witness table cache variable for type SearchNavigationSplitViewColumnModifier.ResolvedModifier and conformance SearchNavigationSplitViewColumnModifier.ResolvedModifier;
  if (!lazy protocol witness table cache variable for type SearchNavigationSplitViewColumnModifier.ResolvedModifier and conformance SearchNavigationSplitViewColumnModifier.ResolvedModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchNavigationSplitViewColumnModifier.ResolvedModifier, &type metadata for SearchNavigationSplitViewColumnModifier.ResolvedModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SearchNavigationSplitViewColumnModifier.ResolvedModifier and conformance SearchNavigationSplitViewColumnModifier.ResolvedModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchNavigationSplitViewColumnModifier.MakeSearchCandidate and conformance SearchNavigationSplitViewColumnModifier.MakeSearchCandidate()
{
  result = lazy protocol witness table cache variable for type SearchNavigationSplitViewColumnModifier.MakeSearchCandidate and conformance SearchNavigationSplitViewColumnModifier.MakeSearchCandidate;
  if (!lazy protocol witness table cache variable for type SearchNavigationSplitViewColumnModifier.MakeSearchCandidate and conformance SearchNavigationSplitViewColumnModifier.MakeSearchCandidate)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchNavigationSplitViewColumnModifier.MakeSearchCandidate, &type metadata for SearchNavigationSplitViewColumnModifier.MakeSearchCandidate, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SearchNavigationSplitViewColumnModifier.MakeSearchCandidate and conformance SearchNavigationSplitViewColumnModifier.MakeSearchCandidate);
  }

  return result;
}

void type metadata accessor for TupleView<(ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?, ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>?)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t View.shareConfiguration<A, B, C, D>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  specialized AnyShareConfiguration.init<A, B, C, D>(_:optimizeForSharingPicker:)(a1, 0, a3, v8);
  View.preference<A>(key:value:)();
  v10[4] = v8[4];
  v10[5] = v8[5];
  v11 = v9;
  v10[0] = v8[0];
  v10[1] = v8[1];
  v10[2] = v8[2];
  v10[3] = v8[3];
  return outlined destroy of AnyShareConfiguration?(v10);
}

uint64_t outlined destroy of AnyShareConfiguration?(uint64_t a1)
{
  type metadata accessor for AnyShareConfiguration?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for AnyShareConfiguration?()
{
  if (!lazy cache variable for type metadata for AnyShareConfiguration?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnyShareConfiguration?);
    }
  }
}

uint64_t outlined init with copy of AnyShareConfiguration?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyShareConfiguration?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t type metadata accessor for UIActivityItemsConfiguration()
{
  result = lazy cache variable for type metadata for UIActivityItemsConfiguration;
  if (!lazy cache variable for type metadata for UIActivityItemsConfiguration)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIActivityItemsConfiguration);
  }

  return result;
}

uint64_t @objc UIKitHoverGestureRecognizer._hoverEntered(_:with:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5 = a5;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITouch, 0x1E69DD190);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a4;
  v10 = a1;
  specialized UIKitHoverGestureRecognizer._hoverEntered(_:with:)(v8, v5);
}

uint64_t UIKitHoverGestureRecognizer.as<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIGestureRecognizer, 0x1E69DCA60);
  if (result == a1)
  {
    v10 = v3;
    v9 = *(a2 - 8);
    if (*(v9 + 64) == 8)
    {
      (*(v9 + 16))(a3, &v10, a2);
      return (*(v9 + 56))(a3, 0, 1, a2);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v8 = *(*(a2 - 8) + 56);

    return v8(a3, 1, 1, a2);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UITouch and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UITouch and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UITouch and conformance NSObject)
  {
    v3 = type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UITouch, 0x1E69DD190);
    result = swift_getWitnessTable(MEMORY[0x1E69E81B8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UITouch and conformance NSObject);
  }

  return result;
}

void *specialized UIKitHoverGestureRecognizer.convert(hoverEvents:with:phase:)(uint64_t a1, char *a2)
{
  v46 = *a2;
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC05HoverE0VTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITouch, 0x1E69DD190);
    lazy protocol witness table accessor for type UITouch and conformance NSObject();
    Set.Iterator.init(_cocoa:)();
    a1 = v49;
    v4 = v50;
    v6 = v51;
    v5 = v52;
    v7 = v53;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v6 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v5 = 0;
  }

  v11 = (v6 + 64) >> 6;
  v45 = v4;
  v44 = v11;
  while (a1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITouch, 0x1E69DD190), swift_dynamicCast(), v17 = v48, v15 = v5, v16 = v7, !v48))
    {
LABEL_30:
      outlined consume of Set<UIPress>.Iterator._Variant(a1);
      return v3;
    }

LABEL_19:
    v18 = a1;
    type metadata accessor for (UITouch, HoverEvent)(0);
    v20 = v19;
    v21 = v17;
    v22 = [v47 view];
    [v21 locationInView_];
    v24 = v23;
    v26 = v25;
    [v21 timestamp];
    v28 = v27;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v3;
    v31 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v17);
    v32 = v3[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      goto LABEL_32;
    }

    v35 = v30;
    if (v3[3] >= v34)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v30)
        {
          goto LABEL_8;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        if (v35)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, isUniquelyReferenced_nonNull_native);
      v36 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v17);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_34;
      }

      v31 = v36;
      if (v35)
      {
LABEL_8:
        v12 = v3[7] + 40 * v31;
        *v12 = v28;
        *(v12 + 8) = v46;
        *(v12 + 16) = 0;
        *(v12 + 24) = v24;
        *(v12 + 32) = v26;

        goto LABEL_9;
      }
    }

    v3[(v31 >> 6) + 8] |= 1 << v31;
    v38 = (v3[6] + 16 * v31);
    *v38 = v20;
    v38[1] = v17;
    v39 = v3[7] + 40 * v31;
    *v39 = v28;
    *(v39 + 8) = v46;
    *(v39 + 16) = 0;
    *(v39 + 24) = v24;
    *(v39 + 32) = v26;

    v40 = v3[2];
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      goto LABEL_33;
    }

    v3[2] = v42;
LABEL_9:
    v5 = v15;
    v7 = v16;
    a1 = v18;
    v11 = v44;
    v4 = v45;
  }

  v13 = v5;
  v14 = v7;
  v15 = v5;
  if (v7)
  {
LABEL_15:
    v16 = (v14 - 1) & v14;
    v17 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_30;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v11)
    {
      goto LABEL_30;
    }

    v14 = *(v4 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized UIKitHoverGestureRecognizer._hoverEntered(_:with:)(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = specialized UIKitHoverGestureRecognizer.convert(hoverEvents:with:phase:)(a1, &v4);
  if (swift_weakLoadStrong())
  {
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v2);

    lazy protocol witness table accessor for type UIKitHoverGestureRecognizer and conformance UIKitHoverGestureRecognizer();
    dispatch thunk of EventBindingBridge.send(_:source:)();
  }
}

unint64_t lazy protocol witness table accessor for type UIKitHoverGestureRecognizer and conformance UIKitHoverGestureRecognizer()
{
  result = lazy protocol witness table cache variable for type UIKitHoverGestureRecognizer and conformance UIKitHoverGestureRecognizer;
  if (!lazy protocol witness table cache variable for type UIKitHoverGestureRecognizer and conformance UIKitHoverGestureRecognizer)
  {
    v3 = type metadata accessor for UIKitHoverGestureRecognizer();
    result = swift_getWitnessTable(protocol conformance descriptor for UIKitHoverGestureRecognizer, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitHoverGestureRecognizer and conformance UIKitHoverGestureRecognizer);
  }

  return result;
}

void type metadata accessor for (UITouch, HoverEvent)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (UITouch, HoverEvent))
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UITouch, 0x1E69DD190);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (UITouch, HoverEvent));
    }
  }
}

uint64_t Scene.commandsReplaced<A>(content:)(void (*a1)(double), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17[0] = a4;
  v17[1] = a6;
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v17 - v12;
  Scene.modifier<A>(_:)(v14, a3, &unk_1EFFF5B18, a5);
  v18[0] = a5;
  v18[1] = &protocol witness table for CommandsRemovedModifier;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v10, v18);
  Scene.commands<A>(content:)(a1, a2, v10, v17[0], WitnessTable);
  return (*(v11 + 8))(v13, v10);
}

uint64_t static CommandsRemovedModifier._makeScene(modifier:inputs:body:)(uint64_t a1, _OWORD *a2, void (*a3)(uint64_t, __int128 *))
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a2[1];
  v14[0] = *a2;
  v14[1] = v4;
  v6 = *a2;
  v5 = a2[1];
  *v15 = a2[2];
  *&v15[12] = *(a2 + 44);
  v11 = v6;
  v12 = v5;
  *v13 = a2[2];
  *&v13[12] = *(a2 + 44);
  outlined init with copy of _SceneInputs(v14, &v20);
  PreferenceKeys.remove(_:)();
  v16[0] = v11;
  v16[1] = v12;
  v17[0] = *v13;
  *(v17 + 12) = *&v13[12];
  v20 = v11;
  v21 = v12;
  v22[0] = *v13;
  *(v22 + 12) = *&v13[12];
  v7 = outlined init with copy of _SceneInputs(v16, v18);
  a3(v7, &v20);
  v18[0] = v20;
  v18[1] = v21;
  v19[0] = v22[0];
  *(v19 + 12) = *(v22 + 12);
  outlined destroy of _SceneInputs(v18);
  lazy protocol witness table accessor for type _SceneInputs.NamespaceInput and conformance _SceneInputs.NamespaceInput();
  PropertyList.subscript.getter();
  v8 = v20;
  v9 = v21;
  *&v20 = closure #1 in implicit closure #1 in static CommandsRemovedModifier._makeScene(modifier:inputs:body:);
  *(&v20 + 1) = 0;
  type metadata accessor for (_:)();
  Attribute.init<A>(body:value:flags:update:)();

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  outlined consume of SceneList.Namespace(v8, *(&v8 + 1), v9);

  v20 = v11;
  v21 = v12;
  v22[0] = *v13;
  *(v22 + 12) = *&v13[12];
  return outlined destroy of _SceneInputs(&v20);
}

char *closure #1 in implicit closure #1 in static CommandsRemovedModifier._makeScene(modifier:inputs:body:)(char *result)
{
  v1 = *result;
  v2 = *(*result + 16);
  if (v2)
  {
    v3 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
      v1 = result;
    }

    if (v2 > *(v1 + 2))
    {
      __break(1u);
    }

    else
    {
      v4 = 216;
      do
      {
        if ((v1[v4] & 1) == 0)
        {
          v1[v4] |= 1u;
        }

        v4 += 568;
        --v2;
      }

      while (v2);
      *v3 = v1;
    }
  }

  return result;
}

void KeyEventDispatcher.receiveEvents(_:manager:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  v6 = *(a2 + 24);
  ObjectType = swift_getObjectType();
  v8 = (*(v6 + 24))(ObjectType, v6);
  swift_unknownObjectRelease();
  if (!v8)
  {
    return;
  }

  v9 = MEMORY[0x1E69E7CD0];
  v10 = swift_conformsToProtocol2();
  if (v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  if (!v10)
  {

    return;
  }

  v50 = v11;
  v51 = v10;
  v82 = v9;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  v52 = MEMORY[0x1E69E7CC0];
  while (v14)
  {
    v17 = v16;
LABEL_23:
    v20 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v21 = v20 | (v17 << 6);
    v22 = (*(a1 + 48) + 16 * v21);
    v23 = *v22;
    v24 = v22[1];
    outlined init with copy of _Benchmark(*(a1 + 56) + 40 * v21, &v61);
    *&v68 = v23;
    *(&v68 + 1) = v24;
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v61, &v69);
LABEL_24:
    v79 = v68;
    v80[0] = v69;
    v80[1] = v70;
    v81 = v71;
    v25 = v68;
    if (!v68)
    {

      v37 = *(v52 + 2);
      if (v37)
      {
        v38 = (v52 + 40);
        do
        {
          v39 = specialized __RawDictionaryStorage.find<A>(_:)(*(v38 - 1), *v38);
          if (v40)
          {
            v41 = v39;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v43 = *v3;
            *&v68 = *v3;
            if (!isUniquelyReferenced_nonNull_native)
            {
              specialized _NativeDictionary.copy()();
              v43 = v68;
            }

            specialized _NativeDictionary._delete(at:)(v41, v43);
            *v3 = v43;
          }

          v38 += 2;
          --v37;
        }

        while (v37);
      }

      return;
    }

    v26 = *(&v79 + 1);
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v80, v76);
    outlined init with copy of _Benchmark(v76, v75);
    outlined init with copy of _Benchmark(v75, v60);
    type metadata accessor for EventType();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v59 = 0;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      outlined destroy of KeyEvent?(&v53, type metadata accessor for KeyEvent?);
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0;
LABEL_11:
      __swift_destroy_boxed_opaque_existential_1(v75);
      outlined destroy of KeyEvent?(&v61, type metadata accessor for KeyEvent?);
      goto LABEL_12;
    }

    v65 = v57;
    v66 = v58;
    v67 = v59;
    v63 = v55;
    v64 = v56;
    v61 = v53;
    v62 = v54;
    if (!*(&v55 + 1))
    {
      goto LABEL_11;
    }

    v72 = v65;
    v73 = v66;
    v74 = v67;
    v68 = v61;
    v69 = v62;
    v70 = v63;
    v71 = v64;
    outlined init with copy of KeyEvent(&v68, &v61);
    v27 = HIBYTE(*(&v63 + 1)) & 0xFLL;
    if ((*(&v63 + 1) & 0x2000000000000000) == 0)
    {
      v27 = v63 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      v47 = String.subscript.getter();
      v48 = v28;
      __swift_destroy_boxed_opaque_existential_1(v75);
      outlined destroy of KeyEvent(&v61);
      v29 = *(&v70 + 1);
      v44 = v70;
      v45 = qword_18CDDBBF0[v68];
      v46 = *(&v69 + 1);

      outlined destroy of KeyEvent(&v68);
      *&v61 = v25;
      *(&v61 + 1) = v26;
      *&v68 = v45;
      *(&v68 + 1) = v47;
      *&v69 = v48;
      *(&v69 + 1) = v44;
      *&v70 = v29;
      *(&v70 + 1) = v46;
      KeyEventDispatcher.bind(_:_:_:)(&v61, &v68, v50, v51);
      LOBYTE(v29) = v30;

      if (v29)
      {
        specialized Set._Variant.insert(_:)(&v68, v25, v26);
      }

      v31 = v78;
      v49 = v77;
      __swift_project_boxed_opaque_existential_1(v76, v77);
      (*(v31 + 8))(&v68, v49, v31);
      if (v68 == 2 || v68 == 3)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v52 + 2) + 1, 1, v52);
        }

        v33 = *(v52 + 2);
        v32 = *(v52 + 3);
        v34 = v33 + 1;
        if (v33 >= v32 >> 1)
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v52);
          v34 = v33 + 1;
          v52 = v36;
        }

        *(v52 + 2) = v34;
        v35 = &v52[16 * v33];
        *(v35 + 4) = v25;
        *(v35 + 5) = v26;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v75);
      outlined destroy of KeyEvent(&v61);
      outlined destroy of KeyEvent(&v68);
    }

LABEL_12:
    __swift_destroy_boxed_opaque_existential_1(v76);
  }

  if (v15 <= v16 + 1)
  {
    v18 = v16 + 1;
  }

  else
  {
    v18 = v15;
  }

  v19 = v18 - 1;
  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v15)
    {
      v14 = 0;
      *&v71 = 0;
      v69 = 0u;
      v70 = 0u;
      v16 = v19;
      v68 = 0u;
      goto LABEL_24;
    }

    v14 = *(a1 + 64 + 8 * v17);
    ++v16;
    if (v14)
    {
      v16 = v17;
      goto LABEL_23;
    }
  }

  __break(1u);
}

void KeyEventDispatcher.bind(_:_:_:)(uint64_t *a1, uint64_t *a2, char *a3, char *a4)
{
  v5 = v4;
  v102 = a3;
  v103 = a4;
  v95 = type metadata accessor for CharacterSet();
  v89 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v94 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v93 = &v84 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v92 = &v84 - v12;
  v96 = type metadata accessor for KeyPress.Handler.Subject(0);
  MEMORY[0x1EEE9AC00](v96);
  v14 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v84 - v16;
  v18 = type metadata accessor for KeyPress.Handler(0);
  v19 = *(v18 - 8);
  v106 = v18;
  v107 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v108 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v84 - v22;
  v25.n128_f64[0] = MEMORY[0x1EEE9AC00](v24);
  v27 = &v84 - v26;
  v28 = *a1;
  v29 = a1[1];
  v30 = a2[1];
  v105 = *a2;
  v32 = a2[2];
  v31 = a2[3];
  v33 = a2[5];
  v98 = a2[4];
  v99 = v31;
  v91 = v33;
  v34 = *v5;
  v35 = *(*v5 + 16);
  v104 = v30;
  if (v35)
  {
    v36 = specialized __RawDictionaryStorage.find<A>(_:)(v28, v29);
    if (v37)
    {
      v38 = *(*(v34 + 56) + 8 * v36);
      v108 = *(v38 + 2);
      if (!v108)
      {
        return;
      }

      v103 = &v38[(*(v107 + 80) + 32) & ~*(v107 + 80)];
      v100 = v89 + 1;
      v101 = (v89 + 4);

      v39 = 0;
      v102 = v17;
      v97 = v38;
      while (1)
      {
        if (v39 >= *(v38 + 2))
        {
          goto LABEL_59;
        }

        outlined init with copy of KeyPress.Handler(&v103[*(v107 + 72) * v39], v27, type metadata accessor for KeyPress.Handler);
        outlined init with copy of KeyPress.Handler(v27, v17, type metadata accessor for KeyPress.Handler.Subject);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v41 = v92;
            v42 = v95;
            (*v101)(v92, v17, v95);
            v43 = v94;
            CharacterSet.init(charactersIn:)();
            v44 = v93;
            CharacterSet.intersection(_:)();
            v45 = *v100;
            (*v100)(v43, v42);
            lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet, MEMORY[0x1E69680D0]);
            dispatch thunk of SetAlgebra.init()();
            lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet, MEMORY[0x1E69680C8]);
            v46 = dispatch thunk of static Equatable.== infix(_:_:)();
            v45(v43, v42);
            v47 = v44;
            v17 = v102;
            v45(v47, v42);
            v48 = v41;
            v38 = v97;
            v45(v48, v42);
            if (v46)
            {
              goto LABEL_6;
            }
          }
        }

        else
        {
          v49 = *v17;
          if (!*(*v17 + 16) || (Hasher.init(_seed:)(), String.hash(into:)(), v50 = Hasher._finalize()(), v51 = -1 << *(v49 + 32), v52 = v50 & ~v51, ((*(v49 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0))
          {
LABEL_5:

            v17 = v102;
LABEL_6:
            outlined destroy of KeyEvent?(v27, type metadata accessor for KeyPress.Handler);
            goto LABEL_7;
          }

          v53 = ~v51;
          while (1)
          {
            v54 = (*(v49 + 48) + 16 * v52);
            v55 = *v54 == v104 && v54[1] == v32;
            if (v55 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v52 = (v52 + 1) & v53;
            if (((*(v49 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          v17 = v102;
        }

        if ((v105 & ~*&v27[*(v106 + 20)]) != 0)
        {
          goto LABEL_6;
        }

        v56 = *&v27[*(v106 + 24)];
        v109 = v105;
        v110 = v104;
        v111 = v32;
        v112 = v99;
        v113 = v98;
        v114 = v91;
        v56(&v115, &v109);
        v57 = v115;
        outlined destroy of KeyEvent?(v27, type metadata accessor for KeyPress.Handler);
        if ((v57 & 1) == 0)
        {

          return;
        }

LABEL_7:
        if (++v39 == v108)
        {
          goto LABEL_56;
        }
      }
    }
  }

  v58 = (*(v103 + 6))(*v102, v25);
  v103 = *(v58 + 16);
  if (!v103)
  {
LABEL_55:

LABEL_56:

    return;
  }

  v85 = v29;
  v86 = v28;
  v87 = v5;
  v59 = 0;
  v101 = ((*(v107 + 80) + 32) & ~*(v107 + 80));
  v100 = (v101 + v58);
  v90 = (v89 + 4);
  v60 = MEMORY[0x1E69E7CC0];
  ++v89;
  v97 = v14;
  v102 = v58;
  v88 = v32;
  while (v59 < *(v58 + 16))
  {
    v61 = *(v107 + 72);
    outlined init with copy of KeyPress.Handler(v100 + v61 * v59, v23, type metadata accessor for KeyPress.Handler);
    outlined init with copy of KeyPress.Handler(v23, v108, type metadata accessor for KeyPress.Handler);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v60 + 16) + 1, 1, v60);
    }

    v63 = *(v60 + 16);
    v62 = *(v60 + 24);
    if (v63 >= v62 >> 1)
    {
      v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1, v60);
    }

    *(v60 + 16) = v63 + 1;
    outlined init with take of KeyPress.Handler(v108, v101 + v60 + v63 * v61);
    outlined init with copy of KeyPress.Handler(v23, v14, type metadata accessor for KeyPress.Handler.Subject);
    v64 = swift_getEnumCaseMultiPayload();
    if (v64)
    {
      if (v64 == 1)
      {
        v65 = v92;
        v66 = v95;
        (*v90)(v92, v14, v95);
        v67 = v94;
        CharacterSet.init(charactersIn:)();
        v68 = v93;
        CharacterSet.intersection(_:)();
        v69 = *v89;
        (*v89)(v67, v66);
        lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet, MEMORY[0x1E69680D0]);
        dispatch thunk of SetAlgebra.init()();
        lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet, MEMORY[0x1E69680C8]);
        v70 = dispatch thunk of static Equatable.== infix(_:_:)();
        v71 = v67;
        v14 = v97;
        v69(v71, v66);
        v69(v68, v66);
        v72 = v65;
        v30 = v104;
        v69(v72, v66);
        v32 = v88;
        if (v70)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
      v73 = *v14;
      if (!*(*v14 + 16) || (Hasher.init(_seed:)(), String.hash(into:)(), v74 = Hasher._finalize()(), v75 = -1 << *(v73 + 32), v76 = v74 & ~v75, ((*(v73 + 56 + ((v76 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v76) & 1) == 0))
      {
LABEL_29:

        v14 = v97;
LABEL_30:
        outlined destroy of KeyEvent?(v23, type metadata accessor for KeyPress.Handler);
        goto LABEL_31;
      }

      v77 = ~v75;
      while (1)
      {
        v78 = (*(v73 + 48) + 16 * v76);
        v79 = *v78 == v30 && v78[1] == v32;
        if (v79 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v76 = (v76 + 1) & v77;
        if (((*(v73 + 56 + ((v76 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v76) & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v14 = v97;
    }

    if ((v105 & ~*&v23[*(v106 + 20)]) != 0)
    {
      goto LABEL_30;
    }

    v80 = *&v23[*(v106 + 24)];
    v109 = v105;
    v110 = v30;
    v111 = v32;
    v112 = v99;
    v113 = v98;
    v114 = v91;
    v80(&v115, &v109);
    v81 = v115;
    outlined destroy of KeyEvent?(v23, type metadata accessor for KeyPress.Handler);
    if ((v81 & 1) == 0)
    {

      v82 = v87;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v109 = *v82;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v60, v86, v85, isUniquelyReferenced_nonNull_native);
      *v82 = v109;
      return;
    }

LABEL_31:
    ++v59;
    v58 = v102;
    if (v59 == v103)
    {
      goto LABEL_55;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
}

void *protocol witness for ForwardedEventDispatcher.reset() in conformance KeyEventDispatcher()
{

  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *v0 = result;
  return result;
}

uint64_t outlined init with take of KeyPress.Handler(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyPress.Handler(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of KeyPress.Handler(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for CharacterSet();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized KeyEventDispatcher.wantsEvent(_:manager:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v63 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v49 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v49 - v10;
  v66 = type metadata accessor for KeyPress.Handler.Subject(0);
  MEMORY[0x1EEE9AC00](v66);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for KeyPress.Handler(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyPress.Handler?(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v21 = *(a2 + 24);
  ObjectType = swift_getObjectType();
  v23 = (*(v21 + 24))(ObjectType, v21);
  swift_unknownObjectRelease();
  if (!v23)
  {
    return 0;
  }

  v62 = v16;
  v24 = swift_conformsToProtocol2();
  if (!v24 || (v25 = v24, outlined init with copy of _Benchmark(a1, v72), v26.n128_f64[0] = KeyPress.init(for:)(v72, v67), (v27 = v68) == 0))
  {

    return 0;
  }

  v53 = v19;
  v61 = v14;
  v54 = v13;
  v28 = v67[1];
  v50 = v67[0];
  v58 = v69;
  v59 = v70;
  v51 = v71;
  v29 = *v23;
  v30 = *(v25 + 48);
  v52 = v23;
  result = v30(v29, v25, v26);
  v31 = result;
  v32 = v62;
  v60 = *(result + 16);
  if (!v60)
  {
LABEL_25:

    outlined consume of KeyPress?(v50, v28, v27);

    v46 = v53;
    (*(v61 + 56))(v53, 1, 1, v54);
    outlined destroy of KeyEvent?(v46, type metadata accessor for KeyPress.Handler?);
    return 0;
  }

  v33 = 0;
  v57 = (v63 + 32);
  v56 = (v63 + 8);
  v63 = result;
  v55 = v28;
  while (v33 < *(v31 + 16))
  {
    outlined init with copy of KeyPress.Handler(v31 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v33, v32, type metadata accessor for KeyPress.Handler);
    outlined init with copy of KeyPress.Handler(v32, v12, type metadata accessor for KeyPress.Handler.Subject);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {

        outlined consume of KeyPress?(v50, v28, v27);
        goto LABEL_30;
      }

      v35 = v64;
      (*v57)(v64, v12, v4);
      CharacterSet.init(charactersIn:)();
      v36 = v65;
      CharacterSet.intersection(_:)();
      v37 = *v56;
      (*v56)(v6, v4);
      lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet, MEMORY[0x1E69680D0]);
      dispatch thunk of SetAlgebra.init()();
      lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet, MEMORY[0x1E69680C8]);
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      v37(v6, v4);
      v37(v36, v4);
      v37(v35, v4);
      v28 = v55;
      if ((v38 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v39 = *v12;
      if (*(*v12 + 16))
      {
        Hasher.init(_seed:)();
        String.hash(into:)();
        v40 = Hasher._finalize()();
        v41 = -1 << *(v39 + 32);
        v42 = v40 & ~v41;
        if ((*(v39 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
        {
          v43 = ~v41;
          while (1)
          {
            v44 = (*(v39 + 48) + 16 * v42);
            v45 = *v44 == v28 && v27 == v44[1];
            if (v45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v42 = (v42 + 1) & v43;
            if (((*(v39 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
            {
              goto LABEL_8;
            }
          }

LABEL_29:

          outlined consume of KeyPress?(v50, v28, v27);

          v32 = v62;
LABEL_30:
          v47 = v32;
          v48 = v53;
          outlined init with take of KeyPress.Handler(v47, v53);
          (*(v61 + 56))(v48, 0, 1, v54);
          outlined destroy of KeyEvent?(v48, type metadata accessor for KeyPress.Handler?);
          return 1;
        }
      }

LABEL_8:
    }

    ++v33;
    v32 = v62;
    result = outlined destroy of KeyEvent?(v62, type metadata accessor for KeyPress.Handler);
    v31 = v63;
    if (v33 == v60)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
  return result;
}

void type metadata accessor for KeyPress.Handler?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for KeyPress.Handler?)
  {
    type metadata accessor for KeyPress.Handler(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for KeyPress.Handler?);
    }
  }
}

uint64_t outlined consume of KeyPress?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t outlined destroy of KeyEvent?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double destroy for _DigitalCrownModifier(uint64_t a1)
{

  v2 = *(a1 + 144);
  if (v2 != 255)
  {
    outlined consume of _CrownHapticsConfiguration(*(a1 + 128), *(a1 + 136), v2);
  }

  return result;
}

uint64_t initializeWithCopy for _DigitalCrownModifier(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = a2[3];
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v5;
  v6 = a2[6];
  *(a1 + 32) = *(a2 + 2);
  *(a1 + 48) = v6;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 4);
  v7 = a2[10];
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 80) = v7;
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 96) = a2[12];
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 109) = *(a2 + 109);
  *(a1 + 112) = a2[14];
  *(a1 + 120) = *(a2 + 60);
  v8 = *(a2 + 144);

  if (v8 == 255)
  {
    *(a1 + 128) = *(a2 + 8);
    *(a1 + 144) = *(a2 + 144);
  }

  else
  {
    v9 = a2[16];
    v10 = a2[17];
    outlined copy of _CrownHapticsConfiguration(v9, v10, v8);
    *(a1 + 128) = v9;
    *(a1 + 136) = v10;
    *(a1 + 144) = v8;
  }

  *(a1 + 145) = *(a2 + 145);
  *(a1 + 149) = *(a2 + 149);
  v11 = a2[20];
  *(a1 + 152) = a2[19];
  *(a1 + 160) = v11;

  return a1;
}

uint64_t assignWithCopy for _DigitalCrownModifier(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = a2[1];

  *(a1 + 16) = a2[2];
  v4 = a2[4];
  *(a1 + 24) = a2[3];
  *(a1 + 32) = v4;

  v5 = a2[6];
  *(a1 + 40) = a2[5];
  *(a1 + 48) = v5;

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = a2[8];
  *(a1 + 72) = a2[9];
  v6 = a2[10];
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 80) = v6;
  *(a1 + 89) = *(a2 + 89);
  v7 = a2[12];
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 96) = v7;
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 106) = *(a2 + 106);
  *(a1 + 107) = *(a2 + 107);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 109) = *(a2 + 109);
  *(a1 + 112) = a2[14];
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 121) = *(a2 + 121);
  v8 = *(a2 + 144);
  if (*(a1 + 144) == 255)
  {
    if (v8 == 255)
    {
      v17 = *(a2 + 8);
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 128) = v17;
    }

    else
    {
      v14 = a2[16];
      v15 = a2[17];
      outlined copy of _CrownHapticsConfiguration(v14, v15, *(a2 + 144));
      *(a1 + 128) = v14;
      *(a1 + 136) = v15;
      *(a1 + 144) = v8;
    }
  }

  else if (v8 == 255)
  {
    outlined destroy of _CrownHapticsConfiguration(a1 + 128);
    v16 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 8);
    *(a1 + 144) = v16;
  }

  else
  {
    v9 = a2[16];
    v10 = a2[17];
    outlined copy of _CrownHapticsConfiguration(v9, v10, *(a2 + 144));
    v11 = *(a1 + 128);
    v12 = *(a1 + 136);
    *(a1 + 128) = v9;
    *(a1 + 136) = v10;
    v13 = *(a1 + 144);
    *(a1 + 144) = v8;
    outlined consume of _CrownHapticsConfiguration(v11, v12, v13);
  }

  *(a1 + 145) = *(a2 + 145);
  *(a1 + 146) = *(a2 + 146);
  *(a1 + 147) = *(a2 + 147);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 149) = *(a2 + 149);
  v18 = a2[20];
  *(a1 + 152) = a2[19];
  *(a1 + 160) = v18;

  return a1;
}

uint64_t assignWithTake for _DigitalCrownModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 106) = *(a2 + 106);
  *(a1 + 107) = *(a2 + 107);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 109) = *(a2 + 109);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 121) = *(a2 + 121);
  v4 = *(a1 + 144);
  if (v4 == 255)
  {
    goto LABEL_5;
  }

  v5 = *(a2 + 144);
  if (v5 == 255)
  {
    outlined destroy of _CrownHapticsConfiguration(a1 + 128);
LABEL_5:
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = *(a2 + 144);
    goto LABEL_6;
  }

  v6 = *(a1 + 128);
  v7 = *(a1 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v5;
  outlined consume of _CrownHapticsConfiguration(v6, v7, v4);
LABEL_6:
  *(a1 + 145) = *(a2 + 145);
  *(a1 + 146) = *(a2 + 146);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 149) = *(a2 + 149);
  *(a1 + 152) = *(a2 + 152);

  return a1;
}

uint64_t getEnumTagSinglePayload for _DigitalCrownModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t storeEnumTagSinglePayload for _DigitalCrownModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double View.tabBarCollapsesOnScroll(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

Swift::Int TabBarScrollCollapseMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type TabBarScrollCollapseMode and conformance TabBarScrollCollapseMode()
{
  result = lazy protocol witness table cache variable for type TabBarScrollCollapseMode and conformance TabBarScrollCollapseMode;
  if (!lazy protocol witness table cache variable for type TabBarScrollCollapseMode and conformance TabBarScrollCollapseMode)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabBarScrollCollapseMode, &type metadata for TabBarScrollCollapseMode, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TabBarScrollCollapseMode and conformance TabBarScrollCollapseMode);
  }

  return result;
}

void FileDocumentConfiguration.document.getter(uint64_t a1)
{
  type metadata accessor for Binding();

  JUMPOUT(0x18D00ACC0);
}

uint64_t FileDocumentConfiguration.document.setter(uint64_t a1, uint64_t a2)
{
  specialized AccessibilityFocusState.Binding.wrappedValue.setter(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*FileDocumentConfiguration.document.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x38uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *(a2 + 16);
  *v5 = v7;
  v8 = *(v7 - 8);
  v5[1] = v8;
  v9 = *(v8 + 64);
  if (v4)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(v8 + 64));
    v10 = malloc(v9);
  }

  v6[3] = v10;
  v11 = type metadata accessor for Binding();
  v6[4] = v11;
  v12 = *(v11 - 8);
  v13 = v12;
  v6[5] = v12;
  if (v4)
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(*(v12 + 64));
  }

  v6[6] = v14;
  (*(v13 + 16))();
  MEMORY[0x18D00ACC0](v11);
  return FileDocumentConfiguration.document.modify;
}

void FileDocumentConfiguration.document.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[5];
  v3 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v8 = (*a1)[1];
  v7 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    (*(v8 + 16))((*a1)[2], v5, v9);
    specialized Binding.wrappedValue.setter(v7);
    v10 = *(v8 + 8);
    v10(v7, v9);
    (*(v4 + 8))(v3, v6);
    v10(v5, v9);
  }

  else
  {
    specialized Binding.wrappedValue.setter((*a1)[3]);
    (*(v8 + 8))(v5, v9);
    (*(v4 + 8))(v3, v6);
  }

  free(v3);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t FileDocumentConfiguration.$document.getter(uint64_t a1)
{
  type metadata accessor for Binding();

  return Binding.projectedValue.getter();
}

uint64_t FileDocumentConfiguration.init(document:fileURL:isEditable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for Binding();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  v14 = type metadata accessor for FileDocumentConfiguration(0, a4, a5, v13);
  result = outlined init with take of URL?(a2, a6 + *(v14 + 36));
  *(a6 + *(v14 + 40)) = a3;
  return result;
}

uint64_t property wrapper backing initializer of FileDocumentBox.base(uint64_t a1)
{
  v2 = type metadata accessor for Optional();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  (*(v3 + 16))(&v8 - v5, a1, v2, v4);
  Published.init(wrappedValue:)(v6, v2);
  return (*(v3 + 8))(a1, v2);
}

double FileDocumentBox.base.didset(uint64_t a1)
{
  v23 = *v1;
  v3 = *(v23 + 80);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v22 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v10 = FileDocumentBox.base.getter();
  v11 = *(*(v3 - 8) + 48);
  v12 = v11(v9, 1, v3, v10) != 1;
  (*(v5 + 8))(v9, v4);
  *(v1 + *(*v1 + 120)) = v12;
  static Transaction.current.getter();
  Transaction.subscript.getter();

  if ((v24[0] & 1) == 0 && (v11)(a1, 1, v3) != 1)
  {
    v14 = *(*v1 + 128);
    swift_beginAccess();
    if (*(v1 + v14))
    {
      v21 = *(v1 + v14);
      v15 = v22;
      (*(v5 + 16))(v22, a1, v4);
      v16 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v17 = swift_allocObject();
      *(v17 + 16) = v3;
      v18 = *(v23 + 88);
      *(v17 + 24) = v18;
      (*(v5 + 32))(v17 + v16, v15, v4);
      type metadata accessor for FileDocumentBox(0, v3, v18, v19);
      v20 = v21;
      NSUndoManager.registerUndo<A>(withTarget:handler:)();
    }
  }

  return result;
}

double FileDocumentBox.base.getter()
{
  return FileDocumentBox.base.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return result;
}

void (*FileDocumentBox.base.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = type metadata accessor for Optional();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  FileDocumentBox.base.getter();
  return FileDocumentBox.base.modify;
}

void FileDocumentBox.base.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    specialized FileDocumentBox.base.setter(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    specialized FileDocumentBox.base.setter(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t property wrapper backing initializer of FileDocumentBox.fileURL(uint64_t a1)
{
  type metadata accessor for URL?(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  outlined init with copy of URL?(a1, &v9 - v6);
  outlined init with copy of URL?(v7, v4);
  Published.init(initialValue:)();
  _s7SwiftUI30FileDocumentWriteConfigurationVWOhTm_0(a1, type metadata accessor for URL?);
  return _s7SwiftUI30FileDocumentWriteConfigurationVWOhTm_0(v7, type metadata accessor for URL?);
}

uint64_t FileDocumentBox.fileURL.setter(uint64_t a1)
{
  v3 = *v1;
  type metadata accessor for URL?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 80);
  v7 = v11;
  v12 = *(v3 + 88);
  v8 = v12;
  swift_getKeyPath();
  v10[0] = v7;
  v10[1] = v8;
  swift_getKeyPath();
  outlined init with copy of URL?(a1, v6);

  static Published.subscript.setter();
  return _s7SwiftUI30FileDocumentWriteConfigurationVWOhTm_0(a1, type metadata accessor for URL?);
}

uint64_t (*FileDocumentBox.fileURL.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  MEMORY[0x1EEE9AC00](v2);
  KeyPath = swift_getKeyPath();
  v3[4] = KeyPath;
  MEMORY[0x1EEE9AC00](KeyPath);
  v3[5] = swift_getKeyPath();
  v3[6] = static Published.subscript.modify();
  return FileDocumentBox.fileURL.modify;
}

uint64_t FileDocumentBox.isEditable.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t FileDocumentBox.isEditable.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*FileDocumentBox.isEditable.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  MEMORY[0x1EEE9AC00](v2);
  KeyPath = swift_getKeyPath();
  v3[4] = KeyPath;
  MEMORY[0x1EEE9AC00](KeyPath);
  v3[5] = swift_getKeyPath();
  v3[6] = static Published.subscript.modify();
  return ReferenceFileDocumentBox.isEditable.modify;
}

uint64_t FileDocumentBox.__allocating_init()()
{
  v0 = swift_allocObject();
  FileDocumentBox.init()();
  return v0;
}

uint64_t *FileDocumentBox.init()()
{
  v1 = *v0;
  type metadata accessor for Published<Bool>();
  v34 = *(v2 - 8);
  v35 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v33 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation3URLVSgMaTm_6(0, &lazy cache variable for type metadata for Published<URL?>, type metadata accessor for URL?, MEMORY[0x1E695C070]);
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v27 - v5;
  type metadata accessor for URL?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 80);
  v10 = type metadata accessor for Optional();
  v30 = v10;
  v11 = type metadata accessor for Published();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - v13;
  v28 = *(v10 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v27 - v17;
  v19 = *(v1 + 96);
  v20 = *(*(v9 - 8) + 56);
  v20(&v27 - v17, 1, 1, v9, v16);
  property wrapper backing initializer of FileDocumentBox.base(v18);
  (*(v12 + 32))(v0 + v19, v14, v11);
  v21 = *(*v0 + 104);
  v22 = type metadata accessor for URL();
  (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
  v23 = v29;
  property wrapper backing initializer of FileDocumentBox.fileURL(v8);
  (*(v31 + 32))(v0 + v21, v23, v32);
  v24 = *(*v0 + 112);
  v36 = 0;
  v25 = v33;
  Published.init(initialValue:)();
  (*(v34 + 32))(v0 + v24, v25, v35);
  *(v0 + *(*v0 + 120)) = 0;
  *(v0 + *(*v0 + 128)) = 0;
  (v20)(v18, 1, 1, v9);
  specialized FileDocumentBox.base.setter(v18);
  (*(v28 + 8))(v18, v30);
  return v0;
}

id FileDocumentBox.read(from:contentType:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  Configuration = type metadata accessor for FileDocumentReadConfiguration(0);
  v8 = Configuration - 8;
  MEMORY[0x1EEE9AC00](Configuration);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v6[10];
  v12 = type metadata accessor for Optional();
  v23 = *(v12 - 8);
  v24 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  v15 = v6[16];
  swift_beginAccess();
  [*(v3 + v15) disableUndoRegistration];
  v16 = type metadata accessor for UTType();
  (*(*(v16 - 8) + 16))(v10, a2, v16);
  *&v10[*(v8 + 28)] = a1;
  v17 = v6[11];
  v18 = *(v17 + 24);
  v19 = a1;
  v20 = v25;
  v18(v10, v11, v17);
  if (!v20)
  {
    (*(*(v11 - 8) + 56))(v14, 0, 1, v11);
    specialized FileDocumentBox.base.setter(v14);
    (*(v23 + 8))(v14, v24);
  }

  v21 = *(*v3 + 128);
  swift_beginAccess();
  return [*(v3 + v21) enableUndoRegistration];
}

uint64_t (*FileDocumentBox.snapshotForSerialization(contentType:)(uint64_t a1))(void *a1)
{
  v2 = *v1;
  v3 = *v1;
  v27 = a1;
  v28 = v3;
  v4 = type metadata accessor for UTType();
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v26 = v5;
  v31 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v2 + 80);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  v11 = *(v6 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v14 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - v16;
  v18 = FileDocumentBox.base.getter();
  if ((*(v11 + 48))(v10, 1, v6, v18) == 1)
  {
    (*(v8 + 8))(v10, v7);
    return 0;
  }

  else
  {
    v20 = *(v11 + 32);
    v20(v17, v10, v6);
    v20(v14, v17, v6);
    v22 = v29;
    v21 = v30;
    (*(v29 + 16))(v31, v27, v30);
    v23 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v24 = (v12 + *(v22 + 80) + v23) & ~*(v22 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = v6;
    *(v25 + 24) = *(v28 + 88);
    v20((v25 + v23), v14, v6);
    (*(v22 + 32))(v25 + v24, v31, v21);
    return partial apply for closure #1 in FileDocumentBox.snapshotForSerialization(contentType:);
  }
}

uint64_t closure #1 in FileDocumentBox.snapshotForSerialization(contentType:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for FileDocumentWriteConfiguration(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UTType();
  (*(*(v13 - 8) + 16))(v12, a3, v13);
  *&v12[*(v10 + 28)] = a1;
  v14 = *(a5 + 32);
  v15 = a1;
  v16 = v14(v12, a4, a5);
  _s7SwiftUI30FileDocumentWriteConfigurationVWOhTm_0(v12, type metadata accessor for FileDocumentWriteConfiguration);
  return v16;
}

uint64_t FileDocumentBox.deinit()
{
  v1 = *(*v0 + 96);
  type metadata accessor for Optional();
  v2 = type metadata accessor for Published();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 104);
  _s10Foundation3URLVSgMaTm_6(0, &lazy cache variable for type metadata for Published<URL?>, type metadata accessor for URL?, MEMORY[0x1E695C070]);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 112);
  type metadata accessor for Published<Bool>();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return v0;
}

double FileDocumentBox.__deallocating_deinit()
{
  FileDocumentBox.deinit();

  swift_deallocClassInstance();
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance FileDocumentBox<A>@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>, uint64_t x3_0@<X3>)
{
  type metadata accessor for FileDocumentBox(0, *(a1 + 80), *(a1 + 88), x3_0);
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t protocol witness for DocumentBaseBox.base.setter in conformance FileDocumentBox<A>(uint64_t a1)
{
  specialized FileDocumentBox.base.setter(a1);
  v2 = type metadata accessor for Optional();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

void (*protocol witness for DocumentBaseBox.base.modify in conformance FileDocumentBox<A>(void *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = FileDocumentBox.base.modify(v2);
  return protocol witness for ObservableDocumentBox.wasOpened.modify in conformance ReferenceFileDocumentBox<A1>;
}

void (*protocol witness for ObservableDocumentBox.fileURL.modify in conformance FileDocumentBox<A>(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = FileDocumentBox.fileURL.modify(v2);
  return protocol witness for ObservableDocumentBox.wasOpened.modify in conformance ReferenceFileDocumentBox<A1>;
}

void (*protocol witness for ObservableDocumentBox.isEditable.modify in conformance FileDocumentBox<A>(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = FileDocumentBox.isEditable.modify(v2);
  return protocol witness for ViewGraphOwner.renderingPhase.modify in conformance _UIHostingView<A>;
}

uint64_t DocumentGroupConfiguration.NewFileDocument.provideNewDocument(to:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  type metadata accessor for FileDocumentBox(0, a5, a6, v13);
  swift_dynamicCastClassUnconditional();
  a3();
  (*(*(a5 - 8) + 56))(v12, 0, 1, a5);
  specialized FileDocumentBox.base.setter(v12);
  return (*(v10 + 8))(v12, v9);
}

uint64_t DocumentGroupConfiguration.EditorFileDocumentContainer.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v35 = a6;
  v37 = a3;
  v42 = a9;
  type metadata accessor for URL?(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v41 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Binding();
  v39 = *(v18 - 8);
  v40 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v38 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v36 = &v35 - v21;
  type metadata accessor for MainActor();

  v22 = static MainActor.shared.getter();
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69E85E0];
  v23[2] = v22;
  v23[3] = v24;
  v23[4] = a5;
  v23[5] = a6;
  v23[6] = a7;
  v23[7] = a8;
  v23[8] = a1;
  v23[9] = a2;
  v25 = v37;
  v23[10] = v37;
  v23[11] = a4;

  v26 = static MainActor.shared.getter();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = MEMORY[0x1E69E85E0];
  v27[4] = a5;
  v27[5] = v35;
  v27[6] = a7;
  v27[7] = a8;
  v27[8] = a1;
  v27[9] = a2;
  v27[10] = v25;
  v27[11] = a4;
  v28 = v36;
  v29 = a5;
  Binding.init(get:set:)();
  v31 = v38;
  v30 = v39;
  v32 = v40;
  (*(v39 + 16))(v38, v28, v40);

  v33 = v41;
  FileDocumentBox.fileURL.getter();
  LOBYTE(v26) = FileDocumentBox.isEditable.getter();

  (*(v30 + 8))(v28, v32);
  return FileDocumentConfiguration.init(document:fileURL:isEditable:)(v31, v33, v26 & 1, v29, a7, v42);
}

uint64_t property wrapper backing initializer of DocumentGroupConfiguration.EditorFileDocumentContainer.modelBox(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for FileDocumentBox(0, *(*a1 + 80), *(*a1 + 88), a4);
  swift_getWitnessTable(protocol conformance descriptor for FileDocumentBox<A>, v4);

  return ObservedObject.init(wrappedValue:)();
}

uint64_t DocumentGroupConfiguration.EditorFileDocumentContainer.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, void (*a10)(uint64_t, uint64_t, void (*)(void), uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, double))
{
  v66 = a8;
  v67 = a9;
  v61 = a3;
  v59 = a1;
  type metadata accessor for DocumentConfiguration?(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v62 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a5;
  v18 = a7;
  v20 = type metadata accessor for FileDocumentConfiguration(0, a5, a7, v19);
  v56 = *(v20 - 8);
  v57 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v52 - v21;
  v60 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _EnvironmentKeyWritingModifier<DocumentConfiguration?>(255);
  v26 = type metadata accessor for ModifiedContent();
  v58 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v52 - v30;
  v32 = type metadata accessor for _ConditionalContent();
  v64 = *(v32 - 8);
  v65 = v32;
  v33 = MEMORY[0x1EEE9AC00](v32);
  v63 = &v52 - v34;
  if (*(a2 + *(*a2 + 120)) == 1)
  {
    v52 = v25;
    v54 = v26;
    v53 = v28;
    v35 = a6;
    v36 = v61;
    v55 = v31;
    v37 = v66;
    a10(v59, a2, v61, a4, v17, v35, v18, v66, v33);
    v36(v22);
    (*(v56 + 8))(v22, v57);
    swift_getKeyPath();
    v38 = v62;
    v26 = v54;
    DocumentGroupConfiguration.EditorFileDocumentContainer.documentConfiguration.getter(v62);
    v39 = type metadata accessor for DocumentConfiguration(0);
    (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
    v40 = v53;
    v41 = v52;
    View.environment<A>(_:_:)();

    _s7SwiftUI30FileDocumentWriteConfigurationVWOhTm_0(v38, type metadata accessor for DocumentConfiguration?);
    (*(v60 + 8))(v41, v35);
    v42 = lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<DocumentConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<DocumentConfiguration?>, MEMORY[0x1E6980A18]);
    v68[0] = v37;
    v68[1] = v42;
    WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v26, v68);
    v44 = v55;
    static ViewBuilder.buildExpression<A>(_:)();
    v45 = *(v58 + 8);
    v45(v40, v26);
    static ViewBuilder.buildExpression<A>(_:)();
    v46 = v63;
    static ViewBuilder.buildEither<A, B>(first:)(v40, v26, MEMORY[0x1E69815C0], WitnessTable, MEMORY[0x1E6981580]);
    v45(v40, v26);
    v45(v44, v26);
  }

  else
  {
    v72 = static Color.clear.getter();
    v47 = lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<DocumentConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<DocumentConfiguration?>, MEMORY[0x1E6980A18]);
    v37 = v66;
    v71[0] = v66;
    v71[1] = v47;
    v48 = swift_getWitnessTable(MEMORY[0x1E697E858], v26, v71);
    v46 = v63;
    static ViewBuilder.buildEither<A, B>(second:)(&v72, v26, MEMORY[0x1E69815C0], v48, MEMORY[0x1E6981580]);
  }

  v49 = lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<DocumentConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<DocumentConfiguration?>, MEMORY[0x1E6980A18]);
  v70[0] = v37;
  v70[1] = v49;
  v69[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v26, v70);
  v69[1] = MEMORY[0x1E6981580];
  v50 = v65;
  swift_getWitnessTable(MEMORY[0x1E697F968], v65, v69);
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v64 + 8))(v46, v50);
}

uint64_t DocumentGroupConfiguration.ViewerFileDocumentContainer.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v37 = a3;
  v38 = a7;
  v43 = a9;
  type metadata accessor for URL?(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v42 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Binding();
  v40 = *(v17 - 8);
  v41 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v39 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v36 = &v36 - v20;
  type metadata accessor for MainActor();

  v21 = static MainActor.shared.getter();
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E85E0];
  v22[2] = v21;
  v22[3] = v23;
  v22[4] = a5;
  v22[5] = a6;
  v24 = v38;
  v22[6] = v38;
  v22[7] = a8;
  v25 = a8;
  v22[8] = a1;
  v22[9] = a2;
  v26 = a1;
  v27 = v37;
  v22[10] = v37;
  v22[11] = a4;

  v28 = static MainActor.shared.getter();
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = MEMORY[0x1E69E85E0];
  v29[4] = a5;
  v29[5] = a6;
  v29[6] = v24;
  v29[7] = v25;
  v29[8] = v26;
  v29[9] = a2;
  v29[10] = v27;
  v29[11] = a4;
  v30 = v36;
  Binding.init(get:set:)();
  v32 = v39;
  v31 = v40;
  v33 = v41;
  (*(v40 + 16))(v39, v30, v41);

  v34 = v42;
  FileDocumentBox.fileURL.getter();

  (*(v31 + 8))(v30, v33);
  return FileDocumentConfiguration.init(document:fileURL:isEditable:)(v32, v34, 0, a5, v24, v43);
}

void DocumentGroupConfiguration.EditorFileDocumentContainer.documentConfiguration.getter(_BYTE *a2@<X8>)
{

  v3 = FileDocumentBox.isEditable.getter();
  type metadata accessor for DocumentConfiguration(0);
  FileDocumentBox.fileURL.getter();

  *a2 = v3 & 1;
}

uint64_t closure #1 in DocumentGroupConfiguration.EditorFileDocumentContainer.configuration.getter@<X0>(uint64_t a2@<X6>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;

  FileDocumentBox.base.getter();

  v12 = *(a2 - 8);
  if ((*(v12 + 48))(v11, 1, a2) != 1)
  {
    return (*(v12 + 32))(a3, v11, a2);
  }

  (*(v9 + 8))(v11, v8);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

double closure #2 in DocumentGroupConfiguration.EditorFileDocumentContainer.configuration.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - v13;
  v15 = *(a9 - 8);
  (*(v15 + 16))(&v17 - v13, a1, a9, v12);
  (*(v15 + 56))(v14, 0, 1, a9);

  specialized FileDocumentBox.base.setter(v14);
  (*(v11 + 8))(v14, v10);

  return result;
}

uint64_t Published.init(wrappedValue:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v5);
  Published.init(initialValue:)();
  return (*(v4 + 8))(a1, a2);
}

uint64_t key path setter for FileDocumentBox.fileURL : <A>FileDocumentBox<A>(uint64_t a1)
{
  type metadata accessor for URL?(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of URL?(a1, v4);
  return FileDocumentBox.fileURL.setter(v4);
}

uint64_t specialized FileDocumentBox.base.setter(uint64_t a1)
{
  v15 = a1;
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  v22 = v3;
  v23 = *(v2 + 88);
  v11 = v23;
  swift_getKeyPath();
  v20 = v3;
  v21 = v11;
  swift_getKeyPath();
  static Published.subscript.getter();

  v18 = v3;
  v19 = v11;
  swift_getKeyPath();
  v16 = v3;
  v17 = v11;
  swift_getKeyPath();
  (*(v5 + 16))(v7, v15, v4);

  static Published.subscript.setter();
  v12 = FileDocumentBox.base.didset(v10);
  return (*(v5 + 8))(v10, v4, v12);
}

void type metadata completion function for FileDocumentConfiguration(uint64_t a1)
{
  type metadata accessor for Binding();
  if (v1 <= 0x3F)
  {
    type metadata accessor for URL?(319);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for FileDocumentConfiguration(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = ((v7 + 16) & ~v7) + v8 + v11;
  if (*(v10 + 84))
  {
    v13 = *(v10 + 64);
  }

  else
  {
    v13 = *(v10 + 64) + 1;
  }

  v14 = (*(v10 + 80) | v7) & 0x100000;
  v15 = *a2;
  *a1 = *a2;
  if ((v11 | v7) > 7 || v14 != 0 || v13 + (v12 & ~v11) + 1 > 0x18)
  {
    a1 = (v15 + (((v11 | v7) & 0xF8 ^ 0x1F8) & ((v11 | v7) + 16)));
  }

  else
  {
    v25 = v5;
    v26 = v9;
    v18 = ~v11;
    v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    v20 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v19 = *v20;
    v21 = *(v6 + 16);

    v21(v19 + 1, v20 + 1, v25);
    v22 = ((a1 + v12) & v18);
    v23 = ((a2 + v12) & v18);
    if ((*(v10 + 48))(v23, 1, v26))
    {
      memcpy(v22, v23, v13);
    }

    else
    {
      (*(v10 + 16))(v22, v23, v26);
      (*(v10 + 56))(v22, 0, 1, v26);
    }

    *(v22 + v13) = *(v23 + v13);
  }

  return a1;
}

uint64_t destroy for FileDocumentConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 15;

  v5 = *(*(a2 + 16) - 8);
  v6 = v5 + 8;
  v7 = *(v5 + 80);
  (*(v5 + 8))(((v4 & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7);
  v8 = *(v6 + 56);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = v8 + a1 + v11 + ((v7 + 16) & ~v7);
  v15 = v10;
  result = (*(v10 + 48))(v12 & ~v11, 1, v9);
  if (!result)
  {
    v14 = *(v15 + 8);

    return v14(v12 & ~v11, v9);
  }

  return result;
}

uint64_t *initializeWithCopy for FileDocumentConfiguration(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = *(a3 + 16);
  v8 = *(*(v7 - 8) + 16);
  v9 = *(v7 - 8) + 16;
  v10 = *(*(v7 - 8) + 80);
  v11 = v5 + v10 + 8;
  v12 = v6 + v10 + 8;

  v8(v11 & ~v10, v12 & ~v10, v7);
  v13 = *(v9 + 48);
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = *(v15 + 80);
  v17 = ((v10 + 16) & ~v10) + v13 + v16;
  v18 = ((a1 + v17) & ~v16);
  v19 = ((a2 + v17) & ~v16);
  if ((*(v15 + 48))(v19, 1, v14))
  {
    v20 = *(v15 + 84);
    v21 = *(v15 + 64);
    if (v20)
    {
      v22 = v21;
    }

    else
    {
      v22 = v21 + 1;
    }

    memcpy(v18, v19, v22);
  }

  else
  {
    (*(v15 + 16))(v18, v19, v14);
    v24 = *(v15 + 56);
    v23 = v15 + 56;
    v24(v18, 0, 1, v14);
    v20 = *(v23 + 28);
    v21 = *(v23 + 8);
  }

  if (v20)
  {
    v25 = v21;
  }

  else
  {
    v25 = v21 + 1;
  }

  *(v18 + v25) = *(v19 + v25);
  return a1;
}

uint64_t *assignWithCopy for FileDocumentConfiguration(uint64_t *a1, uint64_t *a2, uint64_t a3)
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
  v11 = *(v9 + 40);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 80);
  v15 = ((v10 + 16) & ~v10) + v11 + v14;
  v16 = ((a1 + v15) & ~v14);
  v17 = ((a2 + v15) & ~v14);
  v18 = *(v13 + 48);
  LODWORD(v11) = v18(v16, 1, v12);
  v19 = v18(v17, 1, v12);
  if (v11)
  {
    if (!v19)
    {
      (*(v13 + 16))(v16, v17, v12);
      (*(v13 + 56))(v16, 0, 1, v12);
      goto LABEL_12;
    }

    v20 = *(v13 + 84);
    v21 = *(v13 + 64);
  }

  else
  {
    if (!v19)
    {
      (*(v13 + 24))(v16, v17, v12);
      goto LABEL_12;
    }

    (*(v13 + 8))(v16, v12);
    v20 = *(v13 + 84);
    v21 = *(v13 + 64);
  }

  if (v20)
  {
    v22 = v21;
  }

  else
  {
    v22 = v21 + 1;
  }

  memcpy(v16, v17, v22);
LABEL_12:
  if (*(v13 + 84))
  {
    v23 = *(v13 + 64);
  }

  else
  {
    v23 = *(v13 + 64) + 1;
  }

  *(v16 + v23) = *(v17 + v23);
  return a1;
}

void *initializeWithTake for FileDocumentConfiguration(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = *(*(a3 + 16) - 8);
  v8 = v7 + 32;
  v9 = *(v7 + 80);
  (*(v7 + 32))((v5 + v9 + 8) & ~v9, (v6 + v9 + 8) & ~v9);
  v10 = (v9 + 16) & ~v9;
  v11 = *(v8 + 32);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 80);
  v15 = v10 + v11 + v14;
  v16 = ((a1 + v15) & ~v14);
  v17 = ((a2 + v15) & ~v14);
  if ((*(v13 + 48))(v17, 1, v12))
  {
    v18 = *(v13 + 84);
    v19 = *(v13 + 64);
    if (v18)
    {
      v20 = v19;
    }

    else
    {
      v20 = v19 + 1;
    }

    memcpy(v16, v17, v20);
  }

  else
  {
    (*(v13 + 32))(v16, v17, v12);
    v22 = *(v13 + 56);
    v21 = v13 + 56;
    v22(v16, 0, 1, v12);
    v18 = *(v21 + 28);
    v19 = *(v21 + 8);
  }

  if (v18)
  {
    v23 = v19;
  }

  else
  {
    v23 = v19 + 1;
  }

  *(v16 + v23) = *(v17 + v23);
  return a1;
}

void *assignWithTake for FileDocumentConfiguration(void *a1, void *a2, uint64_t a3)
{
  v6 = a2 + 15;
  *a1 = *a2;

  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v6;

  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  (*(v8 + 40))((v7 + v10 + 8) & ~v10, (v10 + 8 + v6) & ~v10);
  v11 = (v10 + 16) & ~v10;
  v12 = *(v9 + 24);
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 80);
  v16 = v11 + v12 + v15;
  v17 = ((a1 + v16) & ~v15);
  v18 = ((a2 + v16) & ~v15);
  v19 = *(v14 + 48);
  LODWORD(v12) = v19(v17, 1, v13);
  v20 = v19(v18, 1, v13);
  if (v12)
  {
    if (!v20)
    {
      (*(v14 + 32))(v17, v18, v13);
      (*(v14 + 56))(v17, 0, 1, v13);
      goto LABEL_12;
    }

    v21 = *(v14 + 84);
    v22 = *(v14 + 64);
  }

  else
  {
    if (!v20)
    {
      (*(v14 + 40))(v17, v18, v13);
      goto LABEL_12;
    }

    (*(v14 + 8))(v17, v13);
    v21 = *(v14 + 84);
    v22 = *(v14 + 64);
  }

  if (v21)
  {
    v23 = v22;
  }

  else
  {
    v23 = v22 + 1;
  }

  memcpy(v17, v18, v23);
LABEL_12:
  if (*(v14 + 84))
  {
    v24 = *(v14 + 64);
  }

  else
  {
    v24 = *(v14 + 64) + 1;
  }

  *(v17 + v24) = *(v18 + v24);
  return a1;
}

uint64_t getEnumTagSinglePayload for FileDocumentConfiguration(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(type metadata accessor for URL() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v6 + 80);
  v15 = *(v9 + 80);
  v16 = *(v9 + 64);
  if (v11)
  {
    v17 = 1;
  }

  else
  {
    v17 = 2;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = ((v14 + 16) & ~v14) + *(v6 + 64) + v15;
  if (a2 <= v13)
  {
    goto LABEL_37;
  }

  v19 = v17 + v16 + (v18 & ~v15);
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v23 = ((a2 - v13 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v23))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v23 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v23 < 2)
    {
LABEL_37:
      if (v8 >= v12)
      {
        v28 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v7 & 0x80000000) != 0)
        {
          v30 = *(v6 + 48);

          return v30((v28 + v14 + 8) & ~v14, v7, v5);
        }

        else
        {
          v29 = *v28;
          if (v29 >= 0xFFFFFFFF)
          {
            LODWORD(v29) = -1;
          }

          return (v29 + 1);
        }
      }

      else
      {
        v27 = (*(v10 + 48))((a1 + v18) & ~v15);
        if (v27 >= 2)
        {
          return v27 - 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_37;
  }

LABEL_24:
  v24 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v25 = v19;
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        v26 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v26 = *a1;
      }
    }

    else if (v25 == 1)
    {
      v26 = *a1;
    }

    else
    {
      v26 = *a1;
    }
  }

  else
  {
    v26 = 0;
  }

  return v13 + (v26 | v24) + 1;
}

void storeEnumTagSinglePayload for FileDocumentConfiguration(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v35 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = 0;
  v12 = *(type metadata accessor for URL() - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  v15 = v14 - 1;
  if (!v14)
  {
    v15 = 0;
  }

  if (v15 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v8 + 80);
  v18 = ((v17 + 16) & ~v17) + *(v8 + 64);
  v19 = *(v12 + 80);
  v20 = *(v12 + 64);
  if (!v14)
  {
    ++v20;
  }

  v21 = v20 + ((v18 + v19) & ~v19) + 1;
  if (a3 <= v16)
  {
LABEL_25:
    if (v16 < a2)
    {
      goto LABEL_26;
    }

    goto LABEL_14;
  }

  if (v21 > 3)
  {
    v11 = 1;
    if (v16 >= a2)
    {
      goto LABEL_14;
    }

LABEL_26:
    v24 = ~v16 + a2;
    if (v21 >= 4)
    {
      bzero(a1, v21);
      *a1 = v24;
      v25 = 1;
      if (v11 > 1)
      {
        goto LABEL_28;
      }

LABEL_75:
      if (v11)
      {
        a1[v21] = v25;
      }

      return;
    }

    v25 = (v24 >> (8 * v21)) + 1;
    if (v20 + ((v18 + v19) & ~v19) != -1)
    {
      v29 = v24 & ~(-1 << (8 * v21));
      bzero(a1, v21);
      if (v21 != 3)
      {
        if (v21 == 2)
        {
          *a1 = v29;
          if (v11 <= 1)
          {
            goto LABEL_75;
          }
        }

        else
        {
          *a1 = v24;
          if (v11 <= 1)
          {
            goto LABEL_75;
          }
        }

LABEL_28:
        if (v11 == 2)
        {
          *&a1[v21] = v25;
        }

        else
        {
          *&a1[v21] = v25;
        }

        return;
      }

      *a1 = v29;
      a1[2] = BYTE2(v29);
    }

    if (v11 <= 1)
    {
      goto LABEL_75;
    }

    goto LABEL_28;
  }

  v22 = ((a3 - v16 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
  if (!HIWORD(v22))
  {
    if (v22 < 0x100)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    if (v22 >= 2)
    {
      v11 = v23;
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_25;
  }

  v11 = 4;
  if (v16 < a2)
  {
    goto LABEL_26;
  }

LABEL_14:
  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v21] = 0;
  }

  else if (v11)
  {
    a1[v21] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v10 >= v15)
  {
    if (v10 >= a2)
    {
      v32 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v9 & 0x80000000) != 0)
      {
        v34 = *(v35 + 56);

        v34((v32 + v17 + 8) & ~v17, a2, v9, v7);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v33 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v33 = (a2 - 1);
        }

        *v32 = v33;
      }
    }

    else
    {
      if (v18 <= 3)
      {
        v30 = ~(-1 << (8 * v18));
      }

      else
      {
        v30 = -1;
      }

      if (v18)
      {
        v27 = v30 & (~v10 + a2);
        if (v18 <= 3)
        {
          v28 = v18;
        }

        else
        {
          v28 = 4;
        }

        bzero(a1, v18);
        if (v28 <= 2)
        {
          if (v28 != 1)
          {
            goto LABEL_44;
          }

          goto LABEL_60;
        }

        goto LABEL_80;
      }
    }
  }

  else
  {
    a1 = (&a1[v18 + v19] & ~v19);
    if (v15 >= a2)
    {
      v31 = *(v13 + 56);

      v31(a1, (a2 + 1));
    }

    else
    {
      if (v20 <= 3)
      {
        v26 = ~(-1 << (8 * v20));
      }

      else
      {
        v26 = -1;
      }

      if (v20)
      {
        v27 = v26 & (~v15 + a2);
        if (v20 <= 3)
        {
          v28 = v20;
        }

        else
        {
          v28 = 4;
        }

        bzero(a1, v20);
        if (v28 <= 2)
        {
          if (v28 != 1)
          {
LABEL_44:
            *a1 = v27;
            return;
          }

LABEL_60:
          *a1 = v27;
          return;
        }

LABEL_80:
        if (v28 == 3)
        {
          *a1 = v27;
          a1[2] = BYTE2(v27);
        }

        else
        {
          *a1 = v27;
        }
      }
    }
  }
}

void type metadata completion function for FileDocumentBox(uint64_t a1)
{
  type metadata accessor for Optional();
  type metadata accessor for Published();
  if (v1 <= 0x3F)
  {
    _s10Foundation3URLVSgMaTm_6(319, &lazy cache variable for type metadata for Published<URL?>, type metadata accessor for URL?, MEMORY[0x1E695C070]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Published<Bool>();
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t partial apply for closure #1 in FileDocumentBox.snapshotForSerialization(contentType:)(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(*(v3 - 8) + 64);
  v6 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v7 = *(type metadata accessor for UTType() - 8);
  return closure #1 in FileDocumentBox.snapshotForSerialization(contentType:)(a1, v1 + v6, v1 + ((v6 + v5 + *(v7 + 80)) & ~*(v7 + 80)), v3, v4);
}

uint64_t _s7SwiftUI30FileDocumentWriteConfigurationVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_35Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

double static WidgetCurvesContentBaseModifier._makeView(modifier:inputs:body:)@<D0>(uint64_t *a2@<X1>, void (*a3)(uint64_t *__return_ptr)@<X2>, double *a4@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  *v35 = *a2;
  v8 = *(a2 + 3);
  v9 = *(a2 + 7);
  *&v35[40] = *(a2 + 5);
  *&v35[56] = v9;
  *&v35[68] = *(a2 + 68);
  *&v35[8] = *(a2 + 1);
  *&v35[24] = v8;
  a3(&v19);
  lazy protocol witness table accessor for type WidgetCurvedContentAllowed and conformance WidgetCurvedContentAllowed();
  PropertyList.subscript.getter();
  if (v35[0] == 1)
  {
    AGGraphCreateOffsetAttribute2();
    *v35 = v7;
    v10 = *(a2 + 3);
    v11 = *(a2 + 7);
    *&v35[40] = *(a2 + 5);
    *&v35[56] = v11;
    *&v35[68] = *(a2 + 68);
    *&v35[8] = *(a2 + 1);
    *&v35[24] = v10;
    _ViewInputs.withoutGeometryDependencies.getter();
    _ViewInputs.hasWidgetMetadata.setter();
    _s7SwiftUI11_ViewInputsV22addPlatformItemListKey5flags13editOperationyxm_AA0fgH8FlagsSetV04EditL0OSgtAA0fghM0RzlFAA014WidgetMetadatafghM0V_Ttg5(0);
    PreferenceKeys.add(_:)();
    PreferenceKeys.add(_:)();
    DWORD1(v29) |= 0x10u;
    v12 = v28;
    swift_beginAccess();
    *v35 = *(v12 + 16);
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type _ViewInputs.EnvironmentTransform and conformance _ViewInputs.EnvironmentTransform();
    Attribute.init<A>(body:value:flags:update:)();
    _GraphInputs.environment.setter();
    PreferenceKeys.add(_:)();
    v33[2] = v29;
    v33[3] = v30;
    v33[4] = v31;
    v34 = v32;
    v33[0] = v27;
    v33[1] = v28;
    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v13 = outlined init with copy of _ViewInputs(v33, v35);
    (a3)(&v17, v13, &v21);
    *&v35[32] = v23;
    *&v35[48] = v24;
    *&v35[64] = v25;
    *&v35[80] = v26;
    *v35 = v21;
    *&v35[16] = v22;
    outlined destroy of _ViewInputs(v35);
    v14 = v17;
    v15 = v18;
    *&v21 = v17;
    DWORD2(v21) = v18;
    if ((PreferencesOutputs.subscript.getter() & 0x100000000) != 0)
    {
      *&v21 = MEMORY[0x1E69E7CC0];
      type metadata accessor for GraphHost();
      MEMORY[0x18D00B7D0]();
      LOBYTE(v17) = 0;
      GraphHost.intern<A>(_:for:id:)();
    }

    *&v21 = v14;
    DWORD2(v21) = v15;
    PreferencesOutputs.subscript.getter();
    *&v21 = v14;
    DWORD2(v21) = v15;
    PreferencesOutputs.subscript.getter();
    *&v21 = v14;
    DWORD2(v21) = v15;
    PreferencesOutputs.subscript.getter();

    *&v21 = v30;
    DWORD2(v21) = DWORD2(v30);
    MEMORY[0x1EEE9AC00](v30);

    PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    outlined destroy of _ViewInputs(&v21);
  }

  *a4 = v19;
  result = v20;
  a4[1] = v20;
  return result;
}

uint64_t implicit closure #2 in static WidgetCurvesContentBaseModifier._makeView(modifier:inputs:body:)(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, int a6)
{
  swift_beginAccess();
  _GraphInputs.interfaceIdiom.getter();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for WidgetAuxiliaryViewMetadata?(0, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata?, type metadata accessor for WidgetAuxiliaryViewMetadata);
  lazy protocol witness table accessor for type WidgetCurvesContentBaseModifier.WidgetCurvedContentWriter and conformance WidgetCurvesContentBaseModifier.WidgetCurvedContentWriter();
  return Attribute.init<A>(body:value:flags:update:)();
}

uint64_t WidgetCurvesContentBaseModifier.WidgetCurvedContentWriter.value.getter@<X0>(id *a1@<X8>)
{
  type metadata accessor for WidgetAuxiliaryViewMetadata?(0, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata?, type metadata accessor for WidgetAuxiliaryViewMetadata);
  v45 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v42 - v6;
  type metadata accessor for WidgetAuxiliaryViewMetadata?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  type metadata accessor for WidgetAuxiliaryViewMetadata?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v42 - v14;
  v47 = *(v1 + 4);
  v17 = *(v1 + 8);
  v16 = *(v1 + 12);
  v43 = *(v1 + 16);
  v44 = *(v1 + 24);
  if (*AGGraphGetValue() == 1)
  {
    v42 = a1;
    AGGraphGetValue();

    PlatformItemList.mergedContentItem.getter(v18, v15);

    v19 = type metadata accessor for PlatformItemList.Item(0);
    (*(*(v19 - 8) + 56))(v15, 0, 1, v19);
    v20 = *MEMORY[0x1E698D3F8];
    if (v17 == *MEMORY[0x1E698D3F8])
    {
      v21 = type metadata accessor for URL();
      (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
      if (v16 != v20)
      {
LABEL_4:
        Value = AGGraphGetValue();
        outlined init with copy of AccessibilityAttachment.Tree(Value, v51);
        v23 = AGGraphGetValue();
        v25 = *v23;
        v24 = v23[1];
        v50[0] = v25;
        v50[1] = v24;
        v49 = v44;

        AccessibilityAttachment.Tree.metadataAccessibility(in:idiom:)(v50, &v49, v52);

        outlined destroy of AccessibilityAttachment.Tree(v51);
        v26 = v52[0];
        v27 = v52[1];
        v28 = v52[2];
        v29 = v52[3];
LABEL_10:
        v51[0] = v26;
        v51[1] = v27;
        v51[2] = v28;
        v51[3] = v29;
        if (v47 == v20)
        {
          v35 = type metadata accessor for WidgetAuxiliaryViewMetadata(0);
          v36 = v48;
          (*(*(v35 - 8) + 56))(v48, 1, 1, v35);
        }

        else
        {
          v37 = AGGraphGetValue();
          v38 = v46;
          outlined init with copy of WidgetAuxiliaryViewMetadata?(v37, v46, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata?, type metadata accessor for WidgetAuxiliaryViewMetadata);
          v39 = v38;
          v36 = v48;
          outlined init with take of WidgetAuxiliaryViewMetadata?(v39, v48, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata?, type metadata accessor for WidgetAuxiliaryViewMetadata);
        }

        v40 = v42;
        WidgetAuxiliaryViewMetadata.init(item:url:accessibility:child:)(v15, v12, v51, v36, v42);
        v41 = type metadata accessor for WidgetAuxiliaryViewMetadata(0);
        return (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
      }
    }

    else
    {
      v33 = AGGraphGetValue();
      v34 = MEMORY[0x1E6968FB0];
      outlined init with copy of WidgetAuxiliaryViewMetadata?(v33, v9, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
      outlined init with take of WidgetAuxiliaryViewMetadata?(v9, v12, &lazy cache variable for type metadata for URL?, v34);
      if (v16 != v20)
      {
        goto LABEL_4;
      }
    }

    v26 = xmmword_18CD633F0;
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    goto LABEL_10;
  }

  v30 = type metadata accessor for WidgetAuxiliaryViewMetadata(0);
  v31 = *(*(v30 - 8) + 56);

  return v31(a1, 1, 1, v30);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance WidgetCurvesContentBaseModifier.WidgetCurvedContentWriter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for WidgetAuxiliaryViewMetadata?(0, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata?, type metadata accessor for WidgetAuxiliaryViewMetadata);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t static WidgetAuxiliaryCurvedContentKey.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  type metadata accessor for WidgetAuxiliaryViewMetadata?(0, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata?, type metadata accessor for WidgetAuxiliaryViewMetadata);
  v3 = __swift_project_value_buffer(v2, static WidgetAuxiliaryCurvedContentKey.defaultValue);
  return outlined init with copy of WidgetAuxiliaryViewMetadata?(v3, a1, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata?, type metadata accessor for WidgetAuxiliaryViewMetadata);
}

uint64_t static WidgetAuxiliaryCurvedContentKey.reduce(value:nextValue:)(uint64_t a1, void (*a2)(void))
{
  type metadata accessor for WidgetAuxiliaryViewMetadata?(0, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata?, type metadata accessor for WidgetAuxiliaryViewMetadata);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  outlined init with take of WidgetAuxiliaryViewMetadata?(a1, v6, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata?, type metadata accessor for WidgetAuxiliaryViewMetadata);
  v10 = type metadata accessor for WidgetAuxiliaryViewMetadata(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v6, 1, v10) == 1)
  {
    a2();
    if (v12(v6, 1, v10) != 1)
    {
      outlined destroy of WidgetAuxiliaryViewMetadata?(v6);
    }
  }

  else
  {
    outlined init with take of WidgetAuxiliaryViewMetadata(v6, v9);
    (*(v11 + 56))(v9, 0, 1, v10);
  }

  return outlined init with take of WidgetAuxiliaryViewMetadata?(v9, a1, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata?, type metadata accessor for WidgetAuxiliaryViewMetadata);
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance WidgetAuxiliaryCurvedContentKey@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  type metadata accessor for WidgetAuxiliaryViewMetadata?(0, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata?, type metadata accessor for WidgetAuxiliaryViewMetadata);
  v3 = __swift_project_value_buffer(v2, static WidgetAuxiliaryCurvedContentKey.defaultValue);
  return outlined init with copy of WidgetAuxiliaryViewMetadata?(v3, a1, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata?, type metadata accessor for WidgetAuxiliaryViewMetadata);
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance WidgetAuxiliaryCurvedContentKey(uint64_t a1, void (*a2)(void))
{
  type metadata accessor for WidgetAuxiliaryViewMetadata?(0, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata?, type metadata accessor for WidgetAuxiliaryViewMetadata);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  outlined init with take of WidgetAuxiliaryViewMetadata?(a1, v6, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata?, type metadata accessor for WidgetAuxiliaryViewMetadata);
  v10 = type metadata accessor for WidgetAuxiliaryViewMetadata(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v6, 1, v10) == 1)
  {
    a2();
    if (v12(v6, 1, v10) != 1)
    {
      outlined destroy of WidgetAuxiliaryViewMetadata?(v6);
    }
  }

  else
  {
    outlined init with take of WidgetAuxiliaryViewMetadata(v6, v9);
    (*(v11 + 56))(v9, 0, 1, v10);
  }

  return outlined init with take of WidgetAuxiliaryViewMetadata?(v9, a1, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata?, type metadata accessor for WidgetAuxiliaryViewMetadata);
}

uint64_t View.widgetCurvedContentAllowed()(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type WidgetCurvedContentAllowed and conformance WidgetCurvedContentAllowed();

  return View.input<A>(_:)();
}

unint64_t lazy protocol witness table accessor for type WidgetCurvedContentAllowed and conformance WidgetCurvedContentAllowed()
{
  result = lazy protocol witness table cache variable for type WidgetCurvedContentAllowed and conformance WidgetCurvedContentAllowed;
  if (!lazy protocol witness table cache variable for type WidgetCurvedContentAllowed and conformance WidgetCurvedContentAllowed)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WidgetCurvedContentAllowed, &type metadata for WidgetCurvedContentAllowed, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetCurvedContentAllowed and conformance WidgetCurvedContentAllowed);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetCurvedContentAllowed and conformance WidgetCurvedContentAllowed;
  if (!lazy protocol witness table cache variable for type WidgetCurvedContentAllowed and conformance WidgetCurvedContentAllowed)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WidgetCurvedContentAllowed, &type metadata for WidgetCurvedContentAllowed, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetCurvedContentAllowed and conformance WidgetCurvedContentAllowed);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetCurvedContentAllowed and conformance WidgetCurvedContentAllowed;
  if (!lazy protocol witness table cache variable for type WidgetCurvedContentAllowed and conformance WidgetCurvedContentAllowed)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WidgetCurvedContentAllowed, &type metadata for WidgetCurvedContentAllowed, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetCurvedContentAllowed and conformance WidgetCurvedContentAllowed);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetCurvedContentAllowed and conformance WidgetCurvedContentAllowed;
  if (!lazy protocol witness table cache variable for type WidgetCurvedContentAllowed and conformance WidgetCurvedContentAllowed)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WidgetCurvedContentAllowed, &type metadata for WidgetCurvedContentAllowed, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetCurvedContentAllowed and conformance WidgetCurvedContentAllowed);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WidgetCurvedContentAllowed and conformance WidgetCurvedContentAllowed;
  if (!lazy protocol witness table cache variable for type WidgetCurvedContentAllowed and conformance WidgetCurvedContentAllowed)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WidgetCurvedContentAllowed, &type metadata for WidgetCurvedContentAllowed, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetCurvedContentAllowed and conformance WidgetCurvedContentAllowed);
  }

  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance WidgetCurvedContentAllowed(uint64_t *a1, uint64_t a2)
{
  lazy protocol witness table accessor for type WidgetCurvedContentAllowed and conformance WidgetCurvedContentAllowed();
  PropertyList.subscript.getter();
  return v3;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<WidgetCurvesContentModifier>, WidgetCurvesContentBaseModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<WidgetCurvesContentModifier>, WidgetCurvesContentBaseModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<WidgetCurvesContentModifier>, WidgetCurvesContentBaseModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<WidgetCurvesContentModifier>, WidgetCurvesContentBaseModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ViewModifier_Content<WidgetCurvesContentModifier> and conformance _ViewModifier_Content<A>();
    v5[1] = &protocol witness table for WidgetCurvesContentBaseModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<WidgetCurvesContentModifier>, WidgetCurvesContentBaseModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<WidgetCurvesContentModifier>, WidgetCurvesContentBaseModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<WidgetCurvesContentModifier>, WidgetCurvesContentBaseModifier>)
  {
    type metadata accessor for _ViewModifier_Content<WidgetCurvesContentModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<WidgetCurvesContentModifier>, lazy protocol witness table accessor for type WidgetCurvesContentModifier and conformance WidgetCurvesContentModifier, &type metadata for WidgetCurvesContentModifier, MEMORY[0x1E697FDE8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<WidgetCurvesContentModifier>, WidgetCurvesContentBaseModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type WidgetCurvesContentModifier and conformance WidgetCurvesContentModifier()
{
  result = lazy protocol witness table cache variable for type WidgetCurvesContentModifier and conformance WidgetCurvesContentModifier;
  if (!lazy protocol witness table cache variable for type WidgetCurvesContentModifier and conformance WidgetCurvesContentModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WidgetCurvesContentModifier, &type metadata for WidgetCurvesContentModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetCurvesContentModifier and conformance WidgetCurvesContentModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<WidgetCurvesContentModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<WidgetCurvesContentModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<WidgetCurvesContentModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<WidgetCurvesContentModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<WidgetCurvesContentModifier>, lazy protocol witness table accessor for type WidgetCurvesContentModifier and conformance WidgetCurvesContentModifier, &type metadata for WidgetCurvesContentModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<WidgetCurvesContentModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

void type metadata accessor for _ViewModifier_Content<WidgetCurvesContentModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<WidgetCurvedContentAllowed> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<WidgetCurvedContentAllowed> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<WidgetCurvedContentAllowed> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for _ViewModifier_Content<WidgetCurvesContentModifier>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<WidgetCurvedContentAllowed>, lazy protocol witness table accessor for type WidgetCurvedContentAllowed and conformance WidgetCurvedContentAllowed, &type metadata for WidgetCurvedContentAllowed, MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable(MEMORY[0x1E697FD30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<WidgetCurvedContentAllowed> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WidgetCurvesContentBaseModifier.WidgetCurvedContentWriter and conformance WidgetCurvesContentBaseModifier.WidgetCurvedContentWriter()
{
  result = lazy protocol witness table cache variable for type WidgetCurvesContentBaseModifier.WidgetCurvedContentWriter and conformance WidgetCurvesContentBaseModifier.WidgetCurvedContentWriter;
  if (!lazy protocol witness table cache variable for type WidgetCurvesContentBaseModifier.WidgetCurvedContentWriter and conformance WidgetCurvesContentBaseModifier.WidgetCurvedContentWriter)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WidgetCurvesContentBaseModifier.WidgetCurvedContentWriter, &unk_1EFFF62A8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetCurvesContentBaseModifier.WidgetCurvedContentWriter and conformance WidgetCurvesContentBaseModifier.WidgetCurvedContentWriter);
  }

  return result;
}

void type metadata accessor for WidgetAuxiliaryViewMetadata?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t outlined init with copy of WidgetAuxiliaryViewMetadata?(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  type metadata accessor for WidgetAuxiliaryViewMetadata?(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of WidgetAuxiliaryViewMetadata?(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  type metadata accessor for WidgetAuxiliaryViewMetadata?(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t specialized descriptionOrNil<A>(_:)(uint64_t a1)
{
  type metadata accessor for DragGesture.Value?(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DragGesture.Value(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sypSgWOcTm_1(a1, v4, type metadata accessor for DragGesture.Value?);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of DragGesture.Value?(v4, type metadata accessor for DragGesture.Value?);
    return 7104878;
  }

  else
  {
    outlined init with take of DragGesture.Value(v4, v8);
    v11[0] = 0;
    v11[1] = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v9 = v11[0];
    outlined destroy of DragGesture.Value?(v8, type metadata accessor for DragGesture.Value);
  }

  return v9;
}

{
  _sypSgWOcTm_1(a1, &v3, type metadata accessor for Any?);
  if (v4)
  {
    outlined init with take of Any(&v3, v5);
    *&v3 = 0;
    *(&v3 + 1) = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v1 = v3;
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    outlined destroy of DragGesture.Value?(&v3, type metadata accessor for Any?);
    return 7104878;
  }

  return v1;
}

uint64_t DragActionContextProtocol.resolvedItemProviders()(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(a2 + 96);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = v5(AssociatedTypeWitness, AssociatedTypeWitness, AssociatedConformanceWitness, a1, a2);
  if (!v7)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v17[7] = v7;
  MEMORY[0x1EEE9AC00](v7);
  v17[5] = a2;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = v9;
  type metadata accessor for DraggingItem(255, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  v11 = type metadata accessor for Array();
  v12 = type metadata accessor for NSItemProvider();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69E6340], v11);
  v15 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #2 in implicit closure #1 in UIKitWheelPicker.updateUIView(_:context:), v17, v11, v12, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v14);

  return v15;
}

uint64_t type metadata completion function for DragActionContextBox(uint64_t a1)
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

uint64_t AnyDragActionContextBox.debugDescription.getter()
{
  v1 = v0;
  v2 = 7104878;
  type metadata accessor for DragGesture.Value?(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = 0;
  v61 = 0xE000000000000000;
  _StringGuts.grow(_:)(179);
  v62 = v60;
  v63 = v61;
  MEMORY[0x18D00C9B0](60, 0xE100000000000000);
  v6 = _typeName(_:qualified:)();
  MEMORY[0x18D00C9B0](v6);

  MEMORY[0x18D00C9B0](8250, 0xE200000000000000);
  v60 = 30768;
  v61 = 0xE200000000000000;
  v57 = v0;
  lazy protocol witness table accessor for type Int and conformance Int();
  v7 = String.init<A>(_:radix:uppercase:)();
  MEMORY[0x18D00C9B0](v7);

  MEMORY[0x18D00C9B0](v60, v61);

  v8 = MEMORY[0x18D00C9B0](0x616E4573695B203ELL, 0xEE00203A64656C62);
  v9 = (*(*v0 + 80))(v8);
  v10 = (v9 & 1) == 0;
  if (v9)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v10)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  MEMORY[0x18D00C9B0](v11, v12);

  v13 = MEMORY[0x18D00C9B0](0xD000000000000014, 0x800000018CD56240);
  (*(*v0 + 88))(v13);
  v14 = specialized descriptionOrNil<A>(_:)(v5);
  v16 = v15;
  outlined destroy of DragGesture.Value?(v5, type metadata accessor for DragGesture.Value?);
  MEMORY[0x18D00C9B0](v14, v16);

  v17 = MEMORY[0x18D00C9B0](0x7466694C6E6F202CLL, 0xEF203A746E657645);
  v18 = (*(*v0 + 96))(v17);
  if (v18)
  {
    v20 = v18;
    v21 = v19;
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    *(v22 + 24) = v21;
    v60 = 0;
    v61 = 0xE000000000000000;
    v57 = partial apply for thunk for @escaping @callee_guaranteed (@inout AccessibilityLargeContentViewTree) -> ();
    v58 = v22;
    type metadata accessor for (_:)();
    _print_unlocked<A, B>(_:_:)();

    v23 = v60;
    v24 = v61;
  }

  else
  {
    v24 = 0xE300000000000000;
    v23 = 7104878;
  }

  MEMORY[0x18D00C9B0](v23, v24);

  v25 = MEMORY[0x18D00C9B0](0xD000000000000012, 0x800000018CD56260);
  v26 = (*(*v1 + 104))(v25);
  if (v26)
  {
    v28 = v26;
    v29 = v27;
    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    *(v30 + 24) = v29;
    v60 = 0;
    v61 = 0xE000000000000000;
    v57 = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
    v58 = v30;
    type metadata accessor for ()();
    _print_unlocked<A, B>(_:_:)();

    v31 = v60;
    v32 = v61;
  }

  else
  {
    v32 = 0xE300000000000000;
    v31 = 7104878;
  }

  MEMORY[0x18D00C9B0](v31, v32);

  v33 = MEMORY[0x18D00C9B0](0xD000000000000012, 0x800000018CD56280);
  v34 = (*(*v1 + 112))(v33);
  if (v34)
  {
    v36 = v34;
    v37 = v35;
    v38 = swift_allocObject();
    *(v38 + 16) = v36;
    *(v38 + 24) = v37;
    v60 = 0;
    v61 = 0xE000000000000000;
    v57 = partial apply for thunk for @callee_guaranteed () -> ();
    v58 = v38;
    type metadata accessor for ()();
    _print_unlocked<A, B>(_:_:)();

    v39 = v60;
    v40 = v61;
  }

  else
  {
    v40 = 0xE300000000000000;
    v39 = 7104878;
  }

  MEMORY[0x18D00C9B0](v39, v40);

  v41 = MEMORY[0x18D00C9B0](0xD000000000000025, 0x800000018CD562A0);
  v42 = (*(*v1 + 120))(v41);
  if (v42)
  {
    v44 = v42;
    v45 = v43;
    v46 = swift_allocObject();
    *(v46 + 16) = v44;
    *(v46 + 24) = v45;
    v60 = 0;
    v61 = 0xE000000000000000;
    v57 = partial apply for thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v58 = v46;
    type metadata accessor for (_:)();
    _print_unlocked<A, B>(_:_:)();

    v47 = v60;
    v48 = v61;
  }

  else
  {
    v48 = 0xE300000000000000;
    v47 = 7104878;
  }

  MEMORY[0x18D00C9B0](v47, v48);

  v49 = MEMORY[0x18D00C9B0](0xD000000000000010, 0x800000018CD562D0);
  (*(*v1 + 128))(&v60, v49);
  v50 = specialized descriptionOrNil<A>(_:)(&v60);
  v52 = v51;
  outlined destroy of DragGesture.Value?(&v60, type metadata accessor for Any?);
  MEMORY[0x18D00C9B0](v50, v52);

  v53 = MEMORY[0x18D00C9B0](0xD000000000000011, 0x800000018CD562F0);
  (*(*v1 + 136))(&v57, v53);
  if (v57 == 3)
  {
    v54 = 0xE300000000000000;
  }

  else
  {
    v60 = 0;
    v61 = 0xE000000000000000;
    v59 = v57;
    _print_unlocked<A, B>(_:_:)();
    v2 = v60;
    v54 = v61;
  }

  MEMORY[0x18D00C9B0](v2, v54);

  MEMORY[0x18D00C9B0](93, 0xE100000000000000);
  return v62;
}