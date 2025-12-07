uint64_t protocol witness for BaseFocusResponder.platformItem.getter in conformance DefaultFocusSectionResponder()
{
  specialized DefaultFocusSectionResponder.platformItem.getter();

  return swift_unknownObjectRetain();
}

uint64_t UIKitContainerFocusItem.defaultFocusItemsContainer()(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 16))();
  if (result)
  {
    v5 = (*(a2 + 8))(a1, a2);
    if (v5)
    {
      MEMORY[0x1EEE9AC00](v5);
      MEMORY[0x1EEE9AC00](v6);
      v8 = v7;
      dispatch thunk of ResponderNode.visit(applying:)();
    }

    return 0;
  }

  return result;
}

void *protocol witness for UIKitContainerFocusItem.host.getter in conformance _UIHostingView<A1>()
{
  v0 = FocusStoreLocation.id.getter();
  v1 = v0;
  return v0;
}

char *UIKitContainerFocusItem<>.rootResponder()()
{
  v1 = UIFocusEnvironment.nearestRenderer()();
  if (!v1)
  {
    return 0;
  }

  if (v1 == v0)
  {
    v5 = v2;
    ObjectType = swift_getObjectType();
    v3 = (*(v5 + 24))(ObjectType, v5);
  }

  else
  {
    v3 = UIFocusEnvironment.nearestResponder(in:)(v1, v2);
  }

  v4 = v3;
  swift_unknownObjectRelease();
  return v4;
}

void UIKitFocusableViewResponderItem.stopTrackingFrameChanges()()
{
  if (AGWeakAttributeGetAttribute() != *MEMORY[0x1E698D3F8])
  {
    v1 = AGGraphGetAttributeSubgraph();
    IsValid = AGSubgraphIsValid();

    if (IsValid)
    {
      if ((*(v0 + OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem_frameChangeDetector + 4) & 1) == 0)
      {
        AGGraphGetFlags();
        AGGraphSetFlags();
      }
    }
  }

  v3 = v0 + OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem_frameChangeDetector;
  *v3 = 0;
  *(v3 + 4) = 1;
}

void DefaultFocusSectionResponderFilter.updateValue()()
{
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  v3 = v2;
  v4 = *Value;
  v5 = Value[1];
  v6 = AGGraphGetValue();
  v8 = v7;
  v9 = *v6;
  v10 = *(v6 + 8);
  v24 = *(v6 + 16);
  v25 = *(v6 + 32);

  AGGraphGetValue();
  v12 = v11;
  v13 = AGGraphGetValue();
  v15 = v14;
  v16 = *v13;
  v17 = *(v0 + 24);
  type metadata accessor for BaseFocusResponder?(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);

  AGGraphGetValue();
  if (v18)
  {

    MultiViewResponder.children.setter();
  }

  if ((v3 & 1) != 0 || (v8 & 1) != 0 || (v12 & 1) != 0 || (v15 & 1) != 0 || !AGGraphGetOutputValue())
  {

    ViewTransform.appendPosition(_:)(__PAIR128__(v5, v4));
    *(v17 + 216) = v9;
    *(v17 + 224) = v10;
    *(v17 + 232) = v24;
    *(v17 + 248) = v25;

    v20 = MEMORY[0x18D00B390](v19);
    v22 = v21;

    *(v17 + 264) = v20;
    *(v17 + 272) = v22;
    *(v17 + 280) = v16;
  }

  if (AGGraphGetOutputValue())
  {
  }

  else
  {
    type metadata accessor for _ContiguousArrayStorage<Text>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_18CD69590;
    *(v23 + 32) = v17;

    AGGraphSetOutputValue();
  }
}

void type metadata accessor for BaseFocusResponder?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t assignWithCopy for FocusItem(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of FocusItem.Base(a1);
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
        *(a1 + 8) = *(a2 + 8);
        v6 = *(a2 + 24);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 24) = v6;
        *(a1 + 32) = 0;

        goto LABEL_8;
      }

      swift_unknownObjectWeakCopyInit();
      v5 = 1;
    }

    *(a1 + 32) = v5;
  }

LABEL_8:
  *(a1 + 33) = *(a2 + 33);
  swift_weakCopyAssign();
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

unint64_t lazy protocol witness table accessor for type UIKitFocusableViewResponderItem.FocusedStateCommitMutation and conformance UIKitFocusableViewResponderItem.FocusedStateCommitMutation()
{
  result = lazy protocol witness table cache variable for type UIKitFocusableViewResponderItem.FocusedStateCommitMutation and conformance UIKitFocusableViewResponderItem.FocusedStateCommitMutation;
  if (!lazy protocol witness table cache variable for type UIKitFocusableViewResponderItem.FocusedStateCommitMutation and conformance UIKitFocusableViewResponderItem.FocusedStateCommitMutation)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UIKitFocusableViewResponderItem.FocusedStateCommitMutation, &unk_1F0012270, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitFocusableViewResponderItem.FocusedStateCommitMutation and conformance UIKitFocusableViewResponderItem.FocusedStateCommitMutation);
  }

  return result;
}

uint64_t specialized DefaultFocusSectionResponder.platformItem.getter()
{
  result = *(v0 + 304);
  if (!result)
  {
    v2 = objc_allocWithZone(type metadata accessor for UIKitDefaultFocusSectionResponderItem(0));
    swift_weakInit();
    swift_unknownObjectWeakInit();
    *&v2[direct field offset for UIKitContainerFocusResponderItem.frameAttr] = 0;
    v2[direct field offset for UIKitContainerFocusResponderItem.isEnabled] = 1;
    *&v2[direct field offset for UIKitContainerFocusResponderItem.cachedCoordinateSpace] = 0;
    swift_weakAssign();
    type metadata accessor for UIKitContainerFocusResponderItem<DefaultFocusSectionResponder>(0);
    v6.receiver = v2;
    v6.super_class = v3;
    v4 = objc_msgSendSuper2(&v6, sel_init);
    v5 = *(v0 + 304);
    *(v0 + 304) = v4;

    return *(v0 + 304);
  }

  return result;
}

unint64_t type metadata accessor for UIFocusEnvironment()
{
  result = lazy cache variable for type metadata for UIFocusEnvironment;
  if (!lazy cache variable for type metadata for UIFocusEnvironment)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIFocusEnvironment);
  }

  return result;
}

uint64_t protocol witness for GraphMutation.apply() in conformance UIKitFocusableViewResponderItem.FocusedStateCommitMutation()
{
  result = AGWeakAttributeGetAttribute();
  if (result != *MEMORY[0x1E698D3F8])
  {
    return AGGraphSetValue();
  }

  return result;
}

void AccessibilityViewGraph.update(graph:)(uint64_t a1)
{
  v2 = v1;
  v66 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v4 = *(a1 + 361);
  swift_beginAccess();
  if (*(a1 + 360) == 1)
  {
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_70;
    }

    if (!AGGraphGetWeakValue())
    {
LABEL_55:
      if (*(v2 + 44) == 1)
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v42 = *(a1 + 208);
          ObjectType = swift_getObjectType();
          v44 = type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for ViewRendererHost, MEMORY[0x1E697EB90]);
          (*(v42 + 16))(&v63, v44, v44, ObjectType, v42);
          v45 = swift_unknownObjectRelease();
          v46 = v63;
          if (v63)
          {
            v47 = matched;
            if (static AccessibilityFocus.accessibilityFocusNeedsUpdate == 1)
            {
              if (one-time initialization token for lastFocus != -1)
              {
                v45 = swift_once();
              }

              static AccessibilityFocus.lastFocus = specialized static AccessibilityFocus.resolvePlatformFocus()(v45);

              static AccessibilityFocus.accessibilityFocusNeedsUpdate = 0;
            }

            if (one-time initialization token for lastFocus != -1)
            {
              swift_once();
            }

            swift_unknownObjectRetain();

            v49 = specialized _NativeDictionary.filter(_:)(v48, v46, v47);

            swift_unknownObjectRelease();
            lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
            v50 = ViewGraph.subscript.getter();
            if (v50 && *(v50 + 40) != *MEMORY[0x1E698D3F8] && (v63 = v49, AGGraphSetValue()) && swift_unknownObjectWeakLoadStrong())
            {
              v51 = *(a1 + 208);
              v52 = swift_getObjectType();
              (*(*(v51 + 8) + 16))(v52);
              swift_unknownObjectRelease();

              swift_unknownObjectRelease();
            }

            else
            {
              swift_unknownObjectRelease();
            }
          }
        }
      }

LABEL_70:
      if (*(v2 + 24) == 1)
      {
        WeakValue = AGGraphGetWeakValue();
        if (WeakValue)
        {
          v54 = *(WeakValue + 8);
          if (*(v2 + 16) != v54)
          {
            *(v2 + 16) = v54;
            *(v2 + 24) = 0;
            swift_beginAccess();
            if (swift_unknownObjectWeakLoadStrong())
            {
              v55 = *(a1 + 208);
              v56 = swift_getObjectType();
              v57 = type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for AccessibilityHost, &protocol descriptor for AccessibilityHost);
              v58 = *(v55 + 16);

              v58(v62, v57, v57, v56, v55);
              swift_unknownObjectRelease();
              if (v62[0])
              {
                v59 = v62[1];
                v60 = swift_getObjectType();
                v61 = MEMORY[0x1EEE9AC00](v60);
                (*(v59 + 8))(closure #1 in AccessibilityViewGraph.postUpdate(graph:list:)partial apply, v61);
                swift_unknownObjectRelease();

                goto LABEL_77;
              }

LABEL_76:

              goto LABEL_77;
            }
          }
        }
      }

      goto LABEL_77;
    }

    PreferenceValues.subscript.getter();
    v5 = v63;
    v6 = *(v63 + 16);
    if (!v6)
    {
      v7 = 0;
      goto LABEL_28;
    }

    if (v6 == 1)
    {
      v7 = 0;
      v8 = 0;
    }

    else
    {
      v7 = 0;
      v14 = 0;
      v8 = v6 & 0x7FFFFFFFFFFFFFFELL;
      v15 = (v63 + 88);
      v16 = v6 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v17 = *(v15 - 7);
        v19 = *v15;
        v15 += 14;
        v18 = v19;
        if (v17 > v7)
        {
          v7 = v17;
        }

        if (v18 > v14)
        {
          v14 = v18;
        }

        v16 -= 2;
      }

      while (v16);
      if (v7 <= v14)
      {
        v7 = v14;
      }

      if (v6 == v8)
      {
LABEL_28:
        if (*(v2 + 48) == v7)
        {

          goto LABEL_55;
        }

        v63 = 0;
        matched = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI30AccessibilityEnabledTechnologyO_SDyAC0E5FocusV5MatchOShyAC8UniqueIDVGGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v65 = MEMORY[0x1E69E7CC8];

        AccessibilityFocusStore.makeStoreContent(_:)(v24);

        lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
        v25 = ViewGraph.subscript.getter();
        if (v25 && *(v25 + 36) != *MEMORY[0x1E698D3F8] && (v63 = 0, (AGGraphSetValue() & 1) != 0) && (swift_beginAccess(), swift_unknownObjectWeakLoadStrong()))
        {
          v26 = *(a1 + 208);
          v27 = swift_getObjectType();
          (*(*(v26 + 8) + 16))(v27);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        v28 = *(v5 + 16);
        if (v28)
        {
          if (v28 == 1)
          {
            v29 = 0;
            v30 = 0;
          }

          else
          {
            v31 = 0;
            v32 = 0;
            v30 = v28 & 0x7FFFFFFFFFFFFFFELL;
            v33 = (v5 + 88);
            v34 = v28 & 0x7FFFFFFFFFFFFFFELL;
            do
            {
              v35 = *(v33 - 7);
              v37 = *v33;
              v33 += 14;
              v36 = v37;
              if (v35 > v31)
              {
                v31 = v35;
              }

              if (v36 > v32)
              {
                v32 = v36;
              }

              v34 -= 2;
            }

            while (v34);
            if (v31 <= v32)
            {
              v29 = v32;
            }

            else
            {
              v29 = v31;
            }

            if (v28 == v30)
            {
              goto LABEL_54;
            }
          }

          v38 = v28 - v30;
          v39 = (v5 + 56 * v30 + 32);
          do
          {
            v41 = *v39;
            v39 += 7;
            v40 = v41;
            if (v41 > v29)
            {
              v29 = v40;
            }

            --v38;
          }

          while (v38);
        }

        else
        {
          v29 = 0;
        }

LABEL_54:

        *(v2 + 48) = v29;
        goto LABEL_55;
      }
    }

    v20 = v6 - v8;
    v21 = (v63 + 56 * v8 + 32);
    do
    {
      v23 = *v21;
      v21 += 7;
      v22 = v23;
      if (v23 > v7)
      {
        v7 = v22;
      }

      --v20;
    }

    while (v20);
    goto LABEL_28;
  }

  if ((v4 & 0x20) != 0 && *(v2 + 44) == 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI30AccessibilityEnabledTechnologyO_AC0E5FocusV6TargetVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

    v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI30AccessibilityEnabledTechnologyO_AC0E5FocusV6TargetVTt0g5Tf4g_n(v9);
    lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
    v11 = ViewGraph.subscript.getter();
    if (!v11)
    {
      goto LABEL_76;
    }

    if (*(v11 + 40) == *MEMORY[0x1E698D3F8])
    {
      goto LABEL_76;
    }

    v63 = v10;
    if (!AGGraphSetValue())
    {
      goto LABEL_76;
    }

    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_76;
    }

    v12 = *(a1 + 208);
    v13 = swift_getObjectType();
    (*(*(v12 + 8) + 16))(v13);

    swift_unknownObjectRelease();
  }

LABEL_77:
  *(v2 + 44) = 0;
}

double outlined copy of UserDefaultObserver.State(void *a1)
{
  if (a1)
  {
    v1 = a1;
  }

  return result;
}

void *UserDefaultObserver.unobserve(oldDefaults:key:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  lazy protocol witness table accessor for type String and conformance String();
  if (StringProtocol.contains<A>(_:)())
  {
    v8 = [objc_opt_self() defaultCenter];
    [v8 removeObserver:v4 name:*MEMORY[0x1E696AA70] object:{a1, v14, v15, v17, v19}];
  }

  else
  {
    v8 = MEMORY[0x18D00C850](a2, a3);
    [a1 removeObserver:v4 forKeyPath:v8 context:{&static UserDefaultObserver.observationContext, 46, 0xE100000000000000, a2, a3}];
  }

  v9 = (v4 + OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_state);
  v10 = *(v4 + OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_state);
  v11 = *(v4 + OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_state + 8);
  v12 = *(v4 + OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_state + 16);
  v9[1] = 0;
  v9[2] = 0;
  *v9 = 0;
  return outlined consume of UserDefaultObserver.State(v10, v11, v12);
}

void destroy for UserDefaultObserver.Target(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 2)
  {
    v1 = *a1 + 2;
  }

  if (v1 == 1)
  {
  }

  else
  {
    swift_weakDestroy();
  }
}

uint64_t specialized DefaultFocusSectionResponder.hostedItem.getter()
{
  result = *(v0 + 304);
  if (!result)
  {
    v2 = objc_allocWithZone(type metadata accessor for UIKitDefaultFocusSectionResponderItem(0));
    swift_weakInit();
    swift_unknownObjectWeakInit();
    *&v2[direct field offset for UIKitContainerFocusResponderItem.frameAttr] = 0;
    v2[direct field offset for UIKitContainerFocusResponderItem.isEnabled] = 1;
    *&v2[direct field offset for UIKitContainerFocusResponderItem.cachedCoordinateSpace] = 0;
    swift_weakAssign();
    type metadata accessor for UIKitContainerFocusResponderItem<DefaultFocusSectionResponder>(0);
    v6.receiver = v2;
    v6.super_class = v3;
    v4 = objc_msgSendSuper2(&v6, sel_init);
    v5 = *(v0 + 304);
    *(v0 + 304) = v4;

    return *(v0 + 304);
  }

  return result;
}

void type metadata accessor for UIKitContainerFocusResponderItem<DefaultFocusSectionResponder>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UIKitContainerFocusResponderItem<DefaultFocusSectionResponder>)
  {
    v2 = type metadata accessor for DefaultFocusSectionResponder(255);
    v4 = type metadata accessor for UIKitContainerFocusResponderItem(a1, v2, &protocol witness table for DefaultFocusSectionResponder, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for UIKitContainerFocusResponderItem<DefaultFocusSectionResponder>);
    }
  }
}

BOOL _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA022ButtonKeyboardShortcutD033_254C3FE5924A018B482F2F0C0D49154FLLV_Tt1B5(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (!a2)
  {
    if (!a6)
    {

      return 1;
    }

    goto LABEL_13;
  }

  if (!a6)
  {
LABEL_13:

    return 0;
  }

  if (a1 == a5 && a2 == a6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v13 = a3 == a7 && a4 == a8;
  }

  else
  {

    v13 = 0;
  }

  swift_bridgeObjectRelease_n();
  return v13;
}

void ButtonResponder.updateValue()()
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 32);
  if (!v1)
  {
    v2 = *(v0 + 24);
    type metadata accessor for PlatformUnaryViewResponder(0);
    *(swift_allocObject() + 256) = v2;

    v1 = UIViewResponder.init()();
    swift_beginAccess();
    swift_weakLoadStrong();

    swift_weakAssign();

    *(v0 + 32) = v1;
  }

  type metadata accessor for HostingUIButton();
  swift_retain_n();
  AGGraphGetValue();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  AGGraphGetValue();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v9 = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  AGGraphGetValue();
  type metadata accessor for CGPoint(0);
  AGGraphGetValue();
  Value = AGGraphGetValue();
  v4 = *(Value + 8);
  v10 = *Value;
  v11 = v4;
  v5 = *(Value + 32);
  v12 = *(Value + 16);
  v13 = v5;
  swift_beginAccess();
  type metadata accessor for ContentResponderHelper<UIViewContentResponder>(0);

  ContentResponderHelper.update(data:size:position:transform:parent:)();
  outlined destroy of UIViewContentResponder(v8);
  swift_endAccess();

  AGGraphGetValue();
  swift_weakAssign();
  _sSo8UIButtonC5UIKitE13ConfigurationVSgMaTm_0(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);

  AGGraphGetValue();
  if (v6)
  {

    dispatch thunk of MultiViewResponder.children.setter();
  }

  if (AGGraphGetOutputValue())
  {
  }

  else
  {
    _s7SwiftUI7BindingVySbGMaTm_10(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_18CD69590;
    *(v7 + 32) = v1;
    v10 = v7;
    AGGraphSetOutputValue();
  }
}

BOOL protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance MenuControlGroupSizeKey(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = v3 == 2 && v2 == 2;
  if (v2 != 2 && v3 != 2)
  {
    return ((v3 ^ v2) & 1) == 0;
  }

  return result;
}

uint64_t AlwaysOnTimelinePreferenceWriter.value.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for IntelligenceSubelementProviding?(0, &lazy cache variable for type metadata for TimelineSchedule?, &lazy cache variable for type metadata for TimelineSchedule, MEMORY[0x1E697EB78]);
  Value = AGGraphGetValue();
  outlined init with copy of TimelineSchedule?(Value, &v10);
  if (v11)
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v10, v12);
    outlined init with copy of _Benchmark(v12, &v10);
    v4 = type metadata accessor for DateSequenceTimeline();
    v5 = objc_allocWithZone(v4);
    outlined init with copy of _Benchmark(&v10, v5 + OBJC_IVAR____TtC7SwiftUI20DateSequenceTimeline_schedule);
    v9.receiver = v5;
    v9.super_class = v4;
    v6 = objc_msgSendSuper2(&v9, sel_initWithIdentifier_configure_, a1, 0);
    __swift_destroy_boxed_opaque_existential_1(&v10);
    type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_18CD69590;
    *(v7 + 32) = v6;
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    outlined destroy of LocationBasedSensoryFeedback?(&v10, &lazy cache variable for type metadata for TimelineSchedule?, &lazy cache variable for type metadata for TimelineSchedule, MEMORY[0x1E697EB78]);
    return MEMORY[0x1E69E7CC0];
  }

  return v7;
}

uint64_t outlined init with copy of TimelineSchedule?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for IntelligenceSubelementProviding?(0, &lazy cache variable for type metadata for TimelineSchedule?, &lazy cache variable for type metadata for TimelineSchedule, MEMORY[0x1E697EB78]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static _FocusableModifier._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X8>)
{
  v64 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = *(a2 + 48);
  v60 = *(a2 + 32);
  v61 = v7;
  v62 = *(a2 + 64);
  v63 = *(a2 + 80);
  v8 = *(a2 + 16);
  v58 = *a2;
  v59 = v8;
  *&v36 = v7;
  DWORD2(v36) = DWORD2(v7);
  if ((PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) == 0)
  {
    return (a3)();
  }

  v9 = v59;
  swift_beginAccess();
  *&v36 = __PAIR64__(*(v59 + 16), v6);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ResolvedOptions and conformance ResolvedOptions();
  v10 = Attribute.init<A>(body:value:flags:update:)();
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  type metadata accessor for ViewGraph();
  swift_dynamicCastClassUnconditional();
  swift_weakInit();

  type metadata accessor for PropertyList.Tracker();
  swift_allocObject();
  *(&v37 + 1) = PropertyList.Tracker.init()();
  *&v38 = 0;
  BYTE8(v38) = 0;
  v11 = *(v59 + 16);
  *&v36 = __PAIR64__(v10, v6);
  *(&v36 + 1) = __PAIR64__(v11, DWORD2(v59));
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type UpdateViewFocusItem and conformance UpdateViewFocusItem();
  v12 = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of UpdateViewFocusItem(&v36);
  AGGraphGetFlags();
  outlined init with copy of _ViewInputs(&v58, &v36);
  v13 = v12;
  v28 = v12;
  AGGraphSetFlags();
  v38 = v60;
  v39 = v61;
  v40 = v62;
  v41 = v63;
  v36 = v58;
  v37 = v59;
  type metadata accessor for FocusableViewResponder(0);
  swift_allocObject();
  outlined init with copy of _ViewInputs(&v58, &v52);
  v14 = FocusableViewResponder.init(inputs:)(&v36);
  v44 = v60;
  v45 = v61;
  v46 = v62;
  v47 = v63;
  v42 = v58;
  v43 = v59;
  LOBYTE(v52) = 1;
  outlined init with copy of _ViewInputs(&v58, &v36);
  lazy protocol witness table accessor for type IOSFocusEnabledFlag and conformance IOSFocusEnabledFlag();
  PropertyList.subscript.setter();
  LOBYTE(v36) = 0;
  v15 = Attribute.init<A>(body:value:flags:update:)();
  *&v36 = __PAIR64__(*(v9 + 16), v13);
  DWORD2(v36) = v15;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type IsFocusedEnvironmentChild and conformance IsFocusedEnvironmentChild();
  Attribute.init<A>(body:value:flags:update:)();
  _GraphInputs.environment.setter();
  PreferenceKeys.add(_:)();
  v54 = v44;
  v55 = v45;
  v56 = v46;
  v48[3] = v45;
  v48[4] = v46;
  v52 = v42;
  v53 = v43;
  v48[0] = v42;
  v48[1] = v43;
  v48[2] = v44;
  v57 = v47;
  v49 = v47;
  v38 = v44;
  v39 = v45;
  v40 = v46;
  v41 = v47;
  v36 = v42;
  v37 = v43;
  v16 = outlined init with copy of _ViewInputs(v48, v50);
  a3(&v31, v16, &v36);
  v50[2] = v38;
  v50[3] = v39;
  v50[4] = v40;
  v51 = v41;
  v50[0] = v36;
  v50[1] = v37;
  outlined destroy of _ViewInputs(v50);
  v17 = v31;
  LODWORD(v9) = v32;
  v18 = v33;
  *a4 = v31;
  *(a4 + 8) = v9;
  *(a4 + 12) = v18;

  *(v14 + 296) = AGCreateWeakAttribute();
  *(v14 + 304) = 0;
  v19 = HIDWORD(v55);
  v38 = v54;
  v39 = v55;
  v40 = v56;
  v41 = v57;
  v36 = v52;
  v37 = v53;
  v20 = _ViewInputs.animatedPosition()();
  v21 = v53;
  v38 = v54;
  v39 = v55;
  v40 = v56;
  v41 = v57;
  v36 = v52;
  v37 = v53;
  swift_beginAccess();
  v22 = CachedEnvironment.animatedSize(for:)();
  swift_endAccess();
  *(v14 + 272) = v19 | (v20 << 32);
  *(v14 + 280) = v22;
  *(v14 + 288) = 0;
  *(v14 + 292) = 1;
  swift_allocObject();
  v23 = PropertyList.Tracker.init()();
  LODWORD(v21) = *(v21 + 16);
  *&v36 = v17;
  *(&v36 + 1) = __PAIR64__(v18, v9);
  *&v36 = __PAIR64__(_ViewOutputs.viewResponders()(), v28);
  DWORD2(v36) = v21;
  *&v37 = v14;
  *(&v37 + 1) = v23;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  _sSay7SwiftUI13ViewResponderCGMaTm_6(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type UpdateFocusableViewResponder and conformance UpdateFocusableViewResponder();

  v24 = Attribute.init<A>(body:value:flags:update:)();

  v34[2] = v54;
  v34[3] = v55;
  v34[4] = v56;
  v35 = v57;
  v34[0] = v52;
  v34[1] = v53;
  outlined init with copy of _ViewInputs(&v52, &v36);
  UIKitHostedFocusItemLifecycle.init(inputs:responders:)(v34, v24, &v36);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type UIKitHostedFocusItemLifecycle and conformance UIKitHostedFocusItemLifecycle();
  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of UIKitHostedFocusItemLifecycle(&v36);
  AGGraphSetFlags();
  LOBYTE(v36) = 0;
  v25 = PreferencesOutputs.subscript.setter();
  *&v34[0] = v55;
  DWORD2(v34[0]) = DWORD2(v55);
  *&v36 = v55;
  DWORD2(v36) = DWORD2(v55);
  MEMORY[0x1EEE9AC00](v25);
  outlined init with copy of PreferencesInputs(v34, &v29);
  outlined init with copy of PreferencesInputs(v34, &v29);
  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

  v29 = *&v34[0];
  v30 = DWORD2(v34[0]);
  MEMORY[0x1EEE9AC00](v26);
  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

  v38 = v44;
  v39 = v45;
  v40 = v46;
  v41 = v47;
  v36 = v42;
  v37 = v43;
  outlined destroy of _ViewInputs(&v36);

  return outlined destroy of _ViewInputs(&v58);
}

unint64_t lazy protocol witness table accessor for type UpdateFocusableViewResponder and conformance UpdateFocusableViewResponder()
{
  result = lazy protocol witness table cache variable for type UpdateFocusableViewResponder and conformance UpdateFocusableViewResponder;
  if (!lazy protocol witness table cache variable for type UpdateFocusableViewResponder and conformance UpdateFocusableViewResponder)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UpdateFocusableViewResponder, &unk_1F0011CD8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UpdateFocusableViewResponder and conformance UpdateFocusableViewResponder);
  }

  return result;
}

uint64_t initializeWithCopy for UpdateFocusableViewResponder(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;

  return a1;
}

uint64_t lazy protocol witness table accessor for type ArchivableFactory<ArchivableAccessibilityViewModifier> and conformance ArchivableFactory<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t _UIHostingView.focusItems(in:)(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = type metadata accessor for _UIHostingView(0, *((*MEMORY[0x1E69E7D40] & *v8) + 0x50), *((*MEMORY[0x1E69E7D40] & *v8) + 0x58), a8);
  v27.receiver = v8;
  v27.super_class = v13;
  v14 = objc_msgSendSuper2(&v27, sel_focusItemsInRect_, a1, a2, a3, a4);
  type metadata accessor for _UISceneBSActionHandler(0, &lazy cache variable for type metadata for UIFocusItem, &protocolRef_UIFocusItem);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = MEMORY[0x1E69E7CC0];
  if (v15 >> 62)
  {
LABEL_16:
    v16 = __CocoaSet.count.getter();
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
LABEL_3:
      v24 = v13;
      v17 = 0;
      v13 = 0x1E69DD000;
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          MEMORY[0x18D00E9C0](v17, v15);
          v18 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v19 = v25;
            v13 = v24;
            goto LABEL_18;
          }
        }

        else
        {
          if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          swift_unknownObjectRetain();
          v18 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            goto LABEL_13;
          }
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          swift_unknownObjectRelease();
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        ++v17;
        if (v18 == v16)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v19 = MEMORY[0x1E69E7CC0];
LABEL_18:

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v21 = Strong, v22 = [Strong _shouldIgnoreChildFocusRegions], v21, (v22 & 1) == 0))
  {
    v26 = UIKitContainerFocusItem.childFocusItems(in:)(v13, &protocol witness table for _UIHostingView<A>, a1, a2, a3, a4);
    specialized Array.append<A>(contentsOf:)(v19);
    return v26;
  }

  return v19;
}

unint64_t UIKitContainerFocusItem.childFocusItems(in:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = (*(a2 + 16))();
  if (v12)
  {
    v14 = v12;
    v15 = v13;
    v16 = (*(a2 + 8))(a1, a2);
    if (v16)
    {
      v17 = v16;
      v18 = specialized static FocusBridge.focusItems(responderNode:rect:host:skipRoot:)(v14, v16, v15 & 1, a3, a4, a5, a6);

      return v18;
    }
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t specialized static FocusBridge.focusItems(responderNode:rect:host:skipRoot:)(uint64_t a1, void *a2, char a3, double a4, double a5, double a6, double a7)
{
  _s2os6LoggerVSgMaTm_3(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v34 - v15;
  v48 = MEMORY[0x1E69E7CC0];
  v38[16] = a3;
  v39 = a1;
  v40 = a2;
  v41 = a4;
  v42 = a5;
  v43 = a6;
  v44 = a7;
  v45 = &v48;
  v36 = partial apply for closure #1 in static FocusBridge.focusItems(responderNode:rect:host:skipRoot:);
  v37 = v38;
  dispatch thunk of ResponderNode.visit(applying:)();
  static Log.focus.getter();
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    _s7SwiftUI9FocusItemVSgWOhTm_2(v16, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], _s2os6LoggerVSgMaTm_3);
  }

  else
  {
    v19 = a2;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v47 = v35;
      *v22 = 134218498;
      swift_beginAccess();
      if (v48 >> 62)
      {
        v23 = __CocoaSet.count.getter();
      }

      else
      {
        v23 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v22 + 4) = v23;
      *(v22 + 12) = 2080;
      MEMORY[0x18D00DFC0](v46, a4, a5, a6, a7);
      v24 = LoggableRect.description.getter();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v47);

      *(v22 + 14) = v26;
      *(v22 + 22) = 2080;
      v27 = v19;
      v28 = _s7SwiftUI25UIKitFocusItemDescriptionVyACyxGxcfCSo6UIViewC_Tt0g5Tf4g_nTm(v27);
      v30 = v29;

      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v47);

      *(v22 + 24) = v31;
      _os_log_impl(&dword_18BD4A000, v20, v21, "focus items queried: %ld in: %s for: %s", v22, 0x20u);
      v32 = v35;
      swift_arrayDestroy();
      MEMORY[0x18D0110E0](v32, -1, -1);
      MEMORY[0x18D0110E0](v22, -1, -1);
    }

    (*(v18 + 8))(v16, v17);
  }

  swift_beginAccess();
  return v48;
}

void closure #1 in static FocusBridge.focusItems(responderNode:rect:host:skipRoot:)(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, char *a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  _s2os6LoggerVSgMaTm_3(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v87 - v26;
  if ((a3 & 1) == 0 || a1 != a4)
  {
    type metadata accessor for _SemanticFeature<Semantics_v6>();
    lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
    if ((static SemanticFeature.isEnabled.getter() & 1) != 0 && ((*(a2 + 48))(*a1, a2) & 1) == 0)
    {
LABEL_30:
      v36 = 1;
      goto LABEL_31;
    }

    v28 = (*(a2 + 8))(*a1, a2);
    if (v28)
    {
      v29 = v28;
      objc_opt_self();
      v30 = swift_dynamicCastObjCClass();
      if (v30)
      {
        v31 = v30;
        swift_unknownObjectRetain();
        [v31 bounds];
        [v31 convertRect:a5 toCoordinateSpace:?];
      }

      else
      {
        ObjectType = swift_getObjectType();
        v38 = swift_conformsToProtocol2();
        if (!v38)
        {
          static Log.focus.getter();
          v46 = type metadata accessor for Logger();
          v47 = *(v46 - 8);
          if ((*(v47 + 48))(v27, 1, v46) == 1)
          {
            _s7SwiftUI9FocusItemVSgWOhTm_2(v27, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], _s2os6LoggerVSgMaTm_3);
          }

          else
          {
            swift_unknownObjectRetain();
            v48 = Logger.logObject.getter();
            v49 = static os_log_type_t.error.getter();
            swift_unknownObjectRelease();
            if (os_log_type_enabled(v48, v49))
            {
              v50 = swift_slowAlloc();
              v88 = v50;
              v89 = swift_slowAlloc();
              v90[0] = v89;
              *v50 = 136315138;
              swift_getObjectType();
              v51 = swift_unknownObjectRetain();
              v52 = _s7SwiftUI25UIKitFocusItemDescriptionVyACyxGxcfCSo07UIFocusE0_p_Tt0g5Tf4e_nTf4g_n(v51);
              LODWORD(v87) = v49;
              v54 = v53;
              swift_unknownObjectRelease();
              v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, v90);

              v56 = v88;
              *(v88 + 4) = v55;
              _os_log_impl(&dword_18BD4A000, v48, v87, "unknown focus item: %s", v56, 0xCu);
              v57 = v89;
              __swift_destroy_boxed_opaque_existential_1(v89);
              MEMORY[0x18D0110E0](v57, -1, -1);
              MEMORY[0x18D0110E0](v56, -1, -1);
            }

            (*(v47 + 8))(v27, v46);
          }

          v44 = 1;
          v40 = 0.0;
          v41 = 0.0;
          v42 = 0.0;
          v43 = 0.0;
LABEL_22:
          static Log.focus.getter();
          v58 = type metadata accessor for Logger();
          v59 = *(v58 - 8);
          if ((*(v59 + 48))(v24, 1, v58) == 1)
          {
            swift_unknownObjectRelease();
            _s7SwiftUI9FocusItemVSgWOhTm_2(v24, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], _s2os6LoggerVSgMaTm_3);
          }

          else
          {
            swift_unknownObjectRetain();
            v60 = a5;
            v61 = Logger.logObject.getter();
            v62 = static os_log_type_t.default.getter();

            swift_unknownObjectRelease();
            if (os_log_type_enabled(v61, v62))
            {
              v87 = v60;
              LODWORD(v89) = v62;
              v63 = swift_slowAlloc();
              v88 = swift_slowAlloc();
              v91 = v88;
              *v63 = 136315906;
              swift_getObjectType();
              v64 = swift_unknownObjectRetain();
              v65 = _s7SwiftUI25UIKitFocusItemDescriptionVyACyxGxcfCSo07UIFocusE0_p_Tt0g5Tf4e_nTf4g_n(v64);
              v67 = v66;
              swift_unknownObjectRelease();
              v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, &v91);

              *(v63 + 4) = v68;
              *(v63 + 12) = 2080;
              v70.n128_u64[0] = 0;
              v71.n128_u64[0] = 0;
              v72.n128_u64[0] = 0;
              v73.n128_u64[0] = 0;
              if ((v44 & 1) == 0)
              {
                v70.n128_f64[0] = v40;
                v71.n128_f64[0] = v41;
                v72.n128_f64[0] = v42;
                v73.n128_f64[0] = v43;
              }

              MEMORY[0x18D00DFC0](v90, v69, v70, v71, v72, v73);
              v74 = LoggableRect.description.getter();
              v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, &v91);

              *(v63 + 14) = v76;
              *(v63 + 22) = 2080;
              MEMORY[0x18D00DFC0](v90, v77, a8, a9, a10, a11);
              v78 = LoggableRect.description.getter();
              v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v79, &v91);

              *(v63 + 24) = v80;
              *(v63 + 32) = 2080;
              v81 = v87;
              v82 = _s7SwiftUI25UIKitFocusItemDescriptionVyACyxGxcfCSo6UIViewC_Tt0g5Tf4g_nTm(v81);
              v84 = v83;

              v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v84, &v91);

              *(v63 + 34) = v85;
              _os_log_impl(&dword_18BD4A000, v61, v89, "skipped: %s with: %s in: %s for: %s", v63, 0x2Au);
              v86 = v88;
              swift_arrayDestroy();
              MEMORY[0x18D0110E0](v86, -1, -1);
              MEMORY[0x18D0110E0](v63, -1, -1);

              swift_unknownObjectRelease();
            }

            else
            {
              swift_unknownObjectRelease();
            }

            (*(v59 + 8))(v24, v58);
          }

          goto LABEL_30;
        }

        v39 = v38;
        swift_unknownObjectRetain();
        AnyUIKitHostedFocusItem.addToHostIfNeeded(_:)(a5, ObjectType, v39);
        [v29 frame];
      }

      v40 = v32;
      v41 = v33;
      v42 = v34;
      v43 = v35;
      swift_unknownObjectRelease();
      v92.origin.x = v40;
      v92.origin.y = v41;
      v92.size.width = v42;
      v92.size.height = v43;
      v94.origin.x = a8;
      v94.origin.y = a9;
      v94.size.width = a10;
      v94.size.height = a11;
      v93 = CGRectIntersection(v92, v94);
      if (!CGRectIsEmpty(v93))
      {
        v45 = swift_unknownObjectRetain();
        MEMORY[0x18D00CC30](v45);
        if (*((*a6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_unknownObjectRelease();
        goto LABEL_30;
      }

      v44 = 0;
      goto LABEL_22;
    }
  }

  v36 = 0;
LABEL_31:
  *a7 = v36;
}

unint64_t lazy protocol witness table accessor for type ResolvedOptions and conformance ResolvedOptions()
{
  result = lazy protocol witness table cache variable for type ResolvedOptions and conformance ResolvedOptions;
  if (!lazy protocol witness table cache variable for type ResolvedOptions and conformance ResolvedOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedOptions, &unk_1F0011EC8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedOptions and conformance ResolvedOptions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UpdateViewFocusItem and conformance UpdateViewFocusItem()
{
  result = lazy protocol witness table cache variable for type UpdateViewFocusItem and conformance UpdateViewFocusItem;
  if (!lazy protocol witness table cache variable for type UpdateViewFocusItem and conformance UpdateViewFocusItem)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UpdateViewFocusItem, &unk_1F0011E30, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UpdateViewFocusItem and conformance UpdateViewFocusItem);
  }

  return result;
}

uint64_t initializeWithCopy for UpdateViewFocusItem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_weakCopyInit();
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t outlined destroy of UpdateViewFocusItem(uint64_t a1)
{
  swift_weakDestroy();

  return a1;
}

double @objc UIKitContainerFocusResponderItem.frame.getter(void *a1)
{
  v1 = a1;
  v5 = UIKitContainerFocusResponderItem.frame.getter(v1, v2, v3, v4);

  return v5;
}

unint64_t lazy protocol witness table accessor for type IsFocusedEnvironmentChild and conformance IsFocusedEnvironmentChild()
{
  result = lazy protocol witness table cache variable for type IsFocusedEnvironmentChild and conformance IsFocusedEnvironmentChild;
  if (!lazy protocol witness table cache variable for type IsFocusedEnvironmentChild and conformance IsFocusedEnvironmentChild)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsFocusedEnvironmentChild, &type metadata for IsFocusedEnvironmentChild, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsFocusedEnvironmentChild and conformance IsFocusedEnvironmentChild);
  }

  return result;
}

double UIKitContainerFocusResponderItem.frame.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for UIKitContainerFocusResponderItem(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);

  return AnyUIKitHostedFocusItem.defaultFrame.getter(v5, &protocol witness table for UIKitContainerFocusResponderItem<A>);
}

double AnyUIKitHostedFocusItem.defaultFrame.getter(uint64_t a1, uint64_t a2)
{
  MEMORY[0x18D00ABE0]();
  AGGraphClearUpdate();
  closure #1 in AnyUIKitHostedFocusItem.defaultFrame.getter(a1, a2, &v6);
  AGGraphSetUpdate();
  v4 = *&v6;
  static Update.end()();
  return v4;
}

__int128 *closure #1 in AnyUIKitHostedFocusItem.defaultFrame.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  (*(a2 + 32))(a1, a2);
  type metadata accessor for CGRect(0);
  result = AGGraphGetWeakValue();
  if (result)
  {
    v5 = *result;
    v6 = result[1];
  }

  else
  {
    v5 = 0uLL;
    v6 = 0uLL;
  }

  *a3 = v5;
  a3[1] = v6;
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1, void (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = __CocoaSet.count.getter();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

Class @objc _UIHostingView.focusItems(in:)(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  _UIHostingView.focusItems(in:)(a2, a3, a4, a5, v9, v10, v11, v12);

  type metadata accessor for _UISceneBSActionHandler(0, &lazy cache variable for type metadata for UIFocusItem, &protocolRef_UIFocusItem);
  v13.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v13.super.isa;
}

id @objc UIKitContainerFocusResponderItem.focusItemContainer.getter()
{
  FocusStoreLocation.id.getter();
  v0 = swift_unknownObjectRetain();

  return v0;
}

id @objc UIKitContainerFocusResponderItem.parentFocusEnvironment.getter()
{
  v0 = UIKitContainerFocusResponderItem.parentFocusEnvironment.getter();

  return v0;
}

id @objc UIKitContainerFocusResponderItem.coordinateSpace.getter(void *a1)
{
  v1 = a1;
  v5 = specialized UIKitContainerFocusResponderItem.coordinateSpace.getter(v1, v2, v3, v4);
  swift_unknownObjectRetain();

  return v5;
}

uint64_t specialized UIKitContainerFocusResponderItem.coordinateSpace.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(v4 + direct field offset for UIKitContainerFocusResponderItem.cachedCoordinateSpace);
  if (!result)
  {
    type metadata accessor for UIKitContainerFocusResponderItem.WrapperCoordinateSpace(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
    Strong = swift_unknownObjectWeakLoadStrong();
    v10 = UIKitContainerFocusResponderItem.frame.getter(Strong, v7, v8, v9);
    v17 = specialized UIKitContainerFocusResponderItem.WrapperCoordinateSpace.__allocating_init(host:frame:)(Strong, v10, v14, v15, v16, v11, v12, v13);

    *(v4 + direct field offset for UIKitContainerFocusResponderItem.cachedCoordinateSpace) = v17;
    swift_unknownObjectRelease();
    result = *(v4 + direct field offset for UIKitContainerFocusResponderItem.cachedCoordinateSpace);
    if (!result)
    {
      __break(1u);
    }
  }

  return result;
}

double @objc UIKitContainerFocusResponderItem.WrapperCoordinateSpace.convert(_:to:)(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, double (*a8)(uint64_t, double, double, double, double))
{
  swift_unknownObjectRetain();
  v15 = a1;
  v16 = a8(a7, a2, a3, a4, a5);
  swift_unknownObjectRelease();

  return v16;
}

double UIKitContainerFocusResponderItem.WrapperCoordinateSpace.convert(_:to:)(uint64_t a1, SEL *a2, double a3, double a4, double a5, double a6)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0.0;
  }

  v13 = Strong;
  v14 = [Strong coordinateSpace];

  [v14 *a2];
  v16 = v15;
  swift_unknownObjectRelease();
  return v16;
}

Class @objc UIKitContainerFocusResponderItem.focusItems(in:)(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  UIKitContainerFocusResponderItem.focusItems(in:)(a2, a3, a4, a5, v9, v10, v11, v12);

  type metadata accessor for _UISceneBSActionHandler(0, &lazy cache variable for type metadata for UIFocusItem, &protocolRef_UIFocusItem);
  v13.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v13.super.isa;
}

unint64_t UIKitContainerFocusResponderItem.focusItems(in:)(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = type metadata accessor for UIKitContainerFocusResponderItem(0, *((*MEMORY[0x1E69E7D40] & *v8) + 0x50), *((*MEMORY[0x1E69E7D40] & *v8) + 0x58), a8);

  return UIKitContainerFocusItem.childFocusItems(in:)(v13, &protocol witness table for UIKitContainerFocusResponderItem<A>, a1, a2, a3, a4);
}

uint64_t protocol witness for BaseFocusResponder.isEnabled.getter in conformance FocusStateBindingResponder()
{
  if (!AGSubgraphIsValid())
  {
    return 0;
  }

  v0 = AGGraphClearUpdate();
  MEMORY[0x1EEE9AC00](v0);
  static Update.ensure<A>(_:)();
  v1 = v3;
  AGGraphSetUpdate();
  return v1;
}

void *partial apply for specialized closure #1 in closure #1 in FocusStateBindingResponder.withoutDependencies<A>(body:)@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v4);
  *a1 = v4;
  return result;
}

_BYTE *partial apply for closure #1 in FocusStateBindingResponder.isEnabled.getter@<X0>(_BYTE *a1@<X8>)
{
  result = AGGraphGetValue();
  *a1 = *result;
  return result;
}

Class @objc UIKitDefaultFocusSectionResponderItem.preferredFocusEnvironments.getter(void *a1)
{
  v1 = a1;
  UIKitDefaultFocusSectionResponderItem.preferredFocusEnvironments.getter();

  type metadata accessor for UIFocusEnvironment();
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

unint64_t UIKitDefaultFocusSectionResponderItem.preferredFocusEnvironments.getter()
{
  if (!swift_weakLoadStrong())
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for BaseFocusResponder?(0, &lazy cache variable for type metadata for BaseFocusResponder??, type metadata accessor for BaseFocusResponder?, MEMORY[0x1E69E6720]);
  static Update.ensure<A>(_:)();
  v0 = *&v37[0];
  if (*&v37[0] < 2uLL)
  {
    goto LABEL_12;
  }

  v1 = **&v37[0];
  v2 = type metadata accessor for ViewResponder();
  v3 = dynamic_cast_existential_1_superclass_conditional(*&v37[0], v1, v2, &protocol descriptor for BaseFocusResponder);
  if (!v3)
  {
    outlined consume of ListItemTint?(*&v37[0]);
LABEL_12:

    return MEMORY[0x1E69E7CC0];
  }

  v5 = v3;
  v6 = v4;

  if (!(*(v6 + 8))(*v5, v6))
  {
LABEL_14:
    outlined consume of ListItemTint?(*&v37[0]);
    return MEMORY[0x1E69E7CC0];
  }

  ObjectType = swift_getObjectType();
  v8 = swift_conformsToProtocol2();
  if (!v8)
  {
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v9 = *(v8 + 8);
  v10 = *(v9 + 64);
  v11 = v8;
  swift_unknownObjectRetain();
  v10(ObjectType, v9);
  v12 = (*(v11 + 32))(ObjectType, v11);
  v13 = v12 >> 62;
  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_23;
    }

LABEL_8:
    v14 = v12;
    memset(v37, 0, 48);
    v37[3] = xmmword_18CD6A6D0;
    MEMORY[0x1EEE9AC00](v12);
    MEMORY[0x1EEE9AC00](v15);

    dispatch thunk of ResponderNode.visit(applying:)();
    outlined consume of ListItemTint?(v0);
    outlined init with copy of FocusItem?(v37, v33);
    if (v34 || v35 != 1)
    {
      outlined init with take of FocusItem(v33, v36);
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v18 = Strong;
        v19 = swift_getObjectType();
        v20 = type metadata accessor for UIView();
        v21 = dynamic_cast_existential_1_superclass_conditional(v18, v19, v20, MEMORY[0x1E697EB90]);
        if (v21)
        {
          v22 = v21;
          swift_unknownObjectRetain();
          v23 = specialized static FocusBridge.representedFocusItem(_:in:)(v36, v22);
          if (v23)
          {
            v24 = v23;

            swift_unknownObjectRelease();
            type metadata accessor for _ContiguousArrayStorage<Text>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
            v25 = swift_allocObject();
            *(v25 + 16) = xmmword_18CD69590;
            *(v25 + 32) = v24;
            swift_unknownObjectRelease_n();
            swift_unknownObjectRelease();
            outlined consume of ListItemTint?(v0);
            outlined destroy of FocusItem(v36);
            outlined destroy of FocusItem?(v37);
            return v25;
          }

          outlined destroy of FocusItem(v36);
          swift_unknownObjectRelease_n();
          goto LABEL_22;
        }

        swift_unknownObjectRelease();
      }

      outlined destroy of FocusItem(v36);
    }

    else
    {
      outlined destroy of FocusItem?(v33);
    }

LABEL_22:
    outlined destroy of FocusItem?(v37);
    v12 = v14;
    goto LABEL_23;
  }

  v31 = v12;
  v32 = __CocoaSet.count.getter();
  v12 = v31;
  if (!v32)
  {
    goto LABEL_8;
  }

LABEL_23:
  if (v13)
  {
    type metadata accessor for UIFocusEnvironment();

    v28 = _bridgeCocoaArray<A>(_:)();
    swift_unknownObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v26 = v12 & 0xFFFFFFFFFFFFFF8;
    v27 = v12;

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for UIFocusEnvironment();
    if (swift_dynamicCastMetatype() || (v29 = *(v26 + 16)) == 0)
    {
LABEL_25:

      swift_unknownObjectRelease_n();
      outlined consume of ListItemTint?(v0);
      return v27;
    }

    v30 = v26 + 32;
    while (1)
    {
      v38 = &unk_1F00436D8;
      if (!swift_dynamicCastObjCProtocolConditional())
      {
        break;
      }

      v30 += 8;
      if (!--v29)
      {
        goto LABEL_25;
      }
    }

    swift_unknownObjectRelease_n();

    v28 = v26 | 1;
  }

  outlined consume of ListItemTint?(v0);
  return v28;
}

void closure #1 in DefaultFocusSectionResponder.responder.getter(__int128 *a2@<X8>)
{
  swift_beginAccess();
  type metadata accessor for BaseFocusResponder?(0);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v5 = *WeakValue;

    v4 = v5;
  }

  else
  {
    v4 = xmmword_18CD6A6D0;
  }

  *a2 = v4;
}

uint64_t QueryDefaultFocusResponder.value.getter(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v51 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FocusState.Binding(0, v8, v9, v10);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - v13;
  v16 = type metadata accessor for FocusStore.Entry(255, a2, a3, v15);
  v17 = type metadata accessor for Optional();
  v42 = *(v17 - 8);
  v43 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v42 - v18;
  v49 = a3;
  QueryDefaultFocusResponder.binding.getter(a2, a3, v20, v14);
  specialized FocusState.Binding.location.getter(v11, v21, v22, v23);
  v24 = *(v12 + 8);
  v45 = v12 + 8;

  v46 = v11;
  v47 = v24;
  v24(v14, v11);
  v25 = v51;
  v48 = a1;
  Value = AGGraphGetValue();
  v44 = *(v6 + 16);
  v44(v25, Value, a2);
  FocusStoreLocation.findEntry(with:)(v27, v19);

  v28 = *(v6 + 8);
  v50 = v6 + 8;
  v29 = v28;
  v28(v25, a2);
  v30 = *(v16 - 8);
  if ((*(v30 + 48))(v19, 1, v16) == 1)
  {
    (*(v42 + 8))(v19, v43);
  }

  else
  {
    v35 = FocusStore.Entry.responder.getter(v16, v31, v32, v33);
    (*(v30 + 8))(v19, v16);
    if (v35)
    {
      return v35;
    }
  }

  QueryDefaultFocusResponder.binding.getter(a2, v49, v34, v14);
  v37 = v46;
  specialized FocusState.Binding.location.getter(v46, v38, v39, v40);

  v47(v14, v37);
  v41 = AGGraphGetValue();
  v44(v25, v41, a2);
  FocusStoreLocation.deferUpdate(_:)(v25);

  v29(v25, a2);
  return 0;
}

uint64_t protocol witness for Rule.value.getter in conformance QueryDefaultFocusResponder<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = QueryDefaultFocusResponder.value.getter(*v2, *(a1 + 16), *(a1 + 24));
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t QueryDefaultFocusResponder.binding.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = type metadata accessor for FocusState.Binding(0, a2, a3, a4);
  Value = AGGraphGetValue();
  v8 = *(*(v6 - 8) + 16);

  return v8(a5, Value, v6);
}

uint64_t specialized FocusState.Binding.location.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FocusStoreLocation(0, *(a1 + 16), *(a1 + 24), a4);

  return swift_dynamicCastClassUnconditional();
}

double FocusItemFrame.value.getter(unint64_t a1, uint64_t a2)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  v18 = *Value;
  v19 = v3;
  v4 = *(Value + 32);
  v20 = *(Value + 16);
  v21 = v4;
  type metadata accessor for CGPoint(0);

  v5 = AGGraphGetValue();
  ViewTransform.appendPosition(_:)(*v5);
  v6 = AGGraphGetValue();
  v14 = 0.0;
  v15 = 0;
  v16 = MEMORY[0x18D00B390](v6, v7, v8, v9);
  v17 = v10;
  static CoordinateSpace.ID.viewGraphHostContainerCoordinateSpace.getter();
  v13 = 1;

  CGRect.convert(to:transform:)();

  outlined destroy of CoordinateSpace(v12);

  return v14;
}

id specialized UIKitContainerFocusResponderItem.WrapperCoordinateSpace.init(host:frame:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = *v5;
  v11 = *MEMORY[0x1E69E7D40];
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v12 = (v5 + direct field offset for UIKitContainerFocusResponderItem.WrapperCoordinateSpace.frame);
  *v12 = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v14 = type metadata accessor for UIKitContainerFocusResponderItem.WrapperCoordinateSpace(0, *((v11 & v10) + 0x50), *((v11 & v10) + 0x58), v13);
  v16.receiver = v5;
  v16.super_class = v14;
  return objc_msgSendSuper2(&v16, sel_init);
}

void AlwaysOnBridge.timelineRegistrations.didset(unint64_t a1)
{
  v24 = *(v1 + 48);
  if (a1 >> 62)
  {
LABEL_41:
    v15 = a1;
    v2 = __CocoaSet.count.getter();
    a1 = v15;
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v24 & 0xFFFFFFFFFFFFFF8;
  if (v24 >> 62)
  {
    v16 = a1;
    v23 = __CocoaSet.count.getter();
    a1 = v16;
  }

  else
  {
    v23 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = a1 & 0xFFFFFFFFFFFFFF8;
  v20 = a1 & 0xC000000000000001;
  v17 = a1;
  v18 = a1 + 32;

  v4 = 0;
  v5 = 0;
  v6 = MEMORY[0x1E69E6028];
  while (1)
  {
    if (v5 == v2)
    {
      if (v23 == v4)
      {
        goto LABEL_35;
      }

      v11 = 0;
      v5 = v2;
      goto LABEL_17;
    }

    if (v20)
    {
      a1 = MEMORY[0x18D00E9C0](v5, v17);
    }

    else
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        goto LABEL_38;
      }

      if (v5 >= *(v19 + 16))
      {
        goto LABEL_40;
      }

      a1 = *(v18 + 8 * v5);
    }

    v11 = a1;
    if (__OFADD__(v5++, 1))
    {
      goto LABEL_39;
    }

    if (v23 == v4)
    {
      break;
    }

LABEL_17:
    if ((v24 & 0xC000000000000001) != 0)
    {
      a1 = MEMORY[0x18D00E9C0](v4, v24);
    }

    else
    {
      if (v4 >= *(v3 + 16))
      {
        goto LABEL_37;
      }

      a1 = *(v24 + 8 * v4 + 32);
    }

    v13 = a1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (!v11)
    {

      if (!v13)
      {
        return;
      }

      goto LABEL_33;
    }

    if (!a1)
    {
      goto LABEL_31;
    }

    outlined init with copy of _Benchmark(&v11[OBJC_IVAR____TtC7SwiftUI20DateSequenceTimeline_schedule], v27);
    type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for TimelineSchedule, MEMORY[0x1E697EB78]);
    type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for Equatable, v6);
    if (swift_dynamicCast())
    {
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v25, v28);
      v7 = v29;
      v22 = v30;
      v21 = __swift_project_boxed_opaque_existential_1(v28, v29);
      v8 = *&v13[OBJC_IVAR____TtC7SwiftUI20DateSequenceTimeline_schedule + 24];
      v9 = __swift_project_boxed_opaque_existential_1(&v13[OBJC_IVAR____TtC7SwiftUI20DateSequenceTimeline_schedule], v8);
      v27[3] = v8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
      (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v9, v8);
      v3 = v24 & 0xFFFFFFFFFFFFFF8;
      LOBYTE(v9) = areEqual #1 <A>(_:_:) in static DateSequenceTimeline.== infix(_:_:)(v21, v27, v7, v22);

      __swift_destroy_boxed_opaque_existential_1(v27);
      a1 = __swift_destroy_boxed_opaque_existential_1(v28);
      if ((v9 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v26 = 0;
      memset(v25, 0, sizeof(v25));
      outlined destroy of LocationBasedSensoryFeedback?(v25, &lazy cache variable for type metadata for Equatable?, &lazy cache variable for type metadata for Equatable, v6);

      if (v11 != v13)
      {
        goto LABEL_32;
      }
    }

    ++v4;
  }

  if (a1)
  {
LABEL_31:

LABEL_32:

LABEL_33:
    v14._object = 0x800000018CD4E100;
    v14._countAndFlagsBits = 0xD00000000000001FLL;
    AlwaysOnBridge.invalidate(for:)(v14);
    return;
  }

LABEL_35:
}

void protocol witness for AnyUIKitHostedFocusItem.host.setter in conformance UIKitFocusableViewResponderItem(void *a1)
{
  swift_unknownObjectWeakAssign();
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance AppGraph.LaunchProfileOptions(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance MainMenuItem.Template.Options@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void *protocol witness for SetAlgebra.remove(_:) in conformance MainMenuItem.Template.Options@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance MainMenuItem.Template.Options@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t _sSo21UIAccessibilityTraitsas21_ObjectiveCBridgeableSCsACP026_unconditionallyBridgeFromC1Cyx01_C5CTypeQzSgFZTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = static UInt64._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  return result;
}

uint64_t _sSo16UIMenuIdentifieraSYSCSY8rawValue03RawD0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_DWORD *protocol witness for RawRepresentable.init(rawValue:) in conformance AppGraph.LaunchProfileOptions@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for HVGridGeometry(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for SpatialTapGesture.Value(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ScrollViewChildSafeAreaInsets(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_18C0A7E04(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedTabContent(255, *a1, &type metadata for AccessibilityDetachedPropertyModifier, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for AccessibilityDetachedPropertyModifier;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedTabContent<A, B>, v5, v7);
}

uint64_t sub_18C0A7E68(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  v5 = type metadata accessor for ModifiedTabContent(255, *a1, &type metadata for AccessibilityDetachedPropertyModifier, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for AccessibilityDetachedPropertyModifier;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedTabContent<A, B>, v5, v7);
}

uint64_t sub_18C0A7ED0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for <<opaque return type of View.accessibilityDisabled()>>.0(255);
  type metadata accessor for <<opaque return type of View.accessibilityDisabled()>>.0(255);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>, _BlendModeEffect>, _FlexFrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<HStack<<<opaque return type of View.accessibilityDisabled()>>.0>, _FlexFrameLayout>, type metadata accessor for HStack<<<opaque return type of View.accessibilityDisabled()>>.0>);
  type metadata accessor for _EnvironmentKeyWritingModifier<Color?>(255);
  v3 = type metadata accessor for ModifiedContent();
  v4 = type metadata accessor for ModifiedContent();
  v5 = type metadata accessor for ModifiedContent();
  v6 = type metadata accessor for ModifiedContent();
  v48[0] = v2;
  v48[1] = lazy protocol witness table accessor for type _ShapeView<Rectangle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Color?>, MEMORY[0x1E6980A18]);
  v7 = MEMORY[0x1E697E858];
  v47[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v48);
  v47[1] = MEMORY[0x1E697EBB8];
  v46[0] = swift_getWitnessTable(v7, v4, v47);
  v46[1] = MEMORY[0x1E697E5D8];
  v45[0] = swift_getWitnessTable(v7, v5, v46);
  v45[1] = MEMORY[0x1E697E040];
  swift_getWitnessTable(v7, v6, v45);
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  v8 = type metadata accessor for TupleView();
  v9 = MEMORY[0x1E6981F48];
  swift_getWitnessTable(MEMORY[0x1E6981F48], v8);
  type metadata accessor for ZStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  v10 = type metadata accessor for TupleView();
  swift_getWitnessTable(v9, v10);
  v11 = type metadata accessor for ZStack();
  v12 = type metadata accessor for ModifiedContent();
  type metadata accessor for AddGestureModifier<_EndedGesture<_ChangedGesture<DragGesture>>, DefaultGestureCombiner>(255);
  v13 = type metadata accessor for ModifiedContent();
  type metadata accessor for _EndedGesture<_ChangedGesture<IndirectScrollGesture>>(255);
  v15 = v14;
  type metadata accessor for CapsuleSlider.ScrollState(255, v1, v2, v16);
  v17 = type metadata accessor for Optional();
  v18 = lazy protocol witness table accessor for type _ShapeView<Rectangle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _EndedGesture<_ChangedGesture<IndirectScrollGesture>> and conformance _EndedGesture<A>, type metadata accessor for _EndedGesture<_ChangedGesture<IndirectScrollGesture>>, MEMORY[0x1E697E238]);
  v19 = type metadata accessor for GestureStateGesture(255, v15, v17, v18);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for GestureStateGesture<A, B>, v19);
  v21 = lazy protocol witness table accessor for type DefaultGestureCombiner and conformance DefaultGestureCombiner();
  v44[2] = v19;
  v44[3] = MEMORY[0x1E697FE30];
  v44[4] = WitnessTable;
  v44[5] = v21;
  v22 = type metadata accessor for AddGestureModifier();
  v23 = type metadata accessor for ModifiedContent();
  type metadata accessor for _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image?, _OpacityEffect>, _FlexFrameLayout>, _FixedSizeLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>, _FlexFrameLayout>, _AllowsHitTestingModifier>>(255);
  v24 = type metadata accessor for ModifiedContent();
  v25 = swift_getWitnessTable(MEMORY[0x1E6981880], v11);
  v26 = MEMORY[0x1E697EBF8];
  v44[0] = v25;
  v44[1] = MEMORY[0x1E697EBF8];
  v27 = swift_getWitnessTable(v7, v12, v44);
  v28 = MEMORY[0x1E697F398];
  v43[0] = v27;
  v43[1] = lazy protocol witness table accessor for type _ShapeView<Rectangle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type AddGestureModifier<_EndedGesture<_ChangedGesture<DragGesture>>, DefaultGestureCombiner> and conformance AddGestureModifier<A, B>, type metadata accessor for AddGestureModifier<_EndedGesture<_ChangedGesture<DragGesture>>, DefaultGestureCombiner>, MEMORY[0x1E697F398]);
  v42[0] = swift_getWitnessTable(v7, v13, v43);
  v42[1] = swift_getWitnessTable(v28, v22);
  v41[0] = swift_getWitnessTable(v7, v23, v42);
  v41[1] = lazy protocol witness table accessor for type _ShapeView<Rectangle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image?, _OpacityEffect>, _FlexFrameLayout>, _FixedSizeLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>, _FlexFrameLayout>, _AllowsHitTestingModifier>> and conformance _OverlayModifier<A>, type metadata accessor for _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image?, _OpacityEffect>, _FlexFrameLayout>, _FixedSizeLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>, _FlexFrameLayout>, _AllowsHitTestingModifier>>, MEMORY[0x1E697EC18]);
  swift_getWitnessTable(v7, v24, v41);
  v29 = type metadata accessor for GeometryReader();
  v30 = type metadata accessor for ModifiedContent();
  v31 = type metadata accessor for ModifiedContent();
  v32 = type metadata accessor for ModifiedContent();
  v33 = type metadata accessor for ModifiedContent();
  type metadata accessor for _ContentShapeModifier<RoundedRectangle>(255);
  v34 = type metadata accessor for ModifiedContent();
  v40[0] = swift_getWitnessTable(MEMORY[0x1E697E378], v29);
  v40[1] = v26;
  v39[0] = swift_getWitnessTable(v7, v30, v40);
  v39[1] = MEMORY[0x1E697EBE0];
  v38[0] = swift_getWitnessTable(v7, v31, v39);
  v38[1] = &protocol witness table for IgnoreViewRespondersModifier;
  v37[0] = swift_getWitnessTable(v7, v32, v38);
  v37[1] = &protocol witness table for AccessibilityAttachmentModifier;
  v36[0] = swift_getWitnessTable(v7, v33, v37);
  v36[1] = lazy protocol witness table accessor for type _ShapeView<Rectangle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _ContentShapeModifier<RoundedRectangle> and conformance _ContentShapeModifier<A>, type metadata accessor for _ContentShapeModifier<RoundedRectangle>, MEMORY[0x1E697FD58]);
  return swift_getWitnessTable(v7, v34, v36);
}

uint64_t sub_18C0A84D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = EnvironmentValues.accessibilityLargeContentViewerEnabled.getter(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18C0A852C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = EnvironmentValues.accessibilityLargeContentViewerEnabled.getter(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18C0A856C(void *a1)
{
  v1 = a1[1];
  v3 = a1[2];
  v2 = a1[3];
  v7[0] = &type metadata for EnabledLargeContentView;
  v7[1] = v1;
  v7[2] = &protocol witness table for EnabledLargeContentView;
  v7[3] = v2;
  type metadata accessor for AccessibilityLargeContentViewModifier(255, v7);
  v4 = type metadata accessor for ModifiedContent();
  v6[0] = v3;
  v6[1] = &protocol witness table for AccessibilityLargeContentViewModifier<A, B>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v4, v6);
}

uint64_t sub_18C0A85F8(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for EnvironmentPropertyKey<AccessibilityLargeContentViewerKey>(255, &lazy cache variable for type metadata for AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>, &type metadata for EnabledLargeContentView, &protocol witness table for EnabledLargeContentView, type metadata accessor for AccessibilityLargeContentViewBehaviorModifier);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = &protocol witness table for AccessibilityLargeContentViewBehaviorModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0A8690()
{

  v1 = *(v0 + 160);
  v2 = v1 & 0xFFFFFFFFFFFFFFFELL;
  if ((v1 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
  {
    v3 = *(v0 + 40);
    if (v3 != 255)
    {
      outlined consume of GraphicsImage.Contents(*(v0 + 32), v3);
      v1 = *(v0 + 160);
      v2 = v1 & 0xFFFFFFFFFFFFFFFELL;
    }

    if (v2 != 0x1FFFFFFFELL)
    {
      outlined consume of AccessibilityImageLabel(*(v0 + 144), *(v0 + 152), v1, *(v0 + 168));
    }

    swift_unknownObjectRelease();
  }

  return swift_deallocObject();
}

uint64_t sub_18C0A8778(void *a1)
{
  swift_getAssociatedTypeWitness();
  v1 = type metadata accessor for ModifiedContent();
  v3[0] = swift_getAssociatedConformanceWitness();
  v3[1] = &protocol witness table for _HoverRegionModifier;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v1, v3);
}

void *sub_18C0A8838@<X0>(_BYTE *a2@<X8>)
{
  result = EnvironmentValues.headerProminence.getter();
  *a2 = v4;
  return result;
}

uint64_t sub_18C0A8914(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = &protocol witness table for TransformSceneListModifier;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v5);
}

uint64_t sub_18C0A89B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TableColumnCollection.Entry(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C0A8A24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TableColumnCollection.Entry(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18C0A8A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TableColumnCollection.Entry(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_18C0A8B54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TableColumnCollection.Entry(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_18C0A8D70()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18C0A8DA8()
{
  v1 = type metadata accessor for UTType();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_18C0A8E94@<X0>(uint64_t *a1@<X8>)
{
  result = UIHostingController.safeAreaRegions.getter();
  *a1 = result;
  return result;
}

__n128 sub_18C0A8EF4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18C0A8F00(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _TraitWritingModifier<NavigationSplitViewColumnWidth.TraitKey>();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _TraitWritingModifier<NavigationSplitViewColumnWidth.TraitKey> and conformance _TraitWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0A8F6C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  type metadata accessor for RelationshipModifier(255, a1[1], a1[3], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for RelationshipModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C0A8FDC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v12 = &type metadata for _MenuButtonStyleConfiguration.Label;
  v13 = v1;
  v14 = lazy protocol witness table accessor for type _MenuButtonStyleConfiguration.Label and conformance _MenuButtonStyleConfiguration.Label();
  v15 = v3;
  type metadata accessor for StaticSourceWriter(255, &v12);
  v5 = type metadata accessor for ModifiedContent();
  v6 = lazy protocol witness table accessor for type _MenuButtonStyleConfiguration.Content and conformance _MenuButtonStyleConfiguration.Content();
  v12 = &type metadata for _MenuButtonStyleConfiguration.Content;
  v13 = v2;
  v14 = v6;
  v15 = v4;
  type metadata accessor for StaticSourceWriter(255, &v12);
  v7 = type metadata accessor for ModifiedContent();
  v11[0] = &protocol witness table for ResolvedMenuButton;
  v11[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v8 = MEMORY[0x1E697E858];
  v10[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v11);
  v10[1] = &protocol witness table for StaticSourceWriter<A, B>;
  return swift_getWitnessTable(v8, v7, v10);
}

uint64_t sub_18C0A9164(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _TraitWritingModifier<NavigationSplitViewOpaqueBackgroundTraitKey>();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _TraitWritingModifier<NavigationSplitViewOpaqueBackgroundTraitKey> and conformance _TraitWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MultimodalNavigationTitle.CodingKeys@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_18C0A9210(uint64_t *a1, double a2)
{
  v2 = a1[1];
  v3 = type metadata accessor for ModifiedContent();
  v4 = type metadata accessor for _ConditionalContent();
  type metadata accessor for ViewInputFlagModifier<IsHandGestureShortcut>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<IsHandGestureShortcut>, lazy protocol witness table accessor for type IsHandGestureShortcut and conformance IsHandGestureShortcut, &unk_1EFF90618, MEMORY[0x1E697FD28]);
  v5 = type metadata accessor for ModifiedContent();
  v10[0] = v2;
  v10[1] = lazy protocol witness table accessor for type ExternalGestureActionModifier and conformance ExternalGestureActionModifier();
  v6 = MEMORY[0x1E697E858];
  v9[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v10);
  v9[1] = v2;
  v8[0] = swift_getWitnessTable(MEMORY[0x1E697F968], v4, v9);
  v8[1] = lazy protocol witness table accessor for type ViewInputFlagModifier<IsHandGestureShortcut> and conformance ViewInputFlagModifier<A>();
  return swift_getWitnessTable(v6, v5, v8);
}

uint64_t sub_18C0A9418@<X0>(uint64_t a3@<X8>)
{
  result = EnvironmentValues.displayCornerRadius.getter();
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

uint64_t sub_18C0A948C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FlexFrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FlexFrameLayout>, type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>);
  v3 = type metadata accessor for _BackgroundStyleModifier();
  v4 = type metadata accessor for ModifiedContent();
  type metadata accessor for _OverlayModifier<Color>();
  v5 = type metadata accessor for ModifiedContent();
  v6 = MEMORY[0x1E69815C0];
  type metadata accessor for _EnvironmentKeyWritingModifier<Color?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0]);
  v7 = type metadata accessor for ModifiedContent();
  v9 = type metadata accessor for PlatterButtonStyleView.ClippingShape(255, v1, v2, v8);
  v18[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  v18[1] = swift_getWitnessTable(MEMORY[0x1E6980468], v3);
  v10 = MEMORY[0x1E697E858];
  v17[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v18);
  v17[1] = lazy protocol witness table accessor for type TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _OverlayModifier<Color> and conformance _OverlayModifier<A>, type metadata accessor for _OverlayModifier<Color>, MEMORY[0x1E697EC18]);
  v16[0] = swift_getWitnessTable(v10, v5, v17);
  v16[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, v6);
  v15[0] = v7;
  v15[1] = v9;
  v15[2] = swift_getWitnessTable(v10, v7, v16);
  v15[3] = swift_getWitnessTable(protocol conformance descriptor for PlatterButtonStyleView<A>.ClippingShape, v9);
  v11 = type metadata accessor for PlatterShadowedContent(255, v15);
  v12 = type metadata accessor for ModifiedContent();
  v14[0] = swift_getWitnessTable(protocol conformance descriptor for PlatterShadowedContent<A, B>, v11);
  v14[1] = MEMORY[0x1E697E070];
  return swift_getWitnessTable(v10, v12, v14);
}

uint64_t sub_18C0A96EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = a1[3];
  v22 = a1[2];
  type metadata accessor for _ShadowView(255, v4, *(v5 + 8), a4);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  v6 = type metadata accessor for TupleView();
  swift_getWitnessTable(MEMORY[0x1E6981F48], v6);
  v7 = type metadata accessor for _OverlayModifier();
  v8 = type metadata accessor for ModifiedContent();
  v26[2] = v4;
  v26[3] = MEMORY[0x1E697E3F0];
  v26[4] = MEMORY[0x1E6981E70];
  v26[5] = v5;
  v26[6] = MEMORY[0x1E697E3E0];
  v26[7] = MEMORY[0x1E6981E60];
  v9 = type metadata accessor for StrokeBorderShapeView();
  swift_getWitnessTable(MEMORY[0x1E697FCF0], v9);
  v10 = type metadata accessor for _OverlayModifier();
  v11 = type metadata accessor for ModifiedContent();
  v12 = type metadata accessor for _ClipEffect();
  v13 = type metadata accessor for ModifiedContent();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for _ShadowView(255, AssociatedTypeWitness, *(AssociatedConformanceWitness + 8), v16);
  v17 = type metadata accessor for _BackgroundModifier();
  v18 = type metadata accessor for ModifiedContent();
  v19 = MEMORY[0x1E697EC18];
  v26[0] = v22;
  v26[1] = swift_getWitnessTable(MEMORY[0x1E697EC18], v7);
  v20 = MEMORY[0x1E697E858];
  v25[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v26);
  v25[1] = swift_getWitnessTable(v19, v10);
  v24[0] = swift_getWitnessTable(v20, v11, v25);
  v24[1] = swift_getWitnessTable(MEMORY[0x1E697DDB0], v12);
  v23[0] = swift_getWitnessTable(v20, v13, v24);
  v23[1] = swift_getWitnessTable(MEMORY[0x1E697F940], v17);
  return swift_getWitnessTable(v20, v18, v23);
}

uint64_t sub_18C0A9AC8(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyWritingModifier<Visibility>();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Visibility> and conformance _EnvironmentKeyWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0A9B34(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = MEMORY[0x1E697E5D8];
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C0A9BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for __App.ShoeboxAdaptor(0, v5, *(v4 + 24), a4) - 8);
  (*(*(v5 - 8) + 8))(v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

  return swift_deallocObject();
}

uint64_t sub_18C0A9CC4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for WindowGroup(255, *a1, a1[1], a4);

  return swift_getWitnessTable(protocol conformance descriptor for WindowGroup<A>, v4);
}

uint64_t sub_18C0A9D1C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  type metadata accessor for ListStyleWriter(255, a1[1], a1[3], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for ListStyleWriter<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C0A9D8C(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyWritingModifier<Bool?>(255);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool?> and conformance _EnvironmentKeyWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0A9DF8()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 80));

  return swift_deallocObject();
}

uint64_t sub_18C0A9E50()
{
  v1 = MEMORY[0x1E6981D20];
  type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(0, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0, MEMORY[0x1E6981D20]);
  v3 = v2 - 8;
  v4 = v0 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  v5 = *(v3 + 60);
  type metadata accessor for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0(0, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0, v1);
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_18C0A9F94(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18C0A9FF8()
{
  type metadata accessor for TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(*(v1 - 8) + 64);
  v6 = MEMORY[0x1E6981D28];
  type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(0, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0, MEMORY[0x1E6981D28]);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 80);
  v10 = (v5 + v9) & ~v9;
  type metadata accessor for <<opaque return type of View.truePreference<A>(_:)>>.0(0);
  (*(*(v11 - 8) + 8))(v0 + v4, v11);
  v12 = *(v2 + 60);
  type metadata accessor for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0(0, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0, MEMORY[0x1E6981D20]);
  (*(*(v13 - 8) + 8))(v0 + v4 + v12, v13);

  v14 = *(v8 + 60);
  type metadata accessor for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0(0, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0, v6);
  (*(*(v15 - 8) + 8))(v0 + v10 + v14, v15);

  return swift_deallocObject();
}

uint64_t sub_18C0AA238(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18C0AA29C(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _PreferenceWritingModifier<OrnamentScalingBehaviorKey>();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _PreferenceWritingModifier<OrnamentScalingBehaviorKey> and conformance _PreferenceWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0AA308()
{

  return swift_deallocObject();
}

uint64_t sub_18C0AA348(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _PreferenceTransformModifier<AVKitCaptureButtonPreference>();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _PreferenceTransformModifier<AVKitCaptureButtonPreference> and conformance _PreferenceTransformModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0AA3B4()
{

  return swift_deallocObject();
}

uint64_t sub_18C0AA3F0()
{
  if (*(v0 + 40) >= 2uLL)
  {
    outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  }

  return swift_deallocObject();
}

uint64_t sub_18C0AA440(void *a1)
{
  v1 = a1[1];
  v3 = a1[2];
  v2 = a1[3];
  v7[0] = MEMORY[0x1E69E73E0];
  v7[1] = v1;
  v7[2] = MEMORY[0x1E6982070];
  v7[3] = v2;
  type metadata accessor for AccessibilityProxyTransformModifier(255, v7);
  v4 = type metadata accessor for ModifiedContent();
  v6[0] = v3;
  v6[1] = &protocol witness table for AccessibilityProxyTransformModifier<A, B>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v4, v6);
}

uint64_t sub_18C0AA4CC()
{
  v1 = *(v0 + 24);
  type metadata accessor for Optional();
  v2 = (type metadata accessor for Binding() - 8);
  v3 = v0 + ((*(*v2 + 80) + 48) & ~*(*v2 + 80));

  v4 = v2[10];
  v5 = *(v1 - 8);
  if (!(*(v5 + 48))(v3 + v4, 1, v1))
  {
    (*(v5 + 8))(v3 + v4, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_18C0AA604()
{

  return swift_deallocObject();
}

uint64_t sub_18C0AA644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  type metadata accessor for AlertTransformModifier<ActionSheet.Presentation.Key>(255, a2, a3, a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for AlertTransformModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C0AA6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  type metadata accessor for AlertTransformModifier<ActionSheet.Presentation.Key>(255, a2, a3, a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for AlertTransformModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C0AA720()
{
  if (*(v0 + 40))
  {
    outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));

    if (*(v0 + 72))
    {
      outlined consume of Text.Storage(*(v0 + 48), *(v0 + 56), *(v0 + 64));
    }
  }

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 128))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  }

  return swift_deallocObject();
}

void _s7SwiftUI15NavigationStateV12StackContentV5ViewsV0G8SequenceVy___xq_GSlAASl34_customLastIndexOfEquatableElementy0K0QzSgSg0N0QzFTW_0(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = -2;
}

uint64_t sub_18C0AA818()
{
  v1 = *(v0 + 496);
  if (v1 == 2)
  {

    v3 = *(v0 + 72);
    if (v3)
    {
      if (v3 == 1)
      {
        goto LABEL_35;
      }
    }

    if (*(v0 + 88))
    {
    }

    if (*(v0 + 112))
    {

LABEL_34:
    }
  }

  else if (v1 == 1)
  {
    if (*(v0 + 96))
    {
    }

    if (*(v0 + 152))
    {
    }

    v2 = *(v0 + 256);
    if (*(v0 + 288))
    {
      if (v2 != 255)
      {
        if (v2)
        {

          if (*(v0 + 200))
          {
            __swift_destroy_boxed_opaque_existential_1((v0 + 176));
          }

          if (*(v0 + 224) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1((v0 + 168));
        }
      }
    }

    else
    {
      if (v2 != 255)
      {
        if (v2)
        {

          if (*(v0 + 200))
          {
            __swift_destroy_boxed_opaque_existential_1((v0 + 176));
          }

          if (*(v0 + 224) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1((v0 + 168));
        }
      }
    }

    if (*(v0 + 408))
    {

      goto LABEL_34;
    }
  }

LABEL_35:

  return swift_deallocObject();
}

uint64_t sub_18C0AAF18(_OWORD *a1)
{
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  type metadata accessor for AccessibilityProxyTransformModifier(255, v5);
  v1 = type metadata accessor for ModifiedContent();
  v4[0] = v3;
  v4[1] = &protocol witness table for AccessibilityProxyTransformModifier<A, B>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v1, v4);
}

uint64_t sub_18C0AAF94(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedTabContent(255, *a1, &type metadata for AccessibilityDetachedPropertyModifier, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for AccessibilityDetachedPropertyModifier;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedTabContent<A, B>, v5, v7);
}

uint64_t sub_18C0AAFF8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  v5 = type metadata accessor for ModifiedTabContent(255, *a1, &type metadata for AccessibilityDetachedPropertyModifier, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for AccessibilityDetachedPropertyModifier;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedTabContent<A, B>, v5, v7);
}

uint64_t sub_18C0AB088(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIButton.Configuration();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C0AB0F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIButton.Configuration();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18C0AB19C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MEMORY[0x18D0064D0](a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18C0AB20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for UIButton.Configuration();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_18C0AB2C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for UIButton.Configuration();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18C0AB36C@<X0>(uint64_t a2@<X8>)
{
  result = static VerticalAlignment.center.getter();
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

uint64_t sub_18C0AB39C()
{

  return swift_deallocObject();
}

uint64_t sub_18C0AB3D4()
{

  return swift_deallocObject();
}

uint64_t sub_18C0AB40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PlatformItemList.Item(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 251)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 4)
    {
      v11 = 4;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 4;
    if (v10 >= 4)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = type metadata accessor for UIButton.Configuration();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 24);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_18C0AB534(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PlatformItemList.Item(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 251)
  {
    *(a1 + *(a4 + 20)) = a2 + 4;
  }

  else
  {
    v11 = type metadata accessor for UIButton.Configuration();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_18C0AB688(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ResolvedButtonStyleBody(255, *a1, a1[1], a4);
  type metadata accessor for StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier>(255);
  v4 = type metadata accessor for ModifiedContent();
  v6[0] = &protocol witness table for ResolvedButtonStyleBody<A>;
  v6[1] = lazy protocol witness table accessor for type StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v4, v6);
}

uint64_t sub_18C0AB718(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for SearchSelectionModifier(255);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = &protocol witness table for SearchSelectionModifier;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0AB784(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<TextSelection?>(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C0AB820(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<TextSelection?>(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18C0AB8C0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SearchBoundProperty<TextSelection?>.Metadata(0, &lazy cache variable for type metadata for SearchBoundProperty<TextSelection?>, type metadata accessor for SearchBoundProperty);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C0AB948(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SearchBoundProperty<TextSelection?>.Metadata(0, &lazy cache variable for type metadata for SearchBoundProperty<TextSelection?>, type metadata accessor for SearchBoundProperty);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18C0AB9EC(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyWritingModifier<Bool>();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type HStack<ForEach<Slice<_VariadicView_Children>, AnyHashable, _VariadicView_Children.Element>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0ABA94()
{

  return swift_deallocObject();
}

uint64_t sub_18C0ABADC()
{

  return swift_deallocObject();
}

uint64_t sub_18C0ABB34()
{
  v0 = MEMORY[0x1E69801E0];
  type metadata accessor for InterfaceIdiomPredicate<WidgetInterfaceIdiom>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<WidgetInterfaceIdiom>, MEMORY[0x1E697FAD8], MEMORY[0x1E697FAD0], MEMORY[0x1E69801E0]);
  type metadata accessor for LabelStyleWritingModifier<ContentUnavailableLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<ContentUnavailableLabelStyle>, lazy protocol witness table accessor for type ContentUnavailableLabelStyle and conformance ContentUnavailableLabelStyle, &unk_1EFF93F98, type metadata accessor for LabelStyleWritingModifier);
  type metadata accessor for ModifiedContent();
  v1 = MEMORY[0x1E697E108];
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, WidgetLabelModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, WidgetLabelModifier, EmptyModifier>, &unk_1EFF93F20, MEMORY[0x1E697E108]);
  type metadata accessor for ModifiedContent();
  _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
  type metadata accessor for ModifiedContent();
  v2 = MEMORY[0x1E6980A08];
  type metadata accessor for Font?(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TextAlignment>, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FixedSizeLayout, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FixedSizeLayout, EmptyModifier>, MEMORY[0x1E697EBE8]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for InterfaceIdiomPredicate<WidgetInterfaceIdiom>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<MacInterfaceIdiom>, MEMORY[0x1E697F248], MEMORY[0x1E697F240], v0);
  type metadata accessor for LabelStyleWritingModifier<ContentUnavailableLabelStyle>(255, &lazy cache variable for type metadata for _LayoutRoot<ActionsLayout>, lazy protocol witness table accessor for type ActionsLayout and conformance ActionsLayout, &unk_1EFF93EF8, MEMORY[0x1E697DDC0]);
  type metadata accessor for StaticIf<CUVFlexibleButtonPredicate, ButtonStyleModifier<FlexibleBorderedButtonStyle>, EmptyModifier>(255);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _LayoutRoot<ActionsLayout> and conformance _LayoutRoot<A>();
  type metadata accessor for _VariadicView.Tree();
  type metadata accessor for StaticIf();
  swift_getTupleTypeMetadata2();
  v3 = type metadata accessor for TupleView();
  v4 = MEMORY[0x1E6981F48];
  swift_getWitnessTable(MEMORY[0x1E6981F48], v3);
  type metadata accessor for VStack();
  type metadata accessor for Font?(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ControlSize>, MEMORY[0x1E697DC38], v2);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  v5 = type metadata accessor for TupleView();
  swift_getWitnessTable(v4, v5);
  v6 = type metadata accessor for VStack();
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, WidgetLabelModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, EmptyModifier, _PaddingLayout>, v1, MEMORY[0x1E697E5E0]);
  v7 = type metadata accessor for ModifiedContent();
  v8 = MEMORY[0x1E697EC00];
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FixedSizeLayout, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FlexFrameLayout, EmptyModifier>, MEMORY[0x1E697EC00]);
  v9 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier>();
  v10 = type metadata accessor for ModifiedContent();
  v11 = MEMORY[0x1E69E6530];
  _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Int?>, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530]);
  v12 = type metadata accessor for ModifiedContent();
  v27[0] = swift_getWitnessTable(MEMORY[0x1E6981870], v6);
  v27[1] = lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, EmptyModifier, _PaddingLayout> and conformance <> StaticIf<A, B, C>();
  v13 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v7, v27);
  v15 = MEMORY[0x1E697EBF8];
  v26[0] = WitnessTable;
  v26[1] = lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FlexFrameLayout, EmptyModifier>, v8, MEMORY[0x1E697EBF8]);
  v25[0] = swift_getWitnessTable(v13, v9, v26);
  v25[1] = lazy protocol witness table accessor for type StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier>, lazy protocol witness table accessor for type CUVFlexibleFramePredicate and conformance CUVFlexibleFramePredicate, v15);
  v24[0] = swift_getWitnessTable(v13, v10, v25);
  v24[1] = _s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Int?>, &lazy cache variable for type metadata for Int?, v11);
  v16 = swift_getWitnessTable(v13, v12, v24);
  type metadata accessor for ScrollView(255, v12, v16, v17);
  type metadata accessor for InterfaceIdiomPredicate<WidgetInterfaceIdiom>(255, &lazy cache variable for type metadata for TransformScrollStorageModifier<TransformScrollBounceBehavior>, &type metadata for TransformScrollBounceBehavior, &protocol witness table for TransformScrollBounceBehavior, type metadata accessor for TransformScrollStorageModifier);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  v18 = type metadata accessor for TupleView();
  v19 = swift_getWitnessTable(v4, v18);
  type metadata accessor for ViewThatFits(255, v18, v19, v20);
  v21 = type metadata accessor for StaticIf();
  v23[0] = lazy protocol witness table accessor for type InterfaceIdiomPredicate<WidgetInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
  v23[1] = v16;
  v23[2] = &protocol witness table for ViewThatFits<A>;
  return swift_getWitnessTable(MEMORY[0x1E6981CE8], v21, v23);
}

uint64_t sub_18C0AC180()
{
  v1 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v2 = v0 + *(v1 + 24) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  type metadata accessor for ButtonAction(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*v2, *(v2 + 8), *(v2 + 16));
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined consume of Environment<OpenURLAction>.Content(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 34));
      outlined consume of Environment<OpenURLAction>.Content(*(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 74));
      v4 = *(type metadata accessor for LinkDestination() + 24);
      v5 = type metadata accessor for URL();
      (*(*(v5 - 8) + 8))(v2 + v4, v5);
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload)
    {
      goto LABEL_8;
    }
  }

LABEL_8:

  return swift_deallocObject();
}

void sub_18C0AC38C(__int128 *a1@<X0>, _WORD *a2@<X8>)
{
  v4 = *a1;
  EnvironmentValues.accessibilityEnabledTechnologies.getter(&v3);
  *a2 = v3;
}

double sub_18C0AC3DC(char *a1)
{
  v1 = *a1;
  v3 = 0;
  return EnvironmentValues.setIsEnabled(_:for:)(v1, &v3);
}

double sub_18C0AC41C(char *a1)
{
  v1 = *a1;
  v3 = 1;
  return EnvironmentValues.setIsEnabled(_:for:)(v1, &v3);
}

double sub_18C0AC460(char *a1)
{
  v1 = *a1;
  v3 = 2;
  return EnvironmentValues.setIsEnabled(_:for:)(v1, &v3);
}

double sub_18C0AC4A4(char *a1)
{
  v1 = *a1;
  v3 = 3;
  return EnvironmentValues.setIsEnabled(_:for:)(v1, &v3);
}

double sub_18C0AC4E8(char *a1)
{
  v1 = *a1;
  v3 = 4;
  return EnvironmentValues.setIsEnabled(_:for:)(v1, &v3);
}

uint64_t sub_18C0AC524(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  v5 = type metadata accessor for WrappedButtonStyle(255, a1[1], a1[3], a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for WrappedButtonStyle<A>, v5);
  v8 = type metadata accessor for ButtonStyleModifier(255, v5, WitnessTable, v7);
  swift_getWitnessTable(protocol conformance descriptor for ButtonStyleModifier<A>, v8);
  v9 = type metadata accessor for AutomaticStyleOverrideModifier();
  v10 = type metadata accessor for ModifiedContent();
  v12[0] = v4;
  v12[1] = swift_getWitnessTable(MEMORY[0x1E69809A8], v9);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v10, v12);
}

uint64_t sub_18C0AC620(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  v5 = type metadata accessor for ButtonStyleModifier(255, a1[1], a1[3], a4);
  swift_getWitnessTable(protocol conformance descriptor for ButtonStyleModifier<A>, v5);
  v6 = type metadata accessor for AutomaticStyleOverrideModifier();
  v7 = type metadata accessor for ModifiedContent();
  v9[0] = v4;
  v9[1] = swift_getWitnessTable(MEMORY[0x1E69809A8], v6);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v7, v9);
}

uint64_t sub_18C0AC6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for WheelPicker(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  v9 = type metadata accessor for Binding();
  (*(*(v5 - 8) + 8))(v8 + *(v9 + 32), v5);
  type metadata accessor for PickerStyleConfiguration(0, v5, v6, v10);

  return swift_deallocObject();
}

uint64_t sub_18C0AC810(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for PickerStyleConfiguration.Content(255, *a1, v5, a4);
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v8 = type metadata accessor for PickerStyleConfiguration.Label(255, v4, v5, v7);
  type metadata accessor for WheelPicker_Phone<DataSource>(255, &lazy cache variable for type metadata for WheelPicker_Phone<DataSource>, lazy protocol witness table accessor for type DataSource and conformance DataSource, &unk_1EFF94338, type metadata accessor for WheelPicker_Phone);
  v11 = type metadata accessor for LabeledContent(255, v8, v9, v10);
  type metadata accessor for WheelPicker_Phone<DataSource>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<AccessibilityCombinedLabeledContent>, lazy protocol witness table accessor for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent, &type metadata for AccessibilityCombinedLabeledContent, MEMORY[0x1E697FD28]);
  v12 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v2>, WheelPickerLabelsHiddenModifier, EmptyModifier>(255);
  v13 = type metadata accessor for ModifiedContent();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23[0] = &protocol witness table for PickerStyleConfiguration<A>.Label;
  v23[1] = lazy protocol witness table accessor for type WheelPicker_Phone<DataSource> and conformance WheelPicker_Phone<A>();
  v22[0] = swift_getWitnessTable(protocol conformance descriptor for <> LabeledContent<A, B>, v11, v23);
  v22[1] = lazy protocol witness table accessor for type ViewInputFlagModifier<AccessibilityCombinedLabeledContent> and conformance ViewInputFlagModifier<A>();
  v15 = MEMORY[0x1E697E858];
  v21[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v12, v22);
  v21[1] = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v2>, WheelPickerLabelsHiddenModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v20[1] = OpaqueTypeMetadata2;
  v20[2] = v13;
  v20[3] = OpaqueTypeConformance2;
  v20[4] = swift_getWitnessTable(v15, v13, v21);
  v16 = type metadata accessor for GroupElementsOfContent();
  v17 = type metadata accessor for Group();
  v20[0] = swift_getWitnessTable(MEMORY[0x1E697FE48], v16);
  swift_getWitnessTable(MEMORY[0x1E6981600], v17, v20);
  v18 = type metadata accessor for _UnaryViewAdaptor();
  return swift_getWitnessTable(MEMORY[0x1E697F380], v18);
}

uint64_t sub_18C0ACAAC()
{

  return swift_deallocObject();
}

uint64_t sub_18C0ACAEC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for TextInputSuggestionsModifier(255, *a1, v4, a4);
  swift_getWitnessTable(protocol conformance descriptor for TextInputSuggestionsModifier<A>, v5);
  v6 = type metadata accessor for _ViewModifier_Content();
  v17 = v4;
  v13 = &type metadata for EnvironmentValues.TextInputSuggestions;
  v14 = type metadata accessor for Optional();
  v15 = lazy protocol witness table accessor for type EnvironmentValues.TextInputSuggestions and conformance EnvironmentValues.TextInputSuggestions();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6982090], v14, &v17);
  type metadata accessor for StaticSourceWriter(255, &v13);
  v7 = type metadata accessor for ModifiedContent();
  type metadata accessor for ViewInputFlagModifier<HasTextInputSuggestions>(255);
  v8 = type metadata accessor for ModifiedContent();
  v12[0] = swift_getWitnessTable(MEMORY[0x1E697FDF8], v6);
  v12[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v9 = MEMORY[0x1E697E858];
  v11[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v7, v12);
  v11[1] = lazy protocol witness table accessor for type ViewInputFlagModifier<HasTextInputSuggestions> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type ViewInputFlagModifier<HasTextInputSuggestions> and conformance ViewInputFlagModifier<A>, type metadata accessor for ViewInputFlagModifier<HasTextInputSuggestions>, MEMORY[0x1E697FD30]);
  return swift_getWitnessTable(v9, v8, v11);
}

uint64_t sub_18C0ACCA4(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<ListRowInsetsTraitKey>, &type metadata for ListRowInsetsTraitKey, &protocol witness table for ListRowInsetsTraitKey, MEMORY[0x1E697FDB8]);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _TraitWritingModifier<ListRowInsetsTraitKey> and conformance _TraitWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0ACD3C(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = &protocol witness table for ListRowInsetTransformerModifier;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C0ACE60()
{

  return swift_deallocObject();
}

uint64_t sub_18C0AD0D0()
{
  v1 = *(v0 + 24);
  type metadata accessor for Optional();
  v2 = (type metadata accessor for Binding() - 8);
  v3 = v0 + ((*(*v2 + 80) + 48) & ~*(*v2 + 80));

  v4 = v2[10];
  v5 = *(v1 - 8);
  if (!(*(v5 + 48))(v3 + v4, 1, v1))
  {
    (*(v5 + 8))(v3 + v4, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_18C0AD208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  type metadata accessor for AlertTransformModifier<Alert.Presentation.Key>(255, a2, a3, a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for AlertTransformModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C0AD278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  type metadata accessor for AlertTransformModifier<Alert.Presentation.Key>(255, a2, a3, a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for AlertTransformModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C0AD2F4()
{

  return swift_deallocObject();
}

uint64_t sub_18C0AD334()
{

  if (*(v0 + 88))
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  return swift_deallocObject();
}

uint64_t sub_18C0AD418(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for _PreferenceWritingModifier<NavigationTransitionKey>();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _PreferenceWritingModifier<NavigationTransitionKey> and conformance _PreferenceWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

double sub_18C0AD49C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed ArchivableMutation, @guaranteed Transaction) -> ();
  a2[1] = v5;

  return result;
}

uint64_t sub_18C0AD514()
{

  return swift_deallocObject();
}

uint64_t sub_18C0AD550()
{

  return swift_deallocObject();
}

uint64_t sub_18C0AD598(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for TableRow(255, AssociatedTypeWitness, v3, v6);
  v11[0] = v1;
  v11[1] = v5;
  v11[2] = v7;
  v11[3] = v7;
  v11[4] = v7;
  v11[5] = v2;
  v11[6] = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for OutlineGroup(255, v11);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TableRow<A>, v7);
  return swift_getWitnessTable(protocol conformance descriptor for <> OutlineGroup<A, B, C, D, E>, v8, &WitnessTable);
}

uint64_t sub_18C0AD6C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[1] = v1;
  v8[2] = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for TableRow(255, AssociatedTypeWitness, v3, v5);
  v10 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for ForEach();
  v8[0] = swift_getWitnessTable(protocol conformance descriptor for TableRow<A>, v9);
  return swift_getWitnessTable(protocol conformance descriptor for <> ForEach<A, B, C>, v6, v8);
}

uint64_t sub_18C0AD7E4()
{

  return swift_deallocObject();
}

uint64_t sub_18C0AD82C()
{

  return swift_deallocObject();
}

void *sub_18C0AD908@<X0>(_BYTE *a2@<X8>)
{
  result = EnvironmentValues.dynamicTypeSize.getter();
  *a2 = v4;
  return result;
}

uint64_t sub_18C0AD9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ClosedRange<Date>(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_18C0ADAB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for ClosedRange<Date>(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }
}

uint64_t _s7SwiftUI28ArchivableLinearProgressViewV4BaseVAA08Timelineef8ExtendedG0A2aFP17fractionCompleted4tint13extendedStatexSd_AA5ColorVSg0iN0QztcfCTW_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = a3;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_18C0ADBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for TimelineProgressView.FinalTimelineProgressView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = v4 + ((*(*v5 + 80) + 32) & ~*(*v5 + 80));
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  type metadata accessor for ClosedRange<Date>(0);
  v8(v6 + *(v9 + 36), v7);

  v10 = v5[14];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v6 + v10, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_18C0ADD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for TimelineProgressView.ConditionallyArchivableTimelineProgressView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = v4 + ((*(*v5 + 80) + 32) & ~*(*v5 + 80));
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  type metadata accessor for ClosedRange<Date>(0);
  v8(v6 + *(v9 + 36), v7);

  v10 = v5[15];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v6 + v10, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_18C0ADF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ClosedRange<Date>(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_18C0ADFD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for ClosedRange<Date>(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }
}

uint64_t sub_18C0AE090(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = type metadata accessor for ProgressViewSchedule(255);
  v4 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type ProgressViewSchedule and conformance ProgressViewSchedule, type metadata accessor for ProgressViewSchedule, protocol conformance descriptor for ProgressViewSchedule);
  v5 = type metadata accessor for TimelineView(255, v3, v1, v4);
  v7 = *(v2 + 8);
  return swift_getWitnessTable(protocol conformance descriptor for <> TimelineView<A, B>, v5, &v7);
}

uint64_t sub_18C0AE13C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for TimelineProgressView.ArchivableTimelineProgressView(255, *a1, a1[1], a4);
  swift_getWitnessTable(protocol conformance descriptor for TimelineProgressView<A>.ArchivableTimelineProgressView, v4);
  v5 = type metadata accessor for EnvironmentReader();
  v6 = type metadata accessor for ModifiedContent();
  v8[0] = swift_getWitnessTable(MEMORY[0x1E697ED40], v5);
  v8[1] = MEMORY[0x1E697EBE0];
  return swift_getWitnessTable(MEMORY[0x1E697E858], v6, v8);
}

uint64_t sub_18C0AE200()
{
  v1 = *(type metadata accessor for ProgressViewSchedule(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);
  type metadata accessor for ClosedRange<Date>(0);
  v4(v0 + v2 + *(v5 + 36), v3);

  return swift_deallocObject();
}

uint64_t sub_18C0AE350(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyWritingModifier<AlternatingRowBackgroundBehavior>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<AlternatingRowBackgroundBehavior>, &type metadata for AlternatingRowBackgroundBehavior, MEMORY[0x1E6980A08]);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<AlternatingRowBackgroundBehavior> and conformance _EnvironmentKeyWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0AE3E0(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyWritingModifier<[Color]?>(255);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<[Color]?> and conformance _EnvironmentKeyWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

__n128 sub_18C0AE474@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = v2;
  return result;
}

__n128 sub_18C0AE490(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = v2;
  return result;
}

__n128 sub_18C0AE4AC@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(a1 + 56);
  *a2 = result;
  return result;
}

uint64_t sub_18C0AE514(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  type metadata accessor for ScrollBehaviorModifier(255, a1[1], a1[3], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for ScrollBehaviorModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

double sub_18C0AE5AC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();
  a2[1] = v5;

  return result;
}

uint64_t sub_18C0AE61C()
{

  return swift_deallocObject();
}

uint64_t sub_18C0AE6B0(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = &protocol witness table for ContainerRelativeFrameModifier;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C0AE718()
{

  return swift_deallocObject();
}

uint64_t sub_18C0AE75C(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = lazy protocol witness table accessor for type DeleteDisabledTableRowModifier and conformance DeleteDisabledTableRowModifier();
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v5);
}

uint64_t sub_18C0AE7D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  type metadata accessor for NavigationDestinationsModifier(255, a1[1], a1[3], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for NavigationDestinationsModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C0AE848(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  v6[0] = *(a1 + 8);
  v6[1] = v2;
  type metadata accessor for NavigationDestinationModifier(255, v6);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v1;
  v5[1] = &protocol witness table for NavigationDestinationModifier<A, B>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C0AE8C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  v5 = type metadata accessor for ViewDestinationNavigationDestinationModifier(255, a1[1], a1[3], a4);
  v6 = type metadata accessor for ModifiedContent();
  v8[0] = v4;
  v8[1] = swift_getWitnessTable(protocol conformance descriptor for ViewDestinationNavigationDestinationModifier<A>, v5);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v6, v8);
}

uint64_t sub_18C0AE95C(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  v7[0] = *(a1 + 8);
  v7[1] = v2;
  v3 = type metadata accessor for ItemBoundNavigationDestinationModifier(255, v7);
  v4 = type metadata accessor for ModifiedContent();
  v6[0] = v1;
  v6[1] = swift_getWitnessTable(protocol conformance descriptor for ItemBoundNavigationDestinationModifier<A, B>, v3);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v4, v6);
}

uint64_t sub_18C0AEA00(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = &protocol witness table for NavigationDestinationScopeModifier;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C0AEA6C(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyWritingModifier<WritingToolsBehavior?>(255);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WritingToolsBehavior?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<WritingToolsBehavior?>, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0AEB08()
{

  return swift_deallocObject();
}

uint64_t sub_18C0AEB68(_OWORD *a1)
{
  v1 = a1[1];
  v5[0] = *a1;
  v5[1] = v1;
  v5[2] = a1[2];
  type metadata accessor for MulticolumnSplitViewRepresentable(255, v5);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = &protocol witness table for MulticolumnSplitViewRepresentable<A, B, C>;
  v4[1] = MEMORY[0x1E6980A30];
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

__n128 sub_18C0AEC0C(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_18C0AEC20()
{

  return swift_deallocObject();
}

uint64_t sub_18C0AEC64()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18C0AECD0()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 64) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_18C0AED50()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_18C0AEE18()
{

  return swift_deallocObject();
}

void sub_18C0AEEBC(void *a1@<X8>)
{
  IntelligenceElement.boundingBox.getter();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_18C0AEF18()
{
  v1 = type metadata accessor for IntelligenceAppIntentsRequest();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  type metadata accessor for IntelligenceAppIntentsPayload?(0);
  v6 = (v3 + v4 + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  (*(v2 + 8))(v0 + v3, v1);
  v7 = type metadata accessor for IntelligenceAppIntentsPayload();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_18C0AF0B0@<X0>(uint64_t *a1@<X8>)
{
  AttributeScopes.intelligence.getter();
  result = type metadata accessor for IntelligenceElement.Text.Attributes();
  *a1 = result;
  return result;
}

uint64_t sub_18C0AF12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 17);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for PlaybackButton.Configuration(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18C0AF1D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 17) = -a2;
  }

  else
  {
    v7 = type metadata accessor for PlaybackButton.Configuration(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18C0AF270(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18C0AF2DC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_18C0AF39C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PlaybackButton.Configuration(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 2;
  }

  return result;
}

uint64_t sub_18C0AF454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PlaybackButton.Configuration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_18C0AF518(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PlaybackButton.Configuration(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_18C0AF5D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for ClosedRange<Date>?(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for PlaybackButton.State(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 40) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_18C0AF6E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 249)
  {
    v4 = *(a1 + 16);
    if (v4 <= 6)
    {
      v5 = 6;
    }

    else
    {
      v5 = *(a1 + 16);
    }

    v6 = v5 - 6;
    if (v4 >= 3)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for PlaybackButton.Configuration(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_18C0AF794(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 249)
  {
    *(result + 16) = a2 + 6;
  }

  else
  {
    v7 = type metadata accessor for PlaybackButton.Configuration(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s7SwiftUI28ToolbarItemTintColorModifier33_8A6B60014B02DD3A738BB825D2E4F1A4LLVwcp_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of Environment<Color?>.Content(*a2);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_18C0AF89C(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _TraitWritingModifier<ListRowPlatterColorTraitKey>();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _TraitWritingModifier<ListRowPlatterColorTraitKey> and conformance _TraitWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0AF95C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  type metadata accessor for TextSelectabilityModifier(255, a1[1], a1[3], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for TextSelectabilityModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C0AF9CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v8 = v1;
  v7 = *(v0 + 24);
  v9 = v7;
  v10 = v2;
  v3 = type metadata accessor for LazyPageTabView(0, &v8);
  v4 = v0 + ((*(*(v3 - 8) + 80) + 48) & ~*(*(v3 - 8) + 80));
  v5 = type metadata accessor for Binding();
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {

    (*(*(v1 - 8) + 8))(v4 + *(v5 + 32), v1);
  }

  (*(*(v7 - 8) + 8))(v4 + *(v3 + 52));
  return swift_deallocObject();
}

uint64_t _s7SwiftUI19LazyPageTabModifier33_E46F7FDA4A119274C1CE37D85D6ECCF0LLVwcp_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t sub_18C0AFB9C(uint64_t a1, double a2)
{
  v2 = *(a1 + 24);
  v3 = type metadata accessor for ModifiedContent();
  v4 = type metadata accessor for ModifiedContent();
  v23[0] = v2;
  v23[1] = &protocol witness table for ContainerRelativeFrameModifier;
  v5 = MEMORY[0x1E697E858];
  v22[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v23);
  v22[1] = lazy protocol witness table accessor for type LazyPageTabModifier and conformance LazyPageTabModifier();
  swift_getWitnessTable(v5, v4, v22);
  v6 = type metadata accessor for LazyHStack();
  type metadata accessor for TransformScrollStorageModifier<TransformScrollIndicators>(255, &lazy cache variable for type metadata for TransformScrollStorageModifier<TransformScrollIndicators>, &type metadata for TransformScrollIndicators, &protocol witness table for TransformScrollIndicators, type metadata accessor for TransformScrollStorageModifier);
  v7 = type metadata accessor for ModifiedContent();
  v21[0] = swift_getWitnessTable(MEMORY[0x1E697DA78], v6);
  v21[1] = &protocol witness table for TransformScrollStorageModifier<A>;
  WitnessTable = swift_getWitnessTable(v5, v7, v21);
  v10 = type metadata accessor for PagingScrollView(255, v7, WitnessTable, v9);
  v11 = type metadata accessor for ModifiedContent();
  v12 = type metadata accessor for ModifiedContent();
  v20[0] = swift_getWitnessTable(protocol conformance descriptor for PagingScrollView<A>, v10);
  v20[1] = &protocol witness table for TransformScrollStorageModifier<A>;
  v19[0] = swift_getWitnessTable(v5, v11, v20);
  v19[1] = MEMORY[0x1E6980950];
  v13 = swift_getWitnessTable(v5, v12, v19);
  v15 = type metadata accessor for ScrollViewReader(255, v12, v13, v14);
  type metadata accessor for _EnvironmentKeyWritingModifier<TabBarPlacement?>(255);
  v16 = type metadata accessor for ModifiedContent();
  v18[0] = swift_getWitnessTable(protocol conformance descriptor for ScrollViewReader<A>, v15);
  v18[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TabBarPlacement?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TabBarPlacement?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<TabBarPlacement?>, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable(v5, v16, v18);
}

uint64_t sub_18C0AFE0C()
{

  return swift_deallocObject();
}

uint64_t sub_18C0AFE48(uint64_t *a1, uint64_t *a2)
{

  return protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance LazySearchScopesKey(a1, a2);
}

uint64_t sub_18C0AFEA0()
{
  type metadata accessor for SearchBoundProperty<TextSelection?>(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  type metadata accessor for TextSelection?(0);
  v5 = (v2 + v3 + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v6 = v0 + v2;

  type metadata accessor for SearchFieldConfiguration?(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
  v8 = *(v7 + 32);
  v9 = type metadata accessor for TextSelection(0);
  v10 = *(*(v9 - 8) + 48);
  if (!v10(v6 + v8, 1, v9))
  {
    type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
      (*(*(v11 - 8) + 8))(v6 + v8, v11);
    }
  }

  if (!v10(v0 + v5, 1, v9))
  {
    type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
      (*(*(v12 - 8) + 8))(v0 + v5, v12);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_18C0B017C()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18C0B01B4()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B01EC()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B0224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SearchFieldConfiguration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_18C0B02DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SearchFieldConfiguration(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_18C0B0394(void *a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_18C0B0450()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B04B8()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B0500()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18C0B0538()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B0590()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_18C0B05DC()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B064C()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B0684()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B0704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for UICellConfigurationState?(0, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_18C0B07DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for UICellConfigurationState?(0, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }
}

uint64_t sub_18C0B08B0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C0B0948(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18C0B09E8()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B0A38(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = &protocol witness table for AccessibilityContainerModifier;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C0B0A9C(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyWritingModifier<Bool>();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v2, v4);
}

__n128 sub_18C0B0B58(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

uint64_t sub_18C0B0B74()
{

  return swift_deallocObject();
}

__n128 sub_18C0B0BBC(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_18C0B0BD0()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B0C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for CustomFeedbackGenerator(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));
  swift_weakDestroy();
  (*(*(v5 - 8) + 8))(v7 + v6[11], v5);

  v8 = (v7 + v6[13]);
  if (*v8 >> 2 != 0xFFFFFFFFLL && v8[5])
  {
    __swift_destroy_boxed_opaque_existential_1(v8 + 2);
  }

  return swift_deallocObject();
}

uint64_t sub_18C0B0DA0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_18C0B0DD8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for InterfaceIdiomPredicate<VisionInterfaceIdiom>();
  v4 = type metadata accessor for CustomFeedbackGenerator(255, v1, v2, v3);
  swift_getWitnessTable(protocol conformance descriptor for CustomFeedbackGenerator<A>, v4);
  v5 = type metadata accessor for _ViewModifier_Content();
  v6 = type metadata accessor for _ValueActionModifier2();
  v7 = type metadata accessor for ModifiedContent();
  v8 = type metadata accessor for ModifiedContent();
  v9 = type metadata accessor for StaticIf();
  v10 = lazy protocol witness table accessor for type InterfaceIdiomPredicate<VisionInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
  v17[0] = swift_getWitnessTable(MEMORY[0x1E697FDF8], v5);
  v17[1] = swift_getWitnessTable(MEMORY[0x1E697FDE0], v6);
  v11 = MEMORY[0x1E697E858];
  v16[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v7, v17);
  v16[1] = MEMORY[0x1E69805D0];
  v13 = v10;
  WitnessTable = swift_getWitnessTable(v11, v8, v16);
  v15 = WitnessTable;
  return swift_getWitnessTable(MEMORY[0x1E6981CE8], v9, &v13);
}

uint64_t sub_18C0B0F68(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for ViewInputFlagModifier<RecessButtonToggleBackground>(255);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type ViewInputFlagModifier<RecessButtonToggleBackground> and conformance ViewInputFlagModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0B0FD8()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B1010()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18C0B1058()
{
  outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>(v0[2], v0[3]);
  if (v0[5])
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18C0B10A4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void **_s7SwiftUI22DefaultDragDropPreviewVwcp_0(void **a1, void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  v4 = v3;
  return a1;
}

uint64_t sub_18C0B1118(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = &protocol witness table for DropModifier;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C0B117C(void *a1, double a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = type metadata accessor for ModifiedContent();
  type metadata accessor for TabDropDestinationTraitWritingModifier(255, v2, v3, v6);
  v7 = type metadata accessor for StaticIf();
  v8 = type metadata accessor for ModifiedContent();
  v14[0] = v4;
  v14[1] = &protocol witness table for DropModifier;
  v9 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v14);
  v13[0] = lazy protocol witness table accessor for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput();
  v13[1] = &protocol witness table for TabDropDestinationTraitWritingModifier<A>;
  v13[2] = MEMORY[0x1E697E100];
  v12[0] = WitnessTable;
  v12[1] = swift_getWitnessTable(MEMORY[0x1E6981CE0], v7, v13);
  return swift_getWitnessTable(v9, v8, v12);
}

uint64_t sub_18C0B128C(uint64_t a1, double a2)
{
  v2 = *(a1 + 16);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = &protocol witness table for DropModifier;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C0B12FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for _TraitWritingModifier<DropOntoTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<DropOntoTraitKey>, &type metadata for DropOntoTraitKey, &protocol witness table for DropOntoTraitKey, MEMORY[0x1E697FDB8]);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _TraitWritingModifier<DropOntoTraitKey> and conformance _TraitWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0B1398(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  type metadata accessor for DropPreviewModifier(255, a1[1], a1[3], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for DropPreviewModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C0B1410()
{
  outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>(v0[4], v0[5]);
  if (v0[7])
  {
  }

  if (v0[12] != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18C0B1474()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18C0B14AC()
{
  outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>(v0[4], v0[5]);
  if (v0[7])
  {
  }

  return swift_deallocObject();
}

void *sub_18C0B1518@<X0>(void *a2@<X8>)
{
  result = EnvironmentValues.redactionReasons.getter();
  *a2 = v4;
  return result;
}

uint64_t sub_18C0B1594(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = lazy protocol witness table accessor for type InvalidatableContentModifier and conformance InvalidatableContentModifier();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C0B1648(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NavigationItemDescription?(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C0B16B4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NavigationItemDescription?(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18C0B1728()
{
  v1 = *(v0 + 32);
  v5[0] = *(v0 + 16);
  v4 = *&v5[0];
  v5[1] = v1;
  v2 = *(type metadata accessor for ModalLink(0, v5) - 8);
  (*(*(v4 - 8) + 8))(v0 + ((*(v2 + 80) + 48) & ~*(v2 + 80)));

  return swift_deallocObject();
}

uint64_t sub_18C0B182C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = a1[3];
  v6 = type metadata accessor for Button(255, *a1, a1[2], a4);
  type metadata accessor for NullSheetAnchor<SheetPreference.Key>(255, v7, v8, v9);
  v18[0] = v4;
  v18[1] = v13;
  v18[2] = v5;
  v18[3] = lazy protocol witness table accessor for type NullSheetAnchor<SheetPreference.Key> and conformance NullSheetAnchor<A>(v13, v10, v11, v12);
  v14 = type metadata accessor for SheetPresentationModifier(255, v18);
  v15 = type metadata accessor for ModifiedContent();
  v17[0] = swift_getWitnessTable(protocol conformance descriptor for Button<A>, v6);
  v17[1] = swift_getWitnessTable(protocol conformance descriptor for SheetPresentationModifier<A, B>, v14);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v15, v17);
}

uint64_t sub_18C0B1928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for CollectionViewListDataSource(255, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  if (*(v10 + 84) == a2)
  {
    v11 = v9;
    v12 = *(v10 + 48);
    v13 = a1 + *(a3 + 112);

    return v12(v13, a2, v11);
  }

  else
  {
    v15 = *(a1 + *(a3 + 120));
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }
}

uint64_t sub_18C0B1A5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for CollectionViewListDataSource(255, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  result = type metadata accessor for Optional();
  v12 = *(result - 8);
  if (*(v12 + 84) == a3)
  {
    v13 = result;
    v14 = *(v12 + 56);
    v15 = a1 + *(a4 + 112);

    return v14(v15, a2, a2, v13);
  }

  else
  {
    *(a1 + *(a4 + 120)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_18C0B1B90()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void *sub_18C0B1BDC@<X0>(_BYTE *a2@<X8>)
{
  result = Transaction.subscript.getter();
  *a2 = v4;
  return result;
}

uint64_t sub_18C0B1C80()
{
  if (*(v0 + 184) == 1)
  {
  }

  else if (!*(v0 + 184))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    if (*(v0 + 136))
    {
    }

    if (*(v0 + 176))
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + 152));
    }
  }

  return swift_deallocObject();
}

uint64_t sub_18C0B1D04()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18C0B1D3C()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18C0B1D84(uint64_t a1)
{
  type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>(0, &lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.HostViewGraph, type metadata accessor for _UIHostingView.HostViewGraph);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *_s7SwiftUI20PreviewModifierTraitVwcp_0(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_18C0B1EC8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for PreviewModifierViewModifier(255, v1, v2, v3);
  swift_getWitnessTable(protocol conformance descriptor for PreviewModifierViewModifier<A>, v4);
  v8 = &type metadata for PreviewModifierContent;
  v9 = type metadata accessor for _ViewModifier_Content();
  v10 = lazy protocol witness table accessor for type PreviewModifierContent and conformance PreviewModifierContent();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v9);
  type metadata accessor for StaticSourceWriter(255, &v8);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = swift_getAssociatedConformanceWitness();
  v7[1] = &protocol witness table for StaticSourceWriter<A, B>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C0B2038(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _PreferenceWritingModifier<ToolbarItemViewHiddenKey>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<ToolbarItemViewHiddenKey>, &type metadata for ToolbarItemViewHiddenKey, &protocol witness table for ToolbarItemViewHiddenKey, MEMORY[0x1E6980750]);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _PreferenceWritingModifier<ToolbarItemViewHiddenKey> and conformance _PreferenceWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t _s7SwiftUI16_CommandsOutputsVwcp_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

void *_s7SwiftUI11DisplayListVAAE20AccessibilityUpdaterC10CacheValue33_F67A5B088801B75514018BB348F773CDLLVwcp_0(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = v3;

  return a1;
}

uint64_t sub_18C0B22D8()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for Optional() - 8);
  v3 = *(v2 + 64);
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);

  v7 = (*(v5 + 48))(v0 + v4, 1, v1);
  v8 = *(v5 + 8);
  if (!v7)
  {
    v8(v0 + v4, v1);
  }

  v8(v0 + ((v4 + v3 + v6) & ~v6), v1);

  return swift_deallocObject();
}

uint64_t sub_18C0B2460@<X0>(_BYTE *a3@<X8>)
{
  result = EnvironmentValues.speechAlwaysIncludesPunctuation.getter();
  *a3 = result;
  return result;
}

uint64_t sub_18C0B24C4@<X0>(_BYTE *a3@<X8>)
{
  result = EnvironmentValues.speechSpellsOutCharacters.getter();
  *a3 = result;
  return result;
}

uint64_t sub_18C0B2528@<X0>(uint64_t a3@<X8>)
{
  result = EnvironmentValues.speechAdjustedPitch.getter();
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

void *sub_18C0B259C@<X0>(_BYTE *a2@<X8>)
{
  result = EnvironmentValues.speechAnnouncementsPriority.getter();
  *a2 = v4;
  return result;
}

uint64_t sub_18C0B2660@<X0>(uint64_t *a3@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a3 = result;
  return result;
}

uint64_t sub_18C0B26EC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for UIKitWheelPicker(255, *a1, a1[1], a4);
  v4 = MEMORY[0x1E6980F50];
  type metadata accessor for _EnvironmentKeyWritingModifier<ColorScheme?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
  v5 = type metadata accessor for ModifiedContent();
  v6 = type metadata accessor for ModifiedContent();
  v10[0] = &protocol witness table for UIKitWheelPicker<A>;
  v10[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ColorScheme?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, v4);
  v7 = MEMORY[0x1E697E858];
  v9[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v10);
  v9[1] = MEMORY[0x1E697EBF8];
  return swift_getWitnessTable(v7, v6, v9);
}

uint64_t sub_18C0B27EC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = MEMORY[0x1E69815C0];
  type metadata accessor for _EnvironmentKeyWritingModifier<ColorScheme?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0]);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v1;
  v5[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ColorScheme?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, v2);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

__n128 sub_18C0B28B0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18C0B28CC()
{

  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  }

  outlined consume of SceneID(*(v0 + 136), *(v0 + 144), *(v0 + 152));

  return swift_deallocObject();
}

uint64_t sub_18C0B2948()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18C0B2980()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void _s7SwiftUI29PlatformButtonActionTransformV16SelectionContentV14AttributeGraph4RuleAafGP12initialValue0M0QzSgvgZTW_0(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 1;
}

uint64_t sub_18C0B29F8()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B2A54(uint64_t a1, double a2)
{
  v2 = *(a1 + 16);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = lazy protocol witness table accessor for type FocusGroupModifier and conformance FocusGroupModifier();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C0B2C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexSet();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_18C0B2CF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for IndexSet();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40)) = (a2 - 1);
  }

  return result;
}

uint64_t _s7SwiftUI16ListBatchUpdatesVyxGSlAASl5index_8offsetBy5IndexQzAH_SitFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ListBatchUpdates<A>, a3);
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t _s7SwiftUI16ListBatchUpdatesVyxGSlAASl5index_8offsetBy07limitedH05IndexQzSgAI_SiAItFTW_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ListBatchUpdates<A>, a4);

  return MEMORY[0x1EEE69818](a1, a2, a3, a4, WitnessTable);
}

uint64_t _s7SwiftUI16ListBatchUpdatesVyxGSlAASl8distance4from2toSi5IndexQz_AItFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ListBatchUpdates<A>, a3);
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

double sub_18C0B2F28@<D0>(double *a1@<X8>)
{
  _UIHostingView.currentTimestamp.getter(&v3);
  result = v3;
  *a1 = v3;
  return result;
}

__n128 sub_18C0B2FA8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18C0B2FB4@<X0>(_WORD *a1@<X8>, uint64_t a2@<X0>)
{
  result = _UIHostingView.valuesNeedingUpdate.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_18C0B3094@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = _UIHostingView.externalUpdateCount.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_18C0B30F4()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B3140(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  type metadata accessor for DividerStyleModifier(255, a1[1], a1[3], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for DividerStyleModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C0B31B0()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B31E8()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B322C(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  v7[0] = *(a1 + 8);
  v7[1] = v2;
  v3 = type metadata accessor for SearchScopesModifier(255, v7);
  v4 = type metadata accessor for ModifiedContent();
  v6[0] = v1;
  v6[1] = swift_getWitnessTable(protocol conformance descriptor for SearchScopesModifier<A, B>, v3);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v4, v6);
}

uint64_t sub_18C0B32D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  v5 = type metadata accessor for SearchCustomScopeBarModifier(255, a1[1], a1[3], a4);
  v6 = type metadata accessor for ModifiedContent();
  v8[0] = v4;
  v8[1] = swift_getWitnessTable(protocol conformance descriptor for SearchCustomScopeBarModifier<A>, v5);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v6, v8);
}

uint64_t sub_18C0B3374(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v16 = *a1;
  v1 = v16;
  v17 = v2;
  v18 = v3;
  v19 = v4;
  v5 = type metadata accessor for SearchScopesModifier(255, &v16);
  swift_getWitnessTable(protocol conformance descriptor for SearchScopesModifier<A, B>, v5);
  v6 = type metadata accessor for _ViewModifier_Content();
  v16 = MEMORY[0x1E6981148];
  v17 = v1;
  v18 = v2;
  v19 = MEMORY[0x1E6981138];
  v20 = v3;
  v21 = v4;
  v7 = type metadata accessor for Picker(255, &v16);
  v8 = lazy protocol witness table accessor for type SearchFieldConfiguration.Scopes and conformance SearchFieldConfiguration.Scopes();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Picker<A, B, C>, v7);
  v16 = &type metadata for SearchFieldConfiguration.Scopes;
  v17 = v7;
  v18 = v8;
  v19 = WitnessTable;
  type metadata accessor for StaticSourceWriter(255, &v16);
  v10 = type metadata accessor for ModifiedContent();
  type metadata accessor for _EnvironmentKeyWritingModifier<Image.Scale>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<SearchScopeActivation.Role>, &type metadata for SearchScopeActivation.Role);
  v11 = type metadata accessor for ModifiedContent();
  v15[0] = swift_getWitnessTable(MEMORY[0x1E697FDF8], v6);
  v15[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v12 = MEMORY[0x1E697E858];
  v14[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v10, v15);
  v14[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SearchScopeActivation.Role> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<SearchScopeActivation.Role> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<SearchScopeActivation.Role>, &type metadata for SearchScopeActivation.Role);
  return swift_getWitnessTable(v12, v11, v14);
}

uint64_t sub_18C0B3524(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = type metadata accessor for SearchCustomScopeBarModifier(255, *a1, v5, a4);
  swift_getWitnessTable(protocol conformance descriptor for SearchCustomScopeBarModifier<A>, v6);
  v7 = type metadata accessor for _ViewModifier_Content();
  v8 = MEMORY[0x1E697DB50];
  type metadata accessor for _EnvironmentKeyWritingModifier<Image.Scale>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Visibility>, MEMORY[0x1E697DB50]);
  v9 = type metadata accessor for ModifiedContent();
  v17[0] = &type metadata for EnvironmentValues.SearchCustomScopeBar;
  v17[1] = v4;
  v17[2] = lazy protocol witness table accessor for type EnvironmentValues.SearchCustomScopeBar and conformance EnvironmentValues.SearchCustomScopeBar();
  v17[3] = v5;
  type metadata accessor for OptionalSourceWriter(255, v17);
  v10 = type metadata accessor for ModifiedContent();
  type metadata accessor for ViewInputFlagModifier<HasCustomScopeBar>(255);
  v11 = type metadata accessor for ModifiedContent();
  v16[0] = swift_getWitnessTable(MEMORY[0x1E697FDF8], v7);
  v16[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SearchScopeActivation.Role> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Visibility> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Visibility>, v8);
  v12 = MEMORY[0x1E697E858];
  v15[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v9, v16);
  v15[1] = &protocol witness table for OptionalSourceWriter<A, B>;
  v14[0] = swift_getWitnessTable(v12, v10, v15);
  v14[1] = lazy protocol witness table accessor for type ViewInputFlagModifier<HasCustomScopeBar> and conformance ViewInputFlagModifier<A>();
  return swift_getWitnessTable(v12, v11, v14);
}

uint64_t sub_18C0B36CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for PlatformViewHitTestFilterGesture(0, v5, *(v4 + 24), a4) - 8);
  (*(*(v5 - 8) + 8))(v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

  return swift_deallocObject();
}

uint64_t sub_18C0B37C0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = type metadata accessor for PlatformViewHitTestFilterGesture.GestureState(255, *a1, v4, a4);
  type metadata accessor for PlatformViewHitTestFilterGesture.Value(255, v5, v4, v7);
  swift_getWitnessTable(protocol conformance descriptor for PlatformViewHitTestFilterGesture<A>.GestureState, v6);
  v8 = type metadata accessor for StateContainerGesture();
  type metadata accessor for EventListener<HitTestableEvent>();
  lazy protocol witness table accessor for type EventListener<HitTestableEvent> and conformance EventListener<A>();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable(MEMORY[0x1E697FCE8], v8);
  swift_getOpaqueTypeConformance2();
  v9 = type metadata accessor for ModifierGesture();
  return swift_getWitnessTable(MEMORY[0x1E697E860], v9);
}

uint64_t sub_18C0B391C(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = &protocol witness table for PointerVisibilityModifier;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C0B3980(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  type metadata accessor for ResolvedTabView(255, *a1, v6, a4);
  v9 = type metadata accessor for TabViewStyleConfiguration.Content(255, v4, v6, v8);
  type metadata accessor for StyleContextWriter<ContainerStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<ContainerStyleContext>, MEMORY[0x1E697FBF0], MEMORY[0x1E697FBE8], MEMORY[0x1E697F4C8]);
  v10 = type metadata accessor for ModifiedContent();
  v11 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TabViewStyleConfiguration<A>.Content, v9);
  v26[0] = v7;
  v26[1] = lazy protocol witness table accessor for type StyleContextWriter<ContainerStyleContext> and conformance StyleContextWriter<A>();
  v13 = MEMORY[0x1E697E858];
  v25[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v10, v26);
  v25[1] = &protocol witness table for AccessibilityContainerModifier;
  v21 = v9;
  v22 = v11;
  v23 = WitnessTable;
  v24 = swift_getWitnessTable(v13, v11, v25);
  type metadata accessor for StaticSourceWriter(255, &v21);
  v14 = type metadata accessor for ModifiedContent();
  type metadata accessor for StyleContextWriter<ContainerStyleContext>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<DisableNavigationDestination>, MEMORY[0x1E69808B0], MEMORY[0x1E69808A8], MEMORY[0x1E697FD28]);
  v15 = type metadata accessor for ModifiedContent();
  v21 = v4;
  v22 = v5;
  v23 = v6;
  v24 = v7;
  type metadata accessor for TabView.TransformEnvironment(255, &v21);
  v16 = type metadata accessor for ModifiedContent();
  v20[0] = &protocol witness table for ResolvedTabView<A>;
  v20[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v19[0] = swift_getWitnessTable(v13, v14, v20);
  v19[1] = lazy protocol witness table accessor for type ViewInputFlagModifier<DisableNavigationDestination> and conformance ViewInputFlagModifier<A>();
  v18[0] = swift_getWitnessTable(v13, v15, v19);
  v18[1] = &protocol witness table for TabView<A, B>.TransformEnvironment;
  return swift_getWitnessTable(v13, v16, v18);
}

double _s7SwiftUI12SymbolEffectV20BreatheConfigurationVwxx_0(uint64_t *a1)
{
  v1 = *a1;
  if ((~v1 & 0xF000000000000006) != 0)
  {
    return outlined consume of _SymbolEffect.Trigger(v1);
  }

  return result;
}

uint64_t sub_18C0B3C3C(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyTransformModifier<ResolvedSubviewsSizingOptions>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<ResolvedSubviewsSizingOptions>, &type metadata for ResolvedSubviewsSizingOptions, MEMORY[0x1E6980B20]);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<ResolvedSubviewsSizingOptions> and conformance _EnvironmentKeyTransformModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0B3CCC(void *a1)
{
  v1 = a1[1];
  v3 = a1[2];
  v2 = a1[3];
  v12[0] = &type metadata for ListRowHeightTemplateContent;
  v12[1] = v1;
  v12[2] = lazy protocol witness table accessor for type ListRowHeightTemplateContent and conformance ListRowHeightTemplateContent();
  v12[3] = v2;
  type metadata accessor for OptionalSourceWriter(255, v12);
  v4 = type metadata accessor for ModifiedContent();
  type metadata accessor for _EnvironmentKeyTransformModifier<ResolvedSubviewsSizingOptions>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<ResolvedSubviewsSizingOptions>, &type metadata for ResolvedSubviewsSizingOptions, MEMORY[0x1E6980B20]);
  v5 = type metadata accessor for ModifiedContent();
  v6 = type metadata accessor for ModifiedContent();
  v11[0] = v3;
  v11[1] = &protocol witness table for OptionalSourceWriter<A, B>;
  v7 = MEMORY[0x1E697E858];
  v10[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v11);
  v10[1] = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<ResolvedSubviewsSizingOptions> and conformance _EnvironmentKeyTransformModifier<A>();
  v9[0] = swift_getWitnessTable(v7, v5, v10);
  v9[1] = &protocol witness table for OptInScrollGeometryViewInputModifier;
  return swift_getWitnessTable(v7, v6, v9);
}

uint64_t sub_18C0B3E40()
{
  outlined consume of Environment<CGFloat?>.Content(*(v0 + 24), *(v0 + 32), *(v0 + 33));

  return swift_deallocObject();
}

uint64_t sub_18C0B3EC0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 24)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_18C0B3F6C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18C0B400C()
{
  v1 = (type metadata accessor for ListTemplateRowWrapperView(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  outlined consume of Environment<Bool>.Content(*(v0 + v2 + 8), *(v0 + v2 + 16));
  v3 = v1[8];
  v4 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_18C0B4158(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  type metadata accessor for ColorPickerStyleModifier(255, a1[1], a1[3], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for ColorPickerStyleModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C0B41E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  type metadata accessor for _TraitWritingTableRowModifier<IsSelectionEnabledTraitKey>(255, a2, a3, a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for _TraitWritingTableRowModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

uint64_t sub_18C0B4254()
{
  v1 = *(v0 + 24);
  v2 = *(type metadata accessor for Optional() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  if (!(*(v4 + 48))(v0 + v3, 1, v1))
  {
    (*(v4 + 8))(v0 + v3, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_18C0B438C()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B43CC()
{
  type metadata accessor for Predicate<Pack{String}>?(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*(v1 - 8) + 64) + v2 + v3) & ~v2;
  type metadata accessor for Predicate<Pack{String}>();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 48);
  if (!v8(v0 + v3, 1, v5))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  if (!v8(v0 + v4, 1, v6))
  {
    (*(v7 + 8))(v0 + v4, v6);
  }

  return swift_deallocObject();
}

id sub_18C0B452C@<X0>(uint64_t *a3@<X8>)
{
  result = OpenURLOptions.uiSceneOpenURLOptions.getter();
  *a3 = result;
  return result;
}

uint64_t _s7SwiftUI14OpenURLOptionsVwcp_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = v3;
  return a1;
}

uint64_t sub_18C0B45AC(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = lazy protocol witness table accessor for type UserActivityModifier and conformance UserActivityModifier();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C0B4610(uint64_t a1, double a2)
{
  v2 = *(a1 + 16);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = lazy protocol witness table accessor for type UserActivityModifier and conformance UserActivityModifier();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C0B4678(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for PassthroughSubject<Any, Never>();
  v8[0] = v3;
  v8[1] = v1;
  v8[2] = lazy protocol witness table accessor for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>, type metadata accessor for PassthroughSubject<Any, Never>, MEMORY[0x1E695BF88]);
  v8[3] = v2;
  v4 = type metadata accessor for SubscriptionView(255, v8);
  v6 = type metadata accessor for SceneBridgeReader(255, v4, &protocol witness table for SubscriptionView<A, B>, v5);
  return swift_getWitnessTable(protocol conformance descriptor for SceneBridgeReader<A>, v6);
}

uint64_t sub_18C0B472C(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _PreferenceTransformModifier<SceneBridge.ActivationConditionsPreferenceKey>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<SceneBridge.ActivationConditionsPreferenceKey>, &type metadata for SceneBridge.ActivationConditionsPreferenceKey, &protocol witness table for SceneBridge.ActivationConditionsPreferenceKey, MEMORY[0x1E6980910]);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _PreferenceTransformModifier<SceneBridge.ActivationConditionsPreferenceKey> and conformance _PreferenceTransformModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t assignWithCopy for Toolbar.VendedItem(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a1;
  *a1 = *a2;
  *(a1 + 8) = v4;
  v6 = v3;

  return a1;
}

uint64_t assignWithTake for Toolbar.VendedItem(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  *(a1 + 8) = v3;

  return a1;
}

uint64_t sub_18C0B4844()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B488C()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B48C4()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B48FC()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B4934()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B496C()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B49A4()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B49F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 <= 1)
    {
      return 0;
    }

    else
    {
      return v10 ^ 0xFF;
    }
  }
}

uint64_t sub_18C0B4AB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = ~a2;
  }

  return result;
}

uint64_t sub_18C0B4BE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  type metadata accessor for _TouchBarModifier(255, a1[1], a1[3], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for _TouchBarModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C0B4C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SearchFieldConfiguration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_18C0B4D24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SearchFieldConfiguration(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_18C0B4DFC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  type metadata accessor for RelationshipModifier(255, a1[1], a1[3], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for RelationshipModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

__n128 sub_18C0B4E80(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_18C0B4E98()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B4EE4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  type metadata accessor for MenuStyleModifier(255, a1[1], a1[3], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for MenuStyleModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C0B4F60()
{
  if (*(v0 + 40) >= 5uLL)
  {
    outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  }

  if (*(v0 + 72) >= 3uLL)
  {
    outlined consume of Text.Storage(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  }

  if (*(v0 + 104))
  {
    outlined consume of Text.Storage(*(v0 + 80), *(v0 + 88), *(v0 + 96));
  }

  return swift_deallocObject();
}

uint64_t sub_18C0B501C(_OWORD *a1)
{
  v1 = a1[1];
  v7[0] = *a1;
  v7[1] = v1;
  v2 = type metadata accessor for LabeledControlGroupContent(255, v7);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for LabeledControlGroupContent<A, B>, v2);
  v5 = type metadata accessor for ControlGroup(255, v2, WitnessTable, v4);
  return swift_getWitnessTable(protocol conformance descriptor for ControlGroup<A>, v5);
}

uint64_t sub_18C0B50A0(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = &protocol witness table for _FlipForRTLEffect;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C0B5114(void *a1)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_18C0B5194()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18C0B5258(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  type metadata accessor for TextEditorStyleModifier(255, a1[1], a1[3], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for TextEditorStyleModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C0B531C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 10);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for TextEditor.Storage(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18C0B53C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 10) = -a2;
  }

  else
  {
    v7 = type metadata accessor for TextEditor.Storage(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18C0B5464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_18C0B55B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_18C0B5718(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  type metadata accessor for ToggleStyleModifier(255, a1[1], a1[3], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for ToggleStyleModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C0B57E0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ScrollView.Main(255, *a1, a1[1], a4);
  type metadata accessor for _OverlayPreferenceModifier<_ContainedScrollViewKey, _ScrollOverlayView>(255);
  v4 = type metadata accessor for ModifiedContent();
  v6[0] = &protocol witness table for _ScrollView<A>.Main;
  v6[1] = lazy protocol witness table accessor for type _OverlayPreferenceModifier<_ContainedScrollViewKey, _ScrollOverlayView> and conformance _OverlayPreferenceModifier<A, B>(&lazy protocol witness table cache variable for type _OverlayPreferenceModifier<_ContainedScrollViewKey, _ScrollOverlayView> and conformance _OverlayPreferenceModifier<A, B>, type metadata accessor for _OverlayPreferenceModifier<_ContainedScrollViewKey, _ScrollOverlayView>, MEMORY[0x1E6980748]);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v4, v6);
}

uint64_t sub_18C0B58CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedTextFormatting.Transferable.Storage(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C0B5938(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedTextFormatting.Transferable.Storage(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

__n128 sub_18C0B5A3C(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

__n128 sub_18C0B5AC8(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_18C0B5B7C(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 72);
  v4 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v4;
  v9[2] = *(a1 + 32);
  v10 = v2;
  v5 = type metadata accessor for OutlinePrimitive(255, v9);
  v7 = *(a1 + 56);
  v8 = v3;
  return swift_getWitnessTable(protocol conformance descriptor for <> OutlinePrimitive<A, B, C, D, E>, v5, &v7);
}

uint64_t sub_18C0B5BF8()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B5C34()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B5CD8()
{
  v1 = *(v0 + 32);
  v5[0] = *(v0 + 16);
  v4 = *&v5[0];
  v5[1] = v1;
  v2 = *(type metadata accessor for ToolbarSafeAreaInsetModifier(0, v5) - 8);
  (*(*(v4 - 8) + 8))(v0 + ((*(v2 + 80) + 48) & ~*(v2 + 80)));

  return swift_deallocObject();
}

uint64_t sub_18C0B5DCC(uint64_t *a1)
{
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v17 = *a1;
  v2 = v17;
  v18 = v1;
  v19 = v4;
  v20 = v3;
  v5 = type metadata accessor for ToolbarSafeAreaInsetModifier(255, &v17);
  swift_getWitnessTable(protocol conformance descriptor for ToolbarSafeAreaInsetModifier<A, B>, v5);
  v6 = type metadata accessor for _ViewModifier_Content();
  type metadata accessor for ViewInputFlagModifier<CreatesToolbarSafeAreaInsetInput>(255);
  v7 = type metadata accessor for ModifiedContent();
  v8 = type metadata accessor for _InsetViewModifier();
  v9 = type metadata accessor for ModifiedContent();
  v16[0] = swift_getWitnessTable(MEMORY[0x1E697FDF8], v6);
  v16[1] = lazy protocol witness table accessor for type ViewInputFlagModifier<CreatesToolbarSafeAreaInsetInput> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type ViewInputFlagModifier<CreatesToolbarSafeAreaInsetInput> and conformance ViewInputFlagModifier<A>, type metadata accessor for ViewInputFlagModifier<CreatesToolbarSafeAreaInsetInput>, MEMORY[0x1E697FD30]);
  v10 = MEMORY[0x1E697E858];
  v15[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v7, v16);
  v15[1] = swift_getWitnessTable(MEMORY[0x1E697F598], v8);
  WitnessTable = swift_getWitnessTable(v10, v9, v15);
  v17 = v2;
  v18 = v9;
  v19 = v4;
  v20 = WitnessTable;
  type metadata accessor for ToolbarReader(255, &v17);
  type metadata accessor for _EnvironmentKeyWritingModifier<Toolbar.UpdateContext?>(255);
  v12 = type metadata accessor for ModifiedContent();
  v14[0] = &protocol witness table for ToolbarReader<A, B>;
  v14[1] = lazy protocol witness table accessor for type ViewInputFlagModifier<CreatesToolbarSafeAreaInsetInput> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Toolbar.UpdateContext?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Toolbar.UpdateContext?>, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable(v10, v12, v14);
}

uint64_t sub_18C0B5FD4()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B600C()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B6044()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B607C()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B60B4()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B60EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 92);
  type metadata accessor for UUID?(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_18C0B6194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 92);
  type metadata accessor for UUID?(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_18C0B6258(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyWritingModifier<Text.Sizing>();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Text.Sizing> and conformance _EnvironmentKeyWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0B62C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for PlaybackButton.Configuration(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18C0B6368(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = type metadata accessor for PlaybackButton.Configuration(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18C0B6418()
{
  v1 = (type metadata accessor for PillPlaybackButtonStyleBody(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v18 = *(*v1 + 64);
  type metadata accessor for ClosedRange<Date>(0);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 80);
  outlined consume of Environment<Bool>.Content(*(v0 + v2), *(v0 + v2 + 8));
  v7 = v0 + v2 + v1[7];
  if (!(*(v5 + 48))(v7, 1, v4))
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 8);
    v9(v7, v8);
    v9(v7 + *(v4 + 36), v8);
  }

  v10 = type metadata accessor for PlaybackButton.Configuration(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v7 + v11, 2, v12))
  {
    (*(v13 + 8))(v7 + v11, v12);
  }

  v14 = (v2 + v18 + v6) & ~v6;

  v15 = v7 + *(v10 + 40);
  outlined consume of Environment<AppIntentExecutor?>.Content(*v15, *(v15 + 8), *(v15 + 16));

  v16 = *(v13 + 8);
  v16(v0 + v14, v12);
  v16(v0 + v14 + *(v4 + 36), v12);

  return swift_deallocObject();
}

uint64_t sub_18C0B66BC()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B6710(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for _EnvironmentKeyWritingModifier<AnyShapeStyle?>(255);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<AnyShapeStyle?>, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0B67B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  type metadata accessor for SelectableModifier(255, a1[1], a1[3], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for SelectableModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t *_s7SwiftUI9PathTokenOwcp_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  outlined copy of PathToken(*a2, v4);
  *a1 = v3;
  a1[1] = v4;
  return a1;
}

uint64_t _s7SwiftUI28CanvasFeedbackImplementationVwcp_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = v3;
  return a1;
}

uint64_t sub_18C0B68F4(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _PreferenceWritingModifier<StatusBarAlignmentKey>();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _PreferenceWritingModifier<StatusBarAlignmentKey> and conformance _PreferenceWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0B6960(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for TransactionalPreferenceModifier<Bool, StatusBarKey>();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = &protocol witness table for TransactionalPreferenceModifier<A, B>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0B69CC()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B6A04()
{
  outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>(v0[2], v0[3]);
  if (v0[5])
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18C0B6A50()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B6AF4()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B6B34(uint64_t a1)
{
  v2 = (a1 + 8);

  __swift_destroy_boxed_opaque_existential_1(v2);
  return a1;
}

uint64_t _s7SwiftUI24DropOntoTableRowModifierVwxx_0(uint64_t a1)
{
  v1 = (a1 + 8);

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_18C0B6BC8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18C0B6C00()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_18C0B6CDC(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyTransformModifier<TextInputDictation?>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<TextInputDictation?>, &lazy cache variable for type metadata for TextInputDictation?, &type metadata for TextInputDictation, MEMORY[0x1E6980B20]);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<TextInputDictation?> and conformance _EnvironmentKeyTransformModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0B6DEC(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyTransformModifier<TextInputDictation?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool?>, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool?> and conformance _EnvironmentKeyWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0B6E84(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = &protocol witness table for PinnedBarModifier;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C0B6EF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C0B6F60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18C0B7018()
{
  if (!*(v0 + 64))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  }

  return swift_deallocObject();
}

uint64_t sub_18C0B7058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483645)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    v6 = v5 <= 0;
    if (v5 < 0)
    {
      v5 = -1;
    }

    if (v6)
    {
      return 0;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    type metadata accessor for CategoryGesture<DragGesture.Value>(0, &lazy cache variable for type metadata for DragGesture.Value?, MEMORY[0x1E69E6720]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_18C0B7134(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483645)
  {
    *(result + 16) = (a2 + 1);
  }

  else
  {
    type metadata accessor for CategoryGesture<DragGesture.Value>(0, &lazy cache variable for type metadata for DragGesture.Value?, MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_18C0B71F8()
{
  type metadata accessor for ModifierGesture<StateContainerGesture<SpatialDragGesture.StateType, TouchEvent, DragGesture.Value>, ModifierGesture<CoordinateSpaceGesture<TouchEvent>, ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>>>(255);
  lazy protocol witness table accessor for type ModifierGesture<CategoryGesture<DragGesture.Value>, SpatialDragGesture> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<StateContainerGesture<SpatialDragGesture.StateType, TouchEvent, DragGesture.Value>, ModifierGesture<CoordinateSpaceGesture<TouchEvent>, ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<StateContainerGesture<SpatialDragGesture.StateType, TouchEvent, DragGesture.Value>, ModifierGesture<CoordinateSpaceGesture<TouchEvent>, ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>>>, MEMORY[0x1E697E860]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t *_s7SwiftUI25ItemContainerTintModifier33_BB9DEADC2141171EEA22328170A014C7LLVwcp_0(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_18C0B7324(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  type metadata accessor for EnvironmentWritingSceneModifier(255, a1[1], a1[3], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for EnvironmentWritingSceneModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

__n128 sub_18C0B73FC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18C0B7458()
{

  return swift_deallocObject();
}

__n128 sub_18C0B74A0(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

uint64_t sub_18C0B74BC()
{

  return swift_deallocObject();
}

__n128 sub_18C0B7544(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_18C0B758C(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for ModifiedContent<Divider, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>(255);
  type metadata accessor for _TraitWritingModifier<IsAuxiliaryContentTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<IsAuxiliaryContentTraitKey>, MEMORY[0x1E6980698], MEMORY[0x1E6980690], MEMORY[0x1E697FDB8]);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  v1 = type metadata accessor for TupleView();
  v2 = MEMORY[0x1E6981F48];

  return swift_getWitnessTable(v2, v1);
}

uint64_t sub_18C0B7674(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Section(255, v1, AssociatedTypeWitness, v2);
  v8[0] = v3;
  v8[1] = swift_getAssociatedConformanceWitness();
  v8[2] = v4;
  return swift_getWitnessTable(protocol conformance descriptor for <> Section<A, B, C>, v6, v8);
}

uint64_t sub_18C0B779C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = type metadata accessor for Optional();
  type metadata accessor for FocusedValueModifier(255, v2, v3, v4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v1;
  v7[1] = &protocol witness table for FocusedValueModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C0B7818(uint64_t a1, double a2)
{
  v2 = *(a1 + 32);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = lazy protocol witness table accessor for type UnidentifiedSharingPickerModifier and conformance UnidentifiedSharingPickerModifier();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C0B7880(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = lazy protocol witness table accessor for type UnidentifiedSharingPickerModifier and conformance UnidentifiedSharingPickerModifier();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance _JSONKey()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_18C0B7990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    type metadata accessor for UTType?(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_18C0B7A70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for UTType?(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 36);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_18C0B7B44()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B7B7C()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B7BC8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_18C0B7C80()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

__n128 sub_18C0B7D50(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_18C0B7D80()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = (type metadata accessor for GestureStateGesture(0, v2, v1, v0[4]) - 8);
  v4 = v0 + ((*(*v3 + 80) + 40) & ~*(*v3 + 80));
  (*(*(v2 - 8) + 8))(v4, v2);
  (*(*(v1 - 8) + 8))(&v4[v3[13]], v1);
  type metadata accessor for State();

  type metadata accessor for GestureState(0, v1, v5, v6);

  return swift_deallocObject();
}

uint64_t sub_18C0B7EFC()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B7F3C()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = (type metadata accessor for GestureStateGesture(0, v2, v1, *(v0 + 4)) - 8);
  v4 = (*(*v3 + 80) + 56) & ~*(*v3 + 80);
  v5 = *(*v3 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);

  (*(*(v2 - 8) + 8))(&v0[v4], v2);
  (*(*(v1 - 8) + 8))(&v0[v4 + v3[13]], v1);
  type metadata accessor for State();

  type metadata accessor for GestureState(0, v1, v9, v10);

  (*(v7 + 8))(&v0[v8], AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_18C0B8164()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B81A4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
  }

  v2 = *(v0 + 160);
  if (v2)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18C0B8244(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  type metadata accessor for ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier>, &type metadata for ResolvedSliderStyle, &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
  type metadata accessor for AccessibilityLabelModifier.ChildModifier(255, v1, v4, v5);
  v6 = type metadata accessor for ModifiedContent();
  v7 = lazy protocol witness table accessor for type SliderStyleConfiguration.Label and conformance SliderStyleConfiguration.Label();
  v26[0] = v4;
  v26[1] = &protocol witness table for AccessibilityLabelModifier<A>.ChildModifier;
  v8 = MEMORY[0x1E697E858];
  v22 = &type metadata for SliderStyleConfiguration.Label;
  v23 = v6;
  v24 = v7;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v6, v26);
  type metadata accessor for StaticSourceWriter(255, &v22);
  v9 = type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityLabelModifier.ChildModifier(255, v2, v3, v10);
  v11 = type metadata accessor for ModifiedContent();
  v12 = lazy protocol witness table accessor for type SliderStyleConfiguration.MinimumValueLabel and conformance SliderStyleConfiguration.MinimumValueLabel();
  v21[0] = v3;
  v21[1] = &protocol witness table for AccessibilityLabelModifier<A>.ChildModifier;
  v13 = swift_getWitnessTable(v8, v11, v21);
  v22 = &type metadata for SliderStyleConfiguration.MinimumValueLabel;
  v23 = v11;
  v24 = v12;
  WitnessTable = v13;
  type metadata accessor for StaticSourceWriter(255, &v22);
  v14 = type metadata accessor for ModifiedContent();
  v15 = lazy protocol witness table accessor for type SliderStyleConfiguration.MaximumValueLabel and conformance SliderStyleConfiguration.MaximumValueLabel();
  v22 = &type metadata for SliderStyleConfiguration.MaximumValueLabel;
  v23 = v11;
  v24 = v15;
  WitnessTable = v13;
  type metadata accessor for StaticSourceWriter(255, &v22);
  v16 = type metadata accessor for ModifiedContent();
  v20[0] = lazy protocol witness table accessor for type ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  v20[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v19[0] = swift_getWitnessTable(v8, v9, v20);
  v19[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v18[0] = swift_getWitnessTable(v8, v14, v19);
  v18[1] = &protocol witness table for StaticSourceWriter<A, B>;
  return swift_getWitnessTable(v8, v16, v18);
}

uint64_t sub_18C0B843C()
{
  if (*(v0 + 48) >= 3uLL)
  {
    outlined consume of Text.Storage(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  }

  if (*(v0 + 80))
  {
    outlined consume of Text.Storage(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  }

  return swift_deallocObject();
}

uint64_t sub_18C0B84BC()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B84F4()
{
  if (*(v0 + 40) >= 3uLL)
  {
    outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  }

  if (*(v0 + 72))
  {
    outlined consume of Text.Storage(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  }

  return swift_deallocObject();
}

uint64_t sub_18C0B8578()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B85B0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18C0B8608(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for FocusedValueModifier<ServiceItemHandler?>(255);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = &protocol witness table for FocusedValueModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0B8678(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for FocusedValueModifier<ServiceItemHandler?>(255);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = &protocol witness table for FocusedValueModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

__n128 sub_18C0B8710(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18C0B8744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ProgressViewValue(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_18C0B8810(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ProgressViewValue(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_18C0B88C8()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B8908()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B8948()
{

  return swift_deallocObject();
}

unint64_t *_s7SwiftUI30_HoverEffectActivationBehaviorVwcp_0(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  outlined copy of HoverEffectPhaseOverride.Storage(*a2);
  *a1 = v3;
  return a1;
}

uint64_t sub_18C0B8A3C(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = &protocol witness table for OnInteractiveResizeChangeModifier;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C0B8AA0()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B8AD8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = *((*MEMORY[0x1E69E7D40] & **a1) + 0x60);
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_18C0B8B60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  type metadata accessor for IndexViewStyleModifier(255, a1[1], a1[3], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for IndexViewStyleModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C0B8BD0(void *a1)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_18C0B8C5C(_OWORD *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  v2 = type metadata accessor for TableRowSpan(255, v4);
  return swift_getWitnessTable(protocol conformance descriptor for TableRowSpan<A, B>, v2);
}

uint64_t sub_18C0B8CA8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  if (v0[13])
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18C0B8D04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlatformItemList.Item(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C0B8D70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlatformItemList.Item(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18C0B8E24()
{
  MEMORY[0x18D011290](v0 + 16);

  if (*(v0 + 48) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18C0B8E74()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return swift_deallocObject();
}

uint64_t sub_18C0B8F84()
{

  return swift_deallocObject();
}

uint64_t sub_18C0B8FC4(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyWritingModifier<MenuOrder>();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuOrderKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<MenuOrder> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<MenuOrder>, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0B9060(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = lazy protocol witness table accessor for type OnDeleteBackwardModifier and conformance OnDeleteBackwardModifier();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C0B90CC()
{

  outlined consume of Environment<TriggerDeleteBackwardAction?>.Content(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_18C0B9124(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  type metadata accessor for _TabViewStyleWriter(255, a1[1], a1[3], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for _TabViewStyleWriter<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

void *sub_18C0B91BC@<X0>(_BYTE *a2@<X8>)
{
  result = EnvironmentValues.effectiveTintAdjustmentMode.getter();
  *a2 = v4;
  return result;
}

uint64_t sub_18C0B9204(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = &protocol witness table for ContentMarginModifier;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C0B9270(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<SectionIndexTitleKey>, &type metadata for SectionIndexTitleKey, &protocol witness table for SectionIndexTitleKey, MEMORY[0x1E697FDB8]);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _TraitWritingModifier<SectionIndexTitleKey> and conformance _TraitWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0B9308(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<SectionIndexTitleKey>, &type metadata for SectionIndexTitleKey, &protocol witness table for SectionIndexTitleKey, MEMORY[0x1E697FDB8]);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _TraitWritingModifier<SectionIndexTitleKey> and conformance _TraitWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0B93A4(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyWritingModifier<Visibility>();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Visibility> and conformance _EnvironmentKeyWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0B9418(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  type metadata accessor for DisclosureGroupStyleModifier(255, a1[1], a1[3], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for DisclosureGroupStyleModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C0B94D0(void *a1)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_18C0B9544()
{

  v1 = *(v0 + 128);
  if (v1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18C0B9600(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlatformItemList.Item(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C0B966C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlatformItemList.Item(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18C0B9750(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  type metadata accessor for DefaultFocusStateModifier(255, a1[1], a1[3], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for DefaultFocusStateModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C0B97C0(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = &protocol witness table for SpatialHoverRegionModifier;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C0B9824(uint64_t a1, double a2)
{
  v2 = *(a1 + 16);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = &protocol witness table for SpatialHoverRegionModifier;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

id sub_18C0B9898@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.sceneSession.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18C0B98D8(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _PreferenceWritingModifier<RemotePresentationDelayKey>();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _PreferenceWritingModifier<RemotePresentationDelayKey> and conformance _PreferenceWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0B9968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SymbolEffectConfiguration();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for SymbolEffectOptions();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_18C0B9A58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SymbolEffectConfiguration();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for SymbolEffectOptions();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void _s7SwiftUI22SpatialEventCollectionVSlAASl34_customLastIndexOfEquatableElementy0H0QzSgSg0K0QzFTW_0(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -2;
}

__n128 sub_18C0B9BA4@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v2 = *(a1 + 72);
  result = *(a1 + 56);
  *a2 = result;
  a2[1].n128_u8[0] = v2;
  return result;
}

__n128 sub_18C0B9BB8(__n128 *a1, uint64_t a2)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *(a2 + 56) = *a1;
  *(a2 + 72) = v2;
  return result;
}

uint64_t sub_18C0B9BD0()
{

  return swift_deallocObject();
}

double sub_18C0B9C08@<D0>(uint64_t a2@<X8>)
{
  EdgeInsets.init(_:)();
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  return result;
}

double sub_18C0B9C6C(uint64_t a1, uint64_t a2)
{
  OptionalEdgeInsets.init(_:)();
  *(a2 + 8) = v4;
  *(a2 + 24) = v5;
  *(a2 + 40) = *v6;
  result = *&v6[9];
  *(a2 + 49) = *&v6[9];
  return result;
}

__n128 sub_18C0B9D9C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 sub_18C0B9DBC@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  v4 = *(**a1 + 216);
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

__n128 sub_18C0B9E54@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 224);
  swift_beginAccess();
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

uint64_t sub_18C0B9EEC@<X0>(_BYTE *a1@<X8>)
{
  result = _ArchivedViewHost.encodesCustomFontsAsURLs.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18C0B9F50@<X0>(_BYTE *a1@<X8>)
{
  result = _ArchivedViewHost.encodesPreciseTextLayout.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18C0B9FC8@<X0>(_BYTE *a1@<X8>)
{
  result = _ArchivedViewHost.encodesStableDisplayListIdentifiers.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18C0BA02C@<X0>(_BYTE *a1@<X8>)
{
  result = _ArchivedViewHost.encodesAssetCatalogReferences.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18C0BA090@<X0>(_BYTE *a1@<X8>)
{
  result = _ArchivedViewHost.encodesIntelligenceContent.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18C0BA174()
{

  return swift_deallocObject();
}

uint64_t sub_18C0BA1E8()
{
  v1 = type metadata accessor for UTType();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for IndexSet();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_18C0BA338()
{

  return swift_deallocObject();
}

uint64_t sub_18C0BA370()
{

  return swift_deallocObject();
}

uint64_t sub_18C0BA3B0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_18C0BA3F8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_18C0BA440()
{
  type metadata accessor for Error();
  v1 = type metadata accessor for CheckedContinuation();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_18C0BA4E4()
{

  return swift_deallocObject();
}

uint64_t sub_18C0BA564()
{

  return swift_deallocObject();
}

uint64_t sub_18C0BA59C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_18C0BA65C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_18C0BA738(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for SidebarStyleModifier<_ContentListSidebarStyle>(255);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = &protocol witness table for SidebarStyleModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0BA7A8(void *a1)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_18C0BA820()
{

  return swift_deallocObject();
}

uint64_t _s7SwiftUI29CustomizationBehaviorModifier33_0BD63AC3193ED2016BE9565DB357DE28LLVwcp_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t sub_18C0BA8DC()
{

  return swift_deallocObject();
}

uint64_t sub_18C0BA980()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18C0BA9B8()
{

  return swift_deallocObject();
}

uint64_t sub_18C0BAA20()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_18C0BAACC()
{

  return swift_deallocObject();
}

uint64_t sub_18C0BAB64(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = &protocol witness table for _LayoutDirectionBehaviorEffect;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C0BABE0()
{

  return swift_deallocObject();
}

uint64_t sub_18C0BAC18()
{
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v2 = v1 - 8;
  v3 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v4 = *(v2 + 40);
  v5 = v4 + *(type metadata accessor for SearchFieldState(0) + 36);
  v6 = type metadata accessor for AttributedString();
  (*(*(v6 - 8) + 8))(v3 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_18C0BAD4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  v5 = type metadata accessor for ScrollTargetVisibilityChangeModifier(255, a1[1], a1[3], a4);
  v6 = type metadata accessor for ModifiedContent();
  v8[0] = v4;
  v8[1] = swift_getWitnessTable(protocol conformance descriptor for ScrollTargetVisibilityChangeModifier<A>, v5);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v6, v8);
}

uint64_t sub_18C0BADE0(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = lazy protocol witness table accessor for type OnScrollVisibilityChangeModifier and conformance OnScrollVisibilityChangeModifier();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C0BAE54(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = type metadata accessor for ScrollTargetVisibilityChangeModifier(255, *a1, v5, a4);
  swift_getWitnessTable(protocol conformance descriptor for ScrollTargetVisibilityChangeModifier<A>, v6);
  v7 = type metadata accessor for _ViewModifier_Content();
  type metadata accessor for PrimitiveTargetVisibilityModifier(255, v4, v5, v8);
  v9 = type metadata accessor for ModifiedContent();
  v10 = type metadata accessor for ModifiedContent();
  v11 = type metadata accessor for ModifiedContent();
  v18[0] = swift_getWitnessTable(MEMORY[0x1E697FDF8], v7);
  v18[1] = &protocol witness table for PrimitiveTargetVisibilityModifier<A>;
  v12 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v9, v18);
  v14 = MEMORY[0x1E69805D0];
  v17[0] = WitnessTable;
  v17[1] = MEMORY[0x1E69805D0];
  v16[0] = swift_getWitnessTable(v12, v10, v17);
  v16[1] = v14;
  return swift_getWitnessTable(v12, v11, v16);
}

uint64_t sub_18C0BAFB8()
{

  return swift_deallocObject();
}

uint64_t sub_18C0BB034()
{

  return swift_deallocObject();
}

uint64_t sub_18C0BB06C()
{

  return swift_deallocObject();
}

uint64_t sub_18C0BB0A4()
{

  return swift_deallocObject();
}

uint64_t sub_18C0BB0DC()
{

  return swift_deallocObject();
}

uint64_t sub_18C0BB114()
{

  return swift_deallocObject();
}

uint64_t sub_18C0BB14C()
{

  return swift_deallocObject();
}

__n128 sub_18C0BB244(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18C0BB26C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for TaskPriority();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_18C0BB318(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TaskPriority();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18C0BB3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TaskPriority();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_18C0BB47C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TaskPriority();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_18C0BB668()
{

  return swift_deallocObject();
}

uint64_t sub_18C0BB718(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for _PreferenceWritingModifier<NavigationTransitionKey>();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _PreferenceWritingModifier<NavigationTransitionKey> and conformance _PreferenceWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0BB790(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_18C0BB848(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18C0BB934()
{
  v1 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v2 = v0 + *(v1 + 24) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  type metadata accessor for ButtonAction(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*v2, *(v2 + 8), *(v2 + 16));
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined consume of Environment<OpenURLAction>.Content(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 34));
      outlined consume of Environment<OpenURLAction>.Content(*(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 74));
      v4 = *(type metadata accessor for LinkDestination() + 24);
      v5 = type metadata accessor for URL();
      (*(*(v5 - 8) + 8))(v2 + v4, v5);
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload)
    {
      goto LABEL_8;
    }
  }

LABEL_8:

  return swift_deallocObject();
}

uint64_t sub_18C0BBAA4()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18C0BBAE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C0BBB4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18C0BBCAC()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for Binding() - 8);
  v3 = (*(*v2 + 80) + 24) & ~*(*v2 + 80);
  v4 = (*(*v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  (*(*(v1 - 8) + 8))(v5 + v2[10], v1);

  return swift_deallocObject();
}

uint64_t sub_18C0BBDB0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = (type metadata accessor for Binding() - 8);
  v7 = (v4 + *(*v6 + 80)) & ~*(*v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);

  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v7 + v6[10], AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_18C0BBF48()
{

  return swift_deallocObject();
}

uint64_t sub_18C0BBF84(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _TraitWritingModifier<IsLinkedGroupTraitKey>();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _TraitWritingModifier<IsLinkedGroupTraitKey> and conformance _TraitWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0BC000(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyWritingModifier<SpringLoadingBehavior>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<SpringLoadingBehavior>, &type metadata for SpringLoadingBehavior, MEMORY[0x1E6980A08]);
  v2 = type metadata accessor for ModifiedContent();
  type metadata accessor for ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior>(255);
  v3 = type metadata accessor for ModifiedContent();
  v7[0] = v1;
  v7[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SpringLoadingBehavior> and conformance _EnvironmentKeyWritingModifier<A>();
  v4 = MEMORY[0x1E697E858];
  v6[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v2, v7);
  v6[1] = lazy protocol witness table accessor for type ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior> and conformance ViewInputFlagModifier<A>, type metadata accessor for ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior>, MEMORY[0x1E697FD30]);
  return swift_getWitnessTable(v4, v3, v6);
}

uint64_t sub_18C0BC104(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = &protocol witness table for SpringLoadingInteractionModifier;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C0BC258()
{

  return swift_deallocObject();
}

uint64_t sub_18C0BC29C(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for RadioGroupStyleModifier<LayoutRadioGroupStyle<_HStackLayout>>(255);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = &protocol witness table for RadioGroupStyleModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0BC308(uint64_t *a1)
{
  v1 = a1[1];
  type metadata accessor for ForEach<Range<Int>, Int, OptionButtonElement>(255);
  v2 = type metadata accessor for _VariadicView.Tree();
  v3 = type metadata accessor for ModifiedContent();
  v4 = type metadata accessor for ModifiedContent();
  v6 = type metadata accessor for LabeledContent(255, &type metadata for ResolvedRadioGroupPicker.Label, v4, v5);
  type metadata accessor for StyleContextWriter<RadioGroupStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<RadioGroupStyleContext>, lazy protocol witness table accessor for type RadioGroupStyleContext and conformance RadioGroupStyleContext, &type metadata for RadioGroupStyleContext, MEMORY[0x1E697F4C8]);
  v7 = type metadata accessor for ModifiedContent();
  v14[0] = v1;
  v14[1] = lazy protocol witness table accessor for type Slice<AnyOptionButtonCollection> and conformance <> Slice<A>(&lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, OptionButtonElement> and conformance <> ForEach<A, B, C>, type metadata accessor for ForEach<Range<Int>, Int, OptionButtonElement>, lazy protocol witness table accessor for type OptionButtonElement and conformance OptionButtonElement, MEMORY[0x1E69819D0]);
  v13[0] = swift_getWitnessTable(MEMORY[0x1E697E308], v2, v14);
  v13[1] = &protocol witness table for AccessibilityAttachmentModifier;
  v8 = MEMORY[0x1E697E858];
  v12[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v13);
  v12[1] = &protocol witness table for AccessibilityAttachmentModifier;
  v11[0] = &protocol witness table for ResolvedRadioGroupPicker.Label;
  v11[1] = swift_getWitnessTable(v8, v4, v12);
  v10[0] = swift_getWitnessTable(protocol conformance descriptor for <> LabeledContent<A, B>, v6, v11);
  v10[1] = lazy protocol witness table accessor for type StyleContextWriter<RadioGroupStyleContext> and conformance StyleContextWriter<A>();
  return swift_getWitnessTable(v8, v7, v10);
}

uint64_t sub_18C0BC4F4(void *a1)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_18C0BC740(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for _EnvironmentKeyTransformModifier<ScrollContentBackground>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<ScrollContentBackground>, &type metadata for ScrollContentBackground, MEMORY[0x1E6980B20]);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<ScrollContentBackground> and conformance _EnvironmentKeyTransformModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0BC7D4(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = lazy protocol witness table accessor for type ScrollContentBackgroundModifier and conformance ScrollContentBackgroundModifier();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C0BC838(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = &protocol witness table for ListHasStackBehaviorModifier;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C0BC904(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = &protocol witness table for TransformSceneListModifier;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v5);
}

uint64_t sub_18C0BC968(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  type metadata accessor for StyleContextWriter<MenuStyleContext>();
  v3 = type metadata accessor for ModifiedContent();
  v10[0] = v1;
  v10[1] = lazy protocol witness table accessor for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>();
  v4 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v10);
  type metadata accessor for PullDownMenuPresentationModifier(255, v3, WitnessTable, v6);
  v7 = type metadata accessor for ModifiedContent();
  v9[0] = v2;
  v9[1] = &protocol witness table for PullDownMenuPresentationModifier<A>;
  return swift_getWitnessTable(v4, v7, v9);
}

uint64_t sub_18C0BCA28()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18C0BCA60()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_18C0BCB2C()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_18C0BCC08()
{

  return swift_deallocObject();
}

uint64_t sub_18C0BCC40()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_18C0BCD30()
{

  return swift_deallocObject();
}

uint64_t sub_18C0BCD70()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_18C0BCE48()
{

  return swift_deallocObject();
}

uint64_t sub_18C0BCE88()
{

  return swift_deallocObject();
}

uint64_t sub_18C0BCEC8()
{

  return swift_deallocObject();
}

uint64_t sub_18C0BCF08()
{

  return swift_deallocObject();
}

uint64_t sub_18C0BCF48()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_18C0BD040()
{

  return swift_deallocObject();
}

uint64_t sub_18C0BD080()
{

  return swift_deallocObject();
}

uint64_t sub_18C0BD0F8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18C0BD160()
{

  return swift_deallocObject();
}

uint64_t sub_18C0BD1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  type metadata accessor for SearchModifier<TextField<EmptyView>>(255, a2, a3, a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = lazy protocol witness table accessor for type TextField<EmptyView> and conformance TextField<A>(&lazy protocol witness table cache variable for type SearchModifier<TextField<EmptyView>> and conformance SearchModifier<A>, type metadata accessor for SearchModifier<TextField<EmptyView>>, protocol conformance descriptor for SearchModifier<A>);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C0BD248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  type metadata accessor for SearchModifier<TextField<EmptyView>>(255, a2, a3, a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = lazy protocol witness table accessor for type TextField<EmptyView> and conformance TextField<A>(&lazy protocol witness table cache variable for type SearchModifier<TextField<EmptyView>> and conformance SearchModifier<A>, type metadata accessor for SearchModifier<TextField<EmptyView>>, protocol conformance descriptor for SearchModifier<A>);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C0BD2EC()
{
  v1 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v2 = v0 + *(v1 + 24) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  type metadata accessor for ButtonAction(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*v2, *(v2 + 8), *(v2 + 16));
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined consume of Environment<OpenURLAction>.Content(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 34));
      outlined consume of Environment<OpenURLAction>.Content(*(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 74));
      v4 = *(type metadata accessor for LinkDestination() + 24);
      v5 = type metadata accessor for URL();
      (*(*(v5 - 8) + 8))(v2 + v4, v5);
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload)
    {
      goto LABEL_8;
    }
  }

LABEL_8:

  return swift_deallocObject();
}

uint64_t sub_18C0BD484(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  type metadata accessor for PickerStyleConfiguration.CurrentValueLabel(255, v5, v6, a4);
  v14[0] = v4;
  v14[1] = v5;
  v14[2] = v7;
  v14[3] = v6;
  v8 = type metadata accessor for PickerCurrentValueLabel.Root(255, v14);
  v9 = type metadata accessor for _VariadicView.Tree();
  v10 = type metadata accessor for _ConditionalContent();
  v13[0] = swift_getWitnessTable(protocol conformance descriptor for PickerCurrentValueLabel<A, B>.Root, v8);
  v13[1] = v7;
  v12[0] = &protocol witness table for PickerStyleConfiguration<A>.CurrentValueLabel;
  v12[1] = swift_getWitnessTable(MEMORY[0x1E697E308], v9, v13);
  return swift_getWitnessTable(MEMORY[0x1E697F968], v10, v12);
}

__n128 sub_18C0BD59C(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_18C0BD5B0()
{
  v1 = *(v0 + 24);
  v2 = (type metadata accessor for Binding() - 8);
  v3 = v0 + ((*(*v2 + 80) + 80) & ~*(*v2 + 80));

  (*(*(v1 - 8) + 8))(v3 + v2[10], v1);

  return swift_deallocObject();
}

uint64_t sub_18C0BD6C4()
{

  return swift_deallocObject();
}

uint64_t sub_18C0BD6FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for _TraitWritingModifier<OnDeleteDefaultTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<OnDeleteDefaultTraitKey>, &type metadata for OnDeleteDefaultTraitKey, &protocol witness table for OnDeleteDefaultTraitKey);
  v2 = type metadata accessor for ModifiedContent();
  type metadata accessor for _TraitWritingModifier<OnDeleteDefaultTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<OnMoveDefaultTraitKey>, &type metadata for OnMoveDefaultTraitKey, &protocol witness table for OnMoveDefaultTraitKey);
  v3 = type metadata accessor for ModifiedContent();
  v7[0] = v1;
  v7[1] = lazy protocol witness table accessor for type _TraitWritingModifier<OnDeleteDefaultTraitKey> and conformance _TraitWritingModifier<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<OnDeleteDefaultTraitKey> and conformance _TraitWritingModifier<A>, &lazy cache variable for type metadata for _TraitWritingModifier<OnDeleteDefaultTraitKey>, &type metadata for OnDeleteDefaultTraitKey, &protocol witness table for OnDeleteDefaultTraitKey);
  v4 = MEMORY[0x1E697E858];
  v6[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v2, v7);
  v6[1] = lazy protocol witness table accessor for type _TraitWritingModifier<OnDeleteDefaultTraitKey> and conformance _TraitWritingModifier<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<OnMoveDefaultTraitKey> and conformance _TraitWritingModifier<A>, &lazy cache variable for type metadata for _TraitWritingModifier<OnMoveDefaultTraitKey>, &type metadata for OnMoveDefaultTraitKey, &protocol witness table for OnMoveDefaultTraitKey);
  return swift_getWitnessTable(v4, v3, v6);
}

uint64_t sub_18C0BD840()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 48) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_18C0BD8E0()
{

  v1 = *(v0 + 48);
  if (v1 != 1)
  {

    v2 = *(v0 + 200);
    v3 = v2 & 0xFFFFFFFFFFFFFFFELL;
    if ((v2 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
    {
      v4 = *(v0 + 80);
      if (v4 != 255)
      {
        outlined consume of GraphicsImage.Contents(*(v0 + 72), v4);
        v2 = *(v0 + 200);
        v3 = v2 & 0xFFFFFFFFFFFFFFFELL;
      }

      if (v3 != 0x1FFFFFFFELL)
      {
        outlined consume of AccessibilityImageLabel(*(v0 + 184), *(v0 + 192), v2, *(v0 + 208));
      }

      swift_unknownObjectRelease();
    }
  }

  if (*(v0 + 320) != 1)
  {
    swift_unknownObjectRelease();
  }

  if (*(v0 + 624))
  {

    v5 = *(v0 + 432);
    if (v5)
    {
      if (v5 == 1)
      {
LABEL_16:
        if (*(v0 + 584) != 1)
        {
        }

        goto LABEL_19;
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 408));
    }

    goto LABEL_16;
  }

LABEL_19:

  return swift_deallocObject();
}

uint64_t sub_18C0BDA18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_18C0BDAE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UTType();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_18C0BDBA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_18C0BDC64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UTType();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_18C0BDD1C(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyWritingModifier<SearchFocusContext?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<SearchFocusContext?>, type metadata accessor for SearchFocusContext?, MEMORY[0x1E6980A08]);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SearchFocusContext?> and conformance _EnvironmentKeyWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0BDDB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for _EnvironmentKeyWritingModifier<SearchFocusContext?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<SearchFocusContext?>, type metadata accessor for SearchFocusContext?, MEMORY[0x1E6980A08]);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SearchFocusContext?> and conformance _EnvironmentKeyWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0BDE58(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = lazy protocol witness table accessor for type OnSearchFocusChangeModifier and conformance OnSearchFocusChangeModifier();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C0BDEBC()
{

  return swift_deallocObject();
}

uint64_t sub_18C0BDEF8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  type metadata accessor for NavigationSplitStyleModifier(255, a1[1], a1[3], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for NavigationSplitStyleModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C0BDF8C(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<ListSectionCornerRadiusTraitKey>, &type metadata for ListSectionCornerRadiusTraitKey, &protocol witness table for ListSectionCornerRadiusTraitKey, MEMORY[0x1E697FDB8]);
  v2 = type metadata accessor for ModifiedContent();
  type metadata accessor for _EnvironmentKeyWritingModifier<CGFloat?>(255);
  v3 = type metadata accessor for ModifiedContent();
  v7[0] = v1;
  v7[1] = lazy protocol witness table accessor for type _TraitWritingModifier<ListSectionCornerRadiusTraitKey> and conformance _TraitWritingModifier<A>();
  v4 = MEMORY[0x1E697E858];
  v6[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v2, v7);
  v6[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>();
  return swift_getWitnessTable(v4, v3, v6);
}

uint64_t sub_18C0BE070(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyWritingModifier<Visibility>();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Visibility> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Visibility> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Visibility>, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0BE10C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = type metadata accessor for TabSectionActionsModifier(255, a1[1], a1[3], a4);
  v8 = type metadata accessor for ModifiedTabContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = swift_getWitnessTable(protocol conformance descriptor for TabSectionActionsModifier<A>, v6);
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedTabContent<A, B>, v8, v10);
}

uint64_t sub_18C0BE1A0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = type metadata accessor for TabSectionActionsModifier(255, *a1, v5, a4);
  swift_getWitnessTable(protocol conformance descriptor for TabSectionActionsModifier<A>, v6);
  type metadata accessor for _ViewModifier_Content();
  type metadata accessor for TabSectionActions(255, v4, v5, v7);
  swift_getTupleTypeMetadata2();
  v8 = type metadata accessor for TupleView();
  v9 = type metadata accessor for Group();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6981F48], v8);
  return swift_getWitnessTable(MEMORY[0x1E6981600], v9, &WitnessTable);
}

uint64_t sub_18C0BE29C(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for StyleContextWriter<SidebarSectionActionStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<SidebarSectionActionStyleContext>, lazy protocol witness table accessor for type SidebarSectionActionStyleContext and conformance SidebarSectionActionStyleContext, &type metadata for SidebarSectionActionStyleContext, MEMORY[0x1E697F4C8]);
  v2 = type metadata accessor for ModifiedContent();
  type metadata accessor for StyleContextWriter<SidebarSectionActionStyleContext>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<DropDestinationUsesTraitKeyInput>, lazy protocol witness table accessor for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput, &type metadata for DropDestinationUsesTraitKeyInput, MEMORY[0x1E697FD28]);
  v3 = type metadata accessor for ModifiedContent();
  v4 = type metadata accessor for _VariadicView.Tree();
  v5 = lazy protocol witness table accessor for type ActionPreparer and conformance ActionPreparer();
  v10[0] = v1;
  v10[1] = lazy protocol witness table accessor for type StyleContextWriter<SidebarSectionActionStyleContext> and conformance StyleContextWriter<A>();
  v6 = MEMORY[0x1E697E858];
  v9[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v2, v10);
  v9[1] = lazy protocol witness table accessor for type ViewInputFlagModifier<DropDestinationUsesTraitKeyInput> and conformance ViewInputFlagModifier<A>();
  v8[0] = v5;
  v8[1] = swift_getWitnessTable(v6, v3, v9);
  return swift_getWitnessTable(MEMORY[0x1E697E308], v4, v8);
}

uint64_t sub_18C0BE418()
{

  return swift_deallocObject();
}

uint64_t sub_18C0BE474()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    if (*(v0 + 104))
    {
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + 64));
    }

    if (*(v0 + 136))
    {
    }

    if (*(v0 + 160))
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_18C0BE540()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18C0BE578()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_18C0BE634@<X0>(uint64_t *a2@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_18C0BE66C()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_18C0BE6EC()
{

  return swift_deallocObject();
}

uint64_t sub_18C0BE724()
{

  return swift_deallocObject();
}

uint64_t sub_18C0BE75C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchFieldConfiguration(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C0BE7C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchFieldConfiguration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

__n128 sub_18C0BE9F8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_18C0BEA04@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  v4 = *(**a1 + 152);
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

__n128 sub_18C0BEA9C@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 160);
  swift_beginAccess();
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

uint64_t sub_18C0BEB40()
{

  return swift_deallocObject();
}

uint64_t sub_18C0BEB88()
{

  return swift_deallocObject();
}

uint64_t *_s7SwiftUI29ScrollTransitionConfigurationV9ThresholdVwcp_0(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_18C0BEBF8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  type metadata accessor for ScrollTransitionModifier(255, a1[1], a1[3], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for ScrollTransitionModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t *_s7SwiftUI29ScrollTransitionConfigurationV9ThresholdVwta_0(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_18C0BECB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  type metadata accessor for RepresentablePreferredFocusableViewModifier(255, *(a1 + 8), a3, a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for RepresentablePreferredFocusableViewModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C0BED48()
{

  return swift_deallocObject();
}

uint64_t sub_18C0BED84(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[5];
  v4 = MEMORY[0x1E69E7CA8];
  type metadata accessor for ToolbarItem(255, MEMORY[0x1E69E7CA8] + 8, a1[1], a1[4]);
  type metadata accessor for ToolbarItem(255, v4 + 8, v1, v3);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = type metadata accessor for TupleToolbarContent(255, TupleTypeMetadata2, v6, v7);
  type metadata accessor for ToolbarModifier(255, v4 + 8, v8, &protocol witness table for TupleToolbarContent<A>);
  v9 = type metadata accessor for ModifiedContent();
  v12[0] = v2;
  v12[1] = &protocol witness table for ToolbarModifier<A, B>;
  swift_getWitnessTable(MEMORY[0x1E697E858], v9, v12);
  v10 = type metadata accessor for _UnaryViewAdaptor();
  return swift_getWitnessTable(MEMORY[0x1E697F380], v10);
}

uint64_t sub_18C0BEE98(uint64_t *a1)
{
  v1 = a1[2];
  v2 = MEMORY[0x1E69E7CA8];
  v3 = type metadata accessor for ToolbarItem(255, MEMORY[0x1E69E7CA8] + 8, a1[1], a1[3]);
  v6 = type metadata accessor for TupleToolbarContent(255, v3, v4, v5);
  type metadata accessor for ToolbarModifier(255, v2 + 8, v6, &protocol witness table for TupleToolbarContent<A>);
  v7 = type metadata accessor for ModifiedContent();
  v10[0] = v1;
  v10[1] = &protocol witness table for ToolbarModifier<A, B>;
  swift_getWitnessTable(MEMORY[0x1E697E858], v7, v10);
  v8 = type metadata accessor for _UnaryViewAdaptor();
  return swift_getWitnessTable(MEMORY[0x1E697F380], v8);
}

uint64_t sub_18C0BEF78(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyWritingModifier<Bool>();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0BF024()
{

  return swift_deallocObject();
}

uint64_t sub_18C0BF05C(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = &protocol witness table for RootEntityGestureResponderModifier;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C0BF0EC()
{

  return swift_deallocObject();
}

uint64_t sub_18C0BF124()
{

  return swift_deallocObject();
}

uint64_t sub_18C0BF16C()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18C0BF1A4()
{

  return swift_deallocObject();
}

uint64_t destroy for ToolbarSpacer(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    return __swift_destroy_boxed_opaque_existential_1((result + 8));
  }

  return result;
}

__n128 assignWithTake for ToolbarSpacer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 != a2)
  {
    outlined destroy of ToolbarItemPlacement.Role(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    result = *(a2 + 33);
    *(a1 + 33) = result;
  }

  return result;
}

uint64_t sub_18C0BF270(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _TraitWritingModifier<TypeSelectEquivalentKey>();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _TraitWritingModifier<TypeSelectEquivalentKey> and conformance _TraitWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0BF2DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for _TraitWritingModifier<TypeSelectEquivalentKey>();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _TraitWritingModifier<TypeSelectEquivalentKey> and conformance _TraitWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0BF358(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = lazy protocol witness table accessor for type _TypeSelectEquivalentTableRowModifier and conformance _TypeSelectEquivalentTableRowModifier();
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v5);
}

uint64_t sub_18C0BF3BC(uint64_t a1, double a2)
{
  v2 = *(a1 + 16);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = lazy protocol witness table accessor for type _TypeSelectEquivalentTableRowModifier and conformance _TypeSelectEquivalentTableRowModifier();
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v5);
}

uint64_t sub_18C0BF42C()
{
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>>, StyleContextWriter<ContainerStyleContext>>(255);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>>, StyleContextWriter<ContainerStyleContext>> and conformance <> ModifiedContent<A, B>();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_18C0BF4D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkDestination();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C0BF53C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkDestination();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18C0BF5B4()
{

  if (*(v0 + 88))
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  return swift_deallocObject();
}

uint64_t sub_18C0BF610()
{
  v1 = *(v0 + 16);
  if (v1)
  {
  }

  if (*(v0 + 56))
  {
  }

  if (*(v0 + 72))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18C0BF6A8()
{
  v1 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v6 = v8;
  v9 = v1;
  v2 = (type metadata accessor for AccessibilityToggleModifier.RepresentationModifier(0, &v7) - 8);
  v3 = (*(*v2 + 80) + 48) & ~*(*v2 + 80);
  (*(*(v6 - 8) + 8))(v0 + v3);
  v4 = v0 + v3 + v2[15];
  if (*(v4 + 24))
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*v4, *(v4 + 8), *(v4 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_18C0BF7C8()
{

  return swift_deallocObject();
}

uint64_t sub_18C0BF80C(uint64_t *a1)
{
  v1 = a1[3];
  v8 = *a1;
  v9 = *(a1 + 1);
  v6 = v9;
  v10 = v1;
  v2 = type metadata accessor for AccessibilityToggleModifier.RepresentationModifier(255, &v8);
  swift_getWitnessTable(protocol conformance descriptor for AccessibilityToggleModifier<A>.RepresentationModifier<A1>, v2);
  v3 = type metadata accessor for _ViewModifier_Content();
  v8 = MEMORY[0x1E69E73E0];
  *&v9 = v6;
  *(&v9 + 1) = MEMORY[0x1E6982070];
  v10 = v1;
  type metadata accessor for AccessibilityProxyTransformModifier(255, &v8);
  v4 = type metadata accessor for ModifiedContent();
  v7[0] = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3);
  v7[1] = &protocol witness table for AccessibilityProxyTransformModifier<A, B>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v4, v7);
}

uint64_t sub_18C0BF914(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for AccessibilityButtonModifier.Representable(255, *a1, a1[1], a4);
  swift_getWitnessTable(protocol conformance descriptor for AccessibilityButtonModifier<A>.Representable, v4);
  v5 = type metadata accessor for _ViewModifier_Content();
  v6 = type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityProxyTransformModifier<Never, PrimitiveButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for AccessibilityProxyTransformModifier<Never, PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label);
  v7 = type metadata accessor for ModifiedContent();
  v11[0] = swift_getWitnessTable(MEMORY[0x1E697FDF8], v5);
  v11[1] = &protocol witness table for AccessibilityAttachmentModifier;
  v8 = MEMORY[0x1E697E858];
  v10[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v6, v11);
  v10[1] = &protocol witness table for AccessibilityProxyTransformModifier<A, B>;
  return swift_getWitnessTable(v8, v7, v10);
}

uint64_t sub_18C0BFA3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PlaybackButton.State(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 250)
  {
    v10 = *(a1 + *(a3 + 36) + 16);
    if (v10 <= 5)
    {
      v11 = 5;
    }

    else
    {
      v11 = *(a1 + *(a3 + 36) + 16);
    }

    v12 = v11 - 5;
    if (v10 >= 3)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    type metadata accessor for LinkDestination.Configuration?(0, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>);
    v14 = v13;
    v15 = *(*(v13 - 8) + 48);
    v16 = a1 + *(a3 + 40);

    return v15(v16, a2, v14);
  }
}

uint64_t sub_18C0BFB84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PlaybackButton.State(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 250)
  {
    *(a1 + *(a4 + 36) + 16) = a2 + 5;
  }

  else
  {
    type metadata accessor for LinkDestination.Configuration?(0, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 40);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_18C0BFD5C()
{

  v1 = v0[13];
  if (v1)
  {
    if (v1 == 1)
    {
      goto LABEL_5;
    }

    __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  }

LABEL_5:
  if (v0[32] != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18C0BFE08(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = &protocol witness table for _HoverRegionModifier;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C0BFE70()
{
  outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_18C0BFEAC()
{

  return swift_deallocObject();
}

__n128 sub_18C0BFEF8(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

__n128 sub_18C0BFF24(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_18C0BFF38()
{

  return swift_deallocObject();
}

uint64_t sub_18C0BFF70()
{

  return swift_deallocObject();
}

uint64_t sub_18C0BFFA8()
{

  return swift_deallocObject();
}

uint64_t sub_18C0BFFE0()
{

  return swift_deallocObject();
}

uint64_t sub_18C0C0018()
{

  return swift_deallocObject();
}

uint64_t sub_18C0C0050()
{

  return swift_deallocObject();
}

uint64_t sub_18C0C0088()
{

  return swift_deallocObject();
}

uint64_t sub_18C0C00FC()
{

  return swift_deallocObject();
}

void _s7SwiftUI26ListSeparatorConfigurationV6RowKeyVAA010_ViewTraitG0A2aFP12defaultValue0K0QzvgZTW_0(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

uint64_t sub_18C0C0178()
{

  return swift_deallocObject();
}

uint64_t sub_18C0C01B0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18C0C01E8()
{

  return swift_deallocObject();
}

uint64_t sub_18C0C0220()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18C0C0264()
{

  return swift_deallocObject();
}

uint64_t sub_18C0C029C()
{

  return swift_deallocObject();
}

double _s7SwiftUI17DictionaryEncoderC20DateEncodingStrategyOWOy_0(void *a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
    v3 = a1;
  }

  return result;
}

double _s7SwiftUI17DictionaryEncoderC20DateEncodingStrategyOWOe_0(void *a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }

  return result;
}

double destroy for PPTTestCase.ScrollMode(void *a1)
{
  if (*a1 >= 0xFFFFFFFFuLL)
  {
  }

  return result;
}

uint64_t getEnumTag for PPTTestCase.ScrollMode(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_18C0C0388(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_18C0C03EC()
{

  return swift_deallocObject();
}

uint64_t sub_18C0C0424()
{

  return swift_deallocObject();
}

double sub_18C0C046C(unint64_t a1, uint64_t a2)
{
  if (a1 >= 2)
  {
  }

  return result;
}

double _s7SwiftUI17DictionaryDecoderC20DataDecodingStrategyOWOe_0(unint64_t a1, uint64_t a2)
{
  if (a1 >= 2)
  {
  }

  return result;
}

uint64_t sub_18C0C04D4()
{

  return swift_deallocObject();
}

uint64_t sub_18C0C07FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E6981148];
  type metadata accessor for _EnvironmentKeyWritingModifier<ColorScheme?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Text?>, &lazy cache variable for type metadata for Text?, MEMORY[0x1E6981148]);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v1;
  v5[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ColorScheme?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Text?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Text?>, &lazy cache variable for type metadata for Text?, v2);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C0C0924()
{

  return swift_deallocObject();
}

uint64_t sub_18C0C095C(_OWORD *a1)
{
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  v1 = type metadata accessor for FileDialogConfiguration(255, v8);
  swift_getWitnessTable(protocol conformance descriptor for FileDialogConfiguration<A, B>, v1);
  v2 = type metadata accessor for _ViewModifier_Content();
  v3 = type metadata accessor for _PreferenceTransformModifier();
  v4 = type metadata accessor for ModifiedContent();
  v7[0] = swift_getWitnessTable(MEMORY[0x1E697FDF8], v2);
  v7[1] = swift_getWitnessTable(MEMORY[0x1E6980918], v3);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v4, v7);
}

double sub_18C0C0A68(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return EnvironmentValues.sceneStorageDomain.setter(v1, v2);
}