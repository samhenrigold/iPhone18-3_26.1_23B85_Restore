uint64_t _RowVisitationContext.selectionValue(respectSelectionDisabled:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v18 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v17 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  v11 = *(a2 + 40);
  v20 = *(v3 + v11);
  v19 = 1;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  if (v21 & 1) == 0 && (a1)
  {
    return (*(*(AssociatedTypeWitness - 8) + 56))(v18, 1, 1, AssociatedTypeWitness);
  }

  (*(v17 + 16))(v10, v3 + *(a2 + 44), v8);
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 48);
  if (v14(v10, 1, AssociatedTypeWitness) == 1)
  {
    v20 = *(v4 + v11);
    swift_getAssociatedConformanceWitness();

    ViewTraitCollection.listSelectionIdentityValue<A>(for:respectSelectionDisabled:)(1, AssociatedTypeWitness, v18);

    result = v14(v10, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      return (*(v17 + 8))(v10, v8);
    }
  }

  else
  {
    v15 = v18;
    (*(v13 + 32))(v18, v10, AssociatedTypeWitness);
    return (*(v13 + 56))(v15, 0, 1, AssociatedTypeWitness);
  }

  return result;
}

BOOL _RowVisitationContext.canDelete.getter(uint64_t a1)
{
  type metadata accessor for DeleteInteraction?(0, &lazy cache variable for type metadata for DeleteInteraction?, type metadata accessor for DeleteInteraction);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v9 - v4;
  v9[1] = *(v1 + *(a1 + 40));
  ViewTraitCollection.deleteInteraction.getter((v9 - v4));
  v6 = type metadata accessor for DeleteInteraction(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of DeleteInteraction?(v5, &lazy cache variable for type metadata for DeleteInteraction?, type metadata accessor for DeleteInteraction);
    return 0;
  }

  else
  {
    v7 = *&v5[*(v6 + 24)] != 0;
    outlined destroy of MoveInteraction(v5, type metadata accessor for DeleteInteraction);
  }

  return v7;
}

void type metadata accessor for DeleteInteraction?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t type metadata accessor for DeleteInteraction(uint64_t a1)
{
  result = type metadata singleton initialization cache for DeleteInteraction;
  if (!type metadata singleton initialization cache for DeleteInteraction)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for DeleteInteraction(uint64_t a1)
{
  result = type metadata accessor for IndexSet();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t ViewTraitCollection.deleteInteraction.getter@<X0>(void *a1@<X8>)
{
  ViewTraitCollection.value<A>(for:defaultValue:)();
  if ((v11 & 1) != 0 || (ViewTraitCollection.value<A>(for:defaultValue:)(), (v2 = ViewTraitCollection.onDelete.getter()) == 0))
  {
    v6 = type metadata accessor for DeleteInteraction(0);
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }

  else
  {
    v4 = v2;
    v5 = v3;
    ViewTraitCollection.value<A>(for:defaultValue:)();

    v7 = type metadata accessor for DeleteInteraction(0);
    v8 = (a1 + *(v7 + 24));
    *a1 = v10;
    IndexSet.init(integer:)();
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v4, v5);
    *v8 = v4;
    v8[1] = v5;
    return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
  }
}

uint64_t (*ViewTraitCollection.onDelete.getter())()
{
  ViewTraitCollection.value<A>(for:defaultValue:)();
  if (v1)
  {
    *(swift_allocObject() + 16) = v1;
    return partial apply for thunk for @escaping @callee_guaranteed (@inout UISplitViewControllerProxy) -> (@out ());
  }

  else
  {
    ViewTraitCollection.value<A>(for:defaultValue:)();
    return 0;
  }
}

uint64_t sub_18BFE3E2C()
{

  return swift_deallocObject();
}

uint64_t sub_18BFE3E7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for IndexSet();
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
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_18BFE3F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexSet();
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
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t outlined destroy of DeleteInteraction?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for DeleteInteraction?(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

BOOL _RowVisitationContext.canMove.getter(uint64_t a1)
{
  type metadata accessor for DeleteInteraction?(0, &lazy cache variable for type metadata for MoveInteraction?, type metadata accessor for MoveInteraction);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (v9 - v4);
  v9[1] = *(v1 + *(a1 + 40));
  ViewTraitCollection.moveInteraction.getter(v9 - v4);
  v6 = type metadata accessor for MoveInteraction(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of DeleteInteraction?(v5, &lazy cache variable for type metadata for MoveInteraction?, type metadata accessor for MoveInteraction);
    return 0;
  }

  else
  {
    v7 = *v5 != 0;
    outlined destroy of MoveInteraction(v5, type metadata accessor for MoveInteraction);
  }

  return v7;
}

uint64_t type metadata accessor for MoveInteraction(uint64_t a1)
{
  result = type metadata singleton initialization cache for MoveInteraction;
  if (!type metadata singleton initialization cache for MoveInteraction)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for MoveInteraction(uint64_t a1)
{
  result = type metadata accessor for IndexSet();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t ViewTraitCollection.moveInteraction.getter@<X0>(uint64_t a1@<X8>)
{
  ViewTraitCollection.value<A>(for:defaultValue:)();
  if (v9)
  {
    v2 = type metadata accessor for MoveInteraction(0);
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    ViewTraitCollection.value<A>(for:defaultValue:)();
    ViewTraitCollection.value<A>(for:defaultValue:)();
    v3 = ViewTraitCollection.onMove.getter();
    v5 = v4;
    v6 = type metadata accessor for MoveInteraction(0);
    IndexSet.init(integer:)();
    *a1 = v3;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    *(a1 + *(v6 + 28)) = v8;
    return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
  }
}

void partial apply for implicit closure #2 in implicit closure #1 in PlatformItemLabelView.body.getter(uint64_t *a1)
{
  v3 = v1[2];
  v4[0] = v1[1];
  v4[1] = v3;
  v4[2] = v1[3];
  type metadata accessor for PlatformItemLabelView(0, v4);

  specialized PlatformItemLabelView.applyLabel(_:)(a1);
}

void specialized PlatformItemLabelView.applyLabel(_:)(uint64_t *a1)
{
  v2 = type metadata accessor for PlatformItemList.Item(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v20 - v10);
  v12 = *a1;
  v13 = *(*a1 + 16);
  if (v13)
  {
    v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    outlined init with copy of PlatformItemList.Item(v12 + v14, &v20 - v10);
    if (v13 == 1)
    {
    }

    else
    {
      outlined init with copy of PlatformItemList.Item(v12 + v14 + *(v3 + 72), v8);
      v15 = *(v8 + 112);
      v16 = v15;
      if (!v15)
      {
        v16 = *v8;
        v17 = *v8;
      }

      v18 = v15;
      _s7SwiftUI16CommandOperationVWOhTm_0(v8, type metadata accessor for PlatformItemList.Item);

      v11[112] = v16;
    }

    outlined init with copy of PlatformItemList.Item(v11, v5);
    _s7SwiftUI16CommandOperationVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItemList.Item>, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6F90]);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_18CD63400;
    outlined init with take of PlatformItemList.Item(v5, v19 + v14);
    *a1 = v19;
    _s7SwiftUI16CommandOperationVWOhTm_0(v11, type metadata accessor for PlatformItemList.Item);
  }
}

uint64_t (*ViewTraitCollection.onMove.getter())(uint64_t a1, uint64_t a2)
{
  *&v3 = *v0;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  if (v2)
  {
    return 0;
  }

  ViewTraitCollection.value<A>(for:defaultValue:)();
  if (!v3)
  {
    ViewTraitCollection.value<A>(for:defaultValue:)();
    return 0;
  }

  *(swift_allocObject() + 16) = v3;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed IndexSet, @in_guaranteed Int) -> (@out ());
}

uint64_t sub_18BFE47CC()
{

  return swift_deallocObject();
}

void *sub_18BFE481C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for IndexSet();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18BFE48D4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = type metadata accessor for IndexSet();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t outlined destroy of MoveInteraction(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI15MoveInteractionVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t destroy for MoveInteraction(char *a1, uint64_t a2)
{
  if (*a1)
  {
  }

  v4 = *(a2 + 24);
  v5 = type metadata accessor for IndexSet();
  v6 = *(*(v5 - 8) + 8);

  return v6(&a1[v4], v5);
}

uint64_t UIKitButtonStyleModifier.ResolvedBody.transform(itemList:)(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for PlatformItemList.Item(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v23 - v10;
  PlatformItemList.mergedContentItem.getter(*a1, v23 - v10);

  v12 = v2 + *(a2 + 40);
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = 0;
  v16 = 0;
  if (specialized Environment.wrappedValue.getter(*v12, v14))
  {
    v17 = v2 + *(a2 + 36);
    v15 = *(v17 + 8);
    v16 = *(v17 + 16);
    outlined copy of AppIntentExecutor?(v15, v16);
  }

  v24 = v11[472];
  v18 = *(v11 + 456);
  v23[2] = *(v11 + 440);
  v23[3] = v18;
  v19 = *(v11 + 424);
  v23[0] = *(v11 + 408);
  v23[1] = v19;
  _s7SwiftUI23AccessibilityPropertiesVSgWOhTm_0(v23, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
  v11[408] = 1;
  *(v11 + 409) = 0;
  *(v11 + 52) = v15;
  *(v11 + 53) = v16;
  *(v11 + 27) = 0u;
  *(v11 + 28) = 0u;
  *(v11 + 457) = 0u;
  v11[56] = specialized Environment.wrappedValue.getter(v13, v14) & 1;
  outlined init with copy of PlatformItemList.Item(v11, v8, type metadata accessor for PlatformItemList.Item);
  type metadata accessor for UIButton.Configuration?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItemList.Item>, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6F90]);
  v20 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_18CD63400;
  outlined init with take of StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>>(v8, v21 + v20, type metadata accessor for PlatformItemList.Item);
  *a1 = v21;
  return outlined destroy of UIKitSystemButtonConfigurationModifier(v11, type metadata accessor for PlatformItemList.Item);
}

uint64_t outlined destroy of AccessibilityProperties?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for _ContiguousArrayStorage<Text>(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI23AccessibilityPropertiesVSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for PlatformItemList.Item.SelectionBehavior?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI23AccessibilityPropertiesVSgWOhTm_1(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for AccessibilityLabelPresentation?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI23AccessibilityPropertiesVSgWOhTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  type metadata accessor for [ContentScrollViewBox](0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t _s7SwiftUI23AccessibilityPropertiesVSgWOhTm_3(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _ss23_ContiguousArrayStorageCy7SwiftUI22AnyAccessibilityActionVGMaTm_0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t initializeWithCopy for CollectionViewCellModifier(uint64_t a1, uint64_t a2)
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
  v9 = *(a2 + 41);
  v10 = *(a2 + 40);
  outlined copy of Environment<ListItemTint?>.Content(v8, v10, v9);
  *(a1 + 32) = v8;
  *(a1 + 40) = v10;
  *(a1 + 41) = v9;
  v11 = *(a2 + 48);
  v12 = *(a2 + 56);
  v13 = *(a2 + 64);
  v14 = *(a2 + 72);
  v15 = *(a2 + 80);
  outlined copy of Environment<EdgeInsets>.Content(v11, v12, v13, v14, v15);
  *(a1 + 48) = v11;
  *(a1 + 56) = v12;
  *(a1 + 64) = v13;
  *(a1 + 72) = v14;
  *(a1 + 80) = v15;
  v16 = *(a2 + 88);
  v17 = *(a2 + 96);
  v18 = *(a2 + 104);
  v19 = *(a2 + 112);
  v20 = *(a2 + 120);
  v21 = *(a2 + 128);
  v22 = *(a2 + 136);
  v23 = *(a2 + 144);
  v30 = *(a2 + 152);
  v31 = *(a2 + 160);
  v32 = *(a2 + 168);
  v33 = *(a2 + 169);
  outlined copy of Environment<ListContentStyling>.Content(v16, v17, v18, v19, v20, v21, v22, v23, v30, v31, v32, v33);
  *(a1 + 88) = v16;
  *(a1 + 96) = v17;
  *(a1 + 104) = v18;
  *(a1 + 112) = v19;
  *(a1 + 120) = v20;
  *(a1 + 128) = v21;
  *(a1 + 136) = v22;
  *(a1 + 144) = v23;
  *(a1 + 152) = v30;
  *(a1 + 160) = v31;
  *(a1 + 168) = v32;
  *(a1 + 169) = v33;
  *(a1 + 170) = *(a2 + 170);
  v24 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v24;
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 217) = *(a2 + 217);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = *(a2 + 248);
  v25 = *(a2 + 256);
  if (v25 == 1)
  {
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = *(a2 + 264);
  }

  else
  {
    *(a1 + 256) = v25;
    *(a1 + 264) = *(a2 + 264);
  }

  *(a1 + 265) = *(a2 + 265);
  *(a1 + 272) = *(a2 + 272);
  v26 = *(a2 + 350);
  if (v26 == 2)
  {
    v27 = *(a2 + 304);
    *(a1 + 304) = v27;
    (**(v27 - 8))(a1 + 280, a2 + 280);
    *(a1 + 320) = *(a2 + 320);
    *(a1 + 328) = *(a2 + 328);
  }

  else if (v26 == 1)
  {
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 288) = *(a2 + 288);
  }

  else
  {
    v28 = *(a2 + 304);
    *(a1 + 304) = v28;
    (**(v28 - 8))(a1 + 280, a2 + 280);
    *(a1 + 320) = *(a2 + 320);
    *(a1 + 328) = *(a2 + 328);
    *(a1 + 336) = *(a2 + 336);
    *(a1 + 344) = *(a2 + 344);
    *(a1 + 348) = *(a2 + 348);
  }

  *(a1 + 350) = v26;

  return a1;
}

uint64_t outlined init with copy of PlatformItemList.Item(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI16PlatformItemListV0D0VWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI16PlatformItemListV0D0VWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI16PlatformItemListV0D0VWOcTm_2(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI16PlatformItemListV0D0VWOcTm_3(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of UIKitSystemButtonConfigurationModifier(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double outlined copy of Environment<EdgeInsets>.Content(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

double outlined copy of Environment<ListContentStyling>.Content(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, char a12)
{
  if (a12)
  {

    outlined copy of Transaction?(a10);
  }

  else
  {
  }

  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance UIKitMenuButton<A, B>.TransformItemList@<X0>(void *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v4 = UIKitMenuButton.TransformItemList.value.getter(*v2, *(v2 + 8), *(v2 + 16), a1[2], a1[3], a1[4], a1[5]);
  v6 = v5;
  result = swift_allocObject();
  *(result + 16) = v4;
  *(result + 24) = v6;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@inout PlatformItemList) -> ();
  a2[1] = result;
  return result;
}

uint64_t specialized ListCollectionViewCellBase.configureContent(_:transaction:)(uint64_t a1, unint64_t a2)
{
  type metadata accessor for UIHostingConfiguration<ModifiedContent<ModifiedContent<_ViewList_View, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, EmptyView>(0);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21[-v9];
  if (one-time initialization token for isEnabledInProcessEnv != -1)
  {
    swift_once();
  }

  if (static ListUsesUIHostingConfigurationFeature.isEnabledInProcessEnv == 1)
  {
    v11 = outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(a1, v25, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, MEMORY[0x1E697D9F0], &type metadata for CollectionViewCellModifier);
    v12 = &v7[*(v5 + 56)];
    *v12 = 1;
    MEMORY[0x18D007050](v11);
    *(v12 + 9) = 0;
    v12[80] = 1;
    *(v12 + 11) = 0;
    v12[96] = 1;
    *(v12 + 97) = 1;
    v13 = type metadata accessor for UIHostingConfigurationStorage(0);
    v14 = v13[9];
    v15 = type metadata accessor for UICellConfigurationState();
    (*(*(v15 - 8) + 56))(&v12[v14], 1, 1, v15);
    v12[v13[10]] = 0;
    *&v12[v13[11] + 8] = 0;
    swift_unknownObjectWeakInit();
    outlined init with copy of ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>(v25, v7, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewList_View, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, MEMORY[0x1E697D9F0]);
    *v12 = 0;
    *(v12 + 9) = 0;
    v12[80] = 1;
    *(v12 + 11) = 0;
    v12[96] = 0;
    static Edge.Set.all.getter();
    outlined init with copy of TableCellFormula(v7, v10, type metadata accessor for UIHostingConfiguration<ModifiedContent<ModifiedContent<_ViewList_View, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, EmptyView>);
    v16 = &v10[*(v5 + 56)];
    v17 = *(v16 + 24);
    v22 = *(v16 + 8);
    v23 = v17;
    v24[0] = *(v16 + 40);
    *(v24 + 9) = *(v16 + 49);
    OptionalEdgeInsets.init(_:edges:)();
    OptionalEdgeInsets.adding(_:)();
    outlined destroy of TableCellFormula(v7, type metadata accessor for UIHostingConfiguration<ModifiedContent<ModifiedContent<_ViewList_View, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, EmptyView>);
    v18 = v25[29];
    *(v16 + 8) = v25[28];
    *(v16 + 24) = v18;
    *(v16 + 40) = v26[0];
    *(v16 + 49) = *(v26 + 9);
    v16[97] = 0;
    *&v16[v13[11] + 8] = &protocol witness table for ListCollectionViewCellBase<A>;
    swift_unknownObjectWeakAssign();
    *(&v23 + 1) = v5;
    *&v24[0] = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<AnyView, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type UIHostingConfiguration<ModifiedContent<ModifiedContent<_ViewList_View, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, EmptyView> and conformance UIHostingConfiguration<A, B>, type metadata accessor for UIHostingConfiguration<ModifiedContent<ModifiedContent<_ViewList_View, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, EmptyView>, protocol conformance descriptor for UIHostingConfiguration<A, B>);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v22);
    outlined init with copy of TableCellFormula(v10, boxed_opaque_existential_1, type metadata accessor for UIHostingConfiguration<ModifiedContent<ModifiedContent<_ViewList_View, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, EmptyView>);
    *(boxed_opaque_existential_1 + *(v5 + 56) + v13[10]) = 1;
    outlined destroy of TableCellFormula(v10, type metadata accessor for UIHostingConfiguration<ModifiedContent<ModifiedContent<_ViewList_View, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, EmptyView>);
    MEMORY[0x18D00DB90](&v22);
    return outlined destroy of ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>(v25, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewList_View, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, MEMORY[0x1E697D9F0]);
  }

  else
  {

    return specialized PlatformListCell<>.defaultConfigureContent(_:transaction:)(a1, a2);
  }
}

{
  type metadata accessor for UIHostingConfiguration<ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, EmptyView>(0);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21[-v9];
  if (one-time initialization token for isEnabledInProcessEnv != -1)
  {
    swift_once();
  }

  if (static ListUsesUIHostingConfigurationFeature.isEnabledInProcessEnv == 1)
  {
    v11 = outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(a1, v25, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier);
    v12 = &v7[*(v5 + 56)];
    *v12 = 1;
    MEMORY[0x18D007050](v11);
    *(v12 + 9) = 0;
    v12[80] = 1;
    *(v12 + 11) = 0;
    v12[96] = 1;
    *(v12 + 97) = 1;
    v13 = type metadata accessor for UIHostingConfigurationStorage(0);
    v14 = v13[9];
    v15 = type metadata accessor for UICellConfigurationState();
    (*(*(v15 - 8) + 56))(&v12[v14], 1, 1, v15);
    v12[v13[10]] = 0;
    *&v12[v13[11] + 8] = 0;
    swift_unknownObjectWeakInit();
    outlined init with copy of ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>(v25, v7, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView);
    *v12 = 0;
    *(v12 + 9) = 0;
    v12[80] = 1;
    *(v12 + 11) = 0;
    v12[96] = 0;
    static Edge.Set.all.getter();
    outlined init with copy of TableCellFormula(v7, v10, type metadata accessor for UIHostingConfiguration<ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, EmptyView>);
    v16 = &v10[*(v5 + 56)];
    v17 = *(v16 + 24);
    v22 = *(v16 + 8);
    v23 = v17;
    v24[0] = *(v16 + 40);
    *(v24 + 9) = *(v16 + 49);
    OptionalEdgeInsets.init(_:edges:)();
    OptionalEdgeInsets.adding(_:)();
    outlined destroy of TableCellFormula(v7, type metadata accessor for UIHostingConfiguration<ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, EmptyView>);
    v18 = v26;
    *(v16 + 8) = *&v25[488];
    *(v16 + 24) = v18;
    *(v16 + 40) = v27[0];
    *(v16 + 49) = *(v27 + 9);
    v16[97] = 0;
    *&v16[v13[11] + 8] = &protocol witness table for ListCollectionViewCellBase<A>;
    swift_unknownObjectWeakAssign();
    *(&v23 + 1) = v5;
    *&v24[0] = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<AnyView, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type UIHostingConfiguration<ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, EmptyView> and conformance UIHostingConfiguration<A, B>, type metadata accessor for UIHostingConfiguration<ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, EmptyView>, protocol conformance descriptor for UIHostingConfiguration<A, B>);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v22);
    outlined init with copy of TableCellFormula(v10, boxed_opaque_existential_1, type metadata accessor for UIHostingConfiguration<ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, EmptyView>);
    *(boxed_opaque_existential_1 + *(v5 + 56) + v13[10]) = 1;
    outlined destroy of TableCellFormula(v10, type metadata accessor for UIHostingConfiguration<ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, EmptyView>);
    MEMORY[0x18D00DB90](&v22);
    return outlined destroy of ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>(v25, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView);
  }

  else
  {

    return specialized PlatformListCell<>.defaultConfigureContent(_:transaction:)(a1, a2);
  }
}

uint64_t (*UIKitMenuButton.TransformItemList.value.getter(unint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(uint64_t *a1)
{
  v11 = a2;
  v12 = a1;
  v13 = HIDWORD(a1);
  v14 = HIDWORD(a2);
  v15 = *AGGraphGetValue();
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  *(v16 + 32) = a6;
  *(v16 + 40) = a7;
  *(v16 + 48) = v15;
  *(v16 + 56) = v12;
  *(v16 + 60) = v13;
  *(v16 + 64) = v11;
  *(v16 + 68) = v14;
  *(v16 + 72) = a3;

  return partial apply for closure #1 in UIKitMenuButton.TransformItemList.value.getter;
}

uint64_t sub_18BFE5B04()
{

  return swift_deallocObject();
}

void type metadata accessor for UIHostingConfiguration<ModifiedContent<ModifiedContent<_ViewList_View, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, EmptyView>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UIHostingConfiguration<ModifiedContent<ModifiedContent<_ViewList_View, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, EmptyView>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewList_View, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, MEMORY[0x1E697D9F0]);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewList_View, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>> and conformance <> ModifiedContent<A, B>();
    v7[0] = v3;
    v7[1] = MEMORY[0x1E6981E70];
    v7[2] = v4;
    v7[3] = MEMORY[0x1E6981E60];
    v5 = type metadata accessor for UIHostingConfiguration(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for UIHostingConfiguration<ModifiedContent<ModifiedContent<_ViewList_View, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, EmptyView>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(255, a3, a4, &type metadata for CollectionViewCellModifier, MEMORY[0x1E697E830]);
    type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<IsInHostingConfigurationBackedList>, lazy protocol witness table accessor for type IsInHostingConfigurationBackedList and conformance IsInHostingConfigurationBackedList, &type metadata for IsInHostingConfigurationBackedList, MEMORY[0x1E697FD28]);
    v5 = type metadata accessor for ModifiedContent();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

Swift::Void __swiftcall PlatformItemListGenerator.updateValue()()
{
  v2 = v1;
  v3 = v0;
  v39 = *MEMORY[0x1E69E9840];
  if (!AGGraphGetOutputValue())
  {
    v4 = v2[3];
    v5 = v2[5];
    v31 = v2[4];
    v32[0] = v5;
    *(v32 + 12) = *(v2 + 92);
    v6 = v2[1];
    v28[0] = *v2;
    v28[1] = v6;
    v7 = v2[3];
    v9 = *v2;
    v8 = v2[1];
    v29 = v2[2];
    v30 = v7;
    v10 = v2[5];
    v26 = v31;
    v27[0] = v10;
    *(v27 + 12) = *(v2 + 92);
    v22 = v9;
    v23 = v8;
    v24 = v29;
    v25 = v4;
    v11 = implicit closure #1 in PlatformItemListGenerator.updateValue()(&v22, v3[2], v3[3], v3[4], v3[5]);
    v37 = v26;
    v38[0] = v27[0];
    *(v38 + 12) = *(v27 + 12);
    v33 = v22;
    v34 = v23;
    v35 = v24;
    v36 = v25;
    v12 = *(v3 - 1);
    (*(v12 + 16))(&v21, v28, v3);
    (*(v12 + 8))(&v33, v3);
    AGGraphClearUpdate();
    v13 = AGSubgraphGetCurrent();
    v14 = AGSubgraphSetCurrent();
    v15 = (v11)(v14);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();

    *(v2 + 26) = v15;
  }

  v16 = v2[5];
  v37 = v2[4];
  v38[0] = v16;
  *(v38 + 12) = *(v2 + 92);
  v17 = v2[1];
  v33 = *v2;
  v34 = v17;
  v18 = v2[3];
  v35 = v2[2];
  v36 = v18;
  PlatformItemListGenerator.itemList.getter();
  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  *&v33 = v20;
  AGGraphSetOutputValue();
}

void type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI15ModifiedContentVyAA12TableRowViewVAA010CollectionG12CellModifierVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI15ModifiedContentVyAA12TableRowViewVAA010CollectionG12CellModifierVGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t (*implicit closure #1 in PlatformItemListGenerator.updateValue()(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v10 = a1[5];
  v20[4] = a1[4];
  v21[0] = v10;
  *(v21 + 12) = *(a1 + 92);
  v11 = a1[1];
  v20[0] = *a1;
  v20[1] = v11;
  v12 = a1[3];
  v20[2] = a1[2];
  v20[3] = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = a4;
  *(v13 + 40) = a5;
  v14 = a1[5];
  *(v13 + 112) = a1[4];
  *(v13 + 128) = v14;
  *(v13 + 140) = *(a1 + 92);
  v15 = a1[1];
  *(v13 + 48) = *a1;
  *(v13 + 64) = v15;
  v16 = a1[3];
  *(v13 + 80) = a1[2];
  *(v13 + 96) = v16;
  v19[0] = a2;
  v19[1] = a3;
  v19[2] = a4;
  v19[3] = a5;
  v17 = type metadata accessor for PlatformItemListGenerator(0, v19);
  (*(*(v17 - 8) + 16))(v19, v20, v17);
  return partial apply for implicit closure #2 in implicit closure #1 in PlatformItemListGenerator.updateValue();
}

uint64_t sub_18BFE60C0()
{

  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in PlatformItemListGenerator.updateValue()()
{
  v1 = v0[8];
  v7[6] = v0[7];
  v8[0] = v1;
  *(v8 + 12) = *(v0 + 140);
  v2 = v0[4];
  v7[2] = v0[3];
  v7[3] = v2;
  v3 = v0[6];
  v7[4] = v0[5];
  v7[5] = v3;
  v4 = v0[2];
  v7[0] = v0[1];
  v7[1] = v4;
  v5 = type metadata accessor for PlatformItemListGenerator(0, v7);
  return PlatformItemListGenerator.makeItemList()(v5);
}

void type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t PlatformItemListGenerator.makeItemList()(void *a1)
{
  v2 = v1[5];
  v48 = v1[4];
  *v49 = v2;
  *&v49[12] = *(v1 + 92);
  v3 = v1[1];
  v46 = *v1;
  v47[0] = v3;
  v4 = v1[3];
  v47[1] = v1[2];
  v47[2] = v4;
  v5 = a1[2];
  v6 = a1[4];
  v7 = (*(v6 + 8))(v5, v6);
  v8 = v1[4];
  v42 = v1[3];
  v43 = v8;
  v44 = v1[5];
  v45 = *(v1 + 24);
  v9 = v1[2];
  v40 = v1[1];
  v41 = v9;
  if (v49[20] == 1)
  {
    v10 = v1[4];
    v11 = v1[2];
    v30 = v1[3];
    v31 = v10;
    v12 = v1[4];
    v32 = v1[5];
    v13 = v1[2];
    v28 = v1[1];
    v29 = v13;
    v21 = v30;
    v22 = v12;
    v23 = v1[5];
    v33 = *(v1 + 24);
    v24 = *(v1 + 24);
    v19 = v28;
    v20 = v11;
    outlined init with copy of _ViewInputs(v47, &v34);
    outlined init with copy of _ViewInputs(&v28, &v34);
    _ViewInputs.withoutGeometryDependencies.getter();
    v14 = v1[4];
    v36 = v1[3];
    v37 = v14;
    v38 = v1[5];
    v39 = *(v1 + 24);
    v15 = v1[2];
    v34 = v1[1];
    v35 = v15;
    outlined destroy of _ViewInputs(&v34);
    outlined destroy of _ViewInputs(&v28);
    PreferenceKeys.init()();
    v26 = v19;
    type metadata accessor for GraphHost();
    MEMORY[0x18D00B7D0]();
    v25 = 0;
    GraphHost.intern<A>(_:for:id:)();

    PreferencesInputs.init(hostKeys:)();

    *&v43 = v19;
    DWORD2(v43) = DWORD2(v19);
  }

  else
  {
    outlined init with copy of _ViewInputs(v47, &v34);
  }

  _ViewInputs.addPlatformItemListKey<A>(flags:editOperation:)(v5, 0, v5, v6);
  LOBYTE(v34) = 1;
  lazy protocol witness table accessor for type IsPlatformItemListSourceInput and conformance IsPlatformItemListSourceInput();
  PropertyList.subscript.setter();
  if ((v7 & 0x10) != 0)
  {
    *&v34 = v48;
    DWORD2(v34) = DWORD2(v48);
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
    {
      PreferenceKeys.add(_:)();
    }
  }

  _GraphValue.init(_:)();
  v30 = v42;
  v31 = v43;
  v32 = v44;
  v33 = v45;
  v28 = v40;
  v29 = v41;
  v21 = v42;
  v22 = v43;
  v23 = v44;
  v24 = v45;
  v19 = v40;
  v20 = v41;
  outlined init with copy of _ViewInputs(&v28, &v34);
  static View.makeDebuggableView(view:inputs:)();
  v36 = v21;
  v37 = v22;
  v38 = v23;
  v39 = v24;
  v34 = v19;
  v35 = v20;
  outlined destroy of _ViewInputs(&v34);
  *&v19 = v26;
  DWORD2(v19) = v27;
  v16 = PreferencesOutputs.subscript.getter();

  if ((v16 & 0x100000000) != 0)
  {
    v17 = *MEMORY[0x1E698D3F8];
  }

  else
  {
    v17 = v16;
  }

  v21 = v42;
  v22 = v43;
  v23 = v44;
  v24 = v45;
  v19 = v40;
  v20 = v41;
  outlined destroy of _ViewInputs(&v19);
  return v17;
}

unint64_t lazy protocol witness table accessor for type IsInHostingConfigurationBackedList and conformance IsInHostingConfigurationBackedList()
{
  result = lazy protocol witness table cache variable for type IsInHostingConfigurationBackedList and conformance IsInHostingConfigurationBackedList;
  if (!lazy protocol witness table cache variable for type IsInHostingConfigurationBackedList and conformance IsInHostingConfigurationBackedList)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsInHostingConfigurationBackedList, &type metadata for IsInHostingConfigurationBackedList, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsInHostingConfigurationBackedList and conformance IsInHostingConfigurationBackedList);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInHostingConfigurationBackedList and conformance IsInHostingConfigurationBackedList;
  if (!lazy protocol witness table cache variable for type IsInHostingConfigurationBackedList and conformance IsInHostingConfigurationBackedList)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsInHostingConfigurationBackedList, &type metadata for IsInHostingConfigurationBackedList, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsInHostingConfigurationBackedList and conformance IsInHostingConfigurationBackedList);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInHostingConfigurationBackedList and conformance IsInHostingConfigurationBackedList;
  if (!lazy protocol witness table cache variable for type IsInHostingConfigurationBackedList and conformance IsInHostingConfigurationBackedList)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsInHostingConfigurationBackedList, &type metadata for IsInHostingConfigurationBackedList, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsInHostingConfigurationBackedList and conformance IsInHostingConfigurationBackedList);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInHostingConfigurationBackedList and conformance IsInHostingConfigurationBackedList;
  if (!lazy protocol witness table cache variable for type IsInHostingConfigurationBackedList and conformance IsInHostingConfigurationBackedList)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsInHostingConfigurationBackedList, &type metadata for IsInHostingConfigurationBackedList, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsInHostingConfigurationBackedList and conformance IsInHostingConfigurationBackedList);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInHostingConfigurationBackedList and conformance IsInHostingConfigurationBackedList;
  if (!lazy protocol witness table cache variable for type IsInHostingConfigurationBackedList and conformance IsInHostingConfigurationBackedList)
  {
    result = swift_getWitnessTable("qS\tbX/\b", &type metadata for IsInHostingConfigurationBackedList, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsInHostingConfigurationBackedList and conformance IsInHostingConfigurationBackedList);
  }

  return result;
}

uint64_t _ViewInputs.addPlatformItemListKey<A>(flags:editOperation:)(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  PreferenceKeys.add(_:)();
  lazy protocol witness table accessor for type PlatformItemListTextRepresentable and conformance PlatformItemListTextRepresentable();
  _ViewInputs.requestedTextRepresentation.setter();
  lazy protocol witness table accessor for type PlatformItemListImageRepresentable and conformance PlatformItemListImageRepresentable();
  _ViewInputs.requestedImageRepresentation.setter();
  lazy protocol witness table accessor for type PlatformItemListNamedImageRepresentable and conformance PlatformItemListNamedImageRepresentable();
  _ViewInputs.requestedNamedImageRepresentation.setter();
  lazy protocol witness table accessor for type PlatformItemListSpacerRepresentable and conformance PlatformItemListSpacerRepresentable();
  _ViewInputs.requestedSpacerRepresentation.setter();
  lazy protocol witness table accessor for type _GraphInputs.DividerRepresentationKey and conformance _GraphInputs.DividerRepresentationKey();
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type _GraphInputs.ViewThatFitsRepresentationKey and conformance _GraphInputs.ViewThatFitsRepresentationKey();
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type PlatformItemListHiddenRepresentable and conformance PlatformItemListHiddenRepresentable();
  _ViewInputs.requestedHiddenRepresentation.setter();
  lazy protocol witness table accessor for type _GraphInputs.DynamicHiddenRepresentationKey and conformance _GraphInputs.DynamicHiddenRepresentationKey();
  result = PropertyList.subscript.setter();
  if (v7 != 2)
  {
    (*(a4 + 8))(a3, a4);
    lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
    if (a2)
    {
      PropertyList.subscript.getter();
    }

    return PropertyList.subscript.setter();
  }

  return result;
}

unint64_t type metadata accessor for PlatformDividerRepresentable.Type()
{
  result = lazy cache variable for type metadata for PlatformDividerRepresentable.Type;
  if (!lazy cache variable for type metadata for PlatformDividerRepresentable.Type)
  {
    type metadata accessor for PlatformDividerRepresentable();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PlatformDividerRepresentable.Type);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewList_View, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewList_View, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewList_View, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewList_View, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, MEMORY[0x1E697D9F0]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<_ViewList_View, ListTableCellModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewList_View, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, &type metadata for CollectionViewCellModifier, lazy protocol witness table accessor for type CollectionViewCellModifier and conformance CollectionViewCellModifier);
    v5[1] = lazy protocol witness table accessor for type ViewInputFlagModifier<IsInHostingConfigurationBackedList> and conformance ViewInputFlagModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewList_View, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for PlatformDividerRepresentable.Type?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for PlatformDividerRepresentable.Type?)
  {
    type metadata accessor for PlatformDividerRepresentable.Type();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for PlatformDividerRepresentable.Type?);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewList_View, ListTableCellModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(255, a2, MEMORY[0x1E697D9F0], a3, MEMORY[0x1E697E830]);
    v8 = v7;
    v9 = a4();
    v10[0] = MEMORY[0x1E697D9E8];
    v10[1] = v9;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v10);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t type metadata accessor for PlatformDividerRepresentable()
{
  result = lazy cache variable for type metadata for PlatformDividerRepresentable;
  if (!lazy cache variable for type metadata for PlatformDividerRepresentable)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PlatformDividerRepresentable);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CollectionViewCellModifier and conformance CollectionViewCellModifier()
{
  result = lazy protocol witness table cache variable for type CollectionViewCellModifier and conformance CollectionViewCellModifier;
  if (!lazy protocol witness table cache variable for type CollectionViewCellModifier and conformance CollectionViewCellModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CollectionViewCellModifier, &type metadata for CollectionViewCellModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CollectionViewCellModifier and conformance CollectionViewCellModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<IsInHostingConfigurationBackedList> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<IsInHostingConfigurationBackedList> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<IsInHostingConfigurationBackedList> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<IsInHostingConfigurationBackedList>, lazy protocol witness table accessor for type IsInHostingConfigurationBackedList and conformance IsInHostingConfigurationBackedList, &type metadata for IsInHostingConfigurationBackedList, MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable(MEMORY[0x1E697FD30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<IsInHostingConfigurationBackedList> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

void type metadata accessor for PlatformViewThatFitsRepresentable.Type?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for PlatformViewThatFitsRepresentable.Type?)
  {
    type metadata accessor for PlatformViewThatFitsRepresentable.Type();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for PlatformViewThatFitsRepresentable.Type?);
    }
  }
}

unint64_t type metadata accessor for PlatformViewThatFitsRepresentable.Type()
{
  result = lazy cache variable for type metadata for PlatformViewThatFitsRepresentable.Type;
  if (!lazy cache variable for type metadata for PlatformViewThatFitsRepresentable.Type)
  {
    type metadata accessor for CVarArg(255, &lazy cache variable for type metadata for PlatformViewThatFitsRepresentable, &protocol descriptor for PlatformViewThatFitsRepresentable);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PlatformViewThatFitsRepresentable.Type);
  }

  return result;
}

uint64_t specialized PlatformListCell<>.defaultConfigureContent(_:transaction:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  static Update.lock()();
  v6 = direct field offset for ListCollectionViewCellBase.host;
  v7 = *&v3[direct field offset for ListCollectionViewCellBase.host];
  if (v7)
  {
    if (a2 >= 2)
    {
      v29 = v7;
      outlined copy of Transaction?(a2);
      specialized _UIHostingView.setRootView(_:transaction:)(a1, a2);

      outlined consume of ListItemTint?(a2);
    }

    else
    {
      v8 = MEMORY[0x1E697D9F0];
      outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(a1, v33, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, MEMORY[0x1E697D9F0], &type metadata for CollectionViewCellModifier);
      outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v33, v32, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, v8, &type metadata for CollectionViewCellModifier);
      v9 = *((*MEMORY[0x1E69E7D40] & *v7) + 0x60);
      swift_beginAccess();
      v10 = v7;
      outlined assign with take of ModifiedContent<TableRowView, CollectionViewCellModifier>(v32, v7 + v9, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, v8, &type metadata for CollectionViewCellModifier);
      swift_endAccess();
      type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>(0, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>, type metadata accessor for _UIHostingView);
      lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>> and conformance _UIHostingView<A>, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>, type metadata accessor for _UIHostingView, type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>);
      ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

      outlined destroy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v33, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, v8, &type metadata for CollectionViewCellModifier);
    }
  }

  else
  {
    v11 = MEMORY[0x1E697D9F0];
    outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(a1, v33, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, MEMORY[0x1E697D9F0], &type metadata for CollectionViewCellModifier);
    type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>(0, &lazy cache variable for type metadata for CellHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>, type metadata accessor for CellHostingView);
    v13 = objc_allocWithZone(v12);
    outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v33, v32, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, v11, &type metadata for CollectionViewCellModifier);
    outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v32, v31, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, v11, &type metadata for CollectionViewCellModifier);
    v14 = specialized _UIHostingView.init(rootView:)(v31);
    outlined destroy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v32, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, v11, &type metadata for CollectionViewCellModifier);
    v15 = v14;
    UIHostingViewBase.isHiddenForReuse.setter();
    outlined destroy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v33, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, v11, &type metadata for CollectionViewCellModifier);
    if (a2 != 1)
    {

      UIHostingViewBase.viewGraph.getter();

      GraphHost.emptyTransaction(_:)();

      outlined consume of ListItemTint?(a2);
    }

    v16 = *&v3[v6];
    *&v3[v6] = v14;
    v17 = v15;

    specialized ListCollectionViewCellBase.host.didset();
    v18 = [v3 contentView];
    [v18 bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    [v17 setFrame_];
    v27 = v17;
    [v27 setAutoresizingMask_];
    [v27 setPreservesSuperviewLayoutMargins_];

    v28 = [v3 contentView];
    [v28 addSubview_];
  }

  return static Update.unlock()();
}

{
  v3 = v2;
  static Update.lock()();
  v6 = direct field offset for ListCollectionViewCellBase.host;
  v7 = *&v3[direct field offset for ListCollectionViewCellBase.host];
  if (v7)
  {
    if (a2 >= 2)
    {
      v27 = v7;
      outlined copy of Transaction?(a2);
      specialized _UIHostingView.setRootView(_:transaction:)(a1, a2);

      outlined consume of ListItemTint?(a2);
    }

    else
    {
      outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(a1, v31, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier);
      outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v31, v30, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier);
      v8 = *((*MEMORY[0x1E69E7D40] & *v7) + 0x60);
      swift_beginAccess();
      v9 = v7;
      outlined assign with take of ModifiedContent<TableRowView, CollectionViewCellModifier>(v30, v7 + v8, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier);
      swift_endAccess();
      type metadata accessor for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>(0, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>, type metadata accessor for _UIHostingView);
      lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>, type metadata accessor for _UIHostingView, type metadata accessor for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>);
      ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

      outlined destroy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v31, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier);
    }
  }

  else
  {
    outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(a1, v31, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier);
    type metadata accessor for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>(0, &lazy cache variable for type metadata for CellHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>, type metadata accessor for CellHostingView);
    v11 = objc_allocWithZone(v10);
    outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v31, v30, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier);
    outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v30, v29, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier);
    v12 = specialized _UIHostingView.init(rootView:)(v29);
    outlined destroy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v30, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier);
    v13 = v12;
    UIHostingViewBase.isHiddenForReuse.setter();
    outlined destroy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v31, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier);
    if (a2 != 1)
    {

      UIHostingViewBase.viewGraph.getter();

      GraphHost.emptyTransaction(_:)();

      outlined consume of ListItemTint?(a2);
    }

    v14 = *&v3[v6];
    *&v3[v6] = v12;
    v15 = v13;

    specialized ListCollectionViewCellBase.host.didset();
    v16 = [v3 contentView];
    [v16 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    [v15 setFrame_];
    v25 = v15;
    [v25 setAutoresizingMask_];
    [v25 setPreservesSuperviewLayoutMargins_];

    v26 = [v3 contentView];
    [v26 addSubview_];
  }

  return static Update.unlock()();
}

{
  v3 = v2;
  static Update.lock()();
  v6 = OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_host;
  v7 = *&v3[OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_host];
  if (v7)
  {
    if (a2 >= 2)
    {
      v29 = v7;
      outlined copy of Transaction?(a2);
      specialized _UIHostingView.setRootView(_:transaction:)(a1, a2);

      outlined consume of ListItemTint?(a2);
    }

    else
    {
      v8 = MEMORY[0x1E697D9F0];
      outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(a1, v33, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, MEMORY[0x1E697D9F0], &type metadata for ListTableCellModifier);
      outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v33, v32, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, v8, &type metadata for ListTableCellModifier);
      v9 = *((*MEMORY[0x1E69E7D40] & *v7) + 0x60);
      swift_beginAccess();
      v10 = v7;
      outlined assign with take of ModifiedContent<TableRowView, CollectionViewCellModifier>(v32, v7 + v9, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, v8, &type metadata for ListTableCellModifier);
      swift_endAccess();
      type metadata accessor for CellHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>(0, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>, type metadata accessor for _UIHostingView);
      lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>> and conformance _UIHostingView<A>, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>, type metadata accessor for _UIHostingView, type metadata accessor for CellHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>);
      ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

      outlined destroy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v33, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, v8, &type metadata for ListTableCellModifier);
    }
  }

  else
  {
    v11 = MEMORY[0x1E697D9F0];
    outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(a1, v33, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, MEMORY[0x1E697D9F0], &type metadata for ListTableCellModifier);
    type metadata accessor for CellHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>(0, &lazy cache variable for type metadata for CellHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>, type metadata accessor for CellHostingView);
    v13 = objc_allocWithZone(v12);
    outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v33, v32, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, v11, &type metadata for ListTableCellModifier);
    outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v32, v31, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, v11, &type metadata for ListTableCellModifier);
    v14 = specialized _UIHostingView.init(rootView:)(v31);
    outlined destroy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v32, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, v11, &type metadata for ListTableCellModifier);
    v15 = v14;
    UIHostingViewBase.isHiddenForReuse.setter();
    outlined destroy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v33, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, v11, &type metadata for ListTableCellModifier);
    if (a2 != 1)
    {

      UIHostingViewBase.viewGraph.getter();

      GraphHost.emptyTransaction(_:)();

      outlined consume of ListItemTint?(a2);
    }

    v16 = *&v3[v6];
    *&v3[v6] = v14;
    v17 = v15;

    ListTableViewCell.host.didset();
    v18 = [v3 contentView];
    [v18 bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    [v17 setFrame_];
    v27 = v17;
    [v27 setAutoresizingMask_];
    [v27 setPreservesSuperviewLayoutMargins_];

    v28 = [v3 contentView];
    [v28 addSubview_];
  }

  return static Update.unlock()();
}

uint64_t outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(0, a3, a4, a5, MEMORY[0x1E697E830]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance MenuStyleConfiguration.Content(unsigned int *a1, uint64_t a2)
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
  return _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA22MenuStyleConfigurationV7ContentV_Tt2B5(v2, v6);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA22MenuStyleConfigurationV7ContentV_Tt2B5(int a1, __int128 *a2)
{
  v5 = a2[3];
  v31 = a2[2];
  v32 = v5;
  v33 = a2[4];
  v34 = *(a2 + 20);
  v6 = a2[1];
  v29 = *a2;
  v30 = v6;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<MenuStyleConfiguration.Content>, lazy protocol witness table accessor for type MenuStyleConfiguration.Content and conformance MenuStyleConfiguration.Content, &type metadata for MenuStyleConfiguration.Content);
  outlined init with copy of _ViewInputs(a2, v27);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<MenuStyleConfiguration.Content> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<MenuStyleConfiguration.Content>, lazy protocol witness table accessor for type MenuStyleConfiguration.Content and conformance MenuStyleConfiguration.Content, &type metadata for MenuStyleConfiguration.Content);
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
  v13 = lazy protocol witness table accessor for type MenuStyleConfiguration.Content and conformance MenuStyleConfiguration.Content();
  LOBYTE(v27[0]) = v11;
  v12(&v22, v8, v9, v15, v10 | (v11 << 32), &v16, &type metadata for MenuStyleConfiguration.Content, v13, v8, v9);
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

void type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, MEMORY[0x1E697D9F0], &type metadata for CollectionViewCellModifier, MEMORY[0x1E697E830]);
    v7 = v6;
    v8 = lazy protocol witness table accessor for type ModifiedContent<_ViewList_View, ListTableCellModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewList_View, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, &type metadata for CollectionViewCellModifier, lazy protocol witness table accessor for type CollectionViewCellModifier and conformance CollectionViewCellModifier);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<LabelsHiddenModifier>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _EnvironmentKeyWritingModifier<Visibility>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<LabelsHiddenModifier>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _EnvironmentKeyWritingModifier<Visibility>>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<LabelsHiddenModifier>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>(255);
    type metadata accessor for _EnvironmentKeyWritingModifier<Visibility>();
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<LabelsHiddenModifier>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _EnvironmentKeyWritingModifier<Visibility>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<LabelsHiddenModifier>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _EnvironmentKeyWritingModifier<Visibility>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<LabelsHiddenModifier>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _EnvironmentKeyWritingModifier<Visibility>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<LabelsHiddenModifier>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _EnvironmentKeyWritingModifier<Visibility>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<LabelsHiddenModifier>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _EnvironmentKeyWritingModifier<Visibility>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<LabelsHiddenModifier>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<LabelsHiddenModifier>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<_ViewModifier_Content<LabelsHiddenModifier>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, lazy protocol witness table accessor for type _ViewModifier_Content<LabelsHiddenModifier> and conformance _ViewModifier_Content<A>, &protocol witness table for _LabeledContentStyleModifier<A>);
    v5[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Visibility> and conformance _EnvironmentKeyWritingModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<LabelsHiddenModifier>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _EnvironmentKeyWritingModifier<Visibility>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for _ViewModifier_Content<LabelsHiddenModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void partial apply for closure #1 in FocusStoreLocation.set(_:transaction:)()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  closure #1 in FocusStoreLocation.set(_:transaction:)(*(v0 + 32), v0 + ((v2 + 40) & ~v2), (v0 + ((*(v1 + 64) + v2 + ((v2 + 40) & ~v2)) & ~v2)), *(v0 + 16), *(v0 + 24));
}

void closure #1 in FocusStoreLocation.set(_:transaction:)(uint64_t a1, uint64_t a2, void (*a3)(char *, char *, uint64_t), uint64_t a4, void (*a5)(char *, char *, uint64_t))
{
  v64 = a3;
  v62 = a2;
  v7 = type metadata accessor for FocusStore.Entry(255, a4, a5, a4);
  v8 = type metadata accessor for Optional();
  v59 = *(v8 - 8);
  v60 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v53 - v11;
  v61 = v7;
  v63 = *(v7 - 8);
  v12 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v58 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v55 = &v53 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v54 = &v53 - v17;
  v56 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v22 = type metadata accessor for Optional();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v53 - v24;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    (*(*(TupleTypeMetadata2 - 8) + 56))(v25, 1, 1, TupleTypeMetadata2);
    v28 = *(*v27 + class metadata base offset for FocusStoreLocation + 48);
    swift_beginAccess();
    (*(v23 + 40))(&v27[v28], v25, v22);
    swift_endAccess();
    v29 = v62;
    v31 = a5;
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      FocusStoreLocation.getValue(forReading:)(0, v20);
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v56 + 8))(v20, a4);
      v33 = v63;
      if ((v32 & 1) == 0)
      {
        v34 = *(*v27 + class metadata base offset for FocusStoreLocation + 56);
        swift_beginAccess();
        v35 = v59;
        v36 = &v27[v34];
        v37 = v53;
        v38 = v60;
        (*(v59 + 16))(v53, v36, v60);
        v39 = v61;
        if ((*(v33 + 48))(v37, 1, v61) == 1)
        {

          (*(v35 + 8))(v37, v38);
        }

        else
        {
          v64 = *(v33 + 32);
          v49 = v54;
          v64(v54, v37, v39);
          v65 = 17;
          v50 = v55;
          (*(v33 + 16))(v55, v49, v39);
          v51 = (*(v33 + 80) + 32) & ~*(v33 + 80);
          v52 = swift_allocObject();
          *(v52 + 16) = a4;
          *(v52 + 24) = v31;
          v64((v52 + v51), v50, v39);
          static Update.enqueueAction(reason:_:)();

          (*(v33 + 8))(v54, v39);
        }

        return;
      }
    }

    else
    {
      v64 = a5;
      v40 = v57;
      FocusStoreLocation.findEntry(with:)(v30, v57);
      v41 = v63;
      v42 = v61;
      if ((*(v63 + 48))(v40, 1, v61) != 1)
      {
        v43 = *(v41 + 32);
        v44 = v58;
        v43(v58, v40, v42);
        v66 = 17;
        v45 = v55;
        (*(v41 + 16))(v55, v44, v42);
        v46 = (*(v41 + 80) + 32) & ~*(v41 + 80);
        v47 = swift_allocObject();
        v48 = v64;
        *(v47 + 16) = a4;
        *(v47 + 24) = v48;
        v43((v47 + v46), v45, v42);
        static Update.enqueueAction(reason:_:)();

        (*(v41 + 8))(v58, v42);
        return;
      }

      (*(v59 + 8))(v40, v60);
      FocusStoreLocation.deferUpdate(_:)(v29);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<LabelsHiddenModifier>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<LabelsHiddenModifier>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>)
  {
    type metadata accessor for _ViewModifier_Content<LabelsHiddenModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<LabelsHiddenModifier>, lazy protocol witness table accessor for type LabelsHiddenModifier and conformance LabelsHiddenModifier, &type metadata for LabelsHiddenModifier, MEMORY[0x1E697FDE8]);
    type metadata accessor for _ViewModifier_Content<LabelsHiddenModifier>(255, &lazy cache variable for type metadata for _LabeledContentStyleModifier<HiddenLabeledContentStyle>, lazy protocol witness table accessor for type HiddenLabeledContentStyle and conformance HiddenLabeledContentStyle, &type metadata for HiddenLabeledContentStyle, type metadata accessor for _LabeledContentStyleModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<LabelsHiddenModifier>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewList_View, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, a2, MEMORY[0x1E697D9F0], a3, MEMORY[0x1E697E830]);
    v8 = v7;
    v9 = a4();
    v10[0] = MEMORY[0x1E697D9E8];
    v10[1] = v9;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v10);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LabelsHiddenModifier and conformance LabelsHiddenModifier()
{
  result = lazy protocol witness table cache variable for type LabelsHiddenModifier and conformance LabelsHiddenModifier;
  if (!lazy protocol witness table cache variable for type LabelsHiddenModifier and conformance LabelsHiddenModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LabelsHiddenModifier, &type metadata for LabelsHiddenModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LabelsHiddenModifier and conformance LabelsHiddenModifier);
  }

  return result;
}

void type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>.EnableVFDFeature(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>.EnableVFDFeature)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, MEMORY[0x1E697D9F0], &type metadata for CollectionViewCellModifier, MEMORY[0x1E697E830]);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type ModifiedContent<_ViewList_View, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewList_View, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, &type metadata for CollectionViewCellModifier, lazy protocol witness table accessor for type CollectionViewCellModifier and conformance CollectionViewCellModifier);
    v6 = type metadata accessor for _UIHostingView.EnableVFDFeature(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>.EnableVFDFeature);
    }
  }
}

void type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, MEMORY[0x1E697D9F0], &type metadata for CollectionViewCellModifier, MEMORY[0x1E697E830]);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type ModifiedContent<_ViewList_View, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewList_View, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, &type metadata for CollectionViewCellModifier, lazy protocol witness table accessor for type CollectionViewCellModifier and conformance CollectionViewCellModifier);
    v6 = type metadata accessor for _UIHostingView(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type HiddenLabeledContentStyle and conformance HiddenLabeledContentStyle()
{
  result = lazy protocol witness table cache variable for type HiddenLabeledContentStyle and conformance HiddenLabeledContentStyle;
  if (!lazy protocol witness table cache variable for type HiddenLabeledContentStyle and conformance HiddenLabeledContentStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HiddenLabeledContentStyle, &type metadata for HiddenLabeledContentStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HiddenLabeledContentStyle and conformance HiddenLabeledContentStyle);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<Visibility>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Visibility>)
  {
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Visibility>);
    }
  }
}

void type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>.HostViewGraph(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>.HostViewGraph)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, MEMORY[0x1E697D9F0], &type metadata for CollectionViewCellModifier, MEMORY[0x1E697E830]);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type ModifiedContent<_ViewList_View, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewList_View, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, &type metadata for CollectionViewCellModifier, lazy protocol witness table accessor for type CollectionViewCellModifier and conformance CollectionViewCellModifier);
    v6 = type metadata accessor for _UIHostingView.HostViewGraph(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>.HostViewGraph);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<LabelsHiddenModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<LabelsHiddenModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<LabelsHiddenModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<LabelsHiddenModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<LabelsHiddenModifier>, lazy protocol witness table accessor for type LabelsHiddenModifier and conformance LabelsHiddenModifier, &type metadata for LabelsHiddenModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<LabelsHiddenModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

Swift::Void __swiftcall CellHostingView.appendViewGraphFeatures()()
{
  UIItemHostingView.appendViewGraphFeatures()();
  type metadata accessor for _SemanticFeature<Semantics_v4>();
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>();
  v0 = static SemanticFeature.isEnabled.getter();
  if ((v0 & 1) == 0)
  {
    _UIHostingView.viewGraph.getter(v0);
    lazy protocol witness table accessor for type CellViewGraph and conformance CellViewGraph();
    ViewGraph.append<A>(feature:)();
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<LabelsHiddenModifier>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
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

Swift::Void __swiftcall UIItemHostingView.appendViewGraphFeatures()()
{
  _UIHostingView.viewGraph.getter(v0);
  lazy protocol witness table accessor for type ItemHostingViewGraph and conformance ItemHostingViewGraph();
  ViewGraph.append<A>(feature:)();
}

unint64_t lazy protocol witness table accessor for type ItemHostingViewGraph and conformance ItemHostingViewGraph()
{
  result = lazy protocol witness table cache variable for type ItemHostingViewGraph and conformance ItemHostingViewGraph;
  if (!lazy protocol witness table cache variable for type ItemHostingViewGraph and conformance ItemHostingViewGraph)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ItemHostingViewGraph, &unk_1EFFBFF88, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ItemHostingViewGraph and conformance ItemHostingViewGraph);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Visibility> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Visibility> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Visibility> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<Visibility>();
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Visibility> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

uint64_t outlined destroy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(uint64_t a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility>(0, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, MEMORY[0x1E697D9F0], &type metadata for CollectionViewCellModifier, MEMORY[0x1E697E830]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double destroy for CollectionViewCellModifier(uint64_t a1)
{
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  outlined consume of Environment<Selector?>.Content(*(a1 + 16), *(a1 + 24));
  outlined consume of Environment<ListItemTint?>.Content(*(a1 + 32), *(a1 + 40), *(a1 + 41));
  outlined consume of Environment<EdgeInsets>.Content(*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));
  result = outlined consume of Environment<ListContentStyling>.Content(*(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160), *(a1 + 168), *(a1 + 169));
  if (*(a1 + 256) != 1)
  {
  }

  v3 = *(a1 + 350);
  if (*(a1 + 350))
  {
    if (v3 == 1)
    {
      goto LABEL_9;
    }

    if (v3 != 2)
    {
      return result;
    }
  }

  __swift_destroy_boxed_opaque_existential_1((a1 + 280));
LABEL_9:

  return result;
}

double outlined consume of Environment<EdgeInsets>.Content(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t static PickerStyleWriter._makeInputs(modifier:inputs:)(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PickerStyleWriter(255, a3, a4, a4);
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(a3 - 8) + 64))
  {
    closure #1 in static PickerStyleWriter._makeInputs(modifier:inputs:)(1, a3, a4, v6);
  }

  AGGraphCreateOffsetAttribute2();
  type metadata accessor for StyleType(0, a3, a4, v7);
  lazy protocol witness table accessor for type PickerStyleInput and conformance PickerStyleInput();
  return PropertyList.subscript.setter();
}

double outlined consume of Environment<ListContentStyling>.Content(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, char a12)
{
  if (a12)
  {

    outlined consume of ListItemTint?(a10);
  }

  else
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PickerStyleInput and conformance PickerStyleInput()
{
  result = lazy protocol witness table cache variable for type PickerStyleInput and conformance PickerStyleInput;
  if (!lazy protocol witness table cache variable for type PickerStyleInput and conformance PickerStyleInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PickerStyleInput, &unk_1EFFDAEB8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PickerStyleInput and conformance PickerStyleInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PickerStyleInput and conformance PickerStyleInput;
  if (!lazy protocol witness table cache variable for type PickerStyleInput and conformance PickerStyleInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PickerStyleInput, &unk_1EFFDAEB8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PickerStyleInput and conformance PickerStyleInput);
  }

  return result;
}

void specialized static NavigationColumnState.change(from:to:previousSplitViewState:splitViewState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 48);
  v117[2] = *(a3 + 32);
  v117[3] = v4;
  v118 = *(a3 + 64);
  v5 = *(a3 + 16);
  v117[0] = *a3;
  v117[1] = v5;
  v6 = *(a4 + 48);
  v115[2] = *(a4 + 32);
  v115[3] = v6;
  v116 = *(a4 + 64);
  v7 = *(a4 + 16);
  v115[0] = *a4;
  v115[1] = v7;
  v8 = *(a2 + 16);
  if (!v8)
  {
    return;
  }

  v9 = 0;
  v10 = a1 + 32;
  v11 = a2 + 32;
  v89 = a1;
  v90 = a1 + 32;
  v12 = *(a1 + 16);
  v93 = v8 - 1;
  v94 = v12;
  v91 = a2;
  v92 = "m a non-list context";
  v13 = &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?;
  while (1)
  {
    if (v9 >= v12)
    {
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
LABEL_220:
      __break(1u);
      goto LABEL_221;
    }

    v16 = v13;
    v17 = 360 * v9;
    outlined init with copy of NavigationColumnState(v10 + 360 * v9, v112);
    if (v9 >= v8)
    {
      goto LABEL_214;
    }

    outlined init with copy of NavigationColumnState(v11 + v17, v109);
    outlined init with copy of NavigationColumnState(v10 + v17, v104);
    if (v105 > 2u)
    {
      if (v105 - 3 < 2)
      {
LABEL_31:
        v25 = 0;
        goto LABEL_34;
      }

LABEL_32:
      v25 = 1;
      goto LABEL_34;
    }

    if (!v105)
    {
      goto LABEL_31;
    }

    if (v105 != 1)
    {
      specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v117, v104, v9, v89);
      v25 = v26 ^ 1;
      goto LABEL_34;
    }

    specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v117, v104, v9, v89);
    if (v18)
    {
      goto LABEL_31;
    }

    v19 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_217;
    }

    if (v19 >= v12)
    {
      goto LABEL_32;
    }

    if (v19 < 0)
    {
      goto LABEL_219;
    }

    outlined init with copy of NavigationColumnState(v10 + 360 * v19, v101);
    if (v102 > 2u)
    {
      if (v102 - 3 >= 2)
      {
        goto LABEL_115;
      }
    }

    else if (v102)
    {
      if (v102 != 1)
      {
        specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v117, v101, v9 + 1, v89);
        v25 = v55 ^ 1;
        goto LABEL_118;
      }

      specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v117, v101, v9 + 1, v89);
      if ((v20 & 1) == 0)
      {
        if (v9 + 2 < v12)
        {
          outlined init with copy of NavigationColumnState(v10 + 360 * (v9 + 2), v99);
          if (v100 > 2u)
          {
            if (v100 - 3 >= 2)
            {
LABEL_125:
              v25 = 1;
              goto LABEL_128;
            }
          }

          else if (v100)
          {
            v21 = v9 + 2;
            if (v100 != 1)
            {
              specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v117, v99, v21, v89);
              v25 = v57 ^ 1;
              goto LABEL_128;
            }

            specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v117, v99, v21, v89);
            if ((v22 & 1) == 0)
            {
              if (v9 + 3 < v94)
              {
                outlined init with copy of NavigationColumnState(v10 + 360 * (v9 + 3), v97);
                if (v98 > 2u)
                {
                  if (v98 - 3 >= 2)
                  {
                    v25 = 1;
                    goto LABEL_138;
                  }
                }

                else if (v98)
                {
                  v23 = v9 + 3;
                  if (v98 != 1)
                  {
                    specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v117, v97, v23, v89);
                    v25 = v59 ^ 1;
                    goto LABEL_137;
                  }

                  specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v117, v97, v23, v89);
                  if (v24)
                  {
                    v25 = 0;
LABEL_137:
                    v10 = v90;
                    goto LABEL_138;
                  }

                  if (v9 + 4 >= v94)
                  {
                    v25 = 1;
                    goto LABEL_137;
                  }

                  outlined init with copy of NavigationColumnState(v90 + 360 * (v9 + 4), v95);
                  if (v96 > 2u)
                  {
                    if (v96 - 3 >= 2)
                    {
                      goto LABEL_164;
                    }
                  }

                  else if (v96)
                  {
                    v61 = v9 + 4;
                    if (v96 != 1)
                    {
                      specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v117, v95, v61, v89);
                      v25 = v66 ^ 1;
                      goto LABEL_167;
                    }

                    specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v117, v95, v61, v89);
                    if ((v62 & 1) == 0)
                    {
                      if (v9 + 5 < v94)
                      {
                        v25 = _s7SwiftUI21NavigationColumnStateV24isElidedInCollapsedSplit6column6within09splitViewE0SbSi_xAA0cjnE0VSgtSkRzAC7ElementRtzSi5IndexRtzlFZSayACG_Tt2B5(v9 + 5, v89, v117);
LABEL_167:
                        outlined destroy of NavigationColumnState(v95);
                        goto LABEL_137;
                      }

LABEL_164:
                      v25 = 1;
                      goto LABEL_167;
                    }
                  }

                  v25 = 0;
                  goto LABEL_167;
                }

                v25 = 0;
LABEL_138:
                outlined destroy of NavigationColumnState(v97);
                goto LABEL_128;
              }

              goto LABEL_125;
            }
          }

          v25 = 0;
LABEL_128:
          outlined destroy of NavigationColumnState(v99);
          goto LABEL_118;
        }

LABEL_115:
        v25 = 1;
        goto LABEL_118;
      }
    }

    v25 = 0;
LABEL_118:
    outlined destroy of NavigationColumnState(v101);
LABEL_34:
    outlined destroy of NavigationColumnState(v104);
    outlined init with copy of NavigationColumnState(v11 + v17, v104);
    if (v105 > 2u)
    {
      v13 = v16;
      if (v105 - 3 < 2)
      {
LABEL_59:
        v14 = outlined destroy of NavigationColumnState(v104);
        if (v25)
        {
          goto LABEL_174;
        }

        goto LABEL_60;
      }

      goto LABEL_3;
    }

    v13 = v16;
    if (!v105)
    {
      goto LABEL_59;
    }

    if (v105 != 1)
    {
      specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v115, v104, v9, v91);
      v34 = v42 ^ 1;
      goto LABEL_83;
    }

    specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v115, v104, v9, v91);
    if (v27)
    {
      goto LABEL_59;
    }

    v28 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_218;
    }

    if (v28 < v8)
    {
      break;
    }

LABEL_3:
    v14 = outlined destroy of NavigationColumnState(v104);
    if ((v25 & 1) == 0)
    {
      goto LABEL_191;
    }

LABEL_4:
    outlined destroy of NavigationColumnState(v109);
    outlined destroy of NavigationColumnState(v112);
    v15 = __OFADD__(v9++, 1);
    if (v15)
    {
      goto LABEL_216;
    }

LABEL_5:
    v12 = v94;
    if (v9 >= v8)
    {
      return;
    }
  }

  if (v28 < 0)
  {
    goto LABEL_220;
  }

  outlined init with copy of NavigationColumnState(v11 + 360 * v28, v101);
  if (v102 > 2u)
  {
    if (v102 - 3 >= 2)
    {
      goto LABEL_116;
    }

LABEL_114:
    v34 = 0;
    goto LABEL_120;
  }

  if (!v102)
  {
    goto LABEL_114;
  }

  if (v102 != 1)
  {
    specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v115, v101, v9 + 1, v91);
    v34 = v56 ^ 1;
    goto LABEL_120;
  }

  specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v115, v101, v9 + 1, v91);
  if (v29)
  {
    goto LABEL_114;
  }

  v30 = v9 + 2;
  if (v9 + 2 >= v8)
  {
LABEL_116:
    v34 = 1;
    goto LABEL_120;
  }

  if (v30 < 0)
  {
    goto LABEL_236;
  }

  v88 = v9 + 2;
  outlined init with copy of NavigationColumnState(v11 + 360 * v30, v99);
  if (v100 > 2u)
  {
    if (v100 - 3 >= 2)
    {
      goto LABEL_126;
    }

LABEL_124:
    v34 = 0;
    goto LABEL_130;
  }

  if (!v100)
  {
    goto LABEL_124;
  }

  if (v100 != 1)
  {
    specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v115, v99, v88, v91);
    v34 = v58 ^ 1;
    goto LABEL_130;
  }

  specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v115, v99, v88, v91);
  if (v31)
  {
    goto LABEL_124;
  }

  v32 = v9 + 3;
  if (v9 + 3 >= v8)
  {
LABEL_126:
    v34 = 1;
    goto LABEL_130;
  }

  if (v32 < 0)
  {
    goto LABEL_237;
  }

  v88 = v9 + 3;
  outlined init with copy of NavigationColumnState(v11 + 360 * v32, v97);
  if (v98 > 2u)
  {
    if (v98 - 3 >= 2)
    {
      v34 = 1;
      goto LABEL_142;
    }

LABEL_134:
    v34 = 0;
    goto LABEL_142;
  }

  if (!v98)
  {
    goto LABEL_134;
  }

  if (v98 != 1)
  {
    specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v115, v97, v88, v91);
    v34 = v60 ^ 1;
    goto LABEL_141;
  }

  specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v115, v97, v88, v91);
  if (v33)
  {
    v34 = 0;
    goto LABEL_141;
  }

  v63 = v9 + 4;
  if (v9 + 4 >= v8)
  {
    v34 = 1;
    goto LABEL_141;
  }

  if (v63 < 0)
  {
    goto LABEL_238;
  }

  outlined init with copy of NavigationColumnState(v11 + 360 * v63, v95);
  if (v96 > 2u)
  {
    if (v96 - 3 >= 2)
    {
      goto LABEL_165;
    }

    goto LABEL_163;
  }

  if (!v96)
  {
    goto LABEL_163;
  }

  v64 = v9 + 4;
  if (v96 != 1)
  {
    specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v115, v95, v64, v91);
    v34 = v67 ^ 1;
    goto LABEL_169;
  }

  specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v115, v95, v64, v91);
  if (v65)
  {
LABEL_163:
    v34 = 0;
    goto LABEL_169;
  }

  if (v9 + 5 < v8)
  {
    v34 = _s7SwiftUI21NavigationColumnStateV24isElidedInCollapsedSplit6column6within09splitViewE0SbSi_xAA0cjnE0VSgtSkRzAC7ElementRtzSi5IndexRtzlFZSayACG_Tt2B5(v9 + 5, v91, v115);
    goto LABEL_169;
  }

LABEL_165:
  v34 = 1;
LABEL_169:
  outlined destroy of NavigationColumnState(v95);
LABEL_141:
  v13 = v16;
  v10 = v90;
LABEL_142:
  outlined destroy of NavigationColumnState(v97);
LABEL_130:
  outlined destroy of NavigationColumnState(v99);
LABEL_120:
  outlined destroy of NavigationColumnState(v101);
LABEL_83:
  v14 = outlined destroy of NavigationColumnState(v104);
  if (v25)
  {
    if ((v34 & 1) == 0)
    {
LABEL_174:
      v104[0] = v91;
      MEMORY[0x1EEE9AC00](v14);
      v86 = v104;
      v87 = v115;
      specialized Sequence.reduce<A>(_:_:)(0, closure #1 in Collection<>.collapsedItemCount<A>(within:splitViewState:)specialized partial apply, v85, v9, v8);
      outlined destroy of NavigationColumnState(v109);
      outlined destroy of NavigationColumnState(v112);
      return;
    }

    goto LABEL_4;
  }

  if (v34)
  {
LABEL_191:
    v104[0] = v89;
    MEMORY[0x1EEE9AC00](v14);
    v86 = v104;
    v87 = v117;
    specialized Sequence.reduce<A>(_:_:)(0, partial apply for specialized closure #1 in Collection<>.collapsedItemCount<A>(within:splitViewState:), v85, v9, v94);
    outlined destroy of NavigationColumnState(v109);
    outlined destroy of NavigationColumnState(v112);
    return;
  }

LABEL_60:
  if (v9 == v93)
  {
    outlined init with copy of NavigationColumnState(v112, v104);
    NavigationColumnState.change(from:)(v104);
    outlined destroy of NavigationRequest.Action?(v104, &lazy cache variable for type metadata for NavigationColumnState?, &type metadata for NavigationColumnState, MEMORY[0x1E69E6720]);
    outlined destroy of NavigationColumnState(v109);
    outlined destroy of NavigationColumnState(v112);
    return;
  }

  outlined init with copy of NavigationColumnState.ColumnContent(v113, v104);
  if (v108)
  {
    outlined init with copy of NavigationColumnState.ColumnContent(v104, v101);
  }

  else
  {
    outlined init with copy of NavigationColumnState.ColumnContent(v104, v101);
  }

  if (v103 == 255)
  {
    v35 = 1;
  }

  else
  {
    outlined destroy of NavigationRequest.Action?(v101, v13, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    v35 = 0;
  }

  outlined destroy of NavigationColumnState.ColumnContent(v104);
  v36 = v114;
  if (((v35 ^ (v114 == 1)) & 1) == 0)
  {
    MEMORY[0x18D009810](0xD00000000000017BLL, v92 | 0x8000000000000000);
  }

  outlined init with copy of NavigationColumnState.ColumnContent(v110, v104);
  if (v108)
  {
    outlined init with copy of NavigationColumnState.ColumnContent(v104, v101);
  }

  else
  {
    outlined init with copy of NavigationColumnState.ColumnContent(v104, v101);
  }

  if (v103 == 255)
  {
    v37 = 1;
  }

  else
  {
    outlined destroy of NavigationRequest.Action?(v101, v13, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    v37 = 0;
  }

  outlined destroy of NavigationColumnState.ColumnContent(v104);
  v38 = v111;
  if (((v37 ^ (v111 == 1)) & 1) == 0)
  {
    MEMORY[0x18D009810](0xD00000000000017BLL, v92 | 0x8000000000000000);
  }

  if ((v36 == 1) != (v38 == 1))
  {
    goto LABEL_189;
  }

  outlined init with copy of NavigationColumnState.ColumnContent(v113, v104);
  if (v108)
  {
    outlined destroy of NavigationColumnState.ColumnContent(v104);
    outlined init with copy of NavigationColumnState.ColumnContent(v110, v104);
    v39 = v16;
    if (v108)
    {
      outlined destroy of NavigationColumnState.ColumnContent(v104);
      goto LABEL_93;
    }

    v40 = MEMORY[0x1E69E6720];
    v41 = v16;
  }

  else
  {

    v40 = MEMORY[0x1E69E6720];
    v39 = v16;
    v41 = v16;
  }

  outlined destroy of NavigationRequest.Action?(v104, v41, &type metadata for NavigationColumnState.ReplacedRoot, v40);

  outlined init with copy of NavigationColumnState.ColumnContent(v113, v104);
  if (v108)
  {
    goto LABEL_177;
  }

  v43 = v106;

  outlined destroy of NavigationRequest.Action?(v104, v39, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
  outlined init with copy of NavigationColumnState.ColumnContent(v110, v104);
  if (v108)
  {

LABEL_177:
    outlined destroy of NavigationColumnState(v109);
    outlined destroy of NavigationColumnState(v112);
    outlined destroy of NavigationColumnState.ColumnContent(v104);
    return;
  }

  v44 = v106;

  v39 = v16;

  outlined destroy of NavigationRequest.Action?(v104, v16, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
  v45 = v119;
  v46 = (*(*v44 + 136))(v43);
  v119 = v45;
  if (v45)
  {
    goto LABEL_203;
  }

  if (v47)
  {
    if (v46 == 1)
    {

      v10 = v90;
LABEL_93:
      outlined init with copy of NavigationColumnState.ColumnContent(v113, v104);
      if (v108)
      {
        outlined destroy of NavigationColumnState.ColumnContent(v104);
        v48 = MEMORY[0x1E69E7CC0];
      }

      else
      {

        v48 = v107;
        outlined destroy of NavigationRequest.Action?(v104, v39, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
      }

      v49 = *(v48 + 16);

      outlined init with copy of NavigationColumnState.ColumnContent(v110, v104);
      if (v108)
      {
        outlined destroy of NavigationColumnState.ColumnContent(v104);
        v50 = MEMORY[0x1E69E7CC0];
        _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI33NavigationLinkSelectionIdentifierV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      }

      else
      {

        v50 = v107;
        outlined destroy of NavigationRequest.Action?(v104, v16, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
      }

      v51 = *(v50 + 16);

      if (!v49)
      {
        if (!v51)
        {
          outlined destroy of NavigationColumnState(v109);
          outlined destroy of NavigationColumnState(v112);
          v15 = __OFADD__(v9++, 1);
          if (v15)
          {
            goto LABEL_215;
          }

LABEL_108:
          v13 = v16;
          goto LABEL_5;
        }

        v77 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_230;
        }

        v78 = v91;
        if (v94 < v77)
        {
          goto LABEL_231;
        }

        if (v77 < 0)
        {
          goto LABEL_232;
        }

        v104[0] = v89;
        MEMORY[0x1EEE9AC00](v52);
        v86 = v104;
        v87 = v117;
        if (!specialized Sequence.reduce<A>(_:_:)(0, closure #1 in Collection<>.collapsedItemCount<A>(within:splitViewState:)specialized partial apply, v85, v9 + 1, v94))
        {
          if (v8 < v77)
          {
            goto LABEL_235;
          }

          v104[0] = v78;
          MEMORY[0x1EEE9AC00](0);
          v86 = v104;
          v87 = v115;
          specialized Sequence.reduce<A>(_:_:)(0, closure #1 in Collection<>.collapsedItemCount<A>(within:splitViewState:)specialized partial apply, v85, v9 + 1, v8);
          outlined destroy of NavigationColumnState(v109);
          outlined destroy of NavigationColumnState(v112);
          return;
        }

LABEL_187:
        outlined destroy of NavigationColumnState(v109);
        outlined destroy of NavigationColumnState(v112);
        return;
      }

      if (v51)
      {
        outlined init with copy of NavigationColumnState(v109, v104);
        outlined init with copy of NavigationColumnState(v112, v101);
        if (v49 == v51)
        {
          closure #1 in NavigationColumnState.change(from:)(v104, v101);
          v54 = v53;
          outlined destroy of NavigationColumnState(v101);
          outlined destroy of NavigationColumnState(v104);
          outlined destroy of NavigationColumnState(v109);
          outlined destroy of NavigationColumnState(v112);
          if ((v54 & 1) == 0)
          {
            return;
          }

          v15 = __OFADD__(v9++, 1);
          if (v15)
          {
            goto LABEL_215;
          }

          goto LABEL_108;
        }

        outlined destroy of NavigationColumnState(v101);
        outlined destroy of NavigationColumnState(v104);
LABEL_189:
        outlined destroy of NavigationColumnState(v109);
        outlined destroy of NavigationColumnState(v112);
        return;
      }

      v71 = v9 + 1;
      if (!__OFADD__(v9, 1))
      {
        v72 = v91;
        if (v8 >= v71)
        {
          if ((v71 & 0x8000000000000000) == 0)
          {
            v104[0] = v91;
            MEMORY[0x1EEE9AC00](v52);
            v86 = v104;
            v87 = v115;
            if (!specialized Sequence.reduce<A>(_:_:)(0, closure #1 in Collection<>.collapsedItemCount<A>(within:splitViewState:)specialized partial apply, v85, v9 + 1, v8))
            {
              if (v94 < v71)
              {
                goto LABEL_233;
              }

              v104[0] = v72;
              MEMORY[0x1EEE9AC00](0);
              v86 = v104;
              v87 = v115;
              v84 = specialized Sequence.reduce<A>(_:_:)(0, closure #1 in Collection<>.collapsedItemCount<A>(within:splitViewState:)specialized partial apply, v85, v9 + 1, v83);
              outlined destroy of NavigationColumnState(v109);
              outlined destroy of NavigationColumnState(v112);
              if (__OFADD__(v84, 1))
              {
                goto LABEL_234;
              }

              return;
            }

            goto LABEL_187;
          }

LABEL_223:
          __break(1u);
LABEL_224:
          __break(1u);
          goto LABEL_225;
        }

LABEL_222:
        __break(1u);
        goto LABEL_223;
      }

LABEL_221:
      __break(1u);
      goto LABEL_222;
    }

    if ((v46 - 2) < 2)
    {

      goto LABEL_189;
    }

    outlined init with copy of NavigationColumnState.ColumnContent(v113, v104);
    if (v108)
    {
      v70 = outlined destroy of NavigationColumnState.ColumnContent(v104);
LABEL_204:
      v81 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_227;
      }

      if (v94 < v81)
      {
        goto LABEL_228;
      }

      if (v81 < 0)
      {
        goto LABEL_229;
      }

      v104[0] = v89;
      MEMORY[0x1EEE9AC00](v70);
      v86 = v104;
      v87 = v117;
      specialized Sequence.reduce<A>(_:_:)(0, closure #1 in Collection<>.collapsedItemCount<A>(within:splitViewState:)specialized partial apply, v85, v82, v94);

      outlined destroy of NavigationColumnState(v109);
      outlined destroy of NavigationColumnState(v112);
      return;
    }

    v79 = v107;
    outlined destroy of NavigationRequest.Action?(v104, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    v80 = *(v79 + 16);

    if (!v80)
    {
      goto LABEL_204;
    }

LABEL_203:

    outlined destroy of NavigationColumnState(v109);
    outlined destroy of NavigationColumnState(v112);
    return;
  }

  v94 = v46;
  outlined init with copy of NavigationColumnState.ColumnContent(v110, v104);
  if (v108)
  {
    v68 = outlined destroy of NavigationColumnState.ColumnContent(v104);
    v69 = v91;
    goto LABEL_193;
  }

  v73 = v107;
  outlined destroy of NavigationRequest.Action?(v104, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
  v74 = *(v73 + 16);

  v69 = v91;
  if (v74)
  {
    goto LABEL_203;
  }

LABEL_193:
  v75 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    goto LABEL_224;
  }

  if (v8 < v75)
  {
LABEL_225:
    __break(1u);
    goto LABEL_226;
  }

  if ((v75 & 0x8000000000000000) == 0)
  {
    v104[0] = v69;
    MEMORY[0x1EEE9AC00](v68);
    v86 = v104;
    v87 = v115;
    specialized Sequence.reduce<A>(_:_:)(0, closure #1 in Collection<>.collapsedItemCount<A>(within:splitViewState:)specialized partial apply, v85, v76, v8);

    outlined destroy of NavigationColumnState(v109);
    outlined destroy of NavigationColumnState(v112);
    return;
  }

LABEL_226:
  __break(1u);
LABEL_227:
  __break(1u);
LABEL_228:
  __break(1u);
LABEL_229:
  __break(1u);
LABEL_230:
  __break(1u);
LABEL_231:
  __break(1u);
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
}

uint64_t outlined destroy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(0, a2, a3, a4, MEMORY[0x1E697E830]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t type metadata completion function for WheelPicker(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for PickerStyleConfiguration(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t specialized ListCollectionViewCellBase.host.didset()
{
  v1 = v0;
  MEMORY[0x18D00ABE0]();
  v2 = direct field offset for ListCollectionViewCellBase.host;
  v3 = *(v0 + direct field offset for ListCollectionViewCellBase.host);
  if (v3)
  {
    *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x1C0) + 8) = &protocol witness table for ListCollectionViewCellBase<A>;
    swift_unknownObjectWeakAssign();
    v4 = *(v0 + v2);
    if (v4)
    {
      v5 = v4;
      UIHostingViewBase.viewGraph.getter();

      lazy protocol witness table accessor for type SwipeActions.Feature and conformance SwipeActions.Feature();
      ViewGraph.append<A>(feature:)();

      v6 = *(v0 + v2);
      if (v6)
      {
        v7 = v6;
        UIHostingViewBase.viewGraph.getter();

        GraphHost.addPreference<A>(_:)();
      }
    }
  }

  v8 = direct field offset for ListCollectionViewCellBase.popUpButtonSeed;
  swift_beginAccess();
  *(v1 + v8) = -1;
  return static Update.end()();
}

uint64_t type metadata completion function for PickerStyleConfiguration(uint64_t a1)
{
  result = type metadata accessor for Binding();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void @objc CellHostingView.layoutMarginsDidChange()(void *a1)
{
  v1 = a1;
  CellHostingView.layoutMarginsDidChange()();
}

uint64_t instantiation function for generic protocol witness table for PickerStyleConfiguration<A>.Label(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for PickerStyleConfiguration<A>.Label);
  *(a1 + 8) = result;
  return result;
}

Swift::Void __swiftcall CellHostingView.layoutMarginsDidChange()()
{
  ObjectType = swift_getObjectType();
  v2.receiver = v0;
  v2.super_class = ObjectType;
  objc_msgSendSuper2(&v2, sel_layoutMarginsDidChange);
  swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, ObjectType);
  ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
}

void type metadata accessor for UICellAccessory.LayoutDimension?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t instantiation function for generic protocol witness table for PickerStyleConfiguration<A>.Content(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for PickerStyleConfiguration<A>.Content);
  *(a1 + 8) = result;
  return result;
}

void specialized ListCollectionViewCellBase.backgroundHost.setter(void *a1)
{
  v2 = type metadata accessor for UIBackgroundConfiguration();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UICellAccessory.LayoutDimension?(0, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  v12 = a1;
  MEMORY[0x18D00DBA0]();
  if ((*(v3 + 48))(v11, 1, v2))
  {
    outlined destroy of UIBackgroundConfiguration?(v11, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8]);
LABEL_3:
    v13 = 0;
    goto LABEL_4;
  }

  v16 = UIBackgroundConfiguration.customView.getter();
  outlined destroy of UIBackgroundConfiguration?(v11, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8]);
  if (!v16)
  {
    goto LABEL_3;
  }

  type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>(0);
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
  }

LABEL_4:
  if (a1)
  {

    if (v13 && (swift_unknownObjectRelease(), v13 == a1))
    {
    }

    else
    {
      v14 = v12;
      UIHostingViewBase.isHiddenForReuse.setter();
      static UIBackgroundConfiguration.clear()();
      v15 = v14;
      UIBackgroundConfiguration.customView.setter();
      (*(v3 + 16))(v8, v5, v2);
      (*(v3 + 56))(v8, 0, 1, v2);
      MEMORY[0x18D00DBB0](v8);

      (*(v3 + 8))(v5, v2);
    }
  }

  else if (v13)
  {
    v17 = swift_unknownObjectRelease();
    MEMORY[0x18D00DBC0](v17);
    (*(v3 + 56))(v8, 0, 1, v2);
    MEMORY[0x18D00DBB0](v8);
  }
}

void UICollectionViewListCoordinatorBase.mirrorSelection(collectionView:indexPath:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v110 = a2;
  v102 = a1;
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v99 = *MEMORY[0x1E69E7D40] & v4;
  v6 = type metadata accessor for IndexPath();
  v107 = *(v6 - 8);
  v108 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v95 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (IndexPath?, IndexPath?)(0);
  v105 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v101 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v103 = &v92 - v11;
  _s10Foundation9IndexPathVSgMaTm_1(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v94 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v104 = &v92 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v100 = &v92 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v109 = &v92 - v19;
  v20 = *((v5 & v4) + 0x68);
  v21 = type metadata accessor for Optional();
  v97 = *(v21 - 8);
  v98 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v92 - v22;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = type metadata accessor for Optional();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v92 - v27;
  v29 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v92 - v31;
  UICollectionViewListCoordinatorBase.selectionValue(forRowAt:)(v110, v33, v28);
  v34 = (*(v29 + 48))(v28, 1, AssociatedTypeWitness);
  v106 = v3;
  if (v34 == 1)
  {
    (*(v26 + 8))(v28, v25);
    v35 = v109;
    goto LABEL_11;
  }

  (*(v29 + 32))(v32, v28, AssociatedTypeWitness);
  UICollectionViewListCoordinatorBase.currentSelection.getter(v23);
  v36 = *(v20 - 8);
  if ((*(v36 + 48))(v23, 1, v20) == 1)
  {
    v97[1](v23, v98);
    v35 = v109;
LABEL_10:
    (*(v29 + 8))(v32, AssociatedTypeWitness);
LABEL_11:
    v43 = v107;
    v42 = v108;
    v44 = *(v107 + 16);
    v99 = v107 + 16;
    v97 = v44;
    (v44)(v35, v110, v108);
    v45 = *(v43 + 56);
    v98 = v43 + 56;
    v96 = v45;
    v45(v35, 0, 1, v42);
    v46 = v106;
    v47 = v35;
    v48 = *((*MEMORY[0x1E69E7D40] & *v106) + 0xE0);
    swift_beginAccess();
    v49 = *(v105 + 48);
    v50 = MEMORY[0x1E6969C28];
    v51 = MEMORY[0x1E69E6720];
    v52 = v47;
    v53 = v103;
    outlined init with copy of SwipeActions.Configuration?(v52, v103, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_1);
    v54 = v50;
    v55 = v42;
    outlined init with copy of SwipeActions.Configuration?(v46 + v48, v53 + v49, &lazy cache variable for type metadata for IndexPath?, v54, v51, _s10Foundation9IndexPathVSgMaTm_1);
    v56 = *(v43 + 48);
    if (v56(v53, 1, v42) == 1)
    {
      _s10Foundation9IndexPathVSgWOhTm_1(v109, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
      v57 = v56(v53 + v49, 1, v42);
      v58 = v104;
      if (v57 == 1)
      {
        v59 = MEMORY[0x1E6969C28];
        v60 = MEMORY[0x1E69E6720];
        v61 = v53;
LABEL_20:
        _s10Foundation9IndexPathVSgWOhTm_1(v61, &lazy cache variable for type metadata for IndexPath?, v59, v60);
        return;
      }
    }

    else
    {
      v62 = v100;
      outlined init with copy of SwipeActions.Configuration?(v53, v100, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_1);
      v63 = v56(v53 + v49, 1, v42);
      v58 = v104;
      if (v63 != 1)
      {
        v93 = v56;
        v78 = v107;
        v79 = v95;
        (*(v107 + 32))(v95, v53 + v49, v42);
        _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28], MEMORY[0x1E6969C50]);
        v80 = v53;
        v81 = dispatch thunk of static Equatable.== infix(_:_:)();
        v82 = *(v78 + 8);
        v82(v79, v42);
        v83 = v62;
        v84 = MEMORY[0x1E6969C28];
        v85 = MEMORY[0x1E69E6720];
        _s10Foundation9IndexPathVSgWOhTm_1(v109, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
        v82(v83, v108);
        v55 = v108;
        _s10Foundation9IndexPathVSgWOhTm_1(v80, &lazy cache variable for type metadata for IndexPath?, v84, v85);
        if (v81)
        {
          return;
        }

LABEL_17:
        (v97)(v58, v110, v55);
        v96(v58, 0, 1, v55);
        v64 = v106;
        v65 = *((*MEMORY[0x1E69E7D40] & *v106) + 0xE8);
        swift_beginAccess();
        v66 = *(v105 + 48);
        v67 = MEMORY[0x1E6969C28];
        v68 = MEMORY[0x1E69E6720];
        v69 = v101;
        outlined init with copy of SwipeActions.Configuration?(v58, v101, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_1);
        v70 = v64 + v65;
        v71 = v108;
        outlined init with copy of SwipeActions.Configuration?(v70, v69 + v66, &lazy cache variable for type metadata for IndexPath?, v67, v68, _s10Foundation9IndexPathVSgMaTm_1);
        v72 = v93;
        if (v93(v69, 1, v71) == 1)
        {
          _s10Foundation9IndexPathVSgWOhTm_1(v58, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
          if (v72(v69 + v66, 1, v71) == 1)
          {
            v59 = MEMORY[0x1E6969C28];
            v60 = MEMORY[0x1E69E6720];
            v61 = v69;
            goto LABEL_20;
          }
        }

        else
        {
          v73 = v94;
          outlined init with copy of SwipeActions.Configuration?(v69, v94, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_1);
          if (v72(v69 + v66, 1, v71) != 1)
          {
            v86 = v107;
            v87 = v95;
            (*(v107 + 32))(v95, v69 + v66, v71);
            _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28], MEMORY[0x1E6969C50]);
            v88 = dispatch thunk of static Equatable.== infix(_:_:)();
            v89 = *(v86 + 8);
            v89(v87, v71);
            v90 = MEMORY[0x1E6969C28];
            v91 = MEMORY[0x1E69E6720];
            _s10Foundation9IndexPathVSgWOhTm_1(v58, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
            v89(v73, v71);
            _s10Foundation9IndexPathVSgWOhTm_1(v69, &lazy cache variable for type metadata for IndexPath?, v90, v91);
            if (v88)
            {
              return;
            }

            goto LABEL_24;
          }

          _s10Foundation9IndexPathVSgWOhTm_1(v58, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
          (*(v107 + 8))(v73, v71);
        }

        _s7SwiftUI11MenuVisitor33_0F42DDF44729C152DA9EC9F6F4D00118LLVWOhTm_0(v69, type metadata accessor for (IndexPath?, IndexPath?));
LABEL_24:
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v75 = [v102 cellForItemAtIndexPath_];

        if (v75)
        {
          v76 = [v75 isSelected];

          if (v76)
          {
            v77 = IndexPath._bridgeToObjectiveC()().super.isa;
            [v102 deselectItemAtIndexPath:v77 animated:UICollectionViewListCoordinatorBase.isAnimated.getter() & 1];
          }
        }

        return;
      }

      _s10Foundation9IndexPathVSgWOhTm_1(v109, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
      (*(v107 + 8))(v62, v42);
    }

    v93 = v56;
    _s7SwiftUI11MenuVisitor33_0F42DDF44729C152DA9EC9F6F4D00118LLVWOhTm_0(v53, type metadata accessor for (IndexPath?, IndexPath?));
    goto LABEL_17;
  }

  v37 = (*(*(v99 + 120) + 64))(v32, v20);
  (*(v36 + 8))(v23, v20);
  v35 = v109;
  if ((v37 & 1) == 0)
  {
    goto LABEL_10;
  }

  v38 = IndexPath._bridgeToObjectiveC()().super.isa;
  v39 = [v102 cellForItemAtIndexPath_];

  if (!v39 || (v40 = [v39 isSelected], v39, (v40 & 1) == 0))
  {
    v41 = IndexPath._bridgeToObjectiveC()().super.isa;
    [v102 selectItemAtIndexPath:v41 animated:UICollectionViewListCoordinatorBase.isAnimated.getter() & 1 scrollPosition:0];
  }

  (*(v29 + 8))(v32, AssociatedTypeWitness);
}

uint64_t instantiation function for generic protocol witness table for PickerStyleConfiguration<A>.CurrentValueLabel(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for PickerStyleConfiguration<A>.CurrentValueLabel);
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for (IndexPath?, IndexPath?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (IndexPath?, IndexPath?))
  {
    _s10Foundation9IndexPathVSgMaTm_0(255, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (IndexPath?, IndexPath?));
    }
  }
}

uint64_t UICollectionViewListCoordinatorBase.selectionValue(forRowAt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v22 = a1;
  v23 = a3;
  v4 = *v3;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x60);
  v21[0] = *(*((*MEMORY[0x1E69E7D40] & *v3) + 0x70) + 8);
  v21[1] = v6;
  v7 = type metadata accessor for ShadowListDataSource(0, v6, v21[0], a2);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v21 - v9;
  v11 = type metadata accessor for Binding();
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v21 - v14;
  v16 = *((v5 & v4) + 0x110);
  swift_beginAccess();
  (*(v13 + 16))(v15, &v3[v16], v12);
  LODWORD(v11) = (*(*(v11 - 8) + 48))(v15, 1, v11);
  (*(v13 + 8))(v15, v12);
  if (v11 == 1)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    return (*(*(AssociatedTypeWitness - 8) + 56))(v23, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v19 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x88);
    swift_beginAccess();
    (*(v8 + 16))(v10, &v3[v19], v7);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v7);
    ListCoreDataSource.selectionValue(forRowAt:)(v22, v7, WitnessTable, v23);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t ListCoreDataSource.selectionValue(forRowAt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v15 - v11;
  v13 = ListDiffable.rowIndex(at:)(&v15 - v11, a1, a2, v8);
  ListCoreDataSource.selectionValue(forRowAt:)(v12, v13, a2, a3, a4);
  return (*(v10 + 8))(v12, AssociatedTypeWitness);
}

uint64_t sub_18BFEDF2C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  type metadata accessor for ResolvedPicker(255, v4, v8, a4);
  v25 = type metadata accessor for PickerStyleConfiguration.Label(255, v4, v8, v10);
  v26 = v5;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PickerStyleConfiguration<A>.Label, v25);
  v28 = v7;
  type metadata accessor for StaticSourceWriter(255, &v25);
  v11 = type metadata accessor for ModifiedContent();
  v13 = type metadata accessor for PickerStyleConfiguration.Content(255, v4, v8, v12);
  v14 = swift_getWitnessTable(protocol conformance descriptor for PickerStyleConfiguration<A>.Content, v13);
  v25 = v13;
  v26 = v6;
  WitnessTable = v14;
  v28 = v9;
  type metadata accessor for StaticSourceWriter(255, &v25);
  v15 = type metadata accessor for ModifiedContent();
  v17 = type metadata accessor for PickerStyleConfiguration.CurrentValueLabel(255, v4, v8, v16);
  v18 = swift_getWitnessTable(protocol conformance descriptor for PickerStyleConfiguration<A>.CurrentValueLabel, v17);
  v25 = v17;
  v26 = MEMORY[0x1E6981910];
  WitnessTable = v18;
  v28 = MEMORY[0x1E6981900];
  type metadata accessor for OptionalSourceWriter(255, &v25);
  v19 = type metadata accessor for ModifiedContent();
  v24[0] = &protocol witness table for ResolvedPicker<A>;
  v24[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v20 = MEMORY[0x1E697E858];
  v23[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v11, v24);
  v23[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v22[0] = swift_getWitnessTable(v20, v15, v23);
  v22[1] = &protocol witness table for OptionalSourceWriter<A, B>;
  return swift_getWitnessTable(v20, v19, v22);
}

uint64_t ListCoreDataSource.selectionValue(forRowAt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20 = a5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  v17 = &v20 - v16;
  v18 = *(AssociatedTypeWitness - 8);
  (*(v18 + 16))(&v20 - v16, a1, AssociatedTypeWitness, v15);
  *&v17[*(TupleTypeMetadata2 + 48)] = a2;
  (*(v11 + 16))(v13, v17, TupleTypeMetadata2);
  (*(a4 + 240))(v13, *&v13[*(TupleTypeMetadata2 + 48)], 1, a3, a4);
  (*(v11 + 8))(v17, TupleTypeMetadata2);
  return (*(v18 + 8))(v13, AssociatedTypeWitness);
}

void specialized NavigationHostingControllerCache_UIKit._viewControllers<A>(forEntering:isBorrowing:request:insert:)(id a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, void (*a5)(int64_t), uint64_t a6)
{
  v122 = a6;
  v123 = a5;
  type metadata accessor for UINavigationPresentationAdaptor?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v122 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v122 - v16;
  v151[0] = 0;
  v149 = v6;
  v150 = MEMORY[0x1E69E7CC0];
  swift_unknownObjectWeakInit();

  a3(&v149);
  v19 = v150;
  if (v150 >> 62)
  {
    goto LABEL_109;
  }

  for (i = *((v150 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v135 = a1;
    v133 = v19;
    if (!i)
    {
      break;
    }

    v21 = 0;
    v140 = v19 & 0xC000000000000001;
    v138 = v19 & 0xFFFFFFFFFFFFFF8;
    *&v18 = 138412290;
    v132 = v18;
    *&v18 = 138412546;
    v126 = v18;
    v134 = v11;
    v136 = v14;
    v137 = v17;
    v139 = i;
    while (v140)
    {
      v22 = MEMORY[0x18D00E9C0](v21, v19);
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_106;
      }

LABEL_11:
      v141 = v23;
      v24 = v22;
      v25 = [v24 navigationController];
      v26 = v25;
      if (!v25)
      {

        if (!a1)
        {
          static Log.navigation.getter();
          v30 = type metadata accessor for Logger();
          v31 = *(v30 - 8);
          if ((*(v31 + 48))(v17, 1, v30) == 1)
          {

            outlined destroy of UINavigationPresentationAdaptor?(v17, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
          }

          else
          {
            v59 = v24;
            v60 = Logger.logObject.getter();
            v61 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v60, v61))
            {
              v62 = swift_slowAlloc();
              v63 = swift_slowAlloc();
              *v62 = v132;
              *(v62 + 4) = v59;
              *v63 = v59;
              v131 = v59;
              outlined destroy of NSObject?(v63);
              v64 = v63;
              v11 = v134;
              MEMORY[0x18D0110E0](v64, -1, -1);
              v65 = v62;
              v17 = v137;
              MEMORY[0x18D0110E0](v65, -1, -1);
              v59 = v60;
              v60 = v131;
            }

            v19 = v133;

            (*(v31 + 8))(v17, v30);
          }

          v14 = v136;
          goto LABEL_33;
        }

        goto LABEL_20;
      }

      if (!a1)
      {

LABEL_20:
        static Log.navigation.getter();
        v32 = type metadata accessor for Logger();
        v33 = *(v32 - 8);
        if ((*(v33 + 48))(v11, 1, v32) == 1)
        {

          outlined destroy of UINavigationPresentationAdaptor?(v11, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
          a1 = v135;
        }

        else
        {
          v34 = v24;
          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            v38 = swift_slowAlloc();
            *v37 = v132;
            *(v37 + 4) = v34;
            *v38 = v34;
            v39 = v34;
            _os_log_impl(&dword_18BD4A000, v35, v36, "[NavigationHostingControllerCache_UIKit] %@ containment skipped because sourceNavigationController or destination were nil", v37, 0xCu);
            outlined destroy of NSObject?(v38);
            v40 = v38;
            v14 = v136;
            MEMORY[0x18D0110E0](v40, -1, -1);
            v41 = v37;
            v11 = v134;
            MEMORY[0x18D0110E0](v41, -1, -1);
          }

          (*(v33 + 8))(v11, v32);
          a1 = v135;
          v19 = v133;
          v17 = v137;
        }

        goto LABEL_33;
      }

      if (v25 == a1)
      {

        static Log.navigation.getter();
        v42 = type metadata accessor for Logger();
        v43 = *(v42 - 8);
        if ((*(v43 + 48))(v14, 1, v42) != 1)
        {
          v129 = v42;
          v44 = v24;
          v45 = v26;
          v46 = Logger.logObject.getter();
          v47 = static os_log_type_t.debug.getter();
          v130 = v45;

          LODWORD(v128) = v47;
          v131 = v46;
          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            v49 = swift_slowAlloc();
            v127 = v49;
            v50 = swift_slowAlloc();
            *&v143 = v50;
            *v48 = v126;
            *(v48 + 4) = v44;
            *v49 = v44;
            *(v48 + 12) = 2080;
            *&v142[0] = v26;
            _sSo22UINavigationControllerCSgMaTm_0(0, &lazy cache variable for type metadata for UINavigationController?, &lazy cache variable for type metadata for UINavigationController, 0x1E69DCCD8);
            v51 = v44;
            v130 = v130;
            v52 = String.init<A>(describing:)();
            v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, &v143);

            *(v48 + 14) = v54;
            v55 = v131;
            _os_log_impl(&dword_18BD4A000, v131, v128, "[NavigationHostingControllerCache_UIKit] %@ containment skipped because sourceNavigationController and destination were equal %s", v48, 0x16u);
            v56 = v127;
            outlined destroy of NSObject?(v127);
            MEMORY[0x18D0110E0](v56, -1, -1);
            __swift_destroy_boxed_opaque_existential_1(v50);
            MEMORY[0x18D0110E0](v50, -1, -1);
            v57 = v48;
            v19 = v133;
            MEMORY[0x18D0110E0](v57, -1, -1);

            v58 = v130;
          }

          else
          {

            v58 = v131;
          }

          v66 = v139;
          v67 = v141;
          v14 = v136;
          (*(v43 + 8))(v136, v129);
          v11 = v134;
          v17 = v137;
          goto LABEL_34;
        }

        outlined destroy of UINavigationPresentationAdaptor?(v14, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
        v11 = v134;
      }

      else
      {
        v27 = v25;
        v28 = a1;
        [v24 willMoveToParentViewController_];
        v29 = [v24 view];

        if (!v29)
        {
          __break(1u);
          return;
        }

        [v29 removeFromSuperview];

        specialized mustRemove #1 <A>(_:from:) in NavigationHostingControllerCache_UIKit._viewControllers<A>(forEntering:isBorrowing:request:insert:)(v24, v27, v151);
        v19 = v133;
      }

LABEL_33:
      v66 = v139;
      v67 = v141;
LABEL_34:
      ++v21;
      if (v67 == v66)
      {
        goto LABEL_38;
      }
    }

    if (v21 >= *(v138 + 16))
    {
      goto LABEL_108;
    }

    v22 = *(v19 + 8 * v21 + 32);
    v23 = v21 + 1;
    if (!__OFADD__(v21, 1))
    {
      goto LABEL_11;
    }

LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    ;
  }

LABEL_38:
  swift_beginAccess();
  v68 = v151[0];
  if (!v151[0])
  {
    v123(v19);
    goto LABEL_102;
  }

  v69 = v151[0] + 64;
  v70 = 1 << *(v151[0] + 32);
  if (v70 < 64)
  {
    v71 = ~(-1 << v70);
  }

  else
  {
    v71 = -1;
  }

  v19 = v71 & *(v151[0] + 64);
  v72 = (v70 + 63) >> 6;

  v73 = 0;
  v125 = v68 + 64;
  *&v126 = v68;
  v124 = v72;
  if (v19)
  {
LABEL_48:
    while (1)
    {
      v128 = v73;
      v76 = (v73 << 9) | (8 * __clz(__rbit64(v19)));
      v77 = *(*(v68 + 56) + v76);
      v78 = *(*(v68 + 48) + v76);
      v141 = v77;

      v130 = v78;
      v79 = [v78 _swiftui_viewControllers];
      v129 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
      v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      *&v143 = MEMORY[0x1E69E7CC0];
      if (v17 >> 62)
      {
        break;
      }

      v11 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v131 = v19;
      if (v11)
      {
        goto LABEL_50;
      }

LABEL_74:
      v97 = v141 & 0xC000000000000001;
LABEL_75:

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v130 _swiftui_setViewControllers:isa];

      if (v97)
      {
        __CocoaSet.makeIterator()();
        _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for NavigationStackHostingController);
        lazy protocol witness table accessor for type NavigationStackHostingController<AnyView> and conformance NSObject();
        Set.Iterator.init(_cocoa:)();
        v99 = v151[2];
        v141 = v151[1];
        v100 = v151[3];
        v101 = v151[4];
        v19 = v151[5];
      }

      else
      {
        v101 = 0;
        v99 = v141 + 56;
        v102 = -1 << *(v141 + 32);
        v100 = ~v102;
        v103 = -v102;
        if (v103 < 64)
        {
          v104 = ~(-1 << v103);
        }

        else
        {
          v104 = -1;
        }

        v19 = v104 & *(v141 + 56);
      }

      v131 &= v131 - 1;
      v17 = (v100 + 64) >> 6;
      if (v141 < 0)
      {
        goto LABEL_88;
      }

      while (1)
      {
        v105 = v101;
        v106 = v19;
        v11 = v101;
        if (!v19)
        {
          while (1)
          {
            v11 = v105 + 1;
            if (__OFADD__(v105, 1))
            {
              break;
            }

            if (v11 >= v17)
            {
              goto LABEL_92;
            }

            v106 = *(v99 + 8 * v11);
            ++v105;
            if (v106)
            {
              goto LABEL_86;
            }
          }

          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
          goto LABEL_106;
        }

LABEL_86:
        v14 = ((v106 - 1) & v106);
        v107 = *(*(v141 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v106)))));
        if (!v107)
        {
          break;
        }

        while (1)
        {
          [v107 removeFromParentViewController];
          [v107 willMoveToParentViewController_];

          v101 = v11;
          v19 = v14;
          if ((v141 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_88:
          v108 = __CocoaSet.Iterator.next()();
          if (v108)
          {
            *&v142[0] = v108;
            _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for NavigationStackHostingController);
            swift_dynamicCast();
            v107 = v143;
            v11 = v101;
            v14 = v19;
            if (v143)
            {
              continue;
            }
          }

          goto LABEL_92;
        }
      }

LABEL_92:
      outlined consume of Set<UIPress>.Iterator._Variant(v141);

      v69 = v125;
      v68 = v126;
      v72 = v124;
      v73 = v128;
      v19 = v131;
      if (!v131)
      {
        goto LABEL_43;
      }
    }

    v11 = __CocoaSet.count.getter();
    v131 = v19;
    if (!v11)
    {
      goto LABEL_74;
    }

LABEL_50:
    v80 = 0;
    v138 = v17 & 0xFFFFFFFFFFFFFF8;
    v139 = v17 & 0xC000000000000001;
    v127 = v17;
    v136 = v141 & 0xC000000000000001;
    v137 = v17 + 32;
    v81 = v141 & 0xFFFFFFFFFFFFFF8;
    if (v141 < 0)
    {
      v81 = v141;
    }

    v134 = v81;
    v140 = v141 + 56;
    v82 = MEMORY[0x1E6981910];
    while (1)
    {
      if (v139)
      {
        v83 = MEMORY[0x18D00E9C0](v80, v127);
      }

      else
      {
        if (v80 >= *(v138 + 16))
        {
          goto LABEL_105;
        }

        v83 = *(v137 + 8 * v80);
      }

      v17 = v83;
      if (__OFADD__(v80++, 1))
      {
        goto LABEL_104;
      }

      v19 = v11;
      _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, v82, MEMORY[0x1E6981900], type metadata accessor for NavigationStackHostingController);
      v14 = v85;
      if (swift_dynamicCastClass())
      {
        if (v136)
        {
          v86 = v17;
          v87 = __CocoaSet.contains(_:)();

          if (v87)
          {

            goto LABEL_55;
          }
        }

        else if (*(v141 + 16))
        {
          v88 = v141;
          v89 = *(v141 + 40);
          *&v132 = v17;
          v90 = NSObject._rawHashValue(seed:)(v89);
          v91 = -1 << *(v88 + 32);
          v92 = v90 & ~v91;
          if ((*(v140 + ((v92 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v92))
          {
            v93 = ~v91;
            while (1)
            {
              v94 = *(*(v88 + 48) + 8 * v92);
              v95 = static NSObject.== infix(_:_:)();

              if (v95)
              {
                break;
              }

              v92 = (v92 + 1) & v93;
              v88 = v141;
              if (((*(v140 + ((v92 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v92) & 1) == 0)
              {
                goto LABEL_53;
              }
            }

            v96 = v132;

            a1 = v135;
            v82 = MEMORY[0x1E6981910];
            goto LABEL_55;
          }

LABEL_53:

          a1 = v135;
          v82 = MEMORY[0x1E6981910];
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
LABEL_55:
      if (v80 == v11)
      {
        v97 = v136;
        goto LABEL_75;
      }
    }
  }

LABEL_43:
  v74 = v133;
  while (1)
  {
    v75 = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      goto LABEL_107;
    }

    if (v75 >= v72)
    {
      break;
    }

    v19 = *(v69 + 8 * v75);
    ++v73;
    if (v19)
    {
      v73 = v75;
      goto LABEL_48;
    }
  }

  v109 = (v123)(v74);
  v110 = -1 << *(v68 + 32);
  v111 = ~v110;
  v112 = *(v68 + 64);
  v113 = -v110;
  if (v113 < 64)
  {
    v114 = ~(-1 << v113);
  }

  else
  {
    v114 = -1;
  }

  *&v143 = v68;
  *(&v143 + 1) = v69;
  v144 = v111;
  *&v145 = v114 & v112;
  *(&v145 + 1) = closure #2 in NavigationHostingControllerCache_UIKit._viewControllers<A>(forEntering:isBorrowing:request:insert:);
  *&v146 = 0;
  *(&v146 + 1) = 0xF000000000000007;
  v147 = 0u;
  v148 = 0u;
  specialized FlattenSequence.Iterator.next()(v109);
  if (v115)
  {
    v116 = v115;
    v117 = MEMORY[0x1E6981910];
    v118 = MEMORY[0x1E6981900];
    do
    {
      [v116 didMoveToParentViewController_];
      v119 = *&v116[direct field offset for UIHostingController.host];
      static ViewGraphRootValues.all.getter();
      _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, v117, v118, type metadata accessor for _UIHostingView);
      lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
      a1 = v135;
      ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

      specialized FlattenSequence.Iterator.next()(v120);
      v116 = v121;
    }

    while (v121);
  }

  v142[2] = v145;
  v142[3] = v146;
  v142[4] = v147;
  v142[5] = v148;
  v142[0] = v143;
  v142[1] = v144;
  outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v142, type metadata accessor for FlattenSequence<LazyMapSequence<[UINavigationController : Set<NavigationStackHostingController<AnyView>>].Values, Set<NavigationStackHostingController<AnyView>>>>.Iterator);
LABEL_102:
  outlined destroy of NavigationHostingControllerCache_UIKit.Source(&v149);
}

uint64_t ListCoreDataSource.selectionValue(forRowAt:respectSelectionDisabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a6;
  v32 = a3;
  v30 = a1;
  v31 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v28 = *(v9 - 8);
  v29 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
  v20 = &v27 - v19;
  v21 = *(v12 - 8);
  (*(v21 + 16))(&v27 - v19, v30, v12, v18);
  *&v20[*(TupleTypeMetadata2 + 48)] = v31;
  (*(v14 + 16))(v16, v20, TupleTypeMetadata2);
  v22 = *&v16[*(TupleTypeMetadata2 + 48)];
  v35 = a4;
  v36 = a5;
  v37 = v32;
  ListCoreDataSource.visitRowAt<A>(_:visitor:)(v16, v22, partial apply for closure #1 in ListCoreDataSource.selectionValue(forRowAt:respectSelectionDisabled:), v34, a4, AssociatedTypeWitness, a5, partial apply for closure #1 in ListCoreDataSource.visitRowAt<A>(_:visitor:), v11, _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF);
  (*(v14 + 8))(v20, TupleTypeMetadata2);
  (*(v21 + 8))(v16, v12);
  v23 = *(AssociatedTypeWitness - 8);
  v24 = *(v23 + 48);
  if (v24(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(v23 + 56))(v33, 1, 1, AssociatedTypeWitness);
    result = v24(v11, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      return (*(v28 + 8))(v11, v29);
    }
  }

  else
  {
    v26 = v33;
    (*(v23 + 32))(v33, v11, AssociatedTypeWitness);
    return (*(v23 + 56))(v26, 0, 1, AssociatedTypeWitness);
  }

  return result;
}

uint64_t closure #1 in ListCoreDataSource.selectionValue(forRowAt:respectSelectionDisabled:)@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  v14 = type metadata accessor for _RowVisitationContext(0, a2, a3, v13);
  _RowVisitationContext.selectionValue(respectSelectionDisabled:)(a1, v14, v12);
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 48);
  if (v16(v12, 1, AssociatedTypeWitness) == 1)
  {
    (*(v15 + 56))(a4, 1, 1, AssociatedTypeWitness);
    result = v16(v12, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      return (*(v10 + 8))(v12, v9);
    }
  }

  else
  {
    (*(v15 + 32))(a4, v12, AssociatedTypeWitness);
    return (*(v15 + 56))(a4, 0, 1, AssociatedTypeWitness);
  }

  return result;
}

uint64_t outlined init with copy of SwipeActions.Configuration?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t _s7SwiftUI12SwipeActionsO13ConfigurationVSgWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  _s7SwiftUI32_EnvironmentKeyTransformModifierVyAA14SymbolVariantsVGMaTm_0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

id specialized UIHostingController.configurePreferredTransition(pushingFrom:enablePreemption:)(void *a1, char a2)
{
  v3 = v2;
  v6 = *&v2[direct field offset for UIHostingController.host];
  _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_1(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
  lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
  v7 = v6;
  ViewGraphRootValueUpdater._preferenceValue<A>(_:)();

  if (*(&v37 + 1) == 1)
  {
    outlined destroy of MatchedTransitionIdentifier?(&v35, &lazy cache variable for type metadata for _NavigationTransitionOutputs?, &type metadata for _NavigationTransitionOutputs);
LABEL_7:
    [v2 setPreferredTransition_];
    return swift_unknownObjectWeakAssign();
  }

  outlined init with copy of _NavigationTransitionOutputs.Content(&v35, &aBlock);
  outlined destroy of _NavigationTransitionOutputs(&v35);
  if (!v41)
  {
    goto LABEL_7;
  }

  v8 = aBlock;
  v35 = v39;
  v36 = v40;
  v37 = v41;
  v9 = [objc_allocWithZone(MEMORY[0x1E69DD320]) init];
  [v9 set:a2 & 1 popPreemptsPushInSwiftUIEnabled:?];
  result = [a1 view];
  if (result)
  {
    v11 = result;
    MEMORY[0x1EEE9AC00](result);
    v33 = v8;
    v34 = &v35;
    v13 = _sSo6UIViewC7SwiftUIE20firstDescendantWhereyABSgSbABXEF05_sSo6a2C7B103UIE15firstDescendant6ofType9predicatexSgxm_SbxXEtlFSbABXEfU_AC34MatchedTransitionSourceMarkingViewC_Tg5xSbRi_zRi0_zlyAC0stuvW0CIsgnd_Tf1cn_nTf4ng_n(v12, partial apply for specialized closure #1 in UIView._findMatchedTransitionSource<A>(id:in:), v32);

    type metadata accessor for MatchedTransitionSourceMarkingView();
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewControllerTransition, 0x1E69DD260);
      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v17 = swift_allocObject();
      v17[2] = v14;
      v17[3] = v15;
      v17[4] = v16;
      v18 = v13;
      v19 = v9;

      v20 = static UIViewControllerTransition.zoom(options:sourceViewProvider:)();
    }

    else
    {

      MEMORY[0x1EEE9AC00](v21);
      v33 = &v35;
      v34 = v8;
      v22 = UIViewController.firstDescendantWhere(_:)(partial apply for specialized closure #1 in UIViewController.findMatchedTransitionBarButtonItem<A>(id:in:), v32);
      if (v22)
      {
        v23 = v22;
        v18 = specialized UIViewController.matchingBarButton<A>(id:in:)(&v35, v8);
      }

      else
      {
        v18 = 0;
      }

      v24 = objc_opt_self();
      v25 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v27 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v28 = swift_allocObject();
      v28[2] = v25;
      v28[3] = v26;
      v28[4] = v27;
      *&v41 = partial apply for specialized closure #2 in UIHostingController.configurePreferredTransition(pushingFrom:enablePreemption:);
      *(&v41 + 1) = v28;
      aBlock = MEMORY[0x1E69E9820];
      *&v39 = 1107296256;
      *(&v39 + 1) = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomRotorSearchPredicate) -> (@owned UIAccessibilityCustomRotorItemResult?);
      v40 = &block_descriptor_70_0;
      v29 = _Block_copy(&aBlock);
      v30 = v9;

      v20 = [v24 _zoomWithOptions_sourceItemProvider_];
      _Block_release(v29);
    }

    [v3 setPreferredTransition_];

    specialized UIHostingController.configureBackgroundForZoom()(v31);
    return outlined destroy of AnyHashable(&v35);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18BFEFF40()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18BFEFF78()
{

  return swift_deallocObject();
}

uint64_t sub_18BFEFFC0()
{

  return swift_deallocObject();
}

uint64_t outlined destroy of IndexPath?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s10Foundation9IndexPathVSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for Text.Style?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s10Foundation9IndexPathVSgWOhTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  _s10Foundation9IndexPathVSgMaTm_1(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t _s10Foundation9IndexPathVSgWOhTm_2(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  _s10Foundation9IndexPathVSgMaTm_2(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined destroy of MenuVisitor(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI11MenuVisitor33_0F42DDF44729C152DA9EC9F6F4D00118LLVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance NavigationTransitionKey@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
    v2 = a1;
  }

  return outlined init with copy of _NavigationTransitionOutputs?(&static NavigationTransitionKey.defaultValue, v2);
}

uint64_t @objc ListCollectionViewCellBase.updateConfiguration(using:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a1;
  ListCollectionViewCellBase.updateConfiguration(using:)(v7);

  return (*(v5 + 8))(v7, v4);
}

void ListCollectionViewCellBase.updateConfiguration(using:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = type metadata accessor for UIListContentConfiguration();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIListContentConfiguration?(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v14 = *((v5 & v4) + 0xA8);
  v15 = *((v5 & v4) + 0xB0);
  v17 = type metadata accessor for ListCollectionViewCellBase(0, v14, v15, v16);
  v60.receiver = v2;
  v60.super_class = v17;
  objc_msgSendSuper2(&v60, sel__bridgedUpdateConfigurationUsingState_, isa);

  v54 = a1;
  v18 = UICellConfigurationState.isEditing.getter();
  v19 = direct field offset for ListCollectionViewCellBase.wasEditing;
  if ((v18 & 1) != *(v2 + direct field offset for ListCollectionViewCellBase.wasEditing))
  {
    v20 = *(v2 + direct field offset for ListCollectionViewCellBase.host);
    if (v20)
    {
      v21 = v20;
      v22 = v15;
      v23 = _UIHostingView.base.getter();

      UIHostingViewBase.allowUIKitAnimationsForNextUpdate.setter();
      v15 = v22;
    }

    *(v2 + v19) = UICellConfigurationState.isEditing.getter() & 1;
  }

  MEMORY[0x18D00DDF0]();
  v24 = type metadata accessor for UICellConfigurationState();
  v56 = v24;
  v57 = MEMORY[0x1E69DC0B0];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(aBlock);
  (*(*(v24 - 8) + 16))(boxed_opaque_existential_1, v54, v24);
  UIListContentConfiguration.updated(for:)();
  (*(v7 + 8))(v9, v6);
  __swift_destroy_boxed_opaque_existential_1(aBlock);
  (*(v7 + 56))(v12, 0, 1, v6);
  v26 = direct field offset for ListCollectionViewCellBase.lastConfiguration;
  swift_beginAccess();
  outlined assign with take of UIListContentConfiguration?(v12, v2 + v26);
  swift_endAccess();
  v27 = direct field offset for ListCollectionViewCellBase.host;
  v28 = *(v2 + direct field offset for ListCollectionViewCellBase.host);
  if (v28)
  {
    v29 = type metadata accessor for ModifiedContent();
    v30 = *(v15 + 8);
    v31 = lazy protocol witness table accessor for type CollectionViewCellModifier and conformance CollectionViewCellModifier();
    v59[0] = v30;
    v59[1] = v31;
    v32 = v28;
    WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v29, v59);
    v35 = type metadata accessor for _UIHostingView(0, v29, WitnessTable, v34);
    swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v35);
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

    v36 = *(v2 + v27);
    if (v36)
    {
      v37 = v36;
      v38 = [v2 contentView];
      [v38 bounds];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;

      [v37 setFrame_];
    }
  }

  v47 = UICellConfigurationState.isSwiped.getter();
  v48 = direct field offset for ListCollectionViewCellBase.wasSwiped;
  if (v47 & 1) != *(v2 + direct field offset for ListCollectionViewCellBase.wasSwiped) && (ListCollectionViewCellBase.canUpdateSwipeActionPresentationBinding.getter())
  {
    *(v2 + v48) = UICellConfigurationState.isSwiped.getter() & 1;
    if (UICellConfigurationState.isSwiped.getter())
    {
      ListCollectionViewCellBase.updateSwipeActionPresentationBinding()();
    }

    else
    {
      v49 = swift_allocObject();
      *(v49 + 16) = v2;
      v50 = objc_opt_self();
      v51 = swift_allocObject();
      *(v51 + 16) = partial apply for closure #1 in ListCollectionViewCellBase.updateConfiguration(using:);
      *(v51 + 24) = v49;
      v57 = partial apply for closure #1 in UIKitSearchScopeCoordinating<>.onChange(selectedScope:);
      v58 = v51;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      v56 = &block_descriptor_56;
      v52 = _Block_copy(aBlock);
      v2;

      LODWORD(v50) = [v50 _addCompletion_];
      _Block_release(v52);
      if (!v50)
      {
        ListCollectionViewCellBase.updateSwipeActionPresentationBinding()();
      }
    }
  }
}

uint64_t sub_18BFF0910()
{

  return swift_deallocObject();
}

uint64_t sub_18BFF0948()
{

  return swift_deallocObject();
}

uint64_t outlined assign with take of UIListContentConfiguration?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UIBackgroundConfiguration?(0, &lazy cache variable for type metadata for UIListContentConfiguration?, MEMORY[0x1E69DC118]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of _NavigationTransitionOutputs?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _NavigationTransitionOutputs?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static ResolvedPicker._makeViewList(view:inputs:)@<X0>(int *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  lazy protocol witness table accessor for type PickerStyleInput and conformance PickerStyleInput();
  PropertyList.subscript.getter();
  if (v11[0])
  {
    LODWORD(v11[0]) = v9;
    return (*(v11[1] + 16))(v11);
  }

  else
  {
    LODWORD(v11[0]) = v9;
    return static ResolvedPicker.makeViewList<A>(view:style:inputs:)(v11, 0, a2, a3, &type metadata for DefaultPickerStyle, a4, &protocol witness table for DefaultPickerStyle, a5);
  }
}

Class @objc ListCollectionViewCellBase.preferredLayoutAttributesFitting(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6.super.isa = ListCollectionViewCellBase.preferredLayoutAttributesFitting(_:)(v4).super.isa;

  return v6.super.isa;
}

UICollectionViewLayoutAttributes __swiftcall ListCollectionViewCellBase.preferredLayoutAttributesFitting(_:)(UICollectionViewLayoutAttributes a1)
{
  v4 = *MEMORY[0x1E69E7D40] & *v2;
  if (one-time initialization token for isEnabledInProcessEnv != -1)
  {
    swift_once();
  }

  if (static ListUsesUIHostingConfigurationFeature.isEnabledInProcessEnv)
  {
    v5 = type metadata accessor for ListCollectionViewCellBase(0, *(v4 + 168), *(v4 + 176), v1);
    v23.receiver = v2;
    v23.super_class = v5;
    v6 = objc_msgSendSuper2(&v23, sel_preferredLayoutAttributesFittingAttributes_, a1.super.isa);

    return v6;
  }

  else
  {
    v8 = [v2 effectiveUserInterfaceLayoutDirection];
    [v2 _contentViewInset];
    v13 = v12;
    v15 = v14;
    if (v8 == 1)
    {
      v16 = v10;
    }

    else
    {
      v16 = v11;
    }

    if (v8 == 1)
    {
      v17 = v11;
    }

    else
    {
      v17 = v10;
    }

    v18 = type metadata accessor for ListCollectionViewCellBase(0, *(v4 + 168), *(v4 + 176), v9);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ListCollectionViewCellBase<A>, v18);
    v20 = PlatformListViewBase<>.hostPreferredLayoutAttributes(fitting:insets:)(a1.super.isa, v18, WitnessTable, v13, v17, v15, v16);
    if (PlatformListViewBase.useUniformSizing.getter(v18, WitnessTable))
    {
      [v20 size];
      v21 = direct field offset for ListCollectionViewCellBase.lastConfiguration;
      swift_beginAccess();
      v22 = type metadata accessor for UIListContentConfiguration();
      if ((*(*(v22 - 8) + 48))(v2 + v21, 1, v22))
      {
        swift_endAccess();
        [v2 directionalLayoutMargins];
      }

      else
      {
        UIListContentConfiguration.directionalLayoutMargins.getter();
        swift_endAccess();
      }

      CGSize.outset(by:)();
      [v20 setSize_];
    }

    return v20;
  }
}

void *PlatformListViewBase<>.hostPreferredLayoutAttributes(fitting:insets:)(void *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  [a1 size];
  v12 = [a1 representedElementKind];
  if (!v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_10;
  }

  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v16)
  {
LABEL_10:

    goto LABEL_11;
  }

  if (v14 == v17 && v16 == v18)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = [a1 respondsToSelector_];
  if (v21)
  {
    v21 = [a1 _listLayoutItemMaxWidth];
    if (v46 > 0.0)
    {
      v21 = [a1 _listLayoutItemMaxWidth];
    }
  }

LABEL_11:
  MEMORY[0x1EEE9AC00](v21);
  CGRect.inset(by:layoutDirection:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = *(a3 + 80);
  v29 = v28(a2, a3);

  if (v29 != v8)
  {
    v30 = v28(a2, a3);
    UIView.invalidateRendererHostSafeAreaInsets()();
  }

  [a1 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionViewLayoutAttributes, 0x1E69DC858);
  swift_dynamicCast();
  (*(a3 + 128))(a2, a3);
  if ((v31 & 1) != 0 || (v32 = (*(a3 + 56))(a2, a3)) == 0)
  {
    PlatformListViewBase<>.hostSizeThatFits(width:)(a2, a3, v27);
    v42 = v44;
    v43 = v45;
  }

  else
  {
    v33 = v32;
    v53 = v25;
    v34 = v23;
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
    v36 = v35;
    v38 = v37;
    _UIHostingView.viewGraph.getter(v39);
    GraphHost.environment.getter();

    EnvironmentValues.pixelLength.getter();
    v41 = v40;

    if (v41 == 1.0)
    {
      v42 = ceil(v36);
      v43 = ceil(v38);
    }

    else
    {
      v42 = v41 * ceil(v36 / v41);
      v43 = v41 * ceil(v38 / v41);
    }

    v23 = v34;
    v25 = v53;
  }

  v47 = v28(a2, a3);

  if (v47 != v8)
  {
    v48 = v28(a2, a3);
    [v48 setFrame_];
  }

  EdgeInsets.vertical.getter();
  v50 = v43 + v49;
  EdgeInsets.horizontal.getter();
  [v54 setSize_];
  return v54;
}

uint64_t outlined destroy of MatchedTransitionIdentifier?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for PresentationOptionsPreference?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for PresentationOptionsPreference?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id protocol witness for PlatformListViewBase.hostParentView.getter in conformance ListTableViewHeaderFooter()
{
  v1 = [v0 contentView];

  return v1;
}

void UIView.invalidateRendererHostSafeAreaInsets()()
{
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v0)
  {
    swift_getObjectType();
    v1 = v0;
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }

  v2 = [v0 subviews];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    v4 = __CocoaSet.count.getter();
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v4; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x18D00E9C0](i, v3);
    }

    else
    {
      v6 = *(v3 + 8 * i + 32);
    }

    v7 = v6;
    UIView.invalidateRendererHostSafeAreaInsets()();
  }

LABEL_13:
}

uint64_t type metadata completion function for _PickerValue(void *a1)
{
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for PickerStyleConfiguration(319, a1[3], a1[5], v3);
    if (v5 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

void specialized UIHostingController.didChangeRequiredBridges(from:to:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  _s2os6LoggerVSgMaTm_2(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v80[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v80[-1] - v11;
  if (a2 == a1)
  {
    return;
  }

  MEMORY[0x18D00ABE0](v10);
  v13 = *&v3[direct field offset for UIHostingController.requiredBridges];
  v14 = (v13 ^ a1) & a1;
  v15 = (v13 ^ a1) & v13;
  if ((v14 & 2) != 0)
  {
    v22 = direct field offset for UIHostingController.keyboardShortcutBridge;
    v23 = *&v3[direct field offset for UIHostingController.keyboardShortcutBridge];
    if (v23)
    {
      v24 = *&v3[direct field offset for UIHostingController.host];
      v25 = v23;
      v26 = v24;
      UIHostingViewBase.viewGraph.getter();

      GraphHost.removePreference<A>(_:)();

      v25[OBJC_IVAR____TtC7SwiftUI22KeyboardShortcutBridge_isObservingPreferences] = 0;

      v27 = *&v3[v22];
      if (v27)
      {
        _s7SwiftUI22EnvironmentPropertyKeyVyAA018InheritedColorSeedE0VGMaTm_0(0, &lazy cache variable for type metadata for UIHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for UIHostingController);
        v80[3] = v28;
        v80[4] = &protocol witness table for UIHostingController<A>;
        v80[0] = v3;
        v29 = v27;
        v30 = v3;
        KeyboardShortcutBridge.flushKeyCommands(_:)(v80);

        outlined destroy of KeyboardShortcutSource?(v80, &lazy cache variable for type metadata for KeyboardShortcutSource?, type metadata accessor for KeyboardShortcutSource);
        v23 = *&v3[v22];
      }

      else
      {
        v23 = 0;
      }
    }

    *&v3[v22] = 0;

    if ((v14 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    v31 = direct field offset for UIHostingController.navigationBridge;
    if (*&v3[direct field offset for UIHostingController.navigationBridge])
    {
      v32 = *&v3[direct field offset for UIHostingController.host];
      UIHostingViewBase.viewGraph.getter();

      GraphHost.removePreference<A>(_:)();
    }

    *&v3[v31] = 0;
    goto LABEL_17;
  }

  if ((v15 & 2) != 0)
  {
    v16 = [objc_allocWithZone(type metadata accessor for KeyboardShortcutBridge()) init];
    v17 = *&v3[direct field offset for UIHostingController.keyboardShortcutBridge];
    *&v3[direct field offset for UIHostingController.keyboardShortcutBridge] = v16;
  }

  if ((v14 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v15 & 4) == 0)
  {
    goto LABEL_18;
  }

  type metadata accessor for NavigationBridge_PhoneTV();
  swift_allocObject();
  v18 = UIKitNavigationBridge.init()();
  v19 = direct field offset for UIHostingController.navigationBridge;
  *&v3[direct field offset for UIHostingController.navigationBridge] = v18;

  v20 = direct field offset for UIHostingController.host;
  *(v18 + 24) = lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
  swift_unknownObjectWeakAssign();

  if (!*&v3[v19])
  {
    __break(1u);
    goto LABEL_63;
  }

  v21 = *&v3[v20];
  UIHostingViewBase.viewGraph.getter();

  GraphHost.addPreference<A>(_:)();
LABEL_17:

LABEL_18:
  if (v14)
  {
    static Log.toolbar.getter();
    v35 = type metadata accessor for Logger();
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(v12, 1, v35) == 1)
    {
      outlined destroy of KeyboardShortcutSource?(v12, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
    }

    else
    {
      v37 = v3;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v79 = v15;
        v15 = v41;
        *v40 = 138412290;
        *(v40 + 4) = v37;
        *v41 = v37;
        v42 = v37;
        _os_log_impl(&dword_18BD4A000, v38, v39, "Removed toolbar bridge from %@", v40, 0xCu);
        outlined destroy of NSObject?(v15);
        v43 = v15;
        LOBYTE(v15) = v79;
        MEMORY[0x18D0110E0](v43, -1, -1);
        MEMORY[0x18D0110E0](v40, -1, -1);
      }

      (*(v36 + 8))(v12, v35);
    }

    v44 = direct field offset for UIHostingController.toolbarBridge;
    v45 = *&v3[direct field offset for UIHostingController.toolbarBridge];
    if (v45)
    {
      v46 = *&v3[direct field offset for UIHostingController.host];
      UIHostingViewBase.viewGraph.getter();

      GraphHost.removePreference<A>(_:)();
      GraphHost.removePreference<A>(_:)();
      GraphHost.removePreference<A>(_:)();
      GraphHost.removePreference<A>(_:)();

      v45 = *&v3[v44];
    }

    *&v3[v44] = 0;
  }

  else if (v15)
  {
    static Log.toolbar.getter();
    v33 = type metadata accessor for Logger();
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v8, 1, v33) == 1)
    {
      outlined destroy of KeyboardShortcutSource?(v8, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
    }

    else
    {
      v51 = v3;
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v79 = v15;
        v15 = v55;
        *v54 = 138412290;
        *(v54 + 4) = v51;
        *v55 = v51;
        v56 = v51;
        _os_log_impl(&dword_18BD4A000, v52, v53, "Added toolbar bridge to %@", v54, 0xCu);
        outlined destroy of NSObject?(v15);
        v57 = v15;
        LOBYTE(v15) = v79;
        MEMORY[0x18D0110E0](v57, -1, -1);
        MEMORY[0x18D0110E0](v54, -1, -1);
      }

      (*(v34 + 8))(v8, v33);
    }

    _s7SwiftUI22EnvironmentPropertyKeyVyAA018InheritedColorSeedE0VGMaTm_0(0, &lazy cache variable for type metadata for ToolbarBridge<UIKitToolbarStrategy>, &type metadata for UIKitToolbarStrategy, &protocol witness table for UIKitToolbarStrategy, type metadata accessor for ToolbarBridge);
    v59 = [objc_allocWithZone(v58) init];
    v60 = direct field offset for UIHostingController.toolbarBridge;
    v61 = *&v3[direct field offset for UIHostingController.toolbarBridge];
    *&v3[direct field offset for UIHostingController.toolbarBridge] = v59;

    if (*&v3[v60])
    {
      v62 = *&v3[direct field offset for UIHostingController.host];
      UIHostingViewBase.viewGraph.getter();

      GraphHost.addPreference<A>(_:)();
      GraphHost.addPreference<A>(_:)();
      GraphHost.addPreference<A>(_:)();
      GraphHost.addPreference<A>(_:)();

      if ((v14 & 0x10) != 0)
      {
        goto LABEL_39;
      }

      goto LABEL_31;
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if ((v14 & 0x10) != 0)
  {
LABEL_39:
    v63 = direct field offset for UIHostingController.contentScrollViewBridge;
    if (*&v3[direct field offset for UIHostingController.contentScrollViewBridge])
    {
      v64 = *&v3[direct field offset for UIHostingController.host];
      UIHostingViewBase.viewGraph.getter();

      GraphHost.removePreference<A>(_:)();
    }

    *&v3[v63] = 0;
    goto LABEL_42;
  }

LABEL_31:
  if ((v15 & 0x10) == 0)
  {
    goto LABEL_43;
  }

  type metadata accessor for UIKitContentScrollViewBridge();
  v47 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v48 = MEMORY[0x1E69E7CC8];
  *(v47 + 24) = -1;
  *(v47 + 32) = v48;
  *(v47 + 40) = 0;
  *(v47 + 48) = 0x3FF0000000000000;
  v49 = direct field offset for UIHostingController.contentScrollViewBridge;
  *&v3[direct field offset for UIHostingController.contentScrollViewBridge] = v47;

  swift_unknownObjectWeakAssign();

  if (!*&v3[v49])
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v50 = *&v3[direct field offset for UIHostingController.host];
  UIHostingViewBase.viewGraph.getter();

  GraphHost.addPreference<A>(_:)();
LABEL_42:

LABEL_43:
  if ((v14 & 0x20) != 0)
  {
    v68 = direct field offset for UIHostingController.alwaysOnBridge;
    if (*&v3[direct field offset for UIHostingController.alwaysOnBridge])
    {
      v69 = *&v3[direct field offset for UIHostingController.host];
      UIHostingViewBase.viewGraph.getter();

      GraphHost.removePreference<A>(_:)();
    }

    *&v3[v68] = 0;
    goto LABEL_50;
  }

  if ((v15 & 0x20) != 0)
  {
    _s7SwiftUI22EnvironmentPropertyKeyVyAA018InheritedColorSeedE0VGMaTm_0(0, &lazy cache variable for type metadata for AlwaysOnBridge<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for AlwaysOnBridge);
    v65 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v65 + 44) = 0;
    *(v65 + 24) = 0;
    *(v65 + 32) = 0;
    *(v65 + 40) = 0;
    *(v65 + 48) = MEMORY[0x1E69E7CC0];
    v66 = direct field offset for UIHostingController.alwaysOnBridge;
    *&v3[direct field offset for UIHostingController.alwaysOnBridge] = v65;

    swift_unknownObjectWeakAssign();

    if (*&v3[v66])
    {
      v67 = *&v3[direct field offset for UIHostingController.host];
      UIHostingViewBase.viewGraph.getter();

      GraphHost.addPreference<A>(_:)();
LABEL_50:

      goto LABEL_51;
    }

LABEL_65:
    __break(1u);
    return;
  }

LABEL_51:
  if (v14 < 0)
  {
    v76 = direct field offset for UIHostingController.inspectorBridgeV5;
    v77 = *&v3[direct field offset for UIHostingController.inspectorBridgeV5];
    if (v77)
    {
      v78 = *&v3[direct field offset for UIHostingController.host];
      UIHostingViewBase.viewGraph.getter();

      GraphHost.removePreference<A>(_:)();
      GraphHost.removePreference<A>(_:)();

      v77 = *&v3[v76];
    }

    *&v3[v76] = 0;
  }

  else if ((v15 & 0x80) != 0)
  {
    _s7SwiftUI22EnvironmentPropertyKeyVyAA018InheritedColorSeedE0VGMaTm_0(0, &lazy cache variable for type metadata for UIKitInspectorBridgeV5<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for UIKitInspectorBridgeV5);
    v71 = [objc_allocWithZone(v70) init];
    v72 = direct field offset for UIHostingController.inspectorBridgeV5;
    v73 = *&v3[direct field offset for UIHostingController.inspectorBridgeV5];
    *&v3[direct field offset for UIHostingController.inspectorBridgeV5] = v71;
    v74 = v71;

    if (v74)
    {
      *&v74[direct field offset for SheetBridge.host + 8] = lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
      swift_unknownObjectWeakAssign();
    }

    if (*&v3[v72])
    {
      v75 = *&v3[direct field offset for UIHostingController.host];
      UIHostingViewBase.viewGraph.getter();

      GraphHost.addPreference<A>(_:)();
      GraphHost.addPreference<A>(_:)();
    }
  }

  static Update.end()();
}

{
  v3 = v2;
  _s2os6LoggerVSgMaTm_2(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v80[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v80[-1] - v11;
  if (a2 == a1)
  {
    return;
  }

  MEMORY[0x18D00ABE0](v10);
  v13 = *&v3[direct field offset for UIHostingController.requiredBridges];
  v14 = (v13 ^ a1) & a1;
  v15 = (v13 ^ a1) & v13;
  if ((v14 & 2) != 0)
  {
    v22 = direct field offset for UIHostingController.keyboardShortcutBridge;
    v23 = *&v3[direct field offset for UIHostingController.keyboardShortcutBridge];
    if (v23)
    {
      v24 = *&v3[direct field offset for UIHostingController.host];
      v25 = v23;
      v26 = v24;
      UIHostingViewBase.viewGraph.getter();

      GraphHost.removePreference<A>(_:)();

      v25[OBJC_IVAR____TtC7SwiftUI22KeyboardShortcutBridge_isObservingPreferences] = 0;

      v27 = *&v3[v22];
      if (v27)
      {
        type metadata accessor for UIHostingController<BridgedPresentation.RootView>(0, &lazy cache variable for type metadata for UIHostingController<BridgedPresentation.RootView>, type metadata accessor for UIHostingController);
        v80[3] = v28;
        v80[4] = &protocol witness table for UIHostingController<A>;
        v80[0] = v3;
        v29 = v27;
        v30 = v3;
        KeyboardShortcutBridge.flushKeyCommands(_:)(v80);

        outlined destroy of KeyboardShortcutSource?(v80, &lazy cache variable for type metadata for KeyboardShortcutSource?, type metadata accessor for KeyboardShortcutSource);
        v23 = *&v3[v22];
      }

      else
      {
        v23 = 0;
      }
    }

    *&v3[v22] = 0;

    if ((v14 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    v31 = direct field offset for UIHostingController.navigationBridge;
    if (*&v3[direct field offset for UIHostingController.navigationBridge])
    {
      v32 = *&v3[direct field offset for UIHostingController.host];
      UIHostingViewBase.viewGraph.getter();

      GraphHost.removePreference<A>(_:)();
    }

    *&v3[v31] = 0;
    goto LABEL_17;
  }

  if ((v15 & 2) != 0)
  {
    v16 = [objc_allocWithZone(type metadata accessor for KeyboardShortcutBridge()) init];
    v17 = *&v3[direct field offset for UIHostingController.keyboardShortcutBridge];
    *&v3[direct field offset for UIHostingController.keyboardShortcutBridge] = v16;
  }

  if ((v14 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v15 & 4) == 0)
  {
    goto LABEL_18;
  }

  type metadata accessor for NavigationBridge_PhoneTV();
  swift_allocObject();
  v18 = UIKitNavigationBridge.init()();
  v19 = direct field offset for UIHostingController.navigationBridge;
  *&v3[direct field offset for UIHostingController.navigationBridge] = v18;

  v20 = direct field offset for UIHostingController.host;
  *(v18 + 24) = lazy protocol witness table accessor for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>, &lazy cache variable for type metadata for _UIHostingView<BridgedPresentation.RootView>, type metadata accessor for _UIHostingView, protocol conformance descriptor for _UIHostingView<A>);
  swift_unknownObjectWeakAssign();

  if (!*&v3[v19])
  {
    __break(1u);
    goto LABEL_63;
  }

  v21 = *&v3[v20];
  UIHostingViewBase.viewGraph.getter();

  GraphHost.addPreference<A>(_:)();
LABEL_17:

LABEL_18:
  if (v14)
  {
    static Log.toolbar.getter();
    v35 = type metadata accessor for Logger();
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(v12, 1, v35) == 1)
    {
      outlined destroy of KeyboardShortcutSource?(v12, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
    }

    else
    {
      v37 = v3;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v79 = v15;
        v15 = v41;
        *v40 = 138412290;
        *(v40 + 4) = v37;
        *v41 = v37;
        v42 = v37;
        _os_log_impl(&dword_18BD4A000, v38, v39, "Removed toolbar bridge from %@", v40, 0xCu);
        outlined destroy of NSObject?(v15);
        v43 = v15;
        LOBYTE(v15) = v79;
        MEMORY[0x18D0110E0](v43, -1, -1);
        MEMORY[0x18D0110E0](v40, -1, -1);
      }

      (*(v36 + 8))(v12, v35);
    }

    v44 = direct field offset for UIHostingController.toolbarBridge;
    v45 = *&v3[direct field offset for UIHostingController.toolbarBridge];
    if (v45)
    {
      v46 = *&v3[direct field offset for UIHostingController.host];
      UIHostingViewBase.viewGraph.getter();

      GraphHost.removePreference<A>(_:)();
      GraphHost.removePreference<A>(_:)();
      GraphHost.removePreference<A>(_:)();
      GraphHost.removePreference<A>(_:)();

      v45 = *&v3[v44];
    }

    *&v3[v44] = 0;
  }

  else if (v15)
  {
    static Log.toolbar.getter();
    v33 = type metadata accessor for Logger();
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v8, 1, v33) == 1)
    {
      outlined destroy of KeyboardShortcutSource?(v8, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
    }

    else
    {
      v51 = v3;
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v79 = v15;
        v15 = v55;
        *v54 = 138412290;
        *(v54 + 4) = v51;
        *v55 = v51;
        v56 = v51;
        _os_log_impl(&dword_18BD4A000, v52, v53, "Added toolbar bridge to %@", v54, 0xCu);
        outlined destroy of NSObject?(v15);
        v57 = v15;
        LOBYTE(v15) = v79;
        MEMORY[0x18D0110E0](v57, -1, -1);
        MEMORY[0x18D0110E0](v54, -1, -1);
      }

      (*(v34 + 8))(v8, v33);
    }

    _s7SwiftUI22EnvironmentPropertyKeyVyAA018InheritedColorSeedE0VGMaTm_0(0, &lazy cache variable for type metadata for ToolbarBridge<UIKitToolbarStrategy>, &type metadata for UIKitToolbarStrategy, &protocol witness table for UIKitToolbarStrategy, type metadata accessor for ToolbarBridge);
    v59 = [objc_allocWithZone(v58) init];
    v60 = direct field offset for UIHostingController.toolbarBridge;
    v61 = *&v3[direct field offset for UIHostingController.toolbarBridge];
    *&v3[direct field offset for UIHostingController.toolbarBridge] = v59;

    if (*&v3[v60])
    {
      v62 = *&v3[direct field offset for UIHostingController.host];
      UIHostingViewBase.viewGraph.getter();

      GraphHost.addPreference<A>(_:)();
      GraphHost.addPreference<A>(_:)();
      GraphHost.addPreference<A>(_:)();
      GraphHost.addPreference<A>(_:)();

      if ((v14 & 0x10) != 0)
      {
        goto LABEL_39;
      }

      goto LABEL_31;
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if ((v14 & 0x10) != 0)
  {
LABEL_39:
    v63 = direct field offset for UIHostingController.contentScrollViewBridge;
    if (*&v3[direct field offset for UIHostingController.contentScrollViewBridge])
    {
      v64 = *&v3[direct field offset for UIHostingController.host];
      UIHostingViewBase.viewGraph.getter();

      GraphHost.removePreference<A>(_:)();
    }

    *&v3[v63] = 0;
    goto LABEL_42;
  }

LABEL_31:
  if ((v15 & 0x10) == 0)
  {
    goto LABEL_43;
  }

  type metadata accessor for UIKitContentScrollViewBridge();
  v47 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v48 = MEMORY[0x1E69E7CC8];
  *(v47 + 24) = -1;
  *(v47 + 32) = v48;
  *(v47 + 40) = 0;
  *(v47 + 48) = 0x3FF0000000000000;
  v49 = direct field offset for UIHostingController.contentScrollViewBridge;
  *&v3[direct field offset for UIHostingController.contentScrollViewBridge] = v47;

  swift_unknownObjectWeakAssign();

  if (!*&v3[v49])
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v50 = *&v3[direct field offset for UIHostingController.host];
  UIHostingViewBase.viewGraph.getter();

  GraphHost.addPreference<A>(_:)();
LABEL_42:

LABEL_43:
  if ((v14 & 0x20) != 0)
  {
    v68 = direct field offset for UIHostingController.alwaysOnBridge;
    if (*&v3[direct field offset for UIHostingController.alwaysOnBridge])
    {
      v69 = *&v3[direct field offset for UIHostingController.host];
      UIHostingViewBase.viewGraph.getter();

      GraphHost.removePreference<A>(_:)();
    }

    *&v3[v68] = 0;
    goto LABEL_50;
  }

  if ((v15 & 0x20) != 0)
  {
    type metadata accessor for UIHostingController<BridgedPresentation.RootView>(0, &lazy cache variable for type metadata for AlwaysOnBridge<BridgedPresentation.RootView>, type metadata accessor for AlwaysOnBridge);
    v65 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v65 + 44) = 0;
    *(v65 + 24) = 0;
    *(v65 + 32) = 0;
    *(v65 + 40) = 0;
    *(v65 + 48) = MEMORY[0x1E69E7CC0];
    v66 = direct field offset for UIHostingController.alwaysOnBridge;
    *&v3[direct field offset for UIHostingController.alwaysOnBridge] = v65;

    swift_unknownObjectWeakAssign();

    if (*&v3[v66])
    {
      v67 = *&v3[direct field offset for UIHostingController.host];
      UIHostingViewBase.viewGraph.getter();

      GraphHost.addPreference<A>(_:)();
LABEL_50:

      goto LABEL_51;
    }

LABEL_65:
    __break(1u);
    return;
  }

LABEL_51:
  if (v14 < 0)
  {
    v76 = direct field offset for UIHostingController.inspectorBridgeV5;
    v77 = *&v3[direct field offset for UIHostingController.inspectorBridgeV5];
    if (v77)
    {
      v78 = *&v3[direct field offset for UIHostingController.host];
      UIHostingViewBase.viewGraph.getter();

      GraphHost.removePreference<A>(_:)();
      GraphHost.removePreference<A>(_:)();

      v77 = *&v3[v76];
    }

    *&v3[v76] = 0;
  }

  else if ((v15 & 0x80) != 0)
  {
    type metadata accessor for UIHostingController<BridgedPresentation.RootView>(0, &lazy cache variable for type metadata for UIKitInspectorBridgeV5<BridgedPresentation.RootView>, type metadata accessor for UIKitInspectorBridgeV5);
    v71 = [objc_allocWithZone(v70) init];
    v72 = direct field offset for UIHostingController.inspectorBridgeV5;
    v73 = *&v3[direct field offset for UIHostingController.inspectorBridgeV5];
    *&v3[direct field offset for UIHostingController.inspectorBridgeV5] = v71;
    v74 = v71;

    if (v74)
    {
      *&v74[direct field offset for SheetBridge.host + 8] = lazy protocol witness table accessor for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>, &lazy cache variable for type metadata for _UIHostingView<BridgedPresentation.RootView>, type metadata accessor for _UIHostingView, protocol conformance descriptor for _UIHostingView<A>);
      swift_unknownObjectWeakAssign();
    }

    if (*&v3[v72])
    {
      v75 = *&v3[direct field offset for UIHostingController.host];
      UIHostingViewBase.viewGraph.getter();

      GraphHost.addPreference<A>(_:)();
      GraphHost.addPreference<A>(_:)();
    }
  }

  static Update.end()();
}

void PlatformListViewBase<>.hostSizeThatFits(width:)(uint64_t a1, uint64_t a2, double a3)
{
  v3 = (*(a2 + 56))();
  if (v3)
  {
    v4 = v3;
    _ProposedSize.init(width:height:)();
    v11 = v15;
    LOBYTE(v12) = v16;
    v13 = v17;
    v14 = v18;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    v5 = type metadata accessor for ModifiedContent();
    v10[0] = *(swift_getAssociatedConformanceWitness() + 8);
    v10[1] = swift_getAssociatedConformanceWitness();
    WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v10);
    v8 = type metadata accessor for _UIHostingView(0, v5, WitnessTable, v7);
    swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v8);
    v9 = ViewRendererHost.sizeThatFits(_:)();
    _UIHostingView.viewGraph.getter(v9);
    GraphHost.environment.getter();

    v11 = v15;
    v12 = v16;
    EnvironmentValues.pixelLength.getter();
  }
}

uint64_t static InlinePickerStyle._makeViewList<A>(value:inputs:)(int *a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  type metadata accessor for ResolvedPicker(255, a3, a4, a4);
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<SectionPickerStyle>, EmptyModifier>(255);
  v8 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier>(255);
  v9 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<ShouldUseListSectionInlinePickerStyle, PickerStyleWriter<SectionPickerStyle>, EmptyModifier>(255);
  v10 = type metadata accessor for ModifiedContent();
  type metadata accessor for PickerStyleWriter<SectionPickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<WheelPickerStyle>, &type metadata for WheelPickerStyle, &protocol witness table for WheelPickerStyle, type metadata accessor for PickerStyleWriter);
  v11 = type metadata accessor for ModifiedContent();
  v25 = v7;
  *v23 = &type metadata for InlinePickerStyle;
  *&v23[8] = a3;
  *&v23[16] = &protocol witness table for InlinePickerStyle;
  *&v23[24] = a4;
  type metadata accessor for _PickerValue(255, v23);
  type metadata accessor for _GraphValue();
  v12 = _GraphValue.value.getter();
  v13 = a2[1];
  *v23 = *a2;
  *&v23[16] = v13;
  v24 = a2[2];
  _GraphInputs.interfaceIdiom.getter();
  *v23 = v12;
  *&v23[8] = v22;
  v15 = type metadata accessor for InlinePickerStyle.Body(0, a3, a4, v14);
  swift_getWitnessTable(protocol conformance descriptor for InlinePickerStyle.Body<A>, v15);
  _GraphValue.init<A>(_:)();
  v21[0] = &protocol witness table for ResolvedPicker<A>;
  v21[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<SectionPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v16 = MEMORY[0x1E697E858];
  v20[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v21);
  v20[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v19[0] = swift_getWitnessTable(v16, v9, v20);
  v19[1] = lazy protocol witness table accessor for type StaticIf<ShouldUseListSectionInlinePickerStyle, PickerStyleWriter<SectionPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v18[0] = swift_getWitnessTable(v16, v10, v19);
  v18[1] = &protocol witness table for PickerStyleWriter<A>;
  swift_getWitnessTable(v16, v11, v18);
  return static View.makeDebuggableViewList(view:inputs:)();
}

void specialized UIHostingController.updateIncomingBoundsIfNeeded(navigationController:)(UINavigationController *a1)
{
  v3 = direct field offset for UIHostingController.host;
  [*(v1 + direct field offset for UIHostingController.host) bounds];
  v48.origin.x = 0.0;
  v48.origin.y = 0.0;
  v48.size.width = 0.0;
  v48.size.height = 0.0;
  if (!CGRectEqualToRect(v47, v48))
  {
    return;
  }

  v4 = [(UINavigationController *)a1 viewIfLoaded];
  if (v4)
  {
    v5 = v4;
    [v4 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = *(v1 + v3);
    x = v7;
    y = v9;
    width = v11;
    height = v13;
LABEL_4:

    [v14 setBounds_];
    return;
  }

  v19 = [(UINavigationController *)a1 splitViewController];
  if (v19)
  {
    v20 = v19;
    UISplitViewController.columnBounds(forNavController:)(&v45, a1);

    if (!v45.is_nil)
    {
      width = v45.value.size.width;
      height = v45.value.size.height;
      x = v45.value.origin.x;
      y = v45.value.origin.y;
      v14 = *(v1 + v3);
      goto LABEL_4;
    }
  }

  static RepresentableContextValues.current.getter();
  if (v40 < 2)
  {
    outlined consume of RepresentableContextValues?(v40, v41, v42, v43, v44);
    return;
  }

  outlined consume of RepresentableContextValues?(v21, v41, v42, v43, v44);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();

  if (Strong)
  {
    swift_beginAccess();
    v23 = swift_unknownObjectWeakLoadStrong();
    v24 = *(Strong + 208);

    if (v23)
    {
      v25 = v1;
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      v27 = ViewGraphDelegate.uiViewController.getter(ObjectType, v24);
      swift_unknownObjectRelease();
      if (v27)
      {
        v28 = [v27 splitViewController];
        if (v28)
        {
        }

        else
        {
          v29 = [v27 viewIfLoaded];
          if (v29)
          {
            v30 = v29;
            [v29 bounds];
            v32 = v31;
            v34 = v33;
            v36 = v35;
            v38 = v37;

            v39 = *(v25 + v3);
            [v39 setBounds_];

            goto LABEL_20;
          }
        }
      }

LABEL_20:
      swift_unknownObjectRelease();
    }
  }
}

void type metadata accessor for PickerStyleWriter<SectionPickerStyle>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<SectionPickerStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<SectionPickerStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MenuStyleContext>, MEMORY[0x1E697EA18]);
    type metadata accessor for PickerStyleWriter<SectionPickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<SectionPickerStyle>, &type metadata for SectionPickerStyle, &protocol witness table for SectionPickerStyle, type metadata accessor for PickerStyleWriter);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<SectionPickerStyle>, EmptyModifier>);
    }
  }
}

uint64_t specialized ListCollectionViewCellBase.hostingView<A>(_:willUpdate:)(void *a1)
{
  v2 = v1;
  v148 = a1;
  type metadata accessor for UICellConfigurationState?(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v129 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIListContentConfiguration?(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v131 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for UIListContentConfiguration.ImageProperties();
  v154 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v128 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v138 = &v121 - v9;
  v145 = type metadata accessor for UIListContentConfiguration.TextProperties.TextTransform();
  v153 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v144 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v143 = &v121 - v12;
  v155 = type metadata accessor for UIListContentConfiguration.TextProperties();
  v13 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v133 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v121 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v121 - v19;
  v156 = type metadata accessor for UIListContentConfiguration();
  v21 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v132 = &v121 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v134 = &v121 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v121 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v121 - v29;
  v31 = type metadata accessor for UICellConfigurationState();
  v140 = *(v31 - 8);
  v141 = v31;
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v121 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = [v1 _bridgedConfigurationState];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  v130 = v2;
  v36 = [v2 contentView];
  [v36 directionalLayoutMargins];
  v38 = v37;
  v40 = v39;

  ListCollectionViewCellBase.prominentConfigForContent(state:contentViewMargins:)(v34, v41, v38, v42, v40);
  v149 = v21;
  v43 = *(v21 + 16);
  v139 = v30;
  v125 = v43;
  v126 = v21 + 16;
  v43(v27, v30, v156);
  v146 = v34;
  v44 = UICellConfigurationState.traitCollection.getter();
  UIListContentConfiguration.textProperties.getter();
  v152 = v20;
  v45 = UIListContentConfiguration.TextProperties.font.getter();
  v46 = [v45 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection_];

  UIListContentConfiguration.textProperties.getter();
  UIListContentConfiguration.TextProperties.color.getter();
  v47 = *(v13 + 8);
  v127 = v17;
  v150 = v47;
  v151 = v13 + 8;
  v47(v17, v155);
  v142 = type metadata accessor for UIKitPlatformColorDefinition(0);
  v136 = Color.init(_platformColor:definition:)();
  v137 = v46;
  if (v46)
  {
    v48 = v46;
    v135 = Font.init(_:)();
  }

  else
  {
    v135 = 0;
  }

  v49 = v143;
  UIListContentConfiguration.TextProperties.transform.getter();
  v50 = v153;
  v51 = *(v153 + 104);
  v53 = v144;
  v52 = v145;
  v122 = *MEMORY[0x1E69DC108];
  v123 = v153 + 104;
  v121 = v51;
  v51(v144);
  v54 = MEMORY[0x18D001EE0](v49, v53);
  v55 = *(v50 + 8);
  v55(v53, v52);
  v153 = v50 + 8;
  v124 = v55;
  v55(v49, v52);
  v56 = v54 & 1;
  UIListContentConfiguration.imageToTextPadding.getter();
  v58 = v57;
  UIListContentConfiguration.directionalLayoutMargins.getter();
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v67 = v138;
  UIListContentConfiguration.imageProperties.getter();
  v68 = UIListContentConfiguration.ImageProperties.tintColor.getter();
  v69 = *(v154 + 8);
  v154 += 8;
  v138 = v69;
  (v69)(v67, v147);
  if (v68)
  {
    v70 = Color.init(_platformColor:definition:)();
    v71 = 1;
  }

  else
  {
    v71 = 0;
    v70 = 1;
  }

  outlined consume of ListItemTint?(1);
  UIListContentConfiguration._minimumHeight(for:)();
  v73 = v72;

  v150(v152, v155);
  v74 = *(v149 + 8);
  v74(v27, v156);
  *&v166 = v60;
  *(&v166 + 1) = v62;
  *&v167 = v64;
  *(&v167 + 1) = v66;
  *&v168 = v73;
  *(&v168 + 1) = v135;
  *&v169 = v136;
  BYTE8(v169) = v56;
  HIDWORD(v169) = *(v172 + 3);
  *(&v169 + 9) = v172[0];
  *&v170 = v58;
  *(&v170 + 1) = v70;
  v171 = v71;
  v75 = v148;
  v163 = v169;
  v164 = v170;
  v165 = v71;
  v160 = v166;
  v161 = v167;
  v162 = v168;
  type metadata accessor for EnvironmentPropertyKey<ProminentHeaderStylingKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ProminentHeaderStylingKey>, &type metadata for ProminentHeaderStylingKey, &protocol witness table for ProminentHeaderStylingKey, MEMORY[0x1E697FE38]);

  outlined init with copy of ListContentStyling(&v166, v158);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ProminentHeaderStylingKey> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();
  if (v75[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined destroy of ListContentStyling(&v166);

  if (one-time initialization token for isEnabledInProcessEnv != -1)
  {
    swift_once();
  }

  v76 = v156;
  if (static ListUsesUIHostingConfigurationFeature.isEnabledInProcessEnv)
  {
    v74(v139, v156);
    return (*(v140 + 8))(v146, v141);
  }

  else
  {
    v78 = direct field offset for ListCollectionViewCellBase.lastConfiguration;
    v79 = v130;
    swift_beginAccess();
    v80 = v79 + v78;
    v81 = v131;
    outlined init with copy of UIListContentConfiguration?(v80, v131, type metadata accessor for UIListContentConfiguration?);
    v82 = v149;
    if ((*(v149 + 48))(v81, 1, v76) == 1)
    {
      v74(v139, v76);
      (*(v140 + 8))(v146, v141);
      return _s5UIKit25UIBackgroundConfigurationVSgWOhTm_0(v81, type metadata accessor for UIListContentConfiguration?);
    }

    else
    {
      (*(v82 + 32))(v134, v81, v76);
      UIListContentConfiguration.directionalLayoutMargins.getter();
      v85 = v83;
      v86 = v84;
      if (v38 > v83)
      {
        v83 = v38;
      }

      if (v40 > v84)
      {
        v84 = v40;
      }

      if (v85 != v83 || v86 != v84)
      {
        UIListContentConfiguration.directionalLayoutMargins.setter();
      }

      v125(v132, v134, v76);
      v87 = UICellConfigurationState.traitCollection.getter();
      UIListContentConfiguration.textProperties.getter();
      v88 = UIListContentConfiguration.TextProperties.font.getter();
      v152 = v87;
      v89 = [v88 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection_];

      v90 = v127;
      UIListContentConfiguration.textProperties.getter();
      UIListContentConfiguration.TextProperties.color.getter();
      v150(v90, v155);
      v149 = Color.init(_platformColor:definition:)();
      if (v89)
      {
        v91 = v89;
        v137 = Font.init(_:)();
      }

      else
      {
        v137 = 0;
      }

      v92 = v143;
      UIListContentConfiguration.TextProperties.transform.getter();
      v94 = v144;
      v93 = v145;
      v121(v144, v122, v145);
      v95 = MEMORY[0x18D001EE0](v92, v94);
      v96 = v124;
      v124(v94, v93);
      v96(v92, v93);
      v97 = v95 & 1;
      UIListContentConfiguration.imageToTextPadding.getter();
      v99 = v98;
      UIListContentConfiguration.directionalLayoutMargins.getter();
      v101 = v100;
      v103 = v102;
      v105 = v104;
      v107 = v106;
      v108 = v128;
      UIListContentConfiguration.imageProperties.getter();
      v109 = UIListContentConfiguration.ImageProperties.tintColor.getter();
      (v138)(v108, v147);
      if (v109)
      {
        v110 = Color.init(_platformColor:definition:)();
        v111 = 1;
      }

      else
      {
        v111 = 0;
        v110 = 1;
      }

      outlined consume of ListItemTint?(1);
      v112 = v152;
      v113 = v132;
      UIListContentConfiguration._minimumHeight(for:)();
      v115 = v114;

      v150(v133, v155);
      v116 = v156;
      v74(v113, v156);
      *&v160 = v101;
      *(&v160 + 1) = v103;
      *&v161 = v105;
      *(&v161 + 1) = v107;
      *&v162 = v115;
      *(&v162 + 1) = v137;
      *&v163 = v149;
      BYTE8(v163) = v97;
      HIDWORD(v163) = *(v157 + 3);
      *(&v163 + 9) = v157[0];
      *&v164 = v99;
      *(&v164 + 1) = v110;
      v165 = v111;
      v158[2] = v162;
      v158[3] = v163;
      v158[4] = v164;
      v159 = v111;
      v158[0] = v160;
      v158[1] = v161;
      v118 = v140;
      v117 = v141;
      v119 = v129;
      v120 = v146;
      (*(v140 + 16))(v129, v146, v141);
      (*(v118 + 56))(v119, 0, 1, v117);
      EnvironmentValues.configureListStyling(_:state:)(v158, v119);
      _s5UIKit25UIBackgroundConfigurationVSgWOhTm_0(v119, type metadata accessor for UICellConfigurationState?);
      v74(v134, v116);
      v74(v139, v116);
      (*(v118 + 8))(v120, v117);
      return outlined destroy of ListContentStyling(&v160);
    }
  }
}

void specialized closure #1 in closure #1 in UIHostingController.performRender()(uint64_t a1)
{
  v1 = *(a1 + direct field offset for UIHostingController.host);
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
  lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
  v2 = v1;
  ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)();
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ToolbarStyleContext>, MEMORY[0x1E697F860]);
    type metadata accessor for PickerStyleWriter<SectionPickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<SegmentedPickerStyle>, &type metadata for SegmentedPickerStyle, &protocol witness table for SegmentedPickerStyle, type metadata accessor for PickerStyleWriter);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<ShouldUseListSectionInlinePickerStyle, PickerStyleWriter<SectionPickerStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<ShouldUseListSectionInlinePickerStyle, PickerStyleWriter<SectionPickerStyle>, EmptyModifier>)
  {
    type metadata accessor for PickerStyleWriter<SectionPickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<SectionPickerStyle>, &type metadata for SectionPickerStyle, &protocol witness table for SectionPickerStyle, type metadata accessor for PickerStyleWriter);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<ShouldUseListSectionInlinePickerStyle, PickerStyleWriter<SectionPickerStyle>, EmptyModifier>);
    }
  }
}

void ListCollectionViewCellBase.prominentConfigForContent(state:contentViewMargins:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v8 = type metadata accessor for UIListContentConfiguration.TextProperties();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30[-1] - v13;
  v15 = type metadata accessor for UIListContentConfiguration();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v30[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIListContentConfiguration.prominentInsetGroupedHeader()();
  v19 = type metadata accessor for UICellConfigurationState();
  v30[3] = v19;
  v30[4] = MEMORY[0x1E69DC0B0];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  (*(*(v19 - 8) + 16))(boxed_opaque_existential_1, a1, v19);
  UIListContentConfiguration.updated(for:)();
  (*(v16 + 8))(v18, v15);
  __swift_destroy_boxed_opaque_existential_1(v30);
  UIListContentConfiguration.directionalLayoutMargins.getter();
  v23 = v21;
  v24 = v22;
  if (v21 < a3)
  {
    v21 = a3;
  }

  if (v22 < a5)
  {
    v22 = a5;
  }

  if (v23 != v21 || v24 != v22)
  {
    UIListContentConfiguration.directionalLayoutMargins.setter();
  }

  UIListContentConfiguration.textProperties.getter();
  v25 = UIListContentConfiguration.TextProperties.font.getter();
  v26 = UICellConfigurationState.traitCollection.getter();
  v27 = [v25 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection_];

  if (v27)
  {
    if (v25 == v27)
    {
    }

    else
    {
      v28 = v27;
      UIListContentConfiguration.TextProperties.font.setter();
      (*(v9 + 16))(v11, v14, v8);
      UIListContentConfiguration.textProperties.setter();
    }

    (*(v9 + 8))(v14, v8);
  }

  else
  {
    (*(v9 + 8))(v14, v8);
  }
}

void type metadata accessor for EnvironmentPropertyKey<ProminentHeaderStylingKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI22EnvironmentPropertyKeyVyAA022ProminentHeaderStylingE0013_66E45C4729D0K18FEA1B1BE7BA175BEC8LLVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<SectionPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<SectionPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<SectionPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<SectionPickerStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<MenuStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MenuStyleContext>, MEMORY[0x1E697EA18]);
    v5[1] = &protocol witness table for PickerStyleWriter<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<SectionPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ProminentHeaderStylingKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ProminentHeaderStylingKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ProminentHeaderStylingKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<ProminentHeaderStylingKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ProminentHeaderStylingKey>, &type metadata for ProminentHeaderStylingKey, &protocol witness table for ProminentHeaderStylingKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ProminentHeaderStylingKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<ToolbarStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ToolbarStyleContext>, MEMORY[0x1E697F860]);
    v5[1] = &protocol witness table for PickerStyleWriter<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<ShouldUseListSectionInlinePickerStyle, PickerStyleWriter<SectionPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<ShouldUseListSectionInlinePickerStyle, PickerStyleWriter<SectionPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<ShouldUseListSectionInlinePickerStyle, PickerStyleWriter<SectionPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<ShouldUseListSectionInlinePickerStyle, PickerStyleWriter<SectionPickerStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ShouldUseListSectionInlinePickerStyle and conformance ShouldUseListSectionInlinePickerStyle();
    v5[1] = &protocol witness table for PickerStyleWriter<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<ShouldUseListSectionInlinePickerStyle, PickerStyleWriter<SectionPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ShouldUseListSectionInlinePickerStyle and conformance ShouldUseListSectionInlinePickerStyle()
{
  result = lazy protocol witness table cache variable for type ShouldUseListSectionInlinePickerStyle and conformance ShouldUseListSectionInlinePickerStyle;
  if (!lazy protocol witness table cache variable for type ShouldUseListSectionInlinePickerStyle and conformance ShouldUseListSectionInlinePickerStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ShouldUseListSectionInlinePickerStyle, &unk_1EFFB9260, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ShouldUseListSectionInlinePickerStyle and conformance ShouldUseListSectionInlinePickerStyle);
  }

  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(listInputs:) in conformance ShouldUseListSectionInlinePickerStyle(__int128 *a1)
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
  v4 = specialized static ShouldUseListSectionInlinePickerStyle.evaluate(inputs:)(&v6);
  v10[0] = v6;
  v10[1] = v7;
  v10[2] = v8;
  outlined destroy of _GraphInputs(v10);
  return v4 & 1;
}

uint64_t outlined init with copy of UIListContentConfiguration?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

Swift::Void __swiftcall UIKitNavigationController.pushViewController(_:animated:)(UIViewController *_, Swift::Bool animated)
{
  if (v2[OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_allowsNavigationControllerMutations])
  {
    v8.receiver = v2;
    v8.super_class = type metadata accessor for UIKitNavigationController();
    [(UIViewController *)&v8 pushViewController:_ animated:animated];
  }

  else
  {
    v5 = OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_platformNavigationPresentationStrategy;
    swift_beginAccess();
    outlined init with copy of _PresentationTransitionOutputs.Content(&v2[v5], &v13);
    if (v14)
    {
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v13, v10);
      v6 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      if ((*(v6 + 16))())
      {
        v7 = v12;
        __swift_project_boxed_opaque_existential_1(v10, v11);
        (*(v7 + 8))(_, animated);
      }

      __swift_destroy_boxed_opaque_existential_1(v10);
    }

    else
    {
      v9.receiver = v2;
      v9.super_class = type metadata accessor for UIKitNavigationController();
      [(UIViewController *)&v9 pushViewController:_ animated:animated];
    }
  }
}

uint64_t specialized static ShouldUseListSectionInlinePickerStyle.evaluate(inputs:)(__int128 *a1)
{
  if (static StyleContextAcceptsPredicate.evaluate(inputs:)())
  {
    v1 = &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2_3>;
    v2 = MEMORY[0x1E697E4F8];
    v3 = MEMORY[0x1E697E4F0];
    type metadata accessor for PickerStyleWriter<SectionPickerStyle>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2_3>, MEMORY[0x1E697E4F8], MEMORY[0x1E697E4F0], MEMORY[0x1E697EC20]);
    v4 = &lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v2_3> and conformance _SemanticFeature<A>;
LABEL_5:
    lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2_3> and conformance _SemanticFeature<A>(v4, v1, v2, v3);
    return static SemanticFeature.isEnabled.getter() & 1;
  }

  if (static StyleContextAcceptsPredicate.evaluate(inputs:)())
  {
    v1 = &lazy cache variable for type metadata for _SemanticFeature<Semantics_v3>;
    v2 = MEMORY[0x1E697DF30];
    v3 = MEMORY[0x1E697DF28];
    type metadata accessor for PickerStyleWriter<SectionPickerStyle>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v3>, MEMORY[0x1E697DF30], MEMORY[0x1E697DF28], MEMORY[0x1E697EC20]);
    v4 = &lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>;
    goto LABEL_5;
  }

  return 0;
}

void type metadata accessor for NavigationStackHostingController<AnyView>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

double specialized NavigationStackCoordinator.deferProgrammaticUpdateResetIfNeeded(shouldReset:navController:didReset:)(char a1, id a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = [a2 transitionCoordinator];
  if (v10)
  {
    if (a1)
    {
      *a3 = 1;
      v12 = v10;
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v15[4] = a5;
      v15[5] = v13;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 1107296256;
      v15[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
      v15[3] = a6;
      v14 = _Block_copy(v15);

      [v12 animateAlongsideTransition:0 completion:v14];
      _Block_release(v14);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t static SectionPickerStyle._makeViewList<A>(value:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  type metadata accessor for PickerStyleConfiguration.Content(255, a3, a4, a4);
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuPickerOptionSectionStyle>, EmptyModifier>(255);
  v7 = type metadata accessor for ModifiedContent();
  v9 = type metadata accessor for SectionPicker(255, a3, a4, v8);
  v18[0] = &protocol witness table for PickerStyleConfiguration<A>.Content;
  v18[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuPickerOptionSectionStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  swift_getWitnessTable(MEMORY[0x1E697E858], v7, v18);
  swift_getWitnessTable(protocol conformance descriptor for SectionPicker<A>, v9);
  v10 = type metadata accessor for GroupElementsOfContent();
  v11 = type metadata accessor for Group();
  v16 = v6;
  v17[0] = &type metadata for SectionPickerStyle;
  v17[1] = a3;
  v17[2] = &protocol witness table for SectionPickerStyle;
  v17[3] = a4;
  type metadata accessor for _PickerValue(255, v17);
  type metadata accessor for _GraphValue();
  LODWORD(v17[0]) = _GraphValue.value.getter();
  v13 = type metadata accessor for SectionPickerStyle.Body(0, a3, a4, v12);
  swift_getWitnessTable(protocol conformance descriptor for SectionPickerStyle.Body<A>, v13);
  _GraphValue.init<A>(_:)();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FE48], v10);
  swift_getWitnessTable(MEMORY[0x1E6981600], v11, &WitnessTable);
  return static View.makeDebuggableViewList(view:inputs:)();
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1)
{
  v2 = v1;
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<Int, [ObjectIdentifier]>);
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  specialized _NativeDictionary._delete(at:)(v8, v7);
  *v2 = v7;
  return v9;
}

void specialized _NativeDictionary.copy()(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 56) + 8 * v18) = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }
}

{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 56) + 8 * v15) = v18)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      v18 = *(*(v3 + 56) + 8 * v15);
      *(*(v5 + 48) + 8 * v15) = *(*(v3 + 48) + 8 * v15);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }
}

{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + v18) = *(*(v3 + 48) + v18);
        *(*(v5 + 56) + 8 * v18) = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }
}

{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }
}

{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 56) + 8 * v18) = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }
}

double CellHostingView.hostContainerSafeArea.getter(uint64_t a1)
{
  static Semantics.v4.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    static EdgeInsets.zero.getter();
  }

  else
  {
    _UIHostingView.hostContainerSafeArea.getter();
    return 0.0;
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuPickerOptionSectionStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuPickerOptionSectionStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<MenuStyleContext>();
    type metadata accessor for SectionStyleModifier<MenuPickerOptionSectionStyle>(255, &lazy cache variable for type metadata for SectionStyleModifier<MenuPickerOptionSectionStyle>, lazy protocol witness table accessor for type MenuPickerOptionSectionStyle and conformance MenuPickerOptionSectionStyle, &type metadata for MenuPickerOptionSectionStyle, type metadata accessor for SectionStyleModifier);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuPickerOptionSectionStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for SectionStyleModifier<MenuPickerOptionSectionStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void _s7SwiftUI20SectionStyleModifierVyAA016MenuPickerOptioncD0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void CellHostingView.hostKeyboardHeight.getter(uint64_t a1)
{
  static Semantics.v4.getter();
  v1 = isLinkedOnOrAfter(_:)();
  if ((v1 & 1) == 0)
  {

    _UIHostingView.hostKeyboardHeight.getter(v1);
  }
}

unint64_t lazy protocol witness table accessor for type MenuPickerOptionSectionStyle and conformance MenuPickerOptionSectionStyle()
{
  result = lazy protocol witness table cache variable for type MenuPickerOptionSectionStyle and conformance MenuPickerOptionSectionStyle;
  if (!lazy protocol witness table cache variable for type MenuPickerOptionSectionStyle and conformance MenuPickerOptionSectionStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MenuPickerOptionSectionStyle, &type metadata for MenuPickerOptionSectionStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MenuPickerOptionSectionStyle and conformance MenuPickerOptionSectionStyle);
  }

  return result;
}

uint64_t type metadata completion function for SectionPicker(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for PickerStyleConfiguration(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t protocol witness for ViewGraphFeature.modifyViewInputs(inputs:graph:) in conformance ItemHostingViewGraph(uint64_t *a1)
{
  lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
  PropertyList.subscript.getter();
  return PropertyList.subscript.setter();
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuPickerOptionSectionStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuPickerOptionSectionStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuPickerOptionSectionStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuPickerOptionSectionStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<MenuStyleContext> and conformance StyleContextAcceptsPredicate<A>();
    v5[1] = &protocol witness table for SectionStyleModifier<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuPickerOptionSectionStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StyleContextAcceptsPredicate<MenuStyleContext> and conformance StyleContextAcceptsPredicate<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<MenuStyleContext> and conformance StyleContextAcceptsPredicate<A>;
  if (!lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<MenuStyleContext> and conformance StyleContextAcceptsPredicate<A>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<MenuStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MenuStyleContext>, MEMORY[0x1E697EA18], MEMORY[0x1E69808E8]);
    result = swift_getWitnessTable(MEMORY[0x1E69808F0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<MenuStyleContext> and conformance StyleContextAcceptsPredicate<A>);
  }

  return result;
}

double PlatformItemListGenerator.itemList.getter()
{
  if (*(v0 + 104) != *MEMORY[0x1E698D3F8])
  {
    AGGraphGetValue();
  }

  return result;
}

uint64_t SectionPickerStyle.Body.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v23[0] = &type metadata for SectionPickerStyle;
  v23[1] = a2;
  v23[2] = &protocol witness table for SectionPickerStyle;
  v23[3] = a3;
  v6 = type metadata accessor for _PickerValue(0, v23);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v22 - v7;
  SectionPickerStyle.Body.base.getter(a2, a3, v22 - v7);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  v10 = type metadata accessor for PickerStyleConfiguration(0, a2, a3, v9);
  (*(*(v10 - 8) + 8))(v8, v10);
  v12 = type metadata accessor for PickerStyleConfiguration.Content(0, a2, a3, v11);
  v13 = lazy protocol witness table accessor for type MenuPickerOptionSectionStyle and conformance MenuPickerOptionSectionStyle();
  View.sectionStyle<A, B>(_:in:)(v13, v14, v12, &type metadata for MenuPickerOptionSectionStyle, MEMORY[0x1E697EA18], &protocol witness table for PickerStyleConfiguration<A>.Content, MEMORY[0x1E697EA10], v15);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  *(v16 + 32) = v5;
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuPickerOptionSectionStyle>, EmptyModifier>(255);
  v17 = type metadata accessor for ModifiedContent();
  v19 = type metadata accessor for SectionPicker(0, a2, a3, v18);
  v20 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuPickerOptionSectionStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v22[0] = &protocol witness table for PickerStyleConfiguration<A>.Content;
  v22[1] = v20;
  swift_getWitnessTable(MEMORY[0x1E697E858], v17, v22);
  swift_getWitnessTable(protocol conformance descriptor for SectionPicker<A>, v19);
  return Group.init<A, B>(subviews:transform:)();
}

uint64_t storeEnumTagSinglePayload for OrnamentDynamicScaleBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DragConfiguration.OperationsWithinApp(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[4])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t SectionPickerStyle.Body.base.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8[0] = &type metadata for SectionPickerStyle;
  v8[1] = a2;
  v8[2] = &protocol witness table for SectionPickerStyle;
  v8[3] = a3;
  v5 = type metadata accessor for _PickerValue(0, v8);
  Value = AGGraphGetValue();
  return (*(*(v5 - 8) + 16))(a4, Value, v5);
}

uint64_t _PickerValue.Init2.value.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = a6;
  v25 = a4;
  v9 = type metadata accessor for PickerStyleConfiguration(0, a3, a5, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  v14 = type metadata accessor for ResolvedPicker(0, a3, a5, v13);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v24 - v15;
  v17 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  (*(v17 + 16))(v20, Value, a2);
  _PickerValue.Init2.base.getter(a3, v22, a5, v16);
  (*(v10 + 32))(v12, v16, v9);
  return _PickerValue.init(style:configuration:)(v20, v12, a2, a3, v25, a5, v24);
}

uint64_t storeEnumTagSinglePayload for ListContentStyling(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ListContentStyling(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t InlinePickerStyle.Body.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v46 = a1;
  v47 = a3;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v45 = type metadata accessor for PickerStyleConfiguration(0, v4, v5, a2);
  v43 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v41 = &v37 - v6;
  v51 = &type metadata for InlinePickerStyle;
  *&v52 = v4;
  v37 = v4;
  v38 = v5;
  *(&v52 + 1) = &protocol witness table for InlinePickerStyle;
  v53 = v5;
  v7 = type metadata accessor for _PickerValue(0, &v51);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v37 - v8;
  v11 = type metadata accessor for ResolvedPicker(0, v4, v5, v10);
  v39 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<SectionPickerStyle>, EmptyModifier>(255);
  v14 = type metadata accessor for ModifiedContent();
  v40 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier>(255);
  v17 = type metadata accessor for ModifiedContent();
  v42 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37 - v18;
  type metadata accessor for StaticIf<ShouldUseListSectionInlinePickerStyle, PickerStyleWriter<SectionPickerStyle>, EmptyModifier>(255);
  v20 = type metadata accessor for ModifiedContent();
  v44 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v37 - v21;
  LODWORD(v51) = *v3;
  v52 = *(v3 + 8);
  InlinePickerStyle.Body.base.getter(v46, v9);
  v23 = v41;
  (*(v43 + 32))(v41, v9, v45);
  v25 = ResolvedPicker.init(configuration:)(v23, v37, v38, v24, v13);
  View.pickerStyle<A, B>(_:in:)(v25, v26, v11, &type metadata for SectionPickerStyle, MEMORY[0x1E697EA18], &protocol witness table for ResolvedPicker<A>, MEMORY[0x1E697EA10], v16);
  (*(v39 + 8))(v13, v11);
  v27 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<SectionPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v50[0] = &protocol witness table for ResolvedPicker<A>;
  v50[1] = v27;
  v28 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v14, v50);
  View.pickerStyle<A, B>(_:in:)(WitnessTable, v30, v14, &type metadata for SegmentedPickerStyle, MEMORY[0x1E697F860], WitnessTable, MEMORY[0x1E697F858], v19);
  (*(v40 + 8))(v16, v14);
  v31 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v49[0] = WitnessTable;
  v49[1] = v31;
  v32 = swift_getWitnessTable(v28, v17, v49);
  ShouldUseListSectionInlinePickerStyle = lazy protocol witness table accessor for type ShouldUseListSectionInlinePickerStyle and conformance ShouldUseListSectionInlinePickerStyle();
  View.pickerStyle<A, B>(_:if:)(ShouldUseListSectionInlinePickerStyle, v17, &type metadata for SectionPickerStyle, v32, ShouldUseListSectionInlinePickerStyle, v22);
  (*(v42 + 8))(v19, v17);
  ShouldUseListSectionInlinePicker = lazy protocol witness table accessor for type StaticIf<ShouldUseListSectionInlinePickerStyle, PickerStyleWriter<SectionPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v48[0] = v32;
  v48[1] = ShouldUseListSectionInlinePicker;
  v35 = swift_getWitnessTable(v28, v20, v48);
  View.pickerStyle<A>(_:)(v35, v20, &type metadata for WheelPickerStyle, v35);
  return (*(v44 + 8))(v22, v20);
}

uint64_t InlinePickerStyle.Body.base.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v8[0] = &type metadata for InlinePickerStyle;
  v8[1] = v3;
  v8[2] = &protocol witness table for InlinePickerStyle;
  v8[3] = v4;
  v5 = type metadata accessor for _PickerValue(0, v8);
  Value = AGGraphGetValue();
  return (*(*(v5 - 8) + 16))(a2, Value, v5);
}

uint64_t _PickerValue.Init2.base.getter@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v6 = type metadata accessor for ResolvedPicker(0, a2, a4, a3);
  Value = AGGraphGetValue();
  v8 = *(*(v6 - 8) + 16);

  return v8(a5, Value, v6);
}

uint64_t Picker.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v73 = a3;
  v5 = a1[6];
  v6 = a1[3];
  v7 = type metadata accessor for PickerStyleConfiguration(0, v6, v5, a2);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v50 - v8;
  v62 = type metadata accessor for ResolvedPicker(0, v6, v5, v10);
  v71 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v50 - v11;
  v13 = type metadata accessor for PickerStyleConfiguration.Label(255, v6, v5, v12);
  v58 = a1[2];
  v14 = v58;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PickerStyleConfiguration<A>.Label, v13);
  v59 = a1[5];
  v93 = v13;
  v94 = v14;
  v95 = WitnessTable;
  v96 = v59;
  type metadata accessor for StaticSourceWriter(255, &v93);
  v57 = type metadata accessor for ModifiedContent();
  v72 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v50 - v15;
  v17 = type metadata accessor for PickerStyleConfiguration.Content(255, v6, v5, v16);
  v66 = v17;
  v18 = a1[4];
  v67 = swift_getWitnessTable(protocol conformance descriptor for PickerStyleConfiguration<A>.Content, v17);
  v19 = a1[7];
  v51 = v18;
  v52 = v19;
  v93 = v17;
  v94 = v18;
  v95 = v67;
  v96 = v19;
  type metadata accessor for StaticSourceWriter(255, &v93);
  v54 = type metadata accessor for ModifiedContent();
  v70 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v50 - v20;
  v22 = type metadata accessor for PickerStyleConfiguration.CurrentValueLabel(255, v6, v5, v21);
  v63 = v22;
  v65 = swift_getWitnessTable(protocol conformance descriptor for PickerStyleConfiguration<A>.CurrentValueLabel, v22);
  v93 = v22;
  v94 = MEMORY[0x1E6981910];
  v95 = v65;
  v96 = MEMORY[0x1E6981900];
  type metadata accessor for OptionalSourceWriter(255, &v93);
  v23 = type metadata accessor for ModifiedContent();
  v68 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v53 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v60 = &v50 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v61 = &v50 - v28;
  v29 = v3;

  PickerStyleConfiguration.init(selection:)(v30, v6, v5, v31, v9);
  v32 = v64;
  ResolvedPicker.init(configuration:)(v9, v6, v5, v33, v64);
  *&v34 = v58;
  *(&v34 + 1) = v6;
  *&v35 = v18;
  *(&v35 + 1) = v59;
  v74 = v35;
  v75 = v34;
  v85 = v34;
  v86 = v35;
  v50 = v5;
  v36 = v52;
  v87 = v5;
  v88 = v52;
  v89 = v29;
  v37 = v56;
  v38 = v62;
  View.viewAlias<A, B>(_:_:)(v13, partial apply for closure #1 in Picker.body.getter, v84, v62, v13, v58, &protocol witness table for ResolvedPicker<A>);
  (*(v71 + 8))(v32, v38);
  v80[1] = v75;
  v80[2] = v74;
  v81 = v5;
  v82 = v36;
  v83 = v29;
  v92[0] = &protocol witness table for ResolvedPicker<A>;
  v92[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v39 = MEMORY[0x1E697E858];
  v40 = v57;
  v41 = swift_getWitnessTable(MEMORY[0x1E697E858], v57, v92);
  v42 = v55;
  View.viewAlias<A, B>(_:_:)(v66, partial apply for closure #2 in Picker.body.getter, v80, v40, v66, v51, v41);
  (*(v72 + 8))(v37, v40);
  v76[1] = v75;
  v76[2] = v74;
  v77 = v50;
  v78 = v36;
  v79 = v29;
  v91[0] = v41;
  v91[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v43 = v54;
  v44 = swift_getWitnessTable(v39, v54, v91);
  v45 = v53;
  View.optionalViewAlias<A, B>(_:_:)(v63, partial apply for closure #3 in Picker.body.getter, v76, v43, v63, MEMORY[0x1E6981910], v44, v65, MEMORY[0x1E6981900]);
  (*(v70 + 8))(v42, v43);
  v90[0] = v44;
  v90[1] = &protocol witness table for OptionalSourceWriter<A, B>;
  swift_getWitnessTable(v39, v23, v90);
  v46 = v60;
  ModifiedContent<>.accessibility()(v23, v60);
  v47 = *(v68 + 8);
  v47(v45, v23);
  v48 = v61;
  static ViewBuilder.buildExpression<A>(_:)();
  v47(v46, v23);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v47)(v48, v23);
}

void type metadata accessor for StyleContextAcceptsPredicate<SidebarStyleContext>()
{
  if (!lazy cache variable for type metadata for StyleContextAcceptsPredicate<SidebarStyleContext>)
  {
    v0 = type metadata accessor for StyleContextAcceptsPredicate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SidebarStyleContext>);
    }
  }
}

uint64_t PickerStyleConfiguration.init(selection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = type metadata accessor for PickerStyleConfiguration(0, a2, a3, a4);
  *(a5 + *(v7 + 40)) = 1;
  type metadata accessor for Binding();
  v8 = type metadata accessor for Array();

  swift_getWitnessTable(MEMORY[0x1E69E6340], v8);
  result = Binding.init<A>(flattening:)();
  *(a5 + *(v7 + 36)) = a1;
  return result;
}

uint64_t ResolvedPicker.init(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = type metadata accessor for PickerStyleConfiguration(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 32);

  return v8(a5, a1, v7);
}

uint64_t closure #1 in Picker.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = v6;
  v13[1] = v7;
  v13[2] = v8;
  v13[3] = v9;
  v13[4] = v10;
  v13[5] = v11;
  type metadata accessor for Picker(0, v13);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v3 + 8))(v5, a2);
}

uint64_t *initializeWithCopy for WheelPicker(uint64_t *a1, uint64_t *a2, uint64_t a3)
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
  v13 = ((v10 + 16) & ~v10) + *(v9 + 48) + 7;
  v14 = (a1 + v13) & 0xFFFFFFFFFFFFFFF8;
  v15 = (a2 + v13) & 0xFFFFFFFFFFFFFFF8;
  *v14 = *v15;
  *(v14 + 8) = *(v15 + 8);

  return a1;
}

void type metadata accessor for _ViewModifier_Content<CollectionViewCellModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<CollectionViewCellModifier>)
  {
    lazy protocol witness table accessor for type CollectionViewCellModifier and conformance CollectionViewCellModifier();
    v1 = type metadata accessor for _ViewModifier_Content();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ViewModifier_Content<CollectionViewCellModifier>);
    }
  }
}

uint64_t destroy for WheelPicker(void *a1, uint64_t a2)
{
  v3 = a1 + 15;

  (*(*(*(a2 + 16) - 8) + 8))(((v3 & 0xFFFFFFFFFFFFFFF8) + *(*(*(a2 + 16) - 8) + 80) + 8) & ~*(*(*(a2 + 16) - 8) + 80));
}

uint64_t closure #2 in Picker.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = v8;
  v15[1] = v9;
  v15[2] = v10;
  v15[3] = v11;
  v15[4] = v12;
  v15[5] = v13;
  type metadata accessor for Picker(0, v15);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v5 + 8))(v7, a4);
}

void type metadata accessor for InvertedViewInputPredicate<Solarium>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

double partial apply for closure #3 in Picker.body.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 32);
  v5[0] = *(v1 + 16);
  v5[1] = v3;
  v5[2] = *(v1 + 48);
  *a1 = *(v2 + *(type metadata accessor for Picker(0, v5) + 76));

  return result;
}

uint64_t lazy protocol witness table accessor for type StyleContextAcceptsPredicate<SidebarStyleContext> and conformance StyleContextAcceptsPredicate<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t _PickerValue.init(style:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v17[0] = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v13 = *(type metadata accessor for _PickerValue(0, v17) + 52);
  v15 = type metadata accessor for PickerStyleConfiguration(0, a4, a6, v14);
  return (*(*(v15 - 8) + 32))(a7 + v13, a2, v15);
}

uint64_t initializeWithCopy for _PickerValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v6 + 48);
  v10 = *(v8 + 16);
  v11 = v8 + 16;
  v12 = *(v8 + 80);
  v13 = (v12 | 7) + v9;
  v15 = ((v13 + a2) & ~(v12 | 7));
  v14 = ((v13 + a1) & ~(v12 | 7));
  *v14 = *v15;
  v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = v16 + v12 + 8;
  v19 = v17 + v12 + 8;

  v10(v18 & ~v12, v19 & ~v12, v7);
  v20 = *(v11 + 48) + ((v12 + 16) & ~v12) + 7;
  v21 = (v14 + v20) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v15 + v20) & 0xFFFFFFFFFFFFFFF8;
  *v21 = *v22;
  *(v21 + 8) = *(v22 + 8);

  return a1;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ListCoreCellEnvironment(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
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

uint64_t destroy for _PickerValue(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56);
  v6 = *(a2 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + a1 + (v8 | 7)) & ~(v8 | 7);

  (*(v7 + 8))((v8 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8, v6);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance ListCoreCellEnvironment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type ListCoreCellEnvironment and conformance ListCoreCellEnvironment();

  return static EnvironmentModifier._makeInputs(modifier:inputs:)();
}

uint64_t View.pickerStyle<A, B>(_:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v38 = a6;
  v34 = a2;
  v35 = a7;
  v36 = a8;
  v37 = a3;
  v10 = *(a5 - 8);
  v32 = a1;
  v33 = v10;
  MEMORY[0x1EEE9AC00](a1);
  v31 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PickerStyleWriter(0, v17, v18, v17);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v31 - v21;
  type metadata accessor for StyleContextAcceptsPredicate();
  v23 = type metadata accessor for StaticIf();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v31 - v26;
  (*(v13 + 16))(v16, v32, a4, v25);
  (*(v13 + 32))(v22, v16, a4);
  v28 = v33;
  v29 = v31;
  (*(v33 + 16))(v31, v34, a5);
  v40 = a5;
  v41 = v29;
  v39 = v35;
  ViewModifier.requiring<A>(_:)();
  (*(v20 + 8))(v22, v19);
  (*(v28 + 8))(v29, a5);
  MEMORY[0x18D00A570](v27, v37, v23, v38);
  return (*(v24 + 8))(v27, v23);
}

unint64_t lazy protocol witness table accessor for type ListCoreCellEnvironment and conformance ListCoreCellEnvironment()
{
  result = lazy protocol witness table cache variable for type ListCoreCellEnvironment and conformance ListCoreCellEnvironment;
  if (!lazy protocol witness table cache variable for type ListCoreCellEnvironment and conformance ListCoreCellEnvironment)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListCoreCellEnvironment, &type metadata for ListCoreCellEnvironment, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListCoreCellEnvironment and conformance ListCoreCellEnvironment);
  }

  return result;
}

uint64_t View.pickerStyle<A, B>(_:if:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v26 = a5;
  v24[2] = a6;
  v25 = a2;
  v24[1] = a7;
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PickerStyleWriter(0, v13, v14, v12);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v24 - v16;
  v18 = type metadata accessor for StaticIf();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = v24 - v21;
  (*(v9 + 16))(v11, a1, a4, v20);
  (*(v9 + 32))(v17, v11, a4);
  StaticIf<>.init<>(_:then:)();
  MEMORY[0x18D00A570](v22, v25, v18, v26);
  return (*(v19 + 8))(v22, v18);
}

double specialized static AccessibilityViewModifier._makeView(modifier:inputs:body:)@<D0>(unsigned int a1@<W0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, unint64_t *a4@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t a6@<X6>, double *a7@<X8>)
{
  v134 = *MEMORY[0x1E69E9840];
  v101 = *(a2 + 6);
  v102 = *(a2 + 14);
  *&v109 = *(a2 + 6);
  DWORD2(v109) = *(a2 + 14);
  outlined init with copy of PreferencesInputs(&v101, v130);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    outlined destroy of PreferencesInputs(&v101);
    v11 = a2[3];
    v12 = a2[4];
    v118 = a2[2];
    v119 = v11;
    v120 = v12;
    v121 = *(a2 + 20);
    v13 = a2[1];
    v116 = *a2;
    v117 = v13;
    v90 = *(a2 + 1);
    v91 = *a2;
    v92 = *(a2 + 2);
    v93 = *(a2 + 6);
    v14 = *(a2 + 9);
    v88 = *(a2 + 5);
    v89 = *(a2 + 28);
    if ((v14 & 0x10) != 0)
    {
      v26 = a2[2];
      v27 = a2[4];
      v111 = a2[3];
      *v112 = v27;
      *&v112[16] = *(a2 + 20);
      v28 = a2[1];
      v109 = *a2;
      v110[0] = v28;
      v110[1] = v26;
      outlined init with copy of _ViewInputs(a2, v130);
      _ViewInputs.animatedPosition()();
      v15 = _ViewInputs.containerPosition.setter();
    }

    else
    {
      v15 = outlined init with copy of _ViewInputs(a2, &v109);
    }

    v111 = v119;
    *v112 = v120;
    *&v112[16] = v121;
    v109 = v116;
    v110[0] = v117;
    v110[1] = v118;
    a3(&v122, v15, &v109);
    v86 = v14;
    v87 = a7;
    if ((v14 & 0x10) != 0)
    {
      *&v109 = v101;
      DWORD2(v109) = v102;
      if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
      {
        v29 = v122;
        *&v109 = v122;
        v80 = LODWORD(v123);
        DWORD2(v109) = LODWORD(v123);
        v30 = PreferencesOutputs.subscript.getter();
        v31 = *MEMORY[0x1E698D3F8];
        v82 = *MEMORY[0x1E698D3F8];
        if ((v30 & 0x100000000) == 0)
        {
          v31 = v30;
        }
      }

      else
      {
        v31 = *MEMORY[0x1E698D3F8];
        v29 = v122;
        v80 = LODWORD(v123);
        v82 = *MEMORY[0x1E698D3F8];
      }

      v84 = v31;
      _DisplayList_Identity.init()();
      v78 = v109;
      v42 = a2[2];
      v43 = a2[4];
      v111 = a2[3];
      *v112 = v43;
      *&v112[16] = *(a2 + 20);
      v44 = a2[1];
      v109 = *a2;
      v110[0] = v44;
      v110[1] = v42;
      *v130 = v78;
      _ViewInputs.pushIdentity(_:)();
      PropertyList.subscript.getter();
      v76 = v129[0];
      *&v124 = v91;
      *(&v124 + 1) = v90;
      *&v125[0] = v92;
      *(v125 + 12) = v89;
      DWORD2(v125[0]) = v93;
      DWORD1(v125[1]) = v14;
      *(&v125[1] + 1) = v88;
      _GraphInputs.interfaceIdiom.getter();
      PropertyList.subscript.getter();
      v45 = a2[2];
      v46 = a2[4];
      v111 = a2[3];
      *v112 = v46;
      *&v112[16] = *(a2 + 20);
      v47 = a2[1];
      v109 = *a2;
      v110[0] = v47;
      v110[1] = v45;
      swift_beginAccess();
      v75 = CachedEnvironment.animatedSize(for:)();
      swift_endAccess();
      v48 = a2[2];
      v49 = a2[4];
      v111 = a2[3];
      *v112 = v49;
      *&v112[16] = *(a2 + 20);
      v50 = a2[1];
      v109 = *a2;
      v110[0] = v50;
      v110[1] = v48;
      v74 = _ViewInputs.animatedPosition()();
      v51 = a2[2];
      v52 = a2[4];
      v111 = a2[3];
      *v112 = v52;
      *&v112[16] = *(a2 + 20);
      v53 = a2[1];
      v109 = *a2;
      v110[0] = v53;
      v110[1] = v51;
      v54 = _ViewInputs.containerPosition.getter();
      v73 = *(v92 + 16);
      *v130 = v29;
      *&v130[8] = v80;
      v55 = PreferencesOutputs.subscript.getter();
      if ((v55 & 0x100000000) != 0)
      {
        v56 = v82;
      }

      else
      {
        v56 = v55;
      }

      *v130 = v29;
      *&v130[8] = v80;
      v57 = PreferencesOutputs.subscript.getter();
      if ((v57 & 0x100000000) != 0)
      {
        v58 = v82;
      }

      else
      {
        v58 = v57;
      }

      type metadata accessor for AccessibilityViewModifierAccessor<AccessibilityContainerModifier>(0, a4, a5, a6, type metadata accessor for AccessibilityViewModifierAccessor);
      *v130 = v78;
      v130[4] = v76 & 1;
      *&v130[8] = v103;
      v130[24] = v100;
      *&v130[32] = v59;
      *&v130[40] = a1;
      *&v130[44] = v75;
      *&v131 = __PAIR64__(v54, v74);
      *(&v131 + 1) = __PAIR64__(v56, v73);
      *&v132 = __PAIR64__(v58, v84);
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type DisplayListTransform and conformance DisplayListTransform();
      Attribute.init<A>(body:value:flags:update:)();
      v130[0] = 0;
      PreferencesOutputs.subscript.setter();
    }

    v60 = v122;
    v61 = LODWORD(v123);
    *&v109 = v101;
    DWORD2(v109) = v102;
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
    {
      *&v109 = v60;
      DWORD2(v109) = v61;
      v62 = PreferencesOutputs.subscript.getter();
      v63 = *MEMORY[0x1E698D3F8];
      v81 = *MEMORY[0x1E698D3F8];
      if ((v62 & 0x100000000) == 0)
      {
        v63 = v62;
      }
    }

    else
    {
      v63 = *MEMORY[0x1E698D3F8];
      v81 = *MEMORY[0x1E698D3F8];
    }

    v85 = v63;
    v83 = *(a2 + 18);
    v64 = a2[2];
    v65 = a2[4];
    v111 = a2[3];
    *v112 = v65;
    *&v112[16] = *(a2 + 20);
    v66 = a2[1];
    v109 = *a2;
    v110[0] = v66;
    v110[1] = v64;
    v77 = _ViewInputs.position.getter();
    v79 = *(a2 + 15);
    v67 = a2[3];
    *&v130[32] = a2[2];
    v131 = v67;
    v132 = a2[4];
    v133 = *(a2 + 20);
    v68 = a2[1];
    *v130 = *a2;
    *&v130[16] = v68;
    _ViewInputs.scrapeableParentID.getter();
    *&v103 = v91;
    *(&v103 + 1) = v90;
    v104 = v92;
    v105 = v93;
    v106 = v89;
    v107 = v86;
    v108 = v88;
    _GraphInputs.interfaceIdiom.getter();
    swift_beginAccess();
    v69 = *(v92 + 16);
    *&v109 = v60;
    DWORD2(v109) = v61;
    v70 = PreferencesOutputs.subscript.getter();
    if ((v70 & 0x100000000) != 0)
    {
      v71 = v81;
    }

    else
    {
      v71 = v70;
    }

    type metadata accessor for AccessibilityViewModifierAccessor<AccessibilityContainerModifier>(0, a4, a5, a6, type metadata accessor for AccessibilityViewModifierAccessor);
    *&v109 = v72;
    *(&v109 + 1) = a1;
    LODWORD(v110[0]) = v99;
    *(v110 + 8) = v100;
    *(&v110[1] + 1) = __PAIR64__(v83, v77);
    *&v111 = __PAIR64__(v69, v79);
    *(&v111 + 1) = __PAIR64__(v85, v93);
    *v112 = v71;
    memset(&v112[8], 0, 152);
    v113 = (v86 & 0x20) == 0;
    v114 = 0;
    swift_unknownObjectWeakInit();
    v115 = 0;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type PropertiesTransform and conformance PropertiesTransform();
    Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of PropertiesTransform(&v109);
    AGGraphSetFlags();
    LOBYTE(v124) = 0;
    PreferencesOutputs.subscript.setter();
    v125[1] = v118;
    v126 = v119;
    v127 = v120;
    v128 = v121;
    v124 = v116;
    v125[0] = v117;
    outlined destroy of _ViewInputs(&v124);
    *v87 = v122;
    result = v123;
    v87[1] = v123;
  }

  else
  {
    *&v109 = v101;
    DWORD2(v109) = v102;
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) != 0 && (*&v109 = v101, DWORD2(v109) = v102, (PreferencesInputs.contains<A>(_:includeHostPreferences:)()))
    {
      lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
      PropertyList.subscript.getter();
      v16 = (v109 >> 4) & 1;
    }

    else
    {
      v16 = 0;
    }

    v96 = *(a2 + 1);
    v98 = *a2;
    v17 = *(a2 + 2);
    v103 = *(a2 + 24);
    v104 = *(a2 + 5);
    v18 = a2[3];
    v110[1] = a2[2];
    v19 = a2[4];
    v111 = v18;
    *v112 = v19;
    *&v112[16] = *(a2 + 20);
    v20 = a2[1];
    v109 = *a2;
    v110[0] = v20;
    if (v16)
    {
      outlined init with copy of _ViewInputs(a2, v130);
      lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
      PropertyList.subscript.getter();
      *v130 &= ~0x10u;
      v21 = PropertyList.subscript.setter();
      v22 = a2[3];
      *&v130[32] = a2[2];
      v131 = v22;
      v132 = a2[4];
      v133 = *(a2 + 20);
      v23 = a2[1];
      *v130 = *a2;
      *&v130[16] = v23;
      a3(&v100, v21, v130);
      *v130 = v100;
      *&v130[8] = DWORD2(v100);
      PreferencesOutputs.subscript.getter();
      v24 = swift_beginAccess();
      MEMORY[0x1EEE9AC00](v24);
      *v130 = v101;
      *&v130[8] = v102;
      MEMORY[0x1EEE9AC00](v25);
      PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
    }

    else
    {
      v32 = outlined init with copy of _ViewInputs(a2, v130);
      v33 = a2[3];
      *&v130[32] = a2[2];
      v131 = v33;
      v132 = a2[4];
      v133 = *(a2 + 20);
      v34 = a2[1];
      *v130 = *a2;
      *&v130[16] = v34;
      a3(&v100, v32, v130);
      outlined destroy of PreferencesInputs(&v101);
    }

    v35 = a2[3];
    *&v130[32] = a2[2];
    v131 = v35;
    v132 = a2[4];
    v133 = *(a2 + 20);
    v36 = a2[1];
    *v130 = *a2;
    *&v130[16] = v36;
    *&v124 = 1024;
    if (_ViewInputs.requestsPlatformItem(for:)())
    {
      *v130 = v100;
      *&v130[8] = DWORD2(v100);
      PreferencesOutputs.subscript.getter();
      swift_beginAccess();
      v37 = *(v17 + 16);
      type metadata accessor for PropertyList.Tracker();
      swift_allocObject();
      v38 = PropertyList.Tracker.init()();
      *v130 = v37;
      *&v130[8] = v38;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type PlatformAccessibilityEnv and conformance PlatformAccessibilityEnv();
      Attribute.init<A>(body:value:flags:update:)();

      *v130 = v98;
      *&v130[8] = v96;
      *&v130[16] = v17;
      *&v130[24] = v103;
      *&v130[40] = v104;
      _GraphInputs.platformSystem.getter();
      v39 = a2[3];
      v125[1] = a2[2];
      v126 = v39;
      v127 = a2[4];
      v128 = *(a2 + 20);
      v40 = a2[1];
      v124 = *a2;
      v125[0] = v40;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type PlatformAccessibilityTransform and conformance PlatformAccessibilityTransform();
      Attribute.init<A>(body:value:flags:update:)();
      lazy protocol witness table accessor for type AccessibilityPlatformItemTransform and conformance AccessibilityPlatformItemTransform();
      static PlatformItemsModifier.transformPlatformItemsOutputs<A>(_:inputs:modifier:)();
    }

    *&v130[32] = v110[1];
    v131 = v111;
    v132 = *v112;
    v133 = *&v112[16];
    *v130 = v109;
    *&v130[16] = v110[0];
    outlined destroy of _ViewInputs(v130);
    *a7 = v100;
    result = *(&v100 + 1);
    a7[1] = *(&v100 + 1);
  }

  return result;
}

double protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance AccessibilityScrollableContextModifier@<D0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, double *a4@<X8>)
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
  return specialized static AccessibilityViewModifier._makeView(modifier:inputs:body:)(v4, v8, a3, &lazy cache variable for type metadata for AccessibilityViewModifierAccessor<AccessibilityScrollableContextModifier>, lazy protocol witness table accessor for type AccessibilityScrollableContextModifier and conformance AccessibilityScrollableContextModifier, &type metadata for AccessibilityScrollableContextModifier, a4);
}

uint64_t View.sectionStyle<A, B>(_:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v38 = a6;
  v34 = a2;
  v35 = a7;
  v36 = a8;
  v37 = a3;
  v10 = *(a5 - 8);
  v32 = a1;
  v33 = v10;
  MEMORY[0x1EEE9AC00](a1);
  v31 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SectionStyleModifier(0, v17, v18, v17);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v31 - v21;
  type metadata accessor for StyleContextAcceptsPredicate();
  v23 = type metadata accessor for StaticIf();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v31 - v26;
  (*(v13 + 16))(v16, v32, a4, v25);
  (*(v13 + 32))(v22, v16, a4);
  v28 = v33;
  v29 = v31;
  (*(v33 + 16))(v31, v34, a5);
  v40 = a5;
  v41 = v29;
  v39 = v35;
  ViewModifier.requiring<A>(_:)();
  (*(v20 + 8))(v22, v19);
  (*(v28 + 8))(v29, a5);
  MEMORY[0x18D00A570](v27, v37, v23, v38);
  return (*(v24 + 8))(v27, v23);
}

uint64_t static ViewAlias._makeViewList(view:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  outlined init with copy of _ViewListInputs(a2, v16);
  v8 = type metadata accessor for SourceInput(0, a3, a4, v7);
  swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v8);
  _GraphInputs.popLast<A, B>(_:)();
  v9 = v11;
  if (v11)
  {
    _GraphInputs.resetCurrentStyleableView()();
    LODWORD(v11) = v6;
    (*(v12 + 16))(&v11, v9, v12, v13, v14 | ((v15 & 1) << 32), v16, a3, a4, v9, v12);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v16);
}

uint64_t storeEnumTagSinglePayload for AnySource(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 29) = 1;
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

    *(result + 29) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for AccessibilityViewModifierAccessor<AccessibilityContainerModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t static NestedDynamicProperties._makeProperty<A>(in:container:fieldOffset:inputs:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  static DynamicPropertyCache.fields(of:)();
  _DynamicPropertyBuffer.addFields<A>(_:container:inputs:baseOffset:)();

  return outlined consume of DynamicPropertyCache.Fields.Layout(v7, v8, v9);
}

unint64_t lazy protocol witness table accessor for type AccessibilityScrollableContextModifier and conformance AccessibilityScrollableContextModifier()
{
  result = lazy protocol witness table cache variable for type AccessibilityScrollableContextModifier and conformance AccessibilityScrollableContextModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityScrollableContextModifier and conformance AccessibilityScrollableContextModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityScrollableContextModifier, &type metadata for AccessibilityScrollableContextModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityScrollableContextModifier and conformance AccessibilityScrollableContextModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityScrollableContextModifier and conformance AccessibilityScrollableContextModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityScrollableContextModifier and conformance AccessibilityScrollableContextModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityScrollableContextModifier, &type metadata for AccessibilityScrollableContextModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityScrollableContextModifier and conformance AccessibilityScrollableContextModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityScrollableContextModifier and conformance AccessibilityScrollableContextModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityScrollableContextModifier and conformance AccessibilityScrollableContextModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityScrollableContextModifier, &type metadata for AccessibilityScrollableContextModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityScrollableContextModifier and conformance AccessibilityScrollableContextModifier);
  }

  return result;
}

uint64_t initializeWithCopy for _NavigationSplitReader.SplitPresentationModeLocation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_weakCopyInit();
  v7 = *(a2 + 16);
  *(v6 + 8) = *(a2 + 8);
  *(v6 + 16) = v7;
  *(v6 + 24) = *(a2 + 24);
  *(v6 + 40) = *(a2 + 40);
  v8 = *(a3 + 24);
  v9 = type metadata accessor for UUID();
  v10 = *(*(v9 - 8) + 16);

  v10(a1 + v8, a2 + v8, v9);
  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));

  return a1;
}

uint64_t sub_18BFF9160(uint64_t a1)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t specialized static _NavigationSplitReader.SplitPresentationModeLocation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for _NavigationSplitReader.SplitPresentationModeLocation(0) + 28);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  swift_beginAccess();
  v8 = *(v5 + 16);
  v7 = *(v5 + 20);
  swift_beginAccess();
  if (v8 == *(v6 + 16) && v7 == *(v6 + 20))
  {
    v10 = static UUID.== infix(_:_:)();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

double destroy for _NavigationSplitReader.SplitPresentationModeLocation(uint64_t a1, uint64_t a2)
{
  swift_weakDestroy();

  v4 = *(a2 + 24);
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);

  return result;
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<UIKitCellStateKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(255, a2, a3, a4, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18BFF9510(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for StyleContextAcceptsPredicate<MenuStyleContext>();
  type metadata accessor for PickerStyleConfiguration.Label(255, v1, v2, v3);
  v4 = type metadata accessor for Optional();
  v5 = type metadata accessor for Optional();
  v6 = type metadata accessor for StaticIf();
  v8 = type metadata accessor for PickerContentView(255, v1, v2, v7);
  type metadata accessor for SectionStyleModifier<MenuPickerOptionSectionStyle>(255, &lazy cache variable for type metadata for ToggleStyleModifier<CheckmarkToggleStyle>, lazy protocol witness table accessor for type CheckmarkToggleStyle and conformance CheckmarkToggleStyle, &type metadata for CheckmarkToggleStyle, type metadata accessor for ToggleStyleModifier);
  v9 = type metadata accessor for ModifiedContent();
  v10 = MEMORY[0x1E6981E70];
  v11 = type metadata accessor for Section(255, v6, v9, MEMORY[0x1E6981E70]);
  v12 = type metadata accessor for Section(255, v4, v9, v10);
  v20 = type metadata accessor for StaticIf();
  v13 = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<MenuStyleContext> and conformance StyleContextAcceptsPredicate<A>();
  v14 = lazy protocol witness table accessor for type AllowSectionPickerLabels and conformance AllowSectionPickerLabels();
  v29 = &protocol witness table for PickerStyleConfiguration<A>.Label;
  v15 = MEMORY[0x1E6982090];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6982090], v4, &v29);
  v28 = WitnessTable;
  v27[0] = v14;
  v27[1] = WitnessTable;
  v27[2] = swift_getWitnessTable(v15, v5, &v28);
  v17 = MEMORY[0x1E6981CE8];
  v18 = swift_getWitnessTable(MEMORY[0x1E6981CE8], v6, v27);
  v26[0] = swift_getWitnessTable("Q%\rb\\R\t", v8);
  v26[1] = &protocol witness table for ToggleStyleModifier<A>;
  v23 = v18;
  v24 = swift_getWitnessTable(MEMORY[0x1E697E858], v9, v26);
  v25 = MEMORY[0x1E6981E60];
  v22[0] = WitnessTable;
  v22[1] = v24;
  v22[2] = MEMORY[0x1E6981E60];
  v21[0] = v13;
  v21[1] = swift_getWitnessTable(protocol conformance descriptor for <> Section<A, B, C>, v11, &v23);
  v21[2] = swift_getWitnessTable(protocol conformance descriptor for <> Section<A, B, C>, v12, v22);
  return swift_getWitnessTable(v17, v20, v21);
}

unint64_t lazy protocol witness table accessor for type CheckmarkToggleStyle and conformance CheckmarkToggleStyle()
{
  result = lazy protocol witness table cache variable for type CheckmarkToggleStyle and conformance CheckmarkToggleStyle;
  if (!lazy protocol witness table cache variable for type CheckmarkToggleStyle and conformance CheckmarkToggleStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CheckmarkToggleStyle, &type metadata for CheckmarkToggleStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CheckmarkToggleStyle and conformance CheckmarkToggleStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AllowSectionPickerLabels and conformance AllowSectionPickerLabels()
{
  result = lazy protocol witness table cache variable for type AllowSectionPickerLabels and conformance AllowSectionPickerLabels;
  if (!lazy protocol witness table cache variable for type AllowSectionPickerLabels and conformance AllowSectionPickerLabels)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AllowSectionPickerLabels, &type metadata for AllowSectionPickerLabels, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AllowSectionPickerLabels and conformance AllowSectionPickerLabels);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowSectionPickerLabels and conformance AllowSectionPickerLabels;
  if (!lazy protocol witness table cache variable for type AllowSectionPickerLabels and conformance AllowSectionPickerLabels)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AllowSectionPickerLabels, &type metadata for AllowSectionPickerLabels, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AllowSectionPickerLabels and conformance AllowSectionPickerLabels);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowSectionPickerLabels and conformance AllowSectionPickerLabels;
  if (!lazy protocol witness table cache variable for type AllowSectionPickerLabels and conformance AllowSectionPickerLabels)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AllowSectionPickerLabels, &type metadata for AllowSectionPickerLabels, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AllowSectionPickerLabels and conformance AllowSectionPickerLabels);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowSectionPickerLabels and conformance AllowSectionPickerLabels;
  if (!lazy protocol witness table cache variable for type AllowSectionPickerLabels and conformance AllowSectionPickerLabels)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AllowSectionPickerLabels, &type metadata for AllowSectionPickerLabels, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AllowSectionPickerLabels and conformance AllowSectionPickerLabels);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowSectionPickerLabels and conformance AllowSectionPickerLabels;
  if (!lazy protocol witness table cache variable for type AllowSectionPickerLabels and conformance AllowSectionPickerLabels)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AllowSectionPickerLabels, &type metadata for AllowSectionPickerLabels, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AllowSectionPickerLabels and conformance AllowSectionPickerLabels);
  }

  return result;
}

void type metadata accessor for Toggle<ToggleStyleConfiguration.Label>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI6ToggleVyAA0C18StyleConfigurationV5LabelVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ListRowInsetsKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListRowInsetsKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListRowInsetsKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListRowInsetsKey>, &type metadata for ListRowInsetsKey, &protocol witness table for ListRowInsetsKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListRowInsetsKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t CollectionViewCellModifier.resolvedBody(content:isInSidebar:)@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v3 = v2;
  if (*(v2 + 170) != 1)
  {
    LOBYTE(v5) = 0;
    goto LABEL_9;
  }

  if (*(v2 + 265))
  {
    if ((a1 & 1) == 0)
    {
      LOBYTE(v5) = 1;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  specialized Environment.wrappedValue.getter(*v3, *(v3 + 8), __src);
  LOBYTE(v5) = __src[0];
  if (LOBYTE(__src[0]) == 1 && (a1 & 1) != 0)
  {
LABEL_8:
    type metadata accessor for InvertedViewInputPredicate<Solarium>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]);
    lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
    v5 = static SemanticFeature.isEnabled.getter() ^ 1;
  }

LABEL_9:
  v49 = v5;
  v7 = CollectionViewCellModifier.effectiveListRowInsets(_:)(v5 & 1);
  v9 = v8;
  v11 = v10;
  v13 = v12 + *(v3 + 240);
  v51 = static VerticalAlignment.firstTextBaseline.getter();
  v69 = 0;
  closure #1 in CollectionViewCellModifier.resolvedBody(content:isInSidebar:)(v3, __src, v7, v13, v9, v11);
  v88 = __src[11];
  v89 = __src[12];
  v90[0] = __src[13];
  *(v90 + 9) = *(&__src[13] + 9);
  v85 = __src[8];
  v86 = __src[9];
  v87 = __src[10];
  v81 = __src[4];
  v82 = __src[5];
  v83 = __src[6];
  v84 = __src[7];
  v77 = __src[0];
  v78 = __src[1];
  v79 = __src[2];
  v80 = __src[3];
  v91[11] = __src[11];
  v91[12] = __src[12];
  v92[0] = __src[13];
  *(v92 + 9) = *(&__src[13] + 9);
  v91[8] = __src[8];
  v91[9] = __src[9];
  v91[10] = __src[10];
  v91[4] = __src[4];
  v91[5] = __src[5];
  v91[6] = __src[6];
  v91[7] = __src[7];
  v91[0] = __src[0];
  v91[1] = __src[1];
  v91[2] = __src[2];
  v91[3] = __src[3];
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>(&v77, v61);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>(v91, &lazy cache variable for type metadata for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>, type metadata accessor for (ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer), MEMORY[0x1E6981F40]);
  *(&v68[11] + 7) = v88;
  *(&v68[12] + 7) = v89;
  *(&v68[13] + 7) = v90[0];
  v68[14] = *(v90 + 9);
  *(&v68[7] + 7) = v84;
  *(&v68[8] + 7) = v85;
  *(&v68[9] + 7) = v86;
  *(&v68[10] + 7) = v87;
  *(&v68[3] + 7) = v80;
  *(&v68[4] + 7) = v81;
  *(&v68[5] + 7) = v82;
  *(&v68[6] + 7) = v83;
  *(v68 + 7) = v77;
  *(&v68[1] + 7) = v78;
  *(&v68[2] + 7) = v79;
  v50 = v69;
  v14 = specialized Environment.wrappedValue.getter(*(v3 + 16), *(v3 + 24));
  v15 = HIBYTE(v14);
  v16 = v14 & 0x100;
  outlined init with copy of AccessibilityScrollableContext(v3 + 280, v67);
  v66[0] = v15 & 1;
  outlined init with copy of AccessibilityScrollableContext(v67, v62);
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v56 = 0;
  v57 = 0;
  *&v95 = v16 >> 6;
  *(&v95 + 1) = v95;
  LOBYTE(v96) = 0;
  v71 = 0uLL;
  *&v72 = 0;
  *(&v72 + 1) = 1;
  v73 = 0uLL;
  *&v93[0] = 0;
  BYTE8(v93[0]) = 1;
  _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOi0_(v54);
  __src[6] = v54[6];
  __src[7] = v54[7];
  __src[8] = v54[8];
  __src[2] = v54[2];
  __src[3] = v54[3];
  LOBYTE(__src[9]) = v55;
  __src[4] = v54[4];
  __src[5] = v54[5];
  __src[0] = v54[0];
  __src[1] = v54[1];
  AccessibilityProperties.init(identifier:label:traits:value:visibility:textLayoutProperties:)();
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(v61);
  __src[2] = v62[2];
  __src[3] = *v63;
  *(&__src[3] + 15) = *&v63[15];
  __src[0] = v62[0];
  __src[1] = v62[1];
  memcpy(&v65[7], __src, 0x170uLL);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>(v66, type metadata accessor for AccessibilityListCoreCellModifier<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>>);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v17 = *(v3 + 136);
  v97 = *(v3 + 120);
  v98 = v17;
  v99 = *(v3 + 152);
  v100 = *(v3 + 168);
  v18 = *(v3 + 104);
  v95 = *(v3 + 88);
  v96 = v18;
  specialized Environment.wrappedValue.getter(v52);
  v19 = CollectionViewCellModifier.effectiveListRowInsets(_:)(v49 & 1);
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = *(v3 + 256);
  v27 = *(v3 + 264);
  v28 = v26;
  if (v26 == 1)
  {
    if (v49)
    {
      v29 = *(v3 + 136);
      v93[2] = *(v3 + 120);
      v93[3] = v29;
      v93[4] = *(v3 + 152);
      v94 = *(v3 + 168);
      v30 = *(v3 + 104);
      v93[0] = *(v3 + 88);
      v93[1] = v30;
      specialized Environment.wrappedValue.getter(&v71);
      v28 = *(&v75 + 1);
      v27 = v76;
      outlined copy of Transaction?(*(&v75 + 1));
      outlined destroy of ListContentStyling(&v71);
    }

    else
    {
      specialized Environment.wrappedValue.getter(*(v3 + 32), *(v3 + 40) | (*(v3 + 41) << 8), v93);
      v28 = *&v93[0];
      v27 = BYTE8(v93[0]);
    }
  }

  v73 = v52[2];
  v74 = v52[3];
  v75 = v52[4];
  LOBYTE(v76) = v53;
  v71 = v52[0];
  v72 = v52[1];
  *a2 = v51;
  *(a2 + 8) = 0;
  *(a2 + 16) = v50;
  v31 = v68[0];
  v32 = v68[1];
  v33 = v68[3];
  *(a2 + 49) = v68[2];
  *(a2 + 33) = v32;
  *(a2 + 17) = v31;
  v34 = v68[7];
  *(a2 + 113) = v68[6];
  v35 = v68[4];
  *(a2 + 97) = v68[5];
  *(a2 + 81) = v35;
  *(a2 + 65) = v33;
  v36 = v68[11];
  *(a2 + 177) = v68[10];
  v37 = v68[8];
  *(a2 + 161) = v68[9];
  *(a2 + 145) = v37;
  *(a2 + 129) = v34;
  v38 = v68[12];
  v39 = v68[13];
  *(a2 + 241) = v68[14];
  *(a2 + 225) = v39;
  *(a2 + 209) = v38;
  *(a2 + 193) = v36;
  memcpy((a2 + 257), v65, 0x177uLL);
  v40 = v70[5];
  *(a2 + 696) = v70[4];
  *(a2 + 712) = v40;
  v41 = v71;
  *(a2 + 728) = v70[6];
  v42 = v70[1];
  *(a2 + 632) = v70[0];
  *(a2 + 648) = v42;
  v43 = v70[3];
  *(a2 + 664) = v70[2];
  *(a2 + 680) = v43;
  v44 = v72;
  v45 = v73;
  *(a2 + 744) = v41;
  *(a2 + 760) = v44;
  v46 = v74;
  v47 = v75;
  *(a2 + 824) = v76;
  *(a2 + 792) = v46;
  *(a2 + 808) = v47;
  *(a2 + 776) = v45;
  *(a2 + 832) = v19;
  *(a2 + 840) = v21;
  *(a2 + 848) = v23;
  *(a2 + 856) = v25;
  *(a2 + 864) = v7;
  *(a2 + 872) = v13;
  *(a2 + 880) = v9;
  *(a2 + 888) = v11;
  *(a2 + 896) = v28;
  *(a2 + 904) = v27;
  *(a2 + 905) = v49 & 1;
  *(a2 + 906) = v49 & 1;
  return outlined copy of Transaction?(v26);
}

double CollectionViewCellModifier.effectiveListRowInsets(_:)(uint64_t a1)
{
  if (a1)
  {
    v2 = *(v1 + 136);
    v20 = *(v1 + 120);
    v21 = v2;
    v22 = *(v1 + 152);
    v23 = *(v1 + 168);
    v3 = *(v1 + 104);
    v18 = *(v1 + 88);
    v19 = v3;
    specialized Environment.wrappedValue.getter(v13);
    outlined destroy of ListContentStyling(v13);
    v4 = *v13;
  }

  else
  {
    v5 = *(v1 + 64);
    v18 = *(v1 + 48);
    v19 = v5;
    LOBYTE(v20) = *(v1 + 80);
    v4 = specialized Environment.wrappedValue.getter();
  }

  v6 = *(v1 + 192);
  v13[0] = *(v1 + 176);
  v13[1] = v6;
  v14[0] = *(v1 + 208);
  *(v14 + 9) = *(v1 + 217);
  v7 = COERCE_DOUBLE(OptionalEdgeInsets.top.getter());
  if ((v8 & 1) == 0)
  {
    v4 = v7;
  }

  v9 = *(v1 + 192);
  v16[2] = *(v1 + 176);
  v16[3] = v9;
  v17[0] = *(v1 + 208);
  *(v17 + 9) = *(v1 + 217);
  OptionalEdgeInsets.leading.getter();
  v10 = *(v1 + 192);
  v15[2] = *(v1 + 176);
  v15[3] = v10;
  v16[0] = *(v1 + 208);
  *(v16 + 9) = *(v1 + 217);
  OptionalEdgeInsets.bottom.getter();
  v11 = *(v1 + 192);
  v14[4] = *(v1 + 176);
  v14[5] = v11;
  v15[0] = *(v1 + 208);
  *(v15 + 9) = *(v1 + 217);
  OptionalEdgeInsets.trailing.getter();
  return v4;
}

double specialized Environment.wrappedValue.getter()
{
  if (v0[32] == 1)
  {
    return *v0;
  }

  v2 = static os_log_type_t.fault.getter();
  v3 = static Log.runtimeIssuesLog.getter();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = *&v5;
    *v4 = 136315138;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x65736E4965676445, 0xEA00000000007374, &v6);
    _os_log_impl(&dword_18BD4A000, v3, v2, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x18D0110E0](v5, -1, -1);
    MEMORY[0x18D0110E0](v4, -1, -1);
  }

  EnvironmentValues.init()();
  swift_getAtKeyPath();
  outlined destroy of Environment<NavigationEventHandlers>(v0, &lazy cache variable for type metadata for Environment<EdgeInsets>, MEMORY[0x1E697DA60]);

  return v6;
}

uint64_t initializeWithCopy for OutsetByRowInsets(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v9 = *(a2 + 64);
  outlined copy of Environment<EdgeInsets>.Content(v5, v6, v7, v8, v9);
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  *(a1 + 64) = v9;
  v10 = *(a2 + 72);
  LOBYTE(v6) = *(a2 + 80);
  outlined copy of Environment<Bool>.Content();
  *(a1 + 72) = v10;
  *(a1 + 80) = v6;
  v11 = *(a2 + 88);
  v12 = *(a2 + 96);
  v13 = *(a2 + 104);
  v14 = *(a2 + 112);
  v15 = *(a2 + 120);
  v16 = *(a2 + 128);
  v17 = *(a2 + 136);
  v18 = *(a2 + 144);
  outlined copy of Environment<ResolvedSubviewsSizingOptions>.Content(v11, v12, v13, v14, v15, v16, v17, v18);
  *(a1 + 88) = v11;
  *(a1 + 96) = v12;
  *(a1 + 104) = v13;
  *(a1 + 112) = v14;
  *(a1 + 120) = v15;
  *(a1 + 128) = v16;
  *(a1 + 136) = v17;
  *(a1 + 144) = v18;
  *(a1 + 145) = *(a2 + 145);
  return a1;
}

double outlined copy of Environment<ResolvedSubviewsSizingOptions>.Content(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8)
  {
    return outlined copy of ResolvedSubviewsSizingOptions(a1, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

double destroy for OutsetByRowInsets(uint64_t a1)
{
  outlined consume of Environment<EdgeInsets>.Content(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  outlined consume of Environment<Bool>.Content(*(a1 + 72), *(a1 + 80));
  v2 = *(a1 + 88);
  v3 = *(a1 + 96);
  v4 = *(a1 + 104);
  v5 = *(a1 + 112);
  v6 = *(a1 + 120);
  v7 = *(a1 + 128);
  v8 = *(a1 + 136);
  v9 = *(a1 + 144);

  return outlined consume of Environment<ResolvedSubviewsSizingOptions>.Content(v2, v3, v4, v5, v6, v7, v8, v9);
}

double outlined consume of Environment<ResolvedSubviewsSizingOptions>.Content(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8)
  {
    return outlined consume of ResolvedSubviewsSizingOptions(a1, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

double destroy for AccessibilityListCoreCellModifier(uint64_t a1)
{
  v1 = *(a1 + 78);
  if (*(a1 + 78))
  {
    if (v1 == 1)
    {
      goto LABEL_7;
    }

    if (v1 != 2)
    {
      return result;
    }
  }

  __swift_destroy_boxed_opaque_existential_1((a1 + 8));
LABEL_7:

  return result;
}

uint64_t initializeWithCopy for AccessibilityScrollableContextModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 70);
  if (v4 == 2)
  {
    v5 = *(a2 + 24);
    *(a1 + 24) = v5;
    (**(v5 - 8))(a1, a2);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
  }

  else if (v4 == 1)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
  }

  else
  {
    v6 = *(a2 + 24);
    *(a1 + 24) = v6;
    (**(v6 - 8))(a1, a2);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 68) = *(a2 + 68);
  }

  *(a1 + 70) = v4;

  if (!*(a2 + 352))
  {
    memcpy((a1 + 72), (a2 + 72), 0x128uLL);
    return a1;
  }

  v7 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v7;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  v8 = *(a2 + 160);

  if (!v8)
  {
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
LABEL_13:
    *(a1 + 176) = *(a2 + 176);

    goto LABEL_14;
  }

  if (v8 != 1)
  {
    v9 = *(a2 + 168);
    *(a1 + 160) = v8;
    *(a1 + 168) = v9;
    (**(v8 - 8))(a1 + 136, a2 + 136, v8);
    goto LABEL_13;
  }

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
LABEL_14:
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  v10 = (a1 + 200);
  v11 = (a2 + 200);
  v12 = *(a2 + 312);
  if (v12 == 1)
  {
    v13 = *(a2 + 312);
    *(a1 + 296) = *(a2 + 296);
    *(a1 + 312) = v13;
    *(a1 + 328) = *(a2 + 328);
    *(a1 + 344) = *(a2 + 344);
    v14 = *(a2 + 248);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 248) = v14;
    v15 = *(a2 + 280);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 280) = v15;
    v16 = *(a2 + 216);
    *v10 = *v11;
    *(a1 + 216) = v16;
  }

  else
  {
    *v10 = *v11;
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 225) = *(a2 + 225);
    *(a1 + 227) = *(a2 + 227);
    *(a1 + 228) = *(a2 + 228);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 248) = *(a2 + 248);
    v17 = *(a2 + 272);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 272) = v17;
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 312) = v12;
    *(a1 + 320) = *(a2 + 320);
    *(a1 + 336) = *(a2 + 336);
    *(a1 + 344) = *(a2 + 344);
  }

  v18 = *(a2 + 352);
  v19 = *(a2 + 360);
  *(a1 + 352) = v18;
  *(a1 + 360) = v19;

  v20 = v19;
  return a1;
}

uint64_t initializeWithCopy for ListCoreCellEnvironment(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v7 = a2 + 72;
  v6 = *(a2 + 72);

  if (v6 == 1)
  {
    *(a1 + 72) = *v7;
    *(a1 + 80) = *(v7 + 8);
  }

  else
  {
    *(a1 + 72) = v6;
    *(a1 + 80) = *(a2 + 80);
  }

  v8 = *(a2 + 152);
  v9 = *(a2 + 104);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = v9;
  v10 = *(a2 + 136);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = v10;
  if (v8 == 1)
  {
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 160) = *(a2 + 160);
  }

  else
  {
    *(a1 + 152) = v8;
    *(a1 + 160) = *(a2 + 160);
  }

  *(a1 + 161) = *(a2 + 161);
  return a1;
}

void destroy for AccessibilityScrollableContextModifier(uint64_t a1)
{
  v2 = *(a1 + 70);
  if (*(a1 + 70))
  {
    if (v2 == 1)
    {
      goto LABEL_7;
    }

    if (v2 != 2)
    {
      goto LABEL_8;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
LABEL_7:

LABEL_8:
  if (!*(a1 + 352))
  {
    return;
  }

  v3 = *(a1 + 160);
  if (!v3)
  {
    goto LABEL_12;
  }

  if (v3 != 1)
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 136));
LABEL_12:
  }

  if (*(a1 + 312) != 1)
  {
  }

  v4 = *(a1 + 360);
}

double destroy for ListCoreCellEnvironment(void *a1)
{

  if (a1[9] != 1)
  {
  }

  if (a1[19] != 1)
  {
  }

  return result;
}

double specialized static ListCoreCellEnvironment.makeEnvironment(modifier:environment:)(uint64_t a1, void *a2)
{
  type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>(0, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - v4;
  Value = AGGraphGetValue();
  v8 = *(Value + 16);
  v7 = *(Value + 32);
  v31 = *Value;
  v32 = v8;
  v33 = v7;
  v9 = *(Value + 96);
  v11 = *(Value + 48);
  v10 = *(Value + 64);
  v36[0] = *(Value + 80);
  v36[1] = v9;
  v34 = v11;
  v35 = v10;
  v13 = *(Value + 128);
  v12 = *(Value + 144);
  v14 = *(Value + 112);
  *(&v36[4] + 15) = *(Value + 159);
  v36[3] = v13;
  v36[4] = v12;
  v36[2] = v14;
  if (BYTE1(v36[5]) == 1)
  {
    LOBYTE(v19) = 2;
    outlined init with copy of ListCoreCellEnvironment(&v31, &v25);
    EnvironmentValues.textCase.setter();
    v21 = v33;
    v22 = v34;
    v23 = v35;
    v24 = v36[0];
    v19 = v31;
    v20 = v32;
    v15 = type metadata accessor for UICellConfigurationState();
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
    outlined init with copy of ListContentStyling(&v31, &v25);
    EnvironmentValues.configureListStyling(_:state:)(&v19, v5);
    outlined destroy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>(v5, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8], MEMORY[0x1E69E6720]);
    v27 = v21;
    v28 = v22;
    v29 = v23;
    v30 = v24;
    v25 = v19;
    v26 = v20;
    outlined destroy of ListContentStyling(&v25);
  }

  else
  {
    outlined init with copy of ListCoreCellEnvironment(&v31, &v25);
  }

  LOBYTE(v25) = 1;
  type metadata accessor for InvertedViewInputPredicate<Solarium>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsSelectableKey>, &type metadata for EnvironmentValues.IsSelectableKey, &protocol witness table for EnvironmentValues.IsSelectableKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListItemTintKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsSelectableKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsSelectableKey>, &type metadata for EnvironmentValues.IsSelectableKey, &protocol witness table for EnvironmentValues.IsSelectableKey);

  PropertyList.subscript.setter();
  v16 = a2[1];
  if (v16)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();

    type metadata accessor for InvertedViewInputPredicate<Solarium>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UIKitCellStateKey>, &type metadata for UIKitCellStateKey, &protocol witness table for UIKitCellStateKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListItemTintKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<UIKitCellStateKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<UIKitCellStateKey>, &type metadata for UIKitCellStateKey, &protocol witness table for UIKitCellStateKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {

    type metadata accessor for InvertedViewInputPredicate<Solarium>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UIKitCellStateKey>, &type metadata for UIKitCellStateKey, &protocol witness table for UIKitCellStateKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListItemTintKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<UIKitCellStateKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<UIKitCellStateKey>, &type metadata for UIKitCellStateKey, &protocol witness table for UIKitCellStateKey);
    PropertyList.subscript.getter();
  }

  LOBYTE(v25) = BYTE1(v25);
  type metadata accessor for InvertedViewInputPredicate<Solarium>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsSelectedKey>, &type metadata for EnvironmentValues.IsSelectedKey, &protocol witness table for EnvironmentValues.IsSelectedKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListItemTintKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsSelectedKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsSelectedKey>, &type metadata for EnvironmentValues.IsSelectedKey, &protocol witness table for EnvironmentValues.IsSelectedKey);

  PropertyList.subscript.setter();
  if (v16)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  v25 = *(v36 + 8);
  v26 = *(&v36[1] + 8);
  type metadata accessor for InvertedViewInputPredicate<Solarium>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListRowInsetsKey>, &type metadata for ListRowInsetsKey, &protocol witness table for ListRowInsetsKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListItemTintKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListRowInsetsKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListRowInsetsKey>, &type metadata for ListRowInsetsKey, &protocol witness table for ListRowInsetsKey);

  PropertyList.subscript.setter();
  if (v16)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  v25 = *(&v36[2] + 8);
  v26 = *(&v36[3] + 8);
  type metadata accessor for InvertedViewInputPredicate<Solarium>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EffectiveListRowInsetsKey>, &type metadata for EffectiveListRowInsetsKey, &protocol witness table for EffectiveListRowInsetsKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListItemTintKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EffectiveListRowInsetsKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EffectiveListRowInsetsKey>, &type metadata for EffectiveListRowInsetsKey, &protocol witness table for EffectiveListRowInsetsKey);

  PropertyList.subscript.setter();
  if (v16)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  v17 = *(&v36[4] + 1);
  *&v25 = *(&v36[4] + 1);
  BYTE8(v25) = v36[5];
  type metadata accessor for InvertedViewInputPredicate<Solarium>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListItemTintKey>, &type metadata for ListItemTintKey, &protocol witness table for ListItemTintKey, MEMORY[0x1E697FE38]);
  outlined copy of Transaction?(v17);
  outlined copy of Transaction?(v17);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListItemTintKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListItemTintKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListItemTintKey>, &type metadata for ListItemTintKey, &protocol witness table for ListItemTintKey);

  PropertyList.subscript.setter();
  if (v16)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined destroy of ListCoreCellEnvironment(&v31);
  outlined consume of ListItemTint?(v17);

  return result;
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ListItemTintKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for InvertedViewInputPredicate<Solarium>(255, a2, a3, a4, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v6);
    atomic_store(result, a1);
  }

  return result;
}