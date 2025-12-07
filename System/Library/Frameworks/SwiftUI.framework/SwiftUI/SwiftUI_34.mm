void NavigationSplitSidebarStateMachine.splitViewController(_:willShow:visibilityEngine:)(void *a1, uint64_t a2, __int128 *a3)
{
  v4 = v3;
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a3[2];
  v12 = a3[4];
  v38 = a3[3];
  v39 = v12;
  v40 = *(a3 + 80);
  v13 = a3[1];
  v35 = *a3;
  v36 = v13;
  v37 = v11;
  static Log.splitViewVisibility.getter();
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v10, 1, v14) == 1)
  {
    outlined destroy of Logger?(v10);
    if (a2 != 4)
    {
      goto LABEL_3;
    }

LABEL_22:
    v34 = 17;
    v25 = swift_allocObject();
    v26 = v38;
    v27 = v39;
    *(v25 + 48) = v37;
    *(v25 + 64) = v26;
    *(v25 + 80) = v27;
    *(v25 + 96) = v40;
    v28 = v36;
    *(v25 + 16) = v35;
    *(v25 + 32) = v28;
    *(v25 + 104) = a1;
    outlined init with copy of UISplitViewControllerVisibilityEngine(&v35, v33);
    v29 = a1;
    static Update.enqueueAction(reason:_:)();

    NavigationSplitSidebarStateMachine.coordinateAnimatedColumnChange(alongside:)(v29);
    return;
  }

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v17, v18))
  {

    goto LABEL_21;
  }

  v19 = swift_slowAlloc();
  v20 = swift_slowAlloc();
  v33[0] = v20;
  *v19 = 136315138;
  v32 = v4;
  v31 = v20;
  if (a2 <= 1)
  {
    if (!a2)
    {
      v22 = 0xE700000000000000;
      v21 = 0x7972616D697270;
      goto LABEL_20;
    }

    if (a2 == 1)
    {
      v22 = 0xED0000797261746ELL;
      v21 = 0x656D656C70707573;
      goto LABEL_20;
    }

LABEL_19:
    v22 = 0xE700000000000000;
    v21 = 0x6E776F6E6B6E75;
    goto LABEL_20;
  }

  if (a2 == 2)
  {
    v22 = 0xE900000000000079;
    v21 = 0x7261646E6F636573;
    goto LABEL_20;
  }

  if (a2 == 3)
  {
    v22 = 0xE700000000000000;
    v21 = 0x746361706D6F63;
    goto LABEL_20;
  }

  if (a2 != 4)
  {
    goto LABEL_19;
  }

  v21 = 0x6F74636570736E69;
  v22 = 0xE900000000000072;
LABEL_20:
  v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v33);

  *(v19 + 4) = v23;
  _os_log_impl(&dword_18BD4A000, v17, v18, "willShow %s", v19, 0xCu);
  v24 = v31;
  __swift_destroy_boxed_opaque_existential_1(v31);
  MEMORY[0x18D0110E0](v24, -1, -1);
  MEMORY[0x18D0110E0](v19, -1, -1);

  v4 = v32;
LABEL_21:
  (*(v15 + 8))(v10, v14);
  if (a2 == 4)
  {
    goto LABEL_22;
  }

LABEL_3:
  NavigationSplitSidebarStateMachine.coordinateAnimatedColumnChange(alongside:)(a1);
  if (a2 == 2 && !*(v4 + 16))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakAssign();
    NavigationSplitSidebarStateMachine.coordinatedHost.didset(Strong);
  }
}

uint64_t NavigationSplitSidebarStateMachine.coordinateAnimatedColumnChange(alongside:)(void *a1)
{
  swift_weakInit();
  v2 = swift_allocObject();
  swift_weakInit();

  v3 = [a1 transitionCoordinator];
  if (v3)
  {
    v4 = v3;
    if ([a1 style])
    {
      v5 = [a1 viewControllerForColumn_];
      if (v5)
      {
        v6 = v5;
        objc_opt_self();
        v7 = swift_dynamicCastObjCClass();
        if (!v7)
        {
          swift_unknownObjectRelease();

LABEL_12:

          return swift_weakDestroy();
        }

        v8 = [v7 topViewController];

        if (v8)
        {
          type metadata accessor for UIHostingController<AnyView>(0, v9, v10, v11);
          v12 = swift_dynamicCastClass();
          if (!v12)
          {
            swift_unknownObjectRelease();

            return swift_weakDestroy();
          }

          v6 = *(v12 + direct field offset for UIHostingController.host);

          specialized closure #1 in NavigationSplitSidebarStateMachine.coordinateAnimatedColumnChange(alongside:)(v19);
          v13 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x80);
          ++*(v6 + v13);
          v14 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v15 = swift_allocObject();
          v15[2] = v14;
          v15[3] = partial apply for closure #2 in NavigationSplitSidebarStateMachine.coordinateAnimatedColumnChange(alongside:);
          v15[4] = v2;
          aBlock[4] = partial apply for closure #1 in UISplitViewController.animateTopDetailAlongsideTransition(begin:end:);
          aBlock[5] = v15;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
          aBlock[3] = &block_descriptor_63;
          v16 = _Block_copy(aBlock);

          [v4 animateAlongsideTransition:0 completion:v16];

          _Block_release(v16);

          swift_unknownObjectRelease();
          goto LABEL_12;
        }
      }
    }

    swift_unknownObjectRelease();
  }

  return swift_weakDestroy();
}

uint64_t sub_18BFCB56C()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18BFCB5A4()
{

  return swift_deallocObject();
}

double specialized closure #1 in NavigationSplitSidebarStateMachine.coordinateAnimatedColumnChange(alongside:)(uint64_t a1)
{
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    static Log.splitViewVisibility.getter();
    v7 = type metadata accessor for Logger();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v3, 1, v7) == 1)
    {
      outlined destroy of Logger?(v3);
    }

    else
    {
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_18BD4A000, v9, v10, "begin animateAlongsideTransition", v11, 2u);
        MEMORY[0x18D0110E0](v11, -1, -1);
      }

      (*(v8 + 8))(v3, v7);
    }

    v12 = *(v6 + 16);
    *(v6 + 16) = v12 + 1;
    NavigationSplitSidebarStateMachine.transitionCount.didset(v12);
  }

  return result;
}

void NavigationSplitSidebarStateMachine.transitionCount.didset(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  v10 = *(v2 + 16);
  if (v10 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  if (v10 != a1)
  {
    static Log.splitViewVisibility.getter();
    v11 = type metadata accessor for Logger();
    v12 = *(v11 - 8);
    v13 = *(v12 + 48);
    if (v13(v9, 1, v11) == 1)
    {
      outlined destroy of Logger?(v9);
    }

    else
    {
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v24 = v12;
        v17 = v16;
        *v16 = 134217984;
        *(v16 + 4) = a1;
        _os_log_impl(&dword_18BD4A000, v14, v15, "old transitionCount: %ld", v16, 0xCu);
        v18 = v17;
        v12 = v24;
        MEMORY[0x18D0110E0](v18, -1, -1);
      }

      (*(v12 + 8))(v9, v11);
    }

    static Log.splitViewVisibility.getter();
    if (v13(v6, 1, v11) == 1)
    {
      outlined destroy of Logger?(v6);
      if (*(v2 + 16))
      {
        return;
      }

      goto LABEL_15;
    }

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = *(v2 + 16);

      _os_log_impl(&dword_18BD4A000, v19, v20, "new transitionCount: %ld", v21, 0xCu);
      MEMORY[0x18D0110E0](v21, -1, -1);
    }

    else
    {
    }

    (*(v12 + 8))(v6, v11);
    if (!*(v2 + 16))
    {
LABEL_15:
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakAssign();
      NavigationSplitSidebarStateMachine.coordinatedHost.didset(Strong);
    }
  }
}

void UIKitNavigationController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v16.receiver = v3;
  v16.super_class = type metadata accessor for UIKitNavigationController();
  objc_msgSendSuper2(&v16, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  *(v3 + OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_isTransitioningToSize) = 1;
  v14 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  v15 = 0;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  v13 = &block_descriptor_32;
  v7 = _Block_copy(&v10);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = partial apply for closure #2 in UIKitNavigationController.viewWillTransition(to:with:);
  v15 = v8;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  v13 = &block_descriptor_64_0;
  v9 = _Block_copy(&v10);

  [a1 animateAlongsideTransition:v7 completion:v9];
  _Block_release(v9);
  _Block_release(v7);
}

uint64_t sub_18BFCBD30()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t getEnumTag for AnyNavigationSplitVisibility.Kind(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = v1 >> 14;
  v3 = (v1 & 3 | (4 * ((v1 >> 8) & 1))) + 3;
  if (v2 == 3)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

void type metadata accessor for _ViewModifier_Content<PlatformItemListContentModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
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

void type metadata accessor for ModifiedContent<_ViewModifier_Content<PlatformItemListContentModifier>, _FrameLayout>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<PlatformItemListContentModifier>, _FrameLayout>)
  {
    type metadata accessor for _ViewModifier_Content<PlatformItemListContentModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<PlatformItemListContentModifier>, lazy protocol witness table accessor for type PlatformItemListContentModifier and conformance PlatformItemListContentModifier, &type metadata for PlatformItemListContentModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<PlatformItemListContentModifier>, _FrameLayout>);
    }
  }
}

_WORD *destructiveInjectEnumTag for AnyNavigationSplitVisibility.Kind(_WORD *result, unsigned int a2)
{
  if (a2 < 3)
  {
    *result = *result & 0x103 | (a2 << 14);
  }

  else
  {
    *result = ((a2 - 3) << 6) & 0x100 | (a2 - 3) & 3 | 0xC000;
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<PlatformItemListContentModifier>, _FrameLayout>, HiddenModifierAllowingPlatformItemList>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<PlatformItemListContentModifier>, _FrameLayout>, HiddenModifierAllowingPlatformItemList>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<PlatformItemListContentModifier>, _FrameLayout>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<PlatformItemListContentModifier>, _FrameLayout>, HiddenModifierAllowingPlatformItemList>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<PlatformItemListContentModifier>, _FrameLayout>, HiddenModifierAllowingPlatformItemList> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<PlatformItemListContentModifier>, _FrameLayout>, HiddenModifierAllowingPlatformItemList> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<PlatformItemListContentModifier>, _FrameLayout>, HiddenModifierAllowingPlatformItemList> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<PlatformItemListContentModifier>, _FrameLayout>, HiddenModifierAllowingPlatformItemList>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<PlatformItemListContentModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    v5[1] = &protocol witness table for HiddenModifierAllowingPlatformItemList;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<PlatformItemListContentModifier>, _FrameLayout>, HiddenModifierAllowingPlatformItemList> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<PlatformItemListContentModifier> and conformance _ViewModifier_Content<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _ViewModifier_Content<PlatformItemListContentModifier>(255, a2, a3, a4);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<PlatformItemListContentModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<PlatformItemListContentModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<PlatformItemListContentModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<PlatformItemListContentModifier>, _FrameLayout>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ViewModifier_Content<PlatformItemListContentModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<PlatformItemListContentModifier> and conformance _ViewModifier_Content<A>, &lazy cache variable for type metadata for _ViewModifier_Content<PlatformItemListContentModifier>, lazy protocol witness table accessor for type PlatformItemListContentModifier and conformance PlatformItemListContentModifier, &type metadata for PlatformItemListContentModifier);
    v5[1] = MEMORY[0x1E697E040];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<PlatformItemListContentModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void specialized NavigationSplitSidebarStateMachine.splitViewController(_:didChangeTo:)(uint64_t a1)
{
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.splitViewVisibility.getter();
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v7, v8))
    {

LABEL_24:
      (*(v6 + 8))(v4, v5);
      goto LABEL_25;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    if (a1 <= 2)
    {
      switch(a1)
      {
        case 0:
          v12 = 0xE900000000000063;
          v13 = 0x6974616D6F747561;
          goto LABEL_23;
        case 1:
          v12 = 0xED0000796C6E4F79;
          v13 = 0x7261646E6F636573;
          goto LABEL_23;
        case 2:
          v11 = "oneBesideSecondary";
          goto LABEL_13;
      }
    }

    else
    {
      if (a1 <= 4)
      {
        if (a1 != 3)
        {
          v11 = "twoBesideSecondary";
LABEL_13:
          v12 = (v11 - 32) | 0x8000000000000000;
          v13 = 0xD000000000000012;
LABEL_23:
          v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &v18);

          *(v9 + 4) = v15;
          _os_log_impl(&dword_18BD4A000, v7, v8, "didChangeTo: %s", v9, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v10);
          MEMORY[0x18D0110E0](v10, -1, -1);
          MEMORY[0x18D0110E0](v9, -1, -1);

          goto LABEL_24;
        }

        v13 = 0xD000000000000010;
        v14 = "oneOverSecondary";
LABEL_21:
        v12 = (v14 - 32) | 0x8000000000000000;
        goto LABEL_23;
      }

      if (a1 == 5)
      {
        v13 = 0xD000000000000010;
        v14 = "twoOverSecondary";
        goto LABEL_21;
      }

      if (a1 == 6)
      {
        v12 = 0x800000018CD54330;
        v13 = 0xD000000000000014;
        goto LABEL_23;
      }
    }

    v12 = 0xE700000000000000;
    v13 = 0x6E776F6E6B6E75;
    goto LABEL_23;
  }

  outlined destroy of Logger?(v4);
LABEL_25:
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  NavigationSplitSidebarStateMachine.coordinatedHost.didset(Strong);
}

void *closure #1 in UISplitViewController.animateTopDetailAlongsideTransition(begin:end:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return a3();
  }

  v5 = *((*MEMORY[0x1E69E7D40] & *result) + 0x80);
  v6 = *(result + v5);
  v7 = __OFSUB__(v6, 1);
  v8 = v6 - 1;
  if (!v7)
  {
    *(result + v5) = v8 & ~(v8 >> 31);

    return a3();
  }

  __break(1u);
  return result;
}

double closure #2 in NavigationSplitSidebarStateMachine.coordinateAnimatedColumnChange(alongside:)(uint64_t a1)
{
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    static Log.splitViewVisibility.getter();
    v7 = type metadata accessor for Logger();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v3, 1, v7) == 1)
    {
      outlined destroy of Logger?(v3);
    }

    else
    {
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_18BD4A000, v9, v10, "end animateAlongsideTransition", v11, 2u);
        MEMORY[0x18D0110E0](v11, -1, -1);
      }

      (*(v8 + 8))(v3, v7);
    }

    v12 = *(v6 + 16);
    *(v6 + 16) = v12 - 1;
    NavigationSplitSidebarStateMachine.transitionCount.didset(v12);
  }

  return result;
}

void closure #2 in UIKitNavigationController.viewWillTransition(to:with:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_isTransitioningToSize] = 0;
  }
}

uint64_t protocol witness for static PlatformHiddenRepresentable.makeRepresentation(inputs:allowedKeys:) in conformance PlatformItemListHiddenRepresentable(uint64_t a1, _BYTE *a2)
{
  if ((*a2 & 2) == 0)
  {
    return PreferenceKeys.remove(_:)();
  }

  return result;
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA32LabeledContentStyleConfigurationV5LabelV_Tt2B5(int a1, __int128 *a2)
{
  v5 = a2[3];
  v31 = a2[2];
  v32 = v5;
  v33 = a2[4];
  v34 = *(a2 + 20);
  v6 = a2[1];
  v29 = *a2;
  v30 = v6;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<LabeledContentStyleConfiguration.Label>, lazy protocol witness table accessor for type LabeledContentStyleConfiguration.Label and conformance LabeledContentStyleConfiguration.Label, &type metadata for LabeledContentStyleConfiguration.Label);
  outlined init with copy of _ViewInputs(a2, v27);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<LabeledContentStyleConfiguration.Label> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<LabeledContentStyleConfiguration.Label>, lazy protocol witness table accessor for type LabeledContentStyleConfiguration.Label and conformance LabeledContentStyleConfiguration.Label, &type metadata for LabeledContentStyleConfiguration.Label);
  PropertyList.subscript.getter();
  if (!*&v25[0])
  {
    *&v27[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v7 = *(*&v25[0] + 48);
  v8 = *(*&v25[0] + 16);
  v9 = *(*&v25[0] + 24);
  v15 = *(*&v25[0] + 32);
  v10 = *(*&v25[0] + 40);
  v11 = *(*&v25[0] + 44);

  *&v25[0] = v7;
  *&v27[0] = v7;
  PropertyList.subscript.setter();
  if (!v8)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v22 = a1;
  v23[2] = v31;
  v23[3] = v32;
  v23[4] = v33;
  v24 = v34;
  v23[0] = v29;
  v23[1] = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v21 = v34;
  v16 = v29;
  v17 = v30;
  v12 = *(v9 + 8);
  outlined init with copy of _ViewInputs(v23, v27);
  v13 = lazy protocol witness table accessor for type LabeledContentStyleConfiguration.Label and conformance LabeledContentStyleConfiguration.Label();
  LOBYTE(v27[0]) = v11;
  v12(&v22, v8, v9, v15, v10 | (v11 << 32), &v16, &type metadata for LabeledContentStyleConfiguration.Label, v13, v8, v9);
  v25[2] = v18;
  v25[3] = v19;
  v25[4] = v20;
  v26 = v21;
  v25[0] = v16;
  v25[1] = v17;
  outlined destroy of _ViewInputs(v25);
LABEL_6:
  v27[2] = v31;
  v27[3] = v32;
  v27[4] = v33;
  v28 = v34;
  v27[0] = v29;
  v27[1] = v30;
  return outlined destroy of _ViewInputs(v27);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance LabeledContentStyleConfiguration.Label(int *a1, uint64_t a2)
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
  return _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA32LabeledContentStyleConfigurationV5LabelV_Tt2B5(v3, v7);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA23LabelStyleConfigurationV5TitleV_Tt2B5(int a1, __int128 *a2)
{
  v5 = a2[3];
  v31 = a2[2];
  v32 = v5;
  v33 = a2[4];
  v34 = *(a2 + 20);
  v6 = a2[1];
  v29 = *a2;
  v30 = v6;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<LabelStyleConfiguration.Title>, lazy protocol witness table accessor for type LabelStyleConfiguration.Title and conformance LabelStyleConfiguration.Title, &type metadata for LabelStyleConfiguration.Title);
  outlined init with copy of _ViewInputs(a2, v27);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<LabelStyleConfiguration.Title> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<LabelStyleConfiguration.Title>, lazy protocol witness table accessor for type LabelStyleConfiguration.Title and conformance LabelStyleConfiguration.Title, &type metadata for LabelStyleConfiguration.Title);
  PropertyList.subscript.getter();
  if (!*&v25[0])
  {
    *&v27[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v7 = *(*&v25[0] + 48);
  v8 = *(*&v25[0] + 16);
  v9 = *(*&v25[0] + 24);
  v15 = *(*&v25[0] + 32);
  v10 = *(*&v25[0] + 40);
  v11 = *(*&v25[0] + 44);

  *&v25[0] = v7;
  *&v27[0] = v7;
  PropertyList.subscript.setter();
  if (!v8)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v22 = a1;
  v23[2] = v31;
  v23[3] = v32;
  v23[4] = v33;
  v24 = v34;
  v23[0] = v29;
  v23[1] = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v21 = v34;
  v16 = v29;
  v17 = v30;
  v12 = *(v9 + 8);
  outlined init with copy of _ViewInputs(v23, v27);
  v13 = lazy protocol witness table accessor for type LabelStyleConfiguration.Title and conformance LabelStyleConfiguration.Title();
  LOBYTE(v27[0]) = v11;
  v12(&v22, v8, v9, v15, v10 | (v11 << 32), &v16, &type metadata for LabelStyleConfiguration.Title, v13, v8, v9);
  v25[2] = v18;
  v25[3] = v19;
  v25[4] = v20;
  v26 = v21;
  v25[0] = v16;
  v25[1] = v17;
  outlined destroy of _ViewInputs(v25);
LABEL_6:
  v27[2] = v31;
  v27[3] = v32;
  v27[4] = v33;
  v28 = v34;
  v27[0] = v29;
  v27[1] = v30;
  return outlined destroy of _ViewInputs(v27);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance LabelStyleConfiguration.Title(int *a1, uint64_t a2)
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
  return _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA23LabelStyleConfigurationV5TitleV_Tt2B5(v3, v7);
}

uint64_t protocol witness for static PlatformTextRepresentable.shouldMakeRepresentation(inputs:) in conformance PlatformItemListTextRepresentable(uint64_t *a1)
{
  v3 = a1[6];
  v1 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  result = 0;
  if (v1)
  {
    lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
    PropertyList.subscript.getter();
    return (v3 >> 2) & 1;
  }

  return result;
}

Swift::Void __swiftcall UIHostingController.updateIncomingBoundsIfNeeded(navigationController:)(UINavigationController *navigationController)
{
  [specialized UIHostingController.host.getter() bounds];
  v49.origin.x = 0.0;
  v49.origin.y = 0.0;
  v49.size.width = 0.0;
  v49.size.height = 0.0;
  if (!CGRectEqualToRect(v48, v49))
  {
    return;
  }

  v2 = [(UINavigationController *)navigationController viewIfLoaded];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = specialized UIHostingController.host.getter();
    v13 = v5;
    v14 = v7;
    v15 = v9;
    v16 = v11;
LABEL_4:

    [v12 setBounds_];
    return;
  }

  v17 = [(UINavigationController *)navigationController splitViewController];
  if (v17)
  {
    v18 = v17;
    UISplitViewController.columnBounds(forNavController:)(&v46, navigationController);

    if (!v46.is_nil)
    {
      width = v46.value.size.width;
      height = v46.value.size.height;
      x = v46.value.origin.x;
      y = v46.value.origin.y;
      v12 = specialized UIHostingController.host.getter();
      v13 = x;
      v14 = y;
      v15 = width;
      v16 = height;
      goto LABEL_4;
    }
  }

  static RepresentableContextValues.current.getter();
  if (v41 < 2)
  {
    outlined consume of RepresentableContextValues?(v41, v42, v43, v44, v45);
    return;
  }

  outlined consume of RepresentableContextValues?(v19, v42, v43, v44, v45);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();

  if (Strong)
  {
    swift_beginAccess();
    v21 = swift_unknownObjectWeakLoadStrong();
    v22 = *(Strong + 208);

    if (v21)
    {
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      v24 = ViewGraphDelegate.uiViewController.getter(ObjectType, v22);
      swift_unknownObjectRelease();
      if (v24)
      {
        v25 = [v24 splitViewController];
        if (v25)
        {
        }

        else
        {
          v30 = [v24 viewIfLoaded];
          if (v30)
          {
            v31 = v30;
            [v30 bounds];
            v33 = v32;
            v35 = v34;
            v37 = v36;
            v39 = v38;

            v40 = specialized UIHostingController.host.getter();
            [v40 setBounds_];

            goto LABEL_20;
          }
        }
      }

LABEL_20:
      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall _UIHostingView.renderForPreferences(updateDisplayList:)(Swift::Bool updateDisplayList)
{
  v2 = _UIHostingView.base.getter();
  UIHostingViewBase.renderForPreferences(updateDisplayList:)(updateDisplayList);
}

void *static PlatformItemListTextRepresentable.representationOptions(inputs:)@<X0>(uint64_t *a2@<X8>)
{
  lazy protocol witness table accessor for type IncludesAccessibilityText and conformance IncludesAccessibilityText();
  PropertyList.subscript.getter();
  if ((v7 & 1) != 0 || (lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput(), PropertyList.subscript.getter(), (v6 & 0x10) != 0))
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  lazy protocol witness table accessor for type IncludesStyledText and conformance IncludesStyledText();
  result = PropertyList.subscript.getter();
  *a2 = v3 | v5;
  return result;
}

uint64_t protocol witness for static PlatformTextRepresentable.makeRepresentation(inputs:context:outputs:) in conformance PlatformItemListTextRepresentable(uint64_t a1, int a2)
{

  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
}

unint64_t lazy protocol witness table accessor for type PlatformItemListTextRepresentable.PlatformRepresentation and conformance PlatformItemListTextRepresentable.PlatformRepresentation()
{
  result = lazy protocol witness table cache variable for type PlatformItemListTextRepresentable.PlatformRepresentation and conformance PlatformItemListTextRepresentable.PlatformRepresentation;
  if (!lazy protocol witness table cache variable for type PlatformItemListTextRepresentable.PlatformRepresentation and conformance PlatformItemListTextRepresentable.PlatformRepresentation)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlatformItemListTextRepresentable.PlatformRepresentation, &unk_1EFFC0648, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemListTextRepresentable.PlatformRepresentation and conformance PlatformItemListTextRepresentable.PlatformRepresentation);
  }

  return result;
}

uint64_t closure #2 in static UIKitFlattenedButtonAdaptor._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for UIKitFlattenedButtonAdaptor(0, a2, a3, a4);
  v6 = *(v5 + 36);
  v11[2] = v5;
  v7 = type metadata accessor for UIKitFlattenedButtonAdaptorStorage(0);
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v6, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_23, v11, v7, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v11[5];
}

unint64_t lazy protocol witness table accessor for type UpdateUIButton and conformance UpdateUIButton()
{
  result = lazy protocol witness table cache variable for type UpdateUIButton and conformance UpdateUIButton;
  if (!lazy protocol witness table cache variable for type UpdateUIButton and conformance UpdateUIButton)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UpdateUIButton, &unk_1EFFF95B0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UpdateUIButton and conformance UpdateUIButton);
  }

  return result;
}

uint64_t initializeWithCopy for UpdateUIButton(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);

  swift_unknownObjectWeakCopyInit();
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v4 = *(a2 + 64);
  v5 = *(a2 + 72);
  *(a1 + 64) = v4;
  *(a1 + 72) = v5;
  v6 = v4;
  v7 = v5;
  return a1;
}

void destroy for UpdateUIButton(uint64_t a1)
{

  MEMORY[0x18D011290](a1 + 40);

  v2 = *(a1 + 72);
}

unint64_t lazy protocol witness table accessor for type ButtonDisplayList<HostingUIButton> and conformance ButtonDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type ButtonDisplayList<HostingUIButton> and conformance ButtonDisplayList<A>;
  if (!lazy protocol witness table cache variable for type ButtonDisplayList<HostingUIButton> and conformance ButtonDisplayList<A>)
  {
    _sSo8UIButtonC5UIKitE13ConfigurationVSgMaTm_0(255, &lazy cache variable for type metadata for ButtonDisplayList<HostingUIButton>, type metadata accessor for HostingUIButton, type metadata accessor for ButtonDisplayList);
    result = swift_getWitnessTable("q:\nblw\b", v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonDisplayList<HostingUIButton> and conformance ButtonDisplayList<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonResponder and conformance ButtonResponder()
{
  result = lazy protocol witness table cache variable for type ButtonResponder and conformance ButtonResponder;
  if (!lazy protocol witness table cache variable for type ButtonResponder and conformance ButtonResponder)
  {
    result = swift_getWitnessTable("):\nbhw\b", &unk_1EFFF94F0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonResponder and conformance ButtonResponder);
  }

  return result;
}

uint64_t initializeWithCopy for ButtonResponder(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v3;

  return a1;
}

unint64_t lazy protocol witness table accessor for type ShouldProvideBridgedPopUpButton and conformance ShouldProvideBridgedPopUpButton()
{
  result = lazy protocol witness table cache variable for type ShouldProvideBridgedPopUpButton and conformance ShouldProvideBridgedPopUpButton;
  if (!lazy protocol witness table cache variable for type ShouldProvideBridgedPopUpButton and conformance ShouldProvideBridgedPopUpButton)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ShouldProvideBridgedPopUpButton, &type metadata for ShouldProvideBridgedPopUpButton, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ShouldProvideBridgedPopUpButton and conformance ShouldProvideBridgedPopUpButton);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShouldProvideBridgedPopUpButton and conformance ShouldProvideBridgedPopUpButton;
  if (!lazy protocol witness table cache variable for type ShouldProvideBridgedPopUpButton and conformance ShouldProvideBridgedPopUpButton)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ShouldProvideBridgedPopUpButton, &type metadata for ShouldProvideBridgedPopUpButton, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ShouldProvideBridgedPopUpButton and conformance ShouldProvideBridgedPopUpButton);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShouldProvideBridgedPopUpButton and conformance ShouldProvideBridgedPopUpButton;
  if (!lazy protocol witness table cache variable for type ShouldProvideBridgedPopUpButton and conformance ShouldProvideBridgedPopUpButton)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ShouldProvideBridgedPopUpButton, &type metadata for ShouldProvideBridgedPopUpButton, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ShouldProvideBridgedPopUpButton and conformance ShouldProvideBridgedPopUpButton);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShouldProvideBridgedPopUpButton and conformance ShouldProvideBridgedPopUpButton;
  if (!lazy protocol witness table cache variable for type ShouldProvideBridgedPopUpButton and conformance ShouldProvideBridgedPopUpButton)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ShouldProvideBridgedPopUpButton, &type metadata for ShouldProvideBridgedPopUpButton, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ShouldProvideBridgedPopUpButton and conformance ShouldProvideBridgedPopUpButton);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShouldProvideBridgedPopUpButton and conformance ShouldProvideBridgedPopUpButton;
  if (!lazy protocol witness table cache variable for type ShouldProvideBridgedPopUpButton and conformance ShouldProvideBridgedPopUpButton)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ShouldProvideBridgedPopUpButton, &type metadata for ShouldProvideBridgedPopUpButton, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ShouldProvideBridgedPopUpButton and conformance ShouldProvideBridgedPopUpButton);
  }

  return result;
}

uint64_t closure #3 in static UIKitMenuButton._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  v10[2] = type metadata accessor for UIKitMenuButton(0, v11);
  v6 = MEMORY[0x1E69E6370];
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + 16, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_1, v10, v6, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v11[0];
}

void type metadata accessor for (())?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (())?)
  {
    type metadata accessor for ()();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for (())?);
    }
  }
}

void type metadata accessor for WeakBox<UIButton>?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t implicit closure #2 in static UIKitMenuButton._makeView(view:inputs:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15[4] = *MEMORY[0x1E69E9840];
  v10[0] = a1;
  v10[1] = a2;
  v11 = a3;
  v15[0] = a4;
  v15[1] = a5;
  v15[2] = a6;
  v15[3] = a7;
  v13 = type metadata accessor for UIKitMenuButton.TransformItemList(0, v15);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UIKitMenuButton<A, B>.TransformItemList, v13);
  type metadata accessor for WeakBox<UIButton>?(0, &lazy cache variable for type metadata for Attribute<(_:)>, type metadata accessor for (_:), MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v10, partial apply for closure #1 in Attribute.init<A>(_:), v12, v13, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return LODWORD(v15[0]);
}

uint64_t PlatformItemLabelView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v70 = a1[3];
  v5 = type metadata accessor for ModifiedContent();
  v71 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v51 - v6;
  v69 = a1[6];
  v8 = v69;
  v9 = lazy protocol witness table accessor for type PlatformItemListContentModifier and conformance PlatformItemListContentModifier();
  v77[0] = v8;
  v77[1] = v9;
  v72 = MEMORY[0x1E697E858];
  v67 = v5;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v77);
  v66 = type metadata accessor for MergePlatformItemsView(0, v5, WitnessTable, v11);
  v68 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v13 = &v51 - v12;
  v14 = a1[2];
  v15 = a1[5];
  v76[0] = v14;
  v76[1] = v16;
  v55 = v14;
  v76[2] = v15;
  v76[3] = &protocol witness table for MergePlatformItemsView<A>;
  v56 = v15;
  v57 = type metadata accessor for PlatformItemListGeneratingViewModifier(0, v76);
  v63 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v51 - v17;
  v18 = a1[4];
  v64 = a1[7];
  v52 = v18;
  v20 = type metadata accessor for MergePlatformItemsView(0, v18, v64, v19);
  v61 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v51 - v21;
  v58 = type metadata accessor for ModifiedContent();
  v65 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v53 = &v51 - v23;
  type metadata accessor for PlatformItemListTransformModifier(255, v14, v15, v24);
  v25 = type metadata accessor for ModifiedContent();
  v62 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v54 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v59 = &v51 - v28;
  v51 = v3;
  v29 = View.mergePlatformItems()(v18, v22);
  v30 = v69;
  v31 = v70;
  MEMORY[0x18D00A570](v29, v70, &type metadata for PlatformItemListContentModifier, v69);
  v32 = v13;
  v33 = v13;
  v34 = v67;
  View.mergePlatformItems()(v67, v33);
  (*(v71 + 8))(v7, v34);
  v35 = v60;
  (*(v68 + 32))(v60, v32, v66);
  v36 = v53;
  v37 = v57;
  MEMORY[0x18D00A570](v35, v20, v57, &protocol witness table for MergePlatformItemsView<A>);
  (*(v63 + 8))(v35, v37);
  (*(v61 + 8))(v22, v20);
  v38 = v55;
  v39 = v31;
  v40 = v56;
  v41 = implicit closure #1 in PlatformItemLabelView.body.getter(v51, v55, v39, v52, v56, v30, v64);
  v43 = v42;
  v75[0] = &protocol witness table for MergePlatformItemsView<A>;
  v75[1] = &protocol witness table for PlatformItemListGeneratingViewModifier<A, B>;
  v44 = v72;
  v45 = v58;
  v46 = swift_getWitnessTable(v72, v58, v75);
  v47 = v54;
  View.transformPlatformItemList<A>(_:_:)(v46, v41, v43, v45, v38, v46, v40);

  (*(v65 + 8))(v36, v45);
  v74[0] = v46;
  v74[1] = &protocol witness table for PlatformItemListTransformModifier<A>;
  swift_getWitnessTable(v44, v25, v74);
  v48 = v59;
  static ViewBuilder.buildExpression<A>(_:)();
  v49 = *(v62 + 8);
  v49(v47, v25);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v49)(v48, v25);
}

uint64_t View.mergePlatformItems()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  return (*(v4 + 32))(a2, v7, a1);
}

void (*implicit closure #1 in PlatformItemLabelView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(uint64_t *a1)
{
  v21 = a6;
  v22 = a7;
  v23[0] = a2;
  v23[1] = a3;
  v23[2] = a4;
  v23[3] = a5;
  v23[4] = a6;
  v23[5] = a7;
  v12 = type metadata accessor for PlatformItemLabelView(0, v23);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - v15;
  (*(v13 + 16))(&v21 - v15, a1, v12, v14);
  v17 = (*(v13 + 80) + 64) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a2;
  *(v18 + 3) = a3;
  *(v18 + 4) = a4;
  *(v18 + 5) = a5;
  v19 = v22;
  *(v18 + 6) = v21;
  *(v18 + 7) = v19;
  (*(v13 + 32))(&v18[v17], v16, v12);
  return partial apply for implicit closure #2 in implicit closure #1 in PlatformItemLabelView.body.getter;
}

uint64_t sub_18BFCE254()
{
  v2 = *(v0 + 24);
  v8[0] = *(v0 + 16);
  v1 = v8[0];
  v8[1] = v2;
  v3 = *(v0 + 48);
  v9 = *(v0 + 32);
  v7 = v9;
  v10 = v3;
  v4 = (type metadata accessor for PlatformItemLabelView(0, v8) - 8);
  v5 = v0 + ((*(*v4 + 80) + 64) & ~*(*v4 + 80));
  (*(*(v1 - 8) + 8))(v5, v1);
  (*(*(v2 - 8) + 8))(v5 + v4[19], v2);
  (*(*(v7 - 8) + 8))(v5 + v4[20]);
  return swift_deallocObject();
}

double DefaultLabelStyle.makeBody(configuration:)@<D0>(uint64_t a1@<X8>)
{
  *&v18 = swift_getKeyPath();
  WORD4(v18) = 0;
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v19[9] = 0;
  *&v19[16] = swift_getKeyPath();
  *&v19[24] = 0;
  *&v15[10] = *&v19[10];
  v14 = v18;
  *v15 = *v19;
  v20 = v18;
  v21 = 0;
  v22 = 0;
  v23 = *v19;
  v24 = 0;
  v25 = 0;
  v26 = *&v19[16];
  v27 = 0;
  outlined init with copy of StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>(&v18, &v38, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>);
  outlined destroy of StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>(&v20, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>);
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  v4 = swift_getKeyPath();
  *&v28 = KeyPath;
  WORD4(v28) = 0;
  *v29 = v3;
  v29[8] = 0;
  v29[9] = 0;
  *&v29[16] = v4;
  *&v29[24] = 0;
  *&v17[10] = *&v29[10];
  v16 = v28;
  *v17 = *v29;
  v30 = KeyPath;
  v31 = 0;
  v32 = 0;
  v33 = v3;
  v34 = 0;
  v35 = 0;
  v36 = v4;
  v37 = 0;
  outlined init with copy of StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>(&v28, &v38, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>);
  outlined destroy of StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>(&v30, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>);
  v5 = swift_getKeyPath();
  v6 = swift_getKeyPath();
  v7 = swift_getKeyPath();
  v40 = *&v15[16];
  v41 = v16;
  v42[0] = *v17;
  *(v42 + 10) = *&v17[10];
  v38 = v14;
  v39 = *v15;
  outlined copy of Environment<CGFloat?>.Content(v5, 0, 0);
  outlined copy of Environment<Bool>.Content();
  outlined copy of Environment<Bool>.Content();
  outlined consume of Environment<CGFloat?>.Content(v5, 0, 0);
  outlined consume of Environment<Bool>.Content(v6, 0);
  outlined consume of Environment<Bool>.Content(v7, 0);
  v8 = swift_getKeyPath();
  v9 = swift_getKeyPath();
  outlined copy of Environment<CGFloat?>.Content(v8, 0, 0);
  outlined copy of Environment<Bool>.Content();
  outlined consume of Environment<CGFloat?>.Content(v8, 0, 0);
  outlined consume of Environment<Bool>.Content(v9, 0);
  v10 = v41;
  *(a1 + 32) = v40;
  *(a1 + 48) = v10;
  v11 = v42[1];
  *(a1 + 64) = v42[0];
  *(a1 + 80) = v11;
  result = *&v38;
  v13 = v39;
  *a1 = v38;
  *(a1 + 16) = v13;
  *(a1 + 96) = v5;
  *(a1 + 104) = 0;
  *(a1 + 105) = 0;
  *(a1 + 112) = v6;
  *(a1 + 120) = 0;
  *(a1 + 128) = v7;
  *(a1 + 136) = 0;
  *(a1 + 144) = v8;
  *(a1 + 152) = 0;
  *(a1 + 153) = 0;
  *(a1 + 160) = v9;
  *(a1 + 168) = 0;
  return result;
}

uint64_t initializeWithCopy for MultimodalListStackLabelStyle(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a2;
  v5 = *(a2 + 9);
  v6 = *(a2 + 8);
  outlined copy of Environment<CGFloat?>.Content(*a2, v6, v5);
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 9) = v5;
  v7 = *(v2 + 16);
  LOBYTE(v2) = *(v2 + 24);
  outlined copy of Environment<Bool>.Content();
  *(a1 + 16) = v7;
  *(a1 + 24) = v2;
  return a1;
}

uint64_t destroy for MultimodalListStackLabelStyle(uint64_t a1)
{
  outlined consume of Environment<CGFloat?>.Content(*a1, *(a1 + 8), *(a1 + 9));
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);

  return outlined consume of Environment<Bool>.Content(v2, v3);
}

uint64_t destroy for WrappingLabelStyleView(uint64_t a1)
{
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

uint64_t UIKitMenuButton.Child.value.getter@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v73 = a7;
  v10 = a3;
  v67 = a8;
  v84 = a4;
  v85 = a5;
  v86 = a6;
  *v87 = a7;
  v71 = HIDWORD(a1);
  v72 = a2;
  v70 = HIDWORD(a2);
  v74 = type metadata accessor for UIKitMenuButton(0, &v84);
  v13 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v66 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v62 = &v55 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v59 = &v55 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v60 = &v55 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v55 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v55 - v25);
  v68 = a4;
  v27 = a5;
  v55 = a5;
  v28 = a5;
  v29 = v73;
  UIKitMenuButton.Child.menuButton.getter(a4, v28, a6, v73, &v55 - v25);
  v30 = v26[1];
  v65 = *v26;
  v64 = v30;
  outlined copy of AppIntentExecutor?(v65, v30);
  v31 = *(v13 + 8);
  v31(v26, v74);
  v69 = v10;
  v32 = a4;
  v33 = v27;
  v34 = a6;
  v56 = a6;
  v35 = v29;
  UIKitMenuButton.Child.menuButton.getter(v32, v33, a6, v29, v23);
  v63 = v23[16];
  v36 = v74;
  v31(v23, v74);
  v37 = v60;
  v57 = a1;
  v38 = v68;
  v39 = v55;
  UIKitMenuButton.Child.menuButton.getter(v68, v55, v34, v35, v60);
  v61 = *(v37 + 17);
  v31(v37, v36);
  v60 = AGCreateWeakAttribute();
  v40 = v59;
  v41 = v56;
  UIKitMenuButton.Child.menuButton.getter(v38, v39, v56, v35, v59);
  v58 = *(v40 + *(v36 + 68));
  v31(v40, v36);
  v42 = v62;
  LODWORD(v36) = v69;
  v43 = v38;
  v44 = v41;
  v45 = v41;
  v46 = v73;
  UIKitMenuButton.Child.menuButton.getter(v43, v39, v44, v73, v62);
  v47 = v74;
  LODWORD(v59) = *(v42 + *(v74 + 72));
  v31(v42, v74);
  v62 = AGCreateWeakAttribute();
  v48 = v66;
  v49 = v68;
  UIKitMenuButton.Child.menuButton.getter(v68, v39, v45, v46, v66);
  v50 = (v48 + *(v47 + 76));
  v52 = *v50;
  v51 = v50[1];
  outlined copy of AppIntentExecutor?(*v50, v51);
  v31(v48, v47);
  v53 = AGCreateWeakAttribute();
  LOBYTE(v84) = 4;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v85 = v65;
  v86 = v64;
  v87[0] = v63;
  v87[1] = v61;
  *&v87[4] = v60;
  v88 = 0;
  v89 = v58;
  v90 = v59;
  v91 = v62;
  v92 = 0;
  v93 = v52;
  v94 = v51;
  v95 = v53;
  v96 = 0;
  v75 = v49;
  v76 = v39;
  v77 = v45;
  v78 = v73;
  v79 = v57;
  v80 = v71;
  v81 = v72;
  v82 = v70;
  v83 = v36;
  return UIKitButton.init(configuration:label:)(&v84, partial apply for closure #1 in UIKitMenuButton.Child.value.getter, v49, v45, v67);
}

uint64_t UIKitMenuButton.Child.menuButton.getter@<X0>(uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  v7 = type metadata accessor for UIKitMenuButton(0, v10);
  Value = AGGraphGetValue();
  return (*(*(v7 - 8) + 16))(a6, Value, v7);
}

uint64_t protocol witness for StyleableView.configuration.getter in conformance ResolvedMenuStyle@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  outlined copy of AppIntentExecutor?(v2, v3);

  return outlined copy of AppIntentExecutor?(v4, v5);
}

uint64_t MenuStyleModifier.styleBody(configuration:)(_OWORD *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v15 - v10;
  v12 = a1[1];
  v15[0] = *a1;
  v15[1] = v12;
  (*(v3 + 24))(v15, v4, v3);
  swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)();
  v13 = *(v6 + 8);
  v13(v8, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v13)(v11, AssociatedTypeWitness);
}

uint64_t DefaultMenuStyle.makeBody(configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  KeyPath = swift_getKeyPath();
  v8 = swift_getKeyPath();
  outlined copy of AppIntentExecutor?(v3, v4);
  outlined copy of AppIntentExecutor?(v5, v6);
  outlined copy of Environment<Bool>.Content();
  outlined copy of Environment<Color?>.Content(v8);
  outlined consume of Environment<Bool>.Content(KeyPath, 0);
  result = outlined consume of Environment<Color?>.Content(v8);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = KeyPath;
  *(a2 + 56) = 0;
  *(a2 + 64) = v8;
  *(a2 + 72) = 0;
  return result;
}

uint64_t ToolbarMenuStyle.makeBody(configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  outlined copy of AppIntentExecutor?(*a1, v5);
  outlined copy of AppIntentExecutor?(v6, v7);
  KeyPath = swift_getKeyPath();
  v9 = swift_getKeyPath();
  Namespace.wrappedValue.getter();
  _print_unlocked<A, B>(_:_:)();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0xE000000000000000;
  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = KeyPath;
  *(a3 + 56) = 0;
  *(a3 + 64) = v9;
  *(a3 + 72) = 0;
  *(a3 + 80) = partial apply for closure #1 in View.platformItemIdentifier(_:);
  *(a3 + 88) = result;
  return result;
}

uint64_t sub_18BFCF440()
{

  return swift_deallocObject();
}

BOOL specialized Set.contains(_:)(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v3);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

__n128 ButtonMenuStyle.makeBody(configuration:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v14 = *a1;
  v15 = a1[1];
  v4 = a1[3];
  v11 = a1[2];
  KeyPath = swift_getKeyPath();
  v16[96] = 0;
  v12 = swift_getKeyPath();
  v16[88] = 0;
  v10 = swift_getKeyPath();
  v16[80] = 0;
  v5 = swift_getKeyPath();
  v16[72] = 0;
  v6 = swift_getKeyPath();
  v7 = swift_getKeyPath();
  outlined copy of AppIntentExecutor?(v3, v15);
  outlined copy of AppIntentExecutor?(v11, v4);
  outlined consume of Environment<Color?>.Content(v6);
  outlined consume of Environment<Bool>.Content(v7, 0);
  LOBYTE(v17) = 2;
  *(&v17 + 1) = KeyPath;
  v18.n128_u8[0] = 0;
  v18.n128_u64[1] = v12;
  LOBYTE(v19) = 0;
  *(&v19 + 1) = v10;
  LOBYTE(v20) = 0;
  *(&v20 + 1) = v5;
  v21 = 0;
  v35 = 0;
  v33 = v19;
  v34 = v20;
  v31 = v17;
  v32 = v18;
  v22[0] = 2;
  v23 = KeyPath;
  v24 = 0;
  v25 = v12;
  v26 = 0;
  v27 = v10;
  v28 = 0;
  v29 = v5;
  v30 = 0;
  outlined init with copy of StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>(&v17, v16, type metadata accessor for StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>);
  outlined destroy of StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>(v22, type metadata accessor for StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>);
  *a2 = v14;
  *(a2 + 8) = v15;
  *(a2 + 16) = v11;
  *(a2 + 24) = v4;
  v8 = v34;
  *(a2 + 64) = v33;
  *(a2 + 80) = v8;
  *(a2 + 96) = v35;
  result = v32;
  *(a2 + 32) = v31;
  *(a2 + 48) = result;
  *(a2 + 97) = 256;
  return result;
}

uint64_t outlined init with copy of StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t initializeWithCopy for BorderlessButtonMenuStyle(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of Environment<Selector?>.Content(v4, v5);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  outlined copy of Environment<Selector?>.Content(v6, v7);
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  outlined copy of Environment<Color?>.Content(v8);
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  v10 = *(v2 + 56);
  LOBYTE(v2) = *(v2 + 64);
  outlined copy of Environment<Selector?>.Content(v10, v2);
  *(a1 + 56) = v10;
  *(a1 + 64) = v2;
  return a1;
}

uint64_t outlined destroy of StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t destroy for BorderlessButtonMenuStyle(uint64_t a1)
{
  outlined consume of Environment<Selector?>.Content(*(a1 + 8), *(a1 + 16));
  outlined consume of Environment<Selector?>.Content(*(a1 + 24), *(a1 + 32));
  outlined consume of Environment<Color?>.Content(*(a1 + 40));
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

uint64_t static ListRepresentable.layoutOptions(_:)@<X0>(uint64_t *a1@<X8>)
{
  static Semantics.v3_2.getter();
  result = isLinkedOnOrAfter(_:)();
  if (result)
  {
    lazy protocol witness table accessor for type CoreViewRepresentableLayoutOptions and conformance CoreViewRepresentableLayoutOptions();
    result = OptionSet<>.insert(_:)();
  }

  *a1 = 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type CoreViewRepresentableLayoutOptions and conformance CoreViewRepresentableLayoutOptions()
{
  result = lazy protocol witness table cache variable for type CoreViewRepresentableLayoutOptions and conformance CoreViewRepresentableLayoutOptions;
  if (!lazy protocol witness table cache variable for type CoreViewRepresentableLayoutOptions and conformance CoreViewRepresentableLayoutOptions)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6980BA0], MEMORY[0x1E6980B90], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CoreViewRepresentableLayoutOptions and conformance CoreViewRepresentableLayoutOptions);
  }

  return result;
}

void type metadata accessor for HStack<ControlGroupStyleConfiguration.Label>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuTitleVisibilityKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuTitleVisibilityKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuTitleVisibilityKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for HStack<ControlGroupStyleConfiguration.Label>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuTitleVisibilityKey>, &type metadata for MenuTitleVisibilityKey, &protocol witness table for MenuTitleVisibilityKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuTitleVisibilityKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t static ListRepresentable.shouldEagerlyUpdateSafeArea(_:)(char *a1)
{
  if ([a1 isTracking] & 1) != 0 || (objc_msgSend(a1, sel_isDecelerating) & 1) != 0 || (objc_msgSend(a1, sel_isScrollAnimating))
  {
    return 1;
  }

  v3 = *&a1[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_safeAreaTransitionState + 8];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 8);
  swift_unknownObjectRetain();
  LOBYTE(v3) = v5(ObjectType, v3);
  swift_unknownObjectRelease();
  return v3 & 1;
}

{
  if ([a1 isTracking] & 1) != 0 || (objc_msgSend(a1, sel_isDecelerating) & 1) != 0 || (objc_msgSend(a1, sel_isScrollAnimating))
  {
    return 1;
  }

  v3 = *&a1[OBJC_IVAR____TtC7SwiftUI25UpdateCoalescingTableView_safeAreaTransitionState + 8];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 8);
  swift_unknownObjectRetain();
  LOBYTE(v3) = v5(ObjectType, v3);
  swift_unknownObjectRelease();
  return v3 & 1;
}

uint64_t assignWithTake for BorderlessButtonMenuStyle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 32);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v8;
  outlined consume of Environment<Selector?>.Content(v9, v10);
  v11 = *(a2 + 48);
  v12 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v11;
  outlined consume of Environment<Color?>.Content(v12);
  v13 = *(a2 + 64);
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v13;
  outlined consume of Environment<Selector?>.Content(v14, v15);
  return a1;
}

uint64_t protocol witness for MenuStyle.makeBody(configuration:) in conformance BorderlessButtonMenuStyle@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(v2 + 48);
  v12[2] = *(v2 + 32);
  v12[3] = v8;
  v13 = *(v2 + 64);
  v9 = *(v2 + 16);
  v12[0] = *v2;
  v12[1] = v9;
  closure #1 in BorderlessButtonMenuStyle.makeBody(configuration:)(v12, v4, v5, v6, v7, a2);
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, ModifiedContent<ModifiedContent<ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifi(0);
  return closure #2 in BorderlessButtonMenuStyle.makeBody(configuration:)(v12, v4, v5, v6, v7, a2 + *(v10 + 44));
}

uint64_t closure #1 in BorderlessButtonMenuStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = specialized Environment.wrappedValue.getter(*(a1 + 24), *(a1 + 32));
  v13 = specialized Environment.wrappedValue.getter(*(a1 + 8), *(a1 + 16));
  v16[0] = a2;
  v16[1] = a3;
  v17 = 0;
  v18 = v12;
  v19 = v13;
  v20 = a4;
  v21 = a5;
  specialized View.toolbarButtonLabel()(0, 4, v22);
  type metadata accessor for InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>(0);
  outlined copy of AppIntentExecutor?(a2, a3);
  outlined copy of AppIntentExecutor?(a4, a5);
  type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>(0);
  type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, type metadata accessor for _EnvironmentKeyWritingModifier<Text.LineStyle?>);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, lazy protocol witness table accessor for type ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Text.LineStyle?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>> and conformance InvertedViewInputPredicate<A>, type metadata accessor for InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, MEMORY[0x1E6980688]);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>> and conformance <> ModifiedContent<A, B>();
  View.staticIf<A, B>(_:then:)();
  outlined destroy of ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>(v22, type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>);
  KeyPath = swift_getKeyPath();
  outlined init with copy of UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>(v16, v22, type metadata accessor for UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>);
  v23 = 0;
  v24 = KeyPath;
  v25 = 0;
  outlined destroy of ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>(v16, type metadata accessor for UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>);
  outlined init with copy of UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>(v22, a6, type metadata accessor for ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>);
  *(a6 + 424) = 1;
  *(a6 + 432) = 2;
  outlined destroy of ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>(v22, type metadata accessor for ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>);
  type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredic, type metadata accessor for ModifiedContent<ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInset, type metadata accessor for UIKitSystemButtonConfigurationModifier);
  return static UIButton.Configuration.borderless()();
}

_BYTE *specialized closure #1 in DynamicHiddenModifier.DynamicTransform.value.getter(uint64_t a1, uint64_t a2)
{
  result = AGGraphGetValue();
  if (*result == 1)
  {
    result = AGGraphGetValue();
    if ((result[8] & 0x10) == 0)
    {

      return MEMORY[0x1EEDDD490](v3);
    }
  }

  return result;
}

__n128 *initializeWithCopy for UIKitMenuButton(__n128 *a1, __n128 *a2, uint64_t a3)
{
  if (a2->n128_u64[0] < 0xFFFFFFFF)
  {
    *a1 = *a2;
  }

  else
  {
    v6 = a2->n128_u64[1];
    a1->n128_u64[0] = a2->n128_u64[0];
    a1->n128_u64[1] = v6;
  }

  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  a1[1].n128_u8[1] = a2[1].n128_u8[1];
  v7 = *(*(a3 + 16) - 8);
  v8 = v7 + 16;
  v9 = *(v7 + 80);
  v10 = (a1[1].n128_u64 + v9 + 2) & ~v9;
  v11 = (a2[1].n128_u64 + v9 + 2) & ~v9;
  (*(v7 + 16))(v10, v11);
  v12 = *(v8 + 48);
  v13 = *(*(a3 + 24) - 8);
  v14 = v13 + 16;
  v15 = *(v13 + 80);
  v16 = v12 + v15;
  v17 = (v16 + v10) & ~v15;
  v18 = (v16 + v11) & ~v15;
  (*(v13 + 16))(v17, v18);
  v19 = *(v14 + 48);
  v20 = (v19 + v17);
  v21 = v19 + v18;
  *v20 = *(v19 + v18);
  v20[1] = *(v19 + v18 + 1);
  v22 = (v19 + v17 + 9) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v21 + 9) & 0xFFFFFFFFFFFFFFF8;
  if (*v23 < 0xFFFFFFFFuLL)
  {
    *v22 = *v23;
  }

  else
  {
    v24 = *(v23 + 8);
    *v22 = *v23;
    *(v22 + 8) = v24;
  }

  return a1;
}

double destroy for UIKitMenuButton(void *a1, uint64_t a2, __n128 a3)
{
  if (*a1 >= 0xFFFFFFFFuLL)
  {
  }

  v5 = *(*(a2 + 16) - 8);
  v6 = v5 + 8;
  v7 = (a1 + *(v5 + 80) + 18) & ~*(v5 + 80);
  (*(v5 + 8))(v7);
  v8 = *(v6 + 56);
  v9 = *(*(a2 + 24) - 8);
  v10 = v9 + 8;
  v11 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  (*(v9 + 8))(v11);
  if (*((*(v10 + 56) + v11 + 9) & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFuLL)
  {
  }

  return result;
}

uint64_t assignWithTake for ToolbarAppearanceConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

Swift::Void __swiftcall UpdateCoalescingCollectionView.didMoveToWindow()()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for UpdateCoalescingCollectionView(0);
  objc_msgSendSuper2(&v12, sel_didMoveToWindow);
  v2 = [v0 window];
  if (!v2)
  {
    v11 = *&v0[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_helper];
    if (!v11)
    {
      return;
    }

    v8 = v11;
    if (static UserDefaultKeyedFeature.isEnabled.getter())
    {
      _UIUpdateCycleUnregisterIdleObserver();
    }

    goto LABEL_14;
  }

  v3 = *&v0[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_helper];
  if (v3)
  {
    v4 = v3;
    if (static UserDefaultKeyedFeature.isEnabled.getter())
    {
      _UIUpdateCycleRegisterIdleObserver();
    }

    v5 = &v4[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_properties];
    swift_beginAccess();
    if ((*(v5 + 38) | *(v5 + 16)))
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      [Strong flashScrollIndicators];

      v4 = Strong;
    }
  }

  v7 = specialized UIView.firstAncestorWhere(_:)(v1);
  if (v7)
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    v10 = swift_conformsToProtocol2();
    if (!v10)
    {
      __break(1u);
      return;
    }

    (*(v10 + 8))(ObjectType, v10);
LABEL_14:
  }
}

uint64_t closure #2 in BorderlessButtonMenuStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = specialized Environment.wrappedValue.getter(*(a1 + 24), *(a1 + 32));
  v13 = specialized Environment.wrappedValue.getter(*(a1 + 8), *(a1 + 16));
  v18[0] = a2;
  v18[1] = a3;
  v19 = 0;
  v20 = v12;
  v21 = v13;
  v22 = a4;
  v23 = a5;
  specialized View.toolbarButtonLabel()(0, 4, v24);
  type metadata accessor for InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>(0);
  outlined copy of AppIntentExecutor?(a2, a3);
  outlined copy of AppIntentExecutor?(a4, a5);
  type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>(0);
  type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, type metadata accessor for _EnvironmentKeyWritingModifier<Text.LineStyle?>);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, lazy protocol witness table accessor for type ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Text.LineStyle?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>> and conformance InvertedViewInputPredicate<A>, type metadata accessor for InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, MEMORY[0x1E6980688]);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>> and conformance <> ModifiedContent<A, B>();
  View.staticIf<A, B>(_:then:)();
  outlined destroy of ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>(v24, type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>);
  KeyPath = swift_getKeyPath();
  outlined init with copy of UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>(v18, v24, type metadata accessor for UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>);
  v25 = 0;
  v26 = KeyPath;
  v27 = 0;
  outlined destroy of ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>(v18, type metadata accessor for UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>);
  outlined init with copy of UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>(v24, a6, type metadata accessor for ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>);
  *(a6 + 424) = 1;
  *(a6 + 432) = 2;
  outlined destroy of ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>(v24, type metadata accessor for ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>);
  v15 = swift_getKeyPath();
  v16 = swift_getKeyPath();
  outlined consume of Environment<Color?>.Content(v15);
  return outlined consume of Environment<Selector?>.Content(v16, 0);
}

void *specialized UIView.firstAncestorWhere(_:)(void *a1)
{
  return specialized UIView.firstAncestorWhere(_:)(a1, specialized UIView.firstAncestorWhere(_:));
}

{
  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    v2 = a1;
    return a1;
  }

  v4 = [a1 superview];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = specialized UIView.firstAncestorWhere(_:)(v4);

  return v6;
}

void *specialized UIView.firstAncestorWhere(_:)(void *a1, uint64_t (*a2)(void))
{
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1)
  {
    v4 = a1;
  }

  else
  {
    v5 = [a1 superview];
    if (v5)
    {
      v6 = v5;
      v7 = a2();

      return v7;
    }

    return 0;
  }

  return a1;
}

uint64_t UIKitButton.init(configuration:label:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v6 = *(a1 + 48);
  *(a5 + 32) = *(a1 + 32);
  *(a5 + 48) = v6;
  *(a5 + 64) = *(a1 + 64);
  *(a5 + 80) = *(a1 + 80);
  v7 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v7;
  type metadata accessor for UIKitButton(0, a3, a4, a3);
  return a2();
}

uint64_t closure #1 in UIKitMenuButton.Child.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  Value = AGGraphGetValue();
  (*(v5 + 16))(v7, Value, a4);
  static ViewBuilder.buildExpression<A>(_:)();
  v12 = *(v5 + 8);
  v12(v7, a4);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v12)(v10, a4);
}

uint64_t initializeWithCopy for UIKitButton(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v10 = *(*(a3 + 16) - 8);
  (*(v10 + 16))((*(v10 + 80) + 81 + a1) & ~*(v10 + 80), (*(v10 + 80) + 81 + a2) & ~*(v10 + 80));
  return a1;
}

uint64_t destroy for UIKitButton(void *a1, uint64_t a2)
{
  if (a1[1])
  {
  }

  if (a1[7])
  {
  }

  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (a1 + *(v4 + 80) + 81) & ~*(v4 + 80);

  return v5(v6);
}

uint64_t UIKitButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v4 = *(a1 + 16);
  v5 = lazy protocol witness table accessor for type UIKitButtonConfiguration.Label and conformance UIKitButtonConfiguration.Label();
  v6 = *(a1 + 24);
  *&v36 = &type metadata for UIKitButtonConfiguration.Label;
  *(&v36 + 1) = v4;
  *&v37 = v5;
  *(&v37 + 1) = v6;
  type metadata accessor for StaticSourceWriter(255, &v36);
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v21 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 16);
  v32 = *(v2 + 32);
  v33 = v14;
  v16 = *(v2 + 48);
  v34 = *(v2 + 64);
  v17 = *(v2 + 16);
  v31[0] = *v2;
  v31[1] = v17;
  v27 = v32;
  v28 = v16;
  v29 = *(v2 + 64);
  v35 = *(v2 + 80);
  v30 = *(v2 + 80);
  v25 = v31[0];
  v26 = v15;
  v22[2] = v4;
  v22[3] = v6;
  v23 = v2;
  outlined init with copy of UIKitButtonConfiguration(v31, &v36);
  v18 = lazy protocol witness table accessor for type ResolvedUIKitButtonBody and conformance ResolvedUIKitButtonBody();
  View.viewAlias<A, B>(_:_:)(&type metadata for UIKitButtonConfiguration.Label, partial apply for closure #1 in UIKitButton.body.getter, v22, &unk_1EFF93510, &type metadata for UIKitButtonConfiguration.Label, v4, v18);
  v38 = v27;
  v39 = v28;
  v40 = v29;
  v41 = v30;
  v36 = v25;
  v37 = v26;
  outlined destroy of ResolvedUIKitButtonBody(&v36);
  v24[0] = v18;
  v24[1] = &protocol witness table for StaticSourceWriter<A, B>;
  swift_getWitnessTable(MEMORY[0x1E697E858], v7, v24);
  static ViewBuilder.buildExpression<A>(_:)();
  v19 = *(v8 + 8);
  v19(v10, v7);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v19)(v13, v7);
}

uint64_t initializeWithCopy for UIKitButtonConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(a2 + 16);
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
  }

  else
  {
    *(a1 + 8) = *(a2 + 8);
  }

  v6 = *(a2 + 56);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 37) = *(a2 + 37);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  if (v6)
  {
    v7 = *(a2 + 64);
    *(a1 + 56) = v6;
    *(a1 + 64) = v7;
  }

  else
  {
    *(a1 + 56) = *(a2 + 56);
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t closure #1 in UIKitButton.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIKitButton(0, v6, v7, v8);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v3 + 8))(v5, a2);
}

double destroy for UIKitButtonConfiguration(void *a1)
{
  if (a1[1])
  {
  }

  if (a1[7])
  {
  }

  return result;
}

Swift::Void __swiftcall UIKitSearchBar.didMoveToWindow()()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_didMoveToWindow);
  v1 = OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_pendingIsFirstResponder;
  v2 = v0[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_pendingIsFirstResponder];
  if (v2 != 2 && [v0 isFirstResponder] != (v2 & 1))
  {
    v3 = &selRef_becomeFirstResponder;
    if ((v2 & 1) == 0)
    {
      v3 = &selRef_resignFirstResponder;
    }

    [v0 *v3];
  }

  v0[v1] = 2;
}

uint64_t getEnumTag for AccessibilityRelationshipScope.Relationship(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for AccessibilityRelationshipScope.Relationship(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t specialized static ListPadding.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v11 = v2;
  v12 = v3;
  v4 = *(a1 + 24);
  v9[0] = *(a1 + 8);
  v9[1] = v4;
  v10[0] = *(a1 + 40);
  *(v10 + 9) = *(a1 + 49);
  v5 = *(a2 + 24);
  v7[0] = *(a2 + 8);
  v7[1] = v5;
  v8[0] = *(a2 + 40);
  *(v8 + 9) = *(a2 + 49);
  return MEMORY[0x18D006FC0](v9, v7) & 1;
}

uint64_t protocol witness for StyleableView.configuration.getter in conformance ResolvedUIKitButtonBody@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v4 = *(v1 + 64);
  v10 = *(v1 + 48);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 80);
  v6 = *(v1 + 16);
  v9[0] = *v1;
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return outlined init with copy of UIKitButtonConfiguration(v9, v8);
}

uint64_t getEnumTag for ListStackBehavior(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for ListStackBehavior(uint64_t result, int a2)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

uint64_t UIKitButtonStyleModifier.styleBody(configuration:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v24[1] = a3;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 24);
  v13 = type metadata accessor for UIKitButtonStyleModifier.ResolvedBody(0, v6, v11, v12);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v24 - v18;
  v20 = a1[3];
  v29 = a1[2];
  v30 = v20;
  v31 = a1[4];
  v32 = *(a1 + 80);
  v21 = a1[1];
  v27 = *a1;
  v28 = v21;
  (*(v7 + 16))(v9, v4, v6);
  v25[2] = v29;
  v25[3] = v30;
  v25[4] = v31;
  v26 = v32;
  v25[0] = v27;
  v25[1] = v28;
  UIKitButtonStyleModifier.ResolvedBody.init(style:configuration:)(v9, v25, v6, v11, v16);
  swift_getWitnessTable(protocol conformance descriptor for UIKitButtonStyleModifier<A>.ResolvedBody, v13);
  static ViewBuilder.buildExpression<A>(_:)();
  outlined init with copy of UIKitButtonConfiguration(&v27, v25);
  v22 = *(v14 + 8);
  v22(v16, v13);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v22)(v19, v13);
}

uint64_t UIKitButtonStyleModifier.ResolvedBody.init(style:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v10 = type metadata accessor for UIKitButtonStyleModifier.ResolvedBody(0, a3, a4, v9);
  v11 = a5 + *(v10 + 36);
  v12 = *(a2 + 48);
  *(v11 + 32) = *(a2 + 32);
  *(v11 + 48) = v12;
  *(v11 + 64) = *(a2 + 64);
  *(v11 + 80) = *(a2 + 80);
  v13 = *(a2 + 16);
  *v11 = *a2;
  *(v11 + 16) = v13;
  v14 = a5 + *(v10 + 40);
  result = swift_getKeyPath();
  *v14 = result;
  *(v14 + 8) = 0;
  return result;
}

uint64_t initializeWithCopy for UIKitButtonStyleModifier.ResolvedBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v6 + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  v11 = *(v10 + 8);
  if (v11)
  {
    v12 = *(v10 + 16);
    *(v9 + 8) = v11;
    *(v9 + 16) = v12;
  }

  else
  {
    *(v9 + 8) = *(v10 + 8);
  }

  *(v9 + 24) = *(v10 + 24);
  *(v9 + 25) = *(v10 + 25);
  v13 = *(v10 + 28);
  *(v9 + 36) = *(v10 + 36);
  *(v9 + 28) = v13;
  *(v9 + 37) = *(v10 + 37);
  *(v9 + 38) = *(v10 + 38);
  v14 = *(v10 + 40);
  *(v9 + 48) = *(v10 + 48);
  *(v9 + 40) = v14;
  *(v9 + 49) = *(v10 + 49);
  v15 = *(v10 + 56);
  if (v15)
  {
    v16 = *(v10 + 64);
    *(v9 + 56) = v15;
    *(v9 + 64) = v16;
  }

  else
  {
    *(v9 + 56) = *(v10 + 56);
  }

  v17 = *(v10 + 72);
  *(v9 + 80) = *(v10 + 80);
  *(v9 + 72) = v17;
  v18 = (v7 + 95) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v8 + 95) & 0xFFFFFFFFFFFFFFF8;
  v20 = *v19;
  v21 = *(v19 + 8);
  outlined copy of Environment<Bool>.Content();
  *v18 = v20;
  *(v18 + 8) = v21;
  return a1;
}

uint64_t destroy for UIKitButtonStyleModifier.ResolvedBody(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = *(v3 + 56) + a1;
  v5 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(v5 + 8))
  {
  }

  if (*(v5 + 56))
  {
  }

  v6 = (v4 + 95) & 0xFFFFFFFFFFFFFFF8;
  v7 = *v6;
  v8 = *(v6 + 8);

  return outlined consume of Environment<Bool>.Content(v7, v8);
}

uint64_t UIKitButtonStyleModifier.ResolvedBody.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v44 = a3;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for UIKitButtonStyleModifier.ResolvedBody_Flat(255, v4, v5, a2);
  v8 = type metadata accessor for UIKitButtonStyleModifier.ResolvedBody_Nested(255, v4, v5, v7);
  v36 = type metadata accessor for StaticIf();
  v41 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v10 = &v35 - v9;
  type metadata accessor for StaticSourceWriter<ButtonStyleConfiguration.Label, HStack<UIKitButtonConfiguration.Label>>(255);
  v37 = type metadata accessor for ModifiedContent();
  v43 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v38 = &v35 - v11;
  type metadata accessor for HStack<UIKitButtonConfiguration.Label>(255, &lazy cache variable for type metadata for PlatformItemListTransformModifier<ActionPlatformItemListFlags>, &type metadata for ActionPlatformItemListFlags, &protocol witness table for ActionPlatformItemListFlags, type metadata accessor for PlatformItemListTransformModifier);
  v12 = type metadata accessor for ModifiedContent();
  v42 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v39 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v40 = &v35 - v15;
  v52 = v4;
  v53 = v5;
  v54 = v3;
  v49 = v4;
  v50 = v5;
  v51 = v3;
  v35 = v3;
  v16 = lazy protocol witness table accessor for type UseFlattenedUIKitButton and conformance UseFlattenedUIKitButton();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UIKitButtonStyleModifier<A>.ResolvedBody_Flat, v6);
  v18 = swift_getWitnessTable(protocol conformance descriptor for UIKitButtonStyleModifier<A>.ResolvedBody_Nested, v8);
  StaticIf<>.init(_:then:else:)();
  v46 = v4;
  v47 = v5;
  v48 = v3;
  type metadata accessor for HStack<UIKitButtonConfiguration.Label>(0, &lazy cache variable for type metadata for HStack<UIKitButtonConfiguration.Label>, &type metadata for UIKitButtonConfiguration.Label, &protocol witness table for UIKitButtonConfiguration.Label, MEMORY[0x1E69817F0]);
  v20 = v19;
  v57[0] = v16;
  v57[1] = WitnessTable;
  v57[2] = v18;
  v21 = v36;
  v22 = swift_getWitnessTable(MEMORY[0x1E6981CE8], v36, v57);
  lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label();
  lazy protocol witness table accessor for type HStack<UIKitButtonConfiguration.Label> and conformance HStack<A>();
  v23 = v38;
  View.viewAlias<A, B>(_:_:)(&type metadata for ButtonStyleConfiguration.Label, UIKitButtonConfiguration.label.getter, v45, v21, &type metadata for ButtonStyleConfiguration.Label, v20, v22);
  (*(v41 + 8))(v10, v21);
  v25 = implicit closure #1 in UIKitButtonStyleModifier.ResolvedBody.body.getter(v35, v4, v5, v24);
  v27 = v26;
  v56[0] = v22;
  v56[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v28 = MEMORY[0x1E697E858];
  v29 = v37;
  v30 = swift_getWitnessTable(MEMORY[0x1E697E858], v37, v56);
  v31 = v39;
  View.transformPlatformItemList<A>(_:_:)(&type metadata for ActionPlatformItemListFlags, v25, v27, v29, &type metadata for ActionPlatformItemListFlags, v30, &protocol witness table for ActionPlatformItemListFlags);

  (*(v43 + 8))(v23, v29);
  v55[0] = v30;
  v55[1] = &protocol witness table for PlatformItemListTransformModifier<A>;
  swift_getWitnessTable(v28, v12, v55);
  v32 = v40;
  static ViewBuilder.buildExpression<A>(_:)();
  v33 = *(v42 + 8);
  v33(v31, v12);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v33)(v32, v12);
}

Swift::Void __swiftcall UIKitSearchBar.layoutSubviews()()
{
  v1 = v0;
  v37.receiver = v0;
  v37.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v37, sel_layoutSubviews);
  v2 = OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_customScopeBarHost;
  v3 = *&v0[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_customScopeBarHost];
  if (v3)
  {
    v4 = v3;
    v5 = [v0 traitCollection];
    [v5 displayScale];
    v7 = v6;

    v8 = 1.0;
    v9 = 1.0 / v7;
    [v1 safeAreaInsets];
    v33 = v10;
    v34 = v11;
    v35 = v12;
    v36 = v13;
    EdgeInsets.round(toMultipleOf:)();
    [v1 bounds];
    static Edge.Set.horizontal.getter();
    EdgeInsets.in(_:)();
    CGSize.inset(by:)();
    v15 = v14;
    v16 = *&v1[v2];
    if (v16)
    {
      v17 = v16;
      v18 = [v1 traitCollection];
      [v18 displayScale];
      v20 = v19;

      v21 = 1.0 / v20;
      [v17 sizeThatFits_];
      v23 = v22;

      if (v21 == 1.0)
      {
        v24 = ceil(v23);
      }

      else
      {
        v24 = v21 * ceil(v23 / v21);
      }

      v8 = 1.0;
    }

    else
    {
      v24 = 0.0;
    }

    EdgeInsets.originOffset.getter();
    v26 = v25;
    [v1 bounds];
    v28 = v26 + v27;
    if (v9 == v8)
    {
      v29 = round(v28);
    }

    else
    {
      v29 = v9 * round(v28 / v9);
    }

    [v1 bounds];
    v30 = CGRectGetMaxY(v38) - v24;
    v31 = v9 * round(v30 / v9);
    v32 = round(v30);
    if (v9 == 1.0)
    {
      v31 = v32;
    }

    [v4 setFrame_];
  }
}

uint64_t closure #1 in UIKitButtonStyleModifier.ResolvedBody.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const char *a4@<X4>, uint64_t a5@<X8>)
{
  v33[1] = a5;
  v9 = *(a2 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v13(0, v10);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = v33 - v20;
  (*(v9 + 16))(v12, a1, a2, v19);
  v23 = a1 + *(type metadata accessor for UIKitButtonStyleModifier.ResolvedBody(0, a2, a3, v22) + 36);
  v24 = *(v23 + 48);
  v25 = *(v23 + 16);
  v41 = *(v23 + 32);
  v42 = v24;
  v26 = *(v23 + 48);
  v43 = *(v23 + 64);
  v27 = *(v23 + 16);
  v40[0] = *v23;
  v40[1] = v27;
  v36 = v41;
  v37 = v26;
  v38 = *(v23 + 64);
  v44 = *(v23 + 80);
  v39 = *(v23 + 80);
  v34 = v40[0];
  v35 = v25;
  (*(v9 + 32))(v17, v12, a2);
  v28 = &v17[*(v14 + 36)];
  v29 = v37;
  *(v28 + 2) = v36;
  *(v28 + 3) = v29;
  *(v28 + 4) = v38;
  v28[80] = v39;
  v30 = v35;
  *v28 = v34;
  *(v28 + 1) = v30;
  swift_getWitnessTable(a4, v14);
  static ViewBuilder.buildExpression<A>(_:)();
  outlined init with copy of UIKitButtonConfiguration(v40, &v34);
  v31 = *(v15 + 8);
  v31(v17, v14);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v31)(v21, v14);
}

uint64_t initializeWithCopy for UIKitButtonStyleModifier.ResolvedBody_Nested(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  v9 = *(v8 + 8);
  if (v9)
  {
    v10 = *(v8 + 16);
    *(v7 + 8) = v9;
    *(v7 + 16) = v10;
  }

  else
  {
    *(v7 + 8) = *(v8 + 8);
  }

  *(v7 + 24) = *(v8 + 24);
  *(v7 + 25) = *(v8 + 25);
  v11 = *(v8 + 28);
  *(v7 + 36) = *(v8 + 36);
  *(v7 + 28) = v11;
  *(v7 + 37) = *(v8 + 37);
  *(v7 + 38) = *(v8 + 38);
  v12 = *(v8 + 40);
  *(v7 + 48) = *(v8 + 48);
  *(v7 + 40) = v12;
  *(v7 + 49) = *(v8 + 49);
  v13 = *(v8 + 56);
  if (v13)
  {
    v14 = *(v8 + 64);
    *(v7 + 56) = v13;
    *(v7 + 64) = v14;
  }

  else
  {
    *(v7 + 56) = *(v8 + 56);
  }

  v15 = *(v8 + 72);
  *(v7 + 80) = *(v8 + 80);
  *(v7 + 72) = v15;
  return a1;
}

double destroy for UIKitButtonStyleModifier.ResolvedBody_Nested(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v5 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(v5 + 8))
  {
  }

  if (*(v5 + 56))
  {
  }

  return result;
}

void *assignWithTake for SearchFieldConfiguration(void *a1, void *a2, int *a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

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
  (*(*(v12 - 8) + 40))(&v8[v11], &v9[v11], v12);
  v8[v10[10]] = v9[v10[10]];
  v13 = v10[11];
  v14 = &v8[v13];
  v15 = &v9[v13];
  *v14 = *v15;
  v14[4] = v15[4];
  v16 = a3[6];
  v17 = a1 + v16;
  v18 = a2 + v16;
  v19 = *(a1 + v16 + 8);
  if (v19 == 255)
  {
    goto LABEL_5;
  }

  v20 = v18[8];
  if (v20 == 255)
  {
    outlined destroy of PlatformItemCollection(v17);
LABEL_5:
    *v17 = *v18;
    v17[8] = v18[8];
    goto LABEL_6;
  }

  v21 = *v17;
  *v17 = *v18;
  v17[8] = v20 & 1;
  outlined consume of PlatformItemCollection.Storage(v21, v19 & 1);
LABEL_6:
  v22 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v23 = a1 + v22;
  v24 = a2 + v22;
  v25 = v24[16];
  v26 = *(a1 + v22);
  v27 = *(a1 + v22 + 8);
  v28 = *(a1 + v22 + 16);
  *v23 = *v24;
  v23[16] = v25;
  outlined consume of Text.Storage(v26, v27, v28);
  *(v23 + 3) = *(v24 + 3);

  return a1;
}

uint64_t UIKitButtonConfiguration.label.getter@<X0>(uint64_t a2@<X8>)
{
  result = static VerticalAlignment.center.getter();
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

uint64_t (*implicit closure #1 in UIKitButtonStyleModifier.ResolvedBody.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for UIKitButtonStyleModifier.ResolvedBody(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, v7);
  return partial apply for implicit closure #2 in implicit closure #1 in UIKitButtonStyleModifier.ResolvedBody.body.getter;
}

uint64_t sub_18BFD2C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for UIKitButtonStyleModifier.ResolvedBody(0, v5, *(v4 + 24), a4);
  v7 = v4 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80));
  (*(*(v5 - 8) + 8))(v7, v5);
  v8 = v7 + *(v6 + 36);
  if (*(v8 + 8))
  {
  }

  if (*(v8 + 56))
  {
  }

  outlined consume of Environment<Bool>.Content(*(v7 + *(v6 + 40)), *(v7 + *(v6 + 40) + 8));

  return swift_deallocObject();
}

uint64_t storeEnumTagSinglePayload for ToolbarAppearanceConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t UIKitButtonStyleModifier.ResolvedBody_Flat.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28[1] = a2;
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v12 = type metadata accessor for UIKitButtonStyleModifier.ResolvedBody_Flat.Inner(0, v5, v10, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v28 - v18;
  (*(v6 + 16))(v8, v3, v5, v17);
  v20 = v3 + *(a1 + 36);
  v21 = *(v20 + 48);
  v22 = *(v20 + 16);
  v32 = *(v20 + 32);
  v33 = v21;
  v23 = *(v20 + 48);
  v34 = *(v20 + 64);
  v24 = *(v20 + 16);
  v31[0] = *v20;
  v31[1] = v24;
  v29[2] = v32;
  v29[3] = v23;
  v29[4] = *(v20 + 64);
  v35 = *(v20 + 80);
  v30 = *(v20 + 80);
  v29[0] = v31[0];
  v29[1] = v22;
  *&v25 = UIKitButtonStyleModifier.ResolvedBody_Flat.Inner.init(style:configuration:)(v8, v29, v5, v10, v15).n128_u64[0];
  swift_getWitnessTable(protocol conformance descriptor for UIKitButtonStyleModifier<A>.ResolvedBody_Flat.Inner, v12, v25);
  static ViewBuilder.buildExpression<A>(_:)();
  outlined init with copy of UIKitButtonConfiguration(v31, v29);
  v26 = *(v13 + 8);
  v26(v15, v12);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v26)(v19, v12);
}

uint64_t specialized static ToolbarAppearanceConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1) != *(a2 + 1))
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 57);
  v7 = *(a1 + 58);
  v8 = *(a1 + 72);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v44 = *(a2 + 40);
  v11 = *(a2 + 48);
  v12 = *(a2 + 56);
  v13 = *(a2 + 57);
  v14 = *(a2 + 58);
  v15 = *(a2 + 72);
  v17 = *(a2 + 8);
  v16 = *(a2 + 16);
  v19 = *(a1 + 8);
  v18 = *(a1 + 16);
  if (!v18)
  {
    v39 = *(a2 + 56);
    v41 = *(a1 + 56);
    v43 = *(a2 + 57);
    v36 = *(a1 + 57);
    v37 = *(a1 + 40);
    v23 = *(a2 + 58);
    v24 = *(a1 + 58);
    v25 = *(a1 + 8);
    v26 = *(a2 + 8);
    v27 = *(a2 + 72);
    v28 = *(a1 + 72);

    if (v16)
    {
      goto LABEL_32;
    }

    v8 = v28;
    v15 = v27;
    v17 = v26;
    v19 = v25;
    v7 = v24;
    v14 = v23;
    v6 = v36;
    v5 = v41;
    v13 = v43;
    v12 = v39;
    goto LABEL_11;
  }

  if (v16)
  {
    v37 = *(a1 + 40);
    if (v18 != v16)
    {
      v38 = *(a2 + 56);
      v40 = *(a1 + 56);
      v42 = *(a2 + 57);
      v34 = *(a2 + 72);
      v35 = *(a1 + 72);

      v20 = dispatch thunk of AnyShapeStyleBox.isEqual(to:)();

      v21 = 0;
      if ((v20 & 1) == 0)
      {
        return v21 & 1;
      }

      v15 = v34;
      v8 = v35;
      v5 = v40;
      v13 = v42;
      v12 = v38;
      if (v2 != v9)
      {
        return v21 & 1;
      }

LABEL_12:
      if (v5)
      {
        if (!v12)
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (v4 == v11)
        {
          v29 = v12;
        }

        else
        {
          v29 = 1;
        }

        if (v29)
        {
          goto LABEL_32;
        }
      }

      if (v6 == 2)
      {
        v21 = 0;
        if (v13 != 2)
        {
          return v21 & 1;
        }
      }

      else
      {
        if (v13 == 2)
        {
          goto LABEL_32;
        }

        v21 = 0;
        if ((v13 ^ v6))
        {
          return v21 & 1;
        }
      }

      if (v7 != v14)
      {
        return v21 & 1;
      }

      if (v19)
      {
        if (v17)
        {
          if (v19 != v17)
          {
            v30 = v8;

            v31 = dispatch thunk of AnyShapeStyleBox.isEqual(to:)();

            if ((v31 ^ 1) & 1 | (v30 != v15) | v37 & 1)
            {
              v32 = (v31 ^ 1 | (v30 != v15)) ^ 1;
LABEL_37:
              v21 = v32 & v44;
              return v21 & 1;
            }

LABEL_38:
            v21 = (v3 == v10) & ~v44;
            return v21 & 1;
          }

LABEL_36:
          v32 = v8 == v15;
          if ((v8 != v15) | v37 & 1)
          {
            goto LABEL_37;
          }

          goto LABEL_38;
        }

        goto LABEL_15;
      }

      v33 = v8;

      if (!v17)
      {

        v8 = v33;
        goto LABEL_36;
      }

LABEL_32:
      v21 = 0;
      return v21 & 1;
    }

LABEL_11:
    if (v2 != v9)
    {
      goto LABEL_32;
    }

    goto LABEL_12;
  }

LABEL_15:

  v21 = 0;
  return v21 & 1;
}

__n128 UIKitButtonStyleModifier.ResolvedBody_Flat.Inner.init(style:configuration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v10 = type metadata accessor for UIKitButtonStyleModifier.ResolvedBody_Flat.Inner(0, a3, a4, v9);
  v11 = a5 + v10[9];
  v12 = *(a2 + 48);
  *(v11 + 32) = *(a2 + 32);
  *(v11 + 48) = v12;
  *(v11 + 64) = *(a2 + 64);
  *(v11 + 80) = *(a2 + 80);
  result = *a2;
  v14 = *(a2 + 16);
  *v11 = *a2;
  *(v11 + 16) = v14;
  v15 = a5 + v10[10];
  *v15 = 0;
  *(v15 + 8) = 0;
  v16 = a5 + v10[11];
  *v16 = 0;
  *(v16 + 8) = 0;
  return result;
}

void closure #2 in SwiftUISearchController.enqueueIsActiveUpdate(_:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    SwiftUISearchController.flushPendingIsActive()();
  }
}

uint64_t initializeWithCopy for UIKitButtonStyleModifier.ResolvedBody_Flat.Inner(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v6 + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  v11 = *(v10 + 8);
  if (v11)
  {
    v12 = *(v10 + 16);
    *(v9 + 8) = v11;
    *(v9 + 16) = v12;
  }

  else
  {
    *(v9 + 8) = *(v10 + 8);
  }

  *(v9 + 24) = *(v10 + 24);
  *(v9 + 25) = *(v10 + 25);
  v13 = *(v10 + 28);
  *(v9 + 36) = *(v10 + 36);
  *(v9 + 28) = v13;
  *(v9 + 37) = *(v10 + 37);
  *(v9 + 38) = *(v10 + 38);
  v14 = *(v10 + 40);
  *(v9 + 48) = *(v10 + 48);
  *(v9 + 40) = v14;
  *(v9 + 49) = *(v10 + 49);
  v15 = *(v10 + 56);
  if (v15)
  {
    v16 = *(v10 + 64);
    *(v9 + 56) = v15;
    *(v9 + 64) = v16;
  }

  else
  {
    *(v9 + 56) = *(v10 + 56);
  }

  v17 = *(v10 + 72);
  *(v9 + 80) = *(v10 + 80);
  *(v9 + 72) = v17;
  v18 = (v7 + 95) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v8 + 95) & 0xFFFFFFFFFFFFFFF8;
  *v18 = *v19;
  *(v18 + 8) = *(v19 + 8);
  v20 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v20 = *v21;
  *(v20 + 8) = *(v21 + 8);

  return a1;
}

BOOL specialized static SearchFieldPlacement.Role.== infix(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 4u)
  {
    switch(a1)
    {
      case 2u:
        return a2 == 2;
      case 3u:
        return a2 == 3;
      case 4u:
        return a2 == 4;
    }

LABEL_16:
    if (a2 - 2 >= 6)
    {
      return ((a2 ^ a1) & 1) == 0;
    }

    return 0;
  }

  if (a1 == 5)
  {
    return a2 == 5;
  }

  if (a1 != 6)
  {
    if (a1 == 7)
    {
      return a2 == 7;
    }

    goto LABEL_16;
  }

  return a2 == 6;
}

void SwiftUISearchController.flushPendingIsActive()()
{
  v1 = v0;
  v2 = [v0 isActive];
  v3 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_pendingIsActive;
  v4 = v0[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_pendingIsActive];
  v5 = v4 & 1;
  if (v4 != 2 && v2 != v5)
  {
    [v0 setActive_];
    v7 = SwiftUISearchController._searchBar.getter();
    v8 = v7;
    v9 = v7[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_isActive];
    v7[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_isActive] = v5;
    if (v9 == v5)
    {
      goto LABEL_13;
    }

    v10 = *&v7[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_customScopeBarHost];
    if (!v10)
    {
      goto LABEL_13;
    }

    if (v4)
    {
      v11 = *MEMORY[0x1E69DDCE0];
      v12 = *(MEMORY[0x1E69DDCE0] + 8);
      v13 = *(MEMORY[0x1E69DDCE0] + 24);
      if (v7[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_customScopeBarVisibility] != 2)
      {
        [v10 intrinsicContentSize];
        v15 = v14;
        v16 = 0;
        v17 = 1.0;
        v18 = 4;
LABEL_12:
        [v8 _setOverrideContentInsets_forRectEdges_];
        [v8 sizeToFit];
        [v8 layoutIfNeeded];
        v20 = [v8 superview];
        [v20 sizeToFit];

        v21 = [v8 superview];
        [v21 layoutIfNeeded];

        v22 = v10;
        [v22 setAlpha_];
        [v22 setHidden_];

LABEL_13:
        UIKitSearchBar.enqueueFirstResponderUpdate(_:)(v4 & 1);

        goto LABEL_14;
      }
    }

    else
    {
      v11 = *MEMORY[0x1E69DDCE0];
      v12 = *(MEMORY[0x1E69DDCE0] + 8);
      v13 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    v15 = *(MEMORY[0x1E69DDCE0] + 16);
    v19 = v10;
    v18 = 0;
    v17 = 0.0;
    v16 = 1;
    goto LABEL_12;
  }

LABEL_14:
  v1[v3] = 2;
}

double destroy for UIKitButtonStyleModifier.ResolvedBody_Flat.Inner(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (*(v3 + 56) + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(v4 + 8))
  {
  }

  if (*(v4 + 56))
  {
  }

  return result;
}

Swift::Void __swiftcall UpdateCoalescingCollectionView.safeAreaInsetsDidChange()()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for UpdateCoalescingCollectionView(0);
  objc_msgSendSuper2(&v7, sel_safeAreaInsetsDidChange);
  v1 = OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_ignoreGraphUpdates;
  v2 = *&v0[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_ignoreGraphUpdates];
  v3 = __CFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  *&v0[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_ignoreGraphUpdates] = v4;
  specialized UpdateCoalescingCollectionView.updateGraphState(isAnimatingScrollOverride:)();
  v5 = *&v0[v1];
  v3 = v5 != 0;
  v6 = v5 - 1;
  if (!v3)
  {
    goto LABEL_9;
  }

  *&v0[v1] = v6;
  if (!v6 && v0[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_pendingGraphUpdate] == 1)
  {
    specialized UpdateCoalescingCollectionView.updateGraphState(isAnimatingScrollOverride:)();
  }
}

uint64_t UIKitButtonStyleModifier.ResolvedBody_Flat.Inner.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  type metadata accessor for UIButton.Configuration?(0, &lazy cache variable for type metadata for UIButton.Configuration?, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v38 = &v34 - v5;
  v6 = *(a1 + 16);
  v41 = *(a1 + 24);
  v42 = v6;
  type metadata accessor for ResolvedButtonStyleBody(255, v6, v41, v7);
  type metadata accessor for StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier>(255);
  v8 = type metadata accessor for ModifiedContent();
  v39 = v8;
  IsVisionEnabled = lazy protocol witness table accessor for type StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v52[0] = &protocol witness table for ResolvedButtonStyleBody<A>;
  v52[1] = IsVisionEnabled;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v52);
  v11 = type metadata accessor for UIKitFlattenedButtonAdaptor(0, v8, WitnessTable, v10);
  v40 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v35 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v36 = &v34 - v14;
  v15 = v2 + *(a1 + 40);
  v17 = *(v15 + 8);
  LOBYTE(v53[0]) = *v15;
  v16 = v53[0];
  *(&v53[0] + 1) = v17;
  type metadata accessor for PlatformItemList.Item.SelectionBehavior?(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  v18 = v2 + *(a1 + 44);
  v34 = v2;
  v20 = *(v18 + 8);
  LOBYTE(v53[0]) = *v18;
  v19 = v53[0];
  *(&v53[0] + 1) = v20;
  State.wrappedValue.getter();
  v21 = v2 + *(a1 + 36);
  v22 = *(v21 + 48);
  v23 = *(v21 + 16);
  v54 = *(v21 + 32);
  v55 = v22;
  v24 = *(v21 + 48);
  v56 = *(v21 + 64);
  v25 = *(v21 + 16);
  v53[0] = *v21;
  v53[1] = v25;
  v50[2] = v54;
  v50[3] = v24;
  v50[4] = *(v21 + 64);
  v57 = *(v21 + 80);
  v51 = *(v21 + 80);
  v50[0] = v53[0];
  v50[1] = v23;
  v26 = type metadata accessor for UIButton.Configuration();
  v27 = v38;
  (*(*(v26 - 8) + 56))(v38, 1, 1, v26);
  v48 = v16;
  v49 = v17;
  outlined init with copy of UIKitButtonConfiguration(v53, &v45);
  State.projectedValue.getter();
  v29 = v45;
  v28 = v46;
  LOBYTE(v17) = v47;
  v48 = v19;
  v49 = v20;
  State.projectedValue.getter();
  v44[2] = v42;
  v44[3] = v41;
  v44[4] = v34;
  v30 = v35;
  UIKitFlattenedButtonAdaptor.init(configuration:uikitButtonType:uiButtonConfiguration:options:isPressed:isMenuPresented:label:)(v50, 0, v27, 0, v29, v28, v17, v45, v35, v46, v47, partial apply for closure #1 in UIKitButtonStyleModifier.ResolvedBody_Flat.Inner.body.getter, v44, v39, WitnessTable);
  v31 = v36;
  static ViewBuilder.buildExpression<A>(_:)();
  v32 = *(v40 + 8);
  v32(v30, v11);
  static ViewBuilder.buildExpression<A>(_:)();
  return v32(v31, v11);
}

void type metadata accessor for StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<Bool?>(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier>);
    }
  }
}

uint64_t partial apply for closure #1 in FocusStoreUpdateAction.init<A>(value:focusScopes:searchFieldState:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v6 = (*(*(v3 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for CollectionOfOne<Hashable>(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v8 = *(v1 + v6);
  v9 = v1 + ((v6 + *(*(v7 - 8) + 80) + 8) & ~*(*(v7 - 8) + 80));

  return closure #1 in FocusStoreUpdateAction.init<A>(value:focusScopes:searchFieldState:)(a1, v1 + v5, v8, v9, v3, v4);
}

uint64_t specialized UpdateCoalescingCollectionView.updateGraphState(isAnimatingScrollOverride:)()
{
  _s10Foundation9IndexPathVSgMaTm_2(0, &lazy cache variable for type metadata for BridgedListState?, type metadata accessor for BridgedListState, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v22[-v2];
  v4 = type metadata accessor for BridgedListState(0);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22[-v9];
  v23 = v0;
  static Update.ensure<A>(_:)();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return _s10Foundation9IndexPathVSgWOhTm_2(v3, &lazy cache variable for type metadata for BridgedListState?, type metadata accessor for BridgedListState);
  }

  outlined init with take of UpdateCoalescingCollectionView.UpdateInvalidation(v3, v10, type metadata accessor for BridgedListState);
  if (*&v0[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_ignoreGraphUpdates])
  {
    result = outlined destroy of UpdateCoalescingCollectionView.UpdateInvalidation(v10, type metadata accessor for BridgedListState);
    v0[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_pendingGraphUpdate] = 1;
  }

  else
  {
    v0[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_pendingGraphUpdate] = 0;
    type metadata accessor for _SemanticFeature<Semantics_v2>();
    lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>();
    v12 = static SemanticFeature.isEnabled.getter();
    v13 = 15.0;
    if (v12)
    {
      v13 = 16.0;
    }

    *v7 = v13;
    v14 = v4[5];
    v15 = type metadata accessor for BridgedListState.ScrollTarget(0);
    (*(*(v15 - 8) + 56))(v7 + v14, 1, 1, v15);
    v16 = v7 + v4[6];
    v32 = 1;
    *v16 = 0u;
    *(v16 + 1) = 0u;
    *(v16 + 2) = 0u;
    *(v16 + 3) = 0u;
    *(v16 + 4) = 0u;
    *(v16 + 5) = 0u;
    *(v16 + 6) = 0u;
    v16[112] = 1;
    outlined assign with copy of BridgedListState.ScrollTarget?(&v10[v4[5]], v7 + v14);
    v17 = &v10[v4[6]];
    if ((v17[112] & 1) == 0)
    {
      if (*&v0[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_helper])
      {
        swift_beginAccess();
      }

      [v0 adjustedContentInset];
      [v0 contentOffset];
      [v0 contentSize];
      [v0 bounds];
      ScrollGeometry.init(contentOffset:contentSize:contentInsets:containerSize:)();
      v24 = 0;
      v18 = v30;
      *(v16 + 4) = v29;
      *(v16 + 5) = v18;
      *(v16 + 6) = v31;
      v19 = v26;
      *v16 = v25;
      *(v16 + 1) = v19;
      v20 = v28;
      *(v16 + 2) = v27;
      *(v16 + 3) = v20;
      v16[112] = 0;
    }

    v21 = *&v0[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_lastUpdateSeed];
    *(v7 + v4[7]) = v21;
    if (v21 != *&v10[v4[7]] || (v17[112] & 1) == 0)
    {
      BridgedListState.commit(to:)(*&v0[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_bridgedState]);
    }

    outlined destroy of UpdateCoalescingCollectionView.UpdateInvalidation(v10, type metadata accessor for BridgedListState);
    return outlined destroy of UpdateCoalescingCollectionView.UpdateInvalidation(v7, type metadata accessor for BridgedListState);
  }

  return result;
}

uint64_t closure #1 in FocusStoreUpdateAction.init<A>(value:focusScopes:searchFieldState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a2;
  v28 = a4;
  v29 = a1;
  v9 = MEMORY[0x1E6981948];
  type metadata accessor for CollectionOfOne<Hashable>(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v26 - v11;
  v13 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FocusStore.Entry(255, a5, a6, v17);
  v19 = type metadata accessor for Optional();
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v26 - v21;
  (*(v13 + 16))(v16, v27, a5, v20);
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGWOcTm_0(v28, v12, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, v9);
  FocusStore.Entry.init(value:focusScopes:searchFieldState:)(v16, a3, v12, a5, a6, v22);
  (*(*(v18 - 8) + 56))(v22, 0, 1, v18);
  v24 = type metadata accessor for FocusStore.Key(0, a5, a6, v23);

  swift_getWitnessTable(protocol conformance descriptor for FocusStore.Key<A>, v24);
  return PropertyList.subscript.setter();
}

uint64_t closure #1 in UpdateCoalescingCollectionView.updateGraphState(isAnimatingScrollOverride:)@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for BridgedListState(0);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    outlined init with copy of UpdateCoalescingCollectionView.UpdateInvalidation(WeakValue, a2, type metadata accessor for BridgedListState);
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  return (*(*(v3 - 8) + 56))(a2, v5, 1, v3);
}

unint64_t lazy protocol witness table accessor for type StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v6[5] = v0;
    v6[6] = v1;
    type metadata accessor for StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier>(255);
    v4 = v3;
    v5 = lazy protocol witness table accessor for type UIKitSystemButtonConfigurationModifier and conformance UIKitSystemButtonConfigurationModifier(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Bool?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Bool?>, MEMORY[0x1E6980A18]);
    v6[0] = MEMORY[0x1E69803C8];
    v6[1] = v5;
    v6[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t outlined assign with copy of BridgedListState.ScrollTarget?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BridgedListState.ScrollTarget?(0, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type UIKitSystemButtonConfigurationModifier and conformance UIKitSystemButtonConfigurationModifier(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t FocusStore.Entry.init(value:focusScopes:searchFieldState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for FocusStore.Entry.Target(0, a4, a5, a4);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v16 - v13;
  outlined init with take of Binding<SearchFieldState>(a3, &v16 - v13, type metadata accessor for Binding<SearchFieldState>);
  swift_storeEnumTagMultiPayload();
  return FocusStore.Entry.init(value:focusScopes:target:)(a1, a2, v14, a4, a5, a6);
}

void type metadata accessor for PlatformItemList.Item.SelectionBehavior?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t UIKitFlattenedButtonAdaptor.init(configuration:uikitButtonType:uiButtonConfiguration:options:isPressed:isMenuPresented:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, char a11, void (*a12)(void *__return_ptr), uint64_t a13, uint64_t a14, uint64_t a15)
{
  v18 = *(a1 + 24);
  v19 = *(a1 + 36);
  v20 = *(a1 + 37);
  v21 = *(a1 + 49);
  if (v18)
  {
    if (*(a1 + 36))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v22 = a2;
    a12(a9);
    a4 |= 0x80uLL;
  }

  else
  {
    v22 = a2;
    a12(a9);
  }

  v24 = a4 | 0x100;
  if ((v21 & 1) == 0)
  {
    v24 = a4;
  }

  v26 = (v24 & 1) == 0 && v20 == 1;
  v27 = v24 | v26;
  v28 = a9 + *(type metadata accessor for UIKitFlattenedButtonAdaptor(0, a14, a15, v23) + 36);
  *v28 = *a1;
  *(v28 + 2) = *(a1 + 16);
  v28[24] = v18;
  *(v28 + 25) = *(a1 + 25);
  *(v28 + 8) = *(a1 + 32);
  v28[36] = v19;
  v28[37] = v20;
  *(v28 + 38) = *(a1 + 38);
  *(v28 + 45) = *(a1 + 45);
  v28[49] = v21;
  *(v28 + 50) = *(a1 + 50);
  *(v28 + 65) = *(a1 + 65);
  *(v28 + 11) = v27;
  *(v28 + 12) = v22;
  v29 = type metadata accessor for UIKitFlattenedButtonAdaptorStorage(0);
  result = outlined init with take of UIButton.Configuration?(a3, &v28[v29[7]]);
  v31 = &v28[v29[8]];
  *v31 = a5;
  *(v31 + 1) = a6;
  v31[16] = a7;
  v32 = &v28[v29[9]];
  *v32 = a8;
  *(v32 + 1) = a10;
  v32[16] = a11;
  return result;
}

uint64_t UpdateCoalescingCollectionView.bounds.setter(double a1, double a2, double a3, double a4)
{
  updated = type metadata accessor for UpdateCoalescingCollectionView(0);
  v30.receiver = v4;
  v30.super_class = updated;
  objc_msgSendSuper2(&v30, sel_bounds);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v29.receiver = v4;
  v29.super_class = updated;
  result = objc_msgSendSuper2(&v29, sel_setBounds_, a1, a2, a3, a4);
  v19 = OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_ignoreGraphUpdates;
  v20 = *&v4[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_ignoreGraphUpdates];
  v21 = __CFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  *&v4[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_ignoreGraphUpdates] = v22;
  [v4 bounds];
  v32.origin.x = v23;
  v32.origin.y = v24;
  v32.size.width = v25;
  v32.size.height = v26;
  v31.origin.x = v11;
  v31.origin.y = v13;
  v31.size.width = v15;
  v31.size.height = v17;
  result = CGRectEqualToRect(v31, v32);
  if ((result & 1) == 0)
  {
    result = specialized UpdateCoalescingCollectionView.updateGraphState(isAnimatingScrollOverride:)();
  }

  v27 = *&v4[v19];
  v21 = v27 != 0;
  v28 = v27 - 1;
  if (!v21)
  {
    goto LABEL_11;
  }

  *&v4[v19] = v28;
  if (!v28 && v4[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_pendingGraphUpdate] == 1)
  {
    return specialized UpdateCoalescingCollectionView.updateGraphState(isAnimatingScrollOverride:)();
  }

  return result;
}

void @objc UICollectionViewListCoordinatorBase.scrollViewDidScroll(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  if ([v4 canBecomeFirstResponder] && (objc_msgSend(v4, sel_isFirstResponder) & 1) == 0 && (objc_msgSend(v4, sel_isTracking) & 1) != 0)
  {
    [v4 becomeFirstResponder];
  }
}

uint64_t closure #1 in UIKitButtonStyleModifier.ResolvedBody_Flat.Inner.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a5;
  v34 = type metadata accessor for ResolvedButtonStyleBody(0, a2, a3, a4);
  v36 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v9 = &v32 - v8;
  type metadata accessor for StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier>(255);
  v35 = v10;
  v11 = type metadata accessor for ModifiedContent();
  v37 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v33 = &v32 - v15;
  v17 = type metadata accessor for UIKitButtonStyleModifier.ResolvedBody_Flat.Inner(0, a2, a3, v16);
  v18 = *(a1 + v17[9]);
  v19 = (a1 + v17[10]);
  v20 = *v19;
  v21 = *(v19 + 1);
  LOBYTE(v41) = v20;
  v42 = v21;
  type metadata accessor for PlatformItemList.Item.SelectionBehavior?(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  LOBYTE(v41) = v18;
  BYTE1(v41) = v40;
  ButtonStyle.resolvedBody(configuration:)(&v41, a2, a3, v9);
  KeyPath = swift_getKeyPath();
  v23 = (a1 + v17[11]);
  v24 = *v23;
  v25 = *(v23 + 1);
  LOBYTE(v41) = v24;
  v42 = v25;
  State.wrappedValue.getter();
  if (v40)
  {
    v26 = 1;
  }

  else
  {
    v26 = 2;
  }

  v41 = KeyPath;
  LOBYTE(v42) = v26;
  v27 = v34;
  MEMORY[0x18D00A570](&v41, v34, v35, &protocol witness table for ResolvedButtonStyleBody<A>);

  (*(v36 + 8))(v9, v27);
  IsVisionEnabled = lazy protocol witness table accessor for type StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v39[0] = &protocol witness table for ResolvedButtonStyleBody<A>;
  v39[1] = IsVisionEnabled;
  swift_getWitnessTable(MEMORY[0x1E697E858], v11, v39);
  v29 = v33;
  static ViewBuilder.buildExpression<A>(_:)();
  v30 = *(v37 + 8);
  v30(v13, v11);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v30)(v29, v11);
}

uint64_t UpdateCoalescingCollectionView.canBecomeFirstResponder.getter()
{
  result = [v0 isScrollEnabled];
  if (result)
  {
    v4.receiver = v0;
    v4.super_class = type metadata accessor for UpdateCoalescingCollectionView(0);
    result = objc_msgSendSuper2(&v4, sel_canBecomeFirstResponder);
    if (result)
    {
      v2 = *&v0[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_helper];
      if (v2)
      {
        v3 = v2 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_properties;
        swift_beginAccess();
        return (*(v3 + 82) & 8) == 0;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t outlined init with take of UIButton.Configuration?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UIButton.Configuration?(0, &lazy cache variable for type metadata for UIButton.Configuration?, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t initializeWithCopy for UIKitFlattenedButtonAdaptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = type metadata accessor for UIButton.Configuration();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + v6;
  v11 = (v10 + a1) & ~(v9 | 7);
  v12 = (v10 + a2) & ~(v9 | 7);
  *v11 = *v12;
  v13 = *(v12 + 8);
  if (v13)
  {
    v14 = *(v12 + 16);
    *(v11 + 8) = v13;
    *(v11 + 16) = v14;
  }

  else
  {
    *(v11 + 8) = *(v12 + 8);
  }

  *(v11 + 24) = *(v12 + 24);
  *(v11 + 25) = *(v12 + 25);
  v15 = *(v12 + 28);
  *(v11 + 36) = *(v12 + 36);
  *(v11 + 28) = v15;
  *(v11 + 37) = *(v12 + 37);
  *(v11 + 38) = *(v12 + 38);
  v16 = *(v12 + 40);
  *(v11 + 48) = *(v12 + 48);
  *(v11 + 40) = v16;
  *(v11 + 49) = *(v12 + 49);
  v17 = *(v12 + 56);
  if (v17)
  {
    v18 = *(v12 + 64);
    *(v11 + 56) = v17;
    *(v11 + 64) = v18;
  }

  else
  {
    *(v11 + 56) = *(v12 + 56);
  }

  v19 = *(v12 + 72);
  *(v11 + 80) = *(v12 + 80);
  *(v11 + 72) = v19;
  *(v11 + 88) = *(v12 + 88);
  v20 = ((v11 + 103) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v12 + 103) & 0xFFFFFFFFFFFFFFF8);
  *v20 = *v21;
  v22 = ((v20 + v9 + 8) & ~v9);
  v23 = ((v21 + v9 + 8) & ~v9);
  if ((*(v8 + 48))(v23, 1, v7))
  {
    v24 = *(v8 + 84);
    v25 = *(v8 + 64);
    if (v24)
    {
      v26 = v25;
    }

    else
    {
      v26 = v25 + 1;
    }

    memcpy(v22, v23, v26);
  }

  else
  {
    (*(v8 + 16))(v22, v23, v7);
    v28 = *(v8 + 56);
    v27 = v8 + 56;
    v28(v22, 0, 1, v7);
    v24 = *(v27 + 28);
    v25 = *(v27 + 8);
  }

  if (v24)
  {
    v29 = v25;
  }

  else
  {
    v29 = v25 + 1;
  }

  v30 = &v22[v29];
  v31 = &v23[v29];
  v32 = (v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(v33 + 8) < 0xFFFFFFFFuLL)
  {
    v34 = *v33;
    *(v32 + 16) = *(v33 + 16);
    *v32 = v34;
  }

  else
  {
    *v32 = *v33;
    *(v32 + 8) = *(v33 + 8);
    *(v32 + 16) = *(v33 + 16);
  }

  v35 = (v30 + 31) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v31 + 31) & 0xFFFFFFFFFFFFFFF8;
  if (*(v36 + 8) < 0xFFFFFFFFuLL)
  {
    v37 = *v36;
    *(v35 + 16) = *(v36 + 16);
    *v35 = v37;
  }

  else
  {
    *v35 = *v36;
    *(v35 + 8) = *(v36 + 8);
    *(v35 + 16) = *(v36 + 16);
  }

  return a1;
}

Swift::Void __swiftcall UIKitNavigationController._observeScrollViewDidScroll(_:)(UIScrollView *a1)
{
  v2 = v1;
  if ((*(v1 + OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_isTransitioningToSize) & 1) == 0)
  {
    v8.receiver = v2;
    v8.super_class = type metadata accessor for UIKitNavigationController();
    [(UIScrollView *)&v8 _observeScrollViewDidScroll:a1];
    v4 = [v2 tabBarController];
    if (v4)
    {
      v5 = v4;
      type metadata accessor for UIKitTabBarController();
      v6 = swift_dynamicCastClass();
      if (!v6)
      {
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v2;
    PlatformBarUpdater.callAsFunction(context:)(v2, v6);
  }
}

double destroy for UIKitFlattenedButtonAdaptor(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = *(v3 + 56);
  v5 = type metadata accessor for UIButton.Configuration();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + a1 + (v7 | 7)) & ~(v7 | 7);
  if (*(v8 + 8))
  {
  }

  if (*(v8 + 56))
  {
  }

  v9 = (v7 + ((v8 + 103) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v7;
  if (!(*(v6 + 48))(v9, 1, v5))
  {
    (*(v6 + 8))(v9, v5);
  }

  v11 = *(v6 + 64);
  if (*(v6 + 84))
  {
    v12 = v11 + v9;
  }

  else
  {
    v12 = v11 + v9 + 1;
  }

  if (*(((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) >= 0xFFFFFFFFuLL)
  {
  }

  if (*(((v12 + 31) & 0xFFFFFFFFFFFFFFF8) + 8) >= 0xFFFFFFFFuLL)
  {
  }

  return result;
}

void PlatformBarUpdater.callAsFunction(context:)(void *a1, void *a2)
{
  v3 = v2;
  v43 = v3;
  v5 = *(v3 + 56);
  v6 = *(v3 + 64);
  v7 = v3 + 56;
  *v7 = a1;
  *(v7 + 8) = a2;
  v8 = a1;
  v9 = a2;

  v10 = (v7 - 32);
  swift_beginAccess();
  v11 = *(v7 - 32);
  v12 = 1 << *(v11 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v11 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  if (v14)
  {
LABEL_8:
    while (1)
    {
      outlined init with copy of ToolbarPlacement.Role(*(v11 + 48) + 40 * (__clz(__rbit64(v14)) | (v16 << 6)), v47);
      outlined init with copy of ToolbarPlacement.Role(v47, v45);
      if (v46 >= 7)
      {
        outlined destroy of ToolbarPlacement.Role(v45);
        LOBYTE(v18) = 0;
      }

      else
      {
        v18 = 0x78u >> v46;
      }

      v14 &= v14 - 1;
      swift_beginAccess();
      v19 = *v10;
      if (!*(*v10 + 16))
      {
        break;
      }

      v20 = specialized __RawDictionaryStorage.find<A>(_:)(v47);
      if ((v21 & 1) == 0)
      {
        break;
      }

      v22 = (*(v19 + 56) + 80 * v20);
      v48[0] = *v22;
      v24 = v22[2];
      v23 = v22[3];
      v25 = *(v22 + 57);
      v48[1] = v22[1];
      v48[2] = v24;
      *&v49[9] = v25;
      *v49 = v23;
      swift_endAccess();
      if (v48[0])
      {
        outlined init with copy of ToolbarAppearanceConfiguration(v48, v45);
        PlatformBarUpdater.scrollGeometry(edge:)(v18 & 1, v45);
        swift_beginAccess();
        InferredToolbarState.update(edge:to:)(v18 & 1, v45, v26, v27, v28, v29, v30, v31);
        swift_endAccess();
        outlined init with copy of ToolbarPlacement.Role(v47, v45);
        if (v46 > 6)
        {
          goto LABEL_23;
        }

        if (((1 << v46) & 0x56) != 0)
        {
          goto LABEL_33;
        }

        if (v46 == 3)
        {
          if (!*v7)
          {
            goto LABEL_33;
          }

          v37 = [*v7 toolbar];
          if (!v37)
          {
            goto LABEL_33;
          }

          v34 = v37;
          type metadata accessor for UIKitToolbar();
          v38 = swift_dynamicCastClass();
          if (v38)
          {
            specialized PlatformBarUpdater.updateBackgroundHost<A>(host:role:configuration:)(v38, v47, v48);
          }

          goto LABEL_27;
        }

        if (v46 == 5)
        {
          v32 = *(v43 + 64);
          if (v32)
          {
            v33 = v32;
            v34 = v33;
            v35 = 1;
            v36 = &selRef_tabBar;
            goto LABEL_26;
          }
        }

        else
        {
LABEL_23:
          if (v46)
          {
            outlined destroy of ToolbarPlacement.Role(v45);
            goto LABEL_33;
          }

          if (*v7)
          {
            v33 = *v7;
            v34 = v33;
            v35 = 0;
            v36 = &selRef_navigationBar;
LABEL_26:
            specialized PlatformBarUpdater.updateBackgroundHost<A>(host:role:configuration:)(v33, v47, v48, v35, v36);
LABEL_27:
          }
        }

LABEL_33:
        if (*&v49[16])
        {
          outlined init with copy of ToolbarPlacement.Role(v47, v45);
          swift_beginAccess();
          v40 = specialized Dictionary.subscript.modify(v44, v45);
          if (*(v39 + 8) == 1)
          {
            (v40)(v44, 0);
            swift_endAccess();
          }

          else
          {
            *(v39 + 64) = 0;
            (v40)(v44, 0);
            swift_endAccess();
          }

          outlined destroy of ToolbarAppearanceConfiguration(v48);
          outlined destroy of ToolbarPlacement.Role(v45);
        }

        else
        {
          outlined destroy of ToolbarAppearanceConfiguration(v48);
        }

        outlined destroy of ToolbarPlacement.Role(v47);
        if (!v14)
        {
          goto LABEL_4;
        }
      }

      else
      {
LABEL_21:
        outlined destroy of ToolbarPlacement.Role(v47);
        if (!v14)
        {
          goto LABEL_4;
        }
      }
    }

    swift_endAccess();
    goto LABEL_21;
  }

LABEL_4:
  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v15)
    {

      v41 = *(v43 + 56);
      v42 = *(v43 + 64);
      *v7 = 0;
      *(v7 + 8) = 0;

      return;
    }

    v14 = *(v11 + 64 + 8 * v17);
    ++v16;
    if (v14)
    {
      v16 = v17;
      goto LABEL_8;
    }
  }

  __break(1u);
}

void specialized Sequence.forEach(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = a1 + 56;
    do
    {
      v5 = *(v4 - 8);

      v5(a2);

      v4 += 32;
      --v2;
    }

    while (v2);
  }
}

uint64_t partial apply for closure #1 in FocusedValueModifier.Transform.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for FocusedValueModifier(0, v7, a3, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = v4 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  return closure #1 in FocusedValueModifier.Transform.updateValue()(a1, (v4 + v9), v11, v12, v6, v7);
}

id thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed NSCollectionLayoutEnvironment) -> (@owned NSCollectionLayoutSection?)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

uint64_t closure #1 in FocusedValueModifier.Transform.updateValue()(uint64_t a1, char *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v26 = a4;
  v25 = a3;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - v11;
  v13 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v25 - v18;
  v22 = type metadata accessor for FocusedValueModifier(0, a6, v20, v21);
  (*(v10 + 16))(v12, &a2[*(v22 + 28)], v9);
  if ((*(v13 + 48))(v12, 1, a6) == 1)
  {
    return (*(v10 + 8))(v12, v9);
  }

  (*(v13 + 32))(v19, v12, a6);
  if (a2[*(v22 + 32)] == 1)
  {
    *(a1 + 16) = v25;
    if (v26)
    {
      v24 = 3;
    }

    else
    {
      v24 = 2;
    }
  }

  else
  {
    v24 = (v26 & 1) != 0;
  }

  *(a1 + 8) = v24;
  (*(v13 + 16))(v16, v19, a6);
  swift_setAtWritableKeyPath();
  return (*(v13 + 8))(v19, a6);
}

void *closure #1 in UICollectionViewListCoordinator.createLayout(_:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v49 = a2;
  v9 = MEMORY[0x1E69E7D40];
  v10 = type metadata accessor for ShadowListDataSource(0, *((*MEMORY[0x1E69E7D40] & *a3) + 0x328), *(*((*MEMORY[0x1E69E7D40] & *a3) + 0x338) + 8), a4);
  v42 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  v47 = type metadata accessor for UICollectionLayoutListConfiguration();
  v46 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = UICollectionViewListCoordinator.customTopSpacing(offset:)(a1, v15, v16, v17);
  v19 = v18;
  v41 = UICollectionViewListCoordinator.customBottomSpacing(offset:)(a1, v18, v20, v21);
  v44 = v22;
  v50[0] = a4;
  v50[1] = a5;
  UICollectionViewListCoordinator.listConfiguration(offset:environment:)(a1, v50, v14);
  v43 = v19;
  if ((v19 & 1) == 0)
  {
    UICollectionLayoutListConfiguration.headerTopPadding.setter();
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSCollectionLayoutSection, 0x1E6995580);
  v45 = v14;
  v23 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  v24 = &a3[*((*v9 & *a3) + 0x120)];
  swift_beginAccess();
  [v23 setContentInsetsReference_];
  v25 = *((*v9 & *a3) + 0x88);
  swift_beginAccess();
  v26 = v42;
  v27 = *(v42 + 16);
  v49 = v25;
  v48 = v27;
  v27(v12, &a3[v25], v10);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v10);
  ListCoreDataSource.margins(forSectionAtOffset:)(a1, v10, WitnessTable);
  v42 = *(v26 + 8);
  (v42)(v12, v10);
  OptionalEdgeInsets.leading.getter();
  if (v29)
  {
    swift_beginAccess();
    OptionalEdgeInsets.leading.getter();
    if (v30)
    {
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      [v23 contentInsets];
      [v23 setContentInsets_];
    }
  }

  else
  {
    [v23 contentInsets];
    [v23 setContentInsets_];
  }

  v48(v12, &a3[v49], v10);
  ListCoreDataSource.margins(forSectionAtOffset:)(a1, v10, WitnessTable);
  v31 = v42;
  (v42)(v12, v10);
  OptionalEdgeInsets.trailing.getter();
  if (v32)
  {
    swift_beginAccess();
    OptionalEdgeInsets.trailing.getter();
    v33 = &selRef_setConfiguration_;
    if (v34)
    {
      swift_endAccess();
      v35 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
      goto LABEL_14;
    }

    swift_endAccess();
    v35 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
    [v23 contentInsets];
  }

  else
  {
    v35 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
    [v23 contentInsets];
    v33 = &selRef_setConfiguration_;
  }

  [v23 v33[15]];
LABEL_14:
  if ((v43 & 1) == 0)
  {
    [v23 _setPreBoundaryPadding_];
    [v23 v35[211]];
    [v23 v33[15]];
  }

  if ((v44 & 1) == 0)
  {
    [v23 _setPostBoundaryPadding_];
    [v23 v35[211]];
    [v23 v33[15]];
  }

  v48(v12, &a3[v49], v10);
  v36 = ShadowListDataSource.hasGlobalHeader.getter(v10);
  v31(v12, v10);
  if (v36)
  {
    [v23 v35[211]];
    [v23 v33[15]];
    [v23 v35[211]];
    [v23 v33[15]];
  }

  v37 = &a3[*((*MEMORY[0x1E69E7D40] & *a3) + 0x150)];
  if ((v37[8] & 1) == 0)
  {
    [v23 setInterGroupSpacing_];
  }

  (*(v46 + 8))(v45, v47);
  return v23;
}

uint64_t specialized FocusedValues.subscript.setter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Optional();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  (*(v8 + 16))(&v14 - v6, a1, v5);
  v11 = type metadata accessor for FocusedObjectKey(0, a2, v9, v10);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for FocusedObjectKey<A>, v11);
  return FocusedValues.subscript.setter(v7, v11, v11, WitnessTable);
}

uint64_t FocusedValues.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = type metadata accessor for FocusedValues.Entry(255, a3, a4, a4);
  v8 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v37 - v9;
  v40 = a3;
  v41 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v37 - v22;
  (*(v13 + 16))(v15, a1, v12, v21);
  if ((*(v16 + 48))(v15, 1, AssociatedTypeWitness) == 1)
  {
    v24 = *(v13 + 8);
    v24(a1, v12);
    return (v24)(v15, v12);
  }

  else
  {
    v38 = a1;
    (*(v16 + 32))(v23, v15, AssociatedTypeWitness);
    v26 = v4;
    v27 = *(v4 + 8);
    if ((v27 & 2) != 0)
    {
      if (one-time initialization token for scene != -1)
      {
        swift_once();
      }

      v28 = &static FocusedValueScope.scene;
    }

    else
    {
      if (one-time initialization token for view != -1)
      {
        swift_once();
      }

      v28 = &static FocusedValueScope.view;
    }

    v29 = *(v28 + 1);
    v30 = *(v28 + 2);
    v42 = *v28;
    v43 = v29;
    v44 = v30;
    (*(v16 + 16))(v19, v23, AssociatedTypeWitness);
    v37 = v26;
    if ((v27 & 2) != 0)
    {
      v31 = *(v26 + 16);
    }

    else
    {
      v31 = -1;
    }

    v32 = v27 & 1;
    v34 = v40;
    v33 = v41;
    FocusedValues.Entry.init(scope:value:inFocusedViewHierarchy:depth:)(&v42, v19, v32, v31, v40, v41, v10);
    (*(*(v39 - 8) + 56))(v10, 0, 1);
    v36 = type metadata accessor for FocusedValuePropertyKey(0, v34, v33, v35);

    swift_getWitnessTable(protocol conformance descriptor for FocusedValuePropertyKey<A>, v36, v37);
    PropertyList.subscript.setter();
    (*(v13 + 8))(v38, v12);
    return (*(v16 + 8))(v23, AssociatedTypeWitness);
  }
}

uint64_t UICollectionViewListCoordinator.customTopSpacing(offset:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *v4;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = type metadata accessor for ShadowListDataSource(0, *((*MEMORY[0x1E69E7D40] & v7) + 0x328), *(*((*MEMORY[0x1E69E7D40] & v7) + 0x338) + 8), a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  v13 = *((v8 & v7) + 0x88);
  swift_beginAccess();
  v24 = *(v10 + 16);
  v24(v12, &v5[v13], v9);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v9);
  v25 = a1;
  ListCoreDataSource.margins(forSectionAtOffset:)(a1, v9, WitnessTable);
  v15 = *(v10 + 8);
  v15(v12, v9);
  *&result = COERCE_DOUBLE(OptionalEdgeInsets.top.getter());
  if (v17)
  {
    if (!v25)
    {
      swift_beginAccess();
      v21 = OptionalEdgeInsets.top.getter();
      if ((v22 & 1) == 0)
      {
        v23 = v21;
        swift_endAccess();
        return v23;
      }

      swift_endAccess();
      goto LABEL_13;
    }

    v18 = v24;
    v24(v12, &v5[v13], v9);
    ListCoreDataSource.spacing(forSectionAtOffset:)(v25, v9, WitnessTable);
    v15(v12, v9);
    if (v28)
    {
      v18(v12, &v5[v13], v9);
      result = v25 - 1;
      if (__OFSUB__(v25, 1))
      {
        __break(1u);
        return result;
      }

      ListCoreDataSource.spacing(forSectionAtOffset:)(result, v9, WitnessTable);
      v15(v12, v9);
      if ((v28 & 1) == 0 && (v27 & 1) == 0)
      {
        v20 = v26;
        goto LABEL_20;
      }

      v19 = &v5[*((*MEMORY[0x1E69E7D40] & *v5) + 0x148)];
      if ((*(v19 + 9) & 1) == 0 && (v19[1] & 1) == 0)
      {
        v20 = *v19;
LABEL_20:
        *&result = v20 * 0.5;
        return result;
      }

LABEL_13:
      *&result = 0.0;
      return result;
    }

    if (v27)
    {
      *&result = 0.0;
    }

    else
    {
      *&result = v26 * 0.5;
    }
  }

  return result;
}

uint64_t FocusedValues.Entry.init(scope:value:inFocusedViewHierarchy:depth:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  *a7 = *a1;
  *(a7 + 8) = v11;
  *(a7 + 16) = v12;
  v13 = type metadata accessor for FocusedValues.Entry(0, a5, a6, a4);
  v14 = v13[9];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*(AssociatedTypeWitness - 8) + 32))(a7 + v14, a2, AssociatedTypeWitness);
  *(a7 + v13[10]) = a3;
  *(a7 + v13[11]) = a4;
  return result;
}

uint64_t instantiation function for generic protocol witness table for ShadowListDataSource<A>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>);
  *(a1 + 8) = result;
  return result;
}

uint64_t ListCoreDataSource.margins(forSectionAtOffset:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v12 - v9;
  ListDiffable.sectionIndex(atOffset:)(a1, a2, v6);
  (*(a3 + 112))(v10, a2, a3);
  return (*(v8 + 8))(v10, AssociatedTypeWitness);
}

void *one-time initialization function for scene()
{
  result = ViewIdentity.init()();
  static FocusedValueScope.scene = v1;
  qword_1EAB093D8 = 0x656E656353;
  unk_1EAB093E0 = 0xE500000000000000;
  return result;
}

uint64_t initializeWithCopy for FocusedValues.Entry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 16);
  v9 = v7 + 16;
  v10 = *(v7 + 80);
  v11 = (v10 + 24 + a1) & ~v10;
  v12 = (v10 + 24 + a2) & ~v10;

  v8(v11, v12, AssociatedTypeWitness);
  v13 = *(v9 + 48);
  v14 = v13 + v11;
  v15 = v13 + v12;
  *v14 = *v15;
  *((v14 & 0xFFFFFFFFFFFFFFF8) + 8) = *((v15 & 0xFFFFFFFFFFFFFFF8) + 8);
  return a1;
}

uint64_t destroy for FocusedValues.Entry(uint64_t a1, uint64_t a2)
{

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 8);
  v6 = (a1 + *(v4 + 80) + 24) & ~*(v4 + 80);

  return v5(v6, AssociatedTypeWitness);
}

uint64_t ShadowListDataSource.margins(forSectionAt:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v2, v5, v7);
  (*(*(a2 + 24) + 112))(a1, v5);
  return (*(v6 + 8))(v9, v5);
}

uint64_t closure #1 in FocusedValues.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a5;
  v36 = a4;
  v37 = a3;
  v8 = type metadata accessor for FocusedValues.Entry(255, a6, a7, a4);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v35 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  v15 = *(v8 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = (&v32 - v18);
  v20 = *(v10 + 16);
  v20(v14, a1, v9, v17);
  v21 = *(v15 + 48);
  if (v21(v14, 1, v8) == 1)
  {
    return (*(v10 + 8))(v14, v9);
  }

  v32 = v15;
  (*(v15 + 32))(v19, v14, v8);
  v34 = v19;
  v23 = *v19;
  if (one-time initialization token for scene != -1)
  {
    swift_once();
  }

  v24 = v9;
  if (static FocusedValueScope.scene == v23 && ((v25 = v35, (v20)(v35, v37, v24), v26 = v21(v25, 1, v8), v27 = *(v10 + 8), v27(v25, v24), v26 == 1) || *v36 < *(v34 + *(v8 + 44))))
  {
    v28 = v37;
    v27(v37, v24);
    v29 = v32;
    v30 = v34;
    (*(v32 + 16))(v28, v34, v8);
    (*(v29 + 56))(v28, 0, 1, v8);
    *v36 = *(v30 + *(v8 + 44));
  }

  else
  {
    if (one-time initialization token for view != -1)
    {
      swift_once();
    }

    v30 = v34;
    v29 = v32;
    if (static FocusedValueScope.view == v23 && *(v34 + *(v8 + 40)) == 1)
    {
      v31 = v33;
      (*(v10 + 8))(v33, v24);
      (*(v29 + 16))(v31, v30, v8);
      (*(v29 + 56))(v31, 0, 1, v8);
    }
  }

  return (*(v29 + 8))(v30, v8);
}

unint64_t CollectionViewListDataSource.margins(forSectionAt:)@<X0>(unint64_t result@<X0>, _OWORD *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = *(v2 + 64);
  if (*(v4 + 16) <= result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v5 = outlined init with copy of SectionAccumulator.Item(v4 + 152 * result + 32, v12);
  if (v13)
  {

    MEMORY[0x18D007000](v10, v6);
    ViewTraitCollection.value<A>(for:defaultValue:)();

    *&v11[9] = *&v9[9];
    v10[1] = v8;
    *v11 = *v9;
    v10[0] = v7;
    *a2 = v7;
    a2[1] = v8;
    a2[2] = *v11;
    *(a2 + 41) = *&v11[9];
  }

  else
  {
    MEMORY[0x18D007000](v5);
  }

  return outlined destroy of SectionAccumulator.Item(v12);
}

uint64_t UICollectionViewListCoordinator.customBottomSpacing(offset:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *v4;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x328);
  v10 = *(*((*MEMORY[0x1E69E7D40] & v7) + 0x338) + 8);
  v11 = type metadata accessor for ShadowSectionCollection(0, v9, *(v10 + 8), a4);
  v40 = *(v11 - 8);
  v41 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  v15 = type metadata accessor for ShadowListDataSource(0, v9, v10, v14);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v35 - v17;
  v19 = *((v8 & v7) + 0x88);
  swift_beginAccess();
  v20 = *(v16 + 16);
  v20(v18, &v5[v19], v15);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v15);
  v39 = a1;
  ListCoreDataSource.margins(forSectionAtOffset:)(a1, v15, WitnessTable);
  v21 = *(v16 + 8);
  v21(v18, v15);
  *&result = COERCE_DOUBLE(OptionalEdgeInsets.bottom.getter());
  if (v23)
  {
    v37 = v20;
    v20(v18, &v5[v19], v15);
    ShadowListDataSource.sectionIDs.getter(v15, v24, v13);
    v36 = v21;
    v21(v18, v15);
    v25 = v41;
    v26 = specialized ViewLeafView.platformView.getter(v41);
    *&result = COERCE_DOUBLE((*(v40 + 8))(v13, v25));
    if (__OFSUB__(v26, 1))
    {
      __break(1u);
    }

    else
    {
      v27 = v39;
      if (v26 - 1 == v39)
      {
        swift_beginAccess();
        v28 = OptionalEdgeInsets.bottom.getter();
        if ((v29 & 1) == 0)
        {
          v34 = v28;
          swift_endAccess();
          return v34;
        }

        swift_endAccess();
        goto LABEL_16;
      }

      v30 = v37;
      v37(v18, &v5[v19], v15);
      ListCoreDataSource.spacing(forSectionAtOffset:)(v27, v15, WitnessTable);
      v31 = v36;
      v36(v18, v15);
      if ((v44 & 1) == 0)
      {
        if (v43)
        {
          goto LABEL_16;
        }

        goto LABEL_17;
      }

      v30(v18, &v5[v19], v15);
      result = v27 + 1;
      if (!__OFADD__(v27, 1))
      {
        ListCoreDataSource.spacing(forSectionAtOffset:)(result, v15, WitnessTable);
        v31(v18, v15);
        if (v44 & 1) != 0 || (v43)
        {
          v32 = &v5[*((*MEMORY[0x1E69E7D40] & *v5) + 0x148)];
          if ((*(v32 + 9) & 1) == 0 && (v32[1] & 1) == 0)
          {
            v33 = *v32;
LABEL_18:
            *&result = v33 * 0.5;
            return result;
          }

LABEL_16:
          *&result = 0.0;
          return result;
        }

LABEL_17:
        v33 = v42;
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t ListCoreDataSource.spacing(forSectionAtOffset:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v12 - v9;
  ListDiffable.sectionIndex(atOffset:)(a1, a2, v6);
  (*(a3 + 104))(v10, a2, a3);
  return (*(v8 + 8))(v10, AssociatedTypeWitness);
}

uint64_t _UIHostingView.focusedValues.setter(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x1D0);
  *v3 = *a1;
  v3[8] = v2;
  *(v3 + 1) = *(a1 + 16);

  return _UIHostingView.focusedValues.didset(256, v4, v5, v6);
}

uint64_t ShadowListDataSource.spacing(forSectionAt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20[1] = a3;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(v6 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = v20 - v10;
  v12 = *(v5 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v16, v3, v5, v14);
  updated = type metadata accessor for ShadowListUpdateRecorder(0, v5, v7, v17);
  ShadowListUpdateRecorder.initialIndex(_:)(a1, updated, v11);
  (*(v6 + 104))(v11, v5, v6);
  (*(v9 + 8))(v11, AssociatedTypeWitness);
  return (*(v12 + 8))(v16, v5);
}

uint64_t _UIHostingView.focusedValues.didset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _UIHostingView(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v5);

  return ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
}

unint64_t CollectionViewListDataSource.spacing(forSectionAt:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = *(v2 + 64);
  if (*(v4 + 16) <= result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  outlined init with copy of SectionAccumulator.Item(v4 + 152 * result + 32, v5);
  if (v6)
  {
    ViewTraitCollection.effectiveListSectionSpacing.getter(a2);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 256;
  }

  return outlined destroy of SectionAccumulator.Item(v5);
}

void *ViewTraitCollection.effectiveListSectionSpacing.getter@<X0>(uint64_t a1@<X8>)
{
  v7 = *v1;
  result = ViewTraitCollection.value<A>(for:defaultValue:)();
  if (v10)
  {
    result = ViewTraitCollection.value<A>(for:defaultValue:)();
    v4 = v7;
    v5 = v7 ^ 1;
    v6 = v7;
  }

  else
  {
    v5 = 0;
    v6 = v9;
    v4 = v8;
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 9) = v5;
  return result;
}

uint64_t UICollectionViewListCoordinator.listConfiguration(offset:environment:)@<X0>(Swift::Int a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v120 = a1;
  v121 = a3;
  v6 = *v4;
  v7 = *MEMORY[0x1E69E7D40];
  v105 = *MEMORY[0x1E69E7D40] & *v4;
  v109 = type metadata accessor for UICollectionLayoutListConfiguration.ContentHuggingElements();
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v107 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v112 = &v90 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v92 = &v90 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v91 = &v90 - v14;
  _s5UIKit25UIBackgroundConfigurationVSgMaTm_0(0, &lazy cache variable for type metadata for UICollectionLayoutListConfiguration.ContentHuggingElements?, MEMORY[0x1E69DC298], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v93 = &v90 - v16;
  v99 = type metadata accessor for UICollectionLayoutListConfiguration.FooterMode();
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v97 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v94 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *((v7 & v6) + 0x328);
  v103 = *((v7 & v6) + 0x338);
  v20 = *(v103 + 8);
  v104 = v19;
  v22 = type metadata accessor for ShadowListDataSource(0, v19, v20, v21);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v90 - v24;
  v26 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v90 - v31;
  v33 = a2[1];
  v101 = *a2;
  v100 = v33;
  UICollectionViewListCoordinator.listAppearance.getter(v34, v35, v36, v37);
  v38 = *MEMORY[0x1E69DC238];
  v118 = *(v27 + 104);
  (v118)(v29, v38, v26);
  v114 = v32;
  v39 = v120;
  LOBYTE(a2) = static UICollectionLayoutListConfiguration.Appearance.== infix(_:_:)();
  v40 = *(v27 + 8);
  v111 = v27 + 8;
  v110 = v40;
  v40(v29, v26);
  if (a2)
  {
    v41 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x88);
    swift_beginAccess();
    (*(v23 + 16))(v25, &v4[v41], v22);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v22);
    ListCoreDataSource.margins(forSectionAtOffset:)(v39, v22, WitnessTable);
    v119 = v23;
    (*(v23 + 8))(v25, v22);
    v122 = v125;
    v123 = v126;
    *v124 = *v127;
    *&v124[9] = *&v127[9];
    v43 = OptionalEdgeInsets.leading.getter();
    if (v44)
    {
LABEL_3:
      v39 = v120;
      v23 = v119;
      goto LABEL_5;
    }

    v39 = v120;
    v23 = v119;
    if ((v43 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      v122 = v125;
      v123 = v126;
      *v124 = *v127;
      *&v124[9] = *&v127[9];
      v87 = OptionalEdgeInsets.trailing.getter();
      if (v88)
      {
        goto LABEL_3;
      }

      v39 = v120;
      v23 = v119;
      if ((v87 & 0x7FFFFFFFFFFFFFFFLL) == 0)
      {
        v89 = v114;
        v110(v114, v26);
        (v118)(v89, *MEMORY[0x1E69DC250], v26);
      }
    }
  }

LABEL_5:
  (*(v27 + 16))(v29, v114, v26);
  UICollectionLayoutListConfiguration.init(appearance:)();
  v45 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x88);
  swift_beginAccess();
  v46 = *(v23 + 16);
  v118 = v45;
  v117 = v23 + 16;
  v116 = v46;
  v46(v25, &v45[v4], v22);
  v102 = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v22);
  ListCoreDataSource.cornerRadius(forSectionAtOffset:)(v39, v22, v102);
  v47 = *(v23 + 8);
  v119 = v23 + 8;
  v115 = v47;
  v47(v25, v22);
  UICollectionLayoutListConfiguration._cornerRadius.setter();
  v48 = v120;
  if (*&v4[OBJC_IVAR____TtC7SwiftUI39UICollectionViewListCoordinatorBaseBase_backgroundColor])
  {
    v49 = [objc_opt_self() clearColor];
    UICollectionLayoutListConfiguration.backgroundColor.setter();
  }

  v106 = v26;
  v113 = v4;
  v50 = v118;
  v51 = v116;
  v116(v25, &v118[v4], v22);
  v52 = v51;
  swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v22);
  LOBYTE(v51) = ListDiffable.hasHeader(forSectionAtOffset:)(v48);
  v53 = v22;
  v54 = v22;
  v55 = v115;
  v115(v25, v53);
  v56 = MEMORY[0x1E69DC280];
  if ((v51 & 1) == 0)
  {
    v56 = MEMORY[0x1E69DC290];
  }

  (*(v95 + 104))(v94, *v56, v96);
  UICollectionLayoutListConfiguration.headerMode.setter();
  v52(v25, &v50[v113], v54);
  v57 = ListDiffable.hasFooter(forSectionAtOffset:)(v120);
  v55(v25, v54);
  v58 = MEMORY[0x1E69DC270];
  if (!v57)
  {
    v58 = MEMORY[0x1E69DC278];
  }

  (*(v98 + 104))(v97, *v58, v99);
  v59 = v113;
  UICollectionLayoutListConfiguration.footerMode.setter();
  v60 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v61 = swift_allocObject();
  v62 = v104;
  v61[2] = v104;
  v63 = v105;
  v64 = *(v105 + 816);
  v65 = v103;
  v61[3] = v64;
  v61[4] = v65;
  v66 = *(v63 + 832);
  v61[5] = v66;
  v61[6] = v60;
  UICollectionLayoutListConfiguration.itemSeparatorHandler.setter();
  v67 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v68 = swift_allocObject();
  v68[2] = v62;
  v68[3] = v64;
  v68[4] = v65;
  v68[5] = v66;
  v68[6] = v67;
  UICollectionLayoutListConfiguration.leadingSwipeActionsConfigurationProvider.setter();
  v69 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v70 = swift_allocObject();
  v70[2] = v62;
  v70[3] = v64;
  v70[4] = v65;
  v70[5] = v66;
  v70[6] = v69;
  v70[7] = v101;
  v70[8] = v100;

  UICollectionLayoutListConfiguration.trailingSwipeActionsConfigurationProvider.setter();
  v116(v25, &v118[v59], v54);
  LOBYTE(v69) = ShadowListDataSource.hasGlobalHeader.getter(v54);
  v115(v25, v54);
  v71 = v109;
  v72 = v108;
  if (v69)
  {
    UICollectionLayoutListConfiguration.headerTopPadding.setter();
    v73 = v91;
    static UICollectionLayoutListConfiguration.ContentHuggingElements.supplementaryHeader.getter();
    v105 = UICollectionLayoutListConfiguration.contentHuggingElements.modify();
    (*(v72 + 16))(v112);
    lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type UICollectionLayoutListConfiguration.ContentHuggingElements and conformance UICollectionLayoutListConfiguration.ContentHuggingElements, MEMORY[0x1E69DC298], MEMORY[0x1E69DC2A0]);
    v74 = v92;
    dispatch thunk of SetAlgebra.intersection(_:)();
    if (dispatch thunk of SetAlgebra.isEmpty.getter())
    {
      v75 = *(v72 + 8);
      v75(v74, v71);
      v75(v73, v71);
      v76 = 1;
      v77 = v93;
    }

    else
    {
      dispatch thunk of SetAlgebra.subtract(_:)();
      (*(v72 + 8))(v73, v71);
      v78 = v74;
      v77 = v93;
      (*(v72 + 32))(v93, v78, v71);
      v76 = 0;
    }

    (*(v72 + 56))(v77, v76, 1, v71);
    outlined destroy of UICollectionLayoutListConfiguration.ContentHuggingElements?(v77, &lazy cache variable for type metadata for UICollectionLayoutListConfiguration.ContentHuggingElements?, MEMORY[0x1E69DC298]);
    (v105)(&v122, 0);
  }

  v79 = v112;
  UICollectionLayoutListConfiguration.contentHuggingElements.getter();
  v80 = v107;
  static UICollectionLayoutListConfiguration.ContentHuggingElements.supplementaryHeader.getter();
  lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type UICollectionLayoutListConfiguration.ContentHuggingElements and conformance UICollectionLayoutListConfiguration.ContentHuggingElements, MEMORY[0x1E69DC298], MEMORY[0x1E69DC2A0]);
  v81 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v82 = *(v72 + 8);
  v82(v80, v71);
  v82(v79, v71);
  UICollectionViewListCoordinatorBase.sectionHeadersShouldHugContent.setter(v81 & 1);
  v116(v25, &v118[v59], v54);
  v83 = &v122;
  ListCoreDataSource.spacing(forSectionAtOffset:)(v120, v54, v102);
  v115(v25, v54);
  if (BYTE9(v122) == 1 && (v83 = (v59 + *((*MEMORY[0x1E69E7D40] & *v59) + 0x148)), *(v83 + 9) == 1))
  {
    v84 = v106;
  }

  else
  {
    v84 = v106;
    if ((*(v83 + 8) & 1) != 0 && *v83)
    {
      v85 = v106;
      UICollectionLayoutListConfiguration._hasCompactSectionSpacing.setter();
      v84 = v85;
    }
  }

  return (v110)(v114, v84);
}

uint64_t sub_18BFD93D4()
{

  return swift_deallocObject();
}

uint64_t sub_18BFD940C()
{

  return swift_deallocObject();
}

void type metadata accessor for UIBackgroundConfiguration?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void _s5UIKit25UIBackgroundConfigurationVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

Swift::Bool __swiftcall ListDiffable.hasHeader(forSectionAtOffset:)(Swift::Int forSectionAtOffset)
{
  v3 = v2;
  v4 = v1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v11 - v8;
  ListDiffable.sectionIndex(atOffset:)(forSectionAtOffset, v4, v3);
  LOBYTE(v3) = (*(v3 + 64))(v9, v4, v3);
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  return v3 & 1;
}

uint64_t ShadowListDataSource.hasHeader(forSectionAt:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  updated = type metadata accessor for ShadowListUpdateRecorder(0, *(a2 + 16), *(*(a2 + 24) + 8), a4);

  return a3(a1, updated);
}

uint64_t ShadowListUpdateRecorder.hasHeader(forSectionAt:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v11 - v8;
  ShadowListUpdateRecorder.initialIndex(_:)(a1, a2, &v11 - v8);
  LOBYTE(v4) = (*(v4 + 64))(v9, v5, v4);
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  return v4 & 1;
}

Swift::Bool __swiftcall CollectionViewListDataSource.hasHeader(forSectionAt:)(Swift::Int forSectionAt)
{
  if (forSectionAt < 0)
  {
    return 0;
  }

  v2 = *(v1 + 64);
  if (*(v2 + 16) <= forSectionAt)
  {
    return 0;
  }

  outlined init with copy of SectionAccumulator.Item(v2 + 152 * forSectionAt + 32, v14);
  if (!v15)
  {
    return 0;
  }

  v5[0] = v14[0];
  v5[1] = v14[1];
  v6 = v15;
  v10 = v19;
  v11 = v20;
  v12 = v21;
  v13 = v22;
  v7 = v16;
  v8 = v17;
  v9 = v18;
  v3 = *(&v20 + 1);
  outlined destroy of SectionAccumulator.Item(v5);
  return v3 > 0;
}

Swift::Bool __swiftcall ListDiffable.hasFooter(forSectionAtOffset:)(Swift::Int forSectionAtOffset)
{
  v3 = v2;
  v4 = v1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v11 - v8;
  ListDiffable.sectionIndex(atOffset:)(forSectionAtOffset, v4, v3);
  LOBYTE(v3) = (*(v3 + 72))(v9, v4, v3);
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  return v3 & 1;
}

uint64_t ShadowListUpdateRecorder.hasFooter(forSectionAt:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v11 - v8;
  ShadowListUpdateRecorder.initialIndex(_:)(a1, a2, &v11 - v8);
  LOBYTE(v4) = (*(v4 + 72))(v9, v5, v4);
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  return v4 & 1;
}

Swift::Bool __swiftcall CollectionViewListDataSource.hasFooter(forSectionAt:)(Swift::Int forSectionAt)
{
  if (forSectionAt < 0)
  {
    return 0;
  }

  v2 = *(v1 + 64);
  if (*(v2 + 16) <= forSectionAt)
  {
    return 0;
  }

  outlined init with copy of SectionAccumulator.Item(v2 + 152 * forSectionAt + 32, v14);
  if (!v15)
  {
    return 0;
  }

  v5[0] = v14[0];
  v5[1] = v14[1];
  v6 = v15;
  v10 = v19;
  v11 = v20;
  v12 = v21;
  v13 = v22;
  v7 = v16;
  v8 = v17;
  v9 = v18;
  v3 = v21;
  outlined destroy of SectionAccumulator.Item(v5);
  return v3 > 0;
}

Swift::Void __swiftcall UIKitNavigationController._observeScrollViewGeometryAffectingContentBottomDidChange(_:)(UIScrollView *a1)
{
  v2 = v1;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for UIKitNavigationController();
  [(UIScrollView *)&v8 _observeScrollViewGeometryAffectingContentBottomDidChange:a1];
  v4 = [v2 tabBarController];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for UIKitTabBarController();
    v6 = swift_dynamicCastClass();
    if (!v6)
    {
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v2;
  PlatformBarUpdater.callAsFunction(context:)(v2, v6);
}

Swift::Void __swiftcall UpdateCoalescingCollectionView.invalidateStackBehaviorLayoutIfNeeded()()
{
  if (v0[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_isLazyStackBehaviorEnabled] == 1)
  {
    v1 = &v0[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView__layoutContainer];
    if (swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_7;
    }

    v2 = specialized UIView.firstAncestorWhere(_:)(v0);
    if (!v2 || (swift_getObjectType(), (v3 = swift_conformsToProtocol2()) == 0))
    {

      v3 = 0;
    }

    *(v1 + 1) = v3;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    if (swift_unknownObjectWeakLoadStrong())
    {
LABEL_7:
      v4 = *(v1 + 1);
      ObjectType = swift_getObjectType();
      (*(v4 + 8))(ObjectType, v4);

      swift_unknownObjectRelease();
    }
  }
}

id @objc UICollectionViewListCoordinatorBase.collectionView(_:cellForItemAt:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = a1;
  v14 = UICollectionViewListCoordinatorBase.collectionView(_:cellForItemAt:)(v10, v9, v12, v13);

  (*(v7 + 8))(v9, v6);

  return v14;
}

id UICollectionViewListCoordinatorBase.collectionView(_:cellForItemAt:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *v4;
  v9 = MEMORY[0x1E69E7D40];
  v10 = *MEMORY[0x1E69E7D40];
  v11 = type metadata accessor for ShadowListDataSource(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x60), *(*((*MEMORY[0x1E69E7D40] & *v4) + 0x70) + 8), a4);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25[-v13];
  v15 = *((v10 & v8) + 0x88);
  swift_beginAccess();
  (*(v12 + 16))(v14, &v5[v15], v11);
  v26 = v5;
  v27 = a1;
  v28 = a2;
  v16 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x1E69DC7F8);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v11);
  ListCoreDataSource.visitContent<A>(atRow:visitor:)(a2, partial apply for closure #1 in UICollectionViewListCoordinatorBase.collectionView(_:cellForItemAt:), v25, v11, v16, WitnessTable, &v29);
  (*(v12 + 8))(v14, v11);
  v18 = v29;
  if ((v5[*((*v9 & *v5) + 0xD8)] & 1) == 0)
  {
    UICollectionViewListCoordinatorBase.mirrorSelection(collectionView:indexPath:)(a1, a2);
  }

  if (v18)
  {
    return v18;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = MEMORY[0x18D00C850](0x6C65437974706D45, 0xE90000000000006CLL);

  [a1 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v21];

  v22 = MEMORY[0x18D00C850](0x6C65437974706D45, 0xE90000000000006CLL);

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v24 = [a1 dequeueReusableCellWithReuseIdentifier:v22 forIndexPath:isa];

  return v24;
}

uint64_t ListCoreDataSource.visitContent<A>(atRow:visitor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  return ListCoreDataSource.visitContent<A>(atRow:visitor:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in ListCoreDataSource.visitRowAt<A>(_:visitor:), _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF, a7);
}

{
  return ListCoreDataSource.visitContent<A>(atRow:visitor:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in ListCoreDataSource.visitRowAt<A>(_:visitor:), _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF, a7);
}

uint64_t ListCoreDataSource.visitContent<A>(atRow:visitor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (*a8)(uint64_t, char *, uint64_t, void)@<X7>, uint64_t a9@<X8>)
{
  v22 = a8;
  v23 = a5;
  v24 = a7;
  v21 = a3;
  v14 = *(a6 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v21 - v17;
  v19 = ListDiffable.rowIndex(at:)(&v21 - v17, a1, a4, v14);
  ListCoreDataSource.visitRowAt<A>(_:visitor:)(v18, v19, a2, v21, a4, v23, a6, v24, a9, v22);
  return (*(v16 + 8))(v18, AssociatedTypeWitness);
}

uint64_t ListDiffable.rowIndex(at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v16 - v8;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  v14 = IndexPath.section.getter();
  ListDiffable.sectionIndex(atOffset:)(v14, a3, a4);
  (*(v11 + 16))(v17, v13, v10);
  (*(a4 + 80))(v13, a3, a4);
  IndexPath.row.getter();
  swift_getAssociatedConformanceWitness();
  Collection.index(atOffset:)();
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  (*(v11 + 8))(v13, v10);
  return v18;
}

uint64_t assignWithCopy for NavigationStackCore.NavigationStackRepresentableRoot(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  swift_weakCopyAssign();
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  v4 = *(a2 + 80);
  if (!*(a1 + 80))
  {
    if (v4)
    {
      *(a1 + 80) = v4;
      *(a1 + 88) = *(a2 + 88);
      (**(v4 - 8))(a1 + 56, a2 + 56);
      return a1;
    }

LABEL_7:
    v6 = *(a2 + 56);
    v7 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v7;
    *(a1 + 56) = v6;
    return a1;
  }

  v5 = (a1 + 56);
  if (!v4)
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_1(v5, (a2 + 56));
  return a1;
}

uint64_t protocol witness for Collection.index(_:offsetBy:) in conformance ShadowRowCollection<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for ShadowRowCollection<A>, a3);

  return BidirectionalCollection.index(_:offsetBy:)();
}

uint64_t ListCoreDataSource.visitRowAt<A>(_:visitor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, void (*a10)(uint64_t, char *, uint64_t, void))
{
  v31 = a6;
  v32 = a4;
  v30 = a3;
  v27 = a2;
  v33 = a9;
  v34 = a10;
  v35 = a8;
  type metadata accessor for _RowVisitationContext(255, a5, a7, a4);
  v28 = type metadata accessor for Optional();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v14 = &v27 - v13;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](v20);
  v23 = &v27 - v22;
  v24 = *(AssociatedTypeWitness - 8);
  (*(v24 + 16))(&v27 - v22, a1, AssociatedTypeWitness, v21);
  *&v23[*(TupleTypeMetadata2 + 48)] = v27;
  (*(v17 + 16))(v19, v23, TupleTypeMetadata2);
  (*(a7 + 224))(v19, *&v19[*(TupleTypeMetadata2 + 48)], a5, a7);
  (*(v24 + 8))(v19, AssociatedTypeWitness);
  v37 = a5;
  v38 = v31;
  v39 = a7;
  v40 = v30;
  v41 = v32;
  v25 = v28;
  v34(v35, v36, v28, MEMORY[0x1E69E73E0]);
  (*(v29 + 8))(v14, v25);
  return (*(v17 + 8))(v23, TupleTypeMetadata2);
}

uint64_t type metadata completion function for _RowVisitationContext(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v6 = &v5;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      v8 = MEMORY[0x1E69E5CE8] + 64;
      swift_getAssociatedTypeWitness();
      result = type metadata accessor for Optional();
      if (v4 <= 0x3F)
      {
        v9 = *(result - 8) + 64;
        v10 = &unk_18CD71F98;
        v11 = &unk_18CD71FB0;
        v12 = &unk_18CD71FB0;
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_18BFDB0FC()
{

  return swift_deallocObject();
}

uint64_t lazy protocol witness table accessor for type ListCollectionViewHeaderFooter and conformance ListCollectionViewCellBase<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t specialized NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(uint64_t *a1, uint64_t *a2, void *a3, void *a4, int a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t *), uint64_t a9, void (*a10)(void *, void, uint64_t, void **, uint64_t, void *, void, void *, _DWORD), uint64_t (*a11)(uint64_t *), void (*a12)(uint64_t *), void (*a13)(int64_t), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t *a25, uint64_t a26, void *a27)
{
  v277 = a8;
  v29 = v27;
  v279 = a5;
  v283 = a4;
  v285 = a2;
  v286 = a3;
  type metadata accessor for UINavigationPresentationAdaptor?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = v270 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = v270 - v35;
  v284 = a1;
  outlined init with copy of NavigationState.Base(a1, v290);
  v37 = MEMORY[0x1E69E7D40];
  v38 = (v29 + *((*MEMORY[0x1E69E7D40] & *v29) + 0x70));
  swift_beginAccess();
  v39 = v38[2];
  if (!v39)
  {
    goto LABEL_242;
  }

  v278 = a16;
  v281 = a15;
  v280 = a14;
  v282 = a11;
  v42 = v38;
  v40 = *v38;
  v41 = v42[1];
  outlined init with copy of NavigationState.Base(v290, v292);
  v43 = swift_allocObject();
  v43[2] = v40;
  v43[3] = v41;
  v43[4] = v39;
  *(&v292[28] + 1) = a7;
  *&v292[29] = v43;
  *(&v292[29] + 1) = v39;
  outlined init with copy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v292, v294, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);

  outlined copy of NavigationStrategy_Phone?(v40, v41, v39);
  specialized NavigationState.StackContent.Views.ViewsSequence.unusedRoots()();
  v45 = v44;
  outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v292, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
  outlined destroy of NavigationState.StackContent.Views(v290);
  v46 = *v37 & *v29;
  v47 = *(v46 + 0x78);
  if (*(v29 + v47) != 2)
  {
    static Log.navigation.getter();
    v55 = type metadata accessor for Logger();
    v33 = *(v55 - 8);
    if ((*(v33 + 6))(v36, 1, v55) == 1)
    {
      outlined destroy of UINavigationPresentationAdaptor?(v36, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
    }

    else
    {
      v79 = v45;
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&dword_18BD4A000, v80, v81, "Updating stack views in place after end-user triggered transition or isTransitioningViewControllers", v82, 2u);
        MEMORY[0x18D0110E0](v82, -1, -1);
      }

      v83 = *(v33 + 1);
      v33 += 8;
      v83(v36, v55);
      v45 = v79;
    }

    specialized NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:)(v286, v294, v283, v282);
    v37 = *(v29 + v47);
    if (*(v29 + v47) != 2)
    {
      *(v29 + v47) = 2;
      v84 = NavigationState.Base.count.getter();
      v85 = NavigationState.Base.count.getter();
      v86 = __OFSUB__(v84, v85);
      v87 = v84 - v85;
      if (v86)
      {
        goto LABEL_219;
      }

      v88 = v37 & 0x100;
      if ((v37 & 0x100) != 0)
      {
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v90 = Strong;
          swift_beginAccess();
          v91 = v90[8];
          v290[6] = v90[7];
          v290[7] = v91;
          v290[8] = v90[9];
          *(&v290[8] + 10) = *(v90 + 154);
          v92 = v90[4];
          v290[2] = v90[3];
          v290[3] = v92;
          v93 = v90[6];
          v290[4] = v90[5];
          v290[5] = v93;
          v94 = v90[2];
          v290[0] = v90[1];
          v290[1] = v94;
          outlined init with copy of NavigationState.StackContent?(v290, v287, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState);

          v292[7] = v290[7];
          v292[8] = v290[8];
          *(&v292[8] + 10) = *(&v290[8] + 10);
          v292[2] = v290[2];
          v292[3] = v290[3];
          v292[4] = v290[4];
          v292[5] = v290[5];
          v292[6] = v290[6];
          v292[0] = v290[0];
          v292[1] = v290[1];
          if (getEnumTag for AccessibilityActionCategory.Category(v292) != 1)
          {
            v287[6] = v292[6];
            v287[7] = v292[7];
            v288[0] = v292[8];
            *(v288 + 10) = *(&v292[8] + 10);
            v287[2] = v292[2];
            v287[3] = v292[3];
            v287[4] = v292[4];
            v287[5] = v292[5];
            v287[0] = v292[0];
            v287[1] = v292[1];
            v95 = v29 + *((*MEMORY[0x1E69E7D40] & *v29) + 0x60);
            v96 = NavigationState.pendingPopCount(in:)(*v95, v95[8], *(v95 + 2));
            outlined destroy of PPTTestCase?(v290, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState);
            v86 = __OFADD__(v87, v96);
            v87 += v96;
            if (v86)
            {
              goto LABEL_233;
            }
          }
        }
      }

      if (v87 >= 1)
      {
        v277 = v45;
        v97 = -v87;
        v98 = v29 + *((*MEMORY[0x1E69E7D40] & *v29) + 0x68);
        if ((v37 & 1) == 0)
        {
          outlined init with copy of NavigationAuthority(v98, v292);
          NavigationAuthority.controllerCache.getter();
          v108 = v156;
          outlined destroy of NavigationAuthority(v292);
          specialized previousPositions #1 <A>() in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(v285, v29, v281, v290);
          v157 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
          specialized BidirectionalCollection.index(_:offsetBy:limitedBy:)(0, 1, 0, 2, v97, v157, v158 & 1, v159, v160);
          if (v164 != 0xFF)
          {
            v97 = v161;
            v45 = v162;
            goto LABEL_94;
          }

          goto LABEL_93;
        }

        outlined init with copy of NavigationAuthority(v98, v292);
        NavigationAuthority.controllerCache.getter();
        v45 = v99;
        outlined destroy of NavigationAuthority(v292);
        v37 = v29;
        specialized previousPositions #1 <A>() in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(v285, v29, v281, v290);
        v100 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
        specialized BidirectionalCollection.index(_:offsetBy:limitedBy:)(0, 1, 0, 2, -v87, v100, v101 & 1, v102, v103);
        if (v107 != 0xFF)
        {
          v108 = v104;
          v47 = v105;
          goto LABEL_82;
        }

        goto LABEL_81;
      }
    }

LABEL_198:
    if (v45)
    {
      v250 = *v29;
      v251 = *MEMORY[0x1E69E7D40];
      goto LABEL_216;
    }

    return outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v294, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
  }

  v289 = 1;
  v48 = *(v46 + 128);
  *(v29 + v48) = 1;
  if ((*(v29 + *((*v37 & *v29) + 0x98)) & 1) == 0)
  {
    goto LABEL_12;
  }

  v49 = [v286 view];
  if (!v49)
  {
    goto LABEL_246;
  }

  v50 = v49;
  v51 = [v49 window];

  if (v51 && (v52 = [v51 windowScene], v51, v52))
  {
    if ([objc_opt_self() areAnimationsEnabled])
    {
      if ([v52 activationState])
      {
        v53 = [v52 activationState];

        v54 = v53 == 1;
      }

      else
      {

        v54 = 1;
      }

      v276 = v54;
    }

    else
    {

      v276 = 0;
    }
  }

  else
  {
LABEL_12:
    v276 = 0;
  }

  v274 = v48;
  outlined init with copy of NavigationState.StackContent(v285, v292);
  v47 = NavigationState.StackContent.change(from:)(v292);
  v57 = v56;
  outlined destroy of PPTTestCase?(v292, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
  v270[1] = 0;
  v275 = a10;
  static Log.navigation.getter();
  v58 = type metadata accessor for Logger();
  v59 = *(v58 - 8);
  if ((*(v59 + 48))(v33, 1, v58) != 1)
  {
    v272 = v57;
    v273 = v47;
    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v271 = v29;
      v270[0] = v112;
      *&v290[0] = v112;
      *v111 = 136315138;
      *&v292[0] = v273;
      BYTE8(v292[0]) = v272 & 1;
      v113 = String.init<A>(describing:)();
      v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v114, v290);

      *(v111 + 4) = v115;
      v37 = MEMORY[0x1E69E7D40];
      _os_log_impl(&dword_18BD4A000, v109, v110, "Updating stack content for change: %s", v111, 0xCu);
      v116 = v270[0];
      __swift_destroy_boxed_opaque_existential_1(v270[0]);
      v29 = v271;
      MEMORY[0x18D0110E0](v116, -1, -1);
      MEMORY[0x18D0110E0](v111, -1, -1);
    }

    (*(v59 + 8))(v33, v58);
    v47 = v273;
    if ((v272 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_45:
    if (v47 > 1)
    {
      v277 = v45;
      if (v47 == 2)
      {
        goto LABEL_61;
      }

      v165 = *((*v37 & *v29) + 0x68);
      outlined init with copy of NavigationAuthority(v29 + v165, v292);
      NavigationAuthority.controllerCache.getter();
      outlined destroy of NavigationAuthority(v292);
      v166 = *(v29 + *((*MEMORY[0x1E69E7D40] & *v29) + 0x60) + 8);
      if (v166 >= 3)
      {
        LOBYTE(v166) = 3;
      }

      LOBYTE(v292[0]) = v166;
      NavigationHostingControllerCache_UIKit.ejectAll(in:)(v292);

      v167 = v286;

      *&v290[0] = 0;
      BYTE8(v290[0]) = 1;
      outlined init with copy of NavigationAuthority(v29 + v165, v292);
      NavigationAuthority.controllerCache.getter();
      v169 = v168;
      v170 = outlined destroy of NavigationAuthority(v292);
      MEMORY[0x1EEE9AC00](v170);
      v270[-6] = v294;
      v270[-5] = v283;
      v270[-4] = v29;
      v270[-3] = v167;
      v268 = v290;
      v171 = v29;
      v172 = v167;
      LOBYTE(v268) = 0;
      v37 = MEMORY[0x1E69E7D40];
      v275(v167, 0, a9, &v270[-8], v169, v171, v279 & 1, v172, v268);

      v45 = v277;
      goto LABEL_212;
    }

    if (v47)
    {
      specialized NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:)(v286, v294, v283, v282);
      goto LABEL_212;
    }

    outlined init with copy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v294, v290, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
    specialized Collection.dropLast(_:)(1, v292);
    specialized NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:)(v286, v292, v283, v277);
    outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v292, type metadata accessor for Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>);
    specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
    if ((v119 & 1) == 0 || v118 != 2 || v117)
    {
      specialized NavigationState.StackContent.Views.ViewsSequence.index(before:)(0, 1, 0, 2);
      specialized NavigationState.StackContent.Views.ViewsSequence.subscript.getter(v121, v120 & 1, v122, v123);
      v124 = MEMORY[0x1E69E7D40];
      outlined init with copy of NavigationAuthority(v29 + *((*MEMORY[0x1E69E7D40] & *v29) + 0x68), v290);
      NavigationAuthority.controllerCache.getter();
      v125 = outlined destroy of NavigationAuthority(v290);
      MEMORY[0x1EEE9AC00](v125);
      v126 = v283;
      v270[-4] = v292;
      v270[-3] = v126;
      v269 = v286;
      MEMORY[0x1EEE9AC00](v286);
      v270[-8] = v127;
      v270[-7] = v29;
      v270[-6] = v292;
      v37 = v124;
      LOBYTE(v270[-5]) = v276;
      v128 = v285;
      v270[-4] = v284;
      v270[-3] = v128;
      v268 = &v289;
      specialized NavigationHostingControllerCache_UIKit._viewControllers<A>(forEntering:isBorrowing:request:insert:)(v127, 0, a12, v129, a13, &v270[-10]);

      outlined destroy of NavigationState.StackContent.PositionedView(v292);
      goto LABEL_212;
    }

    goto LABEL_249;
  }

  outlined destroy of UINavigationPresentationAdaptor?(v33, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  if (v57)
  {
    goto LABEL_45;
  }

LABEL_15:
  v277 = v45;
  v45 = &selRef_titleTextAttributes;
  if (v47 == 1)
  {
    v60 = [v286 viewControllers];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
    v61 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v62 = v61 >> 62 ? __CocoaSet.count.getter() : *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v62 >= 2)
    {
      outlined init with copy of NavigationAuthority(v29 + *((*v37 & *v29) + 0x68), v292);
      NavigationAuthority.controllerCache.getter();
      outlined destroy of NavigationAuthority(v292);
      specialized previousPositions #1 <A>() in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(v285, v29, v281, v292);
      specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
      if ((v65 & 1) != 0 && v64 == 2 && !v63)
      {
        goto LABEL_248;
      }

      specialized NavigationState.StackContent.Views.ViewsSequence.index(before:)(0, 1, 0, 2);
      v66 = *&v292[30];
      specialized NavigationState.StackContent.Views.ViewsSequence.subscript.getter(v68, v67 & 1, v69, v70);
      v66(v287, v290);
      outlined destroy of NavigationState.StackContent.PositionedView(v290);
      v71 = v287[0];
      v72 = *(&v287[0] + 1);
      outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v292, type metadata accessor for LazyMapSequence<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>, NavigationContentAbstractPosition>);
      LOBYTE(v290[0]) = v71;
      *(&v290[0] + 1) = v72;
      v73 = v290;
      NavigationHostingControllerCache_UIKit.eject(at:)(*&v73);

      v74 = [v286 viewControllers];
      v75 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = v75 >> 62;
      if (!(v75 >> 62))
      {
        v76 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!__OFSUB__(0, v76))
        {
LABEL_24:
          if (v76)
          {
            v77 = v76 - 1;
            if (__OFSUB__(v76, 1))
            {
              goto LABEL_234;
            }

            if (v77 < 0)
            {
              goto LABEL_235;
            }

            if (!v37)
            {
              goto LABEL_28;
            }
          }

          else
          {
LABEL_105:
            v77 = 0;
            if (!v37)
            {
LABEL_28:
              v78 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
              goto LABEL_108;
            }
          }

          if ((__CocoaSet.count.getter() & 0x8000000000000000) == 0)
          {
            v78 = __CocoaSet.count.getter();
LABEL_108:
            if (v78 >= v77)
            {
              if ((v75 & 0xC000000000000001) != 0)
              {

                if (v77)
                {
                  v183 = 0;
                  do
                  {
                    v184 = v183 + 1;
                    _ArrayBuffer._typeCheckSlowPath(_:)(v183);
                    v183 = v184;
                  }

                  while (v77 != v184);
                }
              }

              else
              {
              }

              if (v37)
              {
                _CocoaArrayWrapper.subscript.getter();
                v186 = v187;
                v185 = v188;
                v190 = v189;

                v77 = v190 >> 1;
              }

              else
              {
                v185 = 0;
                v186 = (v75 & 0xFFFFFFFFFFFFFF8) + 32;
              }

              v37 = MEMORY[0x1E69E7D40];
              if (v185 == v77)
              {
                swift_unknownObjectRelease();
                v191 = 0;
              }

              else
              {
                if (v77 - 1 < v185)
                {
                  goto LABEL_237;
                }

                v191 = *(v186 + 8 * (v77 - 1));
                swift_unknownObjectRelease();
              }

              *(v29 + *((*v37 & *v29) + 0x88)) = v191;
              v45 = v277;
              if (v276)
              {
                outlined init with copy of NavigationState.StackContent(v285, v292);
                v192 = NavigationState.StackContent.shouldAnimate(from:)(v292);
                outlined destroy of PPTTestCase?(v292, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
              }

              else
              {
                v192 = 0;
              }

              v193 = v286;

              specialized NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:)(v193, v294, v283, v282);
              v194 = [v193 transitionCoordinator];
              if (!v194)
              {
                goto LABEL_211;
              }

              if (!v192)
              {
                goto LABEL_210;
              }

LABEL_209:
              v289 = 1;
              v263 = v194;
              v264 = swift_allocObject();
              swift_unknownObjectWeakInit();
              *&v292[2] = a17;
              v45 = v277;
              *(&v292[2] + 1) = v264;
              *&v292[0] = MEMORY[0x1E69E9820];
              *(&v292[0] + 1) = 1107296256;
              *&v292[1] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
              *(&v292[1] + 1) = a18;
              v265 = _Block_copy(v292);

              [v263 animateAlongsideTransition:0 completion:v265];

              v266 = v265;
              v37 = MEMORY[0x1E69E7D40];
              _Block_release(v266);
              swift_unknownObjectRelease();
              goto LABEL_212;
            }

LABEL_230:
            __break(1u);
LABEL_231:
            __break(1u);
            goto LABEL_232;
          }

LABEL_229:
          __break(1u);
          goto LABEL_230;
        }

LABEL_228:
        __break(1u);
        goto LABEL_229;
      }

LABEL_226:
      v76 = __CocoaSet.count.getter();
      if (!__OFSUB__(0, v76))
      {
        goto LABEL_24;
      }

      goto LABEL_228;
    }
  }

  v130 = [v286 viewControllers];
  v33 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
  v131 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v131 >> 62)
  {
    goto LABEL_221;
  }

  for (i = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {

    if (i >= 2)
    {
      v133 = [v286 *(v45 + 3144)];
      v134 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v135 = v134 >> 62 ? __CocoaSet.count.getter() : *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v47 < v135)
      {
        break;
      }
    }

LABEL_61:
    v145 = NavigationState.Base.count.getter();
    v146 = NavigationState.Base.count.getter();
    v86 = __OFSUB__(v145, v146);
    v108 = v145 - v146;
    if (v86)
    {
      goto LABEL_220;
    }

    if (v108 < 1)
    {
      goto LABEL_160;
    }

    outlined init with copy of NavigationAuthority(v29 + *((*v37 & *v29) + 0x68), v292);
    NavigationAuthority.controllerCache.getter();
    v33 = v147;
    outlined destroy of NavigationAuthority(v292);
    v271 = v29;
    specialized previousPositions #1 <A>() in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(v285, v29, v281, v290);
    v37 = -v108;
    v148 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
    specialized BidirectionalCollection.index(_:offsetBy:limitedBy:)(0, 1, 0, 2, -v108, v148, v149 & 1, v150, v151);
    if (v155 == 0xFF)
    {
      v97 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
    }

    else
    {
      v97 = v152;
    }

    v29 = v153;
    v88 = v154;
    v45 = v155;
    v173 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
    if ((v176 & 1) == 0)
    {
      if (v97 < v173)
      {
        goto LABEL_236;
      }

      if (v173 >= v97)
      {
        if (v45)
        {
          if (v45 == 1)
          {
            if (v175 != 1 || v88 >= v174)
            {
              goto LABEL_158;
            }

            __break(1u);
LABEL_81:
            v108 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
            v47 = v177;
LABEL_82:
            v33 = v106;
            v29 = v107;
            v178 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
            if (v179)
            {
              if (v47)
              {
                goto LABEL_189;
              }

              __break(1u);
            }

            if (v47)
            {
              goto LABEL_189;
            }

            if (v108 < v178)
            {
              goto LABEL_238;
            }

            if (v178 < v108)
            {
              goto LABEL_189;
            }

            if (v29)
            {
              if (v29 == 1)
              {
                if (v175 != 1 || v33 >= v174)
                {
                  goto LABEL_189;
                }

                __break(1u);
LABEL_93:
                v97 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
                v45 = v180;
LABEL_94:
                v47 = v163;
                v33 = v164;
                v75 = v290;
                v181 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
                if (v182)
                {
                  if (v45)
                  {
                    goto LABEL_196;
                  }

                  __break(1u);
                }

                if (v45)
                {
                  goto LABEL_196;
                }

                if (v97 < v181)
                {
                  goto LABEL_239;
                }

                if (v181 < v97)
                {
                  goto LABEL_196;
                }

                if (v33)
                {
                  if (v33 == 1)
                  {
                    if (v175 == 1 && v47 < v174)
                    {
                      __break(1u);
                      goto LABEL_105;
                    }

LABEL_196:
                    memcpy(&v292[4], v290, 0x1E0uLL);
                    *&v292[0] = v97;
                    BYTE8(v292[0]) = v45 & 1;
                    *&v292[1] = v47;
                    BYTE8(v292[1]) = v33;
                    *&v292[2] = 0;
                    BYTE8(v292[2]) = 1;
                    *&v292[3] = 0;
                    BYTE8(v292[3]) = 2;
                    v293 = v291;
                    specialized NavigationHostingControllerCache_UIKit.eject<A>(at:)(v292);

                    outlined destroy of LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>.Iterator(v292, &lazy cache variable for type metadata for LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>, MEMORY[0x1E69E6C98]);
                    goto LABEL_197;
                  }

LABEL_154:
                  if (v175 == 2 && !v174)
                  {
                    goto LABEL_196;
                  }

                  __break(1u);
LABEL_157:
                  if (v88 < v174)
                  {
                    goto LABEL_241;
                  }

                  goto LABEL_158;
                }

LABEL_148:
                if (!v175)
                {
                  if (v47 < v174)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_196;
                }

                if (v175 == 2)
                {
                  goto LABEL_196;
                }

                __break(1u);
              }

              if (v175 == 2 && !v174)
              {
                goto LABEL_189;
              }

              __break(1u);
              goto LABEL_154;
            }

LABEL_145:
            if (!v175)
            {
              goto LABEL_188;
            }

            if (v175 == 2)
            {
              goto LABEL_189;
            }

            __break(1u);
            goto LABEL_148;
          }

LABEL_142:
          if (v175 == 2 && !v174)
          {
            goto LABEL_158;
          }

          __break(1u);
          goto LABEL_145;
        }

LABEL_139:
        if (!v175)
        {
          goto LABEL_157;
        }

        if (v175 == 2)
        {
          goto LABEL_158;
        }

        __break(1u);
        goto LABEL_142;
      }
    }

LABEL_158:
    memcpy(&v292[4], v290, 0x1E0uLL);
    *&v292[0] = v97;
    BYTE8(v292[0]) = v29 & 1;
    *&v292[1] = v88;
    BYTE8(v292[1]) = v45;
    *&v292[2] = 0;
    BYTE8(v292[2]) = 1;
    *&v292[3] = 0;
    BYTE8(v292[3]) = 2;
    v293 = v291;
    specialized NavigationHostingControllerCache_UIKit.eject<A>(at:)(v292);

    outlined destroy of LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>.Iterator(v292, &lazy cache variable for type metadata for LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>, MEMORY[0x1E69E6C98]);
    v199 = [v286 viewControllers];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
    v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v75 = specialized BidirectionalCollection.dropLast(_:)(v108, v37);
    v201 = v200;
    v203 = v202;
    v47 = v204;

    v205 = v47 >> 1;
    if (v203 == v47 >> 1)
    {
      swift_unknownObjectRelease();
      v29 = v271;
LABEL_160:
      if (!v276)
      {
        goto LABEL_164;
      }

      goto LABEL_161;
    }

    v29 = v271;
    if (v205 <= v203)
    {
      __break(1u);
      goto LABEL_226;
    }

    v207 = *(v201 + 8 * v205 - 8);
    swift_unknownObjectRelease();
    *(v29 + *((*MEMORY[0x1E69E7D40] & *v29) + 0x88)) = v207;

    if (!v276)
    {
LABEL_164:
      v206 = 0;
      goto LABEL_165;
    }

LABEL_161:
    outlined init with copy of NavigationState.StackContent(v285, v292);
    v206 = NavigationState.StackContent.shouldAnimate(from:)(v292);
    outlined destroy of PPTTestCase?(v292, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
LABEL_165:
    v208 = [v286 viewControllers];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
    v209 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v282 = v108;
    LODWORD(v285) = v206;
    if (!v206)
    {

      v216 = 0;
LABEL_172:
      v210 = MEMORY[0x1E69E7D40];
      goto LABEL_173;
    }

    v210 = MEMORY[0x1E69E7D40];
    if (v209 >> 62)
    {
      v211 = __CocoaSet.count.getter();
    }

    else
    {
      v211 = *((v209 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v211 != 1 || (v212 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter(), (v215 & 1) != 0))
    {
      v216 = 1;
LABEL_173:
      *&v290[0] = 0;
      BYTE8(v290[0]) = 1;
      outlined init with copy of NavigationAuthority(v29 + *((*v210 & *v29) + 0x68), v292);
      NavigationAuthority.controllerCache.getter();
      v218 = v217;
      v219 = outlined destroy of NavigationAuthority(v292);
      MEMORY[0x1EEE9AC00](v219);
      v270[-6] = v294;
      v270[-5] = v283;
      v270[-4] = v29;
      v220 = v286;
      v270[-3] = v286;
      v268 = v290;
      v221 = v29;
      v222 = v220;
      LOBYTE(v268) = v216;
      v275(v220, 0, a21, &v270[-8], v218, v221, v279 & 1, v222, v268);
      v37 = MEMORY[0x1E69E7D40];

      v223 = [v222 transitionCoordinator];
      v45 = v277;
      if (v223)
      {
        if (v282 >= 1 && (v285 & 1) != 0)
        {
          v224 = v277;
          v289 = 1;
          v225 = v223;
          v226 = swift_allocObject();
          swift_unknownObjectWeakInit();
          *&v292[2] = a22;
          v45 = v224;
          *(&v292[2] + 1) = v226;
          v37 = MEMORY[0x1E69E7D40];
          *&v292[0] = MEMORY[0x1E69E9820];
          *(&v292[0] + 1) = 1107296256;
          *&v292[1] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
          *(&v292[1] + 1) = a23;
          v227 = _Block_copy(v292);

          [v225 animateAlongsideTransition:0 completion:v227];
          _Block_release(v227);
        }

        swift_unknownObjectRelease();
      }

      goto LABEL_212;
    }

    v37 = 0;
    v228 = 0;
    while (1)
    {
      v45 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      specialized NavigationState.StackContent.Views.ViewsSequence.index(after:)(v212, v228 & 1, v213, v214);
      ++v37;
      if ((v228 & 1) != 0 && v214 >= 2u)
      {
        v216 = v45 != 1;
        goto LABEL_172;
      }
    }

    __break(1u);
LABEL_219:
    __break(1u);
LABEL_220:
    __break(1u);
LABEL_221:
    ;
  }

  outlined init with copy of NavigationAuthority(v29 + *((*v37 & *v29) + 0x68), v292);
  NavigationAuthority.controllerCache.getter();
  v37 = v136;
  outlined destroy of NavigationAuthority(v292);
  v271 = v29;
  specialized previousPositions #1 <A>() in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(v285, v29, v281, v290);
  if (v47 < 0)
  {
    goto LABEL_231;
  }

  v137 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
  specialized BidirectionalCollection.index(_:offsetBy:limitedBy:)(0, 1, 0, 2, -v47, v137, v138 & 1, v139, v140);
  if (v144 == 0xFF)
  {
    v97 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
  }

  else
  {
    v97 = v141;
  }

  v29 = v142;
  v88 = v143;
  v108 = v144;
  v197 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
  if (v198)
  {
    goto LABEL_201;
  }

  if (v97 < v197)
  {
    goto LABEL_240;
  }

  if (v197 < v97)
  {
    goto LABEL_201;
  }

  if (v108)
  {
    if (v108 != 1)
    {
      goto LABEL_185;
    }

    if (v175 != 1 || v88 >= v174)
    {
      goto LABEL_201;
    }

    __break(1u);
    goto LABEL_139;
  }

  if (!v175)
  {
    if (v88 >= v174)
    {
      goto LABEL_201;
    }

    goto LABEL_245;
  }

  if (v175 != 2)
  {
    __break(1u);
LABEL_185:
    if (v175 != 2 || v174)
    {
      __break(1u);
LABEL_188:
      if (v33 < v174)
      {
        goto LABEL_243;
      }

LABEL_189:
      v285 = a25;
      v286 = a27;
      memcpy(&v292[4], v290, 0x1E0uLL);
      *&v292[0] = v108;
      BYTE8(v292[0]) = v47 & 1;
      *&v292[1] = v33;
      BYTE8(v292[1]) = v29;
      *&v292[2] = 0;
      BYTE8(v292[2]) = 1;
      *&v292[3] = 0;
      BYTE8(v292[3]) = 2;
      v293 = v291;

      v229 = specialized Sequence.compactMap<A>(_:)(v292, v45);
      outlined destroy of LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>.Iterator(v292, &lazy cache variable for type metadata for LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>, MEMORY[0x1E69E6C98]);

      v230 = swift_allocObject();
      *(v230 + 16) = v229;
      v231 = swift_allocObject();
      v29 = v37;
      swift_unknownObjectWeakInit();
      v232 = *v37;
      v233 = MEMORY[0x1E69E7D40];
      v234 = *((*MEMORY[0x1E69E7D40] & v232) + 0xB0);
      swift_beginAccess();
      outlined init with copy of NavigationState.StackContent?(v29 + v234, v290, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
      if (LOBYTE(v290[28]) == 255)
      {
        outlined destroy of PPTTestCase?(v290, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
        v235 = v29 + *((*v233 & *v29) + 0x60);
        v236 = *v235;
        v237 = v235[8];
        v238 = *(v235 + 2);
        if (v237 == 4)
        {
          LOBYTE(v237) = 0;
        }

        *&v292[0] = v236;
        BYTE8(v292[0]) = v237;
        *&v292[1] = v238;
        LOBYTE(v292[28]) = 0;
      }

      else
      {
        memcpy(v292, v290, 0x1C1uLL);
      }

      v239 = v233;
      NavigationState.StackContent.topKey.getter();
      v241 = v240;
      v243 = v242;
      v245 = v244;
      outlined destroy of NavigationState.StackContent(v292);
      v246 = swift_allocObject();
      *(v246 + 16) = a26;
      *(v246 + 24) = v230;
      *(v246 + 32) = BYTE1(v88);
      *(v246 + 40) = v231;
      *(v246 + 48) = v241;
      *(v246 + 56) = v243;
      *(v246 + 64) = v245;
      v247 = (v29 + *((*v239 & *v29) + 0xA0));
      v248 = *v247;
      v249 = v247[1];
      *v247 = v286;
      v247[1] = v246;

      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v248, v249);

LABEL_197:
      v45 = v277;
      goto LABEL_198;
    }
  }

LABEL_201:
  memcpy(&v292[4], v290, 0x1E0uLL);
  *&v292[0] = v97;
  BYTE8(v292[0]) = v29 & 1;
  *&v292[1] = v88;
  BYTE8(v292[1]) = v108;
  *&v292[2] = 0;
  BYTE8(v292[2]) = 1;
  *&v292[3] = 0;
  BYTE8(v292[3]) = 2;
  v293 = v291;
  specialized NavigationHostingControllerCache_UIKit.eject<A>(at:)(v292);

  outlined destroy of LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>.Iterator(v292, &lazy cache variable for type metadata for LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>, MEMORY[0x1E69E6C98]);
  v252 = [v286 *(v45 + 3144)];
  v253 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  specialized BidirectionalCollection.dropLast(_:)(v47, v253);
  v255 = v254;
  v257 = v256;
  v259 = v258;

  v260 = v259 >> 1;
  if (v257 != v259 >> 1)
  {
    v29 = v271;
    v37 = MEMORY[0x1E69E7D40];
    v45 = v277;
    if (v260 > v257)
    {
      v191 = *(v255 + 8 * v260 - 8);
      swift_unknownObjectRelease();
      *(v29 + *((*v37 & *v29) + 0x88)) = v191;
      if (v276)
      {
        outlined init with copy of NavigationState.StackContent(v285, v292);
        v261 = NavigationState.StackContent.shouldAnimate(from:)(v292);
        outlined destroy of PPTTestCase?(v292, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
      }

      else
      {
        v261 = 0;
      }

      v262 = v286;

      specialized NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:)(v262, v294, v283, v282);
      v194 = [v262 transitionCoordinator];
      if (v194)
      {
        if (v261)
        {
          a17 = a19;
          a18 = a20;
          goto LABEL_209;
        }

LABEL_210:
        swift_unknownObjectRelease();
      }

LABEL_211:

LABEL_212:
      if (v289 == 1)
      {
        *(v29 + v274) = 0;
        *(v29 + *((*v37 & *v29) + 0x88)) = 0;
      }

      if (v45)
      {
        v250 = *v29;
        v251 = *v37;
LABEL_216:
        outlined init with copy of NavigationAuthority(v29 + *((v251 & v250) + 0x68), v292);
        NavigationAuthority.controllerCache.getter();
        outlined destroy of NavigationAuthority(v292);
        specialized NavigationHostingControllerCache_UIKit.updateUnusedRoots(_:transaction:)(v45);
      }

      return outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v294, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
    }

LABEL_232:
    __break(1u);
LABEL_233:
    __break(1u);
LABEL_234:
    __break(1u);
LABEL_235:
    __break(1u);
LABEL_236:
    __break(1u);
LABEL_237:
    __break(1u);
LABEL_238:
    __break(1u);
LABEL_239:
    __break(1u);
LABEL_240:
    __break(1u);
LABEL_241:
    __break(1u);
LABEL_242:
    __break(1u);
LABEL_243:
    __break(1u);
LABEL_244:
    __break(1u);
LABEL_245:
    __break(1u);
LABEL_246:
    __break(1u);
  }

  swift_unknownObjectRelease();
  __break(1u);
LABEL_248:
  outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v292, type metadata accessor for LazyMapSequence<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>, NavigationContentAbstractPosition>);
  __break(1u);
LABEL_249:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_18BFDD2BC(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for ListCollectionViewCellBase<A>);
  *(a1 + 8) = result;
  return result;
}

uint64_t ShadowListDataSource.contextForItem(index:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a1;
  v55 = a3;
  v56 = a4;
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v51 = *(v6 + 8);
  v52 = a2;
  v48 = v6;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v49 = &v43 - v9;
  v45 = *(v5 - 8);
  v10 = v45;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v13;
  type metadata accessor for _RowVisitationContext(255, v5, v6, v14);
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  v53 = v15;
  v54 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v46 = &v43 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v47 = *(TupleTypeMetadata2 - 8);
  v19 = v47;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v43 - v24;
  (*(v8 + 16))(&v43 - v24, v50, AssociatedTypeWitness, v23);
  *&v25[*(TupleTypeMetadata2 + 48)] = v52;
  (*(v10 + 16))(v13, v4, v5);
  (*(v19 + 16))(v21, v25, TupleTypeMetadata2);
  v26 = *&v21[*(TupleTypeMetadata2 + 48)];
  updated = type metadata accessor for ShadowListUpdateRecorder(0, v5, v51, v27);
  v29 = v49;
  v30 = ShadowListUpdateRecorder.initialIndex(_:)(v49, v21, v26, updated);
  v31 = *(v8 + 8);
  v31(v21, AssociatedTypeWitness);
  v32 = v46;
  v33 = v30;
  v34 = v44;
  v35 = v48;
  (*(v48 + 224))(v29, v33, v5);
  v31(v29, AssociatedTypeWitness);
  (*(v45 + 8))(v34, v5);
  v58 = v5;
  v59 = v35;
  v36 = v55;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v55);
  v39 = type metadata accessor for _RowVisitationContext(0, v36, WitnessTable, v38);
  v40 = v53;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in ShadowListDataSource.contextForItem(index:), v57, MEMORY[0x1E69E73E0], v39, v41, v56);
  (*(v54 + 8))(v32, v40);
  return (*(v47 + 8))(v25, TupleTypeMetadata2);
}

uint64_t ShadowListUpdateRecorder.initialIndex(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a1;
  v9 = *(a4 + 16);
  v8 = *(a4 + 24);
  swift_getAssociatedTypeWitness();
  v44 = v9;
  v45 = v8;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v47 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v13 = (&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  v17 = &v41 - v16;
  v46 = *(AssociatedTypeWitness - 8);
  (*(v46 + 16))(&v41 - v16, a2, AssociatedTypeWitness, v15);
  v48 = TupleTypeMetadata2;
  v49 = a4;
  *&v17[*(TupleTypeMetadata2 + 48)] = a3;
  v50 = v4;
  ShadowListUpdateRecorder.updates.getter(a4);
  v55 = v56;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v52 = AssociatedTypeWitness;
  *(&v52 + 1) = MEMORY[0x1E69E6530];
  v53 = AssociatedConformanceWitness;
  v54 = MEMORY[0x1E69E6548];
  v19 = type metadata accessor for ListUpdate(255, &v52);
  v20 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69E6340], v20);
  *&v52 = v20;
  *(&v52 + 1) = v20;
  v53 = WitnessTable;
  v54 = WitnessTable;
  v22 = type metadata accessor for ConcatenatedCollection();
  v23 = swift_getWitnessTable(MEMORY[0x1E697FE00], v22);
  v24 = Collection.isEmpty.getter();

  if (v24)
  {
    v25 = v48;
    (*(v47 + 32))(v13, v17, v48);
    v26 = *(v13 + *(v25 + 48));
    (*(v46 + 32))(v51, v13, AssociatedTypeWitness);
  }

  else
  {
    updated = ShadowListUpdateRecorder.updates.getter(v49);
    v56 = v52;
    MEMORY[0x1EEE9AC00](updated);
    v42 = v19;
    v28 = v44;
    v29 = v45;
    *(&v41 - 2) = v44;
    *(&v41 - 1) = v29;
    KeyPath = swift_getKeyPath();
    v43 = &v41;
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v41 - 4) = v28;
    *(&v41 - 3) = v29;
    *(&v41 - 2) = v31;
    v33 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #3 in implicit closure #1 in UIKitWheelPicker.updateUIView(_:context:), (&v41 - 6), v22, v42, MEMORY[0x1E69E73E0], v23, MEMORY[0x1E69E7410], v32);

    *&v56 = v33;
    v34 = swift_getWitnessTable(MEMORY[0x1E69E6310], v20);
    MEMORY[0x18D00C6D0](&v52, v20, v34);
    *&v56 = v52;
    v36 = v47;
    v35 = v48;
    (*(v47 + 16))(v13, v17, v48);
    v37 = *(v13 + *(v35 + 48));
    v38 = type metadata accessor for ReversedCollection();
    v39 = swift_getWitnessTable(MEMORY[0x1E69E6EC0], v38);
    v26 = ShadowListUpdateRecorder.applyUpdates<A>(_:to:)(v51, &v56, v13, v37, v49, v38, v39);

    (*(v36 + 8))(v17, v35);
    (*(v46 + 8))(v13, AssociatedTypeWitness);
  }

  return v26;
}

uint64_t CollectionViewListDataSource.contextForItem(index:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionViewListDataSource<A>, a3);
  v10 = type metadata accessor for ListContentVisitor(0, a3, WitnessTable, v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  v18 = a1;
  ListContentVisitor.init(index:)(&v18, a2, a3, WitnessTable, &v17 - v11);
  v13 = swift_getWitnessTable(protocol conformance descriptor for ListContentVisitor<A>, v10);
  ListSectionInfo.visitRow<A>(index:visitor:)(a1, a2, v12, v10, v13);
  type metadata accessor for _RowVisitationContext(255, a3, WitnessTable, v14);
  v15 = type metadata accessor for Optional();
  return (*(*(v15 - 8) + 32))(a4, v12, v15);
}

BOOL NavigationColumnState.isRootReplaced.getter()
{
  outlined init with copy of NavigationColumnState.ColumnContent(v0 + 120, v5);
  if (v5[120])
  {
    outlined init with copy of NavigationColumnState.ColumnContent(v5, v4);
  }

  else
  {
    outlined init with copy of NavigationColumnState.ColumnContent(v5, v4);
  }

  if (v4[88] == 255)
  {
    v1 = 1;
  }

  else
  {
    outlined destroy of NavigationRequest.Action?(v4, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    v1 = 0;
  }

  outlined destroy of NavigationColumnState.ColumnContent(v5);
  v2 = *(v0 + 352);
  if (((v1 ^ (v2 == 1)) & 1) == 0)
  {
    MEMORY[0x18D009810](0xD00000000000017BLL, 0x800000018CD4CDD0);
  }

  return v2 == 1;
}

uint64_t type metadata completion function for ListContentVisitor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _RowVisitationContext(255, *(a1 + 16), *(a1 + 24), a4);
  result = type metadata accessor for Optional();
  if (v5 <= 0x3F)
  {
    v7[4] = *(result - 8) + 64;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    result = swift_getAssociatedTypeWitness();
    if (v6 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v7[5] = v7;
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t ListContentVisitor.init(index:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a1;
  v25 = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - v15;
  v17 = *(*(AssociatedTypeWitness - 8) + 32);
  v17(&v24 - v15, v24, AssociatedTypeWitness, v14);
  *&v16[*(TupleTypeMetadata2 + 48)] = v25;
  v19 = type metadata accessor for _RowVisitationContext(0, a3, a4, v18);
  (*(*(v19 - 8) + 56))(a5, 1, 1, v19);
  (*(v10 + 32))(v12, v16, TupleTypeMetadata2);
  v20 = *&v12[*(TupleTypeMetadata2 + 48)];
  v22 = a5 + *(type metadata accessor for ListContentVisitor(0, a3, a4, v21) + 36);
  result = (v17)(v22, v12, AssociatedTypeWitness);
  *(v22 + *(TupleTypeMetadata2 + 48)) = v20;
  return result;
}

void storeEnumTagSinglePayload for _RowVisitationContext(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = *(v4 + 84);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  if (v7 <= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = 0;
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v6 + 80);
  v15 = *(v6 + 64);
  v16 = *(v10 + 80);
  v17 = *(v10 + 64);
  if (v8 <= v13)
  {
    v18 = v13;
  }

  else
  {
    v18 = v8;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  v20 = ((*(v4 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + v14 + 8;
  v21 = v15 + 7;
  v22 = (v16 + 8 + ((v15 + 7 + (v20 & ~v14)) & 0xFFFFFFFFFFFFFFF8)) & ~v16;
  if (v12)
  {
    v23 = v17;
  }

  else
  {
    v23 = v17 + 1;
  }

  v24 = v23 + v22 + 3;
  if (a3 > v19)
  {
    if (v24 <= 3)
    {
      v25 = ((a3 - v19 + ~(-1 << (8 * v24))) >> (8 * v24)) + 1;
      if (HIWORD(v25))
      {
        v9 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v9 = v26;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 1;
    }
  }

  if (v19 < a2)
  {
    v27 = ~v19 + a2;
    if (v24 < 4)
    {
      v28 = (v27 >> (8 * v24)) + 1;
      if (v24)
      {
        v30 = v27 & ~(-1 << (8 * v24));
        bzero(a1, v24);
        if (v24 != 3)
        {
          if (v24 == 2)
          {
            *a1 = v30;
            if (v9 > 1)
            {
LABEL_61:
              if (v9 == 2)
              {
                *&a1[v24] = v28;
              }

              else
              {
                *&a1[v24] = v28;
              }

              return;
            }
          }

          else
          {
            *a1 = v27;
            if (v9 > 1)
            {
              goto LABEL_61;
            }
          }

          goto LABEL_58;
        }

        *a1 = v30;
        a1[2] = BYTE2(v30);
      }

      if (v9 > 1)
      {
        goto LABEL_61;
      }
    }

    else
    {
      bzero(a1, v24);
      *a1 = v27;
      v28 = 1;
      if (v9 > 1)
      {
        goto LABEL_61;
      }
    }

LABEL_58:
    if (v9)
    {
      a1[v24] = v28;
    }

    return;
  }

  v29 = a1;
  if (v9 > 1)
  {
    if (v9 != 2)
    {
      *&a1[v24] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_43;
    }

    *&a1[v24] = 0;
  }

  else if (v9)
  {
    a1[v24] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_43;
  }

  if (!a2)
  {
    return;
  }

LABEL_43:
  if (v5 == v19)
  {
    v31 = *(v4 + 56);
LABEL_47:

    v31(v29);
    return;
  }

  v29 = (&a1[v20] & ~v14);
  if (v7 == v19)
  {
    v31 = *(v6 + 56);
    goto LABEL_47;
  }

  v32 = (&v29[v21] & 0xFFFFFFFFFFFFFFF8);
  if ((v18 & 0x80000000) != 0)
  {
    if (v12 >= 2)
    {
      v34 = *(v11 + 56);

      v34((v32 + v16 + 8) & ~v16, a2 + 1);
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v33 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v33 = a2 - 1;
    }

    *v32 = v33;
  }
}

unint64_t ListSectionInfo.visitRow<A>(index:visitor:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(v5 + 64);
  if (*(v6 + 16) <= result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = outlined init with copy of SectionAccumulator.Item(v6 + 152 * result + 32, v14);
  if (__OFADD__(v18, a2))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = v18 + a2;
  if (!v16)
  {
    outlined init with copy of _Benchmark(&v15, v11);
    goto LABEL_8;
  }

  if (*(v16 + 16) >= 2uLL)
  {
    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v16 + 80, v11);
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v11, v12);
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v12, v11);
LABEL_8:
    v12[0] = v17;

    ListSectionInfo.visitContent<A>(list:start:transform:visitor:)(v11, &v13, v12, a3, a4, a5);

    __swift_destroy_boxed_opaque_existential_1(v11);
    return outlined destroy of SectionAccumulator.Item(v14);
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>)(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (list: ViewList, attribute: Attribute<ViewList>))
  {
    type metadata accessor for ViewList();
    type metadata accessor for Attribute<ViewList>(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (list: ViewList, attribute: Attribute<ViewList>));
    }
  }
}

uint64_t ListSectionInfo.visitContent<A>(list:start:transform:visitor:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x18D00ABE0]();

  _ViewList_SublistTransform.withTemporaryTransform<A>(do:)();

  return static Update.end()();
}

uint64_t closure #1 in ListSectionInfo.visitContent<A>(list:start:transform:visitor:)@<X0>(void *a2@<X1>, _BYTE *a8@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  AGWeakAttributeGetAttribute();
  result = ViewList.applySublists(from:style:list:transform:to:)();
  *a8 = result & 1;
  return result;
}

uint64_t closure #1 in closure #1 in ListSectionInfo.visitContent<A>(list:start:transform:visitor:)(uint64_t *a1, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a1;
  v6 = a1[1];
  if (*a1 >= v6)
  {
    return 1;
  }

  v11 = *(a2 + 48);
  while (1)
  {
    v12 = a1[3];
    v13 = a1[2];
    outlined init with copy of _ViewList_SubgraphElements((a1 + 4), v19);
    v18 = a1[9];

    v14 = v11;

    v15 = _ViewList_SublistSubgraphStorage.retain()();

    v20 = v15;
    v21 = v13;
    v22 = v12;
    v23 = v7;
    v24 = v6;
    v25 = v11;
    v18 = a1[10];
    v16 = *(a6 + 8);

    LOBYTE(v15) = v16(v19, &v18, a5, a6);

    outlined destroy of _ViewList_View(v19);
    if ((v15 & 1) == 0)
    {
      break;
    }

    if (v6 == ++v7)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t ListContentVisitor.visit(view:traits:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v24 = a1;
  v8 = *(a3 + 16);
  v7 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v23 = &v23 - v11;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v15 = &v23 - v14;
  v16 = *a2;
  v18 = type metadata accessor for _RowVisitationContext(255, v8, v7, v17);
  v19 = type metadata accessor for Optional();
  (*(*(v19 - 8) + 8))(v4, v19);
  (*(v13 + 16))(v15, v4 + *(a3 + 36), TupleTypeMetadata2);
  v20 = *&v15[*(TupleTypeMetadata2 + 48)];
  outlined init with copy of _ViewList_View(v24, v27);
  v26 = v16;
  v21 = v23;
  (*(*(AssociatedTypeWitness - 8) + 56))(v23, 1, 1, AssociatedTypeWitness);
  v25 = 0;
  _RowVisitationContext.init(index:view:traits:explicitSelectionValue:hasMultipleSelection:deleteControlVisibility:reorderControlVisibility:)(v15, v20, v27, &v26, v21, 0, &v25 + 1, &v25, v4, v8, v7);
  (*(*(v18 - 8) + 56))(v4, 0, 1, v18);

  return 0;
}

uint64_t getEnumTagSinglePayload for _RowVisitationContext(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v38 = AssociatedTypeWitness;
  v5 = *(v4 + 84);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v37 = swift_getAssociatedTypeWitness();
  v6 = *(v37 - 8);
  v7 = *(v6 + 84);
  if (v7 <= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  if (v8 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v8;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v6 + 80);
  v16 = *(v9 + 80);
  v17 = *(v9 + 64);
  if (v11)
  {
    v18 = 3;
  }

  else
  {
    v18 = 4;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = ((*(v4 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + v15 + 8;
  v20 = *(v6 + 64) + 7;
  v21 = v16 + 8;
  v22 = a1;
  if (a2 <= v14)
  {
    goto LABEL_38;
  }

  v23 = v18 + v17 + ((v21 + ((v20 + (v19 & ~v15)) & 0xFFFFFFFFFFFFFFF8)) & ~v16);
  v24 = 8 * v23;
  if (v23 > 3)
  {
    goto LABEL_18;
  }

  v26 = ((a2 - v14 + ~(-1 << v24)) >> v24) + 1;
  if (HIWORD(v26))
  {
    v25 = *(a1 + v23);
    if (v25)
    {
      goto LABEL_25;
    }

LABEL_38:
    if (v5 == v14)
    {
      v30 = v38;
      v31 = *(v4 + 48);
      v32 = v5;

      return v31(v22, v32, v30);
    }

    v22 = ((a1 + v19) & ~v15);
    if (v7 == v14)
    {
      v31 = *(v6 + 48);
      v32 = v7;
      v30 = v37;

      return v31(v22, v32, v30);
    }

    v34 = ((v22 + v20) & 0xFFFFFFFFFFFFFFF8);
    if ((v13 & 0x80000000) == 0)
    {
      v35 = *v34;
      if (*v34 >= 0xFFFFFFFF)
      {
        LODWORD(v35) = -1;
      }

      return (v35 + 1);
    }

    if (v11 >= 2)
    {
      v36 = (*(v10 + 48))((v34 + v21) & ~v16);
      if (v36 >= 2)
      {
        return v36 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  if (v26 > 0xFF)
  {
    v25 = *(a1 + v23);
    if (*(a1 + v23))
    {
      goto LABEL_25;
    }

    goto LABEL_38;
  }

  if (v26 < 2)
  {
    goto LABEL_38;
  }

LABEL_18:
  v25 = *(a1 + v23);
  if (!*(a1 + v23))
  {
    goto LABEL_38;
  }

LABEL_25:
  v27 = (v25 - 1) << v24;
  if (v23 > 3)
  {
    v27 = 0;
  }

  if (v23)
  {
    if (v23 <= 3)
    {
      v28 = v23;
    }

    else
    {
      v28 = 4;
    }

    if (v28 > 2)
    {
      if (v28 == 3)
      {
        v29 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v29 = *a1;
      }
    }

    else if (v28 == 1)
    {
      v29 = *a1;
    }

    else
    {
      v29 = *a1;
    }
  }

  else
  {
    v29 = 0;
  }

  return v14 + (v29 | v27) + 1;
}

uint64_t PopoverConditionalStateProvider.popoverContent.getter()
{
  if ((PopoverConditionalStateProvider.isPresented.getter() & 1) == 0)
  {
    return 0;
  }

  v1 = *(v0 + 24);

  return v1;
}

uint64_t _RowVisitationContext.init(index:view:traits:explicitSelectionValue:hasMultipleSelection:deleteControlVisibility:reorderControlVisibility:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v15 = *a4;
  v25 = *a7;
  v26 = *a8;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(AssociatedTypeWitness - 8) + 32))(a9, a1, AssociatedTypeWitness);
  *(a9 + v17) = a2;
  v19 = type metadata accessor for _RowVisitationContext(0, a10, a11, v18);
  v20 = v19[9];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedTypeWitness();
  (*(*(v21 - 8) + 32))(a9 + v20, a3, v21);
  *(a9 + v19[10]) = v15;
  v22 = v19[11];
  swift_getAssociatedTypeWitness();
  v23 = type metadata accessor for Optional();
  result = (*(*(v23 - 8) + 32))(a9 + v22, a5, v23);
  *(a9 + v19[12]) = a6;
  *(a9 + v19[13]) = v25;
  *(a9 + v19[14]) = v26;
  return result;
}

void partial apply for closure #2 in PopoverPresentationModifier.PopoverModifier.body(content:)(char **a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for PopoverPresentationModifier.PopoverModifier(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  closure #2 in PopoverPresentationModifier.PopoverModifier.body(content:)(a1, a2, v10, v7, v8);
}

uint64_t initializeWithCopy for _RowVisitationContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 16;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 48) + 7;
  *((v7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((v7 + a2) & 0xFFFFFFFFFFFFFFF8);
  v8 = v7 & 0xFFFFFFFFFFFFFFF8;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v11 = v10 + 16;
  v12 = *(v10 + 80);
  v13 = v8 + v12 + 8;
  v14 = (v13 + a1) & ~v12;
  v15 = (v13 + a2) & ~v12;
  (*(v10 + 16))(v14, v15, v9);
  v16 = *(v11 + 48) + 7;
  v17 = ((v16 + v14) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((v16 + v15) & 0xFFFFFFFFFFFFFFF8);
  *v17 = *v18;
  v19 = swift_getAssociatedTypeWitness();
  v20 = *(v19 - 8);
  v21 = *(v20 + 80);
  v22 = ((v17 + v21 + 8) & ~v21);
  v23 = ((v18 + v21 + 8) & ~v21);
  v24 = *(v20 + 48);

  if (v24(v23, 1, v19))
  {
    v25 = *(v20 + 84);
    v26 = *(v20 + 64);
    if (v25)
    {
      v27 = v26;
    }

    else
    {
      v27 = v26 + 1;
    }

    memcpy(v22, v23, v27);
  }

  else
  {
    (*(v20 + 16))(v22, v23, v19);
    v29 = *(v20 + 56);
    v28 = v20 + 56;
    v29(v22, 0, 1, v19);
    v25 = *(v28 + 28);
    v26 = *(v28 + 8);
  }

  if (v25)
  {
    v30 = v26;
  }

  else
  {
    v30 = v26 + 1;
  }

  v31 = &v22[v30];
  v32 = &v23[v30];
  *v31 = *v32;
  v31[1] = v32[1];
  v31[2] = v32[2];
  return a1;
}

void closure #2 in PopoverPresentationModifier.PopoverModifier.body(content:)(char **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a2 + 2);
  v8 = *a2;
  v9 = v6;
  v7 = type metadata accessor for PopoverPresentationModifier.PopoverModifier(0, a4, a5, a4);
  PopoverPresentationModifier.PopoverModifier.addAnchorGeometryIfNeeded(presentations:anchorGeometry:)(a1, &v8, v7);
}

double closure #1 in ShadowListDataSource.contextForItem(index:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a4;
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v27 = &v27 - v8;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v27 - v11;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v16 = &v27 - v15;
  (*(v17 + 16))(&v27 - v15, a1, TupleTypeMetadata2, v14);
  v18 = *&v16[*(TupleTypeMetadata2 + 48)];
  v20 = type metadata accessor for _RowVisitationContext(0, a2, a3, v19);
  (*(v10 + 16))(v12, a1 + v20[9], AssociatedTypeWitness);
  v21 = v20[11];
  v33 = *(a1 + v20[10]);
  v22 = v27;
  (*(v28 + 16))(v27, a1 + v21, v29);
  LOBYTE(a1) = *(a1 + v20[12]);
  v24 = type metadata accessor for ShadowListDataSource(0, a2, a3, v23);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v24);
  protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.PrefersFullSizeDragPreviewsKey(&v32);
  protocol witness for static EnvironmentKey.defaultValue.getter in conformance IsHandGestureShortcutEnabled();
  _RowVisitationContext.init(index:view:traits:explicitSelectionValue:hasMultipleSelection:deleteControlVisibility:reorderControlVisibility:)(v16, v18, v12, &v33, v22, a1, &v32, &v31, v30, v24, WitnessTable);

  return result;
}

void PopoverPresentationModifier.PopoverModifier.addAnchorGeometryIfNeeded(presentations:anchorGeometry:)(char **a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 2);
  if (*(v3 + *(a3 + 56) + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>, &type metadata for EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView, &protocol witness table for EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>, &type metadata for EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView, &protocol witness table for EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>, &type metadata for EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView, &protocol witness table for EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>, &type metadata for EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView, &protocol witness table for EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView);
    PropertyList.subscript.getter();
  }

  if (v10[0] != 2 && (v10[0] & 1) != 0 && ((*(*(a3 + 24) + 32))(*(a3 + 16)) & 1) != 0)
  {
    v7 = *a1;
    v8 = *(*a1 + 2);
    if (v8)
    {
      outlined init with copy of PopoverPresentation(&v7[128 * v8 - 96], v10);
      v11 = v5;
      v12 = v6;
      v13 = 0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      }

      if (v8 > *(v7 + 2))
      {
        __break(1u);
      }

      else
      {
        outlined assign with take of PopoverPresentation(v10, &v7[128 * v8 - 96]);
        *a1 = v7;
      }
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for _PreferenceTransformModifier<PresentationOptionsPreferenceKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>, &type metadata for EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView, &protocol witness table for EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t destroy for _RowVisitationContext(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8) + 8;
  (*v4)(a1, AssociatedTypeWitness);
  v5 = (*(v4 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedTypeWitness();
  v7 = *(v6 - 8);
  v8 = v7 + 8;
  v9 = (a1 + *(v7 + 80) + v5 + 8) & ~*(v7 + 80);
  (*(v7 + 8))(v9, v6);
  v10 = (*(v8 + 56) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  v11 = swift_getAssociatedTypeWitness();
  v12 = *(v11 - 8);
  v13 = *(v12 + 80);
  v14 = v10 + v13 + 8;
  v17 = v12;
  result = (*(v12 + 48))(v14 & ~v13, 1, v11);
  if (!result)
  {
    v16 = *(v17 + 8);

    return v16(v14 & ~v13, v11);
  }

  return result;
}

void closure #1 in UICollectionViewListCoordinatorBase.collectionView(_:cellForItemAt:)(uint64_t a1@<X0>, char *a2@<X1>, UICollectionView *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v47 = a5;
  v8 = MEMORY[0x1E69E7D40];
  v9 = type metadata accessor for ShadowListDataSource(0, *((*MEMORY[0x1E69E7D40] & *a2) + 0x60), *(*((*MEMORY[0x1E69E7D40] & *a2) + 0x70) + 8), a4);
  v45 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v42 - v11;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v9, v10);
  v44 = v9;
  v43 = type metadata accessor for _RowVisitationContext(0, v9, WitnessTable, v14);
  v46 = a1;
  v15._countAndFlagsBits = _RowVisitationContext.reuseIdentifier.getter(v43);
  countAndFlagsBits = v15._countAndFlagsBits;
  object = v15._object;
  UICollectionViewListCoordinatorBase.registerIdentifierIfNeeded(_:in:)(v15, a3);
  v18 = MEMORY[0x18D00C850](countAndFlagsBits, object);

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v48 = [(UICollectionView *)a3 dequeueReusableCellWithReuseIdentifier:v18 forIndexPath:isa];

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = swift_dynamicCastUnknownClassUnconditional();
  v22 = &a2[*((*v8 & *a2) + 0x108)];
  v23 = *v22;
  v24 = v22[8];
  v25 = *(swift_getAssociatedConformanceWitness() + 8);
  (*(v25 + 136))(v23, v24, AssociatedTypeWitness, v25);
  v26 = AssociatedTypeWitness;
  PlatformListViewBase.updateViewGraphForDisplay(_:)(0);
  type metadata accessor for AnyListCollectionViewCell();
  v27 = swift_dynamicCastClass();
  v28 = v27;
  if (v27)
  {
    *(v27 + OBJC_IVAR____TtC7SwiftUI25AnyListCollectionViewCell_selectionDelegate + 8) = &protocol witness table for UICollectionViewListCoordinatorBase<A, B>;
    swift_unknownObjectWeakAssign();
    *&v28[OBJC_IVAR____TtC7SwiftUI25AnyListCollectionViewCell_insetsDelegate + 8] = &protocol witness table for UICollectionViewListCoordinatorBase<A, B>;
    swift_unknownObjectWeakAssign();
    *&v28[OBJC_IVAR____TtC7SwiftUI25AnyListCollectionViewCell_editMenuDelegate + 8] = &protocol witness table for UICollectionViewListCoordinatorBase<A, B>;
    swift_unknownObjectWeakAssign();
    v29 = v48;
  }

  v30 = MEMORY[0x1E69E7D40];
  v31 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x88);
  swift_beginAccess();
  v33 = v44;
  v32 = v45;
  (*(v45 + 16))(v12, &a2[v31], v44);
  v34 = *((*v30 & *a2) + 0xA0);
  swift_beginAccess();
  v35 = *&a2[v34];
  outlined copy of Transaction?(v35);
  v36 = v46;
  ShadowListDataSource.configureCell(_:transaction:context:)(v21, v35, v46, v33);
  outlined consume of ListItemTint?(v35);
  (*(v32 + 8))(v12, v33);
  v37 = [v21 layer];
  v49 = *(v36 + *(v43 + 40));
  ViewTraitCollection.zIndex.getter();
  [v37 setZPosition_];

  v38 = (*(v25 + 56))(v26, v25);
  if (v38)
  {
    v39 = specialized _UIHostingView.editMenuBridge.getter();

    type metadata accessor for ListCollectionViewCell(0);
    v40 = swift_dynamicCastClass();
    if (v40)
    {
      v41 = v48;
    }

    swift_unknownObjectWeakAssign();
  }

  *v47 = v21;
}

uint64_t partial apply for closure #1 in ListCoreDataSource.visitRowAt<A>(_:visitor:)()
{
  return (*(v0 + 40))();
}

{
  return partial apply for closure #1 in ListCoreDataSource.visitRowAt<A>(_:visitor:)();
}

uint64_t _RowVisitationContext.reuseIdentifier.getter(uint64_t a1)
{
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v1 = v7 == 0x6C6C65437473694CLL && v8 == 0xE800000000000000;
  if (v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    MEMORY[0x18D00C9B0](45, 0xE100000000000000);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v3 = *(AssociatedConformanceWitness + 16);
    v4 = swift_checkMetadataState();
    v3(v4, AssociatedConformanceWitness);
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v5);
  }

  return v7;
}

void protocol witness for ListCellContent.reuseIdentifier.getter in conformance _ViewList_View()
{
  v1 = *(v0 + 72);
  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v1 <= 0x7FFFFFFF)
  {

    _ViewList_ID.reuseIdentifier.getter();

    return;
  }

  __break(1u);
}

Swift::Void __swiftcall UICollectionViewListCoordinatorBase.registerIdentifierIfNeeded(_:in:)(Swift::String _, UICollectionView *in)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x80);
  swift_beginAccess();
  v7 = *(v2 + v6);

  v8 = specialized Set.contains(_:)(countAndFlagsBits, object, v7);

  if ((v8 & 1) == 0)
  {
    swift_beginAccess();

    specialized Set._Variant.insert(_:)(&v11, countAndFlagsBits, object);
    swift_endAccess();

    swift_getAssociatedTypeWitness();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = MEMORY[0x18D00C850](countAndFlagsBits, object);
    [(UICollectionView *)in registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v10];
  }
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t MergePlatformItemsView.Transform.value.getter(unint64_t a1)
{
  v2 = type metadata accessor for PlatformItemList.Item(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MergePlatformItemsView.Transform.list.getter(a1);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  PlatformItemList.mergedContentItem.getter(v7, v5);

  _s7SwiftUI16CommandOperationVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItemList.Item>, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6F90]);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_18CD63400;
  outlined init with take of PlatformItemList.Item(v5, v9 + v8);
  return v9;
}

id @objc ListCollectionViewCell.init(frame:)(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t (*a7)(void))
{
  v12.receiver = a1;
  v12.super_class = (a7)(0, a6);
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a2, a3, a4, a5);
}

uint64_t protocol witness for Rule.value.getter in conformance MergePlatformItemsView<A>.Transform@<X0>(uint64_t *a1@<X8>)
{
  result = MergePlatformItemsView.Transform.value.getter(*v1);
  *a1 = result;
  return result;
}

id ListCollectionViewCellBase.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = *v4;
  v10 = *MEMORY[0x1E69E7D40];
  *(v4 + direct field offset for ListCollectionViewCellBase.wasEditing) = 0;
  *(v4 + direct field offset for ListCollectionViewCellBase.wasSwiped) = 0;
  v11 = v4 + direct field offset for ListCollectionViewCellBase.cellHostWidth;
  *v11 = 0;
  v11[8] = 1;
  v12 = direct field offset for ListCollectionViewCellBase.lastConfiguration;
  v13 = type metadata accessor for UIListContentConfiguration();
  (*(*(v13 - 8) + 56))(v4 + v12, 1, 1, v13);
  v14 = v4 + direct field offset for ListCollectionViewCellBase.uniformHeight;
  *v14 = 0;
  v14[8] = 1;
  *(v4 + direct field offset for ListCollectionViewCellBase.shouldHugContent) = 0;
  v15 = (v4 + direct field offset for ListCollectionViewCellBase.viewListID);
  *v15 = 0;
  v15[1] = 0;
  v16 = v4 + direct field offset for ListCollectionViewCellBase.selectionBehavior;
  v16[64] = 0;
  *(v16 + 2) = 0u;
  *(v16 + 3) = 0u;
  *v16 = xmmword_18CD633F0;
  *(v16 + 1) = 0u;
  v17 = (v4 + direct field offset for ListCollectionViewCellBase._secondaryNavigationBehavior);
  *v17 = 0;
  v17[1] = 0;
  v17[2] = 0;
  v17[3] = 1;
  v17[5] = 0;
  v17[6] = 0;
  v17[4] = 0;
  *(v4 + direct field offset for ListCollectionViewCellBase.popUpButtonSeed) = -1;
  *(v4 + direct field offset for ListCollectionViewCellBase.host) = 0;
  v19 = type metadata accessor for ListCollectionViewCellBase(0, *((v10 & v9) + 0xA8), *((v10 & v9) + 0xB0), v18);
  v22.receiver = v4;
  v22.super_class = v19;
  v20 = objc_msgSendSuper2(&v22, sel_initWithFrame_, a1, a2, a3, a4);
  [v20 _setAllowsStateUpdatesWhenEvaluatingBackgroundAppearance_];
  [v20 setAutomaticallyUpdatesContentConfiguration_];

  return v20;
}

uint64_t ListCollectionViewCellBase.uniformHeight.setter(uint64_t result, char a2)
{
  v3 = v2 + direct field offset for ListCollectionViewCellBase.uniformHeight;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

void ListCollectionViewCellBase.updateViewGraphForDisplay(_:sizeThatFitsCallback:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *MEMORY[0x1E69E7D40] & *v4;
  if (one-time initialization token for isEnabledInProcessEnv != -1)
  {
    v11 = *MEMORY[0x1E69E7D40] & *v4;
    v12 = a2;
    v13 = a3;
    swift_once();
    v6 = v11;
    a2 = v12;
    a3 = v13;
  }

  if ((static ListUsesUIHostingConfigurationFeature.isEnabledInProcessEnv & 1) == 0)
  {
    v7 = a2;
    v8 = a3;
    v9 = type metadata accessor for ListCollectionViewCellBase(0, *(v6 + 168), *(v6 + 176), a4);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ListCollectionViewCellBase<A>, v9);

    PlatformListViewBase.defaultUpdateViewGraphForDisplay(_:sizeThatFitsCallback:)(v5 & 1, v7, v8, v9, WitnessTable);
  }
}

uint64_t one-time initialization function for isEnabledInProcessEnv()
{
  result = static ProcessEnvironment.BOOL(forKey:defaultValue:)();
  static ListUsesUIHostingConfigurationFeature.isEnabledInProcessEnv = result & 1;
  return result;
}

void *protocol witness for PlatformListViewBase.host.getter in conformance ListCollectionViewCellBase<A>()
{
  v0 = specialized ListCollectionViewCellBase.host.getter();
  v1 = v0;
  return v0;
}

void PlatformListViewBase.defaultUpdateViewGraphForDisplay(_:sizeThatFitsCallback:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a5 + 56);
  v11 = v10(a4, a5);
  if (v11)
  {
    v12 = v11;
    if (((_UIHostingView.isHiddenForReuse.getter() ^ a1) & 1) == 0)
    {
      _UIHostingView.isHiddenForReuse.setter((a1 & 1) == 0);
    }
  }

  v13 = (*(a5 + 88))(a4, a5);
  if (v13)
  {
    v14 = v13;
    if (((_UIHostingView.isHiddenForReuse.getter() ^ a1) & 1) == 0)
    {
      _UIHostingView.isHiddenForReuse.setter((a1 & 1) == 0);
    }
  }

  v15 = v10(a4, a5);
  if (v15)
  {
    v16 = v15;
    _UIHostingView.viewGraph.getter(v15);

    swift_beginAccess();
    type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>(0);
    ViewGraphGeometryObservers.removeAll()();
    swift_endAccess();
  }

  if (a1)
  {
    v17 = v10(a4, a5);
    if (v17)
    {
      v18 = v17;
      v19 = [v17 superview];
      if (v19)
      {
        v20 = v19;
        if (a2)
        {

          [v20 bounds];
          CGRectGetWidth(v24);
          v21 = _ProposedSize.init(width:height:)();
          _UIHostingView.viewGraph.getter(v21);
          v22 = swift_allocObject();
          *(v22 + 16) = a2;
          *(v22 + 24) = a3;
          swift_beginAccess();
          type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>(0);

          ViewGraphGeometryObservers.addObserver(for:exclusive:callback:)();
          swift_endAccess();

          _UIHostingView.viewGraph.getter(v23);
          swift_beginAccess();

          ViewGraphGeometryObservers.resetObserver(for:)();

          outlined consume of TriggerSubmitAction?(a2, a3);
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }
}

uint64_t sub_18BFE1728()
{

  return swift_deallocObject();
}

uint64_t ListCollectionViewCellBase.backgroundHost.getter()
{
  type metadata accessor for UIBackgroundConfiguration?(0);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x18D00DBA0](v1);
  v4 = type metadata accessor for UIBackgroundConfiguration();
  if ((*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    _s5UIKit25UIBackgroundConfigurationVSgWOhTm_0(v3, type metadata accessor for UIBackgroundConfiguration?);
    return 0;
  }

  v6 = UIBackgroundConfiguration.customView.getter();
  _s5UIKit25UIBackgroundConfigurationVSgWOhTm_0(v3, type metadata accessor for UIBackgroundConfiguration?);
  result = 0;
  if (v6)
  {
    type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>(0);
    result = swift_dynamicCastClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

void type metadata accessor for UIBackgroundConfiguration?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UIBackgroundConfiguration?)
  {
    type metadata accessor for UIBackgroundConfiguration();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for UIBackgroundConfiguration?);
    }
  }
}

uint64_t outlined destroy of UIBackgroundConfiguration?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for UICellAccessory.LayoutDimension?(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s5UIKit25UIBackgroundConfigurationVSgWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ShadowListDataSource.configureCell(_:transaction:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a1;
  v44 = a2;
  v6 = *(a4 + 16);
  v41 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v38 = *(v10 - 8);
  v39 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v37 = &v33 - v11;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v34 = &v33 - v13;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v17 = &v33 - v16;
  v36 = type metadata accessor for _RowVisitationContext(0, v6, v9, v18);
  v19 = *(v36 - 8);
  v20 = MEMORY[0x1EEE9AC00](v36);
  v22 = &v33 - v21;
  (*(v15 + 16))(v17, a3, TupleTypeMetadata2, v20);
  v33 = *&v17[*(TupleTypeMetadata2 + 48)];
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, a4);
  v25 = type metadata accessor for _RowVisitationContext(0, a4, WitnessTable, v24);
  v26 = v34;
  (*(v12 + 16))(v34, a3 + v25[9], AssociatedTypeWitness);
  v27 = v25[11];
  v47 = *(a3 + v25[10]);
  v28 = v37;
  (*(v38 + 16))(v37, a3 + v27, v39);
  LOBYTE(a3) = *(a3 + v25[12]);
  protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.PrefersFullSizeDragPreviewsKey(&v46);
  protocol witness for static EnvironmentKey.defaultValue.getter in conformance IsHandGestureShortcutEnabled();
  _RowVisitationContext.init(index:view:traits:explicitSelectionValue:hasMultipleSelection:deleteControlVisibility:reorderControlVisibility:)(v17, v33, v26, &v47, v28, a3, &v46, &v45, v22, v6, v9);
  v29 = v40;
  v30 = v41;
  (*(v41 + 16))(v40, v42, v6);
  v31 = *(v9 + 128);

  v31(v43, v44, v22, v6, v9);
  (*(v30 + 8))(v29, v6);
  return (*(v19 + 8))(v22, v36);
}

uint64_t CollectionViewListDataSource.configureCell(_:transaction:context:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a2;
  v41 = a1;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionViewListDataSource<A>, a4);
  v8 = type metadata accessor for _RowVisitationContext(0, a4, WitnessTable, v7);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v33[-v10];
  v36 = v12;
  (*(v12 + 16))(&v33[-v10], a3, v8, v9);
  v13 = *(v11 + 18);
  v14 = *(v11 + 19);
  v15 = *(v11 + 10);
  v16 = *(v11 + 14);
  v39 = v4;
  v40 = a4;
  v17 = *(v4 + *(a4 + 52));
  v18 = *(v15 + 16);
  swift_bridgeObjectRetain_n();
  v37 = v8;
  if (v18)
  {
    v19 = *(v15 + 32);
    v20 = *(v15 + 52);

    if (v20)
    {
      v21 = -1;
    }

    else
    {
      v21 = v14;
    }

    v34 = v21;
  }

  else
  {

    v19 = 0;
    v34 = v14;
  }

  KeyPath = swift_getKeyPath();
  v50 = 0;
  v51 = swift_getKeyPath();
  v52 = 0;
  v53 = swift_getKeyPath();
  v54 = 0;
  v55 = swift_getKeyPath();
  v56 = 0;
  v58 = 0;
  v57 = 0;
  v59 = 0;
  v22 = swift_getKeyPath();
  v48 = 0;
  v60 = v22;
  v61 = 0;
  v63 = 1;
  v64 = 0;
  v42 = v16;
  ViewTraitCollection.listRowInsets.getter();
  v42 = v16;
  v45 = 0;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v47 = v16;
  v45 = 1;
  v46 = 0;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  outlined consume of ListItemTint?(v45);
  v23 = v42;
  v24 = v43;
  outlined consume of ListItemTint?(1);
  v63 = v23;
  v64 = v24;
  v65 = 0;
  v66 = v17;
  v67 = v13;
  v68 = v34;
  v69 = v19;
  v70 = 1;
  v62 = 0;
  v25 = (v41 + direct field offset for ListCollectionViewCellBase.viewListID);
  *v25 = v13 | (v14 << 32);
  v25[1] = v15;

  v42 = *(v11 + 14);
  LOBYTE(v45) = 0;

  v26 = ViewTraitCollection.listItemBackground(kind:)(&v45);

  if (*(v39 + *(v40 + 44) + 8))
  {
    v27 = MEMORY[0x1E697FE38];
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListDeleteAccessoryVisibilityKey>, &type metadata for ListDeleteAccessoryVisibilityKey, &protocol witness table for ListDeleteAccessoryVisibilityKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListDeleteAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListDeleteAccessoryVisibilityKey>, &type metadata for ListDeleteAccessoryVisibilityKey, &protocol witness table for ListDeleteAccessoryVisibilityKey);

    PropertyList.Tracker.value<A>(_:for:)();

    v28 = v37;
    v11[*(v37 + 52)] = v42;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListAccessoryVisibilityKey>, &type metadata for ListAccessoryVisibilityKey, &protocol witness table for ListAccessoryVisibilityKey, v27);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListAccessoryVisibilityKey>, &type metadata for ListAccessoryVisibilityKey, &protocol witness table for ListAccessoryVisibilityKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    v29 = MEMORY[0x1E697FE38];
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListDeleteAccessoryVisibilityKey>, &type metadata for ListDeleteAccessoryVisibilityKey, &protocol witness table for ListDeleteAccessoryVisibilityKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListDeleteAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListDeleteAccessoryVisibilityKey>, &type metadata for ListDeleteAccessoryVisibilityKey, &protocol witness table for ListDeleteAccessoryVisibilityKey);

    PropertyList.subscript.getter();
    v28 = v37;
    v11[*(v37 + 52)] = v42;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListAccessoryVisibilityKey>, &type metadata for ListAccessoryVisibilityKey, &protocol witness table for ListAccessoryVisibilityKey, v29);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListAccessoryVisibilityKey>, &type metadata for ListAccessoryVisibilityKey, &protocol witness table for ListAccessoryVisibilityKey);
    PropertyList.subscript.getter();
  }

  v11[*(v28 + 56)] = v42;
  v30 = v40;
  v11[*(v28 + 48)] = *(v39 + *(v40 + 48));
  ListCollectionViewCellBase.configureAccessories<A>(context:)(v11, v30, WitnessTable);
  outlined init with copy of _ViewList_View((v11 + 16), &v42);
  outlined init with copy of CollectionViewCellModifier(&KeyPath, &v44);
  v31 = v38;
  specialized ListCollectionViewCellBase.configureContent(_:transaction:)(&v42, v38);
  outlined destroy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(&v42);
  _s7SwiftUI20PlatformListViewBasePAASo6UIViewCRbzrlE19configureBackground_6traits11transactionyAA15ModifiedContentVyAA03AnyE0V0I8ModifierQzGSg_AA0E15TraitCollectionVAA11TransactionVSgtFAA0dqe4CellF0CyAA01_ed1_E0VG_Tt0g5(v26, v31);

  outlined destroy of CollectionViewCellModifier(&KeyPath);
  return (*(v36 + 8))(v11, v28);
}

void *ViewTraitCollection.listRowInsets.getter()
{
  v2 = *v1;
  v10 = *v1;
  v7 = 0u;
  v8 = 0u;
  v9 = 1;
  v3 = ViewTraitCollection.value<A>(for:defaultValue:)();
  if (v6)
  {
    *&v7 = v2;
    MEMORY[0x18D007000](&v5, v3);
    return ViewTraitCollection.value<A>(for:defaultValue:)();
  }

  else
  {
    static Edge.Set.all.getter();
    return OptionalEdgeInsets.init(_:edges:)();
  }
}

unint64_t ViewTraitCollection.listItemBackground(kind:)(unsigned __int8 *a1)
{
  v1 = *a1;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  outlined consume of Text.LineStyle?(0, 1);
  v2 = v5;
  if (v5 == 1)
  {
    if (v1)
    {
      return 0;
    }

LABEL_7:
    ViewTraitCollection.value<A>(for:defaultValue:)();
    return v4;
  }

  if (v1 <= 0x3F && ((v4 >> v1) & 1) == 0)
  {
    outlined consume of Text.LineStyle?(v4, v5);
    if (v1)
    {
      return 0;
    }

    goto LABEL_7;
  }

  return v2;
}

double outlined consume of Text.LineStyle?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t ListCollectionViewCellBase.configureAccessories<A>(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UICellAccessory.ReorderOptions();
  v85 = *(v6 - 8);
  v86 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v84 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UICellAccessory.DeleteOptions();
  v92 = *(v8 - 8);
  v93 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v91 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIListContentConfiguration?(0, &lazy cache variable for type metadata for UICellAccessory.LayoutDimension?, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v98 = &v78 - v11;
  v12 = type metadata accessor for UICellAccessory.MultiselectOptions();
  v80 = *(v12 - 8);
  v81 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v79 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for UICellAccessory.DisplayedState();
  v99 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v83 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v82 = &v78 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v88 = &v78 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v90 = &v78 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v89 = &v78 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v95 = &v78 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v78 - v26;
  v97 = type metadata accessor for UICellAccessory();
  v28 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v87 = &v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v94 = &v78 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v78 - v33;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = type metadata accessor for Optional();
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v78 - v38;
  v41 = type metadata accessor for _RowVisitationContext(0, a2, a3, v40);
  _RowVisitationContext.selectionValue(respectSelectionDisabled:)(1, v41, v39);
  LODWORD(a2) = (*(*(AssociatedTypeWitness - 8) + 48))(v39, 1, AssociatedTypeWitness);
  (*(v37 + 8))(v39, v36);
  if (a2 == 1)
  {
    v42 = MEMORY[0x1E69E7CC0];
    v43 = v96;
    v44 = v28;
LABEL_8:
    v50 = v94;
    goto LABEL_9;
  }

  v44 = v28;
  if (*(a1 + v41[12]) != 1)
  {
    v42 = MEMORY[0x1E69E7CC0];
    v43 = v96;
    goto LABEL_8;
  }

  v45 = v99;
  v43 = v96;
  (*(v99 + 104))(v27, *MEMORY[0x1E69DBF18], v96);
  v46 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v46 - 8) + 56))(v98, 1, 1, v46);
  v47 = v79;
  UICellAccessory.MultiselectOptions.init(isHidden:reservedLayoutWidth:tintColor:backgroundColor:)();
  static UICellAccessory.multiselect(displayed:options:)();
  (*(v80 + 8))(v47, v81);
  (*(v45 + 8))(v27, v43);
  v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v49 = v42[2];
  v48 = v42[3];
  if (v49 >= v48 >> 1)
  {
    v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v42);
  }

  v50 = v94;
  v42[2] = v49 + 1;
  (*(v44 + 32))(v42 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v49, v34, v97);
LABEL_9:
  v51 = _RowVisitationContext.canDelete.getter(v41);
  v52 = v95;
  if (v51 || *(a1 + v41[13]) && (_RowVisitationContext.hasSwipeActions.getter(v41) & 1) != 0)
  {
    v53 = *(a1 + v41[13]);
    v54 = v53 >= 2;
    if (v53 > 2)
    {
      if (v53 != 3)
      {
        goto LABEL_23;
      }

      v96 = v44;
      v55 = MEMORY[0x1E69DBF28];
    }

    else
    {
      v96 = v44;
      v55 = MEMORY[0x1E69DBF20];
      if (!v54)
      {
        v55 = MEMORY[0x1E69DBF18];
      }
    }

    v56 = v99;
    v57 = v90;
    (*(v99 + 104))(v90, *v55, v43);
    v58 = *(v56 + 32);
    v59 = v89;
    v58(v89, v57, v43);
    v58(v52, v59, v43);
    v60 = type metadata accessor for UICellAccessory.LayoutDimension();
    (*(*(v60 - 8) + 56))(v98, 1, 1, v60);
    v61 = v91;
    UICellAccessory.DeleteOptions.init(isHidden:reservedLayoutWidth:tintColor:backgroundColor:)();
    static UICellAccessory.delete(displayed:options:actionHandler:)();
    (*(v92 + 8))(v61, v93);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42[2] + 1, 1, v42);
    }

    v44 = v96;
    v63 = v42[2];
    v62 = v42[3];
    if (v63 >= v62 >> 1)
    {
      v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1, v42);
    }

    (*(v99 + 8))(v52, v43);
    v42[2] = v63 + 1;
    (*(v44 + 32))(v42 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v63, v50, v97);
  }

LABEL_23:
  if (_RowVisitationContext.canMove.getter(v41))
  {
    v64 = *(a1 + v41[14]);
    v65 = v64 >= 2;
    if (v64 > 2)
    {
      v68 = v87;
      v67 = v88;
      if (v64 != 3)
      {
        return UICollectionViewListCell.accessories.setter();
      }

      v66 = MEMORY[0x1E69DBF28];
    }

    else
    {
      v66 = MEMORY[0x1E69DBF20];
      if (!v65)
      {
        v66 = MEMORY[0x1E69DBF18];
      }

      v68 = v87;
      v67 = v88;
    }

    v69 = v99;
    v70 = v83;
    (*(v99 + 104))(v83, *v66, v43);
    v71 = *(v69 + 32);
    v72 = v82;
    v71(v82, v70, v43);
    v71(v67, v72, v43);
    v73 = type metadata accessor for UICellAccessory.LayoutDimension();
    (*(*(v73 - 8) + 56))(v98, 1, 1, v73);
    v74 = v84;
    UICellAccessory.ReorderOptions.init(isHidden:reservedLayoutWidth:tintColor:showsVerticalSeparator:)();
    static UICellAccessory.reorder(displayed:options:)();
    (*(v85 + 8))(v74, v86);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42[2] + 1, 1, v42);
    }

    v76 = v42[2];
    v75 = v42[3];
    if (v76 >= v75 >> 1)
    {
      v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v76 + 1, 1, v42);
    }

    (*(v99 + 8))(v67, v43);
    v42[2] = v76 + 1;
    (*(v44 + 32))(v42 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v76, v68, v97);
  }

  return UICollectionViewListCell.accessories.setter();
}

uint64_t PlatformItemListTextRepresentable.PlatformRepresentation.value.getter(uint64_t a1)
{
  v1 = type metadata accessor for PlatformItemList.Item(0);
  v2 = (v1 - 8);
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v31[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = *AGGraphGetValue();
  v6 = v32;
  v7 = PlatformTextRepresentableContext.text.getter();

  _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(&v33);
  memset(v31, 0, 304);
  v5[32] = 0;
  *(v5 + 3) = 0;
  *(v5 + 8) = 0u;
  *(v5 + 5) = -1;
  v5[56] = 1;
  v8 = v42;
  *(v5 + 12) = v41;
  *(v5 + 13) = v8;
  *(v5 + 14) = v43[0];
  *(v5 + 235) = *(v43 + 11);
  v9 = v38;
  *(v5 + 8) = v37;
  *(v5 + 9) = v9;
  v10 = v40;
  *(v5 + 10) = v39;
  *(v5 + 11) = v10;
  v11 = v34;
  *(v5 + 4) = v33;
  *(v5 + 5) = v11;
  v12 = v36;
  *(v5 + 6) = v35;
  *(v5 + 7) = v12;
  *(v5 + 19) = 0u;
  *(v5 + 20) = 0u;
  *(v5 + 17) = 0u;
  *(v5 + 18) = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 42) = 0x3FFFFFFFCLL;
  *(v5 + 344) = 0u;
  *(v5 + 360) = 0u;
  *(v5 + 376) = 0u;
  *(v5 + 392) = 0u;
  *(v5 + 51) = 0;
  *(v5 + 52) = 1;
  *(v5 + 424) = 0u;
  *(v5 + 440) = 0u;
  *(v5 + 456) = 0u;
  v5[472] = 0;
  *(v5 + 60) = 0;
  *(v5 + 488) = 0u;
  v5[504] = 0;
  *(v5 + 32) = 0u;
  v5[528] = 4;
  *(v5 + 536) = 0u;
  *(v5 + 552) = 0u;
  *(v5 + 568) = 0u;
  *(v5 + 584) = 0u;
  *(v5 + 600) = 0u;
  *(v5 + 616) = 0u;
  *(v5 + 632) = 0u;
  *(v5 + 648) = 0u;
  *(v5 + 664) = 0u;
  *(v5 + 680) = 0u;
  *(v5 + 696) = 0u;
  *(v5 + 712) = 0u;
  *(v5 + 728) = 0u;
  *(v5 + 744) = 0u;
  *(v5 + 760) = 0u;
  *(v5 + 776) = 0u;
  *(v5 + 792) = 0u;
  *(v5 + 808) = 0u;
  *(v5 + 824) = 0u;
  *(v5 + 840) = 0u;
  *(v5 + 107) = 0;
  *(v5 + 108) = 1;
  *(v5 + 872) = 0u;
  *(v5 + 888) = 0u;
  *(v5 + 904) = 0u;
  *(v5 + 920) = 0u;
  *(v5 + 936) = 0u;
  *(v5 + 476) = 1283;
  v5[954] = 3;
  v13 = v2[30];
  v14 = type metadata accessor for CommandOperation(0);
  (*(*(v14 - 8) + 56))(&v5[v13], 1, 1, v14);
  v5[v2[31]] = 0;
  v5[v2[32]] = 0;
  v5[v2[33]] = 2;
  v5[v2[34]] = 0;
  v5[v2[35]] = 0;
  v15 = v2[36];
  *v5 = v7;
  v16 = *(v5 + 13);
  v44[8] = *(v5 + 12);
  v44[9] = v16;
  v45[0] = *(v5 + 14);
  *(v45 + 11) = *(v5 + 235);
  v17 = *(v5 + 9);
  v44[4] = *(v5 + 8);
  v44[5] = v17;
  v18 = *(v5 + 11);
  v44[6] = *(v5 + 10);
  v44[7] = v18;
  v19 = *(v5 + 5);
  v44[0] = *(v5 + 4);
  v44[1] = v19;
  v20 = *(v5 + 7);
  v44[2] = *(v5 + 6);
  v44[3] = v20;
  _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(v44, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
  v21 = v42;
  *(v5 + 12) = v41;
  *(v5 + 13) = v21;
  *(v5 + 14) = v43[0];
  *(v5 + 235) = *(v43 + 11);
  v22 = v38;
  *(v5 + 8) = v37;
  *(v5 + 9) = v22;
  v23 = v40;
  *(v5 + 10) = v39;
  *(v5 + 11) = v23;
  v24 = v34;
  *(v5 + 4) = v33;
  *(v5 + 5) = v24;
  v25 = v36;
  *(v5 + 6) = v35;
  *(v5 + 7) = v25;
  v26 = *(v5 + 456);
  v46[2] = *(v5 + 440);
  v46[3] = v26;
  v47 = v5[472];
  v27 = *(v5 + 424);
  v46[0] = *(v5 + 408);
  v46[1] = v27;
  _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(v46, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
  *(v5 + 408) = xmmword_18CD633F0;
  *(v5 + 424) = 0u;
  *(v5 + 440) = 0u;
  *(v5 + 456) = 0u;
  v5[472] = 0;
  outlined assign with take of PlatformItemList.Item.Accessibility?(v31, (v5 + 536), &lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?, &type metadata for PlatformItemList.Item.Accessibility);
  *&v5[v15] = 0;
  *(v5 + 6) = 0;
  _s7SwiftUI16CommandOperationVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItemList.Item>, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6F90]);
  v28 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_18CD63400;
  outlined init with take of PlatformItemList.Item(v5, v29 + v28);
  return v29;
}