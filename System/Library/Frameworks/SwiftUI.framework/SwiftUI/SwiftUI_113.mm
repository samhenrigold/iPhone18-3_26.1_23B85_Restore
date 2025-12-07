uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance TabViewContentToolbarHost(uint64_t *a1, uint64_t a2)
{
  lazy protocol witness table accessor for type TabViewContentToolbarHost and conformance TabViewContentToolbarHost();
  PropertyList.subscript.getter();
  return v3;
}

uint64_t ChildIndexProjection.hash(into:)(uint64_t a1)
{
  outlined init with copy of _VariadicView_Children(v1 + 16, v6);
  v2 = 0;
  if (_VariadicView_Children.endIndex.getter())
  {
    while (1)
    {
      _VariadicView_Children.subscript.getter();
      result = _VariadicView_Children.endIndex.getter();
      if (v2 >= result)
      {
        break;
      }

      ++v2;
      _ViewList_View.viewID.getter();
      AnyHashable.hash(into:)();
      outlined destroy of AnyHashable(v4);
      outlined destroy of _VariadicView_Children.Element(v5);
      if (v2 == _VariadicView_Children.endIndex.getter())
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_4:
    v7 = v2;
    return outlined destroy of EnumeratedSequence<_VariadicView_Children>(v6, &lazy cache variable for type metadata for IndexingIterator<_VariadicView_Children>, lazy protocol witness table accessor for type _VariadicView_Children and conformance _VariadicView_Children, MEMORY[0x1E69E6CF0]);
  }

  return result;
}

uint64_t ChildIndexProjection.get(base:)()
{
  outlined init with copy of _VariadicView_Children(v0 + 16, v3);
  specialized Sequence.first(where:)(partial apply for closure #1 in ChildIndexProjection.get(base:), v4);
  outlined destroy of EnumeratedSequence<_VariadicView_Children>(v3, &lazy cache variable for type metadata for EnumeratedSequence<_VariadicView_Children>, lazy protocol witness table accessor for type _VariadicView_Children and conformance _VariadicView_Children, MEMORY[0x1E69E6E48]);
  if (v5)
  {
    v1 = *&v4[0];
    outlined destroy of _VariadicView_Children.Element(v4 + 8);
  }

  else
  {
    outlined destroy of (offset: Int, element: _VariadicView_Children.Element)?(v4);
    return 0;
  }

  return v1;
}

uint64_t closure #1 in ChildIndexProjection.get(base:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of (offset: Int, element: _VariadicView_Children.Element)(a1, v6);
  _ViewList_View.viewID.getter();
  outlined destroy of _VariadicView_Children.Element(&v7);
  v3 = MEMORY[0x18D00E7E0](v5, a2);
  outlined destroy of AnyHashable(v5);
  return v3 & 1;
}

uint64_t ChildIndexProjection.set(base:newValue:)(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v4 = result;
    v5 = _VariadicView_Children.endIndex.getter();
    result = _VariadicView_Children.endIndex.getter();
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      result = _VariadicView_Children.endIndex.getter();
      if ((v5 & 0x8000000000000000) == 0 && result >= v5)
      {
        if (v5 > a2)
        {
          outlined destroy of AnyHashable(v4);
          _VariadicView_Children.subscript.getter();
          _ViewList_View.viewID.getter();
          return outlined destroy of _VariadicView_Children.Element(v6);
        }

        return result;
      }
    }

    __break(1u);
  }

  return result;
}

double ChildIndexProjection.__deallocating_deinit()
{
  outlined destroy of _VariadicView_Children(v0 + 16);

  swift_deallocClassInstance();
  return result;
}

uint64_t protocol witness for Projection.get(base:) in conformance ChildIndexProjection@<X0>(uint64_t a1@<X8>)
{
  result = ChildIndexProjection.get(base:)();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ChildIndexProjection()
{
  Hasher.init(_seed:)();
  ChildIndexProjection.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ChildIndexProjection(uint64_t a1)
{
  Hasher.init(_seed:)();
  ChildIndexProjection.hash(into:)(v2);
  return Hasher._finalize()();
}

double protocol witness for View.body.getter in conformance TabBarBottomAccessoryView@<D0>(uint64_t a1@<X8>)
{
  v4 = *v2;
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v4;

  return result;
}

void @objc UIKitTabBarBottomAccessory.frame.setter(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, SEL *a7)
{
  ObjectType = swift_getObjectType();
  v25.receiver = a1;
  v25.super_class = ObjectType;
  v14 = a1;
  objc_msgSendSuper2(&v25, sel_bounds);
  v16 = v15;
  v18 = v17;
  v24.receiver = v14;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, *a7, a2, a3, a4, a5);
  v23.receiver = v14;
  v23.super_class = ObjectType;
  objc_msgSendSuper2(&v23, sel_bounds);
  if (v16 != v20 || v18 != v19)
  {
    v22 = specialized _UIHostingView.base.getter();
    UIHostingViewBase.allowUIKitAnimationsForNextUpdate.setter();
  }
}

uint64_t type metadata accessor for UIKitTabBarBottomAccessory(uint64_t a1)
{
  result = type metadata singleton initialization cache for UIKitTabBarBottomAccessory;
  if (!type metadata singleton initialization cache for UIKitTabBarBottomAccessory)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *vtable thunk for _UIHostingView.__allocating_init(rootView:) dispatching to UIKitTabBarBottomAccessory.__allocating_init(rootView:)(uint64_t *a1)
{
  v2 = objc_allocWithZone(v1);

  v4 = specialized _UIHostingView.init(rootView:)(v3);
  *(v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x1C0) + 8) = &protocol witness table for UIKitTabBarBottomAccessory;
  swift_unknownObjectWeakAssign();
  v5 = v4;
  v6 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.safeAreaRegions.setter();

  return v5;
}

void type metadata accessor for TabItemLabel_v0?()
{
  if (!lazy cache variable for type metadata for TabItemLabel_v0?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TabItemLabel_v0?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ContainerValueWritingModifier<TabItemLabel_v0?> and conformance _ContainerValueWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _ContainerValueWritingModifier<TabItemLabel_v0?> and conformance _ContainerValueWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _ContainerValueWritingModifier<TabItemLabel_v0?> and conformance _ContainerValueWritingModifier<A>)
  {
    type metadata accessor for _ContainerValueWritingModifier<TabItemLabel_v0?>(255, &lazy cache variable for type metadata for _ContainerValueWritingModifier<TabItemLabel_v0?>, type metadata accessor for TabItemLabel_v0?, MEMORY[0x1E69809E8]);
    result = swift_getWitnessTable(MEMORY[0x1E69809F0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ContainerValueWritingModifier<TabItemLabel_v0?> and conformance _ContainerValueWritingModifier<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ChildIndexProjection and conformance ChildIndexProjection(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for ChildIndexProjection();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of (offset: Int, element: _VariadicView_Children.Element)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (offset: Int, element: _VariadicView_Children.Element)();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of (offset: Int, element: _VariadicView_Children.Element)?(uint64_t a1)
{
  type metadata accessor for _ContainerValueWritingModifier<TabItemLabel_v0?>(0, &lazy cache variable for type metadata for (offset: Int, element: _VariadicView_Children.Element)?, type metadata accessor for (offset: Int, element: _VariadicView_Children.Element), MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for _ContainerValueWritingModifier<TabItemLabel_v0?>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined destroy of EnumeratedSequence<_VariadicView_Children>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for ViewInputFlagModifier<AccessibilityShowsLabelIcon>(0, a2, a3, MEMORY[0x1E697FFD0], a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t _ContainerValueWritingModifier.init(keyPath:value:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  v5 = *a1;
  *a3 = a1;
  v6 = *(v5 + *MEMORY[0x1E69E6CE8] + 8);
  v7 = type metadata accessor for _ContainerValueWritingModifier();
  v8 = *(*(v6 - 8) + 32);
  v9 = a3 + *(v7 + 28);

  return v8(v9, a2, v6);
}

void specialized UIKitTabBarBottomAccessory.hostingView<A>(_:willUpdate:)(void *a1)
{
  v3 = UIHostingViewBase.traitCollectionOverride.getter();
  if (!v3)
  {
    v3 = [v1 traitCollection];
  }

  v4 = v3;
  [v3 tabAccessoryEnvironment];
  type metadata accessor for EnvironmentPropertyKey<TabViewBottomAccessoryPlacementKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TabViewBottomAccessoryPlacementKey>, &type metadata for TabViewBottomAccessoryPlacementKey, &protocol witness table for TabViewBottomAccessoryPlacementKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<TabViewBottomAccessoryPlacementKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a1[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<TabViewBottomAccessoryPlacementKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<TabViewBottomAccessoryPlacementKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<TabViewBottomAccessoryPlacementKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<TabViewBottomAccessoryPlacementKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TabViewBottomAccessoryPlacementKey>, &type metadata for TabViewBottomAccessoryPlacementKey, &protocol witness table for TabViewBottomAccessoryPlacementKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<TabViewBottomAccessoryPlacementKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<TabPlatformIdentified>, _TraitWritingModifier<TabPlatformIdentifierKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<TabPlatformIdentified>, _TraitWritingModifier<TabPlatformIdentifierKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<TabPlatformIdentified>, _TraitWritingModifier<TabPlatformIdentifierKey>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<TabPlatformIdentified>, _TraitWritingModifier<TabPlatformIdentifierKey>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ViewModifier_Content<TabPlatformIdentified> and conformance _ViewModifier_Content<A>();
    v5[1] = lazy protocol witness table accessor for type _TraitWritingModifier<TabPlatformIdentifierKey> and conformance _TraitWritingModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<TabPlatformIdentified>, _TraitWritingModifier<TabPlatformIdentifierKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<TabPlatformIdentified>, _TraitWritingModifier<TabPlatformIdentifierKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<TabPlatformIdentified>, _TraitWritingModifier<TabPlatformIdentifierKey>>)
  {
    type metadata accessor for ViewInputFlagModifier<AccessibilityShowsLabelIcon>(255, &lazy cache variable for type metadata for _ViewModifier_Content<TabPlatformIdentified>, lazy protocol witness table accessor for type TabPlatformIdentified and conformance TabPlatformIdentified, &type metadata for TabPlatformIdentified, MEMORY[0x1E697FDE8]);
    type metadata accessor for EnvironmentPropertyKey<TabViewBottomAccessoryPlacementKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<TabPlatformIdentifierKey>, &type metadata for TabPlatformIdentifierKey, &protocol witness table for TabPlatformIdentifierKey, MEMORY[0x1E697FDB8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<TabPlatformIdentified>, _TraitWritingModifier<TabPlatformIdentifierKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<TabPlatformIdentified> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<TabPlatformIdentified> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<TabPlatformIdentified> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for ViewInputFlagModifier<AccessibilityShowsLabelIcon>(255, &lazy cache variable for type metadata for _ViewModifier_Content<TabPlatformIdentified>, lazy protocol witness table accessor for type TabPlatformIdentified and conformance TabPlatformIdentified, &type metadata for TabPlatformIdentified, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<TabPlatformIdentified> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<TabPlatformIdentifierKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<TabPlatformIdentifierKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<TabPlatformIdentifierKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<TabViewBottomAccessoryPlacementKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<TabPlatformIdentifierKey>, &type metadata for TabPlatformIdentifierKey, &protocol witness table for TabPlatformIdentifierKey, MEMORY[0x1E697FDB8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDC0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<TabPlatformIdentifierKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<AnyView>, MayNotInsertCALayersEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<AnyView>, MayNotInsertCALayersEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<AnyView>, MayNotInsertCALayersEffect> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<VStack<AnyView>, MayNotInsertCALayersEffect>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type VStack<AnyView> and conformance VStack<A>();
    v5[1] = MEMORY[0x1E69806C8];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<AnyView>, MayNotInsertCALayersEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<VStack<AnyView>, MayNotInsertCALayersEffect>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<VStack<AnyView>, MayNotInsertCALayersEffect>)
  {
    type metadata accessor for EnvironmentPropertyKey<TabViewBottomAccessoryPlacementKey>(255, &lazy cache variable for type metadata for VStack<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], MEMORY[0x1E6981860]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<VStack<AnyView>, MayNotInsertCALayersEffect>);
    }
  }
}

void type metadata accessor for EnvironmentPropertyKey<TabViewBottomAccessoryPlacementKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type VStack<AnyView> and conformance VStack<A>()
{
  result = lazy protocol witness table cache variable for type VStack<AnyView> and conformance VStack<A>;
  if (!lazy protocol witness table cache variable for type VStack<AnyView> and conformance VStack<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<TabViewBottomAccessoryPlacementKey>(255, &lazy cache variable for type metadata for VStack<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], MEMORY[0x1E6981860]);
    result = swift_getWitnessTable(MEMORY[0x1E6981870], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type VStack<AnyView> and conformance VStack<A>);
  }

  return result;
}

void type metadata accessor for ViewInputFlagModifier<AccessibilityShowsLabelIcon>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t specialized static SystemTabConstants.maxTabs(in:)(unsigned __int8 *a1)
{
  v1 = *a1;
  if ((v1 & 1) != 0 || v1 == 2)
  {
    return 8;
  }

  else
  {
    return 5;
  }
}

void UICollectionViewListCoordinator.updateLeadingHeaderMargin(collectionView:hasGlobalHeader:existingView:)(void *a1, char a2, char *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1E69E7D40];
  v76 = ObjectType;
  if (a2)
  {
    v18 = v11;
    v19 = v4;
    v20 = specialized UICollectionViewListCoordinatorBase.numberOfSections(in:)(v11, v12, v13, v14);
    if (v20 < 0)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v24 = v20;
    v25 = 0;
    while (v24 != v25)
    {
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      v19 = v4;
      v26 = specialized UICollectionViewListCoordinatorBase.collectionView(_:numberOfItemsInSection:)(v25++, v21, v22, v23);
      if (v26 >= 1)
      {
        MEMORY[0x18D000680](0, v25 - 1);
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        (*(v10 + 8))(v16, v18);
        *&v16 = COERCE_DOUBLE([a1 cellForItemAtIndexPath_]);

        if (*&v16 != 0.0)
        {
          type metadata accessor for AnyListCollectionViewCell();
          v28 = swift_dynamicCastClass();
          if (v28)
          {
            v29 = v28;
            v30 = v16;
            v31 = [v29 contentView];
            [v31 frame];
            v33 = v32;
            v35 = v34;
            v37 = v36;
            v39 = v38;

            v78.origin.x = v33;
            v78.origin.y = v35;
            v78.size.width = v37;
            v78.size.height = v39;
            MinX = CGRectGetMinX(v78);
            v41 = [v29 contentView];

            [v41 bounds];
            v43 = v42;
            v45 = v44;

            v46 = static HorizontalAlignment.listRowSeparatorLeading.getter();
            v47 = *((*v17 & *v29) + 0x68);
            *&v48 = COERCE_DOUBLE(v47(v46, v43, v45));
            if (v49)
            {
              v50 = static HorizontalAlignment.leadingText.getter();
              v51 = COERCE_DOUBLE(v47(v50, v43, v45));
              v16 = v52;

              v53 = 0.0;
              if ((v16 & 1) == 0)
              {
                v53 = v51;
              }
            }

            else
            {
              v16 = v48;

              v53 = *&v16;
            }

            *(v4 + *((*v17 & *v4) + 0x348)) = MinX + v53;
          }

          else
          {
          }
        }

        break;
      }
    }
  }

  else
  {
    *(v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x348)) = 0;
  }

  v77 = a3;
  v19 = [a1 visibleSupplementaryViewsOfKind_];
  v74 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionReusableView, 0x1E69DC7E8);
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = v4;
  v75 = a1;
  if (v24 >> 62)
  {
LABEL_29:
    v54 = __CocoaSet.count.getter();
    if (!v54)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v54 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v54)
    {
      goto LABEL_30;
    }
  }

  if (v54 < 1)
  {
    __break(1u);
    goto LABEL_44;
  }

  v55 = 0;
  v56 = *((*MEMORY[0x1E69E7D40] & *v17) + 0x348);
  do
  {
    if ((v24 & 0xC000000000000001) != 0)
    {
      v57 = MEMORY[0x18D00E9C0](v55, v24);
    }

    else
    {
      v57 = *(v24 + 8 * v55 + 32);
    }

    v58 = v57;
    type metadata accessor for TableCollectionViewCell(0);
    v59 = swift_dynamicCastClass();
    if (v59)
    {
      *(v59 + direct field offset for TableCollectionViewCell.headerLeadingMargin) = *(v17 + v56);
      v60 = *(v59 + direct field offset for ListCollectionViewCellBase.host);
      if (v60)
      {
        type metadata accessor for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>(0);
        lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>, protocol conformance descriptor for _UIHostingView<A>);
        v61 = v60;
        ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
      }
    }

    ++v55;
  }

  while (v54 != v55);
LABEL_30:

  v16 = v77;
  if (*&v77 != 0.0)
  {
    v62 = v77;
    goto LABEL_38;
  }

  v63 = static UICollectionViewListCoordinatorBase.globalHeaderKind.getter();
  v64 = MEMORY[0x18D00C850](v63);

  v65 = [v75 visibleSupplementaryViewsOfKind_];

  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (v19 >> 62)
  {
LABEL_45:
    if (__CocoaSet.count.getter())
    {
      goto LABEL_34;
    }

LABEL_46:

    return;
  }

  if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_46;
  }

LABEL_34:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v66 = MEMORY[0x18D00E9C0](0, v19);
  }

  else
  {
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v66 = *(v19 + 32);
  }

  v67 = v66;

  v62 = v67;
LABEL_38:
  type metadata accessor for TableGlobalHeader();
  v68 = swift_dynamicCastClass();
  if (v68)
  {
    v69 = *(v17 + *((*MEMORY[0x1E69E7D40] & *v17) + 0x348));
    v70 = *(v68 + OBJC_IVAR____TtC7SwiftUI17TableGlobalHeader_headerLeadingMargin);
    v71 = v68;
    *(v68 + OBJC_IVAR____TtC7SwiftUI17TableGlobalHeader_headerLeadingMargin) = v69;
    v72 = v16;
    if (v70 != v69)
    {
      [v71 setNeedsUpdateConfiguration];
    }
  }

  else
  {
    v73 = v16;
  }
}

id closure #2 in UICollectionViewListCoordinator.listConfiguration(offset:environment:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v4 = Strong;
  v5 = UICollectionViewListCoordinatorBase.leadingSwipeActionsConfiguration(indexPath:)(a1);

  return v5;
}

id closure #3 in UICollectionViewListCoordinator.listConfiguration(offset:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v8 = Strong;
  v11 = a3;
  v12 = a4;

  v9 = UICollectionViewListCoordinatorBase.trailingSwipeActionsConfiguration(indexPath:environment:)(a1, &v11);

  outlined consume of EnvironmentValues?(v11, v12);
  return v9;
}

BOOL closure #2 in implicit closure #1 in UICollectionViewListCoordinator.update(_:to:transaction:performDiff:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*(a5 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v15 - v11;
  (*(v7 + 80))(a1, a3, v7, v10);
  swift_getAssociatedConformanceWitness();
  v13 = dispatch thunk of Collection.isEmpty.getter();
  (*(v9 + 8))(v12, AssociatedTypeWitness);
  return (v13 & 1) == 0;
}

void closure #3 in UICollectionViewListCoordinator.update(_:to:transaction:performDiff:)(uint64_t a1, void *a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    UICollectionViewListCoordinator.updateLeadingHeaderMargin(collectionView:hasGlobalHeader:existingView:)(a2, a3 & 1, 0);
  }
}

char *UICollectionViewListCoordinator.collectionView(_:viewForSupplementaryElementOfKind:at:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = MEMORY[0x1E69E7D40];
  v11 = type metadata accessor for ShadowListDataSource(0, *((*MEMORY[0x1E69E7D40] & *v5) + 0x328), *(*((*MEMORY[0x1E69E7D40] & *v5) + 0x338) + 8), a4);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - v13;
  v30 = a1;
  v31 = a3;
  v32 = UICollectionViewListCoordinatorBase.collectionView(_:viewForSupplementaryElementOfKind:at:)(a1, a2, a3, a4);
  v15 = *((*v10 & *v5) + 0x88);
  swift_beginAccess();
  v16 = *(v12 + 16);
  v16(v14, &v5[v15], v11);
  LOBYTE(a3) = ShadowListDataSource.hasGlobalHeader.getter(v11);
  v17 = *(v12 + 8);
  v17(v14, v11);
  if (a3)
  {
    v16(v14, &v5[v15], v11);
    v18 = ShadowListDataSource.hasGlobalHeader.getter(v11);
    v17(v14, v11);
    v19 = v32;
    v20 = v32;
    UICollectionViewListCoordinator.updateLeadingHeaderMargin(collectionView:hasGlobalHeader:existingView:)(v30, v18 & 1, v19);
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v21 == v31)
  {

    v24 = v32;
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v24 = v32;
    if ((v23 & 1) == 0)
    {
      return v24;
    }
  }

  type metadata accessor for TableCollectionViewCell(0);
  v25 = swift_dynamicCastClass();
  if (v25)
  {
    *(v25 + direct field offset for TableCollectionViewCell.headerLeadingMargin) = *&v5[*((*MEMORY[0x1E69E7D40] & *v5) + 0x348)];
    v26 = *(v25 + direct field offset for ListCollectionViewCellBase.host);
    if (v26)
    {
      type metadata accessor for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>(0);
      lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>, protocol conformance descriptor for _UIHostingView<A>);
      v27 = v24;
      v28 = v26;
      ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
    }
  }

  return v24;
}

char *@objc UICollectionViewListCoordinator.collectionView(_:viewForSupplementaryElementOfKind:at:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = a1;
  v16 = UICollectionViewListCoordinator.collectionView(_:viewForSupplementaryElementOfKind:at:)(v14, v11, v13, v10);

  (*(v8 + 8))(v10, v7);

  return v16;
}

uint64_t closure #1 in UICollectionViewListCoordinator.collectionView(_:sceneActivationConfigurationForItemAt:point:)@<X0>(uint64_t Value@<X0>, void *a2@<X8>)
{
  if ((*(Value + 208) & 1) == 0)
  {
    type metadata accessor for [SceneList.Namespace : SceneList](0);
    v3 = AGGraphGetValue();
    v4 = *v3;
    if (*(*v3 + 16))
    {

      v5 = specialized __RawDictionaryStorage.find<A>(_:)(0, 0, 2);
      if (v6)
      {
        v7 = (*(v4 + 56) + 24 * v5);
        v8 = *v7;
        v9 = v7[1];
        v10 = v7[2];

        *a2 = v8;
        a2[1] = v9;
        a2[2] = v10;
        return result;
      }
    }
  }

  result = EnvironmentValues.init()();
  *a2 = MEMORY[0x1E69E7CC0];
  return result;
}

Class @objc UICollectionViewListCoordinator.collectionView(_:sceneActivationConfigurationForItemAt:point:)(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = a1;
  v12 = specialized UICollectionViewListCoordinator.collectionView(_:sceneActivationConfigurationForItemAt:point:)(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

uint64_t closure #1 in UICollectionViewListCoordinator.collectionView(_:contextMenuConfigurationForItemsAt:point:)(uint64_t a1, uint64_t a2, char *a3, int a4)
{
  v70 = a4;
  v6 = *a3;
  v7 = MEMORY[0x1E69E7D40];
  v8 = *MEMORY[0x1E69E7D40];
  v71 = type metadata accessor for MenuVisitor(0);
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *((v8 & v6) + 0x328);
  v69 = *((v8 & v6) + 0x338);
  v12 = type metadata accessor for ShadowListDataSource(0, v10, *(v69 + 8), v11);
  v89 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v87 = &v65 - v13;
  v68 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v83 = type metadata accessor for Optional();
  v15 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v17 = &v65 - v16;
  v18 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v19);
  v82 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v81 = &v65 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v80 = &v65 - v24;
  v25 = *((v8 & v6) + 0x340);
  v88 = a3;
  v26 = *((v8 & v6) + 0x330);
  v67 = v25;
  v66 = v26;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v27 = Set.init()();
  v91 = v27;
  v28 = *(a2 + 16);
  if (v28)
  {
    v73 = v15;
    v29 = *((*v7 & *v88) + 0x88);
    v30 = *(type metadata accessor for IndexPath() - 8);
    v31 = a2 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    swift_beginAccess();
    v32 = *(v30 + 72);
    v33 = *(v89 + 16);
    v89 += 16;
    v85 = (v89 - 8);
    v86 = v33;
    v84 = (v18 + 48);
    v75 = (v18 + 16);
    v76 = (v18 + 32);
    v74 = (v18 + 8);
    ++v73;
    v77 = v32;
    v78 = v29;
    do
    {
      v34 = v87;
      v86(v87, &v88[v29], v12);
      WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v12);
      ListCoreDataSource.selectionValue(forRowAt:)(v31, v12, WitnessTable, v17);
      (*v85)(v34, v12);
      if ((*v84)(v17, 1, AssociatedTypeWitness) == 1)
      {
        v27 = (*v73)(v17, v83);
      }

      else
      {
        v36 = v80;
        (*v76)(v80, v17, AssociatedTypeWitness);
        (*v75)(v82, v36, AssociatedTypeWitness);
        type metadata accessor for Set();
        v37 = AssociatedTypeWitness;
        v38 = v12;
        v39 = v17;
        v40 = v81;
        v32 = v77;
        Set.insert(_:)();
        v41 = *v74;
        v42 = v40;
        v17 = v39;
        v12 = v38;
        AssociatedTypeWitness = v37;
        (*v74)(v42, v37);
        v43 = v36;
        v29 = v78;
        v27 = v41(v43, v37);
      }

      v31 += v32;
      --v28;
    }

    while (v28);
  }

  MEMORY[0x1EEE9AC00](v27);
  *&v44 = v68;
  *(&v44 + 1) = v66;
  *&v45 = v69;
  *(&v45 + 1) = v67;
  *(&v65 - 3) = v44;
  *(&v65 - 2) = v45;
  LODWORD(v63) = v70;
  v64._rawValue = &v91;
  static Update.ensure<A>(_:)();
  v46 = v90;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu, 0x1E69DCC60);
  v47 = MEMORY[0x1E69E7CC0];
  v90 = MEMORY[0x1E69E7CC0];
  v48 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_7SwiftUI16PlatformItemListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v49 = MEMORY[0x1E69E7CC8];
  v50 = v72;
  v72[8] = 0;
  *(v50 + 16) = v49;
  *(v50 + 24) = v48;
  *(v50 + 32) = v47;
  *(v50 + 40) = v49;
  *(v50 + 48) = 0;
  _s5UIKit25UIBackgroundConfigurationVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<MenuVisitor.MenuStackGroup>, type metadata accessor for MenuVisitor.MenuStackGroup, MEMORY[0x1E69E6F90]);
  v51 = type metadata accessor for MenuVisitor.MenuStackGroup(0);
  v52 = (*(*(v51 - 8) + 80) + 32) & ~*(*(v51 - 8) + 80);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_18CD63400;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v54 = __swift_project_value_buffer(v51, static MenuVisitor.MenuStackGroup.empty);
  outlined init with copy of ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>(v54, v53 + v52, type metadata accessor for MenuVisitor.MenuStackGroup);
  *(v50 + 56) = v53;
  v55 = *(v71 + 32);
  v56 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  (*(*(v56 - 8) + 56))(v50 + v55, 1, 1, v56);
  *v50 = 0;
  MenuVisitor.visit(_:uniqueNames:)(v46, &v90);

  v57 = *(v50 + 32);

  outlined destroy of UIHostingConfiguration<_UnaryViewAdaptor<TableGlobalHeader.Wrapper>, EmptyView>(v50, type metadata accessor for MenuVisitor);
  v58._countAndFlagsBits = 0;
  v58._object = 0xE000000000000000;
  v92.value.super.isa = 0;
  v92.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v59, v58, 0, v92, 0, 0xFFFFFFFFFFFFFFFFLL, v57, v64);
  v61 = v60;

  return v61;
}

void closure #1 in closure #1 in UICollectionViewListCoordinator.collectionView(_:contextMenuConfigurationForItemsAt:point:)(uint64_t *a2@<X1>, void *a7@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Set();
  swift_getFunctionTypeMetadata1();
  v9 = *AGGraphGetValue();
  v11 = *a2;

  v9(&v10, &v11);

  *a7 = v10;
}

id @objc UICollectionViewListCoordinator.collectionView(_:contextMenuConfigurationForItemsAt:point:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  type metadata accessor for IndexPath();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = a1;
  v9 = specialized UICollectionViewListCoordinator.collectionView(_:contextMenuConfigurationForItemsAt:point:)(v7, v6);

  return v9;
}

uint64_t closure #1 in UICollectionViewListCoordinator.collectionView(_:contextMenuConfiguration:highlightPreviewForItemAt:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = type metadata accessor for ShadowListDataSource(255, a1, *(a2 + 8), a2);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v4);
  v7 = type metadata accessor for _RowVisitationContext(0, v4, WitnessTable, v6);
  result = _RowVisitationContext.wantsClippedBackground.getter(v7);
  *a3 = result & 1;
  return result;
}

id @objc UICollectionViewListCoordinator.collectionView(_:contextMenuConfiguration:highlightPreviewForItemAt:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t (*a6)(id, char *))
{
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  v17 = a6(v14, v13);

  (*(v11 + 8))(v13, v10);

  return v17;
}

double closure #1 in closure #1 in UICollectionViewListCoordinator.collectionView(_:willPerformPreviewActionForMenuWith:animator:)@<D0>(uint64_t a2@<X8>)
{
  type metadata accessor for TableHeaderView?(0, &lazy cache variable for type metadata for ContextMenuPreviewAction?, &type metadata for ContextMenuPreviewAction, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  v5 = *Value;
  v4 = *(Value + 8);
  *a2 = *Value;
  *(a2 + 8) = v4;
  v6 = *(Value + 16);
  *(a2 + 16) = v6;

  return outlined copy of ContextMenuPreviewAction?(v5, v4, v6);
}

void @objc UICollectionViewListCoordinator.collectionView(_:willPerformPreviewActionForMenuWith:animator:)(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = a1;
  specialized UICollectionViewListCoordinator.collectionView(_:willPerformPreviewActionForMenuWith:animator:)(v8, v9, a5);

  swift_unknownObjectRelease();
}

void *TableGlobalHeader.Wrapper.body.getter@<X0>(uint64_t a1@<X8>)
{
  __src[0] = static HorizontalAlignment.center.getter();
  __src[1] = 0;
  LOBYTE(__src[2]) = 0;
  closure #1 in TableGlobalHeader.Wrapper.body.getter(v2, &__src[3]);
  KeyPath = swift_getKeyPath();
  v5 = *(v2 + 8);
  __src[33] = KeyPath;
  __src[34] = v5;
  v6 = static Animation.interpolatingSpring(duration:bounce:initialVelocity:)(KeyPath, 0.3, 0.0, 0.0);
  v7 = *v2;
  __src[35] = v6;
  LOBYTE(__src[36]) = v7;
  v8 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  memcpy(__dst, __src, 0x121uLL);
  v19 = 0;
  result = memcpy(a1, __dst, 0x128uLL);
  *(a1 + 296) = v8;
  *(a1 + 304) = v10;
  *(a1 + 312) = v12;
  *(a1 + 320) = v14;
  *(a1 + 328) = v16;
  *(a1 + 336) = v19;
  return result;
}

uint64_t closure #1 in TableGlobalHeader.Wrapper.body.getter@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  if (*(a1 + 2))
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0;
  }

  if (*(a1 + 2))
  {
    v5 = 0x4038000000000000;
  }

  else
  {
    v5 = 0x4020000000000000;
  }

  v6 = static Edge.Set.all.getter();
  outlined init with copy of TableHeaderView?(a1 + 16, v17, &lazy cache variable for type metadata for TableHeaderView?, &type metadata for TableHeaderView);
  BYTE8(v18) = v6;
  *&v19 = 0x4026000000000000;
  *(&v19 + 1) = v5;
  *&v20 = 0x4026000000000000;
  *(&v20 + 1) = v5;
  LOBYTE(v21) = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  LOBYTE(v9) = v21;
  v8[5] = v19;
  v8[6] = v20;
  v8[3] = v17[3];
  v8[4] = v18;
  v8[0] = v17[0];
  v8[1] = v17[1];
  v8[2] = v17[2];
  v22 = v10;
  v23 = v11;
  v21 = v9;
  v28 = v16;
  v26 = v14;
  v27 = v15;
  v24 = v12;
  v25 = v13;
  outlined init with copy of ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>(v17, v8, type metadata accessor for ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>);
  *a2 = v4;
  outlined init with copy of ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>(v8, (a2 + 1), type metadata accessor for ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>);
  outlined destroy of UIHostingConfiguration<_UnaryViewAdaptor<TableGlobalHeader.Wrapper>, EmptyView>(v17, type metadata accessor for ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>);
  return outlined destroy of UIHostingConfiguration<_UnaryViewAdaptor<TableGlobalHeader.Wrapper>, EmptyView>(v8, type metadata accessor for ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>);
}

void TableGlobalHeader.updateConfiguration(using:)(uint64_t a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for UIBackgroundConfiguration();
  v67 = *(v5 - 8);
  v68 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E6720];
  _s5UIKit25UIBackgroundConfigurationVSgMaTm_0(0, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v64 = MEMORY[0x1E69DC0B8];
  v65 = &v55 - v9;
  _s5UIKit25UIBackgroundConfigurationVSgMaTm_0(0, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8], v7);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v63 = &v55 - v11;
  v12 = type metadata accessor for UICellConfigurationState();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIHostingConfiguration<_UnaryViewAdaptor<TableGlobalHeader.Wrapper>, EmptyView>(0);
  v17 = v16;
  v56 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v62 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v55 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v69 = &v55 - v23;
  v57 = a1;
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v70 = v3;
  v80.receiver = v3;
  v80.super_class = ObjectType;
  objc_msgSendSuper2(&v80, sel__bridgedUpdateConfigurationUsingState_, isa);

  if (*&v3[OBJC_IVAR____TtC7SwiftUI17TableGlobalHeader_headerLeadingMargin] + -24.0 > 0.0)
  {
    v25 = *&v3[OBJC_IVAR____TtC7SwiftUI17TableGlobalHeader_headerLeadingMargin] + -24.0;
  }

  else
  {
    v25 = 0.0;
  }

  v26 = v21 + *(v17 + 56);
  *v26 = 1;
  MEMORY[0x18D007050]();
  *(v26 + 9) = 0;
  v26[80] = 1;
  *(v26 + 11) = 0;
  v26[96] = 1;
  *(v26 + 97) = 1;
  v27 = type metadata accessor for UIHostingConfigurationStorage(0);
  v28 = v27[9];
  v29 = *(v13 + 56);
  v60 = v13 + 56;
  v61 = v29;
  v29(&v26[v28], 1, 1, v12);
  v59 = v27;
  v26[v27[10]] = 0;
  *&v26[v27[11] + 8] = 0;
  swift_unknownObjectWeakInit();
  v58 = *(v13 + 16);
  v71 = v13 + 16;
  v58(v15, a1, v12);
  v30 = UICellConfigurationState.isEditing.getter();
  v31 = UICellConfigurationState.isSelected.getter();
  v32 = UICellConfigurationState.isPinned.getter();
  LOBYTE(v27) = UICellConfigurationState.isFocused.getter();
  (*(v13 + 8))(v15, v12);
  v33 = OBJC_IVAR____TtC7SwiftUI17TableGlobalHeader_globalHeader;
  v34 = v70;
  swift_beginAccess();
  outlined init with copy of TableHeaderView?(&v34[v33], (v21 + 2), &lazy cache variable for type metadata for TableHeaderView?, &type metadata for TableHeaderView);
  *v21 = v30 & 1;
  *(v21 + 1) = v31 & 1;
  *(v21 + 2) = v32 & 1;
  *(v21 + 3) = v27 & 1;
  v21[1] = v25;
  *v26 = 0;
  static Edge.Set.all.getter();
  v35 = v69;
  outlined init with copy of ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>(v21, v69, type metadata accessor for UIHostingConfiguration<_UnaryViewAdaptor<TableGlobalHeader.Wrapper>, EmptyView>);
  v36 = v56;
  v37 = v35 + *(v56 + 56);
  v38 = *(v37 + 24);
  v74 = *(v37 + 8);
  v75 = v38;
  v76[0] = *(v37 + 40);
  *(v76 + 9) = *(v37 + 49);
  OptionalEdgeInsets.init(_:edges:)();
  OptionalEdgeInsets.adding(_:)();
  v55 = type metadata accessor for UIHostingConfiguration<_UnaryViewAdaptor<TableGlobalHeader.Wrapper>, EmptyView>;
  outlined destroy of UIHostingConfiguration<_UnaryViewAdaptor<TableGlobalHeader.Wrapper>, EmptyView>(v21, type metadata accessor for UIHostingConfiguration<_UnaryViewAdaptor<TableGlobalHeader.Wrapper>, EmptyView>);
  v39 = v78;
  *(v37 + 8) = v77;
  *(v37 + 24) = v39;
  *(v37 + 40) = v79[0];
  *(v37 + 49) = *(v79 + 9);
  *(v37 + 97) = 0;
  v73[3] = v12;
  v73[4] = MEMORY[0x1E69DC0B0];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v73);
  v41 = v57;
  v42 = v58;
  v58(boxed_opaque_existential_1, v57, v12);
  *(&v75 + 1) = v36;
  *&v76[0] = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type UIHostingConfiguration<_UnaryViewAdaptor<TableGlobalHeader.Wrapper>, EmptyView> and conformance UIHostingConfiguration<A, B>, type metadata accessor for UIHostingConfiguration<_UnaryViewAdaptor<TableGlobalHeader.Wrapper>, EmptyView>, protocol conformance descriptor for UIHostingConfiguration<A, B>);
  v43 = __swift_allocate_boxed_opaque_existential_1(&v74);
  v44 = v69;
  v45 = v62;
  outlined init with copy of ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>(v69, v62, type metadata accessor for UIHostingConfiguration<_UnaryViewAdaptor<TableGlobalHeader.Wrapper>, EmptyView>);
  outlined init with copy of _Benchmark(v73, &v72);
  type metadata accessor for UIConfigurationState();
  v46 = v63;
  v47 = swift_dynamicCast();
  v61(v46, v47 ^ 1u, 1, v12);
  outlined assign with take of UICellConfigurationState?(v46, v45 + *(v36 + 56) + v59[9], &lazy cache variable for type metadata for UICellConfigurationState?, v64);
  outlined init with take of UIHostingConfiguration<_UnaryViewAdaptor<TableGlobalHeader.Wrapper>, EmptyView>(v45, v43);
  outlined destroy of UIHostingConfiguration<_UnaryViewAdaptor<TableGlobalHeader.Wrapper>, EmptyView>(v44, v55);
  __swift_destroy_boxed_opaque_existential_1(v73);
  v48 = v70;
  MEMORY[0x18D00DB90](&v74);
  v49 = v66;
  static UIBackgroundConfiguration.listHeader()();
  *(&v75 + 1) = v12;
  *&v76[0] = MEMORY[0x1E69DC0B0];
  v50 = __swift_allocate_boxed_opaque_existential_1(&v74);
  v42(v50, v41, v12);
  v51 = v65;
  UIBackgroundConfiguration.updated(for:)();
  v53 = v67;
  v52 = v68;
  (*(v67 + 8))(v49, v68);
  __swift_destroy_boxed_opaque_existential_1(&v74);
  (*(v53 + 56))(v51, 0, 1, v52);
  MEMORY[0x18D00DBB0](v51);
  v54 = [v48 contentView];
  [v54 addInteraction_];
}

id TableGlobalHeader.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC7SwiftUI17TableGlobalHeader_globalHeader];
  *v4 = xmmword_18CD633F0;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 63) = 0;
  *&v1[OBJC_IVAR____TtC7SwiftUI17TableGlobalHeader_headerLeadingMargin] = 0;
  v5 = OBJC_IVAR____TtC7SwiftUI17TableGlobalHeader_barInteraction;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x1E69DD6C8]) initWithStyle_];
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

void type metadata accessor for UIHostingConfiguration<_UnaryViewAdaptor<TableGlobalHeader.Wrapper>, EmptyView>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UIHostingConfiguration<_UnaryViewAdaptor<TableGlobalHeader.Wrapper>, EmptyView>)
  {
    type metadata accessor for _UnaryViewAdaptor<TableGlobalHeader.Wrapper>(255);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UnaryViewAdaptor<TableGlobalHeader.Wrapper> and conformance _UnaryViewAdaptor<A>, type metadata accessor for _UnaryViewAdaptor<TableGlobalHeader.Wrapper>, MEMORY[0x1E697F380]);
    v7[0] = v3;
    v7[1] = MEMORY[0x1E6981E70];
    v7[2] = v4;
    v7[3] = MEMORY[0x1E6981E60];
    v5 = type metadata accessor for UIHostingConfiguration(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for UIHostingConfiguration<_UnaryViewAdaptor<TableGlobalHeader.Wrapper>, EmptyView>);
    }
  }
}

void type metadata accessor for _UnaryViewAdaptor<TableGlobalHeader.Wrapper>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _UnaryViewAdaptor<TableGlobalHeader.Wrapper>)
  {
    lazy protocol witness table accessor for type TableGlobalHeader.Wrapper and conformance TableGlobalHeader.Wrapper();
    v1 = type metadata accessor for _UnaryViewAdaptor();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _UnaryViewAdaptor<TableGlobalHeader.Wrapper>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TableGlobalHeader.Wrapper and conformance TableGlobalHeader.Wrapper()
{
  result = lazy protocol witness table cache variable for type TableGlobalHeader.Wrapper and conformance TableGlobalHeader.Wrapper;
  if (!lazy protocol witness table cache variable for type TableGlobalHeader.Wrapper and conformance TableGlobalHeader.Wrapper)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableGlobalHeader.Wrapper, &type metadata for TableGlobalHeader.Wrapper, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableGlobalHeader.Wrapper and conformance TableGlobalHeader.Wrapper);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t type metadata accessor for UIConfigurationState()
{
  result = lazy cache variable for type metadata for UIConfigurationState;
  if (!lazy cache variable for type metadata for UIConfigurationState)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIConfigurationState);
  }

  return result;
}

uint64_t outlined init with take of UIHostingConfiguration<_UnaryViewAdaptor<TableGlobalHeader.Wrapper>, EmptyView>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UIHostingConfiguration<_UnaryViewAdaptor<TableGlobalHeader.Wrapper>, EmptyView>(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for TableHeaderView?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

Class specialized UICollectionViewListCoordinator.collectionView(_:sceneActivationConfigurationForItemAt:point:)(void *a1)
{
  if (!static AppGraph.shared)
  {
    return 0;
  }

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v3 = [a1 cellForItemAtIndexPath_];

  if (!v3)
  {
    goto LABEL_7;
  }

  type metadata accessor for AnyListCollectionViewCell();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {

    goto LABEL_7;
  }

  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x98))(__dst);

  if (*(&__dst[1] + 1) == 1)
  {
    outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior?(__dst, &lazy cache variable for type metadata for PlatformItemList.Item.SecondaryNavigationBehavior?, &type metadata for PlatformItemList.Item.SecondaryNavigationBehavior);
LABEL_7:
    memset(v30, 0, sizeof(v30));
    v31 = 0;
    goto LABEL_8;
  }

  outlined init with copy of TableHeaderView?(__dst, v30, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue);
  outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior(__dst);
LABEL_8:
  outlined init with copy of TableHeaderView?(v30, __dst, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue);
  if (!*(&__dst[1] + 1))
  {
    outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior?(v30, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue);

    outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior?(__dst, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue);
    return 0;
  }

  v27 = __dst[0];
  v28 = __dst[1];
  v29 = *&__dst[2];
  static Update.ensure<A>(_:)();
  v23 = __dst[0];
  v24 = *&__dst[1];
  v5 = *(&v28 + 1);
  v6 = v29;
  __swift_project_boxed_opaque_existential_1(&v27, *(&v28 + 1));
  v7 = (*(v6 + 16))(v5, v6);
  SceneList.windowGroup(presenting:)(v7, __src);
  if (!__src[68])
  {
    outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior?(v30, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue);

    outlined destroy of AnyNavigationLinkPresentedValue(&v27);
    outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior?(__src, &lazy cache variable for type metadata for SceneList.Item?, &type metadata for SceneList.Item);
    return 0;
  }

  memcpy(__dst, __src, 0x231uLL);
  v8 = *(&__dst[8] + 1);
  v9 = *&__dst[9];
  v10 = BYTE8(__dst[9]);
  v11 = *(&v28 + 1);
  v12 = v29;
  __swift_project_boxed_opaque_existential_1(&v27, *(&v28 + 1));
  v13 = (*(v12 + 128))(v8, v9, v10, v11, v12);
  if (!v13)
  {
    outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior?(v30, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue);

    outlined destroy of AnyNavigationLinkPresentedValue(&v27);
    outlined destroy of SceneList.Item(__dst);
    return 0;
  }

  v14.super.isa = v13;
  v15 = [objc_allocWithZone(MEMORY[0x1E69DD308]) init];
  __src[3] = type metadata accessor for UIWindowSceneProminentPlacement();
  __src[4] = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type UIWindowSceneProminentPlacement and conformance UIWindowSceneProminentPlacement, MEMORY[0x1E69DC1C8], MEMORY[0x1E69DC1C0]);
  __swift_allocate_boxed_opaque_existential_1(__src);
  MEMORY[0x18D001CA0]();
  UIWindowSceneActivationRequestOptions.placement.setter();
  v16 = v15;
  v17 = [a1 window];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 windowScene];
  }

  else
  {
    v19 = 0;
  }

  [v16 setRequestingScene_];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIWindowSceneActivationConfiguration, 0x1E69DD300);
  v21 = v16;
  v32.value.super.super.isa = v16;
  v32.is_nil = 0;
  v22 = UIWindowSceneActivationConfiguration.init(userActivity:options:preview:)(v14, v32, v33).super.isa;

  outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior?(v30, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue);
  outlined destroy of AnyNavigationLinkPresentedValue(&v27);
  outlined destroy of SceneList.Item(__dst);
  return v22;
}

id specialized UICollectionViewListCoordinator.collectionView(_:contextMenuConfigurationForItemsAt:point:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Binding();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - v9;
  _s5UIKit25UIBackgroundConfigurationVSgMaTm_0(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v37 - v12;
  v41 = a2;
  if (*(a2 + 16) == 1)
  {
    v14 = type metadata accessor for IndexPath();
    v39 = *(v14 - 8);
    v40 = v14;
    v38 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v16 = [a1 cellForItemAtIndexPath_];

    if (v16)
    {
      type metadata accessor for AnyListCollectionViewCell();
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        v18 = (*((*MEMORY[0x1E69E7D40] & *v17) + 0x70))();

        if (v18)
        {
          v19 = v18;
          v20 = [v18 identifier];
          type metadata accessor for ContextMenuIdentity(0);
          v21 = swift_dynamicCastClass();
          if (v21)
          {
            v22 = v21;
            v23 = v39;
            v24 = v40;
            (*(v39 + 16))(v13, v41 + v38, v40);
            (*(v23 + 56))(v13, 0, 1, v24);
            v25 = OBJC_IVAR____TtC7SwiftUI19ContextMenuIdentity_sourceIndexPath;
            swift_beginAccess();
            outlined assign with take of UICellConfigurationState?(v13, v22 + v25, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28]);
            swift_endAccess();
          }

          swift_unknownObjectRelease();
          return v19;
        }
      }

      else
      {
      }
    }
  }

  v27 = MEMORY[0x1E69E7D40];
  v28 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x110);
  swift_beginAccess();
  (*(v8 + 16))(v10, &v3[v28], v7);
  LODWORD(v28) = (*(*(v6 - 8) + 48))(v10, 1, v6);
  (*(v8 + 8))(v10, v7);
  if (v28 == 1)
  {
    return 0;
  }

  v29 = UICollectionViewListCoordinatorBase.selectionStorage.getter();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v30 = WeakSelectionBasedStorage.$menu.getter(v29);
  if ((v30 & 0x100000000) != 0)
  {
    return 0;
  }

  v31 = v30;
  v32 = swift_allocObject();
  *(v32 + 16) = v41;
  *(v32 + 24) = v3;
  *(v32 + 32) = v31;
  v33 = objc_opt_self();
  aBlock[4] = partial apply for closure #1 in UICollectionViewListCoordinator.collectionView(_:contextMenuConfigurationForItemsAt:point:);
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?);
  aBlock[3] = &block_descriptor_40_1;
  v34 = _Block_copy(aBlock);

  v35 = v3;

  v36 = [v33 configurationWithIdentifier:0 previewProvider:0 actionProvider:v34];

  _Block_release(v34);
  [v36 setPreferredMenuElementOrder_];
  return v36;
}

id specialized UICollectionViewListCoordinator.collectionView(_:contextMenuConfiguration:highlightPreviewForItemAt:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v47 = a2;
  v45 = a1;
  v6 = MEMORY[0x1E69E7D40];
  v7 = *v4;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = *MEMORY[0x1E69E7D40] & *v4;
  v10 = (v9 + 816);
  v46 = (v9 + 832);
  v11 = *((v8 & v7) + 0x328);
  v12 = *((v8 & v7) + 0x338);
  v13 = type metadata accessor for ShadowListDataSource(0, v11, *(v12 + 8), a4);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v44 - v15;
  _s7SwiftUI15ModifiedContentVyAA12TableRowViewVAA010CollectionG12CellModifierVGMaTm_0(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6_1>, MEMORY[0x1E697E518], MEMORY[0x1E697E510], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6_1> and conformance _SemanticFeature<A>();
  v17 = static SemanticFeature.isEnabled.getter();
  v18 = *((*v6 & *v4) + 0x88);
  swift_beginAccess();
  (*(v14 + 16))(v16, &v5[v18], v13);
  *&v19 = v11;
  *(&v19 + 1) = *v10;
  v20 = v47;
  *&v21 = v12;
  *(&v21 + 1) = *v46;
  v50 = v21;
  v49 = v19;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v13);
  ListCoreDataSource.visitContent<A>(atRow:visitor:)(v20, partial apply for closure #1 in UICollectionViewListCoordinator.collectionView(_:contextMenuConfiguration:highlightPreviewForItemAt:), v48, v13, MEMORY[0x1E69E6370], WitnessTable, &v51);
  (*(v14 + 8))(v16, v13);
  if (v51 == 2)
  {
    if (v17)
    {
      v23 = 0;
      goto LABEL_6;
    }

    return 0;
  }

  if (((v17 | v51) & 1) == 0)
  {
    return 0;
  }

  v23 = v17 ^ 1 | v51;
LABEL_6:
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v25 = [v45 cellForItemAtIndexPath_];

  result = 0;
  if (!v25)
  {
    return result;
  }

  type metadata accessor for AnyListCollectionViewCell();
  v27 = swift_dynamicCastClass();
  if (v27)
  {
    v28 = v27;
    v29 = v25;
    v30 = [v28 window];
    if (v30)
    {

      v31 = MEMORY[0x18D00ABE0]();
      v55 = 0u;
      v56 = 0u;
      v57 = 6;
      if ((*((*MEMORY[0x1E69E7D40] & *v28) + 0x90))(v31))
      {
        type metadata accessor for ViewResponder();
        if (swift_dynamicCastClass())
        {
          v58[0] = 4;
          hostingViewCoordinateSpace.getter();
          v54 = 1;
          dispatch thunk of ViewResponder.addContentPath(to:kind:in:observer:)();

          outlined destroy of CoordinateSpace(&v51);
        }

        else
        {
        }
      }

      v51 = v55;
      v52 = v56;
      v53 = v57;
      if (v23 & 1 | ((Path.isEmpty.getter() & 1) == 0))
      {
        v32 = [objc_allocWithZone(MEMORY[0x1E69DCE28]) init];
        v33 = [v28 traitCollection];
        v34 = [v33 userInterfaceIdiom];

        if (v34 != 6)
        {
          v35 = [objc_opt_self() clearColor];
          [v32 setBackgroundColor_];
        }

        if (Path.isEmpty.getter())
        {
          v37 = *(&v51 + 1);
          v36 = v51;
          v39 = *(&v52 + 1);
          v38 = v52;
          v40 = v53;
        }

        else
        {
          v42 = [v28 contentView];
          [v42 frame];

          Path.offsetBy(dx:dy:)();
          outlined destroy of Path(&v51);
          v36 = v58[0];
          v37 = v58[1];
          v38 = v58[2];
          v39 = v58[3];
          v40 = v59;
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBezierPath, 0x1E69DC728);
          outlined copy of Path.Storage(v36, v37, v38, v39, v40);
          v43 = UIBezierPath.init(_:)(v58);
          [v32 setVisiblePath_];
        }

        v41 = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView:v28 parameters:v32];

        outlined consume of Path.Storage(v36, v37, v38, v39, v40);
        static Update.end()();
        goto LABEL_22;
      }

      outlined destroy of Path(&v51);
      static Update.end()();
    }

    else
    {
    }
  }

  v41 = 0;
LABEL_22:

  return v41;
}

void specialized UICollectionViewListCoordinator.collectionView(_:willPerformPreviewActionForMenuWith:animator:)(void *a1, void *a2, void *a3)
{
  _s5UIKit25UIBackgroundConfigurationVSgMaTm_0(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &aBlock - v7;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a2 identifier];
  type metadata accessor for ContextMenuIdentity(0);
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
    swift_unknownObjectRelease();
    (*(v10 + 56))(v8, 1, 1, v9);
    goto LABEL_11;
  }

  v16 = OBJC_IVAR____TtC7SwiftUI19ContextMenuIdentity_sourceIndexPath;
  v17 = v15;
  swift_beginAccess();
  outlined init with copy of IndexPath?(v17 + v16, v8);
  swift_unknownObjectRelease();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
LABEL_11:
    outlined destroy of UICollectionLayoutListConfiguration.ContentHuggingElements?(v8, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28]);
    return;
  }

  (*(v10 + 32))(v13, v8, v9);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v19 = [a1 cellForItemAtIndexPath_];

  if (v19)
  {
    type metadata accessor for AnyListCollectionViewCell();
    v20 = swift_dynamicCastClass();
    if (v20)
    {
      v21 = (*((*MEMORY[0x1E69E7D40] & *v20) + 0x78))();

      if (v21)
      {
        if ((*(v21 + 316) & 1) != 0 || (Attribute = AGWeakAttributeGetAttribute(), Attribute == *MEMORY[0x1E698D3F8]) || (v23 = Attribute, v24 = AGGraphClearUpdate(), v37 = 17, MEMORY[0x1EEE9AC00](v24), *(&aBlock - 4) = v23, type metadata accessor for TableHeaderView?(0, &lazy cache variable for type metadata for ContextMenuPreviewAction?, &type metadata for ContextMenuPreviewAction, MEMORY[0x1E69E6720]), static Update.dispatchImmediately<A>(reason:_:)(), AGGraphSetUpdate(), v25 = v33, v33 > 0xFDu))
        {
          (*(v10 + 8))(v13, v9);

          return;
        }

        v26 = aBlock;
        v27 = v32;
        if ((v33 & 0x80) != 0)
        {
          [a3 setPreferredCommitStyle_];
          v30 = swift_allocObject();
          *(v30 + 16) = v26;
          *(v30 + 24) = v27;
          *(v30 + 32) = v25 & 1;
          v35 = partial apply for closure #3 in UICollectionViewListCoordinator.collectionView(_:willPerformPreviewActionForMenuWith:animator:);
          v36 = v30;
          aBlock = MEMORY[0x1E69E9820];
          v32 = 1107296256;
          v33 = thunk for @escaping @callee_guaranteed () -> ();
          v34 = &block_descriptor_28;
          v29 = _Block_copy(&aBlock);
        }

        else
        {
          [a3 setPreferredCommitStyle_];
          v28 = swift_allocObject();
          *(v28 + 16) = v26;
          *(v28 + 24) = v27;
          v35 = partial apply for closure #2 in UICollectionViewListCoordinator.collectionView(_:willPerformPreviewActionForMenuWith:animator:);
          v36 = v28;
          aBlock = MEMORY[0x1E69E9820];
          v32 = 1107296256;
          v33 = thunk for @escaping @callee_guaranteed () -> ();
          v34 = &block_descriptor_34_0;
          v29 = _Block_copy(&aBlock);
          outlined copy of ContextMenuPreviewAction(v26, v27, v25);
        }

        [a3 addAnimations_];
        _Block_release(v29);
        outlined consume of ContextMenuPreviewAction?(v26, v27, v25);
      }
    }

    else
    {
    }
  }

  (*(v10 + 8))(v13, v9);
}

uint64_t outlined destroy of UICollectionLayoutListConfiguration.ContentHuggingElements?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  _s5UIKit25UIBackgroundConfigurationVSgMaTm_0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of IndexPath?(uint64_t a1, uint64_t a2)
{
  _s5UIKit25UIBackgroundConfigurationVSgMaTm_0(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double outlined consume of ContextMenuPreviewAction?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 <= 0xFDu)
  {
    return outlined consume of ContextMenuPreviewAction(a1, a2, a3);
  }

  return result;
}

double outlined consume of ContextMenuPreviewAction(uint64_t a1, uint64_t a2, char a3)
{

  if (a3 < 0)
  {
  }

  return result;
}

double outlined copy of ContextMenuPreviewAction(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
  }

  return result;
}

double outlined copy of ContextMenuPreviewAction?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 <= 0xFDu)
  {
    return outlined copy of ContextMenuPreviewAction(a1, a2, a3);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6_1> and conformance _SemanticFeature<A>()
{
  result = lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v6_1> and conformance _SemanticFeature<A>;
  if (!lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v6_1> and conformance _SemanticFeature<A>)
  {
    _s7SwiftUI15ModifiedContentVyAA12TableRowViewVAA010CollectionG12CellModifierVGMaTm_0(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6_1>, MEMORY[0x1E697E518], MEMORY[0x1E697E510], MEMORY[0x1E697EC20]);
    result = swift_getWitnessTable(MEMORY[0x1E697EC30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v6_1> and conformance _SemanticFeature<A>);
  }

  return result;
}

uint64_t outlined assign with take of UICellConfigurationState?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  _s5UIKit25UIBackgroundConfigurationVSgMaTm_0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of UIHostingConfiguration<_UnaryViewAdaptor<TableGlobalHeader.Wrapper>, EmptyView>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of TableHeaderView?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for TableHeaderView?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t destroy for TableGlobalHeader.Wrapper(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    if (result == 1)
    {
      return result;
    }
  }

  if (*(a1 + 80))
  {
  }

  else
  {

    return __swift_destroy_boxed_opaque_existential_1((a1 + 40));
  }
}

uint64_t initializeWithCopy for TableGlobalHeader.Wrapper(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  if (!v4)
  {
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    v7 = *(a2 + 80);
    if ((v7 & 1) == 0)
    {
LABEL_7:
      v8 = *(a2 + 64);
      *(a1 + 64) = v8;
      (**(v8 - 8))(a1 + 40, a2 + 40);
      goto LABEL_8;
    }

LABEL_5:
    *(a1 + 40) = *(a2 + 40);

LABEL_8:
    *(a1 + 80) = v7;
    *(a1 + 81) = *(a2 + 81);
    return a1;
  }

  if (v4 != 1)
  {
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = v4;
    *(a1 + 32) = *(a2 + 32);

    v7 = *(a2 + 80);
    if ((v7 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v5 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 79) = *(a2 + 79);
  v6 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v6;
  return a1;
}

uint64_t assignWithCopy for TableGlobalHeader.Wrapper(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  if (v4 != 1)
  {
    if (v5 == 1)
    {
      outlined destroy of TableHeaderView(a1 + 16);
      *(a1 + 16) = *(a2 + 16);
      v10 = *(a2 + 48);
      v9 = *(a2 + 64);
      v11 = *(a2 + 32);
      *(a1 + 79) = *(a2 + 79);
      *(a1 + 48) = v10;
      *(a1 + 64) = v9;
      *(a1 + 32) = v11;
      return a1;
    }

    if (v4)
    {
      if (v5)
      {
        *(a1 + 16) = *(a2 + 16);

        *(a1 + 24) = *(a2 + 24);

        *(a1 + 32) = *(a2 + 32);

        if (a1 == a2)
        {
          goto LABEL_24;
        }
      }

      else
      {
        outlined destroy of UIHostingConfiguration<_UnaryViewAdaptor<TableGlobalHeader.Wrapper>, EmptyView>(a1 + 16, type metadata accessor for Binding<[SwiftUIAnySortComparator]>);
        v15 = *(a2 + 32);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 32) = v15;
        if (a1 == a2)
        {
          goto LABEL_24;
        }
      }
    }

    else if (v5)
    {
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);

      if (a1 == a2)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v16 = *(a2 + 16);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 16) = v16;
      if (a1 == a2)
      {
        goto LABEL_24;
      }
    }

    outlined destroy of TableColumnCollection.Backing(a1 + 40);
    if (*(a2 + 80))
    {
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 80) = 1;
    }

    else
    {
      v17 = *(a2 + 64);
      *(a1 + 64) = v17;
      *(a1 + 72) = *(a2 + 72);
      (**(v17 - 8))(a1 + 40, a2 + 40);
      *(a1 + 80) = 0;
    }

    goto LABEL_24;
  }

  if (!v5)
  {
    v12 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v12;
    v13 = *(a2 + 80);
    if ((v13 & 1) == 0)
    {
LABEL_14:
      v14 = *(a2 + 64);
      *(a1 + 64) = v14;
      *(a1 + 72) = *(a2 + 72);
      (**(v14 - 8))(a1 + 40, a2 + 40);
      *(a1 + 80) = v13;
      goto LABEL_24;
    }

LABEL_12:
    *(a1 + 40) = *(a2 + 40);

    *(a1 + 80) = v13;
LABEL_24:
    *(a1 + 81) = *(a2 + 81);
    *(a1 + 82) = *(a2 + 82);
    return a1;
  }

  if (v5 != 1)
  {
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);

    v13 = *(a2 + 80);
    if ((v13 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  *(a1 + 16) = *(a2 + 16);
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  *(a1 + 79) = *(a2 + 79);
  *(a1 + 48) = v7;
  *(a1 + 64) = v8;
  *(a1 + 32) = v6;
  return a1;
}

__n128 __swift_memcpy83_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 79) = *(a2 + 79);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t assignWithTake for TableGlobalHeader.Wrapper(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 1) = *(a2 + 1);
  *(result + 2) = *(a2 + 2);
  *(result + 3) = *(a2 + 3);
  *(result + 8) = *(a2 + 8);
  v3 = *(result + 24);
  if (v3 == 1)
  {
    v4 = *(a2 + 64);
    *(result + 48) = *(a2 + 48);
    *(result + 64) = v4;
    *(result + 79) = *(a2 + 79);
    v5 = *(a2 + 32);
    *(result + 16) = *(a2 + 16);
    *(result + 32) = v5;
    return result;
  }

  v6 = *(a2 + 24);
  if (v6 == 1)
  {
    v7 = result;
    outlined destroy of TableHeaderView(result + 16);
    result = v7;
    v8 = *(a2 + 64);
    *(v7 + 48) = *(a2 + 48);
    *(v7 + 64) = v8;
    *(v7 + 79) = *(a2 + 79);
    v9 = *(a2 + 32);
    *(v7 + 16) = *(a2 + 16);
    *(v7 + 32) = v9;
    return result;
  }

  if (v3)
  {
    if (v6)
    {
      *(result + 16) = *(a2 + 16);
      v10 = result;

      *(v10 + 24) = v6;

      *(v10 + 32) = *(a2 + 32);

      result = v10;
      if (v10 == a2)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v12 = result;
      outlined destroy of UIHostingConfiguration<_UnaryViewAdaptor<TableGlobalHeader.Wrapper>, EmptyView>(result + 16, type metadata accessor for Binding<[SwiftUIAnySortComparator]>);
      result = v12;
      *(v12 + 16) = *(a2 + 16);
      *(v12 + 32) = *(a2 + 32);
      if (v12 == a2)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_10;
  }

  *(result + 16) = *(a2 + 16);
  *(result + 32) = *(a2 + 32);
  if (result != a2)
  {
LABEL_10:
    v11 = result;
    outlined destroy of TableColumnCollection.Backing(result + 40);
    result = v11;
    *(v11 + 40) = *(a2 + 40);
    *(v11 + 56) = *(a2 + 56);
    *(v11 + 65) = *(a2 + 65);
  }

LABEL_11:
  *(result + 81) = *(a2 + 81);
  *(result + 82) = *(a2 + 82);
  return result;
}

uint64_t getEnumTagSinglePayload for TableGlobalHeader.Wrapper(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 83))
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

uint64_t storeEnumTagSinglePayload for TableGlobalHeader.Wrapper(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 82) = 0;
    *(result + 80) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 83) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 83) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

void type metadata accessor for ModifiedContent<TableHeaderView?, _PaddingLayout>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<TableHeaderView?, _PaddingLayout>)
  {
    type metadata accessor for TableHeaderView?(255, &lazy cache variable for type metadata for TableHeaderView?, &type metadata for TableHeaderView, MEMORY[0x1E69E6720]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<TableHeaderView?, _PaddingLayout>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>, _AnimationModifier<Bool>>, _PaddingLayout>, ViewInputFlagModifier<ShouldAttachScrollEdgeEffectTag>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>, _AnimationModifier<Bool>>, _PaddingLayout>, ViewInputFlagModifier<ShouldAttachScrollEdgeEffectTag>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>, _AnimationModifier<Bool>>, _PaddingLayout>, type metadata accessor for ModifiedContent<ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>, _AnimationModifier<Bool>>);
    _s7SwiftUI15ModifiedContentVyAA12TableRowViewVAA010CollectionG12CellModifierVGMaTm_0(255, &lazy cache variable for type metadata for ViewInputFlagModifier<ShouldAttachScrollEdgeEffectTag>, MEMORY[0x1E6980A98], MEMORY[0x1E6980A90], MEMORY[0x1E697FD28]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>, _AnimationModifier<Bool>>, _PaddingLayout>, ViewInputFlagModifier<ShouldAttachScrollEdgeEffectTag>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata accessor for ModifiedContent<ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>, _AnimationModifier<Bool>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>, _AnimationModifier<Bool>>)
  {
    type metadata accessor for ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>(255);
    _s7SwiftUI15ModifiedContentVyAA12TableRowViewVAA010CollectionG12CellModifierVGMaTm_0(255, &lazy cache variable for type metadata for _AnimationModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>, _AnimationModifier<Bool>>);
    }
  }
}

void type metadata accessor for ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>)
  {
    type metadata accessor for VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>(255);
    type metadata accessor for TableHeaderView?(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<CGFloat>, MEMORY[0x1E69E7DE0], MEMORY[0x1E6980A08]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>);
    }
  }
}

void type metadata accessor for VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>)
  {
    _s5UIKit25UIBackgroundConfigurationVSgMaTm_0(255, &lazy cache variable for type metadata for TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>, type metadata accessor for (StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>), MEMORY[0x1E6981F40]);
    lazy protocol witness table accessor for type TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)> and conformance TupleView<A>();
    v1 = type metadata accessor for VStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>);
    }
  }
}

void type metadata accessor for (StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>))
  {
    type metadata accessor for StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>(255);
    type metadata accessor for ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>(255);
    type metadata accessor for StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>));
    }
  }
}

void type metadata accessor for StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>)
  {
    type metadata accessor for InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>(255);
    _s7SwiftUI15ModifiedContentVyAA12TableRowViewVAA010CollectionG12CellModifierVGMaTm_0(255, &lazy cache variable for type metadata for ModifiedContent<Divider, OpacityRendererEffect>, &type metadata for Divider, MEMORY[0x1E697FCA0], MEMORY[0x1E697E830]);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>);
    }
  }
}

void type metadata accessor for InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>)
  {
    type metadata accessor for OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>();
    lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium> and conformance OrOperationViewInputPredicate<A, B>, type metadata accessor for OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>, MEMORY[0x1E6980940]);
    v1 = type metadata accessor for InvertedViewInputPredicate();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>);
    }
  }
}

void type metadata accessor for OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>()
{
  if (!lazy cache variable for type metadata for OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>)
  {
    v0 = type metadata accessor for OrOperationViewInputPredicate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>);
    }
  }
}

void type metadata accessor for StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)
  {
    type metadata accessor for InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)> and conformance TupleView<A>()
{
  result = lazy protocol witness table cache variable for type TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)> and conformance TupleView<A>;
  if (!lazy protocol witness table cache variable for type TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)> and conformance TupleView<A>)
  {
    _s5UIKit25UIBackgroundConfigurationVSgMaTm_0(255, &lazy cache variable for type metadata for TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>, type metadata accessor for (StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>), MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable(MEMORY[0x1E6981F48], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)> and conformance TupleView<A>);
  }

  return result;
}

void type metadata accessor for TableHeaderView?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>, _AnimationModifier<Bool>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>, _AnimationModifier<Bool>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>, _AnimationModifier<Bool>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>, _AnimationModifier<Bool>>, _PaddingLayout>, type metadata accessor for ModifiedContent<ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>, _AnimationModifier<Bool>>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>, _AnimationModifier<Bool>>, lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>);
    v5[1] = MEMORY[0x1E697E5D8];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>, _AnimationModifier<Bool>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>> and conformance VStack<A>, type metadata accessor for VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, MEMORY[0x1E6981870]);
    v5[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CGFloat> and conformance _EnvironmentKeyWritingModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<ShouldAttachScrollEdgeEffectTag> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<ShouldAttachScrollEdgeEffectTag> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<ShouldAttachScrollEdgeEffectTag> and conformance ViewInputFlagModifier<A>)
  {
    _s7SwiftUI15ModifiedContentVyAA12TableRowViewVAA010CollectionG12CellModifierVGMaTm_0(255, &lazy cache variable for type metadata for ViewInputFlagModifier<ShouldAttachScrollEdgeEffectTag>, MEMORY[0x1E6980A98], MEMORY[0x1E6980A90], MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable(MEMORY[0x1E697FD30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<ShouldAttachScrollEdgeEffectTag> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

uint64_t specialized RandomAccessCollection.lowerBound(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  if (v4 >= 1)
  {
    v7 = result;
    v8 = a3;
    while (1)
    {
      v9 = v4 >> 1;
      v10 = v8 + (v4 >> 1);
      if (__OFADD__(v8, v4 >> 1))
      {
        break;
      }

      if (v10 < a3 || v10 > a4)
      {
        goto LABEL_18;
      }

      v12 = v8 + (v4 >> 1);
      result = v7(&v12, a2);
      if (result)
      {
        if (v10 >= a4)
        {
          __break(1u);
          return a3;
        }

        v8 = v10 + 1;
        v9 = v4 + ~v9;
      }

      v4 = v9;
      if (v9 <= 0)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  return a3;
}

void *closure #1 in Sections.sectionIDs.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = _ViewList_ID.init()();
  if (v3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v3 <= 0x7FFFFFFF)
  {
    v5 = v3;
    return _ViewList_ID.Canonical.init(id:)(&v5, a2);
  }

  __break(1u);
  return result;
}

uint64_t closure #2 in Sections.sectionIDs.getter@<X0>(uint64_t a2@<X8>)
{
  dispatch thunk of _ViewList_ID_Views.subscript.getter();
  v4[0] = v4[2];
  v4[1] = v4[3];
  return _ViewList_ID.Canonical.init(id:)(v4, a2);
}

uint64_t Sections.init(from:useFooters:)@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  outlined init with copy of _VariadicView_Children(a1, a3);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = (*(v7 + 40))(v6, v7);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(v10 + 32))(&v36, v9, v10);
  if (v36 && (v11 = specialized Set.contains(_:)(MEMORY[0x1E697F730], v36), , !v11) && v8)
  {
    v12 = dispatch thunk of _ViewList_ID_Views.endIndex.getter();
    result = outlined destroy of _VariadicView_Children(a1);
    v14 = &outlined read-only object #0 of Sections.init(from:useFooters:);
    if (!v12)
    {
      v14 = MEMORY[0x1E69E7CC0];
    }

    *(a3 + 64) = v14;
    *(a3 + 72) = 0;
    v15 = MEMORY[0x1E69E7CD0];
    *(a3 + 80) = 0;
    *(a3 + 88) = v15;
  }

  else
  {
    LOBYTE(v24) = v8 == 0;
    if (a2)
    {
      v16 = MEMORY[0x1E69E7CD0];
    }

    else
    {
      v16 = 0;
    }

    *(&v24 + 1) = MEMORY[0x1E69E7CC0];
    *&v25 = v16;
    *(&v25 + 1) = MEMORY[0x1E69E7CC0];
    LOBYTE(v26) = 0;
    *(&v26 + 1) = MEMORY[0x1E69E7CD0];
    LOBYTE(v27) = 0;
    *(&v27 + 1) = 0;
    v28[0] = v8 == 0;
    v29 = MEMORY[0x1E69E7CC0];
    v30 = v16;
    v31 = MEMORY[0x1E69E7CC0];
    v32 = 0;
    v33 = MEMORY[0x1E69E7CD0];
    v34 = 0;
    v35 = 0;
    outlined init with copy of SectionedIdentifierAccumulator(&v24, &v36);
    outlined destroy of SectionedIdentifierAccumulator(v28);
    v36 = v24;
    v37 = v25;
    v38 = v26;
    v39 = v27;
    outlined init with copy of _VariadicView_Children(a1, &v20);
    lazy protocol witness table accessor for type SectionedIdentifierAccumulator and conformance SectionedIdentifierAccumulator();
    _ViewList_Backing.visitViews<A>(applying:from:)();
    outlined destroy of _VariadicView_Children(a1);
    outlined destroy of _ViewList_Backing(&v20);
    v17 = v37;
    *(a3 + 64) = *(&v36 + 1);
    *(a3 + 72) = v38;
    v18 = *(&v38 + 1);
    *(a3 + 80) = v17;
    *(a3 + 88) = v18;
    if (v8)
    {
      v20 = v36;
      v21 = v37;
      v22 = v38;
      v23 = v39;

      result = outlined destroy of SectionedIdentifierAccumulator(&v20);
    }

    else
    {
      v19 = *(&v37 + 1);
      v20 = v36;
      v21 = v37;
      v22 = v38;
      v23 = v39;

      outlined destroy of SectionedIdentifierAccumulator(&v20);
      type metadata accessor for _ViewList_ID._Views<[_ViewList_ID]>(0);
      result = swift_allocObject();
      v8 = result;
      *(result + 24) = v19;
      *(result + 16) = 1;
    }
  }

  *(a3 + 96) = v8;
  return result;
}

unint64_t lazy protocol witness table accessor for type SectionedIdentifierAccumulator and conformance SectionedIdentifierAccumulator()
{
  result = lazy protocol witness table cache variable for type SectionedIdentifierAccumulator and conformance SectionedIdentifierAccumulator;
  if (!lazy protocol witness table cache variable for type SectionedIdentifierAccumulator and conformance SectionedIdentifierAccumulator)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SectionedIdentifierAccumulator, &type metadata for SectionedIdentifierAccumulator, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SectionedIdentifierAccumulator and conformance SectionedIdentifierAccumulator);
  }

  return result;
}

void type metadata accessor for _ViewList_ID._Views<[_ViewList_ID]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ViewList_ID._Views<[_ViewList_ID]>)
  {
    type metadata accessor for [_ViewList_ID]();
    lazy protocol witness table accessor for type [_ViewList_ID] and conformance <A> [A]();
    lazy protocol witness table accessor for type [_ViewList_ID] and conformance [A]();
    v1 = type metadata accessor for _ViewList_ID._Views();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ViewList_ID._Views<[_ViewList_ID]>);
    }
  }
}

void type metadata accessor for [_ViewList_ID]()
{
  if (!lazy cache variable for type metadata for [_ViewList_ID])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [_ViewList_ID]);
    }
  }
}

unint64_t lazy protocol witness table accessor for type [_ViewList_ID] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [_ViewList_ID] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [_ViewList_ID] and conformance <A> [A])
  {
    v5[3] = v0;
    v5[4] = v1;
    type metadata accessor for [_ViewList_ID]();
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ViewList_ID and conformance _ViewList_ID();
    result = swift_getWitnessTable(MEMORY[0x1E69E6320], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type [_ViewList_ID] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewList_ID and conformance _ViewList_ID()
{
  result = lazy protocol witness table cache variable for type _ViewList_ID and conformance _ViewList_ID;
  if (!lazy protocol witness table cache variable for type _ViewList_ID and conformance _ViewList_ID)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697E0A0], MEMORY[0x1E697E098], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewList_ID and conformance _ViewList_ID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [_ViewList_ID] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [_ViewList_ID] and conformance [A];
  if (!lazy protocol witness table cache variable for type [_ViewList_ID] and conformance [A])
  {
    type metadata accessor for [_ViewList_ID]();
    result = swift_getWitnessTable(MEMORY[0x1E69E6338], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type [_ViewList_ID] and conformance [A]);
  }

  return result;
}

Swift::Bool __swiftcall Sections.hasFooter(at:)(Swift::Int at)
{
  v2 = *(v1 + 80);
  if (!v2)
  {
    return 0;
  }

  if (!*(v2 + 16))
  {
    return 0;
  }

  v4 = MEMORY[0x18D00F6C0](*(v2 + 40), at);
  v5 = -1 << *(v2 + 32);
  v6 = v4 & ~v5;
  if (((*(v2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(v2 + 48) + 8 * v6);
    result = v8 == at;
    if (v8 == at)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(v2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

Swift::Int __swiftcall Sections.startOffset(forSectionAt:)(Swift::Int forSectionAt)
{
  if (forSectionAt < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = *(v1 + 64);
  if (*(v2 + 16) <= forSectionAt)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return forSectionAt;
  }

  v3 = v2 + 16 * forSectionAt;
  v6 = *(v3 + 32);
  v5 = v3 + 32;
  v4 = v6;
  v7 = *(v1 + 72) == 1 && (*(v5 + 8) & 1) == 0;
  forSectionAt = v4 + v7;
  if (__OFADD__(v4, v7))
  {
    goto LABEL_10;
  }

  return forSectionAt;
}

Swift::Int __swiftcall Sections.footerOffset(forSectionAt:)(Swift::Int forSectionAt)
{
  v3 = *(v1 + 80);
  if (!v3 || !specialized Set.contains(_:)(forSectionAt, v3))
  {
    goto LABEL_13;
  }

  v4 = forSectionAt + 1;
  if (__OFADD__(forSectionAt, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = *(v1 + 64);
  if (v4 >= *(v5 + 16))
  {
    v6 = dispatch thunk of _ViewList_ID_Views.endIndex.getter();
  }

  else
  {
    if (v4 < 0)
    {
LABEL_12:
      __break(1u);
LABEL_13:
      _StringGuts.grow(_:)(24);

      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v9);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v6 = *(v5 + 16 * v4 + 32);
  }

  v7 = __OFSUB__(v6, 1);
  result = v6 - 1;
  if (v7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  return result;
}

void Sections.rowIDs(forSectionAt:)(Swift::Int a1@<X0>, Swift::Int *a2@<X8>)
{
  v5 = Sections.startOffset(forSectionAt:)(a1);
  v6 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = v5;
  v8 = *(v2 + 64);
  if (v6 >= *(v8 + 16))
  {
    v9 = dispatch thunk of _ViewList_ID_Views.endIndex.getter();
  }

  else
  {
    if (v6 < 0)
    {
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    v9 = *(v8 + 16 * v6 + 32);
  }

  if (Sections.hasFooter(at:)(a1) && __OFSUB__(v9--, 1))
  {
    goto LABEL_21;
  }

  if (v9 < v7)
  {
    goto LABEL_16;
  }

  v11 = *(v2 + 96);
  v12 = dispatch thunk of _ViewList_ID_Views.endIndex.getter();
  if (v12 < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v7 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v12 < v9)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *a2 = v7;
  a2[1] = v9;
  a2[2] = v11;
  a2[3] = closure #1 in Sections.rowIDs(forSectionAt:);
  a2[4] = 0;
}

uint64_t closure #1 in Sections.rowIDs(forSectionAt:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;

  return _ViewList_ID.Canonical.init(id:)(v5, a2);
}

Swift::Int Sections.firstIndexPath<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = *(v5 + 24);
  v11 = *(v5 + 32);
  __swift_project_boxed_opaque_existential_1(v5, v10);
  v33 = 2;
  v12 = (*(v11 + 80))(a1, &v33, a2, a3, v10, v11);
  if ((v13 & 1) == 0)
  {
    v17 = v12;
    v18 = *(v5 + 72);
    v19 = *(v5 + 64);

    if (v18 == 1)
    {
    }

    v20 = *(v19 + 16);

    MEMORY[0x1EEE9AC00](v21);
    v32[2] = v5;
    v32[3] = v17;
    v22 = specialized RandomAccessCollection.lowerBound(_:)(partial apply for closure #1 in Sections.firstIndexPath<A>(for:), v32, 0, v20);
    v23 = *(v19 + 16);
    if (v22 >= v23)
    {
      goto LABEL_24;
    }

    v24 = v22;
    result = Sections.startOffset(forSectionAt:)(v22);
    v25 = v17 - result;
    if (__OFSUB__(v17, result))
    {
      __break(1u);
    }

    else
    {
      if (v24 + 1 >= v23)
      {
        v26 = dispatch thunk of _ViewList_ID_Views.endIndex.getter();
      }

      else
      {
        if (v24 < -1)
        {
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        v26 = *(v19 + 16 * (v24 + 1) + 32);
      }

      result = Sections.startOffset(forSectionAt:)(v24);
      v27 = v26 - result;
      if (!__OFSUB__(v26, result))
      {
        result = v25 & ~(v25 >> 63);
        if (result < v27)
        {
LABEL_23:
          MEMORY[0x18D000680](result, v24);
          v30 = type metadata accessor for IndexPath();
          return (*(*(v30 - 8) + 56))(a4, 0, 1, v30);
        }

        if (v25 <= 0 && !v27)
        {
          result = NSNotFound.getter();
          goto LABEL_23;
        }

        v28 = v25 & ~(v25 >> 63);
        if (v18)
        {
        }

        v29 = *(v19 + 16);

        if (v24 < v29 - 1)
        {
          result = v28 - v27;
          if (!__OFSUB__(v28, v27))
          {
            ++v24;
            goto LABEL_23;
          }

LABEL_28:
          __break(1u);
          return result;
        }

LABEL_24:
        v31 = type metadata accessor for IndexPath();
        return (*(*(v31 - 8) + 56))(a4, 1, 1, v31);
      }
    }

    __break(1u);
    goto LABEL_27;
  }

  v14 = type metadata accessor for IndexPath();
  v15 = *(*(v14 - 8) + 56);

  return v15(a4, 1, 1, v14);
}

Swift::Int Sections.firstIndexPath(of:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = a1[1];
  __swift_project_boxed_opaque_existential_1(v3, *(v3 + 24));
  v25[6] = *a1;
  v25[7] = v6;
  v25[5] = 2;
  v7 = ViewList.firstOffset(of:style:)();
  if ((v8 & 1) == 0)
  {
    v12 = v7;
    v13 = *(v3 + 72);
    v14 = *(v3 + 64);

    if (v13 == 1)
    {
    }

    v15 = *(v14 + 16);

    MEMORY[0x1EEE9AC00](v16);
    v25[2] = v3;
    v25[3] = v12;
    v17 = specialized RandomAccessCollection.lowerBound(_:)(partial apply for closure #1 in Sections.firstIndexPath(of:), v25, 0, v15);
    result = Sections.startOffset(forSectionAt:)(v17);
    v18 = v12 - result;
    if (__OFSUB__(v12, result))
    {
      __break(1u);
    }

    else
    {
      v19 = v17 + 1;
      if (!__OFADD__(v17, 1))
      {
        if (v19 >= *(v14 + 16))
        {
          v20 = dispatch thunk of _ViewList_ID_Views.endIndex.getter();
        }

        else
        {
          if (v19 < 0)
          {
LABEL_29:
            __break(1u);
            return result;
          }

          v20 = *(v14 + 16 * v19 + 32);
        }

        result = Sections.startOffset(forSectionAt:)(v17);
        v21 = v20 - result;
        if (!__OFSUB__(v20, result))
        {
          if ((v18 & ~(v18 >> 63)) >= v21)
          {
            if (v18 > 0 || v21)
            {
              if (v13)
              {
              }

              v23 = *(v14 + 16);

              if (v17 < v23 - 1)
              {
                if (!__OFSUB__(v18 & ~(v18 >> 63), v21))
                {
                  goto LABEL_18;
                }

                __break(1u);
              }

              v24 = type metadata accessor for IndexPath();
              return (*(*(v24 - 8) + 56))(a2, 1, 1, v24);
            }

            NSNotFound.getter();
          }

LABEL_18:
          MEMORY[0x18D000680]();
          v22 = type metadata accessor for IndexPath();
          return (*(*(v22 - 8) + 56))(a2, 0, 1, v22);
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  v9 = type metadata accessor for IndexPath();
  v10 = *(*(v9 - 8) + 56);

  return v10(a2, 1, 1, v9);
}

void *closure #1 in Sections.firstIndexPath<A>(for:)(void *result, uint64_t a2, uint64_t a3, __n128 a4)
{
  v4 = *result + 1;
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v6 = *(a2 + 64);
    if (v4 >= *(v6 + 16))
    {
      v7 = dispatch thunk of _ViewList_ID_Views.endIndex.getter();
      return (v7 < a3);
    }

    if ((v4 & 0x8000000000000000) == 0)
    {
      v7 = *(v6 + 16 * v4 + 32);
      return (v7 < a3);
    }
  }

  __break(1u);
  return result;
}

double destroy for Sections(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);

  return result;
}

uint64_t initializeWithCopy for Sections(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;
  *(a1 + 72) = *(a2 + 72);
  v8 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v8;
  *(a1 + 96) = *(a2 + 96);
  v9 = v5;

  return a1;
}

uint64_t assignWithCopy for Sections(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  v4 = *(a2 + 40);
  v5 = *(a1 + 40);
  *(a1 + 40) = v4;
  v6 = v4;

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t assignWithTake for Sections(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  v6 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);

  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t getEnumTagSinglePayload for Sections.Item(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Sections.Item(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t PickerContent.keyboardShortcut(_:modifiers:localization:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a1[1];
  v7 = *a3;
  v9[0] = *a1;
  v9[1] = v6;
  v9[2] = a2;
  v10 = v7;
  return PickerContent.keyboardShortcut(_:)(v9, a4, a5, a6);
}

uint64_t View.pickerKeyboardShortcut(_:modifiers:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  View._trait<A>(_:_:)();
}

uint64_t View.pickerKeyboardShortcut(_:modifiers:localization:)(uint64_t *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{

  View._trait<A>(_:_:)();
}

void static KeyboardShortcutPickerOptionTraitKey.defaultValue.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

uint64_t instantiation function for generic protocol witness table for _KeyboardShortcutPickerContent<A>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for _KeyboardShortcutPickerContent<A>);
  *(a1 + 8) = result;
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for _KeyboardShortcutPickerContent(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) == 0 && ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFFFFFFFE7)
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v10 = *v11;
    *(v10 + 8) = *(v11 + 8);
    *(v10 + 16) = *(v11 + 16);
    *(v10 + 24) = *(v11 + 24);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  return v3;
}

uint64_t assignWithCopy for _KeyboardShortcutPickerContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);

  *(v7 + 16) = *(v8 + 16);
  *(v7 + 24) = *(v8 + 24);
  return a1;
}

uint64_t assignWithTake for _KeyboardShortcutPickerContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);

  *(v7 + 16) = *(v8 + 16);
  *(v7 + 24) = *(v8 + 24);
  return a1;
}

void storeEnumTagSinglePayload for _KeyboardShortcutPickerContent(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 25;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFE)
      {
        v18 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0x7FFFFFFE)
        {
          *v18 = 0;
          *(v18 + 8) = 0;
          *(v18 + 24) = 0;
          *(v18 + 16) = 0;
          *v18 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *(v18 + 8) = a2;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 25);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t type metadata completion function for NSSwiftMutableAttributedString(uint64_t a1)
{
  result = type metadata accessor for AttributedString();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_7SwiftUI21_ScrollableLayoutItemVs5NeverOTg5(void (*a1)(_OWORD *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v5)
  {
    return;
  }

  v25 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = v25;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v10 = v9 - a3 + 1;
    while (v7 < v5)
    {
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_17;
      }

      v22 = a3 + v7;
      a1(v23, &v22);
      if (v4)
      {
        goto LABEL_22;
      }

      v25 = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v8 = v25;
      }

      *(v8 + 16) = v13 + 1;
      v14 = v8 + 104 * v13;
      v15 = v23[0];
      v16 = v23[2];
      *(v14 + 48) = v23[1];
      *(v14 + 64) = v16;
      *(v14 + 32) = v15;
      v17 = v23[3];
      v18 = v23[4];
      v19 = v23[5];
      *(v14 + 128) = v24;
      *(v14 + 96) = v18;
      *(v14 + 112) = v19;
      *(v14 + 80) = v17;
      if (a4 < a3)
      {
        goto LABEL_18;
      }

      if (v10 == ++v7)
      {
        goto LABEL_19;
      }

      if (v11 == v5)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation19AttributedStringKey_pXpG_AF0eF0V5IndexVs5NeverOTg5(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v16 = a1;
  v17 = a2;
  v15 = type metadata accessor for AttributedString.Index();
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  if (v9)
  {
    v19 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v10 = v19;
    v11 = (a3 + 32);
    v14 = v6 + 32;
    while (1)
    {
      v18 = *v11;
      v16(&v18);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v19 = v10;
      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v10 = v19;
      }

      *(v10 + 16) = v13 + 1;
      (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13, v8, v15);
      ++v11;
      if (!--v9)
      {
        return;
      }
    }

    __break(1u);
  }
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay7SwiftUI16_ViewListOutputsVG_14AttributeGraph0I0VyAF0fG0_pGs5NeverOTg5(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v13 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v7 = v13;
    for (i = a3 + 32; ; i += 72)
    {
      a1(&v12, i);
      if (v3)
      {
        break;
      }

      v9 = v12;
      v13 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        v7 = v13;
      }

      *(v7 + 16) = v11 + 1;
      *(v7 + 4 * v11 + 32) = v9;
      if (!--v4)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t specialized Sequence<>.max()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributedString.Index();
  MEMORY[0x1EEE9AC00](*(v4 - 8));
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v9;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v8 + 16);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v26 = v8;
    v24 = a2;
    v25 = v13;
    (v13)(&v23 - v9, v14, v4, v10.n128_f64[0]);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v6, v14 + *(result + 72) * v19, v4);
        lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
        v21 = dispatch thunk of static Comparable.< infix(_:_:)();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v6, v4);
        }

        else
        {
          v22(v6, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v8 + 56);

    return v17(a2, 1, 1, v4, v10);
  }

  return result;
}

uint64_t specialized Sequence<>.max()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t specialized Sequence<>.min()@<X0>(uint64_t result@<X0>, unsigned __int8 *a2@<X8>)
{
  v2 = 1 << *(result + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(result + 64);
  if (v4)
  {
    v5 = 0;
    v6 = __clz(__rbit64(v4));
    v7 = (v4 - 1) & v4;
    v8 = (v2 + 63) >> 6;
LABEL_9:
    v12 = *(result + 56);
    v13 = *(v12 + v6);
    if (!v7)
    {
      goto LABEL_11;
    }

    do
    {
      v14 = v5;
LABEL_15:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = *(v12 + (v15 | (v14 << 6)));
      if (v16 < v13)
      {
        v13 = v16;
      }
    }

    while (v7);
LABEL_11:
    while (1)
    {
      v14 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v14 >= v8)
      {
        goto LABEL_20;
      }

      v7 = *(result + 64 + 8 * v14);
      ++v5;
      if (v7)
      {
        v5 = v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = (v2 + 63) >> 6;
    while (v8 - 1 != v10)
    {
      v5 = v10 + 1;
      v11 = *(result + 72 + 8 * v10);
      v9 -= 64;
      ++v10;
      if (v11)
      {
        v7 = (v11 - 1) & v11;
        v6 = __clz(__rbit64(v11)) - v9;
        goto LABEL_9;
      }
    }

    v13 = 3;
LABEL_20:
    *a2 = v13;
  }

  return result;
}

uint64_t specialized Sequence<>.min()@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>, uint8x16_t a3@<Q1>)
{
  v3 = *(result + 16);
  if (!v3)
  {
    *a2 = 3;
    return result;
  }

  v4 = *(result + 32);
  v5 = v3 - 1;
  if (v3 != 1)
  {
    if (v3 < 5)
    {
      v6 = 1;
      goto LABEL_17;
    }

    if (v3 >= 0x21)
    {
      v7 = v5 & 0xFFFFFFFFFFFFFFE0;
      v8 = vdupq_n_s8(v4);
      v9 = (result + 49);
      v10 = v5 & 0xFFFFFFFFFFFFFFE0;
      a3 = v8;
      do
      {
        v8 = vminq_u8(v9[-1], v8);
        a3 = vminq_u8(*v9, a3);
        v9 += 2;
        v10 -= 32;
      }

      while (v10);
      v11 = vminq_u8(v8, a3);
      v11.i8[0] = vminvq_u8(v11);
      v4 = v11.i32[0];
      if (v5 == v7)
      {
        goto LABEL_15;
      }

      if ((v5 & 0x1C) == 0)
      {
        v6 = v7 | 1;
        goto LABEL_17;
      }
    }

    else
    {
      v7 = 0;
    }

    v6 = v5 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v12 = vdup_n_s16(v4);
    v13 = (v7 + result + 33);
    v14 = v7 - (v5 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v15 = *v13++;
      a3.i32[0] = v15;
      a3.i64[0] = vmovl_u8(*a3.i8).u64[0];
      v12 = vmin_u16(*a3.i8, (*&v12 & 0xFF00FF00FF00FFLL));
      v14 += 4;
    }

    while (v14);
    LOBYTE(v4) = vminv_u16(v12);
    if (v5 == (v5 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_15;
    }

LABEL_17:
    v16 = v3 - v6;
    v17 = (v6 + result + 32);
    do
    {
      v19 = *v17++;
      v18 = v19;
      if (v19 < v4)
      {
        LOBYTE(v4) = v18;
      }

      --v16;
    }

    while (v16);
  }

LABEL_15:
  *a2 = v4;
  return result;
}

uint64_t specialized Sequence<>.min()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributedString.Index();
  MEMORY[0x1EEE9AC00](*(v4 - 8));
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v9;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v8 + 16);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v26 = v8;
    v24 = a2;
    v25 = v13;
    (v13)(&v23 - v9, v14, v4, v10.n128_f64[0]);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v6, v14 + *(result + 72) * v19, v4);
        lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
        v21 = dispatch thunk of static Comparable.< infix(_:_:)();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v6, v4);
        }

        else
        {
          v22(v6, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v8 + 56);

    return v17(a2, 1, 1, v4, v10);
  }

  return result;
}

uint64_t specialized Collection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)(0);
  v24 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v22 - v7;
  v9 = type metadata accessor for AttributedString.Index();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>(0);
  v23 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ClosedRange<AttributedString.Index>(0);
  v22[1] = type metadata accessor for AttributedString.UnicodeScalarView();
  v22[0] = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.UnicodeScalarView and conformance AttributedString.UnicodeScalarView, MEMORY[0x1E69686C0], MEMORY[0x1E69686D0]);
  dispatch thunk of Collection.index(after:)();
  v16 = v8;
  (*(v10 + 16))(v8, a1, v9);
  v17 = v24;
  v18 = *(v10 + 32);
  v18(v16 + *(v24 + 56), v12, v9);
  outlined init with copy of Range<AttributedString.Index>(v16, v5, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
  v19 = *(v17 + 56);
  v18(v15, v5, v9);
  v20 = *(v10 + 8);
  v20(&v5[v19], v9);
  _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v16, v5, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
  v18(&v15[*(v23 + 44)], &v5[*(v17 + 56)], v9);
  v20(v5, v9);
  dispatch thunk of Collection.subscript.getter();
  return outlined destroy of Range<AttributedString.Index>?(v15, type metadata accessor for Range<AttributedString.Index>);
}

uint64_t specialized Sequence.filter(_:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  type metadata accessor for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0(0, &lazy cache variable for type metadata for <<opaque return type of AttributedString.Keys.makeIterator()>>.0, MEMORY[0x1E697D940]);
  v8 = v7;
  v20 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - v9;
  v27 = a3;
  AttributedString.Keys.makeIterator()();

  swift_getOpaqueTypeConformance2();
  dispatch thunk of IteratorProtocol.next()();
  v11 = v23;
  if (v23)
  {
    v12 = MEMORY[0x1E69E7CC0];
    v21 = a1;
    v22 = a2;
    while (1)
    {
      v16 = v24;
      v25[0] = v11;
      v25[1] = v24;
      v17 = a1(v25);
      if (v3)
      {
        break;
      }

      if (v17)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 16) + 1, 1);
          v12 = v26;
        }

        v14 = *(v12 + 16);
        v13 = *(v12 + 24);
        if (v14 >= v13 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
          v12 = v26;
        }

        *(v12 + 16) = v14 + 1;
        v15 = v12 + 16 * v14;
        *(v15 + 32) = v11;
        *(v15 + 40) = v16;
        a1 = v21;
      }

      swift_getOpaqueTypeConformance2();
      dispatch thunk of IteratorProtocol.next()();
      v11 = v23;
      if (!v23)
      {
        goto LABEL_12;
      }
    }

    (*(v20 + 8))(v10, v8);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_12:
    (*(v20 + 8))(v10, v8);
  }

  return v12;
}

void specialized Sequence.filter(_:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v35 = a2;
  v5 = type metadata accessor for ToolbarStorage.Entry(0);
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v32 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = 0;
  v37 = a3;
  v16 = *(a3 + 64);
  v15 = a3 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v33 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v21 = v13;
    if (!v19)
    {
      break;
    }

LABEL_8:
    v22 = *(v36 + 72);
    outlined init with copy of Range<AttributedString.Index>(*(v37 + 56) + v22 * (__clz(__rbit64(v19)) | (v13 << 6)), v9, type metadata accessor for ToolbarStorage.Entry);
    _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v9, v12, type metadata accessor for ToolbarStorage.Entry);
    v23 = v34(v12);
    if (v3)
    {
      outlined destroy of Range<AttributedString.Index>?(v12, type metadata accessor for ToolbarStorage.Entry);

      return;
    }

    v19 &= v19 - 1;
    if (v23)
    {
      _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v12, v32, type metadata accessor for ToolbarStorage.Entry);
      v24 = v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 16) + 1, 1);
        v24 = v38;
      }

      v27 = *(v24 + 16);
      v26 = *(v24 + 24);
      v28 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        v33 = v27 + 1;
        v31 = v27;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
        v28 = v33;
        v27 = v31;
        v24 = v38;
      }

      *(v24 + 16) = v28;
      v29 = *(v36 + 80);
      v33 = v24;
      _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v32, v24 + ((v29 + 32) & ~v29) + v27 * v22, type metadata accessor for ToolbarStorage.Entry);
    }

    else
    {
      outlined destroy of Range<AttributedString.Index>?(v12, type metadata accessor for ToolbarStorage.Entry);
    }
  }

  while (1)
  {
    v13 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v13 >= v20)
    {

      return;
    }

    v19 = *(v15 + 8 * v13);
    ++v21;
    if (v19)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void thunk for @callee_unowned @convention(block) (@unowned NSDictionary, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  (*(a5 + 16))(a5, isa, a2, a3, a4);
}

double thunk for @callee_unowned @convention(block) (@unowned Swift.AnyObject?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  outlined init with copy of Any?(a1, v17);
  v9 = v18;
  if (v18)
  {
    v10 = __swift_project_boxed_opaque_existential_1(v17, v18);
    v11 = *(v9 - 8);
    v12 = MEMORY[0x1EEE9AC00](v10);
    v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14, v12);
    v15 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v11 + 8))(v14, v9);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v15 = 0;
  }

  (*(a5 + 16))(a5, v15, a2, a3, a4);
  swift_unknownObjectRelease();
  return result;
}

uint64_t NSSwiftMutableAttributedString.resolver.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  swift_beginAccess();
  return (*(*(*((v4 & v3) + 0x50) - 8) + 16))(a1, &v1[v5]);
}

uint64_t NSSwiftMutableAttributedString.copyOnWriteTracker.getter@<X0>(uint64_t a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  swift_beginAccess();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for NSSwiftMutableAttributedString<A>, ObjectType);
  v7 = type metadata accessor for NSSwiftAttributedSubstring.CopyOnWriteState(255, ObjectType, WitnessTable, v6);
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v11, &v1[v4], v8);
  if (v11[1])
  {
    return (*(*(v7 - 8) + 32))(a1, v11, v7);
  }

  (*(v9 + 8))(v11, v8);
  NSSwiftAttributedStringProtocol.copyOnWriteState<>()(ObjectType, WitnessTable, a1);
  (*(*(v7 - 8) + 16))(v12, a1, v7);
  swift_beginAccess();
  (*(v9 + 40))(&v1[v4], v12, v8);
  return swift_endAccess();
}

uint64_t NSSwiftMutableAttributedString.copyOnWriteTracker.setter(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for NSSwiftMutableAttributedString<A>, ObjectType);
  v6 = type metadata accessor for NSSwiftAttributedSubstring.CopyOnWriteState(0, ObjectType, WitnessTable, v5);
  (*(*(v6 - 8) + 32))(v10, a1, v6);
  v7 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  swift_beginAccess();
  v8 = type metadata accessor for Optional();
  (*(*(v8 - 8) + 40))(&v1[v7], v10, v8);
  return swift_endAccess();
}

uint64_t NSSwiftMutableAttributedString.invalidateStringCache()()
{
  swift_beginAccess();
  AttributedString.CStringCache.invalidate()();
  swift_endAccess();
  swift_beginAccess();
  AttributedString.UTF16Cache.invalidate()();
  return swift_endAccess();
}

uint64_t NSSwiftMutableAttributedString.fastCStringBuffer()()
{
  v1 = type metadata accessor for AttributedString();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, &v0[*((*MEMORY[0x1E69E7D40] & *v0) + 0x60)], v1, v3);
  swift_beginAccess();
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
  v6 = AttributedString.CStringCache.buffer<A>(for:maxLength:)();
  swift_endAccess();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t NSSwiftMutableAttributedString.fastUTF16Buffer()()
{
  v1 = type metadata accessor for AttributedString();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, &v0[*((*MEMORY[0x1E69E7D40] & *v0) + 0x60)], v1, v3);
  swift_beginAccess();
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
  v6 = AttributedString.UTF16Cache.buffer<A>(for:maxLength:)();
  swift_endAccess();
  (*(v2 + 8))(v5, v1);
  return v6;
}

objc_class *NSSwiftMutableAttributedString.copy()@<X0>(Class *a2@<X8>)
{
  v3.location = NSAttributedString.range.getter();
  isa = NSSwiftMutableAttributedString.attributedSubstring(from:)(v3).super.isa;
  result = type metadata accessor for NSAttributedString();
  a2[3] = result;
  *a2 = isa;
  return result;
}

NSAttributedString __swiftcall NSSwiftMutableAttributedString.attributedSubstring(from:)(__C::_NSRange from)
{
  length = from.length;
  location = from.location;
  ObjectType = swift_getObjectType();
  NSSwiftMutableAttributedString.copyOnWriteTracker.getter(v9);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for NSSwiftMutableAttributedString<A>, ObjectType);
  type metadata accessor for NSSwiftAttributedSubstring.CopyOnWriteState(0, ObjectType, WitnessTable, v5);
  v6.location = location;
  v6.length = length;
  isa = NSSwiftAttributedSubstring.CopyOnWriteState.substring(in:)(v6).super.isa;
  NSSwiftMutableAttributedString.copyOnWriteTracker.setter(v9);
  return isa;
}

uint64_t NSSwiftMutableAttributedString.mutableCopy()@<X0>(uint64_t *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = *v1;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](ObjectType);
  v10 = &v20 - v9;
  v11 = type metadata accessor for AttributedString();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, &v1[*((v6 & v4) + 0x60)], v12);
  v16 = *((*v5 & *v1) + 0x68);
  swift_beginAccess();
  (*(v8 + 16))(v10, &v1[v16], v7);
  v17 = objc_allocWithZone(ObjectType);
  v18 = specialized NSSwiftMutableAttributedString.init(value:resolver:)(v14, v10);
  result = (*(v8 + 8))(v10, v7);
  a1[3] = ObjectType;
  *a1 = v18;
  return result;
}

uint64_t @objc NSSwiftMutableAttributedString.copy()(void *a1, uint64_t a2, void (*a3)(void *__return_ptr))
{
  v4 = a1;
  a3(v7);

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v5 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

Swift::Bool __swiftcall NSSwiftMutableAttributedString.isEqual(to:)(NSAttributedString to)
{
  v2.value.location = 0;
  v2.value.length = 0;
  v2.is_nil = 1;
  return NSAttributedString.isCharacterAndRunwiseEqual(to:in:)(to, v2);
}

uint64_t @objc NSSwiftMutableAttributedString.isEqual(to:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = NSSwiftMutableAttributedString.isEqual(to:)(v4);

  return a1 & 1;
}

uint64_t @objc NSSwiftMutableAttributedString.length.getter(void *a1)
{
  v1 = a1;
  v3 = NSSwiftMutableAttributedString.length.getter(v2);

  return v3;
}

uint64_t NSSwiftMutableAttributedString.length.getter(double a1)
{
  v2 = type metadata accessor for AttributedString.UTF16View();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, &v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x60)], v6, v8);
  AttributedString.utf16.getter();
  (*(v7 + 8))(v10, v6);
  v11 = AttributedString.UTF16View.count.getter();
  (*(v3 + 8))(v5, v2);
  return v11;
}

id NSSwiftMutableAttributedString._stringProxy.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x90);
  v6 = *(v4 + v5);
  if (v6)
  {
    v7 = *(v4 + v5);
  }

  else
  {
    type metadata accessor for NSSwiftMutableAttributedString.StringImplementation(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
    v8 = v4;
    v9 = NSSwiftMutableAttributedString.StringImplementation.__allocating_init(_:)(v4);
    v10 = [objc_allocWithZone(SUINSStringProxy) initWithImplementation_];

    v11 = *(v8 + v5);
    *(v8 + v5) = v10;
    v7 = v10;

    v6 = 0;
  }

  v12 = v6;
  return v7;
}

Class @objc NSSwiftMutableAttributedString.stringProxy()(void *a1)
{
  v1 = a1;
  isa = NSSwiftMutableAttributedString.stringProxy()().super.super.isa;

  return isa;
}

id NSSwiftMutableAttributedString.StringImplementation.__allocating_init(_:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  ObjectType = swift_getObjectType();
  *&v3[direct field offset for NSSwiftMutableAttributedString.StringImplementation.str] = a1;
  v6.receiver = v3;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

id NSSwiftMutableAttributedString._mutableStringProxy.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x98);
  v6 = *(v4 + v5);
  if (v6)
  {
    v7 = *(v4 + v5);
  }

  else
  {
    type metadata accessor for NSSwiftMutableAttributedString.StringImplementation(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
    v8 = v4;
    v9 = NSSwiftMutableAttributedString.StringImplementation.__allocating_init(_:)(v4);
    v10 = [objc_allocWithZone(SUINSMutableStringProxy) initWithImplementation_];

    v11 = *(v8 + v5);
    *(v8 + v5) = v10;
    v7 = v10;

    v6 = 0;
  }

  v12 = v6;
  return v7;
}

Class @objc NSSwiftMutableAttributedString.mutableStringProxy()(void *a1)
{
  v1 = a1;
  isa = NSSwiftMutableAttributedString.mutableStringProxy()().super.super.super.isa;

  return isa;
}

Class @objc NSSwiftMutableAttributedString.attributedSubstring(from:)(void *a1, uint64_t a2, Swift::Int a3, Swift::Int a4)
{
  v6 = a1;
  v7.location = a3;
  v7.length = a4;
  v8.super.isa = NSSwiftMutableAttributedString.attributedSubstring(from:)(v7).super.isa;

  return v8.super.isa;
}

unint64_t NSSwiftMutableAttributedString.attributes(location:effectiveRange:rangeLimit:)(void **a1, uint64_t *a2, char *a3, char *a4, int a5)
{
  LODWORD(v256) = a5;
  v253 = a4;
  v251 = a3;
  v228 = a2;
  v266 = a1;
  v6 = *v5;
  v7 = *MEMORY[0x1E69E7D40];
  v223 = *MEMORY[0x1E69E7D40] & *v5;
  v263 = v5;
  v226 = *((v7 & v6) + 0x50);
  v225 = *(v226 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v224 = &v215 - v8;
  v241 = type metadata accessor for AttributeContainer();
  v237 = *(v241 - 8);
  MEMORY[0x1EEE9AC00](v241);
  v239 = &v215 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v227 = &v215 - v11;
  v259 = type metadata accessor for AttributedString.Runs();
  v262 = *(v259 - 8);
  MEMORY[0x1EEE9AC00](v259);
  v250 = &v215 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = type metadata accessor for AttributedString.Runs.Run();
  v233 = *(v240 - 8);
  MEMORY[0x1EEE9AC00](v240);
  v238 = &v215 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v248 = &v215 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v252 = &v215 - v17;
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)(0);
  v244 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v243 = &v215 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v242 = &v215 - v21;
  v258 = type metadata accessor for AttributedString.Index();
  v254 = *(v258 - 1);
  MEMORY[0x1EEE9AC00](v258);
  v220 = &v215 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v222 = &v215 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v219 = &v215 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v221 = &v215 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v229 = &v215 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v267 = &v215 - v32;
  v265 = type metadata accessor for AttributedString();
  v33 = *(v265 - 8);
  MEMORY[0x1EEE9AC00](v265);
  v249 = &v215 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v247 = &v215 - v36;
  type metadata accessor for Range<AttributedString.Index>?(0);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v235 = (&v215 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v215 - v40;
  type metadata accessor for Range<AttributedString.Index>(0);
  v236 = v42;
  v43 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v218 = &v215 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v217 = &v215 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v216 = &v215 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v261 = &v215 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v268 = &v215 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v246 = &v215 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v245 = &v215 - v56;
  v57 = type metadata accessor for OSSignpostID();
  v58 = *(v57 - 1);
  MEMORY[0x1EEE9AC00](v57);
  v260 = &v215 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v215 - v61;
  type metadata accessor for OSSignposter?(0);
  MEMORY[0x1EEE9AC00](v63);
  v66 = &v215 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for signposter != -1)
  {
LABEL_38:
    v213 = v33;
    v214 = v64;
    swift_once();
    v64 = v214;
    v33 = v213;
  }

  v67 = __swift_project_value_buffer(v64, signposter);
  outlined init with copy of Range<AttributedString.Index>(v67, v66, type metadata accessor for OSSignposter?);
  v68 = type metadata accessor for OSSignposter();
  v69 = *(v68 - 8);
  v70 = *(v69 + 48);
  v257 = v68;
  v71 = v70(v66, 1);
  v264 = v33;
  if (v71 == 1)
  {
    outlined destroy of Range<AttributedString.Index>?(v66, type metadata accessor for OSSignposter?);
    v72 = 0;
  }

  else
  {
    static OSSignpostID.new.getter(v62);
    v73 = OSSignposter.logHandle.getter();
    LODWORD(v255) = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v74 = swift_slowAlloc();
      *v74 = 67109120;
      *(v74 + 1) = v228 == 0;
      v75 = v43;
      v76 = v74;
      v77 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_18BD4A000, v73, v255, v77, "attributes", "effectiveRange: %{BOOL}d", v76, 8u);
      v78 = v76;
      v43 = v75;
      MEMORY[0x18D0110E0](v78, -1, -1);
    }

    (*(v58 + 2))(v260, v62, v57);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v79 = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v58 + 1))(v62, v57);
    v72 = v79;
    (*(v69 + 8))(v66, v257);
    v33 = v264;
  }

  v80 = v263;
  v81 = *((*MEMORY[0x1E69E7D40] & *v263) + 0x60);
  v83 = v33 + 16;
  v82 = *(v33 + 2);
  v84 = v247;
  v82(v247, &v81[v263], v265);
  v230 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
  Range<>.init<A>(_:in:)();
  v85 = *(v43 + 6);
  if (v85(v41, 1, v236) == 1)
  {
    outlined destroy of Range<AttributedString.Index>?(v41, type metadata accessor for Range<AttributedString.Index>?);
    v86 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
LABEL_35:
    $defer #1 <A>() in NSSwiftMutableAttributedString.attributes(location:effectiveRange:rangeLimit:)(v72, "attributes");

    return v86;
  }

  _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v41, v245, type metadata accessor for Range<AttributedString.Index>);
  v82(v84, &v81[v80], v265);
  v255 = v83;
  v257 = v82;
  v260 = v81;
  v215 = v72;
  if (v256)
  {
    v87 = v267;
    AttributedString.startIndex.getter();
    v88 = *(v264 + 1);
    v89 = v84;
    v90 = v265;
    v88(v89, v265);
    v91 = v249;
    v82(v249, &v81[v80], v90);
    v92 = v229;
    AttributedString.endIndex.getter();
    v88(v91, v90);
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
    v93 = v258;
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if ((result & 1) == 0)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v95 = v254;
    v96 = v254[4];
    v97 = v242;
    v96(v242, v87, v93);
    v98 = v244;
    v96((v97 + *(v244 + 48)), v92, v93);
    v99 = v243;
    outlined init with copy of Range<AttributedString.Index>(v97, v243, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
    v100 = *(v98 + 48);
    v96(v246, v99, v93);
    v101 = v95[1];
    v101(v99 + v100, v93);
    _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v97, v99, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
    v102 = v236;
    v96(&v246[*(v236 + 36)], (v99 + *(v98 + 48)), v93);
    v101(v99, v93);
    v103 = v263;
    v104 = v227;
    v105 = v259;
    v106 = v250;
LABEL_14:
    v108 = v247;
    v109 = v265;
    v257(v247, &v260[v103], v265);
    AttributedString.runs.getter();
    v110 = *(v264 + 1);
    v264 += 8;
    v254 = v110;
    (v110)(v108, v109);
    v111 = v252;
    v112 = v106;
    v113 = v245;
    AttributedString.Runs.subscript.getter();
    v114 = *(v262 + 8);
    v262 += 8;
    v253 = v114;
    (v114)(v112, v105);
    applyFixup #1 <A>(to:) in NSSwiftMutableAttributedString.attributes(location:effectiveRange:rangeLimit:)(v103, v104);
    if (!v228)
    {
      v182 = v104;
      v183 = *((*MEMORY[0x1E69E7D40] & *v103) + 0x68);
      swift_beginAccess();
      v184 = v225;
      v185 = v224;
      v186 = v226;
      (*(v225 + 16))(v224, &v103[v183], v226);
      v86 = (*(*(*(v223 + 88) + 8) + 32))(v182, v186);
      (*(v184 + 8))(v185, v186);
      (v237[1])(v182, v241);
      (*(v233 + 8))(v111, v240);
      outlined destroy of Range<AttributedString.Index>?(v246, type metadata accessor for Range<AttributedString.Index>);
      v187 = v113;
LABEL_34:
      outlined destroy of Range<AttributedString.Index>?(v187, type metadata accessor for Range<AttributedString.Index>);
      v72 = v215;
      goto LABEL_35;
    }

    AttributedString.Runs.Run.range.getter();
    v251 = *(v102 + 36);
    v266 = (v95 + 2);
    v115 = (v95 + 1);
    v235 = (v237 + 1);
    v237 = v95 + 4;
    v234 = (v233 + 8);
    v233 += 32;
    v116 = v247;
    v62 = v258;
    v117 = v267;
    v118 = v246;
    v249 = v115;
    while (1)
    {
      v119 = v261;
      AttributedString.Runs.Run.range.getter();
      v120 = v119 + *(v102 + 36);
      v258 = *v266;
      (v258)(v117, v120, v62);
      outlined destroy of Range<AttributedString.Index>?(v119, type metadata accessor for Range<AttributedString.Index>);
      v121 = static AttributedString.Index.== infix(_:_:)();
      v256 = *v115;
      v256(v117, v62);
      v122 = v260;
      if ((v121 & 1) == 0 || (static AttributedString.Index.< infix(_:_:)() & 1) == 0)
      {
        break;
      }

      v123 = v102;
      v57 = v263;
      v124 = v116;
      v125 = v116;
      v126 = v261;
      v127 = v265;
      v257(v124, &v122[v263], v265);
      v41 = v250;
      AttributedString.runs.getter();
      (v254)(v125, v127);
      v66 = v268;
      v128 = v248;
      AttributedString.Runs.subscript.getter();
      v43 = v253;
      (v253)(v41, v259);
      v129 = v239;
      applyFixup #1 <A>(to:) in NSSwiftMutableAttributedString.attributes(location:effectiveRange:rangeLimit:)(v57, v239);
      (*v235)(v129, v241);
      AttributedString.Runs.Run.range.getter();
      v130 = v258;
      (v258)(v267, v126 + *(v123 + 36), v62);
      v58 = v267;
      outlined destroy of Range<AttributedString.Index>?(v126, type metadata accessor for Range<AttributedString.Index>);
      lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
      v33 = v62;
      v64 = dispatch thunk of static Comparable.<= infix(_:_:)();
      if ((v64 & 1) == 0)
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v131 = v242;
      v132 = v268;
      v130(v242, v268, v62);
      outlined destroy of Range<AttributedString.Index>?(v132, type metadata accessor for Range<AttributedString.Index>);
      v133 = v244;
      v134 = *v237;
      (*v237)(v131 + *(v244 + 48), v58, v62);
      v135 = v243;
      outlined init with copy of Range<AttributedString.Index>(v131, v243, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v136 = *(v133 + 48);
      v134(v268, v135, v62);
      v137 = (v135 + v136);
      v115 = v249;
      v138 = v256;
      v256(v137, v62);
      v139 = v131;
      v102 = v236;
      _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v139, v135, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v134(&v251[v268], (v135 + *(v133 + 48)), v62);
      v138(v135, v62);
      v140 = v247;
      v141 = v265;
      v257(v247, &v260[v263], v265);
      AttributedString.runs.getter();
      (v254)(v140, v141);
      v142 = v238;
      AttributedString.Runs.subscript.getter();
      (v253)(v41, v259);
      v143 = *v234;
      v144 = v128;
      v145 = v240;
      (*v234)(v144, v240);
      v146 = v252;
      v143(v252, v145);
      v147 = v142;
      v117 = v267;
      (*v233)(v146, v147, v145);
      v118 = v246;
      v116 = v140;
    }

    v148 = v261;
    AttributedString.Runs.Run.range.getter();
    (v258)(v117, v148, v62);
    outlined destroy of Range<AttributedString.Index>?(v148, type metadata accessor for Range<AttributedString.Index>);
    v149 = static AttributedString.Index.== infix(_:_:)();
    v256(v117, v62);
    if (v149)
    {
      v232 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
      do
      {
        if ((dispatch thunk of static Comparable.> infix(_:_:)() & 1) == 0)
        {
          break;
        }

        v150 = v263;
        v151 = v265;
        v152 = v257;
        v257(v116, &v122[v263], v265);
        v153 = v268;
        v154 = v116;
        AttributedStringProtocol.index(beforeCharacter:)();
        v155 = v116;
        v156 = v254;
        (v254)(v155, v151);
        v152(v154, &v122[v150], v151);
        v57 = v153;
        v157 = v250;
        AttributedString.runs.getter();
        v156(v154, v151);
        v41 = v248;
        AttributedString.Runs.subscript.getter();
        v158 = v157;
        v58 = v253;
        (v253)(v158, v259);
        v159 = v239;
        applyFixup #1 <A>(to:) in NSSwiftMutableAttributedString.attributes(location:effectiveRange:rangeLimit:)(v150, v239);
        (*v235)(v159, v241);
        v160 = v261;
        AttributedString.Runs.Run.range.getter();
        v161 = v229;
        v66 = v258;
        (v258)(v229, v160, v62);
        outlined destroy of Range<AttributedString.Index>?(v160, type metadata accessor for Range<AttributedString.Index>);
        v43 = v251;
        v33 = v62;
        v64 = dispatch thunk of static Comparable.<= infix(_:_:)();
        if ((v64 & 1) == 0)
        {
          goto LABEL_37;
        }

        v162 = *v237;
        v163 = v242;
        (*v237)(v242, v161, v62);
        v164 = v244;
        (v66)(v163 + *(v244 + 48), &v43[v57], v62);
        v231 = type metadata accessor for Range<AttributedString.Index>;
        outlined destroy of Range<AttributedString.Index>?(v268, type metadata accessor for Range<AttributedString.Index>);
        v165 = v243;
        outlined init with copy of Range<AttributedString.Index>(v163, v243, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
        v166 = *(v164 + 48);
        v162(v268, v165, v62);
        v167 = v256;
        v256((v165 + v166), v62);
        v168 = v265;
        v169 = v247;
        _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v163, v165, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
        v162(&v43[v268], (v165 + *(v164 + 48)), v62);
        v167(v165, v62);
        v257(v169, &v260[v263], v168);
        v170 = v250;
        AttributedString.runs.getter();
        (v254)(v169, v168);
        v171 = v238;
        AttributedString.Runs.subscript.getter();
        (v253)(v170, v259);
        v172 = *v234;
        v173 = v240;
        (*v234)(v248, v240);
        v167(v267, v62);
        v172(v252, v173);
        v174 = v171;
        v118 = v246;
        (*v233)(v252, v174, v173);
        v175 = v261;
        AttributedString.Runs.Run.range.getter();
        (v258)(v267, v175, v62);
        v176 = v175;
        v116 = v169;
        v177 = v267;
        outlined destroy of Range<AttributedString.Index>?(v176, v231);
        LOBYTE(v172) = static AttributedString.Index.== infix(_:_:)();
        v256(v177, v62);
        v122 = v260;
      }

      while ((v172 & 1) != 0);
    }

    v178 = v217;
    AttributedString.Runs.Run.range.getter();
    v179 = v219;
    v180 = v258;
    (v258)(v219, v178, v62);
    outlined destroy of Range<AttributedString.Index>?(v178, type metadata accessor for Range<AttributedString.Index>);
    v267 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
    if (dispatch thunk of static Comparable.>= infix(_:_:)())
    {
      v181 = v221;
      (*v237)(v221, v179, v62);
    }

    else
    {
      v256(v179, v62);
      v181 = v221;
      v180(v221, v118, v62);
    }

    v188 = v222;
    v189 = v236;
    v190 = v218;
    v191 = *(v236 + 36);
    AttributedString.Runs.Run.range.getter();
    v192 = v220;
    (v258)(v220, v190 + *(v189 + 36), v62);
    outlined destroy of Range<AttributedString.Index>?(v190, type metadata accessor for Range<AttributedString.Index>);
    if (dispatch thunk of static Comparable.< infix(_:_:)())
    {
      (*v237)(v188, v192, v62);
    }

    else
    {
      v256(v192, v62);
      (v258)(v188, v118 + v191, v62);
    }

    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v193 = *v237;
      v194 = v181;
      v195 = v261;
      v196 = v242;
      (*v237)(v242, v194, v62);
      v197 = v244;
      v193((v196 + *(v244 + 48)), v188, v62);
      v198 = v243;
      outlined init with copy of Range<AttributedString.Index>(v196, v243, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v199 = *(v197 + 48);
      v200 = v216;
      v193(v216, v198, v62);
      v201 = (v198 + v199);
      v202 = v256;
      v256(v201, v62);
      _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v196, v198, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v193((v200 + *(v236 + 36)), (v198 + *(v197 + 48)), v62);
      v202(v198, v62);
      outlined init with copy of Range<AttributedString.Index>(v200, v195, type metadata accessor for Range<AttributedString.Index>);
      v203 = v263;
      v257(v247, &v260[v263], v265);
      lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
      v204 = _NSRange.init<A, B>(_:in:)();
      v205 = v228;
      *v228 = v204;
      v205[1] = v206;
      v207 = *((*MEMORY[0x1E69E7D40] & *v203) + 0x68);
      swift_beginAccess();
      v208 = v225;
      v209 = v203 + v207;
      v210 = v224;
      v211 = v226;
      (*(v225 + 16))(v224, v209, v226);
      v212 = v227;
      v86 = (*(*(*(v223 + 88) + 8) + 32))(v227, v211);
      (*(v208 + 8))(v210, v211);
      outlined destroy of Range<AttributedString.Index>?(v200, type metadata accessor for Range<AttributedString.Index>);
      outlined destroy of Range<AttributedString.Index>?(v268, type metadata accessor for Range<AttributedString.Index>);
      (*v235)(v212, v241);
      (*v234)(v252, v240);
      outlined destroy of Range<AttributedString.Index>?(v246, type metadata accessor for Range<AttributedString.Index>);
      v187 = v245;
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_40;
  }

  v107 = v235;
  Range<>.init<A>(_:in:)();
  v102 = v236;
  result = (v85)(v107, 1, v236);
  if (result != 1)
  {
    _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v107, v246, type metadata accessor for Range<AttributedString.Index>);
    v104 = v227;
    v105 = v259;
    v106 = v250;
    v103 = v80;
    v95 = v254;
    goto LABEL_14;
  }

LABEL_41:
  __break(1u);
  return result;
}

Class @objc NSSwiftMutableAttributedString.attributes(at:effectiveRange:)(void *a1, uint64_t a2, void **a3, uint64_t *a4)
{
  v6 = a1;
  NSSwiftMutableAttributedString.attributes(at:effectiveRange:)(a3, a4);

  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
  v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

Class @objc NSSwiftMutableAttributedString.attributes(at:longestEffectiveRange:in:)(void *a1, uint64_t a2, void **a3, uint64_t *a4, char *a5, char *a6)
{
  v10 = a1;
  NSSwiftMutableAttributedString.attributes(at:longestEffectiveRange:in:)(a3, a4, a5, a6);

  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
  v11.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v11.super.isa;
}

uint64_t static OSSignpostID.new.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for OSSignposter?(0);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OSSignpostID?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for signposter != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, signposter);
  outlined init with copy of Range<AttributedString.Index>(v10, v6, type metadata accessor for OSSignposter?);
  v11 = type metadata accessor for OSSignposter();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v6, 1, v11) == 1)
  {
    outlined destroy of Range<AttributedString.Index>?(v6, type metadata accessor for OSSignposter?);
    v13 = type metadata accessor for OSSignpostID();
    v14 = *(v13 - 8);
    (*(v14 + 56))(v9, 1, 1, v13);
    static OSSignpostID.exclusive.getter();
    result = (*(v14 + 48))(v9, 1, v13);
    if (result != 1)
    {
      return outlined destroy of Range<AttributedString.Index>?(v9, type metadata accessor for OSSignpostID?);
    }
  }

  else
  {
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    (*(v12 + 8))(v6, v11);
    v16 = type metadata accessor for OSSignpostID();
    v17 = *(v16 - 8);
    (*(v17 + 56))(v9, 0, 1, v16);
    return (*(v17 + 32))(a1, v9, v16);
  }

  return result;
}

uint64_t applyFixup #1 <A>(to:) in NSSwiftMutableAttributedString.attributes(location:effectiveRange:rangeLimit:)@<X0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *MEMORY[0x1E69E7D40];
  type metadata accessor for Range<AttributedString.Index>(0);
  v30[2] = v6;
  MEMORY[0x1EEE9AC00](v6);
  v31 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AttributeContainer();
  v9 = *(v8 - 8);
  v35 = v8;
  v36 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v34 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *((v5 & v4) + 0x50);
  v33 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v30 - v13;
  v15 = *((v5 & v4) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v32 = type metadata accessor for TextAttributeValidationRecord(0, AssociatedTypeWitness, AssociatedConformanceWitness, v18);
  v19 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v21 = v30 - v20;
  AttributedString.Runs.Run.attributes.getter();
  v22 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x68);
  swift_beginAccess();
  v23 = v33;
  v24 = *(v33 + 16);
  v30[1] = a1;
  v24(v14, &a1[v22], v11);
  (*(v15 + 40))(a2, v11, v15);
  (*(v23 + 8))(v14, v11);
  (*(v19 + 8))(v21, v32);
  v25 = v34;
  AttributedString.Runs.Run.attributes.getter();
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributeContainer and conformance AttributeContainer, MEMORY[0x1E69688E0], MEMORY[0x1E69688F0]);
  v26 = v35;
  LOBYTE(v22) = dispatch thunk of static Equatable.== infix(_:_:)();
  result = (*(v36 + 8))(v25, v26);
  if ((v22 & 1) == 0)
  {
    v28 = v31;
    AttributedString.Runs.Run.range.getter();
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
    v29 = AttributedString.subscript.modify();
    AttributedSubstring.setAttributes(_:)();
    v29(v37, 0);
    return outlined destroy of Range<AttributedString.Index>?(v28, type metadata accessor for Range<AttributedString.Index>);
  }

  return result;
}

void NSSwiftMutableAttributedString.attribute(attrName:location:effectiveRange:rangeLimit:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(_BYTE *, uint64_t)@<X4>, int a6@<W5>, unint64_t *a7@<X8>)
{
  v8 = v7;
  v197 = a6;
  v169 = a5;
  v186 = a4;
  v200 = a2;
  v12 = *((*MEMORY[0x1E69E7D40] & *v7) + 0x58);
  v13 = *((*MEMORY[0x1E69E7D40] & *v7) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v157 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v162 = type metadata accessor for TextAttributeValidationRecord(0, AssociatedTypeWitness, AssociatedConformanceWitness, v16);
  v160 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v159 = &v149[-v17];
  v167 = type metadata accessor for AttributeContainer();
  v166 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v161 = &v149[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v165 = &v149[-v20];
  v156 = type metadata accessor for AttributedString.Runs();
  v155 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v154 = &v149[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v164 = type metadata accessor for AttributedString.Runs.Run();
  v163 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v168 = &v149[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v158 = v13;
  v153 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v152 = &v149[-v24];
  type metadata accessor for Range<AttributedString.Index>?(0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v171 = &v149[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Range<AttributedString.Index>(0);
  v172 = v27;
  v170 = *(v27 - 1);
  MEMORY[0x1EEE9AC00](v27);
  v151 = &v149[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v29);
  v174 = &v149[-v30];
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)(0);
  v182 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v181 = &v149[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v33);
  v176 = &v149[-v34];
  type metadata accessor for ClosedRange<AttributedString.Index>(0);
  v175 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v179 = &v149[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v180 = type metadata accessor for AttributedString.UnicodeScalarView();
  v178 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v195 = &v149[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Slice<AttributedString.UnicodeScalarView>(0);
  v177 = v38;
  MEMORY[0x1EEE9AC00](v38);
  v183 = &v149[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v196 = type metadata accessor for AttributedString.UTF16View();
  v201 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v194 = &v149[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v198 = type metadata accessor for AttributedString();
  v202 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198);
  v199 = &v149[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v192 = type metadata accessor for AttributedString.Index();
  v185 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v184 = &v149[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v43);
  v193 = &v149[-v44];
  v188 = type metadata accessor for OSSignpostID();
  v173 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v46 = &v149[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v149[-v48];
  type metadata accessor for OSSignposter?(0);
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v149[-((v52 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (one-time initialization token for signposter != -1)
  {
    v148 = v51;
    swift_once();
    v51 = v148;
  }

  v54 = __swift_project_value_buffer(v51, signposter);
  outlined init with copy of Range<AttributedString.Index>(v54, v53, type metadata accessor for OSSignposter?);
  v55 = type metadata accessor for OSSignposter();
  v56 = *(v55 - 8);
  v57 = (*(v56 + 48))(v53, 1, v55);
  v189 = a7;
  v191 = v8;
  v190 = a1;
  if (v57 == 1)
  {
    outlined destroy of Range<AttributedString.Index>?(v53, type metadata accessor for OSSignposter?);
    v59 = 0;
  }

  else
  {
    static OSSignpostID.new.getter(v49);
    v60 = a1;
    v61 = OSSignposter.logHandle.getter();
    v150 = static os_signpost_type_t.begin.getter();

    if (OS_os_log.signpostsEnabled.getter())
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v187 = a3;
      v64 = v63;
      v204 = v63;
      *v62 = 136315394;
      v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, &v204);

      *(v62 + 4) = v67;
      *(v62 + 12) = 1024;
      *(v62 + 14) = v187 == 0;
      v68 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_18BD4A000, v61, v150, v68, "attribute", "key: %s, effectiveRange: %{BOOL}d", v62, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v64);
      v69 = v64;
      a3 = v187;
      MEMORY[0x18D0110E0](v69, -1, -1);
      v70 = v62;
      a7 = v189;
      MEMORY[0x18D0110E0](v70, -1, -1);
    }

    v71 = v173;
    v72 = v188;
    v173[2](v46, v49, v188);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v59 = OSSignpostIntervalState.init(id:isOpen:)();
    (v71[1])(v49, v72);
    (*(v56 + 8))(v53, v55);
    v8 = v191;
    a1 = v190;
  }

  v73 = v200;
  v74 = v202;
  v188 = v59;
  if (!a3)
  {
    v77 = MEMORY[0x1E69E7D40];
    v78 = *(v202 + 16);
    v201 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x60);
    v80 = v198;
    v79 = v199;
    v78(v199, v8 + v201, v198);
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
    v81 = v171;
    Range<>.init<A>(_:in:)();
    if (v170[6](v81, 1, v172) == 1)
    {
      outlined destroy of Range<AttributedString.Index>?(v81, type metadata accessor for Range<AttributedString.Index>?);
      v82 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      type metadata accessor for [AnyHashable : Any]();
      a7[3] = v83;
      *a7 = v82;
    }

    else
    {
      v126 = v81;
      v127 = v80;
      _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v126, v174, type metadata accessor for Range<AttributedString.Index>);
      v128 = *((*v77 & *v8) + 0x68);
      swift_beginAccess();
      v129 = a1;
      v130 = v153;
      v131 = v8 + v128;
      v132 = v152;
      v133 = v74;
      v134 = v158;
      (*(v153 + 16))(v152, v131, v158);
      (*(v157 + 32))(&v204, v129, v134);
      (*(v130 + 8))(v132, v134);
      v78(v79, v8 + v201, v127);
      v135 = v154;
      AttributedString.runs.getter();
      (*(v133 + 8))(v79, v127);
      v136 = v168;
      AttributedString.Runs.subscript.getter();
      (*(v155 + 8))(v135, v156);
      v137 = v165;
      AttributedString.Runs.Run.attributes.getter();
      v138 = v205;
      v139 = v206;
      __swift_project_boxed_opaque_existential_1(&v204, v205);
      v140 = v159;
      (*(v139 + 32))(v137, v138, v139);
      (*(v160 + 8))(v140, v162);
      v141 = v161;
      AttributedString.Runs.Run.attributes.getter();
      lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributeContainer and conformance AttributeContainer, MEMORY[0x1E69688E0], MEMORY[0x1E69688F0]);
      v142 = v167;
      LOBYTE(v138) = dispatch thunk of static Equatable.== infix(_:_:)();
      v143 = *(v166 + 8);
      v143(v141, v142);
      if ((v138 & 1) == 0)
      {
        v144 = v151;
        AttributedString.Runs.Run.range.getter();
        lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
        v145 = AttributedString.subscript.modify();
        AttributedSubstring.setAttributes(_:)();
        v145(v203, 0);
        v136 = v168;
        outlined destroy of Range<AttributedString.Index>?(v144, type metadata accessor for Range<AttributedString.Index>);
      }

      v146 = v205;
      v147 = v206;
      __swift_project_boxed_opaque_existential_1(&v204, v205);
      (*(*(v147 + 8) + 16))(v137, v146);
      v143(v137, v142);
      (*(v163 + 8))(v136, v164);
      outlined destroy of Range<AttributedString.Index>?(v174, type metadata accessor for Range<AttributedString.Index>);
      __swift_destroy_boxed_opaque_existential_1(&v204);
    }

    goto LABEL_25;
  }

  if (v197)
  {
    v75 = NSSwiftMutableAttributedString.length.getter(v58);
    v76 = v199;
    goto LABEL_14;
  }

  v75 = v169 + v186;
  v76 = v199;
  if (!__OFADD__(v186, v169))
  {
LABEL_14:
    if (__OFSUB__(v75, v73))
    {
      __break(1u);
    }

    else
    {
      v168 = (v75 - v73);
      v187 = a3;
      v84 = v8 + *((*MEMORY[0x1E69E7D40] & *v8) + 0x60);
      v85 = *(v74 + 16);
      v86 = v198;
      v174 = (v74 + 16);
      v173 = v85;
      (v85)(v76, v84, v198);
      v87 = v194;
      AttributedString.utf16.getter();
      v88 = *(v74 + 8);
      v202 = v74 + 8;
      v172 = v88;
      v88(v76, v86);
      lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.UTF16View and conformance AttributedString.UTF16View, MEMORY[0x1E6968810], MEMORY[0x1E6968818]);
      v89 = v184;
      v90 = v196;
      dispatch thunk of Collection.startIndex.getter();
      v91 = v193;
      dispatch thunk of Collection.index(_:offsetBy:)();
      v92 = v185;
      v93 = *(v185 + 8);
      v94 = v192;
      v171 = (v185 + 8);
      v170 = v93;
      (v93)(v89, v192);
      v95 = v201 + 8;
      v169 = *(v201 + 8);
      v169(v87, v90);
      v184 = v84;
      AttributedString.unicodeScalars.getter();
      lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
      if (dispatch thunk of static Comparable.<= infix(_:_:)())
      {
        v96 = *(v92 + 16);
        v201 = v95;
        v97 = v176;
        v96(v176, v91, v94);
        v98 = v182;
        v96((v97 + *(v182 + 48)), v91, v94);
        v99 = v181;
        outlined init with copy of Range<AttributedString.Index>(v97, v181, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
        v100 = *(v98 + 48);
        v101 = *(v92 + 32);
        v102 = v179;
        v101(v179, v99, v94);
        v103 = v170;
        (v170)(&v99[v100], v94);
        _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v97, v99, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
        v101((v102 + *(v175 + 36)), &v99[*(v98 + 48)], v94);
        v103(v99, v94);
        v104 = v183;
        v105 = v195;
        specialized Collection.subscript.getter(v102, v183);
        outlined destroy of Range<AttributedString.Index>?(v102, type metadata accessor for ClosedRange<AttributedString.Index>);
        (*(v178 + 8))(v105, v180);
        v106 = v198;
        v107 = v199;
        (v173)(v199, v184, v198);
        v108 = v194;
        AttributedString.utf16.getter();
        v172(v107, v106);
        v109 = v193;
        v110 = AttributedString.UTF16View.distance(from:to:)();
        v111 = v169(v108, v196);
        v112 = v200;
        v113 = __OFADD__(v200, v110);
        v114 = v200 + v110;
        if (!v113)
        {
          if (v197)
          {
            v115 = 0;
          }

          else
          {
            v115 = v186;
          }

          if (!__OFSUB__(v114, v115))
          {
            v116 = v109;
            v117 = v189;
            *v189 = 0u;
            *(v117 + 1) = 0u;
            MEMORY[0x1EEE9AC00](v111);
            v118 = v187;
            *&v149[-16] = v119;
            *&v149[-8] = v118;
            v121 = v120;
            v122 = v190;
            NSSwiftMutableAttributedString.enumerateAttribute(_:in:options:using:)(v190, v123, v124, 2uLL, partial apply for closure #2 in NSSwiftMutableAttributedString.attribute(attrName:location:effectiveRange:rangeLimit:), &v149[-32]);
            MEMORY[0x1EEE9AC00](v125);
            *&v149[-32] = v118;
            *&v149[-24] = v114;
            *&v149[-16] = v112;
            NSSwiftMutableAttributedString.enumerateAttribute(_:in:options:using:)(v122, v112, v168, 0, partial apply for closure #3 in NSSwiftMutableAttributedString.attribute(attrName:location:effectiveRange:rangeLimit:), &v149[-48]);
            outlined destroy of Range<AttributedString.Index>?(v104, type metadata accessor for Slice<AttributedString.UnicodeScalarView>);
            v121(v116, v192);
LABEL_25:
            $defer #1 <A>() in NSSwiftMutableAttributedString.attributes(location:effectiveRange:rangeLimit:)(v188, "attribute");

            return;
          }

          goto LABEL_29;
        }

LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_30:
  __break(1u);
}

id @objc NSSwiftMutableAttributedString.attribute(_:at:effectiveRange:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = a3;
  v9 = a1;
  NSSwiftMutableAttributedString.attribute(_:at:effectiveRange:)(v8, a4, a5, v18);

  v10 = v19;
  if (v19)
  {
    v11 = __swift_project_boxed_opaque_existential_1(v18, v19);
    v12 = *(v10 - 8);
    v13 = MEMORY[0x1EEE9AC00](v11);
    v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v15, v13);
    v16 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v12 + 8))(v15, v10);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

id @objc NSSwiftMutableAttributedString.attribute(_:at:longestEffectiveRange:in:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(_BYTE *, uint64_t))
{
  v12 = a3;
  v13 = a1;
  NSSwiftMutableAttributedString.attribute(_:at:longestEffectiveRange:in:)(v12, a4, a5, a6, a7, v22);

  v14 = v23;
  if (v23)
  {
    v15 = __swift_project_boxed_opaque_existential_1(v22, v23);
    v16 = *(v14 - 8);
    v17 = MEMORY[0x1EEE9AC00](v15);
    v19 = v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v19, v17);
    v20 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v16 + 8))(v19, v14);
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

void NSSwiftMutableAttributedString.enumerateAttribute(_:in:options:using:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(_OWORD *), uint64_t a6)
{
  v7 = v6;
  v54 = a6;
  v62 = a3;
  v63 = a4;
  v61 = a2;
  v60 = type metadata accessor for AttributedString();
  v57 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v46[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Range<AttributedString.Index>?(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v59 = &v46[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Range<AttributedString.Index>(0);
  v55 = *(v13 - 8);
  v56 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for OSSignpostID();
  v51 = *(v16 - 8);
  v52 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v50 = &v46[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46[-v19];
  type metadata accessor for OSSignposter?(0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v46[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (one-time initialization token for signposter != -1)
  {
    v45 = v22;
    swift_once();
    v22 = v45;
  }

  v25 = __swift_project_value_buffer(v22, signposter);
  outlined init with copy of Range<AttributedString.Index>(v25, v24, type metadata accessor for OSSignposter?);
  v26 = type metadata accessor for OSSignposter();
  v27 = *(v26 - 8);
  v28 = (*(v27 + 48))(v24, 1, v26);
  v53 = a1;
  if (v28 == 1)
  {
    outlined destroy of Range<AttributedString.Index>?(v24, type metadata accessor for OSSignposter?);
    v29 = 0;
  }

  else
  {
    v49 = a5;
    static OSSignpostID.new.getter(v20);
    v30 = a1;
    v31 = OSSignposter.logHandle.getter();
    v32 = static os_signpost_type_t.begin.getter();

    if (OS_os_log.signpostsEnabled.getter())
    {
      v33 = swift_slowAlloc();
      v47 = v32;
      v34 = v33;
      v48 = swift_slowAlloc();
      v64[0] = v48;
      *v34 = 136315650;
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v64);

      *(v34 + 4) = v37;
      *(v34 + 12) = 1024;
      v38 = v63;
      *(v34 + 14) = (v63 >> 1) & 1;
      *(v34 + 18) = 1024;
      *(v34 + 20) = (v38 >> 20) & 1;
      v39 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_18BD4A000, v31, v47, v39, "enumerateAttribute", "key: %s, reversed: %{BOOL}d, longestEffectiveRangeNotRequired: %{BOOL}d", v34, 0x18u);
      v40 = v48;
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x18D0110E0](v40, -1, -1);
      MEMORY[0x18D0110E0](v34, -1, -1);
    }

    v41 = v51;
    v42 = v52;
    (*(v51 + 16))(v50, v20, v52);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v29 = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v41 + 8))(v20, v42);
    (*(v27 + 8))(v24, v26);
    a5 = v49;
  }

  v43 = *((*MEMORY[0x1E69E7D40] & *v7) + 0x60);
  (*(v57 + 16))(v58, &v7[v43], v60);
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
  v44 = v59;
  Range<>.init<A>(_:in:)();
  if ((*(v55 + 48))(v44, 1, v56) == 1)
  {
    __break(1u);
  }

  else
  {
    _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v44, v15, type metadata accessor for Range<AttributedString.Index>);
    closure #1 in NSSwiftMutableAttributedString.enumerateAttribute(_:in:options:using:)(&v7[v43], v7, v53, v15, v63, a5, v54);
    outlined destroy of Range<AttributedString.Index>?(v15, type metadata accessor for Range<AttributedString.Index>);
    $defer #1 <A>() in NSSwiftMutableAttributedString.attributes(location:effectiveRange:rangeLimit:)(v29, "enumerateAttribute");
  }
}

double NSSwiftMutableAttributedString.enumerateAttributes(in:options:using:)(char **a1, char **a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, char *), uint64_t a5)
{
  v188 = a5;
  v187 = a4;
  v232 = a3;
  v254 = a2;
  v248 = a1;
  v258 = *MEMORY[0x1E69E9840];
  v6 = *v5;
  v7 = *MEMORY[0x1E69E7D40];
  type metadata accessor for AttributedString.Index?(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v186 = &v183 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v212 = &v183 - v11;
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)(0);
  v211 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v210 = &v183 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v209 = &v183 - v15;
  v16 = *((v7 & v6) + 0x50);
  v228 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v223 = &v183 - v18;
  v255 = v5;
  v19 = *((v7 & v6) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v225 = v19;
  v224 = v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v214 = type metadata accessor for TextAttributeValidationRecord(0, AssociatedTypeWitness, AssociatedConformanceWitness, v22);
  v243 = *(v214 - 8);
  MEMORY[0x1EEE9AC00](v214);
  v213 = &v183 - v23;
  v237 = type metadata accessor for AttributeContainer();
  v235 = *(v237 - 8);
  MEMORY[0x1EEE9AC00](v237);
  v222 = &v183 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v242 = &v183 - v26;
  v250 = type metadata accessor for AttributedString.Runs();
  v244 = *(v250 - 8);
  MEMORY[0x1EEE9AC00](v250);
  v239 = &v183 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = type metadata accessor for AttributedSubstring();
  v234 = *(v249 - 8);
  MEMORY[0x1EEE9AC00](v249);
  v238 = &v183 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = type metadata accessor for AttributedString.Runs.Run();
  v229 = *(v236 - 8);
  MEMORY[0x1EEE9AC00](v236);
  v208 = &v183 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v216 = &v183 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v230 = &v183 - v33;
  v256 = type metadata accessor for AttributedString.Index();
  v227 = *(v256 - 8);
  MEMORY[0x1EEE9AC00](v256);
  v185 = &v183 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v198 = &v183 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v215 = &v183 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v226 = &v183 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v240 = &v183 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v241 = &v183 - v44;
  v193 = type metadata accessor for AttributedString();
  v247 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v192 = &v183 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>?(0);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v48 = &v183 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v206 = &v183 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v231 = &v183 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v246 = &v183 - v54;
  type metadata accessor for Range<AttributedString.Index>(0);
  v251 = *(v55 - 8);
  v252 = v55;
  MEMORY[0x1EEE9AC00](v55);
  v205 = &v183 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v195 = &v183 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v196 = &v183 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v253 = &v183 - v62;
  v245 = type metadata accessor for OSSignpostID();
  v63 = *(v245 - 8);
  MEMORY[0x1EEE9AC00](v245);
  v65 = &v183 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v183 - v67;
  type metadata accessor for OSSignposter?(0);
  MEMORY[0x1EEE9AC00](v69);
  v72 = &v183 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for signposter != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v73 = __swift_project_value_buffer(v70, signposter);
    outlined init with copy of Range<AttributedString.Index>(v73, v72, type metadata accessor for OSSignposter?);
    v74 = type metadata accessor for OSSignposter();
    v75 = *(v74 - 8);
    v76 = (*(v75 + 48))(v72, 1, v74);
    v207 = v48;
    if (v76 == 1)
    {
      outlined destroy of Range<AttributedString.Index>?(v72, type metadata accessor for OSSignposter?);
      v184 = 0;
    }

    else
    {
      static OSSignpostID.new.getter(v68);
      v77 = OSSignposter.logHandle.getter();
      v78 = static os_signpost_type_t.begin.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        v79 = swift_slowAlloc();
        *v79 = 67109376;
        v80 = v232;
        *(v79 + 4) = (v232 >> 1) & 1;
        *(v79 + 8) = 1024;
        *(v79 + 10) = (v80 >> 20) & 1;
        v81 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&dword_18BD4A000, v77, v78, v81, "enumerateAttributes", "reversed: %{BOOL}d, longestEffectiveRangeNotRequired: %{BOOL}d", v79, 0xEu);
        MEMORY[0x18D0110E0](v79, -1, -1);
      }

      v82 = v245;
      (*(v63 + 2))(v65, v68, v245);
      type metadata accessor for OSSignpostIntervalState();
      swift_allocObject();
      v184 = OSSignpostIntervalState.init(id:isOpen:)();
      (*(v63 + 1))(v68, v82);
      (*(v75 + 8))(v72, v74);
    }

    v83 = v253;
    v63 = v255;
    v84 = v247;
    v85 = v247[2];
    v245 = *((*MEMORY[0x1E69E7D40] & *v255) + 0x60);
    v191 = v247 + 2;
    v190 = v85;
    (v85)(v192, &v255[v245], v193);
    v86 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
    v87 = v246;
    v189 = v86;
    Range<>.init<A>(_:in:)();
    v88 = v252;
    v89 = *(v251 + 48);
    v204 = v251 + 48;
    v203 = v89;
    v90 = v89(v87, 1, v252);
    v72 = v216;
    v91 = v226;
    if (v90 == 1)
    {
      __break(1u);
    }

    _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v87, v83, type metadata accessor for Range<AttributedString.Index>);
    v92 = *(v88 + 36);
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F8]);
    v197 = v92;
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      break;
    }

    if ((v232 & 2) != 0)
    {
      v97 = v192;
      v98 = v193;
      (v190)(v192, &v63[v245], v193);
      v99 = v240;
      AttributedStringProtocol.index(beforeCharacter:)();
      v100 = v97;
      v96 = v99;
      (v84[1])(v100, v98);
      v95 = v227;
    }

    else
    {
      v95 = v227;
      v96 = v240;
      v227[2](v240, v83, v256);
    }

    v102 = v95[4];
    v101 = (v95 + 4);
    v103 = v241;
    v233 = v102;
    v102(v241, v96, v256);
    v257 = 0;
    v221 = &v63[*((*MEMORY[0x1E69E7D40] & *v63) + 0x68)];
    swift_beginAccess();
    v104 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
    v200 = 0;
    v248 = (v234 + 8);
    v247 = v244 + 1;
    v244 = (v101 - 16);
    v254 = (v101 - 24);
    v220 = (v228 + 16);
    v202 = v225 + 40;
    v219 = (v228 + 8);
    v201 = (v243 + 8);
    ++v235;
    v194 = (v251 + 56);
    v218 = (v229 + 8);
    v199 = (v229 + 32);
    v227 = v101;
    v217 = (v101 + 16);
    v240 = v104;
    while (1)
    {
      v105 = v253;
      if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0 || (dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
      {
        (*v254)(v103, v256);
        v93 = type metadata accessor for Range<AttributedString.Index>;
        v94 = v105;
        goto LABEL_39;
      }

      v106 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
      v107 = v238;
      v251 = v106;
      AttributedString.subscript.getter();
      v108 = v239;
      AttributedSubstring.runs.getter();
      v234 = *v248;
      (v234)(v107, v249);
      AttributedString.Runs.subscript.getter();
      v246 = *v247;
      (v246)(v108, v250);
      v243 = *v244;
      (v243)(v91, v103, v256);
      if ((v232 & 0x100000) == 0)
      {
        break;
      }

LABEL_34:
      v167 = v223;
      v168 = v224;
      (*v220)(v223, v221, v224);
      v169 = v230;
      swift_beginAccess();
      v170 = v222;
      AttributedString.Runs.Run.attributes.getter();
      swift_endAccess();
      v171 = (*(*(v225 + 8) + 32))(v170, v168);
      (*v235)(v170, v237);
      (*v219)(v167, v168);
      swift_beginAccess();
      v172 = v196;
      AttributedString.Runs.Run.range.getter();
      swift_endAccess();
      (v190)(v192, &v63[v245], v193);
      v173 = _NSRange.init<A, B>(_:in:)();
      v187(v171, v173, v174, &v257);

      swift_beginAccess();
      AttributedString.Runs.Run.range.getter();
      swift_endAccess();
      v175 = v186;
      next #1 <A>(_:) in NSSwiftMutableAttributedString.enumerateAttributes(in:options:using:)(v172, v232, v63, v186);
      outlined destroy of Range<AttributedString.Index>?(v172, type metadata accessor for Range<AttributedString.Index>);
      v176 = *v254;
      v91 = v226;
      v177 = v256;
      (*v254)(v226, v256);
      (*v218)(v169, v236);
      v103 = v241;
      (v176)(v241, v177);
      if ((*v217)(v175, 1, v177) == 1)
      {
        outlined destroy of Range<AttributedString.Index>?(v253, type metadata accessor for Range<AttributedString.Index>);
        v93 = type metadata accessor for AttributedString.Index?;
        v94 = v175;
        goto LABEL_39;
      }

      v178 = v185;
      v179 = v256;
      v180 = v233;
      v233(v185, v175, v256);
      v180(v103, v178, v179);
      if (v257)
      {
        (v176)(v103, v256);
        v93 = type metadata accessor for Range<AttributedString.Index>;
        v94 = v253;
        goto LABEL_39;
      }
    }

    swift_beginAccess();
    swift_beginAccess();
    v68 = v227;
    while (1)
    {
      v109 = v215;
      (v243)(v215, v91, v256);
      v110 = v253;
      if (dispatch thunk of static Comparable.<= infix(_:_:)())
      {
        v111 = v256;
        v112 = dispatch thunk of static Comparable.< infix(_:_:)();
        v113 = v111;
        v65 = *v254;
        (*v254)(v109, v113);
        if (v112)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v65 = *v254;
        (*v254)(v109, v256);
      }

      if ((specialized getter of runMightBeBrokenByDirt #1 in NSSwiftMutableAttributedString.enumerateAttributes(in:options:using:)(v232, v110, v63, v230, v91) & 1) == 0)
      {
        goto LABEL_34;
      }

LABEL_23:
      v114 = v238;
      AttributedString.subscript.getter();
      v115 = v239;
      AttributedSubstring.runs.getter();
      (v234)(v114, v249);
      swift_beginAccess();
      AttributedString.Runs.subscript.getter();
      swift_endAccess();
      (v246)(v115, v250);
      v116 = v242;
      AttributedString.Runs.Run.attributes.getter();
      v117 = v223;
      v118 = v224;
      (*v220)(v223, v221, v224);
      v119 = v213;
      (*(v225 + 40))(v116, v118);
      (*v219)(v117, v118);
      (*v201)(v119, v214);
      v120 = v222;
      AttributedString.Runs.Run.attributes.getter();
      lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributeContainer and conformance AttributeContainer, MEMORY[0x1E69688E0], MEMORY[0x1E69688F0]);
      v121 = v237;
      v48 = dispatch thunk of static Equatable.== infix(_:_:)();
      v122 = *v235;
      (*v235)(v120, v121);
      v123 = v241;
      v70 = dispatch thunk of static Comparable.<= infix(_:_:)();
      v229 = v122;
      if (v48)
      {
        break;
      }

      if ((v70 & 1) == 0)
      {
        goto LABEL_41;
      }

      v134 = v209;
      v135 = v256;
      v136 = v243;
      (v243)(v209, v123, v256);
      v137 = v211;
      v136(v134 + *(v211 + 48), v123, v135);
      v138 = v210;
      outlined init with copy of Range<AttributedString.Index>(v134, v210, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v139 = *(v137 + 48);
      v140 = v196;
      v141 = v233;
      v233(v196, v138, v135);
      (v65)(v138 + v139, v135);
      _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v134, v138, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v142 = v252;
      v141((v140 + *(v252 + 36)), v138 + *(v137 + 48), v135);
      v143 = (v65)(v138, v135);
      MEMORY[0x1EEE9AC00](v143);
      v144 = v242;
      *(&v183 - 2) = v72;
      *(&v183 - 1) = v144;
      v130 = v206;
      v145 = v200;
      _s10Foundation16AttributedStringV9transform8updating4bodySnyAC5IndexVGSgAI_yACzxYKXEtxYKs5ErrorRzlF();
      v200 = v145;
      outlined destroy of Range<AttributedString.Index>?(v140, type metadata accessor for Range<AttributedString.Index>);
      v133 = v142;
LABEL_28:
      v146 = v231;
      _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v130, v231, type metadata accessor for Range<AttributedString.Index>?);
      v147 = v146;
      v148 = v207;
      outlined init with copy of Range<AttributedString.Index>(v147, v207, type metadata accessor for Range<AttributedString.Index>?);
      v149 = v203(v148, 1, v133);
      v228 = v65;
      if (v149 == 1)
      {
        outlined destroy of Range<AttributedString.Index>?(v148, type metadata accessor for Range<AttributedString.Index>?);
      }

      else
      {
        v150 = v241;
        v151 = v256;
        (v65)(v241, v256);
        v152 = v148;
        v153 = v195;
        _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v152, v195, type metadata accessor for Range<AttributedString.Index>);
        (v243)(v150, v153, v151);
        outlined destroy of Range<AttributedString.Index>?(v153, type metadata accessor for Range<AttributedString.Index>);
      }

      v154 = v238;
      AttributedString.subscript.getter();
      v155 = v239;
      AttributedSubstring.runs.getter();
      v156 = v234;
      (v234)(v154, v249);
      v157 = v208;
      AttributedString.Runs.subscript.getter();
      (v246)(v155, v250);
      v158 = *v218;
      v159 = v230;
      v160 = v236;
      (*v218)(v230, v236);
      (*v199)(v159, v157, v160);
      AttributedString.subscript.getter();
      AttributedSubstring.runs.getter();
      (v156)(v154, v249);
      v91 = v226;
      swift_beginAccess();
      AttributedString.Runs.subscript.getter();
      swift_endAccess();
      (v246)(v155, v250);
      v161 = v205;
      AttributedString.Runs.Run.range.getter();
      v158(v157, v160);
      v162 = v212;
      next #1 <A>(_:) in NSSwiftMutableAttributedString.enumerateAttributes(in:options:using:)(v161, v232, v255, v212);
      outlined destroy of Range<AttributedString.Index>?(v161, type metadata accessor for Range<AttributedString.Index>);
      outlined destroy of Range<AttributedString.Index>?(v231, type metadata accessor for Range<AttributedString.Index>?);
      if ((*v217)(v162, 1, v256) == 1)
      {
        outlined destroy of Range<AttributedString.Index>?(v162, type metadata accessor for AttributedString.Index?);
        (v229)(v242, v237);
        v72 = v216;
        v158(v216, v236);
        v63 = v255;
        goto LABEL_34;
      }

      v163 = v256;
      (v228)(v91, v256);
      v164 = v198;
      v165 = v162;
      v68 = v227;
      v166 = v233;
      v233(v198, v165, v163);
      v166(v91, v164, v163);
      (v229)(v242, v237);
      v72 = v216;
      v158(v216, v236);
      v63 = v255;
    }

    if (v70)
    {
      v124 = v209;
      v125 = v256;
      v126 = v243;
      (v243)(v209, v123, v256);
      v127 = v211;
      v126(v124 + *(v211 + 48), v123, v125);
      v128 = v210;
      outlined init with copy of Range<AttributedString.Index>(v124, v210, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v129 = *(v127 + 48);
      v130 = v206;
      v131 = v233;
      v233(v206, v128, v125);
      (v65)(v128 + v129, v125);
      _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v124, v128, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v132 = *(v127 + 48);
      v133 = v252;
      v131((v130 + *(v252 + 36)), v128 + v132, v125);
      (v65)(v128, v125);
      (*v194)(v130, 0, 1, v133);
      goto LABEL_28;
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    v182 = v70;
    swift_once();
    v70 = v182;
  }

  v93 = type metadata accessor for Range<AttributedString.Index>;
  v94 = v83;
LABEL_39:
  outlined destroy of Range<AttributedString.Index>?(v94, v93);
  $defer #1 <A>() in NSSwiftMutableAttributedString.attributes(location:effectiveRange:rangeLimit:)(v184, "enumerateAttributes");

  return result;
}

uint64_t next #1 <A>(_:) in NSSwiftMutableAttributedString.enumerateAttributes(in:options:using:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for AttributedString();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedString.Index?(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28 - v17;
  if ((a2 & 2) != 0)
  {
    if (static AttributedString.Index.== infix(_:_:)())
    {
      v25 = type metadata accessor for AttributedString.Index();
      (*(*(v25 - 8) + 56))(v18, 1, 1, v25);
    }

    else
    {
      (*(v10 + 16))(v12, &a4[*((*MEMORY[0x1E69E7D40] & *a4) + 0x60)], v9);
      lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
      AttributedStringProtocol.index(beforeCharacter:)();
      (*(v10 + 8))(v12, v9);
      v26 = type metadata accessor for AttributedString.Index();
      (*(*(v26 - 8) + 56))(v18, 0, 1, v26);
    }
  }

  else
  {
    type metadata accessor for Range<AttributedString.Index>(0);
    v20 = *(v19 + 36);
    v21 = static AttributedString.Index.== infix(_:_:)();
    v22 = type metadata accessor for AttributedString.Index();
    v23 = *(v22 - 8);
    v24 = v23;
    if (v21)
    {
      (*(v23 + 56))(v15, 1, 1, v22);
    }

    else
    {
      (*(v23 + 16))(v15, a1 + v20, v22);
      (*(v24 + 56))(v15, 0, 1, v22);
    }

    v18 = v15;
  }

  return _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v18, a5, type metadata accessor for AttributedString.Index?);
}

uint64_t specialized getter of runMightBeBrokenByDirt #1 in NSSwiftMutableAttributedString.enumerateAttributes(in:options:using:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v35 = a5;
  v36 = a1;
  v37 = a2;
  v38 = a3;
  type metadata accessor for Range<AttributedString.Index>(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttributedString.Runs.Run();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedString.Index?(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AttributedString.Index();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v35 - v21;
  swift_beginAccess();
  (*(v10 + 16))(v12, a4, v9);
  AttributedString.Runs.Run.range.getter();
  v23 = v12;
  v24 = v36;
  (*(v10 + 8))(v23, v9);
  next #1 <A>(_:) in NSSwiftMutableAttributedString.enumerateAttributes(in:options:using:)(v8, v24, v38, v15);
  outlined destroy of Range<AttributedString.Index>?(v8, type metadata accessor for Range<AttributedString.Index>);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    outlined destroy of Range<AttributedString.Index>?(v15, type metadata accessor for AttributedString.Index?);
    v25 = 0;
  }

  else
  {
    v27 = *(v17 + 32);
    v26 = v17 + 32;
    v27(v22, v15, v16);
    v28 = (v26 - 16);
    v29 = (v26 - 24);
    if ((v24 & 2) != 0)
    {
      v32 = v35;
      swift_beginAccess();
      (*v28)(v19, v32, v16);
      lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
      v31 = dispatch thunk of static Comparable.>= infix(_:_:)();
    }

    else
    {
      v30 = v35;
      swift_beginAccess();
      (*v28)(v19, v30, v16);
      lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
      v31 = dispatch thunk of static Comparable.<= infix(_:_:)();
    }

    v25 = v31;
    v33 = *v29;
    (*v29)(v19, v16);
    v33(v22, v16);
  }

  return v25 & 1;
}

uint64_t closure #1 in NSSwiftMutableAttributedString.enumerateAttributes(in:options:using:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for AttributeContainer();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Range<AttributedString.Index>(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AttributedString.Runs.Run.range.getter();
  (*(v6 + 16))(v8, a4, v5);
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
  v12 = AttributedString.subscript.modify();
  AttributedSubstring.setAttributes(_:)();
  (*(v6 + 8))(v8, v5);
  v12(v14, 0);
  return outlined destroy of Range<AttributedString.Index>?(v11, type metadata accessor for Range<AttributedString.Index>);
}

void @objc NSSwiftMutableAttributedString.enumerateAttributes(in:options:using:)(void *a1, int a2, char **a3, char **a4, uint64_t a5, void *aBlock)
{
  v10 = _Block_copy(aBlock);
  v12[2] = v10;
  v11 = a1;
  NSSwiftMutableAttributedString.enumerateAttributes(in:options:using:)(a3, a4, a5, partial apply for thunk for @callee_unowned @convention(block) (@unowned NSDictionary, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> (), v12);
  _Block_release(v10);
}

uint64_t closure #1 in NSSwiftMutableAttributedString.enumerateAttribute(_:in:options:using:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(_OWORD *), uint64_t a7)
{
  v22 = a6;
  v23 = a7;
  v20 = a4;
  v21 = a5;
  v10 = *a2;
  v11 = *MEMORY[0x1E69E7D40];
  v12 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x50);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v20 - v14;
  v16 = *((v11 & v10) + 0x68);
  swift_beginAccess();
  (*(v13 + 16))(v15, &a2[v16], v12);
  (*(*((v11 & v10) + 0x58) + 32))(v24, a3, v12);
  (*(v13 + 8))(v15, v12);
  v17 = v25;
  v18 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  ValidatingTextAttributeDefinition.enumerate(fixing:in:options:using:)(a1, v20, v21, v22, v23, v17, v18);
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t ValidatingTextAttributeDefinition.enumerate(fixing:in:options:using:)(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(_OWORD *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v56 = a7;
  v61 = a4;
  v62 = a5;
  v64 = a3;
  v65 = a1;
  v54 = a2;
  v10 = type metadata accessor for AttributedString.Runs.Validated(255, a6, a7, a4);
  type metadata accessor for (value: Any?, range: _NSRange)(255);
  v58 = v11;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AttributedString.Runs.Validated<A>, v10);
  v12 = type metadata accessor for LazyMapSequence();
  v59 = swift_getWitnessTable(MEMORY[0x1E69E6CC8], v12);
  v14 = type metadata accessor for CoalescingAdjacentRangesWithSameValue(0, v12, v59, v13);
  v47 = *(v14 - 8);
  v48 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v46 = &v46 - v15;
  v16 = v10;
  v50 = v10;
  v53 = type metadata accessor for LazySequence();
  v57 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v63 = &v46 - v17;
  type metadata accessor for Range<AttributedString.Index>(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a6 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v24 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v46 - v27;
  v60 = v12;
  v55 = *(v12 - 8);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v51 = &v46 - v31;
  v32 = *(v21 + 16);
  v32(v24, v8, a6, v30);
  outlined init with copy of Range<AttributedString.Index>(v54, v20, type metadata accessor for Range<AttributedString.Index>);
  v33 = v56;
  AttributedString.Runs.Validated.init(definition:base:range:reversed:longestEffectiveRangeNotRequired:)(v24, v65, v20, (v64 >> 1) & 1, (v64 >> 20) & 1, a6, v56, v28);
  v34 = v50;
  MEMORY[0x18D00CB50](v50, WitnessTable);
  (*(v25 + 8))(v28, v34);
  (v32)(v24, v49, a6);
  v35 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v36 = (v22 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  *(v37 + 16) = a6;
  *(v37 + 24) = v33;
  (*(v21 + 32))(v37 + v35, v24, a6);
  v38 = v51;
  *(v37 + v36) = v65;
  v39 = v53;
  swift_getWitnessTable(MEMORY[0x1E69E6A68], v53);
  v40 = v63;
  LazySequenceProtocol.map<A>(_:)();

  (*(v57 + 8))(v40, v39);
  if ((v64 & 0x100000) != 0)
  {
    v41 = v60;
    Sequence<>.sink(into:)(v61, v62, v60, v59);
  }

  else
  {
    v42 = v46;
    v41 = v60;
    Sequence<>.coalescingAdjacentRangesWithSameValue()(v60, v46);
    v43 = v48;
    v44 = swift_getWitnessTable(protocol conformance descriptor for CoalescingAdjacentRangesWithSameValue<A>, v48);
    Sequence<>.sink(into:)(v61, v62, v43, v44);
    (*(v47 + 8))(v42, v43);
  }

  return (*(v55 + 8))(v38, v41);
}

void @objc NSSwiftMutableAttributedString.enumerateAttribute(_:in:options:using:)(void *a1, int a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, void *aBlock)
{
  v12 = _Block_copy(aBlock);
  v15[2] = v12;
  v13 = a3;
  v14 = a1;
  NSSwiftMutableAttributedString.enumerateAttribute(_:in:options:using:)(v13, a4, a5, a6, partial apply for thunk for @callee_unowned @convention(block) (@unowned Swift.AnyObject?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> (), v15);
  _Block_release(v12);
}

Swift::Void __swiftcall NSSwiftMutableAttributedString.replaceCharacters(in:with:)(__C::_NSRange in, NSAttributedString with)
{
  v3 = v2;
  isa = with.super.isa;
  length = in.length;
  location = in.location;
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  v39 = *MEMORY[0x1E69E7D40] & *v2;
  v41 = *((v6 & v5) + 0x50);
  v38 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](in.location);
  v8 = &v34 - v7;
  v42 = type metadata accessor for AttributedString();
  v9 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>?(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>(0);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  NSSwiftMutableAttributedString.beginEditing()();
  if (NSNotFound.getter() == location)
  {

    NSSwiftMutableAttributedString.endEditing()();
  }

  else
  {
    v20 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x60);
    v35 = v9;
    v21 = *(v9 + 16);
    v22 = v42;
    v21(v11, &v3[v20], v42);
    v23 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
    v36 = location;
    v37 = v23;
    Range<>.init<A>(_:in:)();
    if ((*(v17 + 48))(v14, 1, v16) != 1)
    {
      v24 = v19;
      _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v14, v19, type metadata accessor for Range<AttributedString.Index>);
      v25 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x68);
      swift_beginAccess();
      v26 = v41;
      (*(v38 + 16))(v8, &v3[v25], v41);
      v27 = *(*(v39 + 88) + 8);
      isa = isa;
      AttributedString.init<A>(converting:using:)(isa, v8, v26, v27, v11);
      lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
      v39 = v24;
      AttributedString.replaceSubrange<A, B>(_:with:)();
      NSSwiftMutableAttributedString.invalidateStringCache()();
      v28 = [v3 string];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      swift_beginAccess();
      (*(v27 + 56))(v29, v31, v26, v27);
      swift_endAccess();

      v32 = [(objc_class *)isa length];
      if (!__OFSUB__(v32, length))
      {
        v33.location = v36;
        v33.length = length;
        NSSwiftMutableAttributedString.edited(_:range:changeInLength:)(3uLL, v33, v32 - length);
        (*(v35 + 8))(v11, v22);
        outlined destroy of Range<AttributedString.Index>?(v39, type metadata accessor for Range<AttributedString.Index>);
        NSSwiftMutableAttributedString.endEditing()();
        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

Swift::Void __swiftcall NSSwiftMutableAttributedString.beginEditing()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for AttributedString();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  NSSwiftMutableAttributedString.copyOnWriteTracker.getter(v17);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for NSSwiftMutableAttributedString<A>, ObjectType);
  type metadata accessor for NSSwiftAttributedSubstring.CopyOnWriteState(0, ObjectType, WitnessTable, v8);
  NSSwiftAttributedSubstring.CopyOnWriteState.ensureReadyForWrite()();
  NSSwiftMutableAttributedString.copyOnWriteTracker.setter(v17);
  v9 = MEMORY[0x1E69E7D40];
  (*(v4 + 16))(v6, &v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x60)], v3);
  v10 = *((*v9 & *v1) + 0x70);
  swift_beginAccess();
  v11 = *&v1[v10];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v1[v10] = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
    *&v1[v10] = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
  }

  v11[2] = v14 + 1;
  (*(v4 + 32))(v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v14, v6, v3);
  *&v1[v10] = v11;
  v16.receiver = v1;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, sel_beginEditing);
}

Swift::Void __swiftcall NSSwiftMutableAttributedString.edited(_:range:changeInLength:)(NSTextStorageEditActions _, __C::_NSRange range, Swift::Int changeInLength)
{
  length = range.length;
  v134 = changeInLength;
  location = range.location;
  ObjectType = swift_getObjectType();
  v6 = *v3;
  v7 = *MEMORY[0x1E69E7D40];
  v117 = *MEMORY[0x1E69E7D40] & *v3;
  type metadata accessor for PartialRangeFrom<AttributedString.Index>(0);
  v111 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v105 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v110 = &v104 - v11;
  v116 = type metadata accessor for AttributedSubstring();
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v114 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v118 = &v104 - v14;
  type metadata accessor for PartialRangeUpTo<AttributedString.Index>(0);
  v113 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v108 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v112 = &v104 - v18;
  v119 = type metadata accessor for AttributedString.Index();
  v121 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v120 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>?(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v122 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v128 = (&v104 - v23);
  type metadata accessor for Range<AttributedString.Index>(0);
  v137 = v24;
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v104 = &v104 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v106 = &v104 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v109 = &v104 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v124 = &v104 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v132 = &v104 - v34;
  v35 = type metadata accessor for AttributedString();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v104 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v104 - v40;
  v42 = *((v7 & v6) + 0x70);
  swift_beginAccess();
  v43 = *(v3 + v42);
  v44 = *(v43 + 16);
  if (!v44)
  {
    goto LABEL_29;
  }

  v45 = *(v36 + 16);
  v130 = v36 + 16;
  v45(v41, v43 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * (v44 - 1), v35);
  v141.receiver = v3;
  v141.super_class = ObjectType;
  objc_msgSendSuper2(&v141, sel_beginEditing);
  v135 = v3;
  v140.receiver = v3;
  v140.super_class = ObjectType;
  v107 = ObjectType;
  objc_msgSendSuper2(&v140, sel_edited_range_changeInLength_, _, location, length, v134);
  v131 = v41;
  v126 = v45;
  v45(v38, v41, v35);
  v46 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
  v47 = v128;
  v127 = v38;
  v123 = v46;
  Range<>.init<A>(_:in:)();
  v48 = *(v25 + 48);
  v49 = v48(v47, 1, v137);
  v50 = v36;
  v136 = v35;
  if (v49 == 1)
  {
    v51 = v135;
LABEL_7:
    outlined destroy of Range<AttributedString.Index>?(v47, type metadata accessor for Range<AttributedString.Index>?);
    v56 = swift_getObjectType();
    v142.receiver = v51;
    v142.super_class = v56;
    objc_msgSendSuper2(&v142, sel_endEditing);
    (*(v50 + 8))(v131, v136);
    return;
  }

  v125 = v36;
  _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v47, v132, type metadata accessor for Range<AttributedString.Index>);
  if (__OFADD__(length, v134))
  {
    __break(1u);
    goto LABEL_25;
  }

  v51 = v135;
  v52 = v136;
  v53 = *((*MEMORY[0x1E69E7D40] & *v135) + 0x60);
  v54 = v127;
  v55 = v126;
  v126(v127, &v135[v53], v136);
  v47 = v122;
  Range<>.init<A>(_:in:)();
  if (v48(v47, 1, v137) == 1)
  {
    outlined destroy of Range<AttributedString.Index>?(v132, type metadata accessor for Range<AttributedString.Index>);
    v50 = v125;
    goto LABEL_7;
  }

  v57 = v124;
  _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v47, v124, type metadata accessor for Range<AttributedString.Index>);
  v134 = v53;
  v55(v54, &v51[v53], v52);
  v58 = v120;
  AttributedString.startIndex.getter();
  v59 = *(v125 + 8);
  v60 = v54;
  v61 = v58;
  v125 += 8;
  v59(v60, v52);
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
  v62 = v119;
  v63 = dispatch thunk of static Comparable.> infix(_:_:)();
  v64 = v121;
  v65 = *(v121 + 8);
  v65(v58, v62);
  if ((v63 & 1) == 0)
  {
    goto LABEL_15;
  }

  AttributedString.startIndex.getter();
  v66 = dispatch thunk of static Comparable.> infix(_:_:)();
  v65(v58, v62);
  if ((v66 & 1) == 0)
  {
    goto LABEL_15;
  }

  location = v65;
  length = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F8]);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v67 = v112;
  v128 = *(v64 + 16);
  v128(v112, v57, v62);
  v122 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type PartialRangeUpTo<AttributedString.Index> and conformance PartialRangeUpTo<A>, type metadata accessor for PartialRangeUpTo<AttributedString.Index>, MEMORY[0x1E69E6D28]);
  AttributedString.subscript.getter();
  outlined destroy of Range<AttributedString.Index>?(v67, type metadata accessor for PartialRangeUpTo<AttributedString.Index>);
  (*(*(*(v117 + 88) + 8) + 16))(&v142);
  receiver = v142.receiver;
  v69 = v132;
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v70 = v108;
  v128(v108, v69, v62);
  v71 = v114;
  AttributedString.subscript.getter();
  outlined destroy of Range<AttributedString.Index>?(v70, type metadata accessor for PartialRangeUpTo<AttributedString.Index>);
  v72 = v109;
  v73 = v118;
  specialized AttributedStringProtocol.suffix<A>(whereValueIn:differsComparedTo:)(receiver, v109);

  v74 = *(v115 + 8);
  v75 = v71;
  v76 = v116;
  v74(v75, v116);
  v74(v73, v76);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    outlined init with copy of Range<AttributedString.Index>(v72, v106, type metadata accessor for Range<AttributedString.Index>);
    v77 = v135;
    v126(v127, &v135[v134], v136);
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
    v61 = v120;
    v78 = _NSRange.init<A, B>(_:in:)();
    v138.receiver = v77;
    v138.super_class = v107;
    objc_msgSendSuper2(&v138, sel_edited_range_changeInLength_, 1, v78, v79, 0);
  }

  outlined destroy of Range<AttributedString.Index>?(v72, type metadata accessor for Range<AttributedString.Index>);
  v65 = location;
LABEL_15:
  v81 = v136;
  v80 = v137;
  v82 = *(v137 + 36);
  v83 = v127;
  v126(v127, &v135[v134], v136);
  AttributedString.endIndex.getter();
  v59(v83, v81);
  LOBYTE(v83) = static AttributedString.Index.< infix(_:_:)();
  v65(v61, v62);
  if (v83)
  {
    v84 = *(v80 + 36);
    AttributedString.endIndex.getter();
    v85 = static AttributedString.Index.< infix(_:_:)();
    v65(v61, v62);
    if (v85)
    {
      v86 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F8]);
      v87 = v124;
      length = v86;
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        v88 = v87 + v82;
        v89 = v110;
        location = *(v121 + 16);
        (location)(v110, v88, v62);
        lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type PartialRangeFrom<AttributedString.Index> and conformance PartialRangeFrom<A>, type metadata accessor for PartialRangeFrom<AttributedString.Index>, MEMORY[0x1E69E6D18]);
        v90 = v118;
        AttributedString.subscript.getter();
        outlined destroy of Range<AttributedString.Index>?(v89, type metadata accessor for PartialRangeFrom<AttributedString.Index>);
        (*(*(*(v117 + 88) + 8) + 16))(&v142);
        v91 = v142.receiver;
        v92 = v132;
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          v93 = v92 + v84;
          v94 = v105;
          (location)(v105, v93, v62);
          v95 = v114;
          AttributedString.subscript.getter();
          outlined destroy of Range<AttributedString.Index>?(v94, type metadata accessor for PartialRangeFrom<AttributedString.Index>);
          v96 = v104;
          specialized AttributedStringProtocol.prefix<A>(whereValueIn:differsComparedTo:)(v91, v104);

          v97 = *(v115 + 8);
          v98 = v116;
          v97(v95, v116);
          v97(v90, v98);
          if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
          {
            outlined init with copy of Range<AttributedString.Index>(v96, v106, type metadata accessor for Range<AttributedString.Index>);
            v99 = v135;
            v126(v127, &v135[v134], v136);
            lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
            v100 = _NSRange.init<A, B>(_:in:)();
            v139.receiver = v99;
            v139.super_class = v107;
            objc_msgSendSuper2(&v139, sel_edited_range_changeInLength_, 1, v100, v101, 0);
          }

          outlined destroy of Range<AttributedString.Index>?(v96, type metadata accessor for Range<AttributedString.Index>);
          goto LABEL_22;
        }

        goto LABEL_28;
      }

      goto LABEL_26;
    }
  }

LABEL_22:
  outlined destroy of Range<AttributedString.Index>?(v124, type metadata accessor for Range<AttributedString.Index>);
  outlined destroy of Range<AttributedString.Index>?(v132, type metadata accessor for Range<AttributedString.Index>);
  v102 = v135;
  v103 = swift_getObjectType();
  v142.receiver = v102;
  v142.super_class = v103;
  objc_msgSendSuper2(&v142, sel_endEditing);
  v59(v131, v136);
}

void @objc NSSwiftMutableAttributedString.replaceCharacters(in:with:)(void *a1, uint64_t a2, Swift::Int a3, Swift::Int a4, void *a5)
{
  v8 = a5;
  v10 = a1;
  v9.location = a3;
  v9.length = a4;
  NSSwiftMutableAttributedString.replaceCharacters(in:with:)(v9, v8);
}

Swift::Void __swiftcall NSSwiftMutableAttributedString.replaceCharacters(in:with:)(__C::_NSRange in, Swift::String with)
{
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  length = in.length;
  location = in.location;
  v6 = NSSwiftMutableAttributedString._mutableStringProxy.getter(in.location, in.length, with._countAndFlagsBits, with._object);
  v7 = MEMORY[0x18D00C850](countAndFlagsBits, object);
  [v6 replaceCharactersInRange:location withString:{length, v7}];
}

Swift::Void __swiftcall NSSwiftMutableAttributedString.setAttributes(_:range:)(Swift::OpaquePointer_optional _, __C::_NSRange range)
{
  v42.location = *&_.is_nil;
  v42.length = range.location;
  rawValue = _.value._rawValue;
  v3 = *v2;
  v4 = *MEMORY[0x1E69E7D40];
  v39 = *MEMORY[0x1E69E7D40] & *v2;
  v37 = *((v4 & v3) + 0x50);
  v36 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](_.value._rawValue);
  v34 = &v32 - v5;
  v6 = type metadata accessor for AttributeContainer();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttributedString();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>?(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>(0);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  NSSwiftMutableAttributedString.beginEditing()();
  v21 = *(v10 + 16);
  v33 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x60);
  v21(v12, v2 + v33, v9);
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
  Range<>.init<A>(_:in:)();
  v22 = *(v18 + 48);
  v35 = v17;
  if (v22(v15, 1, v17) == 1)
  {
    __break(1u);
  }

  else
  {
    v32 = v20;
    _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v15, v20, type metadata accessor for Range<AttributedString.Index>);
    v23 = v8;
    AttributeContainer.init()();
    swift_beginAccess();
    v25 = v36;
    v24 = v37;
    v26 = v34;
    (*(v36 + 16))();
    if (rawValue)
    {
      v27 = rawValue;
    }

    else
    {
      v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    v28 = *(*(v39 + 88) + 8);
    v29 = *(v28 + 40);

    v29(v27, v23, 1, v24, v28);

    (*(v25 + 8))(v26, v24);
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
    v30 = v32;
    v31 = AttributedString.subscript.modify();
    AttributedSubstring.setAttributes(_:)();
    v31(v43, 0);
    NSSwiftMutableAttributedString.edited(_:range:changeInLength:)(1uLL, v42, 0);
    (*(v40 + 8))(v23, v41);
    outlined destroy of Range<AttributedString.Index>?(v30, type metadata accessor for Range<AttributedString.Index>);
    NSSwiftMutableAttributedString.endEditing()();
  }
}

uint64_t @objc NSSwiftMutableAttributedString.setAttributes(_:range:)(void *a1, uint64_t a2, void *a3, Swift::Bool a4, Swift::Int a5)
{
  v7 = a3;
  if (a3)
  {
    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = a1;
  v13.value._rawValue = v7;
  v13.is_nil = a4;
  v10.location = a5;
  NSSwiftMutableAttributedString.setAttributes(_:range:)(v13, v10);
}

uint64_t NSSwiftMutableAttributedString.addAttribute(_:value:range:)(void *a1, uint64_t a2, Swift::Int a3, Swift::Int a4)
{
  _sSny10Foundation16AttributedStringV5IndexVGSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(NSAttributedStringKey, Any)>, type metadata accessor for (NSAttributedStringKey, Any), MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63400;
  *(inited + 32) = a1;
  outlined init with copy of Any(a2, inited + 40);
  v9 = a1;
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of Range<AttributedString.Index>?(inited + 32, type metadata accessor for (NSAttributedStringKey, Any));
  v11.location = a3;
  v11.length = a4;
  NSSwiftMutableAttributedString.addAttributes(_:range:)(v10, v11);
}

Swift::Void __swiftcall NSSwiftMutableAttributedString.addAttributes(_:range:)(Swift::OpaquePointer _, __C::_NSRange range)
{
  v3 = v2;
  length = range.length;
  location = range.location;
  rawValue = _._rawValue;
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  v81 = *MEMORY[0x1E69E7D40] & *v2;
  v80 = *((v6 & v5) + 0x50);
  v66 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](_._rawValue);
  v79 = &v58 - v7;
  v78 = type metadata accessor for AttributeContainer();
  v64 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for AttributedString.Runs.Index();
  v73 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v84 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for AttributedString.Runs.Run();
  v65 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AttributedString.Runs();
  v69 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v68 = (&v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = type metadata accessor for AttributedSubstring();
  v60 = *(v70 - 8);
  v13 = MEMORY[0x1EEE9AC00](v70);
  v61 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<AttributedString.Runs>(0, v13);
  v67 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AttributedString();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>?(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v83 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>(0);
  v25 = v24;
  v26 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v74 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v62 = &v58 - v29;
  NSSwiftMutableAttributedString.beginEditing()();
  if (NSNotFound.getter() == location)
  {

    NSSwiftMutableAttributedString.endEditing()();
  }

  else
  {
    v30 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x60);
    (*(v19 + 16))(v21, &v3[v30], v18);
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
    v31 = v83;
    v59 = location;
    Range<>.init<A>(_:in:)();
    if ((*(v26 + 48))(v31, 1, v25) == 1)
    {
      __break(1u);
    }

    else
    {
      _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v31, v62, type metadata accessor for Range<AttributedString.Index>);
      v32 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
      v72 = v30;
      v33 = v61;
      v71 = v32;
      AttributedString.subscript.getter();
      v34 = v68;
      AttributedSubstring.runs.getter();
      (*(v60 + 8))(v33, v70);
      v35 = v69;
      (*(v69 + 16))(v17, v34, v11);
      v36 = *(v67 + 9);
      v37 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x1E69687C8], MEMORY[0x1E69687E0]);
      dispatch thunk of Collection.startIndex.getter();
      (*(v35 + 8))(v34, v11);
      v38 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x68);
      v83 = v3;
      v69 = v38;
      swift_beginAccess();
      ++v73;
      v68 = (v65 + 2);
      v67 = (v66 + 2);
      ++v66;
      ++v65;
      ++v64;
      v70 = v37;
      while (1)
      {
        v39 = v84;
        dispatch thunk of Collection.endIndex.getter();
        lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Runs.Index and conformance AttributedString.Runs.Index, MEMORY[0x1E69687B0], MEMORY[0x1E69687C0]);
        v40 = v85;
        v41 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*v73)(v39, v40);
        if (v41)
        {
          break;
        }

        v42 = dispatch thunk of Collection.subscript.read();
        v43 = v75;
        v44 = v25;
        v45 = v76;
        (*v68)(v75);
        v42(v86, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v46 = v77;
        AttributedString.Runs.Run.attributes.getter();
        v47 = v79;
        v48 = v17;
        v49 = v36;
        v50 = v11;
        v51 = v80;
        (*v67)(v79, &v83[v69], v80);
        (*(*(*(v81 + 88) + 8) + 40))(rawValue, v46, 0, v51);
        v52 = v51;
        v11 = v50;
        (*v66)(v47, v52);
        v53 = v74;
        AttributedString.Runs.Run.range.getter();
        v54 = v45;
        v25 = v44;
        (*v65)(v43, v54);
        v55 = AttributedString.subscript.modify();
        AttributedSubstring.setAttributes(_:)();
        v55(v86, 0);
        v56 = v53;
        v36 = v49;
        v17 = v48;
        outlined destroy of Range<AttributedString.Index>?(v56, type metadata accessor for Range<AttributedString.Index>);
        (*v64)(v46, v78);
      }

      outlined destroy of Range<AttributedString.Index>?(v17, type metadata accessor for IndexingIterator<AttributedString.Runs>);
      v57.location = v59;
      v57.length = length;
      NSSwiftMutableAttributedString.edited(_:range:changeInLength:)(1uLL, v57, 0);
      outlined destroy of Range<AttributedString.Index>?(v62, type metadata accessor for Range<AttributedString.Index>);
      NSSwiftMutableAttributedString.endEditing()();
    }
  }
}

uint64_t @objc NSSwiftMutableAttributedString.addAttribute(_:value:range:)(void *a1, uint64_t a2, void *a3, uint64_t a4, Swift::Int a5, Swift::Int a6)
{
  v9 = a3;
  swift_unknownObjectRetain();
  v10 = a1;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  NSSwiftMutableAttributedString.addAttribute(_:value:range:)(v9, v12, a5, a6);

  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t @objc NSSwiftMutableAttributedString.addAttributes(_:range:)(void *a1, uint64_t a2, uint64_t a3, Swift::Int a4, Swift::Int a5)
{
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a1;
  v10.location = a4;
  v10.length = a5;
  NSSwiftMutableAttributedString.addAttributes(_:range:)(v8, v10);
}

Swift::Void __swiftcall NSSwiftMutableAttributedString.removeAttribute(_:range:)(NSAttributedStringKey _, __C::_NSRange range)
{
  v3 = v2;
  v75 = range;
  v95 = _;
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  v102 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](_);
  v108 = &v74 - v5;
  v8 = *((v7 & v6) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v100 = v8;
  v109 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v94 = type metadata accessor for TextAttributeValidationRecord(0, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  v101 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v93 = &v74 - v12;
  v92 = type metadata accessor for AttributeContainer();
  v77 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v107 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for AttributedString.Runs.Index();
  v103 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v98 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for AttributedString.Runs.Run();
  v76 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v91 = &v74 - v17;
  v18 = type metadata accessor for AttributedString.Runs();
  v104 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v96 = (&v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v84 = type metadata accessor for AttributedSubstring();
  v83 = *(v84 - 8);
  v20 = MEMORY[0x1EEE9AC00](v84);
  v81 = (&v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for IndexingIterator<AttributedString.Runs>(0, v20);
  v82 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v97 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for AttributedString();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>?(0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v74 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>(0);
  v32 = v31;
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v87 = &v74 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v74 - v36;
  NSSwiftMutableAttributedString.beginEditing()();
  v38 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x60);
  (*(v25 + 16))(v27, &v3[v38], v24);
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
  Range<>.init<A>(_:in:)();
  if ((*(v33 + 48))(v30, 1, v32) == 1)
  {
    __break(1u);
  }

  else
  {
    _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v30, v37, type metadata accessor for Range<AttributedString.Index>);
    v39 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
    v86 = v38;
    v40 = v81;
    v88 = v32;
    v85 = v39;
    AttributedString.subscript.getter();
    v41 = v96;
    AttributedSubstring.runs.getter();
    (*(v83 + 8))(v40, v84);
    v42 = v104;
    v43 = v97;
    (*(v104 + 16))(v97, v41, v18);
    v44 = *(v82 + 9);
    v45 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x1E69687C8], MEMORY[0x1E69687E0]);
    dispatch thunk of Collection.startIndex.getter();
    (*(v42 + 8))(v41, v18);
    v104 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x68);
    swift_beginAccess();
    v96 = (v103 + 1);
    v82 = (v76 + 2);
    v81 = (v76 + 4);
    v103 = (v102 + 2);
    v46 = v100;
    v79 = v100 + 40;
    ++v102;
    v78 = (v101 + 8);
    ++v77;
    ++v76;
    v47 = v37;
    v90 = v18;
    v89 = v37;
    v84 = v44;
    v83 = v45;
    v80 = v3;
    while (1)
    {
      v54 = v98;
      dispatch thunk of Collection.endIndex.getter();
      lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Runs.Index and conformance AttributedString.Runs.Index, MEMORY[0x1E69687B0], MEMORY[0x1E69687C0]);
      v55 = v99;
      v56 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v96)(v54, v55);
      if (v56)
      {
        break;
      }

      v57 = dispatch thunk of Collection.subscript.read();
      v58 = v91;
      v59 = v106;
      (*v82)(v91);
      v57(v111, 0);
      dispatch thunk of Collection.formIndex(after:)();
      (*v81)(v105, v58, v59);
      v60 = v107;
      AttributedString.Runs.Run.attributes.getter();
      v61 = v104;
      v101 = *v103;
      v62 = v108;
      v63 = v109;
      (v101)(v108, &v3[v104], v109);
      v64 = v93;
      (*(v46 + 40))(v60, v63, v46);
      v65 = *v102;
      (*v102)(v62, v63);
      (*v78)(v64, v94);
      v66 = &v3[v61];
      v67 = v101;
      (v101)(v62, v66, v63);
      v68 = *(v46 + 8);
      v69 = (*(v68 + 32))(v60, v63, v68);
      v65(v62, v63);
      v70 = specialized __RawDictionaryStorage.find<A>(_:)();
      if (v71)
      {
        v72 = v70;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v110 = v69;
        if (!isUniquelyReferenced_nonNull_native)
        {
          specialized _NativeDictionary.copy()();
          v69 = v110;
        }

        outlined init with take of Any((*(v69 + 56) + 32 * v72), v111);
        specialized _NativeDictionary._delete(at:)(v72, v69);
      }

      else
      {
        memset(v111, 0, sizeof(v111));
      }

      outlined destroy of Any?(v111);
      v3 = v80;
      v48 = v108;
      v49 = v109;
      v67(v108, &v80[v104], v109);
      v50 = v107;
      (*(v68 + 40))(v69, v107, 1, v49, v68);

      v65(v48, v49);
      v51 = v87;
      v52 = v105;
      AttributedString.Runs.Run.range.getter();
      v53 = AttributedString.subscript.modify();
      AttributedSubstring.setAttributes(_:)();
      v53(v111, 0);
      outlined destroy of Range<AttributedString.Index>?(v51, type metadata accessor for Range<AttributedString.Index>);
      (*v77)(v50, v92);
      (*v76)(v52, v106);
      v46 = v100;
      v43 = v97;
      v47 = v89;
    }

    outlined destroy of Range<AttributedString.Index>?(v43, type metadata accessor for IndexingIterator<AttributedString.Runs>);
    NSSwiftMutableAttributedString.edited(_:range:changeInLength:)(1uLL, v75, 0);
    outlined destroy of Range<AttributedString.Index>?(v47, type metadata accessor for Range<AttributedString.Index>);
    NSSwiftMutableAttributedString.endEditing()();
  }
}

void @objc NSSwiftMutableAttributedString.removeAttribute(_:range:)(void *a1, uint64_t a2, void *a3, Swift::Int a4, Swift::Int a5)
{
  v8 = a3;
  v10 = a1;
  v9.location = a4;
  v9.length = a5;
  NSSwiftMutableAttributedString.removeAttribute(_:range:)(v8, v9);
}

void @objc NSSwiftMutableAttributedString.insert(_:at:)(void *a1, uint64_t a2, void *a3, Swift::Int a4)
{
  v6 = a3;
  v7 = a1;
  NSSwiftMutableAttributedString.insert(_:at:)(v6, a4);
}

Swift::Void __swiftcall NSSwiftMutableAttributedString.append(_:)(NSAttributedString a1)
{
  NSAttributedString.range.getter();
  v3 = v2;
  v4 = 0;

  NSSwiftMutableAttributedString.replaceCharacters(in:with:)(*&v3, a1);
}

void @objc NSSwiftMutableAttributedString.append(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  NSSwiftMutableAttributedString.append(_:)(v4);
}

Swift::Void __swiftcall NSSwiftMutableAttributedString.deleteCharacters(in:)(__C::_NSRange in)
{
  length = in.length;
  location = in.location;
  v5 = NSSwiftMutableAttributedString._mutableStringProxy.getter(in.location, in.length, v1, v2);
  [v5 deleteCharactersInRange_];
}

void @objc NSSwiftMutableAttributedString.deleteCharacters(in:)(void *a1, uint64_t a2, Swift::Int a3, Swift::Int a4)
{
  v7 = a1;
  v6.location = a3;
  v6.length = a4;
  NSSwiftMutableAttributedString.deleteCharacters(in:)(v6);
}

Swift::Void __swiftcall NSSwiftMutableAttributedString.setAttributedString(_:)(NSAttributedString a1)
{
  v3 = NSSwiftMutableAttributedString.length.getter(v1);
  v4 = 0;

  NSSwiftMutableAttributedString.replaceCharacters(in:with:)(*&v4, a1);
}

void @objc NSSwiftMutableAttributedString.setAttributedString(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  NSSwiftMutableAttributedString.setAttributedString(_:)(v4);
}

id @objc NSSwiftMutableAttributedString._nsAttributedSubstring(from:)(void *a1, uint64_t a2, Swift::Int a3, Swift::Int a4)
{
  v6 = a1;
  v7.location = a3;
  v7.length = a4;
  v8 = NSSwiftMutableAttributedString._nsAttributedSubstring(from:)(v7);

  return v8;
}

void @objc NSSwiftMutableAttributedString.beginEditing()(void *a1)
{
  v1 = a1;
  NSSwiftMutableAttributedString.beginEditing()();
}

Swift::Void __swiftcall NSSwiftMutableAttributedString.endEditing()()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_endEditing);
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x70);
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2[2])
  {
    __break(1u);
LABEL_6:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    v3 = v2[2];
    if (v3)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_6;
  }

  v3 = v2[2];
  if (v3)
  {
LABEL_4:
    v4 = v3 - 1;
    v5 = type metadata accessor for AttributedString();
    (*(*(v5 - 8) + 8))(v2 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)) + *(*(v5 - 8) + 72) * v4, v5);
    v2[2] = v4;
    *(v0 + v1) = v2;
    swift_endAccess();
    return;
  }

LABEL_7:
  __break(1u);
}

void @objc NSSwiftMutableAttributedString.endEditing()(void *a1)
{
  v1 = a1;
  NSSwiftMutableAttributedString.endEditing()();
}

uint64_t specialized AttributedStringProtocol.suffix<A>(whereValueIn:differsComparedTo:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v111 = a1;
  v122 = a2;
  type metadata accessor for AttributedString.Index?(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v109 = &v105 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v113 = &v105 - v5;
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)(0);
  v120 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v121 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v119 = &v105 - v9;
  v10 = type metadata accessor for AttributedString.Index();
  v126 = *(v10 - 8);
  v127 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v108 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v112 = (&v105 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v118 = &v105 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v125 = &v105 - v17;
  v18 = type metadata accessor for AttributedString.Runs();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v105 - v23;
  type metadata accessor for AttributedString.Runs.Run?(0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v115 = &v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v105 - v28;
  v30 = type metadata accessor for AttributeContainer();
  v123 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v110 = &v105 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v114 = (&v105 - v33);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v105 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v129 = &v105 - v38;
  v39 = type metadata accessor for AttributedSubstring();
  v124 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedSubstring and conformance AttributedSubstring, MEMORY[0x1E6968968], MEMORY[0x1E6968960]);
  dispatch thunk of AttributedStringProtocol.runs.getter();
  specialized BidirectionalCollection.last.getter(v29);
  v40 = *(v19 + 8);
  v116 = (v19 + 8);
  v117 = v18;
  v40(v24, v18);
  v41 = type metadata accessor for AttributedString.Runs.Run();
  v42 = *(v41 - 8);
  v43 = *(v42 + 48);
  v44 = v43(v29, 1, v41);
  v128 = v39;
  if (v44 == 1)
  {
    outlined destroy of Range<AttributedString.Index>?(v29, type metadata accessor for AttributedString.Runs.Run?);
    v46 = v126;
    v45 = v127;
    v47 = v125;
LABEL_5:
    dispatch thunk of AttributedStringProtocol.endIndex.getter();
    v50 = v118;
    dispatch thunk of AttributedStringProtocol.endIndex.getter();
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v52 = *(v46 + 32);
      v53 = v119;
      v52(v119, v47, v45);
      v54 = v120;
      v52((v53 + *(v120 + 48)), v50, v45);
      v55 = v121;
      outlined init with copy of Range<AttributedString.Index>(v53, v121, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v56 = *(v54 + 48);
      v57 = v122;
      v52(v122, v55, v45);
      v58 = *(v46 + 8);
      v58(v55 + v56, v45);
      _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v53, v55, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v59 = *(v54 + 48);
      type metadata accessor for Range<AttributedString.Index>(0);
      v52(&v57[*(v60 + 36)], (v55 + v59), v45);
      return (v58)(v55, v45);
    }

    __break(1u);
    goto LABEL_19;
  }

  v107 = v40;
  AttributedString.Runs.Run.attributes.getter();
  v106 = *(v42 + 8);
  v106(v29, v41);
  v105 = *(v123 + 32);
  v105(v129, v36, v30);
  dispatch thunk of AttributedStringProtocol.runs.getter();
  v48 = v115;
  specialized BidirectionalCollection.last.getter(v115);
  v107(v21, v117);
  v49 = v30;
  if (v43(v48, 1, v41) == 1)
  {
    outlined destroy of Range<AttributedString.Index>?(v48, type metadata accessor for AttributedString.Runs.Run?);
    (*(v123 + 8))(v129, v30);
    v46 = v126;
    v45 = v127;
    v47 = v125;
    goto LABEL_5;
  }

  v61 = v110;
  AttributedString.Runs.Run.attributes.getter();
  v106(v48, v41);
  v62 = v114;
  v117 = v49;
  v63 = (v105)(v114, v61, v49);
  MEMORY[0x1EEE9AC00](v63);
  *(&v105 - 2) = v129;
  *(&v105 - 1) = v62;
  v64 = v111;

  v65 = specialized Sequence.filter(_:)(partial apply for closure #1 in AttributedStringProtocol.suffix<A>(whereValueIn:differsComparedTo:), (&v105 - 4), v64);
  v67 = v126;
  v66 = v127;
  v68 = v125;
  if (*(v65 + 16))
  {
    v69 = v130;
    v70 = v65;
    dispatch thunk of AttributedStringProtocol.endIndex.getter();
    v71 = v112;
    AttributedStringProtocol.index(beforeCharacter:)();
    v72 = *(v67 + 8);
    v118 = (v67 + 8);
    v116 = v72;
    v73 = (v72)(v68, v66);
    MEMORY[0x1EEE9AC00](v73);
    *(&v105 - 2) = v71;
    *(&v105 - 1) = v69;
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation19AttributedStringKey_pXpG_AF0eF0V5IndexVs5NeverOTg5(partial apply for specialized closure #2 in AttributedStringProtocol.suffix<A>(whereValueIn:differsComparedTo:), (&v105 - 4), v70);
    v75 = v74;

    v76 = v113;
    specialized Sequence<>.min()(v75, v113);

    v77 = v109;
    outlined init with copy of Range<AttributedString.Index>(v76, v109, type metadata accessor for AttributedString.Index?);
    v78 = *(v67 + 48);
    if (v78(v77, 1, v66) == 1)
    {
      v79 = v108;
      dispatch thunk of AttributedStringProtocol.startIndex.getter();
      v80 = v78(v77, 1, v66);
      v81 = v79;
      if (v80 != 1)
      {
        outlined destroy of Range<AttributedString.Index>?(v77, type metadata accessor for AttributedString.Index?);
      }
    }

    else
    {
      v81 = v108;
      (*(v67 + 32))(v108, v77, v66);
    }

    dispatch thunk of AttributedStringProtocol.endIndex.getter();
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
    v92 = dispatch thunk of static Comparable.<= infix(_:_:)();
    result = outlined destroy of Range<AttributedString.Index>?(v113, type metadata accessor for AttributedString.Index?);
    if ((v92 & 1) == 0)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v93 = v68;
    v94 = *(v67 + 32);
    v95 = v119;
    v94(v119, v81, v66);
    v96 = v120;
    v94((v95 + *(v120 + 48)), v93, v66);
    v97 = v121;
    outlined init with copy of Range<AttributedString.Index>(v95, v121, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
    v98 = *(v96 + 48);
    v99 = v122;
    v94(v122, v97, v66);
    v100 = v116;
    v116(v97 + v98, v66);
    _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v95, v97, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
    v101 = *(v96 + 48);
    type metadata accessor for Range<AttributedString.Index>(0);
    v94(&v99[*(v102 + 36)], (v97 + v101), v66);
    v100(v97, v66);
    v100(v112, v66);
  }

  else
  {

    dispatch thunk of AttributedStringProtocol.endIndex.getter();
    v82 = v118;
    dispatch thunk of AttributedStringProtocol.endIndex.getter();
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if ((result & 1) == 0)
    {
LABEL_20:
      __break(1u);
      return result;
    }

    v83 = *(v67 + 32);
    v84 = v119;
    v83(v119, v68, v66);
    v85 = v120;
    v83((v84 + *(v120 + 48)), v82, v66);
    v86 = v121;
    outlined init with copy of Range<AttributedString.Index>(v84, v121, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
    v87 = *(v85 + 48);
    v88 = v122;
    v83(v122, v86, v66);
    v89 = *(v67 + 8);
    v89(v86 + v87, v66);
    _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v84, v86, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
    v90 = *(v85 + 48);
    type metadata accessor for Range<AttributedString.Index>(0);
    v83(&v88[*(v91 + 36)], (v86 + v90), v66);
    v89(v86, v66);
  }

  v103 = *(v123 + 8);
  v104 = v117;
  v103(v114, v117);
  return (v103)(v129, v104);
}

uint64_t specialized AttributedStringProtocol.prefix<A>(whereValueIn:differsComparedTo:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v101 = a1;
  v112 = a2;
  type metadata accessor for AttributedString.Index?(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v97 = &v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v98 = &v92 - v5;
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)(0);
  v110 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v111 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v109 = &v92 - v9;
  v10 = type metadata accessor for AttributedString.Index();
  v116 = *(v10 - 8);
  v117 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v96 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v99 = &v92 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v108 = &v92 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v107 = &v92 - v17;
  v18 = type metadata accessor for AttributedString.Runs();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v103 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v92 - v22;
  type metadata accessor for AttributedString.Runs.Run?(0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v104 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v92 - v27;
  v29 = type metadata accessor for AttributeContainer();
  v113 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v100 = &v92 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v102 = &v92 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v92 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v118 = &v92 - v37;
  v38 = type metadata accessor for AttributedSubstring();
  v39 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedSubstring and conformance AttributedSubstring, MEMORY[0x1E6968968], MEMORY[0x1E6968960]);
  dispatch thunk of AttributedStringProtocol.runs.getter();
  specialized Collection.first.getter(v28);
  v40 = *(v19 + 8);
  v105 = v19 + 8;
  v106 = v18;
  v40(v23, v18);
  v41 = type metadata accessor for AttributedString.Runs.Run();
  v42 = *(v41 - 8);
  v43 = *(v42 + 48);
  v44 = v43(v28, 1, v41);
  v114 = v39;
  v115 = v38;
  if (v44 == 1)
  {
    outlined destroy of Range<AttributedString.Index>?(v28, type metadata accessor for AttributedString.Runs.Run?);
LABEL_5:
    v48 = v116;
    v47 = v117;
    v49 = v107;
    dispatch thunk of AttributedStringProtocol.startIndex.getter();
    v50 = v108;
    dispatch thunk of AttributedStringProtocol.startIndex.getter();
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v52 = *(v48 + 32);
      v53 = v109;
      v52(v109, v49, v47);
      v54 = v110;
      v52((v53 + *(v110 + 48)), v50, v47);
      v55 = v111;
      outlined init with copy of Range<AttributedString.Index>(v53, v111, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v56 = *(v54 + 48);
      v57 = v112;
      v52(v112, v55, v47);
      v58 = *(v48 + 8);
      v58(v55 + v56, v47);
      _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v53, v55, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v59 = *(v54 + 48);
      type metadata accessor for Range<AttributedString.Index>(0);
      v52(&v57[*(v60 + 36)], (v55 + v59), v47);
      return (v58)(v55, v47);
    }

    __break(1u);
    goto LABEL_19;
  }

  v95 = v40;
  AttributedString.Runs.Run.attributes.getter();
  v94 = *(v42 + 8);
  v94(v28, v41);
  v93 = *(v113 + 32);
  v93(v118, v35, v29);
  v45 = v103;
  dispatch thunk of AttributedStringProtocol.runs.getter();
  v46 = v104;
  specialized Collection.first.getter(v104);
  v95(v45, v106);
  if (v43(v46, 1, v41) == 1)
  {
    outlined destroy of Range<AttributedString.Index>?(v46, type metadata accessor for AttributedString.Runs.Run?);
    (*(v113 + 8))(v118, v29);
    goto LABEL_5;
  }

  v61 = v100;
  AttributedString.Runs.Run.attributes.getter();
  v94(v46, v41);
  v62 = v102;
  v63 = (v93)(v102, v61, v29);
  MEMORY[0x1EEE9AC00](v63);
  *(&v92 - 2) = v118;
  *(&v92 - 1) = v62;
  v64 = v101;

  v65 = specialized Sequence.filter(_:)(partial apply for closure #1 in AttributedStringProtocol.prefix<A>(whereValueIn:differsComparedTo:), (&v92 - 4), v64);
  v66 = *(v65 + 16);
  v68 = v116;
  v67 = v117;
  v92 = v29;
  if (v66)
  {
    MEMORY[0x1EEE9AC00](v65);
    *(&v92 - 2) = v119;
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation19AttributedStringKey_pXpG_AF0eF0V5IndexVs5NeverOTg5(partial apply for specialized closure #2 in AttributedStringProtocol.prefix<A>(whereValueIn:differsComparedTo:), (&v92 - 4), v69);
    v71 = v70;

    v72 = v98;
    specialized Sequence<>.max()(v71, v98);

    v73 = v99;
    dispatch thunk of AttributedStringProtocol.startIndex.getter();
    v74 = v97;
    outlined init with copy of Range<AttributedString.Index>(v72, v97, type metadata accessor for AttributedString.Index?);
    v75 = *(v68 + 48);
    if (v75(v74, 1, v67) == 1)
    {
      v76 = v96;
      dispatch thunk of AttributedStringProtocol.endIndex.getter();
      v77 = v75(v74, 1, v67);
      v78 = v76;
      v73 = v99;
      if (v77 != 1)
      {
        outlined destroy of Range<AttributedString.Index>?(v74, type metadata accessor for AttributedString.Index?);
      }
    }

    else
    {
      v78 = v96;
      (*(v68 + 32))(v96, v74, v67);
    }

    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
    v82 = dispatch thunk of static Comparable.<= infix(_:_:)();
    result = outlined destroy of Range<AttributedString.Index>?(v72, type metadata accessor for AttributedString.Index?);
    if ((v82 & 1) == 0)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v80 = *(v68 + 32);
    v81 = v109;
    v80(v109, v73, v67);
  }

  else
  {

    v79 = v107;
    dispatch thunk of AttributedStringProtocol.startIndex.getter();
    v78 = v108;
    dispatch thunk of AttributedStringProtocol.startIndex.getter();
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if ((result & 1) == 0)
    {
LABEL_20:
      __break(1u);
      return result;
    }

    v80 = *(v68 + 32);
    v81 = v109;
    v80(v109, v79, v67);
  }

  v83 = v110;
  v80((v81 + *(v110 + 48)), v78, v67);
  v84 = v111;
  outlined init with copy of Range<AttributedString.Index>(v81, v111, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
  v85 = *(v83 + 48);
  v86 = v112;
  v80(v112, v84, v67);
  v87 = *(v68 + 8);
  v87(v84 + v85, v67);
  _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v81, v84, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
  v88 = *(v83 + 48);
  type metadata accessor for Range<AttributedString.Index>(0);
  v80(&v86[*(v89 + 36)], (v84 + v88), v67);
  v87(v84, v67);
  v90 = *(v113 + 8);
  v91 = v92;
  v90(v102, v92);
  return (v90)(v118, v91);
}

void @objc NSSwiftMutableAttributedString.edited(_:range:changeInLength:)(void *a1, uint64_t a2, NSTextStorageEditActions a3, Swift::Int a4, Swift::Int a5, Swift::Int a6)
{
  v11 = a1;
  v10.location = a4;
  v10.length = a5;
  NSSwiftMutableAttributedString.edited(_:range:changeInLength:)(a3, v10, a6);
}

void @objc NSSwiftMutableAttributedString.init(data:options:documentAttributes:)(uint64_t *a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  specialized NSSwiftMutableAttributedString.init(data:options:documentAttributes:)();
}

void sub_18C6AF0C0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (v21)
  {
    if (v20)
    {
      v22 = _convertErrorToNSError(_:)();

      v23 = v22;
      *v20 = v22;
    }

    else
    {
    }
  }
}

void @objc NSSwiftMutableAttributedString.init(__contentsOfMarkdownFileAt:options:baseURL:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  _sSny10Foundation16AttributedStringV5IndexVGSgMaTm_0(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17[-v8];
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  if (a5)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v11 + 32))(v9, v13, v10);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  (*(v11 + 56))(v9, v15, 1, v10);
  v16 = a4;
  specialized NSSwiftMutableAttributedString.init(__contentsOfMarkdownFileAt:options:baseURL:)();
}

void sub_18C6AF310(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (v21)
  {
    if (v20)
    {
      v22 = _convertErrorToNSError(_:)();

      v23 = v22;
      *v20 = v22;
    }

    else
    {
    }
  }
}

void @objc NSSwiftMutableAttributedString.init(__markdown:options:baseURL:)(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _sSny10Foundation16AttributedStringV5IndexVGSgMaTm_0(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v18[-v13];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  if (v17)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v9 + 32))(v14, v11, v8);
    (*(v9 + 56))(v14, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(v14, 1, 1, v8);
  }

  specialized NSSwiftMutableAttributedString.init(__markdown:options:baseURL:)();
}

void sub_18C6AF554(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (v21)
  {
    if (v20)
    {
      v22 = _convertErrorToNSError(_:)();

      v23 = v22;
      *v20 = v22;
    }

    else
    {
    }
  }
}

void @objc NSSwiftMutableAttributedString.init(__markdownString:options:baseURL:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _sSny10Foundation16AttributedStringV5IndexVGSgMaTm_0(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v15[-v12];
  if (a5)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v8 + 32))(v13, v10, v7);
    (*(v8 + 56))(v13, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  v14 = a4;
  specialized NSSwiftMutableAttributedString.init(__markdownString:options:baseURL:)();
}

void sub_18C6AF778(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (v19)
  {
    if (v18)
    {
      v20 = _convertErrorToNSError(_:)();

      v21 = v20;
      *v18 = v20;
    }

    else
    {
    }
  }
}

void @objc NSSwiftMutableAttributedString.init(attributedString:)(void *a1, uint64_t a2, void *a3)
{
  v3 = a3;

  specialized NSSwiftMutableAttributedString.init(attributedString:)();
}

void @objc NSSwiftMutableAttributedString.init(html:options:documentAttributes:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  if (a3)
  {
    v5 = a4;
    v6 = a3;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  specialized NSSwiftMutableAttributedString.init(html:options:documentAttributes:)();
}

uint64_t @objc NSSwiftMutableAttributedString.init(url:options:documentAttributes:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(char *, void, void))
{
  v8 = *a1;
  v9 = *MEMORY[0x1E69E7D40];
  v10 = type metadata accessor for URL();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  return a7(v12, *((v9 & v8) + 0x50), *((v9 & v8) + 0x58));
}

void @objc NSSwiftMutableAttributedString.__ivar_destroyer(char *a1)
{
  ObjectType = swift_getObjectType();
  v3 = *a1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  v7 = type metadata accessor for AttributedString();
  (*(*(v7 - 8) + 8))(&a1[v6], v7);
  (*(*(*((v5 & v3) + 0x50) - 8) + 8))(&a1[*((*v4 & *a1) + 0x68)]);

  v8 = *((*v4 & *a1) + 0x78);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for NSSwiftMutableAttributedString<A>, ObjectType);
  type metadata accessor for NSSwiftAttributedSubstring.CopyOnWriteState(255, ObjectType, WitnessTable, v10);
  v11 = type metadata accessor for Optional();
  (*(*(v11 - 8) + 8))(&a1[v8], v11);

  v12 = *&a1[*((*v4 & *a1) + 0x98)];
}

id NSSwiftMutableAttributedString.StringImplementation.copy()@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  NSSwiftMutableAttributedString.mutableCopy()(v9);
  type metadata accessor for NSSwiftMutableAttributedString(0, *((v5 & v4) + 0x50), *((v5 & v4) + 0x58), v6);
  swift_dynamicCast();
  result = NSSwiftMutableAttributedString.StringImplementation.__allocating_init(_:)(v8);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t @objc NSSwiftMutableAttributedString.StringImplementation.length.getter(void *a1)
{
  v1 = a1;
  v3 = NSSwiftMutableAttributedString.StringImplementation.length.getter(v2);

  return v3;
}

uint64_t NSSwiftMutableAttributedString.StringImplementation.length.getter(double a1)
{
  v2 = type metadata accessor for AttributedString.UTF16View();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, *(v1 + direct field offset for NSSwiftMutableAttributedString.StringImplementation.str) + *((*MEMORY[0x1E69E7D40] & **(v1 + direct field offset for NSSwiftMutableAttributedString.StringImplementation.str)) + 0x60), v6, v8);
  AttributedString.utf16.getter();
  (*(v7 + 8))(v10, v6);
  v11 = AttributedString.UTF16View.count.getter();
  (*(v3 + 8))(v5, v2);
  return v11;
}

uint64_t NSSwiftMutableAttributedString.StringImplementation.character(at:)(uint64_t a1)
{
  v40 = a1;
  v41 = type metadata accessor for AttributedString.Index();
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v36 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v32 - v4;
  v35 = type metadata accessor for AttributedString.UTF16View();
  v38 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v32 - v7;
  v8 = type metadata accessor for AttributedString();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - v14;
  v16 = *(v1 + direct field offset for NSSwiftMutableAttributedString.StringImplementation.str);
  v17 = *((*MEMORY[0x1E69E7D40] & *v16) + 0x60);
  v18 = *(v9 + 16);
  v18(&v32 - v14, &v16[v17], v8, v13);
  AttributedString.utf16.getter();
  v19 = *(v9 + 8);
  v19(v15, v8);
  (v18)(v11, &v16[v17], v8);
  v20 = v34;
  AttributedString.utf16.getter();
  v19(v11, v8);
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.UTF16View and conformance AttributedString.UTF16View, MEMORY[0x1E6968810], MEMORY[0x1E6968818]);
  v21 = v35;
  v22 = v36;
  dispatch thunk of Collection.startIndex.getter();
  v23 = v37;
  v24 = v21;
  dispatch thunk of Collection.index(_:offsetBy:)();
  v25 = *(v39 + 8);
  v26 = v22;
  v27 = v41;
  v25(v26, v41);
  v28 = *(v38 + 8);
  v28(v20, v24);
  v29 = v33;
  v30 = AttributedString.UTF16View.subscript.getter();
  v25(v23, v27);
  v28(v29, v24);
  return v30;
}

uint64_t @objc NSSwiftMutableAttributedString.StringImplementation.character(at:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  LOWORD(a3) = NSSwiftMutableAttributedString.StringImplementation.character(at:)(a3);

  return a3;
}

void NSSwiftMutableAttributedString.StringImplementation.getCharacters(_:range:)(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), double a4)
{
  v103 = a2;
  v118 = a1;
  type metadata accessor for IndexingIterator<AttributedString.UTF16View>(0, a4);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)(0);
  v106 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v99 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v97 = &v92 - v12;
  type metadata accessor for Range<AttributedString.Index>(0);
  v96 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v98 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AttributedString.UTF16View();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v104 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v108 = &v92 - v19;
  v20 = type metadata accessor for AttributedString();
  v21 = *(v20 - 8);
  v116 = v20;
  v117 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v101 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for AttributedString.Index();
  v107 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v115 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v119 = &v92 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v105 = &v92 - v28;
  v29 = type metadata accessor for OSSignpostID();
  v112 = *(v29 - 8);
  v113 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v111 = &v92 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v92 - v32;
  type metadata accessor for OSSignposter?(0);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v92 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for signposter != -1)
  {
    v91 = v35;
    swift_once();
    v35 = v91;
  }

  v109 = v16;
  v38 = __swift_project_value_buffer(v35, signposter);
  outlined init with copy of Range<AttributedString.Index>(v38, v37, type metadata accessor for OSSignposter?);
  v39 = type metadata accessor for OSSignposter();
  v40 = *(v39 - 8);
  v41 = (*(v40 + 48))(v37, 1, v39);
  v100 = v6;
  v102 = a3;
  v120 = v23;
  if (v41 == 1)
  {
    outlined destroy of Range<AttributedString.Index>?(v37, type metadata accessor for OSSignposter?);
    v93 = 0;
    v42 = v114;
  }

  else
  {
    static OSSignpostID.new.getter(v33);
    v43 = OSSignposter.logHandle.getter();
    LODWORD(v95) = static os_signpost_type_t.begin.getter();
    v44 = OS_os_log.signpostsEnabled.getter();
    v110 = v39;
    if (v44)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v121[0] = v46;
      *v45 = 136315138;
      v47 = _NSRange.description.getter();
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, v121);

      *(v45 + 4) = v49;
      v50 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_18BD4A000, v43, v95, v50, "StringImplementation.getCharacters", "range: %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x18D0110E0](v46, -1, -1);
      MEMORY[0x18D0110E0](v45, -1, -1);
    }

    v51 = v33;
    v52 = v112;
    v53 = v33;
    v54 = v113;
    (*(v112 + 16))(v111, v53, v113);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v93 = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v52 + 8))(v51, v54);
    (*(v40 + 8))(v37, v110);
    v42 = v114;
    v23 = v120;
  }

  v110 = *&v42[direct field offset for NSSwiftMutableAttributedString.StringImplementation.str];
  v56 = v116;
  v55 = v117;
  v57 = *(v117 + 16);
  v112 = *((*MEMORY[0x1E69E7D40] & *v110) + 0x60);
  v113 = v117 + 16;
  v114 = v57;
  v58 = v101;
  (v57)(v101, v110 + v112, v116);
  v59 = v108;
  AttributedString.utf16.getter();
  v111 = *(v55 + 8);
  v117 = v55 + 8;
  (v111)(v58, v56);
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.UTF16View and conformance AttributedString.UTF16View, MEMORY[0x1E6968810], MEMORY[0x1E6968818]);
  v60 = v119;
  dispatch thunk of Collection.startIndex.getter();
  v61 = v105;
  dispatch thunk of Collection.index(_:offsetBy:)();
  v62 = *(v107 + 8);
  v95 = v107 + 8;
  v94 = v62;
  (v62)(v60, v23);
  v63 = v109 + 8;
  v64 = *(v109 + 8);
  v64(v59, v15);
  v65 = v116;
  (v114)(v58, v110 + v112, v116);
  AttributedString.utf16.getter();
  (v111)(v58, v65);
  AttributedString.UTF16View.index(_:offsetBy:)();
  v103 = v63;
  v102 = v64;
  v64(v59, v15);
  v66 = v120;
  v67 = v116;
  (v114)(v58, v110 + v112, v116);
  AttributedString.utf16.getter();
  (v111)(v58, v67);
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
  if (dispatch thunk of static Comparable.<= infix(_:_:)())
  {
    v68 = v107;
    v69 = *(v107 + 16);
    v70 = v97;
    v69(v97, v61, v66);
    v71 = v106;
    v69((v70 + *(v106 + 48)), v115, v66);
    v72 = v99;
    outlined init with copy of Range<AttributedString.Index>(v70, v99, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
    v73 = *(v71 + 48);
    v117 = *(v68 + 32);
    v74 = v98;
    (v117)(v98, v72, v66);
    v75 = v94;
    (v94)(v72 + v73, v66);
    _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v70, v72, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
    (v117)(v74 + *(v96 + 36), v72 + *(v106 + 48), v66);
    v76 = v72;
    v77 = v75;
    (v75)(v76, v66);
    v78 = v104;
    v79 = v108;
    AttributedString.UTF16View.subscript.getter();
    outlined destroy of Range<AttributedString.Index>?(v74, type metadata accessor for Range<AttributedString.Index>);
    v102(v79, v15);
    (*(v109 + 16))(v8, v78, v15);
    dispatch thunk of Collection.startIndex.getter();
    v80 = 0;
    while (1)
    {
      v81 = v119;
      dispatch thunk of Collection.endIndex.getter();
      lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F8]);
      v82 = v120;
      v83 = dispatch thunk of static Equatable.== infix(_:_:)();
      v84 = v82;
      v85 = v77;
      (v77)(v81, v84);
      if (v83)
      {
        break;
      }

      v85 = v8;
      v86 = dispatch thunk of Collection.subscript.read();
      v88 = *v87;
      v86(v121, 0);
      dispatch thunk of Collection.formIndex(after:)();
      *(v118 + 2 * v80) = v88;
      if (__OFADD__(v80++, 1))
      {
        __break(1u);
        break;
      }
    }

    outlined destroy of Range<AttributedString.Index>?(v8, type metadata accessor for IndexingIterator<AttributedString.UTF16View>);
    v102(v104, v15);
    v90 = v120;
    (v85)(v115, v120);
    (v85)(v105, v90);
    $defer #1 <A>() in NSSwiftMutableAttributedString.attributes(location:effectiveRange:rangeLimit:)(v93, "StringImplementation.getCharacters");
  }

  else
  {
    __break(1u);
  }
}

void @objc NSSwiftMutableAttributedString.StringImplementation.getCharacters(_:range:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t))
{
  v9 = a1;
  NSSwiftMutableAttributedString.StringImplementation.getCharacters(_:range:)(a3, a4, a5, v8);
}

void NSSwiftMutableAttributedString.StringImplementation.replaceCharacters(in:with:)(Swift::Int a1, Swift::Int a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v28 = a1;
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>?(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>(0);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v18 = *(v4 + direct field offset for NSSwiftMutableAttributedString.StringImplementation.str);
  NSSwiftMutableAttributedString.beginEditing()();
  (*(v7 + 16))(v9, &v18[*((*MEMORY[0x1E69E7D40] & *v18) + 0x60)], v6);
  v19 = v28;
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
  Range<>.init<A>(_:in:)();
  if ((*(v15 + 48))(v12, 1, v14) != 1)
  {
    _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v12, v17, type metadata accessor for Range<AttributedString.Index>);
    v21 = v26;
    v20 = v27;
    v30 = v26;
    v31 = v27;
    v22 = AttributedString.characters.modify();
    lazy protocol witness table accessor for type String and conformance String();
    AttributedString.CharacterView.replaceSubrange<A>(_:with:)();
    v22(v29, 0);
    NSSwiftMutableAttributedString.invalidateStringCache()();
    v23 = MEMORY[0x18D00CA30](v21, v20);
    if (!__OFSUB__(v23, a2))
    {
      v24.location = v19;
      v24.length = a2;
      NSSwiftMutableAttributedString.edited(_:range:changeInLength:)(2uLL, v24, v23 - a2);
      outlined destroy of Range<AttributedString.Index>?(v17, type metadata accessor for Range<AttributedString.Index>);
      NSSwiftMutableAttributedString.endEditing()();
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t @objc NSSwiftMutableAttributedString.replaceCharacters(in:with:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = a1;
  a6(a3, a4, v10, v12);
}

uint64_t @objc NSSwiftMutableAttributedString.StringImplementation._fastCStringContents(_:)(void *a1)
{
  v1 = a1;
  v2 = specialized NSSwiftMutableAttributedString.StringImplementation._fastCStringContents(_:)();

  return v2;
}

uint64_t @objc NSSwiftMutableAttributedString.StringImplementation._fastCharacterContents()(void *a1)
{
  v1 = a1;
  v2 = NSSwiftMutableAttributedString.StringImplementation._fastCharacterContents()();

  return v2;
}

uint64_t AttributedString.Runs.Validated.init(definition:base:range:reversed:longestEffectiveRangeNotRequired:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v85 = a4;
  LODWORD(v86) = a5;
  v90 = a2;
  v91 = a1;
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)(0);
  v82 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v81 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v80 = &v67 - v15;
  v16 = type metadata accessor for AttributedString.Index();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v88 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v87 = &v67 - v20;
  type metadata accessor for Range<AttributedString.Index>(0);
  v22 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v79 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedString.Index?(0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v75 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DefaultIndices<AttributedString.UnicodeScalarView>(0);
  v73 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v74 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Slice<AttributedString.UnicodeScalarView>(0);
  v71 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v70 = &v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for AttributedString.UnicodeScalarView();
  v69 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v31 = &v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = a7;
  v32 = a7;
  v33 = a8;
  v35 = type metadata accessor for AttributedString.Runs.Validated(0, a6, v32, v34);
  v36 = v35[14];
  v89 = v17;
  v37 = v17[7];
  v37(&v36[v33], 1, 1, v16);
  v77 = *(a6 - 8);
  v38 = *(v77 + 16);
  v84 = a6;
  v38(v33, v91, a6);
  *(v33 + v35[9]) = v90;
  outlined init with copy of Range<AttributedString.Index>(a3, v33 + v35[11], type metadata accessor for Range<AttributedString.Index>);
  v39 = v85;
  *(v33 + v35[12]) = v85;
  v78 = v35;
  *(v33 + v35[13]) = v86;
  v86 = v22;
  v40 = *(v22 + 36);
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F8]);
  v92 = a3;
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v72 = v40;
    outlined destroy of Range<AttributedString.Index>?(&v36[v33], type metadata accessor for AttributedString.Index?);
    v37(&v36[v33], 1, 1, v16);
    v41 = v92;
    v43 = v88;
    v42 = v89;
    v44 = v16;
    if (v39)
    {
      goto LABEL_12;
    }

    v45 = v89[2];
    v46 = (v89 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    goto LABEL_8;
  }

  v68 = v37;
  v47 = v16;
  if ((v39 & 1) == 0)
  {
    outlined destroy of Range<AttributedString.Index>?(&v36[v33], type metadata accessor for AttributedString.Index?);
    v42 = v89;
    v45 = v89[2];
    v46 = (v89 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v44 = v47;
    v41 = v92;
    v45(&v36[v33]);
    v68(&v36[v33], 0, 1, v44);
    v43 = v88;
LABEL_8:
    v36 = v87;
    (v45)(v87, v41, v44);
    (v45)(v43, v41, v44);
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
    if (dispatch thunk of static Comparable.<= infix(_:_:)())
    {
LABEL_13:
      v56 = v42[4];
      v57 = v80;
      v56(v80, v36, v44);
      v58 = v82;
      v56((v57 + *(v82 + 48)), v43, v44);
      v59 = v81;
      outlined init with copy of Range<AttributedString.Index>(v57, v81, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v60 = *(v58 + 48);
      v61 = v79;
      v56(v79, v59, v44);
      v90 = v33;
      v62 = v42[1];
      v62(v59 + v60, v44);
      _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v57, v59, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v56((v61 + *(v86 + 36)), (v59 + *(v58 + 48)), v44);
      v62(v59, v44);
      v63 = v78;
      v64 = v90;
      _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v61, v90 + v78[15], type metadata accessor for Range<AttributedString.Index>);
      v65 = v84;
      v66 = v91;
      (*(*(v83 + 8) + 8))(&v93, v84);
      outlined destroy of Range<AttributedString.Index>?(v92, type metadata accessor for Range<AttributedString.Index>);
      result = (*(v77 + 8))(v66, v65);
      *(v64 + v63[10]) = v93;
      return result;
    }

    __break(1u);
    goto LABEL_10;
  }

  v72 = v40;
  AttributedString.unicodeScalars.getter();
  v48 = v70;
  AttributedString.UnicodeScalarView.subscript.getter();
  (*(v69 + 8))(v31, v76);
  v46 = v74;
  Slice.indices.getter();
  outlined destroy of Range<AttributedString.Index>?(v48, type metadata accessor for Slice<AttributedString.UnicodeScalarView>);
  v44 = v16;
  v49 = dispatch thunk of static Equatable.== infix(_:_:)();
  v43 = v88;
  if ((v49 & 1) == 0)
  {
LABEL_10:
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.UnicodeScalarView and conformance AttributedString.UnicodeScalarView, MEMORY[0x1E69686C0], MEMORY[0x1E69686C8]);
    v51 = v75;
    dispatch thunk of BidirectionalCollection.index(before:)();
    v50 = 0;
    goto LABEL_11;
  }

  v50 = 1;
  v51 = v75;
LABEL_11:
  v52 = v68;
  outlined destroy of Range<AttributedString.Index>?(v46, type metadata accessor for DefaultIndices<AttributedString.UnicodeScalarView>);
  v52(v51, v50, 1, v44);
  outlined assign with take of AttributedString.Index?(v51, &v36[v33]);
  v41 = v92;
  v42 = v89;
LABEL_12:
  v53 = v42[2];
  v54 = v72;
  v36 = v87;
  v53(v87, v41 + v72, v44);
  v53(v43, v41 + v54, v44);
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in ValidatingTextAttributeDefinition.enumerate(fixing:in:options:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a5;
  v38 = a2;
  v39 = a4;
  v28 = a3;
  v30 = a1;
  v36 = a6;
  type metadata accessor for Range<AttributedString.Index>(0);
  v40 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttributeContainer();
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AttributedString.Runs.Run();
  v31 = *(v12 - 8);
  v32 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for AttributedString.Runs();
  v15 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AttributedString();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v19 + 16);
  v27(v22, a3, v18, v20);
  AttributedString.runs.getter();
  (*(v19 + 8))(v22, v18);
  v23 = v30;
  AttributedString.Runs.subscript.getter();
  (*(v15 + 8))(v17, v29);
  AttributedString.Runs.Run.attributes.getter();
  (*(v31 + 8))(v14, v32);
  v24 = v36;
  (*(*(v37 + 8) + 16))(v11, v39);
  (*(v33 + 8))(v11, v34);
  outlined init with copy of Range<AttributedString.Index>(v23, v35, type metadata accessor for Range<AttributedString.Index>);
  (v27)(v22, v28, v18);
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
  result = _NSRange.init<A, B>(_:in:)();
  *(v24 + 32) = result;
  *(v24 + 40) = v26;
  return result;
}

uint64_t AttributedString.Runs.Validated.tailRange.getter@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)(0);
  v66 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v67 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v60 - v7;
  v8 = type metadata accessor for AttributedString();
  v62 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>(0);
  v69 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v63 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v64 = &v60 - v14;
  type metadata accessor for AttributedString.Index?(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AttributedString.Index();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v60 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v60 - v26;
  outlined init with copy of Range<AttributedString.Index>(v2 + a1[14], v17, type metadata accessor for AttributedString.Index?);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    outlined destroy of Range<AttributedString.Index>?(v17, type metadata accessor for AttributedString.Index?);
    v28 = v2 + a1[11];
    if (*(v2 + a1[12]) == 1)
    {
      lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
      result = dispatch thunk of static Comparable.<= infix(_:_:)();
      if (result)
      {
        v30 = *(v19 + 16);
        v31 = v65;
        v30(v65, v28, v18);
        v32 = v66;
        v30((v31 + *(v66 + 48)), v28, v18);
LABEL_10:
        v40 = v67;
        outlined init with copy of Range<AttributedString.Index>(v31, v67, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
        v41 = *(v32 + 48);
        v42 = *(v19 + 32);
        v43 = v63;
        v42(v63, v40, v18);
        v44 = *(v19 + 8);
        v44(v40 + v41, v18);
        _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v31, v40, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
        v42(&v43[*(v69 + 36)], v40 + *(v32 + 48), v18);
        v44(v40, v18);
        v45 = v43;
        return _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v45, v68, type metadata accessor for Range<AttributedString.Index>);
      }

      __break(1u);
    }

    else
    {
      v38 = *(v69 + 36);
      lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
      result = dispatch thunk of static Comparable.<= infix(_:_:)();
      if (result)
      {
        v39 = *(v19 + 16);
        v31 = v65;
        v39(v65, v28 + v38, v18);
        v32 = v66;
        v39((v31 + *(v66 + 48)), v28 + v38, v18);
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  v33 = *(v19 + 32);
  v63 = (v19 + 32);
  v61 = v33;
  v33(v27, v17, v18);
  v34 = v2 + a1[11];
  if (*(v2 + a1[12]) != 1)
  {
    v46 = *(v69 + 36);
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v47 = v65;
      v48 = v61;
      v61(v65, v27, v18);
      v49 = v66;
      (*(v19 + 16))(v47 + *(v66 + 48), v34 + v46, v18);
      v50 = v67;
      outlined init with copy of Range<AttributedString.Index>(v47, v67, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v51 = *(v49 + 48);
      v45 = v64;
      v48(v64, v50, v18);
      v52 = *(v19 + 8);
      v52(v50 + v51, v18);
      _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v47, v50, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v48((v45 + *(v69 + 36)), v50 + *(v49 + 48), v18);
      v52(v50, v18);
      return _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v45, v68, type metadata accessor for Range<AttributedString.Index>);
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v35 = *(v2 + a1[9]);
  v36 = v62;
  (*(v62 + 16))(v10, v35, v8);
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
  AttributedStringProtocol.index(afterCharacter:)();
  (*(v36 + 8))(v10, v8);
  v37 = *(v69 + 36);
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    (*(v19 + 8))(v21, v18);
    (*(v19 + 16))(v24, v34 + v37, v18);
  }

  else
  {
    v61(v24, v21, v18);
  }

  v53 = dispatch thunk of static Comparable.<= infix(_:_:)();
  v54 = *(v19 + 8);
  result = v54(v27, v18);
  if (v53)
  {
    v55 = v65;
    (*(v19 + 16))(v65, v34, v18);
    v56 = v66;
    v57 = v61;
    v61((v55 + *(v66 + 48)), v24, v18);
    v58 = v67;
    outlined init with copy of Range<AttributedString.Index>(v55, v67, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
    v59 = *(v56 + 48);
    v45 = v64;
    v57(v64, v58, v18);
    v54((v58 + v59), v18);
    _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v55, v58, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
    v57((v45 + *(v69 + 36)), v58 + *(v56 + 48), v18);
    v54(v58, v18);
    return _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v45, v68, type metadata accessor for Range<AttributedString.Index>);
  }

LABEL_20:
  __break(1u);
  return result;
}

double AttributedString.Runs.Validated.next()@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)(0);
  v204 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v180 = &v151 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v179 = &v151 - v7;
  v163 = type metadata accessor for AttributedString.AttributeMergePolicy();
  v195 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v162 = &v151 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0(0, &lazy cache variable for type metadata for <<opaque return type of AttributedString.AttributeDependencies.makeIterator()>>.0, MEMORY[0x1E697D938]);
  v220 = v9;
  v194 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v189 = &v151 - v10;
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v211 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v213 = v12;
  v214 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v188 = type metadata accessor for TextAttributeValidationRecord(0, AssociatedTypeWitness, AssociatedConformanceWitness, v15);
  v174 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v208 = &v151 - v16;
  v221 = type metadata accessor for AttributeContainer();
  v170 = *(v221 - 8);
  MEMORY[0x1EEE9AC00](v221);
  v18 = &v151 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v216 = &v151 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v151 - v22;
  v187 = type metadata accessor for AttributedString.Runs();
  v172 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v186 = &v151 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = type metadata accessor for AttributedSubstring();
  v173 = *(v215 - 8);
  MEMORY[0x1EEE9AC00](v215);
  v185 = &v151 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for AttributedString.Runs.Run();
  v167 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v219 = &v151 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>(0);
  v217 = v27;
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v218 = &v151 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v205 = &v151 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v151 - v33;
  type metadata accessor for AttributedString.Index?(0);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v159 = &v151 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v210 = &v151 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v151 - v40;
  v199 = type metadata accessor for AttributedString.Index();
  v42 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199);
  v184 = &v151 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v207 = &v151 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v209 = &v151 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v151 - v49;
  v177 = type metadata accessor for OSSignpostID();
  v197 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v161 = &v151 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v176 = &v151 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v151 - v55;
  type metadata accessor for OSSignposter?(0);
  MEMORY[0x1EEE9AC00](v57);
  v198 = &v151 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v151 - v61;
  v193 = v34;
  v192 = v50;
  if (one-time initialization token for signposter != -1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v165 = v28;
    v63 = v41;
    v183 = __swift_project_value_buffer(v60, signposter);
    outlined init with copy of Range<AttributedString.Index>(v183, v62, type metadata accessor for OSSignposter?);
    v64 = type metadata accessor for OSSignposter();
    v196 = *(v64 - 8);
    v65 = *(v196 + 6);
    v202 = v64;
    v182 = v196 + 48;
    v181 = v65;
    v66 = (v65)(v62, 1);
    v166 = a2;
    v206 = v23;
    if (v66 == 1)
    {
      outlined destroy of Range<AttributedString.Index>?(v62, type metadata accessor for OSSignposter?);
      v164 = 0;
    }

    else
    {
      v67 = v50;
      v160 = v42;
      static OSSignpostID.new.getter(v56);
      v68 = OSSignposter.logHandle.getter();
      v69 = static os_signpost_type_t.begin.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        v71 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&dword_18BD4A000, v68, v69, v71, "AttributedString.Runs.Validated.next", "", v70, 2u);
        v67 = v192;
        MEMORY[0x18D0110E0](v70, -1, -1);
      }

      v72 = v197;
      v73 = v177;
      (*(v197 + 16))(v176, v56, v177);
      type metadata accessor for OSSignpostIntervalState();
      swift_allocObject();
      v164 = OSSignpostIntervalState.init(id:isOpen:)();
      (*(v72 + 8))(v56, v73);
      (*(v196 + 1))(v62, v202);
      v34 = v193;
      v42 = v160;
      a2 = v166;
      v50 = v67;
    }

    v74 = v211;
    v75 = v212;
    v76 = v211[14];
    outlined init with copy of Range<AttributedString.Index>(v212 + v76, v63, type metadata accessor for AttributedString.Index?);
    v77 = *(v42 + 48);
    v78 = v199;
    v191 = v42 + 48;
    v190 = v77;
    if (v77(v63, 1, v199) == 1)
    {
      outlined destroy of Range<AttributedString.Index>?(v63, type metadata accessor for AttributedString.Index?);
      v79 = 1;
LABEL_11:
      v85 = v165;
      v86 = v164;
      goto LABEL_42;
    }

    v152 = v76;
    v80 = v42 + 32;
    v203 = *(v42 + 32);
    v203(v50, v63, v78);
    v81 = *(v75 + v74[10]);
    v222 = v81;
    AttributedString.Keys.init()();
    v82 = v42;
    v83 = static AttributedString.Keys.== infix(_:_:)();

    if (v83)
    {
      (*(v82 + 8))(v50, v78);
      v84 = v152;
      outlined destroy of Range<AttributedString.Index>?(v75 + v152, type metadata accessor for AttributedString.Index?);
      (*(v82 + 56))(v75 + v84, 1, 1, v78);
      a2 = v166;
      outlined init with copy of Range<AttributedString.Index>(v75 + v74[11], v166, type metadata accessor for Range<AttributedString.Index>);
      v79 = 0;
      goto LABEL_11;
    }

    v160 = v82;
    v175 = v81;
    v222 = v81;
    AttributedString.Runs.Validated.run(of:at:)(&v222, v50, v74, v34);
    v87 = (v75 + v74[15]);
    swift_beginAccess();
    v88 = v210;
    v201 = v87;
    v89 = v87;
    v90 = v75;
    AttributedString.Runs.Validated.index(following:)(v89, v74, v210);
    v91 = v190(v88, 1, v78);
    v92 = v203;
    v93 = v209;
    v94 = v74;
    v95 = v78;
    if (v91 == 1)
    {
      break;
    }

    ++v173;
    ++v172;
    v158 = (v197 + 16);
    v157 = (v197 + 8);
    v156 = (v196 + 8);
    v171 = v214 + 32;
    v28 = v170 + 1;
    v170 = (v194 + 8);
    v155 = *MEMORY[0x1E69686E8];
    v154 = v195 + 104;
    v153 = (v195 + 8);
    v169 = (v174 + 1);
    v168 = (v160 + 16);
    v174 = (v160 + 8);
    ++v167;
    v200 = v80;
    while (1)
    {
      v96 = v93;
      v92(v93, v210, v95);
      if ((specialized getter of runMightBeDirty #1 in AttributedString.Runs.Validated.next()(v90, v34, v213, v214) & 1) == 0 && ((*(v90 + v94[13]) & 1) != 0 || (specialized getter of runMightBeBrokenByDirt #1 in AttributedString.Runs.Validated.next()(v90, v34, v213, v214) & 1) == 0))
      {
        v95 = v199;
        (*v174)(v96, v199);
        goto LABEL_41;
      }

      v97 = v205;
      AttributedString.Runs.Validated.tailRange.getter(v94, v205);
      lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
      v98 = v185;
      AttributedString.subscript.getter();
      outlined destroy of Range<AttributedString.Index>?(v97, type metadata accessor for Range<AttributedString.Index>);
      v99 = v186;
      AttributedSubstring.runs.getter();
      (*v173)(v98, v215);
      AttributedString.Runs.subscript.getter();
      (*v172)(v99, v187);
      v23 = v206;
      AttributedString.Runs.Run.attributes.getter();
      v100 = v198;
      outlined init with copy of Range<AttributedString.Index>(v183, v198, type metadata accessor for OSSignposter?);
      if (v181(v100, 1, v202) == 1)
      {
        outlined destroy of Range<AttributedString.Index>?(v100, type metadata accessor for OSSignposter?);
        v197 = 0;
        v101 = v189;
      }

      else
      {
        v102 = v161;
        static OSSignpostID.new.getter(v161);
        v103 = OSSignposter.logHandle.getter();
        v104 = static os_signpost_type_t.begin.getter();
        v105 = OS_os_log.signpostsEnabled.getter();
        v101 = v189;
        if (v105)
        {
          v106 = swift_slowAlloc();
          LODWORD(v197) = v104;
          v107 = v106;
          *v106 = 0;
          v108 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&dword_18BD4A000, v103, v197, v108, "AttributedString.Runs.Validated.run -> fixup", "", v107, 2u);
          MEMORY[0x18D0110E0](v107, -1, -1);
        }

        v109 = v177;
        (*v158)(v176, v102, v177);
        type metadata accessor for OSSignpostIntervalState();
        swift_allocObject();
        v197 = OSSignpostIntervalState.init(id:isOpen:)();
        (*v157)(v102, v109);
        (*v156)(v198, v202);
      }

      v110 = v208;
      (*(v214 + 32))(v23, v213);
      v222 = *(v110 + 1);

      AttributedString.Keys.init(_:)();
      AttributedString.Runs.Validated.run(of:at:)(&v224, v209, v211, v218);

      AttributeContainer.init()();
      v222 = *(v110 + 1);

      AttributedString.AttributeDependencies.makeIterator()();

      swift_getOpaqueTypeConformance2();
      dispatch thunk of IteratorProtocol.next()();
      v111 = v222;
      if (v222)
      {
        v112 = v223;
        do
        {
          AttributedString.Runs.Run.attributes.getter();
          v113 = static AttributedStringKey.isEqual(between:and:)(v23, v18, v111, v112);
          v114 = *v28;
          (*v28)(v18, v221);
          if ((v113 & 1) == 0)
          {
            AttributeContainer.init()();
            v115 = static AttributedStringKey.isEqual(between:and:)(v23, v18, v111, v112);
            v114(v18, v221);
            if (v115)
            {
              v116 = AttributedString.subscript.modify();
              v118 = v117;
              v119 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedSubstring and conformance AttributedSubstring, MEMORY[0x1E6968968], MEMORY[0x1E6968960]);
              static AttributedStringKey.copy<A>(from:to:)(v23, v118, v111, v215, v112, v119);
              v116(&v222, 0);
            }

            else
            {
              static AttributedStringKey.copy(from:to:)(v23, v216, v111, v112);
            }
          }

          swift_getOpaqueTypeConformance2();
          dispatch thunk of IteratorProtocol.next()();
          v111 = v222;
          v112 = v223;
        }

        while (v222);
      }

      (*v170)(v101, v220);
      AttributeContainer.init()();
      lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributeContainer and conformance AttributeContainer, MEMORY[0x1E69688E0], MEMORY[0x1E69688F0]);
      v120 = v216;
      v121 = v221;
      v122 = dispatch thunk of static Equatable.== infix(_:_:)();
      v123 = *v28;
      (*v28)(v18, v121);
      if ((v122 & 1) == 0)
      {
        v124 = AttributedString.subscript.modify();
        v125 = v162;
        v126 = v163;
        (*v154)(v162, v155, v163);
        AttributedSubstring.mergeAttributes(_:mergePolicy:)();
        (*v153)(v125, v126);
        v124(&v222, 0);
      }

      v196 = v123;
      v123(v120, v221);
      (*v169)(v208, v188);
      $defer #1 <A>() in NSSwiftMutableAttributedString.attributes(location:effectiveRange:rangeLimit:)(v197, "AttributedString.Runs.Validated.run -> fixup");

      v56 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
      v127 = v218;
      a2 = v201;
      v42 = v199;
      v128 = dispatch thunk of static Comparable.< infix(_:_:)();
      v62 = v168;
      v129 = *v168;
      if (v128)
      {
        v130 = v207;
        v131 = v127;
      }

      else
      {
        v130 = v207;
        v131 = a2;
      }

      v129(v130, v131, v42);
      v132 = *(v217 + 36);
      v133 = (dispatch thunk of static Comparable.>= infix(_:_:)() & 1) != 0 ? (v127 + v132) : &a2[v132];
      v41 = v184;
      v129(v184, v133, v42);
      v134 = v207;
      v60 = dispatch thunk of static Comparable.<= infix(_:_:)();
      if ((v60 & 1) == 0)
      {
        break;
      }

      v135 = a2;
      v136 = v179;
      v137 = v203;
      v203(v179, v134, v42);
      v197 = v132;
      v138 = v204;
      v137(v136 + *(v204 + 48), v41, v42);
      v95 = v42;
      v139 = v180;
      outlined init with copy of Range<AttributedString.Index>(v136, v180, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v194 = *(v138 + 48);
      v195 = type metadata accessor for Range<AttributedString.Index>;
      outlined destroy of Range<AttributedString.Index>?(v135, type metadata accessor for Range<AttributedString.Index>);
      v137(v135, v139, v42);
      v140 = *v174;
      (*v174)(v139 + v194, v42);
      _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v136, v139, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v137(&v135[v197], (v139 + *(v204 + 48)), v42);
      v140(v139, v42);
      v222 = v175;
      v141 = v205;
      v142 = v211;
      v90 = v212;
      AttributedString.Runs.Validated.run(of:at:)(&v222, v192, v211, v205);
      v143 = v195;
      outlined destroy of Range<AttributedString.Index>?(v218, v195);
      v196(v206, v221);
      (*v167)(v219, v178);
      v144 = v209;
      v140(v209, v95);
      v94 = v142;
      v34 = v193;
      outlined destroy of Range<AttributedString.Index>?(v193, v143);
      v145 = v210;
      _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v141, v34, type metadata accessor for Range<AttributedString.Index>);
      AttributedString.Runs.Validated.index(following:)(v201, v94, v145);
      v146 = v190(v145, 1, v95);
      v92 = v203;
      v93 = v144;
      if (v146 == 1)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_44:
    v160 = v42;
    v149 = v28;
    v150 = v60;
    swift_once();
    v60 = v150;
    v28 = v149;
    v34 = v193;
    v42 = v160;
    v50 = v192;
  }

LABEL_39:
  outlined destroy of Range<AttributedString.Index>?(v210, type metadata accessor for AttributedString.Index?);
LABEL_41:
  v86 = v164;
  swift_beginAccess();
  v147 = v159;
  AttributedString.Runs.Validated.index(following:)(v34, v94, v159);
  (*(v160 + 8))(v192, v95);
  outlined assign with take of AttributedString.Index?(v147, v90 + v152);
  a2 = v166;
  outlined init with copy of Range<AttributedString.Index>(v34, v166, type metadata accessor for Range<AttributedString.Index>);
  swift_endAccess();
  outlined destroy of Range<AttributedString.Index>?(v34, type metadata accessor for Range<AttributedString.Index>);
  v79 = 0;
  v85 = v165;
LABEL_42:
  (v85[7])(a2, v79, 1, v217);
  $defer #1 <A>() in NSSwiftMutableAttributedString.attributes(location:effectiveRange:rangeLimit:)(v86, "AttributedString.Runs.Validated.next");

  return result;
}